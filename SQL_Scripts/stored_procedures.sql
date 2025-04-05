-- Stored procedure to get student enrollment summary
DELIMITER //
CREATE PROCEDURE GetStudentEnrollments(IN stu_id INT)
BEGIN
    SELECT s.Name, c.CourseName, e.EnrollmentDate
    FROM Students s
    JOIN Enrollments e ON s.StudentID = e.StudentID
    JOIN Courses c ON e.CourseID = c.CourseID
    WHERE s.StudentID = stu_id;
END //
DELIMITER ;

