# Write your MySQL query statement below
SELECT 
    D.name Department,
    E.name Employee,
    E.Salary
FROM (
    SELECT 
        name,
        departmentId,
        salary,
        DENSE_RANK() OVER(Partition by departmentId ORDER BY salary DESC) topThree
    FROM Employee
) E
INNER JOIN Department D ON E.departmentId = D.id
WHERE E.topThree < 4