-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 03:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gigatron__finalno2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brend`
--

CREATE TABLE `brend` (
  `BREND_ID` int(11) NOT NULL,
  `NAZIV` varchar(20) NOT NULL,
  `OPIS` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brend`
--

INSERT INTO `brend` (`BREND_ID`, `NAZIV`, `OPIS`) VALUES
(1, 'Lenovo', 'Kompanija proizvodi laptop, tablet i desktop racunare, monitore, dodatnu racunarsku opremu kao i pametne uredaje.'),
(2, 'LG Electronics', NULL),
(3, 'Gorenje', NULL),
(4, 'Samsung', 'Kompanija proizvodi laptopove, racunare, tablete, monitore, dodatnu racunarsku opremu.'),
(5, 'Nokia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `garancija`
--

CREATE TABLE `garancija` (
  `GARANCIJA_ID` int(11) NOT NULL,
  `DANI_POD_GARANCIJOM` int(11) NOT NULL,
  `USLOVI_GARANCIJE` varchar(120) DEFAULT NULL,
  `DATUM_OBJAVE` date NOT NULL,
  `DATUM_UKIDANJA_UGOVORA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garancija`
--

INSERT INTO `garancija` (`GARANCIJA_ID`, `DANI_POD_GARANCIJOM`, `USLOVI_GARANCIJE`, `DATUM_OBJAVE`, `DATUM_UKIDANJA_UGOVORA`) VALUES
(10, 365, NULL, '2020-03-05', '2024-03-31'),
(11, 730, NULL, '2020-06-03', '2024-06-30'),
(12, 180, NULL, '2020-01-01', '2024-01-20'),
(13, 1100, 'Sobna temperatura u kojoj se drzi da bude izmedju 15 i 20 stepeni', '2020-08-02', '2024-08-25'),
(14, 1500, NULL, '2020-09-02', '2024-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `KATEGORIJA_ID` int(11) NOT NULL,
  `NAZIV` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`KATEGORIJA_ID`, `NAZIV`) VALUES
(100, 'Monitor'),
(101, 'Mis'),
(102, 'Tastatura'),
(103, 'Bojler'),
(104, 'Tablet'),
(105, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE `korpa` (
  `KUPAC_ID` int(11) NOT NULL,
  `DATUM_NASTANKA` datetime NOT NULL,
  `KUPOVINA_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korpa`
--

INSERT INTO `korpa` (`KUPAC_ID`, `DATUM_NASTANKA`, `KUPOVINA_ID`) VALUES
(20, '2024-05-22 21:53:41', 96),
(21, '2024-07-22 21:53:41', 97),
(22, '2024-07-10 00:00:00', 93),
(23, '2024-09-29 00:00:00', 94),
(24, '2024-08-29 00:00:00', 95);

-- --------------------------------------------------------

--
-- Table structure for table `kupac`
--

CREATE TABLE `kupac` (
  `KUPAC_ID` int(11) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `MAIL` varchar(20) NOT NULL,
  `BR_TELEFONA` varchar(20) NOT NULL,
  `DATUM_REGISTRACIJE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kupac`
--

INSERT INTO `kupac` (`KUPAC_ID`, `IME`, `PREZIME`, `MAIL`, `BR_TELEFONA`, `DATUM_REGISTRACIJE`) VALUES
(20, 'Slobodan', 'Guzina', 'slobodan.guzina@exam', '+38166234123', '2024-04-01'),
(21, 'Miljenko', 'Gazivoda', 'miljenko.gazivoda@ex', '+381642423345', '2024-05-15'),
(22, 'Dobrivoj', 'Brstina', 'dobrivoj.brstina@exa', '+3816456234', '2024-07-10'),
(23, 'Rajko', 'Sogov Jogov', 'rajko.sogovjogov@exa', '+38164345234', '2024-09-29'),
(24, 'Petar', 'Strugar', 'petar.strugar@exampl', '+38164456234', '2024-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `kupovina`
--

CREATE TABLE `kupovina` (
  `KUPOVINA_ID` int(11) NOT NULL,
  `DATUM_I_VREME_OBAVLJANJA` datetime NOT NULL,
  `IZNOS` decimal(15,2) NOT NULL,
  `BROJ_RACUNA` int(11) NOT NULL,
  `METOD_PLACANJA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kupovina`
--

INSERT INTO `kupovina` (`KUPOVINA_ID`, `DATUM_I_VREME_OBAVLJANJA`, `IZNOS`, `BROJ_RACUNA`, `METOD_PLACANJA`) VALUES
(90, '2024-07-10 00:00:00', 60000.00, 12345, 'gotovina'),
(91, '2024-09-29 00:00:00', 30000.00, 34758, 'gotovina'),
(92, '2024-08-29 00:00:00', 40000.00, 83219, 'gotovina'),
(93, '2024-03-20 18:53:43', 50000.00, 82437, 'kartica'),
(94, '2024-03-22 20:53:43', 40000.00, 95483, 'kartica'),
(95, '2024-03-22 21:53:43', 30000.00, 23498, 'kartica'),
(96, '2024-05-22 21:53:43', 24000.00, 23843, 'kartica'),
(97, '2024-07-22 21:53:43', 72000.00, 23953, 'kartica');

-- --------------------------------------------------------

--
-- Table structure for table `kupovina_uzivo`
--

CREATE TABLE `kupovina_uzivo` (
  `KUPOVINA_ID` int(11) NOT NULL,
  `DATUM_I_VREME_OBAVLJANJA` datetime NOT NULL,
  `IZNOS` decimal(15,2) NOT NULL,
  `BROJ_RACUNA` int(11) NOT NULL,
  `METOD_PLACANJA` varchar(20) DEFAULT NULL,
  `KUPAC_ID` int(11) NOT NULL,
  `ZAPOSLEN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kupovina_uzivo`
--

INSERT INTO `kupovina_uzivo` (`KUPOVINA_ID`, `DATUM_I_VREME_OBAVLJANJA`, `IZNOS`, `BROJ_RACUNA`, `METOD_PLACANJA`, `KUPAC_ID`, `ZAPOSLEN_ID`) VALUES
(90, '2024-07-10 00:00:00', 60000.00, 12345, 'gotovina', 20, 600),
(91, '2024-09-29 00:00:00', 30000.00, 34758, 'gotovina', 21, 601),
(92, '2024-08-29 00:00:00', 40000.00, 83219, 'gotovina', 22, 602),
(98, '2024-11-29 00:00:00', 50000.00, 94321, 'kartica', 23, 603),
(99, '2024-12-29 00:00:00', 60000.00, 94302, 'kartica', 24, 604);

-- --------------------------------------------------------

--
-- Table structure for table `menadzer_prodavnice`
--

CREATE TABLE `menadzer_prodavnice` (
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `PRODAVNICA_ID` int(11) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `BROJ_TELEFONA` varchar(15) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menadzer_prodavnice`
--

INSERT INTO `menadzer_prodavnice` (`ZAPOSLEN_ID`, `PRODAVNICA_ID`, `IME`, `PREZIME`, `BROJ_TELEFONA`, `EMAIL`) VALUES
(40, 200, 'Nikola', 'Petrovic', '+3816564564', 'nikolic@example'),
(41, 201, 'Jovan', '?ordevic', '+381687687', 'djordjevic@example'),
(42, 202, 'Marko', 'Tomic', '+3816867678', 'markovic@example'),
(43, 203, 'Milica', 'Jankovic', '+3816546564687', 'milicevic@example'),
(44, 204, 'Ana', 'Popovic', '+381687687768', 'anapopovic@example');

-- --------------------------------------------------------

--
-- Table structure for table `onlajn_narudzbina`
--

CREATE TABLE `onlajn_narudzbina` (
  `KUPOVINA_ID` int(11) NOT NULL,
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `DATUM_I_VREME_OBAVLJANJA` datetime NOT NULL,
  `IZNOS` decimal(15,2) NOT NULL,
  `BROJ_RACUNA` int(11) NOT NULL,
  `METOD_PLACANJA` varchar(20) NOT NULL,
  `DRZAVA` varchar(20) NOT NULL,
  `GRAD` varchar(20) NOT NULL,
  `ADRESA` varchar(20) NOT NULL,
  `DATUM_VREME_ISPORUKE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onlajn_narudzbina`
--

INSERT INTO `onlajn_narudzbina` (`KUPOVINA_ID`, `ZAPOSLEN_ID`, `DATUM_I_VREME_OBAVLJANJA`, `IZNOS`, `BROJ_RACUNA`, `METOD_PLACANJA`, `DRZAVA`, `GRAD`, `ADRESA`, `DATUM_VREME_ISPORUKE`) VALUES
(93, 70, '2024-03-20 18:53:43', 50000.00, 82437, 'kartica', 'Srbija', 'Beograd', 'Brace Jerkovica 50', '2024-03-21 18:53:43'),
(94, 71, '2024-03-22 20:53:43', 40000.00, 95483, 'kartica', 'Srbija', 'Niš', 'Bulevar Oslobjenja 1', '2024-03-23 20:53:43'),
(95, 72, '2024-03-22 21:53:43', 30000.00, 23498, 'kartica', 'Srbija', 'Novi Sad', 'Marsala Tobuhina 123', '2024-03-23 21:53:43'),
(96, 73, '2024-05-22 21:53:43', 24000.00, 23843, 'kartica', 'Srbija', 'Beograd', 'Brace Jerkovica 50', '2024-05-23 21:53:43'),
(97, 74, '2024-07-22 21:53:43', 72000.00, 23953, 'kartica', 'Srbija', 'Niš', 'Bulevar Oslobjenja 1', '2024-07-23 21:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `popust`
--

CREATE TABLE `popust` (
  `POPUST_ID` int(11) NOT NULL,
  `PROCENAT_SNIZENJA` decimal(2,2) NOT NULL,
  `DATUM_POCETKA` date NOT NULL,
  `DATUM_ISTEKA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popust`
--

INSERT INTO `popust` (`POPUST_ID`, `PROCENAT_SNIZENJA`, `DATUM_POCETKA`, `DATUM_ISTEKA`) VALUES
(4000, 0.25, '2024-03-24', '2024-05-24'),
(4001, 0.35, '2024-03-23', '2024-05-23'),
(4002, 0.50, '2024-03-21', '2024-05-21'),
(4003, 0.45, '2024-05-22', NULL),
(4004, 0.45, '2024-06-21', '2024-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `prodavac`
--

CREATE TABLE `prodavac` (
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `MEN_ZAPOSLEN_ID` int(11) NOT NULL,
  `PRODAVNICA_ID` int(11) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `BROJ_TELEFONA` varchar(15) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodavac`
--

INSERT INTO `prodavac` (`ZAPOSLEN_ID`, `MEN_ZAPOSLEN_ID`, `PRODAVNICA_ID`, `IME`, `PREZIME`, `BROJ_TELEFONA`, `EMAIL`) VALUES
(600, 40, 203, 'Ana', 'Petrovic', '064 123 456', 'ana.petrovic@example'),
(601, 41, 202, 'Marko', 'Jovanovic', '066 234 567', 'marko.jovanovic@exam'),
(602, 42, 201, 'Jovana', 'Nikolic', '063 345 678', 'jovana.nikolic@examp'),
(603, 43, 200, 'Nikola', 'Stojanovic', '065 456 789', 'nikola.stojanovic@ex'),
(604, 44, 204, 'Milica', '?ordevic', '062 567 890', 'milica.djordjevic@ex');

-- --------------------------------------------------------

--
-- Table structure for table `prodavnica`
--

CREATE TABLE `prodavnica` (
  `PRODAVNICA_ID` int(11) NOT NULL,
  `ADRESA` varchar(20) NOT NULL,
  `BROJ_TELEFONA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodavnica`
--

INSERT INTO `prodavnica` (`PRODAVNICA_ID`, `ADRESA`, `BROJ_TELEFONA`) VALUES
(200, 'Pere Mitica 56', '+38164234234'),
(201, 'Mike Aleksica 57', '+38164234234'),
(202, 'Ave Karabatic 40', '+3816423454234'),
(203, 'Kaje Ostojic 77', '+38164223234'),
(204, 'Vesne Vukelic 88', '+381642334534');

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `PROIZVOD_ID` int(11) NOT NULL,
  `POPUST_ID` int(11) DEFAULT NULL,
  `KATEGORIJA_ID` int(11) NOT NULL,
  `GARANCIJA_ID` int(11) DEFAULT NULL,
  `BREND_ID` int(11) NOT NULL,
  `CENA` decimal(10,2) NOT NULL,
  `OPIS` varchar(240) DEFAULT NULL,
  `BARKOD` varchar(80) NOT NULL,
  `NAZIV` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`PROIZVOD_ID`, `POPUST_ID`, `KATEGORIJA_ID`, `GARANCIJA_ID`, `BREND_ID`, `CENA`, `OPIS`, `BARKOD`, `NAZIV`) VALUES
(50, 4000, 105, 10, 1, 350000.00, NULL, '123234345456', 'ThinkPad X1 Carbon G'),
(51, NULL, 100, 11, 2, 38999.00, NULL, '456345456567234', '34? UltraWide? 21:9'),
(52, NULL, 103, 12, 3, 29999.00, NULL, '456354243345123', 'ARISTON Bojler BLU1 '),
(53, NULL, 100, 13, 4, 78500.00, NULL, '345234345456123', '75\" TU7022 Crystal U'),
(54, NULL, 104, 14, 5, 60850.00, NULL, '034524334234234', 'NOKIA T20 3/32GB 10.'),
(55, 4002, 102, NULL, 1, 23000.00, NULL, '432343454562323', 'LENOVO 510 Wireless '),
(56, NULL, 101, NULL, 1, 8999.00, NULL, '432343442343323', 'LENOVO ThinkPad 4X30');

-- --------------------------------------------------------

--
-- Table structure for table `recenzija`
--

CREATE TABLE `recenzija` (
  `PROIZVOD_ID` int(11) NOT NULL,
  `KUPAC_ID` int(11) NOT NULL,
  `DATUM_VREME_OCENE` datetime NOT NULL,
  `OCENA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recenzija`
--

INSERT INTO `recenzija` (`PROIZVOD_ID`, `KUPAC_ID`, `DATUM_VREME_OCENE`, `OCENA`) VALUES
(50, 20, '2025-01-15 09:24:00', 1),
(51, 21, '2025-04-03 15:37:22', 2),
(52, 22, '2025-07-19 21:10:55', 6),
(53, 23, '2025-09-28 12:45:18', 8),
(54, 24, '2025-12-10 03:58:30', 9),
(55, 20, '2025-10-31 08:20:11', 10),
(56, 22, '2025-10-31 08:20:11', 9);

-- --------------------------------------------------------

--
-- Table structure for table `reklamacija`
--

CREATE TABLE `reklamacija` (
  `KUPOVINA_ID` int(11) NOT NULL,
  `KUPAC_ID` int(11) NOT NULL,
  `DATUM_REKLAMACIJE` date NOT NULL,
  `SERVISER_ID` int(11) NOT NULL,
  `STATUS` varchar(20) NOT NULL,
  `OPIS` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reklamacija`
--

INSERT INTO `reklamacija` (`KUPOVINA_ID`, `KUPAC_ID`, `DATUM_REKLAMACIJE`, `SERVISER_ID`, `STATUS`, `OPIS`) VALUES
(90, 20, '2025-05-20', 2000, 'odbijen', '75\" TU7022 Crystal UHD 4K Smart TV ne radi, jer sam skakao'),
(91, 21, '2025-06-20', 2001, 'otvoren', 'NOKIA T20 3/32GB 10.4\" Wi-Fi Deep Ocean Tablet, ne radi dodir'),
(92, 22, '2025-07-20', 2002, 'zatvoren', 'LENOVO 510 Wireless US GX30N81776 Crna Bežična tastatura, pokvario se'),
(93, 23, '2025-08-22', 2003, 'otvoren', '34” UltraWide™ 21:9 je odlican, samo zeza malo'),
(94, 24, '2025-09-22', 2004, 'odbijen', 'ARISTON Bojler BLU1 R 100 l, je prestao da greje');

-- --------------------------------------------------------

--
-- Table structure for table `serviser`
--

CREATE TABLE `serviser` (
  `SERVISER_ID` int(11) NOT NULL,
  `BROJ_TELEFONA` varchar(20) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviser`
--

INSERT INTO `serviser` (`SERVISER_ID`, `BROJ_TELEFONA`, `IME`, `PREZIME`) VALUES
(2000, '+3816546547', 'Mirko', 'Pantelic'),
(2001, '+38165475647', 'Petar', 'Ckalja'),
(2002, '+3816878758', 'Nikola', 'Tesla'),
(2003, '+3816688687', 'Mihajlo', 'Pupin'),
(2004, '+3816654378', 'Novak', 'Djokovic');

-- --------------------------------------------------------

--
-- Table structure for table `stavka_prodavnice`
--

CREATE TABLE `stavka_prodavnice` (
  `PROIZVOD_ID` int(11) NOT NULL,
  `REDNI_BROJ_STAVKE` int(11) NOT NULL,
  `PRODAVNICA_ID` int(11) NOT NULL,
  `KUPAC_ID` int(11) DEFAULT NULL,
  `DATUM_NASTANKA` datetime DEFAULT NULL,
  `KUPOVINA_ID` int(11) DEFAULT NULL,
  `DATUM_ISTEKA_GARANCIJE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stavka_prodavnice`
--

INSERT INTO `stavka_prodavnice` (`PROIZVOD_ID`, `REDNI_BROJ_STAVKE`, `PRODAVNICA_ID`, `KUPAC_ID`, `DATUM_NASTANKA`, `KUPOVINA_ID`, `DATUM_ISTEKA_GARANCIJE`) VALUES
(50, 2, 200, 22, '2024-07-10 00:00:00', 93, '2026-07-10'),
(50, 3, 200, 21, '2024-07-22 21:53:43', 97, NULL),
(51, 1, 201, 23, '2024-09-29 00:00:00', 94, '2027-07-10'),
(51, 2, 201, NULL, NULL, 98, NULL),
(52, 3, 202, 24, '2024-08-29 00:00:00', 95, '2028-07-10'),
(52, 4, 202, NULL, '2024-02-29 00:02:00', NULL, NULL),
(53, 4, 203, NULL, NULL, 90, '2027-09-28'),
(53, 5, 203, NULL, NULL, 99, NULL),
(54, 5, 204, NULL, NULL, 91, '2027-09-28'),
(55, 6, 201, NULL, NULL, 92, '2027-09-20'),
(56, 7, 202, 20, '2024-05-22 21:53:43', 96, '2027-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `vozac`
--

CREATE TABLE `vozac` (
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `MEN_ZAPOSLEN_ID` int(11) NOT NULL,
  `PRODAVNICA_ID` int(11) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `BROJ_TELEFONA` varchar(15) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vozac`
--

INSERT INTO `vozac` (`ZAPOSLEN_ID`, `MEN_ZAPOSLEN_ID`, `PRODAVNICA_ID`, `IME`, `PREZIME`, `BROJ_TELEFONA`, `EMAIL`) VALUES
(70, 40, 200, 'Jack', 'Burton', '+381600123456', 'jack.burton@example.'),
(71, 41, 201, 'Rubber', 'Duck', '+381611234567', 'rubber.duck@example.'),
(72, 42, 202, 'Martin', 'Penwald', '+381622345678', 'martin.penwald@examp'),
(73, 43, 203, 'Philo', 'Beddoe', '+381633456789', 'philo.beddoe@example'),
(74, 44, 204, 'Hawk', 'Lincoln', '+381644567890', 'lincoln.hawk@example');

-- --------------------------------------------------------

--
-- Table structure for table `vozilo`
--

CREATE TABLE `vozilo` (
  `VOZILO_ID` int(11) NOT NULL,
  `ZAPOSLEN_ID` int(11) DEFAULT NULL,
  `NAZIV` varchar(20) NOT NULL,
  `VELICINA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vozilo`
--

INSERT INTO `vozilo` (`VOZILO_ID`, `ZAPOSLEN_ID`, `NAZIV`, `VELICINA`) VALUES
(1000, 70, 'Ford Transit Connect', 'Mali'),
(1001, 71, 'Volkswagen Transport', 'Srednji'),
(1002, 72, 'Mercedes-Benz Sprint', 'Veliki'),
(1003, 73, 'Fiat Doblo', 'Mali'),
(1004, 74, 'Ford Transit', 'Veliki');

-- --------------------------------------------------------

--
-- Table structure for table `zaposlen`
--

CREATE TABLE `zaposlen` (
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `PRODAVNICA_ID` int(11) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `BROJ_TELEFONA` varchar(15) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zaposlen`
--

INSERT INTO `zaposlen` (`ZAPOSLEN_ID`, `PRODAVNICA_ID`, `IME`, `PREZIME`, `BROJ_TELEFONA`, `EMAIL`) VALUES
(40, 200, 'Nikola', 'Petrovic', '+3816564564', 'nikolic@example'),
(41, 201, 'Jovan', '?ordevic', '+381687687', 'djordjevic@example'),
(42, 202, 'Marko', 'Tomic', '+3816867678', 'markovic@example'),
(43, 203, 'Milica', 'Jankovic', '+3816546564687', 'milicevic@example'),
(44, 204, 'Ana', 'Popovic', '+381687687768', 'anapopovic@example'),
(70, 200, 'Jack', 'Burton', '+381600123456', 'jack.burton@example.'),
(71, 201, 'Rubber', 'Duck', '+381611234567', 'rubber.duck@example.'),
(72, 202, 'Martin', 'Penwald', '+381622345678', 'martin.penwald@examp'),
(73, 203, 'Philo', 'Beddoe', '+381633456789', 'philo.beddoe@example'),
(74, 204, 'Hawk', 'Lincoln', '+381644567890', 'lincoln.hawk@example'),
(600, 203, 'Ana', 'Petrovic', '064 123 456', 'ana.petrovic@example'),
(601, 202, 'Marko', 'Jovanovic', '066 234 567', 'marko.jovanovic@exam'),
(602, 201, 'Jovana', 'Nikolic', '063 345 678', 'jovana.nikolic@examp'),
(603, 200, 'Nikola', 'Stojanovic', '065 456 789', 'nikola.stojanovic@ex'),
(604, 204, 'Milica', '?ordevic', '062 567 890', 'milica.djordjevic@ex');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brend`
--
ALTER TABLE `brend`
  ADD PRIMARY KEY (`BREND_ID`);

--
-- Indexes for table `garancija`
--
ALTER TABLE `garancija`
  ADD PRIMARY KEY (`GARANCIJA_ID`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`KATEGORIJA_ID`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`KUPAC_ID`,`DATUM_NASTANKA`);

--
-- Indexes for table `kupac`
--
ALTER TABLE `kupac`
  ADD PRIMARY KEY (`KUPAC_ID`);

--
-- Indexes for table `kupovina`
--
ALTER TABLE `kupovina`
  ADD PRIMARY KEY (`KUPOVINA_ID`);

--
-- Indexes for table `kupovina_uzivo`
--
ALTER TABLE `kupovina_uzivo`
  ADD PRIMARY KEY (`KUPOVINA_ID`);

--
-- Indexes for table `menadzer_prodavnice`
--
ALTER TABLE `menadzer_prodavnice`
  ADD PRIMARY KEY (`ZAPOSLEN_ID`);

--
-- Indexes for table `onlajn_narudzbina`
--
ALTER TABLE `onlajn_narudzbina`
  ADD PRIMARY KEY (`KUPOVINA_ID`);

--
-- Indexes for table `popust`
--
ALTER TABLE `popust`
  ADD PRIMARY KEY (`POPUST_ID`);

--
-- Indexes for table `prodavac`
--
ALTER TABLE `prodavac`
  ADD PRIMARY KEY (`ZAPOSLEN_ID`);

--
-- Indexes for table `prodavnica`
--
ALTER TABLE `prodavnica`
  ADD PRIMARY KEY (`PRODAVNICA_ID`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`PROIZVOD_ID`);

--
-- Indexes for table `recenzija`
--
ALTER TABLE `recenzija`
  ADD PRIMARY KEY (`PROIZVOD_ID`,`KUPAC_ID`,`DATUM_VREME_OCENE`);

--
-- Indexes for table `reklamacija`
--
ALTER TABLE `reklamacija`
  ADD PRIMARY KEY (`KUPOVINA_ID`,`KUPAC_ID`,`DATUM_REKLAMACIJE`);

--
-- Indexes for table `serviser`
--
ALTER TABLE `serviser`
  ADD PRIMARY KEY (`SERVISER_ID`);

--
-- Indexes for table `stavka_prodavnice`
--
ALTER TABLE `stavka_prodavnice`
  ADD PRIMARY KEY (`PROIZVOD_ID`,`REDNI_BROJ_STAVKE`);

--
-- Indexes for table `vozac`
--
ALTER TABLE `vozac`
  ADD PRIMARY KEY (`ZAPOSLEN_ID`);

--
-- Indexes for table `vozilo`
--
ALTER TABLE `vozilo`
  ADD PRIMARY KEY (`VOZILO_ID`);

--
-- Indexes for table `zaposlen`
--
ALTER TABLE `zaposlen`
  ADD PRIMARY KEY (`ZAPOSLEN_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korpa`
--
ALTER TABLE `korpa`
  ADD CONSTRAINT `FK_KORPE_KUPAC_KOR_KUPCI` FOREIGN KEY (`KUPAC_ID`) REFERENCES `kupac` (`KUPAC_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
