-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2017 at 01:21 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehousing`
--

-- --------------------------------------------------------

--
-- Table structure for table `godown_inventory`
--

CREATE TABLE `godown_inventory` (
  `type` varchar(50) NOT NULL,
  `itemunique` varchar(50) NOT NULL,
  `quantity` int(4) NOT NULL,
  `itemcord` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `godown_inventory`
--

INSERT INTO `godown_inventory` (`type`, `itemunique`, `quantity`, `itemcord`) VALUES
('Building Material', 'LadderBuilding Material', 152, ''),
('Building material', 'ScaffolsBuilding material', 196, ''),
('Height', 'AirLiftHeight', 23, ''),
('Height', 'LadderHeight', 25, 'Ladder');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `job_order` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `items` varchar(200) DEFAULT NULL,
  `del_date` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `type` text,
  `category` text,
  `invoice_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `phone`, `job_order`, `email`, `items`, `del_date`, `image`, `status`, `order_date`, `order_time`, `description`, `type`, `category`, `invoice_no`) VALUES
(2, 'Vikas', 'd-8, gulmohar park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '13/03/2017', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', 0, '2017-03-12', '05:21:22', 'This is a description', 'Sales', 'Prepaid', NULL),
(3, 'Vikas Prasad Mahato', 'D-8, Gulmohar Park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '23/03/2017', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', 0, '2017-03-12', '06:27:39', 'This is a description', 'Rental', 'Postpaid', NULL),
(4, 'VIkas', 'gulmohar park', '9968801336', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '14/03/2017', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', 0, '2017-03-12', '19:40:54', 'Description', 'Rental', 'Prepaid', NULL),
(5, 'Vikas', 'd-8, gulmohar park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '13/03/2017', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', 1, '2017-03-12', '05:21:22', 'This is a description', 'Sales', 'Prepaid', NULL),
(6, 'Vikas Prasad Mahato', 'D-8, Gulmohar Park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '23/03/2017', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', 1, '2017-03-12', '06:27:39', 'This is a description', 'Rental', 'Postpaid', NULL),
(7, 'VIkas', 'gulmohar park', '9968801336', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '14/03/2017', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', 1, '2017-03-12', '19:40:54', 'Description', 'Rental', 'Prepaid', NULL),
(8, 'Vikas', 'd-8, gulmohar park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '13/03/2017', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', 2, '2017-03-12', '05:21:22', 'This is a description', 'Sales', 'Prepaid', NULL),
(9, 'Vikas Prasad Mahato', 'D-8, Gulmohar Park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '23/03/2017', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', 2, '2017-03-12', '06:27:39', 'This is a description', 'Rental', 'Postpaid', NULL),
(10, 'VIkas', 'gulmohar park', '9968801336', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '14/03/2017', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', 2, '2017-03-12', '19:40:54', 'Description', 'Rental', 'Prepaid', NULL),
(11, 'Vikas', 'd-8, gulmohar park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '13/03/2017', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', 3, '2017-03-12', '05:21:22', 'This is a description', 'Sales', 'Prepaid', 'WEB12345'),
(12, 'Vikas Prasad Mahato', 'D-8, Gulmohar Park', '9650043051', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '23/03/2017', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', 3, '2017-03-12', '06:27:39', 'This is a description', 'Rental', 'Postpaid', 'WEB12346'),
(13, 'VIkas', 'gulmohar park', '9968801336', '123456', 'vikasmahato0@gmail.com', 'ladder-1', '14/03/2017', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', 3, '2017-03-12', '19:40:54', 'Description', 'Rental', 'Prepaid', 'WEB12347');

-- --------------------------------------------------------

--
-- Table structure for table `shop_inventory`
--

CREATE TABLE `shop_inventory` (
  `itemcord` varchar(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `itemunique` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_inventory`
--

INSERT INTO `shop_inventory` (`itemcord`, `type`, `itemunique`, `quantity`) VALUES
('', 'Building material', 'LadderBuilding material', '25'),
('Scaffolds', 'Height', 'ScaffoldsHeight', '36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`) VALUES
('vikas', '123456', ''),
('vikasmahato0@gmail.com', '123456', ''),
('orders@gmail.com', '123456', 'orders'),
('finance@gmail.com', '123456', 'finance'),
('planning@gmail.com', '123456', 'planning'),
('marketing@gmail.com', '123456', 'marketing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
