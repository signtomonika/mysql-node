select * from shirts where last_worn = 200;

/*

+----------+----------+-----------+------------+-----------+
| shirt_id | article  | color     | shirt_size | last_worn |
+----------+----------+-----------+------------+-----------+
|        2 | t-shirt  | green     | S          |       200 |
|        7 | tank top | off white | XS         |       200 |
+----------+----------+-----------+------------+-----------+

*/

delete from shirts where last_worn = 200;

/* Result

Command : select * from shirts where last_worn = 200;                                                                                                                                                                                           
Empty set (0.00 sec)

*/


select * from shirts where article = 'tank top';

/*

+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        4 | tank top | blue  | S          |        50 |
|        8 | tank top | blue  | M          |         0 |
+----------+----------+-------+------------+-----------+

*/

delete from shirts where article = 'tank top';

/* Result

Command: select * from shirts where article = 'tank top';                                                                                                                                                                                      
Empty set (0.00 sec)

*/

select * from shirts;

/*

+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | L          |        10 |
|        5 | t-shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        9 | polo shirt | purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
*/

delete from shirts;

/* Result

Command: select * from shirts;                                                                                                                                                                                                                 
Empty set (0.00 sec)

*/
