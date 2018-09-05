create table people
    (
        name varchar(100),
        birthdate DATE,
        birthtime TIME,
        birthdt DATETIME
    );

/*
COMMAND:  desc people;

+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| name      | varchar(100) | YES  |     | NULL    |       |
| birthdate | date         | YES  |     | NULL    |       |
| birthtime | time         | YES  |     | NULL    |       |
| birthdt   | datetime     | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
*/

insert into people (name, birthdate, birthtime, birthdt) values
    ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'),
    ('Larry', '1943-12-25', '04:10:42','1943-12-25 04:10:42');
    
/*
+-------+------------+-----------+---------------------+
| name  | birthdate  | birthtime | birthdt             |
+-------+------------+-----------+---------------------+
| Padma | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
| Larry | 1943-12-25 | 04:10:42  | 1943-12-25 04:10:42 |
+-------+------------+-----------+---------------------+
*/

