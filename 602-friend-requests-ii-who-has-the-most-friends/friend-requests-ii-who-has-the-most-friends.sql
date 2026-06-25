# Write your MySQL query statement below
with cte AS
(
SELECT requester_id,COUNT(*) as num FROM RequestAccepted
GROUP BY 
requester_id
UNION ALL
SELECT accepter_id,COUNT(*) as num FROM RequestAccepted
GROUP BY accepter_id
)
SELECT requester_id as id,SUM(num) as num
FROM cte
GROUP BY requester_id
ORDER BY SUM(num) DESC
LIMIT 1