-- BASIC TABLE
--------------------

create table pastries
     (
     name varchar(50),
     quantity int
     );
    

-- SHOW CLOUMNS
--------------------

desc pastries;

/* RESULT

+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(50) | YES  |     | NULL    |       |
| quantity | int(11)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

*/

-- DELETE TABLES
-------------------

drop table pastries;


-- INSERT DATA
--------------------

INSERT INTO PASTRIES (name, quantity) VALUES('Bread', 10);

-- RETRIEVE DATA
---------------------

SELECT * FROM PASTRIES;

