{{ config(

    materialized='table',
    cluster_by=["CustomerID"]

) }}

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
    OrderStatus,
    StatusCategory

from {{ ref('int_orders_enriched') }}