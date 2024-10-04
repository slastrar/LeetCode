# Write your MySQL query statement below
SELECT * FROM Cinema 
Where mod(id,2) <> 0 and description <> "boring"
ORDER BY rating desc