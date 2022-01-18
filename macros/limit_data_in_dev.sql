{% macro limit_data_in_dev(loaded_at_field,cutoff_day=3) -%}
{# {%- if target.name == 'dev' -%} #}
where {{ loaded_at_field }} >= date_sub(current_date, interval {{ cutoff_day }} day)
{#{%- endif -%}#}
{%- endmacro %}