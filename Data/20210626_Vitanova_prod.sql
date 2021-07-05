-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2021 at 08:49 AM
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
(3, 'The Rocking Players', '5', 0, 1, '2', 0, '750.00', 'NL', '', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', '2020-09-11 10:01:27.000000', '2021-06-23 12:51:22.411700', 3, '', 'the-rocking-players', 'images/20140101_005905.jpg'),
(4, 'Blackmail', '3', 0, 1, '2', 0, '0.00', 'NL', 'http://www.blackmail-countrymusic.nl', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', '2020-09-11 10:02:27.000000', '2021-03-15 07:58:19.889083', 15, 'Country rock - Indo rock', 'blackmail', 'images/Beatles_GSH1EPp.jpg'),
(5, 'The Streetrollers', '6', 1, 1, '2', 0, '650.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'STREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', '2020-09-11 10:03:00.000000', '2020-09-11 10:03:00.000000', 16, 'Indo Rock / 50 ties and 60ties', 'slug', NULL),
(6, 'Wipe Out Selection', '6', 0, 1, '2', 0, '650.00', 'NL', 'http://www.wipeoutselection.nl/de-band/', 'Richard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', '2020-09-11 10:04:07.000000', '2021-05-21 12:39:57.741033', 17, '', 'wipe-out-selection', 'images/Ruisende_palmbomen.jpg'),
(7, 'The Mordants', '6', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', '2020-09-11 10:04:58.000000', '2021-05-28 18:41:47.670697', 21, '', 'the-mordants', 'images/mordans-1_xj6tftU.jpg'),
(8, 'Java Guitars Unlimited', '4', 0, 1, '0', 0, '0.00', 'NL', 'http://www.javaguitars.nl', 'Smitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310\r\n\r\nindische@artiesten.club', '2020-09-11 10:10:34.000000', '2020-09-11 10:10:34.000000', 107, 'Medly', 'slug', NULL),
(9, 'Keep on Rocking', '4', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', '2020-09-11 10:12:18.000000', '2021-01-13 14:10:00.219721', 24, 'Rock', 'keep-on-rocking', NULL),
(10, 'Perwarindo (Wageningen)', '135', 0, 0, '0', 0, '800.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '2020-09-11 15:14:16.000000', '2021-01-04 12:52:04.968602', 26, 'Angklung orkest', 'perwarindo-wageningen', NULL),
(12, 'DYD (Den Haag)', '142', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', '2020-09-15 12:32:34.000000', '2021-01-28 17:20:10.510919', 112, 'Angklung Orkest', 'dyd-den-haag', NULL),
(13, 'Leni Landweer', '1', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n06 21241300\r\n\r\n10 mei 2021 gebeld met Lani\r\nAfgesproken: voor 12 september indien corona over is.\r\nLani komt met 5 personen.\r\nArtiesten krijgen vrij eten en drinken\r\nEr worden ca. 15 tot 20 traditionele dansen uit gevoerd.\r\nAngkung concert duurt ca. 20 minuten.\r\nDaarna Angklung workshop zo lang het duurt.\r\n\r\nNa afloop catering open.\r\n\r\nFranklin maak de benodigde papieren aan.\r\nEn verstuurt dit naar Lani Landweer.', '2020-09-23 13:32:17.000000', '2021-05-20 17:51:32.357567', 111, 'Angklung orkest', 'leni-landweer', 'images/Leni_Landweer_K3IzB2o.jpg'),
(14, 'Vervallen Hot News', '6', 0, 1, '0', 0, '0.00', 'NL', '', 'Per 5juni ontbonden wdgens verschil van inzichten.', '2020-10-19 19:07:58.000000', '2021-06-09 12:24:09.024496', 22, '50/60 jaren Rock and Roll', 'vervallen-hot-news', ''),
(15, 'Hawaiian Fantasy', '20', 0, 1, '0', 0, '0.00', 'NL', '', 'Aantal dansers kan verschillen naar behoefte\r\n\r\nGage € 350,-- / € 650,--', '2020-10-19 19:17:49.000000', '2020-10-19 19:17:50.000000', 114, '', 'slug', NULL),
(16, 'The Red Pack', '7', 0, 1, '0', 0, '0.00', 'NL', 'http://www.theredpack.nl', '', '2020-10-19 19:41:02.000000', '2020-10-19 19:41:02.000000', 115, '50/60 jaren Rock and Roll', 'slug', NULL),
(17, 'Cliff and his Lonestars', '4', 0, 1, '0', 0, '0.00', 'NL', 'http://www.lonestars.nl', 'info@lonestars.nl\r\n\r\nwww.lonestars.nl', '2020-11-03 14:49:36.000000', '2021-02-17 20:50:42.453859', 116, 'Rock and Roll - country', 'cliff-and-his-lonestars', NULL),
(18, 'The Blue Devils', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'www.thebluedevils.nl', '2020-11-03 14:58:54.000000', '2020-11-03 14:58:54.000000', 117, '50/60 jaren Rock and Roll', 'slug', NULL),
(19, 'The Bretels', '4', 0, 1, '2', 0, '0.00', 'NL', '', 'thebretels@hotmail.nl', '2020-11-03 15:04:56.000000', '2020-11-03 15:04:56.000000', 118, '50/60 jaren Rock and Roll', 'slug', NULL),
(20, 'The Cosy Rockers', '6', 0, 1, '3', 0, '0.00', 'NL', 'http://www.thecosyrockers.nl', '', '2020-11-12 20:21:40.000000', '2021-03-15 07:59:36.671110', 122, '50/60 jaren Rock and Roll', 'the-cosy-rockers', 'images/Beatles_eZUuSQM.jpg'),
(21, 'The Eastern Aces', '5', 0, 0, '2', 0, '0.00', 'NL', 'http://www.theeasternaces.com', '2e contact Carl Tentua\r\n0181 214360', '2020-11-16 13:15:41.000000', '2021-02-17 14:50:07.935773', 123, 'Indo rock - 50/60 jaren', 'the-eastern-aces', NULL),
(22, 'The Rocking Drifters', '4', 0, 1, '2', 0, '0.00', 'NL', 'http://www.therockingdrifters.nl', 'Bandleden:\r\n\r\nHenk Ripzaad - zang rithem gitaar\r\nJo van den Kieboom - drums\r\nTom Janssen - bas - zang\r\nRuud van der Horst - solo gitaar', '2020-11-16 13:30:09.000000', '2020-12-10 13:53:37.755064', 124, '50/60 jaren Rock and Roll', 'the-rocking-drifters', NULL),
(23, 'Straight', '6', 0, 1, '3', 0, '0.00', 'NL', '', '', '2020-11-16 13:45:17.000000', '2021-01-04 14:44:58.681634', 125, 'Country rock - Indo rock', 'straight', NULL),
(24, 'Affinity', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'Bandleden:\r\nHarold Rosso\r\nAlex Dutrieux\r\nMartin Papilaya\r\nWelsey Marotel', '2020-11-16 13:55:50.000000', '2021-03-11 15:05:12.582856', 126, 'country - rock&Roll', 'affinity', 'images/band_picture_new_2_bTPHxh4.jpeg'),
(25, 'The Rocking Teens', '3', 0, 1, '1', 0, '0.00', 'NL', '', 'Aantal leden kan verschillen. Ze treden soms op onder de naam The Rocking Teens & Friends', '2020-11-16 14:08:51.000000', '2020-11-16 14:08:51.000000', 127, 'Indo Rock', 'slug', NULL),
(26, 'The Rocking Coasters', '5', 0, 1, '2', 0, '0.00', 'NL', '', 'Messenger: m.me/TheRockingCoasters\r\n\r\nBandleden:\r\n\r\nJulian Sieben - basgitaar/zang\r\nPiet Krol - drums\r\nRob Manders - sologitaar\r\nJeffrey van Helvoirt - slaggitaar/zang\r\nAd de Leeuw - zang', '2020-11-16 14:30:37.000000', '2020-11-16 14:30:37.000000', 128, '50/60 jaren Rock and Roll', 'slug', NULL),
(27, 'Check Point', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-02-24 13:52:03.000000', '2021-02-24 13:52:39.944564', 156, '', 'check-point', NULL),
(28, 'Meneer Frits (Angklung)', '1', 0, 1, '0', 0, '0.00', 'NL', '', 'Jan van Lieshoutstraat 3\r\n5611 EE Eindhoven\r\nT. 040 - 265 56 10\r\nE. reserveren@meneerfrits.nl', '2021-03-06 11:09:31.000000', '2021-03-06 11:14:48.820877', 156, 'Angklung orkest', 'meneer-frits-angklung', NULL),
(29, 'Duo Freeline', '2', 0, 1, '1', 0, '0.00', 'NL', 'http://www.freeline.artiesten.club', '', '2021-03-08 20:27:41.000000', '2021-03-08 20:32:42.198373', 178, 'Rock and Roll - country', 'duo-freeline', NULL),
(30, 'The Ijmond Players', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-04-12 14:10:54.000000', '2021-04-12 14:12:41.019207', 207, 'Balroom cq. stijl', 'the-ijmond-players', ''),
(31, 'DML DJ', '1', 0, 0, '0', 0, '0.00', 'NL', '', '', '2021-04-12 14:20:30.000000', '2021-04-12 14:21:38.709012', 209, 'Ballroom cq. stijl', 'dml-dj', ''),
(32, 'Juke Joint Jimmies', '3', 0, 1, '0', 0, '0.00', 'NL', '', 'Face Book', '2021-04-12 14:27:54.000000', '2021-04-12 14:29:21.367439', 210, 'Rockabilly music', 'juke-joint-jimmies', ''),
(33, 'Duo Rudy en Cici', '1', 0, 1, '0', 0, '0.00', 'NL', '', '', '2021-04-20 14:52:05.000000', '2021-04-20 14:55:54.002608', 13, '', 'duo-rudy-en-cici', ''),
(34, 'Kwekel productions', '1', 0, 1, '0', 0, '0.00', 'NL', 'http://www.kwekel-evenementen.nl', '0181-324310', '2021-05-08 14:16:10.000000', '2021-05-08 14:23:35.863181', 23, 'Indo Rock', 'kwekel-productions', ''),
(35, '\" Een verrassing \"', '1', 0, 1, '0', 0, '-0.03', 'NL', '', '', '2021-05-21 12:54:21.000000', '2021-05-21 13:00:26.597975', 131, 'Van alles wat wils', 'een-verrassing', 'images/Logo4_Website1.jpg'),
(36, 'Les Hombres', '5', 0, 1, '0', 0, '0.00', 'NL', '', 'lesombres4@gmail.com\r\n0229- 232064\r\n06-627842400', '2021-05-28 19:26:15.000000', '2021-05-28 19:33:52.326090', 236, 'Shadows', 'les-hombres', '');

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
(3, 'Toko2Walk', 'Indisch', 'NL', '', '', '2020-08-21 19:31:58.000000', '2021-04-20 14:50:04.846480', 13, '0.00', 'toko2walk'),
(4, 'Toko Lannie', 'Indisch', 'NL', '', '', '2020-08-23 19:30:46.000000', '2021-06-23 19:07:04.049709', 19, '0.00', 'toko-lannie');

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
(13, 'CiCi', 'onbekend', 'xxxxyy', 'Heerhugowaard ?', '', '06-22606222', 'onbekend@1234.nl', 5, 0, 'NL', 0, '', '2020-08-21 19:24:44.000000', '2021-06-23 19:11:22.745513', '', 'cici', ''),
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
(36, 'Bruisma, J', '', '', '', '0229-123456', '06-1234512345', 'bruinsmajopie@gmail.com', 0, 4, 'NL', 0, '', '2020-09-11 17:44:37.000000', '2021-05-15 19:03:13.227182', 'J', 'bruisma-j', ''),
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
(59, 'Beek, van der John', '', '', 'Haarlem', '023-5376398', '', '', 0, 4, 'NL', 0, '', '2020-09-11 17:54:15.000000', '2021-05-16 13:24:38.875718', 'John', 'beek-van-der-john', ''),
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
(88, 'Saninda', '', '', 'Medemblik', '', '06–52362914', 'Sarinda123@hotmail.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:56:24.000000', '2021-02-09 21:17:30.273536', 'Saninda', 'saninda', NULL),
(89, 'Stoffels', '', '', '', '', '', 'stoffelsc@ziggo.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:56:24.000000', '2020-09-11 17:56:24.000000', '', 'slug', NULL),
(90, 'Leyting, Sylvia', '', '1628xr', 'Zwaag', '', '06–50129692', 'sylvia.leyting@gmail.com', 2, 0, 'NL', 0, '', '2020-09-11 17:56:24.000000', '2021-04-17 09:17:34.505835', 'Sylvia en.....', 'leyting-sylvia', ''),
(91, 'Leijting (Sylvia) F. S.', '', '1628xr', 'Hoorn', '', '', 'sylvia.leyting@gmail.com', 1, 0, 'NL', 0, '', '2020-09-11 17:56:25.000000', '2021-02-09 21:00:36.194329', 'Sylvia', 'leijting-sylvia-f-s', NULL),
(92, 'Daniels, Wim', '', '1628gx', 'Hoorn', '', '', 'tdanielse@gmail.com', 2, 4, 'NL', 0, 'Neemt vaak 7 dames mee meestal me', '2020-09-11 17:56:25.000000', '2021-05-19 14:55:21.899394', 'Wim', 'daniels-wim', ''),
(93, 'Trouwerbach', '', '1695hr', 'Blokker', '', '', 'trouwerbach@quicknet.nl', 1, 0, 'NL', 0, '', '2020-09-11 17:56:25.000000', '2020-09-11 17:56:25.000000', '', 'slug', NULL),
(94, 'van Lochem, Loek en Narda', '', '', '', '', '', 'vanlochems@planet.nl', 1, 4, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-05-15 15:14:08.904445', 'Loek en Narda', 'van-lochem-loek-en-narda', ''),
(95, 'Figueira, W. S.', '', '', 'Alkmaar', '072–5649219', '', 'w.figueira@upcmail.nl', 2, 4, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-05-16 14:41:25.136074', 'W. S.', 'figueira-w-s', ''),
(96, 'Niklaas, W.', '', '', '', '', '', 'w.niklaas@gmail.com', 2, 0, 'NL', 0, '', '2020-09-11 17:56:26.000000', '2021-04-17 09:18:51.895895', 'W.', 'niklaas-w', ''),
(97, 'Waa-Meents, v.d. Marja. O.', 'Moerbalk 80', '1628gx', 'Hoorn', '', '', 'waaza@quicknet.nl', 1, 4, 'NL', 0, '15 mei 1x reserveren 29 aug', '2020-09-11 17:56:26.000000', '2021-05-16 19:07:48.817979', 'Marja. O.', 'waa-meents-vd-marja-o', ''),
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
(113, 'Danse, Piet', '', '', '', '', '06-2939320', '', 0, 0, 'NL', 0, 'Contact persoon  gelegenheids-band (Ramona).\r\n\r\nTelefoonnummer is niet compleet.', '2020-10-14 20:10:58.000000', '2021-01-07 21:10:23.893071', '', 'danse-piet', NULL),
(114, 'Junius', 'onbekend', '', '', '', '06-54746285', 'junius_tiareotahiti@hotmail.com', 7, 0, 'NL', 0, '', '2020-10-19 19:13:49.000000', '2021-02-14 10:33:20.241218', '', 'junius', NULL),
(115, 'Bes, René', 'onbekend', '', '', '', '06-22170099', 'info@theredpack.nl', 0, 0, 'NL', 0, 'Bes promotions\r\n\r\nwww.theredpack.nl', '2020-10-19 19:36:24.000000', '2021-06-04 22:26:23.138872', 'René', 'bes-rene', ''),
(116, 'Breton van Groll, Cliff', 'onbekend', '', '', '', '06-42725412', 'info@lonestars.nl', 7, 0, 'NL', 0, 'Cliff and his lonestars', '2020-11-03 14:45:55.000000', '2021-06-04 22:29:47.240435', 'Cliff', 'breton-van-groll-cliff', ''),
(117, 'Dick', 'onbekend', '', '', '', '06-58890342', 'thebluedevils@gmail.com', 7, 0, 'NL', 0, '', '2020-11-03 14:56:30.000000', '2021-02-09 16:31:13.068974', 'Dick', 'dick', NULL),
(118, 'onbekend', '', '', '', '', '06-23981063', '', 0, 0, 'NL', 0, '', '2020-11-03 15:02:35.000000', '2021-01-07 21:09:41.795857', '', 'onbekend', NULL),
(119, 'Stichting het gehandicapte kind', 'Wibautstraat 212-214', '1091GS', 'Amsterdam', '020-6791200', '', '', 13, 0, 'NL', 0, 'het Gehandicapte Kind\r\nWibautstraat 212-214\r\n1091 GS Amsterdam\r\n  Tel. 020-6791200\r\nFacebook Instagram Youtube Twitter \r\nBankrekening\r\nIBAN: NL76 RABO 0334 4334 44\r\nKvK nummer\r\nS 41199157\r\nBTW nummer\r\n0029. 59.173.B.01', '2020-11-10 10:46:49.000000', '2021-04-20 15:06:55.517016', '', 'stichting-het-gehandicapte-kind', ''),
(122, 'Bruin, Ron', 'onbekend', '', '', '', '06-25021257', '', 0, 0, 'NL', 0, '', '2020-11-12 20:19:45.000000', '2021-06-05 09:11:56.077993', 'Ron', 'bruin-ron', ''),
(123, 'Brand Horninge, v.d. Frans', '', '', 'Zoetermeer', '', '06-46242584', 'lookatfrans@ziggo.nl', 7, 0, 'NL', 0, '2e contact:  Carl Tentua\r\n0181 214360', '2020-11-16 13:12:14.000000', '2021-02-17 14:43:47.365102', 'Frans', 'brand-horninge-vd-frans', NULL),
(124, 'Janssen, Tom', '', '', '', '', '06-57907943', 'rockingdrifters@gmail.com', 0, 0, 'NL', 0, '', '2020-11-16 13:27:53.000000', '2021-06-05 09:06:51.202708', 'Tom', 'janssen-tom', ''),
(125, 'Severijn, Huib', '', '', '', '', '06-17383473', 'severijnhc@gmail.com', 0, 0, 'NL', 0, 'Opgericht december 1999', '2020-11-16 13:42:44.000000', '2021-01-07 21:04:41.056035', 'Huib', 'severijn-huib', NULL),
(126, 'Rosso, Harold', '', '', '', '087-7847093', '', 'haroldrosso@gmail.com', 0, 5, 'NL', 0, '', '2020-11-16 13:53:52.000000', '2021-05-19 14:08:39.595966', 'Harold', 'rosso-harold', ''),
(127, 'Mosies, Arie', '', '', '', '076-872461', '06-83593788', 'ariemosies@gmail.com', 0, 0, 'NL', 0, '', '2020-11-16 14:06:44.000000', '2021-01-06 10:43:55.772792', 'Arie', 'mosies-arie', NULL),
(128, 'Sieben, Julian', '', '', '', '', '06-83386140', '', 0, 0, 'NL', 0, 'contact via messenger\r\nm.me/The RockingCoasters', '2020-11-16 14:28:39.000000', '2021-01-07 21:07:06.689600', 'Julian', 'sieben-julian', NULL),
(129, 'Hessels, Corrie', 'Dijkgraaf IJffstraat 49', '1566JZ', 'Assendelft', '075-6421443', '06-22538939', 'corriehessels@upcmail.nl', 9, 0, 'NL', 0, '', '2020-11-21 19:51:57.000000', '2021-01-07 21:02:38.690539', 'Corrie', 'hessels-corrie', NULL),
(130, 'Groen', '', '', 'Hoorn', '0229-505964', '', '', 2, 6, 'NL', 0, 'Canceled : Had voor Line dance 6 kaartjes besteld', '2020-11-22 12:27:40.000000', '2021-05-19 14:47:13.830683', '', 'groen', ''),
(131, 'Bieri, Franklin', 'Gording 112', '1628JG', 'Hoorn', '0229-234032', '06-83351218', 'adoe.adoe@acaravitanova.nl', 9, 0, 'NL', 1, '', '2020-12-01 15:48:51.000000', '2021-04-23 18:30:58.977185', 'Franklin', 'bieri-franklin', ''),
(132, 'Lodal, Rob &Maria', 'Onbekend', '', 'Amsterdam', '', '', 'lodal@planet.nl', 2, 0, 'NL', 0, 'Bekenden van Kumpulan heemskerk.\r\nDe man die bij ECN te Petten heeft gewerkt', '2020-12-22 14:21:56.000000', '2021-02-09 16:28:12.469207', 'Rob & Maria', 'lodal-rob-maria', NULL),
(133, 'Heeman, Andries', '', '', '', '', '', 'heemanandriesvetter@gmail.com', 8, 0, 'NL', 0, 'Waarschijnlijk ontmoet tijden goud voor oud in het Huis Verloren of\r\ngeluids technicus', '2020-12-22 14:30:07.000000', '2021-02-14 09:58:07.474257', 'Andries', 'heeman-andries', NULL),
(134, 'Wie is Wies', '', '', '', '', '06-44858172', '', 0, 0, 'NL', 0, '', '2020-12-22 14:33:01.000000', '2021-01-06 11:05:16.781095', '', 'wie-is-wies', NULL),
(135, 'Indisch4ever', '', '', '', '', '', 'info@indisch4ever.nu', 13, 0, 'NL', 0, 'www.indisch4ever.nu', '2020-12-22 14:38:05.000000', '2021-04-17 09:03:36.595986', '', 'indisch4ever', ''),
(136, 'wie is dit', '', '', '', '', '06-29335059', '', 0, 0, 'NL', 0, 'Dansen Rock and Roll', '2020-12-23 21:18:04.000000', '2021-06-05 09:09:06.689700', 'Samantha', 'wie-is-dit', ''),
(137, '(Wie is dit) Haarman', '', '', '', '', '06-1234512345', 'ita@backin1959.com', 1, 0, 'NL', 0, 'Wie is dit', '2020-12-23 21:26:32.000000', '2021-04-22 13:36:29.405851', 'Jace', 'wie-is-dit-haarman', ''),
(138, 'Pijl, van der Dick', '', '', 'Hoorn', '', '', '', 9, 0, 'NL', 0, '', '2021-01-08 21:42:01.000000', '2021-01-08 22:03:50.730016', 'Dick', 'pijl-van-der-dick', NULL),
(140, 'Diellemans, Roelof', '', '', '', '', '06-1747145', '', 14, 0, 'NL', 0, 'Verhuurbedrijf voor de Horeca.op Hoorn 80\r\n\r\nIs eigenaar van een Betjak', '2021-02-18 12:32:50.000000', '2021-05-19 14:36:47.045629', 'Roelof', 'diellemans-roelof', ''),
(141, 'Weel, Ada', '', '', '', '', '', 'ada_weel@hotmail.com', 2, 5, 'NL', 0, 'ada_weel@hotmail.com', '2021-02-20 20:51:57.000000', '2021-06-14 15:11:28.590379', 'Ada', 'weel-ada', ''),
(142, 'Bayards, Marcel en Tilly', '', '', '', '', '', 'marcel.bayards@hetnet.nl', 2, 4, 'NL', 0, 'e-mail ook tilly. enz', '2021-02-20 20:53:35.000000', '2021-05-19 14:29:30.280649', 'Marcel en Tilly', 'bayards-marcel-en-tilly', ''),
(143, 'Rijswijk, Joke', '', '', '', '', '', 'joke.y.rijswijk@live.nl', 2, 5, 'NL', 0, '', '2021-02-20 20:59:49.000000', '2021-05-08 19:37:24.047615', 'Joke', 'rijswijk-joke', ''),
(144, 'Wijlen, ter Heike', '', '', '', '', '', 'heiketerwijlen@hotmail.com', 2, 4, 'NL', 0, 'Niet op maandag', '2021-02-20 21:01:02.000000', '2021-05-10 12:26:30.106397', 'Heike', 'wijlen-ter-heike', ''),
(145, 'Walstijn, Hennie', '', '', '', '', '', 'hennievw28@hotmail.com', 1, 4, 'NL', 0, 'Wilgaarden stad', '2021-02-20 21:04:06.000000', '2021-05-16 13:33:18.926603', 'Hennie', 'walstijn-hennie', ''),
(146, 'Vonk, Elisabeth', '', '', '', '', '', 'd.vonk1930@kpnmail.nl', 2, 4, 'NL', 0, '', '2021-02-20 21:07:16.000000', '2021-05-10 12:06:20.380948', 'Elisabet', 'vonk-elisabeth', ''),
(147, 'Dijk, van', 'Wabenstraat 1', '1624 G', 'Hoorn', '', '', '', 1, 4, 'NL', 0, 'Geen e-mail adres opgegeven', '2021-02-20 21:12:29.000000', '2021-05-10 12:25:56.643686', '', 'dijk-van', ''),
(148, 'Weekblad op zondag', '', '', '', '', '', 'weekbladopzondag@ziggo.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:07:05.000000', '2021-02-24 10:08:19.828021', '', 'weekblad-op-zondag', NULL),
(149, 'Westfriesopzondag', '', '', '', '', '', 'westfrieslandopzondag@rodi.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:08:21.000000', '2021-02-24 10:09:37.410026', '', 'westfriesopzondag', NULL),
(150, 'redactie wfr', '', '', '', '', '', 'redactie.wfr@rodi.nl', 0, 0, 'NL', 0, 'Ook via Karel Huijing', '2021-02-24 10:09:38.000000', '2021-06-24 19:43:01.976266', '', 'redactie-wfr', ''),
(151, 'manuela weekbladzondag', '', '', '', '', '', 'manuela@weekbladzondag.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:10:31.000000', '2021-02-24 10:11:40.526091', '', 'manuela-weekbladzondag', NULL),
(152, 'K. Klinkenberg bdu', '', '', '', '', '', 'k.klinkenberg@bdu.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:11:40.000000', '2021-02-24 10:12:48.606978', '', 'k-klinkenberg-bdu', NULL),
(153, 'Redactie wef', '', '', '', '', '', 'redactie.wef@nhd.nl', 0, 0, 'NL', 0, '', '2021-02-24 10:12:48.000000', '2021-02-24 10:13:45.324618', '', 'redactie-wef', NULL),
(154, 'Mooy, Sandra', '', '', '', '', '06-10296299', 'info@sandramooy.nl', 4, 0, 'NL', 0, '', '2021-02-24 10:16:29.000000', '2021-02-24 10:21:59.184626', 'Sandra', 'mooy-sandra', NULL),
(155, 'Chatelin, Eddy', '', '', '', '', '06-53287430', '', 4, 0, 'NL', 0, 'Ex.Crazy Rockers', '2021-02-24 10:19:05.000000', '2021-05-09 09:52:11.106563', 'Eddy', 'chatelin-eddy', ''),
(156, 'Onbekend', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '2021-02-24 13:51:19.000000', '2021-02-24 13:51:47.303522', '', 'onbekend', NULL),
(157, 'Gunthardt, Errol', '', '', '', '', '06-36531959', '', 0, 0, 'NL', 0, 'Organisatior Paser Malams', '2021-02-24 14:01:19.000000', '2021-02-24 14:02:46.623319', 'Errol', 'gunthardt-errol', NULL),
(158, 'Surijadi, Sarinda', '', '', '', '', '', 'sarinda123-17050@kpn.nl', 2, 4, 'NL', 0, '', '2021-02-24 14:06:06.000000', '2021-05-15 15:18:17.487497', 'Sarinda', 'surijadi-sarinda', ''),
(159, 'Media, niet deleten', '', '', '', '', '', 'dummy@dummy.nl', 10, 0, 'NL', 0, 'Rodi.nl                                                                            advies@rodi.nl                              tel. 0226 333311\r\noozo.nl\r\nuitzining,nl\r\ntjampoer.nl                                                                    info@tjampour.nl                           tel. 06 81429655                                                                                                                          \r\n hoornradio.nl                                                                redactie@hoorngids.nl                                                                                                               \r\nHoornsdagblad.nl                                                           redactie@xyto.nl                           tel. 072 820060\r\nHoorngids.                                                                      redactie@hoorngids.nl\r\nAndijkernieuws.net                                                         apbredactie@gmail.com               tel. 06 53870258\r\ndrimble.nl                                                                       info@drimble.nl\r\nvooreenmooiestad.nl                                                                                                           tel. 06 14355574\r\nlokaaltotaal.nl                                                                 info@lokaaltotaal.nl                     tel. 0223 661325\r\nikhouvanhoorn.nl                                                           info@ikhouvanhoorn.nl\r\nhuisverloren.nl                                                               info@huisverloren.nl                     tel. 0229 210608                                 Christiaan Mulder\r\nveeltebeleven.nl                                                                                                                   tel. 0226 391031\r\nweekbladzondag.nl                                                        redactie@weekbladzondag.nl      tel. 0229 213633\r\nrodimedia                                                                                                                            tel. 0226 333311\r\nenkhuizerdagblad.nl                                                       info@xyto.nl                                 tel. 072 8200600\r\nde andijker                                                                      info@andijker.nl                          tel. 0228 593605', '2021-02-24 14:09:20.000000', '2021-04-18 20:28:33.329325', 'niet deleten', 'media-niet-deleten', ''),
(160, 'Rodi.nl', '', '', '', '0226-333311', '', 'advies@rodi.nl', 10, 0, 'NL', 1, '', '2021-03-05 22:41:52.000000', '2021-06-04 22:12:44.458094', '', 'rodinl', ''),
(161, 'oozo.nl', '', '', '', '', '', '', 10, 0, 'NL', 1, '', '2021-03-06 19:41:32.000000', '2021-03-06 19:42:41.795411', '', 'oozonl', NULL),
(162, 'uitzinnig.nl  Ravesteyn Philip van', '', '', '', '', '', 'redactie@uitzinnig.nl', 10, 0, 'NL', 1, 'https://mail.google.com/mail/u/0/#inbox/FMfcgxwLtkdRCJHkhbFPgGLCtkKpWKdK\r\n\r\nClaudius 8\r\n3962 LT Wijk bij Duurstede\r\n0343-593410\r\nKvK: 24287528\r\nredactie@uitzinnig.nl\r\nwww.uitzinnig.nl\r\n\r\nP.S. Beheer nu uw vermelding op Uitzinnig.nl:\r\nhttps://www.uitzinnig.nl/event-edit.aspx?c=f9094e100b2578738f5c5ffdf0a03601&ml=1', '2021-03-06 19:42:59.000000', '2021-06-24 20:04:11.564717', 'Philip van Ravesteyn', 'uitzinnignl-ravesteyn-philip-van', ''),
(163, 'tjampoer.nl', '', '', '', '', '06-81429655', 'info@tjampoer.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:43:48.000000', '2021-06-05 09:09:37.342078', '', 'tjampoernl', ''),
(164, 'hoornradio.nl', '', '', '', '', '', 'redactie@hoorngids.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:47:47.000000', '2021-03-06 19:48:50.605164', '', 'hoornradionl', NULL),
(165, 'hoornsdagblad.nl', '', '', '', '072-8200600', '', 'redactie@xyto.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:49:06.000000', '2021-06-04 21:39:36.250655', '', 'hoornsdagbladnl', ''),
(166, 'hoorngids.nl', '', '', '', '', '', 'redactie@hoorngids.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:51:04.000000', '2021-03-06 19:51:39.522303', '', 'hoorngidsnl', NULL),
(167, 'andijkernieuws.net', '', '', '', '', '06-53870258', 'apbredactie@gmail.com', 10, 0, 'NL', 1, '', '2021-03-06 19:51:57.000000', '2021-06-04 21:16:24.379149', '', 'andijkernieuwsnet', ''),
(168, 'drimble.nl', '', '', '', '', '', 'info@drimble.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:53:31.000000', '2021-03-06 19:54:23.580712', '', 'drimblenl', NULL),
(169, 'vooreenmooiestad.nl', '', '', '', '', '06-14355574', '', 10, 0, 'NL', 1, '', '2021-03-06 19:54:43.000000', '2021-06-04 21:13:48.610328', '', 'vooreenmooiestadnl', ''),
(170, 'lokaaltotaal.nl', '', '', '', '0223-661425', '', 'info@lokaaltotaal.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:55:54.000000', '2021-06-04 22:10:33.820277', '', 'lokaaltotaalnl', ''),
(171, 'ikhouvanhoorn.nl', '', '', '', '', '', 'info@ikhouvanhoorn.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:57:38.000000', '2021-03-06 19:58:22.613890', '', 'ikhouvanhoornnl', NULL),
(172, 'huisverloren.nl', '', '', 'Hoorn', '0229-210608', '', 'info@huisverloren.nl', 10, 0, 'NL', 1, '', '2021-03-06 19:58:43.000000', '2021-06-04 21:40:04.618548', 'Christiaan', 'huisverlorennl', ''),
(173, 'veeltebeleven.nl', '', '', '', '0226-391031', '', '', 10, 0, 'NL', 1, '', '2021-03-06 20:01:25.000000', '2021-06-04 22:11:39.419413', '', 'veeltebelevennl', ''),
(174, 'weekbladzondag.nl', '', '', '', '0229-213633', '', 'redactie@weekbladzondag.nl', 10, 0, 'NL', 1, 'Ook via Karel Huijing\r\n\r\nhttps://weekbladzondag.nl/redactie/redactie--uploadformulier', '2021-03-06 20:02:31.000000', '2021-06-24 19:46:26.584392', '', 'weekbladzondagnl', ''),
(175, 'rodimedia.nl', '', '', '', '0226-333311', '', '', 10, 0, 'NL', 1, '', '2021-03-06 20:03:32.000000', '2021-06-04 22:12:14.523912', '', 'rodimedianl', ''),
(176, 'enkhuizerdagblad.nl', '', '', '', '072-8200600', '', 'info@xyto.nl', 10, 0, 'NL', 1, '', '2021-03-06 20:04:29.000000', '2021-06-04 21:39:07.043899', '', 'enkhuizerdagbladnl', ''),
(177, 'de andijker', '', '', '', '0228-593605', '', 'info@andijker.nl', 10, 0, 'NL', 1, '', '2021-03-06 20:07:57.000000', '2021-06-04 22:09:46.341938', '', 'de-andijker', ''),
(178, 'Stevens, Benny', '', '3222AG', '', '0181-324310', '06-54327012', 'indische@artiesten.club', 0, 0, 'NL', 0, '', '2021-03-08 20:23:17.000000', '2021-06-04 22:14:30.495736', 'Benny', 'stevens-benny', ''),
(179, 'Rijswijk, Joke Y', '', '', 'Hoorn', '', '', 'joke.y.rijswijk@live.nl', 1, 0, 'NL', 0, '', '2021-03-31 20:05:28.000000', '2021-03-31 20:09:00.413410', 'Joke/Harrij', 'rijswijk-joke-y', ''),
(180, 'Evers, Han', '', '', 'Hoorn', '', '06', '', 2, 4, 'NL', 1, '', '2021-04-06 14:01:03.000000', '2021-05-10 12:04:56.592880', 'Han', 'evers-han', ''),
(181, 'Huying, Karel & Sonja', '', '', 'Hoorn', '0229-235850', '', '', 1, 0, 'NL', 0, 'Eventual bestuurslid\r\n7 apr gesproken over bestuursfunctie', '2021-04-07 20:15:02.000000', '2021-04-08 20:20:42.368150', 'Karel & Sonja', 'huying-karel-sonja', ''),
(182, 'Schoonen, Peter William', '', '', 'Noordwijk', '', '06-53547736', '', 0, 0, 'NL', 0, 'Robijnstaete.weebly.com', '2021-04-07 20:21:47.000000', '2021-05-23 13:31:46.491382', 'Peter William', 'schoonen-peter-william', ''),
(183, 'Berkum-Schouten, van Marianne', 'Fruitlaan 111', '1689HH', 'Zwaag', '0229-237470', '', 'mjs.van.berkum-schouten@quicknet.nl', 12, 4, 'NL', 0, 'Seniorenvereniging Zwaag', '2021-04-08 20:04:56.000000', '2021-06-04 21:42:02.689562', 'Marianne', 'berkum-schouten-van-marianne', ''),
(184, 'Ottonel', '', '', '', '', '', 'ottonel20@gmail.com', 0, 0, 'NL', 0, 'Had 2 kaartjes besteld', '2021-04-09 13:59:21.000000', '2021-04-09 14:06:50.661007', 'Otto & Nel', 'ottonel', ''),
(185, 'Rigter. E', '', '', '', '', '', 'e.rigter@outlook.com', 2, 0, 'NL', 0, 'Relatie van Amy', '2021-04-09 14:09:57.000000', '2021-05-17 14:27:35.190571', 'E', 'rigter-e', ''),
(186, 'Hamaker, Anna', '', '', '', '', '', 'annammbakker@ziggo.nl', 3, 5, 'NL', 0, '', '2021-04-09 14:12:42.000000', '2021-05-23 14:06:38.461448', 'Anna', 'hamaker-anna', ''),
(187, 'Koopman, Agnita', '', '', '', '', '', 'appelman@quicknet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:15:15.000000', '2021-05-23 14:07:45.633540', 'Agnita', 'koopman-agnita', ''),
(188, 'Hibma, Andries', '', '', '', '', '', 'ahibma@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:17:22.000000', '2021-05-23 14:04:30.437308', 'Andries', 'hibma-andries', ''),
(190, 'Bakker, Veronica', '', '', '', '', '', 'veronicabakker@xs4all.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:21:28.000000', '2021-05-23 13:26:44.775645', 'Veronica', 'bakker-veronica', ''),
(192, 'Craane, Ben', '', '', '', '', '', 'bencraane@quicknet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:27:26.000000', '2021-05-23 14:05:05.620345', 'Ben', 'craane-ben', ''),
(193, 'Weatern', '', '', '', '', '', 'c.western@quicknet.nl', 0, 0, 'NL', 0, '', '2021-04-09 14:28:35.000000', '2021-04-09 14:29:25.315126', 'C', 'weatern', ''),
(194, 'Bartens, Charlotte', '', '', '', '', '', 'charlottebartens@hotmail.com', 0, 0, 'NL', 0, '', '2021-04-09 14:30:21.000000', '2021-05-23 13:27:32.478359', 'Charlotte', 'bartens-charlotte', ''),
(195, 'Leyen, Wil', '', '', '', '', '', 'wilvanleyen@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:32:03.000000', '2021-05-23 14:08:26.558868', 'Wil van', 'leyen-wil', ''),
(196, 'Nugter, C.J.', '', '', '', '', '', 'cj.nugter@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:33:35.000000', '2021-05-23 14:11:30.700776', 'C.J.', 'nugter-cj', ''),
(197, 'Dol, Corrie', '', '', '', '', '', 'cmdollaan@gmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:34:44.000000', '2021-05-23 14:05:46.964137', 'Corrie', 'dol-corrie', ''),
(198, 'Cor-Hannie', '', '', '', '', '', 'cor-hannie@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:37:02.000000', '2021-05-19 14:58:50.919625', 'Cor & Hannie', 'cor-hannie', ''),
(199, 'Truin, Dave', '', '', '', '', '', 'truin1@hotmail.com', 0, 4, 'NL', 0, '', '2021-04-09 14:38:33.000000', '2021-05-23 14:13:07.196142', 'Dave', 'truin-dave', ''),
(200, 'Groen', '', '', '', '', '', 'winveragroen@outlook.com', 0, 0, 'NL', 0, '', '2021-04-09 14:41:01.000000', '2021-04-09 14:41:50.925123', 'Wim & Vera', 'groen', ''),
(201, 'Paelsen,Corrie', '', '', '', '', '', 'corry.p@quicknet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:42:04.000000', '2021-05-23 14:12:16.068708', 'Corrie', 'paelsencorrie', ''),
(202, 'Meekel, Desire', '', '', '', '', '', 'desire.meekel@quickneet.nl', 0, 5, 'NL', 0, '', '2021-04-09 14:44:08.000000', '2021-05-23 14:08:59.344781', 'Desire', 'meekel-desire', ''),
(203, 'zee, dorati', '', '', '', '', '', 'dorativanrussum@hotmail.com', 0, 5, 'NL', 0, '', '2021-04-09 14:46:29.000000', '2021-05-19 14:10:48.060045', 'E van der', 'zee-dorati', ''),
(204, 'X', '', '', '', '', '', '1771sk-27@hetnet.nl', 1, 0, 'NL', 0, '', '2021-04-09 14:48:21.000000', '2021-04-17 09:08:32.728454', '1771sk', 'x', ''),
(206, 'Sijm, Mark', '', '', 'Hoorn', '', '06-14355378', 'sijmmark@gmail.com', 0, 0, 'NL', 0, 'Beheerder Oosterkerk', '2021-04-11 15:19:34.000000', '2021-06-05 09:08:40.615275', 'Mark', 'sijm-mark', ''),
(207, 'Kok, Jaap', '', '1951', 'Velsen Noord', '0251-221492', '06-20591074', 'kok.j@quicknet.nl', 0, 0, 'NL', 0, '', '2021-04-12 13:59:55.000000', '2021-06-04 22:13:23.239557', 'Jaap', 'kok-jaap', ''),
(208, 'DJ Sonny', '', '', '', '', '06-49905724', 'oldharbour@quicknet.nl', 11, 0, 'NL', 0, '', '2021-04-12 14:14:33.000000', '2021-04-17 08:59:09.677652', '', 'dj-sonny', ''),
(209, 'Louter DJ, Maurice', '', '1693 A', 'Wervershoof', '0228-785350', '', 'maurice@dmisound.com', 0, 0, 'NL', 0, '', '2021-04-12 14:16:49.000000', '2021-04-12 14:20:02.567490', 'Maurice', 'louter-dj-maurice', ''),
(210, 'Mark', '', '', '', '', '06-19683313', 'jukejointjimmies@hotmail.com', 0, 0, 'NL', 0, '', '2021-04-12 14:24:49.000000', '2021-04-12 14:27:45.124045', 'Juke Joint Jimmies', 'mark', ''),
(211, 'Lubbers, Francisca', '', '', 'Wognum', '0229-504561', '06-24134188', 'franciscalubbers@hotmail.com', 0, 4, 'NL', 0, '', '2021-05-10 12:16:59.000000', '2021-06-04 21:44:13.761111', 'francisca, Marijke', 'lubbers-francisca', ''),
(212, 'Blom, Manuela', '', '', '', '', '06-55704534', '', 10, 0, 'NL', 0, '', '2021-05-10 12:34:53.000000', '2021-06-04 22:29:19.820182', 'Manuela', 'blom-manuela', ''),
(213, 'Laan, Ria', '', '', '', '', '', 'laanria@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 12:46:13.000000', '2021-05-23 12:47:57.152188', 'Ria', 'laan-ria', ''),
(214, 'Versluys, Ria', '', '', '', '', '', 'mcm.versluys@quicknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:48:06.000000', '2021-05-23 12:50:35.459163', 'M.C.M. (Ria)', 'versluys-ria', ''),
(215, 'Harst, Rob en Cobie', '', '', '', '', '', 'r.v.d.harst@ziggo.nl', 0, 0, 'NL', 0, '', '2021-05-23 12:50:35.000000', '2021-05-23 12:52:31.207104', 'Rob en Cobie', 'harst-rob-en-cobie', ''),
(216, 'Kuin, Roel', '', '', '', '', '', 'roelkuin@live.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:52:31.000000', '2021-05-23 12:53:42.162051', 'Roel', 'kuin-roel', ''),
(217, 'Dijkstra, Ruurd', '', '', '', '', '', 'ruurd.dijkstra@online.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:53:42.000000', '2021-05-23 12:55:26.208027', 'Ruurd', 'dijkstra-ruurd', ''),
(218, 'Shaleika', '', '', '', '', '', 'shaleika@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 12:55:26.000000', '2021-05-23 13:24:59.223033', 'Imajan', 'shaleika', ''),
(219, 'Boekel, Theo', '', '', '', '', '', 'theoboekel@hetnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:56:41.000000', '2021-05-23 12:57:33.019526', 'Theo', 'boekel-theo', ''),
(220, 'Baijards, Tilly en Marcel', '', '', '', '', '', 'tilly.baijards@hetnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:57:33.000000', '2021-05-23 13:08:14.110272', 'Tilly en Marcel', 'baijards-tilly-en-marcel', ''),
(221, 'Wagenaar, Ton', '', '', '', '', '', 'tonwagenaar@quicnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:59:03.000000', '2021-05-23 12:59:58.453733', 'Ton', 'wagenaar-ton', ''),
(222, 'Ganseman, Tonni', '', '', '', '', '', 'ganseman@simpc.nl', 0, 5, 'NL', 0, '', '2021-05-23 12:59:58.000000', '2021-05-23 13:01:02.113836', 'Tonni', 'ganseman-tonni', ''),
(223, 'Beelen, Tonnie', '', '', '', '', '', 'b.beelen@quicknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:01:02.000000', '2021-05-23 14:00:49.165720', 'Tonnie', 'beelen-tonnie', ''),
(224, 'Gilst, w van', '', '', '', '', '', 'wvangilst@qucknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:02:01.000000', '2021-05-23 13:03:07.585196', 'W. van', 'gilst-w-van', ''),
(225, 'Buter, Wil en Nel', '', '', '', '', '', 'wj.butter@kpnmail.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:03:07.000000', '2021-05-23 13:17:34.806830', 'Wil en Nel', 'buter-wil-en-nel', ''),
(226, 'Leyen, Wil van', '', '', '', '', '', 'wilvanleyen@hotmail.com', 0, 6, 'NL', 0, '', '2021-05-23 13:04:10.000000', '2021-05-23 13:05:13.196232', 'Wil van', 'leyen-wil-van', ''),
(227, 'Ooievaar, Peter', '', '', '', '', '', 'vrievaar@hotmail.com', 0, 8, 'NL', 0, '', '2021-05-23 13:38:10.000000', '2021-05-23 13:39:56.578282', 'Peter', 'ooievaar-peter', ''),
(228, 'Steen, Peter van der', '', '', '', '', '', 'pevades@live.com', 0, 8, 'NL', 0, '', '2021-05-23 13:40:12.000000', '2021-05-23 13:41:22.979654', 'Peter', 'steen-peter-van-der', ''),
(229, 'Brink, Peter van de', '', '', '', '', '', 'peter.vdbrink@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 13:41:38.000000', '2021-05-23 13:43:43.966965', 'Peter', 'brink-peter-van-de', ''),
(230, 'Veen, Peter van', '', '', '', '', '', 'peter.vanveen@quicnet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:43:45.000000', '2021-05-23 13:46:15.440425', 'Peter', 'veen-peter-van', ''),
(231, '??, Pieter en Erna', '', '', '', '', '', '', 0, 5, 'NL', 0, '', '2021-05-23 13:46:15.000000', '2021-05-23 13:58:54.564026', 'Pieter en Erna', 'pieter-en-erna', ''),
(232, 'Heddes, P.L.C.M.', '', '', '', '', '', 'plcm.heddes@quicknet.com', 0, 5, 'NL', 0, '', '2021-05-23 13:47:23.000000', '2021-05-23 13:49:29.033684', 'P.L.C.M.', 'heddes-plcm', ''),
(233, 'Veen, Rene', '', '', '', '', '', 'rene.vanveen@quicknet.nl', 0, 5, 'NL', 0, '', '2021-05-23 13:49:29.000000', '2021-05-23 13:52:10.855980', 'Rene', 'veen-rene', ''),
(234, 'Bron, Ron', '', '', '', '', '', 'rbron19733@kpn.nl', 0, 6, 'NL', 0, 'Danseen', '2021-05-23 13:52:11.000000', '2021-05-23 13:54:34.289276', 'Ron', 'bron-ron', ''),
(235, 'Blomme, Vincent', '', '', '', '', '', 'vincent24@hotmail.com', 0, 5, 'NL', 0, '', '2021-05-23 13:54:34.000000', '2021-05-23 13:55:57.076242', 'Vincent', 'blomme-vincent', ''),
(236, 'Les Ombres', '', '', '', '0229-232064', '06-27842400', 'lesombres4@gmail.com', 7, 0, 'NL', 0, '', '2021-05-28 19:29:43.000000', '2021-05-28 19:31:28.777628', 'Onbekend', 'les-ombres', ''),
(237, 'Uit Braband', '', '', '', '', '', 'fitters-degouw@home.nl', 0, 8, 'NL', 0, 'Ontmoet bij Verbiest 1ste Rock & Roll vrijdansen', '2021-06-07 18:45:54.000000', '2021-06-07 18:52:09.794876', 'Braband', 'uit-braband', ''),
(238, 'Bruijn-Teterisse', '', '', 'Hoorn', '', '', '', 0, 4, 'NL', 0, 'Samen met J.Rozenberg - Kirkhoff', '2021-06-22 21:16:02.000000', '2021-06-23 12:45:08.782872', 'L, en J. Rozenberg-K', 'bruijn-teterisse', ''),
(239, 'Rozenberg - Krikhoff, J', '', '1621 A', 'Hoorn', '', '06-23096919', 'j.roznenberg@quicknet.nl', 0, 4, 'NL', 0, 'Samen met L. Bruijn - Tererisse\r\n22 juni 2 kaartjes NID', '2021-06-22 21:21:47.000000', '2021-06-22 21:25:32.835977', 'J', 'rozenberg-krikhoff-j', ''),
(240, 'westfriesweekblad@bdu.nl', '', '', '', '', '', 'westfriesweekblad@bdu.nl', 10, 0, 'NL', 0, 'Via Karel Huying', '2021-06-24 19:33:29.000000', '2021-06-24 19:36:04.658284', '', 'westfriesweekbladbdunl', ''),
(241, 'Radio Hoorn', '', '', '', '', '', 'redactie@weeff.nl', 10, 0, 'NL', 0, 'Via Karel Huijing', '2021-06-24 19:36:04.000000', '2021-06-24 19:38:31.147690', '', 'radio-hoorn', ''),
(242, 'Sinterklaas', 'Klaas', '', 'Spanje', '', '', 'sint@nos.nl', 0, 0, 'NL', 0, '', '2021-06-25 11:42:19.000000', '2021-06-25 11:43:22.454940', 'Sint', 'sinterklaas', 'images/JDB_1024_2016111220161112_135111.jpg');

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
  `uitverkocht` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `zitplaatsen`, `website`, `memo`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`, `opbrengst`, `slug`, `activiteiten_info`, `catering_info`, `organisator`, `organisator_info`, `volgende_datum_1`, `volgende_datum_2`, `uitverkocht`) VALUES
(1, 'Rock en Pop party', '2021-10-08 22:00:00.000000', '20:00:00.000000', '23:59:00.000000', '19:30:00.000000', 'Rock & Pop Party', '17.50', '15.00', '100', '', '.', '2020-09-14 15:41:21.000000', '2021-05-28 09:25:44.861726', 7, 12, 2, 5, '0.00', 'rock-en-pop-party', 'Tombola met mooie prijzen XXXXX', 'Indische catering aanwezig Dapur Yomy', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zondag 26 september Line dance party', 'Zondag middag/avond 28 november Kumpulan', 0),
(2, 'Angklung concert 1', '2021-09-12 12:00:00.000000', '13:30:00.000000', '16:30:00.000000', '13:00:00.000000', 'Concert + workshop + Traditionel Indische dansen', '17.50', '15.00', '100', '', '', '2021-01-08 22:32:31.000000', '2021-05-17 19:20:05.952480', 13, 9, 2, 3, '780.00', 'angklung-concert-1', 'Work shop angklung', 'Indische catering aanwezig', 'Vita Nova I.O.', 'VitaNova Baru Bangkit Dari Abu.', 'Acara maandag middag 20 september', 'Rock & Roll zaterdag avond 9 oktober', 0),
(3, 'Angklung Concert 2', '2021-12-12 13:00:00.000000', '14:00:00.000000', '16:00:00.000000', '13:30:00.000000', 'Angklung Concert + Workshop', '17.50', '15.00', '150', 'http://pesonaculture.com/nl/top/Traditionele_Dans', '', '2021-03-12 13:50:16.000000', '2021-04-01 14:24:25.292243', 10, 138, 2, 3, '0.00', 'angklung-concert-2', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Acara maandag middag 20 september', 'Rock & Roll Partie zaterdag avond9 0ktober', 1),
(4, 'Rock en Roll', '2021-10-08 22:00:00.000000', '20:00:00.000000', '23:59:00.000000', '19:30:00.000000', 'Lets Rock', '15.00', '12.50', '100', 'http://Www.acaravitanlv.nl', 'Buma rechten worden door het Gouden Hoofd afgedragen', '2021-03-28 18:07:42.000000', '2021-04-11 15:35:16.316242', 7, 12, 2, 5, '0.00', 'rock-en-roll', 'Verzoek nummers mogelijk', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zondag 24 oktober Country Line Dance middag', 'Zaterdag 20 novenber Kumpulan middag/avond', 0),
(5, 'Kumpulan Nationale Indische dag', '2021-08-29 13:00:00.000000', '15:00:00.000000', '21:00:00.000000', '14:30:00.000000', 'Kumpulan Nationaal Indische dag', '20.00', '17.50', '100', 'http://www.acaravitanova.nl', '', '2021-03-31 14:46:28.000000', '2021-06-25 17:21:19.070225', 6, 206, 2, 3, '0.00', 'kumpulan-nationale-indische-dag', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Acara maandag 20 september', 'Rock & Roll avond 9 oktober', 0),
(6, 'Country Line Dance Party', '2021-10-24 14:38:31.000000', '14:00:00.000000', '18:00:00.000000', '13:30:00.000000', 'It Country Time', '12.50', '10.00', '100', '', '', '2021-04-01 14:38:31.000000', '2021-04-01 14:49:56.267567', 4, 10, 2, 4, '0.00', 'country-line-dance-party', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', 'Zaterdag 20 november middag/avond Kumpulan', 'Zondag middag 12 december Anklung concert', 0),
(7, 'Acara', '2021-09-20 19:14:28.000000', '14:00:00.000000', '18:00:00.000000', '13:30:00.000000', 'country/indorock', '12.50', '10.00', '60', '', '', '2021-04-15 19:14:29.000000', '2021-04-15 19:29:32.704113', 29, 8, 2, 2, '0.00', 'acara', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'Vita Nova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '24.10.2021', '12.12.2021', 0),
(8, 'Pencak', '2021-05-17 15:17:22.000000', '14:00:00.000000', '12:00:00.000000', '14:00:00.000000', 'Pencak', '10.00', '7.50', '0', '', '', '2021-05-17 15:17:23.000000', '2021-05-17 15:22:56.979197', 4, 206, 2, 3, '0.00', 'pencak', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'VitaNova I.O.', 'Vita Nova Baru Bangkit Dari Abu.', '', '', 0),
(9, 'Kumpulan', '2021-11-28 14:00:00.000000', '15:00:00.000000', '21:00:00.000000', '14:30:00.000000', 'Tropische sferen', '17.50', '15.00', '100', 'http://www.acaravitanova', 'Gezellige Indische middag vol=vol', '2021-06-21 09:48:33.000000', '2021-06-21 09:56:50.871988', 3, 206, 2, 3, '0.00', 'kumpulan', 'Tombola met mooie prijzen', 'Indische catering aanwezig', 'VitaNova I.O.', 'VitaNova Baru Bangkit Dari Abu.', 'Angklung concert 12 december 2021', '', 0);

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
(9, '1', 0, '1x NID 17mei2021', '2021-05-20 19:08:01.000000', '2021-06-15 13:37:37.713599', 97, 5, 1),
(12, '4', 0, '4x 17mei2021 NID', '2021-05-22 21:04:10.000000', '2021-05-23 19:22:23.946656', 79, 5, 1),
(13, '2', 0, '2x 22 mei 2021 NID', '2021-05-23 12:32:33.000000', '2021-05-24 10:02:50.344362', 74, 5, 1),
(16, '2', 0, '2x 27mei2021 NID', '2021-05-27 11:59:21.614759', '2021-05-27 11:59:21.639960', 87, 5, 1),
(20, '2', 0, '', '2021-06-25 17:01:14.396093', '2021-06-25 17:01:14.404897', 12, 7, 0),
(23, '5', 0, '5x13juni2021 NID', '2021-06-25 17:14:07.000000', '2021-06-25 17:59:01.773881', 141, 5, 1),
(24, '2', 0, '2x NID 22juni2021', '2021-06-25 17:15:55.401683', '2021-06-25 17:15:55.409716', 239, 5, 1),
(26, '1', 1, 'Test', '2021-06-25 17:30:50.001172', '2021-06-25 17:30:50.010048', 131, 5, 1),
(27, '1', 1, 'Test', '2021-06-25 17:58:19.546647', '2021-06-25 17:58:19.554256', 131, 2, 0);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts_band`
--
ALTER TABLE `contacts_band`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `naam` (`naam`),
  ADD KEY `contacts_band_contact_id_1e9dd393_fk_contacts_contact_id` (`contact_id`),
  ADD KEY `contacts_band_slug_75eb4cc0` (`slug`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts_band`
--
ALTER TABLE `contacts_band`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contacts_cateraar`
--
ALTER TABLE `contacts_cateraar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

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
-- AUTO_INCREMENT for table `contacts_ticket`
--
ALTER TABLE `contacts_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
