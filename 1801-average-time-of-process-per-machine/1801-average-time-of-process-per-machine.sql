# Write your MySQL query statement below

select distinct machine_id,
Round((
    (select sum(timestamp) from Activity where activity_type = 'end' and machine_id = A.machine_id) -
    (select sum(timestamp) from Activity where activity_type = 'start' and machine_id = A.machine_id)
    )/
    (select count(timestamp)/2 from Activity where machine_id = A.machine_id)
    ,3)
as processing_time from Activity as A
group by A.machine_id,A.process_id;