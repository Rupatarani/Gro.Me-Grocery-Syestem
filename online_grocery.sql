-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2025 at 11:03 AM
-- Server version: 10.6.20-MariaDB-log
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohdanua_online_grocery_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(60) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`, `image`, `role`) VALUES
(1, 'admin', '7756908815', 'admin@gmail.com', 'password', 'admin2.jpg', 'ADMIN'),
(3, 'rider', '112233445566', 'rider@gmail.com', 'password', '', 'RIDER');

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `admin_user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(6) NOT NULL,
  `itemid` int(6) NOT NULL,
  `userid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `itemid`, `userid`) VALUES
(21, 5, 2),
(22, 8, 1),
(23, 8, 0),
(24, 14, 3),
(25, 19, 3),
(26, 10, 3),
(27, 19, 5),
(28, 34, 5);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemid` int(9) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  `item_rating` int(3) NOT NULL,
  `image` varchar(90) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemid`, `Title`, `category`, `item_rating`, `image`, `discription`, `price`) VALUES
(4, 'Fresho Ladies Finger, 1 kg  xxxxx', 'FruitVegetables', 3, '10000142_16-fresho-ladies-finger.jpg', '1 kg - Rs 59.00\r\n250 gm - Rs 15.00\r\n500 gm - Rs 30.00', '100'),
(5, 'Fresho Tomato - Hybrid, 1 kg ', 'FruitVegetables', 5, '10000200_17-fresho-tomato-hybrid.jpg', '1 kg - Rs 18.00\r\n500 gm - Rs 10.00', '18'),
(6, 'Fresho Pomegranate, 1 kg ', 'FruitVegetables', 5, '20000708_14-fresho-pomegranate.jpg', '1 kg - Rs 69.00\r\n500 gm - Rs 40.00', '69'),
(7, 'Saffola Gold - Pro Healthy Lifestyle Edi', 'FoodgrainsoilMasala', 5, '147493_11-saffola-gold-pro-healthy-lifestyle-edible-oil.jpg', '5 lt Jar - Rs 649.00\r\n2x1 L ( Multipack ) - Rs 278.00\r\n2x2 L ( Multipack ) - Rs 611.00\r\n3x1 L ( Multipack ) - Rs 417.00\r\n1 lt Pouch - Rs 139.00\r\n2 lt Jar - Rs 274.95', '649'),
(8, 'bb Royal Whole Wheat Atta, 5 kg ', 'FoodgrainsoilMasala', 5, '40099240_8-bb-royal-whole-wheat-atta.jpg', '5 kg - Rs 149.00\r\n1 kg - Rs 44.00\r\n10 kg - Rs 295.00', '149'),
(9, 'Daawat Basmati Rice - Rozana Super 90, 5', 'FoodgrainsoilMasala', 5, '40075197_2-daawat-basmati-rice-rozana-super-90.jpg', '5 kg - Rs 349.00\r\n1 kg - Rs 69.00', '349'),
(10, 'bb Royal Besan - Flour, 500 gm ', 'FoodgrainsoilMasala', 5, '10000475_7-bb-royal-besan-flour.jpg', '500 gm - Rs 42.00\r\n1 kg Pouch - Rs 89.00', '42'),
(11, 'Madhur Sugar - Refined, 5 kg Pouch', 'FoodgrainsoilMasala', 2, '214431_6-madhur-sugar-refined.jpg', '5 kg Pouch - Rs 221.50\r\n1 kg Pouch - Rs 46.50', '221'),
(12, 'Parle Rusk - Real Elaichi, 200 gm ', 'BakerycakesDairy', 4, '30008655_8-parle-rusk-real-elaichi.jpg', 'good test', '28'),
(13, 'Amul Lassi - Rose Flavor, 200 ml Carton', 'BakerycakesDairy', 3, '40013013_1-amul-lassi-rose-flavor.jpg', '200 ml Carton - Rs 14.10\r\n1 lt Carton - Rs 61.10 (Out of Stock)', '14'),
(14, 'Bauli Spyroll, 37 gm ', 'BakerycakesDairy', 5, '40158399_1-bauli-spyroll.jpg', '', '20'),
(15, 'Metro Bread - White Sliced, Metro Kattu,', 'BakerycakesDairy', 5, '40076722_2-metro-bread-white-sliced-metro-kattu.jpg', '', '18'),
(16, 'Kalory Bun, 200 gm ', 'BakerycakesDairy', 5, '40096153_1-kalory-bun.jpg', '', '20'),
(17, 'Nescafe Latte, 25 gm ', 'Beverage', 5, '40090542_4-nescafe-latte.jpg', 'Standard Delivery: Tomorrow Morning', '23.50'),
(18, 'Bisleri Mineral Water, 24x500 ml Multi P', 'Beverage', 5, '1200137_1-bisleri-mineral-water.jpg', '24x500 ml Multi Pack - Rs 218.88\r\n1 L Bottle - Rs 18.80\r\n2 L Bottle - Rs 28.20\r\n500 ml Bottle - Rs 9.40', '218'),
(19, 'Bournvita Pro-Health Chocolate Drink, 2x', 'Beverage', 5, '1203451_1-bournvita-pro-health-chocolate-drink.jpg', '2x1 kg ( Multipack ) - Rs 689.32\r\n1 kg Jar - Rs 355.32\r\n500 gm Jar - Rs 202.10', '689'),
(21, 'Kinley Club Soda, 750 ml ', 'Beverage', 5, '265680_5-kinley-club-soda.jpg', '', '15'),
(22, 'Nescafe Coffee - Classic, 2x25 gm ( Mult', 'Beverage', 5, '1204509_1-nescafe-coffee-classic.jpg', '2x25 gm ( Multipack ) - Rs 127.66\r\n100 gm Glass Jar - Rs 245.00\r\n2x100 gm ( Multipack ) - Rs 498.68\r\n25 gm Glass Jar - Rs 65.00', '127'),
(23, 'Parle Hide & Seek Chocolate, 6x33 gm Mul', 'SnacksBrandedFoods', 5, '1200153_3-parle-hide-seek-chocolate.jpg', '6x33 gm Multi Pack - Rs 53.58\r\n2x120 gm Multi Pack - Rs 55.28\r\n33 gm Pouch - Rs 9.40\r\n120 gm Pouch - Rs 26.00', '53'),
(24, 'Parle Biscuits - Monaco Salted Snack, 3x', 'SnacksBrandedFoods', 5, '1200146_3-parle-biscuits-monaco-salted-snack.jpg', '3x200 gm Multi Pack - Rs 80.37\r\n6x75.4 gm Multi Pack - Rs 53.58\r\n200 gm Pouch - Rs 27.00\r\n75.4 gm Pouch - Rs 9.40', '80'),
(25, 'Cadbury Oreo Creme Biscuit - Vanilla, 51', 'SnacksBrandedFoods', 5, '100423120_22-cadbury-oreo-creme-biscuit-vanilla.jpg', '51.5 gm - Rs 9.40\r\n3x120 gm ( Multipack ) - Rs 84.39\r\n120 gm - Rs 28.13', '9'),
(26, 'Quaker Oats, 400 gm Pouch', 'SnacksBrandedFoods', 5, '266122_6-quaker-oats.jpg', '400 gm Pouch - Rs 69.56\r\n1 kg Pouch - Rs 178.00', '69'),
(27, 'Kelloggs Chocos, 1.2 kg ', 'SnacksBrandedFoods', 5, '30008601_8-kelloggs-chocos.jpg', '1.2 kg - Rs 405.00\r\n375 gm - Rs 150.40\r\n700 gm - Rs 263.20\r\n250 gm - Rs 108.10\r\n125 gm - Rs 51.70', '405'),
(29, 'Rin Detergent Bar, 250 gm Pack of 4', 'Cleaninghousehold', 5, '281497_4-rin-detergent-bar.jpg', '', '60'),
(30, 'Vim Dishwash Bar, 300 gm ', 'Cleaninghousehold', 5, '306160_20-vim-dishwash-bar.jpg', '', '70'),
(31, 'Godrej Ezee Detergent Liquid, 500 gm ', 'Cleaninghousehold', 5, '40006995_4-godrej-ezee-detergent-liquid.jpg', '', '84'),
(32, 'Lizol Disinfectant Surface Cleaner ', 'Cleaninghousehold', 5, '1202437_4-lizol-disinfectant-surface-cleaner-citrus-2-l-floor-cleaner-floral-2-l.jpg', '', '582'),
(34, 'Himalaya Soap - Neem & Turmeric, 2x75 g ', 'Cleaninghousehold', 3, 'soap.jpg', 'Himalaya Protecting Neem and Turmeric soap improved with oils of Neem that protects skin due to its antibacterial activities; Lemon that energizes and keeps skin due to its antiseptic activities and Turmeric nourishes, recovers complexion and its antiseptic activities protect the skin.\r\n\r\n', '58'),
(35, 'soap', 'Cleaninghousehold', 3, '1202789_1-himalaya-bathing-soap-cucumber-coconut.jpg', 'abc', '50'),
(36, 'Fresho Banana - Robusta, 500 g', 'FruitVegetables', 5, '10000025_24-fresho-banana-robusta.jpg', '', '22'),
(37, 'soap', 'Cleaninghousehold', 4, '3.jpg', 'Its just a Soap', '22'),
(38, 'Soap', 'FruitVegetables', 3, '2.jpg', 'Its Just a Soap', '200'),
(39, 'aaa', 'FruitVegetables', 5, '', 'testing', '100'),
(40, 'bbb', 'FoodgrainsoilMasala', 5, '', 'bbb', '200');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `detailid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`detailid`, `orderid`, `title`, `price`, `itemid`) VALUES
(1, 4, 'Bauli Spyroll, 37 gm ', 20, 14),
(2, 4, 'Bournvita Pro-Health Chocolate Drink, 2x', 689, 19),
(3, 4, 'bb Royal Besan - Flour, 500 gm ', 42, 10),
(4, 5, 'Bauli Spyroll, 37 gm ', 20, 14),
(5, 5, 'Bournvita Pro-Health Chocolate Drink, 2x', 689, 19),
(6, 5, 'bb Royal Besan - Flour, 500 gm ', 42, 10),
(7, 6, 'Bauli Spyroll, 37 gm ', 20, 14),
(8, 6, 'Bournvita Pro-Health Chocolate Drink, 2x', 689, 19),
(9, 6, 'bb Royal Besan - Flour, 500 gm ', 42, 10),
(10, 7, 'Bauli Spyroll, 37 gm ', 20, 14),
(11, 7, 'Bournvita Pro-Health Chocolate Drink, 2x', 689, 19),
(12, 7, 'bb Royal Besan - Flour, 500 gm ', 42, 10),
(13, 8, 'Bournvita Pro-Health Chocolate Drink, 2x', 689, 19),
(14, 8, 'Himalaya Soap - Neem & Turmeric, 2x75 g ', 58, 34);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `paymentid` int(11) DEFAULT NULL,
  `paymenttype` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `ordernumber` varchar(50) DEFAULT NULL,
  `orderdate` datetime DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  `delivered` int(11) DEFAULT 0,
  `delivered_datetime` datetime DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `userid`, `paymentid`, `paymenttype`, `amount`, `ordernumber`, `orderdate`, `orderstatus`, `delivered`, `delivered_datetime`, `address`) VALUES
