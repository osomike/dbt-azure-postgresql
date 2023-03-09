WITH orders AS (
    SELECT
        id AS order_id,
        user_id AS customer_id,
        order_date,
        order_status
    FROM {{ source('shop_data', 'orders')}}
)

SELECT * FROM orders