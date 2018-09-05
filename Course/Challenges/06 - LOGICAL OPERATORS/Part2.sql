/* Q2 Select All Books Written Before 1980 (non inclusive) */

select title, released_year from books where released_year < 1980 order by released_year;

/*
+-------------+---------------+
| title       | released_year |
+-------------+---------------+
| Cannery Row |          1945 |
+-------------+---------------+
*/

--------------------------------------------------------------------------------

/*Q3 Select All Books Written By Eggers Or Chabon */

select * from books where author_lname in ('Eggers', 'Chabon');

/*
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers       |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon       |          2000 |             68 |   634 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers       |          2001 |            104 |   437 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

--------------------------------------------------------------------------------

/* Q4 Select All Books Written By Lahiri, Published after 2000 */

select * from books where author_lname = 'Lahiri' and released_year > 2000;

/*
+---------+--------------+--------------+--------------+---------------+----------------+-------+
| book_id | title        | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+--------------+--------------+--------------+---------------+----------------+-------+
|       1 | The Namesake | Jhumpa       | Lahiri       |          2003 |             32 |   291 |
+---------+--------------+--------------+--------------+---------------+----------------+-------+
*/

--------------------------------------------------------------------------------

