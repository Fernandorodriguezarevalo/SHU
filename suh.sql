-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2023 a las 18:53:13
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
-- Base de datos: `suh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `NomHospital` varchar(255) DEFAULT NULL,
  `TeleHospital` varchar(11) DEFAULT NULL,
  `TipoSangre` varchar(4) DEFAULT NULL,
  `Medicamentos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `hospital`
--

INSERT INTO `hospital` (`id`, `NomHospital`, `TeleHospital`, `TipoSangre`, `Medicamentos`) VALUES
(1, 'Sanatorio santiago de Queretaro', '4421231233', 'A+', 'Paracetamol, amoxicilina, aspirina'),
(2, 'Hospital general de Queretaro', '4421285426', 'A-', 'Paracetamol, amoxicilina, aspirina'),
(3, 'Hospital de sagrado corazon de Jesus', '4422369856', 'B+', 'Paracetamol, amoxicilina, aspirina'),
(4, 'Hospital Luis Martin', '4421469696', 'B+', 'Paracetamol, amoxicilina, aspirina'),
(5, 'Hospital H+ Queretaro', '4425699582', 'B-', 'Paracetamol, amoxicilina, aspirina'),
(6, 'Hospital Santa Cruz', '4427845962', 'AB+', 'Paracetamol, amoxicilina, aspirina'),
(7, 'Sanatorio Mariono S.A de C.V', '4425589630', 'AB-', 'Paracetamol, amoxicilina, aspirina'),
(8, 'Nuevo Hospital General de Queretaro', '4422589631', 'O+', 'Paracetamol, amoxicilina, aspirina'),
(9, 'IMSS Hospítal General Regional No 1 Queretaro', '4425896321', 'O-', 'Paracetamol, amoxicilina, aspirina'),
(10, 'Sanatorio Alcocer Pozo S.A de C.V', '4424785692', 'A+', 'Paracetamol, amoxicilina, aspirina'),
(11, 'Hospital Santa Rosa de Viterbo', '4421254780', 'A-', 'Paracetamol, amoxicilina, aspirina'),
(12, 'Hospital San Jose de Queretaro', '4421478523', 'B+', 'Paracetamol, amoxicilina, aspirina'),
(13, 'Hospital Angeles Queretaro', '4421456328', 'B+', 'Paracetamol, amoxicilina, aspirina'),
(14, 'Sanatorio Queretaro', '4427896412', 'B-', 'Paracetamol, amoxicilina, aspirina'),
(15, 'Clinica y Hospital el Carmen', '4421478523', 'AB+', 'Paracetamol, amoxicilina, aspirina'),
(16, 'Hospital Cruz Roja Queretaro', '4429511594', 'AB-', 'Paracetamol, amoxicilina, aspirina'),
(17, 'Hospital de Especialidades del Niño y de la mujer', '4427894561', 'O+', 'Paracetamol, amoxicilina, aspirina'),
(18, 'Sanatorio Guadalupe', '7849651', 'O-', 'Paracetamol, amoxicilina, aspirina'),
(19, 'Hospital Regional Queretaro', '4427842369', 'O+', 'Paracetamol, amoxicilina, aspirina'),
(20, 'Hospital Medica Sur', '4421231233', 'O-', 'Paracetamol, amoxicilina, aspirina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelurgencia`
--

CREATE TABLE `nivelurgencia` (
  `id` int(11) NOT NULL,
  `Paciente` varchar(255) DEFAULT NULL,
  `AltoRiesgo` varchar(255) DEFAULT NULL,
  `Intermendio` varchar(255) DEFAULT NULL,
  `BajoRiesgo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `num exterior` int(11) DEFAULT NULL,
  `cp` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `municipio`, `colonia`, `calle`, `num exterior`, `cp`) VALUES
(1, 'Querétaro', 'Alamos', 'Arboleda', 115, 76574),
(2, 'Corregidora', 'San Antonio', 'El tintero', 229, 76093),
(3, 'Colón', 'Vicente Guerrero', 'C. Tonatiuh', 315, 76270),
(4, 'Ezequiel Montes', 'Rincón de San Andrés', 'C. Yaretzi', 314, 76656),
(5, 'Cadereyta de Montes', 'Centro', 'La Luna', 826, 76505),
(6, 'San Juan del Río', '10 de Abril', 'C. Liberta', 774, 76805),
(7, 'El Marqués', '12 de Diciembre', 'El Arco', 87, 76240),
(8, 'Pedro Escobedo', 'Ampliación Patria Nueva', 'Av. de la Poesía', 1525, 76700),
(9, 'San Joaquin', 'Angeles', 'C.kiwi', 155, 76574),
(10, 'Peñal miel', 'Bosques de A ', 'C.Sta.rosa', 229, 76093),
(11, 'Tesquisquiapan', 'Bosques de las lomas', 'Campo', 335, 76370),
(12, 'Corregidora', 'Colonia de sur', 'C. Yaretzi', 314, 76656),
(13, 'Cadereyta de Montes', 'Centro', 'La Luna', 826, 76505),
(14, 'San Juan del Río', '10 de Abril', 'C. Liberta', 774, 76805),
(15, 'El Marqués', '12 de Diciembre', 'El Arco', 87, 76240),
(16, 'Pedro Escobedo', 'Ampliación Patria Nueva', 'Av. de la Poesía', 1525, 76700),
(17, 'Cadereyta de Montes', 'Centro', 'La Luna', 826, 76505),
(18, 'San Juan del Río', '10 de Abril', 'C. Liberta', 774, 76805),
(19, 'El Marqués', '12 de Diciembre', 'El Arco', 87, 76240),
(20, 'Pedro Escobedo', 'Ampliación Patria Nueva', 'Av. de la Poesía', 1525, 76700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `tel_emergencia` int(10) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `efm_cronicasn` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `tipo_sangre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido_materno`, `apellido_paterno`, `genero`, `tel_emergencia`, `direccion`, `efm_cronicasn`, `correo`, `tipo_sangre`) VALUES
(1, 'Yedidya', 'Tovar', 'Zacarias', 'Femenino', 44245698, 'Col. Centro/Calle. 5 de Mayo', 'Ninguna', 'jose4@gmail.com', 'A+'),
(2, 'María', 'Ibarra', 'López', 'Femenino', 442458945, 'Col. Las Hadas/Calle Herencia', 'Ninguna', 'María3@gmail.com', 'A-'),
(3, 'Armando', 'León', 'González', 'Masculino', 44245724, 'Col. Los Héroes/Calle Mar', 'Ninguna', 'Armando1@gmail.com', 'B+'),
(4, 'Valeria', 'Contreras', 'Bustos', 'Femenino', 442354253, 'Av. Pie de la Cuesta', 'Ninguna', 'vale4@gmail.com', 'AB+'),
(5, 'Alan', 'García', 'Maya', 'Masculino', 442452745, 'Col. Pradera', 'Ninguna', 'alae4@gmail.com', 'AB-'),
(6, 'Pablo', 'Ramírez', 'Ríos', 'Masculino', 4425435, 'Zibatá', 'Ninguna', 'pabe4@gmail.com', 'B-'),
(7, 'Alberto', 'Escobar', 'Santana', 'Masculino', 44243535, 'Juriquilla', 'Ninguna', 'albe4@gmail.com', 'B+'),
(8, 'Carlos', 'Zamora', 'Acosta', 'Masculino', 44274546, 'Juriquilla', 'Ninguna', 'care4@gmail.com', 'B-'),
(9, 'Manuel', 'Mendoza', 'Landino', 'Masculino', 44254543, 'Col. Camdiles/ Calle. Fdo. Altamirano', 'Ninguna', 'Manuel2@gmail.com', 'B+'),
(10, 'Juan', 'Castillo', 'Avila', 'Masculino', 4424533, 'Col. Camdiles/ Av. Camino Real', 'Ninguna', 'Juan3@gmail.com', 'O+'),
(11, 'Hugo', 'Arriaga', 'Mendez', 'Masculino', 44245345, 'Col. Candiles/Blvd. Diamante', 'Ninguna', 'huge4@gmail.com', 'O-'),
(12, 'Alejandro', 'Rodríguez', 'Quillo', 'Masculino', 4424546, 'Col. Candiles/Blvd. de las Américas', 'Ninguna', 'alee4@gmail.com', 'A+'),
(13, 'Rubén', 'Martínez', 'Gasperin', 'Masculino', 44245456, 'Col. Centro/Calle. 5 de Mayo', 'Ninguna', 'rube4@gmail.com', 'A-'),
(14, 'Astrid', 'Vega', 'Sandoval', 'Femenino', 4424543, 'Col. Las Hadas/Calle Herencia', 'Ninguna', 'Astrid3@gmail.com', 'B+'),
(15, 'Jazmín', 'Correa', 'Jiménez', 'Femenino', 442453, 'Col. Los Héroes/Calle Mar', 'Ninguna', 'Jazmín1@gmail.com', 'B-'),
(16, 'Eliot', 'Zacarias', 'Fernández', 'Masculino', 4424535, 'Av. Blvd. de la Nación', 'Ninguna', 'elie4@gmail.com', 'A+'),
(17, 'Valeria', 'Contreras', 'Bustos', 'Femenino', 4425555, 'Av. Pie de la Cuesta', 'Ninguna', 'vale4@gmail.com', 'AB+'),
(18, 'Alan', 'García', 'Maya', 'Masculino', 4426666, 'Col. Pradera', 'Ninguna', 'alae4@gmail.com', 'AB-'),
(19, 'Pablo', 'Ramírez', 'Ríos', 'Masculino', 44245643, 'Zibatá', 'Ninguna', 'pabe4@gmail.com', 'B-'),
(20, 'Alberto', 'Escobar', 'Santana', 'Masculino', 44254643, 'Juriquilla', 'Ninguna', 'albe4@gmail.com', 'B+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `´nivel_urgencias´`
--

CREATE TABLE `´nivel_urgencias´` (
  `ID` int(11) NOT NULL,
  `NIVEL_URGENCIA` varchar(220) DEFAULT NULL,
  `CU` varchar(50) DEFAULT NULL,
  `TE` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `´nivel_urgencias´`
--

INSERT INTO `´nivel_urgencias´` (`ID`, `NIVEL_URGENCIA`, `CU`, `TE`) VALUES
(1, 'Riesgo vital inmediato', 'Rojo', 'Atención de forma inmediata'),
(2, 'Muy urgente', 'Naranja', '15 - 20 minutos'),
(3, 'Urgente', 'Amarillo', '55 minutos'),
(4, 'Normal', 'Verde', '2 Horas'),
(5, 'Nor urgente', 'Azul', '6 horas'),
(6, 'Riesgo vital inmediato', 'Rojo', 'Atención de forma inmediata'),
(7, 'Muy urgente', 'Naranja', '10 - 15 minutos'),
(8, 'Urgente', 'Amarillo', '60 minutos'),
(9, 'Normal', 'Verde', '2 Horas'),
(10, 'Nor urgente', 'Azul', '4 horas'),
(11, 'Riesgo vital inmediato', 'Rojo', 'Atención de forma inmediata'),
(12, 'Muy urgente', 'Naranja', '10 - 15 minutos'),
(13, 'Urgente', 'Amarillo', '60 minutos'),
(14, 'Normal', 'Verde', '2 Horas'),
(15, 'Nor urgente', 'Azul', '4 horas'),
(16, 'Riesgo vital inmediato', 'Rojo', 'Atención de forma inmediata'),
(17, 'Muy urgente', 'Naranja', '10 - 15 minutos'),
(18, 'Urgente', 'Amarillo', '60 minutos'),
(19, 'Normal', 'Verde', '2 Horas'),
(20, 'Nor urgente', 'Azul', '4 horas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `´nivel_urgencias´`
--
ALTER TABLE `´nivel_urgencias´`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `´nivel_urgencias´`
--
ALTER TABLE `´nivel_urgencias´`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
