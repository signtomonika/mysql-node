select title , released_year from books where released_year != 2017; --or

select title , released_year from books where released_year <> 2017; --This works too!!

/*
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| Norse Mythology                                     |          2016 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| A Hologram for the King: A Novel                    |          2012 |
| The Circle                                          |          2013 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| Just Kids                                           |          2010 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Oblivion: Stories                                   |          2004 |
| Consider the Lobster                                |          2005 |
| 10% Happier                                         |          2014 |
| fake_book                                           |          2001 |
+-----------------------------------------------------+---------------+
*/