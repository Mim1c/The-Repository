-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 08:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `book_view`
-- (See below for the actual view)
--
CREATE TABLE `book_view` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Table structure for table `bøger`
--

CREATE TABLE `bøger` (
  `BogID` int(11) NOT NULL,
  `ForfatterID` int(11) DEFAULT NULL,
  `Titel` varchar(255) DEFAULT NULL,
  `Udgivelsesår` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bøger`
--

INSERT INTO `bøger` (`BogID`, `ForfatterID`, `Titel`, `Udgivelsesår`) VALUES
(1, 1, 'Steve Jobs', '2011-12-12'),
(2, 1, 'Steve Jobs 2', '2011-12-12'),
(3, 1, 'Leonardo Da Vinci', '2017-12-12'),
(4, 1, 'Benjamin Frankling', '2003-12-12'),
(5, 1, 'Einstein', '2007-12-12'),
(6, 1, 'The Innovators', '2014-12-12'),
(7, 2, 'Harry Potter', '1997-12-12'),
(8, 3, 'Den Lille Havfrue', '1837-12-12'),
(9, 4, 'Hamlet', '1603-12-12'),
(10, 4, 'Macbeth', '1606-12-12'),
(11, 5, 'Selected Poems', '1890-12-12'),
(12, 6, 'Holy Sonnets', '1633-12-12'),
(13, 7, 'Tennessee\'s Partner', '0000-00-00'),
(14, 8, 'The Poem of John Keats', '1818-12-12'),
(15, 9, 'Djævlens Ordbog', '1906-12-12'),
(16, 10, 'Den Lykkelige Prins', '1888-12-12'),
(17, 11, 'Ulvehunden', '1991-12-12'),
(18, 12, 'Oliver Twist', '1838-12-12'),
(19, 13, 'Tigeren', '1794-12-12'),
(20, 14, 'Tam o\' Shanter', '1791-12-12'),
(21, 15, 'The Poetry of Robert Frost', '1800-12-12'),
(22, 6, 'Hello World', '1980-12-12');

-- --------------------------------------------------------

--
-- Stand-in structure for view `charlesdickens_book`
-- (See below for the actual view)
--
CREATE TABLE `charlesdickens_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Table structure for table `forfatter`
--

CREATE TABLE `forfatter` (
  `ForfatterID` int(11) NOT NULL,
  `Fornavn` varchar(255) DEFAULT NULL,
  `Efternavn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forfatter`
--

INSERT INTO `forfatter` (`ForfatterID`, `Fornavn`, `Efternavn`) VALUES
(1, 'Walter', 'Isaacson'),
(2, 'Joanne', 'Rowling'),
(3, 'Hans Christian', 'Andersen'),
(4, 'William', 'Shakespeare'),
(5, 'Emily', 'Dickinson'),
(6, 'John', 'Donne'),
(7, 'Bret', 'Harte'),
(8, 'John', 'Keats'),
(9, 'Ambrose', 'Bierce'),
(10, 'Oscar', 'Wilde'),
(11, 'Jack', 'London'),
(12, 'Charles', 'Dickens'),
(13, 'William', 'Blake'),
(14, 'Robert', 'Burns'),
(15, 'Robert', 'Frost');

-- --------------------------------------------------------

--
-- Stand-in structure for view `forfatter_view`
-- (See below for the actual view)
--
CREATE TABLE `forfatter_view` (
`ForfatterID` int(11)
,`Fornavn` varchar(255)
,`Efternavn` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `joannerowling_book`
-- (See below for the actual view)
--
CREATE TABLE `joannerowling_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `johndonne_book`
-- (See below for the actual view)
--
CREATE TABLE `johndonne_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `johnkeats_book`
-- (See below for the actual view)
--
CREATE TABLE `johnkeats_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `shakespeare_book`
-- (See below for the actual view)
--
CREATE TABLE `shakespeare_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `walter_book`
-- (See below for the actual view)
--
CREATE TABLE `walter_book` (
`BogID` int(11)
,`ForfatterID` int(11)
,`Titel` varchar(255)
,`Udgivelsesår` date
);

-- --------------------------------------------------------

--
-- Structure for view `book_view`
--
DROP TABLE IF EXISTS `book_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `book_view`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` ;

-- --------------------------------------------------------

--
-- Structure for view `charlesdickens_book`
--
DROP TABLE IF EXISTS `charlesdickens_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `charlesdickens_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'Charles' AND `forfatter`.`Efternavn` = 'Dickens') ;

-- --------------------------------------------------------

--
-- Structure for view `forfatter_view`
--
DROP TABLE IF EXISTS `forfatter_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `forfatter_view`  AS SELECT `forfatter`.`ForfatterID` AS `ForfatterID`, `forfatter`.`Fornavn` AS `Fornavn`, `forfatter`.`Efternavn` AS `Efternavn` FROM `forfatter` ;

-- --------------------------------------------------------

--
-- Structure for view `joannerowling_book`
--
DROP TABLE IF EXISTS `joannerowling_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joannerowling_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'Joanne' AND `forfatter`.`Efternavn` = 'Rowling') ;

-- --------------------------------------------------------

--
-- Structure for view `johndonne_book`
--
DROP TABLE IF EXISTS `johndonne_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `johndonne_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'John' AND `forfatter`.`Efternavn` = 'Donne') ;

-- --------------------------------------------------------

--
-- Structure for view `johnkeats_book`
--
DROP TABLE IF EXISTS `johnkeats_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `johnkeats_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'John' AND `forfatter`.`Efternavn` = 'Keats') ;

-- --------------------------------------------------------

--
-- Structure for view `shakespeare_book`
--
DROP TABLE IF EXISTS `shakespeare_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shakespeare_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'William' AND `forfatter`.`Efternavn` = 'Shakespeare') ;

-- --------------------------------------------------------

--
-- Structure for view `walter_book`
--
DROP TABLE IF EXISTS `walter_book`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `walter_book`  AS SELECT `bøger`.`BogID` AS `BogID`, `bøger`.`ForfatterID` AS `ForfatterID`, `bøger`.`Titel` AS `Titel`, `bøger`.`Udgivelsesår` AS `Udgivelsesår` FROM `bøger` WHERE `bøger`.`ForfatterID` in (select `forfatter`.`ForfatterID` from `forfatter` where `forfatter`.`Fornavn` = 'Walter' AND `forfatter`.`Efternavn` = 'Isaacson') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bøger`
--
ALTER TABLE `bøger`
  ADD PRIMARY KEY (`BogID`),
  ADD KEY `ForfatterID` (`ForfatterID`);

--
-- Indexes for table `forfatter`
--
ALTER TABLE `forfatter`
  ADD PRIMARY KEY (`ForfatterID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bøger`
--
ALTER TABLE `bøger`
  MODIFY `BogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `forfatter`
--
ALTER TABLE `forfatter`
  MODIFY `ForfatterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bøger`
--
ALTER TABLE `bøger`
  ADD CONSTRAINT `bøger_ibfk_1` FOREIGN KEY (`ForfatterID`) REFERENCES `forfatter` (`ForfatterID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
