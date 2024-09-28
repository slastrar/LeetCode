# Write your MySQL query statement below
select 
    round(SUM(status)/COUNT(status) * 100,2) immediate_percentage
FROM(
select D.delivery_id,
    D.customer_id,
    D.order_date,
    D.customer_pref_delivery_date,
    if(D.order_date = D.customer_pref_delivery_date, 1, 0) status
FROM delivery D
inner join (
    SELECT 
        CUSTOMER_ID,
        MIN(ORDER_DATE) ORDER_DATE
    FROM Delivery
    group by customer_id
) S
ON D.CUSTOMER_ID = S.CUSTOMER_ID
AND D.ORDER_DATE = S.ORDER_DATE) SUBQUERY