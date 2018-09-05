SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

/*
+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| George     | Michael   |      813.17 |
| Bette      | Davis     |      450.25 |
| Boy        | George    |      135.49 |
+------------+-----------+-------------+
*/

SELECT 
    first_name, 
    last_name, 
    SUM(ifnull(amount,0)) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

/*
+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| George     | Michael   |      813.17 |
| Bette      | Davis     |      450.25 |
| Boy        | George    |      135.49 |
| David      | Bowie     |        0.00 |
+------------+-----------+-------------+
*/