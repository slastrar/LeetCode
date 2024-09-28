# Write your MySQL query statement below
SELECT
    round(SUM(if(DATEDIFF(next_day,event_date) = 1 and rank_day = 1,1,0))/(
        SELECT
            COUNT(DISTINCT player_id)
        FROM activity
    ),2) fraction
FROM(
    Select
        event_date,
        LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) next_day,
        RANK() OVER (PARTITION BY player_id ORDER BY event_date) rank_day
    FROM activity
) s