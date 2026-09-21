# Database Management Systems Lab

This repository contains my practical work and learning for Database Management Systems (DBMS).

The purpose of this repository is to practice database concepts, SQL queries, relational algebra, normalization, transactions, procedures, views, triggers, and database connectivity.

## Experiments

1. File System, Database System and Data Models
2. DDL, DML and DCL Commands
3. ER Diagrams
4. Relational Algebra Queries
5. SQL Queries
6. Aggregate Functions, Date Functions, String Functions and Joins
7. Subqueries - ANY, ALL, IN, EXISTS, NOT EXISTS
8. Normalization - 1NF, 2NF, 3NF, BCNF
9. Transaction Control Language
10. Connecting MySQL Database with Front-End
11. Stored Procedures
12. Views and Triggers

Hand Written notes:

Note: sql is case insensitive language
Sql Language s are those languages that allow the database users to read,delete,store and modify the data in the database systems.
Types of Sql languages: five types
1 .DDL(Data definition language){create,Drop,Alter,Truncate}
2.DML(Data Manipulation language){Insert,Update,Delete}
3.DCL(Data Control Language){Grant,Revoke}
4.TCL(Transaction Control Language){Commit,Rollback, Save Point}
5.DQL(Data Query Language){Select}
1)DDL : DDL allows users to create,modify,and destroy the schema of database models
Create: It is statement defines(creates) a new table in the database
Example:
Syntax:
create table table_name
(
column_name datatype;
column_name datatype
);
example code:
 1)create table mobile_details
    -> (
    -> mobile_number int,
    -> mobile_name varchar(50),
    -> manufacturing_year int,
    -> mobile_cost int
    -> );
command:create database Adhidb;
command: show databases;
command:use adhidb;
command:create table mobile_details( );
comments :-- To check weather mobile_details table is there or not --
show tables;
comments:-- this is a comment line where it needed to see the column names like mobile_number,mobile_name,manufacturing_year,mobile_cost use below query --
command:show columns from mobile_details;
Output seems to be like this:
+--------------------+-------------+------+-----+---------+-------+
| Field                         | Type              | Null     | Key    | Default   | Extra |
+--------------------+-------------+------+-----+---------+-------+
| mobile_number      | int                 | YES                   | NULL    |       
| mobile_name        | varchar(50) | YES  |                  | NULL    |       
| manufacturing_year | int             | YES  |                 | NULL    |       
| mobile_cost        | int                     | YES  |                | NULL    |       
+--------------------+-------------+------+-----+---------+-------+

Drop: Permenently deletes the Table and all its data in simply drop id a ddl command allows us to remove the table definition and data from the sql systems.
Syntax: drop table name_of_table;
command:drop table mobile_records;
command:show tables;
output:
Empty set (0.00 sec)


Alter: Command adds a new columns to the existingtable table simply 
it is use to modify the structure of database objects.
Example:  -- To add a column in existing table using alter key word --
 command: alter table mobile_details add mobile_color varchar(50);
command to see columns: show columns from mobile_details;
Output: +--------------------+-------------+------+-----+---------+-------+
| Field                        | Type             | Null     | Key |  Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| mobile_number      | int               | YES  |              | NULL    |       |
| mobile_name        | varchar(50) | YES  |            | NULL    |       |
| manufacturing_year | int            | YES  |            | NULL    |       |
| mobile_cost        | int                  | YES  |             | NULL    |       |
| mobile_color       | varchar(50) | YES  |            | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

Truncate:removes all rows from the table but retails its structure in other way truncate delets the records in table but not table.
Remember It will not remove columns  and table but removes rows
command:  truncate table mobile_details;
command:  show columns from mobile_details;
Output:
+--------------------+-------------+------+-----+---------+-------+
| Field                        | Type                  | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| mobile_number      | int                   | YES  |         | NULL    |       |
| mobile_name        | varchar(50) | YES  |          | NULL    |       |
| manufacturing_year | int             | YES  |          | NULL    |       |
| mobile_cost        | int                   | YES  |            | NULL    |       |
| mobile_color       | varchar(50) | YES  |            | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
(.)what is rename command : The DDl command allows the users to change the name of the existing table.
Syntax: rename table old_table_name to new_table_name;
command :rename table mobile_details to mobile_records;
command: show tables; -- to see tables --
output:
previous output:
+------------------+
| Tables_in_adhidb |
+------------------+
| mobile_details   |
+------------------+
Actual output:
+------------------+
| Tables_in_adhidb |
+------------------+
| mobile_records   |
+------------------+
2)DML:
Data Manupulation Language:It allows us to modify the database instance by inserting,modifying,and deleting its data.it is responsible for performing all types of data modification in a database. 
Here are some important DML commands in sql:
Insert:Statement adds a new record to the table.
This is a statement in a sql query,this command is used to insert data into the row of a table.
Syntax for smaller table  : 
insert into table_name(col1,col2,col3,.............coln) values (value1,value2,value3,...... valuen);
OR
Syntax for larger table value: 
insert into table_name values(value1,value2,value3,value4,...............,valuen);
commands:
. show databases;
.  use adhidb;
 . create table mobile_details
    -> (
    -> mobile_number int,
    -> mobile_name varchar(50),
    -> manufacturing_year int,
    -> mobile_cost int
    -> );
 . show tables;
