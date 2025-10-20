-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2025 a las 02:41:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kiosko_barrio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, 2, 11.00),
(11, 6, 2, 2, 18.00),
(12, 6, 3, 1, 25.00),
(18, 7, 3, 2, 25.00),
(19, 7, 4, 1, 45.00),
(26, 8, 5, 1, 150.00),
(27, 8, 6, 1, 45.00),
(30, 9, 3, 1, 25.00),
(31, 9, 4, 1, 45.00),
(38, 10, 5, 2, 150.00),
(45, 11, 6, 1, 45.00),
(46, 12, 1, 2, 11.00),
(54, 13, 3, 1, 25.00),
(63, 14, 6, 2, 45.00),
(67, 15, 4, 3, 45.00),
(70, 16, 5, 1, 150.00),
(71, 17, 6, 1, 45.00),
(72, 18, 2, 1, 18.00),
(73, 19, 7, 1, 30.00),
(74, 20, 7, 1, 30.00),
(75, 21, 6, 5, 45.00),
(76, 22, 3, 1, 25.00),
(77, 23, 2, 1, 18.00),
(78, 24, 4, 1, 45.00),
(79, 25, 4, 1, 45.00),
(80, 26, 4, 1, 45.00),
(81, 27, 4, 1, 45.00),
(82, 28, 4, 1, 45.00),
(83, 29, 7, 2, 30.00),
(84, 30, 1, 1, 11.00),
(85, 31, 1, 1, 11.00),
(86, 32, 5, 1, 150.00),
(87, 33, 5, 1, 150.00),
(88, 34, 5, 1, 150.00),
(89, 35, 9, 1, 7.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`) VALUES
(1, 'Jabon OMO', 'En barra 200gr Sabor limon', 11.00, 44),
(2, 'Coca Cola', 'gaseosa 3 lt', 18.00, 16),
(3, 'Galletas Mabel', 'de agua 500gr', 25.00, 4),
(4, 'Shampo Sedal', 'Aroma Vainilla 500ml', 45.00, 15),
(5, 'Linterna Rayovac', 'Led 30 wats recargable', 150.00, -2),
(6, 'Cargador de celular Samsung', 'tipo C', 45.00, 5),
(7, 'Foco Westinhouse', 'Led 20 wats', 30.00, 21),
(8, 'Papel higieno Nacional', 'doble hoja 30 mt de 6 unidades', 15.00, 10),
(9, 'Azucar guabira', 'Blanca 1gk', 7.00, 9),
(10, 'Sal yodada', 'fina 1gk', 2.00, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','vendedor') DEFAULT 'vendedor',
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `rol`, `nombre`) VALUES
(1, 'admin', '$2y$10$Br3RYwQPc7.JRztl71rVHOVFKsGDaaDHwFQWGJKsR044dlCl8XrsO', 'admin', 'Administrador'),
(7, 'botero', '$2y$10$P2JRv4N.GTJunSsinKWkgexoJT.ImVpCwe8.qqd2RbtUI3frFAmGa', 'vendedor', 'botero joaquin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `usuario_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `usuario_id`, `total`) VALUES
(1, '2025-07-19 00:12:57', 1, 22.00),
(2, '2025-07-19 00:25:29', 7, 0.00),
(3, '2025-07-19 00:25:33', 7, 0.00),
(4, '2025-07-19 00:25:43', 7, 0.00),
(5, '2025-07-19 00:25:53', 7, 0.00),
(6, '2025-07-19 12:45:13', 1, 61.00),
(7, '2025-07-19 12:53:49', 1, 95.00),
(8, '2025-07-19 12:54:59', 1, 195.00),
(9, '2025-07-19 12:59:27', 1, 70.00),
(10, '2025-07-19 13:00:27', 1, 300.00),
(11, '2025-07-19 13:23:22', 1, 45.00),
(12, '2025-07-19 13:26:32', 1, 22.00),
(13, '2025-07-19 13:32:22', 1, 25.00),
(14, '2025-07-19 13:33:45', 1, 90.00),
(15, '2025-07-19 16:36:09', 1, 135.00),
(16, '2025-07-19 16:40:12', 1, 150.00),
(17, '2025-07-19 18:39:05', 1, 45.00),
(18, '2025-07-19 18:46:40', 1, 18.00),
(19, '2025-07-19 18:58:34', 1, 30.00),
(20, '2025-07-19 19:35:56', 1, 30.00),
(21, '2025-07-19 19:37:32', 1, 225.00),
(22, '2025-07-19 19:39:32', 1, 25.00),
(23, '2025-07-19 19:40:16', 1, 18.00),
(24, '2025-07-19 19:41:23', 1, 45.00),
(25, '2025-07-19 19:48:27', 1, 45.00),
(26, '2025-07-19 19:50:03', 1, 45.00),
(27, '2025-07-19 19:52:37', 1, 45.00),
(28, '2025-07-19 19:56:17', 1, 45.00),
(29, '2025-07-19 19:56:43', 1, 60.00),
(30, '2025-07-19 19:58:50', 1, 11.00),
(31, '2025-07-19 20:04:53', 1, 11.00),
(32, '2025-07-19 20:10:18', 1, 150.00),
(33, '2025-07-19 20:19:24', 1, 150.00),
(34, '2025-07-19 20:19:29', 1, 150.00),
(35, '2025-07-19 20:24:17', 1, 7.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
