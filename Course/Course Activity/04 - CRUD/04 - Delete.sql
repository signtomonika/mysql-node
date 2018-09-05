
/* BASELINE */

select * from Cats;

/*

+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | Shorthair         |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+

*/

/* Before Delete */

SELECT * FROM Cats WHERE name='egg';

/*

+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+

*/


DELETE FROM Cats WHERE name='egg';

/* After Delete */

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