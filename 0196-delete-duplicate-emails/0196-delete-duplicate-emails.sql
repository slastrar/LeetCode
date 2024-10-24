# Write your MySQL query statement below
DELETE FROM person 
WHERE id IN (
    SELECT id FROM (
        SELECT 
            id,
            ROW_NUMBER() OVER(PARTITION BY email ORDER BY id) AS row_num
        FROM person
    ) AS S
    WHERE row_num > 1
);