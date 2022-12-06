-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name, artist_id)
VALUES ('aaliyah', '1234'),
('charlotte day wilson', '5678'),
('h.e.r', '9123');

-- Select 10 artists in reverse alphabetical order.
SELECT name FROM artist
ORDER BY name DESC
LIMIT (10);

-- Select 5 artists in alphabetical order.
SELECT name FROM artist
ORDER BY name
LIMIT (5);

-- Select all artists that start with the word ‘Black’.
SELECT name FROM artist
WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT name FROM artist
WHERE name LIKE '%Black%';