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

 

use BQ_DataHub

 

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

 

 select * from Personal_detail 
 insert into  Personal_detail values ('Dubai')



 update Personal_detail
 set F_Name = 'Vijay'
 where Roll_No = 1


select * from Personal_detail

-- ALTER TABLE - ADD Column
--To add a column in a table, use the following syntax:
UPDATE Personal_detail
Set new_address = 'Janakpuri123'


where F_Name = 'Vivek'






alter table Personal_detail
alter column new_address varchar(20) not null;




 

-- ALTER TABLE - DROP COLUMN

-- To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

ALTER TABLE Personal_detail
DROP COLUMN new_address

alter table Personal_detail
drop column DOB
 

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

ALTER TABLE Personal_detail

DROP CONSTRAINT not null

 

ALTER TABLE Personal_detail

ALTER COLUMN dob date not null

 

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

 

 

--======================== Examples as per Book ==================================

 

 

 

-------------------------A) Add primary key to a relation ------------------------------------

drop table table1

create table tbl_alter1

(S_No int,

St_Name varchar(20))

 

alter table tbl_alter1

add primary key (s_no)

-- If you try adding a primary key on created table - it will not allow , because by default SQL create column as NULL ---

 

alter table tbl_alter1 alter column s_no int not null

-- After alter a table with adding a constraing NOT NULL in column - you can add primary key

alter table tbl_table1

add primary key (s_no)

 

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

obtained_marks int