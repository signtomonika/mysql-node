/*
DECIMAL(5, 2)

(5 Digits)
<----->
999.99
    <->
    (2 Digits)
    
*/

create table items
    (
        price decimal(5,2)
    );

insert into items (price) values
    (7),
    (45842566),
    (34.88),
    (298.9990),
    (1.9999);
    
show warnings;

/*
+---------+------+------------------------------------------------+
| Level   | Code | Message                                        |
+---------+------+------------------------------------------------+
| Warning | 1264 | Out of range value for column 'price' at row 2 |
| Note    | 1265 | Data truncated for column 'price' at row 4     |
| Note    | 1265 | Data truncated for column 'price' at row 5     |
+---------+------+------------------------------------------------+
*/

/*

+--------+
| price  |
+--------+
|   7.00 | -- Added 2 decimal places
| 999.99 | -- I/P => 45842566 which > max no allowed. Hence max no allowed is saved in table
|  34.88 | -- same as input
| 299.00 | -- input is rounded up.coz, we mentioned in column attribute= > (5,2) -> rounded to 2 decimal places
|   2.00 | -- input is rounded up
+--------+

*/
