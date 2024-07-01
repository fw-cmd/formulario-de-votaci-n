-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 05:37 PM
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
(94, 1, 'Arica'),
(95, 1, 'Camarones'),
(96, 1, 'Putre'),
(97, 1, 'General Lagos'),
(98, 2, 'Iquique'),
(99, 2, 'Alto Hospicio'),
(100, 2, 'Pozo Almonte'),
(101, 2, 'Camiña'),
(102, 2, 'Colchane'),
(103, 2, 'Huara'),
(104, 2, 'Pica'),
(105, 3, 'Antofagasta'),
(106, 3, 'Mejillones'),
(107, 3, 'Sierra Gorda'),
(108, 3, 'Taltal'),
(109, 3, 'Calama'),
(110, 3, 'Ollagüe'),
(111, 3, 'San Pedro de Atacama'),
(112, 3, 'Tocopilla'),
(113, 3, 'María Elena'),
(114, 4, 'Copiapó'),
(115, 4, 'Caldera'),
(116, 4, 'Tierra Amarilla'),
(117, 4, 'Chañaral'),
(118, 4, 'Diego de Almagro'),
(119, 4, 'Vallenar'),
(120, 4, 'Alto del Carmen'),
(121, 4, 'Freirina'),
(122, 4, 'Huasco'),
(123, 5, 'La Serena'),
(124, 5, 'Coquimbo'),
(125, 5, 'Andacollo'),
(126, 5, 'La Higuera'),
(127, 5, 'Paihuano'),
(128, 5, 'Vicuña'),
(129, 5, 'Illapel'),
(130, 5, 'Canela'),
(131, 5, 'Los Vilos'),
(132, 5, 'Salamanca'),
(133, 5, 'Ovalle'),
(134, 5, 'Combarbalá'),
(135, 5, 'Monte Patria'),
(136, 5, 'Punitaqui'),
(137, 5, 'Río Hurtado'),
(138, 6, 'Valparaíso'),
(139, 6, 'Casablanca'),
(140, 6, 'Concón'),
(141, 6, 'Juan Fernández'),
(142, 6, 'Puchuncaví'),
(143, 6, 'Quintero'),
(144, 6, 'Viña del Mar'),
(145, 6, 'Isla de Pascua'),
(146, 6, 'Los Andes'),
(147, 6, 'Calle Larga'),
(148, 6, 'Rinconada'),
(149, 6, 'San Esteban'),
(150, 6, 'La Ligua'),
(151, 6, 'Cabildo'),
(152, 6, 'Papudo'),
(153, 6, 'Petorca'),
(154, 6, 'Zapallar'),
(155, 6, 'Quillota'),
(156, 6, 'La Calera'),
(157, 6, 'Hijuelas'),
(158, 6, 'La Cruz'),
(159, 6, 'Nogales'),
(160, 6, 'San Antonio'),
(161, 6, 'Algarrobo'),
(162, 6, 'Cartagena'),
(163, 6, 'El Quisco'),
(164, 6, 'El Tabo'),
(165, 6, 'Santo Domingo'),
(166, 6, 'San Felipe'),
(167, 6, 'Catemu'),
(168, 6, 'Llay-Llay'),
(169, 6, 'Panquehue'),
(170, 6, 'Putaendo'),
(171, 6, 'Santa María'),
(172, 6, 'Quilpué'),
(173, 6, 'Limache'),
(174, 6, 'Olmué'),
(175, 6, 'Villa Alemana'),
(176, 8, 'Rancagua'),
(177, 8, 'Codegua'),
(178, 8, 'Coinco'),
(179, 8, 'Coltauco'),
(180, 8, 'Doñihue'),
(181, 8, 'Graneros'),
(182, 8, 'Las Cabras'),
(183, 8, 'Machalí'),
(184, 8, 'Malloa'),
(185, 8, 'Mostazal'),
(186, 8, 'Olivar'),
(187, 8, 'Peumo'),
(188, 8, 'Pichidegua'),
(189, 8, 'Quinta de Tilcoco'),
(190, 8, 'Rengo'),
(191, 8, 'Requínoa'),
(192, 8, 'San Vicente'),
(193, 8, 'Pichilemu'),
(194, 8, 'La Estrella'),
(195, 8, 'Litueche'),
(196, 8, 'Marchihue'),
(197, 8, 'Navidad'),
(198, 8, 'Paredones'),
(199, 8, 'San Fernando'),
(200, 8, 'Chépica'),
(201, 8, 'Chimbarongo'),
(202, 8, 'Lolol'),
(203, 8, 'Nancagua'),
(204, 8, 'Palmilla'),
(205, 8, 'Peralillo'),
(206, 8, 'Placilla'),
(207, 8, 'Pumanque'),
(208, 8, 'Santa Cruz'),
(209, 9, 'Talca'),
(210, 9, 'Constitución'),
(211, 9, 'Curepto'),
(212, 9, 'Empedrado'),
(213, 9, 'Maule'),
(214, 9, 'Pelarco'),
(215, 9, 'Pencahue'),
(216, 9, 'Río Claro'),
(217, 9, 'San Clemente'),
(218, 9, 'San Rafael'),
(219, 9, 'Cauquenes'),
(220, 9, 'Chanco'),
(221, 9, 'Pelluhue'),
(222, 9, 'Curicó'),
(223, 9, 'Hualañé'),
(224, 9, 'Licantén'),
(225, 9, 'Molina'),
(226, 9, 'Rauco'),
(227, 9, 'Romeral'),
(228, 9, 'Sagrada Familia'),
(229, 9, 'Teno'),
(230, 9, 'Vichuquén'),
(231, 9, 'Linares'),
(232, 9, 'Colbún'),
(233, 9, 'Longaví'),
(234, 9, 'Parral'),
(235, 9, 'Retiro'),
(236, 9, 'San Javier'),
(237, 9, 'Villa Alegre'),
(238, 9, 'Yerbas Buenas'),
(239, 10, 'Chillán'),
(240, 10, 'Bulnes'),
(241, 10, 'Chillán Viejo'),
(242, 10, 'El Carmen'),
(243, 10, 'Pemuco'),
(244, 10, 'Pinto'),
(245, 10, 'Quillón'),
(246, 10, 'San Ignacio'),
(247, 10, 'Yungay'),
(248, 10, 'Quirihue'),
(249, 10, 'Cobquecura'),
(250, 10, 'Coelemu'),
(251, 10, 'Ninhue'),
(252, 10, 'Portezuelo'),
(253, 10, 'Ránquil'),
(254, 10, 'Treguaco'),
(255, 10, 'San Carlos'),
(256, 10, 'Coihueco'),
(257, 10, 'Ñiquén'),
(258, 10, 'San Fabián'),
(259, 10, 'San Nicolás'),
(260, 11, 'Concepción'),
(261, 11, 'Coronel'),
(262, 11, 'Chiguayante'),
(263, 11, 'Florida'),
(264, 11, 'Hualqui'),
(265, 11, 'Lota'),
(266, 11, 'Penco'),
(267, 11, 'San Pedro de La Paz'),
(268, 11, 'Santa Juana'),
(269, 11, 'Talcahuano'),
(270, 11, 'Tomé'),
(271, 11, 'Hualpén'),
(272, 11, 'Lebu'),
(273, 11, 'Arauco'),
(274, 11, 'Cañete'),
(275, 11, 'Contulmo'),
(276, 11, 'Curanilahue'),
(277, 11, 'Los Álamos'),
(278, 11, 'Tirúa'),
(279, 11, 'Los Ángeles'),
(280, 11, 'Antuco'),
(281, 11, 'Cabrero'),
(282, 11, 'Laja'),
(283, 11, 'Mulchén'),
(284, 11, 'Nacimiento'),
(285, 11, 'Negrete'),
(286, 11, 'Quilaco'),
(287, 11, 'Quilleco'),
(288, 11, 'San Rosendo'),
(289, 11, 'Santa Bárbara'),
(290, 11, 'Tucapel'),
(291, 11, 'Yumbel'),
(292, 11, 'Alto Biobío'),
(293, 12, 'Temuco'),
(294, 12, 'Carahue'),
(295, 12, 'Cunco'),
(296, 12, 'Curarrehue'),
(297, 12, 'Freire'),
(298, 12, 'Galvarino'),
(299, 12, 'Gorbea'),
(300, 12, 'Lautaro'),
(301, 12, 'Loncoche'),
(302, 12, 'Melipeuco'),
(303, 12, 'Nueva Imperial'),
(304, 12, 'Padre Las Casas'),
(305, 12, 'Perquenco'),
(306, 12, 'Pitrufquén'),
(307, 12, 'Pucón'),
(308, 12, 'Saavedra'),
(309, 12, 'Teodoro Schmidt'),
(310, 12, 'Toltén'),
(311, 12, 'Vilcún'),
(312, 12, 'Villarrica'),
(313, 12, 'Cholchol'),
(314, 12, 'Angol'),
(315, 12, 'Collipulli'),
(316, 12, 'Curacautín'),
(317, 12, 'Ercilla'),
(318, 12, 'Lonquimay'),
(319, 12, 'Los Sauces'),
(320, 12, 'Lumaco'),
(321, 12, 'Purén'),
(322, 12, 'Renaico'),
(323, 12, 'Traiguén'),
(324, 12, 'Victoria'),
(325, 13, 'Valdivia'),
(326, 13, 'Corral'),
(327, 13, 'Lanco'),
(328, 13, 'Los Lagos'),
(329, 13, 'Máfil'),
(330, 13, 'Mariquina'),
(331, 13, 'Paillaco'),
(332, 13, 'Panguipulli'),
(333, 13, 'La Unión'),
(334, 13, 'Futrono'),
(335, 13, 'Lago Ranco'),
(336, 13, 'Río Bueno'),
(337, 14, 'Puerto Montt'),
(338, 14, 'Calbuco'),
(339, 14, 'Cochamó'),
(340, 14, 'Fresia'),
(341, 14, 'Frutillar'),
(342, 14, 'Los Muermos'),
(343, 14, 'Llanquihue'),
(344, 14, 'Maullín'),
(345, 14, 'Puerto Varas'),
(346, 14, 'Castro'),
(347, 14, 'Ancud'),
(348, 14, 'Chonchi'),
(349, 14, 'Curaco de Vélez'),
(350, 14, 'Dalcahue'),
(351, 14, 'Puqueldón'),
(352, 14, 'Queilén'),
(353, 14, 'Quellón'),
(354, 14, 'Quemchi'),
(355, 14, 'Quinchao'),
(356, 14, 'Osorno'),
(357, 14, 'Puerto Octay'),
(358, 14, 'Purranque'),
(359, 14, 'Puyehue'),
(360, 14, 'Río Negro'),
(361, 14, 'San Juan de la Costa'),
(362, 14, 'San Pablo'),
(363, 14, 'Chaitén'),
(364, 14, 'Futaleufú'),
(365, 14, 'Hualaihué'),
(366, 14, 'Palena'),
(367, 15, 'Coyhaique'),
(368, 15, 'Lago Verde'),
(369, 15, 'Aysén'),
(370, 15, 'Cisnes'),
(371, 15, 'Guaitecas'),
(372, 15, 'Cochrane'),
(373, 15, 'O\'Higgins'),
(374, 15, 'Tortel'),
(375, 15, 'Chile Chico'),
(376, 15, 'Río Ibáñez'),
(377, 16, 'Punta Arenas'),
(378, 16, 'Laguna Blanca'),
(379, 16, 'Río Verde'),
(380, 16, 'San Gregorio'),
(381, 16, 'Cabo de Hornos'),
(382, 16, 'Antártica'),
(383, 16, 'Porvenir'),
(384, 16, 'Primavera'),
(385, 16, 'Timaukel'),
(386, 16, 'Natales'),
(387, 16, 'Torres del Paine'),
(388, 7, 'Santiago'),
(389, 7, 'Cerrillos'),
(390, 7, 'Cerro Navia'),
(391, 7, 'Conchalí'),
(392, 7, 'El Bosque'),
(393, 7, 'Estación Central'),
(394, 7, 'Huechuraba'),
(395, 7, 'Independencia'),
(396, 7, 'La Cisterna'),
(397, 7, 'La Florida'),
(398, 7, 'La Granja'),
(399, 7, 'La Pintana'),
(400, 7, 'La Reina'),
(401, 7, 'Las Condes'),
(402, 7, 'Lo Barnechea'),
(403, 7, 'Lo Espejo'),
(404, 7, 'Lo Prado'),
(405, 7, 'Macul'),
(406, 7, 'Maipú'),
(407, 7, 'Ñuñoa'),
(408, 7, 'Pedro Aguirre Cerda'),
(409, 7, 'Peñalolén'),
(410, 7, 'Providencia'),
(411, 7, 'Pudahuel'),
(412, 7, 'Quilicura'),
(413, 7, 'Quinta Normal'),
(414, 7, 'Recoleta'),
(415, 7, 'Renca'),
(416, 7, 'San Joaquín'),
(417, 7, 'San Miguel'),
(418, 7, 'San Ramón'),
(419, 7, 'Vitacura'),
(420, 7, 'Puente Alto'),
(421, 7, 'Pirque'),
(422, 7, 'San José de Maipo'),
(423, 7, 'Colina'),
(424, 7, 'Lampa'),
(425, 7, 'Til Til'),
(426, 7, 'San Bernardo'),
(427, 7, 'Buin'),
(428, 7, 'Calera de Tango'),
(429, 7, 'Paine'),
(430, 7, 'Melipilla'),
(431, 7, 'Alhué'),
(432, 7, 'Curacaví'),
(433, 7, 'María Pinto'),
(434, 7, 'San Pedro'),
(435, 7, 'Talagante'),
(436, 7, 'El Monte'),
(437, 7, 'Isla de Maipo'),
(438, 7, 'Padre Hurtado'),
(439, 7, 'Peñaflor');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
