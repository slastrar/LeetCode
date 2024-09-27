# Write your MySQL query statement below
select 
    name 
from (
    select
        e1.id,
        e1.name,
        count(*) as quantity
    from employee e1
    inner join employee e2 on e1.id = e2.managerid
    group by id
    ) a
where quantity > 4