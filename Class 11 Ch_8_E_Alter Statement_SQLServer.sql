
use bq_datahub
 
--SQL Server:
 
-- USE OF ALTER Query --
/* The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
*/
 
 
--We can change the structure of a table using the ALTER TABLE command. We can
--Add a column
--Rename a column
--Modify a column
--Delete a column
--Rename a table
--Drop and Add Constraints
 
 
drop table Personal_detail
 
create table Personal_detail
(Roll_No int primary key ,
St_Name varchar(30),
F_Name varchar(30),
DOB date,
Address varchar(max))
 
insert into Personal_detail
values
(1 , 'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi'),
(2 , 'Sanjay' , 'Vivek', '2002-09-01', 'Hari Nagar, New Delhi'),
(3, 'Ravi', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),
(4, 'Ronak', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),
(5, 'Rahul', 'Kejri' , '2001-11-03', 'Subhash Nagar , New Delhi')
 
 
-- ALTER TABLE - ADD Column
 
alter table Personal_detail add new_address varchar(20) 
alter table Personal_detail alter column new_address int
 

--To alter  a column in a table, use the following syntax:

alter table Personal_detail alter column new_address int

insert into Personal_detail
values
(10 , 'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi', 'New Address Detail')
 

  
 
-- ALTER TABLE - DROP COLUMN
-- To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):
ALTER TABLE Personal_detail
DROP COLUMN new_address
 
select * from Personal_detail
 
 
------------------------------------------------------------------------------------
----------------------------Rename Column in a Table--------------------------------
------------------------------------------------------------------------------------
-- We can change the name of a column by using the ALTER command along with the RENAME COLUMN command.
--ALTER TABLE Personal_detail rename COLUMN address TO new_address
 
-- Another way to rename a column name is by using the CHANGE command along with the ALTER command.
--ALTER TABLE Personal_detail change COLUMN address TO new_address
 
-- ALTER command cannot be used to change the column name while using SQL Server. For SQL Server sp_renamecommand is used.
sp_rename 'Personal_detail.address' , 'New_Address' , 'column'
 
-- rename a column in MySQL using the ALTER TABLE command
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_nam
 
------------------------------------------------------------------------------------
----------------------------Rename Column in a Table--------------------------------
------------------------------------------------------------------------------------
 
select * from Personal_detail
 
-- To change the data type of a column in a table, or to change the constraint use the following syntax:
ALTER TABLE Personal_detail
ALTER COLUMN dob date not null
 
-- To change the data type of a column in a table, or to change the constraint use the following syntax:
ALTER TABLE Personal_detail MODIFY COLUMN column_name datatype constraint;
 
 
 
select * from Personal_detail
 
---- To drop a constraint from a table -----------DROP a FOREIGN KEY Constraint
-----------------------------------------------------------------------------------------ALTER TABLE Personal_detail DROP CONSTRAINT not null
 
ALTER TABLE Personal_detail ALTER COLUMN dob date not null
 
insert into Personal_detail
values
(1 , 'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi'),
 
 
-- How to RENAME a DATABASE name
Alter Database Db_Name modify name = DB_NewName
 
--It is not possible to rename a column using the ALTER TABLE statement in SQL Server. Use sp_rename instead.
-- With sp_raname - we can change the TABLE Name, and also we can change TABLE COLUMN NAME
 
-- HOW TO CHANGE THE NAME OF A TABLE
sp_rename 'OLD_TABLE_NAME' , 'NEW_TABLE_NAME'
 
-- HOW TO CHANGE THE NAME OF COLUMN
sp_rename 'Tbl_Name.OldColumnName' , 'Tbl_Name.NewColumn', 'COLUMN'
 
 
-- How to RENAME a TABLE in SQL DB
EXEC sp_rename 'TABLE_OLD_NAME' , 'TABLE_NEW_NAME'
 
 
-- How to RENAME a COLUMN in SQL Table
exec sp_rename 'Old_Col_Name' , 'New_Col_Name' , 'Column'
 
 
-======================== Examples as per Book ==================================
 -------------------------A) Add primary key to a relation ------------------------------------

drop table table1

create table table1
(S_No int,
St_Name varchar(20))
	
alter table table1 add primary key (s_no)

-- If you try adding a primary key on created table - it will not allow , because by default SQL create column as NULL ---
alter table table1 alter column s_no int not null
-- After alter a table with adding a constraing NOT NULL in column - you can add primary key
alter table table1 add primary key (s_no)

drop table tbl_alter1

----------------------------(B) Add foreign key to a relation ------------------------------------------------------

drop table Personal_detail

create table Personal_detail

(Roll_No int primary key ,

St_Name varchar(30),

F_Name varchar(30),

DOB date,

Address varchar(max))

 

 

insert into Personal_detail

values

(1 , 'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi'),

(2 , 'Sanjay' , 'Vivek', '2002-09-01', 'Hari Nagar, New Delhi'),

(3, 'Ravi', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),

(4, 'Ronak', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),

(5, 'Rahul', 'Kejri' , '2001-11-03', 'Subhash Nagar , New Delhi')

 

 

drop table marks

create table marks

(s_no int identity (1,3) primary key,

interval varchar (20),

subjects varchar(20),

max_marks int,

obtained_marks int,

Roll_num  int

--Foreign Key (roll_num) references Personal_detail (roll_no)

)

 

