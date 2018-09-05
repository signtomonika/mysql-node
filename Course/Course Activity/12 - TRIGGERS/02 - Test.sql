insert into users (username , age) values
('Sue',54);

insert into users (username , age) values
('Yang',14);

/* Result

ERROR 1644 (45000): Must be an adult! -- 1644 - MYSQL error ; 45000 - standard sql state

Users Table :

+----------+------+
| username | age  |
+----------+------+
| Bobby    |   23 |
| Sally    |   16 |
| Sue      |   54 |
+----------+------+

*/