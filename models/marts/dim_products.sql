select
    ProductID,
    ProductName
from {{ ref('products') }}