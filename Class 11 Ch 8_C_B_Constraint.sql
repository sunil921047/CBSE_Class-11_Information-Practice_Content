	

-- No. We cannot alter the constraint, only thing we can do is drop and recreate it.


use TestDB
CREATE DATABASE TestDB
GO
USE TestDB
GO
CREATE TABLE TestTable (ID INT, Col1 INT, Col2 INT)
GO
-- Create Constraint on Col1
ALTER TABLE TestTable ADD CONSTRAINT CK_TestTable_Col1
CHECK (Col1 >= 0)

insert into TestTable values (1,0,4)

GO
-- Dropping Constraint on Col1
ALTER TABLE TestTable DROP CONSTRAINT CK_TestTable_Col1
GO
-- Clean up
USE MASTER
GO
ALTER DATABASE TestDB
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE TestDB


