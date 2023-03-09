WITH customers AS (
    SELECT
        id AS customer_id,
        first_name,
        last_name
    FROM {{ source('shop_data', 'customers')}}
)

SELECT * FROM customers