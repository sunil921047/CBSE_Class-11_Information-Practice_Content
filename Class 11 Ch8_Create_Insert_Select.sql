USE BQ_DataHub
 
 --===========================Create Table and Insert Data ==========================
drop table GUARDIAN

create table GUARDIAN(
GUID_G VARCHAR(20) primary key,
GName VARCHAR(30),
GPhone Varchar(10),
GAddress Varchar(max));

INSERT INTO GUARDIAN 
(GUID_G, GName, GPhone, GAddress)
VALUES 
('4', 'Sujata P.', '7802983674', 'HNO-13, B- block, Preet Vihar, M'),
('3', 'Sujata', '7802983674', 'HNO-13, B- block, Preet Vihar, M'),
('2', 'Sujata', '7802983674', 'HNO-13, B- block, Preet Vihar, M'),
('1', 'Sujata', '7802983674', 'HNO-13, B- block, Preet Vihar, M');


drop table student
create table student
(RollNumber int primary key,
SName varchar(20),
SDOB date,
GUID_S varchar(20)
FOREIGN KEY (guid_s) references guardian (guid_g))





insert into student
(RollNumber, Sname, Sdob, Guid_s)
values
(1, 'Atharv Ahuja', '2003-05-15', '444444444444'),
(2, 'Daizy Bhutia' ,'2002-02-28', '111111111111')


-- =================================Query Statement---  *  ----=============================
select * from GUARDIAN

select Gname from GUARDIAN

select Gname, Gphone from GUARDIAN


-- =================================Query Statement --- Where =============================
select * from GUARDIAN where GUID_G = 2

select * from GUARDIAN where gname = 'Sujata'


--============================================================================

Table 8.7 Records to be inserted into the STUDENT table
RollNumber SName SDateofBirth GUID
1 Atharv Ahuja 2003-05-15 444444444444
2 Daizy Bhutia 2002-02-28 111111111111
3 Taleem Shah 2002-02-28
4 John Dsouza 2003-08-18 333333333333
5 Ali Shah 2003-07-05 101010101010
6 Manika P. 2002-03-10 466444444666

INSERT INTO GUARDIAN 
(GUID, GName)
VALUES 
('11111111', 'Sujata')

select * from GUARDIAN















create table Employee                     (
EmpNo int primary key,
Ename varchar(20),
Salary int,
Bonus int,
DepID  varchar(20)
)
 
insert into Employee
(EmpNo ,Ename,Salary ,Bonus ,DepID)
values
(101, 'Aaliya' , 10000, 234, 'D02'),
(102, 'Kritika', 60000, 123, 'D01'),
(103, 'Shabbir', 45000, 566, 'D01'),
(104, 'Gurpreet', 19000, 565, 'D04'),
(105, 'Joseph' , 34000 ,875, 'D03')
(106, 'Sanya' ,48000, 695, 'D02'),
(107, 'Vergese', 15000, '', 'D01'),
(108, 'Nachaobi',  29000, '', 'D05'),
(109, 'Daribha',  42000, '' ,'D04'),
(110, 'Tanya' , 50000,  467, 'D05')
 
 
 
--======================= Retrieve selected columns========================
 
select * from Employee
 
select Ename from employee
select empno, Ename , salary from employee
 
--======================(B) Renaming of columns============================
 
select empno, Ename as [Employee Name] , salary from employee
 
 
--====================Example 8.3 Display names of all employees along with theirannual salary =====
 
select empno, Ename as [Employee Name] , salary, (SALARY*12) AS ANNUAL_SALARY from employee
 
 
--===================(C) DISTINCT Claus===================================
 SELECT * FROM Employee
 SELECT  DepID, Salary  FROM EMPLOYEE
 
SELECT DISTINCT DepID  FROM EMPLOYEE
 SELECT DISTINCT DepID, SUM(Salary) as sumsalary  FROM EMPLOYEE  GROUP BY depid
 
 
 

