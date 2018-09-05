select sum(pages) as 'Total Pages' from books;

/*
+-------------+
| Total Pages |
+-------------+
|        6623 |
+-------------+
*/

select concat(author_fname, ' ', author_lname) as Author, sum(pages) as 'Total Pages' 
from books
group by  author_fname, author_lname
order by sum(pages) desc;

/*
+----------------------+-------------+
| Author               | Total Pages |
+----------------------+-------------+
| Dave Eggers          |        1293 |
| Neil Gaiman          |         977 |
| Raymond Carver       |         702 |
| David Foster Wallace |         672 |
| Michael Chabon       |         634 |
| Jhumpa Lahiri        |         489 |
| Freida Harris        |         428 |
| George Saunders      |         367 |
| Don DeLillo          |         320 |
| Patti Smith          |         304 |
| Dan Harris           |         256 |
| John Steinbeck       |         181 |
+----------------------+-------------+
*/