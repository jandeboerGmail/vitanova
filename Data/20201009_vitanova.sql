-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 09, 2020 at 02:42 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(60, 'Can view band leden', 15, 'view_bandleden');

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
  `first_name` varchar(30) NOT NULL,
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
(1, 'pbkdf2_sha256$216000$u2WSpblPN0xP$Hdm+frIP+e8YybPBlnn3cimTXYcb9lCFL99zFVGrUmg=', '2020-10-09 12:38:21.070067', 1, 'vitanova', '', '', 'jandeboer@gmail.com', 1, 1, '2020-09-11 08:18:39.181810'),
(2, 'pbkdf2_sha256$216000$oTQfpeJVHEKn$uFLGT5zzSIV9SdwiCEqN7hDj6f2arT9EYsM5i940DI0=', '2020-10-05 20:55:09.789216', 1, 'franklin', 'Franklin', 'Bieri', 'franklin.bieri@gmail.com', 1, 1, '2020-09-11 14:28:53.000000'),
(3, 'pbkdf2_sha256$180000$RMEdIuqDaB53$k2PxktLS4e/yLqQ1ctoWeivFvNxzif649AqQihAzF0U=', '2020-09-24 12:31:03.285457', 1, 'Corrie', '', '', '', 1, 1, '2020-09-15 12:09:06.000000');

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
  `image` varchar(100) DEFAULT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `bedrag`, `rekening_nr`, `website`, `memo`, `image`, `datum_inserted`, `datum_updated`, `contact_id`, `genre`) VALUES
