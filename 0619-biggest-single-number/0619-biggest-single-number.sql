# Write your MySQL query statement below
SELECT 
    max(num) num
FROM (
    SELECT
        num
    FROM mynumbers
    group by num
    having count(*) = 1
) S