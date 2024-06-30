-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 09:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidato`
--

CREATE TABLE `candidato` (
  `id` int(11) NOT NULL,
  `nombre_candidato` varchar(255) DEFAULT NULL,
  `apellido_candidato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidato`
--

INSERT INTO `candidato` (`id`, `nombre_candidato`, `apellido_candidato`) VALUES
(1, 'Carlos', 'Fuentes'),
(5, 'Maria', 'Paz'),
(6, 'Nicolas', 'Marquez'),
(10, 'Robert', 'Araya');

-- --------------------------------------------------------

--
-- Table structure for table `comuna`
--

CREATE TABLE `comuna` (
  `id` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `nombre_comuna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comuna`
--

INSERT INTO `comuna` (`id`, `id_region`, `nombre_comuna`) VALUES
(1, 1, 'Arica'),
(2, 1, 'Camarones'),
(3, 1, 'Putre'),
(4, 1, 'General Lagos'),
(5, 2, 'Iquique'),
(6, 2, 'Alto Hospicio'),
(7, 2, 'Pozo Almonte'),
(8, 2, 'Camiña'),
(12, 3, 'Antofagasta'),
(13, 3, 'Mejillones'),
(14, 3, 'Sierra Gorda'),
(15, 3, 'Taltal'),
(21, 4, 'Copiapó'),
(22, 4, 'Caldera'),
(23, 4, 'Tierra Amarilla'),
(24, 4, 'Chañaral'),
(30, 5, 'La Serena'),
(31, 5, 'Coquimbo'),
(32, 5, 'Andacollo'),
(33, 5, 'La Higuera'),
(45, 6, 'Casablanca'),
(46, 6, 'Concón'),
(47, 6, 'Juan Fernández'),
(48, 6, 'Puchuncaví'),
(54, 7, 'Cerro Navia'),
(55, 7, 'Conchalí'),
(56, 7, 'El Bosque'),
(57, 7, 'Estación Central'),
(58, 8, 'Pichilemu'),
(59, 8, 'La Estrella'),
(60, 8, 'Litueche'),
(61, 8, 'Marchigüe'),
(62, 9, 'Talca'),
(63, 9, 'Constitución'),
(64, 9, 'Curepto'),
(65, 9, 'Empedrado'),
(66, 10, 'Quillón'),
(67, 10, 'Pinto'),
(68, 10, 'Pemuco'),
(69, 10, 'Yungay'),
(70, 11, 'Coronel'),
(71, 11, 'Chiguayante'),
(72, 11, 'Florida'),
(73, 11, 'Hualqui'),
(74, 12, 'Pitrufquén'),
(75, 12, 'Pucón'),
(76, 12, 'Saavedra'),
(77, 12, 'Toltén'),
(78, 13, 'Lanco'),
(79, 13, 'Valdivia'),
(80, 13, 'Máfil'),
(81, 13, '	Paillaco'),
(82, 14, 'Puerto Montt'),
(83, 14, 'Calbuco'),
(84, 14, 'Cochamó'),
(85, 14, 'Frutillar'),
(86, 15, 'Lago Verde'),
(87, 15, 'Cisnes'),
(88, 15, 'Guaitecas'),
(89, 15, 'Cochrane'),
(90, 16, 'Antártica'),
(91, 16, 'Porvenir'),
(92, 16, 'Primavera'),
(93, 16, 'Timaukel');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nombre_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `nombre_region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Metropolitana'),
(8, 'O’Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén'),
(16, 'Magallanes');

-- --------------------------------------------------------

--
-- Table structure for table `voto`
--

CREATE TABLE `voto` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  `candidato_id` int(11) NOT NULL,
  `cb_web` varchar(6) NOT NULL,
  `cb_tv` varchar(6) NOT NULL,
  `cb_rs` varchar(6) NOT NULL,
  `cb_amigo` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `comuna_id` (`comuna_id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `voto_ibfk_3` (`candidato_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_ibfk_1` FOREIGN KEY (`comuna_id`) REFERENCES `comuna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `voto_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `voto_ibfk_3` FOREIGN KEY (`candidato_id`) REFERENCES `candidato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
