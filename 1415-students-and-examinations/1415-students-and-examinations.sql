# Write your MySQL query statement below


select table1.student_id, table1.student_name, table1.subject_name, count(e.subject_name) as attended_exams from 
(select * from Students,Subjects) as table1 
left join 
Examinations as e 
on table1.student_id = e.student_id and table1.subject_name=e.subject_name
group by table1.student_id,table1.subject_name
order by table1.student_id,table1.subject_name;
