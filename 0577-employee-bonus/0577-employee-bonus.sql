# Write your MySQL query statement below
SELECT
    E.name,
    B.bonus 
FROM employee E
left JOIN bonus b
on E.empID = B.empID
where bonus < 1000 or bonus is null