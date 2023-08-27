



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



--Handling Null Values -   ISNULL
 
 
select A.Name as Employee, isnull(b.name,'No Manager') as Manager
from tblSELFJNS A
left join tblSELFJNS B
on A.ManagerID=b.EEID
 
 
--COALESCE
 
select a.name as Name, Coalesce(b.name, 'No Manager',b.name) as manager
from tblSELFJNS A
left Join tblSELFJNS B
on a.ManagerID=b.EEID
 
 
--CASE with ISNULL
select a.name as Empoloyee,
              case
              when b.name is null then 'No Manager' else b.name
              end
              as Manager
from tblSELFJNS A
left join tblSELFJNS B
on a.ManagerID=b.EEID
 
 
SELECT CASE WHEN x IS NOT NULL THEN x ELSE 1 END 
FROM 
( 
SELECT (SELECT Nullable FROM Demo WHERE SomeCol = 1) AS x 
) AS T
 
 
 
select * from [dbo].[EE_Table]
 
select * from [dbo].[hirearchy_tbl]
 
select * from [dbo].[emp_data]
 
 
 
 
_____________________________________

