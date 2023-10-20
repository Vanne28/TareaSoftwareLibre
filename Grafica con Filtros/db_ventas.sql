-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 07:12:07
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fac`
--

CREATE TABLE `detalle_fac` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `venta` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_fac`
--

INSERT INTO `detalle_fac` (`id`, `codigo`, `venta`) VALUES
(1, 389, 232.87),
(2, 125, 144.54),
(3, 165, 252.27),
(4, 757, 165.27),
(5, 47, 162.04),
(6, 1000, 188.41),
(7, 566, 219.7),
(8, 714, 156.89),
(9, 422, 296.55),
(10, 53, 275.88),
(11, 475, 158.84),
(12, 147, 286.14),
(13, 985, 122.31),
(14, 318, 259.61),
(15, 580, 32.4),
(16, 406, 59.5),
(17, 904, 189.85),
(18, 925, 186.67),
(19, 394, 105.62),
(20, 658, 147.93),
(21, 99, 199.95),
(22, 896, 224.84),
(23, 181, 32.8),
(25, 180, 25.86),
(26, 106, 210.14),
(27, 857, 169.16),
(28, 260, 38.94),
(29, 221, 276.86),
(30, 515, 272.07),
(31, 229, 264.26),
(32, 789, 126.43),
(33, 916, 43.93),
(34, 443, 172.26),
(35, 777, 162.77),
(36, 531, 285.29),
(37, 476, 242.7),
(38, 1, 141.97),
(39, 746, 34.96),
(40, 669, 120.37),
(41, 585, 46.29),
(42, 69, 120.48),
(43, 593, 124.76),
(45, 524, 207.26),
(46, 358, 138.3),
(48, 736, 259.33),
(49, 309, 254.17),
(50, 578, 34.05),
(51, 565, 255.06);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_fac`
--

CREATE TABLE `encabezado_fac` (
  `codigo` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encabezado_fac`
--

