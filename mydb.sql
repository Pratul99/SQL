
/*                          Har Har MahaDev
                            ---------------
16-09-2024
----------
*/

CREATE DATABASE mydb;
CREATE SCHEMA Test;

DROP DATABASE mydb;

CREATE DATABASE IF NOT EXISTS mydb


/*   
   -------------------------------------------------------------------- x --------------------------------------------------------------------

                          Har Har MahaDev
                            ---------------
17-09-2024
----------
*/

USE mydb;

CREATE TABLE Student 
(Roll_num INT (5),
Name VARCHAR (15),
Marks INT (3));

-- Will give Structure/schema of the table.
DESCRIBE Student;

INSERT INTO Student VALUES (1,'SHree Ram', 100);
INSERT INTO Student VALUES (1,'MahaDev', null);

SELECT * FROM Student;

TRUNCATE Student;

SELECT Roll_num, MARKS FROM Student;

-- ALIAS
SELECT Roll_num Rnum, Marks Mrk FROM Student;

IMPORT TABLE FROM 'C:\Users\Administrator\Downloads/employee';

-- Pattern matching works with only LIKE/NOT LIKE operator
