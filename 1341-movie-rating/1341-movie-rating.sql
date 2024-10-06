# Write your MySQL query statement below
With maxUser as ( 
    SELECT U.name results
    FROM MovieRating MR
    INNER JOIN Users U ON MR.user_id = U.user_id
    GROUP BY MR.user_id
    ORDER BY count(MR.user_id) DESC, U.name
    LIMIT 1
),

maxAvgRating as (
    SELECT M.title results
    FROM MovieRating MR
    INNER JOIN Movies M Using (movie_id)
    WHERE MR.created_at between '2020-02-01' and '2020-02-29'
    GROUP BY MR.movie_id
    ORDER BY AVG(MR.rating) DESC, M.title
    LIMIT 1
)

(SELECT * from maxUser)

UNION ALL

(SELECT * from maxAvgRating)

