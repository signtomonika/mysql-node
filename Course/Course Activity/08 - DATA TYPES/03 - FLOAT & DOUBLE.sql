/*

Store larger numbers using less space

BUT..... It comes at the cost of precision

ALWAYS USE DECIMAL UNLESS OK WITH APPROX CALCULATIONS

*/

create table thingies
    (
        price FLOAT
    );
    
insert into thingies (price) values
    (88.45),
    (8877.45),
    (8877764525.44);
    
/** No warnings **/

+------------+
| price      |
+------------+
|      88.45 | -- same as input
|    8877.45 | -- same as input
| 8877760000 | -- approximated with 0 after 6 digits i.e., from 7 digits
+------------+