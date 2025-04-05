-- 1. List all students enrolled in a specific course (e.g., CourseID = 201)
SELECT s.StudentID, s.Name
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID = 201;

-- 2. Retrieve course details along with the instructor’s name
SELECT c.CourseID, c.CourseName, c.Credits, i.Name AS Instructor
FROM Courses c
JOIN Instructors i ON c.InstructorID = i.InstructorID;

-- 3. Find courses with the highest number of enrollments
SELECT CourseID, COUNT(*) AS EnrollmentCount
FROM Enrollments
GROUP BY CourseID
ORDER BY EnrollmentCount DESC
LIMIT 1;

-- 4. Update an instructor’s details
UPDATE Instructors
SET Name = 'Dr. Smith Jr.'
WHERE InstructorID = 101;

-- 5. Generate a report of all enrollments in the last semester
SELECT * FROM Enrollments
WHERE EnrollmentDate BETWEEN '2024-01-01' AND '2024-06-30';

-- 6. Delete a student enrollment record
DELETE FROM Enrollments
WHERE EnrollmentID = 6;

-- 7. Get students who have enrolled in more than 3 courses
SELECT StudentID, COUNT(*) AS CourseCount
FROM Enrollments
GROUP BY StudentID
HAVING CourseCount > 3;

-- 8. Identify courses with low enrollment (less than 2)
SELECT CourseID, COUNT(*) AS Total
FROM Enrollments
GROUP BY CourseID
HAVING Total < 2;

-- 9. Retrieve instructors who teach multiple courses
SELECT InstructorID, COUNT(*) AS CourseCount
FROM Courses
GROUP BY InstructorID
HAVING CourseCount > 1;

-- 10. Find students who have taken the most credits
SELECT s.StudentID, s.Name, SUM(c.Credits) AS TotalCredits
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY s.StudentID, s.Name
ORDER BY TotalCredits DESC
LIMIT 1;

