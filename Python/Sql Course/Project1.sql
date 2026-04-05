-- Create Table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);

-- Insert Sample Data
INSERT INTO Students (id, name, age, grade) VALUES
(1, 'Ali', 18, 'A'),
(2, 'Sara', 19, 'B'),
(3, 'Ahmed', 18, 'A'),
(4, 'Zara', 20, 'C');

-- Fetch All Data
SELECT * FROM Students;

-- Fetch Students with age = 18
SELECT * FROM Students
WHERE age = 18;

-- Fetch Students with grade 'A'
SELECT name, grade FROM Students
WHERE grade = 'A';