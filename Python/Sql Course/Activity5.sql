CREATE TABLE IF NOT EXISTS NOBEL_WIN (
     YEAR INTEGER,
     SUBJECT TEXT,
     WINNER TEXT,
     COUNTRY TEXT,
     CATEGORY TEXT
); 

INSERT INTO NOBEL_WIN (YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY) VALUES
(1970, 'Physics', 'Hannes Alfvén', 'Sweden', 'Nobel Prize in Physics'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Nobel Prize in Chemistry'),
(1972, 'Literature', 'Heinrich Böll', 'Germany', 'Nobel Prize in Literature'),
(1973, 'Peace', 'Henry Kissinger and Le Duc Tho', 'United States and Vietnam', 'Nobel Peace Prize'),
(1974, 'Economics', 'Friedrich Hayek and Gunnar Myrdal', 'Austria and Sweden', 'Nobel Memorial Prize in Economic Sciences'),
(1980, 'BIOLOGY', 'MARTIN', 'USA', 'PRESIDENT'),
(1981, 'PHYSIOLOGY', 'HANNAH', 'HUNGARY', 'SCIENTIST');

SELECT *
FROM NOBEL_WIN
WHERE SUBJECT NOT LIKE 'E%';