(1, 'The Magic Tones', '5', 0, 1, '0', 0, '0.00', 'NL', '', '', '', '2020-09-11 09:59:51.000000', '2020-09-11 09:59:51.000000', 2, ''),
(2, 'De Stoel', '5', 0, 1, '0', 0, '0.00', 'NL', '', '', '', '2020-09-11 10:00:53.000000', '2020-09-11 10:00:53.000000', 14, ''),
(3, 'The Rocking Payers', '5', 0, 1, '2', 0, '750.00', 'NL', '', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', '', '2020-09-11 10:01:27.000000', '2020-09-11 10:01:27.000000', 3, ''),
(4, 'Blackmail', '3', 0, 1, '2', 0, '0.00', 'NL', '', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', '', '2020-09-11 10:02:27.000000', '2020-09-11 10:02:27.000000', 15, ''),
(5, 'The Streetrollers', '6', 1, 1, '2', 0, '650.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'STREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', 'media/The_Streetrollers_001SR2019_def_.jpg', '2020-09-11 10:03:00.000000', '2020-09-11 10:03:00.000000', 16, 'Indo Rock / 50 ties and 60ties'),
(6, 'Wipe Out Selection', '6', 0, 1, '2', 0, '650.00', 'NL', '', 'Richard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', '', '2020-09-11 10:04:07.000000', '2020-09-11 10:04:07.000000', 17, ''),
(7, 'The Mordants', '6', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', '', '2020-09-11 10:04:58.000000', '2020-09-11 10:04:58.000000', 21, ''),
(8, 'Java Guitars Unlimited', '4', 0, 1, '0', 0, '0.00', 'NL', 'http://www.javaguitars.nl', 'Smitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310', '', '2020-09-11 10:10:34.000000', '2020-09-11 10:10:34.000000', 22, 'Medly'),
(9, 'Keep on Rocking', '4', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', '', '2020-09-11 10:12:18.000000', '2020-09-11 10:12:18.000000', 23, 'Rock'),
(10, 'Perwarindo (Wageningen)', '135', 0, 0, '0', 0, '1999.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '', '2020-09-11 15:14:16.000000', '2020-09-11 15:14:16.000000', 26, 'Angklung orkest'),
(12, 'DYD (Den Haag)', '142', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', '', '2020-09-15 12:32:34.000000', '2020-09-15 12:32:34.000000', 109, 'Angklung Orkest'),
(13, 'Leni Landweer', '1', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n\r\n06 21241300', '', '2020-09-23 13:32:17.000000', '2020-09-23 13:32:17.000000', 111, 'Angklung orkest');

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
  `catering_prijs` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `rekening_nr`, `website`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `catering_prijs`) VALUES
(1, 'Toko Yoko', 'Indonesisch', 'NL', '', 'Laatste keer goed', '2020-08-19 15:50:19.000000', '2020-08-19 15:50:19.000000', 6, '0.00'),
(2, 'Dapur Jomy', 'Indisch / Indonesch', 'NL', 'https://www.facebook.com/Dapur-Jomy-104000084682444/', 'Iedere week een ander menu\r\n\r\nhttps://www.oozo.nl/bedrijven/drechterland/venhuizen/centrum-venhuizen/2001138/dapur-jomy', '2020-08-19 19:07:08.000000', '2020-08-19 19:07:08.000000', 11, '0.00'),
(3, 'Toko2Way', 'Indisch', 'NL', '', '', '2020-08-21 19:31:58.000000', '2020-08-21 19:31:58.000000', 13, '0.00'),
(4, 'Toko Lannie', 'Indisch', 'NL', '', '', '2020-08-23 19:30:46.000000', '2020-08-23 19:30:46.000000', 19, '0.00'),
(5, 'Chinese Garden', 'Chinees / hollandse pot', 'NL', '', 'Testje', '2020-08-24 17:33:37.000000', '2020-08-24 17:33:37.000000', 3, '0.00');

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
  `image` varchar(100) DEFAULT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `image`, `memo`, `datum_inserted`, `datum_updated`) VALUES
(2, 'Jan Jansen', 'Hoofdstraat 1', '1625DE', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'NL', 0, NULL, 'Dit is het eerste Lid', '2020-08-19 14:11:37.000000', '2020-08-19 14:11:37.000000'),
(3, 'Jorgen van der Hoeven', 'onbekend', 'xxxxyy', 'onbekend', '1235678911', '611711287', 'j.verhoeven2@chello.nl', 4, 0, 'NL', 0, NULL, 'Dit is de tweede', '2020-08-19 14:16:20.000000', '2020-08-19 14:16:20.000000'),
(4, 'Clif Jansen', 'Damstraat 6 , 2 Hoog', '1000BD', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 0, 'NL', 1, NULL, 'Oprichter van de Fanclub \"Cliff and his Loanstars', '2020-08-19 14:23:40.000000', '2020-08-19 14:23:40.000000'),
(5, 'Mike Tomson', 'Damstraat 12, 3 hoog', '1000AA', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:45:28.000000', '2020-08-19 15:45:28.000000'),
(6, 'Toko Yoko', 'Tonijnstraat 5', '1200BE', 'Heerhgoward', '0', '0', 'info@tokoyoko.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:50:56.000000', '2020-08-19 15:50:56.000000'),
(7, 'Frans Maas', 'Korte Straat 6', '9331NL', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:54:01.000000', '2020-08-19 15:54:01.000000'),
(8, 'Christiaan Mulder', 'Kerkstraat 10b', '1621CW', 'Hoorn', '229210608', '0', 'info@huisverloren.nl', 9, 3, 'NL', 1, '', '', '2020-08-19 18:54:14.000000', '2020-08-19 18:54:14.000000'),
(9, 'Truus Ammeraal', 'Grote Oost 58 – 60', '1621BX', 'Hoorn', '22921909', '614179444', 'info@oosterkerk.nl', 9, 3, 'NL', 0, '', '', '2020-08-19 18:58:52.000000', '2020-08-19 18:58:52.000000'),
(10, 'Daphne', 'Dorpsstraat 175', '1689G', 'Zwaag', '229261473', '620678838', 'info@dewittevalk.nl', 9, 0, 'NL', 1, '', '', '2020-08-19 19:03:25.000000', '2020-08-19 19:03:25.000000'),
(11, 'Amy Fosss', 'Onbekend', '1000AA', 'Onbekend', '653134683', '648606828', 'info@onbekend.nl', 5, 0, 'NL', 0, '', '', '2020-08-19 19:07:31.000000', '2020-08-19 19:07:31.000000'),
(12, 'Eric Alders', 'Westerblokker 80', 'onbeke', 'Zwaag', '2292326691', '612345678', 'info@goudenhoofd.nl', 9, 0, 'NL', 0, '', 'm.boersma11@kpnplanet.nl', '2020-08-20 22:22:33.000000', '2020-08-20 22:22:33.000000'),
(13, 'CiCi 01', 'onbekend', 'xxxxyy', 'onbekend', '123456789', '123498765', 'onbekend@1234.nl', 5, 0, 'NL', 0, '', '', '2020-08-21 19:24:44.000000', '2020-08-21 19:24:44.000000'),
(14, 'Klaas Singer', 'onbekend', 'xxxxyy', 'onbekend', '02295733', '0612345679', 'klaassinger@gmail.com', 7, 0, 'NL', 0, '', 'www.thesixtiesbanddestoel.nl', '2020-08-21 20:33:41.000000', '2020-08-21 20:33:41.000000'),
(15, 'Will Merkx', 'onbekend', 'xxxxyy', 'Koog aan de Zaan', '756161681', '650284376', 'h.merkxneyndorff@upcmail.nl', 7, 0, 'NL', 0, '', 'www.blackmail-countrymusic.nl', '2020-08-22 19:19:12.000000', '2020-08-22 19:19:12.000000'),
(16, 'Erlo van der Hoeven', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '062709210', 'erlo.streetrollers@gmail.com', 7, 0, 'NL', 0, '', 'www.thestreetrollers.webnode.nl/over-ons', '2020-08-22 19:23:29.000000', '2020-08-22 19:23:29.000000'),
(17, 'Brain Leepel', 'onbekend', 'xxxxyy', 'Den Helder', '647679948', '628400959', 'labsimons@live.nl', 7, 0, 'NL', 0, '', 'www.wipeoutselection.nl', '2020-08-22 19:41:37.000000', '2020-08-22 19:41:37.000000'),
(18, 'Martin', 'onbekend', 'xxxxyy', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 7, 0, 'NL', 0, '', 'x', '2020-08-23 18:47:21.000000', '2020-08-23 18:47:21.000000'),
(19, 'Lannie dummy', 'o', 'xxxxyy', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, 'NL', 0, '', '', '2020-08-23 19:32:23.000000', '2020-08-23 19:32:23.000000'),
(20, 'Fried Holtkamp', 'onbekend', 'xxxxyy', 'Hoorn', '0', '0637166146', 'friedholtkamp@hotmail.com', 4, 0, 'NL', 0, '', 'www.mordants.nl', '2020-08-24 16:12:30.000000', '2020-08-24 16:12:30.000000'),
(21, 'Co Bruijns', 'onbekend', 'xxxxyy', 'Hoorn', '0229262915', '0683543752', 'cobruijns@hotmail.com', 4, 0, 'NL', 0, '', '', '2020-08-24 16:22:20.000000', '2020-08-24 16:22:20.000000'),
(22, 'Shirley Salomon', 'onbekend', 'xxxxyy', 'onbekend', '0', '612345678', 'shirley@thehotnews.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-25 12:37:48.000000', '2020-08-25 12:37:48.000000'),
(23, 'George Kwekel', 'Smitsweg 51', '3222AG', 'Hellevoetsluis', '1813243106', '612345678', 'indische@artiesten.club', 4, 0, 'NL', 0, NULL, '', '2020-08-25 12:48:01.000000', '2020-08-25 12:48:01.000000'),
(24, 'Wim Geertman', 'onbekend', 'xxxxyy', 'onbekend', '123456789', '06-52 12 55 08', 'wh.geertman@quicknet.nl', 4, 0, 'NL', 1, '', '', '2020-08-25 13:03:48.000000', '2020-08-25 13:03:48.000000'),
(25, 'Peter de Wilde', '', '', '', '0228-315 511', '', 'info@foreesterhuis.nl', 0, 0, 'NL', 0, '', '', '2020-09-11 14:43:40.000000', '2020-09-11 14:43:40.000000'),
(26, 'Nog onbekend', 'Harnjesweg 84', '6706AV', 'Wageningen', '0412624476', '', 'tjio.thea@gmail.com', 0, 0, 'NL', 0, '', '', '2020-09-11 15:06:58.000000', '2020-09-11 15:06:58.000000'),
(27, 'Aaron Meyer (zang)', '', '', 'Zaandam', '', '', '', 4, 0, 'NL', 0, '', '', '2020-09-11 15:32:40.000000', '2020-09-11 15:32:40.000000'),
(28, 'Aad en Corrie Laan', '', '', '', '0229 – 231922', '', 'alaan@kpnmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:36.000000', '2020-09-11 17:44:36.000000'),
(29, 'Martherus', '', '', '', '', '', 'andre.martherus@hetnet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:36.000000', '2020-09-11 17:44:36.000000'),
(30, 'Andries Posthuma', '', '', '', '06 – 35365030', '', 'andriesposthuma@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:36.000000', '2020-09-11 17:44:36.000000'),
(31, 'A. M. de Calonne', '', '', '', '06 – 36300734', '', 'anitamdec2@hotmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:36.000000', '2020-09-11 17:44:36.000000'),
(32, 'Anneke Duursma', '', '', 'Hoorn', '0229 – 216692', '', 'annekeduursma@gmail.com', 1, 0, 'NL', 0, '', 'Dans / Acara / Ok', '2020-09-11 17:44:36.000000', '2020-09-11 17:44:36.000000'),
(33, 'Anneke Nieuwbuurt', '', '', '', '', '', 'annekenieuwbuurt@live.nl', 1, 0, 'NL', 0, '', 'Dans / Acara', '2020-09-11 17:44:37.000000', '2020-09-11 17:44:37.000000'),
(34, 'A. Bijl', '', '', '', '', '', 'bepan@ziggo.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:37.000000', '2020-09-11 17:44:37.000000'),
(35, 'BepFritz48@gmail.com', '', '', '', '', '', 'bepfritz48@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:37.000000', '2020-09-11 17:44:37.000000'),
(36, 'J. Bruisma', '', '', '', '', '', 'bruinsmajopie@gmail.com,', 0, 0, 'NL', 0, '', '', '2020-09-11 17:44:37.691152', '2020-09-11 17:44:37.691167'),
(37, 'Sebastiaan kahle', '', '1623rk', 'Hoorn', '', '', 'carenbas@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:37.000000', '2020-09-11 17:44:37.000000'),
(38, 'Carla Overtoom', '', '', '', '', '', 'carlalovesalsa@hotmail.com', 1, 0, 'NL', 0, '', 'Dans / Acara', '2020-09-11 17:44:37.000000', '2020-09-11 17:44:37.000000'),
(39, 'Carmen Bali', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:44:38.000000', '2020-09-11 17:44:38.000000'),
(40, 'Cees', '', '', '', '', '', 'cjmsmit@zonnet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:48.000000', '2020-09-11 17:48:48.000000'),
(41, 'C. Lokker', '', '', '', '06-83860736', '', 'clokker1960@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:48.000000', '2020-09-11 17:48:48.000000'),
(42, 'M. De Niet', '', '', '', '', '', 'denietmarleen@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:48.000000', '2020-09-11 17:48:48.000000'),
(43, 'E.HartmanKoh', '', '', '', '06 – 53421819', '', 'e.hartmankokgome2@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:48.000000', '2020-09-11 17:48:48.000000'),
(44, 'E.Manuhutu', '', '', 'Haarlem', '', '', 'e.manuhutu@upcmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:48.000000', '2020-09-11 17:48:48.000000'),
(45, 'Eddy Cretier', '', '', '', '', '', 'eh.cretier@planet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:49.000000', '2020-09-11 17:48:49.000000'),
(46, 'E. Keet', '', '', '', '', '', 'emj.keet@hetnet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:49.000000', '2020-09-11 17:48:49.000000'),
(47, 'Endang Stoke', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:48:49.000000', '2020-09-11 17:48:49.000000'),
(48, 'Stulp', '', '', 'Hoorn', '06 – 33864333', '', 'froukstulp@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:51:28.000000', '2020-09-11 17:51:28.000000'),
(49, 'G. S. Stelling', '', '', '', '06-55812690', '', 'gustaaf_stelling@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:51:28.000000', '2020-09-11 17:51:28.000000'),
(50, 'Anne Mieke Baudain', '', '', 'Hoorn', '', '', 'helderzienhoorn@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:51:29.000000', '2020-09-11 17:51:29.000000'),
(51, 'H P Brandsma', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:51:29.000000', '2020-09-11 17:51:29.000000'),
(52, 'Huib Kneepkens', '', '', 'Amsterdam', '06 –  83715923', '', 'huibkneepkens@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:14.000000', '2020-09-11 17:54:14.000000'),
(53, 'Martin en Ineke Janssen', '', '', '', '', '', 'ienepien52@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:14.000000', '2020-09-11 17:54:14.000000'),
(54, 'Irma Hollander', '', '1507nh', 'Zaandam', '', '', 'irmahollander@kpnmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:14.000000', '2020-09-11 17:54:14.000000'),
(55, 'Jenny Bron', '', '1506kp', 'Zaandam', '', '', 'j.bronq@upcmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:14.000000', '2020-09-11 17:54:14.000000'),
(56, 'Joke. F. Neijman (Harrij)', '', '', '', '0229 – 243177', '', 'jfnvdb@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:14.000000', '2020-09-11 17:54:14.000000'),
(57, 'Jimmyjohn704', '', '', '', '', '', 'jimmyjohn704@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(58, 'Jimmy Schaper', '', '', 'hoorn', '', '', 'jimmyschaper@yahoo.co.uk', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(59, 'John van der Beek', '', '', 'Haarlem', '023 – 5376398', '', 'john.vanderbeek@', 0, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.411938', '2020-09-11 17:54:15.411953'),
(60, 'Jose Hooper', '', '1628ev', 'Hoorn', '', '', 'josehooper52@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(61, 'Inge Klaver', '', '1695cb', 'Blokker', '', '', 'klaverkho@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(62, 'R. van Ginkel', '', '', '', '06 – 42631961', '', 'kyokosusan@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(63, 'Toko Lanny', '', '', '', '', '', 'Lanny@123.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:15.000000', '2020-09-11 17:54:15.000000'),
(64, 'Lindi', '', '', '', '', '', 'lindi@ziggo.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(65, 'Louise Postma Bongers', '', '', '', '', '', 'louise_post@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(66, 'Gan', '', '1621mp', 'Hoorn', '', '', 'lout.anke@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(67, 'Luana Narua', '', '1629zd', 'Hoorn', '', '', 'luananarua@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(68, 'Luuk Franke', '', '', '', '06-30797229', '', 'luukfranke@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(69, 'Monique Coers', '', '', '', '06-30761180', '', 'm.coers@pelita.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(70, 'm.a.h. rooijen', '', '', '', '', '', 'mah.vrooijen@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:16.000000', '2020-09-11 17:54:16.000000'),
(71, 'Harrij. J. Pattiradjawane', '', '', '', '', '', 'makaui2@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:17.000000', '2020-09-11 17:54:17.000000'),
(72, 'Kampfraat', '', '', '', '', '', 'marjonkampfraat@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:17.000000', '2020-09-11 17:54:17.000000'),
(73, 'M. Hoorn', '', '1718az', 'Hoogwoud', '', '', 'mate-1947@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:17.000000', '2020-09-11 17:54:17.000000'),
(74, 'Nani de Ruiter', '', '1625hd', 'Hoorn', '', '', 'nanideruiter@kpnmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:17.000000', '2020-09-11 17:54:17.000000'),
(75, 'Nel ter Woort', '', '', '', '', '', 'nelbakker@msn.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(76, 'Nelly Kaayk', '', '', 'Hoorn', '06 – 46912428', '', 'nelly.kaayk@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(77, 'O. Coenraad', '', '', '', '0229-239357', '', 'ottonel20@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(78, 'Paul Nijhof', '', '', '', '', '', 'paulnijhof47@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(79, 'Peter de Rooij', '', '', '', '', '', 'pgmderooij@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(80, 'Pia van de Broek', '', '', '', '', '', 'piavandenbroek@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:18.000000', '2020-09-11 17:54:18.000000'),
(81, 'Roland Eilbracht', '', '', '', '06 – 38509900', '', 'r.d.eilbracht@casema.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:19.000000', '2020-09-11 17:54:19.000000'),
(82, 'R. Schenk', '', '', '', '', '', 'r.schenk@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:19.000000', '2020-09-11 17:54:19.000000'),
(83, 'Richard Monkau', '', '', 'Hoorn', '', '', 'richard.monkau@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:19.000000', '2020-09-11 17:54:19.000000'),
(84, 'Rita Doest', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:54:19.000000', '2020-09-11 17:54:19.000000'),
(85, 'Rosita Bongers', '', '', '', '', '', 'rositabongers@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:23.000000', '2020-09-11 17:56:23.000000'),
(86, 'Hulst', '', '', '', '', '', 'rshulst@hotmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:23.000000', '2020-09-11 17:56:23.000000'),
(87, 'R. J. van Eldik', '', '', '', '', '', 'ruudvaneldik@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:23.000000', '2020-09-11 17:56:23.000000'),
(88, 'Saninda', '', '', 'Medemblik', '06 – 52362914', '', 'Sarinda123@hotmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:24.000000', '2020-09-11 17:56:24.000000'),
(89, 'Stoffels', '', '', '', '', '', 'stoffelsc@ziggo.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:24.000000', '2020-09-11 17:56:24.000000'),
(90, 'Sylvia Leyting', '', '1628xr', '', '06 – 50129692', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:24.000000', '2020-09-11 17:56:24.000000'),
(91, 'F. S. Leijting (Sylvia)', '', '1628xr', 'Hoorn', '', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:25.000000', '2020-09-11 17:56:25.000000'),
(92, 'Wim Daniels', '', '1628gx', 'Hoorn', '', '', 'tdanielse@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:25.000000', '2020-09-11 17:56:25.000000'),
(93, 'Trouwerbach', '', '1695hr', 'Blokker', '', '', 'trouwerbach@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:25.000000', '2020-09-11 17:56:25.000000'),
(94, 'Loek en Narda van Lochem', '', '', '', '', '', 'vanlochems@planet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:26.000000', '2020-09-11 17:56:26.000000'),
(95, 'W. S. Figueira', '', '', 'Alkmaar', '072 – 5649219', '', 'w.figueira@upcmail.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:26.000000', '2020-09-11 17:56:26.000000'),
(96, 'w.niklaas', '', '', '', '', '', 'w.niklaas@gmail.com', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:26.000000', '2020-09-11 17:56:26.000000'),
(97, 'M. O. vd Waa-Meents', '', '1628gx', 'Hoorn', '', '', 'waaza@quicknet.nl', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:26.000000', '2020-09-11 17:56:26.000000'),
(98, 'J.Bothe', '', '1695am', 'Blokker', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:26.000000', '2020-09-11 17:56:26.000000'),
(99, 'xxxhoeven', '', '', 'Assendelft', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:27.000000', '2020-09-11 17:56:27.000000'),
(100, 'Ankie Ten Haaf', '', '1624TH', 'Hoorn', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:27.000000', '2020-09-11 17:56:27.000000'),
(101, 'Joke/Harrij Neijman', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:27.000000', '2020-09-11 17:56:27.000000'),
(103, 'Henny Mulsch', '', '1689sm', 'Zwaag', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:28.000000', '2020-09-11 17:56:28.000000'),
(104, 'Ben /Naney', '', '1687pb', 'wognum', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:28.000000', '2020-09-11 17:56:28.000000'),
(105, 'Lily vd Berg', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:28.000000', '2020-09-11 17:56:28.000000'),
(106, 'Loet', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:28.000000', '2020-09-11 17:56:28.000000'),
(107, 'niet ingevuld', '', '', '', '06 – 23131394', '', '', 0, 0, 'NL', 0, '', '', '2020-09-11 17:56:28.938808', '2020-09-11 17:56:28.938826'),
(108, 'Hoeven', '', '', '', '', '', '', 1, 0, 'NL', 0, '', '', '2020-09-11 17:56:29.000000', '2020-09-11 17:56:29.000000'),
(109, 'Franky Harmusil', '', '', 'Den Haag en omstreken ?', '0412624476', '06 46598547', 'dansayokdansa@gmail.com', 6, 0, 'NL', 0, '', 'www.dansayokdansa.nl', '2020-09-15 11:32:17.000000', '2020-09-15 11:32:17.000000'),
(110, 'Nog onbekend', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '', '2020-09-15 12:35:55.000000', '2020-09-15 12:35:55.000000'),
(111, 'leni Landweer (Angklung)', '', '', '', '', '0621241300', 'lenilandweer@gmail.com', 0, 0, 'NL', 0, '', 'Angklung\r\n\r\nLeni Landweer\r\n0621241300\r\nwww.pesonaculture.com\r\nwww.angklung.nl', '2020-09-15 13:22:32.000000', '2020-09-15 13:22:32.000000');

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
  `locatie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `zitplaatsen`, `website`, `memo`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`) VALUES
(1, 'Kumpulan', '2020-05-02 12:30:00.000000', '14:30:00.000000', '17:30:00.000000', '14:00:00.000000', 'Ntionaal Indische dag', '17.50', '15.00', '100', '', '', '2020-09-14 15:41:21.000000', '2020-09-14 15:41:21.000000', 6, 9, 2, 3);

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
  `memo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_fanclub`
--

INSERT INTO `contacts_fanclub` (`id`, `naam`, `website`, `aantal_leden`, `datum_inserted`, `datum_updated`, `contact_id`, `memo`) VALUES
(1, 'De Doorzakkers', '', '100', '2020-08-19 14:18:21.000000', '2020-08-19 14:18:21.000000', 2, ''),
(2, 'De Dansers', '', '50', '2020-08-19 14:19:24.000000', '2020-08-19 14:19:24.000000', 3, ''),
(3, 'De Zingers', '', '25', '2020-08-19 14:19:49.000000', '2020-08-19 14:19:49.000000', 2, ''),
(5, 'Hot News', '', '80', '2020-08-19 14:21:08.000000', '2020-08-19 14:21:08.000000', 3, ''),
(6, 'The Rocking Players', '', '1236', '2020-08-19 14:21:59.000000', '2020-08-19 14:21:59.000000', 3, ''),
(7, 'Clif and his Loanstars', '', '300', '2020-08-19 14:22:45.000000', '2020-08-19 14:22:45.000000', 4, ''),
(8, 'De Stoel', '', '1', '2020-08-22 19:12:39.000000', '2020-08-22 19:12:39.000000', 14, ''),
(9, 'Blackmail', '', '100', '2020-08-22 19:23:41.000000', '2020-08-22 19:23:41.000000', 15, ''),
(10, 'The Streetrollers', 'https://thestreetrollers.webnode.nl/over-ons/', '349', '2020-08-24 15:59:01.000000', '2020-08-24 15:59:01.000000', 16, '');

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
  `vergunning_aaangevraagd` tinyint(1) NOT NULL,
  `vergunning_datum` date NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_zaal`
--

INSERT INTO `contacts_zaal` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `website`, `volt440`, `hulp_nodig`, `vergunning_vereist`, `vergunning_aaangevraagd`, `vergunning_datum`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Zaal Maas', '9350KL', 'Grote Markt 7', 'Groningen', '50123456789', '', 0, 0, 0, 0, '0000-00-00', '2020-08-19 15:52:48.000000', '2020-08-19 15:52:48.000000', 7),
(2, 'Het Huis Verloren', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', '', 0, 0, 0, 0, '0000-00-00', '2020-08-19 18:52:00.000000', '2020-08-19 18:52:00.000000', 8),
(3, 'Oosterkerk, Huiskamer van Hoorn', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '22921909', '', 0, 0, 0, 0, '0000-00-00', '2020-08-19 18:57:09.000000', '2020-08-19 18:57:09.000000', 9),
(4, 'Partycentrum De Witte Valk', '1689GB', 'Dorpstraat 175', 'Zwaag', '229261463', '', 0, 0, 0, 0, '0000-00-00', '2020-08-19 19:02:01.000000', '2020-08-19 19:02:01.000000', 10),
(5, 'Het Gouden Hoofd', '1695AJ', 'Westerblokker 80', 'Blokker', '0229-232691', '', 0, 0, 0, 0, '2020-09-07', '2020-08-22 22:44:45.000000', '2020-08-22 22:44:45.000000', 12),
(6, 'Muziektent Culenborg', '1111xx', 'onbekend', 'Culenborg', '', '', 0, 0, 0, 0, '2020-09-07', '2020-09-07 14:29:29.000000', '2020-09-07 14:29:29.000000', 4),
(7, 'Foreesterhuis', '1621BR', 'Grote Oost 43', 'Hoorn', '0228 315 511', 'www.foreesterhuis.nl', 0, 0, 0, 0, '2020-09-11', '2020-09-11 14:53:33.000000', '2020-09-11 14:53:33.000000', 25);

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
(181, '2020-10-01 15:28:55.067998', '5', 'Chinese Garden', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 9, 2);

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
(15, 'contacts', 'bandleden'),
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
(21, 'contacts', '0004_auto_20200915_0838', '2020-09-15 06:38:41.009425');

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
('4uz17sqjomlxqn3a0wklpafswtgyb8ea', 'NWNlYWQwZDI1NGExNzc5ZjdkMmE3ZTkyNGQ0Y2MzZDhiNjU3OWQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjAwYmY2N2RhOWIyNTUxM2I2NzE1ZDJmN2FkMmY2OGQyZDExMzRkIn0=', '2020-09-25 08:19:21.029828'),
('6iekiybdult8n3c0bk3sgwirvnvyvu39', '.eJxVjDsOwyAQBe9CHSGWr0mZ3mdAC4uDkwhLxq6i3D1YcpG0M_PemwXctxL2ltcwE7syYJdfFjE9cz0EPbDeF56Wuq1z5EfCT9v4uFB-3c7276BgK30tjAFPXoIfpuQiKlKWpNXZgCal5SQoggCLHSABJmWctarjIUZ0nn2-yk43kA:1kQrfB:TCWRIvSWLzpahPAP73K2ZAMUaCeRdhY26F0Zjgad5UQ', '2020-10-23 12:38:21.131021'),
('jjp77b2qs9zr3kkzklepn4p9qsnuju2x', 'NWNlYWQwZDI1NGExNzc5ZjdkMmE3ZTkyNGQ0Y2MzZDhiNjU3OWQxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjAwYmY2N2RhOWIyNTUxM2I2NzE1ZDJmN2FkMmY2OGQyZDExMzRkIn0=', '2020-10-12 06:26:42.608466'),
('vr1f7xxtknyvu4xjvw4ms38f5340tk2r', 'NzFhNTVmOGNlZWRjNTllYWQ5MTNlOWU0NWE3ODE3OTY4YzM0ZmM1Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZWFiOTkxNzU0YWIxNjk4OTkxMjVkODhmZTE3NWNjM2YzYzU2NjljIn0=', '2020-09-28 15:26:37.293703'),
('wznuvcy9ruxdcznsq7j3fxhfl7n945js', '.eJxVjEsOwiAUAO_C2hCgj59L9z0DecBDqoYmpV0Z725IutDtzGTeLOCx13B02sKS2ZUpdvllEdOT2hD5ge2-8rS2fVsiHwk_befzmul1O9u_QcVex5aiR2GdTFKhSYU8SiQoJsUCXmkF1msx5VwmD6gdSS_BJKuFg5hBs88X7oc3qg:1kPXVm:4BHUz2ziLSqQ8dol1g73nyUOyx5THN20gxknRroT-rY', '2020-10-19 20:55:10.005773');

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
  ADD KEY `contacts_band_contact_id_1e9dd393_fk_contacts_contact_id` (`contact_id`);

--
-- Indexes for table `contacts_bandleden`
--
ALTER TABLE `contacts_bandleden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_bandleden_band_id_db7d56c4_fk_contacts_band_id` (`band_id`),
  ADD KEY `contacts_bandleden_lid_id_ab84b5fb_fk_contacts_contact_id` (`lid_id`);

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
  ADD KEY `contacts_cateraar_contact_id_ea21fcad_fk_contacts_contact_id` (`contact_id`);

--
-- Indexes for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_evenement_band_id_b8d63781_fk_contacts_band_id` (`band_id`),
  ADD KEY `contacts_evenement_beheerder_id_0c97d3ce_fk_contacts_contact_id` (`beheerder_id`),
  ADD KEY `contacts_evenement_catering_id_a6701826_fk_contacts_cateraar_id` (`catering_id`),
  ADD KEY `contacts_evenement_locatie_id_6bb33bb0_fk_contacts_zaal_id` (`locatie_id`);

--
-- Indexes for table `contacts_fanclub`
--
ALTER TABLE `contacts_fanclub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_fanclub_contact_id_4263d11a_fk_contacts_contact_id` (`contact_id`);

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
  ADD KEY `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` (`contact_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts_bandleden`
--
ALTER TABLE `contacts_bandleden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_category`
--
ALTER TABLE `contacts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
