create database oism;

use oism;

CREATE TABLE `admin` (
  `adminid` int NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
);

CREATE TABLE `books` (
  `book_id` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `availability` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
);

CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Number` varchar(45) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `results` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Subject` varchar(25) DEFAULT NULL,
  `Marks` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
);

CREATE TABLE `student` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
);

CREATE TABLE `subjects` (
  `subjectname` varchar(45) NOT NULL,
  `subjectcode` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `grade` varchar(45) NOT NULL,
  `straem` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`subjectcode`)
);