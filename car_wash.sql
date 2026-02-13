-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2025 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_wash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `washing_point_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `washing_point_id`) VALUES
(1, 'Musharraf Desai', 'mussibca@gmail.com', '2005', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `washing_point_id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `Wash_date` date NOT NULL,
  `Wash_time` time DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `user_email`, `washing_point_id`, `service_type`, `vehicle_number`, `vehicle_type`, `Wash_date`, `Wash_time`, `status`) VALUES
(3, 'mussi@gmail.com', 1, 'Basic Cleaning', '1111', 'Audi', '2025-12-04', '17:11:00', 'Pending'),
(4, 'mussi@gmail.com', 2, 'Premium Cleaning', '2222', 'Jeep', '2025-11-29', '13:11:00', 'Pending'),
(5, 'mussi@gmail.com', 3, 'Complex Cleaning', '3333', 'Volvo', '2025-11-26', '17:10:00', 'Pending'),
(6, 'fayaz@gmail.com', 3, 'Complex Cleaning', '1439', 'Maruti Suzuki', '2025-12-04', '17:27:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `email` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaint_id`, `user_id`, `subject`, `description`, `status`, `email`) VALUES
(4, 0, 'okkk', 'h', 'Complete', 'khurshid@gmail.com'),
(5, 0, 'gooddd', 'very goooodddd', 'Pending', 'karigarnaeem9@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `phone`, `address`, `password`) VALUES
(1, 'Musharraf', 'mussi@gmail.com', '9558893914', 'Nabipur', '123'),
(8, 'Naeem', 'naeem@gmail.com', '8401153487', 'nab', '123'),
(9, 'Hamza', 'hamza@gmail.com', '1234567890', 'Derol', '123'),
(10, 'fayaz', 'fayaz@gmail.com', '8511416003', 'Sansroad', '123');

-- --------------------------------------------------------

--
-- Table structure for table `washing_point`
--

CREATE TABLE `washing_point` (
  `washing_point_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `washing_point`
--

INSERT INTO `washing_point` (`washing_point_id`, `name`, `address`, `contact_number`) VALUES
(1, 'ABC Car Washing Point', 'Golden Square, Abc Cir, Gidc, Bharuch-392012', '+91 9558893914'),
(3, 'NAB Car Washing Point\r\n\r\n', 'N-H 48, Janor Chokdi, Nabipur, Bharuch-392210\r\n', '+91 9682842392'),
(4, 'FCB Car Washing Point', 'N-H 55, Derol Chokdi, Derol, Bharuch-392020\r\n\r\n', '+91 6354592686');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `washing_point_id` (`washing_point_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `washing_point`
--
ALTER TABLE `washing_point`
  ADD PRIMARY KEY (`washing_point_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `washing_point`
--
ALTER TABLE `washing_point`
  MODIFY `washing_point_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`washing_point_id`) REFERENCES `washing_point` (`washing_point_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
