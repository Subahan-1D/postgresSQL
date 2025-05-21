SELECT * FROM person;

DROP TABLE persons;

CREATE TABLE persons (
    id SERIAL PRIMARY KEY,
    roll INTEGER UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 18),
    department VARCHAR(50),
    score DECIMAL(5, 2),
    status VARCHAR(50),
    last_login DATE
);

INSERT INTO
    persons (
        roll,
        name,
        age,
        department,
        score,
        status,
        last_login
    )
VALUES (
        10,
        'Subahan',
        19,
        'CSE',
        80,
        'PASSED',
        '2025-5-19'
    ),
    (
        13,
        'Sultan',
        20,
        'CIVIL',
        70,
        'PASSED',
        '2025-3-19'
    ),
    (
        15,
        'Rasel',
        25,
        'MATH',
        90,
        'PASSED',
      '2025-1-19'
    ),
    (
        19,
        'Juwel',
        22,
        'ELC',
        30,
       
        ' FAILED',
        '2024-1-19'
    )

ALTER TABLE persons ADD COLUMN email VARCHAR(100);

ALTER TABLE persons DROP COLUMN persons_email;

ALTER TABLE persons RENAME COLUMN email to persons_email;

ALTER TABLE persons
ADD CONSTRAINT unique_persons_email UNIQUE (persons_email);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    course_details TEXT
);

ALTER TABLE courses DROP COLUMN course_details;

SELECT * FROM persons;

SELECT * FROM courses;

SELECT * FROM persons
WHERE score > 80 AND score IS NOT NULL ;

SELECT * FROM persons
WHERE name LIKE '%se%';

SELECT * FROM persons
WHERE age BETWEEN 18 AND 20 ;

SELECT * FROM persons
WHERE roll = 10 ;

SELECT COUNT(*) AS total_persons
FROM persons ;

SELECT 
  MAX(age) AS max_age,
  MIN(age) AS min_age
FROM students;

UPDATE persons
SET status = 'FAILED'
WHERE score < 33;

UPDATE persons 
SET status = 'PASSED'
WHERE score > 33 ;

DELETE FROM persons
WHERE last_login < '2025-01-01';


