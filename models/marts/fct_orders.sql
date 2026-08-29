{{ config(
    materialized='table',
    partition_by={
        "field": "OrderDate",
        "data_type": "date"
    },
    cluster_by=["CustomerID"],
    partition_expiration_days=59
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