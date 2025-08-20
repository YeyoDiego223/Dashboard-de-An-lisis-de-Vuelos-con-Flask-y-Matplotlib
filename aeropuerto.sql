-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-07-2025 a las 16:44:10
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.4.0
CREATE DATABASE aeropuerto;
USE aeropuerto;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aeropuerto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aerolineas`
--

DROP TABLE IF EXISTS `aerolineas`;
CREATE TABLE IF NOT EXISTS `aerolineas` (
  `id_aerolinea` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `codigo_IATA` char(2) NOT NULL,
  `pais_origen` varchar(50) DEFAULT NULL,
  `fecha_fundacion` date DEFAULT NULL,
  `sitio_web` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_aerolinea`),
  UNIQUE KEY `codigo_IATA` (`codigo_IATA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `aerolineas`
--

INSERT INTO `aerolineas` (`id_aerolinea`, `nombre`, `codigo_IATA`, `pais_origen`, `fecha_fundacion`, `sitio_web`) VALUES
(1, 'American Airlines', 'AA', 'Estados Unidos', '1930-04-15', 'www.aa.com'),
(2, 'Delta Air Lines', 'DL', 'Estados Unidos', '1928-05-30', 'www.delta.com'),
(3, 'United Airlines', 'UA', 'Estados Unidos', '1926-04-06', 'www.united.com'),
(4, 'Lufthansa', 'LH', 'Alemania', '1953-01-06', 'www.lufthansa.com'),
(5, 'British Airways', 'BA', 'Reino Unido', '1974-04-01', 'www.britishairways.com'),
(6, 'Air France', 'AF', 'Francia', '1933-10-07', 'www.airfrance.com'),
(7, 'Emirates', 'EK', 'Emiratos Árabes Unidos', '1985-03-25', 'www.emirates.com'),
(8, 'Qatar Airways', 'QR', 'Qatar', '1993-11-22', 'www.qatarairways.com'),
(9, 'Singapore Airlines', 'SQ', 'Singapur', '1972-01-28', 'www.singaporeair.com'),
(10, 'Cathay Pacific', 'CX', 'Hong Kong', '1946-09-24', 'www.cathaypacific.com'),
(11, 'Aeroméxico', 'AM', 'México', '1934-09-14', 'www.aeromexico.com'),
(12, 'LATAM Airlines', 'LA', 'Chile', '1929-03-05', 'www.latam.com'),
(13, 'Avianca', 'AV', 'Colombia', '1919-12-05', 'www.avianca.com'),
(14, 'Copa Airlines', 'CM', 'Panamá', '1947-06-21', 'www.copaair.com'),
(15, 'Air Canada', 'AC', 'Canada', '1937-04-10', 'www.aircanada.com'),
(16, 'Japan Airlines', 'JL', 'Japón', '1951-08-01', 'www.jal.com'),
(17, 'ANA All Nippon Airways', 'NH', 'Japón', '1952-12-27', 'www.ana.co.jp'),
(18, 'Qantas', 'QF', 'Australia', '1920-11-16', 'www.qantas.com'),
(19, 'Turkish Airlines', 'TK', 'Turquía', '1933-05-20', 'www.turkishairlines.com'),
(20, 'Korean Air', 'KE', 'Corea del Sur', '1962-03-01', 'www.koreanair.com'),
(21, 'China Southern Airlines', 'CZ', 'China', '1988-07-01', 'www.csair.com'),
(22, 'Air China', 'CA', 'China', '1988-07-01', 'www.airchina.com'),
(23, 'Ethiopian Airlines', 'ET', 'Etiopía', '1945-12-21', 'www.ethiopianairlines.com'),
(24, 'South African Airways', 'SA', 'Sudáfrica', '1934-02-01', 'www.flysaa.com'),
(25, 'Alitalia', 'AZ', 'Italia', '1946-09-16', 'www.alitalia.com'),
(26, 'Iberia', 'IB', 'España', '1927-06-28', 'www.iberia.com'),
(27, 'KLM Royal Dutch Airlines', 'KL', 'Países Bajos', '1919-10-07', 'www.klm.com'),
(28, 'Swiss International Air Lines', 'LX', 'Suiza', '2002-03-31', 'www.swiss.com'),
(29, 'SAS Scandinavian Airlines', 'SK', 'Suecia', '1946-08-01', 'www.flysas.com'),
(30, 'Finnair', 'AY', 'Finlandia', '1923-11-01', 'www.finnair.com'),
(31, 'Aeroflot', 'SU', 'Rusia', '1923-02-09', 'www.aeroflot.com'),
(32, 'Thai Airways', 'TG', 'Tailandia', '1960-05-01', 'www.thaiairways.com'),
(33, 'Malaysia Airlines', 'MH', 'Malasia', '1947-05-01', 'www.malaysiaairlines.com'),
(34, 'Garuda Indonesia', 'GA', 'Indonesia', '1949-01-26', 'www.garuda-indonesia.com'),
(35, 'Vietnam Airlines', 'VN', 'Vietnam', '1956-01-15', 'www.vietnamairlines.com'),
(36, 'Philippine Airlines', 'PR', 'Filipinas', '1941-02-26', 'www.philippineairlines.com'),
(37, 'Air India', 'AI', 'India', '1932-10-15', 'www.airindia.in'),
(38, 'JetBlue Airways', 'B6', 'Estados Unidos', '1998-08-01', 'www.jetblue.com'),
(39, 'Southwest Airlines', 'WN', 'Estados Unidos', '1967-03-15', 'www.southwest.com'),
(40, 'Spirit Airlines', 'NK', 'Estados Unidos', '1980-05-01', 'www.spirit.com'),
(41, 'Frontier Airlines', 'F9', 'Estados Unidos', '1994-02-08', 'www.flyfrontier.com'),
(42, 'Alaska Airlines', 'AS', 'Estados Unidos', '1932-05-01', 'www.alaskaair.com'),
(43, 'Hawaiian Airlines', 'HA', 'Estados Unidos', '1929-01-30', 'www.hawaiianairlines.com'),
(44, 'Virgin Atlantic', 'VS', 'Reino Unido', '1984-06-22', 'www.virginatlantic.com'),
(45, 'Ryanair', 'FR', 'Irlanda', '1984-07-28', 'www.ryanair.com'),
(46, 'EasyJet', 'U2', 'Reino Unido', '1995-03-01', 'www.easyjet.com'),
(47, 'Norwegian Air Shuttle', 'DY', 'Noruega', '1993-01-22', 'www.norwegian.com'),
(48, 'Wizz Air', 'W6', 'Hungría', '2003-09-19', 'www.wizzair.com'),
(49, 'Pegasus Airlines', 'PC', 'Turquía', '1990-01-01', 'www.flypgs.com'),
(50, 'AirAsia', 'AK', 'Malasia', '1993-11-18', 'www.airasia.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

DROP TABLE IF EXISTS `aviones`;
CREATE TABLE IF NOT EXISTS `aviones` (
  `id_avion` int NOT NULL AUTO_INCREMENT,
  `id_aerolinea` int NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `capacidad_pasajeros` int NOT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `ultimo_mantenimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_avion`),
  KEY `id_aerolinea` (`id_aerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`id_avion`, `id_aerolinea`, `modelo`, `capacidad_pasajeros`, `fecha_fabricacion`, `ultimo_mantenimiento`) VALUES
