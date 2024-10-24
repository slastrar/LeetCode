# Write your MySQL query statement below
SELECT
    p.product_name,
    SUM(o.unit) unit
FROM orders o
INNER JOIN Products p on o.product_id = p.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id
HAVING SUM(o.unit) > 99