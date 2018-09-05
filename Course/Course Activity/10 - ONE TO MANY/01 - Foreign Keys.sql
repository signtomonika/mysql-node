/*

CUSTOMER
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(100) | YES  |     | NULL    |                |
| last_name  | varchar(100) | YES  |     | NULL    |                |
| email      | varchar(100) | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

*/

/*

ORDERS

+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| order_date  | date         | YES  |     | NULL    |                |
| amount      | decimal(8,2) | YES  |     | NULL    |                |
| customer_id | int(11)      | YES  | MUL | NULL    |                | -- FOREIGN KEY 
+-------------+--------------+------+-----+---------+----------------+

*/

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 98);

-- Fails with below error becuase of referential integrity enforced by Foreign key

--i.e., no customer id 98 in customer table

/*

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails 

(`CourseActivity`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`))

/*