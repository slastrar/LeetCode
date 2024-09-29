# Write your MySQL query statement below
SELECT
    product_id,
    year first_year,
    quantity,
    price
FROM sales
Where (product_id,year) in (
SELECT product_id,
min(year) first_year
FROM sales
GROUP BY product_id )