SELECT
first_name,
SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS extrc
FROM customers