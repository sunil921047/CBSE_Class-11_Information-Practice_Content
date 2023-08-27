
drop table student1

create table student1
(s_no int identity (0,3) ,
roll_no int,
st_name varchar(20),
F_Name varchar(20),
Address varchar(max)
)

insert into student1
( roll_no , st_name, F_Name, Address)
values
(2,'Shiv', 'Gopal' , 'Tilak Nagar, New Delhi - 110056')

insert into student1
(roll_no , st_name, F_Name, Address)
values
( 4,'ShivPrakash', 'GopalDas' , 'Hari Nagar, New Delhi - 110056')

insert into student1
( roll_no , st_name, F_Name, Address)
values
(5,'ShivPrakash', 'GopalDas' , 'Hari Nagar, New Delhi - 110056')


select * from student1



-- Primary Key ----------

-- The Primary Key constraint uniquely identifies each record in a database table.

-- Primary Key must contain UNIQUE Values.

-- A Primary Key column cannot contain a NULL values.

-- Most table should have a primary key and each table can have only ONE Primary key
-- There can be only one primary key in a table


 

 

-- Foriegn Key ----

-- A foreign key is a key used to link two tables together.
-- A Foreign Key is a field in one table , that refers to the primary key in another table.
-- The Foreign key can be referenced to any column in the parent table. However, it is general practice to reference the 
-- foreign key to the primary key of the parent table.
-- A Foreign Key column may have dublicate data.
-- A Foreign Key vlaue can be null, but primary key value can't be null
-- A Foreign Key dont have to be Unique in fact, they ofter arn't
-- In a Foreign Key Column there can be value which are already in Primary Key Column.
-- While having a relation with another table as a Foreign Key - you can't drop that table/column
-- Multiple Foreign Key in a Table
-- A database table can also have multiple foreign keys.


------------------------- Important ----------------------------------------------------

-- The Foreign Key can be used to make sure that the row in one table have corresponding row in another table.

 

 

 

drop table Personal_detail

 
 drop table Personal_detail

create table Personal_detail
(Roll_No int  primary key,
St_Name varchar(30),
F_Name varchar(30),
DOB date,
Address varchar(max))
 
 select * from Personal_detail

insert into Personal_detail
(st_name , f_name, dob, address)
values
( 'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi')

insert into Personal_detail
(Roll_No, St_Name , f_name, dob, address)

values
(3, 'Ravi', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),

(4, 'Ronak', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),

(5, 'Rahul', 'Kejri' , '2001-11-03', 'Subhash Nagar , New Delhi')


( 1,'Vijay' , 'Ramesh', '2000-01-01', 'Tilak Nagar, New Delhi')
(2 , 'Sanjay' , 'Vivek', '2002-09-01', 'Hari Nagar, New Delhi')
(3, 'Ravi', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),
(4, 'Ronak', 'Om' , '2001-08-03', 'Janak Puri , New Delhi'),
(5, 'Rahul', 'Kejri' , '2001-11-03', 'Subhash Nagar , New Delhi')

 drop table Personal_detail

 select * from Personal_detail
 

 

drop table marks

 

select * from marks

 

 
drop table marks

select * from marks

create table marks
(s_no int identity (1,1) primary key,
interval varchar (20),
subjects varchar(20),
max_marks int,
obtained_marks int,
Roll_num  int,
Foreign Key (roll_num) references Personal_detail (roll_no)
)

 
select * from  marks
 

drop table marks

insert into marks
values
('Unit Test' , 'Maths' , 20 , 16, 1),
('Unit Test' , 'English' , 20 , 15, 3),
('Unit Test' , 'English' , 20 , 12, 4),
('Half yearly' , 'English' , 70 , 58, 2),
('Half yearly' , 'SST' , 70 , 51, 2),

('Half yearly' , 'Maths' , 70 , 58, 2),

('Half yearly' , 'English' , 70 , 48, 3),
('Half yearly' , 'SST' , 70 , 55, 1),
('Half yearly' , 'English' , 70 , 48, 1),
('Final Exam' , 'English' , 100 , 72, 2),
('Final Exam' , 'Maths' , 100 , 62, 2),
('Final Exam' , 'SST' , 100 , 58, 2),
('Final Exam' , 'English' , 100 , 78, 1),
('Final Exam' , 'SST' , 100 , 76, 1),
('Final Exam' , 'Maths' , 100 , 86, 1)

 

insert into marks

values

('Final Exam' , 'SST' , 100 , 86, nULL)

 

 

 

------------''==========================================================

-- This table doesn't have a foreign key

CREATE TABLE Customers (

  id INT,

  first_name VARCHAR(40),

  last_name VARCHAR(40),

  age INT,

  country VARCHAR(10),

  CONSTRAINT CustomersPK PRIMARY KEY (id)

);

 

 

-- Adding foreign key to the customer_id field

-- The foreign key references to the id field of the Customers table

CREATE TABLE Orders (

  order_id INT,

  item VARCHAR(40),

  amount INT,

  customer_id INT REFERENCES Customers(id),

  CONSTRAINT OrdersPK PRIMARY KEY (order_id)

);