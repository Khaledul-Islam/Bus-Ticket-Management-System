-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 04:53 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `type` varchar(25) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `action`, `type`, `date`) VALUES
(1, 'User - 15 redeemed coupon Coupon ID - sh788911', 'redeem_coupon', '1574616342'),
(2, 'User - 15 redeemed coupon Coupon ID - sh187321', 'redeem_coupon', '1574616396'),
(3, 'User - 2 redeemed coupon Coupon ID - qw620296', 'redeem_coupon', '1574616624'),
(4, 'User - 17 redeemed coupon Coupon ID - sh362078', 'redeem_coupon', '1574617294'),
(5, 'User - 17reserve Seat ID - 43 on Journey ID - 2', 'reserve', '1574652407'),
(6, 'User - 17 redeemed coupon Coupon ID - qw758411', 'redeem_coupon', '1574652429'),
(7, 'User - 17reserve Seat ID - 18 on Journey ID - 1', 'reserve', '1574652452'),
(8, 'User - 17reserve Seat ID - 20 on Journey ID - 1', 'reserve', '1574652452'),
(9, 'User - 17reserve Seat ID - 22 on Journey ID - 1', 'reserve', '1574652452'),
(10, 'User - 17reserve Seat ID - 23 on Journey ID - 1', 'reserve', '1574652452'),
(11, 'User ID -  canceled reservation on Journey ID - 2', 'cancel_reserve', '1574652598');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `user_id`, `amount`) VALUES
(2, 17, 8400);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(11) NOT NULL,
  `plate_number` varchar(25) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `number_of_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `plate_number`, `driver_id`, `route_id`, `number_of_seats`) VALUES
(1, 'a1d4fr4544', 1, 1, 35),
(2, '55454hug-AC', 2, 2, 35);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(25) NOT NULL,
  `value` int(11) NOT NULL,
  `is_redeemed` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `value`, `is_redeemed`) VALUES
(1, 'sh788911', 1000, 'used'),
(2, 'sh187321', 1000, 'used'),
(3, 'sh362078', 1000, 'used'),
(4, 'sh195281', 1000, 'not_used'),
(5, 'sh129839', 1000, 'not_used'),
(6, 'qw526796', 10000, 'not_used'),
(7, 'qw278429', 10000, 'not_used'),
(8, 'qw758411', 10000, 'used'),
(9, 'qw107694', 10000, 'not_used'),
(10, 'qw620296', 10000, 'used'),
(11, 'qw125746', 10000, 'not_used'),
(12, 'qw392014', 10000, 'not_used'),
(13, 'qw444260', 10000, 'not_used'),
(14, 'qw955072', 10000, 'not_used'),
(15, 'qw978556', 10000, 'not_used');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`) VALUES
(1, 'Chittagong'),
(2, 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `is_assigned` varchar(25) NOT NULL DEFAULT 'not_assigned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `phone_number`, `is_assigned`) VALUES
(1, 'Roton', '0171749373', 'assigned'),
(2, 'Gazi', '0142645555', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `title`, `description`, `img`) VALUES
(1, 'Notice', 'Development', 'Screenshot (11).png');

-- --------------------------------------------------------

--
-- Table structure for table `journeys`
--

CREATE TABLE `journeys` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `starting_date` varchar(25) NOT NULL,
  `starting_time` varchar(25) NOT NULL,
  `arrival_time` varchar(25) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journeys`
--

INSERT INTO `journeys` (`id`, `bus_id`, `starting_date`, `starting_time`, `arrival_time`, `price`) VALUES
(1, 1, '2019-11-25', '11:00', '01:00', 700),
(2, 2, '2019-11-07', '05:06', '17:06', 600);

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE `origins` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `name`) VALUES
(1, 'Dhaka'),
(2, 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `journey_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `journey_id`, `seat_id`, `date`) VALUES
(2, 17, 1, 18, '1574652452'),
(3, 17, 1, 20, '1574652452'),
(4, 17, 1, 22, '1574652452'),
(5, 17, 1, 23, '1574652452');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `length` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `origin_id`, `destination_id`, `length`) VALUES
(1, 1, 1, 250),
(2, 2, 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `occupied` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `bus_id`, `number`, `user_id`, `occupied`) VALUES
(1, 1, 1, 0, 'unoccupied'),
(2, 1, 2, 0, 'unoccupied'),
(3, 1, 3, 0, 'unoccupied'),
(4, 1, 4, 0, 'unoccupied'),
(5, 1, 5, 0, 'unoccupied'),
(6, 1, 6, 0, 'unoccupied'),
(7, 1, 7, 0, 'unoccupied'),
(8, 1, 8, 0, 'unoccupied'),
(9, 1, 9, 0, 'unoccupied'),
(10, 1, 10, 0, 'unoccupied'),
(11, 1, 11, 0, 'unoccupied'),
(12, 1, 12, 0, 'unoccupied'),
(13, 1, 13, 0, 'unoccupied'),
(14, 1, 14, 0, 'unoccupied'),
(15, 1, 15, 0, 'unoccupied'),
(16, 1, 16, 0, 'unoccupied'),
(17, 1, 17, 0, 'unoccupied'),
(18, 1, 18, 17, 'occupied'),
(19, 1, 19, 0, 'unoccupied'),
(20, 1, 20, 17, 'occupied'),
(21, 1, 21, 0, 'unoccupied'),
(22, 1, 22, 17, 'occupied'),
(23, 1, 23, 17, 'occupied'),
(24, 1, 24, 0, 'unoccupied'),
(25, 1, 25, 0, 'unoccupied'),
(26, 1, 26, 0, 'unoccupied'),
(27, 1, 27, 0, 'unoccupied'),
(28, 1, 28, 0, 'unoccupied'),
(29, 1, 29, 0, 'unoccupied'),
(30, 1, 30, 0, 'unoccupied'),
(31, 1, 31, 0, 'unoccupied'),
(32, 1, 32, 0, 'unoccupied'),
(33, 1, 33, 0, 'unoccupied'),
(34, 1, 34, 0, 'unoccupied'),
(35, 1, 35, 0, 'unoccupied'),
(36, 2, 1, 0, 'unoccupied'),
(37, 2, 2, 0, 'unoccupied'),
(38, 2, 3, 0, 'unoccupied'),
(39, 2, 4, 0, 'unoccupied'),
(40, 2, 5, 0, 'unoccupied'),
(41, 2, 6, 0, 'unoccupied'),
(42, 2, 7, 0, 'unoccupied'),
(43, 2, 8, 17, 'unoccupied'),
(44, 2, 9, 0, 'unoccupied'),
(45, 2, 10, 0, 'unoccupied'),
(46, 2, 11, 0, 'unoccupied'),
(47, 2, 12, 0, 'unoccupied'),
(48, 2, 13, 0, 'unoccupied'),
(49, 2, 14, 0, 'unoccupied'),
(50, 2, 15, 0, 'unoccupied'),
(51, 2, 16, 0, 'unoccupied'),
(52, 2, 17, 0, 'unoccupied'),
(53, 2, 18, 0, 'unoccupied'),
(54, 2, 19, 0, 'unoccupied'),
(55, 2, 20, 0, 'unoccupied'),
(56, 2, 21, 0, 'unoccupied'),
(57, 2, 22, 0, 'unoccupied'),
(58, 2, 23, 0, 'unoccupied'),
(59, 2, 24, 0, 'unoccupied'),
(60, 2, 25, 0, 'unoccupied'),
(61, 2, 26, 0, 'unoccupied'),
(62, 2, 27, 0, 'unoccupied'),
(63, 2, 28, 0, 'unoccupied'),
(64, 2, 29, 0, 'unoccupied'),
(65, 2, 30, 0, 'unoccupied'),
(66, 2, 31, 0, 'unoccupied'),
(67, 2, 32, 0, 'unoccupied'),
(68, 2, 33, 0, 'unoccupied'),
(69, 2, 34, 0, 'unoccupied'),
(70, 2, 35, 0, 'unoccupied');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `kebele_id_number` varchar(50) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `kebele_id_number`, `gender`, `username`, `password`, `email`, `phone_number`, `status`) VALUES
(17, 'sh', ' shuvo', '1234', 'Male', 'shuvo', '11111111', 'a@gmail.com', '645666466546', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journeys`
--
ALTER TABLE `journeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journeys`
--
ALTER TABLE `journeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
