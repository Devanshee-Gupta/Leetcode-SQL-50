# Write your MySQL query statement below

SELECT e1.id,
(CASE 
WHEN MOD(e1.id,2)=0 THEN COALESCE(e2.student,e1.student) 
ELSE COALESCE(LEAD(e1.student,1) OVER(ORDER BY e1.id),e1.student)
END) as student
FROM Seat as e1 LEFT JOIN Seat as e2
ON e1.id - 1 = e2.id
ORDER BY e1.id;
