-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 06:18 PM
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
(2, 'User - 17103213 redeemed coupon Coupon ID - co207045', 'redeem_coupon', '1575220472'),
(3, 'User - 17103213reserve Seat ID - 18 on Journey ID - 2', 'reserve', '1575220607'),
(4, 'User - 17103213reserve Seat ID - 23 on Journey ID - 2', 'reserve', '1575220607'),
(5, 'User - 17103213reserve Seat ID - 37 on Journey ID - 2', 'reserve', '1575220607'),
(6, 'User - 17103213reserve Seat ID - 49 on Journey ID - 2', 'reserve', '1575220607'),
(7, 'User ID -  canceled reservation on Journey ID - 2', 'cancel_reserve', '1575220628'),
(8, 'User ID -  canceled reservation on Journey ID - 2', 'cancel_reserve', '1575220630');

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
(1234, 'admin', 'admin');

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
(1, 17103213, 9250);

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
(2, '55454hug-AC', 3, 2, 54),
(3, '55hug-AC', 4, 4, 35),
(4, 'a1d4fr4544-AC', 5, 4, 35),
(5, '55hug-AC', 6, 3, 30);

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
(1, 'co425094', 10000, 'not_used'),
(2, 'co297193', 10000, 'not_used'),
(3, 'co238678', 10000, 'not_used'),
(4, 'co683258', 10000, 'not_used'),
(5, 'co930460', 10000, 'not_used'),
(6, 'co391673', 10000, 'not_used'),
(7, 'co144066', 10000, 'not_used'),
(8, 'co534149', 10000, 'not_used'),
(9, 'co961343', 10000, 'not_used'),
(10, 'co306296', 10000, 'not_used'),
(11, 'co648682', 10000, 'not_used'),
(12, 'co242688', 10000, 'not_used'),
(13, 'co967751', 10000, 'not_used'),
(14, 'co574394', 10000, 'not_used'),
(15, 'co531268', 10000, 'not_used'),
(16, 'co921735', 10000, 'not_used'),
(17, 'co244539', 10000, 'not_used'),
(18, 'co631264', 10000, 'not_used'),
(19, 'co456952', 10000, 'not_used'),
(20, 'co836334', 10000, 'not_used'),
(21, 'co217460', 10000, 'not_used'),
(22, 'co557836', 10000, 'not_used'),
(23, 'co866444', 10000, 'not_used'),
(24, 'co171475', 10000, 'not_used'),
(25, 'co671340', 10000, 'not_used'),
(26, 'co354019', 10000, 'not_used'),
(27, 'co578235', 10000, 'not_used'),
(28, 'co530209', 10000, 'not_used'),
(29, 'co150793', 10000, 'not_used'),
(30, 'co504524', 10000, 'not_used'),
(31, 'co921369', 10000, 'not_used'),
(32, 'co626212', 10000, 'not_used'),
(33, 'co340985', 10000, 'not_used'),
(34, 'co251026', 10000, 'not_used'),
(35, 'co971588', 10000, 'not_used'),
(36, 'co857461', 10000, 'not_used'),
(37, 'co901885', 10000, 'not_used'),
(38, 'co533404', 10000, 'not_used'),
(39, 'co270324', 10000, 'not_used'),
(40, 'co173766', 10000, 'not_used'),
(41, 'co676967', 10000, 'not_used'),
(42, 'co301493', 10000, 'not_used'),
(43, 'co827097', 10000, 'not_used'),
(44, 'co817655', 10000, 'not_used'),
(45, 'co292288', 10000, 'not_used'),
(46, 'co575186', 10000, 'not_used'),
(47, 'co247015', 10000, 'not_used'),
(48, 'co560298', 10000, 'not_used'),
(49, 'co277237', 10000, 'not_used'),
(50, 'co207045', 10000, 'used');

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
(2, 'Chittagong'),
(3, 'Rajshahi'),
(4, 'Dhaka'),
(6, 'Gazipur');

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
(3, 'Roton', '0171749371', 'assigned'),
(4, 'Manik', '0171749371', 'assigned'),
(5, 'Gazi', '0171749373', 'assigned'),
(6, 'Hasu', '0171749371', 'assigned'),
(7, 'Sadu', '0136587452', 'not_assigned');

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
(2, 'Payment Information', 'For Bkash Payment call our customer service.\r\ncell : 01717493735\r\nBkash : 01717493735\r\n\r\nafter Bkash Payment send your transaction ID in our customer service number .\r\nWe will confirm your Payment as soon as possible', '250px-BKash_Limited_logo.png');

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
(2, 2, '2019-12-04', '12:00', '13:59', 250),
(3, 3, '2019-12-24', '01:59', '14:59', 700),
(4, 5, '2019-12-19', '13:58', '01:00', 600);

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
(2, 'Dhaka'),
(3, 'Chittagong'),
(4, 'Rangpur'),
(5, 'Gazipur'),
(6, 'Kustia');

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
(1, 17103213, 2, 18, '1575220607'),
(3, 17103213, 2, 37, '1575220607');

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
(2, 2, 2, 250),
(3, 2, 3, 300),
(4, 3, 6, 300),
(5, 3, 3, 300);

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
(1, 2, 1, 0, 'unoccupied'),
(2, 2, 2, 0, 'unoccupied'),
(3, 2, 3, 0, 'unoccupied'),
(4, 2, 4, 0, 'unoccupied'),
(5, 2, 5, 0, 'unoccupied'),
(6, 2, 6, 0, 'unoccupied'),
(7, 2, 7, 0, 'unoccupied'),
(8, 2, 8, 0, 'unoccupied'),
(9, 2, 9, 0, 'unoccupied'),
(10, 2, 10, 0, 'unoccupied'),
(11, 2, 11, 0, 'unoccupied'),
(12, 2, 12, 0, 'unoccupied'),
(13, 2, 13, 0, 'unoccupied'),
(14, 2, 14, 0, 'unoccupied'),
(15, 2, 15, 0, 'unoccupied'),
(16, 2, 16, 0, 'unoccupied'),
(17, 2, 17, 0, 'unoccupied'),
(18, 2, 18, 17103213, 'occupied'),
(19, 2, 19, 0, 'unoccupied'),
(20, 2, 20, 0, 'unoccupied'),
(21, 2, 21, 0, 'unoccupied'),
(22, 2, 22, 0, 'unoccupied'),
(23, 2, 23, 17103213, 'unoccupied'),
(24, 2, 24, 0, 'unoccupied'),
(25, 2, 25, 0, 'unoccupied'),
(26, 2, 26, 0, 'unoccupied'),
(27, 2, 27, 0, 'unoccupied'),
(28, 2, 28, 0, 'unoccupied'),
(29, 2, 29, 0, 'unoccupied'),
(30, 2, 30, 0, 'unoccupied'),
(31, 2, 31, 0, 'unoccupied'),
(32, 2, 32, 0, 'unoccupied'),
(33, 2, 33, 0, 'unoccupied'),
(34, 2, 34, 0, 'unoccupied'),
(35, 2, 35, 0, 'unoccupied'),
(36, 2, 36, 0, 'unoccupied'),
(37, 2, 37, 17103213, 'occupied'),
(38, 2, 38, 0, 'unoccupied'),
(39, 2, 39, 0, 'unoccupied'),
(40, 2, 40, 0, 'unoccupied'),
(41, 2, 41, 0, 'unoccupied'),
(42, 2, 42, 0, 'unoccupied'),
(43, 2, 43, 0, 'unoccupied'),
(44, 2, 44, 0, 'unoccupied'),
(45, 2, 45, 0, 'unoccupied'),
(46, 2, 46, 0, 'unoccupied'),
(47, 2, 47, 0, 'unoccupied'),
(48, 2, 48, 0, 'unoccupied'),
(49, 2, 49, 17103213, 'unoccupied'),
(50, 2, 50, 0, 'unoccupied'),
(51, 2, 51, 0, 'unoccupied'),
(52, 2, 52, 0, 'unoccupied'),
(53, 2, 53, 0, 'unoccupied'),
(54, 2, 54, 0, 'unoccupied'),
(55, 3, 1, 0, 'unoccupied'),
(56, 3, 2, 0, 'unoccupied'),
(57, 3, 3, 0, 'unoccupied'),
(58, 3, 4, 0, 'unoccupied'),
(59, 3, 5, 0, 'unoccupied'),
(60, 3, 6, 0, 'unoccupied'),
(61, 3, 7, 0, 'unoccupied'),
(62, 3, 8, 0, 'unoccupied'),
(63, 3, 9, 0, 'unoccupied'),
(64, 3, 10, 0, 'unoccupied'),
(65, 3, 11, 0, 'unoccupied'),
(66, 3, 12, 0, 'unoccupied'),
(67, 3, 13, 0, 'unoccupied'),
(68, 3, 14, 0, 'unoccupied'),
(69, 3, 15, 0, 'unoccupied'),
(70, 3, 16, 0, 'unoccupied'),
(71, 3, 17, 0, 'unoccupied'),
(72, 3, 18, 0, 'unoccupied'),
(73, 3, 19, 0, 'unoccupied'),
(74, 3, 20, 0, 'unoccupied'),
(75, 3, 21, 0, 'unoccupied'),
(76, 3, 22, 0, 'unoccupied'),
(77, 3, 23, 0, 'unoccupied'),
(78, 3, 24, 0, 'unoccupied'),
(79, 3, 25, 0, 'unoccupied'),
(80, 3, 26, 0, 'unoccupied'),
(81, 3, 27, 0, 'unoccupied'),
(82, 3, 28, 0, 'unoccupied'),
(83, 3, 29, 0, 'unoccupied'),
(84, 3, 30, 0, 'unoccupied'),
(85, 3, 31, 0, 'unoccupied'),
(86, 3, 32, 0, 'unoccupied'),
(87, 3, 33, 0, 'unoccupied'),
(88, 3, 34, 0, 'unoccupied'),
(89, 3, 35, 0, 'unoccupied'),
(90, 4, 1, 0, 'unoccupied'),
(91, 4, 2, 0, 'unoccupied'),
(92, 4, 3, 0, 'unoccupied'),
(93, 4, 4, 0, 'unoccupied'),
(94, 4, 5, 0, 'unoccupied'),
(95, 4, 6, 0, 'unoccupied'),
(96, 4, 7, 0, 'unoccupied'),
(97, 4, 8, 0, 'unoccupied'),
(98, 4, 9, 0, 'unoccupied'),
(99, 4, 10, 0, 'unoccupied'),
(100, 4, 11, 0, 'unoccupied'),
(101, 4, 12, 0, 'unoccupied'),
(102, 4, 13, 0, 'unoccupied'),
(103, 4, 14, 0, 'unoccupied'),
(104, 4, 15, 0, 'unoccupied'),
(105, 4, 16, 0, 'unoccupied'),
(106, 4, 17, 0, 'unoccupied'),
(107, 4, 18, 0, 'unoccupied'),
(108, 4, 19, 0, 'unoccupied'),
(109, 4, 20, 0, 'unoccupied'),
(110, 4, 21, 0, 'unoccupied'),
(111, 4, 22, 0, 'unoccupied'),
(112, 4, 23, 0, 'unoccupied'),
(113, 4, 24, 0, 'unoccupied'),
(114, 4, 25, 0, 'unoccupied'),
(115, 4, 26, 0, 'unoccupied'),
(116, 4, 27, 0, 'unoccupied'),
(117, 4, 28, 0, 'unoccupied'),
(118, 4, 29, 0, 'unoccupied'),
(119, 4, 30, 0, 'unoccupied'),
(120, 4, 31, 0, 'unoccupied'),
(121, 4, 32, 0, 'unoccupied'),
(122, 4, 33, 0, 'unoccupied'),
(123, 4, 34, 0, 'unoccupied'),
(124, 4, 35, 0, 'unoccupied'),
(125, 5, 1, 0, 'unoccupied'),
(126, 5, 2, 0, 'unoccupied'),
(127, 5, 3, 0, 'unoccupied'),
(128, 5, 4, 0, 'unoccupied'),
(129, 5, 5, 0, 'unoccupied'),
(130, 5, 6, 0, 'unoccupied'),
(131, 5, 7, 0, 'unoccupied'),
(132, 5, 8, 0, 'unoccupied'),
(133, 5, 9, 0, 'unoccupied'),
(134, 5, 10, 0, 'unoccupied'),
(135, 5, 11, 0, 'unoccupied'),
(136, 5, 12, 0, 'unoccupied'),
(137, 5, 13, 0, 'unoccupied'),
(138, 5, 14, 0, 'unoccupied'),
(139, 5, 15, 0, 'unoccupied'),
(140, 5, 16, 0, 'unoccupied'),
(141, 5, 17, 0, 'unoccupied'),
(142, 5, 18, 0, 'unoccupied'),
(143, 5, 19, 0, 'unoccupied'),
(144, 5, 20, 0, 'unoccupied'),
(145, 5, 21, 0, 'unoccupied'),
(146, 5, 22, 0, 'unoccupied'),
(147, 5, 23, 0, 'unoccupied'),
(148, 5, 24, 0, 'unoccupied'),
(149, 5, 25, 0, 'unoccupied'),
(150, 5, 26, 0, 'unoccupied'),
(151, 5, 27, 0, 'unoccupied'),
(152, 5, 28, 0, 'unoccupied'),
(153, 5, 29, 0, 'unoccupied'),
(154, 5, 30, 0, 'unoccupied');

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
(17103213, 'sh', ' shuvo', '12346586', 'Male', 'user', 'user', 'user@gmail.com', '01717493735', 'active');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journeys`
--
ALTER TABLE `journeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17103214;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
