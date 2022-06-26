-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 12:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `price` double NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `agency_id`, `schedule_id`, `type`, `price`, `active`) VALUES
(1, 2, 5, 30, 6, 1),
(2, 2, 6, 20, 4.6, 1),
(3, 3, 23, 20, 4.6, 1),
(4, 3, 24, 15, 3.45, 1),
(5, 3, 22, 30, 6, 1),
(7, 2, 8, 30, 6, 1),
(8, 2, 16, 15, 3.45, 0),
(9, 3, 100, 8, 1.84, 0),
(14, 2, 115, 10, 2.3, 0),
(15, 3, 120, 11, 2.53, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `payment_id`, `user_id`, `code`, `class`, `no`, `seat`, `date`) VALUES
(15, 5, 12, 4, '2020/005/1324', 'first', 1, 'F01', 'Tue, 11-Aug-2020 11:52:19 AM'),
(17, 5, 15, 3, '2020/005/2645', 'first', 5, 'F02-F06', 'Tue, 11-Aug-2020 12:48:38 PM'),
(18, 6, 16, 3, '2020/006/1655', 'first', 8, 'F001 -F008', 'Tue, 11-Aug-2020 01:08:20 PM'),
(19, 6, 1, 4, '2020/006/9146', 'second', 1, 'S0001', 'Tue, 11-Aug-2020 01:09:22 PM'),
(20, 8, 18, 4, '2020/008/1144', 'second', 8, 'S0001 -S0008', 'Tue, 11-Aug-2020 01:12:58 PM'),
(21, 18, 19, 1, '2020/018/1671', 'first', 8, 'F01 -F08', 'Tue, 11-Aug-2020 04:10:29 PM'),
(22, 20, 20, 5, '2020/020/126', 'first', 30, 'F01 - F30', 'Mon, 31-Aug-2020 11:36:57 PM'),
(23, 20, 21, 6, '2020/020/31816', 'first', 2, 'F31 - F32', 'Fri, 06-Nov-2020 10:10:44 PM'),
(24, 22, 22, 6, '2020/022/1176', 'second', 1, 'S001', 'Sun, 08-Nov-2020 02:08:07 PM'),
(25, 24, 23, 2, '2020/024/197', 'second', 2, 'S001 - S002', 'Sun, 15-Nov-2020 02:25:27 PM'),
(26, 26, 24, 8, '2021/026/1183', 'first', 4, 'F01 - F04', 'Fri, 17-Sep-2021 04:25:09 PM'),
(27, 98, 25, 7, '2021/098/198', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:17:54 AM'),
(28, 99, 26, 7, '2021/099/157', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:28:54 AM'),
(29, 100, 27, 7, '2021/0100/1134', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:39:18 AM'),
(30, 101, 39, 7, '2021/0101/1116', 'second', 1, 'S001', 'Wed, 13-Oct-2021 06:15:30 AM'),
(31, 102, 40, 7, '2021/0102/1502', 'first', 1, 'F001', 'Wed, 13-Oct-2021 06:18:10 AM'),
(32, 103, 43, 7, '2021/0103/1792', 'second', 2, 'S001 - S002', 'Wed, 13-Oct-2021 11:02:56 AM'),
(33, 103, 44, 8, '2021/0103/3809', 'second', 1, 'S003', 'Wed, 13-Oct-2021 02:21:40 PM'),
(34, 104, 45, 8, '2021/0104/1526', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:22:15 PM'),
(35, 120, 46, 10, '2022/0120/1848', 'first', 1, 'F01', 'Wed, 15 Jun 22 08:43:15 +0100'),
(36, 5, 47, 10, '2022/005/7718', 'first', 1, 'F07', 'Thu, 16 Jun 22 21:24:06 +0100');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `agency_id`, `user_id`, `message`, `response`) VALUES
(1, 2, 10, 'May I get 2 more tickets?', 'Yes, You just have book 2 more tickets\n'),
(3, 2, 6, 'Demo Test - 2', 'Are you sure that this is another test? '),
(8, 2, 4, 'This is a feedback text', 'no\r\n'),
(9, 3, 6, 'Test Test Test Test Test', NULL),
(11, 3, 8, 'This is a demo test for feedback sections!!!', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `client_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`client_id`, `agency_id`) VALUES
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menager_and_marketing`
--

CREATE TABLE `menager_and_marketing` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menager_and_marketing`
--

INSERT INTO `menager_and_marketing` (`id`, `agency_id`, `name`, `surname`, `email`, `password`, `type`, `status`) VALUES
(1, 2, 'Mario', 'Kushta', 'mario@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', 2, 1),
(2, 3, 'Igli', 'Belba', 'igli@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', 3, 1),
(3, 2, 'Ledio', 'Bregu', 'ledio@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(1, 'Passenger One', 'pas1o@mail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'No. 20 Ali Demi Street', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(2, 'Megi Nako', 'meginako@gmail.com', '1526755d438e395e551f229a484f8a1d', '3000002000', 'No. 30 Ibrahim Rugova', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(3, 'Passenger Two', 'pass2@mail.com', '05eb26d87e6361dc7c8ed07b9db7911d', '1400000020', 'No.43 Myslym Shyri', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(4, 'Passenger Three', 'pass3@mail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'No. 589 Ismail Qemali', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(5, 'Passenger Four', 'pass4@mail.com', 'd780455a563c7c5dbfb74a51785ad949', '0000010020', 'No. 21 Pashko Vasa', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Test Passenger', 'testpass@mail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'No. 13 Luigj Gurakuqi', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(7, 'Anteo Guri', 'antoe@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7000000000', 'No. 19 Barrikadat', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Demo Account', 'demoaccount@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', '100 Demo Address', '404a6378027a553d980b99162a5b4ce8.png', 1),
(9, 'Endi Qose', 'endiqose@gmail.com', '06764375882e689ac57ce23714bcb423', '06888293753', 'No. 38 Gjergj Fishta', '932965e29d958f966e8093ab855ae8c1.jpg', 1),
(10, 'Alban Xhepi', 'alban@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', '0688829375', 'No. 31 Don Bosko Street', '81acca87a09f237d9935b31b16345971.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `agency_id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(12, 2, 4, 5, '520', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(14, 3, 4, 6, '23', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(15, 2, 3, 5, '1860', '5gtnjnzclw', 'Tue, 11-Aug-2020 12:48:38 PM'),
(16, 3, 3, 6, '680', 'dzwl1488r0', 'Tue, 11-Aug-2020 01:08:20 PM'),
(18, 2, 4, 8, '110', 'hja9zvtmgk', 'Tue, 11-Aug-2020 01:12:58 PM'),
(19, 3, 1, 18, '100', '3TVSHVBQII', 'Tue, 11-Aug-2020 04:10:29 PM'),
(20, 2, 5, 20, '300', '84JP4U5LKZ', 'Mon, 31-Aug-2020 11:36:57 PM'),
(21, 3, 6, 20, '33', 'VXIZSCHMOG', 'Fri, 06-Nov-2020 10:10:44 PM'),
(22, 2, 6, 22, '1410', 'TDHRBZTZOH', 'Sun, 08-Nov-2020 02:08:07 PM'),
(23, 3, 2, 24, '200', '4TRM9FIFEV', 'Sun, 15-Nov-2020 02:25:27 PM'),
(24, 2, 8, 26, '5260', '1QXPYSUTOI', 'Fri, 17-Sep-2021 04:25:09 PM'),
(25, 3, 7, 98, '303', 'FIPJBLU5LC', 'Wed, 13-Oct-2021 05:17:54 AM'),
(26, 2, 7, 99, '80', 'NKMGVH44QG', 'Wed, 13-Oct-2021 05:28:54 AM'),
(27, 3, 7, 100, '51', 'NS5IEEK1HS', 'Wed, 13-Oct-2021 05:39:18 AM'),
(39, 2, 7, 101, '56', 'OEPPIM6X9H', 'Wed, 13-Oct-2021 06:15:30 AM'),
(40, 3, 7, 102, '107', 'M07FP4QTOV', 'Wed, 13-Oct-2021 06:18:10 AM'),
(43, 2, 7, 103, '152', 'RITK5E5GDM', 'Wed, 13-Oct-2021 11:02:56 AM'),
(44, 3, 8, 103, '76', 'H6CMTHBJUU', 'Wed, 13-Oct-2021 02:21:40 PM'),
(45, 2, 8, 104, '324', 'KH70GOC8KO', 'Wed, 13-Oct-2021 05:22:15 PM'),
(46, 2, 10, 120, '10', 'FIPJBLU5LB', 'Wed, 15 Jun 22 08:43:15 +0100'),
(47, 2, 10, 5, '11', 'MEGI', 'Thu, 16 Jun 22 21:24:06 +0100');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `level1` double NOT NULL,
  `level2` double NOT NULL,
  `level3` double NOT NULL,
  `level4` double NOT NULL,
  `level5` double NOT NULL,
  `level6` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`) VALUES
(1, 0.3, 0.26, 0.23, 0.2, 0.18, 0.15);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `agency_id`, `start`, `stop`) VALUES
(3, 2, 'Tirane', 'Elbasan'),
(4, 2, 'Korce', 'Tirane'),
(5, 2, 'Tirane', 'Berlin'),
(7, 3, 'Tirane ', 'Durres'),
(18, 3, 'Tirane', 'Sarande'),
(19, 3, 'Tirane ', 'Shkoder'),
(20, 3, 'tirane', 'korce'),
(21, 2, 'Tirane', 'vlore'),
(22, 3, 'Tirane', 'Berat');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `agency_id`, `train_id`, `route_id`, `date`, `time`, `first_fee`, `second_fee`) VALUES
(5, 2, 14, 20, '11-08-2023', '18:30', 10, 8),
(6, 2, 14, 19, '11-08-2023', '18:30', 14, 12),
(8, 2, 11, 4, '13-08-2022', '18:30', 10, 8),
(10, 2, 7, 5, '15-08-2022', '18:30', 100, 80),
(12, 2, 10, 5, '17-08-2020', '18:30', 100, 80),
(16, 2, 2, 7, '16-08-2020', '11:00', 3, 2),
(17, 2, 9, 3, '23-08-2020', '11:00', 3, 2),
(18, 3, 10, 4, '30-08-2020', '11:00', 10, 8),
(20, 3, 14, 20, '07-11-2020', '22:24', 10, 8),
(22, 3, 15, 20, '08-11-2020', '15:13', 10, 8),
(23, 3, 14, 20, '07-11-2020', '15:10', 10, 8),
(24, 3, 14, 20, '15-11-2020', '15:22', 10, 8),
(26, 3, 14, 20, '18-09-2021', '09:00', 10, 8),
(98, 3, 15, 20, '12-10-2021', '09:00', 10, 8),
(99, 3, 15, 20, '12-10-2021', '11:10', 10, 8),
(100, 3, 15, 20, '12-10-2021', '12:20', 10, 8),
(101, 3, 14, 20, '12-10-2021', '22:59', 10, 8),
(102, 3, 14, 20, '12-10-2021', '11:02', 10, 8),
(103, 3, 15, 20, '12-10-2021', '04:45', 10, 8),
(104, 3, 14, 20, '14-10-2021', '10:00', 10, 8),
(115, 2, 2, 4, '15-06-2022', '01:43', 10, 8),
(116, 2, 2, 3, '22-06-2022', '01:44', 3, 2),
(117, 3, 8, 18, '29-06-2022', '02:46', 5, 4),
(120, 3, 10, 22, '16-06-2022', '13:09', 10, 8),
(121, 2, 2, 4, '22-06-2022', '13:25', 20, 15);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `agency_id`, `name`, `first_seat`, `second_seat`) VALUES
(2, 2, 'Shpati Travel', 5, 45),
(7, 2, 'Era Travel', 0, 50),
(8, 2, 'Fast Travel', 2, 48),
(9, 2, 'Albania travel', 5, 45),
(10, 3, 'Metro', 10, 40),
(11, 3, 'Pati Travel', 10, 40),
(12, 3, 'Besi Travel', 0, 30),
(14, 3, 'Alban travel', 14, 60),
(15, 3, 'Beni travel', 3, 17),
(17, 3, 'Air Albania', 10, 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `nipt` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `type`, `address`, `Description`, `phone`, `nipt`, `status`) VALUES
(1, 'Admin', 'admin@admin.com', '05eb26d87e6361dc7c8ed07b9db7911d', 0, 'admin', 'admin', 688888888, 1111111111, 1),
(2, 'Alban Travel', 'albantravel@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', 1, 'Tirane, Zogu I Blvd Pallati 64, Tirana', 'Travel Agency', 699999999, 123456789, 1),
(3, 'Beni Travel', 'benitravel@gmail.com', '05eb26d87e6361dc7c8ed07b9db7911d', 1, 'Tirane, Zogu I Blvd Pallati 64, Tirana', 'Travel Agency', 677777777, 120120120, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menager_and_marketing`
--
ALTER TABLE `menager_and_marketing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
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
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menager_and_marketing`
--
ALTER TABLE `menager_and_marketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
