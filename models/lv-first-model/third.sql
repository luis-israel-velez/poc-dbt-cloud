
{{ config(materialized='table') }}

select id, sum(amount) as total_amount
from {{ ref('first') }}
group by id