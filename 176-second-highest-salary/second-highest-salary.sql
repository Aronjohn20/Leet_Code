-- with ct AS
-- (
-- SELECT id,salary,
-- DENSE_RANK() OVER(ORDER BY salary DESC) as ranking
-- FROM employee
-- )
-- SELECT DISTINCT COALESCE(
--     (SELECT salary FROM ct WHERE ranking = 2), 
--     NULL
-- ) AS SecondHighestSalary;

SELECT MAX(salary) AS SecondHighestSalary
FROM employee WHERE salary < 
(SELECT MAX(salary) FROM Employee);