WITH customer_records AS (

    SELECT
        CustomerID,
        CustomerName,
        City,
        State,
        Country,
        OrderDate,

        ROW_NUMBER() OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate DESC, OrderID DESC
        ) AS rn

    FROM {{ source('raw', 'sales') }}

)

SELECT
    CustomerID,
    CustomerName,
    City,
    State,
    Country
FROM customer_records
WHERE rn = 1