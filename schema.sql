-- ===================================================================
-- Database Setup Script: Student Management Backend
-- Database: student_management_db
-- ===================================================================

-- 1. Create Database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS student_management_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE student_management_db;

-- ===================================================================
-- 2. Table: users
-- Stores registered user credentials with BCrypt hashed passwords
-- ===================================================================
CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ===================================================================
-- 3. Table: students
-- Stores student information (name, email, branch, year)
-- ===================================================================
CREATE TABLE IF NOT EXISTS students (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    branch VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ===================================================================
-- 4. Sample Seed Data (Optional for testing / demo)
-- ===================================================================
INSERT INTO students (name, email, branch, year) VALUES
('Aarav Sharma', 'aarav.sharma@college.edu', 'Computer Science', 3),
('Diya Patel', 'diya.patel@college.edu', 'Information Technology', 2),
('Rohan Verma', 'rohan.verma@college.edu', 'Mechanical Engineering', 4),
('Sneha Reddy', 'sneha.reddy@college.edu', 'Electronics & Communication', 1)
ON DUPLICATE KEY UPDATE name = VALUES(name);

-- ===================================================================
-- Verification Queries
-- ===================================================================
-- SELECT * FROM users;
-- SELECT * FROM students;
