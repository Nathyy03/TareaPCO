-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2026 a las 02:14:49
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `Id_autor` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `Año_nacimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`Id_autor`, `Nombre`, `Nacionalidad`, `Año_nacimiento`) VALUES
(1, 'Gabriel García Márquez', 'Colombiana', 1927),
(2, 'Isabel Allende', 'Chilena', 1942),
(3, 'Jorge Luis Borges', 'Argentina', 1899),
(4, 'Mario Vargas Llosa', 'Peruana', 1936),
(5, 'Julio Cortázar', 'Argentina', 1914),
(6, 'Octavio Paz', 'Mexicana', 1914),
(7, 'Pablo Neruda', 'Chilena', 1904),
(8, 'Laura Esquivel', 'Mexicana', 1950),
(9, 'Juan Rulfo', 'Mexicana', 1917),
(10, 'Carlos Fuentes', 'Mexicana', 1928);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `Id_libro` int(11) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  `Año_publicacion` int(11) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`Id_libro`, `Titulo`, `Año_publicacion`, `Genero`, `Id_autor`) VALUES
(1, 'Cien años de soledad', 1967, 'Novela', 1),
(2, 'La casa de los espíritus', 1982, 'Novela', 2),
(3, 'Ficciones', 1944, 'Cuentos', 3),
(4, 'La ciudad y los perros', 1963, 'Novela', 4),
(5, 'Rayuela', 1963, 'Novela', 5),
(6, 'El laberinto de la soledad', 1950, 'Ensayo', 6),
(7, 'Veinte poemas de amor', 1924, 'Poesía', 7),
(8, 'Como agua para chocolate', 1989, 'Novela', 8),
(9, 'Pedro Páramo', 1955, 'Novela', 9),
(10, 'La muerte de Artemio Cruz', 1962, 'Novela', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `Id_prestamo` int(11) NOT NULL,
  `Id_libro` int(11) NOT NULL,
  `Id_socio` int(11) NOT NULL,
  `Fecha_prestamo` date NOT NULL,
  `Fecha_devolucion` date NOT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`Id_prestamo`, `Id_libro`, `Id_socio`, `Fecha_prestamo`, `Fecha_devolucion`, `Estado`) VALUES
(1, 1, 1, '2026-06-01', '2026-06-15', 'Devuelto'),
(2, 5, 2, '2026-06-03', '2026-06-17', 'Devuelto'),
(3, 9, 3, '2026-06-10', '0000-00-00', 'Atrasado'),
(4, 3, 4, '2026-07-02', '2026-07-16', 'Devuelto'),
(5, 8, 5, '2026-07-08', '2026-07-20', 'Devuelto'),
(6, 10, 6, '2026-08-01', '0000-00-00', 'Atrasado'),
(7, 2, 7, '2026-09-05', '2026-09-19', 'Devuelto'),
(8, 4, 8, '2026-09-28', '0000-00-00', 'Prestado'),
(9, 6, 9, '2026-10-01', '0000-00-00', 'Prestado'),
(10, 7, 10, '2026-10-05', '0000-00-00', 'Prestado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `Id_socios` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`Id_socios`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Fecha_registro`) VALUES
(1, 'Ana', 'Martínez', 'ana.martinez@example.com', '555-1001', '2026-01-15'),
(2, 'Luis', 'Gómez', 'luis.gomez@example.com', '555-1002', '2026-01-22'),
(3, 'María', 'López', 'maria.lopez@example.com', '555-1003', '2026-02-03'),
(4, 'Carlos', 'Ramírez', 'carlos.ramirez@example.com', '555-1004', '2026-02-18'),
(5, 'Sofía', 'Hernández', 'sofia.hernandez@example.com', '555-1005', '2026-03-01'),
(6, 'Jorge', 'Torres', 'jorge.torres@example.com', '555-1006', '2026-03-12'),
(7, 'Valeria', 'Castro', 'valeria.castro@example.com', '555-1007', '2026-04-05'),
(8, 'Diego', 'Morales', 'diego.morales@example.com', '555-1008', '2026-04-20'),
(9, 'Camila', 'Rojas', 'camila.rojas@example.com', '555-1009', '2026-05-08'),
(10, 'Andrés', 'Vargas', 'andres.vargas@example.com', '555-1010', '2026-05-25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Id_autor`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`Id_libro`),
  ADD UNIQUE KEY `Id_autor` (`Id_autor`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`Id_prestamo`),
  ADD UNIQUE KEY `Id_libro` (`Id_libro`),
  ADD UNIQUE KEY `Id_socio` (`Id_socio`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`Id_socios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `Id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `Id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `Id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `Id_socios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`Id_autor`) REFERENCES `autor` (`Id_autor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`Id_libro`) REFERENCES `libros` (`Id_libro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`Id_socio`) REFERENCES `socios` (`Id_socios`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
