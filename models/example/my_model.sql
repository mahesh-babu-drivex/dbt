
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(materialized='table') }}


with SHEET1 as (
    select 1 as PDI,
           'Manish' as "Technician name",
           '1' as Refurbishment
    union all
    select null as PDI,
           'Mahesh' as "Technician name",
           '6' as Refurbishment
)




SELECT * from SHEET1


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
