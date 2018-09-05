
/* Q1 query that gives below result

+--------+
| cat_id |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
+--------+

*/


select cat_id from Cats;

/* Q2 query that gives below result

+----------------+------------+
| name           | breed      |
+----------------+------------+
| Ringo          | Tabby      |
| Cindy          | Maine Coon |
| Dumbledore     | Maine Coon |
| Egg            | Persian    |
| Misty          | Tabby      |
| George Michael | Ragdoll    |
| Jackson        | Sphynx     |
+----------------+------------+

*/


select name, breed  from Cats;

/* Q3 query that gives below result (Only Tabby Cats)

+-------+------+
| name  | age  |
+-------+------+
| Ringo |    4 |
| Misty |   13 |
+-------+------+

*/

select name , age from Cats where breed = 'Tabby';

/* Q4  query that gives below result (cat_id is same as age)

+--------+------+
| cat_id | age  |
+--------+------+
|      4 |    4 |
|      7 |    7 |
+--------+------+

*/


select cat_id , age from Cats where cat_id = age;

select * from Cats where cat_id = age;

/*

+--------+---------+---------+------+
| cat_id | name    | breed   | age  |
+--------+---------+---------+------+
|      4 | Egg     | Persian |    4 |
|      7 | Jackson | Sphynx  |    7 |
+--------+---------+---------+------+

*/