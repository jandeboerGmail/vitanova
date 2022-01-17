-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2022 at 11:19 AM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitanova`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add band', 7, 'add_band'),
(26, 'Can change band', 7, 'change_band'),
(27, 'Can delete band', 7, 'delete_band'),
(28, 'Can view band', 7, 'view_band'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add cateraar', 9, 'add_cateraar'),
(34, 'Can change cateraar', 9, 'change_cateraar'),
(35, 'Can delete cateraar', 9, 'delete_cateraar'),
(36, 'Can view cateraar', 9, 'view_cateraar'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add zaal', 11, 'add_zaal'),
(42, 'Can change zaal', 11, 'change_zaal'),
(43, 'Can delete zaal', 11, 'delete_zaal'),
(44, 'Can view zaal', 11, 'view_zaal'),
(45, 'Can add page', 12, 'add_page'),
(46, 'Can change page', 12, 'change_page'),
(47, 'Can delete page', 12, 'delete_page'),
(48, 'Can view page', 12, 'view_page'),
(49, 'Can add fanclub', 13, 'add_fanclub'),
(50, 'Can change fanclub', 13, 'change_fanclub'),
(51, 'Can delete fanclub', 13, 'delete_fanclub'),
(52, 'Can view fanclub', 13, 'view_fanclub'),
(53, 'Can add evenement', 14, 'add_evenement'),
(54, 'Can change evenement', 14, 'change_evenement'),
(55, 'Can delete evenement', 14, 'delete_evenement'),
(56, 'Can view evenement', 14, 'view_evenement'),
(57, 'Can add band leden', 15, 'add_bandleden'),
(58, 'Can change band leden', 15, 'change_bandleden'),
(59, 'Can delete band leden', 15, 'delete_bandleden'),
(60, 'Can view band leden', 15, 'view_bandleden'),
(61, 'Can add verkoop', 16, 'add_verkoop'),
(62, 'Can change verkoop', 16, 'change_verkoop'),
(63, 'Can delete verkoop', 16, 'delete_verkoop'),
(64, 'Can view verkoop', 16, 'view_verkoop'),
(65, 'Can add ticket', 16, 'add_ticket'),
(66, 'Can change ticket', 16, 'change_ticket'),
(67, 'Can delete ticket', 16, 'delete_ticket'),
(68, 'Can view ticket', 16, 'view_ticket'),
(69, 'Can add bedrijf', 17, 'add_bedrijf'),
(70, 'Can change bedrijf', 17, 'change_bedrijf'),
(71, 'Can delete bedrijf', 17, 'delete_bedrijf'),
(72, 'Can view bedrijf', 17, 'view_bedrijf');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$u2WSpblPN0xP$Hdm+frIP+e8YybPBlnn3cimTXYcb9lCFL99zFVGrUmg=', '2021-10-28 10:03:45.368099', 1, 'vitanova', '', '', 'jandeboer@gmail.com', 1, 1, '2020-09-11 08:18:39.181810'),
(2, 'pbkdf2_sha256$216000$oTQfpeJVHEKn$uFLGT5zzSIV9SdwiCEqN7hDj6f2arT9EYsM5i940DI0=', '2021-12-31 12:48:00.689957', 1, 'franklin', 'Franklin', 'Bieri', 'franklin.bieri@gmail.com', 1, 1, '2020-09-11 14:28:53.000000'),
(3, 'pbkdf2_sha256$216000$7kebbPIaaCBs$EfQgpzQWjaqIXTvr9CxhsHk6s3aOAakXEF0jaT2jTAc=', '2021-12-14 13:57:30.965939', 1, 'Corrie', '', '', '', 1, 1, '2020-09-15 12:09:06.000000'),
(4, 'pbkdf2_sha256$216000$Ff1pi9YyRLvn$DVZIOdN3Ni5NI9Mx5IMLcI5Hc2KVGGruWiCDr/6Dz5E=', '2021-12-31 17:25:03.917691', 1, 'django', 'django', 'python', '', 1, 1, '2020-12-15 13:49:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_band`
--

CREATE TABLE `contacts_band` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `aantal_leden` decimal(6,0) NOT NULL,
  `instrumenten` int(11) NOT NULL,
  `technicus` tinyint(1) NOT NULL,
  `aantal_autos` decimal(2,0) NOT NULL,
  `soort` int(11) NOT NULL,
  `bedrag` decimal(6,2) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `band_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `bedrag`, `rekening_nr`, `website`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `genre`, `slug`, `band_image`) VALUES
(1, 'The Magic Tones', '5', 0, 1, '0', 0, '0.00', 'NL', '', '', '2020-09-11 09:59:51.000000', '2020-09-11 09:59:51.000000', 2, '', 'slug', NULL),
(2, 'De Stoel', '5', 0, 1, '0', 0, '0.00', 'NL', 'http://www.thesixtiesbanddestoel.nl', '', '2020-09-11 10:00:53.000000', '2021-02-17 20:54:09.477199', 14, '', 'de-stoel', NULL),
(3, 'The Rocking Players', '5', 0, 1, '2', 0, '750.00', 'NL', 'http://www.indo-entertainment.nl/the-rocking-players.html', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', '2020-09-11 10:01:27.000000', '2021-12-08 15:15:57.311302', 3, 'All Round', 'the-rocking-players', 'images/PA300529_Martin_HR_fSUIRFi.jpg'),
(4, 'Blackmail', '3', 0, 1, '2', 0, '0.00', 'NL', 'http://www.blackmail-countrymusic.nl', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', '2020-09-11 10:02:27.000000', '2021-10-15 11:49:01.146304', 15, 'Country rock - Indo rock', 'blackmail', 'images/431E1380-EFDE-4ED9-8DFE-232DB37E1C8B.jpeg'),
(5, 'The Streetrollers', '6', 1, 1, '2', 0, '750.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'Prijs afspraak dec 2021 750,00 \r\n\r\nSTREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', '2020-09-11 10:03:00.000000', '2021-12-09 13:09:39.373402', 16, 'Indo Rock / 50 ties and 60ties', 'the-streetrollers', 'images/The_Streetrollers_001SR2019_def__Kt8OBbE.jpg'),
(6, 'Wipe Out Selection', '6', 0, 1, '2', 0, '750.14', 'NL', 'http://www.wipeoutselection.nl/de-band/', 'Prijs afspraak 30 aug 2020 / 750,00 Euro 6 personen\r\n\r\nRichard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', '2020-09-11 10:04:07.000000', '2021-12-17 16:37:09.523050', 17, '', 'wipe-out-selection', 'images/DSC_9832_GWCTGZC.png'),
(7, 'The Mordants', '6', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', '2020-09-11 10:04:58.000000', '2021-10-15 11:42:49.809033', 21, '', 'the-mordants', 'images/898C1421-4B6F-4228-8CF9-89591039B9EA.jpeg'),
(8, 'Java Guitars Unlimited', '4', 0, 1, '0', 0, '850.00', 'NL', 'http://www.javaguitars.nl', 'Prijs afspraak dec 2021 850,00 inclusief technicus\r\n\r\nOptie aangevraagd voor 28 mei 2022\r\n\r\nSmitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310\r\n\r\nindische@artiesten.club', '2020-09-11 10:10:34.000000', '2021-12-08 15:12:35.820838', 23, 'Indo Rock', 'java-guitars-unlimited', ''),
(9, 'Keep on Rocking', '4', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', '2020-09-11 10:12:18.000000', '2021-01-13 14:10:00.219721', 24, 'Rock', 'keep-on-rocking', NULL),
(10, 'Perwarindo (Wageningen)', '135', 0, 0, '0', 0, '800.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '2020-09-11 15:14:16.000000', '2021-07-03 20:33:33.598002', 26, 'Angklung orkest', 'perwarindo-wageningen', ''),
(12, 'DYD', '142', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', '2020-09-15 12:32:34.000000', '2021-08-13 15:41:17.831371', 112, 'Angklung Orkest', 'dyd', ''),
(13, 'Leni Landweer', '1', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n06 21241300\r\n\r\n10 mei 2021 gebeld met Lani\r\nAfgesproken: voor 12 september indien corona over is.\r\nLani komt met 5 personen.\r\nArtiesten krijgen vrij eten en drinken\r\nEr worden ca. 15 tot 20 traditionele dansen uit gevoerd.\r\nAngkung concert duurt ca. 20 minuten.\r\nDaarna Angklung workshop zo lang het duurt.\r\n\r\nNa afloop catering open.\r\n\r\nFranklin maak de benodigde papieren aan.\r\nEn verstuurt dit naar Lani Landweer.', '2020-09-23 13:32:17.000000', '2021-10-15 11:43:12.226910', 111, 'Angklung orkest', 'leni-landweer', 'images/25F93D03-BDE2-4EC3-9030-BB9D80F0DBB4.jpeg'),
(14, 'Vervallen Hot News', '6', 0, 1, '0', 0, '0.00', 'NL', '', 'Per 5juni ontbonden wdgens verschil van inzichten.', '2020-10-19 19:07:58.000000', '2021-06-09 12:24:09.024496', 22, '50/60 jaren Rock and Roll', 'vervallen-hot-news', ''),
(15, 'Hawaiian Fantasy', '20', 0, 1, '0', 0, '0.00', 'NL', '', 'Aantal dansers kan verschillen naar behoefte\r\n\r\nGage € 350,-- / € 650,--', '2020-10-19 19:17:49.000000', '2020-10-19 19:17:50.000000', 114, '', 'slug', NULL),
(16, 'The Red Pack', '7', 0, 1, '0', 0, '2500.00', 'NL', 'http://www.theredpack.nl', 'Beroeps musici\r\nCharles de la Croix, guitarist\r\n06 - 21504941\r\n\r\n1 artiest 250 euro voor 4 a 5 setjes van 40 minuten', '2020-10-19 19:41:02.000000', '2021-11-28 12:51:12.316270', 115, '50/60 jaren Rock and Roll', 'the-red-pack', ''),
(17, 'Cliff and his Lonestars', '4', 0, 1, '0', 0, '0.00', 'NL', 'http://www.lonestars.nl', 'info@lonestars.nl\r\n06 42725412\r\nwww.lonestars.nl\r\n\r\nCliff Breton van Groll                   zanger/gitarist\r\nMichiel ten Hagen                       zanger/pianist\r\nGuus Pattiwael van Westerloo  zanger/drummer\r\nEdward Donkers                           zanger/bassist', '2020-11-03 14:49:36.000000', '2021-12-09 21:10:39.019963', 116, 'Rock and Roll - country', 'cliff-and-his-lonestars', ''),
(18, 'The Blue Devils', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'www.thebluedevils.nl', '2020-11-03 14:58:54.000000', '2021-11-28 15:17:14.382420', 117, '50/60 jaren Rock and Roll', 'the-blue-devils', ''),
(19, 'The Bretels', '4', 0, 1, '2', 0, '0.00', 'NL', '', 'janst50@live.nl', '2020-11-03 15:04:56.000000', '2021-11-30 12:55:25.461179', 283, '50/60 jaren Rock and Roll', 'the-bretels', ''),
(20, 'The Cosy Rockers', '6', 0, 1, '3', 0, '0.00', 'NL', 'http://www.thecosyrockers.nl', '', '2020-11-12 20:21:40.000000', '2021-10-15 11:43:38.708709', 122, '50/60 jaren Rock and Roll', 'the-cosy-rockers', 'images/BC0DD685-392D-4185-A1AE-5779510F67D9.jpeg'),
(21, 'Vervallen The Eastern Aces', '5', 0, 0, '2', 0, '0.00', 'NL', 'http://www.theeasternaces.com', '2e contact Carl Tentua\r\n0181 214360\r\n\r\nZie The New Aces\r\nFrans v.d.Brand Horninge overleden', '2020-11-16 13:15:41.000000', '2021-08-01 12:05:15.316239', 123, 'Indo rock - 50/60 jaren', 'vervallen-the-eastern-aces', ''),
(22, 'The Rocking Drifters', '4', 0, 1, '2', 0, '0.00', 'NL', 'http://www.therockingdrifters.nl', 'Bandleden:\r\n\r\nHenk Ripzaad - zang rithem gitaar\r\nJo van den Kieboom - drums\r\nTom Janssen - bas - zang\r\nRuud van der Horst - solo gitaar', '2020-11-16 13:30:09.000000', '2020-12-10 13:53:37.755064', 124, '50/60 jaren Rock and Roll', 'the-rocking-drifters', NULL),
(23, 'Straight', '6', 0, 1, '3', 0, '0.00', 'NL', 'https://www.facebook.com/band.straight.country', 'Country Music & Country Rock\r\n587 mensen vinden dit leuk waaronder 13 van je vrienden\r\n603 mensen volgen dit\r\n06 1738 3473\r\nseverijnhc@gmail.com\r\nMuzikant/Band', '2020-11-16 13:45:17.000000', '2021-09-23 13:41:06.945821', 125, 'Country rock - Indo rock', 'straight', ''),
(24, 'Affinity', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'Bandleden:\r\nHarold Rosso\r\nAlex Dutrieux\r\nMartin Papilaya\r\nWelsey Marotel\r\n\r\nTel 079 2070012\r\ninfo@rosomusic.nl', '2020-11-16 13:55:50.000000', '2021-10-15 11:49:20.108669', 126, 'country - rock&Roll', 'affinity', 'images/F488B9E4-AB01-441B-B580-F8AD71943A1B.jpeg'),
(25, 'The Rocking Teens', '3', 0, 1, '1', 0, '0.00', 'NL', '', 'Aantal leden kan verschillen. Ze treden soms op onder de naam The Rocking Teens & Friends', '2020-11-16 14:08:51.000000', '2020-11-16 14:08:51.000000', 127, 'Indo Rock', 'slug', NULL),
(26, 'The Rocking Coasters', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'Messenger: m.me/TheRockingCoasters\r\n\r\nBandleden:\r\n\r\nJulian Sieben - basgitaar/zang\r\nPiet Krol - drums\r\nRob Manders - sologitaar\r\nJeffrey van Helvoirt - slaggitaar/zang\r\nAd de Leeuw - zang', '2020-11-16 14:30:37.000000', '2020-11-16 14:30:37.000000', 128, '50/60 jaren Rock and Roll', 'slug', NULL),
(27, 'Check Point', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-02-24 13:52:03.000000', '2021-02-24 13:52:39.944564', 156, '', 'check-point', NULL),
(28, 'Meneer Frits (Angklung)', '1', 0, 1, '0', 0, '0.00', 'NL', '', 'Jan van Lieshoutstraat 3\r\n5611 EE Eindhoven\r\nT. 040 - 265 56 10\r\nE. reserveren@meneerfrits.nl', '2021-03-06 11:09:31.000000', '2021-03-06 11:14:48.820877', 156, 'Angklung orkest', 'meneer-frits-angklung', NULL),
(29, 'Duo Freeline', '2', 0, 1, '1', 0, '0.00', 'NL', 'http://www.freeline.artiesten.club', '', '2021-03-08 20:27:41.000000', '2021-03-08 20:32:42.198373', 178, 'Rock and Roll - country', 'duo-freeline', NULL),
(30, 'The Ijmond Players', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-04-12 14:10:54.000000', '2021-04-12 14:12:41.019207', 207, 'Balroom cq. stijl', 'the-ijmond-players', ''),
(31, 'DML DJ', '1', 0, 0, '0', 0, '0.00', 'NL', '', '', '2021-04-12 14:20:30.000000', '2021-04-12 14:21:38.709012', 209, 'Ballroom cq. stijl', 'dml-dj', ''),
(32, 'Juke Joint Jimmies', '3', 0, 1, '0', 0, '0.00', 'NL', '', 'Face Book', '2021-04-12 14:27:54.000000', '2021-04-12 14:29:21.367439', 210, 'Rockabilly music', 'juke-joint-jimmies', ''),
(33, 'Duo Rudy en Cici', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-04-20 14:52:05.000000', '2021-04-20 14:55:54.002608', 13, '', 'duo-rudy-en-cici', ''),
(34, 'Kwekel productions', '1', 0, 1, '0', 0, '0.00', 'NL', 'http://www.kwekel-evenementen.nl', '0181-324310\r\n\r\nJava Guitars gage 850 Euro\r\nBetaling contant', '2021-05-08 14:16:10.000000', '2021-11-13 21:22:19.594662', 23, 'Indo Rock', 'kwekel-productions', ''),
(35, '\" Een verrassing \"', '1', 0, 1, '0', 0, '-0.03', 'NL', '', '', '2021-05-21 12:54:21.000000', '2021-05-21 13:00:26.597975', 131, 'Van alles wat wils', 'een-verrassing', 'images/Logo4_Website1.jpg'),
(36, 'Les Hombres', '5', 0, 1, '0', 0, '0.00', 'NL', '', 'lesombres4@gmail.com\r\n0229- 232064\r\n06-627842400', '2021-05-28 19:26:15.000000', '2021-05-28 19:33:52.326090', 236, 'Shadows', 'les-hombres', ''),
(38, 'The New Aces', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'Andre Wijnkamp  zanger gitarist\r\nBas Riet sologitarist  06 13476434\r\nCarl Tentua drum  0181 214360/06 13351818\r\nPiet Danse  sologitarist\r\nRoy Poncin basgitarist  06 37605509\r\n\r\nMarja Tentua-Hengst  06 23699719', '2021-07-04 20:15:53.000000', '2021-07-04 20:23:13.412129', 244, '50/60 jaren Rock and Roll', 'the-new-aces', ''),
(39, 'Newzz', '6', 0, 1, '3', 0, '0.00', 'NL', '', 'Bandleden:\r\n\r\nMaurice Coffa (bass)\r\nMarthin van den Heuvel  (keyboard)\r\nHarrie Tuasuun  (drums)\r\nRoy van den Eeckhout  (guitar)\r\nBabs de la Motte  (zang)\r\nShirley van den Eeckhout  (zang)', '2021-08-01 11:47:37.000000', '2021-08-01 11:51:53.992202', 22, '', 'newzz', ''),
(40, 'The Wanderers', '5', 0, 1, '0', 0, '0.00', 'NL', 'http://www.hihosilver.nl/wanderers', 'Foto opvragen voor Band Image.\r\n\r\nArmand Mensingh 06 15164990 voor vragen Film Indie tel gekregen van Kees Thies', '2021-09-21 19:42:54.000000', '2021-11-08 20:23:21.160590', 267, 'Rock & pop (Elvis Presley)', 'the-wanderers', ''),
(41, 'Gino Julian Italiaans ijs truck', '1', 0, 1, '0', 2, '250.00', 'NL', 'https://www.youtube.com/watch?v=SBwcgg1uLcc', 'Betaling : Contant\r\n\r\nOptreden: 45 min zingen / 15 min pauze\r\n1ste keer 250,00 Euro\r\nVolgende keren: 200,00 Euro\r\n\r\nP.M. april 2022 In Huis Verloren', '2021-10-26 20:59:48.000000', '2021-10-26 21:09:05.232124', 273, 'Italiaans, Evergreens', 'gino-julian-italiaans-ijs-truck', ''),
(42, 'Royal Dice', '4', 0, 1, '0', 0, '0.00', 'NL', '', '30 okt Oudorp : was wel goed\r\n\r\n0613456715', '2021-10-31 22:23:25.000000', '2021-11-08 20:17:41.917634', 156, '500 / 60 | Rock & Roll', 'royal-dice', ''),
(43, 'Indian Summer', '6', 0, 1, '3', 0, '900.00', 'NL', 'http://www.miso-entertainment.nl', 'Bezetting band:\r\nTrudy Kits - Zang\r\nMarc Scheije - Drums\r\nShane van Schoonhoven - Zang en Bass\r\nErwin Kollaard - Acoustisch Gitaat Banjo en Zang\r\nRudolf Botticher - Elec Gitaat, Slide Gitaar en Zang\r\nWouter Klaase - Accordeon en Piano,orgel,synth en Zang\r\nRonald de Ruijter - Techniek\r\nMarc Snijders - Stage Hand\r\nCorry Kits - Stage Manager\r\n\r\nVoor de techniek komen ze met een verlengde IVECO DAILY (Miso Entertainment)\r\nDe bandleden komen met eigen vervoer.', '2021-11-01 15:13:56.000000', '2021-11-26 21:59:32.480896', 276, 'country - rock&Roll', 'indian-summer', ''),
(44, 'Black Eyes', '5', 0, 0, '0', 0, '0.00', 'NL', '', '', '2021-11-08 20:48:40.000000', '2021-12-09 13:03:27.905786', 286, 'Moluks / Indisch', 'black-eyes', ''),
(45, '@-Ones', '5', 0, 1, '0', 0, '650.00', 'NL', '', 'Prijs afspraak dec 2021 650,00 inclusief technicus\r\n\r\nhttps://nl-nl.facebook.com/atonceband2016/\r\n\r\nDe Bandleden Zijn :\r\n\r\nQuintanella Pipit Marcus - Zang\r\nMichael Westerlink - Sologitarist / Zang\r\nLody Silooy - Bagitarist / Zang\r\nRoy Stok - Toetsenist\r\nHerman Salomonson - Slagwerk', '2021-11-23 11:50:53.000000', '2021-12-09 13:04:23.080658', 278, 'All Round', '-ones', 'images/-ones.jpeg'),
(46, 'The Terry White Band', '5', 0, 1, '0', 0, '0.00', 'NL', '', 'E-mail info@terrywhiteband.nl\r\n\r\nTel. +31(0)77-3730229\r\n\r\nGerry van Koot', '2021-11-26 20:26:29.000000', '2021-11-26 20:38:03.120459', 281, '', 'the-terry-white-band', ''),
(48, 'The Red Strats', '5', 0, 1, '0', 0, '0.00', 'NL', 'http://www.theredstrats.nl', 'Voor boekingen en / of vragen betreffende The Red Strats kunt contact opnemen met het management van\r\nThe Red Strats: 036-53 79 325 \r\nof \r\n06-51 066 637.', '2021-11-28 14:43:17.000000', '2021-12-03 10:58:10.197678', 282, 'Rock / pop/ Shadows', 'the-red-strats', 'images/P7190055_groep1_vdhoevenfotografie_360dpi_a_form_aangepast_x.jpg'),
(49, 'AGording Band', '1', 0, 1, '0', 0, '0.00', 'NL', '', 'HOE HET BEGON\r\nSuper gezellig die Indo party\'s uit de vroegere jaren 50, 60, jong en oud bij elkaar om lekker te eten, te dansen en je senang te voelen. \r\n\r\nHet initiatief komt van een Indische jongen een goede 70tiger die vindt dat er voor die leeftijd toch te weinig leuke party\'s zijn. Waar je lekker kunt eten en live muziek kan horen net als vroeger. \r\n\r\nAdoe Adoe feestje is een feestje voor Indo\'s en blanda\'s (Hollanders).\r\nIn de 50ties en 60ties van de vorige eeuw kwamen de Indo\'s naar Nederland en brachten zo ook de Indische cultuur mee. Zoals de Indische rijst tafel, Rock muziek en gemoedelijkheid.\r\nDe Hollander leerde in die tijd saté met pinda saus eten (wat de boer niet kent, dat eet hij niet) en de Indo patat met mayonaise, stamppot en boerenkool enz.\r\n\r\nDe Indo-rock, instrumentale rock en roll werd in de periode 1958 – 1965 door Nederlands-Indische gitaargroepen gespeeld. Ze bestonden in belangrijke mate uit muzikanten van Indische of Ambonese afkomst.\r\nDe Tielman Brothers waren de trendsetters en in de 2e helft van de 1950-er jaren vermengden ze dit met de opkomend rock en roll.\r\nHet was ook de tijd dat de rock bandjes als paddenstoelen uit de grond schoten en de Indo Rock een feit werd. De eerste Indo bandjes waren actief in Rotterdam en Den Haag. Een heel bekende band uit Den Haag waren/zijn The Crazy Rockers. Nog steeds actief.                                                                                        \r\nMaar ook in Amsterdam waren ze te vinden. In Amsterdam kon je lid worden van de Indo vereniging Vita Nova.\r\nDe Indo’s zochten elkaar op waar muziek werd gemaakt en waar kon worden gedanst. De San Francisco bar op de Zeedijk was zo’n gelegenheid.\r\nDe showboot in Zaandijk was ook een gelegenheid waar veel Indo’s en Molukkers bij elkaar kwamen. \r\n\r\nEn nu wij ouder worden en tijd genoeg hebben om over ons leven na te denken, komen deze herinneringen weer op en verlangen wij weer naar de tijd die ons gevormd heeft in onze jeugd.\r\n\r\n------------------------------------------------------------------------------------------------------------------------\r\n\r\nDe eerste Kumpulan op 7 april 2019\r\n\r\nIn Noord-Holland boven het Noordzee kanaal wonen veel Indo\'s die vaak verenigd zijn en Kumpulans organiseren. Behalve in West-Friesland die de rijkdom heeft verworven door kolonisatie van Nederlands Indië. Daar wilden wij verandering inbrengen en daarom deze eerste Kumpulan, in het jaar van de Gouden Eeuw.  \r\n\r\nFranklin was actief als vrijwilliger werkzaam bij de Oosterkerk in Hoorn. In overleg met het bestuur van de Oosterkerk werd overeengekomen dat wij de Kumpulan in de Oosterkerk mochten houden.\r\n\r\nEr brak een hectische tijd aan. Welke band konden wij contracteren? Een paar keer een afwijzing - het wachten op antwoord – weer telefoneren, maar uiteindelijk hadden wij een super band gevonden  die wilde komen: HOT NEWS een zeer bekende en geliefde band.\r\nDaarna kwam de PR. Een pakkend persbericht naar verschillende kranten. De Oosterkerk verzorgde het foldermateriaal en regelde ook waar mensen hun kaartjes konden reserveren en betalen.\r\n\r\nWij gingen op zoek naar een catering, want een Kumpulan zonder Indisch eten of snack was ondenkbaar.\r\nDe flyers moesten afgezet worden, dus ieder van ons een stapel om ze her en der te verspreiden.\r\n\r\nNu was het wachten op de verkoop van de toegangskaarten. Verder hadden we alles zo goed als rond.\r\n\r\nTwee weken vóór 7 april 2019 maakten wij de balans op. Zou het lukken? We hadden een prognose gemaakt van 100 à 120 personen en de teller stond nu op 80 personen. Even terug rekenen naar het begin van de verkoop 5 weken terug, dus 16 kaartjes per week, met nog twee weken te gaan zou het gaan lukken.\r\nOp de dag zelf alles rond maken: de tafels en stoelen klaarzetten – de dansvloer stofzuigen – het podium voor de bandleden in orde maken en een tafeltje klaarzetten om de bezoekers te kunnen verwelkomen.\r\n\r\nEn het lukte!!! Er kwamen ook nog spontaan personen om de Kumpulan te bezoeken. De Oosterkerk barsten uit haar voegen, we hebben zelfs mensen de toegang moeten weigeren, want vol=vol.\r\nHet streefpunt was bereikt. Zelfs de catering moest in aller ijl nog snacks bijmaken. Wat een succes.\r\n\r\nEn Franklin?  Die liep als een trotse initiatiefnemer blij en gelukkig rond dat zijn eerste Kumpulan een succes was geworden.\r\n\r\n________________________________________________________________________________\r\n\r\nAcara Adoe Adoe\r\n\r\n\r\nUit de reacties, welke wij ontvangen hadden van de gehouden Kumpulan op 7 april 2019, concludeerden wij dat er behoefte was om gezellig samen te komen met dansen – praatje en vooral lekker Indisch eten.\r\n\r\nWij, als organiserend team, zijn hier op ingegaan en zijn naarstig opzoek gegaan hoe wij e.e.a. konden opvullen.\r\nHoe nu verder?  En wederom was het Franklin met een geniaal idee.\r\n\r\nMet de eigenaar van het prachtige Het Huis Verloren in de Kerkstraat te Hoorn, konden wij tot overeenstemming komen om dit te kunnen voortzetten in een wat kleinere vorm.\r\nWe kozen voor 3x een maandagmiddag van 14.00 uur – 18.00 uur. Elke 3e maandagmiddag van de maand in de zomer maanden juni, jullie en september. De tijd dat veel ouderen alleen zijn daar de kinderen en klein kinderen op vakantie zijn.\r\n \r\nHet waren voor ons weer stressvolle dagen met het zoeken naar artiesten – cateringbedrijf – persberichten en flyers. Vooral de catering was een hele zoekwerk. Diverse catering bedrijven werden aan geschreven. Uit eindelijk had ik er (na heel veel e-mailtjes) een gevonden die beschikbaar was. Gelukkig dat was rond. Maar in de tussen tijd had Franklin ook contact gehad met een catering bedrijf en dat moest het worden. Dus aan mij de vervelende taak om te gaan vertellen aan de eerdere cateraar dat het helaas niet door kon gaan. Geen goede communicatie tussen ons. \r\n \r\nWel konden een geweldige en veelzijdige zangeres contracteren voor twee maandagmiddagen.\r\n\r\n\r\n-----------------------------------------------------------------------------------------------------------------------\r\n\r\n\r\n\r\nSandra Mooij\r\n\r\n17 juni 2019, de eerste Acara Adoe Adoe liep in het begin wat stroef, maar gaande weg de middag kwam de stemming er goed in. Ook toeristen waren op de muziek afgekomen o.a. een Italiaan, deze bezoeker werd emotioneel bij het horen van de liedjes uit zijn tijd en was heel verbaasd dat hun verzoekjes werden ingewilligd.\r\nHet was geweldig weer en het terras werd ten volle benut.\r\n\r\n15 juli 2019, de tweede Acara Adoe Adoe, werd een nog groter succes dan de eerste keer. Het aantal bezoekers was al gauw bereikt: 60 – 65 personen. De catering moest hard werken om aan de vraag te kunnen voldoen. Er werd gedanst – gezongen en lekker gegeten. Iedereen voelde zich senang.\r\nEinde 18.00 uur, we hebben de bezoekers zelfs weg moeten sturen, ook Sandra wist niet van ophouden.\r\n\r\n\r\nBlackmail\r\n\r\n16 september 2019, de derde en laatste Acara Adoe Adoe. Hiervoor hadden wij de allround muziekband Blackmail kunnen contracteren. Authentieke Indo-Rock – Potjo Potjo en Countrymuziek.\r\nDe dansvloer is de hele middag bezet gebleven en ook de catering deed weer goede zaken. Iedereen, Indo\'s en Balanda\'s voelden zich senang.\r\nHalverwege deze middag kwam Benno Gabriel een boeiende lezing houden over Depok. In het Westfries museum was er op dat moment een expositie over Depok. Zo\'n 300 jaar geleden was het landgoed Depok na de dood van Cornelis Chastelein (een hoge VOC-beambte) nagelaten aan de 150 slaven die werkzaam waren op het landgoed. Veel nazaten zijn na de tweede wereldoorlog naar Nederland gekomen.\r\nWij hadden deze middag ook een kleine tombola. Met cadeautjes van verschillende leveranciers uit Hoorn. Met enige aarzeling gingen wij op bezoek bij verschillende leveranciers, maar gaande weg werden wij er handiger in en begonnen het zelfs leuk te vinden.\r\n  \r\nHet werd een  geweldige middag tot het eind toe.\r\n\r\n________________________________________________________________________________\r\n\r\nVoor 2020 hadden wij ons draaiboek zo goed als klaar.\r\n\r\nIn de laatste week van januari 2020 hebben wij als Acara Adoe Adoe team onze bijdrage kunnen leveren aan de Indische week in verzorgingshuis Avondlicht. Wij hadden voor de aankleding van de zaal gezorgd en het optreden van een Indo-band met danseressen. De week werd afgesloten met een optreden van Wieteke van Dort als tante Lien.\r\n\r\nDaarna viel er een stilte in 2020 door het Covid-19 virus tot heden (december 2021) \r\n\r\n________________________________________________________________________________\r\n\r\nMaar wij hebben niet stil gezeten en bleven evenementen door plannen.\r\n\r\nOp 21 maart 2020 stond er een Country-Line Dance Party in De Witte Valk te Zwaag gepland, maar hebben de Country-Line Dance Party met medewerking van het Trio Blackmail helaas moeten afzeggen. 175 toegangskaartjes heb ik nog als herinnering.\r\n \r\n\r\nOp 2 mei 2020 stond er een groot Kumpulan gepland in de Oosterkerk te Hoorn. \r\nMet een optreden van de Kaitunes, folders, posters en pers publicaties waren al kaar. Ook dit evenement hebben we moeten afzeggen wegens de corona maatregelen.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nZo ook de Nationale Indische dag op zondag 29 augustus kon geen doorgang vinden.\r\nMet medewerking van The Wipe Out Selections en Sandra Mooy.\r\n\r\nEen lichtpuntje was het Angklung Concert met Traditioneel Indische dansen. \r\nOp 20 september in de Oosterkerk.\r\n\r\nEn de samenwerking met Podiumplein bij de uitvoering van Ritual Bells en Globel Gongs onder leiding van Sinta Wullur op 2 oktober in de Oosterkerk te Hoorn.\r\n\r\nEn de Kumpulan van 28 november waar anders de Rocking Players zouden op treden.\r\n\r\n\r\nBeschrijving volgt  aanvulling door Corrie\r\n\r\n------------------------------------------------------------------------------------------------------------------------\r\n\r\nSTICHTING Acara VitaNova i.o. \r\n\r\nIn de stilte die volgde op het uitbreken van het Covid-19 virus hebben wij de balans opgemaakt en kwamen we tot de conclusie dat het organiseren van evenementen op particuliere basis niet langer verantwoord is. \r\nOm toch deze evenementen te kunnen laten plaatsvinden kwam het idee naar voren om als Stichting verder te gaan. Maar dit is niet eenvoudig. De naam was gauw bedacht: Acara VitaNova\r\n\r\nWe hebben inmiddels de Statuten en het huishoudelijk reglement opgemaakt.\r\nOok zijn we druk bezig met een database, waarin wij zoveel mogelijk informatie vermelden welke wij nodig hebben om een evenement te kunnen organiseren. \r\nOns grootste struikelblok is het vinden van bestuursleden voor de op te richten Stichting. En het gebrek aan financiën  in de vorm van donateurs – sponsors en fondsen.  \r\n\r\nIndien u interresse heeft in een bestuursfunctie of een donatie wilt geven dan verzoeken wij u om even contact met ons op te nemen (zie website).\r\n\r\nInmiddels hebben we ook een Facebook pagina aangemaakt, welke heel druk bekeken wordt.\r\nOok is er gestart met een website, zodat wij daar ons nieuws op kunnen uitbrengen. \r\n\r\nEen bevriende ontwerper heeft een prachtig logo voor onze Stichting gemaakt.\r\n\r\n\r\n\r\n\r\nUitleg van Visitekaartje.\r\n\r\nDe voorgeschiedenis.\r\nIn de jaren 50 / 60 was er in Amsterdam Slotervaart een Vereniging VitaNova actief met het Organiseren van Kumpulans. De mensen uit het voormalige Nederlands Indië moesten hier in het koude kikkerland een nieuw leven opbouwen. Helaas is deze vereniging later opgeheven. Ik heb daar nog hele goede herinneringen aan. Vandaar de naam VitaNova.\r\n\r\nAlle oud leden hebben zich in de loop van de jaren zich over deze aardbol verspreid en goede herinneringen overhouden aan de Kumpulans uit die tijd. Soms kom ik deze oud leden nog tegen.\r\nZo ook ik, heb mooie herinneringen aan die tijd. \r\nVandaar het oprichten van deze Stichting om het erf goed te bewaren uit de tijd van de Gordel van Smaragd.\r\n\r\nHet begon in Hoorn (2019).\r\nDe Oosterkerk kreeg van de gemeente toestemming om een cultureel programma in het kader van de Gouden Eeuw in eigen beheer te verzorgen. Vandaar de Gouden Eenhoorn en de afbeelding van het Kerkgebouw. Ik had al jaren lang een plan opgevat om in de Oosterkerk een Kumpulan te houden.\r\n\r\nDus dit was mijn kans.\r\nEten verbroederd en brengt mensen bij elkaar vandaar de vijzel -tjobek en oelekan.  Holland is rijk geworden door import van goederen uit de eilanden van Smaragd, vandaar de blauwe lucht en de waterval van het eeuwige leven.\r\nOm de geschiedenis van Gouden Eeuw tot leven te brengen is de Garuda of vuurvogel het symbool.\r\nUit de as herrezen.\r\nDit is het verhaal over wat op het het visitekaartje staat.\r\n\r\nWij hopen dat als het Covid-19 ons met rust laat en het vaccineren voltooid is, wij de mensen weer kunnen laten genieten van onze evenementen.\r\nAan plannen en ideeën geen gebrek, want Franklin bedenkt bijna iedere week weer iets nieuws. \r\n\r\nNu nog het oprichten een stichting Acara VitaNova.\r\n\r\nEen Stichting is alleen levensvatbaar als er donateurs zijn die de Stichting geldelijk of met stoffelijke zaken ondersteunen. Van diverse kanten hebben wij dan ook giften binnen gekregen om een Stichting op te kunnen richten. De akte wordt op 21 december 2021 gepasseerd en zijn wij officieel een Stichting. En wij zijn u dankbaar voor al uw geldelijke- en materiële- giften. \r\n\r\nVoor deze gelegenheid heeft onze grafische vormgever een impressie gemaakt van de herrijzing van de Stichting VitaNova of wel nieuw leven vorm gegeven.\r\nOf wel. \r\n\r\nOnze ¨Herrijzenis Kaartje¨\r\n\r\nOok hier is de symboliek herkenbaar.', '2021-12-14 13:34:13.000000', '2021-12-17 16:26:12.896913', 131, '', 'agording-band', ''),
(50, 'Sandra Mooy', '1', 0, 1, '0', 0, '350.00', 'NL', 'http://www.sandramooy.nl', 'Betaling Via Var regeling', '2021-12-31 13:06:44.000000', '2021-12-31 13:48:14.252945', 154, 'Evergreens, Country, Indo Rock', 'sandra-mooy', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bandleden`
--

CREATE TABLE `contacts_bandleden` (
  `id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `lid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_band_contact`
--

CREATE TABLE `contacts_band_contact` (
  `id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band_contact`
--

INSERT INTO `contacts_band_contact` (`id`, `band_id`, `contact_id`) VALUES
(26, 24, 2),
(27, 24, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_category`
--

CREATE TABLE `contacts_category` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cateraar`
--

CREATE TABLE `contacts_cateraar` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `soort` varchar(50) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `catering_prijs` decimal(8,2) NOT NULL,
  `slug` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `rekening_nr`, `website`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `catering_prijs`, `slug`) VALUES
(2, 'Dapur Jomy', 'Indisch / Indonesch', 'NL', 'https://www.facebook.com/Dapur-Jomy-104000084682444/', 'Iedere week een ander menu\r\n\r\nhttps://www.oozo.nl/bedrijven/drechterland/venhuizen/centrum-venhuizen/2001138/dapur-jomy', '2020-08-19 19:07:08.000000', '2020-08-19 19:07:08.000000', 11, '0.00', 'slug'),
(3, 'Toko2Walk', 'Indisch', 'NL', 'http://www.toko2walk.nl', 'Ook bekent als Duo Rudy & Cici\r\n\r\ne-mail: toko2walkhhw@gmail.com', '2020-08-21 19:31:58.000000', '2021-11-02 09:55:27.519947', 13, '0.00', 'toko2walk'),
(4, 'Toko Lannie', 'Indisch', 'NL', '', '', '2020-08-23 19:30:46.000000', '2021-06-23 19:07:04.049709', 19, '0.00', 'toko-lannie'),
(7, 'Waq-food', 'Indisch', 'NL', 'http://www.waq-food.nl', 'wiati@me.com\r\nSchellinkhout', '2021-10-14 12:25:41.000000', '2021-10-15 11:13:24.066818', 118, '0.00', 'waq-food'),
(8, 'Ropaja Indonesische Catering', 'Indonesisch', 'NL', 'http://www.cateringropaja', '', '2021-10-16 19:43:58.000000', '2021-10-16 19:46:19.127092', 271, '0.00', 'ropaja-indonesische-catering'),
(9, 'Toko Intani', 'Indonesisch', 'NL', 'http://www.tokointani-denhelder.nl', 'Tel 06 20245157\r\nBreewaterstraat 14, 1781 GT Den Helder\r\n\r\nGesloten zondag en maandag', '2021-10-16 19:59:09.000000', '2021-10-16 20:04:45.651018', 118, '0.00', 'toko-intani'),
(10, 'Indonesia Indah', 'Indonesisch', 'NL', 'http://www.indonesiaindah.nl', 'Openingstijden dinsdag t/m zondag 15.00 uur tot 20.00 uur', '2021-10-16 20:11:15.000000', '2021-10-16 20:15:18.964052', 272, '0.00', 'indonesia-indah');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `plaats` varchar(50) NOT NULL,
  `telefoon` varchar(16) NOT NULL,
  `mobiel` varchar(16) NOT NULL,
  `emailadress` varchar(254) NOT NULL,
  `soort` int(11) NOT NULL,
  `soort_lid` int(11) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL,
  `status` int(11) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `voornaam` varchar(20) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `contact_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `memo`, `datum_inserted`, `datum_updated`, `voornaam`, `slug`, `contact_image`) VALUES
