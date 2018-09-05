select article as Article , color as Color from shirts;

/* Result

+------------+--------+
| Article    | Color  |
+------------+--------+
| t-shirt    | white  |
| t-shirt    | green  |
| polo shirt | black  |
| tank top   | blue   |
| t-shirt    | pink   |
| polo shirt | red    |
| tank top   | white  |
| tank top   | blue   |
| polo shirt | purple |
+------------+--------+

*/

select article, color, shirt_size, last_worn  from shirts where shirt_size = 'M';

/* Result

+------------+--------+------------+-----------+
| article    | color  | shirt_size | last_worn |
+------------+--------+------------+-----------+
| polo shirt | black  | M          |        10 |
| polo shirt | red    | M          |         5 |
| tank top   | blue   | M          |        15 |
| polo shirt | purple | M          |        50 |
+------------+--------+------------+-----------+

*/