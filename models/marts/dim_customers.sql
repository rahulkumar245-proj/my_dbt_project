select
    {{ dbt_utils.generate_surrogate_key(['CustomerID']) }} as CustomerKey,
    CustomerID,
    CustomerName,
    City,
    State,
    Country
from {{ ref('customers') }}