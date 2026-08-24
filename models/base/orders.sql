SELECT
    OrderID,
    OrderDate,
    CustomerID,
    ProductID,
    Quantity,
    UnitPrice,
    Discount,
    Tax,
    ShippingCost,
    TotalAmount,
    PaymentMethod,
    OrderStatus,
    SellerID
FROM {{ source('raw', 'sales') }}