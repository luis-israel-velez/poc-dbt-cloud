
{{ config(materialized='table') }}

select distinct {{clear_string('name')}} as name, id 
from {{ ref('first') }}