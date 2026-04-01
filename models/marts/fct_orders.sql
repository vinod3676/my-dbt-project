-- test ci run
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ORDER_AMOUNT,
    CASE
        WHEN ORDER_STATUS = 'SHIPPED' THEN 1
        ELSE 0
    END AS IS_SHIPPED
FROM {{ ref('stg_orders') }}