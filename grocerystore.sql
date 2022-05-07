-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 01:50 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '06d1108043ad13aebdca098c7e6bfe64', '2018-05-25 05:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`) VALUES
(4, 'Banner 1', 'assets/images/BannerImage/20220412060402000000.png'),
(5, 'banner2', 'assets/images/BannerImage/20220412060415000000.png'),
(6, 'Banner3', 'assets/images/BannerImage/20220412060426000000.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cateimg` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `cateimg`) VALUES
(309, 'Vegetables', 'assets/images/ProductImage/category/20220412070435000000.png'),
(310, 'Fruits', 'assets/images/ProductImage/category/20220412070415000000.png'),
(311, 'Dals & Pulses', 'assets/images/ProductImage/category/20220412070426000000.png'),
(312, 'Dairy', 'assets/images/ProductImage/category/20220412070441000000.png'),
(327, 'Makeup & Fragrances', 'assets/images/ProductImage/category/20220412070406000000.png'),
(328, 'Toys, Games & Collectibles', 'assets/images/ProductImage/category/20220412070422000000.png'),
(329, 'Health and Personal Care', 'assets/images/ProductImage/category/20220412070444000000.png');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `attribute` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL DEFAULT 'Rs.',
  `discount` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `homepage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `category_id`, `attribute`, `currency`, `discount`, `price`, `image`, `homepage`) VALUES
(1034, 'Onion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 309, '1Kg', 'Rs.', '20', '22', 'assets/images/ProductImage/product/20220413010413000000.png', 'YES'),
(1035, 'Patato', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 309, '1KG', 'Rs.', '25', '27', 'assets/images/ProductImage/product/20220413010426000000.png', 'YES'),
(1036, 'Tamato - Local', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 309, '1Kg', 'Rs.', '19', '22', 'assets/images/ProductImage/product/20220413010409000000.png', 'YES'),
(1037, 'Sweet Corn', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 309, '1Piece', 'Rs.', '13', '15', 'assets/images/ProductImage/product/20220413010425000000.png', 'YES'),
(1038, 'Fresho Cauliflower, 1 pc (approx. 400 to 600 g)', '', 309, '1Piece', 'Rs.', '20', '26', 'assets/images/ProductImage/product/20220413010418000000.png', 'NO'),
(1039, 'Apple Shimila', '', 310, '1Kg', 'Rs.', '230', '250', 'assets/images/ProductImage/product/20220413010455000000.png', 'NO'),
(1040, 'Banana', '', 310, '1Kg', 'Rs.', '18', '20', 'assets/images/ProductImage/product/20220413010435000000.png', 'NO'),
(1041, 'Orange', '', 310, '1Kg', 'Rs.', '150', '180', 'assets/images/ProductImage/product/20220413010410000000.png', 'NO'),
(1042, 'Mango', '', 310, '1Kg', 'Rs.', '90', '120', 'assets/images/ProductImage/product/20220413010438000000.png', 'NO'),
(1043, 'Tur Dal', '', 311, '1 KG', 'Rs.', '100', '120', 'assets/images/ProductImage/product/20220413010434000000.png', 'NO'),
(1044, 'Moong Dal', '', 311, '1Kg', 'Rs.', '90', '110', 'assets/images/ProductImage/product/20220413010413000000.png', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `description`) VALUES
(38, 'test', 'testt');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `image`) VALUES
(4, 'offer1', 'assets/images/OfferImage/20220412060425000000.png'),
(5, 'Offer2', 'assets/images/OfferImage/20220412060435000000.png'),
(6, 'Offer3', 'assets/images/OfferImage/20220412060447000000.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `area` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fname`, `lname`, `mobile`, `area`, `address`, `status`, `user_id`, `date`, `total`) VALUES
(44, 'Santosh Kumar Dash', ' ', '9876543210', 'Adyar', 'Kudlu Main Rd,Adyar,Karnataka,560068', 'Confirmed', '241', '2022-04-13 11:38:58', '540');

-- --------------------------------------------------------

--
-- Table structure for table `orderslist`
--

CREATE TABLE `orderslist` (
  `id` int(50) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `itemname` varchar(500) NOT NULL,
  `itemquantity` varchar(100) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `itemImage` varchar(250) DEFAULT NULL,
  `itemprice` varchar(30) NOT NULL,
  `itemtotal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderslist`
--

INSERT INTO `orderslist` (`id`, `orderid`, `itemname`, `itemquantity`, `attribute`, `currency`, `itemImage`, `itemprice`, `itemtotal`) VALUES
(330, '44', 'Moong Dal', '3', '1Kg', 'Rs.', 'assets/images/ProductImage/product/20220413010413000000.png', '90', '270.0'),
(331, '44', 'Mango', '3', '1Kg', 'Rs.', 'assets/images/ProductImage/product/20220413010438000000.png', '90', '270.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(11) DEFAULT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `reset_code` varchar(6) DEFAULT NULL,
  `firebase_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `area`, `address`, `state`, `city`, `zip`, `mobile`, `email`, `password`, `reset_code`, `firebase_token`) VALUES
(241, 'Santosh Kumar Dash', '', NULL, 'Kudlu Main Rd', 'Karnataka', 'Adyar', '560068', '9876543210', 'test@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', NULL, 'c2l73Fp4S-muAL4embyIpZ:APA91bEMnjg6jdUZZFl18EdT3neQbdHqg2ykmEMiIblx8p46iHUghvrKixsVLuEOz_sQNE25dNMruWgIJDWlWyRJp0Ax_kDm1Z8EiOUIdTkK5Cig7r9ma0Jcp5wYVB_4QGRIRPYeVpLe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderslist`
--
ALTER TABLE `orderslist`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orderslist`
--
ALTER TABLE `orderslist`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
