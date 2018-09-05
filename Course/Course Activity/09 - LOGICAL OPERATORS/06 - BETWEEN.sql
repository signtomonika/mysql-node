select * from books where released_year >= 2004 AND released_year <= 2015; -- or

select * from books where released_year BETWEEN 2004 AND 2015;

/*

+---------+----------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+----------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers         |          2013 |             26 |   504 |
|       8 | Just Kids                        | Patti        | Smith          |          2010 |             55 |   304 |
|      15 | Oblivion: Stories                | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster             | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                      | Dan          | Harris         |          2014 |             29 |   256 |
+---------+----------------------------------+--------------+----------------+---------------+----------------+-------+

*/

select * from books where released_year NOT BETWEEN 2004 AND 2015 order by released_year;

/*
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
|      14 | Cannery Row                                         | John         | Steinbeck    |          1945 |             95 |   181 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver       |          1981 |             23 |   176 |
|      13 | White Noise                                         | Don          | DeLillo      |          1985 |             49 |   320 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver       |          1989 |             12 |   526 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri       |          1996 |             97 |   198 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon       |          2000 |             68 |   634 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers       |          2001 |            104 |   437 |
|       3 | American Gods                                       | Neil         | Gaiman       |          2001 |             12 |   465 |
|      18 | fake_book                                           | Freida       | Harris       |          2001 |            287 |   428 |
|       1 | The Namesake                                        | Jhumpa       | Lahiri       |          2003 |             32 |   291 |
|      10 | Coraline                                            | Neil         | Gaiman       |          2003 |            100 |   208 |
|       2 | Norse Mythology                                     | Neil         | Gaiman       |          2016 |             43 |   304 |
|      19 | Lincoln In The Bardo                                | George       | Saunders     |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

/* use CAST to compare the dates - make sure to compare values of same datatype. */

use testing_db;

select * from people where birthdt between cast('1980-01-01' as DATETIME) and cast('2000-01-01' as DATETIME);

/*
+-------+------------+-----------+---------------------+
| name  | birthdate  | birthtime | birthdt             |
+-------+------------+-----------+---------------------+
| Padma | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
+-------+------------+-----------+---------------------+
*/
