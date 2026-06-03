# Write your MySQL query statement below
WITH first_sales AS
(
SELECT sale_id,product_id,price,`year`,quantity,
RANK() OVER(PARTITION BY product_id ORDER BY `year` ASC) AS Ranking 
FROM Sales
)
SELECT product_id,`year` AS first_year,quantity
,price from first_sales
WHERE Ranking=1;