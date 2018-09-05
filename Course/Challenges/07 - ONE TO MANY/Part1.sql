/* Q1 WRITE THIS SCHEMA

STUDENTS
--------
id
first_name


PAPERS
----------
title
grade
student_id (FK)

*/

create table students
    (
        id int auto_increment primary key,
        first_name varchar(100)
    );
    

create table papers
    (
        id int auto_increment primary key,
        title varchar(100),
        grade int,
        student_id int,
        foreign key (student_id) 
            references students(id)
            on delete cascade
    );
    
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from students;

/*
+----+------------+
| id | first_name |
+----+------------+
|  1 | Caleb      |
|  2 | Samantha   |
|  3 | Raj        |
|  4 | Carlos     |
|  5 | Lisa       |
+----+------------+
*/

select * from papers;

/*
+----+---------------------------------------+-------+------------+
| id | title                                 | grade | student_id |
+----+---------------------------------------+-------+------------+
|  1 | My First Book Report                  | 6     |          1 |
|  2 | My Second Book Report                 | 7     |          1 |
|  3 | Russian Lit Through The Ages          | 9     |          2 |
|  4 | De Montaigne and The Art of The Essay | 9     |          2 |
|  5 | Borges and Magical Realism            | 8     |          4 |
+----+---------------------------------------+-------+------------+
*/