-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2017 at 01:17 AM
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
-- Table structure for table `challan_items`
--

CREATE TABLE `challan_items` (
  `id` int(4) DEFAULT NULL,
  `challan_id` varchar(20) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `item_quantity` int(5) DEFAULT NULL,
  `app_price` varchar(10) DEFAULT NULL,
  `total_price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `challan_items`
--

INSERT INTO `challan_items` (`id`, `challan_id`, `item_code`, `item_description`, `item_quantity`, `app_price`, `total_price`) VALUES
(0, '', '', '', 0, '', ''),
(0, '', '', '', 0, '', '');

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
  `invoice_no` varchar(30) DEFAULT NULL,
  `reason` varchar(200) NOT NULL,
  `billing_add` varchar(100) DEFAULT NULL,
  `mailing_add` varchar(100) DEFAULT NULL,
  `delivery_add` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `job_order`, `work_order_image`, `security_letter_image`, `rental_payment_image`, `security_neg_image`, `status`, `description`, `invoice_no`, `reason`, `billing_add`, `mailing_add`, `delivery_add`, `phone`, `name`, `email`, `date`) VALUES
(16, 'P101110', 'uploads/1_b4badd29aa78b93ba607c7085cf6dcf5.jpg', 'uploads/2_b4badd29aa78b93ba607c7085cf6dcf5.jpg', 'uploads/3_b4badd29aa78b93ba607c7085cf6dcf5.jpg', 'uploads/4_b4badd29aa78b93ba607c7085cf6dcf5.jpg', 1, 'Bluestar vr mall 6nos x 4 nos', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '12/02/2017'),
(17, 'P101110', 'uploads/1_d04410fd5795c636606318011cca3029.jpg', 'uploads/2_d04410fd5795c636606318011cca3029.jpg', 'uploads/3_d04410fd5795c636606318011cca3029.jpg', 'uploads/4_d04410fd5795c636606318011cca3029.jpg', 0, 'L n T Scaffolds 5 sets', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '23/03/2017'),
(18, 'P1562', 'uploads/1_1c6f033f350c8819797c0e134f213498.png', 'uploads/2_1c6f033f350c8819797c0e134f213498.png', 'uploads/3_1c6f033f350c8819797c0e134f213498.png', 'uploads/4_1c6f033f350c8819797c0e134f213498.png', 0, 'HoneyWell', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '05/04/2017'),
(19, 'JN4589', 'uploads/1_1ab9b5eba63cd6d8df5662f18c98845d.png', 'uploads/2_1ab9b5eba63cd6d8df5662f18c98845d.png', 'uploads/3_1ab9b5eba63cd6d8df5662f18c98845d.png', 'uploads/4_1ab9b5eba63cd6d8df5662f18c98845d.png', 0, 'Air India', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '23/25/2016'),
(20, 'HI5498', 'uploads/1_252f660eb2bfebe9dd922b5a965a44d3.png', 'uploads/2_252f660eb2bfebe9dd922b5a965a44d3.png', 'uploads/3_252f660eb2bfebe9dd922b5a965a44d3.png', 'uploads/4_252f660eb2bfebe9dd922b5a965a44d3.png', 0, 'DTU maintainence', NULL, '', 'DTU shahbad daulatpur opposite futurepoint', 'DTU shahbad daulatpur', 'DTU shahbad daulatpur', '9876543210', 'VC', 'dtu@gov.in', '23/03/2017');

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
('dispatch@gmail.com', '123456', 'dispatch'),
('finance_account@gmail.com', '123456', ''),
('finance_credit@gmail.com', '123456', 'finance'),
('marketing@gmail.com', '123456', 'marketing'),
('orders@gmail.com', '123456', 'orders'),
('planning@gmail.com', '123456', 'planning'),
('vikas', '123456', ''),
('vikasmahato0@gmail.com', '123456', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
