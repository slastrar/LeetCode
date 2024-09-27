# Write your MySQL query statement below
SELECT
    query_name,
    round(SUM(rating/position)/count(query_name),2) quality,
    round(SUM(good_bad)/count(query_name) * 100,2) poor_query_percentage
FROM (
     SELECT
        *,
        IF(rating < 3, 1, 0) good_bad
    From queries
    WHERE query_name is not null
) subquery 
GROUP BY query_name
