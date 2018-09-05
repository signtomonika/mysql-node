/********************* SUBSTRING OR SUBSTR **************************/

-- SYNTAX => SUBSTRING(<String> , start position, number of characters)

select substring('Hello World', 1,5);

/* Result

+-------------------------------+
| substring('Hello World', 1,5) |
+-------------------------------+
| Hello                         |
+-------------------------------+

*/

select substring('Hello World', 7); 

-- 7 is taken as start position and if no num of characters given, prints till end of string

/* Result

+-----------------------------+
| substring('Hello World', 7) |
+-----------------------------+
| World                       |
+-----------------------------+

*/

select substring('Hello World', -3); -- starts from right

/* Result

+------------------------------+
| substring('Hello World', -3) |
+------------------------------+
| rld                          |
+------------------------------+

*/

select title as 'Book Titles' from books;

/* Result

+-----------------------------------------------------+
| Book Titles                                         |
+-----------------------------------------------------+
| The Namesake                                        |
| Norse Mythology                                     |
| American Gods                                       |
| Interpreter of Maladies                             |
| A Hologram for the King: A Novel                    |
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
+-----------------------------------------------------+

*/

select substr("Where I'm Calling From: Selected Stories",1,10); -- use double quotes if string has single quote in it

/* Result

+---------------------------------------------------------+
| substr("Where I'm Calling From: Selected Stories",1,10) |
+---------------------------------------------------------+
| Where I'm                                               |
+---------------------------------------------------------+

*/


select substring(title,1,10) as 'Book Titles Substring' from books;

/* Result

+-----------------------+
| Book Titles Substring |
+-----------------------+
| The Namesa            |
| Norse Myth            |
| American G            |
| Interprete            |
| A Hologram            |
| The Circle            |
| The Amazin            |
| Just Kids             |
| A Heartbre            |
| Coraline              |
| What We Ta            |
| Where I'm             |
| White Nois            |
| Cannery Ro            |
| Oblivion:             |
| Consider t            |
+-----------------------+
*/

select concat(substring(title,1,10),'...') as 'Book Titles Concat Substr' from books;

/* Result

+---------------------------+
| Book Titles Concat Substr |
+---------------------------+
| The Namesa...             |
| Norse Myth...             |
| American G...             |
| Interprete...             |
| A Hologram...             |
| The Circle...             |
| The Amazin...             |
| Just Kids...              |
| A Heartbre...             |
| Coraline...               |
| What We Ta...             |
| Where I'm ...             |
| White Nois...             |
| Cannery Ro...             |
| Oblivion: ...             |
| Consider t...             |
+---------------------------+

*/