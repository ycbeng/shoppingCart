

--
-- Database: `newdemo`
--

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
('A333', 'Asus 333', 1200.00, 'A333.jpg', 9, 'Asus', 'New Asus Phone', '1'),
('H1001', 'HUawei 2I', 2099.00, 'H1001.jpg', 3, 'Huawei', 'Dual Lens', '1'),
('H1002', 'Huawei Mate 10 Pro', 2200.00, 'H1002.jpg', 4, 'Huawei', '128G Rom + 6G RAM', '1'),
('O1001', 'OPPO A37', 439.00, 'O1001.jpg', 5, 'Oppo', '16GB Rom+ Original Set', '1'),
('P1001', 'Samsung Galaxy S8', 1999.00, 'P1001.jpg', 5, 'Samsung', 'Camera 20MP', '1'),
('S1001', 'Samsung A6 A600', 769.00, 'S1001.jpg', 3, 'Samsung', '3GB+32GB ROM\r\nOriginal Malaysia Set', '1'),
('S1002', 'SAMSUNG GALAXY J6', 665.00, 'S1002.jpg', 3, 'Samsung', 'Original Warranty', '1'),
('X1001', 'Redmi 5', 500.00, 'X1001.jpg', 5, 'Xiaomi', 'Android 7.1.2 (Nougat)\r\n5.7 inches, IPS LCD capacitive touchscreen, 16M colors', '1'),
('X1002', 'XiaoMi Pocophone', 1499.00, 'X1002.jpg', 3, 'Xiaomi', '64GB ROM', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
