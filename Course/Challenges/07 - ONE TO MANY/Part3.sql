/*Q6 PRINT THIS

+------------+---------+----------------+
| first_name | average | passing_status |
+------------+---------+----------------+
| Samantha   | 96.0000 | PASSING        | 75 or higher
| Carlos     | 89.0000 | PASSING        |
| Caleb      | 67.5000 | FAILING        |
| Raj        | 0       | FAILING        |
| Lisa       | 0       | FAILING        |
+------------+---------+----------------+
*/

select A.first_name, AVG(ifnull(B.grade,0)) as average ,
case 
    when AVG(ifnull(B.grade,0)) >= 75 then 'PASSING'
    else 'FAILING'
end as 'passing_status'
from students A left join papers B on A.id = B.student_id
group by A.first_name
order by average desc;