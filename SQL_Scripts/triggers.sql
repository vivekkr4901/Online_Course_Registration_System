-- Trigger to log deletion of enrollments
CREATE TABLE Enrollment_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    DeletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER AfterEnrollmentDelete
AFTER DELETE ON Enrollments
FOR EACH ROW
BEGIN
    INSERT INTO Enrollment_Log(StudentID, CourseID)
    VALUES (OLD.StudentID, OLD.CourseID);
END //
DELIMITER ;

