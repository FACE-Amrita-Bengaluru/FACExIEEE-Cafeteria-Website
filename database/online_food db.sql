-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 06:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(1, '981232308_bannerrro.png', 'Welcome to The Cafe', 'Get upto 5% off on Mondays', 'shop', 'Order Now', 1, '2020-06-23 03:00:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(2, 'Paleo', 2, 1, '2020-06-16 12:06:41'),
(4, 'Vegan', 3, 1, '2020-06-16 12:07:18'),
(6, 'Keto', 1, 1, '2021-03-29 05:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(4, 'Shreya', 'shreya8250@gmail.com', '7777777777', 'Looking for a job position', 'Kindly oblige', '2021-05-18 12:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 50, '2020-08-20', 1, '2020-06-20 05:31:03'),
(2, 'FRIDAY', 'F', 200, 200, '2020-07-15', 1, '2020-07-10 10:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Shreya', '1234567890', 'random', 1, '2021-05-06 08:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(1, 2, 'Steamed pepper chicken', 'Steamed pepper chicken', '401642372_p3.png', 'non-veg', 1, '2020-06-17 10:43:59'),
(3, 2, 'Steak with veggies', 'Steak with veggies', '829198770_p2.png', 'non-veg', 1, '2020-06-17 10:47:26'),
(5, 2, 'Steak with sweetpotato', 'testing', '989673245_p1.png', 'non-veg', 1, '2020-07-06 12:00:24'),
(7, 2, 'Fish with cauliflower', 'Fish with cauliflower', '604177210_p6.png', 'non-veg', 1, '2021-03-29 06:20:17'),
(8, 2, 'Chicken in pesto', 'Chicken in pesto', '510033584_p5.png', 'non-veg', 1, '2021-03-29 06:21:15'),
(9, 4, 'Tofu with veggies and cheese', 'Tofu with veggies and cheese', '347510594_v1.png', 'veg', 1, '2021-03-29 07:14:25'),
(10, 4, 'Fried Mushroom with veggies', 'Fried Mushroom with veggies', '967446533_v2.png', 'veg', 1, '2021-03-29 07:16:07'),
(11, 4, 'Cold pasta with veggies', 'Cold pasta with veggies', '870860898_v3.png', 'veg', 1, '2021-03-29 07:17:38'),
(12, 4, 'Chickpea and rice', 'Chickpea and rice', '553808234_v4.png', 'veg', 1, '2021-03-29 07:19:12'),
(13, 6, 'Salmon and cherry tomatoes', 'Salmon and cherry tomatoes', '449769269_k11.png', 'non-veg', 1, '2021-03-29 07:22:14'),
(14, 6, 'Chicken in tomato sauce', 'Chicken and tomato sauce', '896929683_499832996_v7.png', 'non-veg', 1, '2021-03-29 07:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(3, 2, 6, 2, '2020-07-21 09:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, '1 serving', 300, 1, '2020-06-19 10:25:47'),
(6, 1, '1 serving', 200, 1, '2020-06-20 00:00:00'),
(8, 4, 'Half', 250, 0, '2020-06-27 12:50:50'),
(9, 4, 'Full', 410, 1, '2020-06-27 12:50:50'),
(11, 5, '1 serving', 350, 1, '2020-07-06 12:00:24'),
(13, 6, 'Full', 50, 1, '2021-03-28 09:34:58'),
(14, 7, '1 serving', 250, 1, '2021-03-29 06:20:17'),
(15, 8, '1 serving', 250, 1, '2021-03-29 06:21:15'),
(16, 9, '1 serving', 180, 1, '2021-03-29 07:14:25'),
(17, 10, '1 serving', 180, 1, '2021-03-29 07:16:07'),
(18, 11, '1 serving', 200, 1, '2021-03-29 07:17:38'),
(19, 12, '1 serving', 200, 1, '2021-03-29 07:19:12'),
(20, 13, '1 serving', 300, 1, '2021-03-29 07:22:14'),
(21, 14, '1 serving', 300, 1, '2021-03-29 07:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `new1`
--

CREATE TABLE `new1` (
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new1`
--

INSERT INTO `new1` (`no`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `newt`
--

CREATE TABLE `newt` (
  `no` int(10) NOT NULL,
  `text` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newt`
--

INSERT INTO `newt` (`no`, `text`) VALUES
(2, 'tab');

-- --------------------------------------------------------

--
-- Table structure for table `newta`
--

CREATE TABLE `newta` (
  `no` int(10) NOT NULL,
  `text` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newta`
--

INSERT INTO `newta` (`no`, `text`) VALUES
(1, 'new'),
(2, 'tab');

-- --------------------------------------------------------

--
-- Table structure for table `newto`
--

CREATE TABLE `newto` (
  `no` int(10) NOT NULL,
  `text` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newto`
--

INSERT INTO `newto` (`no`, `text`) VALUES
(2, 'tab');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(6, 5, 9, 410, 1),
(7, 6, 2, 170, 2),
(8, 7, 13, 50, 2),
(9, 8, 6, 40, 2),
(10, 9, 6, 200, 3),
(11, 9, 18, 200, 1),
(12, 10, 16, 180, 1),
(13, 11, 17, 180, 1),
(14, 11, 18, 200, 2),
(15, 12, 16, 180, 2),
(16, 12, 1, 300, 1),
(17, 13, 16, 180, 2),
(18, 13, 1, 300, 1),
(19, 14, 1, 300, 2),
(20, 14, 17, 180, 4),
(21, 15, 15, 250, 2),
(22, 15, 1, 300, 2),
(23, 15, 17, 180, 1),
(24, 16, 6, 200, 2),
(25, 17, 6, 200, 2),
(26, 18, 1, 300, 1),
(27, 18, 17, 180, 3),
(28, 19, 6, 200, 1),
(29, 19, 20, 300, 3),
(30, 20, 1, 300, 3),
(31, 21, 1, 300, 2),
(32, 21, 18, 200, 1),
(33, 22, 6, 200, 3),
(34, 23, 6, 200, 3),
(35, 24, 1, 300, 5),
(36, 25, 1, 300, 1),
(37, 25, 6, 200, 3),
(38, 26, 6, 200, 2),
(39, 27, 16, 180, 4),
(40, 28, 6, 200, 3),
(41, 29, 1, 300, 1),
(42, 30, 16, 180, 5),
(43, 30, 17, 180, 4),
(44, 31, 1, 300, 2),
(45, 32, 20, 300, 2),
(46, 33, 1, 300, 2),
(47, 33, 11, 350, 1),
(48, 34, 1, 300, 2),
(49, 34, 17, 180, 3),
(50, 35, 1, 300, 2),
(51, 36, 6, 200, 3),
(52, 37, 1, 300, 2),
(53, 37, 20, 300, 2),
(54, 38, 1, 300, 2),
(55, 39, 16, 180, 2),
(56, 39, 17, 180, 1),
(57, 40, 6, 200, 2),
(58, 41, 16, 180, 2),
(59, 41, 6, 200, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(36, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 600, '', 600, '4', 0, 'success', 'paytm', '20210518111212800110168636402630447', 1, 'user', '0000-00-00 00:00:00', '2021-05-18 02:44:25', '0000-00-00 00:00:00'),
(37, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 1200, '', 1200, '4', 0, 'success', 'paytm', '20210518111212800110168547402628991', 1, 'user', '0000-00-00 00:00:00', '2021-05-18 08:51:22', '0000-00-00 00:00:00'),
(38, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 600, '', 600, '4', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2021-05-18 09:00:52', '0000-00-00 00:00:00'),
(39, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 540, '', 540, '4', 0, 'success', 'paytm', '20210518111212800110168366302623092', 1, 'user', '0000-00-00 00:00:00', '2021-05-18 09:09:31', '0000-00-00 00:00:00'),
(40, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 400, '', 400, '4', 0, 'success', 'paytm', '20210518111212800110168388002613803', 4, 'user', '0000-00-00 00:00:00', '2021-05-18 09:57:46', '0000-00-00 00:00:00'),
(41, 54, 'Shreya', 'shernobley@gmail.com', '7777777777', '5', 960, '', 960, '4', 0, 'success', 'paytm', '20210518111212800110168297902655205', 1, 'user', '0000-00-00 00:00:00', '2021-05-18 12:15:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(2, 54, 33, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 40, 'Cart min price will be 50 rs', 0, 0, 'Website Closed for today', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(46, 'Shakes', 'sher@gmail.com', '9999999999', '$2y$10$DIqxOnRO1WtZApr4BZRzFeURo/2sr8IGaOtDBGPv.xpgcocTZin4q', 1, 1, 'kxwcfomylwhngiz', 'jnukyktpgigevez', '', '2021-04-07 12:18:23'),
(54, 'Shreya', 'shernobley@gmail.com', '7777777777', '$2y$10$xFf59lHThvxHgrG8rFv1ZeFzsccjijTAxQiDDU1Q58B8pd8cL.33S', 1, 1, 'veqgjxltwscvjtu', 'sxhvecawcopzodi', '', '2021-05-16 09:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2020-07-18 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2020-07-18 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2020-07-18 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2020-07-18 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2020-07-18 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2020-07-18 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2020-07-18 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2020-07-18 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2020-07-18 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2020-07-19 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2020-07-19 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2020-07-21 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2020-07-21 08:22:46'),
(23, 0, 50, 'Referral Amt from shernobley@gmail.com', 'in', '', '2021-05-18 12:39:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
