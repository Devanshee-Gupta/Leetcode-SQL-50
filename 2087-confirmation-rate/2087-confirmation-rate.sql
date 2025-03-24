# Write your MySQL query statement below

select s.user_id, 
COALESCE(
Round(
    (select count(*) from Confirmations as c where action='confirmed' and c.user_id = s.user_id)/
    (select count(*) from Confirmations as d where d.user_id = s.user_id)
    ,2),0)  as confirmation_rate
from Signups as s;
