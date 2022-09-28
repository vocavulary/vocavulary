-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 20:44:12
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vocavulary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegios`
--

CREATE TABLE `colegios` (
  `id_IE` int(10) NOT NULL,
  `nombre_inst` varchar(40) NOT NULL,
  `ubicacion` varchar(40) NOT NULL,
  `clasificacion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegios`
--

INSERT INTO `colegios` (`id_IE`, `nombre_inst`, `ubicacion`, `clasificacion`) VALUES
(1, 'I.E La salle de campoamor', 'medellin', 'publico'),
(2, 'I.E La presentacion', 'medellin', 'publico'),
(3, 'I.E El octabio', 'medellin', 'publico'),
(4, 'I.E La salle de bello', 'medellin', 'privado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record`
--

CREATE TABLE `record` (
  `id_record` int(10) NOT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  `puntaje` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `record`
--

INSERT INTO `record` (`id_record`, `id_usuario`, `puntaje`) VALUES
(1, 1, 1000),
(4, 4, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `Contraseña` varchar(40) NOT NULL,
  `id_ie` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `correo`, `Contraseña`, `id_ie`) VALUES
(1, 'chimuelo', 'tunjuelo', 'yotuyotu411@gmail.com', 'aveces', 1),
(2, 'luih', 'zapata', 'luis.zapata2515@gmail.com', 'nose', 1),
(3, 'maikol', 'bustos', 'bustosmaikol.05@gmail.com', 'sise', 1),
(4, 'thomas', 'osorio', 'thomasosoriozambrano05@gmail.com', 'nosabe', 1),
(5, 'thomas', 'salazar', 'traltexs6868@gmail.com', 'talvez', 1),
(6, 'juan', 'oquendo', 'juanjose.oquendo10a@gmail.com', 'nuncasabe', 1),
(7, 'dino', 'saldarriaga', 'saldarriagajuanpablo68@gmail.com', 'puedeser', 1),
(8, 'jeremy', 'yepes', 'jeremy.yepesdurango@gmail.com', 'noloescuchen', 1),
(9, 'leidy', 'garcia', 'garciasanaorialeidy@gmail.com', 'silesabe', 2),
(10, 'jacobo', 'lopez', 'josejacobolp@gmail.com', 'sise', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colegios`
--
ALTER TABLE `colegios`
  ADD PRIMARY KEY (`id_IE`);

--
-- Indices de la tabla `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id_record`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `id_ie` (`id_ie`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_ie`) REFERENCES `colegios` (`id_IE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
