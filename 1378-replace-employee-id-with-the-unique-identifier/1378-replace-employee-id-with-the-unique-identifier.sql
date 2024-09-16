# Write your MySQL query statement below
select 
    UNI.unique_id,
    EMP.name
from employees EMP left join
    employeeuni UNI on EMP.id = UNI.id