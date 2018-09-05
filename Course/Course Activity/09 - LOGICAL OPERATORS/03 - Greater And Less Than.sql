select title, released_year from books where released_year > 2000 order by released_year;

/*
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| American Gods                             |          2001 |
| Coraline                                  |          2003 |
| The Namesake                              |          2003 |
| Oblivion: Stories                         |          2004 |
| Consider the Lobster                      |          2005 |
| Just Kids                                 |          2010 |
| A Hologram for the King: A Novel          |          2012 |
| The Circle                                |          2013 |
| 10% Happier                               |          2014 |
| Norse Mythology                           |          2016 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+
*/

select 99 > 1;

/*

+--------+
| 99 > 1 |
+--------+
|      1 |  -- equal to boolean true in mysql
+--------+

*/

select 'a' > 'b'; -- results might differ between languages

/*
+-----------+
| 'a' > 'b' |
+-----------+
|         0 |
+-----------+
*/

select 'A' > 'a';

/*
+-----------+
| 'A' > 'a' |
+-----------+
|         0 |
+-----------+
*/

select 'A' = 'a';

/*
+-----------+
| 'A' = 'a' |
+-----------+
|         1 | -- because string in mysql is case insensitive
+-----------+
*/


select title, stock_quantity from books where stock_quantity < 50 order by stock_quantity;

/*
+-----------------------------------------------------+----------------+
| title                                               | stock_quantity |
+-----------------------------------------------------+----------------+
| American Gods                                       |             12 |
| Where I'm Calling From: Selected Stories            |             12 |
| What We Talk About When We Talk About Love: Stories |             23 |
| The Circle                                          |             26 |
| 10% Happier                                         |             29 |
| The Namesake                                        |             32 |
| Norse Mythology                                     |             43 |
| White Noise                                         |             49 |
+-----------------------------------------------------+----------------+
*/