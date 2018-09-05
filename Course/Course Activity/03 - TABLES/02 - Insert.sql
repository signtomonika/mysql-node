/****************/
-- PANDAS TABLE
/****************/


 CREATE TABLE Cats
 (
 
 panda_id int not null auto_increment,
 name varchar(100),
 family varchar(100) default 'Pandas',
 age int,
 primary key (panda_id)
 
 );
    
-- SINGLE INSERT

insert into Pandas (name, age) values('Bei Bei', 3);

insert into Pandas (name, age) values('Tian Tian', 20);

insert into Pandas (name, age) values('Mei Xiang', 18);

-- MULTIPLE INSERT

insert into Pandas (name, age) values
        ('Tai Shan', 13),
        ('Bao Bao', 5);


-- SELECT

select * from Pandas;

/* RESULT

+----------+-----------+--------+------+
| panda_id | name      | family | age  |
+----------+-----------+--------+------+
|        1 | Bei Bei   | Pandas |    3 |
|        2 | Tian Tian | Pandas |   20 |
|        3 | Mei Xiang | Pandas |   18 |
|        4 | Tai Shan  | Pandas |   13 |
|        5 | Bao Bao   | Pandas |    5 |
+----------+-----------+--------+------+

*/

/***************************** EXCERCISE *************************************/

/****************/
-- PEOPLE TABLE
/****************/

create table people 
            (
            first_name varchar(20), 
            last_name varchar(20), 
            age int
            );


desc people;

/* RESULT

+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| age        | int(11)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

*/

-- MULTIPLE INSERT

insert into people (first_name, last_name, age) values
     ('Tina', 'Belcher', 13),
     ('Bob', 'Belcher', 42),
     ('Linda', 'Belcher', 45),
     ('Phillip', 'Frond', 38),
     ('Calvin', 'Fischeder', 70);

-- TABLE DATA

select * from people;

/* RESULT

+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Tina       | Belcher   |   13 |
| Bob        | Belcher   |   42 |
| Linda      | Belcher   |   45 |
| Phillip    | Frond     |   38 |
| Calvin     | Fischeder |   70 |
+------------+-----------+------+

*/
