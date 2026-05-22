# Write your MySQL query statement below
SELECT c.name as Customers from Customers c
where c.id not in
(
select o.customerId from Orders o
join Customers c on c.id = o.customerId
)