create database trigger_demo;

create table users (
username varchar(100),
age INT
);

insert into users (username , age) values
('Bobby',23);

insert into users (username , age) values
('Sally',16);

/*
+----------+------+
| username | age  |
+----------+------+
| Bobby    |   23 |
| Sally    |   16 |
+----------+------+

*/