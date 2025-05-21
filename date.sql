SHOW timezone;

SELECT now();

CREATE TABLE timez (
    ts TIMESTAMP without TIME zone,
    tsz TIMESTAMP with TIME zone
);

INSERT INTO timez VALUES ('2025-5-20', '2025-5-20');

SELECT * FROM timez;

SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::TIME;

SELECT to_char(now(), 'yyyy/mm/dd');

SELECT to_char(now(), 'DDD');

SELECT age (CURRENT_DATE, '11/14/2003');

SELECT *, age (CURRENT_DATE, date_of_birth) FROM students;

SELECT * FROM students;

SELECT country, count(*), avg(age) FROM students GROUP BY country;

SELECT country, avg(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) > 20;

SELECT * FROM students;

SELECT extract(
        YEAR
        FROM date_of_birth
    ) as birth_year , count(*)
FROM students
GROUP BY
    birth_year