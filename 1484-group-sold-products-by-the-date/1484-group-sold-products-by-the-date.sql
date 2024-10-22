# Write your MySQL query statement below
SELECT
    sell_date,
    COUNT(distinct product) num_sold,
    GROUP_CONCAT(distinct product order by product) as products
FROM activities
Group by sell_date
ORDER BY sell_date
