SELECT c.name as Customers 
FROM Customers c
WHERE c.id NOT IN
(
SELECT c.id as Customers 
FROM Customers c
JOIN Orders o
ON c.id = o.customerId  
)
