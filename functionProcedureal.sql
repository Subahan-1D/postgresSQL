SELECT * FROM employees;

SELECT count(*) FROM employees;

CREATE or REPLACE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
 SELECT count(*) FROM employees
$$ ;

CREATE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE  employee_id = 30 
$$

SELECT emp_count ();

SELECT delete_emp ();

CREATE  Function delete_emp_id (p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = p_emp_id
$$ ;

SELECT delete_emp_id (29)

CREATE Procedure remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
      DECLARE 
       test_var int ;
    BEGIN
      SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id ;
      DELETE FROM employees WHERE employee_id = test_var ;
     RAISE NOTICE 'Employee remove successfully!';
    END ;
$$ ;

SELECT * FROM employees ;

CALL remove_emp_by_id(27) ;