# Write your MySQL query statement below
SELECT 
P.project_id,
round(avg(e.experience_years),2) average_years
from project p
inner join employee e on p.employee_id = e.employee_id
group by project_id