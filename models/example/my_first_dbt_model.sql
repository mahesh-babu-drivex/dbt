
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

SELECT
    AVG(PDI) AS avg_pdi,
    AVG(Inspection) AS avg_inspection,
    "Vehicle type",
    COUNT(*) AS record_count
FROM SHEET1
GROUP BY "Vehicle type";


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null


-- {{ config(materialized='table') }}

-- my_model.sql

-- Calculate the average PDI and Inspection values, and count records by Vehicle type
