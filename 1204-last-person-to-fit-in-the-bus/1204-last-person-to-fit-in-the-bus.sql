# Write your MySQL query statement below
with sum_weight as (
    SELECT 
        person_name, 
        weight, 
        turn,
        SUM(weight) OVER (ORDER BY turn) AS total_weight 
    FROM Queue
)

SELECT person_name
FROM sum_weight
WHERE total_weight < 1001
ORDER BY total_weight DESC
LIMIT 1