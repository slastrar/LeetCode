# Write your MySQL query statement below
SELECT
    P.employee_id,
    P.name,
    COUNT(*) reports_count,
    ROUND(AVG(S.age),0) average_age
FROM employees P
INNER JOIN employees S ON P.employee_id = S.reports_to
GROUP BY P.employee_id
ORDER BY P.employee_id ASC