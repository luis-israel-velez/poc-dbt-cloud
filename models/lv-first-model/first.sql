/*
    Test this out

*/

{{ config(materialized='table') }}

with source_data as (

    select 'Luis  ' as name, 123 as id, 12.50 as amount
    union all
    select '  Armando' as name, 234 as id, 15.99 as amount
    union all
    select 'Paula' as name, 2343 as id, 20.00 as amount
    union all
    select 'Diorel  ' as name, 4321 as id, 20.00 as amount
    union all
    select 'Diorel  ' as name, 4321 as id, 25.00 as amount
    union all
    select 'Diorel  ' as name, 4321 as id, 10.00 as amount
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
