{% macro generate_status_counts(status_column, statuses) %}

    {% for status in statuses %}
        countif({{ status_column }} = '{{ status }}')
            as {{ status | lower | replace(' ', '_') }}_orders
        {% if not loop.last %},{% endif %}
    {% endfor %}

{% endmacro %}