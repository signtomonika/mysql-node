 /********* NOT NULL *************/
 
 -- CREATE TABLE
 
 create table city
     (
     name varchar(50) not null,
     state varchar(50) not null
     );


-- INSERT

insert into city (name, state) values('Reno', 'Nevada');


INSERT INTO city() VALUES();

/* RESULT

Query OK, 1 row affected, 2 warnings (0.00 sec)

*/

/* COMMAND */ show warnings;

/*

+---------+------+--------------------------------------------+
| Level   | Code | Message                                    |
+---------+------+--------------------------------------------+
| Warning | 1364 | Field 'name' doesn't have a default value  |
| Warning | 1364 | Field 'state' doesn't have a default value |
+---------+------+--------------------------------------------+

*/


/* COMMAND */ SELECT * FROM city;

/*
+------+--------+
| name | state  |
+------+--------+
| Reno | Nevada |
|      |        |
|      |        |
+------+--------+

*/

 /********* DEFAULT *************/
 
  create table country ( 
                name varchar(50) NOT NULL default 'Some Country', 
                continent varchar(50) NOT NULL default 'Earth'
                );

 insert into country () values();
 
 select * from country;
 
 /* RESULT 
+--------------+-----------+
| name         | continent |
+--------------+-----------+
| Some Country | Earth     |
+--------------+-----------+

*/

insert into country (name, continent) values ('random', NULL);

/* RESULT

ERROR 1048 (23000): Column 'continent' cannot be null

*/
