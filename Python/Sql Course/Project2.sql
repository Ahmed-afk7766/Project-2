-- Create Table
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    grade INT
);

-- Insert Sample Data
INSERT INTO Customers (id, name, city, grade) VALUES
(1, 'Ali', 'New York', 120),
(2, 'Sara', 'London', 90),
(3, 'Ahmed', 'New York', 80),
(4, 'John', 'Paris', 110),
(5, 'Zara', 'New York', 150),
(6, 'Mike', 'Chicago', 70);

-- 1. OR condition
SELECT * FROM Customers
WHERE city = 'New York' OR grade > 100;

-- 2. AND condition
SELECT * FROM Customers
WHERE city = 'New York' AND grade > 100;

-- 3. NOT condition
SELECT * FROM Customers
WHERE NOT city = 'New York';

-- 4. BETWEEN (range of grades)
SELECT * FROM Customers
WHERE grade BETWEEN 80 AND 120;

-- 5. IN (multiple cities)
SELECT * FROM Customers
WHERE city IN ('New York', 'London');

-- 6. ORDER BY (sorting)
SELECT * FROM Customers
ORDER BY grade DESC;

-- 7. SELECT specific columns
SELECT name, city FROM Customers
WHERE grade > 100;

-- 8. COUNT (number of customers)
SELECT COUNT(*) AS total_customers
FROM Customers
WHERE grade > 100;

-- 9. DISTINCT (unique cities)
SELECT DISTINCT city FROM Customers;