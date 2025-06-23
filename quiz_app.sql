
-- Create database
CREATE DATABASE IF NOT EXISTS quizapp;
USE quizapp;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    isAdmin BOOLEAN DEFAULT FALSE
);

-- Create questions table
CREATE TABLE IF NOT EXISTS questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    optionA VARCHAR(255),
    optionB VARCHAR(255),
    optionC VARCHAR(255),
    optionD VARCHAR(255),
    correctOption VARCHAR(255)
);

-- Sample data
INSERT INTO users (username, password, isAdmin) VALUES 
('Prashant', '202cb962ac59075b964b07152d234b70', false);  -- password: 123

INSERT INTO questions (question, optionA, optionB, optionC, optionD, correctOption) VALUES
('What is the capital of India?', 'Delhi', 'Mumbai', 'Kolkata', 'Chennai', 'Delhi'),
('Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 'Mars'),
('Who is the founder of Microsoft?', 'Steve Jobs', 'Bill Gates', 'Mark Zuckerberg', 'Elon Musk', 'Bill Gates'),
('What is the largest mammal?', 'Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus', 'Blue Whale');
