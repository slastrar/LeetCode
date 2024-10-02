# Write your MySQL query statement below
SELECT 
    V.customer_id,
    COUNT(V.customer_id)  as count_no_trans
FROM
    VISITS V left JOIN
    TRANSACTIONS T ON V.VISIT_ID = T.VISIT_ID
WHERE T.VISIT_ID IS NULL
GROUP BY V.CUSTOMER_ID

    