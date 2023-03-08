{{
    config(materialized='table')
}}

WITH payments AS (
    SELECT *
    FROM {{ ref ('stg_payments') }}
),
orders AS (
    SELECT * 
    FROM {{ ref ('stg_orders') }}
),
customers AS (
    SELECT * 
    FROM {{ ref ('stg_customers') }}
),
orders_customers AS (
    SELECT orders.order_id, first_name, last_name, customers.customer_id, order_status
    FROM orders JOIN customers ON orders.customer_id = customers.customer_id
)

SELECT first_name, last_name, customer_id, payments.order_id, payment_method, payment_status, payment_amount, payment_created
--FROM orders_customers
FROM orders_customers JOIN payments ON orders_customers.order_id = payments.order_id
