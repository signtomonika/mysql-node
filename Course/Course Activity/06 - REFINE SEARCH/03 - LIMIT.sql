select title from books order by title limit 3;

/* result

| title                                     |
+-------------------------------------------+
| 10% Happier                               |
| A Heartbreaking Work of Staggering Genius |
| A Hologram for the King: A Novel          |
+-------------------------------------------+

*/

select title, released_year from books order by released_year desc limit 5; 

-- or select title, released_year from books order by released_year desc limit 0,5;

/* result

+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| Lincoln In The Bardo             |          2017 |
| Norse Mythology                  |          2016 |
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
+----------------------------------+---------------+
*/

select title, released_year from books order by released_year desc limit 2,5; -- from 2nd row and 5 rows

/* result

+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
| Just Kids                        |          2010 |
| Consider the Lobster             |          2005 |
+----------------------------------+---------------+

*/

select title from books limit 5, 123284397498579809; -- some gigantic number to retrieve till last row

/* result

+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Just Kids                                           |
| A Heartbreaking Work of Staggering Genius           |
| Coraline                                            |
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+

*/



