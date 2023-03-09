WITH payments AS (
    SELECT
        id AS payment_id,
        order_id,
        paymment_method AS payment_method,
        status AS payment_status,
        amount AS payment_amount,
        created AS payment_created
    FROM {{ source('shop_data', 'payments')}}
)

SELECT * FROM payments