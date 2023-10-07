
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(materialized='table') }}




-- Reference the existing table and include all columns in a CTE
WITH SHEET1 AS (
  SELECT * FROM {{ ref('AIRBYTE_DATABASEE.AIRBYTE_SCHEMAA.SHEET1') }}
)

-- You can now use the source_data CTE in your dbt model
SELECT * FROM SHEET1;
