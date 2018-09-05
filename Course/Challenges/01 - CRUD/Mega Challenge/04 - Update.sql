/**** BASELINE ******/

/*

+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+

*/

select * from shirts where article = 'polo shirt';

/*

+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | M          |        10 |
|        6 | polo shirt | red    | M          |         5 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+

*/

Update shirts

set shirt_size = 'L'

where article = 'polo shirt';

/*

+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | L          |        10 |
|        6 | polo shirt | red    | L          |         5 |
|        9 | polo shirt | purple | L          |        50 |
+----------+------------+--------+------------+-----------+

*/

select * from shirts where last_worn = 15;

/*

+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        8 | tank top | blue  | M          |        15 |
+----------+----------+-------+------------+-----------+

*/


Update shirts

set last_worn = 0

where last_worn = 15;

/*

+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        8 | tank top | blue  | M          |         0 |
+----------+----------+-------+------------+-----------+

*/

select * from shirts where color = 'white';

/*

+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        1 | t-shirt  | white | S          |        10 |
|        7 | tank top | white | S          |       200 |
+----------+----------+-------+------------+-----------+

*/

Update shirts

set color = 'off white',

    shirt_size = 'XS'

where color = 'white';

/*

+----------+----------+-----------+------------+-----------+
| shirt_id | article  | color     | shirt_size | last_worn |
+----------+----------+-----------+------------+-----------+
|        1 | t-shirt  | off white | XS         |        10 |
|        7 | tank top | off white | XS         |       200 |
+----------+----------+-----------+------------+-----------+

*/