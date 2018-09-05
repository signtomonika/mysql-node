/* Q10 Create a tweets table that stores:
The Tweet content
A Username
Time it was created
*/

create table tweets (

    content varchar(140),
    username varchar(100),
    created_at TIMESTAMP default CURRENT_TIMESTAMP

);

/*
+------------+--------------+------+-----+-------------------+-------+
| Field      | Type         | Null | Key | Default           | Extra |
+------------+--------------+------+-----+-------------------+-------+
| content    | varchar(140) | YES  |     | NULL              |       |
| username   | varchar(100) | YES  |     | NULL              |       |
| created_at | timestamp    | NO   |     | CURRENT_TIMESTAMP |       |
+------------+--------------+------+-----+-------------------+-------+
*/

insert into tweets (content, username) values
    ('First Tweet', 'user1');
    
insert into tweets (content, username) values
    ('Feeling Lucky', 'user2');
    
/*
+---------------+----------+---------------------+
| content       | username | created_at          |
+---------------+----------+---------------------+
| First Tweet   | user1    | 2018-08-30 09:30:08 |
| Feeling Lucky | user2    | 2018-08-30 09:31:17 |
+---------------+----------+---------------------+
*/