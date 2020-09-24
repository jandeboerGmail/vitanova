-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2020 at 04:38 PM
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

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `betaling`, `rekening_nr`, `website`, `memo`, `image1`, `image2`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'The Magic Tones', '5', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-19 15:45:07.000000', '2020-08-19 15:45:07.000000', 5),
(2, 'De Stoel', '5', 0, 0, '0', 50, '0', 'NL', '', 'Nog contact opnemen', NULL, NULL, '2020-08-19 20:36:57.000000', '2020-08-19 20:36:57.000000', 14),
(3, 'The Rocking Players', '6', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-20 22:16:12.000000', '2020-08-20 22:16:12.000000', 3),
(4, 'Blackmail', '3', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-22 19:31:24.000000', '2020-08-22 19:31:24.000000', 15),
(5, 'The Street Rollers', '5', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-22 19:22:02.000000', '2020-08-22 19:22:02.000000', 16),
(6, 'Wipe Out Selection', '5', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-22 19:45:00.000000', '2020-08-22 19:45:00.000000', 17),
(8, 'The Mordants', '6', 0, 0, '0', 50, '0', 'NL', '', '', NULL, NULL, '2020-08-24 16:15:54.000000', '2020-08-24 16:15:54.000000', 20),
(9, 'Hot News', '6', 0, 0, '0', 0, '0', 'NL', '', '', NULL, NULL, '2020-08-25 12:40:40.000000', '2020-08-25 12:40:40.000000', 22),
(10, 'Java Guitars Unlimited', '4', 0, 0, '0', 0, '0', 'NL', 'http://www.javaguitars.nl', '', '', '', '2020-08-25 12:51:24.000000', '2020-08-25 12:51:24.000000', 23),
(11, 'Keep on Rocking', '4', 0, 0, '0', 0, '0', 'NL', 'http://www.keeponrocking.nl', '', '', '', '2020-08-25 13:06:52.000000', '2020-08-25 13:06:52.000000', 24);

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `rekening_nr`, `website`, `memo`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Toko Yoko', 'Indonesisch', 'NL', '', 'Laatste keer goed', '2020-08-19 15:50:19.000000', '2020-08-19 15:50:19.000000', 6),
(2, 'Dapur Jomy', 'Indisch / Indonesch', 'NL', '', 'Iedere week een ander menu', '2020-08-19 19:07:08.000000', '2020-08-19 19:07:08.000000', 11),
(3, 'Toko2Way', 'Indisch', 'NL', '', '', '2020-08-21 19:31:58.000000', '2020-08-21 19:31:58.000000', 13),
(4, 'Toko Lannie', 'Indisch', 'NL', '', '', '2020-08-23 19:30:46.000000', '2020-08-23 19:30:46.000000', 19),
(5, 'Chinese Garden', 'Chinees', 'NL', '', 'Testje', '2020-08-24 17:33:37.000000', '2020-08-24 17:33:37.000000', 3);

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `mobiel`, `emailadress`, `soort`, `soort_lid`, `rekening_nr`, `status`, `image`, `memo`, `datum_inserted`, `datum_updated`) VALUES
(2, 'Jan Jansen', '1625DE', 'Hoofdstraat 1', 'Hoorn', '61234512345', '61234512345', 'janjansen@vitanova.org', 4, 0, 'NL', 0, NULL, 'Dit is het eerste Lid', '2020-08-19 14:11:37.000000', '2020-08-19 14:11:37.000000'),
(3, 'Jorgen van der Hoeven', 'xxxxyy', 'onbekend', 'onbekend', '1235678911', '611711287', 'j.verhoeven2@chello.nl', 4, 0, 'NL', 0, NULL, 'Dit is de tweede', '2020-08-19 14:16:20.000000', '2020-08-19 14:16:20.000000'),
(4, 'Clif Jansen', '1000BD', 'Damstraat 6 , 2 Hoog', 'Amsterdam', '0', '0', 'clifjansen@vitanova.nl', 4, 0, 'NL', 1, NULL, 'Oprichter van de Fanclub \"Cliff and his Loanstars', '2020-08-19 14:23:40.000000', '2020-08-19 14:23:40.000000'),
(5, 'Mike Tomson', '1000AA', 'Damstraat 12, 3 hoog', 'Amsterdam', '0', '0', 'mike@tomson.org', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:45:28.000000', '2020-08-19 15:45:28.000000'),
(6, 'Toko Yoko', '1200BE', 'Tonijnstraat 5', 'Heerhgoward', '0', '0', 'info@tokoyoko.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:50:56.000000', '2020-08-19 15:50:56.000000'),
(7, 'Frans Maas', '9331NL', 'Korte Straat 6', 'Appingedam', '0', '0', 'Frans@zaalmaas.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 15:54:01.000000', '2020-08-19 15:54:01.000000'),
(8, 'Christiaan Mulder', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', '0', 'info@huisverloren.nl', 4, 0, 'NL', 1, NULL, '', '2020-08-19 18:54:14.000000', '2020-08-19 18:54:14.000000'),
(9, 'Truus Ammeraal', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '22921909', '614179444', 'info@oosterkerk.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 18:58:52.000000', '2020-08-19 18:58:52.000000'),
(10, 'Daphne', '1689G', 'Dorpsstraat 175', 'Zwaag', '229261473', '620678838', 'info@dewittevalk.nl', 4, 0, 'NL', 1, NULL, '', '2020-08-19 19:03:25.000000', '2020-08-19 19:03:25.000000'),
(11, 'Amy Fosss', '1000AA', 'Onbekend', 'Onbekend', '653134683', '648606828', 'info@onbekend.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-19 19:07:31.000000', '2020-08-19 19:07:31.000000'),
(12, 'Eric Alders', 'onbeke', 'Westerblokker 80', 'Zwaag', '2292326691', '612345678', 'info@goudenhoofd.nl', 4, 0, 'NL', 0, NULL, 'm.boersma11@kpnplanet.nl', '2020-08-20 22:22:33.000000', '2020-08-20 22:22:33.000000'),
(13, 'CiCi', 'xxxxyy', 'onbekend', 'onbekend', '123456789', '123498765', 'onbekend@1234.nl', 3, 0, 'NL', 0, NULL, '', '2020-08-21 19:24:44.000000', '2020-08-21 19:24:44.000000'),
(14, 'Klaas Singer', 'xxxxyy', 'onbekend', 'onbekend', '2295733', '612345679', 'klaassinger@gmail.com', 4, 0, 'NL', 0, NULL, 'www.thesixtiesbanddestoel.nl', '2020-08-21 20:33:41.000000', '2020-08-21 20:33:41.000000'),
(15, 'Will Merkx', 'xxxxyy', 'onbekend', 'Koog aan de Zaan', '756161681', '650284376', 'h.merkxneyndorff@upcmail.nl', 4, 0, 'NL', 0, NULL, 'www.blackmail-countrymusic.nl', '2020-08-22 19:19:12.000000', '2020-08-22 19:19:12.000000'),
(16, 'Erlo van der Hoeven', 'xxxxyy', 'onbekend', 'Zaandam', '123456789', '62709210', 'erlo.streetrollers@gmail.com', 4, 0, 'NL', 0, NULL, 'www.thestreetrollers.webnode.nl/over-ons', '2020-08-22 19:23:29.000000', '2020-08-22 19:23:29.000000'),
(17, 'Brain Leepel', 'xxxxyy', 'onbekend', 'Den Helder', '647679948', '628400959', 'labsimons@live.nl', 4, 0, 'NL', 0, NULL, 'www.wipeoutselection.nl', '2020-08-22 19:41:37.000000', '2020-08-22 19:41:37.000000'),
(18, 'Martin', 'xxxxyy', 'onbekend', 'Zaandam', '123456789', '123456789', 'onbekend@1234.nl', 2, 0, 'NL', 0, NULL, '', '2020-08-23 18:47:21.000000', '2020-08-23 18:47:21.000000'),
(19, 'Lannie', 'xxxxyy', 'o', 'Hoorn', '123456789', '123456789', 'onbekend@1234.nl', 3, 0, 'NL', 0, NULL, '', '2020-08-23 19:32:23.000000', '2020-08-23 19:32:23.000000'),
(20, 'Fried Holtkamp', 'xxxxyy', 'onbekend', 'Hoorn', '0', '637166146', 'friedholtkamp@hotmail.com', 4, 0, 'NL', 0, NULL, 'www.mordants.nl', '2020-08-24 16:12:30.000000', '2020-08-24 16:12:30.000000'),
(21, 'Co Bruijns', 'xxxxyy', 'onbekend', 'Hoorn', '229262915', '683543752', 'cobruijns@hotmail.com', 4, 0, 'NL', 0, NULL, '', '2020-08-24 16:22:20.000000', '2020-08-24 16:22:20.000000'),
(22, 'Shirley Salomon', 'xxxxyy', 'onbekend', 'onbekend', '0', '612345678', 'shirley@thehotnews.nl', 4, 0, 'NL', 0, NULL, '', '2020-08-25 12:37:48.000000', '2020-08-25 12:37:48.000000'),
(23, 'George Kwekel', '3222AG', 'Smitsweg 51', 'Hellevoetsluis', '1813243106', '612345678', 'indische@artiesten.club', 4, 0, 'NL', 0, NULL, '', '2020-08-25 12:48:01.000000', '2020-08-25 12:48:01.000000'),
(24, 'Wim Geertman', 'xxxxyy', 'onbekend', 'onbekend', '123456789', '06-52 12 55 08', 'wh.geertman@quicknet.nl', 4, 0, 'NL', 1, '', '', '2020-08-25 13:03:48.000000', '2020-08-25 13:03:48.000000');

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `catering_prijs`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `zitplaatsen`, `website`, `memo`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`) VALUES
(1, 'Remember the 90\'s', '2020-09-07 14:23:21.000000', '20:00:00.000000', '23:00:00.000000', '19:00:00.000000', '150.00', 'Dance', '7.50', '5.00', '20', 'http://dance.vitanova.org', '', '2020-09-07 14:23:22.000000', '2020-09-07 14:23:22.000000', 1, 24, 1, 1),
(2, 'Kumpulan Nationaal Indische Dag', '2020-09-07 14:26:32.000000', '20:00:00.000000', '00:00:00.000000', '18:00:00.000000', '180.00', 'Rock', '15.00', '10.00', '100', '', '', '2020-09-07 14:26:32.000000', '2020-09-07 14:26:32.000000', 3, 22, 2, 5),
(3, 'Muziektent Culemborg', '2020-09-07 14:28:22.000000', '20:15:00.000000', '00:45:00.000000', '18:30:00.000000', '200.00', 'Country', '3.00', '1.50', '500', '', '', '2020-09-07 14:28:22.000000', '2020-09-07 14:28:22.000000', 8, 4, 4, 6);

--
-- Dumping data for table `contacts_fanclub`
--

INSERT INTO `contacts_fanclub` (`id`, `naam`, `website`, `aantal_leden`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'De Doorzakkers', '', '100', '2020-08-19 14:18:21.000000', '2020-08-19 14:18:21.000000', 2),
(2, 'De Dansers', '', '50', '2020-08-19 14:19:24.000000', '2020-08-19 14:19:24.000000', 3),
(3, 'De Zingers', '', '25', '2020-08-19 14:19:49.000000', '2020-08-19 14:19:49.000000', 2),
(5, 'Hot News', '', '80', '2020-08-19 14:21:08.000000', '2020-08-19 14:21:08.000000', 3),
(6, 'The Rocking Players', '', '1236', '2020-08-19 14:21:59.000000', '2020-08-19 14:21:59.000000', 3),
(7, 'Clif and his Loanstars', '', '300', '2020-08-19 14:22:45.000000', '2020-08-19 14:22:45.000000', 4),
(8, 'De Stoel', '', '1', '2020-08-22 19:12:39.000000', '2020-08-22 19:12:39.000000', 14),
(9, 'Blackmail', '', '100', '2020-08-22 19:23:41.000000', '2020-08-22 19:23:41.000000', 15),
(10, 'The Streetrollers', '', '349', '2020-08-24 15:59:01.000000', '2020-08-24 15:59:01.000000', 16);

--
-- Dumping data for table `contacts_zaal`
--

INSERT INTO `contacts_zaal` (`id`, `naam`, `postcode`, `adress`, `plaats`, `telefoon`, `volt440`, `hulp_nodig`, `vergunning_vereist`, `vergunning_aaangevraagd`, `vergunning_datum`, `datum_inserted`, `datum_updated`, `contact_id`, `website`) VALUES
(1, 'Zaal Maas', '9350KL', 'Grote Markt 7', 'Groningen', '50123456789', 0, 0, 0, 0, '0000-00-00', '2020-08-19 15:52:48.000000', '2020-08-19 15:52:48.000000', 7, ''),
(2, 'Het Huis Verloren', '1621CW', 'Kerkstraat 10b', 'Hoorn', '229210608', 0, 0, 0, 0, '0000-00-00', '2020-08-19 18:52:00.000000', '2020-08-19 18:52:00.000000', 8, ''),
(3, 'Oosterkerk, Huiskamer van Hoorn', '1621BX', 'Grote Oost 58 – 60', 'Hoorn', '22921909', 0, 0, 0, 0, '0000-00-00', '2020-08-19 18:57:09.000000', '2020-08-19 18:57:09.000000', 9, ''),
(4, 'Partycentrum De Witte Valk', '1689GB', 'Dorpstraat 175', 'Zwaag', '229261463', 0, 0, 0, 0, '0000-00-00', '2020-08-19 19:02:01.000000', '2020-08-19 19:02:01.000000', 10, ''),
(5, 'Het Gouden Hoofd', '1695AJ', 'Westerblokker 80', 'Blokker', '0229-232691', 0, 0, 0, 0, '2020-09-07', '2020-08-22 22:44:45.000000', '2020-08-22 22:44:45.000000', 12, ''),
(6, 'Muziektent Culenborg', '1111xx', 'onbekend', 'Culenborg', '', 0, 0, 0, 0, '2020-09-07', '2020-09-07 14:29:29.000000', '2020-09-07 14:29:29.000000', 4, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
