CREATE TABLE dept (id NUMBER(7) CONSTRAINT department_id_pk PRIMARY KEY, name VARCHAR2(25));

CREATE TABLE emp (id NUMBER(7),
last_name VARCHAR2(25),
first_name  VARCHAR2(25),
dept_id NUMBER(7)
CONSTRAINT emp_dept_id_FK REFERENCES dept (id) );

ALTER TABLE emp ADD commission NUMBER(2,2);
DESCRIBE emp

ALTER TABLE emp MODIFY last_name VARCHAR2(50);
DESCRIBE emp

ALTER TABLE emp DROP COLUMN first_name;
DESCRIBE emp

ALTER TABLE emp SET UNUSED (dept_id); 
DESCRIBE emp

ALTER TABLE emp DROP UNUSED COLUMNS;

CREATE TABLE employees2 AS SELECT
employee_id id, first_name, last_name, salary, department_id dept_id
FROM employees; 
DESCRIBE employees2

ALTER TABLE employees2 READ ONLY;
TRUNCATE TABLE employees2;

ALTER TABLE employees2 READ WRITE;
TRUNCATE TABLE employees2; 
SELECT * from employees2;

DROP TABLE emp; DROP TABLE dept; DROP TABLE employees2;
