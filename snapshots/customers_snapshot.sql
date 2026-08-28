{% snapshot customers_snapshot %}

{{
    config(
        target_schema=target.schema ~ '_snapshots'
            if target.name == 'prod'
            else target.schema,
        unique_key='CustomerID',
        strategy='check',
        check_cols=['CustomerName', 'City', 'State', 'Country']
    )
}}

select
    CustomerID,
    CustomerName,
    City,
    State,
    Country
from {{ ref('customers') }}

{% endsnapshot %}