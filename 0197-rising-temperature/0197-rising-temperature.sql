# Write your MySQL query statement below

select w.id as Id from Weather as w 
where temperature > (select temperature from Weather where recordDate = DATE_SUB(w.recordDate, INTERVAL 1 DAY))
order by recordDate;