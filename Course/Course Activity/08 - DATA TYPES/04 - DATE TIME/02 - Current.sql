select curdate();

/*
+------------+
| curdate()  |
+------------+
| 2018-08-29 |
+------------+
*/

select curtime();

/*
+-----------+
| curtime() |
+-----------+
| 11:53:21  |
+-----------+
*/

select now();

/*

+---------------------+
| now()               |
+---------------------+
| 2018-08-29 11:53:42 |
+---------------------+

*/

insert into people (name, birthdate, birthtime, birthdt) values
    ('Toaster', curdate(), curtime(), now());

/*
+---------+------------+-----------+---------------------+
| name    | birthdate  | birthtime | birthdt             |
+---------+------------+-----------+---------------------+
| Padma   | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
| Larry   | 1943-12-25 | 04:10:42  | 1943-12-25 04:10:42 |
| Toaster | 2018-08-29 | 11:55:00  | 2018-08-29 11:55:00 |
+---------+------------+-----------+---------------------+
*/