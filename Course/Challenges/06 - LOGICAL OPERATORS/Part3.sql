/*Q5 Select All books with page counts between 100 and 200 */

select * from books where pages between 100 and 200;

/*
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri       |          1996 |             97 |   198 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver       |          1981 |             23 |   176 |
|      14 | Cannery Row                                         | John         | Steinbeck    |          1945 |             95 |   181 |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

--------------------------------------------------------------------------------

/* Q6 Select all books where author_lname  starts with a 'C' or an 'S' */

select * from books where author_lname like 'C%' or author_lname like 'S%'; -- or

SELECT title, author_lname FROM books WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

/*
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon       |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith        |          2010 |             55 |   304 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver       |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver       |          1989 |             12 |   526 |
|      14 | Cannery Row                                         | John         | Steinbeck    |          1945 |             95 |   181 |
|      19 | Lincoln In The Bardo                                | George       | Saunders     |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
*/

--------------------------------------------------------------------------------


    
