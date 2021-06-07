-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2021 a las 07:18:29
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `producto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosproducto`
--

CREATE TABLE `datosproducto` (
  `idproducto` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` varchar(100) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `precio_producto` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datosproducto`
--

INSERT INTO `datosproducto` (`idproducto`, `codigo`, `nombre_producto`, `descripcion_producto`, `fecha_adquisicion`, `fecha_vencimiento`, `precio_producto`, `estado`) VALUES
(2, 123, 'Leche', 'Cajas de leches', '2021-06-01', '2021-06-01', 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventa`
--

CREATE TABLE `datosventa` (
  `idventa` int(11) NOT NULL,
  `nombre_ventas` varchar(50) DEFAULT NULL,
  `nombre_preducto` varchar(50) DEFAULT NULL,
  `precio_unitario` int(11) DEFAULT NULL,
  `precio_total` int(11) DEFAULT NULL,
  `nit_cliente` int(11) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datosventa`
--

INSERT INTO `datosventa` (`idventa`, `nombre_ventas`, `nombre_preducto`, `precio_unitario`, `precio_total`, `nit_cliente`, `descuento`, `estado`) VALUES
(1, 'ana', 'leche', 1, 50, 123, 10, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datosproducto`
--
ALTER TABLE `datosproducto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datosproducto`
--
ALTER TABLE `datosproducto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
