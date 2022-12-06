-- 1. CREATE TABLE
CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  age integer,
  height integer,
  city VARCHAR(30),
  favorite_color VARCHAR(20)
 );

-- 2.  ADD 5 PEOPLE TO TABLE
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Taryn', 33, 167, 'Dallas', 'Purple'),
('Brittani', 32, 177, 'Austin', 'Blue'),
('Akil', 10, 110, 'Dallas', 'Blue'),
('Roland', 9, 88, 'Austin', 'Red'),
('Mya', 23, 110, 'Dallas', 'Green');

-- 3. Select all the people in the person table by height from tallest to shortest.
SELECT name, height FROM person
ORDER BY height DESC;

-- 4. Select all the people in the person table by height from shortest to tallest.
SELECT name, height FROM person
ORDER BY height;

-- 5. Select all the people in the person table by age from oldest to youngest.
SELECT name, age FROM person
ORDER BY age DESC;

-- 6. Select all the people in the person table older than age 20.
SELECT name, age FROM person
WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18.
SELECT name, age FROM person
WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30.
SELECT name, age FROM person
WHERE age < 20 OR age > 30;

-- 9. Select all the people in the person table that are not 27 (use not equals).
SELECT name, age FROM person
WHERE age != 27;

-- 10. Select all the people in the person table where their favorite color is not red.
SELECT name, favorite_color FROM person
WHERE favorite_color != 'red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue.
SELECT name, favorite_color FROM person
WHERE favorite_color != 'blue' AND favorite_color != 'red';

-- 12. Select all the people in the person table where their favorite color is orange or green.
SELECT name, favorite_color FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT name, favorite_color FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT name, favorite_color FROM person
WHERE favorite_color IN ('yellow', 'purple');
