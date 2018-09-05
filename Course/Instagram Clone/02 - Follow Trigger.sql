DELIMITER $$
create Trigger insta_trigger
    BEFORE INSERT ON follows FOR EACH ROW
        BEGIN
        IF NEW.follower_id = NEW.followee_id
            THEN 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'One Cannot Self Follow!!!';
        END IF;
    END;    
$$
DELIMITER;

/* TEST */

insert into follows(follower_id, followee_id) values(5,5);

/*
ERROR 1644 (45000): One Cannot Self Follow!!!
*/