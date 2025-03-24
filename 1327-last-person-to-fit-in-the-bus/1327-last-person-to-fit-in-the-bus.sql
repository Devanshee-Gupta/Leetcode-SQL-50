# Write your MySQL query statement below

SELECT q.person_name
FROM Queue AS q
WHERE 1000>= (SELECT SUM(q2.weight) FROM Queue AS q2 WHERE q2.turn<=q.turn)
ORDER BY q.turn DESC LIMIT 1;