-- By maxempirr23 
-- 2022

-- Creating the Database
Use master
go
create database University;

-- Creating the Student table
Create table Student(
StudentID int primary key not null,
SponsorshipNo int not null,
Name varchar(30) not null,
);

--Creating the Location table
Create table Location(
LocationID int primary key
);

-- Creating the Physical_Address table
Create table Physical_Address(
ErfNumber varchar primary key not null,
Street char(30),
CityName char(30),
Location int FOREIGN KEY REFERENCES Location(LocationID),-- The column LocationID will reference to the column LocationID of table Location
);

-- Creating the Student_Progress
Create table Student_Progress(
StudentID int FOREIGN KEY REFERENCES Student(StudentID) not null,
Location int FOREIGN KEY REFERENCES Location(LocationID) not null,-- The column LocationID will reference to the column LocationID of table Location
Postal_Address varchar(30) not null,
Phone int primary key not null,
Date_Of_Birth date not null, 
Study_Mode Char(50)not null,
Portal_Address varchar(30)not null,
Gender char(30)not null,
SponsorshipNo int not null,
);

--SELECT Portal_Address FROM Student_Progress;

-- Creating the facaulty table
Create table Facaulty(
Facauty_ID int primary key not null,
Name varchar(30) not null,
Phone int not null,
Course_ID int not null,
Office_location varchar(30),
);

-- Creating the Course table
Create table Course(
Course_ID int primary key not null,
Description varchar(30)not null,
Level int not null,
Number_Of_hours int not null,
Course_Name char(30) not null,
Exam varchar(30) not null,
Grade_Report varchar(50) not null,
);