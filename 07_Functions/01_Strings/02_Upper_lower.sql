SELECT 
first_name,
country,
CONCAT(first_name, ' ', country) AS name_country,
LOWER(first_name) AS low_name,
UPPER(country) AS up_country 
FROM customers