output seems to be like this:

+------------------+
| Tables_in_adhidb |
+------------------+
| mobile_details   |
+------------------+
.  show columns from mobile_details;
output seems to be like this:
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type                    | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| mobile_number      | int               | YES  |           | NULL    |       |
| mobile_name        | varchar(50) | YES  |            | NULL    |       |
| manufacturing_year | int             | YES  |            | NULL    |       |
| mobile_cost        | int                    | YES  |           | NULL    |       |
| mobile_owner       | varchar(60) | YES  |             | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost)
 .  values(1,'Vivo',2025,'Likitha',28000);

. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost)
.   values(2,'nothing',2023,'Hema',36000);

.  insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost)
 .  values(1,'Vivo',2024,'Adhi',18000);

. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost)
. values(1,'Oppo',2024,'rishika',36000);

.-- To see tables  --
.  show tables;
+------------------+
| Tables_in_adhidb |
+------------------+
| mobile_details   |
+------------------+

. -- to see the data --
 select * from mobile_details;
+---------------+-------------+--------------------+-------------+--------------+
| mobile_number | mobile_name | manufacturing_year | mobile_cost | mobile_owner |
+---------------+-------------+--------------------+-------------+--------------+
|             2        | nothing     |               2023 |                 36000 |           Hema         |
|             1 |         Vivo        |               2025 |                28000 |          Likitha      |
|             1 |       Vivo        |               2024 |               18000 |            Adhi         |
|             1        | Oppo        |               2024 |                36000 |          rishika      |
+---------------+-------------+--------------------+-------------+--------------+


. UPDATE: modifies existing data in the table. This command is used  to update  or modify the values of a column in a table
 syntax:
.  update table_name set column_name1 = value1,  ............column_nameN = valueN  where condition  
Commands:
.  update mobile_details set mobile_name = 'samsung_book',mobile_cost=80 ;
. update mobile_details set mobile_name = 'samsung_book',mobile_cost=80000,manufacturing_year = 2
035 where mobile_number = 1;
. select * from mobile_details;
output seems to be like this:
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             2 | samsung_book |               2023 |          80 | Hema         |
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
+---------------+--------------+--------------------+-------------+--------------+
4 rows in set (0.00 sec)



Delete:removes a specific record from the table i.e removes one or more rows from a table.
Syntax:
Delete from table_name [where condition];
 command: 
.  select * from mobile_details;
output seems to be like this:
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number      | mobile_name  |          manufacturing_year |    mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             2           | samsung_book |               2023 |                         80 |                 Hema         |
|             1           | samsung_book |               2035 |                   80000 |              Likitha      |
|             1 |          samsung_book |               2035 |                   80000 |           Adhi         |
|             1        | samsung_book |               2035 |                   80000 |             rishika      |
+---------------+--------------+--------------------+-------------+--------------+
4 rows in set (0.00 sec)
.  delete from mobile_details where mobile_cost = 80;
. select * from mobile_details;
output seems to be like this
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number      | mobile_name  |          manufacturing_year |    mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1           | samsung_book |               2035 |                   80000 |              Likitha      |
|             1 |          samsung_book |               2035 |                   80000 |           Adhi         |
|             1        | samsung_book |               2035 |                   80000 |             rishika      |


3 rows in set (0.00 sec)




3)TCL : Transaction clontol language commands deal with the transaction within the database 
. Commmit is used to save all the transactions to the database.
Syntax:
commit;
The commit; command saves all the changes made in the current transaction permanently in the database.
command: 
. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost) values(6,'One +',2025,'Hema',86000);
.  insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost) values(4,'mortola',2027,'Karthik',70000);
. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost) values(3,'Apple',2028,'Nikshith',156000);
.  select * from mobile_details;
output seems to be like this:
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
|             6 | One +        |               2025 |       86000 | Hema         |
|             4 | mortola      |               2027 |       70000 | Karthik      |
|             3 | Apple        |               2028 |      156000 | Nikshith     |
+---------------+--------------+--------------------+-------------+--------------+
6 rows in set (0.00 sec)
. start transaction;
.insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost)  values(7,'Sony',2029,'ganesh',85600);
. select *from mobile_details;
output seems to be like this
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
|             6 | One +        |               2025 |       86000 | Hema         |
|             4 | mortola      |               2027 |       70000 | Karthik      |
|             3 | Apple        |               2028 |      156000 | Nikshith     |
|             7 | Sony         |               2029 |       85600 | ganesh       |
+---------------+--------------+--------------------+-------------+--------------+
7 rows in set (0.00 sec)

