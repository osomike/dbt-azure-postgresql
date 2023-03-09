WITH payments AS (
    SELECT *
    FROM {{ ref('stg_payments')}}
)

SELECT order_id, SUM(payment_amount) AS total_amount
FROM payments
GROUP BY order_id
HAVING SUM(payment_amount) < 0