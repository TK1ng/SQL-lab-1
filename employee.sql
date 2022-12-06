-- 1. List all employee first and last names only that live in Calgary.
SELECT first_name, last_name, city FROM employee
WHERE city = 'Calgary';

-- 2. Find the birthdate for the youngest employee.
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT (1);


-- 3. Find the birthdate for the oldest employee.
SELECT birth_date FROM employee
ORDER BY birth_date
LIMIT (1);
;

-- 4. Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT first_name, last_name FROM employee
WHERE reports_to =  ALL(SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards');

-- 5. Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';