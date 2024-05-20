-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 02:48 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `name`, `email`, `address`, `phonenumber`) VALUES
(1, 'fischer', 'fischer04@gmail.com', 'lahore', '0322802975'),
(2, 'javeria', 'javeria04@gmail.com', 'karachi', '0345675432'),
(3, 'shaheer', 'shaheer04@gmail.com', 'islamabad', '0345234238'),
(4, 'abdullah', 'abdullah04@gmail.com', 'pindi', '0322806875'),
(5, 'khalid', 'khalid04@gmail.com', 'lahore', '0311345439');

-- --------------------------------------------------------

--
-- Table structure for table `order-items`
--

CREATE TABLE `order-items` (
  `order-item-id` int(14) NOT NULL,
  `order-id` int(14) NOT NULL,
  `product-id` int(14) NOT NULL,
  `quantity` int(14) NOT NULL,
  `price` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order-items`
--

INSERT INTO `order-items` (`order-item-id`, `order-id`, `product-id`, `quantity`, `price`) VALUES
(1234, 1, 7890, 10, 4500),
(5678, 2, 5690, 56, 5600),
(5643, 3, 5621, 10, 6700),
(5643, 5, 7890, 32, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order-id` int(30) NOT NULL,
  `customer-id` int(30) NOT NULL,
  `order date` date NOT NULL,
  `total amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order-id`, `customer-id`, `order date`, `total amount`) VALUES
(1, 1, '2024-05-15', '7800'),
(2, 2, '2024-05-21', '2300'),
(3, 3, '2024-05-15', '6400'),
(4, 4, '2024-05-21', '2350'),
(5, 5, '2021-05-09', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment-id` int(34) NOT NULL,
  `order-id` int(34) NOT NULL,
  `payment date` date NOT NULL,
  `amount` int(34) NOT NULL,
  `payment method` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment-id`, `order-id`, `payment date`, `amount`, `payment method`) VALUES
(10, 1, '2024-05-15', 10, 'cash'),
(20, 2, '2024-05-20', 45000, 'online'),
(10, 1, '2024-05-06', 2300, 'cash'),
(20, 2, '2024-05-13', 45000, 'online'),
(30, 3, '2024-05-18', 2300, 'cash'),
(40, 4, '2024-05-20', 45000, 'online'),
(50, 5, '2024-05-15', 2300, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product-id` int(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(45) NOT NULL,
  `category` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product-id`, `name`, `price`, `category`) VALUES
(1, 'abdullah', 3400, 'toys'),
(2, 'shaheer', 4500, 'vegetables'),
(3, 'noman', 6700, 'oil'),
(4, 'khalid', 8900, 'kitchen wear'),
(5, 'yousaf', 1200, 'dress'),
(1, 'abdullah', 3400, 'toys'),
(2, 'shaheer', 4500, 'vegetables'),
(3, 'noman', 6700, 'oil'),
(4, 'khalid', 8900, 'kitchen wear'),
(5, 'yousaf', 1200, 'dress');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
