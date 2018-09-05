select * from books where author_lname in ('Carver', 'Lahiri', 'Smith');

/*
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri       |          2003 |             32 |   291 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri       |          1996 |             97 |   198 |
|       8 | Just Kids                                           | Patti        | Smith        |          2010 |             55 |   304 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver       |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver       |          1989 |             12 |   526 |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

select * from books where author_lname not in ('Carver', 'Lahiri', 'Smith');

/*
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       2 | Norse Mythology                           | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                             | Neil         | Gaiman         |          2001 |             12 |   465 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon         |          2000 |             68 |   634 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                  | Neil         | Gaiman         |          2003 |            100 |   208 |
|      13 | White Noise                               | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                               | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                         | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                      | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                               | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                 | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                      | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
*/

select * from books where released_year not in (1996,2000,2002,2004,2006,2008,2010,2012,2014,2016); -- forget it , LOL!

select * from books where released_year % 2 !=0; -- this is how I will do it.

/*
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
*/