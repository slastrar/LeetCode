# Write your MySQL query statement below
SELECT
    distinct num ConsecutiveNums
FROM(
    SELECT
        *,
        LAG(num) OVER() num1,
        LAG(num,2) OVER() num2
    FROM Logs) S
where NUM = NUM1 AND NUM=NUM2    