CREATE TABLE IF NOT EXISTS Restaurant(
    name TEXT,
    neighborhood TEXT,
    cuisine TEXT,
    review REAL,
    price TEXT,
    health TEXT
);

INSERT INTO Restaurant (name, neighborhood, cuisine, review, price, health)
VALUES
      ('Peter', 'Brooklyn', 'Italian', 4.5, '$$$', 'A'),
      ('Sally', 'Manhattan', 'French', 4.0, '$$$$', 'B'),
      ('John', 'Queens', 'Chinese', 3.5, '$$', 'C'),
      ('Emily', 'Bronx', 'Mexican', 4.2, '$', 'A'),
      ('Michael', 'Staten Island', 'American', 3.8, '$$$', 'B');

SELECT DISTINCT neighborhood
FROM Restaurant;

SELECT *
FROM RestaurantWHERE cuisine = 'Chinese';

SELECT *
FROM Restaurant
WHERE review >= 4.0;

SELECT *
FROM Restaurant
WHERE cuisine = 'Italian'
  AND price = '$$$';

SELECT *
FROM Restaurant
WHERE price = '$$$';

SELECT *
FROM Restaurant
WHERE name LIKE '%Candy%';

Select *
FROM Restaurant
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

SELECT *
FROM Restaurant
WHERE health = '' OR health is NULL;

SELECT *
From Restaurant
ORDER BY review DESC;
LIMIT 4;

