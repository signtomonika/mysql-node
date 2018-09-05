/* Q8 Print like below

+---------------+-------------+--------------+
| short title   | author      | quantity     |
+---------------+-------------+--------------+
| American G... | Gaiman,Neil | 12 in stock  |
| A Heartbre... | Eggers,Dave | 104 in stock |
+---------------+-------------+--------------+

*/

select concat(substring(title,1,10),'...') as 'Short Title', 
        concat(author_lname,',',author_fname) as author, 
        concat(stock_quantity,' in stock') as quantity 
from books;

/* Result

+---------------+----------------------+--------------+
| Short Title   | author               | quantity     |
+---------------+----------------------+--------------+
| The Namesa... | Lahiri,Jhumpa        | 32 in stock  |
| Norse Myth... | Gaiman,Neil          | 43 in stock  |
| American G... | Gaiman,Neil          | 12 in stock  |
| Interprete... | Lahiri,Jhumpa        | 97 in stock  |
| A Hologram... | Eggers,Dave          | 154 in stock |
| The Circle... | Eggers,Dave          | 26 in stock  |
| The Amazin... | Chabon,Michael       | 68 in stock  |
| Just Kids...  | Smith,Patti          | 55 in stock  |
| A Heartbre... | Eggers,Dave          | 104 in stock |
| Coraline...   | Gaiman,Neil          | 100 in stock |
| What We Ta... | Carver,Raymond       | 23 in stock  |
| Where I'm ... | Carver,Raymond       | 12 in stock  |
| White Nois... | DeLillo,Don          | 49 in stock  |
| Cannery Ro... | Steinbeck,John       | 95 in stock  |
| Oblivion: ... | Foster Wallace,David | 172 in stock |
| Consider t... | Foster Wallace,David | 92 in stock  |
+---------------+----------------------+--------------+

*/