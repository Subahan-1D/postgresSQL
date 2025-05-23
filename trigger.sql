CREATE TABLE my_users ( user_name VARCHAR(50), email VARCHAR(100) );

INSERT INTO
    my_users
values (
        'subahan',
        'subahan@gmail.comn'
    ),
    ('masud', 'masud@gmail.com');

SELECT * FROM my_users;

SELECT * FROM delete_user_audit;

CREATE TABLE delete_user_audit (
    delete_user_name VARCHAR(50),
    deleteAt TIMESTAMP
);

-- ata hocce ata triger funtion
CREATE or REPLACE FUNCTION save_delete_user() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS 
$$
BEGIN
 INSERT INTO delete_user_audit values(OLD.user_name , NOW());
 RAISE NOTICE 'Deleted user audit log created !' ;
 RETURN OLD ;
END
$$;

CREATE TRIGGER save_delete_trigger_users BEFORE DELETE ON my_users FOR EACH ROW
EXECUTE FUNCTION save_delete_user () ;

DELETE FROM my_users WHERE user_name = 'masud' ;