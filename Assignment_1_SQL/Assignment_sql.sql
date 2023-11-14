--1.Create a DATABASE with name Programs
CREATE DATABASE Programs;
USE Programs

--2.Create table with specific attributes.
--Student:Name,RegNumber,email,Phone
CREATE TABLE Student(
    Name VARCHAR(60),
    RegNumber INT,
    email VARCHAR(50),
    Phone NUMERIC(10)
);

--Instructor:Name,EmpID,email,Designation,Phone
CREATE TABLE Instructor(
    Name VARCHAR(60),
    EmpID INT,
    email VARCHAR(50),
    Designation VARCHAR(20),
    Phone NUMERIC(10)
);

--Course:Name,CourseID,ContactHours,InstID
CREATE TABLE Course(
    Name VARCHAR(60),
    CourseID INT,
    ContactHours INT,
    InstID INT
);

--Take:StudentID,CourseID,Grade
CREATE TABLE Take(
    StudentID INT,
    CourseID INT,
    Grade CHAR
);

--Populate data into all tables
INSERT INTO Student (Name,RegNumber, email, Phone) VALUES 
("Chaitanya",05,"chaith@gmail.com","0123475869"),
("MAnthan",12,"manthan@gmail.com","1234567890");

INSERT INTO Instructor (Name, EmpID,email, Designation, Phone) VALUES 
("Ganapathi",07,"ganapthi@manipla.com","Head Teacher","1234567890"),
("Suresh",01,"suresh@manipla.com","Assistant Teacher","12473587690");

 

INSERT INTO Course (Name,CourseID,ContactHours,InstID) VALUES 
("Computer SCience",01,35,07),
("Data SCience",02,60,01);

 

INSERT INTO Take (StudentID,CourseID,Grade) VALUES 
(05,02,"10"),
(12,01,"8");

--4)Create empty table NewCourse. Structure of this new table should be same as existing table “Course”.

--5)Transfer data from table Course to table NewCourse.
CREATE TABLE NewCourse as 
SELECT * from Course;