# scedasis

This project is the migration of [automatic-report-generator](https://sourceforge.net/projects/automatic-report-generator/), specifically the **XLS generator** module.

The XLS part was renamed to **scedasis**, a simplified dedicated qualifier.

## Purpose

The objective of this framework is to quickly generate XLS files using SQL query or stored procedure. it operates as a mini-ETL tool.

Below a basic source code example:

```
Engine engine = new XLSEngine.Builder(sqlConnection, selectQuery, destinationXLSFile).build();
File generatedXLSFile = engine.generate();
logger.info("Generated file: {}", generatedXLSFile);
```

## Additions

The main objective of this migration, on top of updating dependencies, is to have a specific name rather than the generic previous one.

**testcontainers** was introduced to perform basic and stress tests to ensure the reliability of this framework.

Make sure to run Docker before running junit tests.