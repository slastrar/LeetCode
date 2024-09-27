# Write your MySQL query statement below
select
    S.user_id,
    COALESCE(round(confir/total,2), 0 ) confirmation_rate
FROM(
    SELECT
        user_id,
        count(*) as total,
        sum(confir) as confir
    FROM
        (
            SELECT 
                user_id,
                CASE
                    WHEN ACTION = "confirmed" then 1
                    else 0
                END as confir
            FROM confirmations
        ) SUBSUBQUERY
    group by user_id
) C
RIGHT JOIN Signups S on C.user_id = S.user_id