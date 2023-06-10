-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 06, 2022 at 04:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(17, 'BKID2129095', 6, 7, 21, 6, 5, 40, '2022-06-06', '2022-06-06', 1),
(19, 'BKID2004172', 6, 7, 19, 5, 3, 6, '2022-06-06', '2022-06-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(24, 9, 'kevin123@gmail.com', 'kevin123', 2),
(25, 10, 'alex123@gmail.com', 'alex1234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'Top Gun: Maverick', 'Tom Cruise, Val Kilmer, Jennifer Connelly, Miles Teller, Glen Powell', 'After more than thirty years of service as one of the Navy’s top aviators, Pete “Maverick” Mitchell (Tom Cruise) is where he belongs.', '2022-05-27', 'images/tim1.jpg', 'https://www.youtube.com/watch?v=giXco2jaZ_4', 0),
(11, 6, 'Doctor Strange in The Multiverse of Madness', 'Benedict Cumberbatch, Elizabeth Olsen, Benedict Wong, Rachel McAdams', 'In Marvel Studios\' \"Doctor Strange in the Multiverse of Madness,\" the MCU unlocks the Multiverse and pushes its boundaries further than ever before.', '2022-05-06', 'images/cherry2.png', 'https://www.youtube.com/watch?v=aWzlQ2N6qqg', 0),
(12, 6, 'Fantastic Beasts: The Secrets of Dumbledore', 'Eddie Redmayne, Jude Law, Mads Mikkelsen', 'Professor Albus Dumbledore (Jude Law) knows the powerful Dark wizard Gellert Grindelwald (Mads Mikkelsen) is moving to seize control of the wizarding world.', '2021-04-15', 'images/mobile1.jpg', 'https://www.youtube.com/watch?v=Y9dr2zw-TXQ', 0),
(13, 6, 'The Batman', 'Robert Pattinson, Zoe Kravitz', 'Batman ventures into Gotham City\'s underworld when a sadistic killer leaves behind a trail of cryptic clues.', '2022-03-04', 'images/bm.jpg', 'https://www.youtube.com/watch?v=mqqft2x_Aa4', 0),
(17, 6, 'Uncharted', 'Tom Holland, Mark Wahlberg, Antonio Banderas, Sophia Ali', 'Street-smart thief Nathan Drake (Tom Holland) is recruited by seasoned treasure hunter Victor \"Sully\" Sullivan (Mark Wahlberg) to recover a fortune lost by Ferdinand Magellan 500 years ago. ', '2022-02-18', 'images/uc.jpg', 'https://www.youtube.com/watch?v=vM-Bja2Gy04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'Thor: Love and Thunder', 'Chris Hemsworth, Natalie Portman, Christian Bale, Tessa Thompson', '2022-07-08', '\"Thor: Love and Thunder\" finds Thor (Chris Hemsworth) on a journey unlike anything he\'s ever faced -- a quest for inner peace.', 'news_images/thor.jpeg'),
(9, 'Jurassic World Dominion', 'Chris Pratt, Bryce Dallas Howard, Laura Dern, Jeff Goldblum', '2022-06-10', 'Chris Pratt and Bryce Dallas Howard are joined by Oscar®-winner Laura Dern, Jeff Goldblum and Sam Neill in Jurassic World Dominion, a bold, timely and breathtaking new adventure that spans the globe.', 'news_images/jwd.jpg'),
(10, 'Avatar: The Way of Water', 'Richard Madden, Salma Hayek, Angelina Jolie, Kit Harrington', '2022-12-16', 'Set more than a decade after the events of the first film, \"Avatar: The Way of Water\" begins to tell the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the l', 'news_images/av.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(9, 'Kevin', 'kevin123@gmail.com', '9051664519', 35, 'gender'),
(10, 'Alex', 'alex123@gmail.com', '9051664519', 28, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 120, 3),
(2, 3, 'Screen 2', 100, 3),
(3, 4, 'Screen 1', 130, 4),
(4, 14, 'Screen1', 60, 3),
(5, 6, 'Demo Screen', 120, 2),
(6, 6, 'IMX Screen', 140, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 1, '2022-05-27', 0, 1),
(20, 20, 6, 11, '2022-05-06', 0, 1),
(21, 19, 6, 12, '2022-04-15', 1, 1),
(22, 18, 6, 13, '2021-03-04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '00:08:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '00:02:00'),
(19, 6, 'First', '06:35:00'),
(20, 6, 'Second', '09:18:00'),
(21, 5, 'Matinee', '20:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'Ealing Movie Centre 1', '5,  Somerset Road', 'Ealing', 'Greater London', 555555),
(4, 'Ealing Movie Centre 2', '7, Grange Road', 'West Ealing', 'Greater London', 555555),
(5, 'Ealing Movie Centre 3', '23, Felix Road', 'West Ealing', 'Greater London', 555555),
(6, 'Ealing Movie Centre 4', '45, Corfton Road', 'Ealing', 'Greater London', 555555);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
