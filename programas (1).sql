-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 04, 2024 at 02:50 PM
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
-- Database: `aaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `programas`
--

CREATE TABLE `programas` (
  `programa_id` int NOT NULL,
  `titulo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `abvr` char(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `entrenadores` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `grupo_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programas`
--

INSERT INTO `programas` (`programa_id`, `titulo`, `abvr`, `entrenadores`, `grupo_id`, `created_at`, `updated_at`) VALUES
(1, 'PROGRAMA DE FÚTBOL', 'FTB-001', 'JUAN PÉREZ, ANA GÓMEZ', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(2, 'PROGRAMA DE NATACIÓN', 'NTN-002', 'CARLOS RUIZ', 2, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(3, 'PROGRAMA DE BALONCESTO', 'BKT-003', 'LUIS FERNÁNDEZ, MARTA LÓPEZ', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(4, 'PROGRAMA DE ATLETISMO', 'ATL-004', 'SOFÍA RAMÍREZ', 3, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(5, 'PROGRAMA DE TENIS', 'TNS-005', 'PEDRO SÁNCHEZ', 2, '2024-12-04 14:41:14', '2024-12-04 14:41:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`programa_id`),
  ADD UNIQUE KEY `abvr` (`abvr`),
  ADD KEY `grupo_id` (`grupo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `programa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `centros` (`id_centro`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