.  commit;

The RollBack; command undergoes all changes made in the current transaction,restoring the previous state
.Rollback command allows you to undo transactions that have not already been saved to the database.
syntax:
rollback;
Note:it is needed to do before commit;
command: insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost) values(5,'Samsung',2024,'chitti',84600);
. select *from mobile_details;
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
|             6 | One +        |               2025 |       86000 | Hema         |
|             4 | mortola      |               2027 |       70000 | Karthik      |
|             3 | Apple        |               2028 |      156000 | Nikshith     |
|             7 | Sony         |               2029 |       85600 | ganesh       |
|             5 | Samsung      |               2024 |       84600 | chitti       |
+---------------+--------------+--------------------+-------------+--------------+
8 rows in set (0.00 sec)
. start transaction;
. insert into mobile_details (mobile_number,mobile_name,manufacturing_year,mobile_owner,mobile_cost) values(5,'redmi',2024,'santhosh',74600);
.select *from mobile_details;
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
|             6 | One +        |               2025 |       86000 | Hema         |
|             4 | mortola      |               2027 |       70000 | Karthik      |
|             3 | Apple        |               2028 |      156000 | Nikshith     |
|             7 | Sony         |               2029 |       85600 | ganesh       |
|             5 | Samsung      |               2024 |       84600 | chitti       |
|             5 | redmi        |               2024 |       74600 | santhosh     |
+---------------+--------------+--------------------+-------------+--------------+
9 rows in set (0.00 sec)
. rollback;
.  select *from mobile_details;
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 | samsung_book |               2035 |       80000 | Likitha      |
|             1 | samsung_book |               2035 |       80000 | Adhi         |
|             1 | samsung_book |               2035 |       80000 | rishika      |
|             6 | One +        |               2025 |       86000 | Hema         |
|             4 | mortola      |               2027 |       70000 | Karthik      |
|             3 | Apple        |               2028 |      156000 | Nikshith     |
|             7 | Sony         |               2029 |       85600 | ganesh       |
|             5 | Samsung      |               2024 |       84600 | chitti       |
+---------------+--------------+--------------------+-------------+--------------+
8 rows in set (0.00 sec)
The SavePoint; command creates  a checkpoint (A check point in a database  is  a point at which all changes in the transaction log are permanently written to the database.it helps in recovery by reducing the amount of work needed during  a system  failure)  within a transaction,allowing partial rollbacks.
. This command helps you to sets a savepoint within a transaction. Example :i need only 3 or four rows to roll back without effecting the total dataet table.

4 )DQL : data query language
Select : It  retrieves(gets) all records from the table.
.data query language is used to fetch the data from the database . it uses only one command.
.select is the only command helps you to select the attribute based on the condition described by the where clause.
.it is used to filter the data by using condition.
Syntax:
. select expression  from tables where conditions;
 commands:
. select *from mobile_details;
output seems to be like this:
+---------------+--------------+--------------------+-------------+--------------+
| mobile_number | mobile_name  | manufacturing_year | mobile_cost | mobile_owner |
+---------------+--------------+--------------------+-------------+--------------+
|             1 |        samsung_book |               2035 |       80000 |          Likitha      |
|             1 |         samsung_book |               2035 |       80000 |        Adhi         |
|             1          samsung_book |               2035 |       80000 |       rishika      |
|             6 |        One +        |                  2025 |       86000 |         Hema         |
|             4 |      mortola      |                  2027 |       70000 |       Karthik      |
|             3 |      Apple        |                  2028 |      156000 |        Nikshith     |
|             7 |     Sony         |                   2029 |       85600 |       ganesh       |
|             5 |      Samsung      |               2024 |       84600 |       chitti       |
+---------------+--------------+--------------------+-------------+--------------+
8 rows in set (0.00 sec)
. select mobile_name from mobile_details where mobile_cost>80000;
Output seems to be like this:
+-------------+
| mobile_name |
+-------------+
| One +       |
| Apple       |
| Sony        |
| Samsung     |
+-------------+
4 rows in set (0.00 sec)

5)DCL : (Mainly used for authorization purpose)
dcl is short name of data control language.
which includes commands such  as Grant and mostly concerned with rights,permissions and other controls of the database system.
Grant: permission to select and insert data into the table 
.allow users access privileges to the database
[ grant] based on privilege accesing dataobject.
in simple giving permission to access data is grant
command: 


Revoke: removes the insertion permission from user1 on the table.
. withdraw users access privileges given by using the grant command.
. withdrawing that approved user permission from database is revoke.




## Technologies

- MySQL
- SQL
- Python
- FastAPI / Flask
- Git
- GitHub

## Learning Goals

Through this repository I aim to improve my understanding of:

- Database design
- SQL query writing
- Relational databases
- Normalization
- Transactions
- Database programming
- Backend-database connectivity
- Git and GitHub

## Author

Adhi
B.Tech Artificial Intelligence & Machine Learning
