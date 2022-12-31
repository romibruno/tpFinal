-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2022 a las 16:21:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_socios`
--
CREATE DATABASE IF NOT EXISTS `crud_socios` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `crud_socios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `idSocio` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `localidad` varchar(40) NOT NULL,
  `fNac` date NOT NULL,
  `mail` varchar(40) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`idSocio`, `nombre`, `apellido`, `direccion`, `localidad`, `fNac`, `mail`, `telefono`, `activo`) VALUES
(1, 'Dolores', 'Paz', 'Tribulato 1287', 'Liniers', '1986-12-01', 'DP@gmail.com', '1198234502', 1),
(2, 'luisana', 'Diaz', 'larrea 568', 'pilar', '1977-04-12', 'lp@gmail.com', '1184750675', 1),
(3, 'Jose', 'Martinez', 'Av.Cordoba44', 'san miguel', '1982-08-23', 'JMar@gmail.com', '1108173945', 1),
(4, 'Pedro', 'paz', 'larrea 930', 'pilar', '1990-09-12', 'jose@gmail.com', '1156780987', 1),
(5, 'Malala', 'Ramirez', 'larrea 567', 'Liniers', '1980-02-25', 'MR@gmail.com', '1156780987', 1),
(6, 'Luana', 'Sanz', 'Av.Cordoba99', 'san miguel', '1990-09-23', 'Lsanz@gmail.com', '1194750675', 1),
(40, 'romina', 'bruno', 'Av.Cordoba44', 'san miguel', '1984-07-12', 'Rbruno@gmail.com', '1123456478', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`idSocio`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `idSocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
