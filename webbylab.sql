-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 05 2021 г., 01:34
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
  `title` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  `format` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `movie`
--

INSERT INTO `movie` (`id`, `title`, `year`, `format`) VALUES
(1, 'Casablanca\r\n', 1942, 'DVD\r\n'),
(2, 'Charade\r\n', 1953, 'DVD\r\n'),
(3, 'Cool Hand Luke\r\n', 1967, 'VHS\r\n'),
(4, 'Butch Cassidy and the Sundance Kid\r\n', 1969, 'VHS\r\n'),
(5, 'The Sting\r\n', 1973, 'DVD\r\n'),
(6, 'The Muppet Movie\r\n', 1979, 'DVD\r\n'),
(7, 'Get Shorty \r\n', 1995, 'DVD\r\n'),
(8, 'My Cousin Vinny\r\n', 1992, 'DVD\r\n'),
(9, 'Gladiator\r\n', 2000, 'Blu-Ray\r\n'),
(10, 'Star Wars\r\n', 1977, 'Blu-Ray\r\n'),
(11, 'Raiders of the Lost Ark\r\n', 1981, 'DVD\r\n'),
(12, 'Serenity\r\n', 2005, 'Blu-Ray\r\n'),
(13, 'Hooisers\r\n', 1986, 'VHS\r\n'),
(14, 'WarGames\r\n', 1983, 'VHS\r\n'),
(15, 'Spaceballs\r\n', 1987, 'DVD\r\n'),
(16, 'Young Frankenstein\r\n', 1974, 'VHS\r\n'),
(17, 'Real Genius\r\n', 1985, 'VHS\r\n'),
(18, 'Top Gun\r\n', 1986, 'DVD\r\n'),
(19, 'MASH\r\n', 1970, 'DVD\r\n'),
(20, 'The Russians Are Coming, The Russians Are Coming\r\n', 1966, 'VHS\r\n'),
(21, 'Jaws\r\n', 1975, 'DVD\r\n'),
(22, '2001: A Space Odyssey\r\n', 1968, 'DVD\r\n'),
(23, 'Harvey\r\n', 1950, 'DVD\r\n'),
(24, 'Knocked Up\r\n', 2007, 'Blu-Ray\r\n');

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
(24, 86);

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
(86, 'Paul Rudd');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
