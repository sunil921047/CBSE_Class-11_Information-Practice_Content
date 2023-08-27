
------------------- Constraints --------------------------------------------------------
-- Constraints are certain types of restrictions on the data values that an attribute can have. They are used to ensure the accuracy and reliability of data


--  Not Null  -- Ensures that a column cannot have NULL values where NULL means missing/unknown/not applicable value.

drop table test1

create table test1
(roll_num int ,
name varchar (20),
marks decimal(5,2))


insert into test1 (name, marks) values ('Sunil', 85.5)
select * from test1

select name, marks as mymarks123455 from test1

create table test1
(roll_num int  not null ,
name varchar (20),
marks decimal(5,2))

insert into test1 (name, marks) values ('Sunil', 85.5)

--UNIQUE
-- Ensures that all the values in a column are distinct/unique.
drop table test1

create table test1
(roll_num int  unique ,
name varchar (20),
marks decimal(5,2))

insert into test1 (roll_num, name, marks) values (2, 'Sunil', 85.5)


-- DEFAULT
--A default value specified for the column if no value is provided.

drop table test1


create table test1
(roll_num tinyint  unique ,
name varchar (20),
marks decimal(5,2),
entrydate date default getdate())


select * from test1
insert into test1 (roll_num, name, marks, entrydate) values (300, 'Sunil', 85.5, '2022-10-03')

insert into test1 (roll_num, name, marks) values (2, 'SunilKumar', 85.5)
-- If you do not insert any value in column - if its default constraint then it will auto fill it
select * from test1


