select
    OrderID,
    OrderDate,
    CustomerID,
    ProductID,
    SellerID,
    Quantity,
    UnitPrice,
    Discount,
    Tax,
    ShippingCost,
    TotalAmount,
    PaymentMethod,
    OrderStatus
from {{ ref('int_orders_enriched') }}