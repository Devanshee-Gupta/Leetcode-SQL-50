# Write your MySQL query statement below


select name from Employee where id = 
Any (select managerId from Employee
where managerId is not null
group by managerId
having count(id)>=5);