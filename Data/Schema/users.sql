
CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

/*
+------------+--------------+------+-----+-------------------+-------+
| Field      | Type         | Null | Key | Default           | Extra |
+------------+--------------+------+-----+-------------------+-------+
| email      | varchar(255) | NO   | PRI | NULL              |       |
| created_at | timestamp    | NO   |     | CURRENT_TIMESTAMP |       |
+------------+--------------+------+-----+-------------------+-------+
*/

INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');