SELECT * FROM employees ;

CREATE View dept_avg_salary
AS
SELECT department_name , avg(salary) FROM employees GROUP BY department_name ;

DROP VIEW IF EXISTS dept_avg_salary;

SELECT * FROM dept_avg_salary ;