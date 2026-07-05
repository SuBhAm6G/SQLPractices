SELECT country, AVG(score) as avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY avg_score DESC
-------------------------

