# Write your MySQL query statement below
SELECT
    ST.student_id,
    ST.student_name,
    SU.subject_name,
    count(ex.subject_name) attended_exams
FROM students st
cross join subjects su
left join examinations ex on st.student_id=ex.student_id and su.subject_name = ex.subject_name 
group by student_name, subject_name
ORDER BY student_id, su.subject_name