-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2021 at 08:55 AM
-- Server version: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitanova_dev`
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
(57, 'Can add ticket', 15, 'add_ticket'),
(58, 'Can change ticket', 15, 'change_ticket'),
(59, 'Can delete ticket', 15, 'delete_ticket'),
(60, 'Can view ticket', 15, 'view_ticket');

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
(1, 'pbkdf2_sha256$216000$u83mToVMvnJK$FxIAv9KB4EYnQKKmAcN6M2p0CQl6paNqDBp7JbbdGW0=', '2021-06-25 18:09:46.472195', 1, 'django', '', '', '', 1, 1, '2021-01-28 15:11:18.751434');

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
  `genre` varchar(30) NOT NULL,
  `instrumenten` int(11) NOT NULL,
  `technicus` tinyint(1) NOT NULL,
  `aantal_autos` decimal(2,0) NOT NULL,
  `soort` int(11) NOT NULL,
  `bedrag` decimal(6,2) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `band_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `genre`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `bedrag`, `rekening_nr`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`, `band_image`) VALUES
(1, 'The Magic Tones', '5', 'l', 0, 1, '0', 0, '0.00', 'NL', '', '', 'the-magic-tones', '2020-12-11 11:34:19.000000', '2020-12-11 13:07:00.108361', 2, NULL),
(2, 'The Rocking Coasters', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', '', 'the-rocking-coasters', '2020-12-11 12:11:45.000000', '2021-06-22 13:28:10.569204', 2, 'images/JDB_1024_2016111220161112_135111.jpg'),
(3, 'The Rocking Players', '5', '', 0, 1, '2', 0, '750.00', 'NL', '', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', 'the-rocking-players', '2020-09-11 10:01:27.000000', '2020-12-11 13:07:00.627899', 2, NULL),
(4, 'Blackmail', '33', '', 0, 1, '2', 0, '33.34', 'NL', '', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', 'blackmail', '2020-09-11 10:02:27.000000', '2021-03-11 14:30:04.326692', 4, 'images/Beatles_h53LVY4.jpg'),
(5, 'The Streetrollers', '6', 'Indo Rock / 50 ties and 60ties', 1, 1, '2', 0, '650.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'STREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', 'the-streetrollers', '2020-09-11 10:03:00.000000', '2020-12-11 13:07:00.851941', 2, NULL),
(8, 'Java Guitars Unlimited', '4', 'Medly', 0, 1, '0', 0, '0.00', 'NL', 'http://www.javaguitars.nl', 'Smitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310\r\n\r\nindische@artiesten.club', 'java-guitars-unlimited', '2020-09-11 10:10:34.000000', '2020-12-11 13:06:59.574841', 2, NULL),
(9, 'Keep on Rocking', '4', 'Rock', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', 'keep-on-rocking', '2020-09-11 10:12:18.000000', '2021-01-13 13:28:32.450966', 2, NULL),
(10, 'Perwarindo (Wageningen)', '135', 'Angklung orkest', 0, 0, '0', 0, '1999.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', 'perwarindo-wageningen', '2020-09-11 15:14:16.000000', '2020-12-11 13:06:59.750684', 2, NULL),
(12, 'DYD (Den Haag)', '142', 'Angklung Orkest', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', 'dyd-den-haag', '2020-09-15 12:32:34.000000', '2021-03-11 14:31:52.406318', 2, 'images/Beatles_y2jrrL8.jpg'),
(13, 'Leni Landweer', '1', 'Angklung orkest', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n\r\n06 21241300', 'leni-landweer', '2020-09-23 13:32:17.000000', '2021-05-17 12:37:07.938964', 58, 'images/Leni_Landweer.jpg'),
(14, 'Hot News', '6', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', '', '', 'hot-news', '2020-10-19 19:07:58.000000', '2020-12-11 13:06:58.949631', 2, NULL),
(15, 'Hawaiian Fantasy', '20', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Aantal dansers kan verschillen naar behoefte\r\n\r\nGage € 350,-- / € 650,--', 'hawaiian-fantasy', '2020-10-19 19:17:49.000000', '2020-12-11 13:06:58.881458', 2, NULL),
(16, 'The Red Pack', '7', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', 'http://www.theredpack.nl', '', 'the-red-pack', '2020-10-19 19:41:02.000000', '2020-12-11 13:07:00.226260', 2, NULL),
(17, 'Cliff and his Lonestars', '4', 'Rock and Roll - country', 0, 1, '0', 0, '0.00', 'NL', '', 'info@lonestars.nl\r\n\r\nwww.lonestars.nl', 'cliff-and-his-lonestars', '2020-11-03 14:49:36.000000', '2021-06-22 13:30:58.639434', 3, 'images/JDB_1024_2016111220161112_135111_RpJhODi.jpg'),
(18, 'The Blue Devils', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'www.thebluedevils.nl', 'the-blue-devils', '2020-11-03 14:58:54.000000', '2020-12-11 13:06:59.874586', 2, NULL),
(19, 'The Bretels', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'thebretels@hotmail.nl', 'the-bretels', '2020-11-03 15:04:56.000000', '2020-12-11 13:06:59.934556', 2, NULL),
(20, 'The Cosy Rockers', '6', '50/60 jaren Rock and Roll', 0, 1, '3', 0, '0.00', 'NL', 'http://www.thecosyrockers.nl', '', 'the-cosy-rockers', '2020-11-12 20:21:40.000000', '2020-12-11 13:06:59.992482', 2, NULL),
(21, 'The Eastern Aces', '5', 'Indo rock - 50/60 jaren', 0, 1, '2', 0, '0.00', 'NL', 'http://www.theeasternaces.com', '', 'the-eastern-aces', '2020-11-16 13:15:41.000000', '2020-12-11 13:07:00.050472', 2, NULL),
(22, 'The Rocking Drifters', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', 'http://www.therockingdrifters.nl', 'Bandleden:\r\n\r\nHenk Ripzaad - zang rithem gitaar\r\nJo van den Kieboom - drums\r\nTom Janssen - bas - zang\r\nRuud van der Horst - solo gitaar', 'the-rocking-drifters', '2020-11-16 13:30:09.000000', '2020-12-11 13:07:00.476092', 2, NULL),
(23, 'Straight', '61', 'Country rock - Indo rock', 0, 1, '3', 0, '0.00', 'NL', '', '', 'straight', '2020-11-16 13:45:17.000000', '2020-12-11 13:06:59.816796', 2, NULL),
(25, 'The Rocking Teens', '3', 'Indo Rock', 0, 1, '1', 0, '0.00', 'NL', '', 'Aantal leden kan verschillen. Ze treden soms op onder de naam The Rocking Teens & Friends', 'the-rocking-teens', '2020-11-16 14:08:51.000000', '2020-12-11 13:07:00.751839', 2, NULL),
(26, 'Wipe Out Selection', '6', '', 0, 1, '2', 0, '650.00', 'NL', '', 'Richard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', 'wipe-out-selection', '2020-12-11 12:47:11.000000', '2021-03-11 14:29:02.439770', 2, 'images/band_picture_new_2_fezC3ye.jpeg'),
(27, 'The Mordants', '6', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', 'the-mordants', '2020-12-11 12:52:02.000000', '2021-03-11 13:43:26.010107', 2, 'images/Beatles.jpg'),
(28, 'Xanur', '6', 'Indisch', 0, 1, '0', 0, '0.00', 'NL', '', '', 'xanur', '2021-03-02 15:55:11.000000', '2021-03-11 14:55:06.814763', 3, 'images/Beatles_G3XmaKg.jpg'),
(29, 'Sinterklaas', '100', 'Gpolden Oldies', 0, 1, '0', 0, '0.00', 'NL', '', '', 'sinterklaas', '2021-06-25 12:01:36.000000', '2021-06-25 12:03:23.606067', 131, 'images/JDB_1024_2016111220161112_135111_EcIY6pJ.jpg');

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
  `catering_prijs` decimal(8,2) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `catering_prijs`, `rekening_nr`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Toko Yoko', 'Indonesisch', '0.00', 'NL', '', 'Laatste keer goed', 'slug', '2020-08-19 15:50:19.000000', '2020-08-19 15:50:19.000000', 6),
(2, 'Dapur Jomy', 'Indisch / Indonesch', '0.00', 'NL', 'https://www.facebook.com/Dapur-Jomy-104000084682444/', 'Iedere week een ander menu\r\n\r\nhttps://www.oozo.nl/bedrijven/drechterland/venhuizen/centrum-venhuizen/2001138/dapur-jomy', 'slug', '2020-08-19 19:07:08.000000', '2020-08-19 19:07:08.000000', 2),
(3, 'Toko2Way', 'Indisch', '0.00', 'NL', '', '', 'slug', '2020-08-21 19:31:58.000000', '2020-08-21 19:31:58.000000', 13),
(4, 'Toko Lannie', 'Indisch', '1999.00', 'NL', '', '', 'slug', '2020-08-23 19:30:46.000000', '2020-08-23 19:30:46.000000', 19),
(5, 'Chinese Garden', 'Chinees / hollandse pot', '0.00', 'NL', '', 'Testje', 'slug', '2020-08-24 17:33:37.000000', '2020-08-24 17:33:37.000000', 3),
(6, 'Hap Wat', 'Snackbar', '4.50', 'NL', 'http://ww.hapwat.nl', 'Test', 'hap-wat', '2020-10-09 14:18:14.000000', '2021-01-08 21:49:28.044884', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `voornaam` varchar(20) NOT NULL,
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
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `voornaam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `contact_image`) VALUES
(2, 'Jan Jansen', '', 'Hoofdstraat 1', '1625DE', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'NL', 0, 'Dit is het eerste Lid', 'jan-jansen', '2020-08-19 14:11:37.000000', '2020-12-11 13:06:48.828205', NULL),
(3, 'Jorgen van der Hoeven', 'Jorgen', 'onbekend', 'xxxxyy', 'onbekend', '1235678911', '0611711287', 'j.verhoeven2@chello.nl', 4, 0, 'NL', 0, 'Dit is de tweede', 'jorgen-van-der-hoeven', '2020-08-19 14:16:20.000000', '2020-12-11 13:06:49.479587', NULL),
(4, 'Clif Jansen', '', 'Damstraat 6 , 2 Hoog', '1000BD', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 0, 'NL', 1, 'Oprichter van de Fanclub \"Cliff and his Loanstars', 'clif-jansen', '2020-08-19 14:23:40.000000', '2020-12-11 13:06:44.959555', NULL),
(5, 'Mike Tomson', '', 'Damstraat 12, 3 hoog', '1000AA', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, 'NL', 0, '', 'mike-tomson', '2020-08-19 15:45:28.000000', '2020-12-11 13:06:52.329135', NULL),
(6, 'Toko Yoko', '', 'Tonijnstraat 5', '1200BE', 'Heerhgoward', '0', '0', 'info@tokoyoko.nl', 4, 0, 'NL', 0, '', 'toko-yoko', '2020-08-19 15:50:56.000000', '2020-12-11 13:06:57.270772', NULL),
(7, 'Frans Maas', '', 'Korte Straat 6', '9331NL', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, 'NL', 0, '', 'frans-maas', '2020-08-19 15:54:01.000000', '2020-12-11 13:06:46.240404', NULL),
(8, 'Christiaan Mulder', '', 'Kerkstraat 10b', '1621CW', 'Hoorn', '229210608', '0', 'info@huisverloren.nl', 9, 3, 'NL', 1, '', 'christiaan-mulder', '2020-08-19 18:54:14.000000', '2020-12-11 13:06:44.841629', NULL),
(9, 'Truus Ammeraal', '', 'Grote Oost 58 – 60', '1621BX', 'Hoorn', '22921909', '614179444', 'info@oosterkerk.nl', 9, 3, 'NL', 0, '', 'truus-ammeraal', '2020-08-19 18:58:52.000000', '2020-12-11 13:06:57.494553', NULL),
(10, 'Daphne', '', 'Dorpsstraat 175', '1689G', 'Zwaag', '229261473', '620678838', 'info@dewittevalk.nl', 9, 0, 'NL', 1, '', 'daphne', '2020-08-19 19:03:25.000000', '2020-12-11 13:06:45.471135', NULL),
(12, 'Eric Alders', '', 'Westerblokker 80', 'onbeke', 'Zwaag', '2292326691', '612345678', 'info@goudenhoofd.nl', 9, 0, 'NL', 0, 'm.boersma11@kpnplanet.nl', 'eric-alders', '2020-08-20 22:22:33.000000', '2020-12-11 13:06:46.006611', NULL),
(13, 'CiCi 01', '', 'onbekend', 'xxxxyy', 'onbekend', '123456789', '123498765', 'onbekend@1234.nl', 5, 0, 'NL', 0, '', 'cici-01', '2020-08-21 19:24:44.000000', '2020-12-11 13:06:44.899602', NULL),
(14, 'Klaas Singer', '', 'onbekend', 'xxxxyy', 'onbekend', '02295733', '0612345679', 'klaassinger@gmail.com', 7, 0, 'NL', 0, 'www.thesixtiesbanddestoel.nl', 'klaas-singer', '2020-08-21 20:33:41.000000', '2020-12-11 13:06:50.013180', NULL),
(15, 'Will Merkx', '', 'onbekend', 'xxxxyy', 'Koog aan de Zaan', '756161681', '650284376', 'h.merkxneyndorff@upcmail.nl', 7, 0, 'NL', 0, 'www.blackmail-countrymusic.nl', 'will-merkx', '2020-08-22 19:19:12.000000', '2020-12-11 13:06:57.670582', NULL),
(16, 'Erlo van der Hoeven', '', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '062709210', 'erlo.streetrollers@gmail.com', 7, 0, 'NL', 0, 'www.thestreetrollers.webnode.nl/over-ons', 'erlo-van-der-hoeven', '2020-08-22 19:23:29.000000', '2020-12-11 13:06:46.064595', NULL),
(17, 'Brain Leepel', '', 'onbekend', 'xxxxyy', 'Den Helder', '647679948', '628400959', 'labsimons@live.nl', 7, 0, 'NL', 0, 'www.wipeoutselection.nl', 'brain-leepel', '2020-08-22 19:41:37.000000', '2020-12-11 13:06:44.490006', NULL),
(18, 'Martin', '', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 7, 0, 'NL', 0, 'x', 'martin', '2020-08-23 18:47:21.000000', '2020-12-11 13:06:51.859556', NULL),
(19, 'Lannie dummy', '', 'o', 'xxxxyy', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, 'NL', 0, '', 'lannie-dummy', '2020-08-23 19:32:23.000000', '2020-12-11 13:06:50.073125', NULL),
(20, 'Fried Holtkamp', '', 'onbekend', 'xxxxyy', 'Hoorn', '0', '0637166146', 'friedholtkamp@hotmail.com', 4, 0, 'NL', 0, 'www.mordants.nl', 'fried-holtkamp', '2020-08-24 16:12:30.000000', '2020-12-11 13:06:46.350344', NULL),
(21, 'Co Bruijns', '', 'onbekend', 'xxxxyy', 'Hoorn', '0229262915', '0683543752', 'cobruijns@hotmail.com', 4, 0, 'NL', 0, '', 'co-bruijns', '2020-08-24 16:22:20.000000', '2020-12-11 13:06:45.075545', NULL),
(22, 'Shirley Salomon', '', 'onbekend', 'xxxxyy', 'onbekend', '0', '06 21872413', 'shirleysalomon@gmail.com', 4, 0, 'NL', 0, '', 'shirley-salomon', '2020-08-25 12:37:48.000000', '2020-12-11 13:06:56.277707', NULL),
(23, 'George Kwekel', '', 'Smitsweg 51', '3222AG', 'Hellevoetsluis', '1813243106', '612345678', 'indische@artiesten.club', 4, 0, 'NL', 0, '', 'george-kwekel', '2020-08-25 12:48:01.000000', '2020-12-11 13:06:47.041990', NULL),
(24, 'Wim Geertman', '', 'onbekend', 'xxxxyy', 'onbekend', '', '06-52 12 55 08', 'wh.geertman@quicknet.nl', 4, 0, 'NL', 1, '', 'wim-geertman', '2020-08-25 13:03:48.000000', '2020-12-11 13:06:58.198163', NULL),
(25, 'Peter de Wilde', '', '', '', '', '0228-315 511', '', 'info@foreesterhuis.nl', 0, 0, 'NL', 0, '', 'peter-de-wilde', '2020-09-11 14:43:40.000000', '2020-12-11 13:06:54.463327', NULL),
(26, 'Nog onbekend', '', 'Harnjesweg 84', '6706AV', 'Wageningen', '0412624476', '', 'tjio.thea@gmail.com', 0, 0, 'NL', 0, '', 'nog-onbekend', '2020-09-11 15:06:58.000000', '2020-12-11 13:06:53.813883', NULL),
(29, 'Martherus', '', '', '', '', '', '', 'andre.martherus@hetnet.nl', 1, 0, 'NL', 0, '', 'martherus', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:51.801656', NULL),
(32, 'Anneke Duursma', '', '', '', 'Hoorn', '0229 – 216692', '', 'annekeduursma@gmail.com', 1, 0, 'NL', 0, 'Dans / Acara / Ok', 'anneke-duursma', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:43.594710', NULL),
(33, 'Anneke Nieuwbuurt', '', '', '', '', '', '', 'annekenieuwbuurt@live.nl', 1, 0, 'NL', 0, 'Dans / Acara', 'anneke-nieuwbuurt', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:43.662750', NULL),
(35, 'BepFritz48@gmail.com', '', '', '', '', '', '', 'bepfritz48@gmail.com', 10, 0, 'NL', 0, '', 'bepfritz48gmailcom', '2020-09-11 17:44:37.000000', '2021-05-16 19:27:25.485392', ''),
(36, 'J. Bruisma', '', '', '', '', '', '', 'bruinsmajopie@gmail.com,', 0, 0, 'NL', 0, '', 'j-bruisma', '2020-09-11 17:44:37.691152', '2020-12-11 13:06:48.710293', NULL),
(37, 'Sebastiaan kahle', '', '', '1623rk', 'Hoorn', '', '', 'carenbas@gmail.com', 1, 0, 'NL', 0, '', 'sebastiaan-kahle', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:56.209790', NULL),
(38, 'Carla Overtoom', '', '', '', '', '', '', 'carlalovesalsa@hotmail.com', 1, 0, 'NL', 0, 'Dans / Acara', 'carla-overtoom', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:44.665811', NULL),
(39, 'Carmen Bali', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'carmen-bali', '2020-09-11 17:44:38.000000', '2020-12-11 13:06:44.723934', NULL),
(40, 'Cees', '', '', '', '', '', '', 'cjmsmit@zonnet.nl', 1, 0, 'NL', 0, '', 'cees', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:44.783725', NULL),
(41, 'C. Lokker', '', '', '', '', '06-83860736', '', 'clokker1960@hotmail.com', 1, 0, 'NL', 0, '', 'c-lokker', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:44.605865', NULL),
(42, 'M. De Niet', '', '', '', '', '', '', 'denietmarleen@gmail.com', 1, 0, 'NL', 0, '', 'm-de-niet', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:51.240105', NULL),
(43, 'E.HartmanKoh', '', '', '', '', '06 – 53421819', '', 'e.hartmankokgome2@quicknet.nl', 1, 0, 'NL', 0, '', 'ehartmankoh', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:45.772885', NULL),
(44, 'E.Manuhutu', '', '', '', 'Haarlem', '', '', 'e.manuhutu@upcmail.nl', 1, 0, 'NL', 0, '', 'emanuhutu', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:45.830822', NULL),
(45, 'Eddy Cretier', '', '', '', '', '', '', 'eh.cretier@planet.nl', 1, 0, 'NL', 0, '', 'eddy-cretier', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.888797', NULL),
(46, 'E. Keet', '', '', '', '', '', '', 'emj.keet@hetnet.nl', 1, 0, 'NL', 0, '', 'e-keet', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.712965', NULL),
(47, 'Endang Stoke', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'endang-stoke', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.946638', NULL),
(48, 'Stulp', '', '', '', 'Hoorn', '06 – 33864333', '', 'froukstulp@hotmail.com', 1, 0, 'NL', 0, '', 'stulp', '2020-09-11 17:51:28.000000', '2020-12-11 13:06:56.461658', NULL),
(49, 'G. S. Stelling', '', '', '', '', '06-55812690', '', 'gustaaf_stelling@hotmail.com', 1, 0, 'NL', 0, '', 'g-s-stelling', '2020-09-11 17:51:28.000000', '2020-12-11 13:06:46.416451', NULL),
(50, 'Anne Mieke Baudain', '', '', '', 'Hoorn', '', '', 'helderzienhoorn@gmail.com', 1, 0, 'NL', 0, '', 'anne-mieke-baudain', '2020-09-11 17:51:29.000000', '2020-12-11 13:06:43.528959', NULL),
(51, 'H P Brandsma', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'h-p-brandsma', '2020-09-11 17:51:29.000000', '2020-12-11 13:06:47.249582', NULL),
(52, 'Huib Kneepkens', '', '', '', 'Amsterdam', '06 –  83715923', '', 'huibkneepkens@hotmail.com', 1, 0, 'NL', 0, '', 'huib-kneepkens', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:47.625281', NULL),
(53, 'Martin en Ineke Janssen', '', '', '', '', '', '', 'ienepien52@hotmail.com', 1, 0, 'NL', 0, '', 'martin-en-ineke-janssen', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:51.917618', NULL),
(54, 'Irma Hollander', '', '', '1507nh', 'Zaandam', '', '', 'irmahollander@kpnmail.nl', 1, 0, 'NL', 0, '', 'irma-hollander', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:48.654350', NULL),
(55, 'Bron', 'Jenny', '', '1506KP', 'Zaandam', '', '', 'j.bronq@upcmail.nl', 1, 0, 'NL', 0, '', 'bron', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:44.547944', NULL),
(56, 'Joke. F. Neijman (Harrij)', '', '', '', 'Hoorn', '0229 – 243177', '', 'jfnvdb@gmail.com', 1, 0, 'NL', 0, '', 'joke-f-neijman-harrij', '2020-09-11 17:54:14.000000', '2021-01-03 14:19:44.236282', NULL),
(57, 'Jimmyjohn704', '', '', '', '', '', '', 'jimmyjohn704@hotmail.com', 1, 0, 'NL', 0, '', 'jimmyjohn704', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.946220', NULL),
(58, 'Jimmy Schaper', '', '', '', 'hoorn', '', '', 'jimmyschaper@yahoo.co.uk', 1, 0, 'NL', 0, '', 'jimmy-schaper', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.886127', NULL),
(59, 'John van der Beek', '', '', '', 'Haarlem', '023 – 5376398', '', 'john.vanderbeek@', 0, 0, 'NL', 0, '', 'john-van-der-beek', '2020-09-11 17:54:15.411938', '2020-12-11 13:06:49.063358', NULL),
(60, 'Jose Hooper', '', '', '1628ev', 'Hoorn', '', '', 'josehooper52@gmail.com', 1, 0, 'NL', 0, '', 'jose-hooper', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:49.537647', NULL),
(61, 'Inge Klaver', '', '', '1695cb', 'Blokker', '', '', 'klaverkho@hotmail.com', 1, 0, 'NL', 0, '', 'inge-klaver', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.335031', NULL),
(62, 'R. van Ginkel', '', '', '', '', '06 – 42631961', '', 'kyokosusan@hotmail.com', 1, 0, 'NL', 0, '', 'r-van-ginkel', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:55.006839', NULL),
(63, 'Toko Lanny', '', '', '', '', '', '', 'Lanny@123.nl', 1, 0, 'NL', 0, '', 'toko-lanny', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:56.911151', NULL),
(64, 'Lindi', '', '', '', '', '', '', 'lindi@ziggo.nl', 1, 0, 'NL', 0, '', 'lindi', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:50.580691', NULL),
(65, 'Louise Postma Bongers', '', '', '', '', '', '', 'louise_post@hotmail.com', 1, 0, 'NL', 0, '', 'louise-postma-bongers', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.016363', NULL),
(66, 'Gan', '', '', '1621mp', 'Hoorn', '', '', 'lout.anke@gmail.com', 1, 0, 'NL', 0, '', 'gan', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:46.750285', NULL),
(67, 'Luana Narua', '', '', '1629zd', 'Hoorn', '', '', 'luananarua@hotmail.com', 1, 0, 'NL', 0, '', 'luana-narua', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.124206', NULL),
(68, 'Luuk Franke', '', '', '', '', '06-30797229', '', 'luukfranke@gmail.com', 1, 0, 'NL', 0, '', 'luuk-franke', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.182148', NULL),
(69, 'Monique Coers', '', '', '', '', '06-30761180', '', 'm.coers@pelita.nl', 1, 0, 'NL', 0, '', 'monique-coers', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:52.630976', NULL),
(70, 'm.a.h. rooijen', '', '', '', '', '', '', 'mah.vrooijen@quicknet.nl', 1, 0, 'NL', 0, '', 'mah-rooijen', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.635719', NULL),
(71, 'Harrij. J. Pattiradjawane', '', '', '', '', '', '', 'makaui2@hotmail.com', 1, 0, 'NL', 0, '', 'harrij-j-pattiradjawane', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:47.367512', NULL),
(72, 'Kampfraat', '', '', '', '', '', '', 'marjonkampfraat@hotmail.com', 1, 0, 'NL', 0, '', 'kampfraat', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:49.955221', NULL),
(73, 'M. Hoorn', '', '', '1718az', 'Hoogwoud', '', '', 'mate-1947@hotmail.com', 1, 0, 'NL', 0, '', 'm-hoorn', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:51.300062', NULL),
(74, 'Nani de Ruiter', '', '', '1625hd', 'Hoorn', '', '', 'nanideruiter@kpnmail.nl', 1, 0, 'NL', 0, '', 'nani-de-ruiter', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:52.790834', NULL),
(75, 'Nel ter Woort', '', '', '', '', '', '', 'nelbakker@msn.com', 1, 0, 'NL', 0, '', 'nel-ter-woort', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:52.984870', NULL),
(76, 'Nelly Kaayk', '', '', '', 'Hoorn', '06 – 46912428', '', 'nelly.kaayk@quicknet.nl', 1, 0, 'NL', 0, '', 'nelly-kaayk', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:53.236459', NULL),
(77, 'O. Coenraad', '', '', '', '', '0229-239357', '', 'ottonel20@gmail.com', 1, 0, 'NL', 0, '', 'o-coenraad', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:53.945735', NULL),
(78, 'Paul Nijhof', '', '', '', '', '', '', 'paulnijhof47@gmail.com', 1, 0, 'NL', 0, '', 'paul-nijhof', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.053708', NULL),
(79, 'Peter de Rooij', '', '', '', '', '', '', 'pgmderooij@gmail.com', 1, 0, 'NL', 0, '', 'peter-de-rooij', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.163629', NULL),
(80, 'Pia van de Broek', '', '', '', '', '', '', 'piavandenbroek@hotmail.com', 1, 0, 'NL', 0, '', 'pia-van-de-broek', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.521273', NULL),
(81, 'Roland Eilbracht', '', '', '', '', '06 – 38509900', '', 'r.d.eilbracht@casema.nl', 1, 0, 'NL', 0, '', 'roland-eilbracht', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.266777', NULL),
(82, 'R. Schenk', '', '', '', '', '', '', 'r.schenk@quicknet.nl', 1, 0, 'NL', 0, '', 'r-schenk', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:54.948904', NULL),
(83, 'Richard Monkau', '', '', '', 'Hoorn', '', '', 'richard.monkau@gmail.com', 1, 0, 'NL', 0, '', 'richard-monkau', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.148760', NULL),
(84, 'Rita Doest', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'rita-doest', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.208680', NULL),
(85, 'Rosita Bongers', '', '', '', '', '', '', 'rositabongers@hotmail.com', 1, 0, 'NL', 0, '', 'rosita-bongers', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:55.708285', NULL),
(86, 'Hulst', '', '', '', '', '', '', 'rshulst@hotmail.com', 1, 0, 'NL', 0, '', 'hulst', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:48.026820', NULL),
(87, 'R. J. van Eldik', '', '', '', '', '', '', 'ruudvaneldik@gmail.com', 1, 0, 'NL', 0, '', 'r-j-van-eldik', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:54.839042', NULL),
(88, 'Saninda', '', '', '', 'Medemblik', '06 – 52362914', '', 'Sarinda123@hotmail.nl', 1, 0, 'NL', 0, '', 'saninda', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.143872', NULL),
(89, 'Stoffels', '', '', '', '', '', '', 'stoffelsc@ziggo.nl', 1, 0, 'NL', 0, '', 'stoffels', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.409536', NULL),
(90, 'Sylvia Leyting', 'Sylvia en', '', '1628xr', '', '06 – 50129692', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', 'sylvia-leyting', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.775360', NULL),
(91, 'F. S. Leijting (Sylvia)', 'Sylvia', '', '1628xr', 'Hoorn', '', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', 'f-s-leijting-sylvia', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:46.122501', NULL),
(92, 'Wim Daniels', '', '', '1628gx', 'Hoorn', '', '', 'tdanielse@quicknet.nl', 1, 0, 'NL', 0, '', 'wim-daniels', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:58.048188', NULL),
(93, 'Trouwerbach', '', '', '1695hr', 'Blokker', '', '', 'trouwerbach@quicknet.nl', 1, 0, 'NL', 0, '', 'trouwerbach', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:57.436880', NULL),
(94, 'Loek en Narda van Lochem', '', '', '', '', '', '', 'vanlochems@planet.nl', 1, 0, 'NL', 0, '', 'loek-en-narda-van-lochem', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:50.640648', NULL),
(95, 'W. S. Figueira', '', '', '', 'Alkmaar', '072 – 5649219', '', 'w.figueira@upcmail.nl', 1, 0, 'NL', 0, '', 'w-s-figueira', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:57.554603', NULL),
(96, 'w.niklaas', '', '', '', '', '', '', 'w.niklaas@gmail.com', 1, 0, 'NL', 0, '', 'wniklaas', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:57.612636', NULL),
(97, 'M. O. vd Waa-Meents', '', '', '1628gx', 'Hoorn', '', '', 'waaza@quicknet.nl', 1, 0, 'NL', 0, '', 'm-o-vd-waa-meents', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:51.358115', NULL),
(98, 'J.Bothe', '', '', '1695am', 'Blokker', '', '', '', 1, 0, 'NL', 0, '', 'jbothe', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:48.770318', NULL),
(99, 'xxxhoeven', '', '', '', 'Assendelft', '', '', '', 1, 0, 'NL', 0, '', 'xxxhoeven', '2020-09-11 17:56:27.000000', '2020-12-11 13:06:58.505967', NULL),
(100, 'Ankie Ten Haaf', 'Ankie', '', '1624TH', 'Hoorn', '', '', '', 1, 2, 'NL', 0, '', 'ankie-ten-haaf', '2020-09-11 17:56:27.000000', '2021-05-16 19:30:07.976999', ''),
(101, 'Joke/Harrij Neijman', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'jokeharrij-neijman', '2020-09-11 17:56:27.000000', '2020-12-11 13:06:49.421716', NULL),
(103, 'Henny Mulsch', '', '', '1689sm', 'Zwaag', '', '', '', 1, 0, 'NL', 0, '', 'henny-mulsch', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:47.433379', NULL),
(104, 'Ben /Naney', '', '', '1687pb', 'wognum', '', '', '', 1, 0, 'NL', 0, '', 'ben-naney', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:43.794589', NULL),
(105, 'Lily vd Berg', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'lily-vd-berg', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:50.456841', NULL),
(106, 'Loet', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'loet', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:50.706614', NULL),
(107, 'niet ingevuld', '', '', '', '', '06 – 23131394', '', '', 0, 0, 'NL', 0, '', 'niet-ingevuld', '2020-09-11 17:56:28.938808', '2020-12-11 13:06:53.687893', NULL),
(108, 'Hoeven', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', 'hoeven', '2020-09-11 17:56:29.000000', '2020-12-11 13:06:47.559281', NULL),
(109, 'Franky Harmusil', '', '', '', 'Den Haag en omstreken ?', '0412624476', '06 46598547', 'dansayokdansa@gmail.com', 6, 0, 'NL', 0, 'www.dansayokdansa.nl', 'franky-harmusil', '2020-09-15 11:32:17.000000', '2020-12-11 13:06:46.182526', NULL),
(110, 'Nog onbekend', '', '', '', '', '', '', '', 0, 0, 'NL', 0, '', 'nog-onbekend', '2020-09-15 12:35:55.000000', '2020-12-11 13:06:53.879791', NULL),
(111, 'leni Landweer (Angklung)', '', '', '', '', '', '0621241300', 'lenilandweer@gmail.com', 0, 0, 'NL', 0, 'Angklung\r\n\r\nLeni Landweer\r\n0621241300\r\nwww.pesonaculture.com\r\nwww.angklung.nl', 'leni-landweer-angklung', '2020-09-15 13:22:32.000000', '2020-12-11 13:06:50.139260', NULL),
(113, 'Piet Danse', '', '', '', '', '', '06-2939320', '', 0, 0, 'NL', 0, 'Contact persoon  gelegenheids-band (Ramona).\r\n\r\nTelefoonnummer is niet compleet.', 'piet-danse', '2020-10-14 20:10:58.000000', '2020-12-11 13:06:54.581306', NULL),
(114, 'Junius', '', 'onbekend', '', '', '', '06 54746285', 'junius_tiareotahiti@hotmail.com', 0, 0, 'NL', 0, '', 'junius', '2020-10-19 19:13:49.000000', '2020-12-11 13:06:49.897243', NULL),
(115, 'René Bes', '', 'onbekend', '', '', '', '06 22170099', 'info@theredpack.nl', 0, 0, 'NL', 0, 'Bes promotions\r\n\r\nwww.theredpack.nl', 'rene-bes', '2020-10-19 19:36:24.000000', '2020-12-11 13:06:55.084347', NULL),
(116, 'Cliff Breton van Groll', '', 'onbekend', '', '', '', '06 42725412', 'info@lonestars.nl', 7, 0, 'NL', 0, '', 'cliff-breton-van-groll', '2020-11-03 14:45:55.000000', '2020-12-11 13:06:45.017541', NULL),
(117, 'Dick', '', 'onbekend', '', '', '', '06 58890342', 'thebluedevils@gmail.com', 7, 0, 'NL', 0, '', 'dick', '2020-11-03 14:56:30.000000', '2020-12-11 13:06:45.654990', NULL),
(118, 'onbekend', '', '', '', '', '', '06 23981063', '', 0, 0, 'NL', 0, '', 'onbekend', '2020-11-03 15:02:35.000000', '2020-12-11 13:06:53.997694', NULL),
(119, 'Stichting het gehandicapte kind', '', 'Wibautstraat 212-214', '1091GS', 'Amsterdam', '020-6791200', '', '', 2, 0, 'NL', 0, 'het Gehandicapte Kind\r\nWibautstraat 212-214\r\n1091 GS Amsterdam\r\n  Tel. 020-6791200\r\nFacebook Instagram Youtube Twitter \r\nBankrekening\r\nIBAN: NL76 RABO 0334 4334 44\r\nKvK nummer\r\nS 41199157\r\nBTW nummer\r\n0029. 59.173.B.01', 'stichting-het-gehandicapte-kind', '2020-11-10 10:46:49.000000', '2020-12-11 13:06:56.343619', NULL),
(122, 'Ron Bruin', 'Ron', 'onbekend', '', '', '', '06 25021257', '', 0, 0, 'NL', 0, '', 'ron-bruin', '2020-11-12 20:19:45.000000', '2020-12-11 13:06:55.576556', NULL),
(123, 'Frans v.d. Brand Horninge', 'Frans', '', '', '', '', '06 46242584', 'lookatfrans@ziggo.nl', 7, 0, 'NL', 0, '2e contact:  Carl Tentua\r\n0181 214360', 'frans-vd-brand-horninge', '2020-11-16 13:12:14.000000', '2020-12-11 13:06:46.298367', NULL),
(124, 'Tom Janssen', 'Tom', '', '', '', '', '06 57907943', 'rockingdrifters@gmail.com', 0, 0, 'NL', 0, '', 'tom-janssen', '2020-11-16 13:27:53.000000', '2020-12-11 13:06:57.378790', NULL),
(125, 'Huib Severijn', 'Huib', '', '', '', '', '06 17383473', 'severijnhc@gmail.com', 0, 0, 'NL', 0, 'Opgericht december 1999', 'huib-severijn', '2020-11-16 13:42:44.000000', '2020-12-11 13:06:47.693340', NULL),
(126, 'Harold Rosso', 'Harold', '', '', '', '087 7847093', '', 'haroldrosso@gmail.com', 0, 0, 'NL', 0, '', 'harold-rosso', '2020-11-16 13:53:52.000000', '2020-12-11 13:06:47.307521', NULL),
(127, 'Arie Mosies', 'Arie', '', '', '', '076 872461', '06 83593788', 'ariemosies@gmail.com', 0, 0, 'NL', 0, '', 'arie-mosies', '2020-11-16 14:06:44.000000', '2020-12-11 13:06:43.728664', NULL),
(128, 'Julian Sieben', 'Julian', '', '', '', '', '06 83386140', '', 0, 0, 'NL', 0, 'contact via messenger\r\nm.me/The RockingCoasters', 'julian-sieben', '2020-11-16 14:28:39.000000', '2020-12-11 13:06:49.789639', NULL),
(129, 'Hessels', 'Corrie', 'Dijkgraaf IJffstraat 49', '1566JZ', 'Assendelft', '', '06 22538939', 'corriehessels@upcmail.nl', 9, 0, 'NL', 0, '', 'hessels', '2020-11-21 19:51:57.000000', '2020-12-11 13:06:47.491373', NULL),
(130, 'Groen', '', '', '', '', '0229505964', '', '', 1, 0, 'NL', 0, 'Canceled : Had voor Line dance 6 kaartjes besteld', 'groen', '2020-11-22 12:27:40.000000', '2020-12-11 13:06:47.183654', NULL),
(131, 'Bieri', 'Franklin', 'Gording 112', '1628JG', 'Hoorn', '0229', '06-83351218', 'adoe_adoe@outlook.com', 9, 0, 'NL', 0, '', 'bieri', '2020-12-01 15:48:51.000000', '2020-12-11 13:06:44.431955', NULL),
(132, 'Co Bruijns', 'Cor', '', '', '', '', '', '', 0, 0, 'NL', 0, '', 'co-bruijns', '2020-12-11 12:53:53.000000', '2020-12-11 13:06:45.185432', NULL),
(141, 'Jaap Karsel', 'Jaap', 'dorpstraat 1', '1647ME', 'Berkhout', '', '06-1234512345', '', 0, 0, 'NL', 0, '', 'jaap-karsel', '2021-01-08 15:02:39.817034', '2021-01-08 15:04:10.315225', NULL),
(142, 'Sinterklaas', 'Sint', '', '', 'Spanje', '', '', 'sint@nos.nl', 0, 0, 'NL', 0, '', 'sinterklaas', '2021-06-25 11:57:25.000000', '2021-06-25 11:58:18.329224', '');

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
  `opbrengst` decimal(8,2) NOT NULL,
  `zitplaatsen` decimal(8,0) NOT NULL,
  `website` varchar(200) NOT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `band_id` int(11) NOT NULL,
  `beheerder_id` int(11) NOT NULL,
  `catering_id` int(11) NOT NULL,
  `locatie_id` int(11) NOT NULL,
  `activiteiten_info` varchar(50) NOT NULL,
  `catering_info` varchar(50) NOT NULL,
  `organisator` varchar(50) NOT NULL,
  `organisator_info` varchar(80) NOT NULL,
  `volgende_datum_1` varchar(50) NOT NULL,
  `volgende_datum_2` varchar(50) NOT NULL,
  `uitverkocht` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `opbrengst`, `zitplaatsen`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`, `activiteiten_info`, `catering_info`, `organisator`, `organisator_info`, `volgende_datum_1`, `volgende_datum_2`, `uitverkocht`) VALUES
(1, 'Kumpulan', '2020-08-29 22:00:00.000000', '14:30:00.000000', '17:30:00.000000', '14:00:00.000000', 'Nationaal Indische dag', '17.50', '15.00', '0.00', '100', '', '', 'kumpulan', '2020-09-14 15:41:21.000000', '2021-03-09 14:53:47.492267', 2, 9, 2, 3, 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '', '', 1),
(2, 'Angkloon concert', '2021-03-31 22:00:00.000000', '13:30:00.000000', '16:30:00.000000', '13:00:00.000000', 'Concert + workshop', '17.50', '14.99', '780.00', '65', '', '', 'angkloon-concert', '2021-01-08 22:32:31.000000', '2021-06-22 08:21:33.723232', 17, 8, 2, 2, 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '', '', 0),
(3, 'Evenement Xanur', '2021-03-21 23:00:00.000000', '13:00:00.000000', '19:00:00.000000', '12:00:00.000000', 'Indish', '7.50', '5.00', '0.00', '0', '', '', 'evenement-xanur', '2021-03-02 15:45:21.000000', '2021-05-17 12:36:14.070206', 13, 2, 1, 8, 'Tombola met mooie prijzen.', 'Indische catering aanwezig.', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu (Vita Nova herreist)', 'vrijdag 24-04-2020 Masoek Sadja', 'vrijdag 29-05-2020 Masoek Sadja', 0),
(4, 'Pietenfeest', '2021-12-03 23:00:00.000000', '14:30:00.000000', '17:30:00.000000', '14:00:00.000000', 'The 80\'s', '0.00', '0.00', '0.00', '0', '', '', 'pietenfeest', '2021-06-25 11:58:29.000000', '2021-06-25 12:02:47.551631', 29, 131, 5, 4, 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_fanclub`
--

CREATE TABLE `contacts_fanclub` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `aantal_leden` decimal(6,0) NOT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_fanclub`
--

INSERT INTO `contacts_fanclub` (`id`, `naam`, `website`, `aantal_leden`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'De Doorzakkers', '', '100', '', 'de-doorzakkers', '2020-08-19 14:18:21.000000', '2020-12-11 13:07:01.847188', 2),
(2, 'De Dansers', '', '50', '', 'de-dansers', '2020-08-19 14:19:24.000000', '2020-12-11 13:07:01.379174', 3),
(3, 'De Zingers', '', '25', '', 'de-zingers', '2020-08-19 14:19:49.000000', '2020-12-11 13:07:01.998717', 2),
(5, 'Hot News', '', '80', '', 'hot-news', '2020-08-19 14:21:08.000000', '2020-12-11 13:07:02.056732', 22),
(6, 'The Rocking Players', '', '1236', '', 'the-rocking-players', '2020-08-19 14:21:59.000000', '2020-12-11 13:07:02.340580', 3),
(7, 'Clif and his Loanstars', '', '300', '', 'clif-and-his-loanstars', '2020-08-19 14:22:45.000000', '2020-12-11 13:07:01.313317', 4),
(8, 'De Stoel', '', '1', '', 'de-stoel', '2020-08-22 19:12:39.000000', '2020-12-11 13:07:01.938850', 14),
(9, 'Blackmail', '', '102', '', 'blackmail', '2020-08-22 19:23:41.000000', '2021-01-07 10:41:56.177366', 15),
(10, 'The Streetrollers', 'https://thestreetrollers.webnode.nl/over-ons/', '349', '', 'the-streetrollers', '2020-08-24 15:59:01.000000', '2020-12-11 13:07:02.516292', 16);

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
(1, '3', 1, '', '2021-05-10 09:00:24.000000', '2021-05-25 07:56:28.072317', 33, 2, 1),
(6, '2', 0, '', '2021-05-10 12:29:36.464715', '2021-05-10 12:29:36.472805', 100, 2, 1),
(7, '2', 0, '', '2021-05-10 12:29:50.487419', '2021-05-10 12:29:50.496837', 50, 2, 1),
(8, '2', 0, '', '2021-05-10 14:32:36.678648', '2021-05-10 14:32:36.686769', 100, 2, 0),
(10, '2', 0, '', '2021-05-20 17:38:44.000000', '2021-06-15 14:56:08.472012', 100, 2, 0),
(12, '2', 0, '', '2021-06-25 11:35:38.000000', '2021-06-25 11:36:03.956543', 50, 2, 1),
(13, '1', 1, '', '2021-06-25 11:36:28.000000', '2021-06-25 11:36:46.997278', 39, 2, 0),
(14, '4', 0, '', '2021-06-25 11:38:48.000000', '2021-06-25 11:39:03.642516', 127, 1, 1),
(15, '2', 0, '', '2021-06-25 15:22:48.000000', '2021-06-25 15:23:00.888005', 127, 4, 0),
(16, '2', 0, '', '2021-06-25 16:39:12.000000', '2021-06-25 16:39:22.064447', 41, 4, 0);

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
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_zaal`
--

INSERT INTO `contacts_zaal` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `website`, `volt440`, `hulp_nodig`, `vergunning_vereist`, `vergunning_aangevraagd`, `vergunning_datum`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Zaal Maas', '9350KL', 'Grote Markt 7', 'Groningen', '50123456789', '', 0, 0, 0, 0, '2020-12-11', 'zaal-maas', '2020-08-19 15:52:48.000000', '2020-12-11 13:07:02.958214', 7),
(2, 'Het Huis Verloren', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', '', 0, 0, 0, 0, '2020-12-11', 'het-huis-verloren', '2020-08-19 18:52:00.000000', '2020-12-11 13:07:02.724087', 8),
(3, 'Oosterkerk, Huiskamer van Hoorn', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '022921909', '', 0, 0, 0, 0, '2020-12-11', 'oosterkerk-huiskamer-van-hoorn', '2020-08-19 18:57:09.000000', '2020-12-11 13:07:02.841976', 9),
(4, 'Partycentrum De Witte Valk', '1689GB', 'Dorpstraat 175', 'Zwaag', '229261463', '', 0, 0, 0, 0, '2020-12-11', 'partycentrum-de-witte-valk', '2020-08-19 19:02:01.000000', '2020-12-11 13:07:02.899912', 10),
(5, 'Het Gouden Hoofd', '1695AJ', 'Westerblokker 80', 'Blokker', '0229-232691', '', 0, 0, 0, 0, '2020-12-11', 'het-gouden-hoofd', '2020-08-22 22:44:45.000000', '2020-12-11 13:07:02.666157', 12),
(6, 'Muziektent Culenborg', '1111xx', 'onbekend', 'Culenborg', '', '', 0, 0, 0, 0, '2020-12-11', 'muziektent-culenborg', '2020-09-07 14:29:29.000000', '2020-12-11 13:07:02.782007', 4),
(7, 'Foreesterhuis', '1621BR', 'Grote Oost 43', 'Hoorn', '0228 315 511', 'http://www.foreesterhuis.nl', 1, 0, 0, 0, '2021-01-06', 'foreesterhuis', '2020-09-11 14:53:33.000000', '2021-01-06 19:27:57.009664', 25),
(8, 'Buurtcentrum Limbrecterveld', '6135BN', 'Eisenhowerstraat 724', 'Sittard', '066-4510084', '', 0, 0, 0, 0, '2021-03-02', 'buurtcentrum-limbrecterveld', '2021-03-02 15:49:49.000000', '2021-03-02 15:52:50.178967', 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-02 15:52:50.199483', '8', 'Buurtcentrum Limbrecterveld', 1, '[{\"added\": {}}]', 11, 1),
(2, '2021-03-02 15:59:43.069021', '28', 'Xanur', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-03-02 16:04:52.198665', '3', 'Evenemnent Xanur', 1, '[{\"added\": {}}]', 14, 1),
(4, '2021-03-02 16:32:28.105014', '3', 'Evenemnent Xanur', 2, '[{\"changed\": {\"fields\": [\"Organisator info\", \"Catering info\", \"Volgende activiteiten\"]}}]', 14, 1),
(5, '2021-03-09 14:23:16.352828', '17', 'Cliff and his Lonestars', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(6, '2021-03-11 13:40:42.539170', '28', 'Xanur', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 1),
(7, '2021-03-11 13:43:26.014365', '27', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 1),
(8, '2021-03-11 13:45:04.457110', '26', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Band image\"]}}]', 7, 1),
(9, '2021-05-10 09:00:37.414464', '1', 'Ticket object (1)', 1, '[{\"added\": {}}]', 15, 1),
(10, '2021-05-10 09:01:02.276155', '2', 'Ticket object (2)', 1, '[{\"added\": {}}]', 15, 1),
(11, '2021-05-20 17:40:07.653773', '11', 'Ticket object (11)', 1, '[{\"added\": {}}]', 15, 1),
(12, '2021-06-15 14:56:08.475895', '10', 'Ticket object (10)', 2, '[{\"changed\": {\"fields\": [\"Evenement\"]}}]', 15, 1),
(13, '2021-06-25 11:36:03.996290', '12', 'Ticket object (12)', 1, '[{\"added\": {}}]', 15, 1),
(14, '2021-06-25 11:36:46.999418', '13', 'Ticket object (13)', 1, '[{\"added\": {}}]', 15, 1),
(15, '2021-06-25 11:39:03.645879', '14', 'Ticket object (14)', 1, '[{\"added\": {}}]', 15, 1),
(16, '2021-06-25 11:58:18.350169', '142', 'Sinterklaas', 1, '[{\"added\": {}}]', 10, 1),
(17, '2021-06-25 12:00:02.923413', '4', 'Pietenfeest', 1, '[{\"added\": {}}]', 14, 1),
(18, '2021-06-25 12:02:08.429155', '29', 'Sinterklaas', 1, '[{\"added\": {}}]', 7, 1),
(19, '2021-06-25 15:23:00.892053', '15', 'Ticket object (15)', 1, '[{\"added\": {}}]', 15, 1),
(20, '2021-06-25 16:39:22.068389', '16', 'Ticket object (16)', 1, '[{\"added\": {}}]', 15, 1);

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
(7, 'contacts', 'band'),
(8, 'contacts', 'category'),
(9, 'contacts', 'cateraar'),
(10, 'contacts', 'contact'),
(14, 'contacts', 'evenement'),
(13, 'contacts', 'fanclub'),
(12, 'contacts', 'page'),
(15, 'contacts', 'ticket'),
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
(1, 'contenttypes', '0001_initial', '2021-01-28 13:42:46.420323'),
(2, 'auth', '0001_initial', '2021-01-28 13:42:54.872016'),
(3, 'admin', '0001_initial', '2021-01-28 13:43:18.915739'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-28 13:43:23.688715'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-28 13:43:23.843487'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-28 13:43:28.136064'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-28 13:43:29.528219'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-28 13:43:29.654704'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-28 13:43:29.756114'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-28 13:43:32.217558'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-28 13:43:32.308258'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-28 13:43:32.380004'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-28 13:43:34.676048'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-28 13:43:36.494927'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-28 13:43:36.781386'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-28 13:43:36.927623'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-28 13:43:39.198969'),
(18, 'contacts', '0001_initial', '2021-01-28 13:43:50.498052'),
(19, 'sessions', '0001_initial', '2021-01-28 13:44:15.252228'),
(20, 'contacts', '0002_auto_20210302_1729', '2021-03-02 16:29:33.972136'),
(21, 'contacts', '0003_auto_20210303_1154', '2021-03-03 10:55:00.240011'),
(22, 'contacts', '0004_auto_20210305_1008', '2021-03-05 09:08:50.197877'),
(23, 'contacts', '0005_evenement_uitverkocht', '2021-03-06 13:11:42.234605'),
(24, 'contacts', '0006_auto_20210309_1608', '2021-03-10 09:22:33.977796'),
(25, 'contacts', '0007_auto_20210310_1114', '2021-03-10 10:32:21.326990'),
(26, 'contacts', '0008_auto_20210311_1402', '2021-03-11 13:02:42.621249'),
(27, 'contacts', '0009_auto_20210311_1456', '2021-03-11 13:56:48.028951'),
(28, 'contacts', '0010_auto_20210415_1752', '2021-04-15 15:53:00.672239'),
(29, 'contacts', '0011_auto_20210416_1318', '2021-04-16 11:18:43.431652'),
(30, 'contacts', '0012_auto_20210422_1726', '2021-04-22 15:27:05.496267'),
(31, 'contacts', '0013_auto_20210430_0942', '2021-04-30 07:43:00.528498'),
(32, 'contacts', '0014_verkoop', '2021-05-10 08:59:53.702110'),
(33, 'contacts', '0015_auto_20210510_1039', '2021-05-10 08:59:57.938468'),
(34, 'contacts', '0016_ticket_voorverkoop', '2021-05-10 08:59:58.197637'),
(35, 'contacts', '0017_auto_20210510_1059', '2021-05-10 08:59:58.678988'),
(36, 'contacts', '0018_remove_ticket_slug', '2021-05-10 09:46:59.229558');

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
('0phuzmebpdmko1bna4s9w8o48qltm7if', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lwqGw:nWwMc9Ky8ipUH9jzqm-poIyT-1VRxdnKIIl_1FoDhJ4', '2021-07-09 18:09:46.530690'),
('1t6jyptydymrgnpjtc1vfp1fs0wbxn7t', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lJY0t:RRReMqenbM-wkJKD7jutkmpn83zBF-M-L6Q1SJ2mZP4', '2021-03-23 08:46:47.061562'),
('2fuh37avvvcjih077etn85zro6k7d3of', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKObr:pfqT3iHwJ5r2YsiJJjYBSbS6GjYNpjYGr2gfKAgyLtI', '2021-03-25 16:56:27.805713'),
('2vsvduu7zl79wtd346eqzjb6f71fuju4', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lJfca:2yKQ12XlPFYRINdVE97D6tG2T7h5VlvuWogstaM2DVE', '2021-03-23 16:54:12.832976'),
('402dsyrlz6rdgubv22o8vx9a0u2a5xj3', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1l58zU:GFvU2xBkoX1wcmeKRnqsUUi2SrdP6fdyjnbX66r7bSI', '2021-02-11 15:13:48.829296'),
('4gi5u0um6g1fcpp5jp3rov23ip1cyqz6', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lt7J9:1y2EfFp-HAe3X5qmnWB2jVfifGqgXF_u9VLLpodMSu8', '2021-06-29 11:32:39.458143'),
('4yzylqr0o9shvbl6wj15igills37xm8k', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lrG1V:kXse3Mamd0A-rkQsremsLkh5shvAIYnrvOYoJGf0y_s', '2021-06-24 08:26:45.420417'),
('5b4q5pqijn95o6tthep3i1bawbthgyk2', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lg1lz:U_vurUiGxN8GCDnG4yZ0KMBI5pA0jAPd_zsW1pxYMtc', '2021-05-24 09:00:19.148529'),
('5qmzjc6l4ycqtt4n67xhlju9syfrahkz', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKHUK:M6mJ6iYORLgE-LKiGYz0Xii0SFT7MV77HK7qiUyYN74', '2021-03-25 09:20:12.038536'),
('608hcboypsjjw8aet0llpm7pprsebm1a', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKkaz:GZhf3kZGEKHOhPevXrZuhX40I6zxro8uQGN2dPWfXHg', '2021-03-26 16:25:01.186542'),
('66gigi8nrui14p8wi2z60jrjv8omg0kv', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKa5R:ujJoL5UhPK-L3r9ma-abUhU8ByvSglcTAVv3vLLr9ZM', '2021-03-26 05:11:45.547221'),
('7cbh1693067x086q0fhnml0ftykku116', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lI6Sv:36y6PDQ3msQr7CvNp7gqIa61bGpmazmDOFqo8H5syaA', '2021-03-19 09:09:45.268032'),
('89zcra829m5e849z7juvpnw8wwbcihgd', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1ltASM:Dflb8yh8zNJfyKKCnLorSQZhnvHG7xeMEPWlQPn5FHk', '2021-06-29 14:54:22.848597'),
('8ofauocy27cszhoeibqv86xx551ry50p', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1ljmcw:JaJdyY731aIip5cQ6Ky4l_Uk2qf9E9SKA05SleqIqto', '2021-06-03 17:38:30.552999'),
('bnskbsds55yurxtgmq3wenphyl3w24yf', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lic9o:uaN8DZ22s4qXNyqtpEFxy-ywm6gtlWMXZNJyHj_Buro', '2021-05-31 12:15:36.054134'),
('c0mlllnsu8s0a3g87mddilsio9woeir2', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lic1H:a1xMPl2OJdEilGVfMA8FjQA-ckh3V99pmbT4D3djfLA', '2021-05-31 12:06:47.871935'),
('cwgtwvfz3p1etqsmksqp13z3q72tia2d', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lXMrk:bhb8dyMk_WUNL2uFlNYs88bVfTplmFwScMFn0JtnM5Y', '2021-04-30 11:42:28.863608'),
('dz0ws83kpc4tq3epp0r8vznfvgrrmqgq', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1ll6oP:7vnYp7Ou45yjs2MdSJ-674rEbipl1AlU7qW_r176yoU', '2021-06-07 09:23:49.547256'),
('h66u7gk2nmibft8lwzaj1d0f6njhbi9u', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lwkOG:iwAvDI_02euQXY4Q8uRJ5yxivZElwyp6twqu4Uoxunc', '2021-07-09 11:52:56.701266'),
('h6ldd4um5arz6sum3r1ymjg0yf5vpq2n', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lcNqp:7ug5Ja4-144wLLoiIiwMwFqimPisuySFtSVOD1o0QXM', '2021-05-14 07:46:15.087840'),
('jg1m6wvj5inoqopiz6ljwqo4dqh2ssbi', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lJwqo:iVngKYE6ViMIMet33h8KYTdY5FcX4Hzg3p36JmglhtU', '2021-03-24 11:18:02.021767'),
('k4ss9bddprbfdc0c0vz91qs5hjjq9clj', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lTp5S:Z0Evs6yxKOz5jpOgqj_wlVv9zjJAq6BfPLOwhzggAcQ', '2021-04-20 17:01:58.423301'),
('mnay2zyqnpsr3kgbnfzoqgdv404kz8vn', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lIWp5:-6a3yZINfC8WG2NfGaxYDMf92oldHYmCDvhHwMpx3I0', '2021-03-20 13:18:23.385740'),
('n63a2engx5cllohyc4512mlausnzkkib', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1liboc:LLtQRKybCqX76J80xM689JSUfI43qbfaAqd2KNP-sAU', '2021-05-31 11:53:42.470697'),
('nhqpqu4n2fktqc4mqf67c3rjap1rchg3', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lXMrD:3DXEYIaGBiLMcWWSI_M_Rk4h1S1Tdgmm4uRy25UfYD4', '2021-04-30 11:41:55.572287'),
('nnhbia654newplahb3botplos41keiam', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKNwS:1EL2AUI1R2IpbMQd2khUVEtQjRnLX_-lpBMzKQe2gIc', '2021-03-25 16:13:40.868283'),
('nov8hxuau08qev3szuqaeuj6ivxj1rts', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1l9OTw:Jng33dYFxVu0M-xlZ5irIdWyHHiUP3p7o6_cvgtt-k0', '2021-02-23 08:34:48.937155'),
('nu23qt8ypo3mhkc1fmbkz76xhfbnv4m6', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lKkEh:rgev6vKPLxVLZv4_7OZSW95dgIewqbYy6lqVN4ZJ9VE', '2021-03-26 16:01:59.813848'),
('p3xchj9cajkvrxnjeb2ak90maosvv1ld', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lwkFI:b4IrbXqVVYvTMt16lONEhIGGVjZFj1rQkBRb7GnJC6M', '2021-07-09 11:43:40.914620'),
('rqv34x7vkrgfvttpgvcavbm43algh1h5', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lwkS9:Rc0r3KwZo1FgIXm58ItBuXRoV8PjDgGWj8Nn68Rb6XA', '2021-07-09 11:56:57.603220'),
('sznpjfm5b29u0hpjlkmtv8qxp3e3oean', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lg20Y:neyKMKzxozaO7_gWNJZNMXIwCXmOyvpBdE-nDOWa3e0', '2021-05-24 09:15:22.469740'),
('tfg61dg9wagcxje5w7d40jdeg74zekjg', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1l9k9j:RT5UBdfOdzAm8tyiNGAI-badN6JGb0Kk4PXCG_2izEc', '2021-02-24 07:43:23.536775'),
('tfq5f1w1sljszm8xch48pjrdhiht99h4', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1ljmaX:6h3VlB-Md8dS5CA1XBoeXOxLguNsgQEYy-YEbbT6rWs', '2021-06-03 17:36:01.997372'),
('vto42m3m3xyv0dy8b3nmu462ypvnn406', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lE6Xo:9n1Lvk-lgzz-jquLbh-TTNgUKkit1rl6bogEnpqVEy0', '2021-03-08 08:26:16.920686'),
('w1iykh840h20zp9trryavl1kk9z9mnca', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1lZbGU:pvzAVy6kG5KT3sX_btigQ_vpjWqnHr_t2zIme_OxuAg', '2021-05-06 15:29:14.636031'),
('xqovpnhm3tx32sejw1mlp6sygt8qk8ze', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1liMLl:-vZoUUQYGOClj5jUr3hgXmxISH1nzoZ7Ec3CaujPqnI', '2021-05-30 19:22:53.494425');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contacts_category`
--
ALTER TABLE `contacts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
