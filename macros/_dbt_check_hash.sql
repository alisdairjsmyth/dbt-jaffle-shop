{%- macro _dbt_check_hash(column_list) -%}
    md5(
    {% for column_name in column_list -%}
        {%- if loop.index > 1 -%}
            || '|' || 
        {%- endif -%}
        {{ _cast_and_coalesce(column_name) }}
    {% endfor -%}
    ) as dbt_check_hash
{%- endmacro -%}
