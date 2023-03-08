WITH customers AS (
    SELECT
        id AS customer_id,
        first_name,
        last_name
    FROM dbt_data_sample.customers
)

SELECT * FROM customers