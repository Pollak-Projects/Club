-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 24. 08:15
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `bluementa`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `quiz_name` varchar(125) COLLATE utf8_hungarian_ci NOT NULL,
  `quiz_description` varchar(350) COLLATE utf8_hungarian_ci NOT NULL,
  `number_of_questions` int(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `registration_id`, `group_id`, `quiz_name`, `quiz_description`, `number_of_questions`) VALUES
(3, 3, 3, 'ysdf', 'sdfa', 3),
(121, 43, 34, '23123muk4fg', 'as', 312),
(122, 12345, 1233, 'sdfasdfsd', 'fasdhgt', 54),
(123, 3, 1234, 'fsdaf', '4sdf', 3123),
(123123, 1231231, 23123, 'sdadfasdf', 'asdfasdf', 123),
(123234, 234, 1223, 'fssfdafdsdaf', 'sadf', 23);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
