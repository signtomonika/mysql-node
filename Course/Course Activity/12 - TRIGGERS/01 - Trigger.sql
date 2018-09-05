DELIMITER $$ -- used to define the block of code as one 

CREATE TRIGGER must_be_adult  --trigger name
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN   -- trigger logic starts
          IF NEW.age < 18  -- NEW is a placeholder that refers to the data that is trying to get inserted.
          THEN
              SIGNAL SQLSTATE '45000' --std error code for sql ; reps unhandled user-defined exception
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;