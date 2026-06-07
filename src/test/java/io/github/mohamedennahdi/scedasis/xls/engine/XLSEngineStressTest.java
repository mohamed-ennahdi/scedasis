package io.github.mohamedennahdi.scedasis.xls.engine;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.io.CleanupMode;
import org.junit.jupiter.api.io.TempDir;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import com.github.noconnor.junitperf.JUnitPerfInterceptor;
import com.github.noconnor.junitperf.JUnitPerfTest;
import com.github.noconnor.junitperf.JUnitPerfTestRequirement;

@Testcontainers
@ExtendWith(JUnitPerfInterceptor.class)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class XLSEngineStressTest {

	private static final Logger logger = LogManager.getLogger(XLSEngineStressTest.class);

	@TempDir(cleanup = CleanupMode.NEVER)
	static File tempDir;

	private static final AtomicInteger threadSafeCounter = new AtomicInteger(0);


	@Container
	private static final MySQLContainer<?> mysql = new MySQLContainer<>("mysql:8.0.36").withDatabaseName("testdb")
																					   .withUsername("testuser")
																					   .withPassword("testpass")
													 								   .withInitScript("db/data-ourC58bC3ig3Tc6khxGOZ.sql")
													 								   .withReuse(true);
	static long initialFdCount = 0;

    @BeforeAll
    static void assertGetResourceFirst() throws Exception {
    	initialFdCount = getOpenFileDescriptorCount();
        logger.info("Preliminary file descriptor count: {}", initialFdCount);
    }


	@Test
	@JUnitPerfTest(threads = 10, durationMs = 60_000, totalExecutions = 5000)
    @JUnitPerfTestRequirement(
            percentiles = "99:5000",
            minLatency =  1000,
            maxLatency =  5000
    )
	@Order(1)
	void sequentialGenerationStressTest() throws Exception {
        int iteration = threadSafeCounter.incrementAndGet();
        File generatedFile = generateOneFile(iteration);

        generatedFile.delete();
        logger.info("Iteration {} completed successfully", iteration);
	}

    private File generateOneFile(int iteration) throws Exception {

    	String jdbcUrl = mysql.getJdbcUrl();
    	String username = mysql.getUsername();
    	String password = mysql.getPassword();

        String filePath = tempDir.getAbsolutePath() + "/stress_test_" + iteration + "_" + System.currentTimeMillis() + ".xlsx";
        try (Connection c = DriverManager.getConnection(jdbcUrl, username, password)) {
            XLSEngine engine = new XLSEngine.Builder(c, "SELECT * FROM myTable", filePath).build();
            File generatedFile = engine.generate();
            assertTrue("File should exist: " + filePath, generatedFile.exists());
            assertTrue("File should not be empty: " + filePath, generatedFile.length() > 0);
            return generatedFile;
        }
    }

    @Test
    @Order(2)
    void assertNoResourceLeaks() throws Exception {
        logger.info("Stress test completed. Checking for resource leaks...");

        // 1. Check database connections
        int connectionCount = getDatabaseConnectionCount();
        logger.info("Final database connection count: {}", connectionCount);
        assertTrue("Connection leak detected: " + connectionCount + " connections still open", connectionCount < 15);

        // 2. Check file handles (JVM process)
        long fdCount = getOpenFileDescriptorCount();
        logger.info("Final file descriptor count: {}", fdCount);
        assertTrue("File descriptor leak detected: " + fdCount + " file descriptors open", fdCount - initialFdCount < 100);

        // 3. Force GC and check memory
        System.gc();
        Thread.sleep(3000);
        long usedMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
        logger.info("Heap memory used after GC: {} MB", usedMemory / (1024 * 1024));
        assertTrue("Memory leak detected: " + (usedMemory / (1024 * 1024)) + " MB used", usedMemory < 100 * 1024 * 1024);
    }

    private static int getDatabaseConnectionCount() throws SQLException {
    	String jdbcUrl = mysql.getJdbcUrl();
    	String username = mysql.getUsername();
    	String password = mysql.getPassword();
        String sql = "SELECT COUNT(*) FROM information_schema.processlist WHERE USER = ?";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            return rs.getInt(1);
        }
    }

    private static long getOpenFileDescriptorCount() {
        // Unix/Linux: use the standard JMX bean
        var osBean = java.lang.management.ManagementFactory.getOperatingSystemMXBean();
        if (osBean instanceof com.sun.management.UnixOperatingSystemMXBean unixBean) {
            return unixBean.getOpenFileDescriptorCount();
        }

        // Windows: try to obtain handle count using wmic
        if (System.getProperty("os.name").toLowerCase().contains("win")) {
            try {
                long pid = ProcessHandle.current().pid();
                Process process = new ProcessBuilder(
                    "wmic", "process", "where", "ProcessId=" + pid, "get", "HandleCount"
                ).redirectErrorStream(true).start();
                try (var reader = new java.io.BufferedReader(new java.io.InputStreamReader(process.getInputStream()))) {
                    String line;
                    while ((line = reader.readLine()) != null) {
                        line = line.trim();
                        // The output contains a header "HandleCount" then the number
                        if (!line.isEmpty() && !line.equalsIgnoreCase("HandleCount")) {
                            return Long.parseLong(line);
                        }
                    }
                }
                process.waitFor();
            } catch (Exception e) {
                // Fall through to return -1
            }
        }

        return -1;  // Unsupported or failed
    }

    @AfterAll
    static void checkPoiTempFiles() throws IOException {
        Path tmpDir = Path.of(System.getProperty("java.io.tmpdir"));
        long poiTempCount;
        try (var files = Files.list(tmpDir)) {
            poiTempCount = files.filter(p -> p.getFileName().toString().startsWith("poi-sxssf-"))
            					.count();
        }
        logger.info("POI temp files remaining: {}", poiTempCount);
        assertEquals(0, poiTempCount, "Orphaned SXSSF temp files detected!");
    }

	@AfterAll
	static void destroy() {
		logger.info("Closing mysql connection");
		mysql.close();
		tempDir.deleteOnExit();
	}
}