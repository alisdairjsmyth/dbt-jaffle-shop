{%- macro _cast_and_coalesce(column_name) -%}
    coalesce(cast({{ column_name }} as string), '')
{%- endmacro -%}