-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2023 at 09:04 PM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bluementa`
--

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `Question` (
  `question_id` int NOT NULL,
  `registration_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `question_question` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `question_answers` varchar(500) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `question_markable_answers` int NOT NULL,
  `question_correct_answers` varchar(500) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `question_description` varchar(500) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `question_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `Question`
--

INSERT INTO `Question` (`question_id`, `registration_id`, `quiz_id`, `question_question`, `question_answers`, `question_markable_answers`, `question_correct_answers`, `question_description`, `question_type`) VALUES
(1, 1, 1, 'Mennyi 2+2?', '4;7;11;19', 1, '4', 'Valami mas', 1),
(2, 2, 1, 'Mennyi 5+5?', '12;21;10;2', 1, '1', 'Valami meg egy', 1),
(3, 3, 2, 'Melyikek magyar szavak?', 'tapasz;ice;irodalom;ablak;picture', 3, 'tapasz;irodalom;ablak', 'Melyik magyar szo', 2),
(4, 3, 3, 'Melyikek angol szavak?', 'tea;towel;charger;kuplung;chair', 4, 'chair;tea;towel;charger', 'Melyikek angol szavak?', 2),
(5, 2, 1, 'Mi a parja?', 'piros;auto;sarga;busz', 0, 'piros:sarga;auto:busz', 'Melyik szavak jelentese hasonlo', 3),
(6, 1, 2, 'Melyek tartoznak ossze?', 'tusolo;furdo szoba;tv;nappali;takaro;halo szoba', 0, 'tv:nappali;tusolo:furdo szoba;takaro:halo szoba', 'Melyik tagy melyk helyiseghez tartozik?', 3),
(7, 4, 2, 'Rakd sorrendbe az esemenyeket!', 'Honfoglalas;Masodik VH;Ipari forradalom;Elso VH', 0, 'Honfoglalas;Ipari forradalom;Elso VH;Masodik VH', 'Milyen sorrendben voltak az esemenyek?', 4),
(8, 4, 3, 'Milyen sorrendben eszel?', 'Ebed;Vacsora;Tiz orai;Reggeli;Uzsonna', 0, 'Reggeli;Tiz orai;Ebed:Uzsonna;Vacsora', 'Milyen sorrendben jonnek az etkezesek egymas utan?', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Question`
--
ALTER TABLE `Question`
  MODIFY `question_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
