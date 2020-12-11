-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2020 at 02:12 PM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
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
-- Database: `vitanova_dev`
--

--
-- Dumping data for table `contacts_band`
--

INSERT INTO `contacts_band` (`id`, `naam`, `aantal_leden`, `genre`, `instrumenten`, `technicus`, `aantal_autos`, `soort`, `bedrag`, `rekening_nr`, `website`, `memo`, `image`, `slug`, `datum_inserted`, `datum_updated`) VALUES
(1, 'The Magic Tones', '5', 'l', 0, 1, '0', 0, '0.00', 'NL', '', '', '', 'the-magic-tones', '2020-12-11 11:34:19.000000', '2020-12-11 13:07:00.108361'),
(2, 'The Rocking Coasters', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', '', '', 'the-rocking-coasters', '2020-12-11 12:11:45.000000', '2020-12-11 13:07:00.344993'),
(3, 'The Rocking Players', '5', '', 0, 1, '2', 0, '750.00', 'NL', '', 'Gerrit Talsma                        Drum\r\nJörgen van der Hoeven       Gitaar/zang\r\nMartin Heuer                         Zang\r\nCyriel Devos                           Bas/zang\r\nStanley van der Hoeven       Gitaar/zang\r\n\r\nRock en Roll - Disco - Soul - Funk - Ned.Muziek - Indonesisch - Poco Poco', '', 'the-rocking-players', '2020-09-11 10:01:27.000000', '2020-12-11 13:07:00.627899'),
(4, 'Blackmail', '3', '', 0, 1, '2', 0, '0.00', 'NL', '', 'Will Merkx            gitaar/zang\r\nJim Neyndorff      zang\r\nJim Beekman       zang\r\n\r\nCountry- en line dance muziek - soul - latin  - Indorock', '', 'blackmail', '2020-09-11 10:02:27.000000', '2020-12-11 13:06:58.681598'),
(5, 'The Streetrollers', '6', 'Indo Rock / 50 ties and 60ties', 1, 1, '2', 0, '650.00', 'NL', 'https://thestreetrollers.webnode.nl/over-ons/', 'STREETROLLERS 2019\r\nAaron Meyer (zang)\r\nJerry van der Hoeven (zang / rythm)\r\nStephen van der Hoeven (solo/zang)\r\nErlo van der Hoeven (rythm)\r\nChris Toehpah (basgitaar [ zang)\r\nBuddy Woudenberg (drums)\r\n\r\n\r\nLees meer: https://thestreetrollers.webnode.nl/over-ons/', 'media/The_Streetrollers_001SR2019_def_.jpg', 'the-streetrollers', '2020-09-11 10:03:00.000000', '2020-12-11 13:07:00.851941'),
(8, 'Java Guitars Unlimited', '4', 'Medly', 0, 1, '0', 0, '0.00', 'NL', 'http://www.javaguitars.nl', 'Smitsweg 51\r\n3222AG Hellevoetsluis\r\n\r\n0181 324310\r\n\r\nindische@artiesten.club', '', 'java-guitars-unlimited', '2020-09-11 10:10:34.000000', '2020-12-11 13:06:59.574841'),
(9, 'Keep on Rocking', '4', 'Rock', 0, 1, '1', 0, '0.00', 'NL', 'http://www.keeponrocking.nl', '', '', 'keep-on-rocking', '2020-09-11 10:12:18.000000', '2020-12-11 13:06:59.632745'),
(10, 'Perwarindo (Wageningen)', '135', 'Angklung orkest', 0, 0, '0', 0, '1999.00', 'NL', 'https://www.facebook.com/Perwarindo-162142153899791/?ref=page_internal', 'Harnjesweg 84 (86,08 km)\r\n6706 AV Wageningen\r\n\r\ne-mail: tjio.thea@gmail.com', '', 'perwarindo-wageningen', '2020-09-11 15:14:16.000000', '2020-12-11 13:06:59.750684'),
(12, 'DYD (Den Haag)', '142', 'Angklung Orkest', 0, 1, '0', 0, '-0.01', 'NL', 'https://www.facebook.com/DYD-Angklung-Orchestra-134147310253275/', 'CONTACTGEGEVENS\r\nBellen 06 46598547\r\ndansayokdansa@gmail.com\r\nMEER INFO\r\nGenre\r\nIndonesian Legendary Works & Western Classical Repertoire\r\nGeboorteplaats\r\nZuid-Holland, The Netherlands\r\nInfo\r\nThe DYD Classical Traditional Angklung Orchestra. Founded in 2013 is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands.\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\nBiografie\r\nDYD Classical Traditional Angklung Orchestra\r\n\r\nFounded in the year of 2013 It is one of the few Indonesian Angklung Chamber Orchestras based in the Netherlands. ... Meer weergeven\r\ncategories\r\nMuzikant/band', '', 'dyd-den-haag', '2020-09-15 12:32:34.000000', '2020-12-11 13:06:58.815413'),
(13, 'Leni Landweer', '1', 'Angklung orkest', 0, 1, '0', 0, '0.00', 'NL', 'http://www.pesonaculture.com', 'https://www.s-i-d.nl/leni-angklung-speelt-het-nummer-surabaya/\r\n\r\n06 21241300', '', 'leni-landweer', '2020-09-23 13:32:17.000000', '2020-12-11 13:06:59.690680'),
(14, 'Hot News', '6', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', '', '', '', 'hot-news', '2020-10-19 19:07:58.000000', '2020-12-11 13:06:58.949631'),
(15, 'Hawaiian Fantasy', '20', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Aantal dansers kan verschillen naar behoefte\r\n\r\nGage € 350,-- / € 650,--', '', 'hawaiian-fantasy', '2020-10-19 19:17:49.000000', '2020-12-11 13:06:58.881458'),
(16, 'The Red Pack', '7', '50/60 jaren Rock and Roll', 0, 1, '0', 0, '0.00', 'NL', 'http://www.theredpack.nl', '', '', 'the-red-pack', '2020-10-19 19:41:02.000000', '2020-12-11 13:07:00.226260'),
(17, 'Cliff and his Lonestars', '4', 'Rock and Roll - country', 0, 1, '0', 0, '0.00', 'NL', '', 'info@lonestars.nl\r\n\r\nwww.lonestars.nl', '', 'cliff-and-his-lonestars', '2020-11-03 14:49:36.000000', '2020-12-11 13:06:58.749542'),
(18, 'The Blue Devils', '5', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'www.thebluedevils.nl', '', 'the-blue-devils', '2020-11-03 14:58:54.000000', '2020-12-11 13:06:59.874586'),
(19, 'The Bretels', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'thebretels@hotmail.nl', '', 'the-bretels', '2020-11-03 15:04:56.000000', '2020-12-11 13:06:59.934556'),
(20, 'The Cosy Rockers', '6', '50/60 jaren Rock and Roll', 0, 1, '3', 0, '0.00', 'NL', 'http://www.thecosyrockers.nl', '', '', 'the-cosy-rockers', '2020-11-12 20:21:40.000000', '2020-12-11 13:06:59.992482'),
(21, 'The Eastern Aces', '5', 'Indo rock - 50/60 jaren', 0, 1, '2', 0, '0.00', 'NL', 'http://www.theeasternaces.com', '', '', 'the-eastern-aces', '2020-11-16 13:15:41.000000', '2020-12-11 13:07:00.050472'),
(22, 'The Rocking Drifters', '4', '50/60 jaren Rock and Roll', 0, 1, '2', 0, '0.00', 'NL', 'http://www.therockingdrifters.nl', 'Bandleden:\r\n\r\nHenk Ripzaad - zang rithem gitaar\r\nJo van den Kieboom - drums\r\nTom Janssen - bas - zang\r\nRuud van der Horst - solo gitaar', '', 'the-rocking-drifters', '2020-11-16 13:30:09.000000', '2020-12-11 13:07:00.476092'),
(23, 'Straight', '61', 'Country rock - Indo rock', 0, 1, '3', 0, '0.00', 'NL', '', '', '', 'straight', '2020-11-16 13:45:17.000000', '2020-12-11 13:06:59.816796'),
(24, 'Affinity', '4', 'country - rock&Roll', 0, 1, '2', 0, '0.00', 'NL', '', 'Bandleden:\r\nHarold Rosso\r\nAlex Dutrieux\r\nMartin Papilaya\r\nWelsey Marotel', '', 'affinity', '2020-11-16 13:55:50.000000', '2020-12-11 13:06:58.620565'),
(25, 'The Rocking Teens', '3', 'Indo Rock', 0, 1, '1', 0, '0.00', 'NL', '', 'Aantal leden kan verschillen. Ze treden soms op onder de naam The Rocking Teens & Friends', '', 'the-rocking-teens', '2020-11-16 14:08:51.000000', '2020-12-11 13:07:00.751839'),
(26, 'Wipe Out Selection', '6', '', 0, 1, '2', 0, '650.00', 'NL', '', 'Richard Portier            Drums\r\nLode Simons               Leadguitar/zang\r\nPetrus Ramdaya         Keyboardl\r\nRon Poetoehena         Bassguitar\r\nBrian Leepel                 Rhythmguitar\r\nHans Jansen                Keyboard\r\n\r\n50/60 jaren muziek - Lagu-Lagu (indische traditionals) en Indo Rock', '', 'wipe-out-selection', '2020-12-11 12:47:11.000000', '2020-12-11 13:07:01.179431'),
(27, 'The Mordants', '6', '', 0, 1, '0', 0, '0.00', 'NL', '', 'Herman Peerdeman       ritmegitaar\r\nCo Bruijns                        slagwerker\r\nFried Holtkamp               basgitaar\r\nEd Goedhart                    Toetsenist/accordeon\r\nThea Ooms                      zang\r\nDick Koster                      sologitaar/zang\r\n\r\n\r\nwww.themordants.nl        2e contact Fried Holtkamp 06 37166146', '', 'the-mordants', '2020-12-11 12:52:02.000000', '2020-12-11 13:07:00.168350');

--
-- Dumping data for table `contacts_cateraar`
--

INSERT INTO `contacts_cateraar` (`id`, `naam`, `soort`, `catering_prijs`, `rekening_nr`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `contact_id`) VALUES
(1, 'Toko Yoko', 'Indonesisch', '0.00', 'NL', '', 'Laatste keer goed', 'toko-yoko', '2020-08-19 15:50:19.000000', '2020-12-11 13:07:03.911067', 6),
(2, 'Dapur Jomy', 'Indisch / Indonesch', '0.00', 'NL', 'https://www.facebook.com/Dapur-Jomy-104000084682444/', 'Iedere week een ander menu\r\n\r\nhttps://www.oozo.nl/bedrijven/drechterland/venhuizen/centrum-venhuizen/2001138/dapur-jomy', 'dapur-jomy', '2020-08-19 19:07:08.000000', '2020-12-11 13:07:03.459496', 11),
(3, 'Toko2Way', 'Indisch', '0.00', 'NL', '', '', 'toko2way', '2020-08-21 19:31:58.000000', '2020-12-11 13:07:03.979100', 13),
(4, 'Toko Lannie', 'Indisch', '1999.00', 'NL', '', '', 'toko-lannie', '2020-08-23 19:30:46.000000', '2020-12-11 13:07:03.845110', 19),
(5, 'Chinese Garden', 'Chinees / hollandse pot', '0.00', 'NL', '', 'Testje', 'chinese-garden', '2020-08-24 17:33:37.000000', '2020-12-11 13:07:03.253477', 3),
(6, 'Hap Wat', 'Snackbar', '0.00', 'NL', 'http://ww.hapwat.nl', 'Test', 'hap-wat', '2020-10-09 14:18:14.000000', '2020-12-11 13:07:03.727131', 5);

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
(11, 'Amy Fosss', '', 'Onbekend', '1000AA', 'Onbekend', '653134683', '648606828', 'info@onbekend.nl', 5, 0, 'NL', 0, '', '', 'amy-fosss', '2020-08-19 19:07:31.000000', '2020-12-11 13:06:43.153288'),
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
(27, 'Aaron Meyer (zang)', '', '', '', 'Zaandam', '', '', '', 4, 0, 'NL', 0, '', '', 'aaron-meyer-zang', '2020-09-11 15:32:40.000000', '2020-12-11 13:06:42.863463'),
(28, 'Aad en Corrie Laan', '', '', '', '', '0229 – 231922', '', 'alaan@kpnmail.nl', 1, 0, 'NL', 0, '', '', 'aad-en-corrie-laan', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:42.751832'),
(29, 'Martherus', '', '', '', '', '', '', 'andre.martherus@hetnet.nl', 1, 0, 'NL', 0, '', '', 'martherus', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:51.801656'),
(30, 'Andries Posthuma', '', '', '', '', '06 – 35365030', '', 'andriesposthuma@gmail.com', 1, 0, 'NL', 0, '', '', 'andries-posthuma', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:43.402934'),
(31, 'A. M. de Calonne', '', '', '', '', '06 – 36300734', '', 'anitamdec2@hotmail.nl', 1, 0, 'NL', 0, '', '', 'a-m-de-calonne', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:42.693669'),
(32, 'Anneke Duursma', '', '', '', 'Hoorn', '0229 – 216692', '', 'annekeduursma@gmail.com', 1, 0, 'NL', 0, '', 'Dans / Acara / Ok', 'anneke-duursma', '2020-09-11 17:44:36.000000', '2020-12-11 13:06:43.594710'),
(33, 'Anneke Nieuwbuurt', '', '', '', '', '', '', 'annekenieuwbuurt@live.nl', 1, 0, 'NL', 0, '', 'Dans / Acara', 'anneke-nieuwbuurt', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:43.662750'),
(34, 'A. Bijl', '', '', '', '', '', '', 'bepan@ziggo.nl', 1, 0, 'NL', 0, '', '', 'a-bijl', '2020-09-11 17:44:37.000000', '2020-12-11 13:06:42.626753'),
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
(56, 'Joke. F. Neijman (Harrij)', '', '', '', '', '0229 – 243177', '', 'jfnvdb@gmail.com', 1, 0, 'NL', 0, '', '', 'joke-f-neijman-harrij', '2020-09-11 17:54:14.000000', '2020-12-11 13:06:49.361755'),
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
(100, 'Ankie Ten Haaf', '', '', '1624TH', 'Hoorn', '', '', '', 1, 0, 'NL', 0, '', '', 'ankie-ten-haaf', '2020-09-11 17:56:27.000000', '2020-12-11 13:06:43.468914'),
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
(112, 'Andre Jacobs', '', '', '', '', '0575-528953', '06-38303916', 'a.jacobs56@upcmail.nl', 0, 0, 'NL', 0, '', 'Temanteman\r\nReeds overleden', 'andre-jacobs', '2020-10-14 20:00:09.000000', '2020-12-11 13:06:43.337002'),
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
(132, 'Co Bruijns', 'Cor', '', '', '', '', '', '', 0, 0, 'NL', 0, '', '', 'co-bruijns', '2020-12-11 12:53:53.000000', '2020-12-11 13:06:45.185432');

--
-- Dumping data for table `contacts_evenement`
--

INSERT INTO `contacts_evenement` (`id`, `naam`, `datum`, `aanvang`, `einde`, `zaal_open`, `thema`, `entree_prijs`, `voorverkoop_prijs`, `opbrengst`, `zitplaatsen`, `website`, `memo`, `slug`, `datum_inserted`, `datum_updated`, `band_id`, `beheerder_id`, `catering_id`, `locatie_id`) VALUES
(1, 'Kumpula', '2020-12-11 12:58:06.000000', '14:30:00.000000', '17:30:00.000000', '14:00:00.000000', 'The 80\'s', '10.00', '5.00', '200.00', '50', '', '', 'kumpula', '2020-12-11 12:58:06.000000', '2020-12-11 13:07:04.047826', 3, 5, 2, 2);

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
(9, 'Blackmail', '', '100', '', 'blackmail', '2020-08-22 19:23:41.000000', '2020-12-11 13:07:01.248350', 15),
(10, 'The Streetrollers', 'https://thestreetrollers.webnode.nl/over-ons/', '349', '', 'the-streetrollers', '2020-08-24 15:59:01.000000', '2020-12-11 13:07:02.516292', 16);

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
(7, 'Foreesterhuis', '1621BR', 'Grote Oost 43', 'Hoorn', '0228 315 511', 'www.foreesterhuis.nl', 0, 0, 0, 0, '2020-12-11', 'foreesterhuis', '2020-09-11 14:53:33.000000', '2020-12-11 13:07:02.577330', 25);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts_zaal`
--
ALTER TABLE `contacts_zaal`
  ADD CONSTRAINT `contacts_zaal_contact_id_222ec130_fk_contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
