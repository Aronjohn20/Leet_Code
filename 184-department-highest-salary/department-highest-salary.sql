# Write your MySQL query statement below
with dep_rank AS
(
SELECT d.name as Department,e.name as Employee,e.salary as Salary,
RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) as max_sal 
FROM Employee e JOIN Department d 
ON e.departmentId = d.id
)
SELECT Department,Employee,Salary
FROM dep_rank 
WHERE max_sal=1;