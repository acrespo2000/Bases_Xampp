-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2022 a las 00:58:10
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `efecto_secundario`
--

CREATE TABLE `efecto_secundario` (
  `id_efecto_secundario` int(11) UNSIGNED NOT NULL,
  `efecto_secundartio` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadistica_base`
--

CREATE TABLE `estadistica_base` (
  `numero_pokedex` int(11) UNSIGNED NOT NULL,
  `ps` int(11) UNSIGNED NOT NULL,
  `ataque` int(11) UNSIGNED NOT NULL,
  `defensa` int(11) UNSIGNED NOT NULL,
  `especial` int(11) UNSIGNED NOT NULL,
  `velocidad` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evoluciona_de`
--

CREATE TABLE `evoluciona_de` (
  `pokemon_evolucionado` int(11) UNSIGNED NOT NULL,
  `pokemon_origen` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_aprendizaje`
--

CREATE TABLE `forma_aprendizaje` (
  `id_forma_aprendizaje` int(11) UNSIGNED NOT NULL,
  `id_tipo_aprendizaje` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_evolucion`
--

CREATE TABLE `forma_evolucion` (
  `id_forma_evolucion` int(11) UNSIGNED NOT NULL,
  `tipo_evolucion` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mo`
--

CREATE TABLE `mo` (
  `id_forma_aprendizaje` int(11) UNSIGNED NOT NULL,
  `MO` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id_movimiento` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `potencia` int(11) UNSIGNED NOT NULL,
  `precision_mov` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `pp` int(11) UNSIGNED NOT NULL,
  `id_tipo` int(11) UNSIGNED NOT NULL,
  `prioridad` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_efecto_secundario`
--

CREATE TABLE `movimiento_efecto_secundario` (
  `id_movimiento` int(11) UNSIGNED NOT NULL,
  `id_efecto_secundario` int(11) UNSIGNED NOT NULL,
  `probabilidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt`
--

CREATE TABLE `mt` (
  `id_forma_de_aprendizaje` int(11) UNSIGNED NOT NULL,
  `MT` varchar(5) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_aprendizaje`
--

CREATE TABLE `nivel_aprendizaje` (
  `id_forma_aprendizaje` int(11) UNSIGNED NOT NULL,
  `nivel` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_evolucion`
--

CREATE TABLE `nivel_evolucion` (
  `id_forma_evolucion` int(11) UNSIGNED NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piedra`
--

CREATE TABLE `piedra` (
  `id_forma_evolucion` int(11) UNSIGNED NOT NULL,
  `id_tipo_piedra` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `numero_pokedex` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_forma_evolucion`
--

CREATE TABLE `pokemon_forma_evolucion` (
  `numero_pokedex` int(11) UNSIGNED NOT NULL,
  `id_forma_evolucion` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_movimiento_forma`
--

CREATE TABLE `pokemon_movimiento_forma` (
  `numero_pokedex` int(11) UNSIGNED NOT NULL,
  `id_movimiento` int(11) UNSIGNED NOT NULL,
  `id_forma_aprendizaje` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_tipo`
--

CREATE TABLE `pokemon_tipo` (
  `numero_pokedex` int(11) UNSIGNED NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `id_tipo_ataque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ataque`
--

CREATE TABLE `tipo_ataque` (
  `id_tipo_ataque` int(11) NOT NULL,
  `tipo` varchar(8) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evolucion`
--

CREATE TABLE `tipo_evolucion` (
  `id_tipo_evolucion` int(11) UNSIGNED NOT NULL,
  `tipo_evolucion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_forma_aprendizaje`
--

CREATE TABLE `tipo_forma_aprendizaje` (
  `id_tipo_aprendizaje` int(11) UNSIGNED NOT NULL,
  `tipo_aprendizaje` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_piedra`
--

CREATE TABLE `tipo_piedra` (
  `id_tipo_piedra` int(11) UNSIGNED NOT NULL,
  `nombre_piedra` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `efecto_secundario`
--
ALTER TABLE `efecto_secundario`
  ADD PRIMARY KEY (`id_efecto_secundario`);

--
-- Indices de la tabla `estadistica_base`
--
ALTER TABLE `estadistica_base`
  ADD KEY `numero_pokedex` (`numero_pokedex`);

--
-- Indices de la tabla `evoluciona_de`
--
ALTER TABLE `evoluciona_de`
  ADD KEY `pokemon_evolucionado` (`pokemon_evolucionado`),
  ADD KEY `pokemon_origen` (`pokemon_origen`);

--
-- Indices de la tabla `forma_aprendizaje`
--
ALTER TABLE `forma_aprendizaje`
  ADD PRIMARY KEY (`id_forma_aprendizaje`),
  ADD KEY `id_tipo_aprendizaje` (`id_tipo_aprendizaje`);

--
-- Indices de la tabla `forma_evolucion`
--
ALTER TABLE `forma_evolucion`
  ADD PRIMARY KEY (`id_forma_evolucion`),
  ADD KEY `tipo_evolucion` (`tipo_evolucion`);

--
-- Indices de la tabla `mo`
--
ALTER TABLE `mo`
  ADD KEY `id_forma_aprendizaje` (`id_forma_aprendizaje`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `movimiento_efecto_secundario`
--
ALTER TABLE `movimiento_efecto_secundario`
  ADD KEY `id_movimiento` (`id_movimiento`),
  ADD KEY `id_efecto_secundario` (`id_efecto_secundario`);

--
-- Indices de la tabla `mt`
--
ALTER TABLE `mt`
  ADD KEY `id_forma_de_aprendizaje` (`id_forma_de_aprendizaje`);

--
-- Indices de la tabla `nivel_aprendizaje`
--
ALTER TABLE `nivel_aprendizaje`
  ADD KEY `id_forma_aprendizaje` (`id_forma_aprendizaje`);

--
-- Indices de la tabla `nivel_evolucion`
--
ALTER TABLE `nivel_evolucion`
  ADD KEY `id_forma_evolucion` (`id_forma_evolucion`);

--
-- Indices de la tabla `piedra`
--
ALTER TABLE `piedra`
  ADD KEY `id_forma_evolucion` (`id_forma_evolucion`),
  ADD KEY `id_tipo_piedra` (`id_tipo_piedra`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`numero_pokedex`);

--
-- Indices de la tabla `pokemon_forma_evolucion`
--
ALTER TABLE `pokemon_forma_evolucion`
  ADD KEY `numero_pokedex` (`numero_pokedex`),
  ADD KEY `id_forma_evolucion` (`id_forma_evolucion`);

--
-- Indices de la tabla `pokemon_movimiento_forma`
--
ALTER TABLE `pokemon_movimiento_forma`
  ADD KEY `id_movimiento` (`id_movimiento`),
  ADD KEY `id_forma_aprendizaje` (`id_forma_aprendizaje`),
  ADD KEY `numer_pokedex` (`numero_pokedex`);

--
-- Indices de la tabla `pokemon_tipo`
--
ALTER TABLE `pokemon_tipo`
  ADD KEY `numero_pokedex` (`numero_pokedex`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`),
  ADD KEY `id_tipo_ataque` (`id_tipo_ataque`);

--
-- Indices de la tabla `tipo_ataque`
--
ALTER TABLE `tipo_ataque`
  ADD PRIMARY KEY (`id_tipo_ataque`);

--
-- Indices de la tabla `tipo_evolucion`
--
ALTER TABLE `tipo_evolucion`
  ADD PRIMARY KEY (`id_tipo_evolucion`);

--
-- Indices de la tabla `tipo_forma_aprendizaje`
--
ALTER TABLE `tipo_forma_aprendizaje`
  ADD PRIMARY KEY (`id_tipo_aprendizaje`);

--
-- Indices de la tabla `tipo_piedra`
--
ALTER TABLE `tipo_piedra`
  ADD PRIMARY KEY (`id_tipo_piedra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `efecto_secundario`
--
ALTER TABLE `efecto_secundario`
  MODIFY `id_efecto_secundario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forma_aprendizaje`
--
ALTER TABLE `forma_aprendizaje`
  MODIFY `id_forma_aprendizaje` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forma_evolucion`
--
ALTER TABLE `forma_evolucion`
  MODIFY `id_forma_evolucion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mt`
--
ALTER TABLE `mt`
  MODIFY `id_forma_de_aprendizaje` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `numero_pokedex` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_ataque`
--
ALTER TABLE `tipo_ataque`
  MODIFY `id_tipo_ataque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_evolucion`
--
ALTER TABLE `tipo_evolucion`
  MODIFY `id_tipo_evolucion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_forma_aprendizaje`
--
ALTER TABLE `tipo_forma_aprendizaje`
  MODIFY `id_tipo_aprendizaje` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_piedra`
--
ALTER TABLE `tipo_piedra`
  MODIFY `id_tipo_piedra` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estadistica_base`
--
ALTER TABLE `estadistica_base`
  ADD CONSTRAINT `estadistica_base_ibfk_1` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evoluciona_de`
--
ALTER TABLE `evoluciona_de`
  ADD CONSTRAINT `evoluciona_de_ibfk_1` FOREIGN KEY (`pokemon_evolucionado`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `evoluciona_de_ibfk_2` FOREIGN KEY (`pokemon_origen`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `forma_aprendizaje`
--
ALTER TABLE `forma_aprendizaje`
  ADD CONSTRAINT `forma_aprendizaje_ibfk_1` FOREIGN KEY (`id_tipo_aprendizaje`) REFERENCES `tipo_forma_aprendizaje` (`id_tipo_aprendizaje`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mo`
--
ALTER TABLE `mo`
  ADD CONSTRAINT `mo_ibfk_1` FOREIGN KEY (`id_forma_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `movimiento_efecto_secundario`
--
ALTER TABLE `movimiento_efecto_secundario`
  ADD CONSTRAINT `movimiento_efecto_secundario_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `movimiento_efecto_secundario_ibfk_2` FOREIGN KEY (`id_efecto_secundario`) REFERENCES `efecto_secundario` (`id_efecto_secundario`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mt`
--
ALTER TABLE `mt`
  ADD CONSTRAINT `mt_ibfk_1` FOREIGN KEY (`id_forma_de_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nivel_aprendizaje`
--
ALTER TABLE `nivel_aprendizaje`
  ADD CONSTRAINT `nivel_aprendizaje_ibfk_1` FOREIGN KEY (`id_forma_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nivel_evolucion`
--
ALTER TABLE `nivel_evolucion`
  ADD CONSTRAINT `nivel_evolucion_ibfk_1` FOREIGN KEY (`id_forma_evolucion`) REFERENCES `forma_evolucion` (`id_forma_evolucion`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `piedra`
--
ALTER TABLE `piedra`
  ADD CONSTRAINT `piedra_ibfk_1` FOREIGN KEY (`id_forma_evolucion`) REFERENCES `forma_evolucion` (`id_forma_evolucion`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `piedra_ibfk_2` FOREIGN KEY (`id_tipo_piedra`) REFERENCES `tipo_piedra` (`id_tipo_piedra`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pokemon_forma_evolucion`
--
ALTER TABLE `pokemon_forma_evolucion`
  ADD CONSTRAINT `pokemon_forma_evolucion_ibfk_1` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `pokemon_forma_evolucion_ibfk_2` FOREIGN KEY (`id_forma_evolucion`) REFERENCES `forma_evolucion` (`id_forma_evolucion`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pokemon_movimiento_forma`
--
ALTER TABLE `pokemon_movimiento_forma`
  ADD CONSTRAINT `pokemon_movimiento_forma_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `pokemon_movimiento_forma_ibfk_2` FOREIGN KEY (`id_forma_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `pokemon_movimiento_forma_ibfk_3` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pokemon_tipo`
--
ALTER TABLE `pokemon_tipo`
  ADD CONSTRAINT `pokemon_tipo_ibfk_1` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `tipo_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `movimiento` (`id_tipo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tipo_ibfk_2` FOREIGN KEY (`id_tipo_ataque`) REFERENCES `tipo_ataque` (`id_tipo_ataque`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_evolucion`
--
ALTER TABLE `tipo_evolucion`
  ADD CONSTRAINT `tipo_evolucion_ibfk_1` FOREIGN KEY (`id_tipo_evolucion`) REFERENCES `forma_evolucion` (`id_forma_evolucion`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
