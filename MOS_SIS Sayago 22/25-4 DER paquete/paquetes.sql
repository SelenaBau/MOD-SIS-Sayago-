-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2022 a las 08:09:12
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paquetes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camioneros`
--

CREATE TABLE `camioneros` (
  `dni` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `teléfono` int(10) NOT NULL,
  `dirección` varchar(50) NOT NULL,
  `salario` int(10) NOT NULL,
  `localidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `matricula` varchar(10) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `tipo` text NOT NULL,
  `potencia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `código_de_paquetes` int(50) NOT NULL,
  `descripción` varchar(100) NOT NULL,
  `destinatario` varchar(50) NOT NULL,
  `dirección_de_destino` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `nombre` text NOT NULL,
  `código_de_provincia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camioneros`
--
ALTER TABLE `camioneros`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`código_de_paquetes`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`código_de_provincia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camioneros`
--
ALTER TABLE `camioneros`
  ADD CONSTRAINT `camioneros_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `paquetes` (`código_de_paquetes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
