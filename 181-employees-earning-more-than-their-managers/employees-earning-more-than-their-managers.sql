SELECT e2.name as Employee from
EMPLOYEE e1 JOIN EMPLOYEE e2
ON e1.id = e2.managerId
where e1.salary < e2.salary