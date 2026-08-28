{{ config(
    materialized='table',
    partition_by={
        "field": "OrderDate",
        "data_type": "date"
    },
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
    OrderStatus

from {{ ref('int_orders_enriched') }}