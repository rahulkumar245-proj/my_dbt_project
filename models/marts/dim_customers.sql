select
    CustomerID,
    CustomerName,
    City,
    State,
    Country
from {{ ref('customers') }}