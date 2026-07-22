SELECT id, first_name, order_id, sales
FROM customers
INNER JOIN orders
ON id = customer_id