-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 26, 2020 at 10:42 AM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.9

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

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'The Rocking Players'),
(2, 'The Street Rollers');

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add contacts', 8, 'add_contacts'),
(30, 'Can change contacts', 8, 'change_contacts'),
(31, 'Can delete contacts', 8, 'delete_contacts'),
(32, 'Can view contacts', 8, 'view_contacts'),
(33, 'Can add page', 9, 'add_page'),
(34, 'Can change page', 9, 'change_page'),
(35, 'Can delete page', 9, 'delete_page'),
(36, 'Can view page', 9, 'view_page'),
(37, 'Can add fanclubs', 10, 'add_fanclubs'),
(38, 'Can change fanclubs', 10, 'change_fanclubs'),
(39, 'Can delete fanclubs', 10, 'delete_fanclubs'),
(40, 'Can view fanclubs', 10, 'view_fanclubs'),
(41, 'Can add contacts', 11, 'add_contacts'),
(42, 'Can change contacts', 11, 'change_contacts'),
(43, 'Can delete contacts', 11, 'delete_contacts'),
(44, 'Can view contacts', 11, 'view_contacts'),
(45, 'Can add fanclubs', 12, 'add_fanclubs'),
(46, 'Can change fanclubs', 12, 'change_fanclubs'),
(47, 'Can delete fanclubs', 12, 'delete_fanclubs'),
(48, 'Can view fanclubs', 12, 'view_fanclubs'),
(49, 'Can add fanclub', 13, 'add_fanclub'),
(50, 'Can change fanclub', 13, 'change_fanclub'),
(51, 'Can delete fanclub', 13, 'delete_fanclub'),
(52, 'Can view fanclub', 13, 'view_fanclub'),
(53, 'Can add contact', 14, 'add_contact'),
(54, 'Can change contact', 14, 'change_contact'),
(55, 'Can delete contact', 14, 'delete_contact'),
(56, 'Can view contact', 14, 'view_contact'),
(57, 'Can add zaal', 15, 'add_zaal'),
(58, 'Can change zaal', 15, 'change_zaal'),
(59, 'Can delete zaal', 15, 'delete_zaal'),
(60, 'Can view zaal', 15, 'view_zaal'),
(61, 'Can add band', 16, 'add_band'),
(62, 'Can change band', 16, 'change_band'),
(63, 'Can delete band', 16, 'delete_band'),
(64, 'Can view band', 16, 'view_band'),
(65, 'Can add evenement', 17, 'add_evenement'),
(66, 'Can change evenement', 17, 'change_evenement'),
(67, 'Can delete evenement', 17, 'delete_evenement'),
(68, 'Can view evenement', 17, 'view_evenement'),
(69, 'Can add cateraar', 18, 'add_cateraar'),
(70, 'Can change cateraar', 18, 'change_cateraar'),
(71, 'Can delete cateraar', 18, 'delete_cateraar'),
(72, 'Can view cateraar', 18, 'view_cateraar');

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
(1, 'pbkdf2_sha256$180000$LV3xrStrcjPX$dlkVHsHbcXPd7pJigjxgaqNPbnQIW8+vSl7Dp/UFlxQ=', '2020-08-21 18:00:46.573145', 1, 'django', 'Jan', 'de Boer', 'jandeboer@gmail.com', 1, 1, '2020-08-18 07:48:01.000000'),
(2, 'pbkdf2_sha256$180000$AfMFXQl3UsBJ$EXeHkxQBtk27U4Arq3OSnlNDg2/cp8MPrFtnVFTYdKs=', '2020-08-25 12:52:08.824886', 1, 'Franklin', 'Franklin', 'Bieri', 'franklin.bieri@gmail.com', 1, 1, '2020-08-18 18:09:48.000000'),
(3, 'pbkdf2_sha256$180000$l3WkANMfXVmw$nvWMpb/94yCo4TZAxEBZQw++tYRdTQho+gE5h4cJhw8=', '2020-08-25 12:29:40.868627', 1, 'Corrie', 'Corrie', 'Hessels', 'corriehessels@upcmail.nl', 1, 1, '2020-08-20 21:06:29.000000');

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

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 2, 1),
(50, 2, 2),
(51, 2, 3),
(52, 2, 4),
(53, 2, 5),
(54, 2, 6),
(55, 2, 7),
(56, 2, 8),
(57, 2, 9),
(58, 2, 10),
(59, 2, 11),
(60, 2, 12),
(61, 2, 13),
(62, 2, 14),
(63, 2, 15),
(64, 2, 16),
(65, 2, 17),
(66, 2, 18),
(67, 2, 19),
(68, 2, 20),
(69, 2, 21),
(70, 2, 22),
(71, 2, 23),
(72, 2, 24),
(73, 2, 25),
(74, 2, 26),
(75, 2, 27),
(76, 2, 28),
(77, 2, 29),
(78, 2, 30),
(79, 2, 31),
(80, 2, 32),
(81, 2, 33),
(82, 2, 34),
(83, 2, 35),
(84, 2, 36),
(85, 2, 37),
(86, 2, 38),
(87, 2, 39),
(88, 2, 40),
(89, 2, 41),
(90, 2, 42),
(91, 2, 43),
(92, 2, 44),
(93, 2, 45),
(94, 2, 46),
(95, 2, 47),
(96, 2, 48);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_band`
--

CREATE TABLE `contacts_band` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `soort` varchar(50) NOT NULL,
  `aantal_leden` decimal(6,0) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `soort`, `aantal_leden`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `rekening_nr`) VALUES
(1, 'The Magic Tones', '', '5', '', '2020-08-19 15:45:07.000000', '2020-08-19 15:45:07.000000', 5, 'NL'),
(2, 'De Stoel', '50, 60tiger muziek', '5', 'Nog contact opnemen', '2020-08-19 20:36:57.000000', '2020-08-19 20:36:57.000000', 14, 'NL'),
(3, 'The Rocking Players', 'Indo Rock, Hits 50 / 60ties', '6', '', '2020-08-20 22:16:12.000000', '2020-08-20 22:16:12.000000', 3, 'NL'),
(4, 'Blackmail', 'country/indorock', '3', '', '2020-08-22 19:31:24.000000', '2020-08-22 19:31:24.000000', 15, 'NL'),
(5, 'The Street Rollers', 'Indo Rock, Hits 50 / 60ties', '5', '', '2020-08-22 19:22:02.000000', '2020-08-22 19:22:02.000000', 16, 'NL'),
(6, 'Wipe Out Selection', 'Band leider', '5', '', '2020-08-22 19:45:00.000000', '2020-08-22 19:45:00.000000', 17, 'NL'),
(8, 'The Mordants', '50, 60tiger jaren', '6', '', '2020-08-24 16:15:54.000000', '2020-08-24 16:15:54.000000', 20, 'NL'),
(9, 'Hot News', 'indorock', '6', '', '2020-08-25 12:40:40.000000', '2020-08-25 12:40:40.000000', 22, 'NL'),
(10, 'Java Guitars Unlimited', '', '4', 'www.javaguitars.nl', '2020-08-25 12:51:24.000000', '2020-08-25 12:51:24.000000', 23, 'NL'),
(11, 'Keep on Rocking', '50/60/70 jaren', '4', 'www.keeponrocking.nl', '2020-08-25 13:06:52.000000', '2020-08-25 13:06:52.000000', 24, 'NL');

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
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`, `rekening_nr`) VALUES
(1, 'Toko Yoko', 'Indonesisch', 'Laatste keer goed', '2020-08-19 15:50:19.000000', '2020-08-19 15:50:19.000000', 6, 'NL'),
(2, 'Dapur Jomy', 'Indisch / Indonesch', 'Iedere week een ander menu', '2020-08-19 19:07:08.000000', '2020-08-19 19:07:08.000000', 11, 'NL'),
(3, 'Toko2Way', 'Indisch', '', '2020-08-21 19:31:58.000000', '2020-08-21 19:31:58.000000', 13, 'NL'),
(4, 'Toko Lannie', 'Indisch', '', '2020-08-23 19:30:46.000000', '2020-08-23 19:30:46.000000', 19, 'NL'),
(5, 'Chinese Garden', 'Chinees', 'Testje', '2020-08-24 17:33:37.000000', '2020-08-24 17:33:37.000000', 3, 'NL');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `plaats` varchar(50) NOT NULL,
  `telefoon` decimal(11,0) NOT NULL,
  `mobiel` decimal(11,0) NOT NULL,
  `emailadress` varchar(254) NOT NULL,
  `soort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `rekening_nr` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `status`, `memo`, `datum_inserted`, `datum_updated`, `rekening_nr`) VALUES
(2, 'Jan Jansen', '1625DE', 'Hoofdstraat 1', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'Dit is het eerste Lid', '2020-08-19 14:11:37.000000', '2020-08-19 14:11:37.000000', 'NL'),
(3, 'Jorgen van der Hoeven', 'xxxxyy', 'onbekend', 'onbekend', '1235678911', '611711287', 'j.verhoeven2@chello.nl', 4, 0, 'Dit is de tweede', '2020-08-19 14:16:20.000000', '2020-08-19 14:16:20.000000', 'NL'),
(4, 'Clif Jansen', '1000BD', 'Damstraat 6 , 2 Hoog', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 1, 'Oprichter van de Fanclub \"Cliff and his Loanstars', '2020-08-19 14:23:40.000000', '2020-08-19 14:23:40.000000', 'NL'),
(5, 'Mike Tomson', '1000AA', 'Damstraat 12, 3 hoog', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, '', '2020-08-19 15:45:28.000000', '2020-08-19 15:45:28.000000', 'NL'),
(6, 'Toko Yoko', '1200BE', 'Tonijnstraat 5', 'Heerhgoward', '0', '0', 'info@tokoyoko.nl', 4, 0, '', '2020-08-19 15:50:56.000000', '2020-08-19 15:50:56.000000', 'NL'),
(7, 'Frans Maas', '9331NL', 'Korte Straat 6', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, '', '2020-08-19 15:54:01.000000', '2020-08-19 15:54:01.000000', 'NL'),
(8, 'Christiaan Mulder', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', '0', 'info@huisverloren.nl', 4, 1, '', '2020-08-19 18:54:14.000000', '2020-08-19 18:54:14.000000', 'NL'),
(9, 'Truus Ammeraal', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '22921909', '614179444', 'info@oosterkerk.nl', 4, 0, '', '2020-08-19 18:58:52.000000', '2020-08-19 18:58:52.000000', 'NL'),
(10, 'Daphne', '1689G', 'Dorpsstraat 175', 'Zwaag', '229261473', '620678838', 'info@dewittevalk.nl', 4, 1, '', '2020-08-19 19:03:25.000000', '2020-08-19 19:03:25.000000', 'NL'),
(11, 'Amy Fosss', '1000AA', 'Onbekend', 'Onbekend', '653134683', '648606828', 'info@onbekend.nl', 4, 0, '', '2020-08-19 19:07:31.000000', '2020-08-19 19:07:31.000000', 'NL'),
(12, 'Eric Alders', 'onbeke', 'Westerblokker 80', 'Zwaag', '2292326691', '612345678', 'info@goudenhoofd.nl', 4, 0, 'm.boersma11@kpnplanet.nl', '2020-08-20 22:22:33.000000', '2020-08-20 22:22:33.000000', 'NL'),
(13, 'CiCi', 'xxxxyy', 'onbekend', 'onbekend', '123456789', '123498765', 'onbekend@1234.nl', 3, 0, '', '2020-08-21 19:24:44.000000', '2020-08-21 19:24:44.000000', 'NL'),
(14, 'Klaas Singer', 'xxxxyy', 'onbekend', 'onbekend', '2295733', '612345679', 'klaassinger@gmail.com', 4, 0, 'www.thesixtiesbanddestoel.nl', '2020-08-21 20:33:41.000000', '2020-08-21 20:33:41.000000', 'NL'),
(15, 'Will Merkx', 'xxxxyy', 'onbekend', 'Koog aan de Zaan', '756161681', '650284376', 'h.merkxneyndorff@upcmail.nl', 4, 0, 'www.blackmail-countrymusic.nl', '2020-08-22 19:19:12.000000', '2020-08-22 19:19:12.000000', 'NL'),
(16, 'Erlo van der Hoeven', 'xxxxyy', 'onbekend', 'Zaandam', '123456789', '62709210', 'erlo.streetrollers@gmail.com', 4, 0, 'www.thestreetrollers.webnode.nl/over-ons', '2020-08-22 19:23:29.000000', '2020-08-22 19:23:29.000000', 'NL'),
(17, 'Brain Leepel', 'xxxxyy', 'onbekend', 'Den Helder', '647679948', '628400959', 'labsimons@live.nl', 4, 0, 'www.wipeoutselection.nl', '2020-08-22 19:41:37.000000', '2020-08-22 19:41:37.000000', 'NL'),
(18, 'Martin', 'xxxxyy', 'onbekend', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 2, 0, '', '2020-08-23 18:47:21.000000', '2020-08-23 18:47:21.000000', 'NL'),
(19, 'Lannie', 'xxxxyy', 'o', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, '', '2020-08-23 19:32:23.000000', '2020-08-23 19:32:23.000000', 'NL'),
(20, 'Fried Holtkamp', 'xxxxyy', 'onbekend', 'Hoorn', '0', '637166146', 'friedholtkamp@hotmail.com', 4, 0, 'www.mordants.nl', '2020-08-24 16:12:30.000000', '2020-08-24 16:12:30.000000', 'NL'),
(21, 'Co Bruijns', 'xxxxyy', 'onbekend', 'Hoorn', '229262915', '683543752', 'cobruijns@hotmail.com', 4, 0, '', '2020-08-24 16:22:20.000000', '2020-08-24 16:22:20.000000', 'NL'),
(22, 'Shirley Salomon', 'xxxxyy', 'onbekend', 'onbekend', '0', '612345678', 'shirley@thehotnews.nl', 4, 0, '', '2020-08-25 12:37:48.000000', '2020-08-25 12:37:48.000000', 'NL'),
(23, 'George Kwekel', '3222AG', 'Smitsweg 51', 'Hellevoetsluis', '1813243106', '612345678', 'indische@artiesten.club', 4, 0, '', '2020-08-25 12:48:01.000000', '2020-08-25 12:48:01.000000', 'NL'),
(24, 'Wim Geertman', 'xxxxyy', 'onbekend', 'onbekend', '123456789', '652125508', 'wh.geertman@quicknet.nl', 4, 0, '', '2020-08-25 13:03:48.000000', '2020-08-25 13:03:48.000000', 'NL');

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
  `gage` decimal(4,0) NOT NULL,
  `betaling` int(11) NOT NULL,
  `soort_overeenkomst` varchar(50) NOT NULL,
  `thema` varchar(50) NOT NULL,
  `entree_prijs` decimal(6,2) NOT NULL,
  `voorverkoop_prijs` decimal(6,2) NOT NULL,
  `zitplaatsen` decimal(8,0) NOT NULL,
  `vergunning_vereist` tinyint(1) NOT NULL,
  `vergunning_aaangevraagd` tinyint(1) NOT NULL,
  `vergunning_datum` date NOT NULL,
  `volt440` tinyint(1) NOT NULL,
  `hulp_nodig` tinyint(1) NOT NULL,
  `huur` int(11) NOT NULL,
  `technicus` tinyint(1) NOT NULL,
  `aantal_autos` decimal(2,0) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `band_id` int(11) NOT NULL,
  `beheerder_id` int(11) NOT NULL,
  `locatie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `gage`, `betaling`, `soort_overeenkomst`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `zitplaatsen`, `vergunning_vereist`, `vergunning_aaangevraagd`, `vergunning_datum`, `volt440`, `hulp_nodig`, `huur`, `technicus`, `aantal_autos`, `memo`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `locatie_id`) VALUES
