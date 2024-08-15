-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2024 at 07:03 PM
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
-- Database: `babychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `primer_apellido` varchar(25) NOT NULL,
  `segundo_apellido` varchar(25) DEFAULT NULL COMMENT 'Proporcionar un segundo apellido es opcional.',
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(5) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'El registro será automático.',
  `contrasena` varchar(40) NOT NULL,
  `fecha_registro` datetime NOT NULL COMMENT 'El registro será automático.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bebes`
--

CREATE TABLE `bebes` (
  `id_bebe` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `primer_apellido` varchar(25) DEFAULT NULL COMMENT 'Opcional.',
  `segundo_apellido` varchar(25) DEFAULT NULL COMMENT 'Opcional.',
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(5) NOT NULL,
  `discapacidad` varchar(200) DEFAULT NULL COMMENT 'Opcional.',
  `alergias` varchar(200) DEFAULT NULL COMMENT 'Opcional.',
  `enfermedades` varchar(200) DEFAULT NULL COMMENT 'Opcional.',
  `estatus` varchar(1) NOT NULL COMMENT 'Automático.',
  `fecha_registro` date NOT NULL COMMENT 'Automática.',
  `email` varchar(50) NOT NULL COMMENT 'Llave forane de padres.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `bebes`
--

INSERT INTO `bebes` (`id_bebe`, `nombres`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `genero`, `discapacidad`, `alergias`, `enfermedades`, `estatus`, `fecha_registro`, `email`) VALUES
(1, 'Ethan', '', '', '2023-12-31', 'M', '', '', '', 'A', '2024-08-10', 'eddy@email.com'),
(2, 'Lily', 'Flores', '', '2024-04-09', 'F', '', '', '', 'A', '2024-08-10', 'eddy@email.com'),
(3, 'Alex', '', '', '2024-02-22', 'Otro', '', '', '', 'A', '2024-08-10', 'eddy@email.com'),
(4, 'Abi', 'Sanchez', '', '2024-08-04', 'Otro', '', 'Paracetamol', '', 'A', '2024-08-10', 'eddy@email.com'),
(5, 'Pablo', '', '', '2024-05-06', 'Otro', '', '', '', 'A', '2024-08-12', 'eddy@email.com'),
(6, 'Pancrasia', 'Gallegos', '', '2024-08-11', 'Otro', '', '', '', 'A', '2024-08-12', 'galleleydi876@gmail.com'),
(7, 'Ermegildo', 'defret', '', '2024-08-12', 'F', 'Es ciego', '', '', 'A', '2024-08-12', '1723110102@utectulancingo.edu.mx'),
(8, 'Alex', '', '', '2024-04-04', 'M', '', '', '', 'A', '2024-08-13', 'q@q.com');

-- --------------------------------------------------------

--
-- Table structure for table `padres`
--

CREATE TABLE `padres` (
  `email` varchar(100) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `primer_apellido` varchar(25) NOT NULL,
  `segundo_apellido` varchar(25) DEFAULT NULL COMMENT 'Opcional.',
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(5) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'Se registra automáticamente.',
  `contrasena` varchar(40) NOT NULL,
  `confirmar` varchar(40) NOT NULL,
  `fecha_registro` date NOT NULL COMMENT 'Se registra automáticamente.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `padres`
--

INSERT INTO `padres` (`email`, `nombres`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `genero`, `estatus`, `contrasena`, `confirmar`, `fecha_registro`) VALUES
('1723110102@utectulancingo.edu.mx', 'Simon', 'Hernandez', '', '2024-08-12', 'M', 'A', 'simon', 'simon', '2024-08-12'),
('brayan@gmail.com', 'BRAYAN', 'RANGEL', '', '2005-03-08', 'Otro', 'A', '1234', '1234', '2024-08-08'),
('eddy@email.com', 'eduardo', 'caballero', '', '2005-02-15', 'M', 'A', '123edd', '123edd', '2024-08-07'),
('galleleydi876@gmail.com', 'LEYDI', 'GALLEGOS', '', '2008-06-28', 'F', 'A', 'GALLEGOS', 'GALLEGOS', '2024-08-08'),
('hoy@e.com', 'ghfdj', 'hvdjsk', '', '2024-08-14', 'M', 'A', '123', '123', '2024-08-13'),
('johncruz@gmail.com', 'Jonathan', 'Cruz', '', '2005-10-27', 'M', 'A', '123456789', '123456789', '2024-08-08'),
('q@q.com', 'edu', 'gfdhj', '', '2024-05-14', 'Otro', 'A', '123', '123', '2024-08-13'),
('tem@otro.com', 'Temp', 'fj ', '', '2024-08-20', 'Otro', 'A', '123', '123', '2024-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `seguimiento_estatura`
--

CREATE TABLE `seguimiento_estatura` (
  `id_estatura` int(11) NOT NULL,
  `estatura` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `id_bebe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seguimiento_imc`
--

CREATE TABLE `seguimiento_imc` (
  `id_imc` int(11) NOT NULL,
  `imc` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `id_bebe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seguimiento_peso`
--

CREATE TABLE `seguimiento_peso` (
  `id_peso` int(11) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `id_bebe` int(11) NOT NULL COMMENT 'Llave foranea de '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seguimiento_vacunacion`
--

CREATE TABLE `seguimiento_vacunacion` (
  `id_vacuna` int(11) NOT NULL,
  `vacuna` varchar(100) NOT NULL,
  `enfermedad_previene` varchar(200) NOT NULL,
  `dosis` varchar(100) NOT NULL,
  `edad_frecuencia` varchar(100) NOT NULL,
  `fecha_aplicacion` date NOT NULL,
  `lote` varchar(50) NOT NULL,
  `id_bebe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `bebes`
--
ALTER TABLE `bebes`
  ADD PRIMARY KEY (`id_bebe`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `seguimiento_estatura`
--
ALTER TABLE `seguimiento_estatura`
  ADD PRIMARY KEY (`id_estatura`),
  ADD KEY `id_bebe` (`id_bebe`);

--
-- Indexes for table `seguimiento_imc`
--
ALTER TABLE `seguimiento_imc`
  ADD PRIMARY KEY (`id_imc`),
  ADD KEY `id_bebe` (`id_bebe`);

--
-- Indexes for table `seguimiento_peso`
--
ALTER TABLE `seguimiento_peso`
  ADD PRIMARY KEY (`id_peso`),
  ADD KEY `id_bebe` (`id_bebe`);

--
-- Indexes for table `seguimiento_vacunacion`
--
ALTER TABLE `seguimiento_vacunacion`
  ADD PRIMARY KEY (`id_vacuna`),
  ADD KEY `id_bebe` (`id_bebe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebes`
--
ALTER TABLE `bebes`
  MODIFY `id_bebe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seguimiento_estatura`
--
ALTER TABLE `seguimiento_estatura`
  MODIFY `id_estatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seguimiento_imc`
--
ALTER TABLE `seguimiento_imc`
  MODIFY `id_imc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seguimiento_peso`
--
ALTER TABLE `seguimiento_peso`
  MODIFY `id_peso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seguimiento_vacunacion`
--
ALTER TABLE `seguimiento_vacunacion`
  MODIFY `id_vacuna` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bebes`
--
ALTER TABLE `bebes`
  ADD CONSTRAINT `bebes_ibfk_1` FOREIGN KEY (`email`) REFERENCES `padres` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seguimiento_estatura`
--
ALTER TABLE `seguimiento_estatura`
  ADD CONSTRAINT `seguimiento_estatura_ibfk_1` FOREIGN KEY (`id_bebe`) REFERENCES `bebes` (`id_bebe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seguimiento_imc`
--
ALTER TABLE `seguimiento_imc`
  ADD CONSTRAINT `seguimiento_imc_ibfk_1` FOREIGN KEY (`id_bebe`) REFERENCES `bebes` (`id_bebe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seguimiento_peso`
--
ALTER TABLE `seguimiento_peso`
  ADD CONSTRAINT `seguimiento_peso_ibfk_1` FOREIGN KEY (`id_bebe`) REFERENCES `bebes` (`id_bebe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seguimiento_vacunacion`
--
ALTER TABLE `seguimiento_vacunacion`
  ADD CONSTRAINT `seguimiento_vacunacion_ibfk_1` FOREIGN KEY (`id_bebe`) REFERENCES `bebes` (`id_bebe`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
