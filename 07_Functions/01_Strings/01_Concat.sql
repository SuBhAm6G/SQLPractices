SELECT 
first_name,
country,
CONCAT(first_name, ' ', country) AS name_country
FROM customers