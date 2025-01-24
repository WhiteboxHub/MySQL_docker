-- Create database
CREATE DATABASE IF NOT EXISTS training_management;

USE training_management;

-- Create tables
-- 1. Course Table
CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL COMMENT 'Name of the course',
    description TEXT COMMENT 'Description of the course'
);

-- 2. Subject Table
CREATE TABLE subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL COMMENT 'Name of the subject',
    description TEXT COMMENT 'Description of the subject'
);

-- 3. Course-Subject Table
CREATE TABLE course_subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject(id) ON DELETE CASCADE
);

-- 4. Student Table
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrolled_date DATE COMMENT 'Date the student enrolled'
);

-- 5. Auth Table
CREATE TABLE auth (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE
);

-- 6. Enrollment Table
CREATE TABLE enrollment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE
);

-- Insert dummy data into the Course table
INSERT INTO course (name, description) VALUES
('Mathematics', 'A course on advanced mathematical concepts.'),
('Physics', 'Introduction to classical and modern physics.'),
('Chemistry', 'Study of chemical reactions and properties.'),
('Biology', 'Understanding the living world and organisms.'),
('Computer Science', 'Foundations of programming and algorithms.'),
('History', 'Exploring historical events and cultures.'),
('English Literature', 'Study of English prose, poetry, and drama.'),
('Economics', 'Principles of economics and market dynamics.'),
('Philosophy', 'Critical thinking and philosophical ideas.'),
('Art', 'Creative expression through various art forms.');

-- Insert dummy data into the Subject table
INSERT INTO subject (name, description) VALUES
('Algebra', 'Advanced algebraic equations and theories.'),
('Thermodynamics', 'Study of heat, work, and energy.'),
('Organic Chemistry', 'Chemistry of carbon compounds.'),
('Genetics', 'Understanding hereditary and variation in organisms.'),
('Data Structures', 'Efficient organization and manipulation of data.'),
('World History', 'Key events shaping the modern world.'),
('Shakespearean Plays', 'Analysis of plays by William Shakespeare.'),
('Microeconomics', 'Study of economic behavior in small markets.'),
('Ethics', 'Moral philosophy and ethical reasoning.'),
('Drawing', 'Basics of drawing and sketching.');

-- Insert dummy data into the Course-Subject table
INSERT INTO course_subject (course_id, subject_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Insert dummy data into the Student table
INSERT INTO student (first_name, last_name, email, enrolled_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-01-20'),
('Michael', 'Brown', 'michael.brown@example.com', '2023-02-01'),
('Emily', 'Davis', 'emily.davis@example.com', '2023-02-10'),
('Daniel', 'Garcia', 'daniel.garcia@example.com', '2023-02-15'),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '2023-03-01'),
('James', 'Wilson', 'james.wilson@example.com', '2023-03-05'),
('Olivia', 'Anderson', 'olivia.anderson@example.com', '2023-03-12'),
('William', 'Taylor', 'william.taylor@example.com', '2023-03-20'),
('Ava', 'Thomas', 'ava.thomas@example.com', '2023-03-25');

-- Insert dummy data into the Auth table
INSERT INTO auth (student_id, username, password_hash) VALUES
(1, 'john_doe', 'password123'),
(2, 'jane_smith', 'pass1234'),
(3, 'michael_b', 'securepass'),
(4, 'emily_d', 'mypassword'),
(5, 'daniel_g', 'letmein'),
(6, 'sophia_m', 'admin123'),
(7, 'james_w', 'pass2023'),
(8, 'olivia_a', 'newpassword'),
(9, 'william_t', 'randompass'),
(10, 'ava_t', 'ava12345');

-- Insert dummy data into the Enrollment table
INSERT INTO enrollment (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-01-16'),
(2, 2, '2023-01-21'),
(3, 3, '2023-02-02'),
(4, 4, '2023-02-11'),
(5, 5, '2023-02-16'),
(6, 6, '2023-03-02'),
(7, 7, '2023-03-06'),
(8, 8, '2023-03-13'),
(9, 9, '2023-03-21'),
(10, 10, '2023-03-26');
