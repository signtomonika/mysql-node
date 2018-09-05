select name, birthdate, day(birthdate), dayname(birthdate) from people; -- or

select name, birthdate, day(birthdt), dayname(birthdt) from people;

/*
+---------+------------+----------------+--------------------+
| name    | birthdate  | day(birthdate) | dayname(birthdate) |
+---------+------------+----------------+--------------------+
| Padma   | 1983-11-11 |             11 | Friday             |
| Larry   | 1943-12-25 |             25 | Saturday           |
| Toaster | 2018-08-29 |             29 | Wednesday          |
+---------+------------+----------------+--------------------+
*/

select name, birthdate, dayofweek(birthdate), dayofyear(birthdate) from people; --or

select name, birthdate, dayofweek(birthdt), dayofyear(birthdt) from people;

/*
+---------+------------+----------------------+----------------------+
| name    | birthdate  | dayofweek(birthdate) | dayofyear(birthdate) |
+---------+------------+----------------------+----------------------+
| Padma   | 1983-11-11 |                    6 |                  315 |
| Larry   | 1943-12-25 |                    7 |                  359 |
| Toaster | 2018-08-29 |                    4 |                  241 |
+---------+------------+----------------------+----------------------+
*/

select name, month(birthdate), monthname(birthdate), year(birthdate) from people; -- or

select name, month(birthdt), monthname(birthdt), year(birthdt) from people; 

/*
+---------+----------------+--------------------+---------------+
| name    | month(birthdt) | monthname(birthdt) | year(birthdt) |
+---------+----------------+--------------------+---------------+
| Padma   |             11 | November           |          1983 |
| Larry   |             12 | December           |          1943 |
| Toaster |              8 | August             |          2018 |
+---------+----------------+--------------------+---------------+
*/

select name, birthtime, hour(birthtime), minute(birthtime), second(birthtime) from people; -- or

select name, birthdt, hour(birthdt), minute(birthdt), second(birthdt) from people;

/*
+---------+---------------------+---------------+-----------------+-----------------+
| name    | birthdt             | hour(birthdt) | minute(birthdt) | second(birthdt) |
+---------+---------------------+---------------+-----------------+-----------------+
| Padma   | 1983-11-11 10:07:35 |            10 |               7 |              35 |
| Larry   | 1943-12-25 04:10:42 |             4 |              10 |              42 |
| Toaster | 2018-08-29 11:55:00 |            11 |              55 |               0 |
+---------+---------------------+---------------+-----------------+-----------------+
*/

select name, birthdate, date_format(birthdate, '%D %W %M %Y') from people;

/*
+---------+------------+---------------------------------------+
| name    | birthdate  | date_format(birthdate, '%D %W %M %Y') |
+---------+------------+---------------------------------------+
| Padma   | 1983-11-11 | 11th Friday November 1983             |
| Larry   | 1943-12-25 | 25th Saturday December 1943           |
| Toaster | 2018-08-29 | 29th Wednesday August 2018            |
+---------+------------+---------------------------------------+
*/

select name, birthdate, date_format(birthdate, '%D %W, %M %Y') from people; 

/*
+---------+------------+----------------------------------------+
| name    | birthdate  | date_format(birthdate, '%D %W, %M %Y') |
+---------+------------+----------------------------------------+
| Padma   | 1983-11-11 | 11th Friday, November 1983             |
| Larry   | 1943-12-25 | 25th Saturday, December 1943           |
| Toaster | 2018-08-29 | 29th Wednesday, August 2018            |
+---------+------------+----------------------------------------+
*/

select name, birthdate, date_format(birthdate, '%m/%d/%Y') as 'Date in US Format' from people; 

/*
+---------+------------+-------------------+
| name    | birthdate  | Date in US Format |
+---------+------------+-------------------+
| Padma   | 1983-11-11 | 11/11/1983        |
| Larry   | 1943-12-25 | 12/25/1943        |
| Toaster | 2018-08-29 | 08/29/2018        |
+---------+------------+-------------------+
*/

select name, birthdate, date_format(birthdt, '%m/%d/%Y at %h:%i') from people; 

/*
+---------+------------+-------------------------------------------+
| name    | birthdate  | date_format(birthdt, '%m/%d/%Y at %h:%i') |
+---------+------------+-------------------------------------------+
| Padma   | 1983-11-11 | 11/11/1983 at 10:07                       |
| Larry   | 1943-12-25 | 12/25/1943 at 04:10                       |
| Toaster | 2018-08-29 | 08/29/2018 at 11:55                       |
+---------+------------+-------------------------------------------+
*/