CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(30),
    percentage DECIMAL(5,2)
);

INSERT INTO Students VALUES
(1, 'Atharav', 'Delhi', 92.5),
(2, 'Nandini', 'Delhi', 98.0),
(3, 'Sahil', 'Kolkata', 93.0),
(4, 'Neha', 'Kolkata', 98.2),
(5, 'Akash', 'Mumbai', 94.7),
(6, 'Diksha', 'Mumbai', 95.0);

select * from students;

SELECT city, COUNT(*) AS above_95
FROM Students
WHERE percentage > 95
GROUP BY city;


SELECT city,
SUM(CASE
    WHEN percentage > 95 THEN 1
    ELSE 0
END) AS above_95
FROM Students
GROUP BY city;


SELECT city,
AVG(CASE
    WHEN percentage > 95 THEN percentage
    ELSE NULL
END) AS average
FROM Students
GROUP BY city
ORDER BY average DESC;
