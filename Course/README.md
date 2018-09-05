## INITIALIZE MYSQL

$ mysql-ctl start

## COMMAND LINE INTERFACE (CLI) INITIALIZE

$ mysql-ctl cli

## STOP MYSQL

$ mysql-ctl STOP

## Running sql files

mysql> source file_name.sql 

(Make sure you are in right directory)

## Setting Time zones in workspace

mysql>  \!sudo dpkg-reconfigure tzdata

SET GLOBAL time_zone = '+7:00'; --(for PDT)

stop nd start MYSQL

mysql> SELECT NOW() -- to verify




