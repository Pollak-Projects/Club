-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 21. 13:15
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
-- Adatbázis: `csoport`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapat`
--

CREATE TABLE `csapat` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `group_description` varchar(400) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `csapat`
--

INSERT INTO `csapat` (`group_id`, `group_name`, `group_description`) VALUES
(2, 'Valakiék', 'hoppá'),
(3, 'dvsvdsv', ''),
(6, 'Egy új csapat', 'leírással');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felh`
--

CREATE TABLE `felh` (
  `user_id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `user_permission_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felh`
--

INSERT INTO `felh` (`user_id`, `nev`, `user_permission_level`) VALUES
(1, 'nem', 1),
(2, 'de', 1),
(3, 'open the noor', 1),
(4, 'Yum', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tagok`
--

CREATE TABLE `tagok` (
  `csop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csapat`
--
ALTER TABLE `csapat`
  ADD PRIMARY KEY (`group_id`);

--
-- A tábla indexei `felh`
--
ALTER TABLE `felh`
  ADD PRIMARY KEY (`user_id`);

--
-- A tábla indexei `tagok`
--
ALTER TABLE `tagok`
  ADD KEY `csop_id` (`csop_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csapat`
--
ALTER TABLE `csapat`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `felh`
--
ALTER TABLE `felh`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `tagok`
--
ALTER TABLE `tagok`
  ADD CONSTRAINT `tagok_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `felh` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tagok_ibfk_2` FOREIGN KEY (`csop_id`) REFERENCES `csapat` (`group_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
