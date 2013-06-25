-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 15. Jun 2013 um 13:10
-- Server Version: 5.5.25a
-- PHP-Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `happify`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `goals`
--

CREATE TABLE IF NOT EXISTS `goals` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `goal` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `progress` int(3) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `achieved` datetime NOT NULL,
  `number` int(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Daten für Tabelle `goals`
--

INSERT INTO `goals` (`ID`, `userID`, `goal`, `description`, `progress`, `created`, `achieved`, `number`) VALUES
(1, 1, 'Build Happify.me', '', 20, '2012-01-16 00:00:00', '0000-00-00 00:00:00', 0),
(2, 1, 'Fix your phimose', '', 100, '2012-08-02 00:00:00', '0000-00-00 00:00:00', 0),
(3, 1, 'Talk to at least 20 girls until the end of the year', '', 20, '2012-09-07 00:00:00', '0000-00-00 00:00:00', 0),
(4, 1, 'Speak slower consistently', '', 20, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(5, 1, 'Speak more clearly and louder consistently', '', 0, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(6, 1, 'Smile consistently', '', 0, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(7, 1, 'Healthy nutrition!!!', 'Gesunde Ernährung!!!', 50, '2012-09-23 18:12:34', '0000-00-00 00:00:00', 0),
(31, 1, 'hiuhuih555', '', 0, '2013-06-14 22:52:02', '0000-00-00 00:00:00', 0),
(26, 1, 'Start to sarge women!', '', 0, '2013-02-03 13:48:44', '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
