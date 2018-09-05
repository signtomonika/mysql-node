select title, author_fname from books where author_fname like '%da%'; --case insensitive

/* result

+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
| fake_book                                 | Freida       |
+-------------------------------------------+--------------+

*/

select title, author_fname from books where author_fname like 'da%';

/* result

+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
+-------------------------------------------+--------------+

*/

select title from books where title like '%the%';

/* result

+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Consider the Lobster                      |
| Lincoln In The Bardo                      |
+-------------------------------------------+

*/

-- Use escape character (\) to search for "%" or "_" in the field value

select title from books where title like '%\%%'; 

/* result
+-------------+
| title       |
+-------------+
| 10% Happier |
+-------------+
*/

select title from books where title like '%\_%';

/* result
+-----------+
| title     |
+-----------+
| fake_book |
+-----------+
*/