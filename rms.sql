-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 09:27 AM
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
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `net` float NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `net`, `total`) VALUES
(1, 40, 2),
(2, 100, 1),
(3, 100, 1),
(4, 798, 2),
(5, 1000, 10),
(6, 1000, 10),
(7, 1508, 7),
(8, 1768, 7),
(9, 1800, 10),
(10, 1320, 6),
(11, 930, 4),
(12, 100, 2),
(13, 430, 2),
(14, 830, 2),
(15, 635, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `description`, `image_path`) VALUES
(167, 'Virgin Raspberry Mojito', 'Soft Cocktail', 170.00, '\"Virgin Raspberry Mojito: A burst of fresh flavors without the alcohol. Enjoy the tangy sweetness of raspberries, muddled with mint and lime, topped with soda. It\'s a refreshing sip that\'s perfect for any occasion, alcohol-free.\"', 'C:\\Users\\nisch\\OneDrive\\Desktop\\Resturant management system Slide and word\\Product Image\\Virgin Raspberry Mojito Rezept - Schweppes Cocktails.jpeg'),
(218, 'Watermelon Mojito', 'Soft Cocktail', 500.00, 'NIce', 'C:\\Users\\nisch\\OneDrive\\Desktop\\Resturant management system Slide and word\\product image\\local_img.jpg'),
(1122, 'Double Burger', 'Burger', 330.00, '\"Double Burger: Twice the Satisfaction. Get ready for a flavor explosion with our Double Burger! Two juicy beef patties, double the cheese, and all the fixings sandwiched between soft buns. It\'s a hearty indulgence that\'ll leave you fully satisfied. Hungry for more? Double up and dive in!\"', 'C:\\Users\\nisch\\OneDrive\\Desktop\\Resturant management system Slide and word\\Product Image\\Premium Photo _ Double burger sandwich filled with melted yellow cheddar cheese isolated.jpeg'),
(1620, 'Sprite', 'Beverage', 180.00, 'Sprite', 'C:\\Users\\nisch\\OneDrive\\Desktop\\Resturant management system Slide and word\\Product Image\\sprite.jpeg'),


-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` decimal(15,0) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `username`, `phone`, `password`, `address`) VALUES
(25, 'Gregory Temwa', 'gregorytemwa1212@gmail.com', 'gregory', 0759442583, 'Greg@1234', 'USIU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `unique_product_name` (`product_name`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9945;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
