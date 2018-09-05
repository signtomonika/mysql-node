select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' || released_year > 2010; --or

select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' OR released_year > 2010; -- this works too!

/*
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       2 | Norse Mythology                           | Neil         | Gaiman       |          2016 |             43 |   304 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers       |          2013 |             26 |   504 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers       |          2001 |            104 |   437 |
|      17 | 10% Happier                               | Dan          | Harris       |          2014 |             29 |   256 |
|      19 | Lincoln In The Bardo                      | George       | Saunders     |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' OR released_year > 2010 OR title like '%the%';

/*
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                              | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                           | Neil         | Gaiman         |          2016 |             43 |   304 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon         |          2000 |             68 |   634 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |          2001 |            104 |   437 |
|      16 | Consider the Lobster                      | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                               | Dan          | Harris         |          2014 |             29 |   256 |
|      19 | Lincoln In The Bardo                      | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
*/


select 1>5 || 7=9 ;  -- false || false = false

/*
+------------+
| 1>5 || 7=9 |
+------------+
|          0 |
+------------+
*/

select 1<5 || 7=9 ;  -- true || false = true

/*
+------------+
| 1<5 || 7=9 |
+------------+
|          1 |
+------------+
*/
