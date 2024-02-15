# Solution 2-1
SELECT last_name, job_id, salary AS Sal FROM employees;

DESCRIBE departments

SELECT * FROM departments;

DESCRIBE employees

SELECT employee_id, last_name, job_id, hire_date StartDate FROM employees;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id "Emp #", last_name "Employee", job_id "Job", hire_date "Hire Date"
FROM employees;

SELECT last_name||', '||job_id "Employee and Title" FROM employees;

SELECT employee_id || ',' || first_name || ',' || last_name || ',' || email || ',' || phone_number || ','|| job_id || ',' || manager_id || ',' || hire_date || ',' || salary || ',' || commission_pct || ',' ||
department_id THE_OUTPUT
FROM employees;

