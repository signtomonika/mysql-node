Create Database shirts_db;

/* Result

Command: show databases;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| CourseActivity     |
| c9                 |
| mysql              |
| performance_schema |
| phpmyadmin         |
| shirts_db          |
+--------------------+

*/

Create Table shirts
    (
        shirt_id int not null auto_increment,
        article varchar(50),
        color varchar(50),
        shirt_size varchar(2),
        last_worn int,
        primary key (shirt_id)
    );
    
/* Result

Command : desc shirts;

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| shirt_id   | int(11)     | NO   | PRI | NULL    | auto_increment |
| article    | varchar(50) | YES  |     | NULL    |                |
| color      | varchar(50) | YES  |     | NULL    |                |
| shirt_size | varchar(2)  | YES  |     | NULL    |                |
| last_worn  | int(11)     | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

*/
