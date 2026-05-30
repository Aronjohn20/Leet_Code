select 
( select distinct salary from(
SELECT id,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) as ranking
FROM employee
) as ranked
where ranking = 2
) AS SecondHighestSalary;

-- SELECT MAX(salary) AS SecondHighestSalary
-- FROM employee WHERE salary < 
-- (SELECT MAX(salary) FROM Employee);