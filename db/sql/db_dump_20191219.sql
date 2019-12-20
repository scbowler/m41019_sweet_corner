-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2019 at 03:34 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--
CREATE DATABASE IF NOT EXISTS `sweet_corner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_corner`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `statusId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL,
  `lastInteraction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `statusId`, `userId`, `lastInteraction`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'c046c361-17e5-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-06 05:03:32', '2019-12-06 05:03:32', '2019-12-06 05:03:32', NULL),
(2, '8407f4c3-1bc6-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:30:02', '2019-12-11 03:30:02', '2019-12-11 03:30:02', NULL),
(3, '094e8080-1bc8-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:40:55', '2019-12-11 03:40:55', '2019-12-11 03:40:55', NULL),
(4, 'bafdb591-1bc8-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:45:53', '2019-12-11 03:45:53', '2019-12-11 03:45:53', NULL),
(5, 'c485e507-1bc8-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:46:09', '2019-12-11 03:46:09', '2019-12-11 03:46:09', NULL),
(6, '0a433b40-1bc9-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:48:06', '2019-12-11 03:48:06', '2019-12-11 03:48:06', NULL),
(7, '1e937d39-1bc9-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:48:40', '2019-12-11 03:48:40', '2019-12-11 03:48:40', NULL),
(8, '0e2b9316-1bca-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 03:55:22', '2019-12-11 03:55:22', '2019-12-11 03:55:22', NULL),
(9, 'ba786e13-1bcc-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 04:14:30', '2019-12-11 04:14:30', '2019-12-11 04:14:30', NULL),
(10, '4c374b49-1bd2-11ea-9ed5-0242ac120002', 2, NULL, '2019-12-11 04:54:22', '2019-12-11 04:54:22', '2019-12-11 04:54:22', NULL),
(11, '4d0f7cdc-1d56-11ea-8914-0242ac120002', 2, NULL, '2019-12-13 03:11:48', '2019-12-13 03:11:48', '2019-12-13 03:11:48', NULL),
(12, '56d58115-1d59-11ea-8914-0242ac120002', 2, NULL, '2019-12-13 03:33:33', '2019-12-13 03:33:33', '2019-12-13 03:33:33', NULL),
(13, '0c1d2dd0-214d-11ea-94e8-0242ac120002', 2, NULL, '2019-12-18 04:15:38', '2019-12-18 04:15:38', '2019-12-18 04:15:38', NULL),
(14, '03f94f40-22d9-11ea-bf58-0242ac120002', 2, NULL, '2019-12-20 03:30:05', '2019-12-20 03:30:05', '2019-12-20 03:30:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

CREATE TABLE `cartItems` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `cartId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `pid`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ba7a3919-1bcc-11ea-9ed5-0242ac120002', 9, 1, 1, '2019-12-11 04:14:30', '2019-12-11 04:14:30', NULL),
(2, '4c387df1-1bd2-11ea-9ed5-0242ac120002', 10, 1, 1, '2019-12-11 04:54:22', '2019-12-11 04:54:22', NULL),
(3, '4d12ec2f-1d56-11ea-8914-0242ac120002', 11, 1, 1, '2019-12-13 03:11:48', '2019-12-13 03:11:48', NULL),
(4, '56d83460-1d59-11ea-8914-0242ac120002', 12, 1, 1, '2019-12-13 03:33:33', '2019-12-13 03:33:33', NULL),
(5, '9381941f-1d5b-11ea-8914-0242ac120002', 11, 4, 9, '2019-12-13 03:49:34', '2019-12-13 04:45:10', NULL),
(6, '7882a013-1d63-11ea-8914-0242ac120002', 11, 3, 92, '2019-12-13 04:46:04', '2019-12-14 23:57:11', NULL),
(7, '0c1e2b4f-214d-11ea-94e8-0242ac120002', 13, 6, 1, '2019-12-18 04:15:38', '2019-12-18 04:15:38', NULL),
(8, '67a24a2c-2153-11ea-94e8-0242ac120002', 13, 4, 4, '2019-12-18 05:01:09', '2019-12-18 05:01:09', NULL),
(9, '03fa3692-22d9-11ea-bf58-0242ac120002', 14, 4, 3, '2019-12-20 03:30:05', '2019-12-20 03:30:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

CREATE TABLE `cartStatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartStatuses`
--

INSERT INTO `cartStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'new', 'New', 'Cart is new and empty', '2019-12-06 04:40:08', '2019-12-06 04:40:08', NULL),
(2, 'active', 'Active', 'Cart has items but the order has not been completed', '2019-12-06 04:40:08', '2019-12-06 04:40:08', NULL),
(3, 'closed', 'Closed', 'The order has been completed and the cart is closed', '2019-12-06 04:40:08', '2019-12-06 04:40:08', NULL),
(4, 'canceled', 'Canceled', 'The order has been canceled and the cart is closed', '2019-12-06 04:40:08', '2019-12-06 04:40:08', NULL),
(5, 'inactive', 'Inactive', 'Cart is no longer the currently active cart, but can be reactivated', '2019-12-06 04:40:08', '2019-12-06 04:40:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `altText` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('full_image','thumbnail') NOT NULL DEFAULT 'full_image',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `productId`, `createdById`, `altText`, `name`, `file`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '3f200d67-13cc-11ea-afa7-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(2, '3f200f0e-13cc-11ea-afa7-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(3, '3f200fc0-13cc-11ea-afa7-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(4, '3f200ffb-13cc-11ea-afa7-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(5, '3f20102f-13cc-11ea-afa7-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(6, '3f201061-13cc-11ea-afa7-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(7, '3f201090-13cc-11ea-afa7-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(8, '3f2010c4-13cc-11ea-afa7-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(9, '3f2010f9-13cc-11ea-afa7-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(10, '3f201128-13cc-11ea-afa7-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(11, '3f201157-13cc-11ea-afa7-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(12, '3f201185-13cc-11ea-afa7-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(13, '3f2011b5-13cc-11ea-afa7-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(14, '3f2011e4-13cc-11ea-afa7-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(15, '3f201214-13cc-11ea-afa7-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(16, '3f201244-13cc-11ea-afa7-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(17, '3f201277-13cc-11ea-afa7-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'full_image', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL),
(18, '3f2012ae-13cc-11ea-afa7-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'thumbnail', '2019-11-30 23:50:54', '2019-11-30 23:50:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `createdById`, `caption`, `cost`, `description`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '63b63931-13cb-11ea-afa7-0242ac120002', 1, 'Delicious Strawberry Cupcake', 350, 'These strawberry delights will satisfy both your sweet tooth and those strawberry cravings.', 'Strawberry Delight', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(2, '63b63b45-13cb-11ea-afa7-0242ac120002', 1, 'Sweet Berry Cupcake', 200, 'This is the berry cupcake of your dreams, they may be small but pack huge flavor.', 'Purple Dream', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(3, '63b63db2-13cb-11ea-afa7-0242ac120002', 1, 'Mini Strawberry Cupcake', 225, 'These are a miniature version of our famous Strawberry Delight cupcakes, all the flavor, half the guilt.', 'Mini Berry', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(4, '63b63e1d-13cb-11ea-afa7-0242ac120002', 1, 'Unicorn Tear Sparkling Cupcake', 650, 'What do unicorn tears taste like? We don\'t know, but we do know these cupcakes taste better!', 'Unicorn Tear', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(5, '63b63e54-13cb-11ea-afa7-0242ac120002', 1, 'Red and Yellow Rose Vanilla Cupcake', 575, 'Delightful vanilla cupcakes with rose frosting piled high on top.', 'Pearl Rose', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(6, '63b63e88-13cb-11ea-afa7-0242ac120002', 1, 'Silky Red Cupcake Loaded with Frosting', 350, 'A vanilla cupcake with strawberry silk frosting eloquently piled high with a peach topping.', 'Red Silk', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(7, '63b63ebe-13cb-11ea-afa7-0242ac120002', 1, 'Vanilla Cupcake Piled with Vanilla Frosting', 600, 'Not just another vanilla cupcake. Our Vanilla Stack Cake cupcake is stacked with three scoops of vanilla frosting and topped with drizzled vanilla and a delicious cherry.', 'Vanilla Stack Cake', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(8, '63b63ef8-13cb-11ea-afa7-0242ac120002', 1, 'Blueberry Cupcake Piled High with Toppings', 775, 'A large blueberry cupcake topped with blueberry frosting, chocolate syrup, whip cream, and a sweet cherry. Looks and taste like your favorite blueberry malt.', 'Blueberry Malt Cake', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL),
(9, '63b63f37-13cb-11ea-afa7-0242ac120002', 1, 'Lemon Cupcake with Piled High Lemon Frosting', 450, 'Lemon, lemon, and more lemon! Love lemon? So do we and our Double Lemon cupcake proves it!', 'Double Lemon', '2019-11-30 23:44:46', '2019-11-30 23:44:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;