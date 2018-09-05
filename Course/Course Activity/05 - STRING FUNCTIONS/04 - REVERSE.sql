/**************** REVERSE ************************/

-- SYNTAX => REVERSE(<String>)

select reverse('Hello World');

/* Result

+------------------------+
| reverse('Hello World') |
+------------------------+
| dlroW olleH            |
+------------------------+
*/

select reverse(author_fname) from books;

/* Result

+-----------------------+
| reverse(author_fname) |
+-----------------------+
| apmuhJ                |
| lieN                  |
| lieN                  |
| apmuhJ                |
| evaD                  |
| evaD                  |
| leahciM               |
| ittaP                 |
| evaD                  |
| lieN                  |
| dnomyaR               |
| dnomyaR               |
| noD                   |
| nhoJ                  |
| divaD                 |
| divaD                 |
+-----------------------+

*/