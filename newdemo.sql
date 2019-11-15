-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 06:41 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(6) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `pQuantity` int(4) NOT NULL,
  `dateAdd` date NOT NULL,
  `paidMethod` varchar(20) NOT NULL,
  `orderID` varchar(20) NOT NULL,
  `userID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `productID`, `pQuantity`, `dateAdd`, `paidMethod`, `orderID`, `userID`) VALUES
(5, 'A1002', 1, '2019-05-30', '', '51', 'User1'),
(8, 'A1002', 1, '2019-05-31', '', '58', 'user1'),
(9, 'A1001', 2, '2019-05-31', '', '52', 'user1'),
(10, 'A1001', 1, '2019-06-20', '', '59', 'user1'),
(11, 'A1002', 1, '2019-06-20', '', '59', 'user1'),
(12, 'A1002', 1, '2019-06-21', '', '63', 'user1'),
(13, 'A555', 1, '2019-06-21', '', '65', 'user1'),
(14, 'O1001', 1, '2019-06-21', '', '66', ''),
(15, 'O1001', 1, '2019-06-21', '', '67', 'user1'),
(16, 'A333', 1, '2019-06-22', '', '68', 'user1'),
(17, 'A333', 1, '2019-06-24', '', '69', 'user1'),
(18, 'A333', 1, '2019-06-24', '', '72', 'user1'),
(19, 'A333', 1, '2019-06-24', '', '73', 'user1'),
(20, 'A333', 1, '2019-06-26', '', '75', 'user1'),
(21, 'A333', 1, '2019-06-28', '', '', 'user1'),
(22, 'A333', 1, '2019-06-28', '', '', 'user1'),
(23, 'A333', 1, '2019-06-28', '', '', 'user1'),
(24, 'A555', 1, '2019-08-26', '', '', 'user1'),
(25, 'A1001', 1, '2019-10-14', '', '', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `name`) VALUES
(1, 'Student'),
(2, 'Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) NOT NULL,
  `sub` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL,
  `roundoff` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `sub`, `tax`, `roundoff`, `total`) VALUES
(1, 3299.90, 329.99, 0.00, 3629.90),
(2, 4098.90, 409.89, 0.00, 4508.80),
(3, 4098.90, 409.89, 0.00, 4508.80),
(4, 2500.90, 250.09, 0.00, 2751.00),
(5, 2500.90, 250.09, 0.00, 2751.00),
(6, 2500.90, 250.09, 0.01, 2751.00),
(7, 1598.00, 159.80, 0.00, 1757.80);

-- --------------------------------------------------------

--
-- Table structure for table `myorder`
--

CREATE TABLE `myorder` (
  `ID` int(6) NOT NULL,
  `userID` varchar(20) NOT NULL,
  `amount` double(7,2) NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `orderDate` date NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myorder`
--

INSERT INTO `myorder` (`ID`, `userID`, `amount`, `paymentMethod`, `orderDate`, `cancelled`, `remark`) VALUES
(51, 'user1', 438.90, '', '2019-06-17', '', ''),
(52, 'user1', 1375.00, '', '2019-06-19', '', ''),
(53, 'user1', 438.90, '', '2019-06-20', '', ''),
(54, 'user1', 438.90, '', '2019-06-20', '', ''),
(55, 'user1', 438.90, '', '2019-06-20', '', ''),
(56, 'user1', 438.90, '', '2019-06-20', '', ''),
(57, 'user1', 438.90, '', '2019-06-20', '', ''),
(58, 'user1', 438.90, '', '2019-06-20', '', ''),
(59, 'user1', 1126.40, '', '2019-06-20', '', ''),
(60, 'user1', 438.90, '', '2019-06-21', '', ''),
(61, 'user1', 438.90, '', '2019-06-21', '', ''),
(62, 'user1', 438.90, '', '2019-06-21', '', ''),
(63, 'user1', 438.90, '', '2019-06-21', '', ''),
(64, 'user1', 48.40, '', '2019-06-21', '', ''),
(65, 'user1', 48.40, '', '2019-06-21', '', ''),
(66, '', 482.90, '', '2019-06-21', '', ''),
(67, 'user1', 482.90, '', '2019-06-21', '', ''),
(68, 'user1', 1320.00, '', '2019-06-22', '', ''),
(69, 'user1', 1320.00, '', '2019-06-24', '', ''),
(70, 'user1', 1320.00, '', '2019-06-24', '', ''),
(71, 'user1', 1320.00, '', '2019-06-24', '', ''),
(72, 'user1', 1320.00, '', '2019-06-24', '', ''),
(73, 'user1', 1.10, '', '2019-06-24', '', ''),
(74, 'user1', 1.10, '', '2019-06-26', '', ''),
(75, 'user1', 1.10, '', '2019-06-26', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `ID` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(3) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `available` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`ID`, `title`, `price`, `image`, `quantity`, `category`, `description`, `available`) VALUES
('A1001', 'ASUS Zenfone Max Pro (M1) ', 625.00, 'A1001.jpg', 6, 'Asus', 'Triple SIM slot: Dual SIM & one MicroSD card (up to 2TB)\r\n4K Ultra HD video recording at 30fps', '1'),
('A1002', 'Asus Zenfone 3s Max ZC521TL, ', 399.00, 'A1002.jpg', 4, 'Asus', '2 year warranty', '1'),
('A333', 'Asus 333', 1.00, 'A333.jpg', 9, 'Asus', 'New Asus Phone', '1'),
('A555', 'sdsdsd', 44.00, 'A555.jpg', 2, 'Asus', 'wewe', '1'),
('H1001', 'HUawei 2I', 2099.00, 'H1001.jpg', 3, 'Huawei', 'Dual Lens', '0'),
('H1002', 'Huawei Mate 10 Pro', 2200.00, 'H1002.jpg', 4, 'Huawei', '128G Rom + 6G RAM', '0'),
('O1001', 'OPPO A37', 439.00, 'O1001.jpg', 5, 'Oppo', '16GB Rom+ Original Set', '1'),
('P1001', 'Samsung Galaxy S8', 1999.00, 'P1001.jpg', 5, 'Samsung', 'Camera 20MP', '1'),
('S1001', 'Samsung A6 A600', 769.00, 'S1001.jpg', 3, 'Samsung', '3GB+32GB ROM\r\nOriginal Malaysia Set', '1'),
('S1002', 'SAMSUNG GALAXY J6', 665.00, 'S1002.jpg', 3, 'Samsung', 'Original Warranty', '1'),
('X1001', 'Redmi 5', 500.00, 'X1001.jpg', 5, 'Xiaomi', 'Android 7.1.2 (Nougat)\r\n5.7 inches, IPS LCD capacitive touchscreen, 16M colors', '1'),
('X1002', 'XiaoMi Pocophone', 1499.00, 'X1002.jpg', 3, 'Xiaomi', '64GB ROM', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `fullName`, `email`, `phoneNo`) VALUES
('user1', '123456', 'Admin', 'admin@aaa.com', '01122111123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myorder`
--
ALTER TABLE `myorder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `myorder`
--
ALTER TABLE `myorder`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
