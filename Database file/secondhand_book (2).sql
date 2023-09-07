-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 11:08 AM
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
-- Database: `secondhand_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `srno` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`srno`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `bankaccounts`
--

CREATE TABLE `bankaccounts` (
  `srno` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `account_no` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bank_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ifce_code` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `branch` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bankaccounts`
--

INSERT INTO `bankaccounts` (`srno`, `name`, `email`, `account_no`, `bank_name`, `ifce_code`, `branch`) VALUES
(14, 'onkar pawar', 'ompawar@gmail.com', '365455025633', 'Central bank of india', 'CBIN025486', 'Jejuri'),
(15, 'sagar rote', 'sagar@gmail.com', '524625996588', 'bank of maharshtra', 'BOMA24882', 'walhe'),
(16, 'ram', 'ram@gmail.com', '865463546656', 'ffdgdfsgdfg', 'dfbgfdf', 'dfgfbfds');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bno` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `auther_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_language` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `book_condition` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `original_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_date` text COLLATE utf8_bin DEFAULT NULL,
  `upload_date` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bno`, `user`, `book_name`, `auther_name`, `category`, `book_language`, `purchase_date`, `book_condition`, `original_price`, `selling_price`, `description`, `image`, `status`, `selling_date`, `upload_date`) VALUES
(30, 'ompawar@gmail.com', 'Madhuraj recepie', 'Madhura', 'Cookbooks', 'Marathi', '2021-08-04', 'Good', '540', '290', 'Good book for cooking', 'madhuraj recepie.jpg', 'Sold', '25-04-2022', '25-04-2022'),
(31, 'ompawar@gmail.com', 'learn english', 'Hazol Robins', 'Dictionaries', 'English', '2022-03-30', 'Fair', '740', '240', 'English learning book', 'learn english.jpg', 'Sold', '25-04-2022', '25-04-2022'),
(32, 'shubhamlagad2000@gmail.com', 'bible of the basic math', 'pragati agrawal', 'Mathematics', 'English', '2018-05-15', 'Fair', '540', '260', 'Its condition is not good but it is best', 'bible of basic math.jpg', 'Sold', '28-04-2022', '27-04-2022'),
(33, 'shubhamlagad2000@gmail.com', 'kadambari jivlaga', 'arun v deshpande', 'Kadambari', 'Marathi', '2021-09-30', 'Good', '740', '540', 'Nice book', 'jivlaga.jpg', 'Pending', '28-04-2022', '27-04-2022'),
(34, 'sagar@gmail.com', 'yogasane', 'dr p d sharma', 'Health', 'Marathi', '2020-05-12', 'New', '510', '390', 'Yogasane book', 'yogasane.jpg', 'Pending', '06-05-2022', '28-04-2022'),
(36, 'sagar@gmail.com', 'indian history', 'b s sharma', 'History', 'English', '2021-05-21', 'Good', '940', '440', 'Great history of Indian', 'indian history.jpg', 'Not Sold', '00-00-0000', '28-04-2022'),
(37, 'nitin@gmail.com', 'english grammer', 'tom gibbons', 'Dictionaries', 'English', '2020-06-11', 'Good', '740', '240', 'Good for beginner ', 'English grammar.jpg', 'Not Sold', '00-00-0000', '28-04-2022'),
(38, 'shubhamlagad2000@gmail.com', 'the complete reference c++', 'herbert schildt', 'Programming', 'English', '2021-04-29', 'Good', '470', '240', 'Good for beginners\r\n', 'the complete reference c++.jpg', 'Sold', '04-02-2023', '01-05-2022'),
(39, 'shubhamlagad2000@gmail.com', 'the chilli cook book', 'bors wash', 'Cookbooks', 'English', '2022-02-03', 'Fair', '540', '290', 'cook book', 'the chilli cook book.jpg', 'Not Sold', '00-00-0000', '02-05-2022'),
(40, 'shubhamlagad2000@gmail.com', 'Modern PHP', 'j k sharma', 'Science', 'English', '2022-04-25', 'Good', '540', '290', 'nice ', 'modern php.jpg', 'Not Sold', '00-00-0000', '06-05-2022'),
(41, 'ram@gmail.com', 'hello', 'hello book', 'Science', 'English', '2023-02-09', 'Good', '340', '190', 'good book for students\r\n', 'one health.jpg', 'Sold', '04-02-2023', '04-02-2023');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cno` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cno`, `user`, `book_no`) VALUES
(65, 'nitin@gmail.com', 31),
(67, 'sagar@gmail.com', 33),
(68, 'shubhamlagad2000@gmail.com', 34),
(69, 'ram@gmail.com', 36);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `srno` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`srno`, `email`, `name`, `comment`) VALUES
(13, 'sagar@gmail.com', 'sagar rote', 'very great website'),
(14, 'ompawar@gmail.com', 'Omkar Pawar', 'best website for old book seller'),
(15, 'ram@gmail.com', 'ram', 'excellent!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(11) NOT NULL,
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `buyer_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `buyer_email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mobile_no` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` text COLLATE utf8_bin DEFAULT NULL,
  `book_no` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `payment_mode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_date` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `order_id`, `buyer_name`, `buyer_email`, `mobile_no`, `address`, `book_no`, `price`, `payment_mode`, `selling_date`, `status`) VALUES
(177, '247788145451', 'nitin', 'nitin@gmail.com', '7788145451', 'At post baradgoan,Ahmednagar 416523', 30, 330, 'Cash_On_Delivery', '25-04-2022', 'Placed'),
(178, '129786456468', 'nitin', 'nitin@gmail.com', '9786456468', 'At post wadgaon,Pune 652365', 31, 280, 'Credit_Card', '25-04-2022', 'Placed'),
(185, '828561426352', 'sagar rote', 'sagar@gmail.com', '8561426352', 'at post satara satara 358646', 32, 300, 'Credit_Card', '28-04-2022', 'Placed'),
(186, '258561255652', 'sagar rote', 'sagar@gmail.com', '8561255652', 'at post walhe, Pune 400125', 33, 580, 'Cash_On_Delivery', '28-04-2022', 'Success'),
(187, '928007878524', 'Lagad Shubham', 'shubhamlagad2000@gmail.com', '8007878524', 'At post kolgaon, Ahmednagar 413728', 34, 430, 'Cash_On_Delivery', '06-05-2022', 'Success'),
(188, '624567895263', 'ram', 'ram@gmail.com', '4567895263', 'pune, pune 411041', 36, 480, 'Cash_On_Delivery', '04-02-2023', 'Cancelled'),
(189, '14567895263', 'ram', 'ram@gmail.com', '4567895263', 'pune, pune 411041', 37, 280, 'Credit_Card', '04-02-2023', 'Cancelled'),
(190, '714567895263', 'ram', 'ram@gmail.com', '4567895263', 'pune, pune 411041', 38, 280, 'Cash_On_Delivery', '04-02-2023', 'Placed'),
(191, '458965853254', 'nitin sudrik', 'nitin@gmail.com', '8965853254', 'at post baradgaon Nagar 412186', 41, 230, 'Credit_Card', '04-02-2023', 'Placed');

-- --------------------------------------------------------

--
-- Table structure for table `pricesuggetion`
--

CREATE TABLE `pricesuggetion` (
  `srno` int(11) NOT NULL,
  `book_no` int(11) NOT NULL,
  `owner` varchar(30) COLLATE utf8_bin NOT NULL,
  `suggestedUser` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pricesuggetion`
