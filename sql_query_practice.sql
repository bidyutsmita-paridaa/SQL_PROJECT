USE student_management;

-- 1. Display all students
SELECT * FROM student;

-- 2. Display students from the CSE branch
SELECT * FROM student
WHERE branch = 'CSE';

-- 3. Display students older than 20 years
SELECT * FROM student
WHERE age > 20;

-- 4. Sort students by name in ascending order
SELECT * FROM student
ORDER BY name ASC;

-- 5. Count students in each branch
SELECT branch, COUNT(*) AS student_count
FROM student
GROUP BY branch;

-- 6. Find the highest and lowest age
SELECT MAX(age) AS highest_age,
       MIN(age) AS lowest_age
FROM student;

-- 7. Display students whose names start with 'A'
SELECT * FROM student
WHERE name LIKE 'A%';

-- 8. Display branches with more than two students
SELECT branch, COUNT(*) AS student_count
FROM student
GROUP BY branch
HAVING COUNT(*) > 2;