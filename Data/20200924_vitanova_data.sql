-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2020 at 04:00 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
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
(10, 'Perwarindo (Wageningen)', '135', 0, 0, '0', 0, '600.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '', '2020-09-11 15:14:16.000000', '2020-09-11 15:14:16.000000', 26, 'Angklung orkest'),
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
(5, 'Chinese Garden', 'Chinees', 'NL', '', 'Testje', '2020-08-24 17:33:37.000000', '2020-08-24 17:33:37.000000', 3, '0.00');

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

--
-- Indexes for dumped tables
--

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
-- Indexes for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  ADD CONSTRAINT `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
