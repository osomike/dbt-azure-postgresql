WITH orders AS (
    SELECT *
    FROM {{ ref ('stg_orders') }}
),

daily AS (
    SELECT order_date, COUNT(*) AS orders_number
    FROM orders
    GROUP BY order_date
    ORDER BY order_date
),

compared AS (
    SELECT *, LAG(orders_number) OVER (ORDER BY order_date) AS previous_day_orders
    FROM daily
)



SELECT *
FROM compared