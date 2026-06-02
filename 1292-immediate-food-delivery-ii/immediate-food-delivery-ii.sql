WITH first_orders AS
(
SELECT customer_id AS cus,order_date AS ordere,customer_pref_delivery_date AS pref,
RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) ordered
FROM Delivery
) 
SELECT 
ROUND(SUM(
CASE 
WHEN ordere = pref THEN 1
ELSE 0
END
) * 100.0/ COUNT(*),2) AS immediate_percentage
FROM first_orders
WHERE ordered = 1 
