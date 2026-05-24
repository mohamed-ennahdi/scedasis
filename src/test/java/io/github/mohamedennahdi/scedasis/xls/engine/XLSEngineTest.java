package io.github.mohamedennahdi.scedasis.xls.engine;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.io.CleanupMode;
import org.junit.jupiter.api.io.TempDir;
import org.sf.ennahdi.xlsunit.xls.ExcelComparator;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import net.sf.ennahdi.automatic.report.generator.generic.engine.Engine;
import net.sf.ennahdi.automatic.report.generator.generic.engine.enums.StatementType;

@Testcontainers
class XLSEngineTest {

	private final Logger logger = LogManager.getLogger(getClass());

	@TempDir(cleanup = CleanupMode.NEVER)
	File tempDir;

	@Container
	private static final MySQLContainer<?> mysql = new MySQLContainer<>("mysql:8.0.36").withDatabaseName("testdb")
																					   .withUsername("testuser")
																					   .withPassword("testpass")
													 								   .withInitScript("db/data-ourC58bC3ig3Tc6khxGOZ.sql");

	@Test
	void generateTest() throws Exception {
		try (Connection c = DriverManager.getConnection(mysql.getJdbcUrl(),mysql.getUsername(),mysql.getPassword())) {
			Engine engine = new XLSEngine.Builder(c, "SELECT * FROM myTable", tempDir + "/employees.xlsx").statementType(StatementType.PREPARED_STATEMENT).build();
			File testSubject = engine.generate();
			logger.info("Generated file: {}", testSubject);

			try (XSSFWorkbook actual = new XSSFWorkbook (XLSEngineTest.class.getResourceAsStream("expected.employees.xlsx"));
				XSSFWorkbook expected = new XSSFWorkbook(testSubject)) {
				List<String> differences = ExcelComparator.compare(actual, expected);
				for (String string : differences) {
					logger.info(string);
				}
				assertEquals(1, differences.size());
				assertTrue(differences.get(0).contains("Name of the sheets do not match"));
			}
		} catch (Exception e) {
			fail();
			logger.error("", e);
		}
	}

	@AfterAll
	static void destroy() {
		mysql.close();
	}
}