(2, 'Jansen, Jan', 'Hoofdstraat 1', '1625DE', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'NL', 0, 'Dit is het eerste Lid', '2020-08-19 14:11:37.000000', '2021-02-15 20:07:56.820307', 'Jan', 'jansen-jan', NULL),
(3, 'Hoeven, van der Jorgen', 'onbekend', 'xxxxyy', 'Zaandam', '', '06-11711287', 'j.verhoeven2@chello.nl', 4, 0, 'NL', 0, 'The Rocking Players?', '2020-08-19 14:16:20.000000', '2021-02-24 10:29:28.910167', 'Jorgen', 'hoeven-van-der-jorgen', NULL),
(4, 'Jansen, Clif', 'Damstraat 6 , 2 Hoog', '1000BD', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 0, 'NL', 0, 'Oprichter van de Fanclub \"Cliff and his Loanstars', '2020-08-19 14:23:40.000000', '2021-04-17 09:36:09.777065', 'Clif', 'jansen-clif', ''),
(5, 'Tomson, Mike', 'Damstraat 12, 3 hoog', '1000AA', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, 'NL', 0, '', '2020-08-19 15:45:28.000000', '2021-01-06 10:36:08.236440', 'Mike', 'tomson-mike', NULL),
(7, 'Maas, Frans', 'Korte Straat 6', '9331NL', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, 'NL', 0, '', '2020-08-19 15:54:01.000000', '2021-01-06 10:25:22.405788', 'Frans', 'maas-frans', NULL),
(8, 'Mulder, Christiaan', 'Kerkstraat 10b', '1621CW', 'Hoorn', '0229-210608', '06-51336779', 'info@huisverloren.nl', 9, 3, 'NL', 1, 'www.huisverloren.nl', '2020-08-19 18:54:14.000000', '2021-01-06 10:37:14.577578', 'Christiaan', 'mulder-christiaan', NULL),
(9, 'Ammeraal, Truus', '', '', 'Hoorn', '', '06-14179444', '', 9, 0, 'NL', 0, '', '2020-08-19 18:58:52.000000', '2021-04-18 20:25:17.164995', 'Truus', 'ammeraal-truus', ''),
(10, 'Daphne', 'Dorpsstraat 175', '1689G', 'Zwaag', '0229-261473', '06-20678838', 'info@dewittevalk.nl', 9, 0, 'NL', 1, '', '2020-08-19 19:03:25.000000', '2021-01-07 21:14:41.780540', 'Daphne', 'daphne', NULL),
(11, 'Foss, Amy', 'Leeuwerik 24', '1606CC', 'Venhuizen', '06-53134683', '06-48606828', 'info@onbekend.nl', 5, 0, 'NL', 1, 'Dapur Jomy\r\n\r\nOpgericht in mei 2020\r\nLeeuwerik 24, 1606CC Venhuizen\r\nBekijk alle nieuwe bedrijven in Centrum Venhuizen\r\nEventcatering', '2020-08-19 19:07:31.000000', '2021-02-18 16:32:43.328473', 'Amy', 'foss-amy', NULL),
(12, 'Alders, Eric', 'Westerblokker 80', 'onbeke', 'Zwaag', '0229-2326691', '06-12345678', 'info@goudenhoofd.nl', 9, 0, 'NL', 0, 'm.boersma11@kpnplanet.nl', '2020-08-20 22:22:33.000000', '2021-06-04 21:42:34.020025', 'Eric', 'alders-eric', ''),
(13, 'CiCi', 'Middenwaard 123', '1703SC', 'Heerhugowaard', '072 5823294', '06-22606222', 'toko2walkhhw@gmail.com', 5, 0, 'NL', 0, 'Ook bekent als Duo Rudi & CIci', '2020-08-21 19:24:44.000000', '2021-11-02 09:59:44.929824', 'CiCi', 'cici', ''),
(14, 'Singer, Klaas', 'onbekend', 'xxxxyy', 'onbekend', '0229-573322', '', 'klaassinger@gmail.com', 7, 0, 'NL', 0, 'www.thesixtiesbanddestoel.nl\r\n\r\nDE Stoel', '2020-08-21 20:33:41.000000', '2021-01-06 10:13:19.116398', 'Klaas', 'singer-klaas', NULL),
(15, 'Merkx, Will en Hedy', 'onbekend', 'xxxxyy', 'Koog aan de Zaan', '075-6161681', '06-50284376', 'h.merkxneyndorff@upcmail.nl', 7, 0, 'NL', 0, 'www.blackmail-countrymusic.nl', '2020-08-22 19:19:12.000000', '2021-06-04 22:16:24.424260', 'Will en Hedy', 'merkx-will-en-hedy', ''),
(16, 'Hoeven, van der Erlo', 'onbekend', 'xxxxyy', 'Zaandam', '', '06-27092910', 'erlo.streetrollers@gmail.com', 7, 0, 'NL', 0, 'www.thestreetrollers.webnode.nl/over-ons', '2020-08-22 19:23:29.000000', '2021-02-15 15:35:45.815235', 'Erlo', 'hoeven-van-der-erlo', NULL),
(17, 'Leepel, Brain', 'onbekend', 'xxxxyy', 'Den Helder', '06-47679948', '06-28400959', 'labsimons@live.nl', 7, 0, 'NL', 0, 'www.wipeoutselection.nl', '2020-08-22 19:41:37.000000', '2021-06-04 21:40:59.663144', 'Brain', 'leepel-brain', ''),
(18, 'Martin', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 7, 0, 'NL', 0, 'x', '2020-08-23 18:47:21.000000', '2020-08-23 18:47:21.000000', '', 'slug', NULL),
(19, 'Lannie dummy', 'o', 'xxxxyy', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, 'NL', 0, '', '2020-08-23 19:32:23.000000', '2020-08-23 19:32:23.000000', '', 'slug', NULL),
(20, 'Holtkamp, Fried', 'onbekend', 'xxxxyy', 'Hoorn', '', '06-37166146', 'friedholtkamp@hotmail.com', 4, 0, 'NL', 0, 'www.mordants.nl', '2020-08-24 16:12:30.000000', '2021-01-07 21:03:15.048228', 'Fried', 'holtkamp-fried', NULL),
(21, 'Bruijns, Co', 'onbekend', 'xxxxyy', 'Hoorn', '0229-262915', '06-83543752', 'cobruijns@hotmail.com', 4, 0, 'NL', 0, '', '2020-08-24 16:22:20.000000', '2021-05-28 19:23:38.458830', 'Co', 'bruijns-co', ''),
(22, 'Salomon, Shirley', 'onbekend', 'xxxxyy', 'onbekend', '036-8415752', '06-21872413', 'shirleysalomon@gmail.com', 4, 0, 'NL', 0, '', '2020-08-25 12:37:48.000000', '2021-06-04 22:15:08.717790', 'Shirley', 'salomon-shirley', ''),
(23, 'Kwekel, George', 'Smitsweg 51', '3222AG', 'Hellevoetsluis', '181-3243106', '0', 'indische@artiesten.club', 6, 0, 'NL', 0, '', '2020-08-25 12:48:01.000000', '2021-05-16 13:57:02.694489', 'George', 'kwekel-george', ''),
(24, 'Geertman, Wim', 'onbekend', 'xxxxyy', 'onbekend', '', '06-52125508', 'wh.geertman@quicknet.nl', 4, 0, 'NL', 0, 'Van welke band?', '2020-08-25 13:03:48.000000', '2021-02-15 20:39:30.155545', 'Wim', 'geertman-wim', NULL),
(25, 'Wilde, de Peter (Foreesterhuis)', '', '', '', '0228-315 511', '', 'info@foreesterhuis.nl', 9, 0, 'NL', 0, '', '2020-09-11 14:43:40.000000', '2021-06-12 11:13:53.240255', 'Peter de', 'wilde-de-peter-foreesterhuis', ''),
(26, 'Nog onbekend', 'Harnjesweg 84', '6706AV', 'Wageningen', '041-2624476', '', 'tjio.thea@gmail.com', 4, 0, 'NL', 0, '', '2020-09-11 15:06:58.000000', '2021-03-06 10:42:14.277921', '', 'nog-onbekend', NULL),
(27, 'Meyer,  Aaron', '', '', 'Zaandam', '', '', '', 4, 0, 'NL', 0, 'zanger Streetrollers', '2020-09-11 15:32:40.000000', '2021-02-15 15:41:03.422735', 'Aaron', 'meyer-aaron', NULL),
(28, 'Laan, Aad en Corrie', '', '', '', '0229–231922', '', 'alaan@kpnmail.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:44:36.000000', '2021-05-19 14:39:59.353996', 'Aad en Corrie', 'laan-aad-en-corrie', ''),
(29, 'Martherus', '', '', '', '', '', 'andre.martherus@hetnet.nl', 2, 4, 'NL', 0, '', '2020-09-11 17:44:36.000000', '2021-05-15 18:56:07.054192', '', 'martherus', ''),
(30, 'Posthuma, Andries', '', '', '', '', '06–5365030', 'andriesposthuma@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:44:36.000000', '2021-05-15 19:11:29.648343', 'Andries', 'posthuma-andries', ''),
(31, 'Calonne, de Anita', '', '', '', '', '06–36300734', 'anitamdec2@hotmail.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:44:36.000000', '2021-05-15 19:12:45.467920', 'Anita', 'calonne-de-anita', ''),
(32, 'Duursma, Anneke', '', '', 'Hoorn', '0229–216692', '', 'annekeduursma@gmail.com', 2, 5, 'NL', 0, 'Dans / Acara / Ok', '2020-09-11 17:44:36.000000', '2021-05-15 19:11:02.863349', 'Anneke', 'duursma-anneke', ''),
(33, 'Nieuwbuurt, Anneke', '', '', 'Hoorn', '', '', 'annekenieuwbuurt@live.nl', 1, 0, 'NL', 0, 'Dans / Acara', '2020-09-11 17:44:37.000000', '2021-02-15 20:18:13.788263', 'Anneke', 'nieuwbuurt-anneke', NULL),
(34, 'Bijl, A', '', '', '', '', '', 'bepan@ziggo.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:44:37.000000', '2021-05-15 19:15:35.935247', 'A', 'bijl-a', ''),
(35, 'Fritz, Bep', '', '', '', '', '', 'bepfritz48@gmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:44:37.000000', '2021-01-07 14:22:43.948974', 'Bep', 'fritz-bep', NULL),
(36, 'Bruisma, J', '', '', '', '0229-123456', '06-1234512345', 'bruinsmajopie@gmail.com', 15, 4, 'NL', 0, '', '2020-09-11 17:44:37.000000', '2021-10-08 20:26:50.010792', 'J', 'bruisma-j', ''),
(37, 'Kahle, Sebastiaan', '', '1623rk', 'Hoorn', '', '', 'carenbas@gmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:44:37.000000', '2021-02-09 20:33:03.526079', 'Sebastiaan', 'kahle-sebastiaan', NULL),
(38, 'Overtoom, Carla', '', '', '', '', '', 'carlalovesalsa@hotmail.com', 2, 4, 'NL', 0, 'Dans / Acara', '2020-09-11 17:44:37.000000', '2021-05-10 12:13:09.498868', '', 'overtoom-carla', ''),
(39, 'Bali, Carmen', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:44:38.000000', '2021-05-16 14:38:58.433764', 'Carmen', 'bali-carmen', ''),
(40, 'Cees', '', '1000xx', '', '', '', 'cjmsmid@zonnet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:48:48.000000', '2021-05-16 13:30:47.418194', '', 'cees', ''),
(41, 'Lokker, C.', '', '', '', '', '06-83860736', 'clokker1960@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:48:48.000000', '2021-05-15 19:09:56.750715', 'C.', 'lokker-c', ''),
(42, 'De Niet, M.', '', '', '', '', '', 'denietmarleen@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:48:48.000000', '2021-05-15 18:57:50.136114', 'M.', 'de-niet-m', ''),
(43, 'HartmanKoh, E.', '', '', '', '', '06-53421819', '', 1, 4, 'NL', 0, '', '2020-09-11 17:48:48.000000', '2021-05-16 13:25:11.323898', 'E.', 'hartmankoh-e', ''),
(44, 'Manuhutu, E.', '', '', 'Haarlem', '', '', 'e.manuhutu@upcmail.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:48:48.000000', '2021-02-09 20:35:27.284471', 'E.', 'manuhutu-e', NULL),
(45, 'Cretier, Eddy', '', '', '', '', '', 'eh.cretier@planet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:48:49.000000', '2021-05-15 19:07:51.036768', 'Eddy', 'cretier-eddy', ''),
(46, 'Keet, E.', '', '', '', '', '', 'emj.keet@hetnet.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:48:49.000000', '2021-02-09 21:11:09.715501', 'E.', 'keet-e', NULL),
(47, 'Stoke, Endang', '', '', '', '', '', 'endangstoke@hotmail.com', 2, 4, 'NL', 0, '', '2020-09-11 17:48:49.000000', '2021-05-08 19:38:26.970820', 'Endang', 'stoke-endang', ''),
(48, 'Stulp', '', '', 'Hoorn', '', '06–33864333', 'froukstulp@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:51:28.000000', '2021-05-15 15:17:29.187703', '', 'stulp', ''),
(49, 'Stelling, Guus. S.', '', '', '', '', '06-55812690', 'gustaaf_stelling@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:51:28.000000', '2021-05-15 19:07:15.669986', 'Guus. S.', 'stelling-guus-s', ''),
(50, 'Baudain, Anne Mieke', '', '', 'Hoorn', '', '', 'helderzienhoorn@gmail.com', 2, 4, 'NL', 0, '', '2020-09-11 17:51:29.000000', '2021-05-09 09:44:41.789415', 'Anne Mieke', 'baudain-anne-mieke', ''),
(51, 'Brandsma, H P', '', '', '', '0229-123456', '06-1234512345', '', 1, 0, 'NL', 0, '', '2020-09-11 17:51:29.000000', '2021-02-09 21:14:57.848956', 'H P', 'brandsma-h-p', NULL),
(52, 'Kneepkens, Huib', '', '', 'Amsterdam', '', '06–83715923', 'huibkneepkens@hotmail.com', 2, 4, 'NL', 0, '', '2020-09-11 17:54:14.000000', '2021-05-15 19:06:36.338997', 'Huib', 'kneepkens-huib', ''),
(53, 'Janssen, Martin en Ineke', '', '', '', '', '', 'ienepien52@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:14.000000', '2021-05-15 15:12:54.932817', 'Martin en Ineke', 'janssen-martin-en-ineke', ''),
(54, 'Hollander, Irma', '', '1507nh', 'Zaandam', '', '', 'irmahollander@kpnmail.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:54:14.000000', '2021-02-09 20:39:44.324753', 'Irma', 'hollander-irma', NULL),
(55, 'Bron, Jenny', '', '1506KP', 'Zaandam', '', '', 'j.bronq@upcmail.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:54:14.000000', '2021-05-19 14:43:33.460636', 'Jenny', 'bron-jenny', ''),
(56, 'Neijman (Harrij), Joke. F.', '', '', '', '0229-243177', '', 'jfnvdb@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:14.000000', '2021-06-04 21:43:20.517543', 'Joke. F.', 'neijman-harrij-joke-f', ''),
(57, 'Jimmyjohn704', '', '', '', '', '', 'jimmyjohn704@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000', '', 'slug', NULL),
(58, 'Schaper, Jimmy', '', '', 'hoorn', '', '', 'jimmyschaper@yahoo.co.uk', 1, 4, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-05-08 19:36:40.629440', 'Jimmy', 'schaper-jimmy', ''),
(59, 'Beek, van der John', '', '', 'Haarlem', '023-5376398', '', '', 15, 4, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-10-08 20:17:11.023924', 'John', 'beek-van-der-john', ''),
(60, 'Hooper, Jose', '', '1628ev', 'Hoorn', '', '', 'josehooper52@gmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-02-09 21:12:52.964395', 'Jose', 'hooper-jose', NULL),
(61, 'Klaver, Inge', '', '1695cb', 'Blokker', '', '', 'klaverkho@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-02-09 21:11:45.062470', 'Inge', 'klaver-inge', NULL),
(62, 'Ginkel, van R.', '', '', '', '', '06-42631961', 'kyokosusan@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-05-15 15:22:50.446859', 'R.', 'ginkel-van-r', ''),
(63, 'Toko Lanny', '', '', '', '', '', '', 1, 4, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-05-16 13:09:15.656366', '', 'toko-lanny', ''),
(64, 'Lindi', '', '', '', '', '', 'lindi@ziggo.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000', '', 'slug', NULL),
(65, 'Postma Bongers, Louise', '', '', '', '', '', 'louise_post@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2021-05-16 19:06:41.414871', 'Louise', 'postma-bongers-louise', ''),
(66, 'Gan', '', '1621mp', 'Hoorn', '', '', 'lout.anke@gmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000', '', 'slug', NULL),
(67, 'Narua, Luana', '', '1629zd', 'Hoorn', '', '', 'luananarua@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2021-02-09 21:09:56.985426', 'Luana', 'narua-luana', NULL),
(68, 'Franke, Luuk', '', '', '', '', '06-30797229', 'luukfranke@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2021-05-15 15:11:33.524939', 'Luuk', 'franke-luuk', ''),
(69, 'Coers, Monique', '', '', '', '', '06-30761180', 'm.coers@pelita.nl', 13, 4, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2021-05-08 19:32:03.735368', 'Monique', 'coers-monique', ''),
(70, 'Rooijen, m.a.h.', '', '', '', '', '', 'mah.vrooijen@quicknet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:54:16.000000', '2021-05-15 18:56:54.140001', 'm.a.h.', 'rooijen-mah', ''),
(71, 'Pattiradjawane, Harrij. J.', '', '', '', '', '', 'makaui2@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:17.000000', '2021-02-15 19:40:03.711156', 'Harrij. J.', 'pattiradjawane-harrij-j', NULL),
(72, 'Kampfraat', '', '', '', '', '', 'marjonkampfraat@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:17.000000', '2021-05-15 19:00:27.885483', '', 'kampfraat', ''),
(73, 'Hoorn, M', '', '1718az', 'Hoogwoud', '', '', 'mate-1947@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:17.000000', '2021-02-15 15:54:36.650845', 'M', 'hoorn-m', NULL),
(74, 'Ruiter, de Nani', '', '1625hd', 'Hoorn', '', '', 'nanideruiter@kpnmail.nl', 2, 4, 'NL', 0, '22 mei 2021  Nat. Ind. Dag 29 augustus 2021  2 tickets', '2020-09-11 17:54:17.000000', '2021-05-23 12:40:28.873413', 'Nani', 'ruiter-de-nani', ''),
(75, 'Woort, ter Nel', '', '', '', '', '', 'nelbakker@msn.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:18.000000', '2021-05-15 15:28:31.782027', 'Nel', 'woort-ter-nel', ''),
(76, 'Kaayk, Nelly', '', '', 'Zwaag', '', '06–46912428', 'nelly.kaayk@quicknet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:54:18.000000', '2021-05-19 14:50:22.912100', 'Nelly', 'kaayk-nelly', ''),
(77, 'Coenraad, O.', '', '', 'Hoorn', '0229-239357', '', 'ottonel20@gmail.com', 2, 4, 'NL', 0, '', '2020-09-11 17:54:18.000000', '2021-05-15 15:27:13.489255', 'O.', 'coenraad-o', ''),
(78, 'Nijhof, Paul', '', '', '', '', '', 'paulnijhof47@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:18.000000', '2021-05-15 15:26:21.401585', 'Paul', 'nijhof-paul', ''),
(79, 'Rooij, de Peter', '', '', '', '', '', 'pgmderooij@gmail.com', 1, 4, 'NL', 0, '15 mei 2021 Nat.Ind.Dag 29 augustus 2021  4 kaartjes', '2020-09-11 17:54:18.000000', '2021-05-22 21:31:32.820188', 'Peter', 'rooij-de-peter', ''),
(80, 'Broek, van de Pia', '', '', '', '', '', 'piavandenbroek@hotmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:54:18.000000', '2021-02-15 15:26:40.899037', 'Pia', 'broek-van-de-pia', NULL),
(81, 'Eilbracht, Roland', '', '', '', '', '06-38509900', 'r.d.eilbracht@casema.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:54:19.000000', '2021-05-15 15:21:10.187822', 'Roland', 'eilbracht-roland', ''),
(82, 'Schenk, R.', '', '', '', '', '', 'r.schenk@quicknet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:54:19.000000', '2021-05-15 15:23:18.999308', 'R.', 'schenk-r', ''),
(83, 'Monkau, Richard', '', '', 'Hoorn', '', '', 'richard.monkau@gmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:54:19.000000', '2021-05-15 15:21:54.849085', 'Richard', 'monkau-richard', ''),
(84, 'Doest, Rita', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:54:19.000000', '2021-02-09 20:58:55.589311', 'Rita', 'doest-rita', NULL),
(85, 'Bongers, Rosita', '', '', '', '', '', 'rositabongers@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:56:23.000000', '2021-05-15 15:19:07.414925', 'Rosita', 'bongers-rosita', ''),
(86, 'Hulst', '', '', '', '', '', 'rshulst@hotmail.com', 1, 4, 'NL', 0, '', '2020-09-11 17:56:23.000000', '2021-05-15 19:03:43.736656', '', 'hulst', ''),
(87, 'Eldik, van  Ruud', '', '', '', '', '', 'ruudvaneldik@gmail.com', 2, 4, 'NL', 0, '2x 27mei2021 NID', '2020-09-11 17:56:23.000000', '2021-05-27 11:57:40.166712', 'Ruud', 'eldik-van-ruud', ''),
(88, 'Surijadi Schokker', '', '', 'Medemblik', '', '06–52362914', 'Sarinda123@hotmail.nl', 1, 4, 'NL', 1, '', '2020-09-11 17:56:24.000000', '2021-10-25 11:43:39.390244', 'Sarinda Marijke', 'surijadi-schokker', ''),
(89, 'Stoffels', '', '', '', '', '', 'stoffelsc@ziggo.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:56:24.000000', '2020-09-11 17:56:24.000000', '', 'slug', NULL),
(90, 'Leyting, (Sylvia) F. S.', '', '1628xr', 'Hoorn', '', '06–50129692', 'sylvia.leyting@gmail.com', 15, 4, 'NL', 0, '', '2020-09-11 17:56:24.000000', '2021-10-25 11:37:26.941891', 'Sylvia en....., F&S', 'leyting-sylvia-f-s', ''),
(92, 'Daniels, Wim', '', '1628gx', 'Hoorn', '', '', 'tdanielse@gmail.com', 2, 4, 'NL', 0, 'Neemt vaak 7 dames mee meestal me', '2020-09-11 17:56:25.000000', '2021-05-19 14:55:21.899394', 'Wim', 'daniels-wim', ''),
(93, 'Trouwerbach', '', '1695hr', 'Blokker', '', '', 'trouwerbach@quicknet.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:56:25.000000', '2020-09-11 17:56:25.000000', '', 'slug', NULL),
(94, 'van Lochem, Loek en Narda', '', '', '', '', '', 'vanlochems@planet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-05-15 15:14:08.904445', 'Loek en Narda', 'van-lochem-loek-en-narda', ''),
(95, 'Figueira, W. S.', '', '', 'Alkmaar', '072–5649219', '', 'w.figueira@upcmail.nl', 2, 4, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-05-16 14:41:25.136074', 'W. S.', 'figueira-w-s', ''),
(96, 'Niklaas, W.', '', '', '', '', '', 'w.niklaas@gmail.com', 2, 0, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-04-17 09:18:51.895895', 'W.', 'niklaas-w', ''),
(97, 'Waa-Meents, v.d. Marja. O.', 'Moerbalk 80', '1628gx', 'Hoorn', '', '', 'waaza@quicknet.nl', 1, 4, 'NL', 0, '15 mei 1x reserveren 29 aug', '2020-09-11 17:56:26.000000', '2021-09-10 19:46:24.860198', 'Marja. O.', 'waa-meents-vd-marja-o', ''),
(98, 'Bothe, J.', '', '1695am', 'Blokker', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-02-09 20:49:24.467873', 'J.', 'bothe-j', NULL),
(100, 'Ten Haaf, Ankie', '', '1624TH', 'Hoorn', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:56:27.000000', '2021-02-09 20:40:25.606428', 'Ankie', 'ten-haaf-ankie', NULL),
(103, 'Mulsch, Henny', '', '1689sm', 'Zwaag', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:56:28.000000', '2021-02-09 20:50:11.529255', 'Henny', 'mulsch-henny', NULL),
(104, 'Ben / Naney', '', '1687pb', 'wognum', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:56:28.000000', '2021-05-17 08:39:50.468096', 'Ben / Naney', 'ben-naney', ''),
(105, 'Berg, v.d. Lily', '', '', '', '', '', '', 1, 4, 'NL', 0, '', '2020-09-11 17:56:28.000000', '2021-05-15 19:00:01.170392', 'Lily', 'berg-vd-lily', ''),
(106, 'Willebrands,  Loet', '', '', '', '', '', '', 1, 7, 'NL', 0, '', '2020-09-11 17:56:28.000000', '2021-05-15 18:59:19.892161', 'Loet', 'willebrands-loet', ''),
(107, 'niet ingevuld', '', '', '', '', '06–23131394', '', 0, 0, 'NL', 0, '', '2020-09-11 17:56:28.938808', '2021-01-06 10:56:59.126251', '', 'niet-ingevuld', NULL),
(108, 'Hoeven', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '2020-09-11 17:56:29.000000', '2020-09-11 17:56:29.000000', '', 'slug', NULL),
(109, 'Harmusil, Franky (Angkloon)', '', '', 'Wageningen omstreken ?', '041-2624476', '06-46598547', 'dansayokdansa@gmail.com', 6, 0, 'NL', 0, 'www.dansayokdansa.nl', '2020-09-15 11:32:17.000000', '2021-03-06 10:51:27.416521', 'Franky', 'harmusil-franky-angkloon', NULL),
(110, 'Nog onbekend', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '2020-09-15 12:35:55.000000', '2020-09-15 12:35:55.000000', '', 'slug', NULL),
(111, 'Landweer (Angklung), leni', '', '', '', '', '06-21241300', 'lenilandweer@gmail.com', 4, 0, 'NL', 0, 'Gebeld op 8 mrt\r\nVoor optreden in Oosterkerk op zondag 12 sept van 14.00 tot 16.00\r\nGage bedraagt 350,= All in.\r\nConcert + workshop voor 50 personen.\r\nBevestiging en ? opsturen\r\nAngklung\r\n\r\nLeni Landweer\r\n0621241300\r\nwww.pesonaculture.com\r\nwww.angklung.nl', '2020-09-15 13:22:32.000000', '2021-03-08 14:18:33.569885', 'leni', 'landweer-angklung-leni', NULL),
(112, 'Jacobs, Andre', '', '', '', '0575-528953', '06-38303916', 'a.jacobs56@upcmail.nl', 12, 0, 'NL', 0, 'Temanteman\r\nReeds overleden', '2020-10-14 20:00:09.000000', '2021-04-17 09:33:18.995223', 'Andre', 'jacobs-andre', ''),
(113, 'Danse, Piet', '', '', '', '', '06-2939320', '', 6, 0, 'NL', 0, 'Contact persoon  gelegenheids-band (Ramona).\r\n\r\nTelefoonnummer is niet compleet.', '2020-10-14 20:10:58.000000', '2021-10-08 20:28:26.871252', '', 'danse-piet', ''),
(114, 'Junius', 'onbekend', '', '', '', '06-54746285', 'junius_tiareotahiti@hotmail.com', 7, 0, 'NL', 0, '', '2020-10-19 19:13:49.000000', '2021-02-14 10:33:20.241218', '', 'junius', NULL),
(115, 'Bes, René', 'onbekend', '', '', '', '06-22170099', 'info@theredpack.nl', 6, 0, 'NL', 0, 'Bes promotions\r\n\r\nwww.theredpack.nl\r\nContact persoon Band Charels de la Croix (gitarist)', '2020-10-19 19:36:24.000000', '2021-12-09 14:08:04.793081', 'René (The Red Pack)', 'bes-rene', ''),
(116, 'Breton van Groll, Cliff', 'onbekend', '', '', '', '06-42725412', 'info@lonestars.nl', 7, 0, 'NL', 0, 'Cliff and his lonestars', '2020-11-03 14:45:55.000000', '2021-06-04 22:29:47.240435', 'Cliff', 'breton-van-groll-cliff', ''),
(117, 'Dick', 'onbekend', '', '', '', '06-58890342', 'thebluedevils@gmail.com', 7, 0, 'NL', 0, '', '2020-11-03 14:56:30.000000', '2021-02-09 16:31:13.068974', 'Dick', 'dick', NULL),
(118, 'onbekend', '', '', '', '', '06-23981063', '', 0, 0, 'NL', 0, '', '2020-11-03 15:02:35.000000', '2021-01-07 21:09:41.795857', '', 'onbekend', NULL),
(119, 'Stichting het gehandicapte kind', 'Wibautstraat 212-214', '1091GS', 'Amsterdam', '020-6791200', '', '', 13, 0, 'NL', 0, 'het Gehandicapte Kind\r\nWibautstraat 212-214\r\n1091 GS Amsterdam\r\n  Tel. 020-6791200\r\nFacebook Instagram Youtube Twitter \r\nBankrekening\r\nIBAN: NL76 RABO 0334 4334 44\r\nKvK nummer\r\nS 41199157\r\nBTW nummer\r\n0029. 59.173.B.01', '2020-11-10 10:46:49.000000', '2021-04-20 15:06:55.517016', '', 'stichting-het-gehandicapte-kind', ''),
(122, 'Bruin, Ron', 'onbekend', '', '', '', '06-25021257', '', 15, 0, 'NL', 0, '', '2020-11-12 20:19:45.000000', '2021-10-08 20:25:44.854901', 'Ron', 'bruin-ron', ''),
(123, 'Brand Horninge, v.d. Frans', '', '', 'Zoetermeer', '', '06-46242584', 'lookatfrans@ziggo.nl', 7, 0, 'NL', 0, '2e contact:  Carl Tentua\r\n0181 214360\r\n\r\n\r\noverleden', '2020-11-16 13:12:14.000000', '2021-12-09 21:12:09.358629', 'Frans', 'brand-horninge-vd-frans', ''),
(124, 'Janssen, Tom', '', '', '', '', '06-57907943', 'rockingdrifters@gmail.com', 7, 0, 'NL', 0, '', '2020-11-16 13:27:53.000000', '2021-11-28 14:33:55.887501', 'Tom', 'janssen-tom', ''),
(125, 'Severijn, Huib', '', '', '', '', '06-17383473', 'severijnhc@gmail.com', 0, 0, 'NL', 0, 'Opgericht december 1999', '2020-11-16 13:42:44.000000', '2021-01-07 21:04:41.056035', 'Huib', 'severijn-huib', NULL),
(126, 'Rosso, Harold', '', '', '', '079 2070012', '', 'info@rosomusic.nl', 0, 5, 'NL', 0, '', '2020-11-16 13:53:52.000000', '2021-06-30 14:18:02.027430', 'Harold', 'rosso-harold', ''),
(127, 'Mosies, Arie', '', '', '', '076-872461', '06-83593788', 'ariemosies@gmail.com', 0, 0, 'NL', 0, '', '2020-11-16 14:06:44.000000', '2021-01-06 10:43:55.772792', 'Arie', 'mosies-arie', NULL),
(128, 'Sieben, Julian', '', '', '', '', '06-83386140', '', 0, 0, 'NL', 0, 'contact via messenger\r\nm.me/The RockingCoasters', '2020-11-16 14:28:39.000000', '2021-01-07 21:07:06.689600', 'Julian', 'sieben-julian', NULL),
(129, 'Hessels, Corrie', 'Dijkgraaf IJffstraat 49', '1566JZ', 'Assendelft', '075-6421443', '06-22538939', 'corriehessels@upcmail.nl', 9, 0, 'NL', 1, '', '2020-11-21 19:51:57.000000', '2021-06-30 14:14:55.371237', 'Corrie', 'hessels-corrie', ''),
(130, 'Groen', '', '', 'Hoorn', '0229-505964', '', '', 2, 6, 'NL', 0, 'Canceled : Had voor Line dance 6 kaartjes besteld', '2020-11-22 12:27:40.000000', '2021-05-19 14:47:13.830683', '', 'groen', ''),
(131, 'Bieri, Franklin', 'Gording 112', '1628JG', 'Hoorn', '0229-234032', '06-83351218', 'adoe.adoe@acaravitanova.nl', 9, 0, 'NL', 1, '', '2020-12-01 15:48:51.000000', '2021-04-23 18:30:58.977185', 'Franklin', 'bieri-franklin', ''),
(132, 'Lodal, Rob &Maria', 'Onbekend', '', 'Amsterdam', '', '', 'lodal@planet.nl', 2, 0, 'NL', 0, 'Bekenden van Kumpulan heemskerk.\r\nDe man die bij ECN te Petten heeft gewerkt', '2020-12-22 14:21:56.000000', '2021-02-09 16:28:12.469207', 'Rob & Maria', 'lodal-rob-maria', NULL),
(133, 'Heeman, Andries', '', '', '', '', '', 'heemanandriesvetter@gmail.com', 8, 0, 'NL', 0, 'Waarschijnlijk ontmoet tijden goud voor oud in het Huis Verloren of\r\ngeluids technicus', '2020-12-22 14:30:07.000000', '2021-02-14 09:58:07.474257', 'Andries', 'heeman-andries', NULL),
(134, 'Wie is Wies', '', '', '', '', '06-44858172', '', 0, 0, 'NL', 0, '', '2020-12-22 14:33:01.000000', '2021-01-06 11:05:16.781095', '', 'wie-is-wies', NULL),
(135, 'Indisch4ever', '', '', '', '', '', 'info@indisch4ever.nu', 13, 0, 'NL', 0, 'www.indisch4ever.nu', '2020-12-22 14:38:05.000000', '2021-04-17 09:03:36.595986', '', 'indisch4ever', ''),
(136, 'wie is dit', '', '', '', '', '06-29335059', '', 0, 0, 'NL', 0, 'Dansen Rock and Roll', '2020-12-23 21:18:04.000000', '2021-06-05 09:09:06.689700', 'Samantha', 'wie-is-dit', ''),
(137, '(Wie is dit) Haarman', '', '', '', '', '06-1234512345', 'ita@backin1959.com', 15, 9, 'NL', 0, 'Wie is dit', '2020-12-23 21:26:32.000000', '2021-09-07 15:59:31.709044', 'Jace', 'wie-is-dit-haarman', ''),
(138, 'Pijl, van der Dick', '', '', 'Hoorn', '', '', '', 9, 0, 'NL', 0, '', '2021-01-08 21:42:01.000000', '2021-01-08 22:03:50.730016', 'Dick', 'pijl-van-der-dick', NULL),
(140, 'Diellemans, Roelof', '', '', '', '', '06-1747145', '', 14, 0, 'NL', 0, 'Verhuurbedrijf voor de Horeca.op Hoorn 80\r\n\r\nIs eigenaar van een Betjak', '2021-02-18 12:32:50.000000', '2021-05-19 14:36:47.045629', 'Roelof', 'diellemans-roelof', ''),
(141, 'Weel, Ada', '', '', '', '', '', 'ada_weel@hotmail.com', 2, 5, 'NL', 0, 'ada_weel@hotmail.com', '2021-02-20 20:51:57.000000', '2021-06-14 15:11:28.590379', 'Ada', 'weel-ada', ''),
(142, 'Bayards, Marcel en Tilly', '', '', '', '', '', 'marcel.bayards@hetnet.nl', 2, 4, 'NL', 0, 'e-mail ook tilly. enz', '2021-02-20 20:53:35.000000', '2021-05-19 14:29:30.280649', 'Marcel en Tilly', 'bayards-marcel-en-tilly', ''),
(143, 'Rijswijk, Joke', '', '', '', '', '', 'joke.y.rijswijk@live.nl', 2, 5, 'NL', 0, '', '2021-02-20 20:59:49.000000', '2021-05-08 19:37:24.047615', 'Joke', 'rijswijk-joke', ''),
(144, 'Wijlen, ter Heike', '', '', '', '', '', 'heiketerwijlen@hotmail.com', 2, 4, 'NL', 0, 'Niet op maandag', '2021-02-20 21:01:02.000000', '2021-05-10 12:26:30.106397', 'Heike', 'wijlen-ter-heike', ''),
(145, 'Walstijn, Hennie', '', '', '', '', '', 'hennievw28@hotmail.com', 1, 4, 'NL', 0, 'Wilgaarden stad', '2021-02-20 21:04:06.000000', '2021-05-16 13:33:18.926603', 'Hennie', 'walstijn-hennie', ''),
(146, 'Vonk, Elisabeth', '', '', '', '', '', 'd.vonk1930@kpnmail.nl', 2, 4, 'NL', 0, '', '2021-02-20 21:07:16.000000', '2021-05-10 12:06:20.380948', 'Elisabet', 'vonk-elisabeth', ''),
(147, 'Dijk, van', 'Wabenstraat 1', '1624 G', 'Hoorn', '', '', '', 1, 4, 'NL', 0, 'Geen e-mail adres opgegeven', '2021-02-20 21:12:29.000000', '2021-05-10 12:25:56.643686', '', 'dijk-van', ''),
(148, 'Weekblad op zondag', '', '', '', '', '', 'weekbladopzondag@ziggo.nl', 10, 0, 'NL', 0, '', '2021-02-24 10:07:05.000000', '2021-09-03 18:37:43.144814', '', 'weekblad-op-zondag', ''),
(149, 'Westfriesopzondag', '', '', '', '', '', 'westfrieslandopzondag@rodi.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:08:21.000000', '2021-02-24 10:09:37.410026', '', 'westfriesopzondag', NULL),
(150, 'redactie wfr', '', '', '', '', '', 'redactie.wfr@rodi.nl', 10, 0, 'NL', 0, 'Ook via Karel Huijing', '2021-02-24 10:09:38.000000', '2021-10-08 20:56:27.970675', '', 'redactie-wfr', ''),
(151, 'manuela weekbladzondag', '', '', '', '', '', 'manuela@weekbladzondag.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:10:31.000000', '2021-02-24 10:11:40.526091', '', 'manuela-weekbladzondag', NULL),
(152, 'K. Klinkenberg bdu', '', '', '', '', '', 'k.klinkenberg@bdu.nl', 10, 0, 'NL', 0, '', '2021-02-24 10:11:40.000000', '2021-10-08 21:05:06.144197', '', 'k-klinkenberg-bdu', ''),
(153, 'Redactie wef', '', '', '', '', '', 'redactie.wef@nhd.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:12:48.000000', '2021-02-24 10:13:45.324618', '', 'redactie-wef', NULL),
(154, 'Mooy, Sandra', '', '', '', '', '06-10296299', 'info@sandramooy.nl', 4, 0, 'NL', 0, '', '2021-02-24 10:16:29.000000', '2021-02-24 10:21:59.184626', 'Sandra', 'mooy-sandra', NULL),
(155, 'Chatelin, Eddy', '', '', '', '', '06-53287430', '', 4, 0, 'NL', 0, 'Ex.Crazy Rockers', '2021-02-24 10:19:05.000000', '2021-05-09 09:52:11.106563', 'Eddy', 'chatelin-eddy', ''),
(156, 'Onbekend', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '2021-02-24 13:51:19.000000', '2021-02-24 13:51:47.303522', '', 'onbekend', NULL),
(157, 'Gunthardt, Errol', '', '', '', '', '06-36531959', '', 6, 0, 'NL', 0, 'Organisatior Paser Malams', '2021-02-24 14:01:19.000000', '2021-10-08 20:34:45.345497', 'Errol', 'gunthardt-errol', ''),
(158, 'Surijadi, Sarinda', '', '', '', '', '06–52362914', 'sarinda123-17050@kpn.nl', 15, 4, 'NL', 0, '', '2021-02-24 14:06:06.000000', '2021-10-31 22:42:47.494953', 'Sarinda', 'surijadi-sarinda', ''),
(159, 'Media, niet deleten', '', '', '', '', '', 'dummy@dummy.nl', 10, 0, 'NL', 0, 'Rodi.nl                                                                            advies@rodi.nl                              tel. 0226 333311\r\noozo.nl\r\nuitzining,nl\r\ntjampoer.nl                                                                    info@tjampour.nl                           tel. 06 81429655                                                                                                                          \r\n hoornradio.nl                                                                redactie@hoorngids.nl                                                                                                               \r\nHoornsdagblad.nl                                                           redactie@xyto.nl                           tel. 072 820060\r\nHoorngids.                                                                      redactie@hoorngids.nl\r\nAndijkernieuws.net                                                         apbredactie@gmail.com               tel. 06 53870258\r\ndrimble.nl                                                                       info@drimble.nl\r\nvooreenmooiestad.nl                                                                                                           tel. 06 14355574\r\nlokaaltotaal.nl                                                                 info@lokaaltotaal.nl                     tel. 0223 661325\r\nikhouvanhoorn.nl                                                           info@ikhouvanhoorn.nl\r\nhuisverloren.nl                                                               info@huisverloren.nl                     tel. 0229 210608                                 Christiaan Mulder\r\nveeltebeleven.nl                                                                                                                   tel. 0226 391031\r\nweekbladzondag.nl                                                        redactie@weekbladzondag.nl      tel. 0229 213633\r\nrodimedia.nl                                                                   advies@rodi.nl                              tel. 0226 333311\r\nenkhuizerdagblad.nl                                                       info@xyto.nl                                 tel. 072 8200600\r\nde andijker.nl                                                                  info@andijker.nl                          tel. 0228 593605', '2021-02-24 14:09:20.000000', '2021-08-19 12:07:02.206681', 'niet deleten', 'media-niet-deleten', ''),
(160, 'Rodi.nl', '', '', '', '0226-333311', '', 'advies@rodi.nl', 10, 0, 'NL', 1, '', '2021-03-05 22:41:52.000000', '2021-06-04 22:12:44.458094', '', 'rodinl', ''),
(161, 'oozo.nl', '', '', '', '', '', '', 10, 0, 'NL', 1, '', '2021-03-06 19:41:32.000000', '2021-03-06 19:42:41.795411', '', 'oozonl', NULL),
(162, 'uitzinnig.nl  Ravesteyn Philip van', '', '', '', '', '', 'redactie@uitzinnig.nl', 10, 0, 'NL', 1, 'https://mail.google.com/mail/u/0/#inbox/FMfcgxwLtkdRCJHkhbFPgGLCtkKpWKdK\r\n\r\nClaudius 8\r\n3962 LT Wijk bij Duurstede\r\n0343-593410\r\nKvK: 24287528\r\nredactie@uitzinnig.nl\r\nwww.uitzinnig.nl\r\n\r\nP.S. Beheer nu uw vermelding op Uitzinnig.nl:\r\nhttps://www.uitzinnig.nl/event-edit.aspx?c=f9094e100b2578738f5c5ffdf0a03601&ml=1', '2021-03-06 19:42:59.000000', '2021-06-24 20:04:11.564717', 'Philip van Ravesteyn', 'uitzinnignl-ravesteyn-philip-van', ''),
(163, 'tjampoer.nl', '', '', '', '', '06-81429655', 'info@tjampoer.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:43:48.000000', '2021-06-05 09:09:37.342078', '', 'tjampoernl', ''),
(164, 'hoornradio.nl', '', '', '', '', '', 'redactie@hoorngids.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:47:47.000000', '2021-03-06 19:48:50.605164', '', 'hoornradionl', NULL),
(165, 'hoornsdagblad.nl', '', '', '', '072-8200600', '', 'redactie@xyto.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:49:06.000000', '2021-06-04 21:39:36.250655', '', 'hoornsdagbladnl', ''),
(166, 'hoorngids.nl', '', '', '', '', '', 'redactie@hoorngids.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:51:04.000000', '2021-03-06 19:51:39.522303', '', 'hoorngidsnl', NULL),
(167, 'andijkernieuws.net', '', '', '', '', '06-53870258', 'apbredactie@gmail.com', 10, 0, 'NL', 1, '', '2021-03-06 19:51:57.000000', '2021-06-04 21:16:24.379149', '', 'andijkernieuwsnet', ''),
(168, 'drimble.nl', '', '', '', '', '', 'info@drimble.nl', 10, 0, 'NL', 1, 'Kost geld', '2021-03-06 19:53:31.000000', '2021-12-09 12:21:21.937466', '', 'drimblenl', ''),
(169, 'vooreenmooiestad.nl', '', '', '', '', '06-14355574', '', 10, 0, 'NL', 1, '', '2021-03-06 19:54:43.000000', '2021-06-04 21:13:48.610328', '', 'vooreenmooiestadnl', ''),
(170, 'lokaaltotaal.nl', '', '', '', '0223-661425', '', 'info@lokaaltotaal.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:55:54.000000', '2021-06-04 22:10:33.820277', '', 'lokaaltotaalnl', ''),
(171, 'ikhouvanhoorn.nl', '', '', '', '', '', 'info@ikhouvanhoorn.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:57:38.000000', '2021-03-06 19:58:22.613890', '', 'ikhouvanhoornnl', NULL),
(172, 'huisverloren.nl', '', '', 'Hoorn', '0229-210608', '', 'info@huisverloren.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:58:43.000000', '2021-06-04 21:40:04.618548', 'Christiaan', 'huisverlorennl', ''),
(173, 'veeltebeleven.nl', '', '', '', '0226-391031', '', 'info@veeltebeleven.nl', 10, 0, 'NL', 1, '0226 394261', '2021-03-06 20:01:25.000000', '2021-08-19 14:00:30.254457', '', 'veeltebelevennl', ''),
(174, 'weekbladzondag.nl', '', '', '', '0229-213633', '', 'redactie@weekbladzondag.nl', 10, 0, 'NL', 1, 'Ook via Karel Huijing\r\n\r\nhttps://weekbladzondag.nl/redactie/redactie--uploadformulier\r\n\r\n Contact\r\n\r\nWilt u in contact komen met één van de medewerkers van Weekblad  Zondag, heeft u een vraag of wilt u meer informatie ontvangen? Via onderstaande contactmogelijkheden helpen wij u graag verder.\r\nAdresgegevens:\r\n\r\nWeekblad Zondag\r\nGeldelozeweg 33\r\n1625 NW Hoorn\r\nTel.  0229 - 213 633\r\nFax. 0229 - 231 961 \r\nOpeningstijden kantoor:\r\n\r\nMaandag van 08.30 tot 17.00 uur\r\nDinsdag van 08.30 tot 17.00 uur\r\nWoensdag van 08.30 tot 17.00 uur\r\nDonderdag van 08.30 tot 21.00 uur\r\nVrijdag van 08.30 tot 16.00 uur\r\nContact met de advertentieverkoop\r\n\r\nRens Schrage\r\n\r\nMarco Kuperus\r\n\r\nRuud Leek \r\nAdvertentiemateriaal via e-mail\r\n\r\nadvertenties@weekbladzondag.nl\r\nRedactiemateriaal via e-mail\r\n\r\nredactie@weekbladzondag.nl', '2021-03-06 20:02:31.000000', '2021-08-19 13:32:28.295768', '', 'weekbladzondagnl', ''),
(175, 'rodimedia.nl', '', '', '', '0226-333311', '', 'advies@rodi.nl', 10, 0, 'NL', 1, '', '2021-03-06 20:03:32.000000', '2021-08-19 13:51:37.512947', '', 'rodimedianl', ''),
(176, 'enkhuizerdagblad.nl', '', '', '', '072-8200600', '', 'info@xyto.nl', 10, 0, 'NL', 1, '', '2021-03-06 20:04:29.000000', '2021-06-04 21:39:07.043899', '', 'enkhuizerdagbladnl', ''),
(177, 'de andijker', '', '', '', '0228-593605', '', 'info@andijker.nl', 10, 0, 'NL', 1, '', '2021-03-06 20:07:57.000000', '2021-06-04 22:09:46.341938', '', 'de-andijker', ''),
(178, 'Stevens, Benny', '', '3222AG', '', '0181-324310', '06-54327012', 'indische@artiesten.club', 0, 0, 'NL', 0, '', '2021-03-08 20:23:17.000000', '2021-06-04 22:14:30.495736', 'Benny', 'stevens-benny', ''),
(179, 'Rijswijk, Joke Y', '', '', 'Hoorn', '', '', 'joke.y.rijswijk@live.nl', 1, 0, 'NL', 0, '', '2021-03-31 20:05:28.000000', '2021-03-31 20:09:00.413410', 'Joke/Harrij', 'rijswijk-joke-y', ''),
(180, 'Evers, Han', '', '', 'Hoorn', '', '06-33831814', 'hanevers.evers7@gmail.com', 2, 4, 'NL', 1, '', '2021-04-06 14:01:03.000000', '2021-10-27 14:40:12.840534', 'Han', 'evers-han', ''),
(181, 'Huying, Karel & Sonja', '', '', 'Hoorn', '0229-235850', '', '', 1, 0, 'NL', 0, 'Eventual bestuurslid\r\n7 apr gesproken over bestuursfunctie', '2021-04-07 20:15:02.000000', '2021-04-08 20:20:42.368150', 'Karel & Sonja', 'huying-karel-sonja', ''),
(182, 'Schoonen, Peter William', '', '', 'Noordwijk', '', '06-53547736', '', 0, 0, 'NL', 0, 'Robijnstaete.weebly.com', '2021-04-07 20:21:47.000000', '2021-05-23 13:31:46.491382', 'Peter William', 'schoonen-peter-william', ''),
(183, 'Berkum-Schouten, van Marianne', 'Fruitlaan 111', '1689HH', 'Zwaag', '0229-237470', '', 'mjs.van.berkum-schouten@quicknet.nl', 12, 4, 'NL', 0, 'Seniorenvereniging Zwaag', '2021-04-08 20:04:56.000000', '2021-06-04 21:42:02.689562', 'Marianne', 'berkum-schouten-van-marianne', ''),
(184, 'Ottonel', '', '', '', '', '', 'ottonel20@gmail.com', 0, 0, 'NL', 0, 'Had 2 kaartjes besteld', '2021-04-09 13:59:21.000000', '2021-04-09 14:06:50.661007', 'Otto & Nel', 'ottonel', ''),
(185, 'Rigter. E', '', '', '', '', '', 'e.rigter@outlook.com', 2, 0, 'NL', 0, 'Relatie van Amy', '2021-04-09 14:09:57.000000', '2021-05-17 14:27:35.190571', 'E', 'rigter-e', ''),
(186, 'Hamaker, Anna', '', '', '', '', '', 'annammbakker@ziggo.nl', 3, 5, 'NL', 0, '', '2021-04-09 14:12:42.000000', '2021-05-23 14:06:38.461448', 'Anna', 'hamaker-anna', ''),
(187, 'Koopman, Agnita', '', '', '', '', '', 'appelman@quicknet.nl', 15, 5, 'NL', 0, '', '2021-04-09 14:15:15.000000', '2021-10-08 21:06:52.099105', 'Agnita', 'koopman-agnita', ''),
(188, 'Hibma, Andries', '', '', '', '', '', 'ahibma@hotmail.com', 15, 5, 'NL', 0, '', '2021-04-09 14:17:22.000000', '2021-10-08 20:59:27.590580', 'Andries', 'hibma-andries', ''),
(190, 'Bakker, Veronica', '', '', '', '', '', 'veronicabakker@xs4all.nl', 15, 5, 'NL', 0, '', '2021-04-09 14:21:28.000000', '2021-10-08 20:15:22.142185', 'Veronica', 'bakker-veronica', ''),
(192, 'Craane, Ben', '', '', '', '', '', 'bencraane@quicknet.nl', 15, 5, 'NL', 0, '', '2021-04-09 14:27:26.000000', '2021-10-08 20:33:34.363310', 'Ben', 'craane-ben', ''),
(193, 'Weatern', '', '', '', '', '', 'c.western@quicknet.nl', 0, 0, 'NL', 0, '', '2021-04-09 14:28:35.000000', '2021-04-09 14:29:25.315126', 'C', 'weatern', ''),
(194, 'Bartens, Charlotte', '', '', '', '', '', 'charlottebartens@hotmail.com', 15, 0, 'NL', 0, '', '2021-04-09 14:30:21.000000', '2021-10-08 20:16:32.552624', 'Charlotte', 'bartens-charlotte', ''),
(195, 'Leyen, Wil', '', '', '', '', '', 'wilvanleyen@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:32:03.000000', '2021-05-23 14:08:26.558868', 'Wil van', 'leyen-wil', ''),
(196, 'Nugter, C.J.', '', '', '', '', '', 'cj.nugter@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:33:35.000000', '2021-05-23 14:11:30.700776', 'C.J.', 'nugter-cj', ''),
(197, 'Dol, Corrie', '', '', '', '', '', 'cmdollaan@gmail.com', 15, 5, 'NL', 0, '', '2021-04-09 14:34:44.000000', '2021-10-08 20:36:15.473669', 'Corrie', 'dol-corrie', ''),
(198, 'Cor-Hannie', '', '', '', '', '06-12345678', 'cor-hannie@hotmail.com', 15, 5, 'NL', 0, '', '2021-04-09 14:37:02.000000', '2021-10-27 14:34:05.664532', 'Cor & Hannie', 'cor-hannie', ''),
(199, 'Truin, Dave', '', '', '', '', '', 'truin1@hotmail.com', 0, 4, 'NL', 0, '', '2021-04-09 14:38:33.000000', '2021-05-23 14:13:07.196142', 'Dave', 'truin-dave', ''),
(200, 'Groen', '', '', '', '', '', 'winveragroen@outlook.com', 15, 0, 'NL', 0, '', '2021-04-09 14:41:01.000000', '2021-10-08 20:55:26.681983', 'Wim & Vera', 'groen', ''),
(201, 'Paelsen,Corrie', '', '', '', '', '', 'corry.p@quicknet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:42:04.000000', '2021-05-23 14:12:16.068708', 'Corrie', 'paelsencorrie', ''),
(202, 'Meekel, Desire', '', '', '', '', '', 'desire.meekel@quickneet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:44:08.000000', '2021-05-23 14:08:59.344781', 'Desire', 'meekel-desire', ''),
(203, 'zee, dorati', '', '', '', '', '', 'dorativanrussum@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:46:29.000000', '2021-05-19 14:10:48.060045', 'E van der', 'zee-dorati', ''),
(204, 'X', '', '', '', '', '', '1771sk-27@hetnet.nl', 1, 0, 'NL', 0, '', '2021-04-09 14:48:21.000000', '2021-04-17 09:08:32.728454', '1771sk', 'x', ''),
(206, 'Sijm, Mark', '', '', 'Hoorn', '', '06-14355378', 'sijmmark@gmail.com', 9, 7, 'NL', 0, 'Beheerder Oosterkerk', '2021-04-11 15:19:34.000000', '2021-10-08 20:32:17.871894', 'Mark', 'sijm-mark', ''),
(207, 'Kok, Jaap', '', '1951', 'Velsen Noord', '0251-221492', '06-20591074', 'kok.j@quicknet.nl', 4, 0, 'NL', 0, '', '2021-04-12 13:59:55.000000', '2021-10-08 21:06:11.572398', 'Jaap', 'kok-jaap', ''),
(208, 'DJ Sonny', '', '', '', '', '06-49905724', 'oldharbour@quicknet.nl', 11, 0, 'NL', 0, '', '2021-04-12 14:14:33.000000', '2021-04-17 08:59:09.677652', '', 'dj-sonny', ''),
(209, 'Louter DJ, Maurice', '', '1693 A', 'Wervershoof', '0228-785350', '', 'maurice@dmisound.com', 0, 0, 'NL', 0, '', '2021-04-12 14:16:49.000000', '2021-04-12 14:20:02.567490', 'Maurice', 'louter-dj-maurice', ''),
(210, 'Mark', '', '', '', '', '06-19683313', 'jukejointjimmies@hotmail.com', 0, 0, 'NL', 0, '', '2021-04-12 14:24:49.000000', '2021-04-12 14:27:45.124045', 'Juke Joint Jimmies', 'mark', ''),
(211, 'Lubbers, Francisca Marijke', '', '', 'Wognum', '0229-504561', '06-24134188', 'franciscalubbers@hotmail.com', 15, 4, 'NL', 0, '', '2021-05-10 12:16:59.000000', '2021-10-25 11:39:06.190426', 'francisca, Marijke', 'lubbers-francisca-marijke', ''),
(212, 'Weekblad Zondg (Blom, manuela)', '', '', '', '', '06-55704534', 'info@weekbladzondag.nl', 10, 0, 'NL', 0, '', '2021-05-10 12:34:53.000000', '2021-08-29 19:57:21.288987', 'Blom, manuela', 'weekblad-zondg-blom-manuela', ''),
(213, 'Laan, Ria', '', '', '', '', '', 'laanria@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 12:46:13.000000', '2021-10-08 21:08:38.961290', 'Ria', 'laan-ria', ''),
(214, 'Versluys, Ria', '', '', '', '', '', 'mcm.versluys@quicknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:48:06.000000', '2021-05-23 12:50:35.459163', 'M.C.M. (Ria)', 'versluys-ria', ''),
(215, 'Harst, Rob en Cobie', '', '', '', '', '', 'r.v.d.harst@ziggo.nl', 15, 0, 'NL', 0, '', '2021-05-23 12:50:35.000000', '2021-10-08 20:57:41.534170', 'Rob en Cobie', 'harst-rob-en-cobie', ''),
(216, 'Kuin, Roel', '', '', '', '', '', 'roelkuin@live.nl', 15, 5, 'NL', 0, '', '2021-05-23 12:52:31.000000', '2021-10-08 21:07:36.420635', 'Roel', 'kuin-roel', ''),
(217, 'Dijkstra, Ruurd', '', '', '', '', '', 'ruurd.dijkstra@online.nl', 15, 5, 'NL', 0, '', '2021-05-23 12:53:42.000000', '2021-10-08 20:35:23.772704', 'Ruurd', 'dijkstra-ruurd', ''),
(218, 'Shaleika', '', '', '', '', '', 'shaleika@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 12:55:26.000000', '2021-05-23 13:24:59.223033', 'Imajan', 'shaleika', ''),
(219, 'Boekel, Theo', '', '', '', '', '', 'theoboekel@hetnet.nl', 15, 5, 'NL', 0, '', '2021-05-23 12:56:41.000000', '2021-10-08 20:21:57.400407', 'Theo', 'boekel-theo', ''),
(220, 'Baijards, Tilly en Marcel', '', '', '', '', '', 'tilly.baijards@hetnet.nl', 15, 5, 'NL', 0, '', '2021-05-23 12:57:33.000000', '2021-10-08 20:14:39.977448', 'Tilly en Marcel', 'baijards-tilly-en-marcel', ''),
(221, 'Wagenaar, Ton', '', '', '', '', '', 'tonwagenaar@quicnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:59:03.000000', '2021-05-23 12:59:58.453733', 'Ton', 'wagenaar-ton', ''),
(222, 'Ganseman, Tonni', '', '', '', '', '', 'ganseman@simpc.nl', 15, 5, 'NL', 0, '', '2021-05-23 12:59:58.000000', '2021-10-08 20:38:12.634370', 'Tonni', 'ganseman-tonni', ''),
(223, 'Beelen, Tonnie', '', '', '', '', '', 'b.beelen@quicknet.nl', 15, 5, 'NL', 0, '', '2021-05-23 13:01:02.000000', '2021-10-08 20:17:50.631021', 'Tonnie', 'beelen-tonnie', ''),
(224, 'Gilst, w van', '', '', '', '', '', 'wvangilst@qucknet.nl', 15, 5, 'NL', 0, '', '2021-05-23 13:02:01.000000', '2021-10-08 20:53:36.439894', 'W. van', 'gilst-w-van', ''),
(225, 'Buter, Wil en Nel', '', '', '', '', '', 'wj.butter@kpnmail.nl', 15, 5, 'NL', 0, '', '2021-05-23 13:03:07.000000', '2021-10-08 20:27:45.995903', 'Wil en Nel', 'buter-wil-en-nel', ''),
(226, 'Leyen, Wil van', '', '', '', '', '', 'wilvanleyen@hotmail.com', 15, 6, 'NL', 0, '', '2021-05-23 13:04:10.000000', '2021-10-08 21:02:20.203572', 'Wil van', 'leyen-wil-van', ''),
(227, 'Ooievaar, Peter', '', '', '', '', '', 'vrievaar@hotmail.com', 0, 8, 'NL', 0, '', '2021-05-23 13:38:10.000000', '2021-05-23 13:39:56.578282', 'Peter', 'ooievaar-peter', ''),
(228, 'Steen, Peter van der', '', '', '', '', '', 'pevades@live.com', 0, 8, 'NL', 0, '', '2021-05-23 13:40:12.000000', '2021-05-23 13:41:22.979654', 'Peter', 'steen-peter-van-der', ''),
(229, 'Brink, Peter van de', '', '', '', '', '', 'peter.vdbrink@hotmail.com', 15, 5, 'NL', 0, '', '2021-05-23 13:41:38.000000', '2021-10-08 20:22:32.775946', 'Peter', 'brink-peter-van-de', ''),
(230, 'Veen, Peter van', '', '', '', '', '', 'peter.vanveen@quicnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:43:45.000000', '2021-05-23 13:46:15.440425', 'Peter', 'veen-peter-van', ''),
(231, '??, Pieter en Erna', '', '', '', '', '', '', 15, 5, 'NL', 0, '', '2021-05-23 13:46:15.000000', '2021-10-08 20:13:56.406807', 'Pieter en Erna', 'pieter-en-erna', ''),
(232, 'Heddes, P.L.C.M.', '', '', '', '', '', 'plcm.heddes@quicknet.com', 15, 5, 'NL', 0, '', '2021-05-23 13:47:23.000000', '2021-10-08 20:58:17.382249', 'P.L.C.M.', 'heddes-plcm', ''),
(233, 'Veen, Rene', '', '', '', '', '', 'rene.vanveen@quicknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:49:29.000000', '2021-05-23 13:52:10.855980', 'Rene', 'veen-rene', ''),
(234, 'Bron, Ron', '', '', '', '', '', 'rbron19733@kpn.nl', 15, 6, 'NL', 0, 'Danseen', '2021-05-23 13:52:11.000000', '2021-10-08 20:23:02.076345', 'Ron', 'bron-ron', ''),
(235, 'Blomme, Vincent', '', '', '', '', '', 'vincent24@hotmail.com', 15, 5, 'NL', 0, '', '2021-05-23 13:54:34.000000', '2021-10-08 20:25:11.193600', 'Vincent', 'blomme-vincent', ''),
(236, 'Les Ombres', '', '', '', '0229-232064', '06-27842400', 'lesombres4@gmail.com', 7, 0, 'NL', 0, '', '2021-05-28 19:29:43.000000', '2021-05-28 19:31:28.777628', 'Onbekend', 'les-ombres', ''),
(237, 'Uit Braband', '', '', '', '', '', 'fitters-degouw@home.nl', 0, 8, 'NL', 0, 'Ontmoet bij Verbiest 1ste Rock & Roll vrijdansen', '2021-06-07 18:45:54.000000', '2021-06-07 18:52:09.794876', 'Braband', 'uit-braband', ''),
(238, 'Bruijn-Teterisse', '', '', 'Hoorn', '', '', '', 15, 4, 'NL', 0, 'Samen met J.Rozenberg - Kirkhoff', '2021-06-22 21:16:02.000000', '2021-10-08 20:24:34.235791', 'L, en J. Rozenberg-K', 'bruijn-teterisse', ''),
(239, 'Rozenberg - Krikhoff, J', '', '1621 A', 'Hoorn', '', '06-23096919', 'j.roznenberg@quicknet.nl', 15, 4, 'NL', 0, 'Samen met L. Bruijn - Tererisse\r\n22 juni 2 kaartjes NID', '2021-06-22 21:21:47.000000', '2021-10-10 12:05:30.089055', 'J', 'rozenberg-krikhoff-j', ''),
(240, 'westfriesweekblad@bdu.nl', '', '', '', '', '', 'westfriesweekblad@bdu.nl', 10, 0, 'NL', 0, 'Via Karel Huying', '2021-06-24 19:33:29.000000', '2021-09-03 18:46:20.280665', '', 'westfriesweekbladbdunl', ''),
(241, 'Radio Hoorn', '', '', '', '', '', 'redactie@weeff.nl', 10, 0, 'NL', 0, 'Via Karel Huijing', '2021-06-24 19:36:04.000000', '2021-06-24 19:38:31.147690', '', 'radio-hoorn', ''),
(242, 'Sinterklaas', 'Klaas', '', 'Spanje', '', '', 'sint@nos.nl', 0, 0, 'NL', 0, '', '2021-06-25 11:42:19.000000', '2021-06-25 11:43:22.454940', 'Sint', 'sinterklaas', 'images/JDB_1024_2016111220161112_135111.jpg'),
(244, 'Tentua, Carl', '', '', '', '0181 214360', '06 13351818', '', 0, 0, 'NL', 0, '', '2021-07-04 20:13:40.000000', '2021-07-04 20:15:29.682723', 'Carl', 'tentua-carl', ''),
(245, 'Hoorns Nieuwsblad', '', '', '', '', '', 'redactie.hrn@rodi.nl', 10, 0, 'NL', 0, '', '2021-07-09 12:47:12.000000', '2021-07-09 12:49:52.079090', '', 'hoorns-nieuwsblad', ''),
(246, 'Noordhollands Dagblad regio Hoorn', '', '', '', '', '', 'redactie.wef@nhd.nl', 10, 0, 'NL', 0, '', '2021-08-18 14:41:35.000000', '2021-08-29 19:59:26.293405', 'Corine de Vries', 'noordhollands-dagblad-regio-hoorn', ''),
(247, 'Bronsgeest, Cokky', '', '', '', '', '', 'cokkybronsgeest@quicknet.nl', 15, 9, 'NL', 0, '12 sept Angklung concert', '2021-09-02 19:22:19.000000', '2021-09-10 15:20:48.175611', 'Cokky', 'bronsgeest-cokky', '');
INSERT INTO `contacts_contact` (`id`, `naam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `memo`, `datum_inserted`, `datum_updated`, `voornaam`, `slug`, `contact_image`) VALUES
(248, 'Drijver, Margreet', '', '', '', '', '', 'charlesenmargreet@quicknet.nl', 12, 0, 'NL', 0, 'Antwoord gegeven op de vraag om op de hoogte te blijven over Acara Vita Nova dd 2-9-2021\r\nDirigent van zang koren', '2021-09-03 06:38:19.000000', '2021-10-08 20:30:16.820696', 'Margreet', 'drijver-margreet', ''),
(249, 'Docter, Ingrid', '', '', '', '', '', 'ingriddocter@hotmail.com', 4, 0, 'NL', 0, 'medewerking verleend aan Stichting Op Roet dd 4-9-2021', '2021-09-03 06:43:25.000000', '2021-10-08 20:31:20.163459', 'Ingrid', 'docter-ingrid', ''),
(250, 'Adema? / Podoiumplein', '', '', '', '', '', '', 14, 0, 'NL', 0, 'Podiunpein', '2021-09-07 20:06:00.000000', '2021-09-07 20:08:32.476425', 'Hilbrand', 'adema-podoiumplein', ''),
(251, 'Woldberg, Marianne y', '', '', '', '', '', 'mariannewoldberg@kpnmail.nl', 15, 9, 'NL', 0, '2 kaartjes angklung concert 12-09-2021', '2021-09-10 11:13:23.000000', '2021-09-10 18:22:42.027447', 'Marianne', 'woldberg-marianne-y', ''),
(252, 'Vrooijen, Mah', '', '', '', '', '', 'mah.vrooijen@kpnmail.nl', 15, 9, 'NL', 0, '2 kaartjes besteld Angklung concert 12-09-2021', '2021-09-10 11:15:36.000000', '2021-10-10 12:03:36.021141', 'Mah', 'vrooijen-mah', ''),
(253, 'Foss, A', '', '', '', '', '', 'a.foss@smaragdreizen.nl', 5, 0, 'NL', 0, '7 kaartjes gereserveerd angklung concert 12-09-2021', '2021-09-10 11:18:22.000000', '2021-10-08 20:37:35.190891', 'Amy', 'foss-a', ''),
(254, 'mah.vrooijen', '', '', '', '', '', 'mah.vrooijen@kpnmail.nl', 15, 9, 'NL', 0, '', '2021-09-10 15:12:45.000000', '2021-09-10 15:14:12.593043', 'mah.', 'mahvrooijen', ''),
(256, 'Meijer, Elly', '', '', '', '', '06 - 42508292', 'e.meijer7@hotmail.com', 15, 9, 'NL', 0, '', '2021-09-10 18:26:38.000000', '2021-10-10 12:12:42.457170', 'Elly', 'meijer-elly', ''),
(257, 'Freccia', '', '', '', '', '', 'freccia@zonnet.nl', 15, 9, 'NL', 0, '', '2021-09-10 18:35:31.000000', '2021-09-10 18:37:26.266799', 'Freccia', 'freccia', ''),
(258, 'Wolfe, Wie', '', '', '', '', '', 'wiewolfe@me.com', 15, 9, 'NL', 0, '', '2021-09-10 18:37:31.000000', '2021-10-10 12:07:14.826482', 'Wie', 'wolfe-wie', ''),
(260, 'Esch van, Theo en Ria', '', '', '', '', '', 'tth.vanesch@quicknet.nl', 15, 9, 'NL', 0, '', '2021-09-11 07:57:48.000000', '2021-09-11 08:06:18.633146', 'Theo & Ria', 'esch-van-theo-en-ria', ''),
(261, 'ms, astrid', '', '', '', '', '', 'msastrid@hotmail.com', 15, 9, 'NL', 0, '', '2021-09-11 20:17:18.000000', '2021-09-11 20:18:29.256804', 'astrid', 'ms-astrid', ''),
(262, 'Kohlbrugge, Gilbert', '', '', '', '', '', 'gilbert.kohlbrugge@gmail.com', 15, 9, 'NL', 0, '3 personen', '2021-09-12 18:17:45.000000', '2021-09-12 18:20:12.490942', 'Gilbert', 'kohlbrugge-gilbert', ''),
(263, 'Haas, Frieda', '', '', '', '', '', 'haasfrieda@telfort.nl', 15, 0, 'NL', 0, '', '2021-09-12 18:20:17.000000', '2021-09-12 18:21:15.532567', 'Frieda', 'haas-frieda', ''),
(264, 'Mens, D', '', '', '', '', '', 'mens.d@kpnmail.nl', 15, 9, 'NL', 0, '', '2021-09-12 18:21:20.000000', '2021-09-12 18:22:58.218679', 'D', 'mens-d', ''),
(265, 'Broersen', '', '', 'Hoorn', '', '06 – 11100749', 'broersen@abc.nop', 15, 9, 'NL', 0, '', '2021-09-13 12:29:57.000000', '2021-09-13 12:38:01.313795', 'Broersen', 'broersen', ''),
(266, 'Charlesen, Margreet', '', '', '', '', '', 'charlesenmargreet@quicknet.nl', 13, 4, 'NL', 0, 'Zang lerares', '2021-09-20 14:27:05.000000', '2021-09-20 14:29:26.663167', 'Margreet', 'charlesen-margreet', ''),
(267, 'HI HO Silver, Jaap', '', '', 'Dordrecht?', '', '06 - 21223034', 'jaap@hihosilver.nl', 7, 8, 'NL', 0, 'Tribute band Elvis Presley\r\n\r\n21sept2021 gezien in Het Park, goede band', '2021-09-21 19:35:48.000000', '2021-09-21 19:42:16.297108', 'Jaap', 'hi-ho-silver-jaap', ''),
(268, 'Mensingh, Armand', '', '', '', '', '06-15164990', '', 6, 0, 'NL', 0, 'Organisator Tong Tong (Paser Malam)', '2021-09-21 19:50:02.000000', '2021-12-09 14:10:40.039237', '', 'mensingh-armand', ''),
(269, 'Oerlemans, Henk', '', '', '', '', '', 'lemansvideo@quicknet.nl', 15, 4, 'NL', 0, 'Doet iets met video', '2021-09-27 09:25:01.000000', '2021-09-27 09:30:31.738524', 'Henk', 'oerlemans-henk', ''),
(270, 'Snoep, Ella', 'Dorpstraat 69', '1657AC', 'Abbekerk', '0229-581822', '', '', 4, 4, 'NL', 0, 'Ella is ca. 80 jaar en verhalen verteller \r\nspecialiteit : kinder verhalen\r\n\r\nhttps://ellasnoep.nl/\r\n\r\n\r\nElla Snoep\r\nTheater voor jong en oud\r\n\r\nPoppen | Maskers | Objecten\r\n\r\n    Home\r\n    Theater voorstellingen\r\n    \r\n    Biografie\r\n\r\nVan Ella Reitsma tot Ella Snoep\r\n\r\nAls Ella Reitsma studeerde ze kunstgeschiedenis. Na haar huwelijk noemde ze zich Ella Snoep (een veel leukere naam). Ze begon met het maken van marionetten en decors en gaf theatervoorstellingen door het hele land. En natuurlijk paste daar het best de naam Ella Snoep bij. Bovendien hadden haar twee kinderen Snoep als achternaam. Zij waren haar inspiratie en hielpen ook geregeld bij de voorstellingen.\r\n\r\nSnoep gaf les aan de universiteit in Utrecht, aan de Academie van Wanda Reumer in die stad (nu Hogeschool der Kunsten), later aan de theaterschool in Amsterdam. Ze begon part time bij het weekblad Vrij Nederland te werken en schreef onder de naam Ella Reitsma artikelen over kunst, cultuur en geschiedenis. Dat deed ze zo’n kleine 30 jaar lang en van part time kwam een vier dagen contract als redacteur beeldende kunst.\r\n\r\nUit haar theatervoorstellingen kwamen kinderboeken tot stand, uit haar Vrij Nederland-bezigheden boeken, artikelen voor tijdschriften, inleidingen op tentoonstellingen en lezingen. Ze gebruikte dan de naam Ella Reitsma. Hoofd en hart waren naar buiten toe gescheiden.\r\n\r\nDe laatste 10 tot 15 jaar heeft ze zich gespecialiseerd in de vroegste entomologe van West-Europa, de wetenschapster en kunstenaar Maria Sibylla Merian (1647-1717). Ella Reitsma gaf als eerste een gezicht aan Merians dochters: Johanna Helena Herolt en Dorothea Maria Graff. Die werkten meestal anoniem voor hun moeder die in de geleerden-wereld van toen een grote én verkoopbare naam had. Nu kunnen eindelijk de handen van deze drie vrouwen onderscheiden worden.\r\n\r\nUit dit langdurige Merianproject dat nog steeds doorloopt, ontstond een nieuwe passie: het kweken in eigen tuin van de planten die Maria Sibylla en haar dochters afbeeldden bij de metamorfosen van vlinders en andere insecten.\r\n\r\nLangzamerhand begon Ella Reitsma de verschillende vakken die ze beoefende te combineren. Ze begon oude planten te kweken in haar tuin in Abbekerk en maakte daar foto’s van. Die combineerde ze met foto’s van tekeningen van de drie Merian-vrouwen, hun voorlopers en navolgers. Er ontstonden kunstenaarsboeken met fotomontages en toegankelijke informatie. Daarmee ging ze ook exposeren.\r\n\r\nIn 2017 werden van april tot half juni in een van de prentenkabinetten van het Rijksmuseum 13 fotomontages tentoongesteld, ook weer met eigen informatie. De sterfdatum van Maria Sibylla Merian, 300 jaar geleden, werd herdacht.\r\n\r\nHet tentoongestelde materiaal is in 2018 opgenomen in de vaste collectie van het Rijksmuseum. Daar zijn ze te vinden onder de rubriek Kunstenaarsboeken en onder de naam Ella Reitsma.Snoep. Deze naam gebruikt ze sinds 2014. Toen kreeg ze haar eerste tentoonstelling in de Bakery van de Annet Gelink galerie in Amsterdam naar aanleiding van de tweede druk van haar boek Duizend en meer verhalen op sterk water.\r\n\r\nNa drie jaar volgde opnieuw in de Bakery een tentoonstelling met fotomontages en 4 kunstenaarsboeken Florilegia. Winter, Lente, Zomer, Herfst.\r\n\r\nTwee reizen naar Japan in 2017 en 2019 leverden nieuwe ideeën op en de theatervoorstelling: Akiko en de Vos met de 9 staarten. Daarvan is door Tijmen Snoep een youtube-film gemaakt.\r\n\r\nHet visuele verslag van beide Japanse reizen werd midden oktober 2020 in de Bakery van de Annet Gelink Gallery Amsterdam geopend onder de titel: Japan: oorlog en sprookjes.\r\n\r\nVanaf december 2020 werkt ze aan een nieuwe serie met ruim 80 fotomontages van planten, vruchten, vogels en insecten. Daar worden onder meer kunstenaarsboeken (30 h. x 46 br.) van gemaakt, verdeeld over de vier seizoenen.\r\n\r\nElla Snoep\r\nTheater voor jong en oud\r\n\r\nPoppen | Maskers | Objecten\r\nDorpsstraat 69\r\n1657 AC Abbekerk\r\nTel. 0229-581822\r\nEmail: Klik hier', '2021-10-08 19:19:44.000000', '2021-10-25 11:28:23.195407', 'Ella', 'snoep-ella', ''),
(271, 'Frans, Stephan', 'Wagenweg 83a', '1811MK', 'Alkmaar', '072 2340400', '', 'info@cateringropaja.nl', 5, 0, 'NL', 0, '', '2021-10-16 19:32:55.000000', '2021-10-16 19:38:09.116781', 'Stephan', 'frans-stephan', ''),
(272, 'Murhaban, Munir', 'Ophelialaan 81A', '1431HB', 'Aalsmeer', '0297 368555', '06 49910420', 'info@indonesiaindah.nl', 5, 0, 'NL', 0, '', '2021-10-16 20:07:42.000000', '2021-10-16 20:10:58.069168', 'Munir', 'murhaban-munir', ''),
(273, 'Livius, Gino Italiaanse zanger / ijs verkoper', '', '', 'Zwaag', '06 - 27109691', '06 - 27109690', '', 0, 0, 'NL', 0, 'Italiaan schep ijs.\r\nTevens zanger van het Italiaanse lied\r\n\r\nHeeft Facebook acount\r\nEn is op you tube zoek criteria Livius Julian \r\n\r\nhttps://www.youtube.com/watch?v=B4joIzfha4s', '2021-10-24 19:24:16.000000', '2021-10-27 14:18:41.481202', 'Gino, Julian', 'livius-gino-italiaanse-zanger-ijs-verkoper', ''),
(274, 'Gestel van, Jurre', '', '', 'Hilversum', '', '06 - 45116689', 'info@creativeowlmedia.nl', 10, 0, 'NL', 0, 'Multi media\r\nMaakt reclame films en videos\r\n\r\nwww.creativeowlmedia.nl', '2021-10-24 19:28:33.000000', '2021-10-24 19:35:11.536068', 'Jurre', 'gestel-van-jurre', ''),
(275, 'Neijman, Joke', '', '', '', '', '', 'jfnvdb@gmail.com', 15, 4, 'NL', 0, '26okt2021 2x kumpulan', '2021-10-26 12:20:32.000000', '2021-10-30 14:45:05.625722', 'Joke', 'neijman-joke', ''),
(276, 'Kollaard, Erwin', 'Benesserlaan 392', '1911VN', 'Uitgeest', '', '0617130541', 'info@miso-entertainment.nl', 7, 6, 'NL', 0, 'www.miso-entertainment.nl', '2021-11-01 15:08:16.000000', '2021-11-01 15:13:03.051036', 'Erwin', 'kollaard-erwin', ''),
(277, 'Optietot', '', '', '', '', '', 'optietot@gmail.com', 15, 4, 'NL', 0, '2x kumpulan 2nov2021', '2021-11-02 14:51:16.000000', '2021-11-02 14:55:31.999277', 'Optietot', 'optietot', ''),
(278, 'Salomonson, Herman', '', '', 'Vlijmen', '', '06-13067325', 'hermansalo@gmail.com', 7, 0, 'NL', 0, 'Gage 650,= Euro\r\n\r\nhttps://nl-nl.facebook.com/atonceband2016/\r\n\r\nDe Bandleden Zijn :\r\n\r\nQuintanella Pipit Marcus - Zang\r\nMichael Westerlink - Sologitarist / Zang\r\nLody Silooy - Bagitarist / Zang\r\nRoy Stok - Toetsenist\r\nHerman Salomonson - Slagwerk', '2021-11-08 19:48:43.000000', '2021-11-08 20:08:52.862498', 'Herman', 'salomonson-herman', ''),
(279, 'Los, Martijn', '', '', '', '', '06-40726111', 'info@ga-los.nl', 0, 0, 'NL', 0, 'Manager van/voor Ricky Risolles en Wieteke van Dort\r\n\r\nTheater tour Ya, dat is iets Indisch Niet in Schouwburg  Het Park ingekocht.\r\nWaarom niet', '2021-11-08 20:09:13.000000', '2021-11-08 20:14:01.059155', 'Martijn', 'los-martijn', ''),
(281, 'Koot van, Gerry', '', '', '', '+31(0)77-3730229', '', 'info@terrywhiteband.nl', 0, 0, 'NL', 0, 'Contact\r\n\r\nTel. +31(0)77-3730229\r\nE-mail info@terrywhiteband.nl', '2021-11-26 20:31:59.000000', '2021-11-26 20:34:22.478461', 'Gerry', 'koot-van-gerry', ''),
(282, 'Water van de, Wim', '', '', '', '', '06-51066637', 'wjvdwater@kpnmail.nl', 7, 8, 'NL', 0, 'bandleider van de Red Strats\r\n\r\nVoor boekingen en / of vragen\r\ncontact opnemen met het management van\r\nThe Red Strats: 036-53 79 325 \r\nof \r\n06-51 066 637.', '2021-11-28 14:38:08.000000', '2021-11-28 14:49:48.385861', 'Wim', 'water-van-de-wim', ''),
(283, 'Stelt, Jan', '', '', '', '06 23981063', '', 'janst50@live.nl', 7, 0, 'NL', 0, 'contactpersoon van The Bretels', '2021-11-30 12:52:37.000000', '2021-12-02 18:37:34.481373', 'Jan', 'stelt-jan', ''),
(284, 'Dj Vis, Jaap', '', '', '', '', '06-42852977', '', 11, 0, 'NL', 0, 'Wie is dit en wat voor muziek draait hij.\r\nContact met hem opnemen', '2021-12-08 21:40:02.000000', '2021-12-08 21:42:40.120013', 'Jaap', 'dj-vis-jaap', ''),
(285, 'NHD, Vink, Sandra', '', '', '', '', '', '', 10, 0, 'NL', 0, 'redactie.wef@nhd.nl', '2021-12-09 12:18:09.000000', '2021-12-09 12:20:01.515733', 'Sandra', 'nhd-vink-sandra', ''),
(286, 'Tatipata, Peter', '', '', '', '', '06-15571801', '', 7, 4, 'NL', 0, 'Black Eyes\r\nMoluks / Indische band', '2021-12-09 12:34:47.000000', '2021-12-09 12:37:56.539310', 'Peter', 'tatipata-peter', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_evenement`
--

CREATE TABLE `contacts_evenement` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `datum` datetime(6) NOT NULL,
  `aanvang` time(6) NOT NULL,
  `einde` time(6) NOT NULL,
  `zaal_open` time(6) NOT NULL,
  `thema` varchar(50) NOT NULL,
  `entree_prijs` decimal(6,2) NOT NULL,
  `voorverkoop_prijs` decimal(6,2) NOT NULL,
  `zitplaatsen` decimal(8,0) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `band_id` int(11) NOT NULL,
  `beheerder_id` int(11) NOT NULL,
  `catering_id` int(11) NOT NULL,
  `locatie_id` int(11) NOT NULL,
  `opbrengst` decimal(8,2) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `activiteiten_info` varchar(50) NOT NULL,
  `catering_info` varchar(50) NOT NULL,
  `organisator` varchar(50) NOT NULL,
  `organisator_info` varchar(80) NOT NULL,
  `volgende_datum_1` varchar(50) NOT NULL,
  `volgende_datum_2` varchar(50) NOT NULL,
  `uitverkocht` tinyint(1) NOT NULL,
  `activiteiten_info_2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `zitplaatsen`, `website`, `memo`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`, `opbrengst`, `slug`, `activiteiten_info`, `catering_info`, `organisator`, `organisator_info`, `volgende_datum_1`, `volgende_datum_2`, `uitverkocht`, `activiteiten_info_2`) VALUES
(1, 'Rock en Pop party', '2021-10-08 22:00:00.000000', '20:00:00.000000', '23:59:00.000000', '19:30:00.000000', 'Rock & Pop Party', '17.50', '15.00', '100', '', '.', '2020-09-14 15:41:21.000000', '2021-05-28 09:25:44.861726', 7, 12, 2, 5, '0.00', 'rock-en-pop-party', 'Tombola met mooie prijzen XXXXX', 'Indische catering aanwezig Dapur Yomy', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zondag 26 september Line dance party', 'Zondag middag/avond 28 november Kumpulan', 0, ''),
(2, 'Angklung concert 1', '2021-09-12 10:00:00.000000', '14:50:00.000000', '17:45:00.000000', '14:15:00.000000', 'Angklung Concert + workshop', '20.00', '17.50', '100', '', '', '2021-01-08 22:32:31.000000', '2021-08-25 11:14:30.297901', 13, 206, 2, 3, '1400.00', 'angklung-concert-1', 'Angklung Concert + Work shop &', 'Indische catering aanwezig: Dapur Jomy', 'VitaNova i.o.', 'VitaNova Baru Bangkit Dari Abu', '28 noverber Kumpulan', '12 december Angklung Concert', 0, 'Traditionele Indische Dansen'),
(3, 'Angklung Concert 2', '2021-12-11 23:00:00.000000', '14:00:00.000000', '18:00:00.000000', '13:30:00.000000', 'Angklung Concert + Workshop', '20.00', '17.50', '150', 'http://pesonaculture.com/nl/top/Traditionele_Dans', '', '2021-03-12 13:50:16.000000', '2021-10-15 11:53:52.056858', 10, 206, 2, 3, '2625.00', 'angklung-concert-2', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'VitaNova Baru Bangkit Dari Abu.', '', '', 0, ''),
(4, 'Rock en Roll', '2021-10-08 22:00:00.000000', '20:00:00.000000', '23:59:00.000000', '19:30:00.000000', 'Lets Rock', '15.00', '12.50', '100', 'http://Www.acaravitanlv.nl', 'Buma rechten worden door het Gouden Hoofd afgedragen', '2021-03-28 18:07:42.000000', '2021-04-11 15:35:16.316242', 7, 12, 2, 5, '0.00', 'rock-en-roll', 'Verzoek nummers mogelijk', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zondag 24 oktober Country Line Dance middag', 'Zaterdag 20 novenber Kumpulan middag/avond', 0, ''),
(5, 'Kumpulan Nationale Indische dag', '2021-08-28 22:00:00.000000', '15:00:00.000000', '21:00:00.000000', '14:30:00.000000', 'Kumpulan Nationaal Indische dag', '20.00', '17.50', '100', 'http://www.acaravitanova.nl', '', '2021-03-31 14:46:28.000000', '2021-08-11 10:18:36.122408', 6, 206, 2, 3, '0.00', 'kumpulan-nationale-indische-dag', 'Traditionele Indische danseern', 'Indische catering aanwezig', 'VitaNova i.o.', 'VitaNova Baru Bangkit Dari Abu.', '12 september Angklung Consert/Workshp &  Dansen', '28 november Kumpulan', 1, 'Concert + Workshop'),
(6, 'Country Line Dance Party', '2021-09-26 14:38:31.000000', '14:00:00.000000', '18:00:00.000000', '13:30:00.000000', 'It Country Time', '12.50', '10.00', '100', '', '', '2021-04-01 14:38:31.000000', '2021-07-02 20:03:27.251369', 4, 10, 2, 4, '0.00', 'country-line-dance-party', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zondag 28 november middag/avond Kumpulan', 'Zondag middag 12 december Anklung concert', 0, ''),
(7, 'Acara', '2021-09-20 19:14:28.000000', '14:00:00.000000', '18:00:00.000000', '13:30:00.000000', 'country/indorock', '12.50', '10.00', '60', '', '', '2021-04-15 19:14:29.000000', '2021-04-15 19:29:32.704113', 29, 8, 2, 2, '0.00', 'acara', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '24.10.2021', '12.12.2021', 0, ''),
(8, 'Pencak', '2021-05-17 15:17:22.000000', '14:00:00.000000', '12:00:00.000000', '14:00:00.000000', 'Pencak', '10.00', '7.50', '0', '', '', '2021-05-17 15:17:23.000000', '2021-05-17 15:22:56.979197', 4, 206, 2, 3, '0.00', 'pencak', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'VitaNova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '', '', 0, ''),
(9, 'Kumpulan', '2021-11-28 11:00:00.000000', '15:00:00.000000', '19:00:00.000000', '14:30:00.000000', 'Tropische sferen De Gordel van Smaragd', '17.50', '15.00', '100', 'http://www.acaravitanova.nl', 'Gezellige Indische middag vol=vol', '2021-06-21 09:48:33.000000', '2021-11-01 15:14:29.219950', 3, 206, 7, 3, '0.00', 'kumpulan', 'Thema: De Gordel van Smaragd', 'Catering: Nog onbekend', 'VitaNova I.O.', 'VitaNova Baru Bangkit Dari Abu.', 'zat 29 jan : Kumpulan met de ¨Wipe Out Selections¨', 'Info: www.acaravitanova.nl', 0, 'Tombola met mooie prijzen');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_fanclub`
--

CREATE TABLE `contacts_fanclub` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `aantal_leden` decimal(6,0) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_fanclub`
--

INSERT INTO `contacts_fanclub` (`id`, `naam`, `website`, `aantal_leden`, `datum_inserted`, `datum_updated`, `contact_id`, `memo`, `slug`) VALUES
(1, 'De Doorzakkers', '', '100', '2020-08-19 14:18:21.000000', '2020-08-19 14:18:21.000000', 2, '', 'slug'),
(2, 'De Dansers', '', '50', '2020-08-19 14:19:24.000000', '2020-08-19 14:19:24.000000', 3, '', 'slug'),
(3, 'De Zingers', '', '25', '2020-08-19 14:19:49.000000', '2020-08-19 14:19:49.000000', 2, '', 'slug'),
(5, 'Hot News', '', '80', '2020-08-19 14:21:08.000000', '2020-08-19 14:21:08.000000', 22, '', 'slug'),
(6, 'The Rocking Players', '', '1236', '2020-08-19 14:21:59.000000', '2020-08-19 14:21:59.000000', 3, '', 'slug'),
(7, 'Clif and his Loanstars', '', '300', '2020-08-19 14:22:45.000000', '2021-01-06 13:26:32.780355', 4, '', 'clif-and-his-loanstars'),
(8, 'De Stoel', '', '1', '2020-08-22 19:12:39.000000', '2020-08-22 19:12:39.000000', 14, '', 'slug'),
(9, 'Blackmail', '', '100', '2020-08-22 19:23:41.000000', '2020-08-22 19:23:41.000000', 15, '', 'slug'),
(10, 'The Streetrollers', 'https://thestreetrollers.webnode.nl/over-ons/', '349', '2020-08-24 15:59:01.000000', '2020-08-24 15:59:01.000000', 16, '', 'slug');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_page`
--

CREATE TABLE `contacts_page` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(200) NOT NULL,
  `views` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_ticket`
--

CREATE TABLE `contacts_ticket` (
  `id` int(11) NOT NULL,
  `aantal` decimal(3,0) NOT NULL,
  `betaald` tinyint(1) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `voorverkoop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_ticket`
--

INSERT INTO `contacts_ticket` (`id`, `aantal`, `betaald`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `evenement_id`, `voorverkoop`) VALUES
(9, '1', 0, '1x NID 17mei2021', '2021-05-20 19:08:01.000000', '2021-07-03 08:58:41.471245', 97, 5, 1),
(12, '4', 0, '4x 17mei2021 NID', '2021-05-22 21:04:10.000000', '2021-07-03 08:59:16.425741', 79, 5, 1),
(13, '2', 0, '2x 22 mei 2021 NID', '2021-05-23 12:32:33.000000', '2021-07-03 08:59:26.573323', 74, 5, 1),
(16, '2', 0, '2x 27mei2021 NID', '2021-05-27 11:59:21.000000', '2021-07-03 09:00:46.863661', 87, 5, 1),
(20, '2', 0, 'Test pagina', '2021-06-25 17:01:14.000000', '2021-07-09 12:38:19.195263', 12, 7, 0),
(23, '6', 0, '5x13juni2021 NID\r\n\r\n5 juli 1 extra kaartje toegevoegd.', '2021-06-25 17:14:07.000000', '2021-07-05 20:58:38.115541', 141, 5, 1),
(24, '2', 0, '2x NID 22juni2021', '2021-06-25 17:15:55.000000', '2021-07-03 09:00:38.372475', 239, 5, 1),
(26, '20', 0, 'reservering voor Fans van de band', '2021-06-25 17:30:50.000000', '2021-07-08 10:00:11.402061', 131, 5, 1),
(28, '2', 0, '', '2021-06-30 14:05:20.000000', '2021-07-03 08:43:40.034578', 12, 3, 0),
(29, '2', 1, 'Test', '2021-07-02 13:39:47.000000', '2021-07-03 08:43:21.524399', 156, 8, 1),
(30, '2', 0, 'Test', '2021-07-02 13:40:28.000000', '2021-07-03 08:42:24.325394', 156, 8, 1),
(31, '2', 1, 'Test', '2021-07-02 13:41:05.000000', '2021-07-03 08:42:00.021220', 156, 8, 0),
(32, '0', 0, '', '2021-07-05 15:13:13.000000', '2021-09-07 20:11:12.205007', 223, 2, 1),
(34, '2', 1, '12 sept 2021 Angklung concert', '2021-09-02 19:31:31.908838', '2021-09-02 19:31:31.908912', 247, 2, 1),
(35, '7', 1, '', '2021-09-07 20:05:28.132143', '2021-09-10 18:43:05.790160', 11, 2, 1),
(37, '2', 1, '', '2021-09-07 20:10:25.968030', '2021-09-10 18:43:43.955572', 11, 2, 1),
(38, '2', 1, '', '2021-09-07 20:17:26.396004', '2021-09-10 19:51:45.022604', 158, 2, 1),
(39, '2', 1, '', '2021-09-10 15:16:09.418052', '2021-09-10 19:40:24.376314', 252, 2, 1),
(40, '2', 1, '', '2021-09-10 18:24:41.842945', '2021-09-10 18:44:19.068094', 251, 2, 1),
(41, '1', 0, '', '2021-09-10 18:30:59.080490', '2021-09-10 19:54:23.477765', 256, 2, 1),
(42, '2', 1, '', '2021-09-10 18:40:31.065002', '2021-09-10 18:44:57.263002', 258, 2, 1),
(43, '2', 1, '', '2021-09-10 18:41:08.907321', '2021-09-10 18:45:21.698337', 257, 2, 1),
(44, '1', 1, '', '2021-09-10 19:42:53.333839', '2021-09-10 19:48:31.742034', 97, 2, 1),
(46, '2', 0, '', '2021-09-11 08:07:05.046629', '2021-09-11 08:07:05.046704', 260, 2, 1),
(48, '1', 1, '', '2021-09-11 20:20:19.055266', '2021-09-11 20:20:19.055326', 261, 2, 1),
(49, '2', 1, '2x 17,50\r\n1x 12,50', '2021-09-12 18:25:40.421671', '2021-09-12 18:25:40.421732', 262, 2, 1),
(50, '1', 1, '', '2021-09-12 18:26:30.617697', '2021-09-12 18:26:30.617760', 263, 2, 1),
(51, '1', 1, '', '2021-09-12 18:27:10.816720', '2021-09-12 18:27:10.816781', 264, 2, 1),
(52, '2', 1, '', '2021-09-13 12:36:21.707982', '2021-09-13 21:14:06.875824', 34, 2, 1),
(53, '1', 1, '', '2021-09-13 12:38:54.183097', '2021-09-13 12:38:54.183171', 265, 2, 0),
(54, '1', 1, 'Op 23sept2021 binnen gekomen\r\n27sept2021 via adoe.adoe website', '2021-09-27 09:32:49.484404', '2021-10-04 14:45:35.388703', 269, 9, 1),
(55, '1', 1, '', '2021-10-04 13:30:40.281385', '2021-10-04 14:48:48.828458', 158, 9, 1),
(57, '2', 1, '2x 26okt2021 Kumpulan', '2021-10-26 12:24:13.531622', '2021-10-30 14:40:18.378087', 275, 9, 1),
(58, '3', 1, '', '2021-10-30 14:41:48.204394', '2021-10-30 14:52:55.060775', 86, 9, 1),
(59, '2', 1, '', '2021-10-30 14:51:14.296988', '2021-10-30 14:53:41.799784', 87, 9, 1),
(60, '2', 1, '', '2021-11-02 14:56:28.380053', '2021-11-02 14:56:28.380125', 277, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_zaal`
--

CREATE TABLE `contacts_zaal` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `plaats` varchar(50) NOT NULL,
  `telefoon` varchar(16) NOT NULL,
  `website` varchar(50) NOT NULL,
  `volt440` tinyint(1) NOT NULL,
  `hulp_nodig` tinyint(1) NOT NULL,
  `vergunning_vereist` tinyint(1) NOT NULL,
  `vergunning_aangevraagd` tinyint(1) NOT NULL,
  `vergunning_datum` date NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `slug` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_zaal`
--

INSERT INTO `contacts_zaal` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `website`, `volt440`, `hulp_nodig`, `vergunning_vereist`, `vergunning_aangevraagd`, `vergunning_datum`, `datum_inserted`, `datum_updated`, `contact_id`, `slug`) VALUES
(2, 'Het Huis Verloren', '1621CW', 'Kerkstraat 10b', 'Hoorn', '0229-210608', '', 0, 0, 0, 0, '2021-04-15', '2020-08-19 18:52:00.000000', '2021-04-15 21:11:42.864660', 8, 'het-huis-verloren'),
(3, 'Oosterkerk, Huiskamer van Hoorn', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '0229-217909', '', 0, 0, 0, 0, '2021-04-11', '2020-08-19 18:57:09.000000', '2021-04-11 15:28:27.651711', 206, 'oosterkerk-huiskamer-van-hoorn'),
(4, 'Partycentrum De Witte Valk', '1689GB', 'Dorpstraat 175', 'Zwaag', '229261463', '', 0, 0, 0, 0, '0000-00-00', '2020-08-19 19:02:01.000000', '2020-08-19 19:02:01.000000', 10, 'slug'),
(5, 'Het Gouden Hoofd', '1695AJ', 'Westerblokker 80', 'Blokker', '0229-232691', '', 0, 0, 0, 0, '2020-09-07', '2020-08-22 22:44:45.000000', '2020-08-22 22:44:45.000000', 12, 'slug'),
(7, 'Foreesterhuis', '1621BR', 'Grote Oost 43', 'Hoorn', '0228 315 511', 'www.foreesterhuis.nl', 0, 0, 0, 0, '2021-04-15', '2020-09-11 14:53:33.000000', '2021-04-15 21:16:01.982750', 25, 'foreesterhuis'),
(8, 'Theaterzaal de Kreek', '1234aa', 'onbekend', 'Hoorn', '0619045335', '', 0, 0, 0, 0, '2020-12-23', '2020-12-23 21:40:37.000000', '2020-12-23 21:49:52.810993', 136, 'theaterzaal-de-kreek');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-11 10:00:50.552754', '1', 'The Magic Tones', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-09-11 10:01:27.291158', '2', 'De Stoel', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-09-11 10:02:27.062319', '3', 'The Rocking Payers', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-09-11 10:03:00.394322', '4', 'Blackmail', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-09-11 10:04:07.338763', '5', 'Te Street Rollers', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-09-11 10:04:58.272974', '6', 'Wipe Out Selection', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-09-11 10:05:29.803040', '7', 'The Mordants', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-09-11 10:11:56.192516', '8', 'Java Guitars Unlimited', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-09-11 10:14:12.754353', '9', 'Keep on Rocking', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-09-11 14:28:54.174889', '2', 'franklin', 1, '[{\"added\": {}}]', 4, 1),
(11, '2020-09-11 14:29:55.338492', '2', 'franklin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]', 4, 1),
(12, '2020-09-11 14:52:58.061384', '25', 'Peter de Wilde', 1, '[{\"added\": {}}]', 10, 2),
(13, '2020-09-11 14:56:57.207348', '7', 'Foreesterhuis', 1, '[{\"added\": {}}]', 11, 2),
(14, '2020-09-11 15:13:55.691664', '26', 'Nog onbekend', 1, '[{\"added\": {}}]', 10, 2),
(15, '2020-09-11 15:17:04.926866', '10', 'Perwarindo', 1, '[{\"added\": {}}]', 7, 2),
(16, '2020-09-11 15:19:07.034329', '10', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Website\"]}}]', 13, 2),
(17, '2020-09-11 15:30:54.350012', '5', 'Te Street Rollers', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Aantal leden\", \"Genre\", \"Aantal autos\", \"Bedrag\", \"Memo\"]}}]', 7, 2),
(18, '2020-09-11 15:33:54.998821', '27', 'Aaron Meyer (zang)', 1, '[{\"added\": {}}]', 10, 2),
(19, '2020-09-11 15:35:46.815828', '11', 'The Street Rollers', 1, '[{\"added\": {}}]', 7, 2),
(20, '2020-09-11 19:02:26.676221', '5', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(21, '2020-09-11 19:02:47.277099', '5', 'The Streetrollers', 2, '[]', 7, 2),
(22, '2020-09-11 19:06:29.480550', '108', 'Hoeven', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(23, '2020-09-11 19:07:26.080194', '106', 'Loet', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Soort\"]}}]', 10, 2),
(24, '2020-09-11 19:07:46.164167', '105', 'Lily vd Berg', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(25, '2020-09-11 19:08:03.875839', '104', 'Ben /Naney', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(26, '2020-09-11 19:08:22.603848', '103', 'Henny Mulsch', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(27, '2020-09-11 19:08:49.520468', '102', 'Henriette', 2, '[]', 10, 2),
(28, '2020-09-11 19:09:18.894272', '102', 'Henriette', 3, '', 10, 2),
(29, '2020-09-11 19:09:39.343223', '103', 'Henny Mulsch', 2, '[]', 10, 2),
(30, '2020-09-11 19:10:04.012406', '101', 'Joke/Harrij Neijman', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(31, '2020-09-11 19:10:28.389003', '100', 'Ankie Ten Haaf', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(32, '2020-09-11 19:10:46.669754', '99', 'xxxhoeven', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(33, '2020-09-11 19:11:03.697339', '98', 'J.Bothe', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(34, '2020-09-11 19:11:37.181495', '97', 'M. O. vd Waa-Meents', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(35, '2020-09-11 19:12:09.380834', '96', 'w.niklaas', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(36, '2020-09-11 19:12:29.452908', '95', 'W. S. Figueira', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(37, '2020-09-11 19:12:52.123495', '94', 'Loek en Narda van Lochem', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(38, '2020-09-11 19:13:11.740757', '93', 'Trouwerbach', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(39, '2020-09-11 19:14:02.096781', '92', 'Wim Daniels', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Soort\"]}}]', 10, 2),
(40, '2020-09-11 19:14:39.847132', '91', 'F. S. Leijting (Sylvia)', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(41, '2020-09-11 19:14:57.293963', '90', 'Sylvia Leyting', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(42, '2020-09-11 19:15:17.614276', '89', 'Stoffels', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(43, '2020-09-11 19:15:38.898923', '88', 'Saninda', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(44, '2020-09-11 19:15:58.547513', '87', 'R. J. van Eldik', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(45, '2020-09-11 19:16:29.187090', '86', 'Hulst', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(46, '2020-09-11 19:16:49.516011', '85', 'Rosita Bongers', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(47, '2020-09-11 19:17:14.192352', '84', 'Rita Doest', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(48, '2020-09-11 19:17:33.952901', '83', 'Richard Monkau', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(49, '2020-09-11 19:17:57.044036', '82', 'R. Schenk', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(50, '2020-09-11 19:18:21.798181', '81', 'Roland Eilbracht', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(51, '2020-09-11 19:18:49.557610', '80', 'Pia van de Broek', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(52, '2020-09-11 19:19:15.418582', '79', 'Peter de Rooij', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(53, '2020-09-11 19:19:38.881133', '78', 'Paul Nijhof', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(54, '2020-09-11 19:19:59.913481', '77', 'O. Coenraad', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(55, '2020-09-11 19:20:20.165475', '76', 'Nelly Kaayk', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(56, '2020-09-11 19:20:42.280933', '75', 'Nel ter Woort', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(57, '2020-09-11 19:21:05.671754', '74', 'Nani de Ruiter', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(58, '2020-09-11 19:21:28.251127', '73', 'M. Hoorn', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(59, '2020-09-11 19:21:54.403490', '72', 'Kampfraat', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(60, '2020-09-11 19:22:15.059446', '71', 'Harrij. J. Pattiradjawane', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(61, '2020-09-11 19:22:43.657758', '70', 'm.a.h. rooijen', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(62, '2020-09-11 19:23:07.330827', '69', 'M.Coers', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(63, '2020-09-11 19:23:28.403455', '69', 'M.Coers', 2, '[]', 10, 2),
(64, '2020-09-11 19:23:47.198445', '68', 'Luuk Franke', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(65, '2020-09-11 19:24:05.158580', '67', 'Luana Narua', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(66, '2020-09-11 19:24:24.897495', '67', 'Luana Narua', 2, '[]', 10, 2),
(67, '2020-09-11 19:24:44.451435', '66', 'Gan', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(68, '2020-09-11 19:25:05.261714', '65', 'Louise Postma Bongers', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(69, '2020-09-11 19:25:34.118744', '64', 'Lindi', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(70, '2020-09-11 19:26:27.250038', '63', 'Toko Lanny', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(71, '2020-09-11 19:26:59.221777', '62', 'R. van Ginkel', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(72, '2020-09-11 19:27:28.672480', '61', 'Inge Klaver', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(73, '2020-09-11 19:28:30.983595', '8', 'Christiaan Mulder', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Soort lid\"]}}]', 10, 2),
(74, '2020-09-11 19:28:59.234296', '9', 'Truus Ammeraal', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Soort lid\"]}}]', 10, 2),
(75, '2020-09-11 19:29:52.586533', '60', 'Jose Hooper', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(76, '2020-09-11 19:34:34.149129', '58', 'Jimmy Schaper', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(77, '2020-09-11 19:36:22.953165', '57', 'Jimmyjohn704', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(78, '2020-09-11 19:37:06.060352', '56', 'Joke. F. Neijman (Harrij)', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(79, '2020-09-11 19:40:23.548651', '56', 'Joke. F. Neijman (Harrij)', 2, '[]', 10, 2),
(80, '2020-09-11 19:40:56.957545', '55', 'Jenny Bron', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(81, '2020-09-11 19:41:24.897771', '54', 'Irma Hollander', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(82, '2020-09-11 19:42:47.866743', '54', 'Irma Hollander', 2, '[]', 10, 2),
(83, '2020-09-11 19:43:29.432985', '53', 'Martin en Ineke Janssen', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(84, '2020-09-11 19:44:02.773684', '52', 'Huib Kneepkens', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(85, '2020-09-11 19:44:33.919382', '51', 'H P Brandsma', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(86, '2020-09-11 19:45:07.000057', '50', 'Anne Mieke Baudain', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(87, '2020-09-11 19:45:34.809883', '49', 'G. S. Stelling', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(88, '2020-09-11 19:46:02.817519', '48', 'Stulp', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(89, '2020-09-11 19:47:18.372126', '47', 'Endang Stoke', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(90, '2020-09-11 19:48:00.997781', '46', 'E. Keet', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(91, '2020-09-11 19:48:40.442631', '45', 'Eddy Cretier', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(92, '2020-09-11 19:49:15.110317', '28', 'Aad en Corrie Laan', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(93, '2020-09-11 19:49:45.767916', '29', 'Martherus', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(94, '2020-09-11 19:50:15.888503', '30', 'Andries Posthuma', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(95, '2020-09-11 19:50:49.370389', '31', 'A. M. de Calonne', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(96, '2020-09-11 19:52:05.702060', '32', 'Anneke Duursma', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(97, '2020-09-11 19:52:38.194686', '33', 'Anneke Nieuwbuurt', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(98, '2020-09-11 19:53:16.417240', '34', 'A. Bijl', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(99, '2020-09-11 19:54:29.820625', '35', 'BepFritz48@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(100, '2020-09-11 19:54:59.451948', '37', 'Sebastiaan kahle', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(101, '2020-09-11 19:55:32.894290', '38', 'Carla Overtoom', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(102, '2020-09-11 19:56:16.724915', '39', 'Carmen Bali', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(103, '2020-09-11 19:57:18.934534', '40', 'Cees', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(104, '2020-09-11 19:58:55.624335', '41', 'C. Lokker', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(105, '2020-09-11 19:59:24.371842', '42', 'M. De Niet', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(106, '2020-09-11 20:00:07.694401', '43', 'E.HartmanKoh', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Soort\"]}}]', 10, 2),
(107, '2020-09-11 20:00:58.477500', '43', 'E.HartmanKoh', 2, '[]', 10, 2),
(108, '2020-09-11 20:01:46.791811', '44', 'E.Manuhutu', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(109, '2020-09-12 13:15:44.785478', '11', 'The Street Rollers', 3, '', 7, 2),
(110, '2020-09-12 13:16:37.677609', '7', 'Foreesterhuis', 2, '[]', 11, 2),
(111, '2020-09-12 17:20:27.738614', '10', 'Perwarindo', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 1),
(112, '2020-09-12 20:59:35.733135', '5', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(113, '2020-09-12 21:04:12.820953', '5', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Aantal autos\"]}}]', 7, 2),
(114, '2020-09-12 21:04:47.197752', '4', 'Blackmail', 2, '[]', 7, 2),
(115, '2020-09-13 19:18:20.476404', '16', 'Erlo van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Mobiel\", \"Soort\"]}}]', 10, 2),
(116, '2020-09-13 19:19:51.640506', '5', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Aantal autos\"]}}]', 7, 2),
(117, '2020-09-13 19:23:55.839444', '5', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Website\", \"Image\"]}}]', 7, 2),
(118, '2020-09-13 19:42:07.114680', '18', 'Martin', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Memo\"]}}]', 10, 2),
(119, '2020-09-13 19:46:11.935700', '8', 'Christiaan Mulder', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(120, '2020-09-13 19:46:30.455367', '9', 'Truus Ammeraal', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(121, '2020-09-13 19:46:51.546838', '10', 'Daphne', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(122, '2020-09-13 19:47:21.717648', '11', 'Amy Fosss', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(123, '2020-09-13 19:47:42.404551', '12', 'Eric Alders', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(124, '2020-09-13 19:48:31.283603', '13', 'CiCi 01', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Soort\"]}}]', 10, 2),
(125, '2020-09-13 19:48:55.727217', '14', 'Klaas Singer', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(126, '2020-09-13 19:49:38.688692', '15', 'Will Merkx', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(127, '2020-09-13 19:50:24.553131', '16', 'Erlo van der Hoeven', 2, '[]', 10, 2),
(128, '2020-09-13 19:54:20.693215', '17', 'Brain Leepel', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(129, '2020-09-13 19:54:50.861181', '18', 'Martin', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(130, '2020-09-13 20:00:25.897693', '19', 'Lannie dummy', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(131, '2020-09-13 20:14:39.937851', '9', 'Blackmail', 2, '[]', 13, 2),
(132, '2020-09-14 12:19:01.658676', '9', 'Blackmail', 2, '[]', 13, 2),
(133, '2020-09-14 12:58:48.665716', '3', 'The Rocking Payers', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(134, '2020-09-14 12:59:21.946820', '3', 'The Rocking Payers', 2, '[]', 7, 2),
(135, '2020-09-14 13:09:22.890687', '2', 'Dapur Jomy', 2, '[{\"changed\": {\"fields\": [\"Website\", \"Memo\"]}}]', 9, 2),
(136, '2020-09-14 15:29:56.950889', '6', 'Wipe Out Selection', 2, '[]', 7, 2),
(137, '2020-09-14 15:48:15.969864', '1', 'Kumpulan', 1, '[{\"added\": {}}]', 14, 2),
(138, '2020-09-14 16:00:17.626060', '1', 'Kumpulan', 2, '[]', 14, 2),
(139, '2020-09-14 16:08:01.115063', '69', 'Monique Coers', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(140, '2020-09-14 20:04:30.689867', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(141, '2020-09-14 20:04:53.763766', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(142, '2020-09-15 11:27:49.571985', '10', 'Perwarindo', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(143, '2020-09-15 11:36:50.236292', '109', 'Franky Harmusil', 1, '[{\"added\": {}}]', 10, 2),
(144, '2020-09-15 11:40:42.215051', '10', 'Perwarindo', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Memo\"]}}]', 7, 2),
(145, '2020-09-15 12:09:06.367227', '3', 'Corrie', 1, '[{\"added\": {}}]', 4, 2),
(146, '2020-09-15 12:09:26.094427', '3', 'Corrie', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 2),
(147, '2020-09-15 12:28:41.458118', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(148, '2020-09-15 12:31:15.972382', '4', 'Blackmail', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(149, '2020-09-15 12:33:57.353948', '12', 'DYD', 1, '[{\"added\": {}}]', 7, 2),
(150, '2020-09-15 12:35:18.948687', '3', 'The Rocking Payers', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(151, '2020-09-15 12:36:19.473415', '110', 'Nog onbekend', 1, '[{\"added\": {}}]', 10, 2),
(152, '2020-09-15 12:39:53.091901', '12', 'DYD (Wageningen)', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Bedrag\"]}}]', 7, 2),
(153, '2020-09-15 12:43:42.421463', '10', 'Perwarindo (Wageningen)', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Contact\"]}}]', 7, 2),
(154, '2020-09-15 12:44:42.405428', '12', 'DYD (Den Haag)', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Bedrag\"]}}]', 7, 2),
(155, '2020-09-15 12:47:04.513466', '10', 'Perwarindo (Wageningen)', 2, '[]', 7, 2),
(156, '2020-09-15 12:52:14.587871', '3', 'The Rocking Payers', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\", \"Aantal autos\", \"Memo\"]}}]', 7, 3),
(157, '2020-09-15 13:07:13.633067', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\", \"Aantal autos\", \"Memo\"]}}]', 7, 3),
(158, '2020-09-15 13:16:10.678649', '4', 'Blackmail', 2, '[{\"changed\": {\"fields\": [\"Aantal autos\", \"Memo\"]}}]', 7, 3),
(159, '2020-09-15 13:22:23.737293', '21', 'Co Bruijns', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(160, '2020-09-15 13:23:54.379918', '111', 'lani Landweer (Angklung)', 1, '[{\"added\": {}}]', 10, 2),
(161, '2020-09-15 13:32:05.654193', '7', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Memo\"]}}]', 7, 3),
(162, '2020-09-15 13:34:58.512485', '20', 'Fried Holtkamp', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 3),
(163, '2020-09-15 13:36:39.994104', '7', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(164, '2020-09-23 13:31:38.563610', '111', 'lani Landweer (Angklung)', 2, '[{\"changed\": {\"fields\": [\"Mobiel\", \"Emailadress\", \"Memo\"]}}]', 10, 2),
(165, '2020-09-23 13:34:11.080714', '13', 'Lani Landweer', 1, '[{\"added\": {}}]', 7, 2),
(166, '2020-09-23 13:49:49.842422', '10', 'Perwarindo (Wageningen)', 2, '[]', 7, 2),
(167, '2020-09-23 13:51:57.767970', '12', 'DYD (Den Haag)', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\"]}}]', 7, 2),
(168, '2020-09-23 14:08:53.823683', '13', 'Lani Landweer', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 2),
(169, '2020-09-23 14:11:08.862391', '109', 'Franky Harmusil', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 2),
(170, '2020-09-23 14:11:36.823227', '12', 'DYD (Den Haag)', 2, '[{\"changed\": {\"fields\": [\"Website\"]}}]', 7, 2),
(171, '2020-09-24 12:34:34.057287', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Memo\"]}}]', 7, 3),
(172, '2020-09-24 12:37:30.089391', '111', 'leni Landweer (Angklung)', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Memo\"]}}]', 10, 3),
(173, '2020-09-24 12:42:32.825350', '109', 'Franky Harmusil', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Memo\"]}}]', 10, 3),
(174, '2020-09-24 12:46:27.757254', '10', 'Perwarindo (Wageningen)', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(175, '2020-09-24 12:50:42.300846', '2', 'De Stoel', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(176, '2020-09-24 12:51:58.834698', '14', 'Klaas Singer', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(177, '2020-09-24 13:01:30.072067', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(178, '2020-10-01 14:38:15.138926', '10', 'Perwarindo (Wageningen)', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(179, '2020-10-01 14:39:08.636898', '10', 'Perwarindo (Wageningen)', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(180, '2020-10-01 15:28:29.021429', '5', 'Chinese Garden', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 9, 2),
(181, '2020-10-01 15:28:55.067998', '5', 'Chinese Garden', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 9, 2),
(182, '2020-10-09 14:19:10.039584', '6', 'Hap Wat', 1, '[{\"added\": {}}]', 9, 1),
(183, '2020-10-14 20:03:39.334046', '112', 'Andre Jacobs', 1, '[{\"added\": {}}]', 10, 2),
(184, '2020-10-14 20:30:43.447741', '113', 'Piet Danse', 1, '[{\"added\": {}}]', 10, 2),
(185, '2020-10-14 21:13:58.021845', '4', 'Toko Lannie', 2, '[{\"changed\": {\"fields\": [\"Catering prijs\"]}}]', 9, 2),
(186, '2020-10-14 22:00:40.535301', '3', 'Oosterkerk, Huiskamer van Hoorn', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Vergunning datum\"]}}]', 11, 2),
(187, '2020-10-19 18:42:51.638395', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(188, '2020-10-19 18:46:26.351539', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(189, '2020-10-19 18:52:35.361134', '24', 'Wim Geertman', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 10, 3),
(190, '2020-10-19 18:58:22.492021', '9', 'Keep on Rocking', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(191, '2020-10-19 19:07:22.903957', '22', 'Shirley Salomon', 2, '[{\"changed\": {\"fields\": [\"Mobiel\", \"Emailadress\"]}}]', 10, 3),
(192, '2020-10-19 19:10:03.900030', '14', 'Hot News', 1, '[{\"added\": {}}]', 7, 3),
(193, '2020-10-19 19:16:59.647307', '114', 'Junius', 1, '[{\"added\": {}}]', 10, 3),
(194, '2020-10-19 19:21:37.940902', '15', 'Hawaiian Fantasy', 1, '[{\"added\": {}}]', 7, 3),
(195, '2020-10-19 19:26:17.271189', '15', 'Hawaiian Fantasy', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(196, '2020-10-19 19:40:13.363493', '115', 'René Bes', 1, '[{\"added\": {}}]', 10, 3),
(197, '2020-10-19 19:42:31.983689', '16', 'The Red Pack', 1, '[{\"added\": {}}]', 7, 3),
(198, '2020-10-19 19:55:25.509505', '1', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\", \"Thema\"]}}]', 14, 3),
(199, '2020-11-03 14:48:27.616774', '116', 'Cliff Breton van Groll', 1, '[{\"added\": {}}]', 10, 3),
(200, '2020-11-03 14:51:32.987118', '17', 'Cliff and his Lonestars', 1, '[{\"added\": {}}]', 7, 3),
(201, '2020-11-03 14:53:00.112354', '17', 'Cliff and his Lonestars', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(202, '2020-11-03 14:58:36.443428', '117', 'Dick', 1, '[{\"added\": {}}]', 10, 3),
(203, '2020-11-03 15:01:04.402180', '18', 'The Blue Devils', 1, '[{\"added\": {}}]', 7, 3),
(204, '2020-11-03 15:02:52.706450', '118', 'onbekend', 1, '[{\"added\": {}}]', 10, 3),
(205, '2020-11-03 15:04:08.566781', '118', 'onbekend', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 3),
(206, '2020-11-03 15:07:19.852776', '19', 'The Bretels', 1, '[{\"added\": {}}]', 7, 3),
(207, '2020-11-10 11:05:07.715239', '119', 'Stichting het gehedicapte kind', 1, '[{\"added\": {}}]', 10, 2),
(208, '2020-11-10 11:06:09.109389', '119', 'Stichting het gehedicapte kind', 2, '[]', 10, 2),
(209, '2020-11-10 11:06:41.666700', '119', 'Stichting het gehedicapte kind', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 2),
(210, '2020-11-10 11:07:25.241789', '119', 'Stichting het gehedicapte kind', 2, '[]', 10, 2),
(211, '2020-11-10 11:13:40.900580', '119', 'Stichting het gehedicapte kind', 2, '[]', 10, 2),
(212, '2020-11-10 11:14:39.472354', '120', 'hcc nederland', 1, '[{\"added\": {}}]', 10, 2),
(213, '2020-11-10 11:15:46.178015', '120', 'hcc nederland', 3, '', 10, 2),
(214, '2020-11-10 11:19:16.709523', '119', 'Stichting het gehedicapte kind', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 1),
(215, '2020-11-10 11:23:11.656420', '115', 'René Bes', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 2),
(216, '2020-11-10 11:23:24.313278', '115', 'René Bes', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 2),
(217, '2020-11-10 14:14:37.619418', '121', 'Jantje', 1, '[{\"added\": {}}]', 10, 2),
(218, '2020-11-10 14:39:18.364985', '121', 'Jantje', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 2),
(219, '2020-11-10 14:41:55.287229', '119', 'Stichting het gehedicapte kind', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 2),
(220, '2020-11-10 14:43:29.690330', '119', 'Stichting het gehedicapte kind', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 2),
(221, '2020-11-10 14:47:49.194950', '121', 'Jantje', 3, '', 10, 2),
(222, '2020-11-12 20:12:50.095288', '5', 'Hot News', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 13, 3),
(223, '2020-11-12 20:21:22.758915', '122', 'Ron Bruin', 1, '[{\"added\": {}}]', 10, 3),
(224, '2020-11-12 20:23:39.039291', '20', 'The Cosy Rockers', 1, '[{\"added\": {}}]', 7, 3),
(225, '2020-11-16 13:15:23.872301', '123', 'Frans v.d. Brand Horninge', 1, '[{\"added\": {}}]', 10, 3),
(226, '2020-11-16 13:17:32.054913', '21', 'The Eastern Aces', 1, '[{\"added\": {}}]', 7, 3),
(227, '2020-11-16 13:29:57.733970', '124', 'Tom Janssen', 1, '[{\"added\": {}}]', 10, 3),
(228, '2020-11-16 13:34:43.290641', '22', 'The Rocking Drifters', 1, '[{\"added\": {}}]', 7, 3),
(229, '2020-11-16 13:45:03.151997', '125', 'Huib Severijn', 1, '[{\"added\": {}}]', 10, 3),
(230, '2020-11-16 13:48:52.682250', '23', 'Straight', 1, '[{\"added\": {}}]', 7, 3),
(231, '2020-11-16 13:55:38.212707', '126', 'Harold Rosso', 1, '[{\"added\": {}}]', 10, 3),
(232, '2020-11-16 13:59:00.127073', '24', 'Affinity', 1, '[{\"added\": {}}]', 7, 3),
(233, '2020-11-16 14:08:37.929705', '127', 'Arie Mosies', 1, '[{\"added\": {}}]', 10, 3),
(234, '2020-11-16 14:14:40.110373', '25', 'The Rocking Teens', 1, '[{\"added\": {}}]', 7, 3),
(235, '2020-11-16 14:30:14.144435', '128', 'Julian Sieben', 1, '[{\"added\": {}}]', 10, 3),
(236, '2020-11-16 14:35:22.657114', '26', 'The Rocking Coasters', 1, '[{\"added\": {}}]', 7, 3),
(237, '2020-11-21 19:53:57.578781', '129', 'Hessels', 1, '[{\"added\": {}}]', 10, 2),
(238, '2020-11-22 12:32:29.450958', '130', 'Groen', 1, '[{\"added\": {}}]', 10, 2),
(239, '2020-11-22 21:04:38.614492', '129', 'Hessels', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 3),
(240, '2020-11-23 10:27:49.610145', '130', 'Groen', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 10, 3),
(241, '2020-11-24 14:31:09.256173', '90', 'Sylvia Leyting', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 2),
(242, '2020-11-24 14:32:52.480774', '91', 'F. S. Leijting (Sylvia)', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 2),
(243, '2020-11-24 14:33:46.830439', '122', 'Ron Bruin', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 2),
(244, '2020-11-24 14:37:30.245986', '119', 'Stichting het gehedicapte kind', 2, '[{\"changed\": {\"fields\": [\"Postcode\", \"Plaats\"]}}]', 10, 2),
(245, '2020-11-24 14:43:49.761420', '128', 'Julian Sieben', 2, '[]', 10, 3),
(246, '2020-11-24 14:44:19.126110', '127', 'Arie Mosies', 2, '[]', 10, 3),
(247, '2020-11-24 14:45:03.341276', '126', 'Harold Rosso', 2, '[]', 10, 3),
(248, '2020-11-24 14:45:22.505748', '125', 'Huib Severijn', 2, '[]', 10, 3),
(249, '2020-11-24 14:46:06.238253', '124', 'Tom Janssen', 2, '[]', 10, 3),
(250, '2020-11-24 14:47:05.984773', '123', 'Frans v.d. Brand Horninge', 2, '[]', 10, 3),
(251, '2020-11-24 14:49:09.264254', '117', 'Dick', 2, '[]', 10, 3),
(252, '2020-11-24 14:49:43.204651', '116', 'Cliff Breton van Groll', 2, '[]', 10, 3),
(253, '2020-11-29 18:28:58.159760', '6', 'Hap Wat', 2, '[]', 9, 2),
(254, '2020-11-30 20:30:58.205500', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(255, '2020-11-30 20:38:36.293781', '3', 'Jorgen van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Voornaam\", \"Mobiel\"]}}]', 10, 2),
(256, '2020-11-30 22:22:31.397706', '128', 'Julian Sieben', 2, '[]', 10, 2),
(257, '2020-12-01 15:51:12.141265', '131', 'Bieri', 1, '[{\"added\": {}}]', 10, 2),
(258, '2020-12-01 19:54:41.438735', '129', 'Hessels', 2, '[{\"changed\": {\"fields\": [\"Adres\", \"Postcode\"]}}]', 10, 3),
(259, '2020-12-01 19:59:31.182630', '119', 'Stichting het gehandicapte kind', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Slug\"]}}]', 10, 3),
(260, '2020-12-01 20:02:34.895725', '55', 'Bron', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\", \"Postcode\"]}}]', 10, 3),
(261, '2020-12-01 20:04:39.580079', '123', 'Frans v.d. Brand Horninge', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 3),
(262, '2020-12-02 13:40:21.423522', '131', 'Bieri', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 10, 2),
(263, '2020-12-02 14:34:34.326131', '131', 'Bieri', 2, '[{\"changed\": {\"fields\": [\"Postcode\"]}}]', 10, 3),
(264, '2020-12-02 14:41:30.799748', '131', 'Bieri', 2, '[{\"changed\": {\"fields\": [\"Postcode\"]}}]', 10, 3),
(265, '2020-12-10 13:53:37.779299', '22', 'The Rocking Drifters', 2, '[]', 7, 2),
(266, '2020-12-15 13:49:46.681581', '4', 'django', 1, '[{\"added\": {}}]', 4, 2),
(267, '2020-12-15 13:50:21.673184', '4', 'django', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Superuser status\"]}}]', 4, 2),
(268, '2020-12-16 09:46:29.267227', '6', 'Hap Wat', 2, '[]', 9, 2),
(269, '2020-12-22 14:25:10.884062', '132', 'Lodal', 1, '[{\"added\": {}}]', 10, 2),
(270, '2020-12-22 14:32:34.110069', '133', 'Heeman', 1, '[{\"added\": {}}]', 10, 2),
(271, '2020-12-22 14:33:37.373104', '134', 'Wie is Wies', 1, '[{\"added\": {}}]', 10, 2),
(272, '2020-12-22 14:41:12.695013', '135', 'Indisch4ever', 1, '[{\"added\": {}}]', 10, 2),
(273, '2020-12-23 21:26:22.157852', '136', 'wie is dit', 1, '[{\"added\": {}}]', 10, 2),
(274, '2020-12-23 21:33:42.961068', '137', '(Wie is dit) Haarman', 1, '[{\"added\": {}}]', 10, 2),
(275, '2020-12-23 21:49:52.867420', '8', 'Theaterzaal de Kreek', 1, '[{\"added\": {}}]', 11, 2),
(276, '2020-12-23 21:55:05.564188', '16', 'Erlo van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(277, '2021-01-02 21:31:11.754671', '28', 'Aad en Corrie Laan', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 3),
(278, '2021-01-02 21:33:01.014394', '28', 'Laan, Aad en Corrie', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(279, '2021-01-02 21:51:19.764640', '131', 'Bieri', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 10, 3),
(280, '2021-01-02 21:52:21.233810', '131', 'Bieri, Franklin', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(281, '2021-01-02 21:53:11.163201', '131', 'Bieri, Franklin', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 3),
(282, '2021-01-03 16:32:09.538083', '34', 'Bijl, A', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(283, '2021-01-04 15:25:48.131850', '14', 'Klaas Singer', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(284, '2021-01-04 15:52:36.313002', '14', 'Singer, Klaas', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\", \"Memo\"]}}]', 10, 2),
(285, '2021-01-06 13:26:05.796548', '7', 'Clif and his Loanstars', 2, '[]', 13, 2),
(286, '2021-01-06 13:26:32.782815', '7', 'Clif and his Loanstars', 2, '[]', 13, 2),
(287, '2021-01-06 13:31:21.164172', '131', 'Bieri, Franklin', 2, '[]', 10, 2),
(288, '2021-01-08 21:43:23.180679', '138', 'Pijl, van der', 1, '[{\"added\": {}}]', 10, 2),
(289, '2021-01-08 21:50:06.318576', '3', 'Oosterkerk, Huiskamer van Hoorn', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 11, 3),
(290, '2021-01-08 22:43:16.728316', '2', 'Angkloon concert', 1, '[{\"added\": {}}]', 14, 2),
(291, '2021-01-08 22:44:27.820123', '2', 'Angkloon concert', 2, '[]', 14, 2),
(292, '2021-01-19 10:39:17.754650', '3', 'Oosterkerk, Huiskamer van Hoorn', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 11, 2),
(293, '2021-02-09 16:27:24.609682', '133', 'Heeman, Andries', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(294, '2021-02-09 16:28:12.472619', '132', 'Lodal, Rob &Maria', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(295, '2021-02-09 16:28:51.538319', '130', 'Groen', 2, '[]', 10, 2),
(296, '2021-02-09 16:29:38.918917', '124', 'Janssen, Tom', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(297, '2021-02-09 16:30:37.417487', '122', 'Bruin, Ron', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(298, '2021-02-09 16:31:13.072636', '117', 'Dick', 2, '[]', 10, 2),
(299, '2021-02-09 16:33:18.676508', '106', 'Willebrands,  Loet', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(300, '2021-02-09 20:32:20.976530', '36', 'Bruisma, J', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(301, '2021-02-09 20:33:03.529497', '37', 'Kahle, Sebastiaan', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(302, '2021-02-09 20:33:46.346794', '39', 'Bali, Carmen', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(303, '2021-02-09 20:34:38.978800', '42', 'De Niet, M.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(304, '2021-02-09 20:35:27.287917', '44', 'Manuhutu, E.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(305, '2021-02-09 20:36:20.312109', '115', 'Bes, René', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(306, '2021-02-09 20:37:01.060166', '116', 'Breton van Groll, Cliff', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(307, '2021-02-09 20:38:03.954400', '96', 'niklaas, W.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(308, '2021-02-09 20:39:44.327694', '54', 'Hollander, Irma', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(309, '2021-02-09 20:40:25.609850', '100', 'Ten Haaf, Ankie', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(310, '2021-02-09 20:41:00.717407', '96', 'Niklaas, W.', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(311, '2021-02-09 20:41:57.537140', '87', 'van Eldik, R. J.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(312, '2021-02-09 20:42:52.179389', '45', 'Cretier, Eddy', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(313, '2021-02-09 20:44:33.292573', '105', 'vd Berg, Lily', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(314, '2021-02-09 20:46:57.722863', '94', 'van Lochem, Loek en Narda', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(315, '2021-02-09 20:47:59.203567', '101', 'Neijman, Joke/Harrij', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(316, '2021-02-09 20:49:24.471259', '98', 'Bothe, J.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(317, '2021-02-09 20:50:11.532752', '103', 'Mulsch, Henny', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(318, '2021-02-09 20:55:05.587096', '97', 'vd Waa-Meents, M. O.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(319, '2021-02-09 20:56:10.812425', '92', 'Daniels, Wim', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(320, '2021-02-09 20:57:17.036771', '85', 'Bongers, Rosita', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(321, '2021-02-09 20:58:55.592730', '84', 'Doest, Rita', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(322, '2021-02-09 20:59:28.542250', '83', 'Monkau, Richard', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(323, '2021-02-09 21:00:36.197771', '91', 'Leijting (Sylvia) F. S.', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(324, '2021-02-09 21:03:26.640181', '82', 'Schenk, R.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(325, '2021-02-09 21:05:36.790514', '80', 'van de Broek, Pia', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(326, '2021-02-09 21:06:14.258583', '79', 'de Rooij, Peter', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(327, '2021-02-09 21:06:48.011319', '78', 'Nijhof, Paul', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(328, '2021-02-09 21:07:57.894533', '75', 'ter Woort, Nel', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(329, '2021-02-09 21:08:30.539471', '74', 'de Ruiter, Nani', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(330, '2021-02-09 21:09:11.098542', '70', 'Rooijen, m.a.h.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(331, '2021-02-09 21:09:56.988804', '67', 'Narua, Luana', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(332, '2021-02-09 21:10:32.384830', '68', 'Franke, Luuk', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(333, '2021-02-09 21:11:09.718888', '46', 'Keet, E.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(334, '2021-02-09 21:11:45.065913', '61', 'Klaver, Inge', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(335, '2021-02-09 21:12:16.250352', '62', 'van Ginkel, R.', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(336, '2021-02-09 21:12:52.967783', '60', 'Hooper, Jose', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(337, '2021-02-09 21:13:29.897573', '58', 'Schaper, Jimmy', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(338, '2021-02-09 21:14:06.597827', '53', 'Janssen, Martin en Ineke', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(339, '2021-02-09 21:14:57.852354', '51', 'Brandsma, H P', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(340, '2021-02-09 21:15:33.847829', '50', 'Baudain, Anne Mieke', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(341, '2021-02-09 21:16:18.985482', '47', 'Stoke, Endang', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(342, '2021-02-09 21:17:30.276293', '88', 'Saninda', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 2),
(343, '2021-02-14 09:58:07.498894', '133', 'Heeman, Andries', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 3),
(344, '2021-02-14 10:33:20.244058', '114', 'Junius', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 3),
(345, '2021-02-15 15:20:13.232818', '123', 'Brand Horninge, v.d. Frans', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(346, '2021-02-15 15:22:15.837182', '105', 'Berg, v.d. Lily', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(347, '2021-02-15 15:23:54.308403', '97', 'Waa-Meents, v.d. M. O.', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(348, '2021-02-15 15:25:23.654832', '87', 'Eldik, van  Ruud', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(349, '2021-02-15 15:26:40.902499', '80', 'Broek, van de Pia', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(350, '2021-02-15 15:27:38.441321', '75', 'Woort, ter Nel', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(351, '2021-02-15 15:28:14.691964', '74', 'Ruiter, de Nani', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(352, '2021-02-15 15:29:49.820010', '59', 'Beek, van der John', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(353, '2021-02-15 15:32:10.468566', '31', 'Calonne, de Anita', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(354, '2021-02-15 15:33:14.158346', '25', 'Wilde, de Peter', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(355, '2021-02-15 15:34:29.015857', '22', 'Salomon, Shirley', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(356, '2021-02-15 15:35:45.819111', '16', 'Hoeven, van der Erlo', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(357, '2021-02-15 15:36:39.377646', '12', 'Alders, Eric', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(358, '2021-02-15 15:37:25.611306', '12', 'Alders, Eric', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(359, '2021-02-15 15:39:26.387094', '3', 'Hoeven, van der Jorgen', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Plaats\", \"Memo\"]}}]', 10, 3),
(360, '2021-02-15 15:40:39.068617', '27', 'Meyer,  Aaron', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(361, '2021-02-15 15:41:03.425573', '27', 'Meyer,  Aaron', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 10, 3),
(362, '2021-02-15 15:42:25.076304', '17', 'Leepel, Brain', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(363, '2021-02-15 15:43:47.154125', '55', 'Bron, Jenny', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(364, '2021-02-15 15:44:53.410629', '65', 'Postma Bongers, Louise', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(365, '2021-02-15 15:45:48.999682', '33', 'Nieuwbuurt, Anneke', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(366, '2021-02-15 15:46:12.365598', '17', 'Leepel, Brain', 2, '[]', 10, 3),
(367, '2021-02-15 15:47:18.011203', '62', 'Ginkel, van R.', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(368, '2021-02-15 15:48:47.958497', '79', 'Rooij, de Peter', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(369, '2021-02-15 15:54:36.654710', '73', 'Hoorn, M', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(370, '2021-02-15 20:06:08.933289', '15', 'Merkx, Will', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(371, '2021-02-15 20:07:56.824584', '2', 'Jansen, Jan', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(372, '2021-02-15 20:18:13.791731', '33', 'Nieuwbuurt, Anneke', 2, '[{\"changed\": {\"fields\": [\"Plaats\"]}}]', 10, 3),
(373, '2021-02-15 20:28:23.876658', '4', 'Blackmail', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Genre\", \"Website\"]}}]', 7, 3),
(374, '2021-02-15 20:33:21.573029', '24', 'Affinity', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(375, '2021-02-15 20:35:50.020945', '126', 'Rosso, Harold', 2, '[]', 10, 3),
(376, '2021-02-15 20:39:30.159138', '24', 'Geertman, Wim', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 3),
(377, '2021-02-15 20:44:19.526658', '17', 'Leepel, Brain', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(378, '2021-02-17 14:43:25.395717', '123', 'Brand Horninge, v.d. Frans', 2, '[{\"changed\": {\"fields\": [\"Plaats\"]}}]', 10, 3),
(379, '2021-02-17 14:43:47.368491', '123', 'Brand Horninge, v.d. Frans', 2, '[]', 10, 3),
(380, '2021-02-17 14:47:12.238507', '21', 'The Eastern Aces', 2, '[{\"changed\": {\"fields\": [\"Technicus\"]}}]', 7, 3),
(381, '2021-02-17 14:50:07.940051', '21', 'The Eastern Aces', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(382, '2021-02-17 14:55:42.221170', '17', 'Leepel, Brain', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(383, '2021-02-17 14:56:08.734697', '15', 'Merkx, Will', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Mobiel\"]}}]', 10, 3),
(384, '2021-02-17 20:45:33.930017', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Website\"]}}]', 7, 3),
(385, '2021-02-17 20:46:47.600249', '6', 'Wipe Out Selection', 2, '[]', 7, 3),
(386, '2021-02-17 20:50:42.456765', '17', 'Cliff and his Lonestars', 2, '[{\"changed\": {\"fields\": [\"Website\"]}}]', 7, 3),
(387, '2021-02-17 20:54:09.481778', '2', 'De Stoel', 2, '[{\"changed\": {\"fields\": [\"Website\"]}}]', 7, 3),
(388, '2021-02-18 12:36:05.798568', '140', 'Diellemans, Roelof', 1, '[{\"added\": {}}]', 10, 2),
(389, '2021-02-20 20:53:34.569982', '141', 'Weel, Ada', 1, '[{\"added\": {}}]', 10, 2),
(390, '2021-02-20 20:59:49.470075', '142', 'Bayards, Marcel en Tilly', 1, '[{\"added\": {}}]', 10, 2),
(391, '2021-02-20 21:01:01.848335', '143', 'Rijswijk, Jole', 1, '[{\"added\": {}}]', 10, 2),
(392, '2021-02-20 21:04:06.639685', '144', 'Wijlen, ter Heike', 1, '[{\"added\": {}}]', 10, 2),
(393, '2021-02-20 21:07:15.743367', '145', 'Walstijn, Hennie', 1, '[{\"added\": {}}]', 10, 2),
(394, '2021-02-20 21:09:20.583239', '146', 'Vonk, Elisabeth', 1, '[{\"added\": {}}]', 10, 2),
(395, '2021-02-20 21:13:24.796851', '147', 'Dijk, van', 1, '[{\"added\": {}}]', 10, 2),
(396, '2021-02-20 21:14:47.487738', '147', 'Dijk, van', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Memo\"]}}]', 10, 2),
(397, '2021-02-24 10:08:21.185250', '148', 'Weekblad op zondag', 1, '[{\"added\": {}}]', 10, 2),
(398, '2021-02-24 10:09:37.432288', '149', 'Westfriesopzondag', 1, '[{\"added\": {}}]', 10, 2),
(399, '2021-02-24 10:10:24.508741', '150', 'redactie wfr', 1, '[{\"added\": {}}]', 10, 2),
(400, '2021-02-24 10:11:40.544720', '151', 'manuela weekbladzondag', 1, '[{\"added\": {}}]', 10, 2),
(401, '2021-02-24 10:12:48.627514', '152', 'K. Klinkenberg bdu', 1, '[{\"added\": {}}]', 10, 2),
(402, '2021-02-24 10:13:45.347816', '153', 'Redactie wef', 1, '[{\"added\": {}}]', 10, 2),
(403, '2021-02-24 10:17:44.005843', '154', 'Mooy, Sandra', 1, '[{\"added\": {}}]', 10, 2),
(404, '2021-02-24 10:20:41.879051', '155', 'Chatelin, Eddy', 1, '[{\"added\": {}}]', 10, 2),
(405, '2021-02-24 10:21:59.200049', '154', 'Mooy, Sandra', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(406, '2021-02-24 10:22:15.870475', '155', 'Chatelin, Eddy', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(407, '2021-02-24 13:51:47.321853', '156', 'Onbekend', 1, '[{\"added\": {}}]', 10, 2),
(408, '2021-02-24 13:52:39.989995', '27', 'Check Point', 1, '[{\"added\": {}}]', 7, 2),
(409, '2021-02-24 14:02:46.626116', '157', 'Gunthardt, Errol', 1, '[{\"added\": {}}]', 10, 2),
(410, '2021-02-24 14:08:18.717848', '158', 'Surijadi, Sarinda', 1, '[{\"added\": {}}]', 10, 2),
(411, '2021-02-24 14:16:44.102326', '159', 'Media', 1, '[{\"added\": {}}]', 10, 2),
(412, '2021-03-05 22:49:03.043458', '160', 'Rodi.nl', 1, '[{\"added\": {}}]', 10, 3),
(413, '2021-03-06 11:14:48.849404', '28', 'Meneer Frits (Angklung)', 1, '[{\"added\": {}}]', 7, 2),
(414, '2021-03-06 19:42:41.799302', '161', 'oozo.nl', 1, '[{\"added\": {}}]', 10, 3),
(415, '2021-03-06 19:43:31.779193', '162', 'uitzinnig.nl', 1, '[{\"added\": {}}]', 10, 3),
(416, '2021-03-06 19:47:23.854513', '163', 'tjampoer.nl', 1, '[{\"added\": {}}]', 10, 3),
(417, '2021-03-06 19:48:50.607801', '164', 'hoornradio.nl', 1, '[{\"added\": {}}]', 10, 3),
(418, '2021-03-06 19:50:10.065975', '165', 'hoornsdagblad.nl', 1, '[{\"added\": {}}]', 10, 3),
(419, '2021-03-06 19:51:39.524978', '166', 'hoorngids.nl', 1, '[{\"added\": {}}]', 10, 3),
(420, '2021-03-06 19:53:13.697835', '167', 'andijkernieuws.net', 1, '[{\"added\": {}}]', 10, 3),
(421, '2021-03-06 19:54:23.583260', '168', 'drimble.nl', 1, '[{\"added\": {}}]', 10, 3),
(422, '2021-03-06 19:55:32.751744', '169', 'vooreenmooiestad.nl', 1, '[{\"added\": {}}]', 10, 3),
(423, '2021-03-06 19:57:17.997742', '170', 'lokaaltotaal.nl', 1, '[{\"added\": {}}]', 10, 3),
(424, '2021-03-06 19:58:22.616174', '171', 'ikhouvanhoorn.nl', 1, '[{\"added\": {}}]', 10, 3),
(425, '2021-03-06 20:01:09.890655', '172', 'huisverloren.nl', 1, '[{\"added\": {}}]', 10, 3),
(426, '2021-03-06 20:02:16.879497', '173', 'veeltebeleven.nl', 1, '[{\"added\": {}}]', 10, 3),
(427, '2021-03-06 20:03:17.111733', '174', 'weekbladzondag.nl', 1, '[{\"added\": {}}]', 10, 3),
(428, '2021-03-06 20:04:15.939782', '175', 'rodimedia.nl', 1, '[{\"added\": {}}]', 10, 3),
(429, '2021-03-06 20:05:35.462517', '176', 'enkhuizerdagblad.nl', 1, '[{\"added\": {}}]', 10, 3),
(430, '2021-03-06 20:08:50.343463', '177', 'de andijker', 1, '[{\"added\": {}}]', 10, 3),
(431, '2021-03-06 20:12:35.338628', '174', 'weekbladzondag.nl', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 3),
(432, '2021-03-08 20:26:33.538914', '178', 'Benny Stevens', 1, '[{\"added\": {}}]', 10, 3),
(433, '2021-03-08 20:27:07.428178', '178', 'Stevens, Benny', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(434, '2021-03-08 20:30:24.804423', '29', 'Duo Freeline', 1, '[{\"added\": {}}]', 7, 3),
(435, '2021-03-12 13:55:41.309448', '3', ':00Angklung Concert', 1, '[{\"added\": {}}]', 14, 2),
(436, '2021-03-12 13:57:51.613035', '3', ':00Angklung Concert', 2, '[{\"changed\": {\"fields\": [\"Zitplaatsen\", \"Volgende datum 1\", \"Volgende datum 2\"]}}]', 14, 2),
(437, '2021-03-12 14:00:47.640970', '3', 'Angklung Concert', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Website\"]}}]', 14, 2),
(438, '2021-03-12 20:45:29.669686', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(439, '2021-03-28 18:38:52.377254', '4', 'Rock en Roll', 1, '[{\"added\": {}}]', 14, 2),
(440, '2021-03-30 21:24:25.547319', '7', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(441, '2021-03-31 14:00:28.460105', '7', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(442, '2021-03-31 14:57:35.086068', '5', 'Kumpulan Nationale Indische dag', 1, '[{\"added\": {}}]', 14, 2),
(443, '2021-03-31 20:09:00.416935', '179', 'Rijswijk, Joke Y', 1, '[{\"added\": {}}]', 10, 2),
(444, '2021-04-01 13:37:58.966408', '4', 'Rock en Roll', 2, '[{\"changed\": {\"fields\": [\"Voorverkoop prijs\", \"Activiteiten info\"]}}]', 14, 2),
(445, '2021-04-01 13:38:38.907590', '4', 'Rock en Roll', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 1\"]}}]', 14, 2),
(446, '2021-04-01 13:39:31.700055', '4', 'Rock en Roll', 2, '[]', 14, 2),
(447, '2021-04-01 13:42:59.221394', '4', 'Rock en Roll', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 1\"]}}]', 14, 2),
(448, '2021-04-01 13:44:11.819209', '4', 'Rock en Roll', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 2\"]}}]', 14, 2),
(449, '2021-04-01 13:47:56.867352', '4', 'Rock en Roll', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\", \"Volgende datum 1\"]}}]', 14, 2),
(450, '2021-04-01 13:52:10.491440', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 14, 2),
(451, '2021-04-01 13:59:50.855770', '2', 'Angkloon concert 1', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 14, 2),
(452, '2021-04-01 14:17:59.461981', '2', 'Angkloon concert 1', 2, '[{\"changed\": {\"fields\": [\"Datum\", \"Voorverkoop prijs\"]}}]', 14, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(453, '2021-04-01 14:22:56.197825', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(454, '2021-04-01 14:24:25.297072', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(455, '2021-04-01 14:31:01.711172', '4', 'Rock en Roll', 2, '[]', 14, 2),
(456, '2021-04-01 14:32:41.797204', '4', 'Rock en Roll', 2, '[]', 14, 2),
(457, '2021-04-01 14:49:56.272853', '6', 'Country Line Dance Party', 1, '[{\"added\": {}}]', 14, 2),
(458, '2021-04-06 14:07:17.399399', '180', 'Evers, Han', 1, '[{\"added\": {}}]', 10, 2),
(459, '2021-04-06 14:07:54.758156', '180', 'Evers, Han', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Soort lid\", \"Status\"]}}]', 10, 2),
(460, '2021-04-07 12:23:33.925843', '180', 'Evers, Han', 2, '[]', 10, 2),
(461, '2021-04-07 20:18:14.168171', '181', 'Huying', 1, '[{\"added\": {}}]', 10, 2),
(462, '2021-04-07 20:19:11.020230', '181', 'Huying', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 10, 2),
(463, '2021-04-07 20:24:10.135946', '182', 'Schoonen', 1, '[{\"added\": {}}]', 10, 2),
(464, '2021-04-08 20:08:08.992638', '183', 'Berkum-Schouten, van', 1, '[{\"added\": {}}]', 10, 3),
(465, '2021-04-08 20:13:30.900385', '181', 'Huying', 2, '[]', 10, 3),
(466, '2021-04-08 20:19:02.021637', '183', 'Berkum-Schouten, van Marianne', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(467, '2021-04-08 20:20:42.372389', '181', 'Huying, Karel & Sonja', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(468, '2021-04-09 14:03:42.114085', '184', 'Ottonel', 1, '[{\"added\": {}}]', 10, 2),
(469, '2021-04-09 14:10:15.619678', '185', 'Rigter. E', 1, '[{\"added\": {}}]', 10, 2),
(470, '2021-04-09 14:11:11.189318', '185', 'Rigter. E', 2, '[{\"changed\": {\"fields\": [\"Emailadress\", \"Memo\"]}}]', 10, 2),
(471, '2021-04-09 14:14:25.006224', '186', 'Hamaker', 1, '[{\"added\": {}}]', 10, 2),
(472, '2021-04-09 14:16:14.644295', '187', 'Koopman', 1, '[{\"added\": {}}]', 10, 2),
(473, '2021-04-09 14:18:27.562490', '188', 'Hibma', 1, '[{\"added\": {}}]', 10, 2),
(474, '2021-04-09 14:20:23.890534', '189', 'X', 1, '[{\"added\": {}}]', 10, 2),
(475, '2021-04-09 14:22:23.423367', '190', 'x', 1, '[{\"added\": {}}]', 10, 2),
(476, '2021-04-09 14:26:09.742587', '191', 'Bakker', 1, '[{\"added\": {}}]', 10, 2),
(477, '2021-04-09 14:26:25.698793', '191', 'Bakker', 2, '[]', 10, 2),
(478, '2021-04-09 14:28:28.464379', '192', 'Craane', 1, '[{\"added\": {}}]', 10, 2),
(479, '2021-04-09 14:29:25.317599', '193', 'Weatern', 1, '[{\"added\": {}}]', 10, 2),
(480, '2021-04-09 14:31:23.896869', '194', 'Bartens', 1, '[{\"added\": {}}]', 10, 2),
(481, '2021-04-09 14:32:59.856294', '195', 'Leyen', 1, '[{\"added\": {}}]', 10, 2),
(482, '2021-04-09 14:34:23.977116', '196', 'Nugter', 1, '[{\"added\": {}}]', 10, 2),
(483, '2021-04-09 14:36:42.252601', '197', 'Dol', 1, '[{\"added\": {}}]', 10, 2),
(484, '2021-04-09 14:38:20.872893', '198', 'Cor-Hannie', 1, '[{\"added\": {}}]', 10, 2),
(485, '2021-04-09 14:39:28.284821', '199', 'Truin', 1, '[{\"added\": {}}]', 10, 2),
(486, '2021-04-09 14:41:50.927764', '200', 'Groen', 1, '[{\"added\": {}}]', 10, 2),
(487, '2021-04-09 14:43:20.110191', '201', 'Paelsen', 1, '[{\"added\": {}}]', 10, 2),
(488, '2021-04-09 14:46:06.086565', '202', 'Meekel', 1, '[{\"added\": {}}]', 10, 2),
(489, '2021-04-09 14:47:54.230571', '203', 'zee', 1, '[{\"added\": {}}]', 10, 2),
(490, '2021-04-09 14:49:27.072164', '204', 'X', 1, '[{\"added\": {}}]', 10, 2),
(491, '2021-04-09 14:52:17.473112', '205', 'Buter', 1, '[{\"added\": {}}]', 10, 2),
(492, '2021-04-11 15:25:33.673983', '206', 'Mark', 1, '[{\"added\": {}}]', 10, 2),
(493, '2021-04-11 15:26:51.035518', '3', 'Oosterkerk, Huiskamer van Hoorn', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 11, 2),
(494, '2021-04-11 15:27:13.506955', '206', 'Mark', 2, '[{\"changed\": {\"fields\": [\"Plaats\"]}}]', 10, 2),
(495, '2021-04-11 15:27:49.773646', '206', 'Sim, Mark', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 2),
(496, '2021-04-11 15:28:27.654682', '3', 'Oosterkerk, Huiskamer van Hoorn', 2, '[]', 11, 2),
(497, '2021-04-11 15:29:27.892633', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Beheerder\"]}}]', 14, 2),
(498, '2021-04-11 15:29:50.289735', '206', 'Sijm, Mark', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(499, '2021-04-11 15:39:01.075315', '5', 'Kumpulan Nationale Indische dag', 2, '[]', 14, 2),
(500, '2021-04-11 15:42:37.332461', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Band\"]}}]', 14, 2),
(501, '2021-04-11 15:45:01.043439', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(502, '2021-04-12 14:10:38.068569', '207', 'Kok, Jaap', 1, '[{\"added\": {}}]', 10, 2),
(503, '2021-04-12 14:12:41.023585', '30', 'The Ijmond Players', 1, '[{\"added\": {}}]', 7, 2),
(504, '2021-04-12 14:15:53.869619', '208', 'DJ Sonny', 1, '[{\"added\": {}}]', 10, 2),
(505, '2021-04-12 14:16:42.405863', '208', 'DJ Sonny', 2, '[]', 10, 2),
(506, '2021-04-12 14:20:02.570915', '209', 'Louter DJ, Maurice', 1, '[{\"added\": {}}]', 10, 2),
(507, '2021-04-12 14:21:38.712018', '31', 'DML DJ', 1, '[{\"added\": {}}]', 7, 2),
(508, '2021-04-12 14:26:14.796228', '210', 'Mark', 1, '[{\"added\": {}}]', 10, 2),
(509, '2021-04-12 14:27:45.126891', '210', 'Mark', 2, '[{\"changed\": {\"fields\": [\"Voornaam\", \"Emailadress\"]}}]', 10, 2),
(510, '2021-04-12 14:29:21.370970', '32', 'Juke Joint Jimmies', 1, '[{\"added\": {}}]', 7, 2),
(511, '2021-04-15 19:20:28.660703', '7', 'Acara', 1, '[{\"added\": {}}]', 14, 3),
(512, '2021-04-15 19:25:55.135821', '7', 'Acara', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 3),
(513, '2021-04-15 19:29:32.732283', '7', 'Acara', 2, '[{\"changed\": {\"fields\": [\"Voorverkoop prijs\", \"Opbrengst\"]}}]', 14, 3),
(514, '2021-04-15 21:11:42.881266', '2', 'Het Huis Verloren', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Vergunning datum\"]}}]', 11, 2),
(515, '2021-04-15 21:16:01.986226', '7', 'Foreesterhuis', 2, '[]', 11, 2),
(516, '2021-04-20 14:50:04.853988', '3', 'Toko2Walk', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 9, 2),
(517, '2021-04-20 14:51:26.686280', '13', 'CiCi', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 2),
(518, '2021-04-20 14:55:54.005893', '33', 'Duo Rudy en Cici', 1, '[{\"added\": {}}]', 7, 2),
(519, '2021-05-08 14:23:35.878775', '34', 'Kwekel productions', 1, '[{\"added\": {}}]', 7, 2),
(520, '2021-05-10 08:52:36.815718', '3', 'Ticket object (3)', 1, '[{\"added\": {}}]', 16, 4),
(521, '2021-05-10 08:55:55.217519', '3', 'Ticket object (3)', 2, '[]', 16, 4),
(522, '2021-05-10 08:56:12.313890', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\", \"Contact\"]}}]', 16, 4),
(523, '2021-05-10 08:56:58.569614', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\", \"Contact\", \"Voorverkoop\"]}}]', 16, 4),
(524, '2021-05-10 12:22:46.848985', '211', 'Lubbers, Francisca', 1, '[{\"added\": {}}]', 10, 2),
(525, '2021-05-10 12:36:13.732526', '212', 'Blom, manuela', 1, '[{\"added\": {}}]', 10, 2),
(526, '2021-05-10 12:36:48.822785', '212', 'Blom, Manuela', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(527, '2021-05-10 13:44:02.543493', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(528, '2021-05-10 13:44:52.082254', '2', 'Angklung concert 1', 2, '[]', 14, 2),
(529, '2021-05-10 13:52:00.621471', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(530, '2021-05-10 13:58:06.299128', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(531, '2021-05-17 14:22:20.288610', '5', 'Ticket object (5)', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Aantal\", \"Voorverkoop\", \"Betaald\", \"Memo\"]}}]', 16, 2),
(532, '2021-05-17 14:23:17.608625', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\", \"Contact\", \"Aantal\", \"Voorverkoop\"]}}]', 16, 2),
(533, '2021-05-17 14:34:18.982600', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(534, '2021-05-17 14:38:00.951091', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(535, '2021-05-17 14:40:00.652341', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(536, '2021-05-17 14:40:50.570907', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(537, '2021-05-17 14:41:11.684536', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(538, '2021-05-17 14:45:52.366995', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(539, '2021-05-17 14:58:04.458162', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(540, '2021-05-17 14:59:02.920317', '3', 'Ticket object (3)', 2, '[]', 16, 2),
(541, '2021-05-17 14:59:20.077564', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(542, '2021-05-17 14:59:43.442194', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(543, '2021-05-17 15:14:17.252873', '191', 'Bakker', 2, '[]', 10, 2),
(544, '2021-05-17 15:14:40.144410', '190', 'Bakker', 2, '[]', 10, 2),
(545, '2021-05-17 15:15:04.662478', '191', 'Bakker', 3, '', 10, 2),
(546, '2021-05-17 15:22:21.401768', '8', 'Pencak', 1, '[{\"added\": {}}]', 14, 2),
(547, '2021-05-17 15:22:56.984516', '8', 'Pencak', 2, '[{\"changed\": {\"fields\": [\"Organisator\"]}}]', 14, 2),
(548, '2021-05-17 15:35:56.698485', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(549, '2021-05-17 15:42:25.939697', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(550, '2021-05-17 19:10:34.963081', '3', 'Ticket object (3)', 2, '[]', 16, 2),
(551, '2021-05-17 19:20:05.961191', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Organisator info\"]}}]', 14, 2),
(552, '2021-05-18 20:14:02.875206', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(553, '2021-05-18 20:18:19.285636', '4', 'Ticket object (4)', 2, '[{\"changed\": {\"fields\": [\"Aantal\"]}}]', 16, 2),
(554, '2021-05-18 20:21:48.887103', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(555, '2021-05-18 20:22:17.397009', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(556, '2021-05-18 20:22:33.610701', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(557, '2021-05-18 20:22:48.511723', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(558, '2021-05-18 20:23:12.315402', '3', 'Ticket object (3)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(559, '2021-05-18 20:23:51.986919', '3', 'Ticket object (3)', 3, '', 16, 2),
(560, '2021-05-18 20:24:16.452906', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(561, '2021-05-18 20:24:31.209304', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(562, '2021-05-20 17:53:41.008566', '7', 'Ticket object (7)', 1, '[{\"added\": {}}]', 16, 4),
(563, '2021-05-20 18:20:02.743307', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(564, '2021-05-20 18:20:25.599967', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(565, '2021-05-20 18:20:37.027117', '5', 'Ticket object (5)', 2, '[]', 16, 2),
(566, '2021-05-20 18:20:51.360265', '6', 'Ticket object (6)', 2, '[]', 16, 2),
(567, '2021-05-20 18:21:03.069568', '7', 'Ticket object (7)', 2, '[]', 16, 2),
(568, '2021-05-20 18:24:51.105970', '4', 'Ticket object (4)', 2, '[{\"changed\": {\"fields\": [\"Evenement\", \"Aantal\"]}}]', 16, 2),
(569, '2021-05-20 18:41:43.722087', '5', 'Kumpulan Nationale Indische dag', 2, '[]', 14, 2),
(570, '2021-05-20 18:42:11.038740', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(571, '2021-05-20 18:42:36.515832', '7', 'Ticket object (7)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 16, 2),
(572, '2021-05-20 19:00:35.870125', '8', 'Ticket object (8)', 2, '[{\"changed\": {\"fields\": [\"Aantal\"]}}]', 16, 2),
(573, '2021-05-20 19:03:31.670524', '8', 'Ticket object (8)', 3, '', 16, 2),
(574, '2021-05-20 19:08:27.020727', '9', 'Ticket object (9)', 1, '[{\"added\": {}}]', 16, 2),
(575, '2021-05-20 19:08:51.593757', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(576, '2021-05-20 19:09:03.185726', '4', 'Ticket object (4)', 2, '[]', 16, 2),
(577, '2021-05-20 19:12:30.137493', '9', 'Ticket object (9)', 2, '[]', 16, 2),
(578, '2021-05-21 12:38:51.619883', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Datum\", \"Einde\"]}}]', 14, 2),
(579, '2021-05-21 12:39:57.771059', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(580, '2021-05-21 12:56:36.106586', '35', 'Nog een verrassing', 1, '[{\"added\": {}}]', 7, 2),
(581, '2021-05-21 12:58:42.251454', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Band\"]}}]', 14, 2),
(582, '2021-05-21 13:00:26.600913', '35', '\" Een verrassing \"', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(583, '2021-05-21 13:05:11.145540', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Band\"]}}]', 14, 2),
(584, '2021-05-23 12:33:25.993834', '13', 'Ticket object (13)', 1, '[{\"added\": {}}]', 16, 3),
(585, '2021-05-23 12:35:07.814087', '12', 'Ticket object (12)', 2, '[{\"changed\": {\"fields\": [\"Betaald\"]}}]', 16, 3),
(586, '2021-05-23 12:47:57.155741', '213', 'Laan, Ria', 1, '[{\"added\": {}}]', 10, 2),
(587, '2021-05-23 12:50:35.462558', '214', 'Versluys, Ria', 1, '[{\"added\": {}}]', 10, 2),
(588, '2021-05-23 12:52:31.210038', '215', 'Harst, Rob en Cobie', 1, '[{\"added\": {}}]', 10, 2),
(589, '2021-05-23 12:53:42.165009', '216', 'Kuin, Roel', 1, '[{\"added\": {}}]', 10, 2),
(590, '2021-05-23 12:55:26.224781', '217', 'Dijkstra, Ruurd', 1, '[{\"added\": {}}]', 10, 2),
(591, '2021-05-23 12:56:41.204663', '218', 'Sahaleika', 1, '[{\"added\": {}}]', 10, 2),
(592, '2021-05-23 12:57:33.022630', '219', 'Boekel, Theo', 1, '[{\"added\": {}}]', 10, 2),
(593, '2021-05-23 12:59:02.715753', '220', 'Baijardds, Tilly en Marcel', 1, '[{\"added\": {}}]', 10, 2),
(594, '2021-05-23 12:59:58.456642', '221', 'Wagenaar, Ton', 1, '[{\"added\": {}}]', 10, 2),
(595, '2021-05-23 13:01:02.116265', '222', 'Ganseman, Tonni', 1, '[{\"added\": {}}]', 10, 2),
(596, '2021-05-23 13:02:01.605850', '223', 'Beelen, Tonnie', 1, '[{\"added\": {}}]', 10, 2),
(597, '2021-05-23 13:03:07.588123', '224', 'Gilst, w van', 1, '[{\"added\": {}}]', 10, 2),
(598, '2021-05-23 13:04:10.006738', '225', 'Buter, Wil en Nel', 1, '[{\"added\": {}}]', 10, 2),
(599, '2021-05-23 13:05:13.198649', '226', 'Leyen, Wil van', 1, '[{\"added\": {}}]', 10, 2),
(600, '2021-05-23 13:39:56.582169', '227', 'Ooievaar, Peter', 1, '[{\"added\": {}}]', 10, 2),
(601, '2021-05-23 13:41:22.982281', '228', 'Steen, Peter van der', 1, '[{\"added\": {}}]', 10, 2),
(602, '2021-05-23 13:43:43.970967', '229', 'Brink, Peter van de', 1, '[{\"added\": {}}]', 10, 2),
(603, '2021-05-23 13:46:15.443854', '230', 'Veen, Peter van', 1, '[{\"added\": {}}]', 10, 2),
(604, '2021-05-23 13:47:22.941162', '231', '??', 1, '[{\"added\": {}}]', 10, 2),
(605, '2021-05-23 13:49:29.037111', '232', 'Heddes, P.L.C.M.', 1, '[{\"added\": {}}]', 10, 2),
(606, '2021-05-23 13:52:10.860250', '233', 'Veen, Rene', 1, '[{\"added\": {}}]', 10, 2),
(607, '2021-05-23 13:54:34.292650', '234', 'Bron, Ron', 1, '[{\"added\": {}}]', 10, 2),
(608, '2021-05-23 13:55:57.078619', '235', 'Blomme, Vincent', 1, '[{\"added\": {}}]', 10, 2),
(609, '2021-05-24 10:02:50.348091', '13', 'Ticket object (13)', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 16, 3),
(610, '2021-05-28 18:41:47.722352', '7', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(611, '2021-05-28 19:23:38.462697', '21', 'Bruijns, Co', 2, '[]', 10, 2),
(612, '2021-05-28 19:29:27.802124', '36', 'Les Hombres', 1, '[{\"added\": {}}]', 7, 2),
(613, '2021-05-28 19:31:28.782329', '236', 'Les Ombres', 1, '[{\"added\": {}}]', 10, 2),
(614, '2021-05-28 19:33:52.330688', '36', 'Les Hombres', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 2),
(615, '2021-06-07 18:48:48.475809', '237', 'Uit Braband', 1, '[{\"added\": {}}]', 10, 2),
(616, '2021-06-15 13:37:37.725841', '9', 'Ticket object (9)', 2, '[]', 16, 2),
(617, '2021-06-21 09:56:51.117569', '9', 'Kumpulan', 1, '[{\"added\": {}}]', 14, 3),
(618, '2021-06-21 10:27:42.403940', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(619, '2021-06-21 19:38:50.047330', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(620, '2021-06-21 20:39:40.140958', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(621, '2021-06-22 09:22:04.040875', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(622, '2021-06-22 09:27:11.828822', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(623, '2021-06-22 09:32:22.636694', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(624, '2021-06-22 21:12:26.961939', '3', 'The Rocking Players', 2, '[]', 7, 2),
(625, '2021-06-22 21:21:32.180349', '238', 'Bruijn-Teterisse', 1, '[{\"added\": {}}]', 10, 2),
(626, '2021-06-22 21:25:32.858903', '239', 'Rozenberg - Krikhoff, J', 1, '[{\"added\": {}}]', 10, 2),
(627, '2021-06-23 12:45:08.787445', '238', 'Bruijn-Teterisse', 2, '[{\"changed\": {\"fields\": [\"Voornaam\"]}}]', 10, 2),
(628, '2021-06-23 12:51:22.463626', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(629, '2021-06-23 19:00:20.299019', '5', 'Chinese Garden', 3, '', 9, 2),
(630, '2021-06-23 19:05:33.302001', '6', 'Hap Wat', 3, '', 9, 2),
(631, '2021-06-23 19:07:04.053755', '4', 'Toko Lannie', 2, '[{\"changed\": {\"fields\": [\"Catering prijs\"]}}]', 9, 2),
(632, '2021-06-23 19:11:22.749294', '13', 'CiCi', 2, '[{\"changed\": {\"fields\": [\"Plaats\"]}}]', 10, 2),
(633, '2021-06-24 19:36:04.661805', '240', 'westfriesweekblad@bdu.nl', 1, '[{\"added\": {}}]', 10, 2),
(634, '2021-06-24 19:38:31.151144', '241', 'Radio Hoorn', 1, '[{\"added\": {}}]', 10, 2),
(635, '2021-06-25 11:43:22.507444', '242', 'Sinterklaas', 1, '[{\"added\": {}}]', 10, 4),
(636, '2021-06-25 11:46:42.467676', '243', 'Sinterklaas', 1, '[{\"added\": {}}]', 10, 4),
(637, '2021-06-25 11:47:19.835267', '37', 'Sinterklaas', 1, '[{\"added\": {}}]', 7, 4),
(638, '2021-06-25 11:50:47.257840', '10', 'Pietenfeest', 1, '[{\"added\": {}}]', 14, 4),
(639, '2021-06-25 17:17:48.635083', '25', 'Ticket object (25)', 1, '[{\"added\": {}}]', 16, 2),
(640, '2021-06-25 17:21:19.075171', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Entree prijs\", \"Voorverkoop prijs\"]}}]', 14, 2),
(641, '2021-06-25 17:59:01.777011', '23', 'Ticket object (23)', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 16, 3),
(642, '2021-06-30 14:08:04.598623', '24', 'Affinity', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(643, '2021-06-30 14:14:55.375139', '129', 'Hessels, Corrie', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 3),
(644, '2021-06-30 14:18:02.031395', '126', 'Rosso, Harold', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Emailadress\"]}}]', 10, 3),
(645, '2021-07-02 13:50:47.309758', '31', 'Ticket object (31)', 2, '[]', 16, 2),
(646, '2021-07-02 13:52:01.975305', '30', 'Ticket object (30)', 2, '[]', 16, 2),
(647, '2021-07-02 13:52:17.504370', '30', 'Ticket object (30)', 2, '[]', 16, 2),
(648, '2021-07-02 20:03:27.261766', '6', 'Country Line Dance Party', 2, '[{\"changed\": {\"fields\": [\"Datum\", \"Volgende datum 1\"]}}]', 14, 3),
(649, '2021-07-03 08:42:00.578535', '31', 'Ticket object (31)', 2, '[]', 16, 2),
(650, '2021-07-03 08:42:24.385491', '30', 'Ticket object (30)', 2, '[]', 16, 2),
(651, '2021-07-03 08:42:34.350326', '29', 'Ticket object (29)', 2, '[]', 16, 2),
(652, '2021-07-03 08:43:21.603739', '29', 'Ticket object (29)', 2, '[]', 16, 2),
(653, '2021-07-03 08:43:40.215828', '28', 'Ticket object (28)', 2, '[]', 16, 2),
(654, '2021-07-03 08:44:06.412587', '27', 'Ticket object (27)', 2, '[]', 16, 2),
(655, '2021-07-03 08:44:24.732373', '26', 'Ticket object (26)', 2, '[]', 16, 2),
(656, '2021-07-03 08:45:07.313894', '24', 'Ticket object (24)', 2, '[]', 16, 2),
(657, '2021-07-03 08:58:30.494478', '24', 'Ticket object (24)', 2, '[]', 16, 2),
(658, '2021-07-03 08:58:41.524648', '9', 'Ticket object (9)', 2, '[]', 16, 2),
(659, '2021-07-03 08:59:16.523982', '12', 'Ticket object (12)', 2, '[]', 16, 2),
(660, '2021-07-03 08:59:26.590000', '13', 'Ticket object (13)', 2, '[]', 16, 2),
(661, '2021-07-03 08:59:34.207937', '16', 'Ticket object (16)', 2, '[]', 16, 2),
(662, '2021-07-03 08:59:54.226792', '20', 'Ticket object (20)', 2, '[]', 16, 2),
(663, '2021-07-03 09:00:15.383974', '23', 'Ticket object (23)', 2, '[]', 16, 2),
(664, '2021-07-03 09:00:38.382772', '24', 'Ticket object (24)', 2, '[]', 16, 2),
(665, '2021-07-03 09:00:46.881547', '16', 'Ticket object (16)', 2, '[]', 16, 2),
(666, '2021-07-03 19:03:18.308565', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(667, '2021-07-03 19:12:34.682072', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator\", \"Volgende datum 1\", \"Volgende datum 2\"]}}]', 14, 2),
(668, '2021-07-03 19:14:48.005831', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 1\"]}}]', 14, 2),
(669, '2021-07-03 19:16:02.305610', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator info\"]}}]', 14, 2),
(670, '2021-07-03 19:18:09.731797', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator info\"]}}]', 14, 2),
(671, '2021-07-03 19:21:57.713876', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator\"]}}]', 14, 2),
(672, '2021-07-03 19:23:24.000612', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator\"]}}]', 14, 2),
(673, '2021-07-03 19:24:34.184511', '5', 'Kumpulan Nationale Indische dag', 2, '[]', 14, 2),
(674, '2021-07-03 19:26:46.532472', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Organisator\"]}}]', 14, 2),
(675, '2021-07-03 19:39:25.052000', '5', 'Kumpulan Nationale Indische dag', 2, '[]', 14, 2),
(676, '2021-07-03 19:41:20.620875', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(677, '2021-07-03 19:56:09.840009', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Aanvang\", \"Einde\", \"Zaal open\"]}}]', 14, 2),
(678, '2021-07-03 20:03:37.803040', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Beheerder\", \"Organisator\", \"Volgende datum 1\", \"Volgende datum 2\"]}}]', 14, 2),
(679, '2021-07-03 20:07:50.322522', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\", \"Volgende datum 2\", \"Slug\"]}}]', 14, 2),
(680, '2021-07-03 20:11:33.747637', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Beheerder\", \"Organisator info\", \"Volgende datum 1\", \"Volgende datum 2\", \"Slug\"]}}]', 14, 2),
(681, '2021-07-03 20:33:33.934031', '10', 'Perwarindo (Wageningen)', 2, '[]', 7, 2),
(682, '2021-07-04 20:12:06.915255', '21', 'The Eastern Aces', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(683, '2021-07-04 20:15:29.872544', '244', 'Tentua, Carl', 1, '[{\"added\": {}}]', 10, 3),
(684, '2021-07-04 20:20:24.285647', '38', 'The New Aces', 1, '[{\"added\": {}}]', 7, 3),
(685, '2021-07-04 20:23:13.415087', '38', 'The New Aces', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(686, '2021-07-05 19:57:16.442365', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(687, '2021-07-05 19:59:02.098945', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[]', 7, 2),
(688, '2021-07-05 19:59:49.606646', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(689, '2021-07-05 20:04:51.687708', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(690, '2021-07-09 12:37:29.597535', '33', 'Ticket object (33)', 3, '', 16, 2),
(691, '2021-07-09 12:48:51.723676', '245', 'Hoorns Nieuwsblad', 1, '[{\"added\": {}}]', 10, 2),
(692, '2021-07-13 13:16:02.308318', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(693, '2021-07-19 12:03:24.569545', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(694, '2021-07-19 12:15:22.292972', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Uitverkocht\"]}}]', 14, 2),
(695, '2021-07-19 12:28:36.255926', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(696, '2021-07-20 12:19:02.361664', '5', 'Kumpulan Nationale Indische dag', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 3),
(697, '2021-07-23 13:13:40.050531', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(698, '2021-08-01 11:51:54.106013', '39', 'Newzz', 1, '[{\"added\": {}}]', 7, 3),
(699, '2021-08-01 12:01:10.513163', '21', 'Vervallen The Eastern Aces', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 3),
(700, '2021-08-01 12:05:15.319170', '21', 'Vervallen The Eastern Aces', 2, '[]', 7, 3),
(701, '2021-08-10 13:08:02.127278', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Entree prijs\", \"Voorverkoop prijs\"]}}]', 14, 2),
(702, '2021-08-10 13:09:42.540435', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Zitplaatsen\"]}}]', 14, 2),
(703, '2021-08-10 13:10:04.483164', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Zitplaatsen\"]}}]', 14, 2),
(704, '2021-08-10 13:13:34.694895', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Opbrengst\"]}}]', 14, 2),
(705, '2021-08-10 13:15:33.742951', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\"]}}]', 14, 2),
(706, '2021-08-10 13:16:31.790159', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Thema\"]}}]', 14, 2),
(707, '2021-08-10 13:19:43.988493', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\"]}}]', 14, 2),
(708, '2021-08-10 13:21:43.853299', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\"]}}]', 14, 2),
(709, '2021-08-10 13:22:49.324777', '2', 'Angklung concert 1', 2, '[]', 14, 2),
(710, '2021-08-10 13:25:02.404822', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\"]}}]', 14, 2),
(711, '2021-08-10 13:28:35.102092', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(712, '2021-08-10 13:32:07.383199', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(713, '2021-08-10 13:33:59.429229', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(714, '2021-08-10 13:35:17.345876', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(715, '2021-08-11 22:25:34.736679', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Entree prijs\", \"Voorverkoop prijs\", \"Opbrengst\"]}}]', 14, 2),
(716, '2021-08-11 22:27:05.410858', '3', 'Angklung Concert 2', 2, '[{\"changed\": {\"fields\": [\"Einde\"]}}]', 14, 2),
(717, '2021-08-11 22:28:13.888515', '3', 'Angklung Concert 2', 2, '[]', 14, 2),
(718, '2021-08-11 22:32:57.449234', '32', 'Ticket object (32)', 2, '[]', 16, 2),
(719, '2021-08-13 15:33:07.049999', '12', 'DYD, (Den Haag)', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(720, '2021-08-13 15:41:17.893584', '12', 'DYD', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 7, 2),
(721, '2021-08-16 09:09:06.841590', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(722, '2021-08-17 13:58:38.424838', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Thema\"]}}]', 14, 2),
(723, '2021-08-17 13:59:36.630235', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Thema\", \"Activiteiten info 2\"]}}]', 14, 2),
(724, '2021-08-17 14:00:51.609105', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info 2\"]}}]', 14, 2),
(725, '2021-08-17 14:03:35.012385', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info\", \"Activiteiten info 2\"]}}]', 14, 2),
(726, '2021-08-17 14:05:03.622654', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Catering info\"]}}]', 14, 2),
(727, '2021-08-17 14:10:00.328076', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(728, '2021-08-17 14:11:30.770247', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(729, '2021-08-17 14:13:43.255482', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(730, '2021-08-17 14:14:38.117690', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(731, '2021-08-17 14:15:56.646628', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(732, '2021-08-17 14:19:34.075288', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(733, '2021-08-17 21:40:46.739914', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 2\"]}}]', 14, 2),
(734, '2021-08-18 14:45:04.724041', '246', 'Noordhollands Dagblad regio Hoorn', 1, '[{\"added\": {}}]', 10, 2),
(735, '2021-08-19 13:51:37.517101', '175', 'rodimedia.nl', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 3),
(736, '2021-08-19 13:56:51.925714', '173', 'veeltebeleven.nl', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Emailadress\"]}}]', 10, 3),
(737, '2021-08-19 13:59:24.905908', '173', 'veeltebeleven.nl', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 10, 3),
(738, '2021-08-25 11:14:02.850112', '2', 'Angklung concert 1', 2, '[{\"changed\": {\"fields\": [\"Zaal open\"]}}]', 14, 2),
(739, '2021-08-25 11:14:30.302457', '2', 'Angklung concert 1', 2, '[]', 14, 2),
(740, '2021-08-25 11:19:07.279164', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(741, '2021-08-25 11:27:18.845775', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(742, '2021-08-25 13:18:50.140279', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(743, '2021-08-25 13:23:31.166928', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(744, '2021-08-25 13:26:04.184868', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(745, '2021-09-02 19:27:30.557822', '247', 'Bronsgeest, cokky', 1, '[{\"added\": {}}]', 10, 2),
(746, '2021-09-03 06:40:21.230707', '248', 'Drijver, Margreet', 1, '[{\"added\": {}}]', 10, 3),
(747, '2021-09-03 06:45:27.421141', '249', 'Docter, Ingrid', 1, '[{\"added\": {}}]', 10, 3),
(748, '2021-09-03 21:51:11.647283', '13', 'Leni Landweer', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(749, '2021-09-07 20:08:32.501409', '250', 'Adema? / Podoiumplein', 1, '[{\"added\": {}}]', 10, 2),
(750, '2021-09-10 11:08:03.016856', '88', 'Sarinda', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Voornaam\"]}}]', 10, 3),
(751, '2021-09-10 11:15:15.151106', '251', 'Woldberg, Marianne', 1, '[{\"added\": {}}]', 10, 3),
(752, '2021-09-10 11:17:38.542808', '252', 'Vrooijer, Mah', 1, '[{\"added\": {}}]', 10, 3),
(753, '2021-09-10 11:18:36.557134', '253', 'Foss, A', 1, '[{\"added\": {}}]', 10, 3),
(754, '2021-09-10 11:19:56.741508', '253', 'Foss, A', 2, '[{\"changed\": {\"fields\": [\"Voornaam\", \"Emailadress\", \"Memo\"]}}]', 10, 3),
(755, '2021-09-10 15:14:12.595733', '254', 'mah.vrooijen', 1, '[{\"added\": {}}]', 10, 2),
(756, '2021-09-10 15:19:52.235022', '255', 'Woldberg, Marianne', 1, '[{\"added\": {}}]', 10, 2),
(757, '2021-09-10 18:30:19.647331', '256', 'Meijer, Elly', 1, '[{\"added\": {}}]', 10, 2),
(758, '2021-09-10 18:37:26.270353', '257', 'Freccia', 1, '[{\"added\": {}}]', 10, 2),
(759, '2021-09-10 18:38:37.103588', '258', 'Wolf, Wie', 1, '[{\"added\": {}}]', 10, 2),
(760, '2021-09-10 19:46:24.863061', '97', 'Waa-Meents, v.d. Marja. O.', 2, '[]', 10, 2),
(761, '2021-09-10 22:19:47.826331', '259', 'Es van, Theo en ria', 1, '[{\"added\": {}}]', 10, 2),
(762, '2021-09-11 07:59:15.183181', '260', 'Es van, Theo en Ria', 1, '[{\"added\": {}}]', 10, 2),
(763, '2021-09-11 08:03:48.614141', '259', 'Es van, Theo en ria', 3, '', 10, 2),
(764, '2021-09-11 08:04:36.584566', '260', 'Esch van, Theo en Ria', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(765, '2021-09-11 08:06:18.636312', '260', 'Esch van, Theo en Ria', 2, '[]', 10, 2),
(766, '2021-09-11 20:18:29.259830', '261', 'ms, astrid', 1, '[{\"added\": {}}]', 10, 2),
(767, '2021-09-12 18:20:12.495454', '262', 'Kohlbrugge, Gilbert', 1, '[{\"added\": {}}]', 10, 2),
(768, '2021-09-12 18:21:15.534980', '263', 'Haas, Frieda', 1, '[{\"added\": {}}]', 10, 2),
(769, '2021-09-12 18:22:58.221731', '264', 'Mens, D', 1, '[{\"added\": {}}]', 10, 2),
(770, '2021-09-13 12:30:57.686015', '265', 'Broersen', 1, '[{\"added\": {}}]', 10, 2),
(771, '2021-09-13 12:38:01.317079', '265', 'Broersen', 2, '[{\"changed\": {\"fields\": [\"Emailadress\"]}}]', 10, 2),
(772, '2021-09-20 14:29:26.666767', '266', 'Charlesen, Margreet', 1, '[{\"added\": {}}]', 10, 2),
(773, '2021-09-21 19:42:16.299952', '267', 'HI HO Silver, Jaap', 1, '[{\"added\": {}}]', 10, 2),
(774, '2021-09-21 19:48:06.275957', '40', 'The Wanderers', 1, '[{\"added\": {}}]', 7, 2),
(775, '2021-09-21 19:52:44.104321', '268', 'Mensingh, Armand', 1, '[{\"added\": {}}]', 10, 2),
(776, '2021-09-27 09:30:31.741553', '269', 'Oerlemans, Henk', 1, '[{\"added\": {}}]', 10, 2),
(777, '2021-09-27 19:20:45.120852', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(778, '2021-10-08 19:22:13.362676', '270', 'Snope, Ella', 1, '[{\"added\": {}}]', 10, 2),
(779, '2021-10-08 19:27:13.134986', '270', 'Snoep, Ella', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(780, '2021-10-14 12:13:23.283988', '3', 'Toko2Walk', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 9, 2),
(781, '2021-10-14 12:28:52.059929', '7', 'Waq-food', 1, '[{\"added\": {}}]', 9, 2),
(782, '2021-10-15 11:13:24.070403', '7', 'Waq-food', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 9, 2),
(783, '2021-10-15 11:21:24.215810', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Einde\", \"Catering\", \"Thema\"]}}]', 14, 2),
(784, '2021-10-15 11:30:44.717656', '9', 'Kumpulan', 2, '[]', 14, 2),
(785, '2021-10-15 11:33:33.247516', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Band image\"]}}]', 7, 2),
(786, '2021-10-15 11:43:43.061587', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(787, '2021-10-15 11:44:13.950439', '3', 'The Rocking Players', 2, '[]', 7, 2),
(788, '2021-10-15 11:45:03.289637', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(789, '2021-10-15 11:47:27.873474', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Uitverkocht\"]}}]', 14, 2),
(790, '2021-10-15 15:38:22.801497', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(791, '2021-10-15 19:49:35.340853', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\"]}}]', 14, 2),
(792, '2021-10-15 19:51:09.508098', '9', 'Kumpulan', 2, '[]', 14, 2),
(793, '2021-10-15 20:50:52.541125', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 2\"]}}]', 14, 2),
(794, '2021-10-15 20:52:52.818978', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(795, '2021-10-15 21:16:48.435598', '3', 'The Rocking Players', 2, '[]', 7, 2),
(796, '2021-10-15 21:20:43.822311', '3', 'The Rocking Players', 2, '[]', 7, 2),
(797, '2021-10-16 19:38:09.151681', '271', 'Frans, Stephan', 1, '[{\"added\": {}}]', 10, 3),
(798, '2021-10-16 19:46:19.165599', '8', 'Ropaja Indonesische Catering', 1, '[{\"added\": {}}]', 9, 3),
(799, '2021-10-16 20:01:31.697314', '9', 'Toko Intani', 1, '[{\"added\": {}}]', 9, 3),
(800, '2021-10-16 20:04:45.653994', '9', 'Toko Intani', 2, '[{\"changed\": {\"fields\": [\"Website\", \"Memo\"]}}]', 9, 3),
(801, '2021-10-16 20:10:58.072920', '272', 'Murhaban, Munir', 1, '[{\"added\": {}}]', 10, 3),
(802, '2021-10-16 20:15:18.967988', '10', 'Indonesia Indah', 1, '[{\"added\": {}}]', 9, 3),
(803, '2021-10-17 09:40:06.110967', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(804, '2021-10-17 09:41:03.404584', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(805, '2021-10-17 09:42:34.892187', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(806, '2021-10-19 20:28:17.065239', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(807, '2021-10-19 20:37:08.216346', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(808, '2021-10-19 20:41:47.040029', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 3),
(809, '2021-10-19 20:44:39.226005', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Volgende datum 2\"]}}]', 14, 3),
(810, '2021-10-24 19:28:14.964978', '273', 'Gino Italiaanse zanger', 1, '[{\"added\": {}}]', 10, 2),
(811, '2021-10-24 19:33:17.167547', '274', 'Gestel van, Jurre', 1, '[{\"added\": {}}]', 10, 2),
(812, '2021-10-24 19:35:11.613559', '274', 'Gestel van, Jurre', 2, '[]', 10, 2),
(813, '2021-10-26 12:22:19.309810', '275', 'Onbekent 01', 1, '[{\"added\": {}}]', 10, 2),
(814, '2021-10-26 20:29:46.704718', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info 2\", \"Volgende datum 2\"]}}]', 14, 3),
(815, '2021-10-26 20:36:38.385835', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Catering info\", \"Activiteiten info\"]}}]', 14, 3),
(816, '2021-10-26 20:39:22.477984', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Activiteiten info 2\", \"Volgende datum 2\"]}}]', 14, 3),
(817, '2021-10-26 21:05:16.110360', '41', 'Gino Italiaans ijs truckIjs', 1, '[{\"added\": {}}]', 7, 2),
(818, '2021-10-26 21:07:44.637607', '41', 'Gino Julian Italiaans ijs truck', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Memo\"]}}]', 7, 2),
(819, '2021-10-26 21:09:05.236537', '41', 'Gino Julian Italiaans ijs truck', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 2),
(820, '2021-10-27 14:40:12.861459', '180', 'Evers, Han', 2, '[{\"changed\": {\"fields\": [\"Mobiel\", \"Emailadress\"]}}]', 10, 2),
(821, '2021-10-31 22:28:28.210352', '42', 'Royal Dice', 1, '[{\"added\": {}}]', 7, 2),
(822, '2021-11-01 15:13:03.084201', '276', 'Kollaard, Erwin', 1, '[{\"added\": {}}]', 10, 3),
(823, '2021-11-01 15:14:29.238441', '9', 'Kumpulan', 2, '[{\"changed\": {\"fields\": [\"Datum\", \"Volgende datum 1\"]}}]', 14, 2),
(824, '2021-11-01 15:18:44.361589', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(825, '2021-11-01 15:26:00.710386', '43', 'Indian Summer', 1, '[{\"added\": {}}]', 7, 3),
(826, '2021-11-02 09:53:49.914929', '13', 'CiCi', 2, '[{\"changed\": {\"fields\": [\"Telefoon\", \"Emailadress\"]}}]', 10, 3),
(827, '2021-11-02 09:55:27.547842', '3', 'Toko2Walk', 2, '[{\"changed\": {\"fields\": [\"Website\", \"Memo\"]}}]', 9, 3),
(828, '2021-11-02 09:59:44.934377', '13', 'CiCi', 2, '[{\"changed\": {\"fields\": [\"Adres\", \"Postcode\", \"Plaats\"]}}]', 10, 3),
(829, '2021-11-02 14:52:46.345384', '277', 'Optietot', 1, '[{\"added\": {}}]', 10, 2),
(830, '2021-11-02 14:55:32.002200', '277', 'Optietot', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 10, 2),
(831, '2021-11-08 19:58:07.898035', '278', 'Salomonson, Herman', 1, '[{\"added\": {}}]', 10, 2),
(832, '2021-11-08 20:08:52.927710', '278', 'Salomonson, Herman', 2, '[]', 10, 2),
(833, '2021-11-08 20:11:17.559145', '279', 'Los, Martijn', 1, '[{\"added\": {}}]', 10, 2),
(834, '2021-11-08 20:14:01.061908', '279', 'Los, Martijn', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 10, 2),
(835, '2021-11-08 20:23:21.164910', '40', 'The Wanderers', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 2),
(836, '2021-11-08 20:52:45.049442', '44', 'Black Eyes', 1, '[{\"added\": {}}]', 7, 2),
(837, '2021-11-13 21:05:44.322562', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(838, '2021-11-13 21:17:57.780273', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 2),
(839, '2021-11-13 21:18:45.940572', '34', 'Kwekel productions', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(840, '2021-11-13 21:19:41.676880', '8', 'Java Guitars Unlimited', 2, '[]', 7, 2),
(841, '2021-11-13 21:21:36.228379', '34', 'Kwekel productions', 2, '[{\"changed\": {\"fields\": [\"Bedrag\", \"Memo\"]}}]', 7, 2),
(842, '2021-11-13 21:22:19.597380', '34', 'Kwekel productions', 2, '[]', 7, 2),
(843, '2021-11-13 21:23:09.241890', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Genre\"]}}]', 7, 2),
(844, '2021-11-13 21:24:04.901617', '8', 'Java Guitars Unlimited', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 2),
(845, '2021-11-23 11:50:41.626340', '280', 'Salomonson, Herman', 1, '[{\"added\": {}}]', 10, 2),
(846, '2021-11-23 11:52:35.318587', '45', '@-Ones', 1, '[{\"added\": {}}]', 7, 2),
(847, '2021-11-26 20:31:47.205665', '46', 'The Terry White Band', 1, '[{\"added\": {}}]', 7, 2),
(848, '2021-11-26 20:34:22.805863', '281', 'Koot van, Gerry', 1, '[{\"added\": {}}]', 10, 2),
(849, '2021-11-26 20:35:30.326999', '46', 'The Terry White Band', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 2),
(850, '2021-11-26 20:38:03.124148', '46', 'The Terry White Band', 2, '[]', 7, 2),
(851, '2021-11-28 10:18:34.613323', '115', 'Bes, René', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Memo\"]}}]', 10, 2),
(852, '2021-11-28 10:21:41.540944', '47', 'The Red Pack 1', 1, '[{\"added\": {}}]', 7, 2),
(853, '2021-11-28 12:51:12.320861', '16', 'The Red Pack', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 2),
(854, '2021-11-28 14:33:55.923196', '124', 'Janssen, Tom', 2, '[]', 10, 2),
(855, '2021-11-28 14:40:09.007208', '282', 'Water van de, Wim', 1, '[{\"added\": {}}]', 10, 2),
(856, '2021-11-28 14:42:32.642574', '282', 'Water van de, Wim', 2, '[{\"changed\": {\"fields\": [\"Mobiel\"]}}]', 10, 2),
(857, '2021-11-28 14:50:03.521293', '48', 'The Red Strats', 1, '[{\"added\": {}}]', 7, 2),
(858, '2021-11-30 12:51:47.638976', '19', 'The Bretels', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(859, '2021-11-30 12:54:30.300596', '283', 'Jan', 1, '[{\"added\": {}}]', 10, 3),
(860, '2021-11-30 12:55:25.464839', '19', 'The Bretels', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 7, 3),
(861, '2021-12-02 18:37:34.630619', '283', 'Stelt, Jan', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 3),
(862, '2021-12-03 10:58:10.294488', '48', 'The Red Strats', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(863, '2021-12-03 10:59:20.842722', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 2),
(864, '2021-12-08 14:38:56.056954', '3', 'The Rocking Players', 2, '[]', 7, 2),
(865, '2021-12-08 14:40:03.206395', '6', 'Wipe Out Selection & Sandra Mooij', 2, '[{\"changed\": {\"fields\": [\"Bedrag\"]}}]', 7, 2),
(866, '2021-12-08 21:42:40.215235', '284', 'Dj Vis, Jaap', 1, '[{\"added\": {}}]', 10, 2),
(867, '2021-12-09 12:20:01.552085', '285', 'NHD, Vink, Sandra', 1, '[{\"added\": {}}]', 10, 2),
(868, '2021-12-09 12:37:56.543184', '286', 'Tatipata, Peter', 1, '[{\"added\": {}}]', 10, 2),
(869, '2021-12-09 12:45:24.400033', '44', 'Black Eyes', 2, '[{\"changed\": {\"fields\": [\"Contact\", \"Technicus\"]}}]', 7, 2),
(870, '2021-12-09 21:10:39.023693', '17', 'Cliff and his Lonestars', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 7, 3),
(871, '2021-12-09 21:12:09.361620', '123', 'Brand Horninge, v.d. Frans', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 10, 3),
(872, '2021-12-14 13:58:53.389013', '49', 'AGording Band', 1, '[{\"added\": {}}]', 7, 2),
(873, '2021-12-31 13:13:06.760958', '50', 'Sandra Mooy', 1, '[{\"added\": {}}]', 7, 2),
(874, '2021-12-31 13:48:14.309482', '50', 'Sandra Mooy', 2, '[]', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(17, 'camera', 'bedrijf'),
(7, 'contacts', 'band'),
(15, 'contacts', 'bandleden'),
(8, 'contacts', 'category'),
(9, 'contacts', 'cateraar'),
(10, 'contacts', 'contact'),
(14, 'contacts', 'evenement'),
(13, 'contacts', 'fanclub'),
(12, 'contacts', 'page'),
(16, 'contacts', 'ticket'),
(11, 'contacts', 'zaal'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-11 08:11:10.683388'),
(2, 'auth', '0001_initial', '2020-09-11 08:11:13.851574'),
(3, 'admin', '0001_initial', '2020-09-11 08:11:27.222839'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-11 08:11:32.115068'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-11 08:11:32.229725'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-11 08:11:34.642223'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-11 08:11:35.912467'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-11 08:11:37.496899'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-11 08:11:37.580225'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-11 08:11:38.518897'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-11 08:11:38.609855'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-11 08:11:38.687842'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-11 08:11:40.092549'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-11 08:11:41.565837'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-11 08:11:42.998263'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-11 08:11:43.082077'),
(17, 'contacts', '0001_initial', '2020-09-11 08:11:51.991047'),
(18, 'sessions', '0001_initial', '2020-09-11 08:12:05.597919'),
(19, 'contacts', '0002_band_genre', '2020-09-11 10:10:23.274962'),
(20, 'contacts', '0003_auto_20200912_1919', '2020-09-12 17:19:44.329908'),
(21, 'contacts', '0004_auto_20200915_0838', '2020-09-15 06:38:41.009425'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2020-10-29 15:07:25.595595'),
(23, 'contacts', '0005_evenement_opbrengst', '2020-10-29 15:07:25.765826'),
(24, 'contacts', '0006_contact_voornaam', '2020-11-16 12:12:22.448437'),
(25, 'contacts', '0007_auto_20201117_1739', '2020-11-18 17:57:40.281177'),
(26, 'contacts', '0002_auto_20210302_1729', '2021-03-04 14:45:39.470251'),
(27, 'contacts', '0003_auto_20210303_1154', '2021-03-04 14:45:42.215475'),
(28, 'contacts', '0004_auto_20210305_1008', '2021-03-09 15:08:21.232110'),
(29, 'contacts', '0005_evenement_uitverkocht', '2021-03-09 15:08:22.787413'),
(30, 'contacts', '0006_auto_20210309_1608', '2021-03-09 15:08:23.063577'),
(31, 'contacts', '0007_auto_20210310_1114', '2021-03-10 10:14:24.185067'),
(32, 'contacts', '0008_auto_20210311_1402', '2021-03-11 15:02:25.684793'),
(33, 'contacts', '0009_auto_20210311_1456', '2021-03-11 15:02:25.781435'),
(34, 'contacts', '0010_auto_20210415_1752', '2021-04-16 15:29:54.804541'),
(35, 'contacts', '0011_auto_20210416_1318', '2021-04-16 15:29:54.959777'),
(36, 'contacts', '0012_auto_20210422_1726', '2021-04-23 11:47:52.373383'),
(37, 'contacts', '0013_auto_20210430_0942', '2021-04-30 17:27:48.496939'),
(38, 'contacts', '0014_verkoop', '2021-05-10 08:34:22.891202'),
(39, 'contacts', '0015_auto_20210510_1039', '2021-05-10 08:40:05.777425'),
(40, 'contacts', '0016_ticket_voorverkoop', '2021-05-10 08:48:48.881539'),
(41, 'contacts', '0017_auto_20210510_1059', '2021-05-17 11:57:57.281212'),
(42, 'contacts', '0018_remove_ticket_slug', '2021-05-17 11:57:59.030832'),
(43, 'contacts', '0019_evenement_activiteiten_info_2', '2021-08-11 10:07:05.864956'),
(44, 'contacts', '0020_auto_20210811_1206', '2021-08-11 10:07:06.061070'),
(45, 'contacts', '0021_auto_20210907_1450', '2021-09-07 12:50:16.904041'),
(46, 'camera', '0001_initial', '2021-12-09 10:44:14.483326');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01l80xtzwicdid6827n8dwf61vy6uqlj', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lhr30:3xJidBkqgqcH_k4eCi1LO_ixZWFjBF3Tp1g1DdCiYO8', '2021-05-29 09:57:26.416371'),
('07mrq0floffcdsot2mzc8o5bygzhmtsd', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lk4Fi:rVtArgmZ_Pb6fOGTkaPWiwlQpQcIBpnMt5qOoPz2ovY', '2021-06-04 12:27:42.677323'),
('083dg1b1it9j03kkf1etqluqo799cn98', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mFMap:KXpQyNwf_xDxOewNp0ly3PXU8JwBeU1x-hyCg5Ojaho', '2021-08-29 20:18:51.695548'),
('08u1wvru5e2sknr4e72pvg9ae53u5h6a', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1liLpT:NE127ZLRDrjj2oOp2Dj8BUhtIeFHQm6xjsthONAhcHs', '2021-05-30 18:49:31.316192'),
('0ahw3sloop5hwxbaahwnja8rcb7omt1s', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kzg15:9Fd4e4L9C-7fafiJuoPqW14GHyAUTffa7SFUIgyGodw', '2021-01-27 13:16:51.939518'),
('0argfqailnxvb3jxunoa3hraycuabf5h', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1kwStr:Mxogt7J7be2CYcXbkoVp6xtDGM24u7vG0cln96eoFK0', '2021-01-18 16:40:07.771609'),
('0b4q2h9h4razjplmbev7270m04cpvbux', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m2uaE:xugwMlGBNVvItOTb1oGRRTXS1D8uY9Cp5M-NYcSmlnQ', '2021-07-26 11:58:46.689584'),
('0f40zv0m1souwzqbqvr9nghmmp9kxyxk', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lfNeU:DTI7ypop6vOFnXQeH7PT5WVY9jBcztD17cCdS845ybQ', '2021-05-22 14:09:54.520825'),
('0tij0ddbc1agsxoi0gl1q6i1cqd356do', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kxqU1:elcJFOJkFjOKT5fiZwXwuF6CidzJh5-v9bqQW4QoLYo', '2021-01-22 12:03:09.756189'),
('0xz0f0a36zo9b9ii3zzwirriaha9sauy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lg4a3:ytcrbJ1GJyEQdCiFRwreAITYlxVTp65tKRKyr5cPUHw', '2021-05-24 12:00:11.104238'),
('0ytz7cjwexv4108jsdnijnvug5wfsx9p', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m15sr:CSSYziGwrMDSSjUANQafYdlp68O7C1SGvuDAyaGBvYs', '2021-07-21 11:38:29.014796'),
('0yuxh67lyiydh2b8ckcjlhi5qemijpui', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m1658:INOv6G7V_cihrjDx4a3mqsjooA4XuOKvX9Pug4wqDFI', '2021-07-21 11:51:10.916636'),
('100pk12ilu3furz1j34q0u1jr838recu', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lLi0R:zZ9qKdrZ80ZZtrlo5DNYJcH24ZG-jOAb84X64wvZLms', '2021-03-29 07:51:15.112305'),
('109r56ukqnyp4olx143kwv21hvmqa3b8', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kxtQF:zL_YmFApzdBwKQBNXhCFE8Ov23zNlIk_G_g7OZvxhIE', '2021-01-22 15:11:27.050840'),
('10n86wsx8vil668gv4eai07l6datfpjd', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lHpMH:INzTJt8wQEGWTw54GCI_3l7MDgMHq6Fk1avkQCnvhfY', '2021-03-18 14:53:45.339305'),
('14c42m54ep6mamy89cdu80ac5wbuoiad', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kkSLY:czsJ6Y5bUjJFoFC0yEV2Apa7gcrNTur3eb0dG7990gM', '2020-12-16 13:39:04.031080'),
('168c57k2ca1lnsq35wz0cy0bcdhmj5tr', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lg1oh:_4xhyN2GJOeviDf-oZnQuHCOA7JGsYeeXB4dUfrlLBo', '2021-05-24 09:03:07.618035'),
('17ra6k6p0dvt1i5e35e5v36t9i3uhou3', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lhHfq:M4IBqqtB8lvnfl2ITWCMskK8yYO35ORHdJtSHCddtsQ', '2021-05-27 20:11:10.044383'),
('1atvbf6dra51yc3tb1f1se3no6g1wmcd', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lNxix:8wSXp5B4eczQx5EOnnAhdO6M2Q6jsqj1l3w_ybHpVPY', '2021-04-04 13:02:31.415148'),
('1ecdrn3fzs7vw353buiue1axrfzeza25', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1loWri:wbin-EudjXVASWuR8pv3I87UPxkP2CKhfNIOrLCFbHY', '2021-06-16 19:49:22.130197'),
('1emcq1txbh5df7ntf75v7js8r6q18vrh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mFeX5:b3EAf2nrC-acwYHiJ-v_GhvhERU78bV4qgrK7dDjj4c', '2021-08-30 15:28:11.310464'),
('1fw2191cjxvw3w1zf009jjcagcdid6b4', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lt7IO:dGgUo7aIiV1dcS7itmHQh3Ctx3tTzvTurdgF9DYXBW8', '2021-06-29 11:31:52.452546'),
('1gzib74bxys1cvsociz3j2sz2br87hyl', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lsrR9:Fv6PXnVxW4W_fgvU86lUkmTsjRc3GEUeKXVkpid5ltM', '2021-06-28 18:35:51.452207'),
('1k38b7b77560zqoudg2qhcj3c67jwb2c', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lwkC3:Z9rLDhP141YqGutvH52CwnF0SVLsMlc2YBkMx_vRKPo', '2021-07-09 11:40:19.780519'),
('1o8eepor7xoziz1fe0atjriswqcct2sq', '.eJxVjEEOwiAQRe_C2hBmkAIu3fcMZGCoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hZnERWpx-t0jpkesO-E711mRqdV3mKHdFHrTLsXF-Xg_376BQL986sbNxyIhGebSONcDZ82QQQCGqZJ1lAG88TqSYyRmD7LNHHlKyGsX7A7qXNuc:1mA9uS:Uk5qfBjBNaeXdPzljOqBIlCWSHGrgOyYyt0ZOoSsOGc', '2021-08-15 11:45:36.244562'),
('1omv61ywy2kp6gjq5xn3fre930dy4c0n', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjG9:DbdChfedVg1kf14NQfqI3WVhG9PstleSu9ZntvpF0Ek', '2021-08-25 08:06:45.374416'),
('1r0kgrchl6sc48w9bz3w3i9v1tieyo1x', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1koo3g:j2XD4F7RttT1DlCuZRvRpy_yamGIgl3n3hYnjTflj4Q', '2020-12-28 13:38:36.358205'),
('1uttoxd9vqd3409v6c026991quz59ji4', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lUbR0:qtg74jEjiUxoBxbci-V30pLs_cZgasZe3vL9WJUvUy4', '2021-04-22 20:39:26.000310'),
('1yeu23zgm9za562gzumpxrtj6nyoztov', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mvIKI:YHc0oG1P37vU-pZG7L0qp_8oh537iUR2W656hrHP7Kw', '2021-12-23 12:15:06.258936'),
('1zcuguzwwx4qhl68vcu74lc3p1v2kqtb', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lXQi5:a94i8ypbNsEsgRZPIyzBnJtmXTUiOgt3AUjTAqoc8ro', '2021-04-30 15:48:45.189459'),
('22ndjxfx7q7vbx9s8f9aa8wvgcxh8vyh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lpdlB:qpTd84kYfpxwMHDR-Twj9BndivqKgEVuge8lxYWBBqg', '2021-06-19 21:23:13.322230'),
('27w0xie9og5qt93bn53b93pwxdl0krpi', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lIoSZ:Xsbs6WhrDv90tFXJXuGvCzpcGsP2TlL_NZcfREAH0sU', '2021-03-21 08:08:19.236632'),
('2eaxhl5rbmncy13sgdytbzgsup3r0qxb', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lso1I:8IULNVucFexP5SYDQfnKCnPGMgKSLwE03pbgxEdmqbU', '2021-06-28 14:56:56.202280'),
('2wsvk6944n3rx610qlozbnjb4or3gdjo', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lt7A9:KpM18LDXPxp6QRK0vF6GOP0QnWKv6nyaobtemR7WYLU', '2021-06-29 11:23:21.704616'),
('2ys85y2jee8ivmx3szgdo9hq8xrqdbw9', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lvP0p:oXzuYRKfWuR04Uh5SFDti09MwgKwbmv9AG2OeZX8Cv0', '2021-07-05 18:51:11.298353'),
('33m6z0qxdrzpmoo0taw7yuzzk3diw8t7', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1llA5t:24lDEo2RhoIReT-bC-qt2nfuOTQ-q-QGRZ5lE--XZWw', '2021-06-07 12:54:05.952836'),
('3518a0sw2ajejoz37686j7lr2uy3u1hn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lkAay:bt6QOukgjaybJuwzR7S_y2O9FYJE5QGXTeiO64V7VMQ', '2021-06-04 19:14:04.921120'),
('3jdahyzrmice8dsw0wt0s1i04zhqv6nw', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1kzgK2:OQeAKW_DreG3ql-yl_-Ohja52gCyjl2_tcDmX6p4-Lo', '2021-01-27 13:36:26.653480'),
('3jo2v2kwivquohxu4m02rmyeowir9b4p', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mDq5G:5u3_W5dIEunFzxfSZz3JboicLv1wWJbY1ZYCODCYwuo', '2021-08-25 15:23:58.087118'),
('3q1c3x626dt8rgdxhvug8k9axnr4nv23', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l2Da0:NtG53lPatzeGJ8UN-OZPZrkShEEhb_UwFoYMIuS4vvo', '2021-02-03 13:31:24.312123'),
('3sbkgyh3sjqj90ih6g3w28l0l7m0hh17', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lXWCB:yJxnPsbcfChz4E-F5gHNSNkDtkCrHf0K2ztsOcmsniw', '2021-04-30 21:40:11.036562'),
('3vw9qgynp56p0viu1xbxd4ahbxqjwbq5', '.eJxVjEEOwiAQRe_C2hBmkAIu3fcMZGCoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hZnERWpx-t0jpkesO-E711mRqdV3mKHdFHrTLsXF-Xg_376BQL986sbNxyIhGebSONcDZ82QQQCGqZJ1lAG88TqSYyRmD7LNHHlKyGsX7A7qXNuc:1lpziB:1Ewc8whS4ADb-XNDocf3ZU2PlilJAY66YFX4VESM_o8', '2021-06-20 20:49:35.295622'),
('3xvn78o7lgbgyskytg74x1n4kq2ltv5b', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kxTYx:8Mqq0Y_mLPlj4kcvTZ2M94jbGZgZ1mecGS4zsrlyNzA', '2021-01-21 11:34:43.618172'),
('40okrw7czgb75fwl0fpltn609tu3pks6', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1n3HKC:K6my-0X_6JYLPXEmtIZZP7SDT6_MntusZAbLuyKLd5M', '2022-01-14 12:48:00.756598'),
('40rb47vp93i8l4fslpafpamywhf726ge', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mNryL:ELQNFkmRg6TjUJcbuDk_lkAMexup0J4m8MauCAbNIMA', '2021-09-22 07:26:17.419782'),
('4apq9apxv8nkrencqyhht33rjsdisofw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l28sn:-xvqXGL73cp1d8O8tvXvcklVTjIxCmcuHIiGjtg4Hrg', '2021-02-03 08:30:29.680131'),
('4cj2bqkapq54h197znnhp6drbjl3344h', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1liZ60:1F5UHE07ly209lHgzo14WWM677UmIPfSrrTJ_oWnFi8', '2021-05-31 08:59:28.984681'),
('4dfk9q87vphcndhpxx3cunvk411ho7uk', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lwpBj:pUjGREXsY-RxFlGS9qdHrjtQ6oXbpYtRDUxtL18POew', '2021-07-09 17:00:19.775353'),
('4nf548ajj86fkgsms1xgsdst9ytgufyu', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDkUi:eQZTFpHu-318afTMbwyqoazY0NwVtmDIEe8VGb7hzH8', '2021-08-25 09:25:52.267399'),
('4nixp5ld0sl6o203d6r6mc52p5cepnxj', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kr7SM:QxcmTt9bakOrlUW-PEk5Clrzh_o8nMIUXdi-wjeZo5E', '2021-01-03 22:45:38.445372'),
('4qhjm6oevl2d7qkbipi248tt555qmfih', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lI7Qi:eXfJiCZxs05sI-HHK4Nz5FiVXlg1wu2wj3micLOvloY', '2021-03-19 10:11:32.853309'),
('4r2z4p5wmq2fecg372gkczpi5ej0uteq', '.eJxVjDkOwjAURO_iGlnev01JnzNY3xsOIFuKkwpxdxIpBWi6eW_mTTxua_XbyIufE7kSTi6_XcD4zO0A6YHt3mnsbV3mQA-FnnTQqaf8up3u30HFUfc1RlEcU9yGiDIlrQKTMiuQ1nBgVmlgTmsHXGAMpnAhXTJQGMg9lgP5fAHDzzZb:1kvjBp:IFdETQJwP_gtN0kfEQuG1_Y45XOv1pCO_3XWEHPSIic', '2021-01-16 15:51:37.043282'),
('4r7gglitkzqrmppurre2d5m5k6kpxyki', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kxytS:40oxbJU-IPuZqK4subHbG1g6c0Dhnx0kKl_x-M9SWQ8', '2021-01-22 21:01:58.295170'),
('4ulpz1p701ydbf0wc87a54mcn87cb4wy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lie5t:iEL2NpGF5_Wqs1XcxiHhCHZ90STtaWSipYjXTi8IDqY', '2021-05-31 14:19:41.462866'),
('4uz17sqjomlxqn3a0wklpafswtgyb8ea', 'NWNlYWQwZDI1NGExNzc5ZjdkMmE3ZTkyNGQ0Y2MzZDhiNjU3OWQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjAwYmY2N2RhOWIyNTUxM2I2NzE1ZDJmN2FkMmY2OGQyZDExMzRkIn0=', '2020-09-25 08:19:21.029828'),
('4w6h7w5g5vlpfsopvh9unzfo8gy5p31t', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mFuJJ:qbGKHCEyECR_jo9B0efXBdae_kzJR7DhQZuW7_I8Ai4', '2021-08-31 08:19:01.801457'),
('52ib0td29tzia6tbv6iegtykhss2ot0m', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mpUEx:KFblRlfYuhzeG3pZAnWDLYmobWBg5haDDj3tbrIlqJY', '2021-12-07 11:45:35.752882'),
('53lviiix64gma1mod9sqj0a7g9ql7xnw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1msXSW:-GeQnZz1Rb74M3fLfZCXEatDj-ACG1XO0hoZJGlYqdM', '2021-12-15 21:48:12.730385'),
('5679yf4ud4dd8cu1xuopdslwxrmpc3fd', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kzh8v:QwPhL0mLHE7LyNjsjwEF3ZJT-2KJUzxo-KRK2neCAu0', '2021-01-27 14:29:01.943842'),
('5b0bwkk4pigcel4na96g8tp0wnf0q55w', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lB0Sz:3gGlSOyDKc_mFL4FqTDHLQVvf2R24Zb1e_8BKxGdD_s', '2021-02-27 19:20:29.571837'),
('5cn8nx199eqe6ekf757o03nrqedzfyhs', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lwkG8:JUQ9JCEwfZmjuZmyS9JtFOrapoUr8VAgk5eOUFWH93o', '2021-07-09 11:44:32.281662'),
('5hei3idlqu8m7jx2vzxjwa72epn2p38n', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1n3LeK:FpvaDf_PzwCAimp20tOPnuDc4T4osyHTPB94Sinj-pA', '2022-01-14 17:25:04.005797'),
('5l2l4aftwzjmoig5nkkhlw3kxxzoifak', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mCndZ:htu2XJGNkuXpnJ6ukZr6OL3u0WLdNgN1k0uA3uHjTRk', '2021-08-22 18:35:05.231641'),
('5qdcv08zanu628syfb8xcc86w1ui0kvy', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lrFld:CKNGvSMn6-KcR3QhYaZ7HRLgbpkmx0IrEmZitz1MHiY', '2021-06-24 08:10:21.441773'),
('5z54ml0iyvaub65hpc9y5sa5xn7no47q', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kgYoi:F0-FmtG3Z8sB6kToZr-jl4AVPS01wieZIc7YJz8bp1s', '2020-12-05 19:45:04.022624'),
('67r4s5gdpm29bpwd67dtyha8bre7yol2', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mbLXS:dCA7TyTc17RHC2XPDxGc9mbAAZeLTJBVvGij8TmN874', '2021-10-29 11:38:14.436731'),
('69lch8gttrrq5r237gwsyqs5lvyfpuil', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1libyr:yHmd-sMK7fHn1mjVFFTCg6ok10LIdMw3O7RE0CeOEEI', '2021-05-31 12:04:17.420727'),
('6bohvohndk6bypsgblw7x2zkt6l0jvc0', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mtsdS:II6S_X5DsgGZA2KtyqkMnRs7vCiBG-p6qH8KHZwF0Ak', '2021-12-19 14:37:02.279088'),
('6gxposmdjg93uzo7xelthytwgdgv9yn4', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mFYYW:-2jzqC69O58uwGPLfR9UtX0m7bdmHGPLAjE6a9eRli4', '2021-08-30 09:05:16.558065'),
('6iekiybdult8n3c0bk3sgwirvnvyvu39', '.eJxVjDsOwyAQBe9CHSGWr0mZ3mdAC4uDkwhLxq6i3D1YcpG0M_PemwXctxL2ltcwE7syYJdfFjE9cz0EPbDeF56Wuq1z5EfCT9v4uFB-3c7276BgK30tjAFPXoIfpuQiKlKWpNXZgCal5SQoggCLHSABJmWctarjIUZ0nn2-yk43kA:1kQrfB:TCWRIvSWLzpahPAP73K2ZAMUaCeRdhY26F0Zjgad5UQ', '2020-10-23 12:38:21.131021'),
('6pspp8pst1i8hjk9lyd4soe8u5cc3oph', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lXgZ7:KMRekHhFN2XeYc5kF82qmiPmEwi1fnluM_HiSAeH7HU', '2021-05-01 08:44:33.586567'),
('6ux9k8usii311p0vf6qdlsjg532nk5uj', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1licn0:BIUNbk9SdQdcDJynzmZryh9ZlBFDlUsPVFtIuJSTh0g', '2021-05-31 12:56:06.693270'),
('6w4wsl8jb4n2rtzbwlt0qjzb2m5ilbgv', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mbL6P:kcXNWbX3PDxKJ4G9uklwtjz7wO_Ek_5i70XwhErRPLw', '2021-10-29 11:10:17.034258'),
('6w6njg5jrmkn7crydp430pnt55t7e1jc', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mGhgU:gpGifGe33rNuPwuTsUgmcrFxtmZhk7hl_6gqJmw7pp4', '2021-09-02 13:02:14.625453'),
('71br05dd2mi2iqm99td3xg74dunenbrv', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mr6J6:LkiakV_AnN3irmvDCTgHi68P2CtyrFwwYVYp6QzG-Zs', '2021-12-11 22:36:32.213573'),
('79okwlaq5ylyc4v81wbkj8xz16uscuot', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1l5AJZ:s7YaH5eE43Ku-xeYeZWS6Mjk1jif5lI7FmVFx9UQ5oM', '2021-02-11 16:38:37.284583'),
('7ef5ry4bacvwsk7qwj7v8zxs5yojerxz', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lrcrw:RUEisnXZclFmeUWBjj9myh9H1GLTazrIAY1V5izY47o', '2021-06-25 08:50:24.226763'),
('7jmu9ssf2xqbye7oo9o6jmfcltu2170i', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lajud:WzmXKPEbdYq9K-IPOFBkE2aLb8ySF8J3r_yMsC5YY90', '2021-05-09 18:55:23.747004'),
('7juydhtphvvjv5yti8g2c1ga3r4rtm3j', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mlRi8:f7SBXdYywj8ZczxG0kF0Xu-NPlPp4qeq4R-RnLwoonI', '2021-11-26 08:15:00.517731'),
('7mqngabhjy6nr5hvuant3uc5c41loaiy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ko4iy:Hg4SSSYA-WIajhKQ2GaNLonqXTUWMoF16GsPq6SxEds', '2020-12-26 13:14:12.295763'),
('7oi5k6ttbt4uranit40qjg6xrqmx7q49', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lw82B:ErGJAk5ln4Z-GLO9qcDogsywuB6QwveqyEumQ9Hldlc', '2021-07-07 18:55:35.943346'),
('7svnndaxbpqzkaudhiq8551uiqt93n08', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mMnY9:rezu5PCcysPwl3eUdpZb3QvmNjel9xkJGhPERsCBNYc', '2021-09-19 08:30:49.358361'),
('7wv837v6voqw9s2m3vapa0gj8ufd3r5z', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mFyFF:bhn3Gy_1tMdKwgnCSZe8uzca8n34rvDiJ5zx_sl5P8o', '2021-08-31 12:31:05.876556'),
('7x5gwoxlbqgm1c6keofvbrnngrdtvexq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lU8Nq:l8G2pNfe06jFLfC6Xjdle7jbe4RH87ozBZVj7n3X9Zk', '2021-04-21 13:38:14.500023'),
('8ahwb3t49c5b3l03iar22cdj3f8cwmuv', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1laFAA:EhUKwfxANBq9oMmWoA-rve-6Mmxw4rYVNxytNR1REdQ', '2021-05-08 10:05:22.762601'),
('8dfy46506gqazpg5hco5y9282a7kzpfb', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mGHuZ:Y10yiR5SVsdTsWnqeD_O93AcsRmx13l0dmLSvQDrEMs', '2021-09-01 09:31:03.564688'),
('8lhjj22ghivna95hz30mbkx4g6zrf8cq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lKPaA:KCoFlZjMpBgwd-X9vpqfPTo8S_OAz9H2JChZxxerADU', '2021-03-25 17:58:46.400531'),
('8s4gt0xh11hc434mm2ii2qm2akdhvqzy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1llFoz:sBW17UCO7V-rUdjz5e5JAYF5WYNX3LzKesLgz0SSQco', '2021-06-07 19:01:01.767079'),
('8tm0rgdz7ezvhrb4phjvcj9tkhi0rjsa', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lpSDj:nJ1jSR6AsWuwCzz3gJ2MP-V4hWEqPx4Oig8elhl-_yQ', '2021-06-19 09:03:55.424922'),
('93ka0704cuaj84x2hfonlfyku1n5srk1', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lwkOh:McXz94CXd-I39Excflmwk2-sBNULmvRkwjo5TC3tdc0', '2021-07-09 11:53:23.318815'),
('97apsesjrqpgyglabrk05ey19nj89m03', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kx5bY:HYtm5kN5lKNnmqE1sq5XB338du3OWdUsMCarw9Avw7g', '2021-01-20 09:59:48.354008'),
('9az2mzyx1et9wz7dimfr3898lsswkqtd', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lZuQ9:zetSMZlUkTkBaNH68WosugW4JD8UivwINJuRLeh6EDc', '2021-05-07 11:56:29.548234'),
('9mkyuk1ot7hean0lq9cswhmgfsw3cv79', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l6axD:jgISrGC5nv0ZMsEd96F9fLeZH12Ftv3xnBk4L19b4zs', '2021-02-15 15:17:27.828890'),
('9pd5vd6ibv53jx12rloudg856jawsaai', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjoU:3UEKQXvCOIFRWBWj3YCB5froz_gzoyhZ8NWbqvikUAg', '2021-08-25 08:42:14.621467'),
('9w1d8rit2fs3bmszr17teojiry65mu0n', '.eJxVjDsOwyAQBe9CHSGWr0mZ3mdAC4uDkwhLxq6i3D1YcpG0M_PemwXctxL2ltcwE7syYJdfFjE9cz0EPbDeF56Wuq1z5EfCT9v4uFB-3c7276BgK30tjAFPXoIfpuQiKlKWpNXZgCal5SQoggCLHSABJmWctarjIUZ0nn2-yk43kA:1kRKi3:MGT94MH_1FL3VxYMJtj7YV5KII6OEmvEshL1HxSDR0I', '2020-10-24 19:39:15.766119'),
('9x3h97ytc38izaocyxpa7llhjvmp6m84', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lheuQ:ntJbU4MtRRLkBy8pj_wCyyVoujPxo56kZinjFkldFTY', '2021-05-28 20:59:46.559557'),
('9yr662pupvl4h21o4v4tkf25gh7ot21t', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1ktsuS:PngPHUfaCaXoIat2lpokMBa9yiVHx9dVDLu21N-EfBc', '2021-01-11 13:50:04.737280'),
('9zg4lhek73vw7ze5d3b0iquwe1judxe0', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kfRwc:POdoIGcaabV1AfEylvrt0d1UYlw_UX3FVC94AfZmKqo', '2020-12-02 18:12:38.730212'),
('a1cloz8uv0jx6836cr7kipbtmaxc8qjn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1n1wEK:iER4qWeDl5wzNsM1TBbYmpcqIIl0Z_JQGCdAahLnRyw', '2022-01-10 20:04:24.955353'),
('andur22n9p8xtuya68ag0qtjcn9ie1un', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mm0Cv:iXiCt4mB5xZGSsvRD8jZu-RDvFnZHjqeJTl4xtFKDaY', '2021-11-27 21:05:05.748435'),
('ayegtgsm34vumezfs4bzec7cnslk141c', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m0gBe:GFbldtn5EqC3OpRnyXJlJbZTMDhWBSEwDKesG-OCp0I', '2021-07-20 08:12:10.676895'),
('b3lbu14zonqjbizcmm1xajnafuf6dohv', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjJq:ARsG4qjZUVdA_ZkclhbCohebTTIaB7NUkjaWqO1kCQ8', '2021-08-25 08:10:34.713855'),
('babcng65b9mu1j9apf9ltplosn8hb17z', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l03Fj:HBZ6fQ1gNZej4QyaGDKeOvqYUFYOwvxa9AgyNs25_GU', '2021-01-28 14:05:31.527085'),
('bawnxcvtxandlex9r1wb5me69o7pckjw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m6KE5:dBKnjBLLUuE-iZEfvwoD4ukoiP5p2WwHJaHRRItKCr8', '2021-08-04 21:58:01.197051'),
('bchojp7gxdvak5foa92v14a9wthdbctv', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kgqWC:siwHM39lGomG7FmJ63PLAfcZ8jKEDbg2MagNFaRkBwA', '2020-12-06 14:39:08.460386'),
('bncqt8tyinjhbghtojk5877bpd38fb0q', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lnQy0:ayQLBzt3jo8c3srX6Jgo1I7gIaVxKIDYsx0XOi4XnXI', '2021-06-13 19:19:20.230486'),
('brget6rwrwz11oerpgte9g51u34fih0e', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1muEaM:c3jCT2nkWibHqdTXscgwRXj4NWWlC3QvIwZznfofFK0', '2021-12-20 14:03:18.690664'),
('buciafp76dqff6qwpb5sn703frn2kol9', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m1b6K:_MRON_ETOxtlu4N7b0ElXowmrN9ysvygT4E1UEmQIFA', '2021-07-22 20:58:28.004056'),
('bvm5fi3m36w3uz0pmzu74ufw2x5m2xtu', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1liM5y:Vdwm0siIcFEKhXyc2DScDYBWx__1NFEIDytnY-JBb2o', '2021-05-30 19:06:34.531344'),
('bvo0agj0toax25u4lw8qt936hmax57hy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kulEl:EndpSNGlQVHhzwz0K_LZ7Wb3Kp10OcFh1-ktbndeDmA', '2021-01-13 23:50:39.729845'),
('bw7k996nqjp9au8lvvllesicngb6v6et', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kudEg:iA0syS0J-0c4R_HvwNaKFcSxwMgy4wpBvneAqiu9Eq8', '2021-01-13 15:18:02.964450'),
('byqf7jzv2zb49m8ndt9ioru7qyee6v48', '.eJxVjDkOwjAURO_iGlnev01JnzNY3xsOIFuKkwpxdxIpBWi6eW_mTTxua_XbyIufE7kSTi6_XcD4zO0A6YHt3mnsbV3mQA-FnnTQqaf8up3u30HFUfc1RlEcU9yGiDIlrQKTMiuQ1nBgVmlgTmsHXGAMpnAhXTJQGMg9lgP5fAHDzzZb:1lH5OX:BCT5jj7_5yJvyqVH3hPBEbcte_sS460ixb5F3tMRemo', '2021-03-16 13:49:01.688058'),
('c1pt3j6bf5htmcs2jmw9j69lb3g75c18', '.eJxVjDkOwjAURO_iGlnev01JnzNY3xsOIFuKkwpxdxIpBWi6eW_mTTxua_XbyIufE7kSTi6_XcD4zO0A6YHt3mnsbV3mQA-FnnTQqaf8up3u30HFUfc1RlEcU9yGiDIlrQKTMiuQ1nBgVmlgTmsHXGAMpnAhXTJQGMg9lgP5fAHDzzZb:1mg2G9:cgfVRGuSr4NO7OOdi1klIdyWkEAbIfrDPON83wpuqKg', '2021-11-11 10:03:45.460808'),
('ca9kqv49oiij6w6aihkt4in5qp6kewlg', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m0r9J:VCLycszCUdtHmRY8SrVMvfLE2gQkifKv8m-rVij9VE4', '2021-07-20 19:54:29.080459'),
('cjoo93pj3lrtmmijj1lca7aud0v9473c', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m0LmR:iwRGcECiS5bllcHbgzF9x9se1YWBwMc5VzlJJe1YlZQ', '2021-07-19 10:24:47.572220'),
('cm47judhlzh8dvg6y9as9wq6vfnvw819', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mqhmb:pPvIaUlzqmUzMZUvNq5S1YpDF3yZorRceoUOqITMWy8', '2021-12-10 20:25:21.157366'),
('cmwiq04ordbvgae55r4j7jbodel4dsxi', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1n32Tr:7IP1Pe5Y5uai5MD6BObQNbhNvdcrtZhXjb9qRihIM8Y', '2022-01-13 20:56:59.132394'),
('coin8gdyifi1g16iwy5uasgcv3d5y1np', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lEuZM:6xUCK48EaOqxyDu79DnYEWHxRthT8dlOcHYBZhItDf8', '2021-03-10 13:51:12.924166'),
('cp4jk4of0zmodq4b2j1aq49qy9erbkvp', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lqKCH:St67AecunBhH6PMYJTN40tJex-yobazI5eaTFBFU35Y', '2021-06-21 18:42:01.173292'),
('cq62kcm5unkz12hjldlhtadxno3ts4gc', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m0h3V:qjmx9TBQ-kiMVoi1kEmvMskT1ptR9_Nw1daKMy_fK4c', '2021-07-20 09:07:49.152659'),
('crb4s0faycjsnl3gsgblsh06w62rdtom', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lMeLL:hduCUvmrWcgZYLzgr3mDkc_2FNROgEA-rC2opOwjC5I', '2021-03-31 22:08:43.730434'),
('cv47jt6bs2bn60dhp3jzr469gxkz7izo', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ltaAz:Y3VohOTeeQUa5jWhHRerHx074UXn_IWuPKxKIsEu0mo', '2021-06-30 18:22:09.156316'),
('cxmirbm5wmxfpy1g4t5bljs7b1ds799w', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lfSdV:juZkXChzm1Wcdvx4FOdlRHQ4ls5fl7ogBEhpeLZxF3A', '2021-05-22 19:29:13.429104'),
('czj12hvqa38pb6ehj1ekz298mzitwunc', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mkAal:UhcSeAnlMr_QMM_rPIWw5r6_CyLVPGZte9QpZnTbPEM', '2021-11-22 19:46:07.477069'),
('d30p9nq4t3kpjwb9s4ukkswxzqakria8', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mGkVD:eHOXLSbXWipsiyWaor1HqndOTr-MSyLNtNk_QIOotrY', '2021-09-02 16:02:47.381116'),
('d5hd0gbaei5hidcikqlrppjv5x3tbqhy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ljLPg:o_TCDoXduTLdPpmY1lOK8tgZtIFqS8S6x7bi7YgNv2U', '2021-06-02 12:35:00.630067'),
('d7hnps1c9iqhv6ogal0vysi92d511lon', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lvngl:49Z3mgZ_WiwZoYvZLkOgJ0Ud2J6qUXAxTJJN2cCkqVw', '2021-07-06 21:12:07.432029'),
('dj99kxh5s0d3lye6enqk0bgv48ovoowf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lj4Sp:RCU0u-5kDntpjbbHSl1QUemqzhEzHuXNNXIS0EEsptc', '2021-06-01 18:29:07.788872'),
('dlq3kae088jwbgnnxdlka823zrtzaivu', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m8Ndo:gM_DcFboiQoDxpr_QAlKYf68wA7jawmjT0Dr1v1B8yU', '2021-08-10 14:01:04.879168'),
('dt6kygg4n1h5eg035l1ifj481bjcwtby', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mzQYa:grJh_mYu64ujtbKACMzN0cI7f21JhRXEgwYZeBqjhK8', '2022-01-03 21:50:56.883166'),
('duw6069nm17ozx1dqjg63sb3e5z5uugf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mG6lQ:U3247XB2xERwz0KvbsnVcwIMz8V3g8AY3j0L4Uyj5mM', '2021-08-31 21:36:52.870152'),
('e4zlac4gx40vwd7c2ipo3ja3xezcprlc', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1ljml0:N4xI3J0xXxQb9KbB7X2QbArzBIqTRI5xJucizZ3abhs', '2021-06-03 17:46:50.798395'),
('eflpeocttvixjwvj2me9zoh093pjcjp1', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l9o3W:DZWTqx2ccZKBC3R1IpCum0VEq7syHQOOsCtMr3FNDUo', '2021-02-24 11:53:14.784649'),
('ekhuycygki58r1ryradbqgid7dlwt4di', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mLsFn:JRKxQmUaGwpC4ZTUoMlIa2aZfreISKs8LkudyD-lI00', '2021-09-16 19:20:03.336984'),
('eq87yvy533la21mibn6m9n379nljzd9c', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lejPK:FvRrivlNabANKNzQ-tKTVQm5iXmMrXf6oqWwblFKUUs', '2021-05-20 19:11:34.207969'),
('f11w4fzvdkgl266o7ujossoctncydo0m', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lKMrP:3Sq3CFob0u42WmLppEImtKT13k3NWCRqzbpzsHERGr0', '2021-03-25 15:04:23.021778'),
('f3ib2t3n5gf8tp40wc3d20tvuv866cgf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lJe5y:EzatdH8vVhFR7Bd1crxmnIj-38Vv6bnFr2AyRMRQEj4', '2021-03-23 15:16:26.525649'),
('f5pzaute34qv7i40xuvtysc39wptal9r', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mro8z:MpNFpGln7bzNzFDFMlEQ902GBLVBtOZydV8_KUuubiI', '2021-12-13 21:25:01.971522'),
('f9o9svb3d5r36ctqsiwwxxcp8ugf0iha', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mn2lJ:uDbbFpMk7-zVZpnsXU6OUin4r2yCureMJ4kw1mnduPA', '2021-11-30 18:00:53.912567'),
('f9y5tmbmq4d7ugad07bqd166xj0ue68r', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l9YWx:Gl9Kd5-dGXICkLJYfLgSNPtdopRdB8V3CnCXMxmrT-g', '2021-02-23 19:18:35.949463'),
('fc4y1iyl0ygp5wk24nu5ldkwez5ir3m0', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lx2J2:c24GXaESrZDRcazV_knnru0I7MMkccJoG410exK1KUA', '2021-07-10 07:00:44.340985'),
('fhhacctuya9ndcgapp62p90gfocchi8z', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m0g0B:Uu1wTVyyj3wOIbIsHw3jK0iaARYlgQ4_5UeL_jJMN70', '2021-07-20 08:00:19.811224'),
('fnb6pzchu4h8yq6rcre2evxyk35gd748', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1liboF:GKCLbWHcS5twUE-5gOtImjNaJnBcHGl5lfRf9oE6xs8', '2021-05-31 11:53:19.243172'),
('fnc0qexrv28ylwi0llspjiixr132al9u', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m9Xra:1maFxfbDaV3o-EFEAjgkVdWagWkm5ymecAXWqDHrYV0', '2021-08-13 19:08:06.055769'),
('foabbaqgf2zc6xufscoltdgaptnkw8qe', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mc2ZU:YML0fw4tJ-SbxXhQ6MpN9d1hhC0LIRT4vYPIPp19rCs', '2021-10-31 09:35:12.387742'),
('frw3iq5z5d6t2h1bn9tuxdqkn2vhuo5t', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mDuGY:dErnonwZ2C9YI1YsZYyiQyUxi_p-o5gx6tgIgUpglso', '2021-08-25 19:51:54.886603'),
('fu6lbs3mxgn3eoz6hzh0was85qyijxdc', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1meDjU:NU6kCTRGBgxQoRUkdYdWWlYJaxqD_aSF9kiWOmwE4ZI', '2021-11-06 09:54:32.023844'),
('fxodriarnqlwttth4pc95uqq1zeqlybq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mpBhW:D3FVGuNK9_YM71l9B1RRqmDLw5SJTwHoohywrbP4es0', '2021-12-06 15:57:50.864401'),
('fz6jnh3lcccpaqkfgddczbj4z4nnyd6g', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lwUyo:VhO4sijbtjJjaIRr9oU4laAA1keCdnJOjneIBIE1Rjk', '2021-07-08 19:25:38.520500'),
('gfk3w9wdzpbm9s5asv1pbzl1ck471kq3', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjtv:S5C5VwZNPFF_h2t5aMCPzA7MOFoAjI0ElFVzxnjUUYE', '2021-08-25 08:47:51.362536'),
('gpppw1fx224adnphym4g01vdqc6v3pr5', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mg6rv:XsrJxc6NSgIv0bSFC2IBOd1wuc-FpsSB9oanxgpb3cY', '2021-11-11 14:59:03.527930'),
('grsj6vmx6f5lgp2kwlimbcvcucl41fhi', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lyCjD:j30tWWXe_KOySVO28Tx0il_Bz8uiYlA4Jy1Whroz-to', '2021-07-13 12:20:35.818689'),
('gwgg6gsiub2gxgfb56mu9ojwvhwomcar', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mNdUY:oNVai4rE_wmGgntM3MjeM2VeskHx_e1HN2YldDo-4L8', '2021-09-21 15:58:34.273034'),
('gzx88qnqgzuujkit46wb6lv5s76jb8pf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lYDwh:y-6304xz65JNoj3D0xTRVaB06tM_6KwO3yQhU1pcxbk', '2021-05-02 20:23:07.796879'),
('h9fsk6m0ca5mysvja0b8pbxtrfxqr1n7', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kgPHg:H4ugrIh179_y_G0XOBO2x9UsAP4rXmjgFtRnBY3cMaU', '2020-12-05 09:34:20.672037'),
('hbywhregozayy851brpdv4b07aou3c0y', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kno02:sO_b5brH0fBLukVUGKHdmpMCyQ6fKc0P_mxXcC3yClY', '2020-12-25 19:22:42.625360'),
('hvssr4es235qnphce7s90dj1tgvlyipa', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kc7ig:MQfWfdVb4DNlcHQMYEMBWGhhQESqqhn-ZWsO0ZLU4X8', '2020-11-23 14:00:30.032182'),
('hzny91c5e8dvwwtlfy9s0re22aczczj2', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lxZVR:DsTrI5R9d-rhsy_Qs86JOKsTGI3mP1-WZ4K4zJkkU_o', '2021-07-11 18:27:45.959029'),
('ied89ld0bwaof9da38svgexlgq03nd8q', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lpykK:sGiPpYRGo8BO3cI6xJ5ARt8CErf70z0Lp6ctGHVqwHg', '2021-06-20 19:47:44.933328'),
('j4vr5woi03my7nj62d6uqaq3yitu6kkc', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ltUzy:HZqpmsm4F3qBNJgJboWjEfFakLCETx00qCV_cKHH3_E', '2021-06-30 12:50:26.696897'),
('j76a7qp9roanm0j6bgdy3rxpbhjdkkh5', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kdssV:fRsbw2JT-I47IjD1_YN0DtqlAHnVU1KiQbla-09wLPU', '2020-11-28 10:33:55.918293'),
('j8t5txr4u1ig1sp9miw8gxedmx8oobjz', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1n3HNq:_82s3WmbT3kVaNoZoCdq6Xd0dwTa-Dv4IXR-6oIhX_c', '2022-01-14 12:51:46.324970'),
('jheyr1gekb99050d2wix7r0d9h9pddie', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mEY0k:lOmJy4WFQC8XeItCaBockguRbCjb1poMpM-dgae0KeE', '2021-08-27 14:18:14.797661'),
('jjp77b2qs9zr3kkzklepn4p9qsnuju2x', 'NWNlYWQwZDI1NGExNzc5ZjdkMmE3ZTkyNGQ0Y2MzZDhiNjU3OWQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjAwYmY2N2RhOWIyNTUxM2I2NzE1ZDJmN2FkMmY2OGQyZDExMzRkIn0=', '2020-10-12 06:26:42.608466'),
('jnv5m3ou5zs7id8771own0z3qbmgssgy', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lfpko:sLyrA2oWQ9lesFbAzGvtm3cN0DPVFXs0v1qgCPFVNrU', '2021-05-23 20:10:18.606917'),
('jzk5v59w1kge1fymoz6596q1bsoxgr15', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lzkon:qOD_7IPX8PLEgSwpYNVOgJjlQZB4E-oSsTD1omI6ltw', '2021-07-17 18:56:45.791901'),
('k4n0owvlksz1ghb1fujpu759tzod34yr', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1n0l0l:Hvf2Mp9z5y7nh_20V8MJJnIIFPsuXk7WxMuM9mDCPBg', '2022-01-07 13:53:31.451756'),
('kc9fcpgqd2qmp4jl0k034aacyy4pqv1d', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mvIKg:HmYgUGgp1hIdw_OX4JFTMryyY_ALnSwMS4GJSt__yrY', '2021-12-23 12:15:30.454300');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kkyi3akm39n0fbhpdzr5jzlac2sw76cw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1liiYU:oyq7ATMxyySephHsct2tgQD7TuFJjsbu01XySXVWJJs', '2021-05-31 19:05:30.795196'),
('kohgxrt6pfapz2fjz4vhqqsvf9rgkz6r', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lJzT7:EFPsVdtBZkwucLzRalnHPUmY5ghFcRNxVNZ5UQYxAwA', '2021-03-24 14:05:45.040872'),
('ksyvsuwyhl8dmtfm761uw8yjr67t8bi0', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mwMex:Q-lVB0_BOEUQ9l7UBbH0mKV87H4CZPR2YSdPUxXhBeE', '2021-12-26 11:04:51.705372'),
('l06rcj47dd73n4d712kxwoh7b7m5jp7i', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lffvy:39CZQ39GzeL9we4SYvDqRWyA9bg5JAoaJJ6Dul6NKVk', '2021-05-23 09:41:10.155909'),
('lhay1z7473ronmkgetwx9hjsw3qahn4q', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mYvOp:32_oEyJ6RerltzQAWaJq_ylcvU_Kv91IaWvjc-f3ihI', '2021-10-22 19:19:19.329684'),
('liljnokj6kz7z2vz1svpsphtuausr2qi', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lwq78:kofhXCXgB_QMbj_FcPf_hDuJRvwvyGUVUcUI8OuZb3Q', '2021-07-09 17:59:38.163562'),
('m4ru3f3hqtft3pqg36l9fmy7eosblbk9', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mt6C4:xthAgcESohc-CWAhssYMCPkBuvZBKAq28SoWTeQ6PKU', '2021-12-17 10:53:32.155139'),
('m89hlzmglc2oyvq08tfk23493axzcmhn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lToql:AHhX2TRRHFz-PIrKeRUH7GhIOT9mLST1Ep9PMrBAVf0', '2021-04-20 16:46:47.459127'),
('ma2t4gvxj93y00ocqzezoer051gq17tt', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ljS8i:pT1Re-oMr1d-Dd7LpyoDwTBF1EjkPQT9mSqsY6E6-us', '2021-06-02 19:45:56.746412'),
('mhqv6hpjeq526zxwi8e643vyj0ne2n92', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lXQTA:lnOiYWn0twoVVZLmAVJyMOvaiaI0Oj9hUphQlSwTgVc', '2021-04-30 15:33:20.528226'),
('mnwzmnijspwfsp7cxdgd1gu72vqgtrh3', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mZ80Q:YBWLyYqOanK9T1EGb6BTuA1SwhoZj5ZWhhoRI1xCbOM', '2021-10-23 08:46:58.919931'),
('mqkvu41ve5xi6rfq4y846y669cnydk0b', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1liIG0:GTaN9VrKqqNnH-OvOxIMBh2qiFqLlNihrmJ_K2i30PQ', '2021-05-30 15:00:40.758220'),
('msldaiv8sxcv17s3gqkat67d17khzswn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lKObi:_WarrX1E9_9BC-y0JrkLbEJefrkGtt-dRtplc3i7j2A', '2021-03-25 16:56:18.761840'),
('mud5ycs2xwedigwm2qo0n0as43qfd3xh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m3Hk0:0WB2OxlSyd_mTKPVRfCvwTFsVPkISKtH80zLceJqvoI', '2021-07-27 12:42:24.889816'),
('mul541z0gkthikxckrbozqwb462rd7bn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lzJN8:Y9twUoF2SBRc6njLDhXVXJp8K3nN18TdmFFZairp3lI', '2021-07-16 13:38:22.619165'),
('ndfngpbs29hkp9wrzssuz1i0gnfb4m9u', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lYrMY:ESR7aRwPxWd-s0IUwrkhD64ypTlGq3chtzLT-PMjf8c', '2021-05-04 14:28:26.906001'),
('nea7ui2sazh7nsih73hw2av4wuzpigc5', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mtG3f:gF_OqHT5tyw_p2Yts5QcabWMW9A7g0MV75eHZG1TduQ', '2021-12-17 21:25:31.846935'),
('nhgc332nnke2ony433bt2smqh9cqqxz6', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mBO4v:vHRXvXg3dbpVA4dzKl52mKOg3_Japev9exJjdlKAcXY', '2021-08-18 21:05:29.241239'),
('nhkf8qihbxpcy6o0puj2iqnivufvmgkw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kpTNi:mxJ8BqkThQQrWqI4Hp5RtQCP1L99xj02pixn78CPb3g', '2020-12-30 09:46:02.737115'),
('niha3hajl1mgjrqf0i4vf4w9oj7hgeuq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lz0Gk:qNUX_1_Q5UQpb10bd3gdJcORpaiEuWm1l1j73r5yjME', '2021-07-15 17:14:30.265279'),
('nin15wxj60c68bhorx2shsi0b7787cg6', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l5YFH:dKwdi1xneFAo1zvT2aWfvV2jyTA5SMT--6xJ0G4sZWA', '2021-02-12 18:11:47.820772'),
('nt95ncyyjh0l21xh80882713seupdujw', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lp5iS:d2jB3kzTYXyYXw_Y9rR5qfh6Q6UTOpj2q0p6xyq63Ok', '2021-06-18 09:02:08.627247'),
('nwmkbr02q3oslhbvr5b4jgmpjq7kjinn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mmNz3:QO0N-Vw5mtqCO7VB_vibPpWibrJhPjDxB6KlgZZmJOw', '2021-11-28 22:28:21.397714'),
('nx5m7y2nx1sz1xq5ardr7fxhcwym4tvl', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lLuvf:nh3i_RUYYYmUmTFp7uMi-4XwJBHs7pGGjA1QcMHm7eE', '2021-03-29 21:39:11.371611'),
('ny7gjht60339m5ow8ic2v5nwqrimj25f', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lknHV:vG3aKaFC7oixGhiD-PAcWIq2kyvOrcEhhfWH5I17I90', '2021-06-06 12:32:33.602457'),
('o74l8wob3ee1yzj9itq7pxueax9cm7qo', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ltsBX:iSXGRlKzCJiWPeExqy1VN3bL0AjRb2SOeCYp_cg5VhI', '2021-07-01 13:35:55.075454'),
('ob7e4ekidppyepnib8gx6zzflaa3w0m0', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lxr5i:EePGWeSmdRlOw132zbv-lCU1CIvIxxccmvQz0bBIG-w', '2021-07-12 13:14:22.845613'),
('oervs09uwb1b5rqc4p0ozc4jh0vu5u18', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kpAoq:pph_zV_Dbnq5gSxuRWpQDhZSIbmjTsYGA0p7bOSF0v8', '2020-12-29 13:56:48.451481'),
('og6hyihgzjbkgj2xblud4xig61gbycj3', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m0UTD:zdzUxhNb_2HumzBjRr-_JBejJ5nwWioqJvzw_VLQvOM', '2021-07-19 19:41:31.160100'),
('ogci2g34ojec56gv14c7nbq21y73b72m', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lBjhh:idx1hL6j3ywN9-KSj3pB8uyuaIp5PJbMBSt1yzxE19s', '2021-03-01 19:38:41.224482'),
('olm2vda16xavx4zyselxf0wwuajhgsqd', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1ljmbS:HtO2YsVIv5-b1HJe8D3SeEuQtd0bvLGxgtp3IadIzuU', '2021-06-03 17:36:58.990296'),
('oo2jb4xvom688el0whkbquktty6fkw80', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mugWo:vpwC9fj09og5f79yAfeGlds210f7l3tn6nwZjxYnPQE', '2021-12-21 19:53:30.240156'),
('oqaau6yo5mcuic2xc15wm88b94jsaxy1', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lyakE:tH7NtruT_CKbZ6pjeLf9KAjZWMz5bsy9PZ8kFK5X3js', '2021-07-14 13:59:14.457059'),
('oquesl69s277z2nckzpgselnujykisl6', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lFcjC:zGcxjXEnDAT5e46pXYEa_qVrSL3LE6ZX_BOXQLZ1pzo', '2021-03-12 13:00:18.430638'),
('oujxaahisznuidn4rf00sjye7yyrhhti', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ljHjj:BvQ0m1-SoiX_8slXiTnZ_zdPZeT4qI7_P9d5aTURVoo', '2021-06-02 08:39:27.125612'),
('p4ujq7g7tzlqc0vkweyb0xfvzuu7nky8', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mTOD0:0ELAydozW1lGQw9ee5Diwgp3xicYNwhn1du-o-I2MOE', '2021-10-07 12:52:14.505235'),
('p7fh95h3re3entd5nrtr7dp25dqcp0fr', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kdrAK:N-OyEPwvBljI-0c03WWW0-VqfZPaSrIbcFoHnqbFNC8', '2020-11-28 08:44:12.458223'),
('pn6d6n5ldqkazqelxq640dscczyv292m', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjMB:3MzDrjhs8vDlo23ail54fUX3WUPk1LmqWUjw0WDVedc', '2021-08-25 08:12:59.638714'),
('prvin68ixcmfdiustr9b7use7mawplkf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lmXyN:cmhgPaA_ERYfDT5tOUiIJGS9PQQZQIbB28E_01Bl0lI', '2021-06-11 08:36:03.481416'),
('pz560omf9um2fgchuwi5bgwzieg51ahi', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lqDmB:Bil9y_oj4A7bMS0VtzxWYCQVJhrFfy60rIQBld8lr1w', '2021-06-21 11:50:39.542757'),
('q0wlp0pe2nnx27b44llh687uam15ledh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mGMkh:9bq5W8lqVCmiIK5ddplYR_zZwxFSAeDYrI7DJ5lcpas', '2021-09-01 14:41:11.407122'),
('q1t6dbdlaffg7y91ezj42whvl15zcw0y', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kee40:L5Uy_kY9EZCYqj10pQ8jdQh9ks_iwtqhpKpW_4G-T80', '2020-11-30 12:56:56.516180'),
('qasqjtqp71qb3f84px6f2ay22vk8iyjo', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1laHmF:MLzuehyUr_J4fWwq2tJrsqNYnBNELFM_E0QWc2pfc38', '2021-05-08 12:52:51.829295'),
('qgr5sstlcoee7jtpid7ouzq575okcktu', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lv55t:ePDNMynh_k5SUdqnfyzaQ-BhNCaCecxeNXRjgPbCsFY', '2021-07-04 21:35:05.808635'),
('qm97sy6pzhu9whsmfxwpzt60nl6j3fkh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lpGvP:l_KHFLe5gdl2B0o6aZuWh14R-x7UFFXiN0t4Fvn81RE', '2021-06-18 21:00:15.979600'),
('qmok2nvemuny2txbqtgmhcjxz691z7kt', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1ltAPt:5BtCHdODZyACYtg17nlbbNoDycYoTraX2cQNKMx3kzE', '2021-06-29 14:51:49.222526'),
('qs46nw47dzo9aga5bk3v5thpu8rrcs1q', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kxnsf:MdG22OEyenCOflFuOv2Kkrcy4mfJe6EDkIDA3YEBOWQ', '2021-01-22 09:16:25.737942'),
('qtkq15hkpjqbu3hvp7frcxvvbabf1ksq', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m27ie:Xy4rVsdva-VIs7T-VgmtxzYTWrIn3q4Kco6irvmnk0U', '2021-07-24 07:48:12.341247'),
('qwco6e5dsfgw8qan7tdvnqpx82wdo9zl', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1konKg:0Y6Z3MudX_cdaGvI_n3y7fyBhydxuH49mYkZeHTQwhQ', '2020-12-28 12:52:06.325025'),
('rj5bgrya0v1vsuazg4sarr2g0agw3znd', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mvd9A:tArcH3sm-qsR7SKMr2k-qMd74xjCn-EXUnPQNyomEjI', '2021-12-24 10:29:00.250727'),
('rmz0vv2l61scatgdorvv6c3lrv4c55sd', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lIGdY:7_G_WcqfCaN-UTUs0ujxZVp9oEv3yVba_z_4LKF6EQc', '2021-03-19 20:01:24.328849'),
('rp9y6lz8p73slqtbp6ajz30giegqej3b', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l1beA:lmlKG2cjYNhxApLceqadYuCKTN6-uUjpADBEeznwVlQ', '2021-02-01 21:01:10.340133'),
('rvq2z5j3592olpn0ezgc0nergheck6ws', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mNhIE:otabN7oy68NgAUye3X4Qf4gLh8zFu8a6kXQeOPL0BRs', '2021-09-21 20:02:06.744910'),
('s25q0ef3pp3oepu2cxiffuas2hvlvygn', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ls1Q2:cj1CoU7dFY-ybI_hdHGsU1tXBdF9ejeQZMgjCbTa2Dc', '2021-06-26 11:03:14.050623'),
('snzzb8fm1vjal2aq7hhs4s4ju0zsxdzf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mDRLT:RxPVwOGIGDhOaYy9xhD5eSmyU3113GFwY4EmTACVo_Y', '2021-08-24 12:59:03.570321'),
('szqymozm4wi0vvjgeaw3o0wg5gdgjiwv', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lePA7:HtXPbBY8weWLJXm7x3jylBl52Dp-txn_PTFu1pnE_2s', '2021-05-19 21:34:31.436724'),
('t0fu6fnr8xsnsmzpmzwi3c4ok20ohh6p', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1n0PgR:HXM0yc0vtca2SC6MIASZEAW6ZM2abjlGbZltySIy4zk', '2022-01-06 15:07:07.384736'),
('t1uzt5s3c76ecuwrkwpts3zycmbu8g9u', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m0UUA:dfKHWe2RyjBDCSbVkVf8AUsBsi4Tb8wfbecmIz5Mxns', '2021-07-19 19:42:30.855934'),
('t7cygofuwky4ze2tuw4rm5fkf8msj8rk', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDjm5:Al_D0uuQO5HBHXed8bDd-Ds-NzeJR45Nm-gywVWiVw0', '2021-08-25 08:39:45.892216'),
('t8ot5b3vk8rj97m5q63p1fy9n3qbru5s', '.eJxVjEEOwiAQRe_C2hBmkAIu3fcMZGCoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hZnERWpx-t0jpkesO-E711mRqdV3mKHdFHrTLsXF-Xg_376BQL986sbNxyIhGebSONcDZ82QQQCGqZJ1lAG88TqSYyRmD7LNHHlKyGsX7A7qXNuc:1lvGtw:ZmWzy6G-LYTH6FflF5IIu47rgYQoExBZZ7feKrYIRkY', '2021-07-05 10:11:32.288445'),
('ta9xf5scx3dty80evz08hzg05zo6ss8y', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kcRhs:zF3UWU9HV_uKV4Pv_KDMr-Yi_qzadxd8SBTFhAEcafk', '2020-11-24 11:21:00.559717'),
('ti79f78fw66khmsklcch18btyuxly836', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lssr1:HUN5gUv-EU_uo5BwcnoXmmxaFGmsQblEikzuEjJ3uhY', '2021-06-28 20:06:39.554238'),
('tj64b1ibt47273vb22mrsbxcq5ce1i21', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1loMHz:y98WIcuBfS_lrkigCvSCV5X_7PtKSzJh3I-_Kc44mZo', '2021-06-16 08:31:47.203431'),
('tm82cgcpjtlh7qaomca2an3tvovhoqma', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m6ugP:cBnMPWV0ujJmYi1szg7DQlcYeSvlD7_PBEx_l4xiANw', '2021-08-06 12:53:41.011403'),
('tneq1e4etizicpdzpgt2gmcxattp1woe', '.eJxVjDkOwjAURO_iGlnev01JnzNY3xsOIFuKkwpxdxIpBWi6eW_mTTxua_XbyIufE7kSTi6_XcD4zO0A6YHt3mnsbV3mQA-FnnTQqaf8up3u30HFUfc1RlEcU9yGiDIlrQKTMiuQ1nBgVmlgTmsHXGAMpnAhXTJQGMg9lgP5fAHDzzZb:1l2egC:JoW-QeAUnluALB2XgyA510ASXkG4Zwj3lNslnQrWjRo', '2021-02-04 18:27:36.771836'),
('tnxkbfidzywxmfcvi8sthat6x3gis3rg', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lKaEz:LSFNjcmMMyyLzWYvSJb6MBzTFfghZunTre8UtNvMQNI', '2021-03-26 05:21:37.187831'),
('tpiyv3jk7o2sexw8unkrezajmlsn5o4w', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lo5qh:2zxOXp1BDaGZzMNmOM0O9IsSKt_BdCTr_50UVRsAaB4', '2021-06-15 14:58:31.259842'),
('uahk96ep7ozevdz44svawe3vuvfnwpm8', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lt9EJ:Tp2aDF3rd3igm36ZDFNxE1vdtYuCG9_oITeXW10A22M', '2021-06-29 13:35:47.031509'),
('uc7064hrxeq53sdnq1qz15pu6yp8s2cr', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kabPE:4BMwR3FIxFtR8TqKaiCgjbCFaAOpd9oZz1Lt57Qi1Ug', '2020-11-19 09:18:08.209081'),
('ujlnbabkclwqkwjau248brgj9f6t300t', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lJvvd:X6gO36ukbxaHVz3jSuloTaFivjLohN8LD7XojTiWpRo', '2021-03-24 10:18:57.885845'),
('ulpnienxjd3zjspvsachdn2kq5rz61hw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1la0J5:FA_kIGjY1vnILfUuioaskyvxh_Jvem9oRf2PrKyLBbU', '2021-05-07 18:13:35.738963'),
('uo72cfxevrmdhi1bxjcnn0i4xc94g9t4', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m5RxD:ehxZD4vNbhB5xhewwN-V-LU1YcTRdz_MlLFgH14tGTY', '2021-08-02 12:00:59.917717'),
('uqq7a7od23pvtrlnesbcg4xk102l713q', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mvHxD:hNPY_OIfuAzqYEajoXNguUleeuBvnfbTqUgabIySBQo', '2021-12-23 11:51:15.544976'),
('uuz8uwqytm1q90gia7i2chpnj1uyyy76', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lktb3:6n20zPyEA1MTT6upzTwPwgtYrF9N-JgO8zQorMsXeg0', '2021-06-06 19:17:09.588835'),
('uv7uzqtb7363be3k73nobp4srxk38558', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lPRef:1Cwq2_ZOL9FlT-lhzoKR_8YWa3ntJALM1tZ-t-1W7Z0', '2021-04-08 15:12:13.375509'),
('v70c4qsyhyhcw0xrnxpc19q219vu6phj', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lok3B:iVtnTCdjU1KoDK_86VRZCWE3FuAowqJFatJiGgenY5I', '2021-06-17 09:54:05.508466'),
('v7blk2yxr0mrbqqz3jriktkpewn597uw', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mDlHh:0t0rRDxYekUHghCa1750Kfrsku3X-mp4G-PYws3hDAY', '2021-08-25 10:16:29.280196'),
('v8iinr6il45ntekxwjfez3s1pphyhnsg', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lQZeT:Nlc1yUJzHYNdSf3PzotjOK087EDzxYMKRZG8ivoZABQ', '2021-04-11 17:56:41.191647'),
('va4em6j5td3ekqjqttg17phxtkikteqt', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l5ULt:J8w2GmC-WHju9le9TYptvJA2lx9wCF1dT5dWN9jWvxk', '2021-02-12 14:02:21.495026'),
('vr1f7xxtknyvu4xjvw4ms38f5340tk2r', 'NzFhNTVmOGNlZWRjNTllYWQ5MTNlOWU0NWE3ODE3OTY4YzM0ZmM1Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZWFiOTkxNzU0YWIxNjk4OTkxMjVkODhmZTE3NWNjM2YzYzU2NjljIn0=', '2020-09-28 15:26:37.293703'),
('vv0q8n4s7890a7ukoogbfc30mwlk9y83', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lvP1g:yLF7pfn8LbYphi_sycRANv47a4ACuPQg8-K2hoyt7Oo', '2021-07-05 18:52:04.315573'),
('w2pfh7m7kgfkqxkx5ygj2frbl2r7rsj7', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lzb6r:k38z7ICLKFXj4Scg4y-83kAFg7n1W7EP2Em1DRIhygI', '2021-07-17 08:34:45.045082'),
('wcmnmlz0cg9sstphzhozmjtsjb9fuuob', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kedeA:Ejpfted1zGE9GTDWtd4KyUME6TBF6fJMrbd2yrPDYDE', '2020-11-30 12:30:14.482561'),
('wldjmdgfksc30044myb824mv7qzz2dc8', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mopNY:coB5SvSGAFbp80sNz3n8kZXVPZ3t_wlVPwxPrUJvGM8', '2021-12-05 16:07:44.451325'),
('wxfr3yr2wvtin5xr28xinhbfty2j7xbf', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m1pf6:0FpxAD12Ajfo2m0brtxEEOcEjQHinezjQQrL3YYeHrw', '2021-07-23 12:31:20.050316'),
('wxq1q787jb362swkaohhud5eme77pzxh', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lcXOk:XZsTyn9mtk_MHqjlQAvYYMIeC8RQ8HN2B0yIXYI1qFs', '2021-05-14 17:57:54.242523'),
('wznuvcy9ruxdcznsq7j3fxhfl7n945js', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kPXVm:4BHUz2ziLSqQ8dol1g73nyUOyx5THN20gxknRroT-rY', '2020-10-19 20:55:10.005773'),
('x5fbhz5palp2ja1a88fk6tnmltzexlqq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lhvul:pBCAUUB_pSdj_tOGhfthzgmawAWidtOySsqgyp8K-E4', '2021-05-29 15:09:15.295682'),
('x5h6emj64e209ne299ng39rv70tk3xwu', '.eJxVjDkOwjAURO_iGlnev01JnzNY3xsOIFuKkwpxdxIpBWi6eW_mTTxua_XbyIufE7kSTi6_XcD4zO0A6YHt3mnsbV3mQA-FnnTQqaf8up3u30HFUfc1RlEcU9yGiDIlrQKTMiuQ1nBgVmlgTmsHXGAMpnAhXTJQGMg9lgP5fAHDzzZb:1lAbVi:yHLoDiOzGfjxdRi4BrN-ae8QbIqC8YaNLHnDENauHXg', '2021-02-26 16:41:38.283783'),
('x5kepbvhxhcephqx09ylbdl9nnbd9un0', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lmhMb:vjkUZDCkhIWTosU3ZwJsdcDcX4cDfxxEH2PiNhm_TC8', '2021-06-11 18:37:41.014552'),
('x8ep46i5umheqhc6ix051gxk3tx2iem1', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kzhGO:Kj9qYEmuGl5jF7hQCKJhwcIIlvfmPWmqeWlymMgjOMk', '2021-01-27 14:36:44.595424'),
('x9uxbcomk8hkn71amrx2xfxdtfzirbcx', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mEzcx:f3N6040IMdJzDwHe8KxGKyTf1a7ABAj5MgfBN91nI_Y', '2021-08-28 19:47:31.478743'),
('xdpszq7n5wgrclbvj0aaebys6otmqwvw', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1myG3F:ZWVfmX_qouFziqftDUFX9O12pkB2CsNwT4oqsDifBZw', '2021-12-31 16:25:45.139405'),
('xfrf3o38ohhftb6pnuqoc1957h8781de', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ko8wa:i1_YqwSh_AJCP8NlR_vnuNI4apXC_38y8GAOmgn6w9A', '2020-12-26 17:44:32.491593'),
('xi43lyx958h014580h49agehk1izp3re', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1mfd4T:38_cBaOZVMmFAzw2_IaLP4ahvzZ9aXDqs-qxvoeX1cA', '2021-11-10 07:10:01.513676'),
('xlx08yizauz7rv7qqlcbg1fnym9vuz5y', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1khVSO:YDyukyaOF1wGujCRsG_sWPEOtPademqu80rPRmbhYCI', '2020-12-08 10:21:56.660207'),
('xqio2ly46vll9n68pns91gbz9hg33pbc', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kewn3:W69ZRWwgXdOz2_KOx35xjTqRmNLHhtdetk6arfZWdZE', '2020-12-01 08:56:41.341094'),
('xuk1hpap6wozrmd1fz8suj9zktsca0tz', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lkYz8:MFnM1K7mH3lXrXIrHKE0AichcY8GDmCSHwDXVz-xPt4', '2021-06-05 21:16:38.643913'),
('xyvq6zmltncoaa2x3o8npvctry1bnkje', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lp8M7:1TYYvC5OvFn_KPb9F9V6S3ynF-ccbsOKmhWOi1srWcM', '2021-06-18 11:51:15.092821'),
('y0928uk2tacdyyel47h9yrzrdf5etphz', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1ljh7t:KaHB2urlaW3yhg7a-rqkWUUzfRALxkxGaeYcQ_N6PqY', '2021-06-03 11:46:05.239250'),
('y6jhdzm6r7t4qyrd45lmxqae7pt32nzb', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lZYgX:tQpRKJhFP5qeFCKM1nBNuryHSedK4b84meZz9-xhQPQ', '2021-05-06 12:43:57.886714'),
('ykq2utqy45y81ktwrlxw6j7gientm90e', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mDBNG:KZX4_gzXf8JNifqvMDbhmC3h6GhXyMNGxaXBC51zf2U', '2021-08-23 19:55:50.369892'),
('yq1zh70djthzhtvtk9sbynun5khf1ilu', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1l5AuL:O14ASeii7TrcvKX_i-q7IE1dZima8Jnbp7aGxQ2B24c', '2021-02-11 17:16:37.267801'),
('yu34lsyqqcfb6m09148u1egcj4e3tp2p', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lic2r:vNokr_1sBoXnrI8i6XT-gdzzsknhOeZrXQhKY0JBnLE', '2021-05-31 12:08:25.730859'),
('yyqfqxtowky3qdy3mlzkrogcnqkwq45j', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mGTA4:KeULfgsX6JWp5aQzAG1kCddZNXtNz5e1zNmJh3nzOrg', '2021-09-01 21:31:48.265117'),
('z1xhvbygjs3g8kfem9mphctfaefzjhoh', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1lo1Bp:FxTRsQUTJdcSNl4Fo_b3gereTTQHR7ay_gwpD-HAScQ', '2021-06-15 10:00:01.436594'),
('z3d7qe29jo996p5jfhgotvx2zep6n2x6', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1m0PRU:i9cLsyeEk_aenfudzPXOv2vugdzc8rawEG-4B8XMD2I', '2021-07-19 14:19:24.677745'),
('z7r3lesh9suuo9e296wmgqcldajq4ysk', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1leH61:T6HMIJy4UsmGbYpY2M7Ad0IwtD0vSsGsnHQtAIobbek', '2021-05-19 12:57:45.227400'),
('z8kbkzzeey0390u9yd6fqx67g3f7v6bu', '.eJxVjEEOwiAQRe_C2hCkJQwu3XsGwjAzUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TzHidRFjer0u2HKT647oEeq96Zzq8s8od4VfdCub434dT3cv4OSevnWTBlQAodzDgmdN9aABz96ywiOYEgOQ3CCxgB4ESvCbAdP4njgQOr9AfgzOJY:1lx4oH:x4vmxtTMLzuD8zwAlr5wp4pILaSgc0owpgDDmBMGVKA', '2021-07-10 09:41:09.472411'),
('zi9b5jh1nf09ec1i8129a2gi33xgj5wl', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1m1Qmv:yNOMpKPiDbVmMgj7k94tHm-GsB4OyKjCIVtud9q-fpA', '2021-07-22 09:57:45.074076'),
('zunvti45kms5hipis1ewnh5rby7p7nrq', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1mAy3n:NBhrlbcaax8amIjemGlwtmh7Ea-OjDWLHM1sU6Uh7IY', '2021-08-17 17:18:35.357058');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contacts_band`
--
ALTER TABLE `contacts_band`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_band_contact_id_1e9dd393_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_band_slug_75eb4cc0` (`slug`);

--
-- Indexes for table `contacts_bandleden`
--
ALTER TABLE `contacts_bandleden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_bandleden_band_id_db7d56c4_fk_contacts_band_id` (`band_id`),
  ADD KEY `contacts_bandleden_lid_id_ab84b5fb_fk_contacts_contact_id` (`lid_id`);

--
-- Indexes for table `contacts_band_contact`
--
ALTER TABLE `contacts_band_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_band_contact_band_id_contact_id_9d1654cb_uniq` (`band_id`,`contact_id`),
  ADD KEY `contacts_band_contact_contact_id_8e0ad074_fk_contacts_contact_id` (`contact_id`);

--
-- Indexes for table `contacts_category`
--
ALTER TABLE `contacts_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_cateraar_contact_id_ea21fcad_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_cateraar_slug_56651d7f` (`slug`);

--
-- Indexes for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_contact_slug_97abaf8a` (`slug`);

--
-- Indexes for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_evenement_band_id_b8d63781_fk_contacts_band_id` (`band_id`),
  ADD KEY `contacts_evenement_beheerder_id_0c97d3ce_fk_contacts_contact_id` (`beheerder_id`),
  ADD KEY `contacts_evenement_catering_id_a6701826_fk_contacts_cateraar_id` (`catering_id`),
  ADD KEY `contacts_evenement_locatie_id_6bb33bb0_fk_contacts_zaal_id` (`locatie_id`),
  ADD KEY `contacts_evenement_slug_2551cd5a` (`slug`);

--
-- Indexes for table `contacts_fanclub`
--
ALTER TABLE `contacts_fanclub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_fanclub_contact_id_4263d11a_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_fanclub_slug_257f6916` (`slug`);

--
-- Indexes for table `contacts_page`
--
ALTER TABLE `contacts_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_page_category_id_bb74fe4e_fk_contacts_category_id` (`category_id`);

--
-- Indexes for table `contacts_ticket`
--
ALTER TABLE `contacts_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_verkoop_contact_id_56eb1987_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_verkoop_evenement_id_c9563bac_fk_contacts_evenement_id` (`evenement_id`);

--
-- Indexes for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_zaal_slug_8576ba19` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_band`
--
ALTER TABLE `contacts_band`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contacts_bandleden`
--
ALTER TABLE `contacts_bandleden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_band_contact`
--
ALTER TABLE `contacts_band_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contacts_category`
--
ALTER TABLE `contacts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts_fanclub`
--
ALTER TABLE `contacts_fanclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts_page`
--
ALTER TABLE `contacts_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_ticket`
--
ALTER TABLE `contacts_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=875;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `contacts_band`
--
ALTER TABLE `contacts_band`
  ADD CONSTRAINT `contacts_band_contact_id_1e9dd393_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `contacts_bandleden`
--
ALTER TABLE `contacts_bandleden`
  ADD CONSTRAINT `contacts_bandleden_band_id_db7d56c4_fk_contacts_band_id` FOREIGN KEY (`band_id`) REFERENCES `contacts_band` (`id`),
  ADD CONSTRAINT `contacts_bandleden_lid_id_ab84b5fb_fk_contacts_contact_id` FOREIGN KEY (`lid_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `contacts_band_contact`
--
ALTER TABLE `contacts_band_contact`
  ADD CONSTRAINT `contacts_band_contact_band_id_bef3b209_fk_contacts_band_id` FOREIGN KEY (`band_id`) REFERENCES `contacts_band` (`id`),
  ADD CONSTRAINT `contacts_band_contact_contact_id_8e0ad074_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  ADD CONSTRAINT `contacts_cateraar_contact_id_ea21fcad_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  ADD CONSTRAINT `contacts_evenement_band_id_b8d63781_fk_contacts_band_id` FOREIGN KEY (`band_id`) REFERENCES `contacts_band` (`id`),
  ADD CONSTRAINT `contacts_evenement_beheerder_id_0c97d3ce_fk_contacts_contact_id` FOREIGN KEY (`beheerder_id`) REFERENCES `contacts_contact` (`id`),
  ADD CONSTRAINT `contacts_evenement_catering_id_a6701826_fk_contacts_cateraar_id` FOREIGN KEY (`catering_id`) REFERENCES `contacts_cateraar` (`id`),
  ADD CONSTRAINT `contacts_evenement_locatie_id_6bb33bb0_fk_contacts_zaal_id` FOREIGN KEY (`locatie_id`) REFERENCES `contacts_zaal` (`id`);

--
-- Constraints for table `contacts_fanclub`
--
ALTER TABLE `contacts_fanclub`
  ADD CONSTRAINT `contacts_fanclub_contact_id_4263d11a_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `contacts_page`
--
ALTER TABLE `contacts_page`
  ADD CONSTRAINT `contacts_page_category_id_bb74fe4e_fk_contacts_category_id` FOREIGN KEY (`category_id`) REFERENCES `contacts_category` (`id`);

--
-- Constraints for table `contacts_ticket`
--
ALTER TABLE `contacts_ticket`
  ADD CONSTRAINT `contacts_verkoop_contact_id_56eb1987_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`),
  ADD CONSTRAINT `contacts_verkoop_evenement_id_c9563bac_fk_contacts_evenement_id` FOREIGN KEY (`evenement_id`) REFERENCES `contacts_evenement` (`id`);

--
-- Constraints for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  ADD CONSTRAINT `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
