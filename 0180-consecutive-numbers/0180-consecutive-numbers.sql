# Write your MySQL query statement below


SELECT DISTINCT num AS ConsecutiveNums
FROM
(
    SELECT num,
    LEAD(num,1) OVER (ORDER BY id) as line1_num,
    LEAD(num,2) OVER (ORDER BY id) as line2_num
    FROM LOGS
) t1
WHERE num = line1_num and num= line2_num;