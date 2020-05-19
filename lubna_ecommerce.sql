-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 09:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lubna_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(3, 'Mascara'),
(4, 'Lipstick'),
(6, 'Primer'),
(7, 'Eye Shadow'),
(12, 'Powder'),
(14, 'Makeup Sponge'),
(15, ' Makeup Brush'),
(16, 'Spray');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(20) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_phone` varchar(200) NOT NULL,
  `customer_password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_status` varchar(200) NOT NULL,
  `customer_data_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_password`, `customer_status`, `customer_data_time`) VALUES
(2, 'Lubna Mabrouk', 'lubna.mabrouk97@hotmail.com', '0798877641', '123456', 'Active', '2020-05-13 12:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `order_number` varchar(250) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `total_price` float NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `order_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_number`, `customer_id`, `total_price`, `order_status`, `order_date_time`) VALUES
(15, '5', 2, 15, 'Finish', '2020-05-17 22:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(20) NOT NULL,
  `order_number` varchar(250) NOT NULL,
  `order_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_number`, `order_id`, `product_id`, `quantity`, `price`, `total_price`) VALUES
(7, '5', 15, 21, 1, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_description` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `product_quantity` int(20) NOT NULL,
  `product_price` float NOT NULL,
  `product_color` varchar(200) NOT NULL,
  `category_id` int(20) NOT NULL,
  `product_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_image`, `product_quantity`, `product_price`, `product_color`, `category_id`, `product_date_time`) VALUES
(8, 'Maybelline Mascara', 'Maybelline New York Makeup Great Lash Washable Mascara, Blackest Black Volumizing Mascara.', 'Products_Pictures/Mascara1.jpg', 20, 10, 'Black', 3, '2020-05-17 20:35:21'),
(9, 'Almay Lipstick', 'Almay Lip Vibes, Go Wild, matte lipstick.', 'Products_Pictures/lipstick.jpg', 20, 15, 'Pink', 4, '2020-05-14 18:27:07'),
(11, 'Inglot Primer', 'Inglot Duraline Liquid Sealer, Restorer For Eyeliner, Eyeshadow, Primer', 'Products_Pictures/primer.jpg', 20, 10, 'white', 6, '2020-05-14 21:54:50'),
(15, 'Revlon Eye Shadow', 'Revlon ColorStay 16 Hour Eye Shadow Quad.', 'Products_Pictures/Eye Shadow.jpg', 15, 20, 'mixed', 7, '2020-05-15 18:46:45'),
(16, 'e.l.f. powder', 'e.l.f. Perfect Finish HD Powder Blurring Formula, 0.28 Ounce.', 'Products_Pictures/Powder.jpg', 4, 20, '0.28', 12, '2020-05-14 22:37:38'),
(18, 'BEAKEY ', 'BEAKEY Makeup Brush Set, Premium Synthetic Kabuki Foundation Face Powder Blush Eyeshadow Brushes Makeup.', 'Products_Pictures/Makeup Brush.jpg', 20, 6, 'black', 15, '2020-05-14 22:46:52'),
(19, 'SIMPL Spray', 'The SIMPL Company Makeup Setting Spray - Finishing Spray for Makeup with Organic Green Tea, MSM, DMAE - Long Lasting Hydrating Face Spray Mist (Packaging May Vary)', 'Products_Pictures/Spray.jpg', 15, 10, 'white', 16, '2020-05-14 22:51:06'),
(21, 'BEAUTY BLENDER', 'BEAUTYBLENDER ORIGINAL Makeup Sponge for Foundations, Powders & Creams', 'Products_Pictures/spong1.jpg', 11, 15, 'Pink', 14, '2020-05-17 22:13:12'),
(22, 'NYX Lipstick', 'NYX PROFESSIONAL MAKEUP Butter Gloss - Vanilla Cream Pie', 'Products_Pictures/gloss1.jpg', 17, 10, 'Pink', 4, '2020-05-17 20:35:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
