-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 07:04 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `RDV` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fnom` varchar(20) NOT NULL,
  `lnom` varchar(20) NOT NULL,
  `genre` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `docteur` varchar(30) NOT NULL,
  `docFrais` int(5) NOT NULL,
  `rdvdate` date NOT NULL,
  `rdvtime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `docteurrStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `RDV` (`pid`, `ID`, `fnom`, `lnom`, `genre`, `email`, `contact`, `docteur`, `docFrais`, `rdvdate`, `rdvtime`, `userStatus`, `docteurrStatus`) VALUES
(12, 11, 'YASSIN', 'YAZ', 'homme', 'YAS1@GMAIL.COM', '0678964325', 'DOCT6', 450, '2022-01-18', '23:08:40', 2, 2),
(12, 14, 'ALOUANE', 'HATIM', 'homme', 'ALOUANE@gmail.com', '0676895432', 'TBIB1', 435, '2021-07-06', '10:00:00', 1, 1),
(1, 15, 'ZIDANI', 'YASSER', 'homme', 'ZIDANI@gmail.com', '0676895432', 'DOC2', 440, '2021-07-05', '14:00:00', 0, 1),
(1, 16, 'BENELABAR', 'YASSIR', 'homme', 'BENELABAR@gmail.com', '0676895432', 'DOC2', 440, '2021-07-05', '10:00:00', 1, 1),
(11, 17, 'ARIRI', 'CHAIMA', 'femme', 'ARIRI@gmail.com', '0676895431', 'DOC3', 280, '2021-07-05', '10:00:00', 1, 1),
(13, 18, 'ANOUAR', 'MED', 'homme', 'ANOUAR@gmail.com', '0676895434', 'DOC4', 450, '2021-07-06', '08:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `roomnumber` int(11) NOT NULL,
  `roomtype` text NOT NULL,
  `roomstatus` text NOT NULL,
  `floor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`roomnumber`, `roomtype`, `roomstatus`, `floor`) VALUES
