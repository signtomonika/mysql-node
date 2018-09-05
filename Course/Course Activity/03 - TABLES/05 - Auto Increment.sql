/************* NORTHINDIA TABLE ******************/

create table NorthIndia 
                ( 
                    ID int NOT NULL AUTO_INCREMENT, 
                    city varchar(50) NOT NULL, 
                    state varchar(50) NOT NULL default 'Indian State', 
                    PRIMARY KEY (ID) 
                ); 

desc NorthIndia;

/* RESULT

+-------+-------------+------+-----+--------------+----------------+
| Field | Type        | Null | Key | Default      | Extra          |
+-------+-------------+------+-----+--------------+----------------+
| ID    | int(11)     | NO   | PRI | NULL         | auto_increment |
| city  | varchar(50) | NO   |     | NULL         |                |
| state | varchar(50) | NO   |     | Indian State |                |
+-------+-------------+------+-----+--------------+----------------+

*/

insert into NorthIndia (city, state) values ('Jaipur', 'Rajasthan');

insert into NorthIndia (city, state) values ('Amritsar', 'Punjab')

select * from NorthIndia;     

/* RESULT

+----+----------+-----------+
| ID | city     | state     |
+----+----------+-----------+
|  1 | Jaipur   | Rajasthan |
|  2 | Amritsar | Punjab    |
+----+----------+-----------+

*/