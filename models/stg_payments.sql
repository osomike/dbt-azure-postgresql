WITH payments AS (
    SELECT
        id AS payment_id,
        order_id,
        paymment_method AS payment_method,
        status AS payment_status,
        amount AS payment_amount,
        created AS payment_created
    FROM dbt_data_sample.payments
)

SELECT * FROM payments