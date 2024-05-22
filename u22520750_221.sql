-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 02:54 AM
-- Server version: 10.3.39-MariaDB-0+deb10u2
-- PHP Version: 7.3.31-1~deb10u5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u22520750_221`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACTORS`
--

CREATE TABLE `ACTORS` (
  `actor_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ACTORS`
--

INSERT INTO `ACTORS` (`actor_id`, `employee_id`, `gender`, `first_name`, `last_name`, `title_id`, `character_name`) VALUES
(1, 1, 'M', 'Tom', 'Hanks', 5, 'Forrest Gump'),
(2, 2, 'F', 'Scarlett', 'Johansson', 8, 'Natasha Romanoff / Black Widow'),
(3, 3, 'M', 'Leonardo', 'DiCaprio', 8, 'Cobb'),
(4, 4, 'F', 'Anne', 'Hathaway', 10, 'Selina Kyle / Catwoman'),
(5, 5, 'M', 'Robert', 'Downey Jr.', 2, 'Tony Stark / Iron Man'),
(6, 6, 'F', 'Emma', 'Stone', 4, 'Wichita'),
(7, 7, 'M', 'Johnny', 'Depp', 1, 'Edward Scissorhands'),
(8, 8, 'F', 'Jennifer', 'Lawrence', 3, 'Katniss Everdeen'),
(9, 9, 'M', 'Chris', 'Hemsworth', 7, 'Thor'),
(10, 10, 'F', 'Angelina', 'Jolie', 9, 'Lara Croft');

-- --------------------------------------------------------

--
-- Table structure for table `APPEARS_ON`
--

CREATE TABLE `APPEARS_ON` (
  `title_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `title_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `APPEARS_ON`
--

INSERT INTO `APPEARS_ON` (`title_id`, `employee_id`, `role`, `title_name`) VALUES
(5, 1, 'M', 'Forrest Gump'),
(8, 2, 'F', 'Natasha Romanoff / Black Widow'),
(8, 3, 'M', 'Cobb'),
(10, 4, 'F', 'Selina Kyle / Catwoman'),
(2, 5, 'M', 'Tony Stark / Iron Man'),
(4, 6, 'F', 'Wichita'),
(1, 7, 'M', 'Edward Scissorhands'),
(3, 8, 'F', 'Katniss Everdeen'),
(7, 9, 'M', 'Thor'),
(9, 10, 'F', 'Lara Croft'),
(1, 21, 'M', 'The Shawshank Redemption'),
(3, 22, 'M', 'The Dark Knight'),
(4, 23, 'M', 'Pulp Fiction'),
(10, 24, 'F', 'Goodfellas'),
(2, 25, 'M', 'The Godfather'),
(7, 26, 'M', 'The Lord of the Rings: The Return of the King'),
(8, 27, 'F', 'Inception'),
(9, 28, 'M', 'Fight Club'),
(5, 29, 'M', 'Forrest Gump'),
(6, 30, 'F', 'The Matrix');

-- --------------------------------------------------------

--
-- Table structure for table `CREDITS`
--

CREATE TABLE `CREDITS` (
  `credit_id` int(11) NOT NULL,
  `production_company_name` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `employees` varchar(255) DEFAULT NULL,
  `role_of_employee` varchar(255) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CREDITS`
--

INSERT INTO `CREDITS` (`credit_id`, `production_company_name`, `created_date`, `employees`, `role_of_employee`, `employee_id`, `title_id`) VALUES
(1, 'Paramount Pictures', '2022-05-01', 'Tom Hanks, Scarlett Johansson', 'Actor', 1, 5),
(2, 'Warner Bros. Pictures', '2022-05-05', 'Leonardo DiCaprio, Anne Hathaway', 'Actor', 3, 8),
(3, '20th Century Fox', '2022-05-10', 'Robert Downey Jr., Emma Stone', 'Actor', 5, 10),
(4, 'New Line Cinema', '2022-05-15', 'Johnny Depp, Jennifer Lawrence', 'Actor', 7, 3),
(5, 'Columbia Pictures', '2022-05-20', 'Chris Hemsworth, Angelina Jolie', 'Actor', 9, 7),
(6, 'Universal Studios', '2022-05-25', 'Brad Pitt, Charlize Theron', 'Actor', 11, 2),
(7, 'Sony Pictures Releasing', '2022-05-30', 'Natalie Portman, Denzel Washington', 'Actor', 12, 6),
(8, 'Lionsgate', '2022-06-01', 'Meryl Streep, Samuel L. Jackson', 'Actor', 14, 1),
(9, 'Searchlight Pictures, Inc.', '2022-06-05', 'Will Smith, Cate Blanchett', 'Actor', 17, 4),
(10, 'Amazon Studios', '2022-06-10', 'George Clooney, Julia Roberts', 'Actor', 19, 9);

-- --------------------------------------------------------

--
-- Table structure for table `DIRECTORS`
--

CREATE TABLE `DIRECTORS` (
  `director_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DIRECTORS`
--

INSERT INTO `DIRECTORS` (`director_id`, `employee_id`, `gender`, `first_name`, `last_name`, `title_id`) VALUES
(1, 21, 'M', 'Steven', 'Spielberg', 1),
(2, 22, 'M', 'Christopher', 'Nolan', 3),
(3, 23, 'M', 'Quentin', 'Tarantino', 4),
(4, 24, 'F', 'Kathryn', 'Bigelow', 6),
(5, 25, 'M', 'Martin', 'Scorsese', 2),
(6, 26, 'M', 'James', 'Cameron', 7),
(7, 27, 'F', 'Greta', 'Gerwig', 8),
(8, 28, 'M', 'Ridley', 'Scott', 9),
(9, 29, 'M', 'David', 'Fincher', 5),
(10, 30, 'F', 'Sofia', 'Coppola', 10);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEES`
--

CREATE TABLE `EMPLOYEES` (
  `employee_id` int(11) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEES`
--

INSERT INTO `EMPLOYEES` (`employee_id`, `gender`, `first_name`, `last_name`) VALUES
(11, 'M', 'Brad', 'Pitt'),
(12, 'F', 'Natalie', 'Portman'),
(13, 'M', 'Denzel', 'Washington'),
(14, 'F', 'Meryl', 'Streep'),
(15, 'M', 'Samuel', 'Jackson'),
(16, 'F', 'Charlize', 'Theron'),
(17, 'M', 'Will', 'Smith'),
(18, 'F', 'Cate', 'Blanchett'),
(19, 'M', 'George', 'Clooney'),
(20, 'F', 'Julia', 'Roberts');

-- --------------------------------------------------------

--
-- Table structure for table `MOVIE`
--

CREATE TABLE `MOVIE` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `length` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MOVIE`
--

INSERT INTO `MOVIE` (`title_id`, `title_name`, `genre`, `length`) VALUES
(1, 'The Shawshank Redemption', 'Drama', 142),
(2, 'The Godfather', 'Crime, Drama', 175),
(3, 'The Dark Knight', 'Action, Crime, Drama', 152),
(4, 'Pulp Fiction', 'Crime, Drama', 154),
(5, 'Forrest Gump', 'Drama, Romance', 142),
(6, 'The Matrix', 'Action, Sci-Fi', 136),
(7, 'The Lord of the Rings: The Return of the King', 'Action, Adventure, Drama', 201),
(8, 'Inception', 'Action, Adventure, Sci-Fi', 148),
(9, 'Fight Club', 'Drama', 139),
(10, 'Goodfellas', 'Biography, Crime, Drama', 146);

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCES`
--

CREATE TABLE `PRODUCES` (
  `title_id` int(11) DEFAULT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `production_id` int(11) NOT NULL,
  `production_company_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PRODUCES`
--

INSERT INTO `PRODUCES` (`title_id`, `title_name`, `production_id`, `production_company_name`, `date`) VALUES
(1, 'The Shawshank Redemption', 1, 'Castle Rock Entertainment', '2023-01-15'),
(2, 'The Godfather', 2, 'Paramount Pictures', '2022-12-20'),
(3, 'The Dark Knight', 3, 'Warner Bros. Pictures', '2023-05-10'),
(4, 'Pulp Fiction', 4, 'Miramax Films', '2022-11-02'),
(5, 'Forrest Gump', 5, 'Paramount Pictures', '2023-09-18'),
(6, 'The Matrix', 6, 'Warner Bros. Pictures', '2022-10-30'),
(7, 'The Lord of the Rings: The Return of the King', 7, 'New Line Cinema', '2023-07-25'),
(8, 'Inception', 8, 'Warner Bros. Pictures', '2022-08-08'),
(9, 'Fight Club', 9, '20th Century Fox', '2023-04-12'),
(10, 'Goodfellas', 10, 'Warner Bros. Pictures', '2022-07-15'),
(11, 'Breaking Bad', 11, 'Castle Rock Entertainment', '2013-01-20'),
(12, 'Game of Thrones', 12, 'HBO', '2011-04-17'),
(13, 'Stranger Things', 13, 'Netflix', '2016-07-15'),
(14, 'Friends', 14, 'NBC', '1994-09-22'),
(15, 'The Office', 15, 'NBC', '2005-03-24'),
(16, 'Sherlock', 16, 'BBC', '2010-07-25'),
(17, 'The Mandalorian', 17, 'Lucasfilm Ltd.', '2019-11-12'),
(18, 'The Crown', 18, 'Netflix', '2016-11-04'),
(19, 'Black Mirror', 19, 'Netflix', '2011-12-04'),
(20, 'Narcos', 20, 'Netflix', '2015-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCTION_COMPANY`
--

CREATE TABLE `PRODUCTION_COMPANY` (
  `company_id` int(11) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PRODUCTION_COMPANY`
--

INSERT INTO `PRODUCTION_COMPANY` (`company_id`, `title_id`, `company_name`) VALUES
(1, 1, 'Castle Rock Entertainment'),
(2, 2, 'Paramount Pictures'),
(3, 3, 'Warner Bros. Pictures'),
(4, 4, 'Miramax Films'),
(5, 5, 'Paramount Pictures'),
(6, 6, 'Warner Bros. Pictures'),
(7, 7, 'New Line Cinema'),
(8, 8, 'Warner Bros. Pictures'),
(9, 9, '20th Century Fox'),
(10, 10, 'Warner Bros. Pictures');

-- --------------------------------------------------------

--
-- Table structure for table `RATINGS`
--

CREATE TABLE `RATINGS` (
  `rating_id` int(11) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `votes` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RATINGS`
--

INSERT INTO `RATINGS` (`rating_id`, `title_id`, `user_id`, `votes`, `score`) VALUES
(1, 1, 1, 'up, down', 4),
(2, 2, 2, 'up, down', 5),
(3, 3, 3, 'up, down', 4),
(4, 4, 4, 'up, down', 3),
(5, 5, 5, 'up, down', 4),
(6, 6, 6, 'up, down', 5),
(7, 7, 7, 'up, down', 4),
(8, 8, 8, 'up, down', 5),
(9, 9, 9, 'up, down', 3),
(10, 10, 10, 'up, down', 4);

-- --------------------------------------------------------

--
-- Table structure for table `SERIES`
--

CREATE TABLE `SERIES` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SERIES`
--

INSERT INTO `SERIES` (`title_id`, `title_name`, `genre`, `seasons`) VALUES
(11, 'Breaking Bad', 'Crime, Drama, Thriller', 5),
(12, 'Game of Thrones', 'Action, Adventure, Drama', 8),
(13, 'Stranger Things', 'Drama, Fantasy, Horror', 3),
(14, 'Friends', 'Comedy, Romance', 10),
(15, 'The Office', 'Comedy', 9),
(16, 'Sherlock', 'Crime, Drama, Mystery', 4),
(17, 'The Mandalorian', 'Action, Adventure, Fantasy', 2),
(18, 'The Crown', 'Biography, Drama, History', 4),
(19, 'Black Mirror', 'Drama, Sci-Fi, Thriller', 5),
(20, 'Narcos', 'Biography, Crime, Drama', 3);

-- --------------------------------------------------------

--
-- Table structure for table `TITLES`
--

CREATE TABLE `TITLES` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TITLES`
--

INSERT INTO `TITLES` (`title_id`, `title_name`, `genre`, `seasons`) VALUES
(1, 'The Shawshank Redemption', 'Drama', NULL),
(2, 'The Godfather', 'Crime, Drama', NULL),
(3, 'The Dark Knight', 'Action, Crime, Drama', NULL),
(4, 'Pulp Fiction', 'Crime, Drama', NULL),
(5, 'Forrest Gump', 'Drama, Romance', NULL),
(6, 'The Matrix', 'Action, Sci-Fi', NULL),
(7, 'The Lord of the Rings: The Return of the King', 'Action, Adventure, Drama', NULL),
(8, 'Inception', 'Action, Adventure, Sci-Fi', NULL),
(9, 'Fight Club', 'Drama', NULL),
(10, 'Goodfellas', 'Biography, Crime, Drama', NULL),
(11, 'Breaking Bad', 'Crime, Drama, Thriller', 5),
(12, 'Game of Thrones', 'Action, Adventure, Drama', 8),
(13, 'Stranger Things', 'Drama, Fantasy, Horror', 3),
(14, 'Friends', 'Comedy, Romance', 10),
(15, 'The Office', 'Comedy', 9),
(16, 'Sherlock', 'Crime, Drama, Mystery', 4),
(17, 'The Mandalorian', 'Action, Adventure, Fantasy', 2),
(18, 'The Crown', 'Biography, Drama, History', 4),
(19, 'Black Mirror', 'Drama, Sci-Fi, Thriller', 5),
(20, 'Narcos', 'Biography, Crime, Drama', 3);

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`user_id`, `name`, `surname`, `email`, `password`) VALUES
(1, 'John', 'Doe', 'john@example.com', 'password1'),
(2, 'Jane', 'Doe', 'jane@example.com', 'password2'),
(3, 'Alice', 'Smith', 'alice@example.com', 'password3'),
(4, 'Bob', 'Jones', 'bob@example.com', 'password4'),
(5, 'Charlie', 'Brown', 'charlie@example.com', 'password5'),
(6, 'Emma', 'Johnson', 'emma@example.com', 'password6'),
(7, 'Michael', 'Williams', 'michael@example.com', 'password7'),
(8, 'Sophia', 'Miller', 'sophia@example.com', 'password8'),
(9, 'William', 'Taylor', 'william@example.com', 'password9'),
(10, 'Olivia', 'Anderson', 'olivia@example.com', 'password10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACTORS`
--
ALTER TABLE `ACTORS`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `APPEARS_ON`
--
ALTER TABLE `APPEARS_ON`
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `CREDITS`
--
ALTER TABLE `CREDITS`
  ADD PRIMARY KEY (`credit_id`),
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `DIRECTORS`
--
ALTER TABLE `DIRECTORS`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `MOVIE`
--
ALTER TABLE `MOVIE`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `PRODUCES`
--
ALTER TABLE `PRODUCES`
  ADD PRIMARY KEY (`production_id`);

--
-- Indexes for table `PRODUCTION_COMPANY`
--
ALTER TABLE `PRODUCTION_COMPANY`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `RATINGS`
--
ALTER TABLE `RATINGS`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `title_id` (`title_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `SERIES`
--
ALTER TABLE `SERIES`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `TITLES`
--
ALTER TABLE `TITLES`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACTORS`
--
ALTER TABLE `ACTORS`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `CREDITS`
--
ALTER TABLE `CREDITS`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `DIRECTORS`
--
ALTER TABLE `DIRECTORS`
  MODIFY `director_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `PRODUCTION_COMPANY`
--
ALTER TABLE `PRODUCTION_COMPANY`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `RATINGS`
--
ALTER TABLE `RATINGS`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACTORS`
--
ALTER TABLE `ACTORS`
  ADD CONSTRAINT `ACTORS_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `MOVIE` (`title_id`) ON DELETE CASCADE;

--
-- Constraints for table `APPEARS_ON`
--
ALTER TABLE `APPEARS_ON`
  ADD CONSTRAINT `APPEARS_ON_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `TITLES` (`title_id`);

--
-- Constraints for table `CREDITS`
--
ALTER TABLE `CREDITS`
  ADD CONSTRAINT `CREDITS_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `MOVIE` (`title_id`) ON DELETE CASCADE;

--
-- Constraints for table `DIRECTORS`
--
ALTER TABLE `DIRECTORS`
  ADD CONSTRAINT `DIRECTORS_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `MOVIE` (`title_id`) ON DELETE CASCADE;

--
-- Constraints for table `PRODUCTION_COMPANY`
--
ALTER TABLE `PRODUCTION_COMPANY`
  ADD CONSTRAINT `PRODUCTION_COMPANY_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `MOVIE` (`title_id`) ON DELETE CASCADE;

--
-- Constraints for table `RATINGS`
--
ALTER TABLE `RATINGS`
  ADD CONSTRAINT `RATINGS_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `MOVIE` (`title_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATINGS_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
