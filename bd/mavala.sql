-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2023 a las 21:43:35
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mavala`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `id` bigint(12) NOT NULL,
  `idProduc` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eits`
--

CREATE TABLE `eits` (
  `idEits` bigint(20) NOT NULL,
  `nomEits` varchar(30) NOT NULL,
  `desEits` text NOT NULL,
  `imgEits` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eits`
--

INSERT INTO `eits` (`idEits`, `nomEits`, `desEits`, `imgEits`) VALUES
(0, 'vih', 'lolo', 'WIN_20230818_08_40_36_Pro.jpg'),
(4, 'sida', 'ijaindiad', 'WIN_20230818_08_40_36_Pro.jpg'),
(55, 'holi', 'uuuuu', 'WIN_20230818_10_29_59_Pro.jpg'),
(99, 'lola', 'carta', 'WIN_20230818_08_40_36_Pro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farma`
--

CREATE TABLE `farma` (
  `id` bigint(12) NOT NULL,
  `nomFarm` varchar(20) NOT NULL,
  `barFarm` varchar(30) NOT NULL,
  `dirFarm` varchar(40) NOT NULL,
  `telFarm` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `farma`
--

INSERT INTO `farma` (`id`, `nomFarm`, `barFarm`, `dirFarm`, `telFarm`) VALUES
(1, 'la rebaja e', 'los guad', 'calle 2c n 24-18', 3167890000),
(2, 'cruz roja', 'candido', 'calle 2c n 24-18', 3202389045),
(3, 'la paris', 'catedral', 'calle 2c n 24-65', 3213690126),
(88, 'jAJAJA', 'koko', '12c 25', 3188601515);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProduc` bigint(30) NOT NULL,
  `nomProduc` varchar(30) NOT NULL,
  `desProduc` text NOT NULL,
  `precioProduc` bigint(30) NOT NULL,
  `fotoProduc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idAdmin` int(10) NOT NULL,
  `nomAdmin` varchar(20) NOT NULL,
  `emailAdmin` varchar(30) NOT NULL,
  `passAdmin` bigint(10) NOT NULL,
  `numAdmin` bigint(20) NOT NULL,
  `generoAdmin` varchar(10) NOT NULL,
  `tipoAdmin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idAdmin`, `nomAdmin`, `emailAdmin`, `passAdmin`, `numAdmin`, `generoAdmin`, `tipoAdmin`) VALUES
(1, 'laura hoyos ', 'laurhoyos11@gmail.com', 1108, 3188601556, 'femenino', 1),
(2, 'mariana osorio osori', 'marianaosorio276@gmail.com', 2205, 3213690126, 'femenino', 1),
(3, 'valentina cruz ', 'karol.valeka@gmail.com', 2020, 3107505715, 'femenino', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD KEY `idProduc` (`idProduc`),
  ADD KEY `idFarm` (`id`);

--
-- Indices de la tabla `eits`
--
ALTER TABLE `eits`
  ADD PRIMARY KEY (`idEits`);

--
-- Indices de la tabla `farma`
--
ALTER TABLE `farma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProduc`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`id`) REFERENCES `farma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idProduc`) REFERENCES `control` (`idProduc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
