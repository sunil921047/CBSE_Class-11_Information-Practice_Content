
use student

-----------------------------------------------------------------------------------
------------ Data Type Integer ---------------------------------------------------

--			Data type	Range	Storage
--			bigint				8 Bytes
--			int					4 Bytes
--			smallint			2 Bytes
--			tinyint	0 to 255	1 Byte


----------------------------------------------------------------------------------
--		Data Type char and varchar (string data type)-----------------------------
-- Char - It is a datatype in SQL which is used to store character string of fixed length specified. 
-- varchar - It is a datatype in SQL which is used to store character string of variable length but a maximum of the set length specified.

--  Difference 
-- CHAR stands for “Character”	VARCHAR stands for “Variable Character”
-- CHAR takes 1 byte for each character	VARCHAR takes 1 byte for each character and some extra bytes for holding length information
-- Better performance than VARCHAR	Performance is not good as compared to CHAR



---    Data Type Date -------------------------------------------------------------------------------------

--SQL Date Data Types

--MySQL comes with the following data types for storing a date or a date/time value in the database:

--DATE - format YYYY-MM-DD
--DATETIME - format: YYYY-MM-DD HH:MI:SS
--TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
--YEAR - format YYYY or YY


--SQL Server comes with the following data types for storing a date or a date/time value in the database:

--DATE - format YYYY-MM-DD
--DATETIME - format: YYYY-MM-DD HH:MI:SS
--SMALLDATETIME - format: YYYY-MM-DD HH:MI:SS
--TIMESTAMP - format: a unique number

--Note: The date types are chosen for a column when you create a new table in your database!


drop table tbl_student

CREATE TABLE TBL_STUDENT
( Roll_No int , 
Name varchar (30),
Marks int ,
DOA date,
DateofEntry date
)



Insert into TBL_STUDENT
(Roll_No, Name , Marks, DOA , DateofEntry)
values
(1 , 'Kashish', 5 , '2010-01-01', '2022-01-01')


Insert into TBL_STUDENT
(Roll_No, Name , Marks, DOA , DateofEntry)
values
(5 , 'Karan', 7 , '2010-01-01', GETDATE())


select * from TBL_STUDENT

Insert into TBL_STUDENT
(Roll_No, Name , DOA , DateofEntry)
values
( 3 ,'Savita',  '2010-01-01', GETDATE())

select * from TBL_STUDENT

drop table TBL_STUDENT

create table tbl_student 
(roll_num int,
Name char(10),
doj date,
entrytime datetime,
designation varchar(30)
)

insert into tbl_student
(roll_num, name, doj, entrytime, designation)
values
(1,'Sunil' , '2007-12-03' , getdate(), 'Business Analyst')

select * from tbl_student

---------------------------------------------------------------------------------------------

drop table tbl_student_n

create table tbl_student_n 
(roll_num int,
Name char(10),
doj date,
entrytime datetime,
today_date date,
designation varchar(30)
)

insert into tbl_student_n
(roll_num , name , doj, entrytime, today_date, designation)
values
(1, 'Sunil', '2007-12-03',GETDATE(), GETDATE(), 'Business Analyst')

select * from tbl_student_n

drop table tbl_student_n

create table tbl_student_n 
(roll_num int unique,
Name char(10) not null,
doj date,
entrytime datetime,
today_date date,
designation varchar(30) default 'Analyst')

select * from tbl_student_n
insert into tbl_student_n
values
(2,'Sunil', '12-07-2007',GETDATE(), GETDATE())



insert into tbl_student_n
(roll_num, Name, doj, entrytime ,today_date)
values
(1, 'Vivek' , '2007-12-03' , getdate(),getdate()  )



select * from tbl_student_n



insert into tbl_student_n
(roll_num, name, doj, entrytime ,today_date, designation)
values
(1,'Sunil' , '2007-12-03' , getdate(),getdate(),  'Business Analyst')

select * from tbl_student_n


----------------------- Insert only few columns --------------------------------------------

select * from tbl_student_n

insert into tbl_student_n
(roll_num, name, doj ,today_date)
values
(2,'Sunil' , '2007-12-03' , getdate())

select * from tbl_student_n




drop table TableName

CREATE TABLE TableName 
(ColumName1 INT, ColumnDateTime2 DATETIME DEFAULT CURRENT_TIMESTAMP)

select * from TableName
insert into TableName 
(ColumName1 ) 
values 
(1)

drop table TableName
CREATE TABLE TableName
(1 INT, ColumnDateTime2 DATETIME DEFAULT '2022-11-05')


insert into TableName 
(ColumName1 ) 
values 
(1)
	
select * from TableName



,(2)

select * from TableName







--------------------- Use of a Constraint -----------------------------

CREATE TABLE Tab (ID INT, InDtTm DATETIME DEFAULT CURRENT_TIMESTAMP) 
INSERT INTO Tab (ID) VALUES (1),  (2) ; 
SELECT * FROM Tab

CREATE TABLE GeekTab1 (ID INT, InDtTm DATETIME DEFAULT getdate()) 
insert into geektab1
(ID) VALUES (1) , (2)
SELECT * FROM GEEKTAB1

-------------------------------------------------------------------------------



---    Data Type FLOAT and Double  vs  Decimal--------------------------------------------------------------------
-- FLOAT is a single precision floating point number. MySQL uses four bytes to store a FLOAT value. DOUBLE is a double precision floating point number. MySQL uses eight bytes to store a DOUBLE value.
-- Floats and doubles are faster to deal with, but they are not accurate to the last digit. There is a small rounding error

drop table std
create table std
( roll_num integer,
name varchar(20),
height decimal (5,4),
weight decimal (5,2),
comments varchar(max)
)


select * from std
where roll_num > 0
order by roll_num desc   -- reverse



insert into std
(roll_num , name , height , weight, comments)
values
(1, 'Sunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(1, 'Sunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(1, 'Sunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(1, 'Sunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(1, 'Sunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(1, 'ANILSunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(2, 'GJSunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(3, 'RAVISunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.'),
(4, 'SUNILSunil', 5.9, 82.6, 'I am working as Business Analyst. I also takes tution classes.')




SELECT  sum(height) as sumheight, name as myname   FROM std
group by name
having  sum(height) > 7

group by name
WHERE NAME = 'Sunil'




select * from  std

select * from std
