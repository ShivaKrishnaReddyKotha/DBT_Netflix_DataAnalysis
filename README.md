# DBT_Netflix_DataAnalysis
## End-to-End Netflix Data Analysis using DBT
**DBT (Data Build Tool)** is primarily a transformation tool that enables users to write modular SQL queries to convert raw data into analytics-ready data models. It focuses exclusively on the transformation step in the ELT (Extract, Load, Transform) process, meaning it does not handle data extraction or loading.

For a Netflix analysis project demonstrated in the sources, DBT integrates with **Amazon S3** for data storage and **Snowflake** as the data warehouse.

### Architecture Used

![image](https://github.com/user-attachments/assets/6c28ff6d-b327-436d-8a51-50581508dc92)

### Key benefits of using DBT include:

**Modularity:** Breaking down complex transformations into manageable pieces.

**Reusability:** Easily reusing transformation logic across projects.

**Built-in Testing:** Ensuring data quality with testing capabilities.

**Automatic Documentation Generation:** Creating documentation directly from code.

**Dependency Management:** Automatically handling the order of model execution.

**Development Workflow:** Supporting separate environments for development, testing, and production.


### DBT Lineage Graph

![image](https://github.com/user-attachments/assets/d31034ea-808d-45f8-9302-7405f089f98c)


Prerequisites for learning DBT include a basic understanding of **SQL**. Knowledge of **Snowflake** and data engineering foundations is beneficial but not strictly required for project execution.

#### Core DBT Concepts:

**Models:** SQL statements (.sql files) that define transformations. They can produce either tables or views in your data warehouse and can reference other models to build a dependency graph.

**Materializations:** Strategies for how DBT persists models in the data warehouse. Types include view, table, incremental (for updating records since the last run), ephemeral (temporary, memory-only), and materialized view (combining query performance of tables with data freshness of views).

**Seeds:** CSV files uploaded to the data warehouse, useful for static reference data like country codes or product categories.

**Sources:** Represent raw data already loaded into your data warehouse. Configuring sources allows for documentation, testing, and freshness checks of the raw data.

**Snapshots:** DBT's built-in implementation of Type 2 Slowly Changing Dimensions (SCD2). Snapshots record the state of mutable tables over time by tracking changes in specific columns, adding "valid from" and "valid to" dates, and maintaining complete history.

**Testing:** DBT supports generic tests (reusable, e.g., unique, not null, relationship, accepted values) and singular tests (custom SQL scripts for specific conditions) to ensure data quality and integrity.

**Documentation:** DBT can automatically generate a comprehensive documentation website for project, including models, columns, tests, and a visual lineage graph showing model dependencies.

**Macros:** Reusable Jinja-based functions that allow for custom logic or to encapsulate frequently used SQL patterns, similar to functions in programming languages.

**Analysis:** SQL queries used for ad-hoc analysis, exploratory data analysis, or generating reports that do not create permanent objects in the data warehouse.
