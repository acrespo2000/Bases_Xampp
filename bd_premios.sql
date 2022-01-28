-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2022 a las 12:49:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_premios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_labor_cientifica` int(10) UNSIGNED NOT NULL,
  `id_cientifico` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campocientifico`
--

CREATE TABLE `campocientifico` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci NOT NULL,
  `id_rama_ciencia` int(10) UNSIGNED NOT NULL,
  `tienePremio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certamen`
--

CREATE TABLE `certamen` (
  `id_cientifico` int(10) UNSIGNED NOT NULL,
  `id_premio` int(10) UNSIGNED NOT NULL,
  `dinero` float NOT NULL,
  `anho` int(11) NOT NULL,
  `id_genero` int(10) UNSIGNED NOT NULL,
  `id_labor_cientifica` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cientifico`
--

CREATE TABLE `cientifico` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(120) COLLATE utf8_spanish2_ci NOT NULL,
  `edad` int(3) UNSIGNED NOT NULL,
  `id_genero` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laborcientifica`
--

CREATE TABLE `laborcientifica` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(120) COLLATE utf8_spanish2_ci NOT NULL,
  `id_campo_cientifico` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mn_cientifico_campocientifico`
--

CREATE TABLE `mn_cientifico_campocientifico` (
  `id_cientifico` int(10) UNSIGNED NOT NULL,
  `id_campo_cientifico` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ramaciencia`
--

CREATE TABLE `ramaciencia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD KEY `id_labor_cientifica` (`id_labor_cientifica`),
  ADD KEY `id_cientifico` (`id_cientifico`);

--
-- Indices de la tabla `campocientifico`
--
ALTER TABLE `campocientifico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rama_ciencia` (`id_rama_ciencia`);

--
-- Indices de la tabla `certamen`
--
ALTER TABLE `certamen`
  ADD KEY `id_cientifico` (`id_cientifico`),
  ADD KEY `id_premio` (`id_premio`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_labor_cientifica` (`id_labor_cientifica`);

--
-- Indices de la tabla `cientifico`
--
ALTER TABLE `cientifico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laborcientifica`
--
ALTER TABLE `laborcientifica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_campo_cientifico` (`id_campo_cientifico`);

--
-- Indices de la tabla `mn_cientifico_campocientifico`
--
ALTER TABLE `mn_cientifico_campocientifico`
  ADD KEY `id_cientifico` (`id_cientifico`),
  ADD KEY `id_campo_cientifico` (`id_campo_cientifico`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ramaciencia`
--
ALTER TABLE `ramaciencia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campocientifico`
--
ALTER TABLE `campocientifico`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cientifico`
--
ALTER TABLE `cientifico`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `laborcientifica`
--
ALTER TABLE `laborcientifica`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `premio`
--
ALTER TABLE `premio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ramaciencia`
--
ALTER TABLE `ramaciencia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autores`
--
ALTER TABLE `autores`
  ADD CONSTRAINT `autores_ibfk_1` FOREIGN KEY (`id_labor_cientifica`) REFERENCES `laborcientifica` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `autores_ibfk_2` FOREIGN KEY (`id_cientifico`) REFERENCES `cientifico` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `campocientifico`
--
ALTER TABLE `campocientifico`
  ADD CONSTRAINT `fk_ramaciencia_campo_cientifico` FOREIGN KEY (`id_rama_ciencia`) REFERENCES `ramaciencia` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `certamen`
--
ALTER TABLE `certamen`
  ADD CONSTRAINT `certamen_ibfk_1` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `certamen_ibfk_2` FOREIGN KEY (`id_cientifico`) REFERENCES `cientifico` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `certamen_ibfk_3` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `certamen_ibfk_4` FOREIGN KEY (`id_labor_cientifica`) REFERENCES `laborcientifica` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cientifico`
--
ALTER TABLE `cientifico`
  ADD CONSTRAINT `cientifico_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `laborcientifica`
--
ALTER TABLE `laborcientifica`
  ADD CONSTRAINT `laborcientifica_ibfk_1` FOREIGN KEY (`id_campo_cientifico`) REFERENCES `campocientifico` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mn_cientifico_campocientifico`
--
ALTER TABLE `mn_cientifico_campocientifico`
  ADD CONSTRAINT `fk_mn_cientifico_campocientifico_campocientifico` FOREIGN KEY (`id_campo_cientifico`) REFERENCES `campocientifico` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mn_cientifico_campocientifico_cientifico` FOREIGN KEY (`id_cientifico`) REFERENCES `cientifico` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
