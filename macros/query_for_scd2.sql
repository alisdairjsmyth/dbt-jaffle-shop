{% macro query_for_scd2(from, except=[]) %}
with

source as (
    select * from {{ from }}
),
renamed as (
    select
        *,
        {{ _dbt_check_hash (dbt_utils.get_filtered_columns_in_relation(from, except)) }}
    from source
)

select * from renamed
{% endmacro %}
