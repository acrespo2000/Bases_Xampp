-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2022 a las 13:54:45
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
  `numero_pokedex` int(11) NOT NULL,
  `ps` int(11) NOT NULL,
  `ataque` int(11) NOT NULL,
  `defensa` int(11) NOT NULL,
  `especial` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evoluciona_de`
--

CREATE TABLE `evoluciona_de` (
  `pokemon_evolucionado` int(11) NOT NULL,
  `pokemon_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_evolucion`
--

CREATE TABLE `forma_evolucion` (
  `id_forma_evolucion` int(11) UNSIGNED NOT NULL,
  `tipo_evolucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_efecto_secundario`
--

CREATE TABLE `movimiento_efecto_secundario` (
  `id_movimiento` int(11) NOT NULL,
  `id_efecto_secundario` int(11) NOT NULL,
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
  `numero_pokedex` int(11) NOT NULL,
  `nombre` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_forma_evolucion`
--

CREATE TABLE `pokemon_forma_evolucion` (
  `numero_pokedex` int(11) NOT NULL,
  `id_forma_evolucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_tipo`
--

CREATE TABLE `pokemon_tipo` (
  `numero_pokedex` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
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
-- Indices de la tabla `forma_evolucion`
--
ALTER TABLE `forma_evolucion`
  ADD PRIMARY KEY (`id_forma_evolucion`),
  ADD KEY `tipo_evolucion` (`tipo_evolucion`);

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
-- AUTO_INCREMENT de la tabla `forma_evolucion`
--
ALTER TABLE `forma_evolucion`
  MODIFY `id_forma_evolucion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mt`
--
ALTER TABLE `mt`
  MODIFY `id_forma_de_aprendizaje` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `numero_pokedex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `tipo_piedra`
--
ALTER TABLE `tipo_piedra`
  MODIFY `id_tipo_piedra` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
