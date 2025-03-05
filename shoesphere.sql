-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 02:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoesphere`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@email.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_cost` decimal(10,2) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_phone` int(11) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_email`, `user_city`, `user_address`, `order_date`) VALUES
(1, NULL, 0.00, 'paid', 1, 0, 'rijanb98@gmail.com', 'Brahmin/Chhetri', 'dada', '2025-02-16 09:31:10'),
(2, NULL, 23232.00, 'not paid', 1, 0, 'rijanb98@gmail.com', 'Brahmin/Chhetri', 'dada', '2025-02-16 09:31:47'),
(3, NULL, 5000.00, 'not paid', 6, 0, 'rijanb98@gmail.com', 'Brahmin/Chhetri', 'dada', '2025-02-19 01:16:56'),
(4, NULL, 5000.00, 'not paid', 6, 0, '1111@1111.com', 'Brahmin/Chhetri', 'dada', '2025-02-19 01:17:18'),
(5, NULL, 5000.00, 'not paid', 6, 0, '1111@1111.com', 'Brahmin/Chhetri', 'dada', '2025-02-19 01:19:32'),
(6, NULL, 5000.00, 'not paid', 6, 0, '1111@1111.com', 'Brahmin/Chhetri', 'dada', '2025-02-19 01:20:37'),
(7, NULL, 5000.00, 'not paid', 6, 0, NULL, 'Brahmin/Chhetri', 'dada', '2025-02-19 01:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(1, 1, '1', 'User One', 'User One1.jpeg', 0.00, 1, 1, '2025-02-16 09:31:10'),
(2, 2, '1', 'User One', 'User One1.jpeg', 23232.00, 1, 1, '2025-02-16 09:31:47'),
(3, 3, '4', 'Colorful Nike', 'Colorful Nike1.jpeg', 5000.00, 1, 6, '2025-02-19 01:16:56'),
(4, 4, '4', 'Colorful Nike', 'Colorful Nike1.jpeg', 5000.00, 1, 6, '2025-02-19 01:17:18'),
(5, 5, '4', 'Colorful Nike', 'Colorful Nike1.jpeg', 5000.00, 1, 6, '2025-02-19 01:19:32'),
(6, 6, '4', 'Colorful Nike', 'Colorful Nike1.jpeg', 5000.00, 1, 6, '2025-02-19 01:20:37'),
(7, 7, '4', 'Colorful Nike', 'Colorful Nike1.jpeg', 5000.00, 1, 6, '2025-02-19 01:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_image2` varchar(255) DEFAULT NULL,
  `product_image3` varchar(255) DEFAULT NULL,
  `product_image4` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_special_offer` int(2) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(4, 'Colorful Nike', 'nike', 'Very BEautiful and stylish shoe', 'Colorful Nike1.jpeg', 'Colorful Nike2.jpeg', 'Colorful Nike3.jpeg', 'Colorful Nike4.jpeg', 5000.00, 20, 'colorful');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Rijan Bhandari', 'rijan@xyz.x', '1bbd886460827015e5d605ed44252251'),
(2, '1111', '121@111.com', '1bbd886460827015e5d605ed44252251'),
(3, '2131', '121@1111.com', '1bbd886460827015e5d605ed44252251'),
(4, 'Rijan Bhandari', '121@11111.com', '1bbd886460827015e5d605ed44252251'),
(5, 'rijan bhandari', 'rijan@11111.com', '1bbd886460827015e5d605ed44252251'),
(6, 'rijan bhandari', 'rijan@1abc.com', '1bbd886460827015e5d605ed44252251');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
