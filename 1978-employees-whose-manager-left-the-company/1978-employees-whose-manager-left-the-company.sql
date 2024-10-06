# Write your MySQL query statement below
SELECT p.employee_id
FROM employees p
left join employees s on p.manager_id = s.employee_id
where p.manager_id is not null
and s.employee_id is null
and p.salary < 30000
order by employee_id