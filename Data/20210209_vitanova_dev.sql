-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2021 at 11:52 AM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
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
(56, 'Can view evenement', 14, 'view_evenement');

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
(1, 'pbkdf2_sha256$216000$u83mToVMvnJK$FxIAv9KB4EYnQKKmAcN6M2p0CQl6paNqDBp7JbbdGW0=', '2021-02-09 08:34:48.834709', 1, 'django', '', '', '', 1, 1, '2021-01-28 15:11:18.751434');

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
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `genre`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `bedrag`, `rekening_nr`, `website`, `memo`, `image`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'The Magic Tones', '5', 'l', 0, 1, '0', 0, '0.00', 'NL', '', '', '', 'the-magic-tones', '2020-12-11 11:34:19.000000', '2020-12-11 13:07:00.108361', 2),
(2, 'The Rocking Coasters', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', '', '', 'the-rocking-coasters', '2020-12-11 12:11:45.000000', '2020-12-11 13:07:00.344993', 2),
(3, 'The Rocking Players', '5', '', 0, 1, '2', 0, '750.00', 'NL', '', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', '', 'the-rocking-players', '2020-09-11 10:01:27.000000', '2020-12-11 13:07:00.627899', 2),
(4, 'Blackmail', '33', '', 0, 1, '2', 0, '0.00', 'NL', '', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', '', 'blackmail', '2020-09-11 10:02:27.000000', '2021-01-28 16:15:38.316867', 4),
(5, 'The Streetrollers', '6', 'Indo Rock / 50 ties and 60ties', 1, 1, '2', 0, '650.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'STREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', 'media/The_Streetrollers_001SR2019_def_.jpg', 'the-streetrollers', '2020-09-11 10:03:00.000000', '2020-12-11 13:07:00.851941', 2),
(8, 'Java Guitars Unlimited', '4', 'Medly', 0, 1, '0', 0, '0.00', 'NL', 'http://www.javaguitars.nl', 'Smitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310\r\n\r\nindische@artiesten.club', '', 'java-guitars-unlimited', '2020-09-11 10:10:34.000000', '2020-12-11 13:06:59.574841', 2),
(9, 'Keep on Rocking', '4', 'Rock', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', '', 'keep-on-rocking', '2020-09-11 10:12:18.000000', '2021-01-13 13:28:32.450966', 2),
(10, 'Perwarindo (Wageningen)', '135', 'Angklung orkest', 0, 0, '0', 0, '1999.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '', 'perwarindo-wageningen', '2020-09-11 15:14:16.000000', '2020-12-11 13:06:59.750684', 2),
(12, 'DYD (Den Haag)', '142', 'Angklung Orkest', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', '', 'dyd-den-haag', '2020-09-15 12:32:34.000000', '2020-12-11 13:06:58.815413', 2),
(13, 'Leni Landweer', '1', 'Angklung orkest', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n\r\n06 21241300', '', 'leni-landweer', '2020-09-23 13:32:17.000000', '2020-12-11 13:06:59.690680', 2),
(14, 'Hot News', '6', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', '', '', '', 'hot-news', '2020-10-19 19:07:58.000000', '2020-12-11 13:06:58.949631', 2),
(15, 'Hawaiian Fantasy', '20', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Aantal dansers kan verschillen naar behoefte\r\n\r\nGage € 350,-- / € 650,--', '', 'hawaiian-fantasy', '2020-10-19 19:17:49.000000', '2020-12-11 13:06:58.881458', 2),
(16, 'The Red Pack', '7', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', 'http://www.theredpack.nl', '', '', 'the-red-pack', '2020-10-19 19:41:02.000000', '2020-12-11 13:07:00.226260', 2),
(17, 'Cliff and his Lonestars', '4', 'Rock and Roll - country', 0, 1, '0', 0, '0.00', 'NL', '', 'info@lonestars.nl\r\n\r\nwww.lonestars.nl', '', 'cliff-and-his-lonestars', '2020-11-03 14:49:36.000000', '2021-01-28 15:26:07.022561', 3),
(18, 'The Blue Devils', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'www.thebluedevils.nl', '', 'the-blue-devils', '2020-11-03 14:58:54.000000', '2020-12-11 13:06:59.874586', 2),
(19, 'The Bretels', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'thebretels@hotmail.nl', '', 'the-bretels', '2020-11-03 15:04:56.000000', '2020-12-11 13:06:59.934556', 2),
(20, 'The Cosy Rockers', '6', '50/60 jaren Rock and Roll', 0, 1, '3', 0, '0.00', 'NL', 'http://www.thecosyrockers.nl', '', '', 'the-cosy-rockers', '2020-11-12 20:21:40.000000', '2020-12-11 13:06:59.992482', 2),
(21, 'The Eastern Aces', '5', 'Indo rock - 50/60 jaren', 0, 1, '2', 0, '0.00', 'NL', 'http://www.theeasternaces.com', '', '', 'the-eastern-aces', '2020-11-16 13:15:41.000000', '2020-12-11 13:07:00.050472', 2),
(22, 'The Rocking Drifters', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', 'http://www.therockingdrifters.nl', 'Bandleden:\r\n\r\nHenk Ripzaad - zang rithem gitaar\r\nJo van den Kieboom - drums\r\nTom Janssen - bas - zang\r\nRuud van der Horst - solo gitaar', '', 'the-rocking-drifters', '2020-11-16 13:30:09.000000', '2020-12-11 13:07:00.476092', 2),
(23, 'Straight', '61', 'Country rock - Indo rock', 0, 1, '3', 0, '0.00', 'NL', '', '', '', 'straight', '2020-11-16 13:45:17.000000', '2020-12-11 13:06:59.816796', 2),
(25, 'The Rocking Teens', '3', 'Indo Rock', 0, 1, '1', 0, '0.00', 'NL', '', 'Aantal leden kan verschillen. Ze treden soms op onder de naam The Rocking Teens & Friends', '', 'the-rocking-teens', '2020-11-16 14:08:51.000000', '2020-12-11 13:07:00.751839', 2),
(26, 'Wipe Out Selection', '6', '', 0, 1, '2', 0, '650.00', 'NL', '', 'Richard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', '', 'wipe-out-selection', '2020-12-11 12:47:11.000000', '2020-12-11 13:07:01.179431', 2),
(27, 'The Mordants', '6', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', '', 'the-mordants', '2020-12-11 12:52:02.000000', '2020-12-11 13:07:00.168350', 2);

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
  `image` varchar(100) DEFAULT NULL,
  `memo` longtext NOT NULL,
  `slug` varchar(120) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `voornaam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `image`, `memo`, `slug`, `datum_inserted`, `datum_updated`) VALUES
(2, 'Jan Jansen', '', 'Hoofdstraat 1', '1625DE', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'NL', 0, '', 'Dit is het eerste Lid', 'jan-jansen', '2020-08-19 14:11:37.000000', '2020-12-11 13:06:48.828205'),
(3, 'Jorgen van der Hoeven', 'Jorgen', 'onbekend', 'xxxxyy', 'onbekend', '1235678911', '0611711287', 'j.verhoeven2@chello.nl', 4, 0, 'NL', 0, '', 'Dit is de tweede', 'jorgen-van-der-hoeven', '2020-08-19 14:16:20.000000', '2020-12-11 13:06:49.479587'),
(4, 'Clif Jansen', '', 'Damstraat 6 , 2 Hoog', '1000BD', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 0, 'NL', 1, '', 'Oprichter van de Fanclub \"Cliff and his Loanstars', 'clif-jansen', '2020-08-19 14:23:40.000000', '2020-12-11 13:06:44.959555'),
(5, 'Mike Tomson', '', 'Damstraat 12, 3 hoog', '1000AA', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, 'NL', 0, '', '', 'mike-tomson', '2020-08-19 15:45:28.000000', '2020-12-11 13:06:52.329135'),
(6, 'Toko Yoko', '', 'Tonijnstraat 5', '1200BE', 'Heerhgoward', '0', '0', 'info@tokoyoko.nl', 4, 0, 'NL', 0, '', '', 'toko-yoko', '2020-08-19 15:50:56.000000', '2020-12-11 13:06:57.270772'),
(7, 'Frans Maas', '', 'Korte Straat 6', '9331NL', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, 'NL', 0, '', '', 'frans-maas', '2020-08-19 15:54:01.000000', '2020-12-11 13:06:46.240404'),
(8, 'Christiaan Mulder', '', 'Kerkstraat 10b', '1621CW', 'Hoorn', '229210608', '0', 'info@huisverloren.nl', 9, 3, 'NL', 1, '', '', 'christiaan-mulder', '2020-08-19 18:54:14.000000', '2020-12-11 13:06:44.841629'),
(9, 'Truus Ammeraal', '', 'Grote Oost 58 – 60', '1621BX', 'Hoorn', '22921909', '614179444', 'info@oosterkerk.nl', 9, 3, 'NL', 0, '', '', 'truus-ammeraal', '2020-08-19 18:58:52.000000', '2020-12-11 13:06:57.494553'),
(10, 'Daphne', '', 'Dorpsstraat 175', '1689G', 'Zwaag', '229261473', '620678838', 'info@dewittevalk.nl', 9, 0, 'NL', 1, '', '', 'daphne', '2020-08-19 19:03:25.000000', '2020-12-11 13:06:45.471135'),
(12, 'Eric Alders', '', 'Westerblokker 80', 'onbeke', 'Zwaag', '2292326691', '612345678', 'info@goudenhoofd.nl', 9, 0, 'NL', 0, '', 'm.boersma11@kpnplanet.nl', 'eric-alders', '2020-08-20 22:22:33.000000', '2020-12-11 13:06:46.006611'),
(13, 'CiCi 01', '', 'onbekend', 'xxxxyy', 'onbekend', '123456789', '123498765', 'onbekend@1234.nl', 5, 0, 'NL', 0, '', '', 'cici-01', '2020-08-21 19:24:44.000000', '2020-12-11 13:06:44.899602'),
(14, 'Klaas Singer', '', 'onbekend', 'xxxxyy', 'onbekend', '02295733', '0612345679', 'klaassinger@gmail.com', 7, 0, 'NL', 0, '', 'www.thesixtiesbanddestoel.nl', 'klaas-singer', '2020-08-21 20:33:41.000000', '2020-12-11 13:06:50.013180'),
(15, 'Will Merkx', '', 'onbekend', 'xxxxyy', 'Koog aan de Zaan', '756161681', '650284376', 'h.merkxneyndorff@upcmail.nl', 7, 0, 'NL', 0, '', 'www.blackmail-countrymusic.nl', 'will-merkx', '2020-08-22 19:19:12.000000', '2020-12-11 13:06:57.670582'),
(16, 'Erlo van der Hoeven', '', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '062709210', 'erlo.streetrollers@gmail.com', 7, 0, 'NL', 0, '', 'www.thestreetrollers.webnode.nl/over-ons', 'erlo-van-der-hoeven', '2020-08-22 19:23:29.000000', '2020-12-11 13:06:46.064595'),
(17, 'Brain Leepel', '', 'onbekend', 'xxxxyy', 'Den Helder', '647679948', '628400959', 'labsimons@live.nl', 7, 0, 'NL', 0, '', 'www.wipeoutselection.nl', 'brain-leepel', '2020-08-22 19:41:37.000000', '2020-12-11 13:06:44.490006'),
(18, 'Martin', '', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 7, 0, 'NL', 0, '', 'x', 'martin', '2020-08-23 18:47:21.000000', '2020-12-11 13:06:51.859556'),
(19, 'Lannie dummy', '', 'o', 'xxxxyy', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, 'NL', 0, '', '', 'lannie-dummy', '2020-08-23 19:32:23.000000', '2020-12-11 13:06:50.073125'),
(20, 'Fried Holtkamp', '', 'onbekend', 'xxxxyy', 'Hoorn', '0', '0637166146', 'friedholtkamp@hotmail.com', 4, 0, 'NL', 0, '', 'www.mordants.nl', 'fried-holtkamp', '2020-08-24 16:12:30.000000', '2020-12-11 13:06:46.350344'),
(21, 'Co Bruijns', '', 'onbekend', 'xxxxyy', 'Hoorn', '0229262915', '0683543752', 'cobruijns@hotmail.com', 4, 0, 'NL', 0, '', '', 'co-bruijns', '2020-08-24 16:22:20.000000', '2020-12-11 13:06:45.075545'),
(22, 'Shirley Salomon', '', 'onbekend', 'xxxxyy', 'onbekend', '0', '06 21872413', 'shirleysalomon@gmail.com', 4, 0, 'NL', 0, '', '', 'shirley-salomon', '2020-08-25 12:37:48.000000', '2020-12-11 13:06:56.277707'),
(23, 'George Kwekel', '', 'Smitsweg 51', '3222AG', 'Hellevoetsluis', '1813243106', '612345678', 'indische@artiesten.club', 4, 0, 'NL', 0, '', '', 'george-kwekel', '2020-08-25 12:48:01.000000', '2020-12-11 13:06:47.041990'),
(24, 'Wim Geertman', '', 'onbekend', 'xxxxyy', 'onbekend', '', '06-52 12 55 08', 'wh.geertman@quicknet.nl', 4, 0, 'NL', 1, '', '', 'wim-geertman', '2020-08-25 13:03:48.000000', '2020-12-11 13:06:58.198163'),
(25, 'Peter de Wilde', '', '', '', '', '0228-315 511', '', 'info@foreesterhuis.nl', 0, 0, 'NL', 0, '', '', 'peter-de-wilde', '2020-09-11 14:43:40.000000', '2020-12-11 13:06:54.463327'),
(26, 'Nog onbekend', '', 'Harnjesweg 84', '6706AV', 'Wageningen', '0412624476', '', 'tjio.thea@gmail.com', 0, 0, 'NL', 0, '', '', 'nog-onbekend', '2020-09-11 15:06:58.000000', '2020-12-11 13:06:53.813883'),
(29, 'Martherus', '', '', '', '', '', '', 'andre.martherus@hetnet.nl', 1, 0, 'NL', 0, '', '', 'martherus', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:51.801656'),
(30, 'Andries Posthuma', 'Andriesen', 'dorpstraat 2', '', 'Hoorn', '06 – 35365030', '', 'andriesposthuma@gmail.com', 1, 0, 'NL', 0, '', '', 'andries-posthuma', '2020-09-11 17:44:36.000000', '2021-01-08 13:17:08.100394'),
(32, 'Anneke Duursma', '', '', '', 'Hoorn', '0229 – 216692', '', 'annekeduursma@gmail.com', 1, 0, 'NL', 0, '', 'Dans / Acara / Ok', 'anneke-duursma', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:43.594710'),
(33, 'Anneke Nieuwbuurt', '', '', '', '', '', '', 'annekenieuwbuurt@live.nl', 1, 0, 'NL', 0, '', 'Dans / Acara', 'anneke-nieuwbuurt', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:43.662750'),
(35, 'BepFritz48@gmail.com', '', '', '', '', '', '', 'bepfritz48@gmail.com', 1, 0, 'NL', 0, '', '', 'bepfritz48gmailcom', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:43.846618'),
(36, 'J. Bruisma', '', '', '', '', '', '', 'bruinsmajopie@gmail.com,', 0, 0, 'NL', 0, '', '', 'j-bruisma', '2020-09-11 17:44:37.691152', '2020-12-11 13:06:48.710293'),
(37, 'Sebastiaan kahle', '', '', '1623rk', 'Hoorn', '', '', 'carenbas@gmail.com', 1, 0, 'NL', 0, '', '', 'sebastiaan-kahle', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:56.209790'),
(38, 'Carla Overtoom', '', '', '', '', '', '', 'carlalovesalsa@hotmail.com', 1, 0, 'NL', 0, '', 'Dans / Acara', 'carla-overtoom', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:44.665811'),
(39, 'Carmen Bali', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'carmen-bali', '2020-09-11 17:44:38.000000', '2020-12-11 13:06:44.723934'),
(40, 'Cees', '', '', '', '', '', '', 'cjmsmit@zonnet.nl', 1, 0, 'NL', 0, '', '', 'cees', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:44.783725'),
(41, 'C. Lokker', '', '', '', '', '06-83860736', '', 'clokker1960@hotmail.com', 1, 0, 'NL', 0, '', '', 'c-lokker', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:44.605865'),
(42, 'M. De Niet', '', '', '', '', '', '', 'denietmarleen@gmail.com', 1, 0, 'NL', 0, '', '', 'm-de-niet', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:51.240105'),
(43, 'E.HartmanKoh', '', '', '', '', '06 – 53421819', '', 'e.hartmankokgome2@quicknet.nl', 1, 0, 'NL', 0, '', '', 'ehartmankoh', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:45.772885'),
(44, 'E.Manuhutu', '', '', '', 'Haarlem', '', '', 'e.manuhutu@upcmail.nl', 1, 0, 'NL', 0, '', '', 'emanuhutu', '2020-09-11 17:48:48.000000', '2020-12-11 13:06:45.830822'),
(45, 'Eddy Cretier', '', '', '', '', '', '', 'eh.cretier@planet.nl', 1, 0, 'NL', 0, '', '', 'eddy-cretier', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.888797'),
(46, 'E. Keet', '', '', '', '', '', '', 'emj.keet@hetnet.nl', 1, 0, 'NL', 0, '', '', 'e-keet', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.712965'),
(47, 'Endang Stoke', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'endang-stoke', '2020-09-11 17:48:49.000000', '2020-12-11 13:06:45.946638'),
(48, 'Stulp', '', '', '', 'Hoorn', '06 – 33864333', '', 'froukstulp@hotmail.com', 1, 0, 'NL', 0, '', '', 'stulp', '2020-09-11 17:51:28.000000', '2020-12-11 13:06:56.461658'),
(49, 'G. S. Stelling', '', '', '', '', '06-55812690', '', 'gustaaf_stelling@hotmail.com', 1, 0, 'NL', 0, '', '', 'g-s-stelling', '2020-09-11 17:51:28.000000', '2020-12-11 13:06:46.416451'),
(50, 'Anne Mieke Baudain', '', '', '', 'Hoorn', '', '', 'helderzienhoorn@gmail.com', 1, 0, 'NL', 0, '', '', 'anne-mieke-baudain', '2020-09-11 17:51:29.000000', '2020-12-11 13:06:43.528959'),
(51, 'H P Brandsma', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'h-p-brandsma', '2020-09-11 17:51:29.000000', '2020-12-11 13:06:47.249582'),
(52, 'Huib Kneepkens', '', '', '', 'Amsterdam', '06 –  83715923', '', 'huibkneepkens@hotmail.com', 1, 0, 'NL', 0, '', '', 'huib-kneepkens', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:47.625281'),
(53, 'Martin en Ineke Janssen', '', '', '', '', '', '', 'ienepien52@hotmail.com', 1, 0, 'NL', 0, '', '', 'martin-en-ineke-janssen', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:51.917618'),
(54, 'Irma Hollander', '', '', '1507nh', 'Zaandam', '', '', 'irmahollander@kpnmail.nl', 1, 0, 'NL', 0, '', '', 'irma-hollander', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:48.654350'),
(55, 'Bron', 'Jenny', '', '1506KP', 'Zaandam', '', '', 'j.bronq@upcmail.nl', 1, 0, 'NL', 0, '', '', 'bron', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:44.547944'),
(56, 'Joke. F. Neijman (Harrij)', '', '', '', 'Hoorn', '0229 – 243177', '', 'jfnvdb@gmail.com', 1, 0, 'NL', 0, '', '', 'joke-f-neijman-harrij', '2020-09-11 17:54:14.000000', '2021-01-03 14:19:44.236282'),
(57, 'Jimmyjohn704', '', '', '', '', '', '', 'jimmyjohn704@hotmail.com', 1, 0, 'NL', 0, '', '', 'jimmyjohn704', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.946220'),
(58, 'Jimmy Schaper', '', '', '', 'hoorn', '', '', 'jimmyschaper@yahoo.co.uk', 1, 0, 'NL', 0, '', '', 'jimmy-schaper', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.886127'),
(59, 'John van der Beek', '', '', '', 'Haarlem', '023 – 5376398', '', 'john.vanderbeek@', 0, 0, 'NL', 0, '', '', 'john-van-der-beek', '2020-09-11 17:54:15.411938', '2020-12-11 13:06:49.063358'),
(60, 'Jose Hooper', '', '', '1628ev', 'Hoorn', '', '', 'josehooper52@gmail.com', 1, 0, 'NL', 0, '', '', 'jose-hooper', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:49.537647'),
(61, 'Inge Klaver', '', '', '1695cb', 'Blokker', '', '', 'klaverkho@hotmail.com', 1, 0, 'NL', 0, '', '', 'inge-klaver', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:48.335031'),
(62, 'R. van Ginkel', '', '', '', '', '06 – 42631961', '', 'kyokosusan@hotmail.com', 1, 0, 'NL', 0, '', '', 'r-van-ginkel', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:55.006839'),
(63, 'Toko Lanny', '', '', '', '', '', '', 'Lanny@123.nl', 1, 0, 'NL', 0, '', '', 'toko-lanny', '2020-09-11 17:54:15.000000', '2020-12-11 13:06:56.911151'),
(64, 'Lindi', '', '', '', '', '', '', 'lindi@ziggo.nl', 1, 0, 'NL', 0, '', '', 'lindi', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:50.580691'),
(65, 'Louise Postma Bongers', '', '', '', '', '', '', 'louise_post@hotmail.com', 1, 0, 'NL', 0, '', '', 'louise-postma-bongers', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.016363'),
(66, 'Gan', '', '', '1621mp', 'Hoorn', '', '', 'lout.anke@gmail.com', 1, 0, 'NL', 0, '', '', 'gan', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:46.750285'),
(67, 'Luana Narua', '', '', '1629zd', 'Hoorn', '', '', 'luananarua@hotmail.com', 1, 0, 'NL', 0, '', '', 'luana-narua', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.124206'),
(68, 'Luuk Franke', '', '', '', '', '06-30797229', '', 'luukfranke@gmail.com', 1, 0, 'NL', 0, '', '', 'luuk-franke', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.182148'),
(69, 'Monique Coers', '', '', '', '', '06-30761180', '', 'm.coers@pelita.nl', 1, 0, 'NL', 0, '', '', 'monique-coers', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:52.630976'),
(70, 'm.a.h. rooijen', '', '', '', '', '', '', 'mah.vrooijen@quicknet.nl', 1, 0, 'NL', 0, '', '', 'mah-rooijen', '2020-09-11 17:54:16.000000', '2020-12-11 13:06:51.635719'),
(71, 'Harrij. J. Pattiradjawane', '', '', '', '', '', '', 'makaui2@hotmail.com', 1, 0, 'NL', 0, '', '', 'harrij-j-pattiradjawane', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:47.367512'),
(72, 'Kampfraat', '', '', '', '', '', '', 'marjonkampfraat@hotmail.com', 1, 0, 'NL', 0, '', '', 'kampfraat', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:49.955221'),
(73, 'M. Hoorn', '', '', '1718az', 'Hoogwoud', '', '', 'mate-1947@hotmail.com', 1, 0, 'NL', 0, '', '', 'm-hoorn', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:51.300062'),
(74, 'Nani de Ruiter', '', '', '1625hd', 'Hoorn', '', '', 'nanideruiter@kpnmail.nl', 1, 0, 'NL', 0, '', '', 'nani-de-ruiter', '2020-09-11 17:54:17.000000', '2020-12-11 13:06:52.790834'),
(75, 'Nel ter Woort', '', '', '', '', '', '', 'nelbakker@msn.com', 1, 0, 'NL', 0, '', '', 'nel-ter-woort', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:52.984870'),
(76, 'Nelly Kaayk', '', '', '', 'Hoorn', '06 – 46912428', '', 'nelly.kaayk@quicknet.nl', 1, 0, 'NL', 0, '', '', 'nelly-kaayk', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:53.236459'),
(77, 'O. Coenraad', '', '', '', '', '0229-239357', '', 'ottonel20@gmail.com', 1, 0, 'NL', 0, '', '', 'o-coenraad', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:53.945735'),
(78, 'Paul Nijhof', '', '', '', '', '', '', 'paulnijhof47@gmail.com', 1, 0, 'NL', 0, '', '', 'paul-nijhof', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.053708'),
(79, 'Peter de Rooij', '', '', '', '', '', '', 'pgmderooij@gmail.com', 1, 0, 'NL', 0, '', '', 'peter-de-rooij', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.163629'),
(80, 'Pia van de Broek', '', '', '', '', '', '', 'piavandenbroek@hotmail.com', 1, 0, 'NL', 0, '', '', 'pia-van-de-broek', '2020-09-11 17:54:18.000000', '2020-12-11 13:06:54.521273'),
(81, 'Roland Eilbracht', '', '', '', '', '06 – 38509900', '', 'r.d.eilbracht@casema.nl', 1, 0, 'NL', 0, '', '', 'roland-eilbracht', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.266777'),
(82, 'R. Schenk', '', '', '', '', '', '', 'r.schenk@quicknet.nl', 1, 0, 'NL', 0, '', '', 'r-schenk', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:54.948904'),
(83, 'Richard Monkau', '', '', '', 'Hoorn', '', '', 'richard.monkau@gmail.com', 1, 0, 'NL', 0, '', '', 'richard-monkau', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.148760'),
(84, 'Rita Doest', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'rita-doest', '2020-09-11 17:54:19.000000', '2020-12-11 13:06:55.208680'),
(85, 'Rosita Bongers', '', '', '', '', '', '', 'rositabongers@hotmail.com', 1, 0, 'NL', 0, '', '', 'rosita-bongers', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:55.708285'),
(86, 'Hulst', '', '', '', '', '', '', 'rshulst@hotmail.com', 1, 0, 'NL', 0, '', '', 'hulst', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:48.026820'),
(87, 'R. J. van Eldik', '', '', '', '', '', '', 'ruudvaneldik@gmail.com', 1, 0, 'NL', 0, '', '', 'r-j-van-eldik', '2020-09-11 17:56:23.000000', '2020-12-11 13:06:54.839042'),
(88, 'Saninda', '', '', '', 'Medemblik', '06 – 52362914', '', 'Sarinda123@hotmail.nl', 1, 0, 'NL', 0, '', '', 'saninda', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.143872'),
(89, 'Stoffels', '', '', '', '', '', '', 'stoffelsc@ziggo.nl', 1, 0, 'NL', 0, '', '', 'stoffels', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.409536'),
(90, 'Sylvia Leyting', 'Sylvia en', '', '1628xr', '', '06 – 50129692', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', '', 'sylvia-leyting', '2020-09-11 17:56:24.000000', '2020-12-11 13:06:56.775360'),
(91, 'F. S. Leijting (Sylvia)', 'Sylvia', '', '1628xr', 'Hoorn', '', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', '', 'f-s-leijting-sylvia', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:46.122501'),
(92, 'Wim Daniels', '', '', '1628gx', 'Hoorn', '', '', 'tdanielse@quicknet.nl', 1, 0, 'NL', 0, '', '', 'wim-daniels', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:58.048188'),
(93, 'Trouwerbach', '', '', '1695hr', 'Blokker', '', '', 'trouwerbach@quicknet.nl', 1, 0, 'NL', 0, '', '', 'trouwerbach', '2020-09-11 17:56:25.000000', '2020-12-11 13:06:57.436880'),
(94, 'Loek en Narda van Lochem', '', '', '', '', '', '', 'vanlochems@planet.nl', 1, 0, 'NL', 0, '', '', 'loek-en-narda-van-lochem', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:50.640648'),
(95, 'W. S. Figueira', '', '', '', 'Alkmaar', '072 – 5649219', '', 'w.figueira@upcmail.nl', 1, 0, 'NL', 0, '', '', 'w-s-figueira', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:57.554603'),
(96, 'w.niklaas', '', '', '', '', '', '', 'w.niklaas@gmail.com', 1, 0, 'NL', 0, '', '', 'wniklaas', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:57.612636'),
(97, 'M. O. vd Waa-Meents', '', '', '1628gx', 'Hoorn', '', '', 'waaza@quicknet.nl', 1, 0, 'NL', 0, '', '', 'm-o-vd-waa-meents', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:51.358115'),
(98, 'J.Bothe', '', '', '1695am', 'Blokker', '', '', '', 1, 0, 'NL', 0, '', '', 'jbothe', '2020-09-11 17:56:26.000000', '2020-12-11 13:06:48.770318'),
(99, 'xxxhoeven', '', '', '', 'Assendelft', '', '', '', 1, 0, 'NL', 0, '', '', 'xxxhoeven', '2020-09-11 17:56:27.000000', '2020-12-11 13:06:58.505967'),
(100, 'Ankie Ten Haaf', 'Ankie', '', '1624TH', 'Hoorn', '', '', '', 1, 0, 'NL', 0, '', '', 'ankie-ten-haaf', '2020-09-11 17:56:27.000000', '2021-01-08 13:19:18.425003'),
(101, 'Joke/Harrij Neijman', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'jokeharrij-neijman', '2020-09-11 17:56:27.000000', '2020-12-11 13:06:49.421716'),
(103, 'Henny Mulsch', '', '', '1689sm', 'Zwaag', '', '', '', 1, 0, 'NL', 0, '', '', 'henny-mulsch', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:47.433379'),
(104, 'Ben /Naney', '', '', '1687pb', 'wognum', '', '', '', 1, 0, 'NL', 0, '', '', 'ben-naney', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:43.794589'),
(105, 'Lily vd Berg', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'lily-vd-berg', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:50.456841'),
(106, 'Loet', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'loet', '2020-09-11 17:56:28.000000', '2020-12-11 13:06:50.706614'),
(107, 'niet ingevuld', '', '', '', '', '06 – 23131394', '', '', 0, 0, 'NL', 0, '', '', 'niet-ingevuld', '2020-09-11 17:56:28.938808', '2020-12-11 13:06:53.687893'),
(108, 'Hoeven', '', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', 'hoeven', '2020-09-11 17:56:29.000000', '2020-12-11 13:06:47.559281'),
(109, 'Franky Harmusil', '', '', '', 'Den Haag en omstreken ?', '0412624476', '06 46598547', 'dansayokdansa@gmail.com', 6, 0, 'NL', 0, '', 'www.dansayokdansa.nl', 'franky-harmusil', '2020-09-15 11:32:17.000000', '2020-12-11 13:06:46.182526'),
(110, 'Nog onbekend', '', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '', 'nog-onbekend', '2020-09-15 12:35:55.000000', '2020-12-11 13:06:53.879791'),
(111, 'leni Landweer (Angklung)', '', '', '', '', '', '0621241300', 'lenilandweer@gmail.com', 0, 0, 'NL', 0, '', 'Angklung\r\n\r\nLeni Landweer\r\n0621241300\r\nwww.pesonaculture.com\r\nwww.angklung.nl', 'leni-landweer-angklung', '2020-09-15 13:22:32.000000', '2020-12-11 13:06:50.139260'),
(113, 'Piet Danse', '', '', '', '', '', '06-2939320', '', 0, 0, 'NL', 0, '', 'Contact persoon  gelegenheids-band (Ramona).\r\n\r\nTelefoonnummer is niet compleet.', 'piet-danse', '2020-10-14 20:10:58.000000', '2020-12-11 13:06:54.581306'),
(114, 'Junius', '', 'onbekend', '', '', '', '06 54746285', 'junius_tiareotahiti@hotmail.com', 0, 0, 'NL', 0, '', '', 'junius', '2020-10-19 19:13:49.000000', '2020-12-11 13:06:49.897243'),
(115, 'René Bes', '', 'onbekend', '', '', '', '06 22170099', 'info@theredpack.nl', 0, 0, 'NL', 0, '', 'Bes promotions\r\n\r\nwww.theredpack.nl', 'rene-bes', '2020-10-19 19:36:24.000000', '2020-12-11 13:06:55.084347'),
(116, 'Cliff Breton van Groll', '', 'onbekend', '', '', '', '06 42725412', 'info@lonestars.nl', 7, 0, 'NL', 0, '', '', 'cliff-breton-van-groll', '2020-11-03 14:45:55.000000', '2020-12-11 13:06:45.017541'),
(117, 'Dick', '', 'onbekend', '', '', '', '06 58890342', 'thebluedevils@gmail.com', 7, 0, 'NL', 0, '', '', 'dick', '2020-11-03 14:56:30.000000', '2020-12-11 13:06:45.654990'),
(118, 'onbekend', '', '', '', '', '', '06 23981063', '', 0, 0, 'NL', 0, '', '', 'onbekend', '2020-11-03 15:02:35.000000', '2020-12-11 13:06:53.997694'),
(119, 'Stichting het gehandicapte kind', '', 'Wibautstraat 212-214', '1091GS', 'Amsterdam', '020-6791200', '', '', 2, 0, 'NL', 0, 'media/Screenshot_20201110-114132_NHD_digikrant_QGi7aDr.jpg', 'het Gehandicapte Kind\r\nWibautstraat 212-214\r\n1091 GS Amsterdam\r\n  Tel. 020-6791200\r\nFacebook Instagram Youtube Twitter \r\nBankrekening\r\nIBAN: NL76 RABO 0334 4334 44\r\nKvK nummer\r\nS 41199157\r\nBTW nummer\r\n0029. 59.173.B.01', 'stichting-het-gehandicapte-kind', '2020-11-10 10:46:49.000000', '2020-12-11 13:06:56.343619'),
(122, 'Ron Bruin', 'Ron', 'onbekend', '', '', '', '06 25021257', '', 0, 0, 'NL', 0, '', '', 'ron-bruin', '2020-11-12 20:19:45.000000', '2020-12-11 13:06:55.576556'),
(123, 'Frans v.d. Brand Horninge', 'Frans', '', '', '', '', '06 46242584', 'lookatfrans@ziggo.nl', 7, 0, 'NL', 0, '', '2e contact:  Carl Tentua\r\n0181 214360', 'frans-vd-brand-horninge', '2020-11-16 13:12:14.000000', '2020-12-11 13:06:46.298367'),
(124, 'Tom Janssen', 'Tom', '', '', '', '', '06 57907943', 'rockingdrifters@gmail.com', 0, 0, 'NL', 0, '', '', 'tom-janssen', '2020-11-16 13:27:53.000000', '2020-12-11 13:06:57.378790'),
(125, 'Huib Severijn', 'Huib', '', '', '', '', '06 17383473', 'severijnhc@gmail.com', 0, 0, 'NL', 0, '', 'Opgericht december 1999', 'huib-severijn', '2020-11-16 13:42:44.000000', '2020-12-11 13:06:47.693340'),
(126, 'Harold Rosso', 'Harold', '', '', '', '087 7847093', '', 'haroldrosso@gmail.com', 0, 0, 'NL', 0, '', '', 'harold-rosso', '2020-11-16 13:53:52.000000', '2020-12-11 13:06:47.307521'),
(127, 'Arie Mosies', 'Arie', '', '', '', '076 872461', '06 83593788', 'ariemosies@gmail.com', 0, 0, 'NL', 0, '', '', 'arie-mosies', '2020-11-16 14:06:44.000000', '2020-12-11 13:06:43.728664'),
(128, 'Julian Sieben', 'Julian', '', '', '', '', '06 83386140', '', 0, 0, 'NL', 0, '', 'contact via messenger\r\nm.me/The RockingCoasters', 'julian-sieben', '2020-11-16 14:28:39.000000', '2020-12-11 13:06:49.789639'),
(129, 'Hessels', 'Corrie', 'Dijkgraaf IJffstraat 49', '1566JZ', 'Assendelft', '', '06 22538939', 'corriehessels@upcmail.nl', 9, 0, 'NL', 0, '', '', 'hessels', '2020-11-21 19:51:57.000000', '2020-12-11 13:06:47.491373'),
(130, 'Groen', '', '', '', '', '0229505964', '', '', 1, 0, 'NL', 0, '', 'Canceled : Had voor Line dance 6 kaartjes besteld', 'groen', '2020-11-22 12:27:40.000000', '2020-12-11 13:06:47.183654'),
(131, 'Bieri', 'Franklin', 'Gording 112', '1628JG', 'Hoorn', '0229', '06-83351218', 'adoe_adoe@outlook.com', 9, 0, 'NL', 0, '', '', 'bieri', '2020-12-01 15:48:51.000000', '2020-12-11 13:06:44.431955'),
(132, 'Co Bruijns', 'Cor', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '', 'co-bruijns', '2020-12-11 12:53:53.000000', '2020-12-11 13:06:45.185432'),
(141, 'Jaap Karsel', 'Jaap', 'dorpstraat 1', '1647ME', 'Berkhout', '', '06-1234512345', '', 0, 0, 'NL', 0, '', '', 'jaap-karsel', '2021-01-08 15:02:39.817034', '2021-01-08 15:04:10.315225');

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
  `locatie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `opbrengst`, `zitplaatsen`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`) VALUES
(1, 'Kumpulan', '2020-08-30 12:30:00.000000', '14:30:00.000000', '17:30:00.000000', '14:00:00.000000', 'Nationaal Indische dag', '17.50', '15.00', '0.00', '100', '', '', 'slug', '2020-09-14 15:41:21.000000', '2020-09-14 15:41:21.000000', 2, 9, 2, 3),
(2, 'Angkloon concert', '2021-03-31 22:00:00.000000', '13:30:00.000000', '16:30:00.000000', '13:00:00.000000', 'Concert + workshop', '17.50', '14.99', '780.00', '65', '', '', 'angkloon-concert', '2021-01-08 22:32:31.000000', '2021-01-08 22:49:46.813516', 2, 8, 2, 2);

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
(7, 'Foreesterhuis', '1621BR', 'Grote Oost 43', 'Hoorn', '0228 315 511', 'http://www.foreesterhuis.nl', 1, 0, 0, 0, '2021-01-06', 'foreesterhuis', '2020-09-11 14:53:33.000000', '2021-01-06 19:27:57.009664', 25);

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
(19, 'sessions', '0001_initial', '2021-01-28 13:44:15.252228');

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
('402dsyrlz6rdgubv22o8vx9a0u2a5xj3', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1l58zU:GFvU2xBkoX1wcmeKRnqsUUi2SrdP6fdyjnbX66r7bSI', '2021-02-11 15:13:48.829296'),
('nov8hxuau08qev3szuqaeuj6ivxj1rts', '.eJxVjDsOwjAQRO_iGln-bGxMSc8ZrF3vCgeQI8VJhbg7iZQCutG8N_NWGdel5rXLnEdWF2XV6bcjLE9pO-AHtvuky9SWeSS9K_qgXd8mltf1cP8OKva6rcVKGHxgb8gksS6wiQmsAEB0hWKxwJjOzHELFDwMJFh8NI4cBSL1-QLN3De8:1l9OTw:Jng33dYFxVu0M-xlZ5irIdWyHHiUP3p7o6_cvgtt-k0', '2021-02-23 08:34:48.937155');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
