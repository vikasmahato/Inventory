-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2017 at 01:16 PM
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
-- Table structure for table `bundle_item_relation`
--

CREATE TABLE `bundle_item_relation` (
  `bundle_id` varchar(10) DEFAULT NULL,
  `item_id` varchar(10) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `challan_items`
--

CREATE TABLE `challan_items` (
  `id` int(4) DEFAULT NULL,
  `challan_id` varchar(50) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `item_quantity` int(5) DEFAULT NULL,
  `app_price` varchar(10) DEFAULT NULL,
  `total_price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `challan_item_relation`
--

CREATE TABLE `challan_item_relation` (
  `challan_id` varchar(10) DEFAULT NULL,
  `item_id` varchar(10) DEFAULT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `job_order` varchar(20) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `total_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `challan_item_relation`
--

INSERT INTO `challan_item_relation` (`challan_id`, `item_id`, `item_name`, `job_order`, `quantity`, `description`, `total_price`) VALUES
('1490233234', '1', '', 'HI206', 2, '', 0),
('1490521224', '3', NULL, 'HI206', 2, NULL, NULL),
('1490521614', '3', NULL, 'HI206', 2, 'test challn', 4),
('1490521666', '3', NULL, 'HI206', 2, 'test challn', 4);

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

-- --------------------------------------------------------

--
-- Table structure for table `location_category_relation`
--

CREATE TABLE `location_category_relation` (
  `location_id` varchar(10) DEFAULT NULL,
  `location_category_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_category_relation`
--

INSERT INTO `location_category_relation` (`location_id`, `location_category_id`) VALUES
('1', '1'),
('2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `location_item_relation`
--

CREATE TABLE `location_item_relation` (
  `location_id` varchar(10) DEFAULT NULL,
  `item_id` varchar(10) DEFAULT NULL,
  `quantity` int(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_item_relation`
--

INSERT INTO `location_item_relation` (`location_id`, `item_id`, `quantity`) VALUES
('1', '1', 0),
('1', '2', 0),
('1', '3', 10),
('2', '1', 19),
('2', '2', 5),
('2', '3', 25);

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
(1, 'HI206', 'uploads/1_f2d088707a7a523c3a9e35c35129e53f.jpg', 'uploads/2_f2d088707a7a523c3a9e35c35129e53f.jpg', 'uploads/3_f2d088707a7a523c3a9e35c35129e53f.jpg', 'uploads/4_f2d088707a7a523c3a9e35c35129e53f.jpg', 1, 'This is a test', NULL, '', '1', '1', '1', '0', 'Vikas', 'example@email.com', '31/03/2017'),
(2, NULL, 'uploads/1_744860e49e3b6fdc50fbe60aa8ed602d.jpg', 'uploads/2_744860e49e3b6fdc50fbe60aa8ed602d.jpg', 'uploads/3_744860e49e3b6fdc50fbe60aa8ed602d.jpg', 'uploads/4_744860e49e3b6fdc50fbe60aa8ed602d.jpg', 0, 'Another Delivery', NULL, '', '1', '1', '1', '0', 'Vikas', 'example@email.com', '31/03/2017');

-- --------------------------------------------------------

--
-- Table structure for table `order_challan`
--

CREATE TABLE `order_challan` (
  `job_order` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `challan_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `table_bundle`
--

CREATE TABLE `table_bundle` (
  `bundle_id` varchar(10) NOT NULL DEFAULT '',
  `bundle_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_challan`
--

CREATE TABLE `table_challan` (
  `challan_id` varchar(10) NOT NULL DEFAULT '',
  `pickup_loc_id` varchar(10) DEFAULT NULL,
  `delivery_loc_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_challan`
--

INSERT INTO `table_challan` (`challan_id`, `pickup_loc_id`, `delivery_loc_id`) VALUES
('1490233234', '1', '2'),
('1490520677', '1', '2'),
('1490520814', '1', '2'),
('1490520976', '1', '2'),
('1490521224', '1', '2'),
('1490521614', '1', '2'),
('1490521666', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `table_challan_category`
--

CREATE TABLE `table_challan_category` (
  `challan_category_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_challan_category`
--

INSERT INTO `table_challan_category` (`challan_category_id`, `name`) VALUES
('1', 'Delivery Challan'),
('2', 'Pickup Challan'),
('3', 'Sales Challan');

-- --------------------------------------------------------

--
-- Table structure for table `table_item`
--

CREATE TABLE `table_item` (
  `name` varchar(50) DEFAULT NULL,
  `item_code` varchar(10) NOT NULL DEFAULT '',
  `length` varchar(10) DEFAULT NULL,
  `breadth` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `purchase_value` varchar(9) DEFAULT NULL,
  `selling_value` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_item`
--

INSERT INTO `table_item` (`name`, `item_code`, `length`, `breadth`, `height`, `weight`, `material`, `purchase_value`, `selling_value`) VALUES
('Fibre Glass Ladder', '1', '50', '1', '2', '20', 'Fibre Glass', '450', '250'),
('Aluminium Scaffold', '2', '12', '12', '12', '12', 'Aluminium', '300', '150'),
('Fire Extinguisher', '3', '10', '10', '10', '20', 'CO2', '200', '200');

-- --------------------------------------------------------

--
-- Table structure for table `table_item_category`
--

CREATE TABLE `table_item_category` (
  `category_id` varchar(10) NOT NULL DEFAULT '',
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_item_category`
--

INSERT INTO `table_item_category` (`category_id`, `category_name`) VALUES
('1', 'Ladders'),
('2', 'Fire'),
('3', 'Ropes'),
('4', 'Wheel Barrows'),
('5', 'Scaffolds');

-- --------------------------------------------------------

--
-- Table structure for table `table_item_category_relation`
--

CREATE TABLE `table_item_category_relation` (
  `item_id` varchar(10) DEFAULT NULL,
  `category_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_item_category_relation`
--

INSERT INTO `table_item_category_relation` (`item_id`, `category_id`) VALUES
('1', '1'),
('2', '5'),
('3', '2');

-- --------------------------------------------------------

--
-- Table structure for table `table_location`
--

CREATE TABLE `table_location` (
  `location_id` varchar(10) NOT NULL DEFAULT '',
  `location_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_location`
--

INSERT INTO `table_location` (`location_id`, `location_name`, `address`, `name`, `mobile`, `email`) VALUES
('1', 'D-8, Gulmohar Park', 'D-8, Gulmohar Park, New Delhi-110049', 'Vikas', '9650043051', 'vikasmahato0@gmail.com'),
('2', 'Youngman', 'Greater Noida', 'Vanjul Jain', '987654321', 'vanjul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `table_location_category`
--

CREATE TABLE `table_location_category` (
  `location_category_id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_location_category`
--

INSERT INTO `table_location_category` (`location_category_id`, `name`) VALUES
('1', 'Rental'),
('2', 'Warehose'),
('3', 'Sales'),
('4', 'Damaged'),
('5', 'Godown');

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
-- Indexes for table `bundle_item_relation`
--
ALTER TABLE `bundle_item_relation`
  ADD KEY `bundle_id` (`bundle_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `challan_item_relation`
--
ALTER TABLE `challan_item_relation`
  ADD KEY `challan_id` (`challan_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `location_category_relation`
--
ALTER TABLE `location_category_relation`
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_category_id` (`location_category_id`);

--
-- Indexes for table `location_item_relation`
--
ALTER TABLE `location_item_relation`
  ADD UNIQUE KEY `location_id` (`location_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_order` (`job_order`);

--
-- Indexes for table `table_bundle`
--
ALTER TABLE `table_bundle`
  ADD PRIMARY KEY (`bundle_id`);

--
-- Indexes for table `table_challan`
--
ALTER TABLE `table_challan`
  ADD PRIMARY KEY (`challan_id`);

--
-- Indexes for table `table_challan_category`
--
ALTER TABLE `table_challan_category`
  ADD PRIMARY KEY (`challan_category_id`);

--
-- Indexes for table `table_item`
--
ALTER TABLE `table_item`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `table_item_category`
--
ALTER TABLE `table_item_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `table_item_category_relation`
--
ALTER TABLE `table_item_category_relation`
  ADD UNIQUE KEY `item_id` (`item_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `table_location`
--
ALTER TABLE `table_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `table_location_category`
--
ALTER TABLE `table_location_category`
  ADD PRIMARY KEY (`location_category_id`);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bundle_item_relation`
--
ALTER TABLE `bundle_item_relation`
  ADD CONSTRAINT `bundle_item_relation_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `table_bundle` (`bundle_id`),
  ADD CONSTRAINT `bundle_item_relation_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `table_item` (`item_code`);

--
-- Constraints for table `challan_item_relation`
--
ALTER TABLE `challan_item_relation`
  ADD CONSTRAINT `challan_item_relation_ibfk_1` FOREIGN KEY (`challan_id`) REFERENCES `table_challan` (`challan_id`),
  ADD CONSTRAINT `challan_item_relation_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `table_item` (`item_code`);

--
-- Constraints for table `location_category_relation`
--
ALTER TABLE `location_category_relation`
  ADD CONSTRAINT `location_category_relation_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `table_location` (`location_id`),
  ADD CONSTRAINT `location_category_relation_ibfk_2` FOREIGN KEY (`location_category_id`) REFERENCES `table_location_category` (`location_category_id`);

--
-- Constraints for table `location_item_relation`
--
ALTER TABLE `location_item_relation`
  ADD CONSTRAINT `location_item_relation_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `table_location` (`location_id`),
  ADD CONSTRAINT `location_item_relation_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `table_item` (`item_code`);

--
-- Constraints for table `table_item_category_relation`
--
ALTER TABLE `table_item_category_relation`
  ADD CONSTRAINT `table_item_category_relation_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `table_item` (`item_code`),
  ADD CONSTRAINT `table_item_category_relation_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `table_item_category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
