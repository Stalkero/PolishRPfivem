-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Kwi 2019, 18:25
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `essentialmode`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Oszczędności bankowe', 0),
('caution', 'caution', 0),
('property_black_money', 'Mieszkanie na sprzedaż', 0),
('society_ambulance', 'Ambulance', 1),
('society_armyair', 'Marynarka Wojskowa', 1),
('society_banker', 'Bank', 1),
('society_cardealer', 'Sprzedawca aut', 1),
('society_fire', 'Straż Pożarna', 1),
('society_mechanic', 'Mechanik', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'caution', 0, 'steam:11000010a547384'),
(2, 'society_mechanic', 0, NULL),
(3, 'society_ambulance', 0, NULL),
(4, 'society_cardealer', 0, NULL),
(5, 'society_taxi', 0, NULL),
(6, 'society_police', 0, NULL),
(7, 'society_banker', 0, NULL),
(8, 'bank_savings', 0, 'steam:11000010a547384'),
(9, 'property_black_money', 0, 'steam:11000010a547384'),
(10, 'bank_savings', 0, 'steam:11000010307e393'),
(11, 'caution', 0, 'steam:11000010307e393'),
(12, 'property_black_money', 0, 'steam:11000010307e393'),
(13, 'society_fire', 0, NULL),
(14, 'bank_savings', 0, 'steam:11000010757f4a1'),
(15, 'caution', 0, 'steam:11000010757f4a1'),
(16, 'property_black_money', 0, 'steam:11000010757f4a1'),
(17, 'bank_savings', 0, 'steam:110000106b82b67'),
(18, 'caution', 0, 'steam:110000106b82b67'),
(19, 'property_black_money', 0, 'steam:110000106b82b67'),
(20, 'society_armyair', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('armyair', 'Marynarka Wojskowa', 1),
('property', 'Mieszkanie', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Sprzedawca aut', 1),
('society_fire', 'Straż Pożarna', 1),
('society_mechanic', 'Mechanik', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000010a547384', 'Atriom', 'Owner', '1990-10-01', 'm', '180'),
(2, 'steam:11000010307e393', 'Matthew', 'Sanderson', '1980-06-21', 'm', '190'),
(3, 'steam:11000010757f4a1', 'Aaaaa', 'Aaaaaa', '222222', 'm', '180'),
(4, 'steam:11000010757f4a1', 'Marcin', 'Weglowski', '1980-04-22', 'm', '185'),
(5, 'steam:11000010757f4a1', 'Marcin', 'Weglowicz', '1980-04-22', 'm', '186'),
(6, 'steam:11000010a547384', 'Sierzant', 'Bagieta', '1990-09-19', 'm', '180'),
(7, 'steam:110000106b82b67', 'Andrzej', 'Andrzejewski', '1969-06-09', 'm', '169');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Mieszkanie', 0),
('society_ambulance', 'Pogotowie ratunkowe', 1),
('society_fire', 'fire', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_taxi', NULL, '{}'),
(3, 'society_police', NULL, '{}'),
(4, 'property', 'steam:11000010a547384', '{}'),
(5, 'user_glasses', 'steam:11000010a547384', '{}'),
(6, 'user_ears', 'steam:11000010a547384', '{}'),
(7, 'user_helmet', 'steam:11000010a547384', '{}'),
(8, 'user_mask', 'steam:11000010a547384', '{}'),
(9, 'property', 'steam:11000010307e393', '{}'),
(10, 'user_ears', 'steam:11000010307e393', '{}'),
(11, 'user_glasses', 'steam:11000010307e393', '{}'),
(12, 'user_helmet', 'steam:11000010307e393', '{}'),
(13, 'user_mask', 'steam:11000010307e393', '{}'),
(14, 'society_fire', NULL, '{}'),
(15, 'property', 'steam:11000010757f4a1', '{}'),
(16, 'user_glasses', 'steam:11000010757f4a1', '{}'),
(17, 'user_mask', 'steam:11000010757f4a1', '{}'),
(18, 'user_ears', 'steam:11000010757f4a1', '{}'),
(19, 'user_helmet', 'steam:11000010757f4a1', '{}'),
(20, 'user_ears', 'steam:110000106b82b67', '{}'),
(21, 'user_glasses', 'steam:110000106b82b67', '{}'),
(22, 'user_helmet', 'steam:110000106b82b67', '{}'),
(23, 'user_mask', 'steam:110000106b82b67', '{}'),
(24, 'property', 'steam:110000106b82b67', '{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Nadużywanie klaksonu', 30, 0),
(2, 'Przekroczenie lini ciągłej', 40, 0),
(3, 'Jechanie po złej stronie drogi', 250, 0),
(4, 'Nieprawidłowe zawracanie', 250, 0),
(5, 'Nielegalna jazda Off-road', 170, 0),
(6, 'Niedostosowanie się do poleceń Policji', 30, 0),
(7, 'Nieprawidłowe zatrzymanie pojazdu', 150, 0),
(8, 'Nieprawidłowe parkownie', 70, 0),
(9, 'Niezastosowanie się do ruchu prawostronnego (jazda lewym pasem)', 70, 0),
(10, 'Brak informacji o pojeździe', 90, 0),
(11, 'Niezastosowanie się do znaku SOTP', 105, 0),
(12, 'Niezatrzymanie się na czerwonym świetle', 130, 0),
(13, 'Przechodzenie w niedozwolonym miejscu', 100, 0),
(14, 'Jazda nielegalnym pojazdem', 100, 0),
(15, 'Brak prawa jazdy', 1500, 0),
(16, 'Ucieczka z miejsca zdarzenia', 800, 0),
(17, 'Przekroczenie prędkości < 5 mph', 90, 0),
(18, 'Przekroczenie prędkości 5-15 mph', 120, 0),
(19, 'Przekroczenie prędkości 15-30 mph', 180, 0),
(20, 'Przekroczenie prędkości > 30 mph', 300, 0),
(21, 'Utrudnianie przemieszczania się', 110, 1),
(22, 'Publiczne zgorszenie', 90, 1),
(23, 'Niepoprawne zachowanie', 90, 1),
(24, 'Utrudnianie postępowania', 130, 1),
(25, 'Obraza cywilów', 75, 1),
(26, 'Obraza graczy', 110, 1),
(27, 'Groźby werbalne', 90, 1),
(28, 'Przeklinanie na graczy', 150, 1),
(29, 'Dostarczanie fałszywych informacji', 250, 1),
(30, 'Próba korupcji', 1500, 1),
(31, 'Wymachiwanie bronią w mieście', 120, 2),
(32, 'Wymachiwanie niebezpieczną bronią w mieście', 300, 2),
(33, 'Brak pozwolenia na broń', 600, 2),
(34, 'Posiadanie nielegalnej broni', 700, 2),
(35, 'Posiadanie narzędzi do włamań', 300, 2),
(36, 'Złodziej - recydywista', 1800, 2),
(37, 'Rozprowadzanie nielegalnych substancji', 1500, 2),
(38, 'Wytwarzanie nielegalnych substancji', 1500, 2),
(39, 'Posiadanie zakazanych substancji', 650, 2),
(40, 'Porwanie cywila', 1500, 2),
(41, 'Porwanie gracza', 2000, 2),
(42, 'Rabunek', 650, 2),
(43, 'Kradzież z bronią w ręku', 650, 2),
(44, 'Napad na Bank', 1500, 2),
(45, 'Atak na cywila', 2000, 3),
(46, 'Atak na gracza', 2500, 3),
(47, 'Próba morderstwa cywila', 3000, 3),
(48, 'Próba morderstwa gracza', 5000, 3),
(49, 'Zabójstwo cywila z premedytacją', 10000, 3),
(50, 'Zabójstwo gracza z premedytacją', 30000, 3),
(51, 'Nieumyślne spowodowanie śmierci', 1800, 3),
(52, 'Oszustwo', 2000, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Żywy kurczak', 20, 0, 1),
('bandage', 'Bandaż', 20, 0, 1),
('blackberry', 'Telefon', -1, 0, 1),
('blowpipe', 'Palnik', 10, 0, 1),
('bread', 'Chleb', 10, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Części blacharskie', 3, 0, 1),
('carotool', 'Częsci naprawcze', 4, 0, 1),
('clothe', 'Odzież', 40, 0, 1),
('copper', 'Miedź', 56, 0, 1),
('cutted_wood', 'Deski', 20, 0, 1),
('diamond', 'Diamenty', 50, 0, 1),
('essence', 'Ropa', 24, 0, 1),
('fabric', 'Tkanina', 80, 0, 1),
('fish', 'Ryba', 100, 0, 1),
('fixkit', 'Narzedzia naprawcze', 5, 0, 1),
('fixtool', 'Zestaw do naprawy', 6, 0, 1),
('gazbottle', 'Butelka z gazem', 11, 0, 1),
('gold', 'Złoto', 21, 0, 1),
('iron', 'Srebro', 42, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('medikit', 'Defibrylator', 5, 0, 1),
('packaged_chicken', 'Filet z kurczaka', 100, 0, 1),
('packaged_plank', 'Spakowane deski', 100, 0, 1),
('petrol', 'Nieprzetworzone paliwo', 24, 0, 1),
('petrol_raffin', 'Paliwo', 24, 0, 1),
('slaughtered_chicken', 'Zabity kurczak', 20, 0, 1),
('stone', 'Kamień', 7, 0, 1),
('washed_stone', 'Oczyszczony kamień', 7, 0, 1),
('water', 'Woda', 5, 0, 1),
('wood', 'Drewno', 20, 0, 1),
('wool', 'Wełna', 40, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Pogotowie ratunkowe', 1),
('armyair', 'Marynarka Wojskowa', 1),
('banker', 'Bankowiec', 0),
('cardealer', 'Sprzedawca aut', 0),
('fire', 'Straż Pożarna', 1),
('fisherman', 'Rybak', 0),
('fueler', 'Osoba tankująca paliwo', 0),
('garbage', 'Kierowca Śmieciarki', 0),
('lumberjack', 'Drwal', 0),
('mechanic', 'Mechanik', 0),
('miner', 'Górnik', 0),
('police', 'Policja', 1),
('reporter', 'Reporter', 0),
('slaughterer', 'Rzeźnik', 0),
('tailor', 'Krawiec', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Niezatrudniony', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', '', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', '', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', '', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', '', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', '', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', '', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', '', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', '', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'mechanic', 0, 'recrue', 'Praktykant', 12, '{}', '{}'),
(10, 'mechanic', 1, 'novice', 'Nowicjusz', 24, '{}', '{}'),
(11, 'mechanic', 2, 'experimente', 'Doświadczony', 36, '{}', '{}'),
(12, 'mechanic', 3, 'chief', 'Kierownik', 48, '{}', '{}'),
(13, 'mechanic', 4, 'boss', 'Szef', 0, '{}', '{}'),
(14, 'ambulance', 0, 'ambulance', 'Ratownik', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 1, 'doctor', 'Lekarz', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 2, 'chief_doctor', 'Chirurg', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'ambulance', 3, 'boss', 'Ordynator', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(18, 'cardealer', 0, 'recruit', 'Praktykant', 10, '{}', '{}'),
(19, 'cardealer', 1, 'novice', 'Doświadczony', 25, '{}', '{}'),
(20, 'cardealer', 2, 'experienced', 'Kierownik', 40, '{}', '{}'),
(21, 'cardealer', 3, 'boss', 'Szef', 0, '{}', '{}'),
(22, 'taxi', 0, 'recrue', 'Tymczasowy', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(23, 'taxi', 1, 'novice', 'Nowy', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(24, 'taxi', 2, 'experimente', 'Etatowy', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(25, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(26, 'taxi', 4, 'boss', 'Właściciel', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(27, 'police', 0, 'recruit', 'Posterunkowy', 20, '{}', '{}'),
(28, 'police', 1, 'starszy_recruit', 'Starszy Posterunkowy', 0, '{}', ''),
(29, 'police', 6, 'sergeant', 'Aspirant', 60, '{}', '{}'),
(30, 'police', 10, 'lieutenant', 'Komisarz', 85, '{}', '{}'),
(31, 'police', 16, 'boss', 'Generalny Inspektor', 100, '{}', '{}'),
(32, 'banker', 0, 'advisor', 'Doradca', 10, '{}', '{}'),
(33, 'banker', 1, 'banker', 'Bankier', 20, '{}', '{}'),
(34, 'banker', 2, 'business_banker', 'Bankier biznesowy', 30, '{}', '{}'),
(35, 'banker', 3, 'trader', 'Handlowiec', 40, '{}', '{}'),
(36, 'banker', 4, 'boss', 'Główny bankier', 0, '{}', '{}'),
(289, 'police', 2, 'officer', 'Sierżant', 40, '{}', '{}'),
(290, 'police', 3, 'starszy_officer', 'Starszy sierżant', 700, '{}', '{}'),
(291, 'police', 4, 'sztabowy', 'Sierżant Sztabowy', 600, '{}', '{}'),
(292, 'police', 5, 'mlodszy_aspirant', 'Młodszy Aspirant', 500, '{}', '{}'),
(294, 'police', 7, 'starszy_aspirant', 'Starszy Aspirant', 700, '{}', '{}'),
(295, 'police', 8, 'aspirant_sztabowy', 'Aspirant Sztabowy', 500, '{}', '{}'),
(296, 'police', 9, 'podkomisarz', 'Podkomisarz', 600, '{}', '{}'),
(297, 'police', 11, 'nadkomisarz', 'Nadkomisarz', 800, '{}', '{}'),
(298, 'police', 12, 'podinspektor', 'Podinspektor', 890, '{}', '{}'),
(299, 'police', 13, 'mlinspektor', 'Młodszy Inspektor', 800, '{}', '{}'),
(300, 'police', 14, 'inspektor', 'Inspektor', 800, '{}', '{}'),
(301, 'police', 15, 'nadinspektor', 'Nadinspektor', 700, '{}', '{}'),
(302, 'fire', 0, 'recruit', 'Strażak', 20, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(304, 'fire', 2, 'lieutenant', 'Sekcyjny', 65, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(306, 'fire', 1, 'starszy_strazak', 'Starszy Strażak', 2342, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(307, 'fire', 3, 'starszy_sekcyjny', 'Starszy sekcyjny', 344, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(308, 'fire', 4, 'mlodzszy_ogniomistrz', 'Młodszy Ogniomistrz', 1234, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(309, 'fire', 5, 'ogniomistrz', 'Ogniomistrz', 400, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(310, 'fire', 6, 'starszy_ogniomistrz', 'Starszy Ogniomistrz', 400, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(311, 'fire', 7, 'mlodszy_aspirant', 'Młodszy Aspirant', 600, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(312, 'fire', 8, 'aspirant', 'Aspirant', 500, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(313, 'fire', 9, 'starszy_aspirant', 'Starszy Aspirant', 800, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', ' {\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(314, 'fire', 10, 'aspirant_sztabowy', 'Aspirant Sztabowy', 500, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(315, 'fire', 11, 'mlodszy_kapitan', 'Młodszy Kapitan', 900, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(316, 'fire', 11, 'mlodszy_kapitan', 'Młodszy Kapitan', 500, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(317, 'fire', 12, 'kapitan', 'Kapitan', 300, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(318, 'fire', 13, 'starszy_kapitan', 'Starszy Kapitan', 500, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(319, 'fire', 14, 'mlodszy_brygadier', 'Młodszy Brygadier', 800, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(320, 'fire', 15, 'brygadier', 'Brygadier', 700, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(321, 'fire', 16, 'starszy_brygadier', 'Starszy Brygadier', 4000, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(322, 'fire', 17, 'nadbrygadier', 'Nadbrygadier', 4300, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(323, 'fire', 18, 'boss', 'Generał Brygadier', 5000, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(324, 'armyair', 0, 'marynarz', 'Marynarz', 600, '{}', '{}'),
(325, 'armyair', 1, 'starszy_marynarz', 'Starszy Marynarz', 700, '{}', '{}'),
(326, 'armyair', 2, 'mat', 'Mat', 800, '{}', '{}'),
(327, 'armyair', 3, 'starszy_mat', 'Starszy Mat', 900, '{}', '{}'),
(328, 'armyair', 4, 'bosmanmat', 'Bosmanmat', 1000, '{}', '{}'),
(329, 'armyair', 5, 'bosman', 'Bosman', 1100, '{}', '{}'),
(330, 'armyair', 6, 'starszy_bosman', 'Starszy Bosman', 1200, '{}', '{}'),
(331, 'armyair', 7, 'ml_chor_mar', 'Młodszy Chorąży Marynarki', 1300, '{}', '{}'),
(332, 'armyair', 8, 'chor_mar', 'Chorąży Marynarki', 1400, '{}', '{}'),
(333, 'armyair', 9, 'starszy_chor_mar', 'Starszy Chorąży Marynarki', 1500, '{}', '{}'),
(334, 'armyair', 10, 'starszy_chor_sztab_mar', 'Starszy Chorąży Sztabowy Marynarki', 1600, '{}', '{}'),
(335, 'armyair', 11, 'podpor_mar', 'Podporucznik Marynarki', 1700, '{}', '{}'),
(336, 'armyair', 12, 'por_mar', 'Porucznik Marynarki', 1800, '{}', '{}'),
(337, 'armyair', 13, 'kap_mar', 'Kapitan Marynarki', 1900, '{}', '{}'),
(338, 'armyair', 14, 'kom_podpor', 'Komandor podporucznik', 2000, '{}', '{}'),
(339, 'armyair', 15, 'kom_por', 'Komandor Porucznik', 2100, '{}', '{}'),
(340, 'armyair', 16, 'komandor', 'Komandor', 2200, '{}', '{}'),
(341, 'armyair', 17, 'kontr_adm', 'Kontradmirał', 2300, '{}', '{}'),
(342, 'armyair', 18, 'wice_adm', 'Wiceadmirał', 2400, '{}', '{}'),
(343, 'armyair', 19, 'adm_floty', 'Admirał Floty', 2500, '{}', '{}'),
(344, 'armyair', 20, 'boss', 'Admirał', 2600, '{}', '{}'),
(345, 'garbage', 0, 'employee', '', 750, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Zezwolenie na prowadzenie pojazdów'),
('drive', 'Prawo jazdy kategorii B'),
('drive_bike', 'Prawo jazdy kategorii A'),
('drive_truck', 'Prawo jazdy kategorii C'),
('weapon', 'Zezwolenie na posiadanie broni'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(2, 'RichardMajesticApt2', 1700000, 0, 'steam:11000010307e393');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT '0',
  `vehiclename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'voiture'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`, `fourrieremecano`, `vehiclename`) VALUES
('steam:11000010307e393', 1, 'FYQ 258', '{\"modTrunk\":-1,\"modLivery\":-1,\"neonColor\":[0,150,255],\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"dirtLevel\":3.3316247463226,\"extras\":[],\"color2\":120,\"modHood\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modXenon\":1,\"modEngine\":3,\"modSpoilers\":-1,\"modDial\":-1,\"tyreSmokeColor\":[255,215,0],\"modOrnaments\":-1,\"pearlescentColor\":82,\"modExhaust\":-1,\"neonEnabled\":[1,1,1,1],\"modBrakes\":2,\"modBackWheels\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modFender\":-1,\"color1\":158,\"health\":994,\"modRightFender\":-1,\"modAerials\":-1,\"wheels\":0,\"modStruts\":-1,\"windowTint\":1,\"model\":-1403128555,\"wheelColor\":158,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modTurbo\":1,\"modAirFilter\":-1,\"modHorns\":-1,\"plateIndex\":1,\"modRearBumper\":-1,\"modTank\":-1,\"modSmokeEnabled\":1,\"modWindows\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modTransmission\":2,\"modArmor\":4,\"modFrontWheels\":41,\"plate\":\"FYQ 258\",\"modShifterLeavers\":-1}', 'car', NULL, 1, 0, 'voiture'),
('steam:11000010a547384', 0, 'HDZ 442', '{\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modAerials\":-1,\"plateIndex\":4,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"model\":353883353,\"modFender\":-1,\"modLivery\":0,\"modBrakes\":-1,\"wheelColor\":156,\"modSeats\":-1,\"extras\":{\"2\":true,\"1\":true,\"7\":true,\"11\":true,\"10\":true},\"color2\":0,\"plate\":\"HDZ 442\",\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":112,\"modFrontWheels\":-1,\"dirtLevel\":4.0,\"modTrimB\":-1,\"modHood\":-1,\"modRoof\":-1,\"modRearBumper\":-1,\"color1\":134,\"modHorns\":-1,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modXenon\":false,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"wheels\":0,\"windowTint\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"modGrille\":-1,\"modWindows\":-1,\"health\":1000,\"modTrimA\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modTank\":-1}', 'helicopter', 'police', 1, 0, 'voiture'),
('steam:11000010a547384', 1, 'LEW 661', '{\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"health\":987,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"modHood\":-1,\"model\":1663218586,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modWindows\":-1,\"dirtLevel\":6.1419954299927,\"color1\":0,\"modDashboard\":-1,\"plateIndex\":0,\"windowTint\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"color2\":0,\"modBackWheels\":-1,\"modEngine\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"wheels\":7,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"wheelColor\":0,\"extras\":[],\"modTrimB\":-1,\"modRoof\":-1,\"plate\":\"LEW 661\",\"pearlescentColor\":3,\"modStruts\":-1,\"modHorns\":-1}', 'car', NULL, 0, 0, 'voiture'),
('steam:11000010a547384', 0, 'MWN 556', '{\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modFender\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"plate\":\"MWN 556\",\"wheels\":1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"pearlescentColor\":0,\"modExhaust\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"extras\":[],\"modRearBumper\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"health\":1000,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modXenon\":false,\"modTrimA\":-1,\"modHood\":-1,\"modTransmission\":-1,\"dirtLevel\":2.0,\"modDial\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"modArmor\":-1,\"model\":2046537925,\"modLivery\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"color1\":134,\"modBrakes\":-1,\"color2\":134,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modRoof\":-1}', 'car', 'police', 0, 0, 'voiture'),
('steam:11000010a547384', 0, 'PBB 702', '{\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modFender\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"plate\":\"PBB 702\",\"wheels\":1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"pearlescentColor\":0,\"modExhaust\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"extras\":[],\"modRearBumper\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"health\":1000,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modXenon\":false,\"modTrimA\":-1,\"modHood\":-1,\"modTransmission\":-1,\"dirtLevel\":2.0,\"modDial\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"modArmor\":-1,\"model\":2046537925,\"modLivery\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"color1\":134,\"modBrakes\":-1,\"color2\":134,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modRoof\":-1}', 'car', 'police', 1, 0, 'voiture'),
('steam:11000010a547384', 0, 'VQU 973', '{\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modSpoilers\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":[],\"modGrille\":-1,\"color2\":134,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"model\":2046537925,\"modHorns\":-1,\"modTurbo\":false,\"modXenon\":false,\"modTrimA\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modStruts\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modFender\":-1,\"modFrame\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"color1\":134,\"modTank\":-1,\"plate\":\"VQU 973\",\"modRoof\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modSpeakers\":-1,\"wheels\":1,\"dirtLevel\":2.0,\"modBrakes\":-1,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"wheelColor\":156,\"modWindows\":-1,\"plateIndex\":4,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', 'police', 1, 0, 'voiture'),
('steam:11000010a547384', 0, 'WSB 584', '{\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modSpoilers\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":[],\"modGrille\":-1,\"color2\":134,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"model\":2046537925,\"modHorns\":-1,\"modTurbo\":false,\"modXenon\":false,\"modTrimA\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modStruts\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modFender\":-1,\"modFrame\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"color1\":134,\"modTank\":-1,\"plate\":\"WSB 584\",\"modRoof\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modSpeakers\":-1,\"wheels\":1,\"dirtLevel\":2.0,\"modBrakes\":-1,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"wheelColor\":156,\"modWindows\":-1,\"plateIndex\":4,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', 'police', 1, 0, 'voiture');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Basic apartment', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Modern Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Modern Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Modern Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Mody Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Mody Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Mody Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Vibrant Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Vibrant Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Vibrant Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Sharp Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Sharp Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Sharp Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Monochrome Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Monochrome Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Monochrome Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Seductive Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Seductive Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Seductive Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Regal Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Regal Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Regal Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Aqua Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Aqua Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Aqua Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `phone_number` int(11) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `tattoos` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `is_dead`, `last_property`, `status`, `tattoos`) VALUES
('steam:11000010307e393', 'license:e98045405b2f644c15c0a496054f465cf03fa0d0', 446040, 'WODZU', '{\"sex\":0,\"ears_1\":-1,\"eyebrows_3\":0,\"beard_1\":10,\"bags_1\":0,\"blush_2\":0,\"tshirt_1\":10,\"makeup_1\":0,\"arms\":1,\"blemishes_2\":0,\"eyebrows_4\":0,\"skin\":0,\"mask_2\":0,\"bproof_2\":0,\"watches_1\":-1,\"hair_1\":1,\"pants_1\":10,\"lipstick_4\":0,\"sun_2\":0,\"bags_2\":0,\"pants_2\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"eyebrows_1\":0,\"face\":4,\"lipstick_1\":0,\"makeup_4\":0,\"torso_2\":0,\"complexion_2\":0,\"decals_1\":0,\"arms_2\":0,\"ears_2\":0,\"blemishes_1\":0,\"chest_2\":0,\"eye_color\":0,\"age_1\":0,\"watches_2\":0,\"helmet_1\":-1,\"lipstick_3\":0,\"hair_color_1\":0,\"decals_2\":0,\"eyebrows_2\":0,\"age_2\":0,\"makeup_3\":0,\"complexion_1\":0,\"chain_2\":0,\"hair_color_2\":0,\"hair_2\":1,\"bodyb_2\":0,\"chain_1\":0,\"beard_2\":10,\"shoes_2\":2,\"shoes_1\":3,\"bproof_1\":0,\"helmet_2\":0,\"lipstick_2\":0,\"mask_1\":0,\"beard_3\":0,\"blush_3\":0,\"chest_1\":0,\"beard_4\":0,\"bracelets_2\":0,\"torso_1\":10,\"sun_1\":0,\"moles_2\":0,\"chest_3\":0,\"glasses_2\":0,\"glasses_1\":0,\"blush_1\":0,\"bodyb_1\":0,\"moles_1\":0,\"makeup_2\":0}', 'armyair', 20, '[{\"label\":\"Nóż\",\"name\":\"WEAPON_KNIFE\",\"components\":[],\"ammo\":0},{\"label\":\"Pałka\",\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"ammo\":0},{\"label\":\"łom\",\"name\":\"WEAPON_CROWBAR\",\"components\":[],\"ammo\":0},{\"label\":\"Pistolet\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"ammo\":233},{\"label\":\"Ap pistol\",\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"],\"ammo\":233},{\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"ammo\":124},{\"label\":\"Assault rifle\",\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"ammo\":227},{\"label\":\"Carbine rifle\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"],\"ammo\":227},{\"label\":\"Advanced rifle\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_default\"],\"ammo\":227},{\"label\":\"Gaśnica\",\"name\":\"WEAPON_FIREEXTINGUISHER\",\"components\":[],\"ammo\":1000},{\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"ammo\":250},{\"label\":\"Flara\",\"name\":\"WEAPON_FLAREGUN\",\"components\":[],\"ammo\":14},{\"label\":\"Latarka\",\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"ammo\":0}]', '{\"z\":30.7,\"y\":-981.1,\"x\":437.3}', 23060, 0, 'superadmin', 'Matthew', 'Sanderson', '1980-06-21', 'm', '190', 15435, 0, NULL, '[{\"name\":\"hunger\",\"percent\":99.16,\"val\":991600},{\"name\":\"thirst\",\"percent\":99.37,\"val\":993700},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL),
('steam:110000106b82b67', 'license:06b5ccb3c591e38243b78bec37cc90d549fcddee', 0, 'admiralus', '{\"arms\":0,\"beard_2\":0,\"beard_3\":0,\"bproof_2\":0,\"hair_color_2\":0,\"chain_1\":0,\"pants_2\":0,\"moles_2\":0,\"chain_2\":0,\"makeup_1\":0,\"makeup_3\":0,\"eyebrows_3\":0,\"eyebrows_1\":0,\"hair_1\":0,\"mask_2\":0,\"bags_2\":0,\"decals_1\":0,\"eyebrows_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"decals_2\":0,\"glasses_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"chest_1\":0,\"blush_1\":0,\"age_1\":0,\"beard_4\":0,\"tshirt_1\":0,\"bodyb_1\":0,\"pants_1\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"arms_2\":0,\"hair_2\":0,\"makeup_2\":0,\"complexion_2\":0,\"helmet_1\":-1,\"blemishes_1\":0,\"lipstick_3\":0,\"chest_3\":0,\"blush_3\":0,\"face\":0,\"age_2\":0,\"mask_1\":0,\"complexion_1\":0,\"tshirt_2\":0,\"sun_2\":0,\"chest_2\":0,\"beard_1\":0,\"hair_color_1\":0,\"blush_2\":0,\"sex\":0,\"bracelets_1\":-1,\"skin\":0,\"bodyb_2\":0,\"torso_2\":0,\"bags_1\":0,\"bproof_1\":0,\"eye_color\":0,\"helmet_2\":0,\"watches_2\":0,\"sun_1\":0,\"ears_1\":-1,\"torso_1\":0,\"lipstick_4\":0,\"lipstick_2\":0,\"glasses_2\":0,\"blemishes_2\":0,\"shoes_1\":0,\"moles_1\":0}', 'unemployed', 0, '[{\"ammo\":27,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Pump shotgun\"}]', '{\"z\":25.3,\"y\":-993.0,\"x\":459.1}', 800, 0, 'user', 'Andrzej', 'Andrzejewski', '1969-06-09', 'm', '169', 45914, 0, NULL, '[{\"percent\":49.62,\"val\":496200,\"name\":\"hunger\"},{\"percent\":49.715,\"val\":497150,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL),
('steam:11000010757f4a1', 'license:fae4e7d65c45fec3f9a8170c7d1225870ab5c16a', 993291750, 'Sefarin', '{\"bodyb_2\":0,\"blush_3\":0,\"beard_2\":10,\"arms\":0,\"age_1\":0,\"tshirt_1\":0,\"sex\":0,\"bodyb_1\":0,\"ears_2\":0,\"hair_2\":0,\"bags_2\":0,\"moles_1\":0,\"chest_1\":0,\"complexion_2\":0,\"chest_3\":0,\"decals_2\":0,\"bproof_2\":0,\"pants_2\":0,\"sun_1\":0,\"skin\":0,\"beard_3\":0,\"eyebrows_3\":0,\"watches_1\":0,\"decals_1\":0,\"complexion_1\":0,\"blemishes_2\":0,\"blush_1\":0,\"hair_1\":47,\"mask_2\":0,\"glasses_2\":0,\"age_2\":0,\"makeup_2\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"bracelets_1\":-1,\"lipstick_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"lipstick_1\":0,\"eye_color\":0,\"pants_1\":0,\"helmet_2\":0,\"moles_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"torso_2\":0,\"mask_1\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"bags_1\":0,\"makeup_3\":0,\"glasses_1\":0,\"hair_color_2\":0,\"eyebrows_4\":0,\"sun_2\":0,\"chain_2\":0,\"hair_color_1\":0,\"beard_1\":18,\"ears_1\":-1,\"face\":22,\"eyebrows_2\":8,\"shoes_1\":0,\"blemishes_1\":0,\"makeup_4\":0,\"bproof_1\":0,\"beard_4\":0,\"watches_2\":0,\"chest_2\":0,\"chain_1\":0,\"torso_1\":0,\"blush_2\":0}', 'police', 15, '[{\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Pałka\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistolet\",\"ammo\":250,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_APPISTOL\",\"label\":\"Ap pistol\",\"ammo\":250,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_REVOLVER\",\"label\":\"Ciężki rewolwer\",\"ammo\":250,\"components\":[]},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"ammo\":93,\"components\":[\"flashlight\",\"suppressor\"]},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"label\":\"Advanced rifle\",\"ammo\":0,\"components\":[\"clip_extended\",\"flashlight\",\"scope\"]},{\"name\":\"WEAPON_RPG\",\"label\":\"Wyrzutnia rakiet\",\"ammo\":9,\"components\":[]},{\"name\":\"WEAPON_STUNGUN\",\"label\":\"Tazer\",\"ammo\":100,\"components\":[]},{\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Latarka\",\"ammo\":0,\"components\":[]}]', '{\"z\":44.2,\"y\":-755.1,\"x\":-42.1}', 6500, 0, 'superadmin', 'Marcin', 'Weglowicz', '1980-04-22', 'm', '186', 17569, 0, NULL, '[{\"val\":493000,\"name\":\"hunger\",\"percent\":49.3},{\"val\":494750,\"name\":\"thirst\",\"percent\":49.475},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL),
('steam:11000010a547384', 'license:a95ca55e9aea9f2be09f84c8f8a9fdb9240eccdc', 0, 'Stalkero', '{\"arms\":1,\"beard_2\":10,\"beard_3\":0,\"bproof_2\":0,\"hair_color_1\":2,\"chain_1\":0,\"pants_2\":0,\"moles_2\":0,\"chain_2\":0,\"makeup_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"hair_1\":2,\"mask_2\":0,\"bags_2\":0,\"decals_1\":0,\"eyebrows_2\":10,\"ears_2\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"glasses_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"chest_1\":0,\"blush_1\":0,\"age_1\":0,\"beard_4\":0,\"tshirt_1\":14,\"bodyb_1\":0,\"pants_1\":9,\"makeup_4\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"arms_2\":0,\"hair_2\":0,\"makeup_2\":0,\"complexion_2\":0,\"helmet_1\":-1,\"blemishes_1\":0,\"torso_1\":37,\"chest_3\":0,\"blush_3\":0,\"face\":10,\"age_2\":0,\"mask_1\":0,\"complexion_1\":0,\"tshirt_2\":0,\"sun_2\":0,\"hair_color_2\":0,\"beard_1\":0,\"sun_1\":0,\"blush_2\":0,\"shoes_1\":31,\"chest_2\":0,\"lipstick_3\":0,\"skin\":0,\"watches_2\":0,\"bags_1\":0,\"bproof_1\":0,\"helmet_2\":0,\"eyebrows_3\":0,\"bracelets_1\":-1,\"torso_2\":0,\"sex\":0,\"eye_color\":0,\"lipstick_4\":0,\"ears_1\":-1,\"glasses_2\":0,\"decals_2\":0,\"blemishes_2\":0,\"moles_1\":0}', 'armyair', 20, '[{\"label\":\"Assault rifle\",\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"ammo\":242},{\"label\":\"ładunek przylepny\",\"name\":\"WEAPON_STICKYBOMB\",\"components\":[],\"ammo\":25}]', '{\"z\":15.3,\"y\":-4719.4,\"x\":3088.2}', 152205, 0, 'superadmin', 'Sierzant', 'Bagieta', '1990-09-19', 'm', '180', 46232, 0, NULL, '[{\"name\":\"hunger\",\"percent\":43.61,\"val\":436100},{\"name\":\"thirst\",\"percent\":45.2075,\"val\":452075},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:11000010a547384', 'black_money', 0),
(2, 'steam:11000010307e393', 'black_money', 0),
(3, 'steam:11000010757f4a1', 'black_money', 0),
(4, 'steam:110000106b82b67', 'black_money', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:11000010a547384', 'gold', 0),
(2, 'steam:11000010a547384', 'diamond', 0),
(3, 'steam:11000010a547384', 'cutted_wood', 0),
(4, 'steam:11000010a547384', 'fish', 0),
(5, 'steam:11000010a547384', 'fabric', 0),
(6, 'steam:11000010a547384', 'wood', 0),
(7, 'steam:11000010a547384', 'packaged_plank', 0),
(8, 'steam:11000010a547384', 'stone', 0),
(9, 'steam:11000010a547384', 'alive_chicken', 0),
(10, 'steam:11000010a547384', 'packaged_chicken', 0),
(11, 'steam:11000010a547384', 'slaughtered_chicken', 0),
(12, 'steam:11000010a547384', 'iron', 0),
(13, 'steam:11000010a547384', 'petrol_raffin', 0),
(14, 'steam:11000010a547384', 'wool', 0),
(15, 'steam:11000010a547384', 'petrol', 0),
(16, 'steam:11000010a547384', 'washed_stone', 0),
(17, 'steam:11000010a547384', 'essence', 0),
(18, 'steam:11000010a547384', 'copper', 0),
(19, 'steam:11000010a547384', 'clothe', 0),
(20, 'steam:11000010a547384', 'fixkit', 198),
(21, 'steam:11000010a547384', 'gazbottle', 0),
(22, 'steam:11000010a547384', 'blowpipe', 0),
(23, 'steam:11000010a547384', 'carokit', 0),
(24, 'steam:11000010a547384', 'fixtool', 0),
(25, 'steam:11000010a547384', 'carotool', 0),
(26, 'steam:11000010a547384', 'blackberry', 0),
(27, 'steam:11000010a547384', 'medikit', 0),
(28, 'steam:11000010a547384', 'bandage', 0),
(29, 'steam:11000010a547384', 'cannabis', 0),
(30, 'steam:11000010a547384', 'marijuana', 0),
(31, 'steam:11000010a547384', 'bread', 50),
(32, 'steam:11000010a547384', 'water', 63),
(33, 'steam:11000010307e393', 'marijuana', 0),
(34, 'steam:11000010307e393', 'wool', 0),
(35, 'steam:11000010307e393', 'cannabis', 0),
(36, 'steam:11000010307e393', 'carokit', 0),
(37, 'steam:11000010307e393', 'wood', 0),
(38, 'steam:11000010307e393', 'essence', 0),
(39, 'steam:11000010307e393', 'fixtool', 0),
(40, 'steam:11000010307e393', 'packaged_chicken', 0),
(41, 'steam:11000010307e393', 'gold', 0),
(42, 'steam:11000010307e393', 'medikit', 0),
(43, 'steam:11000010307e393', 'cutted_wood', 0),
(44, 'steam:11000010307e393', 'fabric', 0),
(45, 'steam:11000010307e393', 'stone', 0),
(46, 'steam:11000010307e393', 'bandage', 0),
(47, 'steam:11000010307e393', 'slaughtered_chicken', 0),
(48, 'steam:11000010307e393', 'packaged_plank', 0),
(49, 'steam:11000010307e393', 'fish', 0),
(50, 'steam:11000010307e393', 'petrol_raffin', 0),
(51, 'steam:11000010307e393', 'blackberry', 0),
(52, 'steam:11000010307e393', 'gazbottle', 0),
(53, 'steam:11000010307e393', 'copper', 0),
(54, 'steam:11000010307e393', 'petrol', 0),
(55, 'steam:11000010307e393', 'water', 0),
(56, 'steam:11000010307e393', 'washed_stone', 0),
(57, 'steam:11000010307e393', 'clothe', 0),
(58, 'steam:11000010307e393', 'iron', 0),
(59, 'steam:11000010307e393', 'fixkit', 995),
(60, 'steam:11000010307e393', 'carotool', 0),
(61, 'steam:11000010307e393', 'alive_chicken', 0),
(62, 'steam:11000010307e393', 'blowpipe', 0),
(63, 'steam:11000010307e393', 'diamond', 0),
(64, 'steam:11000010307e393', 'bread', 0),
(65, 'steam:11000010757f4a1', 'medikit', 0),
(66, 'steam:11000010757f4a1', 'packaged_chicken', 0),
(67, 'steam:11000010757f4a1', 'wool', 0),
(68, 'steam:11000010757f4a1', 'wood', 0),
(69, 'steam:11000010757f4a1', 'essence', 0),
(70, 'steam:11000010757f4a1', 'copper', 0),
(71, 'steam:11000010757f4a1', 'carokit', 0),
(72, 'steam:11000010757f4a1', 'iron', 0),
(73, 'steam:11000010757f4a1', 'clothe', 0),
(74, 'steam:11000010757f4a1', 'fixtool', 0),
(75, 'steam:11000010757f4a1', 'fabric', 0),
(76, 'steam:11000010757f4a1', 'bandage', 0),
(77, 'steam:11000010757f4a1', 'cannabis', 0),
(78, 'steam:11000010757f4a1', 'carotool', 0),
(79, 'steam:11000010757f4a1', 'cutted_wood', 0),
(80, 'steam:11000010757f4a1', 'bread', 0),
(81, 'steam:11000010757f4a1', 'packaged_plank', 0),
(82, 'steam:11000010757f4a1', 'fixkit', 98),
(83, 'steam:11000010757f4a1', 'stone', 0),
(84, 'steam:11000010757f4a1', 'petrol', 0),
(85, 'steam:11000010757f4a1', 'gold', 0),
(86, 'steam:11000010757f4a1', 'water', 0),
(87, 'steam:11000010757f4a1', 'diamond', 0),
(88, 'steam:11000010757f4a1', 'marijuana', 0),
(89, 'steam:11000010757f4a1', 'gazbottle', 0),
(90, 'steam:11000010757f4a1', 'slaughtered_chicken', 0),
(91, 'steam:11000010757f4a1', 'fish', 0),
(92, 'steam:11000010757f4a1', 'blowpipe', 0),
(93, 'steam:11000010757f4a1', 'washed_stone', 0),
(94, 'steam:11000010757f4a1', 'blackberry', 0),
(95, 'steam:11000010757f4a1', 'petrol_raffin', 0),
(96, 'steam:11000010757f4a1', 'alive_chicken', 0),
(97, 'steam:110000106b82b67', 'alive_chicken', 0),
(98, 'steam:110000106b82b67', 'medikit', 0),
(99, 'steam:110000106b82b67', 'wool', 0),
(100, 'steam:110000106b82b67', 'copper', 0),
(101, 'steam:110000106b82b67', 'wood', 0),
(102, 'steam:110000106b82b67', 'petrol', 0),
(103, 'steam:110000106b82b67', 'water', 0),
(104, 'steam:110000106b82b67', 'packaged_plank', 0),
(105, 'steam:110000106b82b67', 'slaughtered_chicken', 0),
(106, 'steam:110000106b82b67', 'stone', 0),
(107, 'steam:110000106b82b67', 'bread', 0),
(108, 'steam:110000106b82b67', 'fixtool', 0),
(109, 'steam:110000106b82b67', 'gold', 0),
(110, 'steam:110000106b82b67', 'carotool', 0),
(111, 'steam:110000106b82b67', 'washed_stone', 0),
(112, 'steam:110000106b82b67', 'fabric', 0),
(113, 'steam:110000106b82b67', 'clothe', 0),
(114, 'steam:110000106b82b67', 'carokit', 0),
(115, 'steam:110000106b82b67', 'fixkit', 0),
(116, 'steam:110000106b82b67', 'blowpipe', 0),
(117, 'steam:110000106b82b67', 'essence', 0),
(118, 'steam:110000106b82b67', 'fish', 0),
(119, 'steam:110000106b82b67', 'petrol_raffin', 0),
(120, 'steam:110000106b82b67', 'packaged_chicken', 0),
(121, 'steam:110000106b82b67', 'blackberry', 0),
(122, 'steam:110000106b82b67', 'marijuana', 0),
(123, 'steam:110000106b82b67', 'diamond', 0),
(124, 'steam:110000106b82b67', 'iron', 0),
(125, 'steam:110000106b82b67', 'cutted_wood', 0),
(126, 'steam:110000106b82b67', 'gazbottle', 0),
(127, 'steam:110000106b82b67', 'cannabis', 0),
(128, 'steam:110000106b82b67', 'bandage', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'weapon', 'steam:11000010307e393'),
(5, 'dmv', 'steam:11000010a547384');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `user_parkings`
--

INSERT INTO `user_parkings` (`id`, `identifier`, `garage`, `zone`, `vehicle`) VALUES
(6, 'steam:11000010a547384', 'MiltonDrive', 1, '{\"modPlateHolder\":-1,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"color2\":7,\"pearlescentColor\":3,\"modSmokeEnabled\":1,\"modAerials\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modBrakes\":-1,\"modRoof\":-1,\"wheelColor\":0,\"modTrimB\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modDial\":-1,\"health\":1000,\"modXenon\":false,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"dirtLevel\":3.0358073711395,\"modLivery\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"plate\":\"08ICV531\",\"modArmor\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"wheels\":7,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"color1\":7,\"modSuspension\":-1,\"extras\":[],\"modWindows\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modArchCover\":-1,\"model\":1663218586,\"modEngineBlock\":-1}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Adder', 'adder', 900000, 'super'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `name`, `label`) VALUES
(1, 'compacts', 'Compacts'),
(2, 'coupes', 'Coupés'),
(3, 'sedans', 'Sedans'),
(4, 'sports', 'Sports'),
(5, 'sportsclassics', 'Sports Classics'),
(6, 'super', 'Supercars'),
(7, 'muscle', 'Muscle'),
(8, 'offroad', 'Off Road'),
(9, 'suvs', 'SUVs'),
(10, 'vans', 'Vans'),
(11, 'motorcycles', 'Motorcycles');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  ADD KEY `index_datastore_name` (`name`);

--
-- Indeksy dla tabeli `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indeksy dla tabeli `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `vehsowned` (`owner`);

--
-- Indeksy dla tabeli `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indeksy dla tabeli `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT dla tabeli `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT dla tabeli `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT dla tabeli `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