insert into marks

values

('Unit Test' , 'English' , 20 , 18, 2),

('Unit Test' , 'Maths' , 20 , 16, 1),

('Unit Test' , 'English' , 20 , 15, 3),

('Unit Test' , 'English' , 20 , 12, 4),

('Half yearly' , 'English' , 70 , 58, 2),

('Half yearly' , 'SST' , 70 , 51, 2)

 

alter table marks

add foreign key (Roll_num) references Personal_detail (roll_no)

 

drop table  marks

drop table Personal_detail

 

----------------------(C) Add constraint UNIQUE to an existing attribute----------------------------------------

select * from Personal_detail

select * from marks

 

alter table Personal_detail alter column st_name varchar(20) unique  --- Showing Error - Not correct code -----------

alter table Personal_detail alter column st_name varchar(40) unique  --- Showing Error - Not correct code -----------

 

alter table Personal_detail add unique (st_name)

 

----------------------(D) Add an attribute to an existing table-------Or Adding a New Column---------------------------

 
drop table marks

create table marks
(s_no int identity (1,3) primary key,
interval varchar (20),
subjects varchar(20),
max_marks int,
obtained_marks int,
Roll_num  int
--Foreign Key (roll_num) references Personal_detail (roll_no)
)


select * from Personal_detail

select * from marks

 

alter table marks add  st_name varchar(20) not null     -- Adding a new column with Not Null

alter table marks add constraint abc_unique Unique (st_name)  -- After adding a column - creating a constraint UNIQUE

---------------------(E) Modify datatype of an attribute-------To Change the DataType of any existing column-------

drop table marks

create table marks

(s_no int identity (1,3) primary key,

interval varchar (20),

subjects varchar(20),

max_marks int,

obtained_marks int,

Roll_num  int

--Foreign Key (roll_num) references Personal_detail (roll_no)

)

alter table marks alter column interval int     ----   We can change data type of any table -if already existing data is not voilating the rule of datatype
ALTER TABLE marks MODIFY st_name varchar(20)   --- This will work in MY SQL

 

------------------------(G) Add default value to an attribute--------------------------------------------

drop table Personal_Details


CREATE TABLE Personal_Details (
    ID int ,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255)
)

insert into Personal_Details
(ID , FIRSTNAME , AGE , CITY)
values
(15,'Ram', 25, 'Delhi')

SELECT * FROM Personal_Details


SELECT * FROM Personal_Details

ALTER TABLE Personal_Details MODIFY attribute DATATYPE  dEFAULT default_value   ---  MY SQL

ALTER TABLE Personal_Details ADD CONSTRAINT abc_default DEFAULT 'Name Not Given' FOR LastName  ---  SQL Server

--ALTER TABLE Personal_Details alter column FirstName varchar(20)  DEFAULT 'Not Given'

---------------------(F) Modify constraint of an attribute------------------Add/Remove Constraint on Column ---------

 drop table Personal_Details

CREATE TABLE Personal_Details (

    ID int not null ,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255),

    Age int,

    City varchar(255)
)

ALTER TABLE Personal_Details alter column id int null
ALTER TABLE Personal_Details drop constraint abc_default             ---    SQL Server - dropping the constraint



ALTER TABLE Personal_Details ADD CONSTRAINT abc_default DEFAULT 'Name Not Given' FOR LastName  ---  SQL Server
ALTER TABLE Personal_Details DROP CONSTRAINT abc_default 


''------------------------(G) Add default value to an attribut-----------------------------------

drop table Personal_Details

CREATE TABLE Personal_Details (
    ID int ,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),

    Age int,

    City varchar(255)

)
 
ALTER TABLE Personal_Details ADD CONSTRAINT abc_default DEFAULT 'Name Not Given' FOR LastName  ---  SQL Server
ALTER TABLE Personal_Details ADD CONSTRAINT abc_default unique  (firstName)     ---  working SQL Server

--------------------------(H) Remove an attribute  //  Dropping a column -------------------

drop table Personal_Details

CREATE TABLE Personal_Details (
    ID int ,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255)
)

ALTER TABLE  Personal_Details DROP COLUMN LASTNAME

alter table Personal_Details drop column firstname

 

---------------------------------(I) Remove primary key from the table ------------------
USE STUDENT_NEW
drop table Personal_Details

CREATE TABLE Personal_Details (

    ID int primary key,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255),

    Age int,

    City varchar(255)

)

ALTER TABLE Personal_Details DROP  [PK__Personal__3214EC27A81DF633]

ALTER TABLE Personal_Details DROP CONSTRAINT [PK__Personal__3214EC27B2DE90D0]

 [PK__Personal__3214EC27D35053A8]

ALTER TABLE Personal_Details ADD CONSTRAINT abc_default DEFAULT 'Name Not Given' FOR LastName  ---  SQL Server

ALTER TABLE Personal_Details drop constraint abc_default             ---    SQL Server - dropping the constraint

 

 

-------------------------- Drop an existing Constraint ----------------------------

ALTER TABLE Persons ALTER City DROP DEFAULT;   ---- In mysql
ALTER TABLE Persons ALTER COLUMN City DROP  df_City DEFAULT  ---   SQL Server

 

 

 

 