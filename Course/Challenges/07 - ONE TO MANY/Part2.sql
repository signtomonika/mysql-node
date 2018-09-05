/* Q2 PRINT THIS

+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Carlos     | Borges and Magical Realism            |    89 |
| Caleb      | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+

*/

select A.first_name, B.title, B.grade from students A join papers B 
    on A.id = B.student_id
order by B.grade desc;

--------------------------------------------------------------------------------

/*Q3 PRINT THIS

+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Raj        | NULL                                  |  NULL |
| Carlos     | Borges and Magical Realism            |    89 |
| Lisa       | NULL                                  |  NULL |
+------------+---------------------------------------+-------+

*/

select A.first_name, B.title, B.grade from students A left join papers B 
    on A.id = B.student_id;
    
--------------------------------------------------------------------------------

/* Q4 PRINT THIS

+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  | 60    |
| Caleb      | My Second Book Report                 | 75    |
| Samantha   | Russian Lit Through The Ages          | 94    |
| Samantha   | De Montaigne and The Art of The Essay | 98    |
| Raj        | MISSING                               | 0     |
| Carlos     | Borges and Magical Realism            | 89    |
| Lisa       | MISSING                               | 0     |
+------------+---------------------------------------+-------+
*/

select A.first_name, ifnull(B.title,'MISSING') as title, ifnull(B.grade,0) as grade 
from students A left join papers B on A.id = B.student_id;

--------------------------------------------------------------------------------

/*Q5 PRINT THIS

+------------+---------+
| first_name | average |
+------------+---------+
| Samantha   | 96.0000 |
| Carlos     | 89.0000 |
| Caleb      | 67.5000 |
| Raj        | 0       |
| Lisa       | 0       |
+------------+---------+

*/

select A.first_name, AVG(ifnull(B.grade,0)) as average 
from students A left join papers B on A.id = B.student_id
group by A.first_name
order by average desc;
