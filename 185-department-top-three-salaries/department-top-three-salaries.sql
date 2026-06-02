# Write your MySQL query statement below

with salary_rankings AS
(
SELECT e.id,e.name,e.salary,e.departmentId,d.name AS DepName,
DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS Ranking    
FROM Employee e
LEFT JOIN Department d
ON e.departmentId = d.id
)
SELECT DepName as Department, name AS Employee
, Salary FROM salary_rankings
WHERE Ranking<=3;