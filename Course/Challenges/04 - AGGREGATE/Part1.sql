/* Q1 - Print the number of books in the database */

select count(*) as 'Result' from books;

/*
+--------+
| Result |
+--------+
|     19 |
+--------+
*/
--------------------------------------------------------------------------------

/* Q2 Print out how many books were released in each year */

select released_year, count(*) as 'Result' from books group by released_year;

/*
+---------------+--------+
| released_year | Result |
+---------------+--------+
|          1945 |      1 |
|          1981 |      1 |
|          1985 |      1 |
|          1989 |      1 |
|          1996 |      1 |
|          2000 |      1 |
|          2001 |      3 |
|          2003 |      2 |
|          2004 |      1 |
|          2005 |      1 |
|          2010 |      1 |
|          2012 |      1 |
|          2013 |      1 |
|          2014 |      1 |
|          2016 |      1 |
|          2017 |      1 |
+---------------+--------+
*/
--------------------------------------------------------------------------------

/* Q3 Print out the total number of books in stock */

select sum(stock_quantity) as 'Result' from books;

/*
+--------+
| Result |
+--------+
|   2450 |
+--------+
*/

--------------------------------------------------------------------------------

/* Q4 Find the average released_year for each author */

select concat(author_fname, ' ' , author_lname) as Author, avg(released_year) as Result
from books
group by author_fname, author_lname;

/*
+----------------------+-----------+
| Author               | Result    |
+----------------------+-----------+
| Dan Harris           | 2014.0000 |
| Dave Eggers          | 2008.6667 |
| David Foster Wallace | 2004.5000 |
| Don DeLillo          | 1985.0000 |
| Freida Harris        | 2001.0000 |
| George Saunders      | 2017.0000 |
| Jhumpa Lahiri        | 1999.5000 |
| John Steinbeck       | 1945.0000 |
| Michael Chabon       | 2000.0000 |
| Neil Gaiman          | 2006.6667 |
| Patti Smith          | 2010.0000 |
| Raymond Carver       | 1985.0000 |
+----------------------+-----------+
*/
