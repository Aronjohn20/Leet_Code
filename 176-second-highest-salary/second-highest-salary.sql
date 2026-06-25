SELECT
(
SELECT DISTINCT salary FROM(
SELECT id,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS ranking
FROM Employee
) t
WHERE ranking = 2
) AS SecondHighestSalary
