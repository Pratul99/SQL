
/*                                                       Har Har MahaDe
                                                         ---------------
16-09-2024
----------
*/

CREATE DATABASE mydb;
CREATE SCHEMA Test;

DROP DATABASE mydb;

CREATE DATABASE IF NOT EXISTS mydb;


/*   
-------------------------------------------------------------------- x --------------------------------------------------------------------

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

-- TRUNCATE statement is used to quickly and efficiently remove all rows from a table, resetting the table to an empty state. 
TRUNCATE Student;

SELECT Roll_num, MARKS FROM Student;

-- ALIAS
SELECT Roll_num Rnum, Marks Mrk FROM Student;

IMPORT TABLE FROM 'C:\Users\Administrator\Downloads/employee';

-- Pattern matching works with only LIKE/NOT LIKE operator.


/*   
-------------------------------------------------------------------- x --------------------------------------------------------------------

22-09-2024
----------
*/

-- Shortcut key :
CTRL + ENTER : Execute the current line
CTRL + SHIFT + ENTER : Execute all line

-- To add new column to a table.
ALTER TABLE student ADD(Age int);

-- To remove a column from a table.
ALTER TABLE student DROP COLUMN Age;


/*We can increase the size of the clomun but in order to decrease the size or change the datatype of column,  
the column should not have any data, it should be empty. */

ALTER TABLE stuent MODIFY COLUMN Name VARCHAR(20);


-- Rename a cloumn in a table.
ALTER TABLE student RENAME COLUMN Name TO SName;


/* In SQL, the command SET autocommit = 0; disables the autocommit mode for the current session. When autocommit is disabled, any SQL 
changes (such as INSERT, UPDATE, DELETE, etc.) are not automatically committed to the database after each statement. Instead, 
you must manually commit or roll back transactions.

By default it's values is 1.
You have to "COMMIT" changes to safe/update the update in DB.
*/


SET autocommit = 0;
SET SQL_SAFE_UPDATES = 0;

COMMIT;

DELETE FROM student;

ROLLBACK;

-- TRUNCATE statement is used to quickly and efficiently remove all rows from a table, resetting the table to an empty state. Rollback is not possible.

TRUNCATE Student;

-- TO rename a table

RENAME TABLE HR to TA;

-------------------------------------------------------------------- x --------------------------------------------------------------------

-- Built-in Functions in MySQL

/*   
-------------------------------------------------------------------- x --------------------------------------------------------------------
23-09-2024
----------
*/


-- WHERE Clause example.
SELECT * FROM employees
WHERE department = 'Sales';


-- Having clause example.
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;


-- You can use both WHERE and HAVING in the same query:
SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE department != 'HR'  -- Exclude the HR department (individual rows filter)
GROUP BY department
HAVING AVG(salary) > 50000;  -- Only include departments where the average salary is greater than 50,000 (groups filter)

-- <> is not equal to in SQL.
ex. 
DEPARTMENT_ID<>50


/*   
-------------------------------------------------------------------- x --------------------------------------------------------------------
02-10-2024
----------
*/

-- NULL is allowed in UNIQUE constraints.
-- UNIQUE Constraint will not allow duplicate of "string" & Integers

-- AUTO_INCREMENT has to be used with PRIMARY KEY Constraint

-- Any modification on the OG table will affect the View. But same does not for vice-versa.

-- If COMMIT action is done then we cannot get the ROLLBACK.