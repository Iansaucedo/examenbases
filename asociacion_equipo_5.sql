-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 04, 2024 at 02:42 PM
-- Server version: 9.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asociacion_equipo_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `centros`
--

CREATE TABLE `centros` (
  `id_centro` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_local` int NOT NULL,
  `capacidad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centros`
--

INSERT INTO `centros` (`id_centro`, `nombre`, `id_local`, `capacidad`, `created_at`, `updated_at`) VALUES
(1, 'CENTRO A', 1, 50, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(2, 'CENTRO B', 2, 30, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(3, 'CENTRO C', 3, 40, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(4, 'CENTRO D', 4, 20, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(5, 'CENTRO E', 5, 25, '2024-12-04 14:41:14', '2024-12-04 14:41:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id_centro`),
  ADD KEY `id_local` (`id_local`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centros`
--
ALTER TABLE `centros`
  MODIFY `id_centro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `centros`
--
ALTER TABLE `centros`
  ADD CONSTRAINT `centros_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`) ON DELETE CASCADE;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
