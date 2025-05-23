-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);

DROP Table employees ;

-- Inserting sample data into the employees table with a foreign key constraint
INSERT INTO employees (employee_name, department_name, department_id, salary, hire_date) VALUES
('Alice Johnson', 'Marketing', 1, 55000.00, '2020-03-15'),
('Brian Smith', 'IT', 2, 75000.00, '2019-06-10'),
('Carla Gomez', 'Finance', 3, 62000.00, '2021-07-20'),
('David Lee', 'HR', 4, 50000.00, '2018-12-01'),
('Emily Davis', 'IT', 2, 78000.00, '2022-01-11'),
('Frank Miller', 'Marketing', 1, 53000.00, '2023-02-23'),
('Grace Kim', 'Finance', 3, 61000.00, '2020-05-12'),
('Hannah Patel', 'HR', 4, 49000.00, '2021-08-30'),
('Ian Thomas', 'IT', 2, 80000.00, '2019-09-15'),
('Jane Wilson', 'Marketing', 1, 56000.00, '2022-10-17'),
('Kevin Brown', 'Finance', 3, 64000.00, '2021-03-09'),
('Laura White', 'HR', 4, 51000.00, '2020-04-05'),
('Michael Chen', 'IT', 2, 77000.00, '2022-07-27'),
('Nina Ali', 'Marketing', 1, 52000.00, '2018-11-18'),
('Oscar Perez', 'Finance', 3, 60000.00, '2023-01-19'),
('Paula Moore', 'HR', 4, 49500.00, '2019-02-25'),
('Quentin Brooks', 'IT', 2, 76000.00, '2021-06-13'),
('Rachel Adams', 'Marketing', 1, 57000.00, '2020-08-07'),
('Samuel Evans', 'Finance', 3, 61500.00, '2022-04-02'),
('Tina Rivera', 'HR', 4, 50500.00, '2023-03-10'),
('Uma Watson', 'IT', 2, 78500.00, '2019-12-03'),
('Victor Nash', 'Marketing', 1, 54000.00, '2021-09-28'),
('Wendy Harper', 'Finance', 3, 62500.00, '2020-10-14'),
('Xavier Lane', 'HR', 4, 52000.00, '2022-06-21'),
('Yasmin Grant', 'IT', 2, 79500.00, '2023-05-08'),
('Zachary Scott', 'Marketing', 1, 55500.00, '2021-11-30'),
('Abigail Brooks', 'Finance', 3, 63500.00, '2022-12-19'),
('Ben Turner', 'HR', 4, 50000.00, '2018-07-26'),
('Chloe Sanders', 'IT', 2, 79000.00, '2021-01-16'),
('Derek Foster', 'Marketing', 1, 54500.00, '2020-09-11');

SELECT * FROM employees ; 



-- retrieve all employees whose salary is grater then the highest salary of the HR Department
-- 5200
SELECT * FROM employees WHERE salary >  52000 ;

SELECT max(salary) FROM employees WHERE department_name = 'HR';

-- dynamic
SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR')

SELECT * , (SELECT sum(salary) from employees ) from  employees ;

SELECT department_name , sum(salary) FROM employees GROUP BY department_name ;

SELECT* FROM (SELECT department_name , sum(salary) FROM employees GROUP BY department_name) as sum_dept_salary ;