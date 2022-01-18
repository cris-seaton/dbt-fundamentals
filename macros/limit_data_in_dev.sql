{% macro limit_data_in_dev(loaded_at_field,cutoff_day=3) -%}
{# {%- if target.name == 'dev' -%} #}

{%- if target.name == 'default' -%}
where {{ loaded_at_field }} >= date_sub(current_date, interval {{ cutoff_day }} day)
{%- endif -%}
{%- endmacro -%}