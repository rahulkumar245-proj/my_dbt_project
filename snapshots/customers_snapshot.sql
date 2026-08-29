{% snapshot customers_snapshot %}

{{
    config(
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