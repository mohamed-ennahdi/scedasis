package io.github.mohamedennahdi.scedasis.xls.engine;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.validator.GenericValidator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.xssf.streaming.SXSSFCell;
import org.apache.poi.xssf.streaming.SXSSFRow;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import net.sf.ennahdi.automatic.report.generator.generic.engine.Engine;
import net.sf.ennahdi.automatic.report.generator.generic.engine.enums.StatementType;
import net.sf.ennahdi.automatic.report.generator.generic.engine.exceptions.FileNotGeneratedException;

/**
 *
 * @author ENNAHDI EL IDRISSI, Mohamed
 * @version
 *          <p>
 *          1.0, September 2016
 *          </p>
 *          <p>
 *          1.1, October 2016
 *          </p>
 *          <p>
 *          1.2, November 2016
 *          </p>
 *          <p>
 *          - Upgrading from POI 3.14 to POI 3.15.
 *          </p>
 *          <p>
 *          1.3, August 2018
 *          </p>
 *          <p>
 *          - Upgrading from POI 3.15 to POI 3.17.
 *          </p>
 *          <p>
 *          - Speeding up XLS generation through SXSSFWorkbook instead of
 *          XSSFWorkbook.
 *          </p>
 *          <p>
 *          - Abandoning spreadsheet columns autoSizing().
 *          </p>
 *          <p>
 *          2.0, August 2019
 *          </p>
 *          <p>
 *          Based on <i>Kelly Graves</i> suggestion.
 *          </p>
 *          <p>
 *          - Injecting the query instead of hard coding it.
 *          </p>
 *          <p>
 *          - Extending XLSEngine so that stored procedures may be invoked
 *          through CallableStatement.
 *          </p>
 *          <p>
 *          2.2, June 2022
 *          </p>
 *          <p>
 *          - Bug correction related to file creation
 *          </p>
 *          <p>
 *          - Moving formatInput() to XLSEngine class and enhancing it.
 *          </p>
 *          <p>
 *          - Changing JDK version from 6 to 11.
 *          </p>
 *          <p>
 *          - Changing nexus-staging-maven-plugin version to 1.6.13.
 *          </p>
 *          <p>
 *          3.0, June 2022
 *          </p>
 *          <p>
 *          - Upgrading generic-generator version to 3.0.
 *          </p>
 *          <p>
 *          - Upgrading POI version to 5.2.2.
 *          </p>
 *          <p>
 *          - File output path does not used "user.home" anymore.
 *          </p>
 *          <p>
 *          - Keeping one constructor to be orchestrated in the implementation of Builder design pattern.
 *          </p>
 *          <p>
 *          - Throwing FileNotGeneratedException instead of returning <b>null</b> when a problem occurs during the generation.
 *          </p>
 */
public class XLSEngine extends Engine {
	private static final Logger logger = LogManager.getLogger(XLSEngine.class);
	private static final int COLUMN_WIDTH = 5120;
	private static final int MAX_SPREADSHEET_ROWS = 1048576;

	SXSSFSheet spreadsheet;
	SXSSFRow row;
	SXSSFCell cell;
	SXSSFWorkbook workbook;

	String path;
	String inputDateFormat;
	String outputDateFormat;

	public XLSEngine(Builder builder) {
		super(builder.connection, builder.statementType, builder.query, builder.arguments);
		this.path = builder.path;
		this.inputDateFormat = builder.inputDateFormat;
		this.inputDateFormat = builder.outputDateFormat;
	}