(1, 'Remember the 90\'s', '2020-08-29 20:00:00.000000', '20:00:00.000000', '23:00:00.000000', '19:00:00.000000', '100', 0, '', 'Just have Fun', '7.50', '5.00', '500', 1, 1, '2020-08-19', 1, 1, 0, 1, '2', '', '2020-08-19 15:56:10.000000', '2020-08-19 15:56:10.000000', 1, 2, 2),
(2, 'Kumpulan Nationaal Indische Dag', '2020-08-22 20:34:24.000000', '14:30:00.000000', '18:00:00.000000', '14:00:00.000000', '650', 0, 'Gage verklaring', 'Einde 2de wereld oorlog In Nederlands Indie', '17.00', '15.00', '120', 0, 1, '2020-08-22', 1, 1, 0, 0, '0', '', '2020-08-22 20:16:31.000000', '2020-08-22 20:16:31.000000', 6, 9, 3),
(3, 'muziektent Culemborg', '2020-08-22 22:13:51.000000', '14:00:00.000000', '16:00:00.000000', '13:30:00.000000', '350', 0, 'gageverklaring', 'country music', '0.00', '0.00', '100', 0, 1, '2020-08-22', 1, 1, 0, 1, '2', '', '2020-08-22 22:13:52.000000', '2020-08-22 22:13:52.000000', 4, 7, 1),
(4, 'Country Dag', '2020-08-22 22:15:04.000000', '14:00:00.000000', '16:00:00.000000', '13:30:00.000000', '350', 0, 'Gage verklaring', 'Country Music', '-0.05', '0.00', '100', 0, 1, '2020-08-22', 1, 1, 0, 1, '2', '', '2020-08-22 22:15:04.000000', '2020-08-22 22:15:04.000000', 4, 4, 4),
(5, 'Dancing Queen', '2020-08-24 17:31:15.000000', '19:31:23.000000', '19:31:26.000000', '19:31:27.000000', '0', 0, '', 'Dance', '5.00', '2.50', '40', 1, 1, '2020-08-24', 0, 0, 1, 0, '2', '', '2020-08-24 17:31:16.000000', '2020-08-24 17:31:16.000000', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_fanclub`
--

CREATE TABLE `contacts_fanclub` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `aantal_leden` decimal(6,0) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_fanclub`
--

INSERT INTO `contacts_fanclub` (`id`, `naam`, `aantal_leden`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'De Doorzakkers', '100', '2020-08-19 14:18:21.000000', '2020-08-19 14:18:21.000000', 2),
(2, 'De Dansers', '50', '2020-08-19 14:19:24.000000', '2020-08-19 14:19:24.000000', 3),
(3, 'De Zingers', '25', '2020-08-19 14:19:49.000000', '2020-08-19 14:19:49.000000', 2),
(5, 'Hot News', '80', '2020-08-19 14:21:08.000000', '2020-08-19 14:21:08.000000', 3),
(6, 'The Rocking Players', '1236', '2020-08-19 14:21:59.000000', '2020-08-19 14:21:59.000000', 3),
(7, 'Clif and his Loanstars', '300', '2020-08-19 14:22:45.000000', '2020-08-19 14:22:45.000000', 4),
(8, 'De Stoel', '1', '2020-08-22 19:12:39.000000', '2020-08-22 19:12:39.000000', 14),
(9, 'Blackmail', '100', '2020-08-22 19:23:41.000000', '2020-08-22 19:23:41.000000', 15),
(10, 'The Streetrollers', '349', '2020-08-24 15:59:01.000000', '2020-08-24 15:59:01.000000', 16);

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
  `telefoon` decimal(11,0) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_zaal`
--

INSERT INTO `contacts_zaal` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Zaal Maas', '9350KL', 'Grote Markt 7', 'Groningen', '50123456789', '2020-08-19 15:52:48.000000', '2020-08-19 15:52:48.000000', 7),
(2, 'Het Huis Verloren', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', '2020-08-19 18:52:00.000000', '2020-08-19 18:52:00.000000', 8),
(3, 'Oosterkerk, Huiskamer van Hoorn', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '22921909', '2020-08-19 18:57:09.000000', '2020-08-19 18:57:09.000000', 9),
(4, 'Partycentrum De Witte Valk', '1689GB', 'Dorpstraat 175', 'Zwaag', '229261463', '2020-08-19 19:02:01.000000', '2020-08-19 19:02:01.000000', 10),
(5, 'Het Gouden Hoofd', '1695AJ', 'Westerblokker 80', 'Blokker', '229232691', '2020-08-22 22:44:45.000000', '2020-08-22 22:44:45.000000', 12);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
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
(1, '2020-08-18 17:59:30.100824', '1', 'Jan', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-08-18 18:00:52.218545', '2', 'Kees', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-08-18 18:03:56.601223', '1', 'De Doorzakkers', 1, '[{\"added\": {}}]', 10, 1),
(4, '2020-08-18 18:04:32.943608', '2', 'De dansers', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-08-18 18:09:49.052360', '2', 'Franklin', 1, '[{\"added\": {}}]', 4, 1),
(6, '2020-08-18 18:11:40.156228', '2', 'Franklin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 4, 1),
(7, '2020-08-18 18:12:28.561407', '1', 'django', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(8, '2020-08-18 18:26:04.007765', '1', 'django', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(9, '2020-08-18 18:26:37.456170', '1', 'django', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(10, '2020-08-18 18:29:52.384555', '2', 'Franklin', 2, '[{\"changed\": {\"fields\": [\"Superuser status\", \"User permissions\"]}}]', 4, 1),
(11, '2020-08-18 18:42:22.253952', '2', 'De Dansers', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 10, 2),
(12, '2020-08-18 18:42:57.952501', '3', 'De Zingers', 1, '[{\"added\": {}}]', 10, 2),
(13, '2020-08-18 20:16:51.066792', '3', '', 1, '[{\"added\": {}}]', 8, 2),
(14, '2020-08-18 20:19:08.346820', '4', 'The Rocking Players', 1, '[{\"added\": {}}]', 10, 2),
(15, '2020-08-18 20:20:35.054141', '4', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Aantal\"]}}]', 10, 2),
(16, '2020-08-18 20:20:54.806175', '4', '', 1, '[{\"added\": {}}]', 8, 2),
(17, '2020-08-18 20:22:51.652091', '5', 'Hot News', 1, '[{\"added\": {}}]', 10, 2),
(18, '2020-08-18 20:23:23.513080', '5', '', 1, '[{\"added\": {}}]', 8, 2),
(19, '2020-08-18 20:30:02.511922', '6', '', 1, '[{\"added\": {}}]', 8, 2),
(20, '2020-08-18 20:32:48.758445', '7', '', 1, '[{\"added\": {}}]', 8, 2),
(21, '2020-08-18 20:34:18.869439', '7', '', 2, '[]', 8, 2),
(22, '2020-08-18 20:34:25.569320', '6', 'Clif and his Lonstars', 1, '[{\"added\": {}}]', 10, 2),
(23, '2020-08-18 20:36:03.127034', '8', '', 1, '[{\"added\": {}}]', 8, 2),
(24, '2020-08-18 20:36:10.945197', '7', 'The Rocking Players', 1, '[{\"added\": {}}]', 10, 2),
(25, '2020-08-18 20:37:08.102242', '9', '', 1, '[{\"added\": {}}]', 8, 2),
(26, '2020-08-19 14:16:17.300496', '2', 'Jan Jansen', 1, '[{\"added\": {}}]', 14, 1),
(27, '2020-08-19 14:17:58.775626', '3', 'Piet Jansen', 1, '[{\"added\": {}}]', 14, 1),
(28, '2020-08-19 14:19:24.268173', '1', 'De Doorzakkers', 1, '[{\"added\": {}}]', 13, 1),
(29, '2020-08-19 14:19:49.344258', '2', 'De Dansers', 1, '[{\"added\": {}}]', 13, 1),
(30, '2020-08-19 14:20:13.856985', '3', 'De Zingers', 1, '[{\"added\": {}}]', 13, 1),
(31, '2020-08-19 14:21:08.430049', '4', 'De Streetrollers', 1, '[{\"added\": {}}]', 13, 1),
(32, '2020-08-19 14:21:40.482147', '5', 'Hot News', 1, '[{\"added\": {}}]', 13, 1),
(33, '2020-08-19 14:21:59.046205', '5', 'Hot News', 2, '[]', 13, 1),
(34, '2020-08-19 14:22:44.715458', '6', 'The Rocking Players', 1, '[{\"added\": {}}]', 13, 1),
(35, '2020-08-19 14:26:31.362796', '4', 'Clif Jansen', 1, '[{\"added\": {}}]', 14, 1),
(36, '2020-08-19 14:26:45.269916', '7', 'Clif and his Loanstars', 1, '[{\"added\": {}}]', 13, 1),
(37, '2020-08-19 15:46:53.183494', '5', 'Mike Tomson', 1, '[{\"added\": {}}]', 14, 1),
(38, '2020-08-19 15:47:11.221974', '1', 'The Magic Tones', 1, '[{\"added\": {}}]', 16, 1),
(39, '2020-08-19 15:51:51.842111', '6', 'Toko Yoko', 1, '[{\"added\": {}}]', 14, 1),
(40, '2020-08-19 15:52:28.636104', '1', 'Toko Yoko', 1, '[{\"added\": {}}]', 18, 1),
(41, '2020-08-19 15:55:12.308825', '7', 'Frans Maas', 1, '[{\"added\": {}}]', 14, 1),
(42, '2020-08-19 15:55:40.258806', '1', 'Zaal Maas', 1, '[{\"added\": {}}]', 15, 1),
(43, '2020-08-19 15:59:18.896687', '1', 'Remember the 90\'s', 1, '[{\"added\": {}}]', 17, 1),
(44, '2020-08-19 18:56:28.454240', '8', 'Christiaan Mulder', 1, '[{\"added\": {}}]', 14, 1),
(45, '2020-08-19 18:56:34.997972', '2', 'Het Huis Verloren', 1, '[{\"added\": {}}]', 15, 1),
(46, '2020-08-19 19:01:37.497616', '9', 'Truus Ammeraal', 1, '[{\"added\": {}}]', 14, 1),
(47, '2020-08-19 19:01:41.164205', '3', 'Oosterkerk, Huiskamer van Hoorn', 1, '[{\"added\": {}}]', 15, 1),
(48, '2020-08-19 19:06:29.074704', '10', 'Daphne', 1, '[{\"added\": {}}]', 14, 1),
(49, '2020-08-19 19:06:54.044675', '4', 'Partycentrum De Witte Valk', 1, '[{\"added\": {}}]', 15, 1),
(50, '2020-08-19 19:09:15.185531', '11', 'Amy Fosss', 1, '[{\"added\": {}}]', 14, 1),
(51, '2020-08-19 19:09:30.721876', '2', 'Dapur Jomy', 1, '[{\"added\": {}}]', 18, 1),
(52, '2020-08-19 19:45:50.468288', '2', 'Dapur Jomy', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 18, 2),
(53, '2020-08-19 19:46:51.686026', '2', 'Dapur Jomy', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Memo\"]}}]', 18, 2),
(54, '2020-08-19 19:49:00.153109', '1', 'Remember the 90\'s', 2, '[]', 17, 2),
(55, '2020-08-19 20:26:43.975358', '1', 'The Magic Tones', 2, '[]', 16, 2),
(56, '2020-08-19 20:30:40.466863', '1', 'The Magic Tones', 2, '[]', 16, 2),
(57, '2020-08-19 20:36:41.752626', '1', 'The Magic Tones', 2, '[]', 16, 2),
(58, '2020-08-19 20:39:45.269181', '2', 'De Stoel', 1, '[{\"added\": {}}]', 16, 2),
(59, '2020-08-19 20:47:18.352581', '2', 'De Stoel', 2, '[]', 16, 2),
(60, '2020-08-19 20:52:57.087619', '6', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\"]}}]', 13, 2),
(61, '2020-08-19 20:56:35.437844', '6', 'The Rocking Players', 2, '[]', 13, 2),
(62, '2020-08-19 20:56:51.485776', '6', 'The Rocking Players', 2, '[]', 13, 2),
(63, '2020-08-19 21:06:52.856748', '2', 'Jan Jansen', 2, '[]', 14, 2),
(64, '2020-08-19 21:07:01.323827', '7', 'Clif and his Loanstars', 2, '[]', 13, 2),
(65, '2020-08-20 21:06:29.835499', '3', 'Corrie', 1, '[{\"added\": {}}]', 4, 2),
(66, '2020-08-20 21:10:49.154450', '3', 'Corrie', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 4, 2),
(67, '2020-08-20 21:14:08.389365', '3', 'Corrie', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 2),
(68, '2020-08-20 21:23:20.044137', '1', 'Remember the 90\'s', 2, '[{\"changed\": {\"fields\": [\"Locatie\"]}}]', 17, 3),
(69, '2020-08-20 21:42:46.463607', '1', 'The Rocking Players', 1, '[{\"added\": {}}]', 3, 3),
(70, '2020-08-20 22:15:46.280010', '3', 'Jorgen', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Soort\"]}}]', 14, 3),
(71, '2020-08-20 22:19:07.723532', '3', 'The Rocking Players', 1, '[{\"added\": {}}]', 16, 3),
(72, '2020-08-20 22:20:12.198269', '6', 'The Rocking Players', 2, '[]', 13, 3),
(73, '2020-08-20 22:26:37.666239', '12', 'Eric Alders', 1, '[{\"added\": {}}]', 14, 3),
(74, '2020-08-21 11:00:20.034920', '12', 'Eric Alders', 2, '[{\"changed\": {\"fields\": [\"Telefoon\"]}}]', 14, 2),
(75, '2020-08-21 11:01:55.823084', '2', 'The Street Rollers', 1, '[{\"added\": {}}]', 3, 2),
(76, '2020-08-21 11:21:23.007430', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 16, 2),
(77, '2020-08-21 19:26:23.732223', '13', 'CiCi', 1, '[{\"added\": {}}]', 14, 2),
(78, '2020-08-21 19:32:28.844109', '3', 'Toko2Way (CiCi)', 1, '[{\"added\": {}}]', 18, 2),
(79, '2020-08-21 19:32:45.554176', '3', 'Toko2Way', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 18, 2),
(80, '2020-08-21 20:00:30.873142', '3', 'Corrie', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(81, '2020-08-21 20:39:11.136733', '14', 'Klaas Singer', 1, '[{\"added\": {}}]', 14, 3),
(82, '2020-08-22 19:05:25.427775', '14', 'Klaas Singer', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 14, 3),
(83, '2020-08-22 19:13:28.766974', '8', 'De Stoel', 1, '[{\"added\": {}}]', 13, 3),
(84, '2020-08-22 19:15:56.812881', '2', 'De Stoel', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 16, 3),
(85, '2020-08-22 19:23:07.302809', '15', 'Will Merkx', 1, '[{\"added\": {}}]', 14, 3),
(86, '2020-08-22 19:29:26.986045', '9', 'Blackmail', 1, '[{\"added\": {}}]', 13, 3),
(87, '2020-08-22 19:32:31.034697', '4', 'Blackmail', 1, '[{\"added\": {}}]', 16, 3),
(88, '2020-08-22 19:32:36.902093', '16', 'Erlo van der Hoeven', 1, '[{\"added\": {}}]', 14, 2),
(89, '2020-08-22 19:35:28.244220', '5', 'The Street Rollers', 1, '[{\"added\": {}}]', 16, 2),
(90, '2020-08-22 19:37:30.612964', '5', 'The Street Rollers', 2, '[]', 16, 2),
(91, '2020-08-22 19:38:51.419002', '16', 'Erlo van der Hoeven', 2, '[]', 14, 2),
(92, '2020-08-22 19:40:07.253644', '16', 'Erlo van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Postcode\"]}}]', 14, 2),
(93, '2020-08-22 19:40:45.085628', '5', 'The Street Rollers', 2, '[]', 16, 2),
(94, '2020-08-22 19:44:33.716450', '17', 'Brai Leepel', 1, '[{\"added\": {}}]', 14, 2),
(95, '2020-08-22 19:46:49.779114', '6', 'Wipe Out', 1, '[{\"added\": {}}]', 16, 2),
(96, '2020-08-22 19:53:14.940983', '17', 'Brain Leepel', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 14, 2),
(97, '2020-08-22 19:57:31.417563', '15', 'Will Merkx', 2, '[]', 14, 2),
(98, '2020-08-22 20:02:39.885559', '15', 'Will Merkx', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 14, 2),
(99, '2020-08-22 20:03:09.267397', '4', 'Blackmail', 2, '[]', 16, 2),
(100, '2020-08-22 20:13:31.586558', '2', 'Dapur Jomy', 2, '[]', 18, 2),
(101, '2020-08-22 20:46:57.199151', '2', 'Kumpulan Nationaal Indische Dag', 1, '[{\"added\": {}}]', 17, 2),
(102, '2020-08-22 20:48:05.511144', '6', 'Wipe Out', 2, '[]', 16, 2),
(103, '2020-08-22 20:49:00.163363', '17', 'Brain Leepel', 2, '[]', 14, 2),
(104, '2020-08-22 20:50:22.127712', '3', 'Toko2Way', 2, '[]', 18, 2),
(105, '2020-08-22 20:50:33.555265', '2', 'Dapur Jomy', 2, '[]', 18, 2),
(106, '2020-08-22 20:50:42.435032', '3', 'Toko2Way', 2, '[]', 18, 2),
(107, '2020-08-22 20:51:24.542085', '15', 'Will Merkx', 2, '[]', 14, 2),
(108, '2020-08-22 21:17:53.332231', '3', 'Jorgen van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Telefoon\", \"Mobiel\", \"Emailadress\", \"Soort\"]}}]', 14, 2),
(109, '2020-08-22 21:18:05.793522', '3', 'The Rocking Players', 2, '[]', 16, 2),
(110, '2020-08-22 21:21:48.886654', '17', 'Brain Leepel', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 14, 2),
(111, '2020-08-22 21:22:27.203318', '15', 'Will Merkx', 2, '[]', 14, 2),
(112, '2020-08-22 21:22:52.451310', '15', 'Will Merkx', 2, '[]', 14, 2),
(113, '2020-08-22 21:23:43.807754', '17', 'Brain Leepel', 2, '[]', 14, 2),
(114, '2020-08-22 21:25:00.130978', '14', 'Klaas Singer', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 14, 2),
(115, '2020-08-22 21:25:31.462466', '13', 'CiCi', 2, '[{\"changed\": {\"fields\": [\"Postcode\"]}}]', 14, 2),
(116, '2020-08-22 21:55:21.394143', '2', 'Kumpulan Nationaal Indische Dag', 2, '[{\"changed\": {\"fields\": [\"Thema\"]}}]', 17, 2),
(117, '2020-08-22 21:56:20.162587', '2', 'Kumpulan Nationaal Indische Dag', 2, '[{\"changed\": {\"fields\": [\"Voorverkoop prijs\"]}}]', 17, 2),
(118, '2020-08-22 21:56:49.892215', '2', 'Kumpulan Nationaal Indische Dag', 2, '[{\"changed\": {\"fields\": [\"Zitplaatsen\"]}}]', 17, 2),
(119, '2020-08-22 22:25:28.225487', '3', 'muziektent Culemborg', 1, '[{\"added\": {}}]', 17, 3),
(120, '2020-08-22 22:26:52.231341', '4', '', 1, '[{\"added\": {}}]', 17, 2),
(121, '2020-08-22 22:28:26.018432', '3', 'muziektent Culemborg', 2, '[{\"changed\": {\"fields\": [\"Beheerder\"]}}]', 17, 3),
(122, '2020-08-22 22:40:04.927114', '12', 'Eric Alders', 2, '[]', 14, 2),
(123, '2020-08-22 22:40:39.142540', '12', 'Eric Alders', 2, '[]', 14, 2),
(124, '2020-08-22 22:46:31.432852', '5', 'Het Gouden Hoofd', 1, '[{\"added\": {}}]', 15, 2),
(125, '2020-08-23 18:42:52.421362', '3', 'The Rocking Players', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\"]}}]', 16, 2),
(126, '2020-08-23 18:45:02.545206', '7', 'Martin', 1, '[{\"added\": {}}]', 16, 2),
(127, '2020-08-23 18:49:01.010071', '18', 'Martin', 1, '[{\"added\": {}}]', 14, 2),
(128, '2020-08-23 18:53:23.355548', '7', 'Zang', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 16, 2),
(129, '2020-08-23 18:54:13.636860', '7', 'Zang', 2, '[]', 16, 2),
(130, '2020-08-23 18:58:30.900181', '7', 'Onbekent', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Contact\"]}}]', 16, 2),
(131, '2020-08-23 19:32:01.805724', '4', 'Toto Lannie', 1, '[{\"added\": {}}]', 18, 2),
(132, '2020-08-23 19:33:42.039033', '19', 'Lannie', 1, '[{\"added\": {}}]', 14, 2),
(133, '2020-08-23 19:34:14.035884', '4', 'Toko Lannie', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Contact\"]}}]', 18, 2),
(134, '2020-08-23 19:35:50.299996', '4', 'De Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Aantal leden\"]}}]', 13, 2),
(135, '2020-08-24 15:50:08.125220', '3', 'Jorgen van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Postcode\", \"Adress\", \"Plaats\", \"Telefoon\", \"Mobiel\"]}}]', 14, 3),
(136, '2020-08-24 15:50:48.211406', '3', 'The Rocking Players', 2, '[]', 16, 3),
(137, '2020-08-24 15:51:42.914120', '6', 'The Rocking Players', 2, '[]', 13, 3),
(138, '2020-08-24 15:55:28.979409', '16', 'Erlo van der Hoeven', 2, '[{\"changed\": {\"fields\": [\"Soort\", \"Memo\"]}}]', 14, 3),
(139, '2020-08-24 15:55:57.499979', '5', 'The Street Rollers', 2, '[]', 16, 3),
(140, '2020-08-24 15:56:30.968746', '4', 'De Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Contact\"]}}]', 13, 3),
(141, '2020-08-24 15:57:03.954220', '4', 'The Streetrollers', 2, '[{\"changed\": {\"fields\": [\"Naam\"]}}]', 13, 3),
(142, '2020-08-24 15:58:14.320159', '4', 'The Streetrollers', 3, '', 13, 3),
(143, '2020-08-24 15:59:33.610804', '10', 'The Streetrollers', 1, '[{\"added\": {}}]', 13, 3),
(144, '2020-08-24 16:06:33.960643', '17', 'Brain Leepel', 2, '[{\"changed\": {\"fields\": [\"Memo\"]}}]', 14, 3),
(145, '2020-08-24 16:07:11.479708', '6', 'Wipe Out Selection', 2, '[{\"changed\": {\"fields\": [\"Naam\", \"Soort\"]}}]', 16, 3),
(146, '2020-08-24 16:15:38.107351', '20', 'Fried Holtkamp', 1, '[{\"added\": {}}]', 14, 3),
(147, '2020-08-24 16:17:15.349369', '8', 'The Mordants', 1, '[{\"added\": {}}]', 16, 3),
(148, '2020-08-24 16:26:44.895388', '21', 'Co Bruijns', 1, '[{\"added\": {}}]', 14, 3),
(149, '2020-08-24 17:33:24.620533', '5', 'Test 123', 1, '[{\"added\": {}}]', 17, 1),
(150, '2020-08-24 17:34:04.738037', '5', '', 1, '[{\"added\": {}}]', 18, 1),
(151, '2020-08-24 20:41:15.647610', '8', 'The Mordants', 2, '[{\"changed\": {\"fields\": [\"Soort\"]}}]', 16, 2),
(152, '2020-08-24 21:55:00.970831', '7', 'Onbekent', 3, '', 16, 3),
(153, '2020-08-25 12:40:19.217342', '22', 'Shirley Salomon', 1, '[{\"added\": {}}]', 14, 3),
(154, '2020-08-25 12:41:40.031452', '9', 'Hot News', 1, '[{\"added\": {}}]', 16, 3),
(155, '2020-08-25 12:51:05.277379', '23', 'George Kwekel', 1, '[{\"added\": {}}]', 14, 3),
(156, '2020-08-25 12:53:01.313132', '10', 'Java Guitars Unlimited', 1, '[{\"added\": {}}]', 16, 3),
(157, '2020-08-25 13:06:31.074532', '24', 'Wim Geertman', 1, '[{\"added\": {}}]', 14, 3),
(158, '2020-08-25 13:08:56.042683', '11', 'Keep on Rocking', 1, '[{\"added\": {}}]', 16, 3);

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
(16, 'contacts', 'band'),
(7, 'contacts', 'category'),
(18, 'contacts', 'cateraar'),
(14, 'contacts', 'contact'),
(8, 'contacts', 'contacts'),
(17, 'contacts', 'evenement'),
(13, 'contacts', 'fanclub'),
(10, 'contacts', 'fanclubs'),
(9, 'contacts', 'page'),
(15, 'contacts', 'zaal'),
(5, 'contenttypes', 'contenttype'),
(11, 'fanclub', 'contacts'),
(12, 'fanclub', 'fanclubs'),
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
(1, 'contenttypes', '0001_initial', '2020-08-18 07:45:44.027618'),
(2, 'auth', '0001_initial', '2020-08-18 07:45:47.705446'),
(3, 'admin', '0001_initial', '2020-08-18 07:46:01.041432'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-18 07:46:03.692985'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-18 07:46:03.777417'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-18 07:46:05.873090'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-18 07:46:07.129777'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-18 07:46:08.562585'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-18 07:46:08.666435'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-18 07:46:10.384940'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-18 07:46:10.496236'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-18 07:46:10.571268'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-18 07:46:11.803454'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-18 07:46:13.351548'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-18 07:46:14.650487'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-18 07:46:14.719705'),
(17, 'contacts', '0001_initial', '2020-08-18 07:46:17.034868'),
(18, 'fanclub', '0001_initial', '2020-08-18 07:46:20.952099'),
(19, 'sessions', '0001_initial', '2020-08-18 07:46:23.434960'),
(20, 'contacts', '0002_auto_20200818_0750', '2020-08-18 07:50:44.855743'),
(21, 'contacts', '0003_auto_20200819_1406', '2020-08-19 14:06:39.008384'),
(22, 'contacts', '0004_auto_20200819_1522', '2020-08-19 15:22:53.381447'),
(23, 'contacts', '0005_cateraar', '2020-08-19 15:37:02.818683'),
(24, 'contacts', '0006_auto_20200819_1544', '2020-08-19 15:44:30.030710'),
(25, 'contacts', '0007_auto_20200819_1549', '2020-08-19 15:49:35.062633'),
(26, 'contacts', '0008_auto_20200824_1928', '2020-08-24 17:28:29.487334');

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
('1nfkmzcr32qir5nx922sin59xkpw7aoy', 'NWY3YWMzZDJmMWY2ZTY0OGY3MTcxMDU0ODExZjkwYzllZTcwZjk3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMDdkOTUwMGMyYTNlNDU4Y2RjNDdlYTkwNWJhMzhlYzk0MmJkMmQzIn0=', '2020-09-04 18:00:46.715456'),
('nlcecxqzvaqyq6im6965e2c2cs8x052t', 'NmEzZDk3NDJmYWIyZTZiNDM4NmRiMmNiZjRmOTQzNTdjYTEwNmY1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMGIwODYzZjczMjU1MTY1MTNiM2M3ZTI3Y2MxNDUwNGE4YjA2NjY3In0=', '2020-09-08 12:52:08.899156');

-- --------------------------------------------------------

--
-- Table structure for table `fanclub_contacts`
--

CREATE TABLE `fanclub_contacts` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `achternaam` varchar(50) NOT NULL,
  `emailadress` varchar(254) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `plaats` varchar(50) NOT NULL,
  `telefoon` decimal(11,10) NOT NULL,
  `mobiel` decimal(11,10) NOT NULL,
  `soort` int(11) NOT NULL,
  `memo` longtext NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fanclub_fanclubs`
--

CREATE TABLE `fanclub_fanclubs` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `aantal` varchar(50) NOT NULL,
  `datum_inserted` datetime(6) NOT NULL,
  `datum_updated` datetime(6) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `contacts_category`
--
ALTER TABLE `contacts_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_category_name_80b1e791_uniq` (`name`);

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
-- Indexes for table `fanclub_contacts`
--
ALTER TABLE `fanclub_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fanclub_fanclubs`
--
ALTER TABLE `fanclub_fanclubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fanclub_fanclubs_contact_id_fcfb4438_fk_fanclub_contacts_id` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `contacts_band`
--
ALTER TABLE `contacts_band`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contacts_evenement`
--
ALTER TABLE `contacts_evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `fanclub_contacts`
--
ALTER TABLE `fanclub_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fanclub_fanclubs`
--
ALTER TABLE `fanclub_fanclubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `fanclub_fanclubs`
--
ALTER TABLE `fanclub_fanclubs`
  ADD CONSTRAINT `fanclub_fanclubs_contact_id_fcfb4438_fk_fanclub_contacts_id` FOREIGN KEY (`contact_id`) REFERENCES `fanclub_contacts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
