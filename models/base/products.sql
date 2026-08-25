SELECT DISTINCT
    ProductID,
    ProductName
FROM {{ source('raw', 'sales') }}