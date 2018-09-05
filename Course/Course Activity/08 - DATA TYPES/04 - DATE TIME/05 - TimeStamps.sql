create table comments 
    (
        content varchar(100),
        created_at timestamp default now()
    );
    
/*
+------------+--------------+------+-----+-------------------+-------+
| Field      | Type         | Null | Key | Default           | Extra |
+------------+--------------+------+-----+-------------------+-------+
| content    | varchar(100) | YES  |     | NULL              |       |
| created_at | timestamp    | NO   |     | CURRENT_TIMESTAMP |       |
+------------+--------------+------+-----+-------------------+-------+
*/

insert into comments (content) values
    ('lol what a funny article!');
    
insert into comments (content) values
    ('I found this offensive');

insert into comments (content) values
    ('He He!');
    

select * from comments order by created_at desc;

/*
+---------------------------+---------------------+
| content                   | created_at          |
+---------------------------+---------------------+
| He He!                    | 2018-08-30 08:52:07 |
| I found this offensive    | 2018-08-30 08:51:42 |
| lol what a funny article! | 2018-08-30 08:51:26 |
+---------------------------+---------------------+
*/

create table comments2 
    (
        content varchar(100),
        created_at timestamp default now() on update current_timestamp  -- timestamp is updated on any field modifications
    );
    
 insert into comments2 (content) values
    ('lol what a funny article!');
    
insert into comments2 (content) values
    ('I found this offensive');

insert into comments2 (content) values
    ('dshuadhasiudhasji');
    
/*
+---------------------------+---------------------+
| content                   | created_at          |
+---------------------------+---------------------+
| lol what a funny article! | 2018-08-30 08:57:42 |
| I found this offensive    | 2018-08-30 08:59:42 |
| dshuadhasiudhasji         | 2018-08-30 08:59:58 | -- timestamp before update
+---------------------------+---------------------+
*/

update comments2 
set content = 'This is not gibberish'
where content = 'dshuadhasiudhasji';

/*
+---------------------------+---------------------+
| content                   | created_at          |
+---------------------------+---------------------+
| This is not gibberish     | 2018-08-30 09:01:04 | -- timestamp updated
| I found this offensive    | 2018-08-30 08:59:42 |
| lol what a funny article! | 2018-08-30 08:57:42 |
+---------------------------+---------------------+
*/