	@Override
	public File generate() throws FileNotGeneratedException {
		ResultSet rs = null;
		OutputStream out = null;
		try (Connection c = this.getConnection()) {
			File file = new File(this.path);
			if (!file.getParentFile().mkdirs()) {
				XLSEngine.logger.info("{} already exists.", file.getParentFile().getAbsolutePath());
			}
			if (!file.createNewFile()) {
				XLSEngine.logger.info("{} already exists.", file.getName());
			}
			out = new FileOutputStream(file);
			XLSEngine.logger.info("Generating {}", file);

			int numberOfColumns = 0;
			ResultSetMetaData rsmd = null;

			rs = executeStatement(c);

			rsmd = rs.getMetaData();
			numberOfColumns = rsmd.getColumnCount();

			workbook = new SXSSFWorkbook();

			Font font = newFont("TAHOMA", true);

			CellStyle headerStyle = newHeaderStyle(font);

			Map<Integer, String> colNames = this.storeColumnNames(rsmd, numberOfColumns);

			this.newSpreadSheet(rsmd, numberOfColumns, headerStyle);

			Font fontBody = newFont(false);
			CellStyle style = newBodyStyle(fontBody);

			CellStyle dateCellStyle = newDateStyle(fontBody);

			int rowID = 1;
			String value;
			while (rs.next()) {
				row = spreadsheet.createRow(rowID);
				for (int column = 0; column < numberOfColumns; column++) {
					value = rs.getString(column + 1);
					cell = row.createCell(column);
					cell.setCellStyle(style);
					spreadsheet.setColumnWidth(column, COLUMN_WIDTH);
					this.formatCell(colNames, column, value, dateCellStyle);
				}
				rowID++;
				if (this.isMaxSpreadsheetRowsReached(rowID)) {
					newSpreadSheet(rsmd, numberOfColumns, headerStyle);
					rowID = 1;
				}
			}
			workbook.write(out);
			out.flush();
			XLSEngine.logger.info("{} Generated", file.getName());
			/*
			 *
			 */
			return file;
		} catch (Exception e) {
			logger.error("", e);
		} finally {
			if (Objects.nonNull(out)) {
				try {
					out.close();
				} catch (IOException e) {
					logger.error("", e);
				}
			}
			if (Objects.nonNull(rs)) {
				try {
					rs.close();
				} catch (SQLException e) {
					logger.error("", e);
				}
			}
		}
		throw new FileNotGeneratedException("A problem occurred during the generation of the document " + this.path + ".");
	}

	/**
	 *
	 * @param rsmd
	 * @param numberOfColumns
	 * @param styleEntete
	 * @throws SQLException
	 */
	private void newSpreadSheet(ResultSetMetaData rsmd, int numberOfColumns, CellStyle styleEntete) throws SQLException {
		spreadsheet = workbook.createSheet("data_" + UUID.randomUUID().toString().substring(0, 5));
		row = spreadsheet.createRow(0);
		cell = row.createCell(0);
		for (int j = 1; j <= numberOfColumns; j++) {
			cell = row.createCell(j - 1);
			cell.setCellValue(rsmd.getColumnLabel(j));
			cell.setCellStyle(styleEntete);
		}
	}

	private void formatCell(Map<Integer, String> colNames, int column, String value, CellStyle dateCellStyle) {
		Object formattedValue = this.formatInput(value);
		if (formattedValue instanceof Calendar calendar) {
			cell.setCellStyle(dateCellStyle);
			cell.setCellValue(calendar);
		} else {
			if (formattedValue instanceof Double instanceDouble) {
				cell.setCellValue(instanceDouble);
			} else {
				if (formattedValue instanceof Integer instanceInteger) {
					cell.setCellValue(instanceInteger);
				} else {
					if (formattedValue instanceof String instanceString) {
						cell.setCellValue(instanceString);
					} else {
						/*
						 * Unreachable.
						 */
						cell.setCellValue(value);
					}
				}
			}
		}
	}

	/**
	 *
	 * @param rowID
	 * @return
	 */
	private boolean isMaxSpreadsheetRowsReached(int rowID) {
		return rowID == MAX_SPREADSHEET_ROWS;
	}

