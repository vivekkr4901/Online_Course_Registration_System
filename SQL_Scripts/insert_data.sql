-- Insert Students
INSERT INTO Students VALUES
(1, 'Alice', 20, 'alice@example.com'),
(2, 'Bob', 21, 'bob@example.com'),
(3, 'Charlie', 22, 'charlie@example.com'),
(4, 'Diana', 20, 'diana@example.com');

-- Insert Instructors
INSERT INTO Instructors VALUES
(101, 'Dr. Smith', 'Computer Science'),
(102, 'Dr. John', 'Mathematics'),
(103, 'Dr. Lisa', 'Physics');

-- Insert Courses
INSERT INTO Courses VALUES
(201, 'Database Systems', 101, 4),
(202, 'Calculus', 102, 3),
(203, 'Quantum Physics', 103, 5),
(204, 'Operating Systems', 101, 4);

-- Insert Enrollments
INSERT INTO Enrollments VALUES
(1, 1, 201, '2024-01-15'),
(2, 1, 202, '2024-01-17'),
(3, 2, 201, '2024-01-20'),
(4, 2, 203, '2024-01-21'),
(5, 3, 202, '2024-01-22'),
(6, 3, 204, '2024-01-23'),
(7, 4, 201, '2024-01-25'),
(8, 4, 202, '2024-01-26'),
(9, 4, 203, '2024-01-27'),
(10, 4, 204, '2024-01-28');

