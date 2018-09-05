select count(*) as 'Number of Books' from books;

/*

+-----------------+
| Number of Books |
+-----------------+
|              19 |
+-----------------+

*/

select count(distinct author_fname) as 'Number of Authors' from books;

/*

+-------------------+
| Number of Authors |
+-------------------+
|                12 |
+-------------------+

*/

select count(distinct concat(author_fname,' ',author_lname)) as 'Unique Authors' from books; --or

-- select count(distinct author_fname,author_lname) as 'Unique Authors' from books;


/*

+----------------+
| Unique Authors |
+----------------+
|             12 |
+----------------+
*/

select count(*) as 'Title Names with "The"' from books where title like '%the%'; -- or

-- select count(title) as 'Title Names with "The"' from books where title like '%the%';

/*

+------------------------+
| Title Names with "The" |
+------------------------+
|                      6 |
+------------------------+
*/