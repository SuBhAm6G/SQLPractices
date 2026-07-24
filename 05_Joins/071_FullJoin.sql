SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL OR c.id IS NULL