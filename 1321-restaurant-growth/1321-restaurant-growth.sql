# Write your MySQL query statement below
with cte as (
    select visited_on,
    sum(amount) as amount
    from Customer
    group by visited_on
) 

select
    visited_on,
    sum(amount) over(order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) amount,
    round(avg(amount) over(order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) average_amount
from cte
limit 1000 offset 6