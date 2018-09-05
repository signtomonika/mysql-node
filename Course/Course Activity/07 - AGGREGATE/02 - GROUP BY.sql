select  author_fname, author_lname, count(*) from books group by author_fname, author_lname order by count(*) desc;

/*

+--------------+----------------+----------+
| author_fname | author_lname   | count(*) |
+--------------+----------------+----------+
| Dave         | Eggers         |        3 |
| Neil         | Gaiman         |        3 |
| Jhumpa       | Lahiri         |        2 |
| David        | Foster Wallace |        2 |
| Raymond      | Carver         |        2 |
| Freida       | Harris         |        1 |
| Dan          | Harris         |        1 |
| John         | Steinbeck      |        1 |
| Don          | DeLillo        |        1 |
| Patti        | Smith          |        1 |
| Michael      | Chabon         |        1 |
| George       | Saunders       |        1 |
+--------------+----------------+----------+
*/

select released_year, count(*) as 'Books count' from books group by released_year order by released_year desc;

/*

+---------------+-------------+
| released_year | Books count |
+---------------+-------------+
|          2017 |           1 |
|          2016 |           1 |
|          2014 |           1 |
|          2013 |           1 |
|          2012 |           1 |
|          2010 |           1 |
|          2005 |           1 |
|          2004 |           1 |
|          2003 |           2 |
|          2001 |           3 |
|          2000 |           1 |
|          1996 |           1 |
|          1989 |           1 |
|          1985 |           1 |
|          1981 |           1 |
|          1945 |           1 |
+---------------+-------------+

*/

select concat_ws(' ','In',released_year, count(*),'book(s) released') as 'Summary' from books group by released_year;

/*

+----------------------------+
| Summary                    |
+----------------------------+
| In 1945 1 book(s) released |
| In 1981 1 book(s) released |
| In 1985 1 book(s) released |
| In 1989 1 book(s) released |
| In 1996 1 book(s) released |
| In 2000 1 book(s) released |
| In 2001 3 book(s) released |
| In 2003 2 book(s) released |
| In 2004 1 book(s) released |
| In 2005 1 book(s) released |
| In 2010 1 book(s) released |
| In 2012 1 book(s) released |
| In 2013 1 book(s) released |
| In 2014 1 book(s) released |
| In 2016 1 book(s) released |
| In 2017 1 book(s) released |
+----------------------------+
*/

