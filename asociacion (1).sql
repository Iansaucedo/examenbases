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
-- Indexes for table `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD PRIMARY KEY (`entrenador_id`),
  ADD KEY `programa_id` (`programa_id`);

--
-- AUTO_INCREMENT for table `entrenadores`
--
ALTER TABLE `entrenadores`
  MODIFY `entrenador_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for table `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD CONSTRAINT `entrenadores_ibfk_1` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`programa_id`);