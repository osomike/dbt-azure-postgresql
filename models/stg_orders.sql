WITH orders AS (
    SELECT
        id AS order_id,
        user_id AS customer_id,
        order_date,
        order_status
    FROM dbt_data_sample.orders
)

SELECT * FROM orders