SELECT 
    id, 
    IF(MOD(id, 2) = 1, LEAD(student, 1, student) OVER (), LAG(student,1) OVER ()) AS student
FROM Seat;