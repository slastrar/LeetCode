# Write your MySQL query statement below
select 
    machine_id,
    round(avg(processing_time),3) processing_time
from
    (
    select
        machine_id,
        max(timestamp) - min(timestamp) processing_time
    from activity
    group by machine_id,process_id
    ) as subquery
group by machine_id