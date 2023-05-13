{% macro clear_string(column_name) %}
    trim({{ column_name }})::string
{% endmacro %}