--

INSERT INTO `pricesuggetion` (`srno`, `book_no`, `owner`, `suggestedUser`, `price`) VALUES
(10, 32, 'shubhamlagad2000@gmail.com', 'nitin sudrik', 'To high'),
(11, 32, 'shubhamlagad2000@gmail.com', 'nitin sudrik', 'Cheapest'),
(12, 32, 'shubhamlagad2000@gmail.com', 'sagar rote', 'Cheapest'),
(13, 36, 'sagar@gmail.com', 'nitin sudrik', 'Cheapest'),
(14, 37, 'nitin@gmail.com', 'Lagad Shubham', 'To high'),
(15, 41, 'ram@gmail.com', 'nitin sudrik', 'To high');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `gender` varchar(50) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(50) COLLATE utf8_bin NOT NULL,
  `address` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `answer` varchar(50) COLLATE utf8_bin NOT NULL,
  `wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `gender`, `contactno`, `address`, `password`, `answer`, `wallet`) VALUES
('nitin sudrik', 'nitin@gmail.com', 'Male', '8965853254', 'at post baradgaon Nagar 412186', 'nitin@2000', 'nagar', 0),
('Omkar Pawar', 'ompawar@gmail.com', 'Male', '8564547896', 'at post jejuri pune 422530', 'omkar@2000', 'pune', 200),
('ram', 'ram@gmail.com', 'Male', '4567895263', 'pune, pune 411041', 'Ram@2000', 'pune', 20),
('sagar rote', 'sagar@gmail.com', 'Male', '8561255652', 'at post walhe, Pune 400125', 'sagar@2000', 'sagar', 0),
('shub', 'shu@gmail.com', 'Male', '8007845855', 'vadgaon, pune 454545', 'Shu@2000', 'pune', 0),
('Lagad Shubham', 'shubhamlagad2000@gmail.com', 'Male', '8007878524', 'At post kolgaon, Ahmednagar 413728', 'shubham@2000', 'pune', 420);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bno`),
  ADD KEY `FK_userNo` (`user`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cno`),
  ADD KEY `FK_userEmail` (`user`),
  ADD KEY `FK_bookNo` (`book_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `buyer_email` (`buyer_email`),
  ADD KEY `book_no` (`book_no`);

--
-- Indexes for table `pricesuggetion`
--
ALTER TABLE `pricesuggetion`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `pricesuggetion`
--
ALTER TABLE `pricesuggetion`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD CONSTRAINT `bankaccounts_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_userNo` FOREIGN KEY (`user`) REFERENCES `users` (`email`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_bookNo` FOREIGN KEY (`book_no`) REFERENCES `books` (`bno`),
  ADD CONSTRAINT `FK_userEmail` FOREIGN KEY (`user`) REFERENCES `users` (`email`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`book_no`) REFERENCES `books` (`bno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
