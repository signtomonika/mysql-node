/* Q1 - What's a good use case for CHAR? */

create table sapiens
    (
    name varchar(100),
    gender char(1)
    );
    
/*
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| name   | varchar(100) | YES  |     | NULL    |       |
| gender | char(1)      | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
*/

insert into sapiens (name, gender) values
    ('Adam', 'M'),
    ('Eve','F');
    
/*
+------+--------+
| name | gender |
+------+--------+
| Adam | M      |
| Eve  | F      |
+------+--------+
*/

--------------------------------------------------------------------------------
/* Q2 Fill In The Blanks (price is always < 1,000,000)

CREATE TABLE inventory (
    item_name ____________,
    price ________________,
    quantity _____________
);
*/

CREATE TABLE inventory (
    item_name varchar(100),
    price DECIMAL(8,2),
    quantity INT
);

--------------------------------------------------------------------------------

/* Q3 - What's the difference between DATETIME and TIMESTAMP? */

/* Ans:

DATETIME                       |                 TIMESTAMP
-------------------------------|------------------------------
Range :  Year 1000 to 9999     |    Range: Year 1970 to 2038
Size: Double of TIMESTAMP      |    Size: uses small memory space
used eleswhere                 |    Used to track data insert / modify

*/

--------------------------------------------------------------------------------

