/************** CHAR_LENGTH **************/

-- SYNTAX => CHAR_LENGTH(<String>)

select char_length('Hello World');

/* Result

+----------------------------+
| char_length('Hello World') |
+----------------------------+
|                         11 |
+----------------------------+

*/

select author_lname, char_length(author_lname) as 'Last Name Characters' from books;

/* Result

+----------------+----------------------+
| author_lname   | Last Name Characters |
+----------------+----------------------+
| Lahiri         |                    6 |
| Gaiman         |                    6 |
| Gaiman         |                    6 |
| Lahiri         |                    6 |
| Eggers         |                    6 |
| Eggers         |                    6 |
| Chabon         |                    6 |
| Smith          |                    5 |
| Eggers         |                    6 |
| Gaiman         |                    6 |
| Carver         |                    6 |
| Carver         |                    6 |
| DeLillo        |                    7 |
| Steinbeck      |                    9 |
| Foster Wallace |                   14 |
| Foster Wallace |                   14 |
+----------------+----------------------+

*/

select concat_ws(' ',author_lname, 'is', char_length(author_lname), 'characters long') as 'Statement' from books;

/* Result

+--------------------------------------+
| Statement                            |
+--------------------------------------+
| Lahiri is 6 characters long          |
| Gaiman is 6 characters long          |
| Gaiman is 6 characters long          |
| Lahiri is 6 characters long          |
| Eggers is 6 characters long          |
| Eggers is 6 characters long          |
| Chabon is 6 characters long          |
| Smith is 5 characters long           |
| Eggers is 6 characters long          |
| Gaiman is 6 characters long          |
| Carver is 6 characters long          |
| Carver is 6 characters long          |
| DeLillo is 7 characters long         |
| Steinbeck is 9 characters long       |
| Foster Wallace is 14 characters long |
| Foster Wallace is 14 characters long |
+--------------------------------------+

*/