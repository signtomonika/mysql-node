 /*************  SELECT , WHERE AND ALIASES *************/
 
 select * from Cats;
 
 /*
 
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+

*/

select name from Cats;

/*
+----------------+
| name           |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jackson        |
+----------------+

*/

select name, age from Cats;

/*
+----------------+------+
| name           | age  |
+----------------+------+
| Ringo          |    4 |
| Cindy          |   10 |
| Dumbledore     |   11 |
| Egg            |    4 |
| Misty          |   13 |
| George Michael |    9 |
| Jackson        |    7 |
+----------------+------+
*/


SELECT * FROM Cats WHERE age=4;

/*

+--------+-------+---------+------+
| cat_id | name  | breed   | age  |
+--------+-------+---------+------+
|      1 | Ringo | Tabby   |    4 |
|      4 | Egg   | Persian |    4 |
+--------+-------+---------+------+

*/

SELECT * FROM Cats WHERE name='Egg'; /* OR */ SELECT * FROM cats WHERE name='egG';

/*

+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+

*/

select cat_id as ID, name as 'Cat Name' from Cats;

/*

+----+----------------+
| ID | Cat Name       |
+----+----------------+
|  1 | Ringo          |
|  2 | Cindy          |
|  3 | Dumbledore     |
|  4 | Egg            |
|  5 | Misty          |
|  6 | George Michael |
|  7 | Jackson        |
+----+----------------+

*/