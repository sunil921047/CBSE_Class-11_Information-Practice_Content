

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
(12,"Shiv", 'Gopal' , 'Tilak Nagar, New Delhi - 110056')

insert into student1
(roll_no , st_name, F_Name, Address)
values
( 4,'ShivPrakash', 'GopalDas' , 'Hari Nagar, New Delhi - 110056')

insert into student1
( roll_no , st_name, F_Name, Address)
values
(5,'ShivPrakash', 'GopalDas' , 'Hari Nagar, New Delhi - 110056')


select * from student1
--==================================== Update Query ============================
update  student1
set roll_no = 12, F_Name = 'KapilDas'
where s_no >5 and st_name like '_hiv%' and F_name = 'GopalDas'

--====================================Delete Query ==============================

delete student1

select * from student1

delete student1
where s_no >5 and st_name like '_hiv%' and F_name = 'GopalDas'

select * from student1

where s_no >5 and st_name like '_hiv%'
order by roll_no  desc

--========================DROP COMMAND==========================
DROP TABLE STUDENT1




