CREATE DATABASE IF NOT EXISTS teacher_resource_hub;
USE teacher_resource_hub;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    class_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY(student_id) REFERENCES students(id)
);

CREATE TABLE IF NOT EXISTS quizzes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    date DATE
);

CREATE TABLE IF NOT EXISTS quiz_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT,
    student_id INT,
    score FLOAT,
    FOREIGN KEY(quiz_id) REFERENCES quizzes(id),
    FOREIGN KEY(student_id) REFERENCES students(id)
);
