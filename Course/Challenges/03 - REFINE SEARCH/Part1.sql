/* Q1 Titles  That contain 'stories' */

select title from books where title like '%stories%';

/* result

+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+
*/

--------------------------------------------------------------------------------

/* Q2 Find The Longest Book - Print Out the Title and Page Count */

select title, pages from books order by pages desc limit 1;

/* result

+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+

*/

--------------------------------------------------------------------------------

/* Q3 Print a summary containing the title and year, for the 3 most recent books */

select concat(title,' - ', released_year) as summary from books 
    order by released_year desc 
    limit 3;

/* result

+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+

*/

--------------------------------------------------------------------------------

/* Q4 Find all books with an author_lname that contains a space(" ") */

select title, author_lname from books where author_lname like '% %';

/* result

+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+

*/