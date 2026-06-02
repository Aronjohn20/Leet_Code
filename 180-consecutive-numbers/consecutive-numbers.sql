# Write your MySQL query statement below

with cte as(
SELECT id,num,
LAG(num,1) OVER() AS cons,
LAG(num,2) OVER() AS cons2
FROM Logs)
SELECT DISTINCT(num) AS ConsecutiveNums FROM
cte
WHERE num=cons AND num=cons2;
-- SELECT DISTINCT(id) FROM
-- cte
-- WHERE
-- num=cons;
