--MAC commands
virtualenv venv
source venv/bin/activate

pip install dbt-snowflake==1.9.0

-- create dbt profile
-- mac
mkdir ~/.dbt

-- windows 
mkdir %userprofile%\.dbt

-- initiate dbt project 
dbt init <projectname>

-- Add staging tables -> all will be views
-- Update dbt_project.yaml file to support of tables
dim:
  +materialized: table
--   +schema: dim
-- fct:
--   +materialized: incremental
--   +schema: fct
-- mart:
--   +materialized: table
--   +schema: mart
-- snapshots:
--   +schema: snapshots