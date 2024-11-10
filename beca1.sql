-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2024 a las 04:53:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `MATRICULA` int(11) NOT NULL,
  `NOMBRE` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `CONTRASENIA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`MATRICULA`, `NOMBRE`, `EMAIL`, `CONTRASENIA`) VALUES
(22021483, 'NOE AVILA ACOSTA', 'a22021483@iteshu.edu.mx', 'noeavila48'),
(22021142, 'KEVIN URIEL SANTOS DICIPLINA', 'a22021142@iteshu.edu.mx', 'qwertyuiop'),
(22021335, 'papi', 'a22021335@iteshu.edu.mx', 'alaverga'),
(22021145, 'Cristian Yahir Leonardo Rojas', 'a22021145@iteshu.edu.mx', 'Elvenudo77'),
(22021352, 'IRMA DIAZ', 'a22021352@iteshu.edu.mx', 'irma1234'),
(22021170, 'kiko', 'a22021170@iteshu.edu.mx', '22021170');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
