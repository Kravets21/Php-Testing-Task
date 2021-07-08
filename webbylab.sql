-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 08 2021 г., 17:14
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webbylab`
--

-- --------------------------------------------------------

--
-- Структура таблицы `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(4) NOT NULL,
  `format` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `movie`
--

INSERT INTO `movie` (`id`, `title`, `year`, `format`) VALUES
(1, 'Knocked Up12312312\r\n', 2007, 'Blu-Ray\r\n'),
(2, 'Knocked Up212312312\r\n', 2007, 'Blu-Ray\r\n'),
(3, 'Knocked Up112312312\r\n', 2007, 'Blu-Ray\r\n'),
(4, 'Knocked Up312312312\r\n', 2007, 'Blu-Ray\r\n'),
(5, 'Knocked Up412312312\r\n', 2007, 'Blu-Ray\r\n'),
(6, 'Knocked U123123121231231212312312\r\n', 2007, 'Blu-Ray\r\n'),
(7, 'Knocked Up111231231212312312\r\n', 2007, 'Blu-Ray\r\n'),
(8, 'Knocked Up111112312312\r\n', 2007, 'Blu-Ray\r\n'),
(9, 'Knocked U123p112312312312\r\n', 2007, 'Blu-Ray\r\n'),
(10, 'Knocked U32p312312312\r\n', 2007, 'Blu-Ray\r\n'),
(11, 'Knocked U23p412312312\r\n', 2007, 'Blu-Ray\r\n'),
(12, 'Knoc2ked U12312312\r\n', 2007, 'Blu-Ray\r\n'),
(13, 'Knocked Up11112312312\r\n', 2007, 'Blu-Ray\r\n'),
(14, 'Knocked Up1111112312312\r\n', 2007, 'Blu-Ray\r\n'),
(15, 'Knocked Up1123112312312\r\n', 2007, 'Blu-Ray\r\n'),
(16, 'їхал', 2007, 'DVD'),
(17, 'ахал', 2007, 'DVD'),
(18, 'Ахахал', 2007, 'DVD'),
(19, 'Senior React and Vue Expert', 2007, 'DVD'),
(20, 'Arelo', 2007, 'DVD');

-- --------------------------------------------------------

--
-- Структура таблицы `movie_star`
--

