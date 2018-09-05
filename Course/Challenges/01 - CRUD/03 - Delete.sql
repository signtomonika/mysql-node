/*** BASELINE ***/

SELECT * FROM Cats;

/*

+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | Shorthair         |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+

*/

/* Q1 - DELETE all 4 year old cats */

select * from Cats where age = 4;

/*

+--------+-------+-------------------+------+
| cat_id | name  | breed             | age  |
+--------+-------+-------------------+------+
|      1 | Ringo | British Shorthair |    4 |
+--------+-------+-------------------+------+

*/

DELETE from Cats where age = 4;

/*

+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Shorthair  |   14 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jack           | Sphynx     |    7 |
+--------+----------------+------------+------+

*/


/* Q2 - DELETE all cats whose age = cat_id */

select * from Cats where age = cat_id;

/*

+--------+------+--------+------+
| cat_id | name | breed  | age  |
+--------+------+--------+------+
|      7 | Jack | Sphynx |    7 |
+--------+------+--------+------+

*/

DELETE from Cats where age = cat_id;

/*

+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Shorthair  |   14 |
|      6 | George Michael | Ragdoll    |    9 |
+--------+----------------+------------+------+

*/

/* Q3 - DELETE all cats */

DELETE from Cats;

/*

Empty set (0.00 sec)

*/