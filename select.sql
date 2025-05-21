CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    date_of_birth DATE,
    blood_group VARCHAR(50),
    country VARCHAR(50)
)

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        date_of_birth,
        blood_group,
        country
    )
VALUES (
        'Masud',
        'Islam',
        22,
        'A+',
        'Computer Engineering',
        'masud@example.com',
        '2002-08-22',
        'O+',
        'USA'
    ),
    (
        'Rafi',
        'Hasan',
        21,
        'B+',
        'Electrical Engineering',
        'rafi@example.com',
        '2003-01-15',
        'B+',
        'Canada'
    ),
    (
        'Shila',
        'Akter',
        20,
        'A-',
        'Civil Engineering',
        'shila@example.com',
        '2004-03-10',
        'A-',
        'Bangladesh'
    ),
    (
        'Nayeem',
        'Rahman',
        23,
        'C+',
        'Mechanical Engineering',
        NULL,
        '2001-12-05',
        'AB+',
        'India'
    ),
    (
        'Tanvir',
        'Hossain',
        24,
        'B-',
        'Software Engineering',
        'tanvir@example.com',
        '2000-09-17',
        'B-',
        'Bangladesh'
    ),
    (
        'Jannat',
        'Ferdous',
        22,
        'A+',
        'Textile Engineering',
        'jannat@example.com',
        '2002-07-29',
        'A+',
        'Bangladesh'
    ),
    (
        'Fahim',
        'Ahmed',
        25,
        'C-',
        'Architecture',
        NULL,
        '1999-04-01',
        'O-',
        'Bangladesh'
    ),
    (
        'Sadia',
        'Khan',
        21,
        'B+',
        'Pharmacy',
        'sadia@example.com',
        '2003-10-21',
        'B+',
        'USA'
    ),
    (
        'Rakib',
        'Uddin',
        20,
        'A-',
        'Automobile Engineering',
        'rakib@example.com',
        '2004-11-11',
        'A-',
        'UK'
    ),
    (
        'Tania',
        'Sultana',
        22,
        'B+',
        'Environmental Science',
        NULL,
        '2002-02-28',
        'B+',
        'Bangladesh'
    )

SELECT email as "Student Email" FROM students;

TRUNCATE TABLE students;

DROP TABLE students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT country FROM students ORDER BY country DESC;

SELECT DISTINCT country FROM students;

SELECT * FROM students WHERE country = 'India';

SELECT * FROM students;

SELECT upper(first_name), * FROM students;

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT * FROM students WHERE IS NULL email;

SELECT
    COALESCE(email, 'Email Not Provided') as "Email",
    first_name,
    blood_group
FROM students;

SELECT email FROM students;

SELECT * FROM students;

-- SELECT *
-- FROM students
-- WHERE
--     country = 'USA'
--     OR country = 'UK'
--     OR country = 'Bangladesh';

-- SELECT * FROM students WHERE country IN('Bangladesh', 'UK') ;
SELECT * FROM students WHERE country NOT IN ('Bangladesh', 'UK');

SELECT * FROM students WHERE age BETWEEN 21 and 22;

SELECT * FROM students;

SELECT * FROM students
WHERE roll = 10 ;

SELECT *
FROM students
WHERE
    date_of_birth BETWEEN '1999-1-01' and '2002-8-22'
ORDER BY date_of_birth;

SELECT * FROM students WHERE first_name LIKE '%la';

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students;

SELECT * FROM students WHERE country IN ('Bangladesh') LIMIT 2;

SELECT * FROM students WHERE grade = 'A+' AND country = 'USA';

DELETE FROM students WHERE grade = 'C-';

UPDATE students
SET
    email = 'default@gmail.com'
WHERE
    student_id = 4;