-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2017 at 01:01 PM
-- Server version: 10.1.21-MariaDB
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
  `job_order` varchar(20) DEFAULT NULL,
  `work_order_image` varchar(100) DEFAULT NULL,
  `security_letter_image` varchar(100) NOT NULL,
  `rental_payment_image` varchar(100) NOT NULL,
  `security_neg_image` varchar(100) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `invoice_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `job_order`, `work_order_image`, `security_letter_image`, `rental_payment_image`, `security_neg_image`, `status`, `description`, `invoice_no`) VALUES
(2, '123456', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', '', '', '', 0, 'This is a description', NULL),
(3, '123456', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', '', '', '', 0, 'This is a description', NULL),
(4, '123456', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', '', '', '', 0, 'Description', NULL),
(5, '123456', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', '', '', '', 1, 'This is a description', NULL),
(6, '123456', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', '', '', '', 1, 'This is a description', NULL),
(7, '123456', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', '', '', '', 1, 'Description', NULL),
(8, '123456', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', '', '', '', 2, 'This is a description', NULL),
(9, '123456', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', '', '', '', 2, 'This is a description', NULL),
(10, '123456', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', '', '', '', 2, 'Description', NULL),
(11, '123456', 'uploads/32d76a271c4c4ec02e7e87c8a9281e66.png', '', '', '', 3, 'This is a description', 'WEB12345'),
(12, '123456', 'uploads/2b528c31ec6975879b7df5d9cb9c802d.png', '', '', '', 3, 'This is a description', 'WEB12346'),
(13, '123456', 'uploads/df559ba2abd4f4bb15523d459877a6f2.png', '', '', '', 3, 'Description', 'WEB12347'),
(14, '1232sedr', 'uploads/1_4caf2a47b36b22d4165f43eff43f6fc0.jpg', 'uploads/2_4caf2a47b36b22d4165f43eff43f6fc0.jpg', 'uploads/3_4caf2a47b36b22d4165f43eff43f6fc0.jpg', 'uploads/4_4caf2a47b36b22d4165f43eff43f6fc0.png', 0, 'remarks', NULL);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
