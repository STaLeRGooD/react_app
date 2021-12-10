-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 06 2021 г., 11:21
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `music`
--
CREATE DATABASE IF NOT EXISTS `music` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `music`;

-- --------------------------------------------------------

--
-- Структура таблицы `album_list`
--

CREATE TABLE `album_list` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `label_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `album_list`
--

INSERT INTO `album_list` (`id`, `title`, `label_id`) VALUES
(1, 'Monstercat Uncaged - Vol. 1 (Album Mix)', 1),
(2, 'Monstercat Uncaged - Vol. 2 (Album Mix)', 1),
(3, 'Monstercat Uncaged - Vol. 3 (Album Mix)', 1),
(4, 'Monstercat Uncaged - Vol. 4 (Album Mix)', 1),
(5, 'Monstercat Uncaged - Vol. 5 (Album Mix)', 1),
(6, 'Monstercat Uncaged - Vol. 6 (Album Mix)', 1),
(7, 'Monstercat Uncaged - Vol. 7 (Album Mix)', 1),
(8, 'Monstercat Uncaged - Vol. 8 (Album Mix)', 1),
(9, 'Monstercat Uncaged - Vol. 9 (Album Mix)', 1),
(10, 'Monstercat Uncaged - Vol. 10 (Album Mix)', 1),
(11, 'Monstercat Uncaged - Vol. 11 (Album Mix)', 1),
(12, 'Liquicity Yearmix 2016 (Mixed by Maduk)', 2),
(13, 'Liquicity Yearmix 2017 (Mixed by Maduk)', 2),
(14, 'Liquicity Yearmix 2018 (Mixed by Maduk)', 2),
(15, 'Liquicity Yearmix 2019 (Mixed by Maduk)', 2),
(16, 'Liquicity Yearmix 2020 (Mixed by Maduk)', 2),
(17, 'Highschool of the Dead (Single)', 3),
(18, 'POPSENCE (Album)', 3),
(19, 'Strike the Blood (Single)', 3),
(20, 'hack/SLASH (Album)', 3),
(21, 'Gate II (Sekai o Koete) (Single)', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `artist_list`
--

CREATE TABLE `artist_list` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `artist_list`
--

INSERT INTO `artist_list` (`id`, `name`) VALUES
(1, 'KISIDA KYODAN & THE AKEBOSI ROCKETS'),
(2, 'Rogue x Stonebank x Slips & Slurs'),
(3, 'Dirtyphonics x Bassnectar'),
(4, 'Muzzy'),
(5, 'Zero Hero'),
(6, 'KUURO'),
(7, 'Slips & Slurs x Holly'),
(8, 'Kayzo'),
(9, 'RICCI'),
(10, 'Wolfgang Gartner x Aero Chord'),
(11, 'Rootkit'),
(12, 'Topi'),
(13, 'Pegboard Nerds x Quiet Disorder'),
(14, 'Tokyo Machine'),
(15, 'Noisestorm'),
(16, 'Glacier'),
(17, 'Unlike Pluto'),
(18, 'MYRNE'),
(19, 'Conro'),
(20, 'Grant'),
(21, 'Nitro Fun'),
(22, 'Anevo'),
(23, 'Reach'),
(24, 'Orbiter'),
(25, 'Mr FijiWiji & Exist Strategy'),
(26, 'Mr FijiWiji & Direct'),
(27, 'Duumu'),
(28, 'Darren Styles'),
(29, 'Stonebank'),
(30, 'nanobii'),
(31, 'Dirtyphonics & RIOT'),
(32, 'RIOT'),
(33, 'Reach x Slips & Slurs'),
(34, 'Dirty Audio'),
(35, 'Dion Timmer'),
(36, 'Darren Styles, Dougal & Gammer'),
(37, 'Droptek '),
(38, 'Rameses B'),
(39, 'DROELOE'),
(40, 'Grant, Anevo & Conro'),
(41, 'Summer Was Fun'),
(42, 'Mindsight & Duumu'),
(43, 'Pegboard Nerds & Spyker'),
(44, 'Vicetone'),
(45, 'Kayzo & Gammer'),
(46, 'Slander'),
(47, 'Tut Tut Child'),
(48, 'Koven & Crystal Skies'),
(49, 'Direct'),
(50, 'Savoy & Grabbitz'),
(51, 'MYRNE & Popeska'),
(52, 'Delta Heavy & Dirty Audio '),
(53, 'Gammer '),
(54, 'Kayzo & Slander'),
(55, 'Bishu'),
(56, 'Seven Lions & Kill The Noise'),
(57, 'Ookay & Fox Stevenson'),
(58, 'Savoy'),
(59, 'Lookas'),
(60, 'Dirtyphonics & Sullivan King '),
(61, 'Slips & Slurs'),
(62, 'Zac Waters'),
(63, 'Bad Computer'),
(64, 'Soupandreas'),
(65, 'Notaker & Declan James'),
(66, 'Pegboard Nerds'),
(67, 'Muzzy, Koven, Feint'),
(68, 'Topi'),
(69, 'INTERCOM'),
(70, 'Slander & Kayzo'),
(71, 'Flite'),
(72, 'Jay Cosmic'),
(73, 'Grabbitz'),
(74, 'Puppet & Foria');

-- --------------------------------------------------------

--
-- Структура таблицы `label_list`
--

CREATE TABLE `label_list` (
  `id` int NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `label_list`
--

INSERT INTO `label_list` (`id`, `title`) VALUES
(1, 'Monstercat'),
(2, 'Luquicity'),
(3, 'Sony');

-- --------------------------------------------------------

--
-- Структура таблицы `music_list`
--

CREATE TABLE `music_list` (
  `id` int NOT NULL,
  `id_artist` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `label_id` int NOT NULL,
  `link` text NOT NULL,
  `id_album` int NOT NULL,
  `number_in_album` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `music_list`
--

INSERT INTO `music_list` (`id`, `id_artist`, `title`, `label_id`, `link`, `id_album`, `number_in_album`) VALUES
(1, 2, 'Unity', 1, 'https://biffhard.sunproxy.net/file/ajZDdUlJU1VMTkExUnRvVCt5VGNneTVpT0QxcU80NGJPQVBqK2tlaGNVMnQrSWh1UGZjWDUweUxqTVZvSEpoWHhhQ1U2R0pVQjlCZ2x1b2FjMzBrTUIvWlBOOXRhaElpdjRaUjQ5WWVUTTA9/Rogue_x_Stonebank_x_Slips_Slurs_-_Unity_Monstercat_Release_(BiffHard.click).mp3', 1, 1),
(2, 3, 'Watch Out (ft. Ragga Twins)', 1, 'https://biffhard.sunproxy.net/file/ajZDdUlJU1VMTkExUnRvVCt5VGNneTVpT0QxcU80NGJPQVBqK2tlaGNVMG42VWxDVXhHZURKKzFQLzJvZnJmUEhaWXhxRFJaa1JXVHdodFJlcWJhcFVNeU9KQmVqcllQWnJYNTR0ZytXelE9/5_X_5_Dirtyphonics_X_Bassnectar_Feat._Ragga_Twins_-_Watch_Out_Feat._Ragga_Twins_(BiffHard.click).mp3', 1, 2),
(3, 4, 'Spectrum', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTXptM1ZGUlBsbGVwRFRRT2FNaFk5RFhsSnI1MXF2TTBxOUVKMzR3N2gwdzFZYjVhOFZ4ZVRsbXgzbWlOTmxDMFE9/Muzzy_-_Spectrum_Original_Mix_04.04.2017_FDM_(BiffHard.click).mp3', 1, 3),
(4, 5, 'Bass Drop', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTjhhQm9LNGZxUEtNZmUwTnRBdTd5c0Q1TU43RDhTZUhJemlxd25NbVJrN1Z2bndnYTlnTElnV3lGN3l0Mm53MXM9/Zero_Hero_-_Bass_Drop_Original_Mix_(BiffHard.click).mp3', 1, 4),
(5, 6, 'Bandit', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTjhhQm9LNGZxUEtNZmUwTnRBdTd5c1M2eVJFQXM2SnYrRC9tcVcxalRadFJ0V2l5emVWNlRFbUlCYUNKR0k4WUE9/Monstercat_-_KUURO_-_Bandit_Monstercat_Release_(BiffHard.click).mp3', 1, 5),
(6, 7, 'Turmoil', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTUHU5eEd0N3RKd2JPWkxzUDhTeDV1YkxFN2tqSm4xb3cwYWgxbnhBaWVDOWNrUTJBWWQ0QnRLUkNMamRpRWx6M2M9/Slip_Slurs_x_Holly_-_Turmoil_(BiffHard.click).mp3', 1, 6),
(7, 8, 'This Time', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTklNNy8wS3c3em5iRmpoem9DUHlyNjZwZG5XRktEYnJFUzhrMjVLK0U4djdHRzdxdGs3ZE9tOFdkbEJtWVNaQzQ9/Kayzo_-_This_Time_(BiffHard.click).mp3', 1, 7),
(8, 9, 'Boom', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTjhhQm9LNGZxUEtNZmUwTnRBdTd5c0p0MzNLTVdLUXNIeXFCaXlKbVZpUUNqRStJYW9mRzA4TzR4NUNPSHhmVWM9/Ricci_-_Boom_Original_Mix_19.04.2017_FDM_(BiffHard.click).mp3', 1, 8),
(9, 10, 'Borneo', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTT2QrRk1wcVVwemttUUhiWVVMTENPdVhEc0tiWS85a0lwSUJDaWRVeVYrZzhxSVJYZTE2dnQrMkJ5YjcraHlENm89/Wolfgang_Gartner_x_Aero_Chord_-_Borneo_(BiffHard.click).mp3', 1, 9),
(10, 11, 'Levitate (ft. Tylor Maurer)', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTjhhQm9LNGZxUEtNZmUwTnRBdTd5c2pkMUVET2hnWFp2ZmR6cEN2cjJWUHVUcnVQNDdFb1RrSUFVSUc3V1VZaFk9/Rootkit_feat._Tylor_Maurer_-_Levitate_Original_Mix_Bass_House_RZT_(BiffHard.click).mp3', 1, 10),
(11, 12, 'Swapping Things', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTT3VGeHlDUkRvWlc3OU5yRmxIai9GME9kKzdiRm1qRFIvSzhrU3E2M3BqbXVyZnhxSVFzWlREVGhXeVdWNSt3RGM9/Topi_-_Swapping_Things_2017-05-12_lbum_(BiffHard.click).mp3', 1, 11),
(12, 13, 'Move That Body', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTT3VGeHlDUkRvWlc3OU5yRmxIai9GME9kKzdiRm1qRFIvSzhrU3E2M3BqbWpYYzRoMkFHWndFTklTRWUycDlrSVE9/Pegboard_Nerds_x_Quiet_Disorder_-_Move_That_Body_2017-05-12_lbum_(BiffHard.click).mp3', 1, 12),
(13, 14, 'CRAZY', 1, 'https://biffhard.sunproxy.net/file/SDltSUhlK25SeXBpNnV1ZUdMN2ppcFdxcVhVc1NlZStlWGNBYUcvMnNTTU83ZGE4Q255QnVvZEcyUWRnZytvRHBBZllEMGVnWUIyVUlaVnVvQTc2S2pSZzQxNndnRStZOG9vRUE3aHR3Q1k9/Tokyo_Machine_-_CRAZY_(BiffHard.click).mp3', 1, 13),
(14, 15, 'Escape', 1, '', 1, 14),
(15, 14, 'BLAST', 1, '', 1, 15),
(16, 16, 'Neos', 1, '', 1, 16),
(17, 17, 'Sweet (ft. Mister Blonde)', 1, '', 1, 17),
(18, 18, 'Afterdark (ft. Aviella', 1, '', 1, 18),
(19, 19, 'Chardonnay (ft. Karra)', 1, '', 1, 19),
(20, 20, 'Starship', 1, '', 1, 20),
(21, 21, 'Home', 1, '', 1, 21),
(22, 22, 'Waiting On Your Call (ft. Park Avenue)', 1, '', 1, 22),
(23, 17, 'Everything Black (ft Mike Taylor)', 1, '', 1, 23),
(24, 23, 'Bollywood Stunna', 1, '', 1, 24),
(25, 24, 'Want You', 1, '', 1, 25),
(26, 25, 'Andromeda (ft. Matt Van)', 1, '', 1, 26),
(27, 26, 'Tomorrow (ft. Matt Van & Holly Drummond)', 1, '', 1, 27),
(28, 27, 'Illuminate (ft. Slyleaf)', 1, '', 1, 28),
(29, 28, 'Us Against the World', 1, '', 1, 29),
(30, 29, 'Ripped To Pieces (ft. EMEL)', 1, '', 1, 30),
(31, 30, 'Bubble Beam', 1, '', 1, 31),
(32, 31, 'Got Your Love', 1, '', 2, 1),
(33, 6, 'Rapture (ft. MC Mota)', 1, '', 2, 2),
(34, 23, 'Throw Handz', 1, '', 2, 3),
(35, 32, 'Disorder', 1, '', 2, 4),
(36, 33, 'That Sound', 1, '', 2, 5),
(37, 6, 'Possession ', 1, '', 2, 6),
(38, 34, 'Alien Cookies ', 1, '', 2, 7),
(39, 29, 'Feel It', 1, '', 2, 8),
(40, 35, 'Till I Make It (ft. Tima Dee)', 1, '', 2, 9),
(41, 36, 'Party Don’t Stop', 1, '', 2, 10),
(42, 37, 'Fragments', 1, '', 2, 11),
(43, 38, 'Nova', 1, '', 2, 12),
(44, 39, 'JUMP (ft. Nevve)', 1, '', 2, 13),
(45, 24, 'Discovery ', 1, '', 2, 14),
(46, 40, 'Without You (ft. Victoria Zaro)', 1, '', 2, 15),
(47, 41, 'Love Back On (ft. Emelie Cyréus) ', 1, '', 2, 16),
(48, 42, 'What Feels Right', 1, '', 2, 17),
(49, 43, 'Extraordinary (feat. Elizaveta)', 1, '', 2, 18),
(50, 44, 'I Hear You', 1, '', 2, 19),
(51, 45, 'Over The Edge (ft. AU8UST)', 1, '', 2, 20),
(52, 46, 'Superhuman (ft. Eric Leva)', 1, '', 2, 21),
(53, 47, 'If I Could (ft. Beth Cole) ', 1, '', 2, 22),
(54, 19, 'Lay Low (ft. David Benjamin)', 1, '', 2, 23),
(55, 19, 'Circus (ft. Beckii Power)', 1, '', 2, 24),
(56, 16, 'Nurture (ft Brenna Myers)', 1, '', 2, 25),
(57, 20, 'Are We Still Young (ft. Jessi Mason) ', 1, '', 2, 26),
(58, 48, 'You Me & Gravity ', 1, '', 2, 27),
(59, 49, 'Too Far Away', 1, '', 2, 28),
(60, 50, 'Contemplate', 1, '', 2, 29),
(61, 19, 'Close', 1, '', 2, 30),
(62, 51, 'Get It All (ft. Emily Hendrix)', 1, '', 2, 31),
(63, 52, 'Stay (feat. HOLLY)', 1, '', 3, 1),
(64, 53, 'Stay Tonight (feat. Dylan Matthew)', 1, '', 3, 2),
(65, 54, 'Holy (feat. Micah Martin)', 1, '', 3, 3),
(66, 55, 'Bomb (feat. LeyeT)', 1, '', 3, 4),
(67, 56, 'Cold Hearted', 1, '', 3, 5),
(68, 6, 'Swarm', 1, '', 3, 6),
(69, 23, 'Nobushi', 1, '', 3, 7),
(70, 57, 'Lighthouse', 1, '', 3, 8),
(71, 58, 'How U Like Me Now (feat. Roniit)', 1, '', 3, 9),
(72, 59, 'Eclipse', 1, '', 3, 10),
(73, 60, 'Vantablack', 1, '', 3, 11),
(74, 60, 'Sight of Your Soul', 1, '', 3, 12),
(75, 61, 'Moving Hectic (feat. Harry Shotta)', 1, '', 3, 11),
(76, 62, 'Freak', 1, '', 3, 12),
(77, 14, 'SPOOKY', 1, '', 3, 13),
(78, 63, 'New Dawn', 1, '', 3, 14),
(79, 14, 'BUBBLES', 1, '', 3, 15),
(80, 64, 'Sprite', 1, '', 3, 16),
(81, 65, 'Who I Am (feat. Karra)', 1, '', 3, 17),
(82, 18, 'Confessions (feat. Cozi Zuehlsdorff)', 1, '', 3, 18),
(83, 66, 'Heaven Let Us Down (feat. Koda)', 1, '', 3, 19),
(84, 67, 'Worth The Lie', 1, '', 3, 20),
(85, 12, 'Got To Be', 1, '', 3, 21),
(86, 53, 'Let’s Get Crunk', 1, '', 3, 22),
(87, 69, 'Decoy World (feat. Park Avenue)', 1, '', 3, 23),
(88, 70, 'Without You (feat. Dylan Matthew)', 1, '', 3, 24),
(89, 29, 'By Your Side (feat. EMEL)', 1, '', 3, 25),
(90, 71, 'We Are One', 1, '', 3, 26),
(91, 72, 'Ascend', 1, '', 3, 27),
(92, 73, 'Told Ya So', 1, '', 3, 28),
(95, 74, 'Bigger Picture', 1, '', 3, 29);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `album_list`
--
ALTER TABLE `album_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `artist_list`
--
ALTER TABLE `artist_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `label_list`
--
ALTER TABLE `label_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `music_list`
--
ALTER TABLE `music_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_artist` (`id_artist`),
  ADD KEY `label_id` (`label_id`),
  ADD KEY `id_album` (`id_album`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `album_list`
--
ALTER TABLE `album_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `artist_list`
--
ALTER TABLE `artist_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `label_list`
--
ALTER TABLE `label_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `music_list`
--
ALTER TABLE `music_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `music_list`
--
ALTER TABLE `music_list`
  ADD CONSTRAINT `music_list_ibfk_1` FOREIGN KEY (`id_artist`) REFERENCES `artist_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_list_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_list_ibfk_3` FOREIGN KEY (`id_album`) REFERENCES `album_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
