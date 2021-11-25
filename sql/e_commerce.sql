-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 05:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `Model`, `Price`, `Photo`) VALUES
(1, 'Ferrari', 'Ferrari 488 Pista Spider 2020', '35,000,000', 'ferrari1.jpg'),
(3, 'Mercedez', 'Mercedes-AMG G 65 Final Edition', '20,000,000', 'mercedes1.jpg'),
(4, 'Honda', 'Honda Accord 2018 model', '25,000,000', 'honda1.jpg'),
(5, 'Lexus', 'Clean Lexus IS250 2008', '15,000,000', 'lexus1.jpg'),
(6, 'Tesla', 'Tesla Model 3', '55,000,000', 'tesla1.png'),
(7, 'Toyota', 'Toyota Venza XLE 2021', '5,000,000', 'toyota1.jpg'),
(8, 'Nissan', '2020 Nissan Sentra', '10,000,000', 'nissan.jpg'),
(9, 'Hyundai', 'Hyundai Elantra LE Sedan 2018', '15,000,000', 'hyundai.png'),
(10, 'Buggati', 'Bugatti Chiron Super Sport 300 Plus', '49,500,000', 'buggati.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact`, `password`) VALUES
(1, 'OLUMIDE', 'BAMBE', 'loyalsfc@gmail.com', '08104123410', 'olumide'),
(2, 'Omotayo', 'James', 'motayo@james.com', '08033284971', 'motayo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
