
{{ config(materialized='table') }}


select a.id, a.name, b.total_amount from {{ ref("second")}} a
join {{ref("third")}} b using (id)
