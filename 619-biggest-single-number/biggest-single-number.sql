SELECT MAX(num) as num
FROM MyNumbers
WHERE num in 
(
SELECT num
from MyNumbers
GROUP BY num
HAVING COUNT(*)=1)