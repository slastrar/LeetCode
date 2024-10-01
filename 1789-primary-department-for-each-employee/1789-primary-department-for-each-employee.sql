# Write your MySQL query statement below
SELECT
    employee_id,
    department_id
FROM employee
WHERE primary_flag = 'Y'
OR employee_id in (
    SELECT 
        employee_id
    FROM employee
    GROUP BY employee_id
    having count(employee_id) = 1 
)