CREATE TABLE `movie_star` (
  `movie_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `movie_star`
--

INSERT INTO `movie_star` (`movie_id`, `star_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(4, 8),
(4, 11),
(5, 11),
(5, 8),
(5, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 7),
(6, 20),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(9, 30),
(9, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 32),
(12, 37),
(12, 38),
(12, 39),
(12, 40),
(12, 41),
(12, 42),
(12, 43),
(12, 44),
(12, 45),
(13, 24),
(13, 47),
(14, 48),
(14, 49),
(14, 50),
(14, 51),
(15, 52),
(15, 53),
(15, 18),
(15, 55),
(15, 56),
(16, 57),
(16, 58),
(16, 59),
(16, 24),
(17, 61),
(17, 62),
(17, 63),
(18, 64),
(18, 65),
(18, 61),
(18, 67),
(19, 68),
(19, 69),
(19, 70),
(19, 71),
(20, 72),
(20, 73),
(20, 74),
(21, 75),
(21, 14),
(21, 77),
(22, 78),
(22, 79),
(22, 80),
(23, 81),
(23, 82),
(23, 83),
(24, 84),
(24, 85),
(24, 86),
(25, 87),
(25, 87),
(25, 87),
(28, 90),
(28, 91),
(28, 92),
(29, 90),
(29, 91),
(29, 95),
(30, 96),
(31, 90),
(31, 91),
(31, 95),
(32, 90),
(32, 91),
(32, 95),
(33, 90),
(33, 91),
(33, 95),
(34, 106),
(35, 107),
(35, 91),
(35, 95),
(36, 110),
(37, 90),
(37, 91),
(37, 95),
(0, 90),
(0, 91),
(0, 116),
(39, 90),
(39, 91),
(39, 95),
(40, 90),
(40, 91),
(40, 122),
(41, 123),
(42, 84),
(42, 85),
(42, 86),
(42, 84),
(42, 85),
(42, 86),
(42, 84),
(42, 85),
(42, 86),
(43, 84),
(43, 85),
(43, 86),
(44, 84),
(44, 85),
(44, 86),
(44, 84),
(44, 85),
(44, 86),
(45, 84),
(45, 85),
(45, 86),
(45, 84),
(45, 85),
(45, 86),
(46, 84),
(46, 85),
(46, 86),
(46, 84),
(46, 85),
(46, 86),
(47, 84),
(47, 85),
(47, 86),
(48, 84),
(48, 85),
(48, 86),
(49, 84),
(49, 85),
(49, 86),
(50, 84),
(50, 85),
(50, 86),
(51, 84),
(51, 85),
(51, 86),
(52, 84),
(52, 85),
(52, 86),
(53, 84),
(53, 85),
(53, 86),
(54, 84),
(54, 85),
(54, 86),
(55, 84),
(55, 85),
(55, 86),
(56, 84),
(56, 85),
(56, 86),
(57, 84),
(57, 85),
(57, 86),
(58, 84),
(58, 85),
(58, 86),
(59, 84),
(59, 85),
(59, 86),
(60, 84),
(60, 85),
(60, 86),
(61, 84),
(61, 85),
(61, 86),
(62, 84),
(62, 85),
(62, 86),
(63, 84),
(63, 85),
(63, 86),
(64, 84),
(64, 85),
(64, 86),
(65, 84),
(65, 85),
(65, 86),
(66, 84),
(66, 85),
(66, 86),
(67, 84),
(67, 85),
(67, 86),
(68, 84),
(68, 85),
(68, 86),
(69, 84),
(69, 85),
(69, 86),
(70, 84),
(70, 85),
(70, 86),
(71, 84),
(71, 85),
(71, 86),
(72, 84),
(72, 85),
(72, 86),
(73, 90),
(73, 91),
(73, 95),
(74, 90),
(74, 91),
(74, 95),
(75, 238),
(76, 123),
(77, 240),
(77, 241),
(78, 242),
(78, 243),
(79, 123),
(79, 245),
(80, 123),
(80, 123),
(81, 240),
(81, 240),
(81, 240),
(81, 240),
(81, 240),
(82, 240),
(1, 84),
(1, 85),
(1, 86),
(2, 84),
(2, 85),
(2, 86),
(3, 84),
(3, 85),
(3, 86),
(4, 84),
(4, 85),
(4, 86),
(5, 84),
(5, 85),
(5, 86),
(6, 84),
(6, 85),
(6, 86),
(7, 84),
(7, 85),
(7, 86),
(8, 84),
(8, 85),
(8, 86),
(9, 84),
(9, 85),
(9, 86),
(10, 84),
(10, 85),
(10, 86),
(11, 84),
(11, 85),
(11, 86),
(12, 84),
(12, 85),
(12, 86),
(13, 84),
(13, 85),
(13, 86),
(14, 84),
(14, 85),
(14, 86),
(15, 84),
(15, 85),
(15, 86),
(16, 123),
(17, 300),
(18, 123),
(19, 302),
(20, 303);

-- --------------------------------------------------------

--
-- Структура таблицы `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `star`
--

INSERT INTO `star` (`id`, `name`) VALUES
(1, 'Humphrey Bogart'),
(2, 'Ingrid Bergman'),
(3, 'Claude Rains'),
(4, 'Audrey Hepburn'),
(5, 'Cary Grant'),
(6, 'Walter Matthau'),
(7, 'James Coburn'),
(8, 'Paul Newman'),
(9, 'George Kennedy'),
(10, 'Paul Newman'),
(11, 'Robert Redford'),
(12, 'Robert Redford'),
(13, 'Paul Newman'),
(14, 'Robert Shaw'),
(15, 'Jim Henson'),
(16, 'Frank Oz'),
(17, 'Dave Geolz'),
(18, 'Mel Brooks'),
(19, 'James Coburn'),
(20, 'Charles Durning'),
(21, 'John Travolta'),
(22, 'Danny DeVito'),
(23, 'Renne Russo'),
(24, 'Gene Hackman'),
(25, 'Joe Pesci'),
(26, 'Marrisa Tomei'),
(27, 'Fred Gwynne'),
(28, 'Austin Pendleton'),
(29, 'Lane Smith'),
(30, 'Russell Crowe'),
(31, 'Joaquin Phoenix'),
(32, 'Harrison Ford'),
(33, 'Mark Hamill'),
(34, 'Carrie Fisher'),
(35, 'Alec Guinness'),
(36, 'Harrison Ford'),
(37, 'Nathan Fillion'),
(38, 'Alan Tudyk'),
(39, 'Adam Baldwin'),
(40, 'Ron Glass'),
(41, 'Jewel Staite'),
(42, 'Gina Torres'),
(43, 'Morena Baccarin'),
(44, 'Sean Maher'),
(45, 'Summer Glau'),
(46, 'Gene Hackman'),
(47, 'Barbara Hershey'),
(48, 'Matthew Broderick'),
(49, 'Ally Sheedy'),
(50, 'Dabney Coleman'),
(51, 'John Wood'),
(52, 'Bill Pullman'),
(53, 'John Candy'),
(54, 'Mel Brooks'),
(55, 'Rick Moranis'),
(56, 'Daphne Zuniga'),
(57, 'Gene Wilder'),
(58, 'Kenneth Mars'),
(59, 'Terri Garr'),
(60, 'Gene Hackman'),
(61, 'Val Kilmer'),
(62, 'Gabe Jarret'),
(63, 'Michelle Meyrink'),
(64, 'Tom Cruise'),
(65, 'Kelly McGillis'),
(66, 'Val Kilmer'),
(67, 'Anthony Edwards'),
(68, 'Donald Sutherland'),
(69, 'Elliot Gould'),
(70, 'Tom Skerritt'),
(71, 'Sally Kellerman'),
(72, 'Carl Reiner'),
(73, 'Marie Saint'),
(74, 'Alan Arkin'),
(75, 'Roy Scheider'),
(76, 'Robert Shaw'),
(77, 'Richard Dreyfuss'),
(78, 'Keir Dullea'),
(79, 'Gary Lockwood'),
(80, 'William Sylvester'),
(81, 'James Stewart'),
(82, 'Josephine Hull'),
(83, 'Peggy Dow'),
(84, 'Seth Rogen'),
(85, 'Katherine Heigl'),
(86, 'Paul Rudd'),
(87, ' '),
(88, ''),
(89, '   '),
(90, 'John Derreck'),
(91, ' Will Smith'),
(92, ' Lora Tailo'),
(93, 'John Derreck'),
(94, ' Will Smith'),
(95, ' Lora Tailor'),
(96, '$format'),
(97, 'John Derreck'),
(98, ' Will Smith'),
(99, ' Lora Tailor'),
(100, 'John Derreck'),
(101, ' Will Smith'),
(102, ' Lora Tailor'),
(103, 'John Derreck'),
(104, ' Will Smith'),
(105, ' Lora Tailor'),
(106, 'Senior React and Vue Experta'),
(107, 'mple: John Derreck'),
(108, ' Will Smith'),
(109, ' Lora Tailor'),
(110, 'alert(test);'),
(111, 'John Derreck'),
(112, ' Will Smith'),
(113, ' Lora Tailor'),
(114, 'John Derreck'),
(115, ' Will Smith'),
(116, ' Lora Tailor2'),
(117, 'John Derreck'),
(118, ' Will Smith'),
(119, ' Lora Tailor'),
(120, 'John Derreck'),
(121, ' Will Smith'),
(122, ' Lora Tailor-'),
(123, 'Lora Tailor'),
(124, 'Seth Rogen'),
(125, 'Katherine Heigl'),
(126, 'Paul Rudd'),
(127, 'Seth Rogen'),
(128, 'Katherine Heigl'),
(129, 'Paul Rudd'),
(130, 'Seth Rogen'),
(131, 'Katherine Heigl'),
(132, 'Paul Rudd'),
(133, 'Seth Rogen'),
(134, 'Katherine Heigl'),
(135, 'Paul Rudd'),
(136, 'Seth Rogen'),
(137, 'Katherine Heigl'),
(138, 'Paul Rudd'),
(139, 'Seth Rogen'),
(140, 'Katherine Heigl'),
(141, 'Paul Rudd'),
(142, 'Seth Rogen'),
(143, 'Katherine Heigl'),
(144, 'Paul Rudd'),
(145, 'Seth Rogen'),
(146, 'Katherine Heigl'),
(147, 'Paul Rudd'),
(148, 'Seth Rogen'),
(149, 'Katherine Heigl'),
(150, 'Paul Rudd'),
(151, 'Seth Rogen'),
(152, 'Katherine Heigl'),
(153, 'Paul Rudd'),
(154, 'Seth Rogen'),
(155, 'Katherine Heigl'),
(156, 'Paul Rudd'),
(157, 'Seth Rogen'),
(158, 'Katherine Heigl'),
(159, 'Paul Rudd'),
(160, 'Seth Rogen'),
(161, 'Katherine Heigl'),
(162, 'Paul Rudd'),
(163, 'Seth Rogen'),
(164, 'Katherine Heigl'),
(165, 'Paul Rudd'),
(166, 'Seth Rogen'),
(167, 'Katherine Heigl'),
(168, 'Paul Rudd'),
(169, 'Seth Rogen'),
(170, 'Katherine Heigl'),
(171, 'Paul Rudd'),
(172, 'Seth Rogen'),
(173, 'Katherine Heigl'),
(174, 'Paul Rudd'),
(175, 'Seth Rogen'),
(176, 'Katherine Heigl'),
(177, 'Paul Rudd'),
(178, 'Seth Rogen'),
(179, 'Katherine Heigl'),
(180, 'Paul Rudd'),
(181, 'Seth Rogen'),
(182, 'Katherine Heigl'),
(183, 'Paul Rudd'),
(184, 'Seth Rogen'),
(185, 'Katherine Heigl'),
(186, 'Paul Rudd'),
(187, 'Seth Rogen'),
(188, 'Katherine Heigl'),
(189, 'Paul Rudd'),
(190, 'Seth Rogen'),
(191, 'Katherine Heigl'),
(192, 'Paul Rudd'),
(193, 'Seth Rogen'),
(194, 'Katherine Heigl'),
(195, 'Paul Rudd'),
(196, 'Seth Rogen'),
(197, 'Katherine Heigl'),
(198, 'Paul Rudd'),
(199, 'Seth Rogen'),
(200, 'Katherine Heigl'),
(201, 'Paul Rudd'),
(202, 'Seth Rogen'),
(203, 'Katherine Heigl'),
(204, 'Paul Rudd'),
(205, 'Seth Rogen'),
(206, 'Katherine Heigl'),
(207, 'Paul Rudd'),
(208, 'Seth Rogen'),
(209, 'Katherine Heigl'),
(210, 'Paul Rudd'),
(211, 'Seth Rogen'),
(212, 'Katherine Heigl'),
(213, 'Paul Rudd'),
(214, 'Seth Rogen'),
(215, 'Katherine Heigl'),
(216, 'Paul Rudd'),
(217, 'Seth Rogen'),
(218, 'Katherine Heigl'),
(219, 'Paul Rudd'),
(220, 'Seth Rogen'),
(221, 'Katherine Heigl'),
(222, 'Paul Rudd'),
(223, 'Seth Rogen'),
(224, 'Katherine Heigl'),
(225, 'Paul Rudd'),
(226, 'Seth Rogen'),
(227, 'Katherine Heigl'),
(228, 'Paul Rudd'),
(229, 'Seth Rogen'),
(230, 'Katherine Heigl'),
(231, 'Paul Rudd'),
(232, 'John Derreck'),
(233, ' Will Smith'),
(234, ' Lora Tailor'),
(235, 'John Derreck'),
(236, ' Will Smith'),
(237, ' Lora Tailor'),
(238, 'Lora TailorLora TailorLora Tailor'),
(239, 'Lora Tailor'),
(240, 'test'),
(241, ' test'),
(242, 'test testing'),
(243, ' test testing'),
(244, 'Lora Tailor'),
(245, '  Lora Tailor'),
(246, 'Lora Tailor'),
(247, 'Lora Tailor'),
(248, 'test'),
(249, 'test '),
(250, 'test '),
(251, 'test'),
(252, 'test'),
(253, 'test'),
(254, 'Seth Rogen'),
(255, 'Katherine Heigl'),
(256, 'Paul Rudd'),
(257, 'Seth Rogen'),
(258, 'Katherine Heigl'),
(259, 'Paul Rudd'),
(260, 'Seth Rogen'),
(261, 'Katherine Heigl'),
(262, 'Paul Rudd'),
(263, 'Seth Rogen'),
(264, 'Katherine Heigl'),
(265, 'Paul Rudd'),
(266, 'Seth Rogen'),
(267, 'Katherine Heigl'),
(268, 'Paul Rudd'),
(269, 'Seth Rogen'),
(270, 'Katherine Heigl'),
(271, 'Paul Rudd'),
(272, 'Seth Rogen'),
(273, 'Katherine Heigl'),
(274, 'Paul Rudd'),
(275, 'Seth Rogen'),
(276, 'Katherine Heigl'),
(277, 'Paul Rudd'),
(278, 'Seth Rogen'),
(279, 'Katherine Heigl'),
(280, 'Paul Rudd'),
(281, 'Seth Rogen'),
(282, 'Katherine Heigl'),
(283, 'Paul Rudd'),
(284, 'Seth Rogen'),
(285, 'Katherine Heigl'),
(286, 'Paul Rudd'),
(287, 'Seth Rogen'),
(288, 'Katherine Heigl'),
(289, 'Paul Rudd'),
(290, 'Seth Rogen'),
(291, 'Katherine Heigl'),
(292, 'Paul Rudd'),
(293, 'Seth Rogen'),
(294, 'Katherine Heigl'),
(295, 'Paul Rudd'),
(296, 'Seth Rogen'),
(297, 'Katherine Heigl'),
(298, 'Paul Rudd'),
(299, 'Lora Tailor'),
(300, 'фіф'),
(301, 'Lora Tailor'),
(302, 'asdasda'),
(303, 'AreloArelo');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
