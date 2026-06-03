# Write your MySQL query statement below
Select stock_name,
SUM(
CASE
WHEN operation='Sell' THEN price
ELSE 0
END  
) - SUM(
CASE
WHEN operation='Buy' THEN price
ELSE 0
END
) AS capital_gain_loss
FROM
(
SELECT stock_name,SUM(price) as price, operation
FROM Stocks
WHERE operation ='buy'
GROUP BY stock_name
UNION ALL 
SELECT stock_name,SUM(price) AS price ,operation
FROM Stocks
WHERE operation ='sell'
GROUP BY stock_name
) newone
GROUP BY stock_name