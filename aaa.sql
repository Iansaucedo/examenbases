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
-- Database: `aaa`
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

-- --------------------------------------------------------

--
-- Table structure for table `entrenadores`
--

CREATE TABLE `entrenadores` (
  `entrenador_id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `programa_id` int NOT NULL,
  `horario` enum('SEMANA','FIN DE SEMANA') NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrenadores`
--

INSERT INTO `entrenadores` (`entrenador_id`, `nombre`, `programa_id`, `horario`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'JUAN PÉREZ', 1, 'SEMANA', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(2, 'ANA LÓPEZ', 2, 'FIN DE SEMANA', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(3, 'BRYAN BAQUEDANO', 3, 'SEMANA', 0, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(4, 'LAURA FERNÁNDEZ', 4, 'FIN DE SEMANA', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(5, 'ÁNGEL ROMERO', 5, 'SEMANA', 1, '2024-12-04 14:41:14', '2024-12-04 14:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `inscripciones`
--

CREATE TABLE `inscripciones` (
  `inscripcion_id` int NOT NULL,
  `grupo_id` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inscripciones`
--

INSERT INTO `inscripciones` (`inscripcion_id`, `grupo_id`, `fecha_inicio`, `fecha_fin`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-15', '2024-06-15', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(2, 2, '2024-02-01', '2024-07-01', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(3, 3, '2024-03-01', '2024-08-01', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(4, 4, '2024-04-01', '2024-09-01', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(5, 5, '2024-05-01', '2024-10-01', '2024-12-04 14:41:14', '2024-12-04 14:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `local`
--

CREATE TABLE `local` (
  `id_local` int NOT NULL,
  `nombre_local` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local`
--

INSERT INTO `local` (`id_local`, `nombre_local`, `created_at`, `updated_at`) VALUES
(1, 'LOCAL A', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(2, 'LOCAL B', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(3, 'LOCAL C', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(4, 'LOCAL D', '2024-12-04 14:41:14', '2024-12-04 14:41:14'),
(5, 'LOCAL E', '2024-12-04 14:41:14', '2024-12-04 14:41:14');

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
-- Indexes for table `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id_centro`),
  ADD KEY `id_local` (`id_local`);

--
-- Indexes for table `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD PRIMARY KEY (`entrenador_id`),
  ADD KEY `programa_id` (`programa_id`);

--
-- Indexes for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`inscripcion_id`),
  ADD KEY `grupo_id` (`grupo_id`);

--
-- Indexes for table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id_local`);

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
-- AUTO_INCREMENT for table `centros`
--
ALTER TABLE `centros`
  MODIFY `id_centro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `entrenadores`
--
ALTER TABLE `entrenadores`
  MODIFY `entrenador_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `inscripcion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `local`
--
ALTER TABLE `local`
  MODIFY `id_local` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `programa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `centros`
--
ALTER TABLE `centros`
  ADD CONSTRAINT `centros_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`) ON DELETE CASCADE;

--
-- Constraints for table `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD CONSTRAINT `entrenadores_ibfk_1` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`programa_id`);

--
-- Constraints for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `centros` (`id_centro`) ON DELETE CASCADE;

--
-- Constraints for table `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `centros` (`id_centro`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
