select min(released_year) as 'Minimum Released Year' from books;

/*
+-----------------------+
| Minimum Released Year |
+-----------------------+
|                  1945 |
+-----------------------+
*/


select max(pages) as 'Longest Book' from books;

/*
+--------------+
| Longest Book |
+--------------+
|          634 |
+--------------+
*/

select title as 'Longest Book', max(pages) as Pages from books group by title order by max(pages) desc LIMIT 1;

-- OR SUBQUERY

select title as 'Longest Book', pages from books where pages = (select max(pages) from books);

-- OR WITHOUT MAX()

select title, pages from books order by pages desc LIMIT 1;

/*

+-------------------------------------------+-------+
| Longest Book                              | Pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+

*/

select author_fname, author_lname , min(released_year) as 'First Book Release' from books group by 1,2;

/*

+--------------+----------------+--------------------+
| author_fname | author_lname   | First Book Release |
+--------------+----------------+--------------------+
| Dan          | Harris         |               2014 |
| Dave         | Eggers         |               2001 |
| David        | Foster Wallace |               2004 |
| Don          | DeLillo        |               1985 |
| Freida       | Harris         |               2001 |
| George       | Saunders       |               2017 |
| Jhumpa       | Lahiri         |               1996 |
| John         | Steinbeck      |               1945 |
| Michael      | Chabon         |               2000 |
| Neil         | Gaiman         |               2001 |
| Patti        | Smith          |               2010 |
| Raymond      | Carver         |               1981 |
+--------------+----------------+--------------------+
*/
