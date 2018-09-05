DELIMITER $$
create Trigger instalog_trigger
    AFTER DELETE ON follows FOR EACH ROW
        BEGIN
                INSERT INTO unfollows (follower_id, followee_id) Values
                    (OLD.follower_id, OLD.followee_id);
                
        END;    
$$
DELIMITER;

/* TEST */

delete from follows where follower_id = 2 and followee_id = 1;

/*
select * from unfollows;
+-------------+-------------+---------------------+
| follower_id | followee_id | created_at          |
+-------------+-------------+---------------------+
|           2 |           1 | 2018-09-05 09:48:07 |
+-------------+-------------+---------------------+
*/