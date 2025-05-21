-- Active: 1747480580900@@localhost@5432@sh
SELECT * FROM person;

ALTER TABLE person
ADD COLUMN email VARCHAR(25) DEFAULT 'default@mail.com' NOT NULL;

ALTER TABLE person DROP COLUMN email;

INSERT INTO person values (1, 'subahan', 22)

ALTER TABLE person RENAME COLUMN age to user_age;

ALTER Table person RENAME COLUMN name to user_name

ALTER Table person alter COLUMN user_name TYPE VARCHAR(100);

ALTER Table person alter COLUMN user_age set NOT NULL;

ALTER Table person alter COLUMN user_age DROP NOT NULL;

ALTER TABLE person 
ADD CONSTRAINT unique_person_user_age UNIQUE(user_age);
ALTER TABLE person 
 DROP CONSTRAINT unique_person_user_age;

 TRUNCATE TABLE person ;

