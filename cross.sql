CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO
    departments (dept_id, dept_name)
VALUES (101, 'Human Resources'),
    (102, 'Marketing')

INSERT INTO
    employees (emp_id, emp_name, dept_id)
VALUES (1, 'John Doe', 101),
    (2, 'John Smith', 102);

SELECT * FROM employees;

SELECT * FROM departments;

-- CROSS JOINING

SELECT * FROM employees CROSS JOIN departments;

-- NATURAL JOIN

SELECT * FROM employees NATURAL JOIN departments