{% macro calculate_order_amount(quantity_column, price_column, decimal_places=2) %}

    round(
        {{ quantity_column }} * {{ price_column }},
        {{ decimal_places }}
    )

{% endmacro %}