INSERT INTO `encabezado_fac` (`codigo`, `fecha`) VALUES
(1, '2013-08-24 00:00:00'),
(2, '2019-10-02 00:00:00'),
(3, '2013-12-30 00:00:00'),
(4, '2021-04-24 00:00:00'),
(5, '2022-04-22 00:00:00'),
(6, '2019-11-30 00:00:00'),
(7, '2016-08-26 00:00:00'),
(8, '2018-01-06 00:00:00'),
(9, '2013-11-24 00:00:00'),
(10, '2020-03-03 00:00:00'),
(11, '2018-07-29 00:00:00'),
(12, '2020-04-17 00:00:00'),
(13, '2020-04-13 00:00:00'),
(14, '2014-12-14 00:00:00'),
(15, '2019-05-10 00:00:00'),
(16, '2019-04-19 00:00:00'),
(17, '2019-12-04 00:00:00'),
(18, '2021-11-14 00:00:00'),
(19, '2016-08-26 00:00:00'),
(20, '2017-10-15 00:00:00'),
(21, '2018-09-04 00:00:00'),
(22, '2015-05-15 00:00:00'),
(23, '2014-03-15 00:00:00'),
(24, '2022-02-02 00:00:00'),
(25, '2015-12-14 00:00:00'),
(26, '2014-04-23 00:00:00'),
(27, '2013-07-10 00:00:00'),
(28, '2013-05-28 00:00:00'),
(29, '2020-06-19 00:00:00'),
(30, '2016-04-19 00:00:00'),
(31, '2013-10-23 00:00:00'),
(32, '2017-09-16 00:00:00'),
(33, '2016-01-15 00:00:00'),
(34, '2018-12-04 00:00:00'),
(35, '2014-06-01 00:00:00'),
(36, '2022-06-17 00:00:00'),
(37, '2015-11-29 00:00:00'),
(38, '2014-02-17 00:00:00'),
(39, '2020-04-05 00:00:00'),
(40, '2019-09-29 00:00:00'),
(41, '2014-11-13 00:00:00'),
(42, '2017-09-15 00:00:00'),
(43, '2013-05-26 00:00:00'),
(44, '2019-07-23 00:00:00'),
(45, '2014-09-12 00:00:00'),
(46, '2014-06-10 00:00:00'),
(47, '2013-09-11 00:00:00'),
(48, '2013-12-20 00:00:00'),
(49, '2020-02-20 00:00:00'),
(50, '2020-12-02 00:00:00'),
(51, '2021-05-21 00:00:00'),
(52, '2019-09-10 00:00:00'),
(53, '2017-06-08 00:00:00'),
(54, '2021-05-06 00:00:00'),
(55, '2016-09-23 00:00:00'),
(56, '2021-12-16 00:00:00'),
(57, '2015-08-04 00:00:00'),
(58, '2016-01-04 00:00:00'),
(59, '2019-01-17 00:00:00'),
(60, '2018-06-24 00:00:00'),
(61, '2021-11-19 00:00:00'),
(62, '2020-05-17 00:00:00'),
(63, '2016-05-30 00:00:00'),
(64, '2021-02-22 00:00:00'),
(65, '2015-08-08 00:00:00'),
(66, '2017-08-31 00:00:00'),
(67, '2013-02-04 00:00:00'),
(68, '2021-08-03 00:00:00'),
(69, '2016-06-14 00:00:00'),
(70, '2021-08-04 00:00:00'),
(71, '2017-07-10 00:00:00'),
(72, '2018-02-25 00:00:00'),
(73, '2015-04-02 00:00:00'),
(74, '2013-06-13 00:00:00'),
(75, '2016-07-07 00:00:00'),
(76, '2016-08-18 00:00:00'),
(77, '2022-11-16 00:00:00'),
(78, '2017-01-09 00:00:00'),
(79, '2015-07-01 00:00:00'),
(80, '2017-01-17 00:00:00'),
(81, '2022-02-24 00:00:00'),
(82, '2017-04-14 00:00:00'),
(83, '2019-08-10 00:00:00'),
(84, '2019-02-12 00:00:00'),
(85, '2021-06-03 00:00:00'),
(86, '2018-03-24 00:00:00'),
(87, '2014-04-10 00:00:00'),
(88, '2020-05-17 00:00:00'),
(89, '2021-07-04 00:00:00'),
(90, '2015-09-02 00:00:00'),
(91, '2016-01-29 00:00:00'),
(92, '2021-09-18 00:00:00'),
(93, '2016-12-09 00:00:00'),
(94, '2017-03-13 00:00:00'),
(95, '2022-02-01 00:00:00'),
(96, '2020-08-22 00:00:00'),
(97, '2020-11-23 00:00:00'),
(98, '2015-10-04 00:00:00'),
(99, '2016-06-24 00:00:00'),
(100, '2022-01-08 00:00:00'),
(101, '2013-04-03 00:00:00'),
(102, '2020-01-04 00:00:00'),
(103, '2016-07-17 00:00:00'),
(104, '2018-06-21 00:00:00'),
(105, '2016-05-31 00:00:00'),
(106, '2013-12-16 00:00:00'),
(107, '2022-05-06 00:00:00'),
(108, '2017-06-29 00:00:00'),
(109, '2014-06-16 00:00:00'),
(110, '2015-03-31 00:00:00'),
(111, '2020-09-27 00:00:00'),
(112, '2013-11-07 00:00:00'),
(113, '2015-05-22 00:00:00'),
(114, '2019-10-24 00:00:00'),
(115, '2013-09-24 00:00:00'),
(116, '2014-01-03 00:00:00'),
(117, '2013-04-12 00:00:00'),
(118, '2015-06-18 00:00:00'),
(119, '2018-04-05 00:00:00'),
(120, '2014-06-24 00:00:00'),
(121, '2018-05-20 00:00:00'),
(122, '2018-11-12 00:00:00'),
(123, '2020-10-15 00:00:00'),
(124, '2013-07-09 00:00:00'),
(125, '2017-01-19 00:00:00'),
(126, '2019-04-05 00:00:00'),
(127, '2018-10-16 00:00:00'),
(128, '2015-12-27 00:00:00'),
(129, '2014-10-11 00:00:00'),
(130, '2018-10-01 00:00:00'),
(131, '2014-08-30 00:00:00'),
(132, '2021-03-20 00:00:00'),
(133, '2020-07-01 00:00:00'),
(134, '2022-03-30 00:00:00'),
(135, '2019-01-29 00:00:00'),
(136, '2015-04-27 00:00:00'),
(137, '2019-07-20 00:00:00'),
(138, '2013-04-24 00:00:00'),
(139, '2015-07-13 00:00:00'),
(140, '2015-09-28 00:00:00'),
(141, '2016-01-20 00:00:00'),
(142, '2013-07-05 00:00:00'),
(143, '2014-05-15 00:00:00'),
(144, '2015-05-26 00:00:00'),
(145, '2016-09-20 00:00:00'),
(146, '2022-01-22 00:00:00'),
(147, '2019-05-07 00:00:00'),
(148, '2015-07-20 00:00:00'),
(149, '2017-03-26 00:00:00'),
(150, '2021-01-05 00:00:00'),
(151, '2022-07-22 00:00:00'),
(152, '2016-12-08 00:00:00'),
(153, '2017-07-18 00:00:00'),
(154, '2018-02-18 00:00:00'),
(155, '2015-10-20 00:00:00'),
(156, '2019-12-22 00:00:00'),
(157, '2018-05-22 00:00:00'),
(158, '2013-03-01 00:00:00'),
(159, '2019-08-30 00:00:00'),
(160, '2020-06-13 00:00:00'),
(161, '2017-06-02 00:00:00'),
(162, '2015-07-22 00:00:00'),
(163, '2017-12-06 00:00:00'),
(164, '2017-09-08 00:00:00'),
(165, '2017-11-01 00:00:00'),
(166, '2013-12-11 00:00:00'),
(167, '2018-04-24 00:00:00'),
(168, '2020-01-31 00:00:00'),
(169, '2019-11-03 00:00:00'),
(170, '2018-12-04 00:00:00'),
(171, '2021-10-15 00:00:00'),
(172, '2016-05-06 00:00:00'),
(173, '2018-07-13 00:00:00'),
(174, '2014-10-26 00:00:00'),
(175, '2016-03-05 00:00:00'),
(176, '2022-03-31 00:00:00'),
(177, '2020-02-28 00:00:00'),
(178, '2020-07-01 00:00:00'),
(179, '2020-08-27 00:00:00'),
(180, '2021-12-29 00:00:00'),
(181, '2014-12-04 00:00:00'),
(182, '2018-11-17 00:00:00'),
(183, '2022-06-14 00:00:00'),
(184, '2019-03-30 00:00:00'),
(185, '2021-01-15 00:00:00'),
(186, '2016-09-26 00:00:00'),
(187, '2014-03-31 00:00:00'),
(188, '2020-05-07 00:00:00'),
(189, '2013-05-29 00:00:00'),
(190, '2013-11-22 00:00:00'),
(191, '2020-10-18 00:00:00'),
(192, '2016-08-18 00:00:00'),
(193, '2021-05-03 00:00:00'),
(194, '2018-04-29 00:00:00'),
(195, '2017-11-19 00:00:00'),
(196, '2016-03-21 00:00:00'),
(197, '2022-06-02 00:00:00'),
(198, '2017-09-18 00:00:00'),
(199, '2020-08-27 00:00:00'),
(200, '2022-09-30 00:00:00'),
(201, '2018-02-04 00:00:00'),
(202, '2019-01-05 00:00:00'),
(203, '2014-04-10 00:00:00'),
(204, '2020-09-23 00:00:00'),
(205, '2020-05-06 00:00:00'),
(206, '2021-08-03 00:00:00'),
(207, '2017-08-12 00:00:00'),
(208, '2020-11-20 00:00:00'),
(209, '2015-12-15 00:00:00'),
(210, '2013-01-30 00:00:00'),
(211, '2016-10-01 00:00:00'),
(212, '2020-05-06 00:00:00'),
(213, '2015-05-05 00:00:00'),
(214, '2022-02-28 00:00:00'),
(215, '2014-04-01 00:00:00'),
(216, '2013-08-06 00:00:00'),
(217, '2017-04-15 00:00:00'),
(218, '2019-02-11 00:00:00'),
(219, '2018-01-11 00:00:00'),
(220, '2021-12-21 00:00:00'),
(221, '2015-10-05 00:00:00'),
(222, '2018-09-21 00:00:00'),
(223, '2016-10-22 00:00:00'),
(224, '2017-10-03 00:00:00'),
(225, '2015-04-03 00:00:00'),
(226, '2013-06-22 00:00:00'),
(227, '2019-07-13 00:00:00'),
(228, '2016-12-27 00:00:00'),
(229, '2017-07-10 00:00:00'),
(230, '2020-11-18 00:00:00'),
(231, '2022-04-29 00:00:00'),
(232, '2022-09-09 00:00:00'),
(233, '2014-03-26 00:00:00'),
(234, '2017-12-25 00:00:00'),
(235, '2014-04-16 00:00:00'),
(236, '2014-09-24 00:00:00'),
(237, '2016-09-20 00:00:00'),
(238, '2016-06-09 00:00:00'),
(239, '2016-12-15 00:00:00'),
(240, '2020-03-25 00:00:00'),
(241, '2020-07-15 00:00:00'),
(242, '2020-11-28 00:00:00'),
(243, '2021-01-03 00:00:00'),
(244, '2014-02-24 00:00:00'),
(245, '2017-08-26 00:00:00'),
(246, '2016-08-12 00:00:00'),
(247, '2022-01-27 00:00:00'),
(248, '2020-05-20 00:00:00'),
(249, '2019-11-12 00:00:00'),
(250, '2015-07-05 00:00:00'),
(251, '2019-05-17 00:00:00'),
(252, '2022-10-03 00:00:00'),
(253, '2020-07-30 00:00:00'),
(254, '2021-04-10 00:00:00'),
(255, '2013-02-02 00:00:00'),
(256, '2020-02-23 00:00:00'),
(257, '2016-10-17 00:00:00'),
(258, '2020-05-31 00:00:00'),
(259, '2021-05-01 00:00:00'),
(260, '2013-07-09 00:00:00'),
(261, '2016-12-26 00:00:00'),
(262, '2019-09-15 00:00:00'),
(263, '2015-11-29 00:00:00'),
(264, '2016-03-31 00:00:00'),
(265, '2016-03-04 00:00:00'),
(266, '2020-01-12 00:00:00'),
(267, '2021-02-06 00:00:00'),
(268, '2019-04-30 00:00:00'),
(269, '2019-07-12 00:00:00'),
(270, '2016-12-26 00:00:00'),
(271, '2019-02-19 00:00:00'),
(272, '2021-06-03 00:00:00'),
(273, '2019-02-10 00:00:00'),
(274, '2014-05-11 00:00:00'),
(275, '2021-03-07 00:00:00'),
(276, '2016-12-26 00:00:00'),
(277, '2022-05-03 00:00:00'),
(278, '2018-12-28 00:00:00'),
(279, '2013-06-18 00:00:00'),
(280, '2021-11-10 00:00:00'),
(281, '2015-05-25 00:00:00'),
(282, '2013-05-22 00:00:00'),
(283, '2015-03-04 00:00:00'),
(284, '2016-01-22 00:00:00'),
(285, '2016-02-09 00:00:00'),
(286, '2022-10-28 00:00:00'),
(287, '2021-04-28 00:00:00'),
(288, '2022-05-15 00:00:00'),
(289, '2019-09-25 00:00:00'),
(290, '2014-02-05 00:00:00'),
(291, '2015-07-22 00:00:00'),
(292, '2018-07-18 00:00:00'),
(293, '2016-07-04 00:00:00'),
(294, '2020-03-20 00:00:00'),
(295, '2013-07-18 00:00:00'),
(296, '2022-11-09 00:00:00'),
(297, '2013-01-30 00:00:00'),
(298, '2022-08-16 00:00:00'),
(299, '2018-08-09 00:00:00'),
(300, '2019-06-25 00:00:00'),
(301, '2014-03-11 00:00:00'),
(302, '2014-08-22 00:00:00'),
(303, '2015-04-30 00:00:00'),
(304, '2014-02-05 00:00:00'),
(305, '2019-11-19 00:00:00'),
(306, '2014-05-04 00:00:00'),
(307, '2021-12-14 00:00:00'),
(308, '2020-07-21 00:00:00'),
(309, '2019-12-27 00:00:00'),
(310, '2013-06-14 00:00:00'),
(311, '2016-11-12 00:00:00'),
(312, '2015-05-31 00:00:00'),
(313, '2015-09-15 00:00:00'),
(314, '2014-06-03 00:00:00'),
(315, '2022-10-26 00:00:00'),
(316, '2019-01-19 00:00:00'),
(317, '2019-09-03 00:00:00'),
(318, '2018-02-12 00:00:00'),
(319, '2017-09-25 00:00:00'),
(320, '2022-07-08 00:00:00'),
(321, '2013-02-13 00:00:00'),
(322, '2021-04-25 00:00:00'),
(323, '2021-04-12 00:00:00'),
(324, '2019-07-02 00:00:00'),
(325, '2020-08-09 00:00:00'),
(326, '2016-11-21 00:00:00'),
(327, '2017-02-20 00:00:00'),
(328, '2017-09-25 00:00:00'),
(329, '2022-02-08 00:00:00'),
(330, '2019-05-11 00:00:00'),
(331, '2016-01-09 00:00:00'),
(332, '2013-04-05 00:00:00'),
(333, '2014-07-21 00:00:00'),
(334, '2015-04-03 00:00:00'),
(335, '2013-01-29 00:00:00'),
(336, '2018-11-11 00:00:00'),
(337, '2018-06-24 00:00:00'),
(338, '2022-04-05 00:00:00'),
(339, '2022-09-11 00:00:00'),
(340, '2018-12-01 00:00:00'),
(341, '2019-05-06 00:00:00'),
(342, '2015-07-25 00:00:00'),
(343, '2019-01-02 00:00:00'),
(344, '2018-08-08 00:00:00'),
(345, '2013-12-21 00:00:00'),
(346, '2015-08-27 00:00:00'),
(347, '2018-12-09 00:00:00'),
(348, '2021-02-05 00:00:00'),
(349, '2017-03-27 00:00:00'),
(350, '2020-08-02 00:00:00'),
(351, '2022-01-22 00:00:00'),
(352, '2015-08-29 00:00:00'),
(353, '2019-04-12 00:00:00'),
(354, '2022-09-22 00:00:00'),
(355, '2019-06-20 00:00:00'),
(356, '2018-11-22 00:00:00'),
(357, '2018-04-11 00:00:00'),
(358, '2017-10-02 00:00:00'),
(359, '2013-01-19 00:00:00'),
(360, '2013-01-02 00:00:00'),
(361, '2018-10-09 00:00:00'),
(362, '2018-07-06 00:00:00'),
(363, '2014-07-08 00:00:00'),
(364, '2017-08-30 00:00:00'),
(365, '2016-10-08 00:00:00'),
(366, '2022-07-04 00:00:00'),
(367, '2013-09-29 00:00:00'),
(368, '2021-01-28 00:00:00'),
(369, '2013-06-18 00:00:00'),
(370, '2014-07-18 00:00:00'),
(371, '2018-11-29 00:00:00'),
(372, '2019-02-09 00:00:00'),
(373, '2015-12-27 00:00:00'),
(374, '2019-10-02 00:00:00'),
(375, '2016-02-18 00:00:00'),
(376, '2017-08-04 00:00:00'),
(377, '2015-11-03 00:00:00'),
(378, '2014-10-10 00:00:00'),
(379, '2017-10-05 00:00:00'),
(380, '2022-07-15 00:00:00'),
(381, '2014-07-26 00:00:00'),
(382, '2021-04-21 00:00:00'),
(383, '2013-04-04 00:00:00'),
(384, '2015-01-10 00:00:00'),
(385, '2022-10-06 00:00:00'),
(386, '2021-05-26 00:00:00'),
(387, '2015-01-10 00:00:00'),
(388, '2015-03-06 00:00:00'),
(389, '2019-07-25 00:00:00'),
(390, '2021-06-27 00:00:00'),
(391, '2018-06-03 00:00:00'),
(392, '2015-06-20 00:00:00'),
(393, '2019-07-05 00:00:00'),
(394, '2022-05-14 00:00:00'),
(395, '2022-09-28 00:00:00'),
(396, '2014-08-04 00:00:00'),
(397, '2021-03-20 00:00:00'),
(398, '2014-03-24 00:00:00'),
(399, '2020-10-25 00:00:00'),
(400, '2016-04-30 00:00:00'),
(401, '2013-11-17 00:00:00'),
(402, '2013-05-22 00:00:00'),
(403, '2016-04-30 00:00:00'),
(404, '2014-10-06 00:00:00'),
(405, '2020-01-18 00:00:00'),
(406, '2014-06-27 00:00:00'),
(407, '2020-04-01 00:00:00'),
(408, '2014-09-11 00:00:00'),
(409, '2016-04-11 00:00:00'),
(410, '2014-03-17 00:00:00'),
(411, '2017-06-21 00:00:00'),
(412, '2017-10-26 00:00:00'),
(413, '2020-06-21 00:00:00'),
(414, '2018-03-04 00:00:00'),
(415, '2022-11-15 00:00:00'),
(416, '2021-04-27 00:00:00'),
(417, '2013-08-12 00:00:00'),
(418, '2020-11-23 00:00:00'),
(419, '2018-08-25 00:00:00'),
(420, '2021-01-21 00:00:00'),
(421, '2016-10-16 00:00:00'),
(422, '2013-01-21 00:00:00'),
(423, '2015-09-28 00:00:00'),
(424, '2019-07-03 00:00:00'),
(425, '2021-04-24 00:00:00'),
(426, '2021-11-10 00:00:00'),
(427, '2018-10-21 00:00:00'),
(428, '2015-03-17 00:00:00'),
(429, '2021-11-21 00:00:00'),
(430, '2018-03-12 00:00:00'),
(431, '2019-09-11 00:00:00'),
(432, '2014-03-10 00:00:00'),
(433, '2018-05-05 00:00:00'),
(434, '2018-01-29 00:00:00'),
(435, '2015-01-31 00:00:00'),
(436, '2016-07-13 00:00:00'),
(437, '2022-04-19 00:00:00'),
(438, '2016-09-07 00:00:00'),
(439, '2018-03-07 00:00:00'),
(440, '2019-03-21 00:00:00'),
(441, '2021-04-09 00:00:00'),
(442, '2022-08-29 00:00:00'),
(443, '2013-02-01 00:00:00'),
(444, '2017-10-29 00:00:00'),
(445, '2021-12-15 00:00:00'),
(446, '2020-12-21 00:00:00'),
(447, '2020-04-30 00:00:00'),
(448, '2018-05-12 00:00:00'),
(449, '2018-05-26 00:00:00'),
(450, '2016-09-14 00:00:00'),
(451, '2016-06-11 00:00:00'),
(452, '2013-10-14 00:00:00'),
(453, '2018-04-02 00:00:00'),
(454, '2022-02-02 00:00:00'),
(455, '2015-06-04 00:00:00'),
(456, '2015-10-04 00:00:00'),
(457, '2018-04-17 00:00:00'),
(458, '2021-08-06 00:00:00'),
(459, '2021-05-31 00:00:00'),
(460, '2013-10-15 00:00:00'),
(461, '2017-08-24 00:00:00'),
(462, '2018-10-13 00:00:00'),
(463, '2014-08-20 00:00:00'),
(464, '2019-05-28 00:00:00'),
(465, '2016-07-08 00:00:00'),
(466, '2018-01-17 00:00:00'),
(467, '2014-02-20 00:00:00'),
(468, '2017-01-25 00:00:00'),
(469, '2019-12-12 00:00:00'),
(470, '2015-09-07 00:00:00'),
(471, '2013-07-23 00:00:00'),
(472, '2017-05-23 00:00:00'),
(473, '2016-03-26 00:00:00'),
(474, '2014-10-25 00:00:00'),
(475, '2015-10-20 00:00:00'),
(476, '2014-05-23 00:00:00'),
(477, '2018-03-20 00:00:00'),
(478, '2013-09-27 00:00:00'),
(479, '2013-05-01 00:00:00'),
(480, '2022-11-13 00:00:00'),
(481, '2022-02-11 00:00:00'),
(482, '2017-07-01 00:00:00'),
(483, '2018-02-19 00:00:00'),
(484, '2018-09-27 00:00:00'),
(485, '2019-12-07 00:00:00'),
(486, '2014-06-03 00:00:00'),
(487, '2015-03-02 00:00:00'),
(488, '2022-07-01 00:00:00'),
(489, '2015-04-06 00:00:00'),
(490, '2019-12-19 00:00:00'),
(491, '2021-12-04 00:00:00'),
(492, '2016-08-12 00:00:00'),
(493, '2013-05-23 00:00:00'),
(494, '2022-08-22 00:00:00'),
(495, '2022-07-23 00:00:00'),
(496, '2017-09-09 00:00:00'),
(497, '2022-10-17 00:00:00'),
(498, '2021-04-10 00:00:00'),
(499, '2013-08-08 00:00:00'),
(500, '2013-07-13 00:00:00'),
(501, '2018-02-04 00:00:00'),
(502, '2015-08-28 00:00:00'),
(503, '2013-07-02 00:00:00'),
(504, '2014-05-02 00:00:00'),
(505, '2015-12-29 00:00:00'),
(506, '2016-01-08 00:00:00'),
(507, '2021-08-14 00:00:00'),
(508, '2016-07-16 00:00:00'),
(509, '2020-03-12 00:00:00'),
(510, '2014-09-13 00:00:00'),
(511, '2021-01-09 00:00:00'),
(512, '2014-09-16 00:00:00'),
(513, '2016-11-27 00:00:00'),
(514, '2019-12-04 00:00:00'),
(515, '2014-09-14 00:00:00'),
(516, '2014-08-12 00:00:00'),
(517, '2016-09-11 00:00:00'),
(518, '2021-03-11 00:00:00'),
(519, '2019-05-31 00:00:00'),
(520, '2015-03-22 00:00:00'),
(521, '2020-02-26 00:00:00'),
(522, '2014-06-11 00:00:00'),
(523, '2014-09-13 00:00:00'),
(524, '2018-09-12 00:00:00'),
(525, '2017-08-25 00:00:00'),
(526, '2014-02-13 00:00:00'),
(527, '2013-08-17 00:00:00'),
(528, '2014-04-01 00:00:00'),
(529, '2014-01-14 00:00:00'),
(530, '2021-07-03 00:00:00'),
(531, '2015-04-29 00:00:00'),
(532, '2017-02-26 00:00:00'),
(533, '2019-03-11 00:00:00'),
(534, '2014-10-18 00:00:00'),
(535, '2022-08-13 00:00:00'),
(536, '2021-06-08 00:00:00'),
(537, '2013-01-03 00:00:00'),
(538, '2015-10-15 00:00:00'),
(539, '2021-11-13 00:00:00'),
(540, '2019-09-13 00:00:00'),
(541, '2021-08-23 00:00:00'),
(542, '2020-04-24 00:00:00'),
(543, '2020-08-09 00:00:00'),
(544, '2018-04-11 00:00:00'),
(545, '2020-06-18 00:00:00'),
(546, '2020-11-16 00:00:00'),
(547, '2014-12-24 00:00:00'),
(548, '2014-03-24 00:00:00'),
(549, '2017-09-12 00:00:00'),
(550, '2020-11-16 00:00:00'),
(551, '2021-02-17 00:00:00'),
(552, '2022-04-04 00:00:00'),
(553, '2015-02-25 00:00:00'),
(554, '2018-12-08 00:00:00'),
(555, '2021-04-28 00:00:00'),
(556, '2019-12-14 00:00:00'),
(557, '2017-03-20 00:00:00'),
(558, '2022-08-13 00:00:00'),
(559, '2022-07-24 00:00:00'),
(560, '2013-08-18 00:00:00'),
(561, '2014-09-29 00:00:00'),
(562, '2022-05-25 00:00:00'),
(563, '2018-11-03 00:00:00'),
(564, '2016-01-12 00:00:00'),
(565, '2019-01-06 00:00:00'),
(566, '2019-02-21 00:00:00'),
(567, '2016-11-22 00:00:00'),
(568, '2020-06-25 00:00:00'),
(569, '2015-06-15 00:00:00'),
(570, '2022-12-30 00:00:00'),
(571, '2020-04-18 00:00:00'),
(572, '2016-06-13 00:00:00'),
(573, '2013-07-23 00:00:00'),
(574, '2017-08-09 00:00:00'),
(575, '2016-09-15 00:00:00'),
(576, '2017-04-26 00:00:00'),
(577, '2017-03-27 00:00:00'),
(578, '2014-01-20 00:00:00'),
(579, '2014-09-03 00:00:00'),
(580, '2016-05-31 00:00:00'),
(581, '2015-07-15 00:00:00'),
(582, '2013-03-25 00:00:00'),
(583, '2015-10-20 00:00:00'),
(584, '2016-01-30 00:00:00'),
(585, '2015-05-26 00:00:00'),
(586, '2018-03-17 00:00:00'),
(587, '2016-02-04 00:00:00'),
(588, '2021-01-12 00:00:00'),
(589, '2017-05-30 00:00:00'),
(590, '2018-10-02 00:00:00'),
(591, '2013-04-30 00:00:00'),
(592, '2013-10-26 00:00:00'),
(593, '2017-07-28 00:00:00'),
(594, '2017-08-16 00:00:00'),
(595, '2022-04-12 00:00:00'),
(596, '2018-11-26 00:00:00'),
(597, '2018-03-02 00:00:00'),
(598, '2019-03-12 00:00:00'),
(599, '2020-03-29 00:00:00'),
(600, '2018-01-04 00:00:00'),
(601, '2016-06-18 00:00:00'),
(602, '2016-03-16 00:00:00'),
(603, '2015-02-23 00:00:00'),
(604, '2018-02-22 00:00:00'),
(605, '2018-09-28 00:00:00'),
(606, '2016-12-24 00:00:00'),
(607, '2020-11-21 00:00:00'),
(608, '2018-05-13 00:00:00'),
(609, '2020-03-02 00:00:00'),
(610, '2022-11-04 00:00:00'),
(611, '2019-12-22 00:00:00'),
(612, '2018-01-24 00:00:00'),
(613, '2017-06-06 00:00:00'),
(614, '2017-11-29 00:00:00'),
(615, '2020-03-07 00:00:00'),
(616, '2020-05-15 00:00:00'),
(617, '2021-11-19 00:00:00'),
(618, '2014-08-10 00:00:00'),
(619, '2019-04-09 00:00:00'),
(620, '2020-09-08 00:00:00'),
(621, '2021-09-01 00:00:00'),
(622, '2017-04-21 00:00:00'),
(623, '2016-01-02 00:00:00'),
(624, '2020-02-20 00:00:00'),
(625, '2018-03-29 00:00:00'),
(626, '2015-04-16 00:00:00'),
(627, '2019-08-15 00:00:00'),
(628, '2020-08-22 00:00:00'),
(629, '2021-05-27 00:00:00'),
(630, '2021-01-02 00:00:00'),
(631, '2022-08-30 00:00:00'),
(632, '2016-09-28 00:00:00'),
(633, '2022-07-06 00:00:00'),
(634, '2015-02-06 00:00:00'),
(635, '2016-10-03 00:00:00'),
(636, '2013-08-08 00:00:00'),
(637, '2016-01-14 00:00:00'),
(638, '2018-04-19 00:00:00'),
(639, '2016-03-08 00:00:00'),
(640, '2018-05-27 00:00:00'),
(641, '2022-02-11 00:00:00'),
(642, '2015-07-16 00:00:00'),
(643, '2020-09-28 00:00:00'),
(644, '2018-03-13 00:00:00'),
(645, '2021-01-26 00:00:00'),
(646, '2016-10-20 00:00:00'),
(647, '2021-05-03 00:00:00'),
(648, '2014-12-27 00:00:00'),
(649, '2015-08-23 00:00:00'),
(650, '2017-10-06 00:00:00'),
(651, '2014-10-03 00:00:00'),
(652, '2014-01-29 00:00:00'),
(653, '2017-02-09 00:00:00'),
(654, '2018-08-20 00:00:00'),
(655, '2014-01-25 00:00:00'),
(656, '2017-04-30 00:00:00'),
(657, '2020-08-04 00:00:00'),
(658, '2021-05-14 00:00:00'),
(659, '2019-01-27 00:00:00'),
(660, '2017-04-27 00:00:00'),
(661, '2015-07-13 00:00:00'),
(662, '2019-02-27 00:00:00'),
(663, '2016-11-20 00:00:00'),
(664, '2014-05-30 00:00:00'),
(665, '2020-03-31 00:00:00'),
(666, '2016-01-06 00:00:00'),
(667, '2016-05-23 00:00:00'),
(668, '2022-11-27 00:00:00'),
(669, '2015-07-11 00:00:00'),
(670, '2015-10-09 00:00:00'),
(671, '2020-12-31 00:00:00'),
(672, '2018-01-18 00:00:00'),
(673, '2019-03-03 00:00:00'),
(674, '2019-10-19 00:00:00'),
(675, '2015-10-16 00:00:00'),
(676, '2022-09-21 00:00:00'),
(677, '2014-07-02 00:00:00'),
(678, '2020-11-05 00:00:00'),
(679, '2017-12-30 00:00:00'),
(680, '2016-07-30 00:00:00'),
(681, '2014-01-15 00:00:00'),
(682, '2019-01-26 00:00:00'),
(683, '2018-04-11 00:00:00'),
(684, '2017-05-29 00:00:00'),
(685, '2016-10-14 00:00:00'),
(686, '2017-08-18 00:00:00'),
(687, '2021-04-02 00:00:00'),
(688, '2018-04-11 00:00:00'),
(689, '2017-10-26 00:00:00'),
(690, '2016-05-26 00:00:00'),
(691, '2016-09-24 00:00:00'),
(692, '2021-07-15 00:00:00'),
(693, '2019-08-22 00:00:00'),
(694, '2021-08-24 00:00:00'),
(695, '2021-08-03 00:00:00'),
(696, '2021-05-11 00:00:00'),
(697, '2018-09-23 00:00:00'),
(698, '2017-12-08 00:00:00'),
(699, '2017-05-18 00:00:00'),
(700, '2013-12-19 00:00:00'),
(701, '2016-05-28 00:00:00'),
(702, '2016-10-21 00:00:00'),
(703, '2022-03-24 00:00:00'),
(704, '2018-10-09 00:00:00'),
(705, '2014-12-28 00:00:00'),
(706, '2022-11-17 00:00:00'),
(707, '2018-09-13 00:00:00'),
(708, '2020-03-22 00:00:00'),
(709, '2021-07-28 00:00:00'),
(710, '2015-01-30 00:00:00'),
(711, '2021-04-18 00:00:00'),
(712, '2020-07-15 00:00:00'),
(713, '2019-03-05 00:00:00'),
(714, '2017-11-02 00:00:00'),
(715, '2017-08-21 00:00:00'),
(716, '2014-01-02 00:00:00'),
(717, '2017-05-19 00:00:00'),
(718, '2016-05-21 00:00:00'),
(719, '2015-11-11 00:00:00'),
(720, '2016-05-24 00:00:00'),
(721, '2014-03-21 00:00:00'),
(722, '2017-10-22 00:00:00'),
(723, '2014-04-29 00:00:00'),
(724, '2016-09-13 00:00:00'),
(725, '2021-10-09 00:00:00'),
(726, '2016-09-11 00:00:00'),
(727, '2020-03-18 00:00:00'),
(728, '2018-02-17 00:00:00'),
(729, '2020-09-15 00:00:00'),
(730, '2017-05-26 00:00:00'),
(731, '2017-02-01 00:00:00'),
(732, '2020-04-05 00:00:00'),
(733, '2021-09-20 00:00:00'),
(734, '2016-10-08 00:00:00'),
(735, '2017-09-18 00:00:00'),
(736, '2016-08-04 00:00:00'),
(737, '2018-06-26 00:00:00'),
(738, '2018-10-13 00:00:00'),
(739, '2017-05-14 00:00:00'),
(740, '2019-07-13 00:00:00'),
(741, '2015-03-16 00:00:00'),
(742, '2020-02-12 00:00:00'),
(743, '2022-06-11 00:00:00'),
(744, '2022-09-02 00:00:00'),
(745, '2013-11-09 00:00:00'),
(746, '2022-06-23 00:00:00'),
(747, '2017-11-28 00:00:00'),
(748, '2014-08-09 00:00:00'),
(749, '2022-11-25 00:00:00'),
(750, '2019-01-16 00:00:00'),
(751, '2013-07-19 00:00:00'),
(752, '2022-10-28 00:00:00'),
(753, '2020-12-03 00:00:00'),
(754, '2022-12-29 00:00:00'),
(755, '2016-11-03 00:00:00'),
(756, '2019-09-12 00:00:00'),
(757, '2016-01-29 00:00:00'),
(758, '2014-12-11 00:00:00'),
(759, '2017-06-11 00:00:00'),
(760, '2016-05-25 00:00:00'),
(761, '2016-09-21 00:00:00'),
(762, '2016-03-19 00:00:00'),
(763, '2019-05-08 00:00:00'),
(764, '2016-08-18 00:00:00'),
(765, '2022-03-31 00:00:00'),
(766, '2020-03-01 00:00:00'),
(767, '2014-12-21 00:00:00'),
(768, '2019-08-12 00:00:00'),
(769, '2022-09-25 00:00:00'),
(770, '2022-09-03 00:00:00'),
(771, '2022-04-19 00:00:00'),
(772, '2022-01-06 00:00:00'),
(773, '2013-08-26 00:00:00'),
(774, '2022-10-05 00:00:00'),
(775, '2013-07-24 00:00:00'),
(776, '2014-09-20 00:00:00'),
(777, '2016-02-08 00:00:00'),
(778, '2021-07-01 00:00:00'),
(779, '2022-05-03 00:00:00'),
(780, '2016-10-18 00:00:00'),
(781, '2018-01-27 00:00:00'),
(782, '2019-01-25 00:00:00'),
(783, '2019-12-11 00:00:00'),
(784, '2018-09-29 00:00:00'),
(785, '2022-01-18 00:00:00'),
(786, '2021-01-03 00:00:00'),
(787, '2018-04-01 00:00:00'),
(788, '2019-04-26 00:00:00'),
(789, '2015-06-13 00:00:00'),
(790, '2016-03-05 00:00:00'),
(791, '2021-03-17 00:00:00'),
(792, '2013-05-28 00:00:00'),
(793, '2018-06-10 00:00:00'),
(794, '2013-06-06 00:00:00'),
(795, '2018-03-18 00:00:00'),
(796, '2016-02-17 00:00:00'),
(797, '2018-09-25 00:00:00'),
(798, '2016-06-13 00:00:00'),
(799, '2022-11-27 00:00:00'),
(800, '2021-06-10 00:00:00'),
(801, '2019-03-17 00:00:00'),
(802, '2016-12-26 00:00:00'),
(803, '2017-04-30 00:00:00'),
(804, '2020-07-02 00:00:00'),
(805, '2018-07-24 00:00:00'),
(806, '2022-02-04 00:00:00'),
(807, '2021-05-21 00:00:00'),
(808, '2018-02-18 00:00:00'),
(809, '2016-12-29 00:00:00'),
(810, '2016-09-05 00:00:00'),
(811, '2013-10-22 00:00:00'),
(812, '2017-06-11 00:00:00'),
(813, '2016-02-15 00:00:00'),
(814, '2022-04-10 00:00:00'),
(815, '2016-12-30 00:00:00'),
(816, '2016-11-10 00:00:00'),
(817, '2022-01-20 00:00:00'),
(818, '2022-07-26 00:00:00'),
(819, '2013-08-08 00:00:00'),
(820, '2015-12-20 00:00:00'),
(821, '2015-11-23 00:00:00'),
(822, '2022-01-18 00:00:00'),
(823, '2021-04-30 00:00:00'),
(824, '2015-07-29 00:00:00'),
(825, '2013-02-16 00:00:00'),
(826, '2020-03-30 00:00:00'),
(827, '2015-04-20 00:00:00'),
(828, '2020-03-03 00:00:00'),
(829, '2019-10-01 00:00:00'),
(830, '2018-01-22 00:00:00'),
(831, '2013-10-09 00:00:00'),
(832, '2021-09-27 00:00:00'),
(833, '2013-11-06 00:00:00'),
(834, '2016-09-21 00:00:00'),
(835, '2017-10-19 00:00:00'),
(836, '2014-03-20 00:00:00'),
(837, '2021-08-13 00:00:00'),
(838, '2017-09-20 00:00:00'),
(839, '2021-06-19 00:00:00'),
(840, '2013-06-02 00:00:00'),
(841, '2019-01-21 00:00:00'),
(842, '2013-10-07 00:00:00'),
(843, '2015-05-11 00:00:00'),
(844, '2015-04-13 00:00:00'),
(845, '2018-04-20 00:00:00'),
(846, '2017-01-22 00:00:00'),
(847, '2022-10-16 00:00:00'),
(848, '2020-06-06 00:00:00'),
(849, '2015-03-16 00:00:00'),
(850, '2020-05-10 00:00:00'),
(851, '2016-07-13 00:00:00'),
(852, '2015-05-11 00:00:00'),
(853, '2015-07-19 00:00:00'),
(854, '2013-12-16 00:00:00'),
(855, '2021-02-02 00:00:00'),
(856, '2021-01-08 00:00:00'),
(857, '2017-01-30 00:00:00'),
(858, '2013-06-07 00:00:00'),
(859, '2018-06-07 00:00:00'),
(860, '2015-12-10 00:00:00'),
(861, '2019-06-14 00:00:00'),
(862, '2017-03-18 00:00:00'),
(863, '2022-07-20 00:00:00'),
(864, '2015-09-13 00:00:00'),
(865, '2015-06-21 00:00:00'),
(866, '2020-05-09 00:00:00'),
(867, '2018-12-23 00:00:00'),
(868, '2013-02-21 00:00:00'),
(869, '2022-01-19 00:00:00'),
(870, '2015-10-03 00:00:00'),
(871, '2013-10-06 00:00:00'),
(872, '2022-08-11 00:00:00'),
(873, '2014-04-11 00:00:00'),
(874, '2016-01-07 00:00:00'),
(875, '2019-01-31 00:00:00'),
(876, '2018-05-09 00:00:00'),
(877, '2020-08-16 00:00:00'),
(878, '2020-11-04 00:00:00'),
(879, '2020-12-16 00:00:00'),
(880, '2019-02-28 00:00:00'),
(881, '2020-06-28 00:00:00'),
(882, '2013-08-10 00:00:00'),
(883, '2015-04-24 00:00:00'),
(884, '2013-05-24 00:00:00'),
(885, '2015-06-27 00:00:00'),
(886, '2015-10-21 00:00:00'),
(887, '2015-07-08 00:00:00'),
(888, '2016-11-02 00:00:00'),
(889, '2017-10-05 00:00:00'),
(890, '2021-01-26 00:00:00'),
(891, '2019-08-25 00:00:00'),
(892, '2020-08-11 00:00:00'),
(893, '2019-11-18 00:00:00'),
(894, '2016-05-09 00:00:00'),
(895, '2015-06-30 00:00:00'),
(896, '2022-01-17 00:00:00'),
(897, '2017-07-28 00:00:00'),
(898, '2018-05-25 00:00:00'),
(899, '2021-09-15 00:00:00'),
(900, '2016-12-17 00:00:00'),
(901, '2019-08-30 00:00:00'),
(902, '2018-10-31 00:00:00'),
(903, '2017-09-03 00:00:00'),
(904, '2015-05-05 00:00:00'),
(905, '2016-01-27 00:00:00'),
(906, '2020-01-21 00:00:00'),
(907, '2018-02-05 00:00:00'),
(908, '2015-08-11 00:00:00'),
(909, '2021-06-14 00:00:00'),
(910, '2021-09-30 00:00:00'),
(911, '2019-08-03 00:00:00'),
(912, '2013-12-29 00:00:00'),
(913, '2017-05-27 00:00:00'),
(914, '2021-01-21 00:00:00'),
(915, '2022-01-19 00:00:00'),
(916, '2021-10-02 00:00:00'),
(917, '2021-09-05 00:00:00'),
(918, '2013-12-28 00:00:00'),
(919, '2013-02-21 00:00:00'),
(920, '2018-05-10 00:00:00'),
(921, '2019-01-05 00:00:00'),
(922, '2018-03-26 00:00:00'),
(923, '2021-08-18 00:00:00'),
(924, '2019-03-28 00:00:00'),
(925, '2016-05-28 00:00:00'),
(926, '2020-02-05 00:00:00'),
(927, '2018-06-20 00:00:00'),
(928, '2019-05-19 00:00:00'),
(929, '2021-08-16 00:00:00'),
(930, '2015-12-09 00:00:00'),
(931, '2016-07-24 00:00:00'),
(932, '2021-01-14 00:00:00'),
(933, '2017-08-18 00:00:00'),
(934, '2015-09-20 00:00:00'),
(935, '2017-06-04 00:00:00'),
(936, '2013-11-10 00:00:00'),
(937, '2020-03-19 00:00:00'),
(938, '2021-09-09 00:00:00'),
(939, '2020-05-18 00:00:00'),
(940, '2013-08-25 00:00:00'),
(941, '2013-12-09 00:00:00'),
(942, '2022-03-10 00:00:00'),
(943, '2020-04-06 00:00:00'),
(944, '2013-07-05 00:00:00'),
(945, '2016-12-20 00:00:00'),
(946, '2016-01-31 00:00:00'),
(947, '2015-08-01 00:00:00'),
(948, '2020-05-04 00:00:00'),
(949, '2013-03-17 00:00:00'),
(950, '2013-09-10 00:00:00'),
(951, '2013-03-07 00:00:00'),
(952, '2015-06-05 00:00:00'),
(953, '2015-05-19 00:00:00'),
(954, '2017-05-13 00:00:00'),
(955, '2021-07-29 00:00:00'),
(956, '2015-11-06 00:00:00'),
(957, '2014-10-18 00:00:00'),
(958, '2017-12-09 00:00:00'),
(959, '2020-10-18 00:00:00'),
(960, '2016-07-27 00:00:00'),
(961, '2014-01-18 00:00:00'),
(962, '2015-07-22 00:00:00'),
(963, '2019-06-07 00:00:00'),
(964, '2013-09-22 00:00:00'),
(965, '2019-08-29 00:00:00'),
(966, '2020-02-27 00:00:00'),
(967, '2022-10-06 00:00:00'),
(968, '2015-05-22 00:00:00'),
(969, '2020-05-06 00:00:00'),
(970, '2020-05-16 00:00:00'),
(971, '2018-12-28 00:00:00'),
(972, '2020-02-21 00:00:00'),
(973, '2021-06-29 00:00:00'),
(974, '2013-09-05 00:00:00'),
(975, '2014-02-11 00:00:00'),
(976, '2018-07-31 00:00:00'),
(977, '2020-01-20 00:00:00'),
(978, '2019-01-11 00:00:00'),
(979, '2021-11-07 00:00:00'),
(980, '2020-03-19 00:00:00'),
(981, '2013-05-10 00:00:00'),
(982, '2017-04-16 00:00:00'),
(983, '2021-10-06 00:00:00'),
(984, '2021-08-27 00:00:00'),
(985, '2017-12-13 00:00:00'),
(986, '2021-10-19 00:00:00'),
(987, '2014-12-26 00:00:00'),
(988, '2018-01-14 00:00:00'),
(989, '2014-07-07 00:00:00'),
(990, '2018-12-17 00:00:00'),
(991, '2019-04-26 00:00:00'),
(992, '2013-01-09 00:00:00'),
(993, '2020-12-17 00:00:00'),
(994, '2014-03-06 00:00:00'),
(995, '2015-12-06 00:00:00'),
(996, '2019-11-02 00:00:00'),
(997, '2016-03-14 00:00:00'),
(998, '2020-10-19 00:00:00'),
(999, '2017-03-27 00:00:00'),
(1000, '2019-10-24 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `encabezado_fac`
--
ALTER TABLE `encabezado_fac`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `encabezado_fac`
--
ALTER TABLE `encabezado_fac`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
  ADD CONSTRAINT `detalle_fac_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `encabezado_fac` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
