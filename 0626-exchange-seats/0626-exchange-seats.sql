# Write your MySQL query statement below
SELECT
    id,
    CASE 
        WHEN id = (SELECT COUNT(*) FROM seat) AND id % 2 = 1 THEN student
        WHEN id % 2 = 0 then LAG(student) OVER(ORDER BY id)
        WHEN id % 2 = 1 then LEAD(student) OVER(ORDER BY id)
    END AS student
FROM seat