(1, 3, 19, 'CC', 751, NULL, '2025-01-11 06:51:53', 'PENDING DELIVERY', 0, NULL, 'aaaa bbbb ccc ddd'),
(2, 3, 20, 'CC', 751, NULL, '2025-01-11 06:58:47', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(3, 3, 21, 'CC', 751, NULL, '2025-01-11 06:59:17', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(4, 3, 22, 'CC', 751, NULL, '2025-01-11 07:01:46', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(5, 3, 23, 'CC', 751, '2525010111110707151535356819', '2025-01-11 07:15:35', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(6, 3, 24, 'CC', 751, '2501110716221336', '2025-01-11 07:16:22', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(7, 3, 25, 'CC', 751, '2501110717276685', '2025-01-11 07:17:27', 'PENDING DELIVERY', 0, NULL, 'aaaa\r\nbbbb\r\nccc\r\nddd'),
(8, 5, 26, 'CC', 747, '2501110915477973', '2025-01-11 09:15:47', 'PENDING DELIVERY', 0, NULL, '&amp;, Jalan Jalan');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(3) NOT NULL,
  `cardnumber` varchar(255) DEFAULT NULL,
  `card_expairy` varchar(60) NOT NULL,
  `cvc_code` int(10) NOT NULL,
  `amount` float NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `cardnumber`, `card_expairy`, `cvc_code`, `amount`, `userid`) VALUES
(1, '2147483647', '11/19', 789, 101, 1),
(2, '2147483647', '03/22', 878, 62, 1),
(3, '2147483647', '12/21', 123, 82, 1),
(4, '2147483647', '21/19', 123, 0, 1),
(5, '2147483647', '22/2022', 212, 0, 1),
(6, '12345', '', 123, 0, 1),
(7, '0', '', 0, 0, 0),
(8, '0', '', 0, 0, 3),
(9, '1111111', '', 111, 0, 3),
(10, '2147483647', '', 123, 0, 3),
(11, '2147483647', '', 123, 0, 3),
(12, '2147483647', '', 123, 0, 3),
(13, '0', '', 111, 751, 3),
(14, 'aaaa', '', 111, 751, 3),
(15, '112233445566', '', 123, 751, 3),
(16, '112233445566', '', 123, 751, 3),
(17, '1122334456', '', 123, 751, 3),
(18, '13213132', '', 122, 751, 3),
(19, '12345', '', 111, 751, 3),
(20, '12345', '', 111, 751, 3),
(21, '12345', '', 111, 751, 3),
(22, '12345', '', 111, 751, 3),
(23, '12345', '', 111, 751, 3),
(24, '12345', '', 111, 751, 3),
(25, '12345', '', 111, 751, 3),
(26, '111111', '', 333, 747, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `mobile`, `email`, `password`) VALUES
(1, 'Shashank Kumar', '1234567890', 'shashankkumar269@gmail.com', 'password'),
(3, 'testing', '0123456789', 'testing@email.com', 'testing'),
(4, 'Ahmad Nesfu', '12345678', 'ahmad@email.com', 'ahmad'),
(5, 'adibah', '0129777778', 'adibahrosman@gmail.com', 'Abc123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`admin_user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`detailid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `admin_user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
