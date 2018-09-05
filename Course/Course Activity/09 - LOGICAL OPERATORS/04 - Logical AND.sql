select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' && released_year > 2010; --or

select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' AND released_year > 2010; -- this works too!

/*
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
*/

select * from books where concat(author_fname,' ',author_lname) = 'Dave Eggers' AND released_year > 2010 AND title like '%novel%';

/*

+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
*/


select 1>5 && 7=9 ;  -- false && false = false

/*
+------------+
| 1>5 && 7=9 |
+------------+
|          0 |
+------------+
*/

select 1<5 && 7=9 ;  -- true && false = false

/*
+------------+
| 1<5 && 7=9 |
+------------+
|          0 |
+------------+
*/
