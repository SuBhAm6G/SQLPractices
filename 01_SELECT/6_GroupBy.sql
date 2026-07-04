SELECT country, /*first_name, The cols mentioned here, must also be in group by. If we use first_name here, there will be 5 combinations, so no more aggregate */
SUM(score) AS total_score,
COUNT(id) AS total_customers
FROM customers 
GROUP BY country
ORDER BY total_score DESC
------------------------------------------
SELECT first_name, country, score
FROM customers