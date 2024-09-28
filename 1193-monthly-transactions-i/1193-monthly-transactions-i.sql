# Write your MySQL query statement below
select
    SUBSTRING(trans_date, 1, 7) month,
    country,
    COUNT(*) trans_count,
    SUM(CASE WHEN state = "approved" then 1 else 0 end) approved_count,
    SUM(amount) trans_total_amount,
    SUM(CASE WHEN state = "approved" then amount else 0 end) approved_total_amount
from transactions
GROUP BY year(trans_date),month(trans_date), country