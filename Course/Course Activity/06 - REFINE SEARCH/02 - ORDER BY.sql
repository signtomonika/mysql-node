select author_lname from books order by author_lname; -- default ascending

/* result

+----------------+
| author_lname   |
+----------------+
| Carver         |
| Carver         |
| Chabon         |
| DeLillo        |
| Eggers         |
| Eggers         |
| Eggers         |
| Foster Wallace |
| Foster Wallace |
| Gaiman         |
| Gaiman         |
| Gaiman         |
| Harris         |
| Harris         |
| Lahiri         |
| Lahiri         |
| Saunders       |
| Smith          |
| Steinbeck      |
+----------------+
*/

select title from books order by title desc;

/* result

+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| White Noise                                         |
| Where I'm Calling From: Selected Stories            |
| What We Talk About When We Talk About Love: Stories |
| The Namesake                                        |
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Oblivion: Stories                                   |
| Norse Mythology                                     |
| Lincoln In The Bardo                                |
| Just Kids                                           |
| Interpreter of Maladies                             |
| fake_book                                           |
| Coraline                                            |
| Consider the Lobster                                |
| Cannery Row                                         |
| American Gods                                       |
| A Hologram for the King: A Novel                    |
| A Heartbreaking Work of Staggering Genius           |
| 10% Happier                                         |
+-----------------------------------------------------+

*/

select title, released_year, pages from books order by released_year;

/* result

+-----------------------------------------------------+---------------+-------+
| title                                               | released_year | pages |
+-----------------------------------------------------+---------------+-------+
| Cannery Row                                         |          1945 |   181 |
| What We Talk About When We Talk About Love: Stories |          1981 |   176 |
| White Noise                                         |          1985 |   320 |
| Where I'm Calling From: Selected Stories            |          1989 |   526 |
| Interpreter of Maladies                             |          1996 |   198 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |   634 |
| American Gods                                       |          2001 |   465 |
| fake_book                                           |          2001 |   428 |
| A Heartbreaking Work of Staggering Genius           |          2001 |   437 |
| The Namesake                                        |          2003 |   291 |
| Coraline                                            |          2003 |   208 |
| Oblivion: Stories                                   |          2004 |   329 |
| Consider the Lobster                                |          2005 |   343 |
| Just Kids                                           |          2010 |   304 |
| A Hologram for the King: A Novel                    |          2012 |   352 |
| The Circle                                          |          2013 |   504 |
| 10% Happier                                         |          2014 |   256 |
| Norse Mythology                                     |          2016 |   304 |
| Lincoln In The Bardo                                |          2017 |   367 |
+-----------------------------------------------------+---------------+-------+

*/

select title, author_fname, author_lname from books order by 2; -- shortcut to order by 2nd selected item i.e., author_fname

/* result

+-----------------------------------------------------+--------------+----------------+
| title                                               | author_fname | author_lname   |
+-----------------------------------------------------+--------------+----------------+
| 10% Happier                                         | Dan          | Harris         |
| A Hologram for the King: A Novel                    | Dave         | Eggers         |
| The Circle                                          | Dave         | Eggers         |
| A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |
| Consider the Lobster                                | David        | Foster Wallace |
| Oblivion: Stories                                   | David        | Foster Wallace |
| White Noise                                         | Don          | DeLillo        |
| fake_book                                           | Freida       | Harris         |
| Lincoln In The Bardo                                | George       | Saunders       |
| The Namesake                                        | Jhumpa       | Lahiri         |
| Interpreter of Maladies                             | Jhumpa       | Lahiri         |
| Cannery Row                                         | John         | Steinbeck      |
| The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |
| American Gods                                       | Neil         | Gaiman         |
| Norse Mythology                                     | Neil         | Gaiman         |
| Coraline                                            | Neil         | Gaiman         |
| Just Kids                                           | Patti        | Smith          |
| What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |
| Where I'm Calling From: Selected Stories            | Raymond      | Carver         |
+-----------------------------------------------------+--------------+----------------+

*/

select author_fname, author_lname from books order by author_lname, author_fname;

/* result

+--------------+----------------+
| author_fname | author_lname   |
+--------------+----------------+
| Raymond      | Carver         |
| Raymond      | Carver         |
| Michael      | Chabon         |
| Don          | DeLillo        |
| Dave         | Eggers         |
| Dave         | Eggers         |
| Dave         | Eggers         |
| David        | Foster Wallace |
| David        | Foster Wallace |
| Neil         | Gaiman         |
| Neil         | Gaiman         |
| Neil         | Gaiman         |
| Dan          | Harris         |
| Freida       | Harris         |
| Jhumpa       | Lahiri         |
| Jhumpa       | Lahiri         |
| George       | Saunders       |
| Patti        | Smith          |
| John         | Steinbeck      |
+--------------+----------------+

*/