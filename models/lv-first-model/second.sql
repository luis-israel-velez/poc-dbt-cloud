
{{ config(materialized='table') }}

select {{clear_string('name')}} as name, id 
from {{ ref('first') }}