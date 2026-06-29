# Write your MySQL que
with cte as 
(
SELECT d.name AS Department,e.name AS Employee,e.salary AS 
Salary,
DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC)
AS ranking
FROM Employee e
JOIN Department d
ON e.departmentId = d.id    
)
SELECT Department,Employee,Salary
FROM cte
WHERE ranking=1
