-- CHAR has fixed length and VARCHAR can hold any length less than its limit

/* The length of a CHAR column is fixed to the 
length that you declare when you create the table. 
The length can be any value from 0 to 255. 
When CHAR values are stored, they are right-padded 
with spaces to the specified length. When CHAR 
values are retrieved, trailing spaces are removed 
unless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.
*/

/*

CHAR is faster for fixed length text
Sex: M/F

State Abbreviations: CA, NY

Yes/No Flags: Y/N

*/

create table dogs (
    name char(5),
    breed varchar(10)

);

insert into dogs (name, breed) values
    ('bob', 'beagle'),  -- name less than 5
    ('robby', 'corgi'), -- name exactly 5 chars
    ('Princess Jane', 'Retriever'); -- name more than 5
    
show warnings;

/*
+---------+------+-------------------------------------------+
| Level   | Code | Message                                   |
+---------+------+-------------------------------------------+
| Warning | 1265 | Data truncated for column 'name' at row 3 |
+---------+------+-------------------------------------------+
*/

select * from dogs ; 

/*
+-------+-----------+
| name  | breed     |
+-------+-----------+
| bob   | beagle    |  -- space is not retrieved in name by default
| robby | corgi     |
| Princ | Retriever |
+-------+-----------+
*/

