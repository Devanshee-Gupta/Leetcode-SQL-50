# Write your MySQL query statement below

SELECT DISTINCT t1.product_id, IFNULL(t2.new_price,10) AS price
FROM Products AS t1 LEFT JOIN
( 
    SELECT product_id, new_price, change_date,
    ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS row_num
    FROM Products WHERE change_date<='2019-08-16'
) AS t2 
ON t1.product_id=t2.product_id and row_num <=1;

