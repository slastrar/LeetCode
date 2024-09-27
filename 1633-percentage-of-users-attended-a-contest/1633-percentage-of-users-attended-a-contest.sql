# Write your MySQL query statement below
Select 
    r.contest_id,
    round(Count(r.user_id)/(
        SELECT Count(user_id) from users
    )*100,2) percentage
from register r
inner join users u USING (user_id)
group by r.contest_id
order by percentage desc, contest_id asc