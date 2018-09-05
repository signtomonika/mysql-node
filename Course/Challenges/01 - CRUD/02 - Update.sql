/* Before Update */

select * from Cats;

/*

+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | RINGO          | SHORTHAIR  |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | MISTY          | SHORTHAIR  |   14 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+

*/

/* Q1 - Change Jackson's name to Jack */

update Cats

set name = 'Jack'

where name = 'Jackson';

/* Result 

+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Shorthair  |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Shorthair  |   14 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | JACK           | SPHYNX     |    7 |
+--------+----------------+------------+------+

*/

/* Q2 - Change Ringo's breed to 'British Shorthair' */

update Cats

set breed = 'British Shorthair'

where name = 'Ringo';


/* Result

+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | RINGO          | BRITISH SHORTHAIR |    4 |
|      2 | Cindy          | Maine Coon        |   10 |
|      3 | Dumbledore     | Maine Coon        |   11 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | Shorthair         |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+

*/

/* Q3 - Update Both Maine Coon's age to be 12 */

update Cats

set age = 12

where breed = 'Maine Coon';

/* Result

+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | CINDY          | MAINE COON        |   12 |
|      3 | DUMBLEDORE     | MAINE COON        |   12 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | Shorthair         |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+

*/