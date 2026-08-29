select
    o.OrderID,
    o.OrderDate,
    o.CustomerID,
    c.CustomerName,
    c.City,
    c.State,
    c.Country,
    o.ProductID,
    p.ProductName,
    o.Quantity,
    o.UnitPrice,
    o.Discount,
    o.Tax,
    o.ShippingCost,
    o.TotalAmount,
    o.PaymentMethod,
    o.OrderStatus,
    osm.StatusCategory,
    o.SellerID
from {{ ref('orders') }} o
left join {{ ref('customers') }} c
    on o.CustomerID = c.CustomerID
left join {{ ref('products') }} p
    on o.ProductID = p.ProductID
left join {{ ref('order_status_mapping') }} osm
    on o.OrderStatus = osm.OrderStatus