(1, 1, 'Boeing 737-800', 162, '2015-03-10', '2023-05-15'),
(2, 1, 'Boeing 787-9', 290, '2018-07-22', '2023-06-20'),
(3, 2, 'Airbus A320', 150, '2016-11-05', '2023-04-10'),
(4, 2, 'Airbus A350-900', 306, '2019-09-14', '2023-07-01'),
(5, 3, 'Boeing 777-300ER', 396, '2017-05-30', '2023-06-15'),
(6, 3, 'Boeing 737 MAX 9', 178, '2021-02-18', '2023-05-30'),
(7, 4, 'Airbus A380', 509, '2014-08-12', '2023-07-10'),
(8, 4, 'Airbus A321neo', 192, '2020-03-25', '2023-06-25'),
(9, 5, 'Boeing 747-400', 345, '2013-12-08', '2023-05-20'),
(10, 5, 'Airbus A319', 124, '2017-09-17', '2023-06-30'),
(11, 6, 'Boeing 777-200', 280, '2016-04-03', '2023-07-05'),
(12, 6, 'Airbus A330-200', 246, '2018-10-19', '2023-06-10'),
(13, 7, 'Boeing 777-300', 354, '2019-01-28', '2023-07-15'),
(14, 7, 'Airbus A350-1000', 369, '2020-07-14', '2023-06-05'),
(15, 8, 'Boeing 787-8', 254, '2017-11-30', '2023-05-25'),
(16, 8, 'Airbus A320neo', 165, '2021-04-22', '2023-07-20'),
(17, 9, 'Boeing 737-900', 180, '2018-06-11', '2023-06-15'),
(18, 9, 'Airbus A340-500', 313, '2015-09-09', '2023-05-30'),
(19, 10, 'Boeing 777-200ER', 280, '2016-02-14', '2023-07-01'),
(20, 10, 'Airbus A321', 185, '2019-08-07', '2023-06-20'),
(21, 11, 'Boeing 737-700', 126, '2017-04-18', '2023-05-15'),
(22, 11, 'Embraer 190', 100, '2018-12-05', '2023-06-10'),
(23, 12, 'Airbus A319', 124, '2016-07-23', '2023-07-05'),
(24, 12, 'Boeing 767-300', 218, '2015-10-31', '2023-06-25'),
(25, 13, 'Airbus A320', 150, '2019-03-12', '2023-05-20'),
(26, 13, 'Boeing 787-9', 290, '2020-09-08', '2023-07-10'),
(27, 14, 'Boeing 737-800', 162, '2018-01-17', '2023-06-15'),
(28, 14, 'Embraer 195', 118, '2019-05-24', '2023-05-30'),
(29, 15, 'Airbus A220-300', 130, '2020-02-11', '2023-07-20'),
(30, 15, 'Boeing 777-200LR', 317, '2017-08-26', '2023-06-05'),
(31, 16, 'Boeing 767-400ER', 245, '2016-11-09', '2023-05-25'),
(32, 16, 'Airbus A330-300', 277, '2018-04-03', '2023-07-15'),
(33, 17, 'Boeing 737-800', 162, '2019-07-19', '2023-06-10'),
(34, 17, 'Boeing 787-10', 330, '2020-12-07', '2023-05-15'),
(35, 18, 'Airbus A380', 484, '2015-05-28', '2023-07-01'),
(36, 18, 'Boeing 747-8', 364, '2017-10-13', '2023-06-20'),
(37, 19, 'Airbus A321', 185, '2018-03-22', '2023-05-30'),
(38, 19, 'Boeing 777-300ER', 396, '2019-09-04', '2023-07-10'),
(39, 20, 'Boeing 737 MAX 8', 178, '2020-04-16', '2023-06-15'),
(40, 20, 'Airbus A350-900', 306, '2021-01-29', '2023-05-20'),
(41, 21, 'Boeing 787-9', 290, '2018-08-11', '2023-07-05'),
(42, 21, 'Airbus A330-200', 246, '2019-12-24', '2023-06-25'),
(43, 22, 'Boeing 737-900ER', 180, '2017-06-05', '2023-05-15'),
(44, 22, 'Airbus A320neo', 165, '2020-03-18', '2023-07-20'),
(45, 23, 'Boeing 777-200', 280, '2016-09-27', '2023-06-10'),
(46, 23, 'Boeing 787-8', 254, '2018-11-30', '2023-05-25'),
(47, 24, 'Airbus A340-600', 320, '2015-04-14', '2023-07-15'),
(48, 24, 'Boeing 737-800', 162, '2019-02-07', '2023-06-05'),
(49, 25, 'Airbus A319', 124, '2017-07-20', '2023-05-30'),
(50, 25, 'Boeing 777-300', 354, '2020-05-12', '2023-07-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `id_aerolinea` int DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_aerolinea` (`id_aerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `id_aerolinea`, `nombre`, `apellido`, `puesto`, `fecha_contratacion`, `salario`) VALUES
(1, 1, 'Juan', 'Pérez', 'Piloto', '2015-06-10', 8500.00),
(2, 1, 'María', 'Gómez', 'Azafata', '2018-03-15', 3200.00),
(3, 2, 'Carlos', 'López', 'Piloto', '2016-11-20', 8200.00),
(4, 2, 'Ana', 'Martínez', 'Azafata', '2019-07-22', 3100.00),
(5, 3, 'Pedro', 'Rodríguez', 'Piloto', '2017-02-14', 8300.00),
(6, 3, 'Laura', 'Sánchez', 'Azafata', '2020-01-30', 3150.00),
(7, 4, 'Miguel', 'Fernández', 'Piloto', '2014-09-05', 8700.00),
(8, 4, 'Sofía', 'Díaz', 'Azafata', '2017-12-18', 3300.00),
(9, 5, 'David', 'García', 'Piloto', '2018-04-25', 8100.00),
(10, 5, 'Elena', 'Ruiz', 'Azafata', '2021-05-12', 3050.00),
(11, 6, 'Javier', 'Hernández', 'Piloto', '2016-08-07', 8400.00),
(12, 6, 'Lucía', 'Jiménez', 'Azafata', '2019-10-03', 3250.00),
(13, 7, 'Daniel', 'Moreno', 'Piloto', '2015-03-28', 8600.00),
(14, 7, 'Paula', 'Álvarez', 'Azafata', '2018-11-15', 3350.00),
(15, 8, 'Alejandro', 'Romero', 'Piloto', '2017-07-19', 8250.00),
(16, 8, 'Claudia', 'Torres', 'Azafata', '2020-09-27', 3120.00),
(17, 9, 'Ricardo', 'Navarro', 'Piloto', '2016-01-22', 8350.00),
(18, 9, 'Valeria', 'Ramírez', 'Azafata', '2019-04-08', 3180.00),
(19, 10, 'Fernando', 'Gil', 'Piloto', '2018-06-14', 8150.00),
(20, 10, 'Adriana', 'Serrano', 'Azafata', '2021-08-29', 3080.00),
(21, 11, 'Roberto', 'Molina', 'Piloto', '2017-05-03', 8450.00),
(22, 11, 'Gabriela', 'Ortega', 'Azafata', '2020-02-17', 3220.00),
(23, 12, 'Raúl', 'Delgado', 'Piloto', '2015-10-11', 8550.00),
(24, 12, 'Isabel', 'Castro', 'Azafata', '2018-12-24', 3280.00),
(25, 13, 'Arturo', 'Vargas', 'Piloto', '2019-01-09', 8050.00),
(26, 13, 'Natalia', 'Reyes', 'Azafata', '2022-03-05', 3020.00),
(27, 14, 'Oscar', 'Campos', 'Piloto', '2016-04-30', 8300.00),
(28, 14, 'Camila', 'Guerrero', 'Azafata', '2019-07-13', 3150.00),
(29, 15, 'Héctor', 'Ríos', 'Piloto', '2017-09-26', 8200.00),
(30, 15, 'Mariana', 'Flores', 'Azafata', '2020-11-08', 3100.00),
(31, 16, 'Francisco', 'Medina', 'Piloto', '2015-12-07', 8500.00),
(32, 16, 'Daniela', 'Cortés', 'Azafata', '2018-02-19', 3300.00),
(33, 17, 'José', 'Herrera', 'Piloto', '2016-03-21', 8400.00),
(34, 17, 'Verónica', 'Núñez', 'Azafata', '2019-05-04', 3250.00),
(35, 18, 'Luis', 'Vega', 'Piloto', '2017-08-16', 8250.00),
(36, 18, 'Patricia', 'Miranda', 'Azafata', '2020-10-28', 3120.00),
(37, 19, 'Manuel', 'Pacheco', 'Piloto', '2018-01-31', 8150.00),
(38, 19, 'Alejandra', 'Santos', 'Azafata', '2021-04-12', 3080.00),
(39, 20, 'Eduardo', 'Luna', 'Piloto', '2016-07-23', 8350.00),
(40, 20, 'Carolina', 'Méndez', 'Azafata', '2019-09-06', 3180.00),
(41, 21, 'Alberto', 'Cabrera', 'Piloto', '2015-02-14', 8450.00),
(42, 21, 'Brenda', 'Salazar', 'Azafata', '2018-04-27', 3220.00),
(43, 22, 'Sergio', 'Rosales', 'Piloto', '2017-11-09', 8550.00),
(44, 22, 'Diana', 'Aguirre', 'Azafata', '2020-12-22', 3280.00),
(45, 23, 'Andrés', 'Orozco', 'Piloto', '2016-06-05', 8050.00),
(46, 23, 'Fernanda', 'Valdez', 'Azafata', '2019-08-18', 3020.00),
(47, 24, 'Jorge', 'Franco', 'Piloto', '2015-09-28', 8300.00),
(48, 24, 'Gloria', 'Rivas', 'Azafata', '2018-11-11', 3150.00),
(49, 25, 'Armando', 'Beltrán', 'Piloto', '2017-04-03', 8200.00),
(50, 25, 'Teresa', 'Cervantes', 'Azafata', '2020-06-16', 3100.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

DROP TABLE IF EXISTS `pasajeros`;
CREATE TABLE IF NOT EXISTS `pasajeros` (
  `id_pasajero` int NOT NULL AUTO_INCREMENT,
  `pasaporte` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pasajero`),
  UNIQUE KEY `pasaporte` (`pasaporte`),
  KEY `idx_pasajero_nombre` (`nombre`,`apellido`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`id_pasajero`, `pasaporte`, `nombre`, `apellido`, `fecha_nacimiento`, `nacionalidad`, `telefono`, `email`) VALUES
(1, 'A12345678', 'Juan', 'García', '1980-05-15', 'Española', '+34600123456', 'juan.garcia@email.com'),
(2, 'B23456789', 'María', 'López', '1985-08-22', 'Mexicana', '+525512345678', 'maria.lopez@email.com'),
(3, 'C34567890', 'Carlos', 'Martínez', '1975-03-10', 'Colombiano', '+573012345678', 'carlos.martinez@email.com'),
(4, 'D45678901', 'Ana', 'Rodríguez', '1990-11-30', 'Argentina', '+5491123456789', 'ana.rodriguez@email.com'),
(5, 'E56789012', 'Pedro', 'Sánchez', '1982-07-18', 'Chileno', '+56912345678', 'pedro.sanchez@email.com'),
(6, 'F67890123', 'Laura', 'Fernández', '1988-04-25', 'Peruana', '+51123456789', 'laura.fernandez@email.com'),
(7, 'G78901234', 'Miguel', 'Gómez', '1978-09-12', 'Venezolano', '+5821234567890', 'miguel.gomez@email.com'),
(8, 'H89012345', 'Sofía', 'Díaz', '1995-02-28', 'Ecuatoriana', '+593212345678', 'sofia.diaz@email.com'),
(9, 'I90123456', 'David', 'Pérez', '1983-06-20', 'Española', '+34671234567', 'david.perez@email.com'),
(10, 'J01234567', 'Elena', 'Ruiz', '1992-12-05', 'Mexicana', '+525523456789', 'elena.ruiz@email.com'),
(11, 'K12345678', 'Javier', 'Hernández', '1970-10-15', 'Colombiano', '+573112345678', 'javier.hernandez@email.com'),
(12, 'L23456789', 'Lucía', 'Jiménez', '1987-07-22', 'Argentina', '+5492223456789', 'lucia.jimenez@email.com'),
(13, 'M34567890', 'Daniel', 'Moreno', '1981-01-30', 'Chileno', '+56923456789', 'daniel.moreno@email.com'),
(14, 'N45678901', 'Paula', 'Álvarez', '1993-08-18', 'Peruana', '+51323456789', 'paula.alvarez@email.com'),
(15, 'O56789012', 'Alejandro', 'Romero', '1979-05-25', 'Venezolano', '+5841234567890', 'alejandro.romero@email.com'),
(16, 'P67890123', 'Claudia', 'Torres', '1986-11-12', 'Ecuatoriana', '+593312345678', 'claudia.torres@email.com'),
(17, 'Q78901234', 'Ricardo', 'Navarro', '1977-03-28', 'Española', '+34682345678', 'ricardo.navarro@email.com'),
(18, 'R89012345', 'Valeria', 'Ramírez', '1994-09-05', 'Mexicana', '+525534567890', 'valeria.ramirez@email.com'),
(19, 'S90123456', 'Fernando', 'Gil', '1984-04-20', 'Colombiano', '+573212345678', 'fernando.gil@email.com'),
(20, 'T01234567', 'Adriana', 'Serrano', '1991-12-15', 'Argentina', '+5493323456789', 'adriana.serrano@email.com'),
(21, 'U12345678', 'Roberto', 'Molina', '1976-02-22', 'Chileno', '+56934567890', 'roberto.molina@email.com'),
(22, 'V23456789', 'Gabriela', 'Ortega', '1989-07-30', 'Peruana', '+51423456789', 'gabriela.ortega@email.com'),
(23, 'W34567890', 'Raúl', 'Delgado', '1980-10-18', 'Venezolano', '+5851234567890', 'raul.delgado@email.com'),
(24, 'X45678901', 'Isabel', 'Castro', '1996-05-25', 'Ecuatoriana', '+593412345678', 'isabel.castro@email.com'),
(25, 'Y56789012', 'Arturo', 'Vargas', '1983-01-12', 'Española', '+34693456789', 'arturo.vargas@email.com'),
(26, 'Z67890123', 'Natalia', 'Reyes', '1997-08-28', 'Mexicana', '+525545678901', 'natalia.reyes@email.com'),
(27, 'AA1234567', 'Oscar', 'Campos', '1979-04-05', 'Colombiano', '+573312345678', 'oscar.campos@email.com'),
(28, 'AB2345678', 'Camila', 'Guerrero', '1992-11-20', 'Argentina', '+5494423456789', 'camila.guerrero@email.com'),
(29, 'AC3456789', 'Héctor', 'Ríos', '1985-06-15', 'Chileno', '+56945678901', 'hector.rios@email.com'),
(30, 'AD4567890', 'Mariana', 'Flores', '1998-02-22', 'Peruana', '+51523456789', 'mariana.flores@email.com'),
(31, 'AE5678901', 'Francisco', 'Medina', '1981-09-30', 'Venezolano', '+5861234567890', 'francisco.medina@email.com'),
(32, 'AF6789012', 'Daniela', 'Cortés', '1993-07-18', 'Ecuatoriana', '+593512345678', 'daniela.cortes@email.com'),
(33, 'AG7890123', 'José', 'Herrera', '1978-03-25', 'Española', '+34704567890', 'jose.herrera@email.com'),
(34, 'AH8901234', 'Verónica', 'Núñez', '1990-12-12', 'Mexicana', '+525556789012', 'veronica.nunez@email.com'),
(35, 'AI9012345', 'Luis', 'Vega', '1987-05-28', 'Colombiano', '+573412345678', 'luis.vega@email.com'),
(36, 'AJ0123456', 'Patricia', 'Miranda', '1995-10-05', 'Argentina', '+5495523456789', 'patricia.miranda@email.com'),
(37, 'AK1234567', 'Manuel', 'Pacheco', '1982-04-20', 'Chileno', '+56956789012', 'manuel.pacheco@email.com'),
(38, 'AL2345678', 'Alejandra', 'Santos', '1999-01-15', 'Peruana', '+51623456789', 'alejandra.santos@email.com'),
(39, 'AM3456789', 'Eduardo', 'Luna', '1984-08-22', 'Venezolano', '+5871234567890', 'eduardo.luna@email.com'),
(40, 'AN4567890', 'Carolina', 'Méndez', '1991-06-30', 'Ecuatoriana', '+593612345678', 'carolina.mendez@email.com'),
(41, 'AO5678901', 'Alberto', 'Cabrera', '1977-02-18', 'Española', '+34715678901', 'alberto.cabrera@email.com'),
(42, 'AP6789012', 'Brenda', 'Salazar', '1988-11-25', 'Mexicana', '+525567890123', 'brenda.salazar@email.com'),
(43, 'AQ7890123', 'Sergio', 'Rosales', '1983-07-12', 'Colombiano', '+573512345678', 'sergio.rosales@email.com'),
(44, 'AR8901234', 'Diana', 'Aguirre', '1996-04-28', 'Argentina', '+5496623456789', 'diana.aguirre@email.com'),
(45, 'AS9012345', 'Andrés', 'Orozco', '1980-12-05', 'Chileno', '+56967890123', 'andres.orozco@email.com'),
(46, 'AT0123456', 'Fernanda', 'Valdez', '1997-09-20', 'Peruana', '+51723456789', 'fernanda.valdez@email.com'),
(47, 'AU1234567', 'Jorge', 'Franco', '1985-03-15', 'Venezolano', '+5881234567890', 'jorge.franco@email.com'),
(48, 'AV2345678', 'Gloria', 'Rivas', '1992-10-22', 'Ecuatoriana', '+593712345678', 'gloria.rivas@email.com'),
(49, 'AW3456789', 'Armando', 'Beltrán', '1979-05-30', 'Española', '+34726789012', 'armando.beltran@email.com'),
(50, 'AX4567890', 'Teresa', 'Cervantes', '1986-02-18', 'Mexicana', '+525578901234', 'teresa.cervantes@email.com');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `pasajeros_por_vuelo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `pasajeros_por_vuelo`;
CREATE TABLE IF NOT EXISTS `pasajeros_por_vuelo` (
`apellido` varchar(50)
,`asiento` varchar(10)
,`clase` enum('economica','ejecutiva','primera')
,`estado` enum('confirmada','cancelada','embarcado','no_show')
,`id_vuelo` int
,`nombre` varchar(50)
,`numero_vuelo` varchar(10)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puertas_embarque`
--

DROP TABLE IF EXISTS `puertas_embarque`;
CREATE TABLE IF NOT EXISTS `puertas_embarque` (
  `id_puerta` int NOT NULL AUTO_INCREMENT,
  `terminal` char(1) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `capacidad` int DEFAULT NULL,
  `estado` enum('disponible','ocupada','mantenimiento') DEFAULT 'disponible',
  PRIMARY KEY (`id_puerta`),
  UNIQUE KEY `terminal` (`terminal`,`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `puertas_embarque`
--

INSERT INTO `puertas_embarque` (`id_puerta`, `terminal`, `numero`, `capacidad`, `estado`) VALUES
(1, 'A', '1', 150, 'disponible'),
(2, 'A', '2', 150, 'disponible'),
(3, 'A', '3', 200, 'disponible'),
(4, 'A', '4', 200, 'disponible'),
(5, 'A', '5', 180, 'disponible'),
(6, 'B', '1', 170, 'disponible'),
(7, 'B', '2', 170, 'disponible'),
(8, 'B', '3', 220, 'disponible'),
(9, 'B', '4', 220, 'disponible'),
(10, 'B', '5', 190, 'disponible'),
(11, 'C', '1', 160, 'disponible'),
(12, 'C', '2', 160, 'disponible'),
(13, 'C', '3', 210, 'disponible'),
(14, 'C', '4', 210, 'disponible'),
(15, 'C', '5', 185, 'disponible'),
(16, 'D', '1', 155, 'disponible'),
(17, 'D', '2', 155, 'disponible'),
(18, 'D', '3', 205, 'disponible'),
(19, 'D', '4', 205, 'disponible'),
(20, 'D', '5', 175, 'disponible'),
(21, 'E', '1', 165, 'disponible'),
(22, 'E', '2', 165, 'disponible'),
(23, 'E', '3', 215, 'disponible'),
(24, 'E', '4', 215, 'disponible'),
(25, 'E', '5', 195, 'disponible'),
(26, 'F', '1', 140, 'disponible'),
(27, 'F', '2', 140, 'disponible'),
(28, 'F', '3', 190, 'disponible'),
(29, 'F', '4', 190, 'disponible'),
(30, 'F', '5', 160, 'disponible'),
(31, 'G', '1', 145, 'disponible'),
(32, 'G', '2', 145, 'disponible'),
(33, 'G', '3', 195, 'disponible'),
(34, 'G', '4', 195, 'disponible'),
(35, 'G', '5', 165, 'disponible'),
(36, 'H', '1', 135, 'disponible'),
(37, 'H', '2', 135, 'disponible'),
(38, 'H', '3', 185, 'disponible'),
(39, 'H', '4', 185, 'disponible'),
(40, 'H', '5', 155, 'disponible'),
(41, 'I', '1', 130, 'disponible'),
(42, 'I', '2', 130, 'disponible'),
(43, 'I', '3', 180, 'disponible'),
(44, 'I', '4', 180, 'disponible'),
(45, 'I', '5', 150, 'disponible'),
(46, 'J', '1', 125, 'disponible'),
(47, 'J', '2', 125, 'disponible'),
(48, 'J', '3', 175, 'disponible'),
(49, 'J', '4', 175, 'disponible'),
(50, 'J', '5', 145, 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

DROP TABLE IF EXISTS `reservaciones`;
CREATE TABLE IF NOT EXISTS `reservaciones` (
  `id_reservacion` int NOT NULL AUTO_INCREMENT,
  `id_pasajero` int NOT NULL,
  `id_vuelo` int NOT NULL,
  `fecha_reservacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `clase` enum('economica','ejecutiva','primera') DEFAULT 'economica',
  `asiento` varchar(10) DEFAULT NULL,
  `estado` enum('confirmada','cancelada','embarcado','no_show') DEFAULT 'confirmada',
  PRIMARY KEY (`id_reservacion`),
  KEY `id_pasajero` (`id_pasajero`),
  KEY `idx_reservacion_vuelo` (`id_vuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id_reservacion`, `id_pasajero`, `id_vuelo`, `fecha_reservacion`, `clase`, `asiento`, `estado`) VALUES
(1, 1, 1, '2023-06-20 10:15:00', 'primera', '1A', 'confirmada'),
(2, 2, 2, '2023-06-21 11:30:00', 'ejecutiva', '5B', 'confirmada'),
(3, 3, 3, '2023-06-22 09:45:00', 'economica', '12C', 'confirmada'),
(4, 4, 4, '2023-06-19 14:20:00', 'primera', '2A', 'confirmada'),
(5, 5, 5, '2023-06-18 16:10:00', 'ejecutiva', '7D', 'confirmada'),
(6, 6, 6, '2023-06-17 08:30:00', 'economica', '20F', 'confirmada'),
(7, 7, 7, '2023-06-16 12:45:00', 'primera', '3B', 'confirmada'),
(8, 8, 8, '2023-06-15 15:00:00', 'ejecutiva', '6C', 'confirmada'),
(9, 9, 9, '2023-06-14 17:25:00', 'economica', '15E', 'confirmada'),
(10, 10, 10, '2023-06-13 10:50:00', 'primera', '4D', 'confirmada'),
(11, 11, 11, '2023-06-12 13:15:00', 'ejecutiva', '8A', 'confirmada'),
(12, 12, 12, '2023-06-11 09:40:00', 'economica', '22B', 'confirmada'),
(13, 13, 13, '2023-06-10 11:05:00', 'primera', '5C', 'confirmada'),
(14, 14, 14, '2023-06-09 14:30:00', 'ejecutiva', '9D', 'confirmada'),
(15, 15, 15, '2023-06-08 16:55:00', 'economica', '18F', 'confirmada'),
(16, 16, 16, '2023-06-07 08:20:00', 'primera', '6E', 'confirmada'),
(17, 17, 17, '2023-06-06 12:45:00', 'ejecutiva', '10B', 'confirmada'),
(18, 18, 18, '2023-06-05 15:10:00', 'economica', '24C', 'confirmada'),
(19, 19, 19, '2023-06-04 17:35:00', 'primera', '7F', 'confirmada'),
(20, 20, 20, '2023-06-03 10:00:00', 'ejecutiva', '11A', 'confirmada'),
(21, 21, 21, '2023-06-02 13:25:00', 'economica', '16D', 'confirmada'),
(22, 22, 22, '2023-06-01 09:50:00', 'primera', '8B', 'confirmada'),
(23, 23, 23, '2023-05-31 12:15:00', 'ejecutiva', '12C', 'confirmada'),
(24, 24, 24, '2023-05-30 14:40:00', 'economica', '28E', 'confirmada'),
(25, 25, 25, '2023-05-29 17:05:00', 'primera', '9D', 'confirmada'),
(26, 26, 26, '2023-05-28 10:30:00', 'ejecutiva', '13A', 'confirmada'),
(27, 27, 27, '2023-05-27 13:55:00', 'economica', '20F', 'confirmada'),
(28, 28, 28, '2023-05-26 09:20:00', 'primera', '10C', 'confirmada'),
(29, 29, 29, '2023-05-25 11:45:00', 'ejecutiva', '14B', 'confirmada'),
(30, 30, 30, '2023-05-24 14:10:00', 'economica', '22D', 'confirmada'),
(31, 31, 31, '2023-05-23 16:35:00', 'primera', '11E', 'confirmada'),
(32, 32, 32, '2023-05-22 09:00:00', 'ejecutiva', '15A', 'confirmada'),
(33, 33, 33, '2023-05-21 12:25:00', 'economica', '24F', 'confirmada'),
(34, 34, 34, '2023-05-20 14:50:00', 'primera', '12B', 'confirmada'),
(35, 35, 35, '2023-05-19 17:15:00', 'ejecutiva', '16C', 'confirmada'),
(36, 36, 36, '2023-05-18 10:40:00', 'economica', '26D', 'confirmada'),
(37, 37, 37, '2023-05-17 13:05:00', 'primera', '13F', 'confirmada'),
(38, 38, 38, '2023-05-16 09:30:00', 'ejecutiva', '17A', 'confirmada'),
(39, 39, 39, '2023-05-15 11:55:00', 'economica', '28B', 'confirmada'),
(40, 40, 40, '2023-05-14 14:20:00', 'primera', '14C', 'confirmada'),
(41, 41, 41, '2023-05-13 16:45:00', 'ejecutiva', '18D', 'confirmada'),
(42, 42, 42, '2023-05-12 10:10:00', 'economica', '30E', 'confirmada'),
(43, 43, 43, '2023-05-11 12:35:00', 'primera', '15F', 'confirmada'),
(44, 44, 44, '2023-05-10 15:00:00', 'ejecutiva', '19A', 'confirmada'),
(45, 45, 45, '2023-05-09 17:25:00', 'economica', '32B', 'confirmada'),
(46, 46, 46, '2023-05-08 10:50:00', 'primera', '16C', 'confirmada'),
(47, 47, 47, '2023-05-07 13:15:00', 'ejecutiva', '20D', 'confirmada'),
(48, 48, 48, '2023-05-06 09:40:00', 'economica', '34F', 'confirmada'),
(49, 49, 49, '2023-05-05 12:05:00', 'primera', '17E', 'confirmada'),
(50, 50, 50, '2023-05-04 14:30:00', 'ejecutiva', '21A', 'confirmada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE IF NOT EXISTS `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `ubicacion` varchar(100) DEFAULT NULL,
  `horario_apertura` time DEFAULT NULL,
  `horario_cierre` time DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `descripcion`, `ubicacion`, `horario_apertura`, `horario_cierre`) VALUES
(1, 'Tienda Duty Free', 'Tienda libre de impuestos', 'Terminal A, Nivel 2', '06:00:00', '23:00:00'),
(2, 'Restaurante Internacional', 'Comida de diferentes países', 'Terminal B, Nivel 1', '05:30:00', '22:30:00'),
(3, 'Sala VIP Primera Clase', 'Sala exclusiva para primera clase', 'Terminal C, Nivel 3', '00:00:00', '23:59:59'),
(4, 'Cafetería Express', 'Café y snacks rápidos', 'Terminal D, Nivel 2', '04:00:00', '22:00:00'),
(5, 'Centro de Negocios', 'Área de trabajo con computadoras', 'Terminal E, Nivel 1', '07:00:00', '21:00:00'),
(6, 'Spa Aeropuerto', 'Masajes y tratamientos relajantes', 'Terminal F, Nivel 3', '08:00:00', '20:00:00'),
(7, 'Alquiler de Autos', 'Varias compañías de alquiler', 'Terminal G, Nivel 0', '06:30:00', '23:30:00'),
(8, 'Hotel Minuto', 'Cuartos para descanso por horas', 'Terminal H, Nivel 2', '00:00:00', '23:59:59'),
(9, 'Farmacia', 'Medicamentos y artículos de primera necesidad', 'Terminal I, Nivel 1', '05:00:00', '22:00:00'),
(10, 'Guardería', 'Cuidado de niños', 'Terminal J, Nivel 2', '07:00:00', '21:00:00'),
(11, 'Oficina de Correos', 'Servicios postales', 'Terminal A, Nivel 1', '08:00:00', '20:00:00'),
(12, 'Cambio de Divisas', 'Cambio de moneda extranjera', 'Terminal B, Nivel 2', '06:00:00', '22:00:00'),
(13, 'Salas de Conferencia', 'Salas para reuniones', 'Terminal C, Nivel 1', '07:00:00', '21:00:00'),
(14, 'Tienda de Electrónicos', 'Dispositivos electrónicos', 'Terminal D, Nivel 3', '06:30:00', '22:30:00'),
(15, 'Bar Lounge', 'Bar con bebidas premium', 'Terminal E, Nivel 2', '10:00:00', '23:00:00'),
(16, 'Servicio de Equipaje', 'Almacenamiento y cuidado de equipaje', 'Terminal F, Nivel 0', '00:00:00', '23:59:59'),
(17, 'Oficina de Turismo', 'Información turística', 'Terminal G, Nivel 1', '08:00:00', '20:00:00'),
(18, 'Tienda de Regalos', 'Souvenirs y regalos', 'Terminal H, Nivel 3', '06:00:00', '22:00:00'),
(19, 'Salón de Belleza', 'Corte de cabello y tratamientos', 'Terminal I, Nivel 2', '09:00:00', '19:00:00'),
(20, 'Centro Médico', 'Atención médica básica', 'Terminal J, Nivel 1', '00:00:00', '23:59:59'),
(21, 'Zona de Juegos', 'Área de juegos para niños', 'Terminal A, Nivel 0', '06:00:00', '22:00:00'),
(22, 'Tienda de Libros', 'Libros y revistas', 'Terminal B, Nivel 3', '07:00:00', '21:00:00'),
(23, 'Servicio de Taxis', 'Punto de taxis oficial', 'Terminal C, Nivel 0', '00:00:00', '23:59:59'),
(24, 'Oficina de Información', 'Información general del aeropuerto', 'Terminal D, Nivel 1', '05:00:00', '23:00:00'),
(25, 'Zona de Oración', 'Área multiconfesional', 'Terminal E, Nivel 3', '00:00:00', '23:59:59'),
(26, 'Tienda de Ropa', 'Ropa y accesorios', 'Terminal F, Nivel 2', '08:00:00', '20:00:00'),
(27, 'Servicio de First Aid', 'Primeros auxilios', 'Terminal G, Nivel 1', '00:00:00', '23:59:59'),
(28, 'Tienda de Dulces', 'Dulces y chocolates', 'Terminal H, Nivel 2', '06:30:00', '22:30:00'),
(29, 'Área de Fumadores', 'Zona designada para fumar', 'Terminal I, Nivel 0', '00:00:00', '23:59:59'),
(30, 'Servicio de Valet Parking', 'Estacionamiento con servicio de valet', 'Terminal J, Nivel 0', '06:00:00', '22:00:00'),
(31, 'Tienda de Vinos', 'Vinos y licores finos', 'Terminal A, Nivel 3', '10:00:00', '21:00:00'),
(32, 'Servicio de Limusina', 'Transporte ejecutivo', 'Terminal B, Nivel 0', '00:00:00', '23:59:59'),
(33, 'Tienda de Artículos de Viaje', 'Maletas y artículos para viaje', 'Terminal C, Nivel 2', '08:00:00', '20:00:00'),
(34, 'Servicio de Mascotas', 'Área para mascotas', 'Terminal D, Nivel 0', '07:00:00', '21:00:00'),
(35, 'Tienda de Joyería', 'Joyas y relojes', 'Terminal E, Nivel 1', '09:00:00', '19:00:00'),
(36, 'Servicio de Silla de Ruedas', 'Asistencia para movilidad reducida', 'Terminal F, Nivel 1', '00:00:00', '23:59:59'),
(37, 'Tienda de Perfumes', 'Perfumes y cosméticos', 'Terminal G, Nivel 2', '08:00:00', '20:00:00'),
(38, 'Servicio de Paquetería', 'Envío de paquetes', 'Terminal H, Nivel 1', '07:00:00', '21:00:00'),
(39, 'Tienda de Deportes', 'Artículos deportivos', 'Terminal I, Nivel 3', '09:00:00', '19:00:00'),
(40, 'Servicio de Traducción', 'Asistencia con idiomas', 'Terminal J, Nivel 2', '08:00:00', '20:00:00'),
(41, 'Tienda de Arte', 'Arte local y souvenirs artísticos', 'Terminal A, Nivel 1', '10:00:00', '18:00:00'),
(42, 'Servicio de Fotocopias', 'Fotocopias e impresiones', 'Terminal B, Nivel 1', '07:00:00', '21:00:00'),
(43, 'Tienda de Música', 'CDs y vinilos', 'Terminal C, Nivel 3', '09:00:00', '19:00:00'),
(44, 'Servicio de Notaría', 'Servicios notariales', 'Terminal D, Nivel 2', '08:00:00', '17:00:00'),
(45, 'Tienda de Antigüedades', 'Antigüedades y coleccionables', 'Terminal E, Nivel 2', '10:00:00', '18:00:00'),
(46, 'Servicio de Lavandería', 'Lavado rápido de ropa', 'Terminal F, Nivel 1', '07:00:00', '21:00:00'),
(47, 'Tienda de Cigarros', 'Puros y cigarros finos', 'Terminal G, Nivel 3', '10:00:00', '21:00:00'),
(48, 'Servicio de Seguridad Privada', 'Servicios de seguridad adicional', 'Terminal H, Nivel 0', '00:00:00', '23:59:59'),
(49, 'Tienda de Tecnología', 'Últimos gadgets tecnológicos', 'Terminal I, Nivel 1', '08:00:00', '20:00:00'),
(50, 'Servicio de Consigna', 'Guardaequipajes seguro', 'Terminal J, Nivel 0', '06:00:00', '22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
CREATE TABLE IF NOT EXISTS `vuelos` (
  `id_vuelo` int NOT NULL AUTO_INCREMENT,
  `id_aerolinea` int NOT NULL,
  `id_avion` int NOT NULL,
  `numero_vuelo` varchar(10) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL,
  `hora_salida` datetime NOT NULL,
  `hora_llegada` datetime NOT NULL,
  `id_puerta_salida` int DEFAULT NULL,
  `id_puerta_llegada` int DEFAULT NULL,
  `estado` enum('programado','embarcando','demorado','cancelado','en_vuelo','aterrizado') DEFAULT 'programado',
  PRIMARY KEY (`id_vuelo`),
  KEY `id_aerolinea` (`id_aerolinea`),
  KEY `id_avion` (`id_avion`),
  KEY `id_puerta_salida` (`id_puerta_salida`),
  KEY `id_puerta_llegada` (`id_puerta_llegada`),
  KEY `idx_vuelo_numero` (`numero_vuelo`),
  KEY `idx_vuelo_fechas` (`hora_salida`,`hora_llegada`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id_vuelo`, `id_aerolinea`, `id_avion`, `numero_vuelo`, `origen`, `destino`, `hora_salida`, `hora_llegada`, `id_puerta_salida`, `id_puerta_llegada`, `estado`) VALUES
(1, 1, 1, 'AA123', 'Miami', 'Nueva York', '2023-07-01 08:00:00', '2023-07-01 11:00:00', 1, 6, 'programado'),
(2, 1, 2, 'AA456', 'Los Ángeles', 'Chicago', '2023-07-01 10:30:00', '2023-07-01 15:45:00', 2, 7, 'programado'),
(3, 2, 3, 'DL789', 'Atlanta', 'Dallas', '2023-07-01 09:15:00', '2023-07-01 11:30:00', 3, 8, 'programado'),
(4, 2, 4, 'DL101', 'Seattle', 'Boston', '2023-07-01 12:00:00', '2023-07-01 19:30:00', 4, 9, 'programado'),
(5, 3, 5, 'UA112', 'Denver', 'San Francisco', '2023-07-01 07:45:00', '2023-07-01 09:30:00', 5, 10, 'programado'),
(6, 3, 6, 'UA131', 'Houston', 'Orlando', '2023-07-01 14:20:00', '2023-07-01 17:45:00', 6, 11, 'programado'),
(7, 4, 7, 'LH415', 'Frankfurt', 'Nueva York', '2023-07-01 13:10:00', '2023-07-01 16:30:00', 7, 12, 'programado'),
(8, 4, 8, 'LH216', 'Berlín', 'Miami', '2023-07-01 11:45:00', '2023-07-01 16:15:00', 8, 13, 'programado'),
(9, 5, 9, 'BA178', 'Londres', 'Los Ángeles', '2023-07-01 10:00:00', '2023-07-01 14:30:00', 9, 14, 'programado'),
(10, 5, 10, 'BA245', 'Manchester', 'Chicago', '2023-07-01 15:30:00', '2023-07-01 18:45:00', 10, 15, 'programado'),
(11, 6, 11, 'AF342', 'París', 'Washington', '2023-07-01 08:45:00', '2023-07-01 12:15:00', 11, 16, 'programado'),
(12, 6, 12, 'AF567', 'Lyon', 'Atlanta', '2023-07-01 14:00:00', '2023-07-01 18:30:00', 12, 17, 'programado'),
(13, 7, 13, 'EK512', 'Dubái', 'Nueva York', '2023-07-01 09:30:00', '2023-07-01 15:45:00', 13, 18, 'programado'),
(14, 7, 14, 'EK309', 'Abu Dabi', 'Los Ángeles', '2023-07-01 12:15:00', '2023-07-01 22:30:00', 14, 19, 'programado'),
(15, 8, 15, 'QR701', 'Doha', 'Miami', '2023-07-01 10:45:00', '2023-07-01 17:15:00', 15, 20, 'programado'),
(16, 8, 16, 'QR888', 'Doha', 'Dallas', '2023-07-01 16:00:00', '2023-07-01 22:45:00', 16, 21, 'programado'),
(17, 9, 17, 'SQ221', 'Singapur', 'San Francisco', '2023-07-01 11:30:00', '2023-07-01 20:15:00', 17, 22, 'programado'),
(18, 9, 18, 'SQ335', 'Singapur', 'Nueva York', '2023-07-01 13:45:00', '2023-07-01 23:30:00', 18, 23, 'programado'),
(19, 10, 19, 'CX888', 'Hong Kong', 'Vancouver', '2023-07-01 08:15:00', '2023-07-01 12:30:00', 19, 24, 'programado'),
(20, 10, 20, 'CX123', 'Hong Kong', 'Toronto', '2023-07-01 14:30:00', '2023-07-01 19:45:00', 20, 25, 'programado'),
(21, 11, 21, 'AM456', 'Ciudad de México', 'Chicago', '2023-07-01 07:30:00', '2023-07-01 10:45:00', 21, 26, 'programado'),
(22, 11, 22, 'AM789', 'Guadalajara', 'Los Ángeles', '2023-07-01 12:45:00', '2023-07-01 15:00:00', 22, 27, 'programado'),
(23, 12, 23, 'LA123', 'Santiago', 'Miami', '2023-07-01 09:00:00', '2023-07-01 15:30:00', 23, 28, 'programado'),
(24, 12, 24, 'LA456', 'Lima', 'Nueva York', '2023-07-01 15:15:00', '2023-07-01 22:00:00', 24, 29, 'programado'),
(25, 13, 25, 'AV111', 'Bogotá', 'Orlando', '2023-07-01 08:30:00', '2023-07-01 13:45:00', 25, 30, 'programado'),
(26, 13, 26, 'AV222', 'Medellín', 'Miami', '2023-07-01 14:45:00', '2023-07-01 18:00:00', 26, 31, 'programado'),
(27, 14, 27, 'CM333', 'Ciudad de Panamá', 'Houston', '2023-07-01 10:00:00', '2023-07-01 13:15:00', 27, 32, 'programado'),
(28, 14, 28, 'CM444', 'San José', 'Atlanta', '2023-07-01 16:15:00', '2023-07-01 19:30:00', 28, 33, 'programado'),
(29, 15, 29, 'AC555', 'Toronto', 'Nueva York', '2023-07-01 07:15:00', '2023-07-01 09:00:00', 29, 34, 'programado'),
(30, 15, 30, 'AC666', 'Montreal', 'Chicago', '2023-07-01 13:30:00', '2023-07-01 15:45:00', 30, 35, 'programado'),
(31, 16, 31, 'JL777', 'Tokio', 'Los Ángeles', '2023-07-01 11:45:00', '2023-07-01 04:30:00', 31, 36, 'programado'),
(32, 16, 32, 'JL888', 'Osaka', 'San Francisco', '2023-07-01 18:00:00', '2023-07-01 10:45:00', 32, 37, 'programado'),
(33, 17, 33, 'NH999', 'Tokio', 'Nueva York', '2023-07-01 09:15:00', '2023-07-01 07:00:00', 33, 38, 'programado'),
(34, 17, 34, 'NH111', 'Nagoya', 'Chicago', '2023-07-01 15:30:00', '2023-07-01 12:15:00', 34, 39, 'programado'),
(35, 18, 35, 'QF222', 'Sídney', 'Los Ángeles', '2023-07-01 12:45:00', '2023-07-01 06:30:00', 35, 40, 'programado'),
(36, 18, 36, 'QF333', 'Melbourne', 'Vancouver', '2023-07-01 19:00:00', '2023-07-01 13:45:00', 36, 41, 'programado'),
(37, 19, 37, 'TK444', 'Estambul', 'Nueva York', '2023-07-01 10:15:00', '2023-07-01 15:30:00', 37, 42, 'programado'),
(38, 19, 38, 'TK555', 'Ankara', 'Chicago', '2023-07-01 16:30:00', '2023-07-01 21:45:00', 38, 43, 'programado'),
(39, 20, 39, 'KE666', 'Seúl', 'Los Ángeles', '2023-07-01 13:45:00', '2023-07-01 08:30:00', 39, 44, 'programado'),
(40, 20, 40, 'KE777', 'Busan', 'San Francisco', '2023-07-01 20:00:00', '2023-07-01 14:45:00', 40, 45, 'programado'),
(41, 21, 41, 'CZ888', 'Pekín', 'Nueva York', '2023-07-01 11:15:00', '2023-07-01 14:30:00', 41, 46, 'programado'),
(42, 21, 42, 'CZ999', 'Shanghái', 'Chicago', '2023-07-01 17:30:00', '2023-07-01 20:45:00', 42, 47, 'programado'),
(43, 22, 43, 'CA111', 'Pekín', 'Los Ángeles', '2023-07-01 14:45:00', '2023-07-01 09:30:00', 43, 48, 'programado'),
(44, 22, 44, 'CA222', 'Guangzhou', 'San Francisco', '2023-07-01 21:00:00', '2023-07-01 15:45:00', 44, 49, 'programado'),
(45, 23, 45, 'ET333', 'Adís Abeba', 'Washington', '2023-07-01 12:15:00', '2023-07-01 18:30:00', 45, 50, 'programado'),
(46, 23, 46, 'ET444', 'Adís Abeba', 'Nueva York', '2023-07-01 18:30:00', '2023-07-02 00:45:00', 1, 6, 'programado'),
(47, 24, 47, 'SA555', 'Johannesburgo', 'Atlanta', '2023-07-01 15:45:00', '2023-07-01 23:00:00', 2, 7, 'programado'),
(48, 24, 48, 'SA666', 'Ciudad del Cabo', 'Nueva York', '2023-07-01 22:00:00', '2023-07-02 06:15:00', 3, 8, 'programado'),
(49, 25, 49, 'AZ777', 'Roma', 'Miami', '2023-07-01 13:00:00', '2023-07-01 19:15:00', 4, 9, 'programado'),
(50, 25, 50, 'AZ888', 'Milán', 'Nueva York', '2023-07-01 19:15:00', '2023-07-02 01:30:00', 5, 10, 'programado');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vuelos_hoy`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `vuelos_hoy`;
CREATE TABLE IF NOT EXISTS `vuelos_hoy` (
`aerolinea` varchar(100)
,`destino` varchar(50)
,`estado` enum('programado','embarcando','demorado','cancelado','en_vuelo','aterrizado')
,`hora_llegada` datetime
,`hora_salida` datetime
,`id_vuelo` int
,`numero_vuelo` varchar(10)
,`origen` varchar(50)
,`puerta` varchar(12)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `pasajeros_por_vuelo`
--
DROP TABLE IF EXISTS `pasajeros_por_vuelo`;

DROP VIEW IF EXISTS `pasajeros_por_vuelo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pasajeros_por_vuelo`  AS SELECT `v`.`id_vuelo` AS `id_vuelo`, `v`.`numero_vuelo` AS `numero_vuelo`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, `r`.`clase` AS `clase`, `r`.`asiento` AS `asiento`, `r`.`estado` AS `estado` FROM ((`reservaciones` `r` join `pasajeros` `p` on((`r`.`id_pasajero` = `p`.`id_pasajero`))) join `vuelos` `v` on((`r`.`id_vuelo` = `v`.`id_vuelo`))) WHERE (`r`.`estado` <> 'cancelada') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vuelos_hoy`
--
DROP TABLE IF EXISTS `vuelos_hoy`;

DROP VIEW IF EXISTS `vuelos_hoy`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vuelos_hoy`  AS SELECT `v`.`id_vuelo` AS `id_vuelo`, `a`.`nombre` AS `aerolinea`, `v`.`numero_vuelo` AS `numero_vuelo`, `v`.`origen` AS `origen`, `v`.`destino` AS `destino`, `v`.`hora_salida` AS `hora_salida`, `v`.`hora_llegada` AS `hora_llegada`, concat(`p`.`terminal`,'-',`p`.`numero`) AS `puerta`, `v`.`estado` AS `estado` FROM ((`vuelos` `v` join `aerolineas` `a` on((`v`.`id_aerolinea` = `a`.`id_aerolinea`))) left join `puertas_embarque` `p` on((`v`.`id_puerta_salida` = `p`.`id_puerta`))) WHERE (cast(`v`.`hora_salida` as date) = curdate()) ORDER BY `v`.`hora_salida` ASC ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD CONSTRAINT `aviones_ibfk_1` FOREIGN KEY (`id_aerolinea`) REFERENCES `aerolineas` (`id_aerolinea`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_aerolinea`) REFERENCES `aerolineas` (`id_aerolinea`);

--
-- Filtros para la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD CONSTRAINT `reservaciones_ibfk_1` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`id_pasajero`),
  ADD CONSTRAINT `reservaciones_ibfk_2` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id_vuelo`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`id_aerolinea`) REFERENCES `aerolineas` (`id_aerolinea`),
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id_avion`),
  ADD CONSTRAINT `vuelos_ibfk_3` FOREIGN KEY (`id_puerta_salida`) REFERENCES `puertas_embarque` (`id_puerta`),
  ADD CONSTRAINT `vuelos_ibfk_4` FOREIGN KEY (`id_puerta_llegada`) REFERENCES `puertas_embarque` (`id_puerta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


#CONSULTAS
USE aeropuerto;
#Muestra todas las aerolíneas que pertenecen a Estados unidos, Japón, Hong Kong, Qatar y Australia
SELECT nombre, pais_origen 
FROM aerolineas 
WHERE pais_origen IN ('Estados Unidos', 'Japón', 'Hong Kong', 'Qatar', 'Austrialia');

SELECT origen, destino, hora_salida, hora_llegada
FROM vuelos
WHERE DATE(hora_salida) = '2023-07-01';

SELECT e.nombre, e.apellido, e.puesto, a.nombre
FROM empleados e
JOIN aerolineas a ON e.id_aerolinea = a.id_aerolinea
WHERE e.id_aerolinea = 2;

SELECT nombre, apellido, puesto, salario
FROM empleados
WHERE salario >= '8200';

SELECT nombre, pais_origen, fecha_fundacion, 
YEAR(CURDATE()) - YEAR(fecha_fundacion) as Anos_Operando
FROM aerolineas;

SELECT ae.nombre as Aerolinea, av.modelo as Modelo_de_Avión, v.origen as Origen_Vuelo, v.destino, v.hora_llegada
FROM vuelos v
JOIN aerolineas ae ON v.id_aerolinea = ae.id_aerolinea 
JOIN aviones av ON  v.id_avion = av.id_avion;
