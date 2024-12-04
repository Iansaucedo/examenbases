-- Crear tabla `inscripciones`
CREATE TABLE `inscripciones` (
    `inscripcion_id` INT AUTO_INCREMENT PRIMARY KEY, -- ID numérico incremental
    `grupo_id` INT NOT NULL, -- Relación con la tabla de centros
    `fecha_inicio` DATE NOT NULL, -- Fecha de inicio
    `fecha_fin` DATE NOT NULL, -- Fecha de fin
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Fecha de actualización
    FOREIGN KEY (`grupo_id`) REFERENCES `centros`(`id_centro`) ON DELETE CASCADE -- Relación con la tabla de centros
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Insertar registros en la tabla `inscripciones`
INSERT INTO `inscripciones` (`grupo_id`, `fecha_inicio`, `fecha_fin`)
VALUES
(1, '2024-01-15', '2024-06-15'),
(2, '2024-02-01', '2024-07-01'),
(3, '2024-03-01', '2024-08-01'),
(4, '2024-04-01', '2024-09-01'),
(5, '2024-05-01', '2024-10-01');
