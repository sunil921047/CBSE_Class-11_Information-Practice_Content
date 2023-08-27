
use student


create database school

CREATE TABLE [school].[STUDENT_DETAILS]
( Roll_Num int ,
Name varchar(20),
English int,
Hindi int
)

select * from STUDENT_DETAILS

select * from [eleventh].[tbl_roll_number]
where roll_num = 3


select roll_num from [eleventh].[tbl_roll_number]




CREATE TABLE [dbo].[tbl_employee123](
	[S_no] [int] NULL,
	[Employee_Name] [nvarchar](40) NULL,
	[Designation] [nvarchar](20) NULL,
	[Salary] [int] NULL
) ON [PRIMARY]
GO





















CREATE TABLE DemoTable  
( 
  Id INT IDENTITY, 
  PatientName VARCHAR(100),
  Celsius FLOAT(2),
  Fahrenheit FLOAT
);
GO  






INSERT INTO DemoTable VALUES ('Harold Smith', 36.2, 97.16);  
INSERT INTO DemoTable VALUES ('Robert Johnson', 35.8, 96.44);  
INSERT INTO DemoTable VALUES ('Janice Lopez', 37.32, 99.176);
INSERT INTO DemoTable VALUES ('Kelly Wilson', 35.89, 96.602); 
INSERT INTO DemoTable VALUES ('Grace Taylor', NULL, NULL); 
GO  

SELECT * FROM DemoTable






CREATE TABLE Vehicles (
     Vehicle_ID int NOT NULL,
     Vehicle_Type VARCHAR(255) NOT NULL,
     Model_name VARCHAR(255) NOT NULL,
     Engine_Size float(1,1) NOT NULL,
     Condition VARCHAR(255) NOT NULL,
     Price float(9,2) NOT NULL
);