	/**
	 *
	 * @param font
	 * @return
	 */
	private CellStyle newHeaderStyle(Font font) {
		CellStyle headerStyle = workbook.createCellStyle();
		headerStyle.setBorderBottom(BorderStyle.MEDIUM);
		headerStyle.setBorderLeft(BorderStyle.MEDIUM);
		headerStyle.setBorderRight(BorderStyle.MEDIUM);
		headerStyle.setBorderTop(BorderStyle.MEDIUM);
		headerStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex());
		headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		headerStyle.setFont(font);
		return headerStyle;
	}

	/**
	 *
	 * @param fontBody
	 * @return
	 */
	private CellStyle newDateStyle(Font fontBody) {
		CreationHelper createHelper = workbook.getCreationHelper();
		CellStyle dateCellStyle = workbook.createCellStyle();
		dateCellStyle.setFont(fontBody);
		dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd/MM/yyyy"));
		dateCellStyle.setBorderBottom(BorderStyle.MEDIUM);
		dateCellStyle.setBorderLeft(BorderStyle.MEDIUM);
		dateCellStyle.setBorderRight(BorderStyle.MEDIUM);
		dateCellStyle.setBorderTop(BorderStyle.MEDIUM);
		return dateCellStyle;
	}

	/**
	 *
	 * @param fontBody
	 * @return
	 */
	private CellStyle newBodyStyle(Font fontBody) {
		CellStyle style = workbook.createCellStyle();
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setFont(fontBody);
		return style;
	}

	/**
	 *
	 * @param rsmd
	 * @param numberOfColumns
	 * @return
	 * @throws SQLException
	 */
	private Map<Integer, String> storeColumnNames(ResultSetMetaData rsmd, int numberOfColumns) throws SQLException {
		Map<Integer, String> colNames = new HashMap<>();
		for (int j = 1; j <= numberOfColumns; j++) {
			colNames.put(j - 1, rsmd.getColumnLabel(j));
		}
		return colNames;
	}

	/**
	 *
	 * @param bold
	 * @return
	 */
	private Font newFont(boolean bold) {
		return newFont(null, bold);
	}

	/**
	 *
	 * @param fontName
	 * @param bold
	 * @return
	 */
	private Font newFont(String fontName, boolean bold) {
		Font font = workbook.createFont();
		if (StringUtils.isNotBlank(fontName)) {
			font.setFontName(fontName);
		}
		font.setBold(bold);
		return font;
	}

	public Object formatInput(String value) {
		if (StringUtils.isBlank(value)) {
			return "";
		}

		if (NumberUtils.isCreatable(value) && !value.startsWith("00")) {
			if (GenericValidator.isLong(value)) {
				return Long.parseLong(value);
			} else {
				if (GenericValidator.isDouble(value)) {
					return Double.parseDouble(value);
				} else {
					return value;
				}
			}
		} else {
			if (value.startsWith("00")) {
				return value;
			} else {
				if (GenericValidator.isDate(value, this.inputDateFormat, false)) {
					LocalDate dt = LocalDate.parse(value);

					Instant instant = dt.atStartOfDay(ZoneId.systemDefault()).toInstant();

					Calendar c = Calendar.getInstance();
					c.setTimeInMillis(instant.toEpochMilli());
					return c;
				} else {
					return value;
				}
			}

		}
	}

	public static class Builder {

		Connection connection;
		StatementType statementType;
		String query;
		List<Object> arguments;

		String path;
		String inputDateFormat;
		String outputDateFormat;

		public Builder(Connection connection, String query, String path) {
			this.connection = connection;
			this.query = query;
			this.path = path;
		}

		public Builder statementType(StatementType statementType) {
			this.statementType = statementType;
			return this;
		}

		public Builder arguments(List<Object> arguments) {
			this.arguments = arguments;
			return this;
		}

		public Builder inputDateFormat(String inputDateFormat) {
			this.inputDateFormat = inputDateFormat;
			return this;
		}

		public Builder outputDateFormat(String outputDateFormat) {
			this.outputDateFormat = outputDateFormat;
			return this;
		}

		public XLSEngine build() {
			return new XLSEngine(this);
		}
	}

}
