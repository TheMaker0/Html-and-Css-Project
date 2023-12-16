-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 01:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kapemanen`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal_amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `price`, `title`, `quantity`, `subtotal_amount`, `date`, `invoice_number`, `user_id`) VALUES
(1, 45.00, 'AMERICANO - HOT ESPRESSO (12 OZ)', 1, 45.00, '2023-12-09', 'INV-432726', 1),
(2, 40.00, 'INDONESIAN SUMATRA MANDHELING (12 OZ)', 1, 40.00, '2023-12-09', 'INV-432726', 1),
(3, 50.00, 'NITRO COLD BREW W/ STRAW (12 OZ)', 1, 50.00, '2023-12-09', 'INV-432726', 1),
(4, 30.00, 'SEASONAL SINGLE-ORIGIN (12 OZ)', 1, 30.00, '2023-12-09', 'INV-432726', 1),
(5, 45.00, 'AMERICANO - HOT ESPRESSO (12 OZ)', 1, 45.00, '2023-12-09', 'INV-191443', 2),
(6, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-09', 'INV-191443', 2),
(7, 45.00, 'AMERICANO - HOT ESPRESSO (12 OZ)', 1, 45.00, '2023-12-16', 'INV-775647', 2),
(8, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-775647', 2),
(9, 50.00, 'NITRO COLD BREW W/ STRAW (12 OZ)', 1, 50.00, '2023-12-16', 'INV-775647', 2),
(10, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-978366', 3),
(11, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-978366', 3),
(12, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-978366', 3),
(13, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-978366', 3),
(14, 40.00, 'COLOMBIAN SUPREMO CUP (12 OZ)', 1, 40.00, '2023-12-16', 'INV-978366', 3),
(15, 45.00, 'AMERICANO - HOT ESPRESSO (12 OZ)', 1, 45.00, '2023-12-16', 'INV-574262', 4),
(16, 85.00, 'SPECIALTY BREWS (12 OZ)', 1, 85.00, '2023-12-16', 'INV-574262', 4),
(17, 80.00, 'SEASONAL ORIGIN (12 OZ)', 1, 80.00, '2023-12-16', 'INV-574262', 4),
(18, 35.00, 'ICED AMERICANO (12 OZ)', 1, 35.00, '2023-12-16', 'INV-342294', 4),
(19, 55.00, 'MINT MOJITO ICED COFFEE (12 OZ)', 1, 55.00, '2023-12-16', 'INV-342294', 4),
(20, 40.00, 'INDONESIAN SUMATRA MANDHELING (12 OZ)', 1, 40.00, '2023-12-16', 'INV-277062', 4),
(21, 55.00, 'MINT MOJITO ICED COFFEE (12 OZ)', 1, 55.00, '2023-12-16', 'INV-277062', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'Mark Glenn, Facun, Serinas', 'marky', 'glenm906@gmail.com', '075cd4e3a7118a0cf1d3ce449cb9f958', '2023-12-09'),
(2, 'jamaica', 'jai', 'maker@gmail.com', 'fe7fba753645684332b2ce3eab26dd54', '2023-12-09'),
(3, 'Henry Reyes', 'Henry', 'Henry123@gmail.com', '9f876785ec5425a0511339bed7230c2a', '2023-12-16'),
(4, 'james baranda', 'james', 'jamesbaranda123@gmail.com', '9ba36afc4e560bf811caefc0c7fddddf', '2023-12-16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
