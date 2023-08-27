

DROP TABLE employee
create table employee
(EmpNo varchar(3),
Ename varchar(20),
Salary integer ,
Bonus integer,
DeptID VARCHAR(3))


insert into employee
(EmpNo, Ename, Salary, Bonus, DeptID)
VALUES
('107', 'Sanya', 48000, 695, 'D02'),
('108', 'Sanya', 48000, 695, 'D02'),
('109', 'Sanya', 48000, 695, 'D02')

('101', 'Aaliya', 10000, 234, 'D02'),
('102', 'Kritika', 60000, 123, 'D01'),
('103', 'Shabbir' ,45000, 566, 'D01'),
('104', 'Gurpreet', 19000, 565, 'D04'),
('105', 'Joseph' ,34000, 875, 'D03'),
('106', 'Sanya', 48000, 695, 'D02')


107 Vergese 15000 D01
108 Nachaobi 29000 D05
109 Daribha 42000 D04
110 Tanya 50000 467 D05




SELECT * FROM employee
SELECT empno, Salary FROM employee

-- ==================== Using of Alias =============================
SELECT empno as EMPLOYEE_NUMBER , Salary FROM employee

SELECT * FROM employee
SELECT * FROM employee

SELECT SALARY, SALARY*12 AS ANNUALSALARY FROM employee

SELECT SALARY, SALARY*6 AS [HALF YEARLY SALARY]  FROM employee

SELECT Ename AS Name, Salary*12 AS 'Annual Salary' FROM EMPLOYEE

--========================Distinct=======================
SELECT * FROM employee
select DISTINCT DeptID FROM employee
select DeptID FROM employee
--========================Distinct With Other Columns=======================
select DISTINCT DeptID FROM employee
select DISTINCT DeptID , salary FROM employee
select DeptID FROM employee

select DISTINCT DeptID , salary, eNAME FROM employee

--======================== Where Clause ======================

SELECT * FROM employee
select deptid from employee 
where deptid = 'D01'

select deptid from employee 
where ename = 'Sanya'

select * from employee 
where ename = 'Sanya' and deptid = 'D01'

--===============Display all the employees who are earning more than 5000 and work in department with DeptId D04.
SELECT * FROM employee
where salary > 50000  and deptid = 'D04'


SELECT * FROM employee
where salary < 50000  and deptid = 'D04'

--===============The following query displays records of all the employees except Aaliya.;======================

SELECT * FROM employee
where ename != 'Aaliya'

---=============The following query displays name and department number of all those employees who are earning salary between 20000 and 50000 (both values inclusive).

SELECT Ename, DeptId  FROM EMPLOYEE
WHERE Salary>=20000 AND Salary<=50000

SELECT * FROM employee 
where salary between 20000 and  50000

--==============The following query displays details of all the employees who are working either in DeptId D01, D02 or D04.

select * from employee

select * from employee where DeptID = 'd02' and ename = 'Aaliya'

select * from employee where DeptID = 'd02' or ename = 'Aaliya'

select * from employee where DeptID = 'd01' or DeptID = 'd02'


SELECT * FROM employee 
where DeptID = 'D01' or DeptID = 'D02' or DeptID = 'D04' or DeptID = 'D03' or DeptID = 'D05'

SELECT * FROM employee 
where DeptID IN ('D01', 'D04')

SELECT * FROM employee 
where DeptID NOT IN ('D01', 'D04')


--============= Use of AND and OR ==============================================
SELECT * FROM employee 
where DeptID = 'D01' or salary < 40000

SELECT * FROM employee 
where DeptID = 'D01' and salary < 40000



--============= Order by==============================================
SELECT * FROM employee 
order by salary desc

SELECT * FROM employee 
order by DeptID , salary  desc

--==================Handling Null Values ==================================

insert into employee
(EMPNO , ENAME , SALARY, BONUS, DEPTID)
VALUES
(211,'Shabbir' , 45000, 566, 'd01'),
(212,'Daribha', 42000, NULL, 'D01'),
(213, 'Joseph' ,34000, 875, 'd03'),
(214, 'Nachobi' ,29000, NULL, 'd03')

select * from employee
--==============The following query displays names of all the employees who have been given a bonus.
select * from employee WHERE BONUS  IS  NOT NULL

select * from employee WHERE BONUS = 'Null'
----=================Substring pattern matching===================================
select * from employee

Select * from employee where ename = 'Aaliya'
Select * from employee where ename like 'Shabbir%'
Select * from employee where ename like '%a'
Select * from employee where ename like '%Sharma'
Select * from employee where ename like '%any%'

Select * from employee where ename like '_anya'

Select * from employee where ename like '_a_y_%'

Select * from employee where ename like '__a%'

---========================Data Updation and Deletion ==========================
Select * from employee

update employee
set Bonus = 1000
WHERE DEPTID = 'D01' AND SALARY > 50000









