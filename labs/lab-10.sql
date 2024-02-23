# create table my_employee: ID, LAST_NAME, FIRST_NAME, USERID, SALARY

INSERT INTO my_employee VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);
INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);
SELECT * FROM my_employee;
INSERT INTO my_employee VALUES (&id, '&last_name', '&first_name', '&userid', &salary);
COMMIT;

UPDATE my_employee SET last_name = 'Drexler' WHERE id = 3;
UPDATE my_employee SET salary = 1000 WHERE salary < 900;
DELETE FROM my_employee WHERE last_name = 'Dancs';
COMMIT;

INSERT INTO my_employee VALUES (&id, '&last_name', '&first_name', '&userid', &salary);
SELECT * FROM my_employee;
SAVEPOINT step_17;
DELETE FROM my_employee;
ROLLBACK TO step_17;
SELECT * FROM my_employee;
COMMIT;
