# Write your MySQL query statement below
select
    id,
    count(*) num
FROM(select requester_id as id from RequestAccepted
    union all
    select accepter_id as id from RequestAccepted) a 
GROUP BY id
ORDER BY 2 desc
limit 1