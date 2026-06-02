with player_logins AS
(
SELECT player_id,event_date,
ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS Ranking    
FROM Activity
)
SELECT player_id,event_date AS first_login
FROM player_logins
WHERE Ranking=1;