/************ INDIA TABLE **************/  

create table India
    (
    ID int NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(50) NOT NULL default 'Indian State',
    PRIMARY KEY (ID)
    );


desc India;

/* RESULT

+-------+-------------+------+-----+--------------+-------+
| Field | Type        | Null | Key | Default      | Extra |
+-------+-------------+------+-----+--------------+-------+
| ID    | int(11)     | NO   | PRI | NULL         |       |
| city  | varchar(50) | NO   |     | NULL         |       |
| state | varchar(50) | NO   |     | Indian State |       |
+-------+-------------+------+-----+--------------+-------+

*/

-- INSERT

insert into India (ID, city, state) values (1, 'Chennai', 'Tamil Nadu');
    
insert into India (ID, city, state) values (2, 'Cochin', 'Kerala');

insert into India (ID, city, state) values (2, 'Vijayawada', 'Andhra Pradesh');

/* RESULT

ERROR 1062 (23000): Duplicate entry '2' for key 'PRIMARY'

*/