(1, 'Chambre simple/Privée - “1 bedded” ', 'Disponible ', 1),
(2, 'Chambre 2 lits/Semi-privée ', 'Non disponible', 2),
(3, 'Chambre 4 litS', 'disponible ', 3);

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Demo', 'demo@demail.com', '7014500000', 'this is a demo test');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`) VALUES
('WillWilliams', 'password', 'Will Williams', 'williams@gmail.com', 'Cardiologist', 435),
('Ralph', 'password', 'Ralphn Bh', 'ralph@gmail.com', 'Neurologist', 450),
('ryan', 'password', 'Ryan Chandler', 'ryanc@gmail.com', 'Pediatrician', 440),
('lewis', 'password', 'Lou Lewis', 'lewis@gmail.com', 'Gynecologist', 280),
('chris', 'password', 'Chris Olivas', 'chris@gmail.com', 'Oncologist', 580),
('danial', 'password', 'Danial Rivera', 'danial@gmail.com', 'Neurologist', 210);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Curtis', 'Hicks', 'Male', 'curtis@gmail.com', '7410000010', 'pass', 'pass'),
(2, 'Emily', 'Smith', 'Female', 'emily@gmail.com', '7896541222', 'pass', 'pass'),
(3, 'Robert', 'Ray', 'Male', 'robert@gmail.com', '7014744444', 'pass', 'pass'),
(4, 'Michael', 'Foster', 'Male', 'michael@gmail.com', '7023696969', 'pass', 'pass'),
(5, 'Victor', 'Owen', 'Male', 'victor@gmail.com', '7897895500', 'pass', 'pass'),
(6, 'Johnny', 'Collins', 'Male', 'johnny@gmail.com', '7530001250', 'pass', 'pass'),
(7, 'Elsie', 'Meads', 'Female', 'elsie@gmail.com', '7850001250', 'pass', 'pass'),
(8, 'David', 'Fburn', 'Male', 'david@gmail.com', '7301450000', 'pass', 'pass'),
(9, 'Brandon', 'Mckinnon', 'Male', 'brandon@gmail.com', '7026969500', 'pass', 'pass'),
(10, 'Tyler', 'Smith', 'Male', 'tyler@gmail.com', '7900145300', 'pass', 'pass'),
(11, 'Kathryn', 'Anderson', 'Female', 'kathryn@gmail.com', '7850002580', 'pass', 'pass'),
(12, 'Liam', 'Moore', 'Male', 'liam@gmail.com', '7412225680', 'password', 'password'),
(13, 'Brian', 'Rowe', 'Male', 'brian@gmail.com', '7012569999', 'password', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- ajouter la table pour le lit alloué à la personne dans le département d'urgence
CREATE TABLE `lit alloué` (
  `id` int(100) NOT NULL,
  `numero` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `categorie` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lit_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- apres on crée une table pour les types sanguins des patients 
CREATE TABLE `banquesang` (
  `id` int(100) NOT NULL,
  `groupe` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- dorénavent, on commence à alimenter nos tables avec des données aléatoires

INSERT INTO `banquesang` (`id`, `groupe`, `status`, `departement_id`) VALUES
(1, 'A+', '0 Bags', '416'),
(2, 'A-', '0 Bags', '416'),
(3, 'B+', '0 Bags', '416'),
(4, 'B-', '0 Bags', '416'),
(5, 'AB+', '0 Bags', '416'),
(6, 'AB-', '0 Bags', '416'),
(7, 'O+', '0 Bags', '416'),
(8, 'O-', '0 Bags', '416'),
(224, 'O-', '0 Bags', '451'),
(223, 'O+', '0 Bags', '451'),
(222, 'AB-', '0 Bags', '451'),
(221, 'AB+', '0 Bags', '451'),
(220, 'B-', '0 Bags', '451'),
(219, 'B+', '0 Bags', '451'),
(218, 'A-', '0 Bags', '451'),
(217, 'A+', '0 Bags', '451'),
(225, 'A+', '0 Bags', '452'),
(226, 'A-', '0 Bags', '452'),
(227, 'B+', '0 Bags', '452'),
(228, 'B-', '0 Bags', '452'),
(229, 'AB+', '0 Bags', '452'),
(230, 'AB-', '0 Bags', '452'),
(231, 'O+', '0 Bags', '452'),
(232, 'O-', '0 Bags', '452'),
(233, 'A+', '0 Bags', '453'),
(234, 'A-', '0 Bags', '453'),
(235, 'B+', '0 Bags', '453'),
(236, 'B-', '0 Bags', '453'),
(237, 'AB+', '0 Bags', '453'),
(238, 'AB-', '0 Bags', '453'),
(239, 'O+', '0 Bags', '453'),
(240, 'O-', '0 Bags', '453'),
(241, 'A+', '0 Bags', '454'),
(242, 'A-', '0 Bags', '454'),
(243, 'B+', '0 Bags', '454'),
(244, 'B-', '0 Bags', '454'),
(245, 'AB+', '0 Bags', '454'),
(246, 'AB-', '0 Bags', '454'),
(247, 'O+', '0 Bags', '454'),
(248, 'O-', '0 Bags', '454'),
(249, 'A+', '0 Bags', '455'),
(250, 'A-', '0 Bags', '455'),
(251, 'B+', '0 Bags', '455'),
(252, 'B-', '0 Bags', '455'),
(253, 'AB+', '0 Bags', '455'),
(254, 'AB-', '0 Bags', '455'),
(255, 'O+', '0 Bags', '455'),
(256, 'O-', '0 Bags', '455'),
(257, 'A+', '0 Bags', '456'),
(258, 'A-', '0 Bags', '456'),
(259, 'B+', '0 Bags', '456'),
(260, 'B-', '0 Bags', '456'),
(261, 'AB+', '0 Bags', '456'),
(262, 'AB-', '0 Bags', '456'),
(263, 'O+', '0 Bags', '456'),
(264, 'O-', '0 Bags', '456');







CREATE TABLE `categorie_lit` (
  `id` int(100) NOT NULL,
  `categorie` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `categorie_lit` (`id`, `categorie`, `description`, `departement_id`) VALUES
(6, 'A', '10 lits', '416'),
(7, 'B', '10 lits', '416'),
(8, 'Enfants', '5 lits ', '416'),
(10, 'Grande', '50 lits', '416');







INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('WillWilliams', 12, 14, 'Liam', 'Moore', '2021-07-06', '10:00:00', 'Congenital heart disease', 'rhinoconjunctivitis', 'trandolapril (Mavik)'),
('ryan', 1, 16, 'Curtis', 'Hicks', '2021-07-05', '10:00:00', 'Tuberculosis', 'lumpy rash on the legs - or lupus vulgaris which gives lumps or ulcers', 'Isoniazid, Ethambutol (Myambutol), Linezolid (Zyvox)'),
('lewis', 11, 17, 'Kathryn', 'Anderson', '2021-07-05', '10:00:00', 'Ovarian cysts', '00000000', 'Narcotic analgesics and nonsteroidal anti-inflammatory drugs'),
('Ralph', 13, 18, 'Brian', 'Rowe', '2021-07-06', '08:00:00', 'Cerebral Aneurysm', '0000000', 'Nimodipine - empty stomach, at least 1 hour before a meal or 2 hours after a meal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`

CREATE TABLE `departement` (
  `id` int(10) NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `departement` (`id`, `nom`, `description`, `x`, `y`, `departement_id`) VALUES
(12, 'Cardiologie', '<p>Ce service fournit des soins médicaux aux patients qui ont des problèmes de cœur ou de circulation. Il traite les personnes hospitalisées et en consultation externe.. </p>\n', '', '', '416'),
(15, 'Diagnostic imaging', 'Anciennement connu sous le nom de radiologie, ce service fournit une gamme complète de services d imagerie diagnostique, notamment:\n\n', '', '', '416'),
(20, 'Chirurgie générale', 'Le service de chirurgie générale couvre un large éventail dinterventions chirurgicales', '', '', '416'),
(41, 'Rheumatologie', 'Des médecins spécialistes appelés rhumatologues dirigent lunité et sont des experts dans le domaine des troubles musculo-squelettiques (os, articulations, ligaments, tendons, muscles et nerfs).\n\n', '', '', '416'),
(42, 'Santé sexuelle', 'Ce département offre un service gratuit et confidentiel proposant :\ndes conseils, des tests et des traitements pour toutes les infections sexuellement transmissibles (IST)\ndes soins de planification familiale.\n\n\n', '', '', '416'),
(52, 'Department Name 2', '<p>Department Name 2</p>\n', '', '', '449');







-- 
ALTER TABLE `RDV`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
