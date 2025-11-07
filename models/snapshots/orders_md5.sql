{{
    config(
        materialized="ephemeral"
    )
}}

{{ query_for_scd2(from=ref('stg_orders')) }}
