# Write your MySQL query statement below
with cte1 AS
(
SELECT e.id,e.name,e.salary,e.departmentId,d.name AS DepName
FROM Employee e JOIN Department d
ON e.departmentId = d.id   
),
cte2 AS
(
Select DepName,name,salary,
DENSE_RANK() OVER(PARTITION BY DepName ORDER BY Salary DESC) AS Ranking    
FROM cte1
)
SELECT DepName as Department, name AS Employee
, Salary FROM cte2
WHERE Ranking<=3;