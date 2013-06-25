-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 16. Jun 2013 um 02:18
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
-- Tabellenstruktur für Tabelle `bd_scale_categories`
--

CREATE TABLE IF NOT EXISTS `bd_scale_categories` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `name_EN` varchar(100) DEFAULT NULL,
  `description_EN` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `bd_scale_categories`
--

INSERT INTO `bd_scale_categories` (`ID`, `name_EN`, `description_EN`) VALUES
(1, 'Thoughts and Feeling', ''),
(2, 'Activities and Personal Relationships', ''),
(3, 'Physical Symptoms', ''),
(4, 'Suicidal Urges', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bd_scale_items`
--

CREATE TABLE IF NOT EXISTS `bd_scale_items` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `categoryID` int(4) NOT NULL,
  `item_EN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `bd_scale_items`
--

INSERT INTO `bd_scale_items` (`ID`, `categoryID`, `item_EN`) VALUES
(1, 1, 'Feeling sad or down in the dumps'),
(2, 1, 'Feeling unhappy or blue'),
(3, 1, 'Crying spells or tearfulness'),
(4, 1, 'Feeling discouraged'),
(5, 1, 'Feeling hopeless'),
(6, 1, 'Low self-esteem'),
(7, 1, 'Feeling worthless or inadequate'),
(8, 1, 'Feeling worthless or inadequate'),
(9, 1, 'Criticizing yourself or blaming yourself'),
(10, 1, 'Difficulty making decisions'),
(11, 2, 'Loss of interest in family, friends or colleagues'),
(12, 2, 'Loneliness'),
(13, 2, 'Spending less time with family or friends'),
(14, 2, 'Loss of motivation'),
(15, 2, 'Loss of interest in work or other activities'),
(16, 2, 'Avoiding work or other activities'),
(17, 2, 'Loss of pleasure or satisfaction in life'),
(18, 3, 'Feeling tired'),
(19, 3, 'Difficulty sleeping or sleeping too much'),
(20, 3, 'Decreased or increased appetite'),
(21, 3, 'Loss of interest in sex'),
(22, 3, 'Worrying about your health'),
(23, 4, 'Do you have any suicidal thoughts?'),
(24, 4, 'Would you like to end your life?'),
(25, 4, 'Do you have a plan for harming yourself?');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bd_scale_results`
--

CREATE TABLE IF NOT EXISTS `bd_scale_results` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `userID` int(12) NOT NULL,
  `itemID` int(4) DEFAULT NULL,
  `value` int(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=226 ;

--
-- Daten für Tabelle `bd_scale_results`
--

INSERT INTO `bd_scale_results` (`ID`, `userID`, `itemID`, `value`, `date`) VALUES
(1, 1, 1, 4, '2012-08-08 00:00:00'),
(2, 1, 2, 4, '2012-08-08 00:00:00'),
(3, 1, 3, 4, '2012-08-08 00:00:00'),
(4, 1, 4, 4, '2012-08-08 00:00:00'),
(5, 1, 5, 4, '2012-08-08 00:00:00'),
(6, 1, 6, 4, '2012-08-08 00:00:00'),
(7, 1, 7, 4, '2012-08-08 00:00:00'),
(8, 1, 8, 4, '2012-08-08 00:00:00'),
(9, 1, 9, 4, '2012-08-08 00:00:00'),
(10, 1, 10, 4, '2012-08-08 00:00:00'),
(11, 1, 11, 3, '2012-08-08 00:00:00'),
(12, 1, 12, 3, '2012-08-08 00:00:00'),
(13, 1, 13, 3, '2012-08-08 00:00:00'),
(14, 1, 14, 3, '2012-08-08 00:00:00'),
(15, 1, 15, 3, '2012-08-08 00:00:00'),
(16, 1, 16, 3, '2012-08-08 00:00:00'),
(17, 1, 17, 3, '2012-08-08 00:00:00'),
(18, 1, 18, 2, '2012-08-08 00:00:00'),
(19, 1, 19, 2, '2012-08-08 00:00:00'),
(20, 1, 20, 2, '2012-08-08 00:00:00'),
(21, 1, 21, 2, '2012-08-08 00:00:00'),
(22, 1, 22, 2, '2012-08-08 00:00:00'),
(23, 1, 23, 1, '2012-08-08 00:00:00'),
(24, 1, 24, 1, '2012-08-08 00:00:00'),
(25, 1, 25, 1, '2012-08-08 00:00:00'),
(26, 1, 1, 1, '2012-09-21 19:42:38'),
(27, 1, 2, 1, '2012-09-21 19:42:38'),
(28, 1, 3, 2, '2012-09-21 19:42:38'),
(29, 1, 4, 2, '2012-09-21 19:42:38'),
(30, 1, 5, 3, '2012-09-21 19:42:38'),
(31, 1, 6, 3, '2012-09-21 19:42:38'),
(32, 1, 7, 3, '2012-09-21 19:42:38'),
(33, 1, 8, 3, '2012-09-21 19:42:38'),
(34, 1, 9, 3, '2012-09-21 19:42:38'),
(35, 1, 10, 1, '2012-09-21 19:42:38'),
(36, 1, 11, 2, '2012-09-21 19:42:38'),
(37, 1, 12, 3, '2012-09-21 19:42:38'),
(38, 1, 13, 3, '2012-09-21 19:42:38'),
(39, 1, 14, 2, '2012-09-21 19:42:38'),
(40, 1, 15, 1, '2012-09-21 19:42:38'),
(41, 1, 16, 3, '2012-09-21 19:42:38'),
(42, 1, 17, 2, '2012-09-21 19:42:38'),
(43, 1, 18, 2, '2012-09-21 19:42:38'),
(44, 1, 19, 2, '2012-09-21 19:42:38'),
(45, 1, 20, 1, '2012-09-21 19:42:38'),
(46, 1, 21, 1, '2012-09-21 19:42:38'),
(47, 1, 22, 2, '2012-09-21 19:42:38'),
(48, 1, 23, 3, '2012-09-21 19:42:38'),
(49, 1, 24, 2, '2012-09-21 19:42:38'),
(50, 1, 25, 2, '2012-09-21 19:42:38'),
(51, 1, 1, 1, '2012-09-21 19:43:54'),
(52, 1, 2, 1, '2012-09-21 19:43:54'),
(53, 1, 3, 2, '2012-09-21 19:43:54'),
(54, 1, 4, 2, '2012-09-21 19:43:54'),
(55, 1, 5, 2, '2012-09-21 19:43:54'),
(56, 1, 6, 2, '2012-09-21 19:43:54'),
(57, 1, 7, 3, '2012-09-21 19:43:54'),
(58, 1, 8, 3, '2012-09-21 19:43:54'),
(59, 1, 9, 3, '2012-09-21 19:43:54'),
(60, 1, 10, 2, '2012-09-21 19:43:54'),
(61, 1, 11, 0, '2012-09-21 19:43:54'),
(62, 1, 12, 1, '2012-09-21 19:43:54'),
(63, 1, 13, 0, '2012-09-21 19:43:54'),
(64, 1, 14, 3, '2012-09-21 19:43:54'),
(65, 1, 15, 2, '2012-09-21 19:43:54'),
(66, 1, 16, 2, '2012-09-21 19:43:54'),
(67, 1, 17, 1, '2012-09-21 19:43:54'),
(68, 1, 18, 1, '2012-09-21 19:43:54'),
(69, 1, 19, 1, '2012-09-21 19:43:54'),
(70, 1, 20, 1, '2012-09-21 19:43:54'),
(71, 1, 21, 1, '2012-09-21 19:43:54'),
(72, 1, 22, 2, '2012-09-21 19:43:54'),
(73, 1, 23, 1, '2012-09-21 19:43:54'),
(74, 1, 24, 0, '2012-09-21 19:43:54'),
(75, 1, 25, 0, '2012-09-21 19:43:54'),
(76, 1, 1, 2, '2012-09-21 19:44:35'),
(77, 1, 2, 2, '2012-09-21 19:44:35'),
(78, 1, 3, 2, '2012-09-21 19:44:35'),
(79, 1, 4, 2, '2012-09-21 19:44:35'),
(80, 1, 5, 2, '2012-09-21 19:44:35'),
(81, 1, 6, 2, '2012-09-21 19:44:35'),
(82, 1, 7, 2, '2012-09-21 19:44:35'),
(83, 1, 8, 2, '2012-09-21 19:44:35'),
(84, 1, 9, 2, '2012-09-21 19:44:35'),
(85, 1, 10, 1, '2012-09-21 19:44:35'),
(86, 1, 11, 0, '2012-09-21 19:44:35'),
(87, 1, 12, 0, '2012-09-21 19:44:35'),
(88, 1, 13, 0, '2012-09-21 19:44:35'),
(89, 1, 14, 0, '2012-09-21 19:44:35'),
(90, 1, 15, 0, '2012-09-21 19:44:35'),
(91, 1, 16, 0, '2012-09-21 19:44:35'),
(92, 1, 17, 0, '2012-09-21 19:44:35'),
(93, 1, 18, 0, '2012-09-21 19:44:35'),
(94, 1, 19, 0, '2012-09-21 19:44:35'),
(95, 1, 20, 0, '2012-09-21 19:44:35'),
(96, 1, 21, 0, '2012-09-21 19:44:35'),
(97, 1, 22, 0, '2012-09-21 19:44:35'),
(98, 1, 23, 0, '2012-09-21 19:44:35'),
(99, 1, 24, 0, '2012-09-21 19:44:35'),
(100, 1, 25, 0, '2012-09-21 19:44:35'),
(101, 1, 1, 2, '2012-09-21 19:45:15'),
(102, 1, 2, 2, '2012-09-21 19:45:15'),
(103, 1, 3, 2, '2012-09-21 19:45:15'),
(104, 1, 4, 2, '2012-09-21 19:45:15'),
(105, 1, 5, 2, '2012-09-21 19:45:15'),
(106, 1, 6, 2, '2012-09-21 19:45:15'),
(107, 1, 7, 2, '2012-09-21 19:45:15'),
(108, 1, 8, 1, '2012-09-21 19:45:15'),
(109, 1, 9, 0, '2012-09-21 19:45:15'),
(110, 1, 10, 0, '2012-09-21 19:45:15'),
(111, 1, 11, 0, '2012-09-21 19:45:15'),
(112, 1, 12, 0, '2012-09-21 19:45:15'),
(113, 1, 13, 0, '2012-09-21 19:45:15'),
(114, 1, 14, 0, '2012-09-21 19:45:15'),
(115, 1, 15, 0, '2012-09-21 19:45:15'),
(116, 1, 16, 0, '2012-09-21 19:45:15'),
(117, 1, 17, 0, '2012-09-21 19:45:15'),
(118, 1, 18, 0, '2012-09-21 19:45:15'),
(119, 1, 19, 0, '2012-09-21 19:45:15'),
(120, 1, 20, 0, '2012-09-21 19:45:15'),
(121, 1, 21, 0, '2012-09-21 19:45:15'),
(122, 1, 22, 0, '2012-09-21 19:45:15'),
(123, 1, 23, 0, '2012-09-21 19:45:15'),
(124, 1, 24, 0, '2012-09-21 19:45:15'),
(125, 1, 25, 0, '2012-09-21 19:45:15'),
(126, 1, 1, 1, '2012-09-21 19:45:45'),
(127, 1, 2, 1, '2012-09-21 19:45:45'),
(128, 1, 3, 1, '2012-09-21 19:45:45'),
(129, 1, 4, 1, '2012-09-21 19:45:45'),
(130, 1, 5, 2, '2012-09-21 19:45:45'),
(131, 1, 6, 2, '2012-09-21 19:45:45'),
(132, 1, 7, 1, '2012-09-21 19:45:45'),
(133, 1, 8, 0, '2012-09-21 19:45:45'),
(134, 1, 9, 0, '2012-09-21 19:45:45'),
(135, 1, 10, 0, '2012-09-21 19:45:45'),
(136, 1, 11, 0, '2012-09-21 19:45:45'),
(137, 1, 12, 0, '2012-09-21 19:45:45'),
(138, 1, 13, 0, '2012-09-21 19:45:45'),
(139, 1, 14, 0, '2012-09-21 19:45:45'),
(140, 1, 15, 0, '2012-09-21 19:45:45'),
(141, 1, 16, 0, '2012-09-21 19:45:45'),
(142, 1, 17, 0, '2012-09-21 19:45:45'),
(143, 1, 18, 0, '2012-09-21 19:45:45'),
(144, 1, 19, 0, '2012-09-21 19:45:45'),
(145, 1, 20, 0, '2012-09-21 19:45:45'),
(146, 1, 21, 0, '2012-09-21 19:45:45'),
(147, 1, 22, 0, '2012-09-21 19:45:45'),
(148, 1, 23, 0, '2012-09-21 19:45:45'),
(149, 1, 24, 0, '2012-09-21 19:45:45'),
(150, 1, 25, 0, '2012-09-21 19:45:45'),
(151, 1, 1, 1, '2012-09-21 19:46:44'),
(152, 1, 2, 1, '2012-09-21 19:46:44'),
(153, 1, 3, 1, '2012-09-21 19:46:44'),
(154, 1, 4, 0, '2012-09-21 19:46:44'),
(155, 1, 5, 0, '2012-09-21 19:46:44'),
(156, 1, 6, 0, '2012-09-21 19:46:44'),
(157, 1, 7, 0, '2012-09-21 19:46:44'),
(158, 1, 8, 0, '2012-09-21 19:46:44'),
(159, 1, 9, 0, '2012-09-21 19:46:44'),
(160, 1, 10, 0, '2012-09-21 19:46:44'),
(161, 1, 11, 0, '2012-09-21 19:46:44'),
(162, 1, 12, 0, '2012-09-21 19:46:44'),
(163, 1, 13, 0, '2012-09-21 19:46:44'),
(164, 1, 14, 0, '2012-09-21 19:46:44'),
(165, 1, 15, 0, '2012-09-21 19:46:44'),
(166, 1, 16, 0, '2012-09-21 19:46:44'),
(167, 1, 17, 0, '2012-09-21 19:46:44'),
(168, 1, 18, 0, '2012-09-21 19:46:44'),
(169, 1, 19, 0, '2012-09-21 19:46:44'),
(170, 1, 20, 0, '2012-09-21 19:46:44'),
(171, 1, 21, 0, '2012-09-21 19:46:44'),
(172, 1, 22, 0, '2012-09-21 19:46:44'),
(173, 1, 23, 0, '2012-09-21 19:46:44'),
(174, 1, 24, 0, '2012-09-21 19:46:44'),
(175, 1, 25, 0, '2012-09-21 19:46:44'),
(176, 1, 1, 0, '2012-09-21 19:47:11'),
(177, 1, 2, 0, '2012-09-21 19:47:11'),
(178, 1, 3, 0, '2012-09-21 19:47:11'),
(179, 1, 4, 0, '2012-09-21 19:47:11'),
(180, 1, 5, 0, '2012-09-21 19:47:11'),
(181, 1, 6, 0, '2012-09-21 19:47:11'),
(182, 1, 7, 0, '2012-09-21 19:47:11'),
(183, 1, 8, 0, '2012-09-21 19:47:11'),
(184, 1, 9, 0, '2012-09-21 19:47:11'),
(185, 1, 10, 0, '2012-09-21 19:47:11'),
(186, 1, 11, 0, '2012-09-21 19:47:11'),
(187, 1, 12, 0, '2012-09-21 19:47:11'),
(188, 1, 13, 0, '2012-09-21 19:47:11'),
(189, 1, 14, 0, '2012-09-21 19:47:11'),
(190, 1, 15, 0, '2012-09-21 19:47:11'),
(191, 1, 16, 0, '2012-09-21 19:47:11'),
(192, 1, 17, 0, '2012-09-21 19:47:11'),
(193, 1, 18, 0, '2012-09-21 19:47:11'),
(194, 1, 19, 0, '2012-09-21 19:47:11'),
(195, 1, 20, 0, '2012-09-21 19:47:11'),
(196, 1, 21, 0, '2012-09-21 19:47:11'),
(197, 1, 22, 0, '2012-09-21 19:47:11'),
(198, 1, 23, 0, '2012-09-21 19:47:11'),
(199, 1, 24, 0, '2012-09-21 19:47:11'),
(200, 1, 25, 0, '2012-09-21 19:47:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `author` int(12) NOT NULL,
  `permalink` varchar(250) NOT NULL,
  `title_DE` varchar(50) NOT NULL,
  `message_DE` text NOT NULL,
  `title_EN` varchar(50) NOT NULL,
  `message_EN` text NOT NULL,
  `category` enum('Health','PD','Inspiring','Depression','PT','SF','Productive') NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pinterest_picture` enum('Yes','No') NOT NULL,
  `pinterest_text` varchar(250) NOT NULL,
  `click_action` enum('None','Popup','Subpage') NOT NULL DEFAULT 'None',
  `popup_title` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `file1` varchar(50) NOT NULL,
  `filename1` varchar(50) NOT NULL,
  `file2` varchar(50) NOT NULL,
  `filename2` varchar(50) NOT NULL,
  `file3` varchar(50) NOT NULL,
  `filename3` varchar(50) CHARACTER SET utf16 NOT NULL,
  `visibility` int(1) NOT NULL DEFAULT '1',
  `comments` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `permalink` (`permalink`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Daten für Tabelle `blog`
--

INSERT INTO `blog` (`ID`, `author`, `permalink`, `title_DE`, `message_DE`, `title_EN`, `message_EN`, `category`, `date`, `pinterest_picture`, `pinterest_text`, `click_action`, `popup_title`, `file1`, `filename1`, `file2`, `filename2`, `file3`, `filename3`, `visibility`, `comments`, `deleted`) VALUES
(9, 1, 'My_new_internet_presence', 'Mein neuer Internetauftritt', '[IMG=200x123xleft]{$dir_img}blog/finish line.gif[/IMG][B]Nach langjähriger Entwicklungszeit ist mein neuer Internetauftritt endlich in einer ersten Version online![/B]\r\nEin normaler Besucher kann kaum erahnen was für ein enorm komplexer Code hinter dieser Homepage steckt (insbesondere bei der Administrierbarkeit der Seite). Zu den funktionalen Details werde ich gleich noch ein wenig mehr erzählen.\r\n\r\nZiel dieser Webseite ist es zum einen, aktuelle Informationen über meine Person bereitzustellen. Des Weiteren hoffe ich hier immer wieder über meine aktuellen Tätigkeiten berichten zu können. Über welche Inhalte ich alles in meinem Blog erzählen werde weiß ich selbst noch nicht, es ist schließlich mein Erster! Ich gehe aber davon aus, dass mir mit der Zeit klarer wird über welche Themen ich vorrangig schreiben möchte.\r\n\r\nIn diesem ersten Eintrag gebe ich einen kurzen Einblick in die zahlreichen Funktionalitäten meiner Homepage:\r\n\r\n[U][B]Grundsätzlich besteht die Homepage derzeit aus 7 Bereichen:[/B][/U]\r\n[LIST]\r\n[*][B]Linke Leiste[/B]\r\nHier können einzelne Blocks aktiviert werden. Beispielsweise können die aktuellen Besucherzahlen ein- oder ausgeblendet werden oder ein externer RSS Feed eingebunden werden. Auch ist dort eine [B]Twitter Nachricht[/B] zu finden, sofern ich gerade eine eingetragen habe.\r\n[*][B]Blog[/B]\r\nAuf der Startseite befinden sich die neuesten Blognachrichten mit der Möglichkeit Kommentare abzugeben. In der linken Leiste werden die neuesten Einträge und Kommentare angezeigt.\r\n[*][B]CMS Informationsseiten[/B] (Über mich, Referenzen, Impressum)\r\nAlle Seiteninhalte können über ein Onlineformular gepflegt werden.\r\n[*][B]Galerie[/B]\r\nBildergalerien werden komplett automatisch installiert.\r\n[*][B]Links[/B]\r\nHier stehen einige hifreiche Weblinks zu verschiedenen Themenbereichen zur Verfügung.\r\n[*][B]RSS Feeds[/B]\r\nRSS Feeds informieren über neue Blognachrichten und neue Bildergalerien.\r\n[*][B]Administrationsoberfläche[/B] (für den Besucher nicht sichtbar)\r\nEine sehr komplexe Weboberfläche, mit der die komplette Webseite geändert werden kann (Struktur & Inhalte).\r\n[/LIST]\r\n\r\nDas Coding basiert komplett auf PHP und mySQL. Daneben kommt JavaScript ergänzend zum Einsatz. Als Template-Engine wird [URL=http://www.smarty.net/][B]SMARTY[/B][/URL] verwendet. Viele Funktionen (vor allem im Adminbereich) verwenden zusätzlich [URL=http://xajaxproject.org/][B]XAJAX[/B][/URL] für den asynchronen Datentransfer. Gerade das ausgezeichnete Zusammenspiel von smarty und xajax hat die Entwicklung erheblich vereinfacht.\r\n\r\n[U][B]Mehrsprachigkeit[/B][/U]\r\n[B]Eine herausragende Funktionalität der Website stellt die Mehrsprachigkeit dar.[/B] Zum Einen kann für alle CMS Informationsseiten (z.B.: Über mich, Impressum) sowohl eine deutsche als auch eine englische Version angelegt werden. Aber auch eine Blognachricht kann in beiden Sprachen erstellt werden. Allerdings habe ich leichte Zweifel, ob ich es dauerhaft schaffen werde, meine Einträge sowohl in Deutsch als auch in Englisch zu verfassen ;) Die Möglichkeit dazu besteht jedenfalls und als Programmierer ist man auf diese Funktionalität so oder so super stolz :)\r\n\r\n[U][B]Design[/B][/U]\r\nAußerdem kann die Website derzeit in [B]vier verschiedenen Farbschemata[/B] betrachtet werden (Blau, Orange, Grün, Rot). Banner und andere Bilder werden bei einem Wechsel umgehend ausgetauscht.\r\n\r\n[B][COLOR={$tpl_color}][SIZE=2]Und jetzt wünsche ich allen Besuchern meiner noch jungen Homepage viel Spaß beim "Stalken" :-) Über Kommentare freue ich mich natürlich besonders![/SIZE][/COLOR][/B]', 'My new internet presence', '[IMG=200x123xleft]{$dir_img}blog/finish line.gif[/IMG][B]Having invested many years in the development of my new internet presence, the first version is finally online![/B]\r\nAs a normal visitor you can barely imagine the complexity of the programming code that lies behind this website (especially the administration panel). I will talk more about the functional details later on.\r\n\r\nThe purpose of my website is, on the one hand, to provide the latest information about my person. On the other hand, I am planning to report about my current activities, too. However, I don''t know about which topics I want to write yet, but that''s not surprising because it is my first blog! Anyway I expect to have a clearer idea of that over time.\r\n\r\nNow I will use this first entry to give you an insight into the numerous functionalities of my homepage:\r\n\r\n[U][B]In general, the website currently consists of 7 sections:[/B][/U]\r\n[LIST]\r\n[*][B]Left Bar[/B]\r\nDifferent blocks can be displayed in this area. For instance, current visitor stats can be faded in or out or an external rss feed can be included. Furthermore you can find a twitter message there, that is if I have entered one.\r\n[*][B]Blog[/B]\r\nThe newest blog messages are located on the cover page. You have the possibility to comment on them. The newest entries and comments will also be displayed in the left bar.\r\n[*][B]CMS Information pages[/B] (About me, References, Imprint)\r\nAll page information can be maintained by an online form.\r\n[*][B]Gallery[/B]\r\nPicture galleries will be installed completely automatically.\r\n[*][B]Links[/B]\r\nIn this section, I provide helpful weblinks of different topics.\r\n[*][B]RSS Feeds[/B]\r\nRSS feeds inform you about new blog messages and new picture galleries.\r\n[*][B]Administration Panel[/B] (not visible to visitors)\r\nVery sophisticated web surface area, which enables me to modify the complete website (structure & content).\r\n[/LIST]\r\n\r\nThe programming code is completely based on PHP, mySQL, and in parts JavaScript as well. [URL=http://www.smarty.net/][B]SMARTY[/B][/URL] is used as template engine. A lot of functionalities (especially in the administration panel) additionally utilize [URL=http://xajaxproject.org/][B]XAJAX[/B][/URL] in order to enable asynchronous data transfer. In particular, the excellent collaboration of smarty and xajax has facilitated the development considerably.\r\n\r\n[U][B]Multilingualism[/B][/U]\r\n[B]The multilingualism is one of the outstanding functionalities of this website.[/B] Firstly, all CMS information pages (e.g. about me, imprint) can be set up in a German and English version. Secondly, blog messages can be created in both languages, too. However, I am not sure if I have so much time and motivation to issue every blog message in German and English ;) Nevertheless, the opportunity to do that is existing and nothing else matters for a web programmer like me; consequently I am very proud of this functionality :)\r\n\r\n[U][B]Design[/B][/U]\r\nBesides, this website can be viewed in four different color schemata at the moment (blue, orange, green, red). Banner and other graphics will be exchanged immediately.\r\n\r\n[B][COLOR={$tpl_color}][SIZE=2]Finally, I wish all of my visitors a lot of fun snooping around :-) \r\nI am looking forward to your comments![/SIZE][/COLOR][/B]', 'Health', '2012-06-01 13:40:18', 'Yes', '', 'Subpage', 'Yes', '', '', '', '', '', '', 1, 0, 0),
(4, 1, 'My_internship_at_Siemens_Healthcare_in_the_USA', 'My internship at Siemens Healthcare in the USA', '[SIZE=2][IMG=160x37xright]{$root_dir}media/blog/4/siemens_logo.jpg[/IMG] For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.\r\n\r\n[B]My Preparation[/B]\r\nFirst of all, I want to give you a short insight what I had to do since I got the positive answer from Siemens in the mid-September. The starting date of my internship was determined to be exactly one month later and that is actually the earliest starting date you can possibly aim at, because you need almost a month to get your Visa, which is mandatory to take your flight to the US.\r\n[B]To sum it up shortly: You have to do a lot of paperwork![/B] It was annoying to fill out and sign many different forms with the same information again and again (passport number, passport expiration date, birth date, etc.). Isn''t one form enough!? A drug test plus a thorough examination of criminal databases were part of the process, too. Oddly, the responsible company sent me the outcome of the drug test and the database investigation (all clear of course) separately, although both mails contained the exact same documents (about 10 identical pages) and only one checkmark was added in the second mail, which came in just a few days later - [B]what a waste of paper! [/B]\r\nMeanwhile I booked a flight; a risky move because delays in the visa process could make it impossible for you to take the plane you payed a lot of money for... Anyway, I can not wait until receiving the visa unless I want to pay a fortune! Moreover I needed an international driver license in order to drive legally in the US; no big deal - it was done in a few minutes.\r\n\r\n[IMG=100x71xleft]{$root_dir}media/blog/4/aipt_logo.jpg[/IMG] Subsequently I sent a lot of documents (copies of my passport, references, student card, filled-out forms, etc.) to the [B]sponsor of my visa, AIPT[/B]. I also had to pay them the SEVIS fee plus the fee for health insurance in the US. The collaboration was without any big problems and easy-going.\r\n\r\n[IMG=100x100xleft]{$root_dir}media/blog/4/usembassy_logo.gif[/IMG] A few days later AIPT shipped me all forms I needed to show at the Embassy in Munich, which is actually the last step of the visa application process. I made an appointment at the Embassy, left them fingerprints, my passport and other documents, which I had to fill out on the website of the Embassy prior to the appointment, and explained them what I am about to do in the US. The event took me approx. 1 hour, most of the time just waiting for my call-up. [B]Crazy enough, you don''t get back your passport and forms immediately, instead they will sent it back to you via mail a few days later![/B] All you can do is to wait and hope it will arrive early enough before your booked flight is scheduled. Fortunately, I received it in time: passport, the DS-2019 form and the Visa.\r\n\r\n[B]Thanks to the great support from Petra, my Internship Coordinator at Siemens, the whole paperwork was transacted quickly and fluently. [/B]She also helped me with finding an accommodation. All in all, I had to pay more than 1000 € for everything (flight, Visa, health insurance, other fees and stuff), but I am confident that it is worth for a great time ahead!\r\n\r\n[B]My Journey[/B]\r\nOverall the journey went off relatively smoothly. However, the check-in at Munich airport took a while, because 3! employees of Lufthansa didn''t know which of the numerous numbers on the visa card is the visa number required for their computer system (the process can be executed only with the correct entered number). Although the staff was convinced that the red number at the bottom would be the right one, it turned out to be the black one on the right top corner... Having survived these fearful minutes, the scale displayed 28kg for my suitcase, wow, I had expected more! I payed the 50$ for the excess luggage (23kg were allowed at most) and was fine with it.\r\n\r\n[IMG=100x53xleft]{$root_dir}media/blog/4/usairways_logo.jpg[/IMG] [IMG=100x63xright]{$root_dir}media/blog/4/usairways_plane.jpg[/IMG] The flight with US Airways was supportable, not more: [B]Movies were boring and beyond that a big head in front of mine made it difficult for me to see more than half of the screen...[/B] therefore I preferred listening to my iPod and sleeping most of the time. While the lunch was eatable, the chicken-cheese sandwich after 8 hours of flight was not! - I gulped it down anyway... \r\nOn board, I had to fill out the I-94, a form that I received at check-in. It required the same information as always (passport number, visa number, passport expiration date, etc.). [B]Nevertheless, the I-94 form is as important as the Visa and the DS-2019 form for my authorized stay in the US.[/B]\r\nFinally, after nine long hours of flying I reached Philadelphia Airport at 4pm! Unfortunately it is raining there for more than 70!! hours and as I''m writing this message it is still raining... can''t imagine this region without rain right now!! Before I could get my baggage, I had to pass the Border Protection Office. Once again, I had to leave fingerprints and show my documents to the officer who stamped and signed them (Visa, DS-2019, I-94).\r\n\r\n[B]My Pick Up[/B]\r\nSvetlana, an intern from Siemens who already lives here for one year, and her husband picked me up at the airport and transported me directly to the rental car company where I get my own car for the next 6 months.\r\n\r\n[B]My Car[/B]\r\nHaving made countless (I estimate at least 8!) signatures on one contract sheet I had my car within seconds. \r\nFortunately, I am very satisfied with my car: It is relatively new, clean, convenient and it has an air conditioner and offers enough space. But of course it''s not too challenging to top my small Corsa at home ;)\r\n[IMG2=197x148x]{$root_dir}media/blog/4/13.jpg[/IMG2] [IMG2=197x148x]{$root_dir}media/blog/4/14.jpg[/IMG2] [IMG2=197x158x]{$root_dir}media/blog/4/18.jpg[/IMG2]\r\n\r\n[B]My First Poker Evening in the US[/B]\r\nSvetlana and her husband routed me to the next supermarket where I bought something to drink and eat for the weekend. Finally, we arrived at the house of my landlords (approx. 30 miles from Philly away). It was already 7.30pm now due to the horrible traffic (lots of stop & go).\r\n \r\nBill, the landlord, greeted my with the sentence [B]"Do you play Poker? I mean Texas Holdem?"[/B] I laughed and admitted to play for years and he invited me to join his poker round with friends starting in 30 minutes. \r\n[IMG2=200x241xright]{$root_dir}media/blog/4/poker.jpg[/IMG2] The buy-in was 10$ and rebuying was permitted "as long as you have a 10$ bill with you" (citation Bill). The host sets up the rules and all guests have to accept that! Not surprisingly for me, every hand was played from most of the players until the river, no matter what bet would come. For them, it was really just to have fun and sitting together, they didn''t care for the money. One player rebuyed himself 4 times and a few others at least 3 times, [B]so in the end more than 150$ were in the pot! [/B]Second place gets 20, the winner receives the rest - that''s the rule of the host, again (but everyone agreed anyway). Although I already played thousands of hands face to face and online, I saw styles of playing I have never seen before. For instance, a female player called 4 big bets on every round (preflop, flop, turn, river) with 48 off-suited, missing every single community card... [B]girl, you have 8 high!! Are you kidding me?? She couldn''t possibly thought to be in front!?[/B] However, nobody seemed to be that shocked, they just laughed all together and the lucky opponent was happy to show his full house :) There were actually several hands were someone called bets and raises until the river with nothing, just to reveal his hand by saying "I have nothing" and letting his chips pass to the winner. Often high card was good enough to win. Now you shouldn''t be surprised that hands like AA, AK, AQ and other big guns barely won. Unfortunately, AQ was one of my hands and I went broke against a flush of my opponent. The guy who busted me was also the player who finally took the 150$ at the end ;) Anyway, I was not that disappointed because thereby I had the opportunity to go to bed after my loss and more than 24 hours of wakefulness. Besides, the next poker evening will be soon; I definitely have to prepare a winning strategy for it, although I think that no strategy will work except to pray for luck! \r\n[B]During the poker evening we also enjoyed eating pork sandwiches :) I have to admit it was really delicious![/B]\r\n\r\n[B]My First Shopping Tour at Walmart[/B]\r\nOn Saturday, I unpacked my stuff and tested the power converter for my macbook and mobile phone - not working...! It seems that my converter only supports devices up to 45W, however my ones need at least 60W. [IMG2=200x150xright]{$root_dir}media/blog/4/1.jpg[/IMG2] But never mind, I bought another converter at Amazon, which should be there at Monday :)\r\nAs I found out in a conversation with Betty, Bill''s wife, [B]Walmart is only 1.8 miles away from my home, great![/B] I decided to check it out immediately. I took some food for the next days with me and of course, Oreo cookies had to take along, too :) \r\nIt was very funny to see all those food at Walmart...for instance, a frozen chicken; put it in your microwave for 10 minutes and enjoy it! However, it would take years to try out every dish available and additionally, it is hard to find normal food portions for just one person, most of them are designated for the whole family! \r\n\r\n[B]My Accommodation [/B]\r\nFinally I want to give you an insight how I actually live here. [B]I uploaded some pictures of my dwelling (see below)[/B]. My bedroom is on the first floor next to the bedrooms of three other interns (one French guy, one Mexican and one female person from Germany). We share kitchen, dining room, bathroom and living room. I have not seen my housemates until now because they have been on a weekend trip since the day of my arrival. \r\n\r\n[B]MY BEDROOM (1)[/B] [IMG2]{$root_dir}media/blog/4/3.jpg[/IMG2]\r\n\r\n[B]MY BEDROOM (2)[/B] [IMG2]{$root_dir}media/blog/4/4.jpg[/IMG2]\r\n\r\n[B]MY LIVING ROOM[/B] [IMG2]{$root_dir}media/blog/4/5.jpg[/IMG2]\r\n\r\n[B]MY KITCHEN (1)[/B] [IMG2]{$root_dir}media/blog/4/6.jpg[/IMG2]\r\n\r\n[B]MY KITCHEN (2)[/B] [IMG2]{$root_dir}media/blog/4/8.jpg[/IMG2]\r\n\r\n[B]MY DINING ROOM[/B] [IMG2]{$root_dir}media/blog/4/9.jpg[/IMG2]\r\n\r\n[B]MY BATHROOM[/B] [IMG2]{$root_dir}media/blog/4/12.jpg[/IMG2]\r\n\r\n[B]OUTDOOR AREA (1)[/B] [IMG2]{$root_dir}media/blog/4/7.jpg[/IMG2]\r\n\r\n[B]OUTDOOR AREA (2)[/B] [IMG2]{$root_dir}media/blog/4/11.jpg[/IMG2]\r\n\r\nTill now I do not miss anything except of my purchased power converter and look forward to my first day at Siemens![/SIZE]\r\n', 'My internship at Siemens Healthcare in the USA', '[SIZE=2][IMG=160x37xright]{$root_dir}media/images/blog/4/siemens_logo.jpg[/IMG] For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.\r\n\r\n[B]My Preparation[/B]\r\nFirst of all, I want to give you a short insight what I had to do since I got the positive answer from Siemens in the mid-September. The starting date of my internship was determined to be exactly one month later and that is actually the earliest starting date you can possibly aim at, because you need almost a month to get your Visa, which is mandatory to take your flight to the US.\r\n[B]To sum it up shortly: You have to do a lot of paperwork![/B] It was annoying to fill out and sign many different forms with the same information again and again (passport number, passport expiration date, birth date, etc.). Isn''t one form enough!? A drug test plus a thorough examination of criminal databases were part of the process, too. Oddly, the responsible company sent me the outcome of the drug test and the database investigation (all clear of course) separately, although both mails contained the exact same documents (about 10 identical pages) and only one checkmark was added in the second mail, which came in just a few days later - [B]what a waste of paper! [/B]\r\nMeanwhile I booked a flight; a risky move because delays in the visa process could make it impossible for you to take the plane you payed a lot of money for... Anyway, I can not wait until receiving the visa unless I want to pay a fortune! Moreover I needed an international driver license in order to drive legally in the US; no big deal - it was done in a few minutes.\r\n\r\n[IMG=100x71xleft]{$root_dir}media/images/blog/4/aipt_logo.jpg[/IMG] Subsequently I sent a lot of documents (copies of my passport, references, student card, filled-out forms, etc.) to the [B]sponsor of my visa, AIPT[/B]. I also had to pay them the SEVIS fee plus the fee for health insurance in the US. The collaboration was without any big problems and easy-going.\r\n\r\n[IMG=100x100xleft]{$root_dir}media/images/blog/4/usembassy_logo.gif[/IMG] A few days later AIPT shipped me all forms I needed to show at the Embassy in Munich, which is actually the last step of the visa application process. I made an appointment at the Embassy, left them fingerprints, my passport and other documents, which I had to fill out on the website of the Embassy prior to the appointment, and explained them what I am about to do in the US. The event took me approx. 1 hour, most of the time just waiting for my call-up. [B]Crazy enough, you don''t get back your passport and forms immediately, instead they will sent it back to you via mail a few days later![/B] All you can do is to wait and hope it will arrive early enough before your booked flight is scheduled. Fortunately, I received it in time: passport, the DS-2019 form and the Visa.\r\n\r\n[B]Thanks to the great support from Petra, my Internship Coordinator at Siemens, the whole paperwork was transacted quickly and fluently. [/B]She also helped me with finding an accommodation. All in all, I had to pay more than 1000 € for everything (flight, Visa, health insurance, other fees and stuff), but I am confident that it is worth for a great time ahead!\r\n\r\n[B]My Journey[/B]\r\nOverall the journey went off relatively smoothly. However, the check-in at Munich airport took a while, because 3! employees of Lufthansa didn''t know which of the numerous numbers on the visa card is the visa number required for their computer system (the process can be executed only with the correct entered number). Although the staff was convinced that the red number at the bottom would be the right one, it turned out to be the black one on the right top corner... Having survived these fearful minutes, the scale displayed 28kg for my suitcase, wow, I had expected more! I payed the 50$ for the excess luggage (23kg were allowed at most) and was fine with it.\r\n\r\n[IMG=100x53xleft]{$root_dir}media/images/blog/4/usairways_logo.jpg[/IMG] [IMG=100x63xright]{$root_dir}media/images/blog/4/usairways_plane.jpg[/IMG] The flight with US Airways was supportable, not more: [B]Movies were boring and beyond that a big head in front of mine made it difficult for me to see more than half of the screen...[/B] therefore I preferred listening to my iPod and sleeping most of the time. While the lunch was eatable, the chicken-cheese sandwich after 8 hours of flight was not! - I gulped it down anyway... \r\nOn board, I had to fill out the I-94, a form that I received at check-in. It required the same information as always (passport number, visa number, passport expiration date, etc.). [B]Nevertheless, the I-94 form is as important as the Visa and the DS-2019 form for my authorized stay in the US.[/B]\r\nFinally, after nine long hours of flying I reached Philadelphia Airport at 4pm! Unfortunately it is raining there for more than 70!! hours and as I''m writing this message it is still raining... can''t imagine this region without rain right now!! Before I could get my baggage, I had to pass the Border Protection Office. Once again, I had to leave fingerprints and show my documents to the officer who stamped and signed them (Visa, DS-2019, I-94).\r\n\r\n[B]My Pick Up[/B]\r\nSvetlana, an intern from Siemens who already lives here for one year, and her husband picked me up at the airport and transported me directly to the rental car company where I get my own car for the next 6 months.\r\n\r\n[B]My Car[/B]\r\nHaving made countless (I estimate at least 8!) signatures on one contract sheet I had my car within seconds. \r\nFortunately, I am very satisfied with my car: It is relatively new, clean, convenient and it has an air conditioner and offers enough space. But of course it''s not too challenging to top my small Corsa at home ;)\r\n[IMG2=197x148x]{$root_dir}media/images/blog/4/13.jpg[/IMG2] [IMG2=197x148x]{$root_dir}media/images/blog/4/14.jpg[/IMG2] [IMG2=197x158x]{$root_dir}media/images/blog/4/18.jpg[/IMG2]\r\n[/SIZE]', 'PD', '2013-06-01 13:59:07', 'Yes', 'For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.', 'Subpage', 'Yes', '', '', '', '', '', '', 1, 0, 0),
(3, 1, 'Esmee_Denters_Outta_here', 'Esmée Denters :: Outta here', 'Endlich ist das erste Album von Esmée Denters in den UK rausgekommen. Mehr über Esmée könnt ihr auf ihrer offiziellen Website erfahren: [URL=http://www.esmeeworld.com]http://www.esmeeworld.com[/URL].\r\n\r\n[B]Und hier ist das Video zur aktuellen Single "Outta here":[/B]\r\n[CENTER]<object width="600" height="473"><param name="movie" value="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="473"></embed></object>[/CENTER]\r\nDie Lyrics gibts auf [URL=http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html]http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html[/URL]', 'Esmée Denters :: Outta here', 'Finally, Esmée Denters'' first album and debut single is released in the UK. See more of Esmée on her official website [URL=http://www.esmeeworld.com]http://www.esmeeworld.com[/URL].\r\n\r\n[B]Enjoy her video on nbg-master.de:[/B]\r\n[CENTER]<object width="600" height="473"><param name="movie" value="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="473"></embed></object>[/CENTER]\r\nYou can find the lyrics at [URL=http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html]http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html[/URL]', 'Health', '2013-06-01 13:38:51', 'Yes', '', 'None', 'Yes', '', '', '', '', '', '', 1, 0, 0);
INSERT INTO `blog` (`ID`, `author`, `permalink`, `title_DE`, `message_DE`, `title_EN`, `message_EN`, `category`, `date`, `pinterest_picture`, `pinterest_text`, `click_action`, `popup_title`, `file1`, `filename1`, `file2`, `filename2`, `file3`, `filename3`, `visibility`, `comments`, `deleted`) VALUES
(7, 1, 'My_first_American_travel_experiences', 'My first American travel experiences', '[SIZE=2]Meanwhile I am living in the US for almost two months and enjoying every day! Read this message to get updated about my latest travel experiences in the US.[/SIZE]\r\n\r\n[SIZE=3][CENTER][B]Philadelphia[/B][/CENTER][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_Philadelphia/images/1.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Philadelphia/images/2.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_2.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Philadelphia/images/3.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_3.jpg[/IMG2][/URL_IMG]\r\n\r\n[SIZE=2]On a warm and beautiful Sunday in late October, I took a walk in Philadelphia (about half an hour to drive from my residence). "Philly" - as it is called by natives - is the largest city in Pennsylvania and the sixth-most-populous city in the United States ([I]approx. 1.4 million residents[/I]). However, the city center is not as big as you would expect, especially when you see all those [B]huge skyscrapers [/B]for the first time. Along with its [B]beautiful parks and walkways along the Schuylkill River[/B], Philly is the perfect city for passionate joggers. Next time, I am planning to visit the [URL=http://www.philamuseum.org/]Philadelphia Museum of Art[/URL] (middle picture), which is one of the largest museums in the United States. \r\nYou can see more pictures that I have taken in Philly in the [URL_INTERN={$root_dir}gallery/14/]Gallery[/URL_INTERN].\r\n[/SIZE]\r\n[SIZE=3][CENTER][B]Washington D.C.[/B][/CENTER][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/7.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Washington/images/26.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_12.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Washington/images/18.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_7.jpg[/IMG2][/URL_IMG]\r\n\r\n[SIZE=2]A few weeks ago I traveled together with seven other interns to Washington D.C. to join [URL=http://my.barackobama.com]Barack Obama[/URL] for dinner. Just kidding; but at least we had the opportunity to be very close to the most powerful man on earth.\r\n\r\n[B]United States Capitol[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/15.jpg][IMG2=220x165xleft]{$root_dir}media/blog/5/wa_4.jpg[/IMG2][/URL_IMG][URL_IMG={$root_dir}gallery/2009_Washington/images/1.jpg][IMG2=180x240xright]{$root_dir}media/blog/5/wa_1.jpg[/IMG2][/URL_IMG]Surprisingly, we were allowed to park almost directly in front of the [URL=http://en.wikipedia.org/wiki/Capitol]United States Capitol[/URL]. First, we decided to take a guided tour through the Capitol and the Library of Congress. \r\nTo get into these buildings, however, you have to pass a magnetometer at the entrance and all your items are screened by an x-ray device (items like weapons, battery operated devices, recording devices, bags, cans, bottles, creams, perfumes, strollers, food, beverages and knives are not allowed). You could already anticipate the [B]high security measures[/B] from outside of the Capitol: police is everywhere and for instance, barricades are implanted in the roads that can be raised in the event of an emergency (if you want you can call these barricades as a much tightened version of the spike tripes you know from [URL=http://www.needforspeed.com]Need for Speed[/URL]). Moreover, it is not unlikely that some roads around the Capitol are closed temporarily for public cars, especially when important members of the government are on site. [B]Most of the security efforts I mentioned were the result of the [URL=http://en.wikipedia.org/wiki/September_11_attacks]9-11 attacks[/URL][/B]. \r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/21.jpg][IMG2=220x165xright]{$root_dir}media/blog/5/wa_9.jpg[/IMG2][/URL_IMG] Finally, we stood in the [URL=http://en.wikipedia.org/wiki/United_States_Capitol_rotunda]Rotunda of the Capitol[/URL] and admired its astonishing and intriguing architecture (the same applies to the whole building – inside as well as outside)! For me it was particularly exciting, because at the present time I am reading [URL=http://www.amazon.com/Lost-Symbol-Dan-Brown/dp/0385504225]"The Lost Symbol" of Dan Brown[/URL] (I highly recommend to reading this great book!): A large part of the story takes place at the Capitol and especially in its Rotunda. In his book, Brown gives the reader plenty of background information about historic facts and myths of the Capitol and its chambers, and also describes how it may be possible to fool security at the entrance. During the guided tour, we learned some interesting facts about the Senate and the House of Representatives, too. And as we visited the Library of Congress (see the reading room on the right picture), we saw a very interesting [URL={$root_dir}gallery/2009_Washington/images/22.jpg]caricature[/URL] about the role of government.\r\n\r\n[B]Health care reform bill[/B]\r\nInterestingly on this day, the House of Representatives was about to make a very crucial decision about the [URL=http://docs.house.gov/rules/health/111_ahcaa.pdf]health care reform bill[/URL] (which had finally passed by a very close vote of 220-215). Consequently, there took a big demonstration place in front of the Capitol, because many Americans (most of them are Republicans and/or Conservatives) reject the proposal of having a federal insurance. Although I do not understand this attitude, these US citizens insist on their freedom to make their own decision whether to pay for health insurance or not rather then having the government intervening regulatory.\r\n\r\n[B]Flags flown at half-staff[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/23.jpg][IMG2=90x120xright]{$root_dir}media/blog/5/wa_11.jpg[/IMG2][/URL_IMG]In addition, the [URL=http://www.foxnews.com/story/0,2933,572571,00.html]Fort Hood Massacre[/URL] (13 dead and 38 injured) was a second big topic at Washington on this day. As a result, the president ordered flags flown at half-staff until Veterans Day in respect for the killed and wounded people.\r\n\r\n\r\n[B]Lincoln Memorial and White House[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/34.jpg][IMG2=195x146xleft]{$root_dir}media/blog/5/wa_16.jpg[/IMG2][/URL_IMG][URL_IMG={$root_dir}gallery/2009_Washington/images/38.jpg][IMG2=195x291xright]{$root_dir}media/blog/5/wa_19.jpg[/IMG2][/URL_IMG]Having visited the Capitol & the Library, we walked from the Capitol to the [URL=http://en.wikipedia.org/wiki/Lincoln_Memorial]Lincoln Memorial[/URL] and finally to the [URL=http://en.wikipedia.org/wiki/White_House]White House[/URL]. It was a great walk at sunset and at the end of a warm day with about 20°C!\r\n\r\n[B]Arlington National Cemetery[/B]\r\nEven the second day greeted us with a warm and sunny weather and so we could enjoy visiting the [URL=http://en.wikipedia.org/wiki/Arlington_National_Cemetery]Arlington National Cemetery[/URL]. [URL_IMG={$root_dir}gallery/2009_Washington/images/42.jpg][IMG2=195x260xleft]{$root_dir}media/blog/5/wa_20.jpg[/IMG2][/URL_IMG] It is the resting place for more than 300,000 veterans and military casualties of the US, consisting of [B]all "war heroes" from the American Civil War through the current wars in Afghanistan and Iraq[/B]. You can infer that American people have a different mindset of war and that they honor and are proud of their military men more than those of any other country.\r\n\r\nAs a last resort we visited the [URL=http://www.mnh.si.edu/]Museum of Natural History[/URL], where you can primarily experience all kind of animals and learn a lot about them. Fortunately, the visit is free of charge.\r\n\r\n[B]To sum up we had two awesome days in Washington![/B]\r\nYou can see more pictures that I have taken in Washington D.C. in the [URL_INTERN={$root_dir}gallery/15/]Gallery[/URL_INTERN].\r\n[/SIZE]\r\n\r\n[SIZE=3][CENTER][B]Atlantic City[/B][/CENTER][/SIZE]\r\n[SIZE=2][IMG2=195x146xleft]{$root_dir}media/blog/5/ac_trump.jpg[/IMG2][B]Americans are always looking forward to especially two days every year: Christmas and Thanksgiving! [/B]Because [URL=http://en.wikipedia.org/wiki/Thanksgiving]Thanksgiving[/URL] is an official vacation day in the US, as well as the following Black Friday, you can enjoy almost one week without having to work. For me, it was a welcome opportunity to make another trip for several days. This time, my destination was the second biggest city for casino games in the US: Atlantic City (most famous one is Las Vegas, of course).\r\n\r\n[B]My motel[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/1.jpg][IMG2=195x146xright]{$root_dir}media/blog/5/ac_1.jpg[/IMG2][/URL_IMG]I was very pleased about the nice motel that I booked. The furniture was convenient and everything was very clean. Furthermore, if you step out of the hostel you will be directly in front of the sea! Consequently, I can highly recommend the [URL=http://www.ascot-motel.com]Ascot Motel[/URL]. \r\n\r\nAlthough the city is famous for its hotels and casinos, it has a beautiful boardwalk along the sea, too. [B]You can walk along the beach or the boardwalk for approx. four miles![/B] In front of the boardwalk you will find hotels/casinos like the [URL=http://www.ballysac.com]Bally’s[/URL] or the [URL=http://www.trumptaj.com]Trump Taj Mahal Casino Resort[/URL] as well as retail stores, restaurants and amusements.\r\n\r\n[B]Rolling chairs on the boardwalk[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/11.jpg][IMG2=195x146xleft]{$root_dir}media/blog/5/ac_5.jpg[/IMG2][/URL_IMG]As you can see on the left picture, there is a very convenient as well as odd transportation you can use: [URL=http://atlantic-city.travelape.com/travel/rolling-chairs/]rolling chairs[/URL]. You can sit down in one of the rolling chairs which are available all over the boardwalk. Then, for just a few bucks a friendly attendant will manually push the "chair-on-wheels" the length of the Boardwalk until you reached your desired destination (I really do not know whether the job is physically hard and exhausting for the pusher or not – but I guess it is). Thereby you can, for instance, quickly move from one casino to another. In addition, it is cheaper than driving with your car and using the expensive parking lots of the casinos. \r\nHowever, I saw almost nobody who used this transportation service. Moreover, there were so many attendants who waited with their rolling chairs at the side of the board and in front of the casinos; one attendant has to feel lucky if someone wants to make use of his service. Thus, I can not imagine at all how they make enough money with their rolling chairs.\r\n\r\n[B]The magnificent casinos[/B]\r\n[IMG2=195x146xleft]{$root_dir}media/blog/5/ac_casino_slots.jpg[/IMG2]The casinos itself were all very pompous and upscale. In order to win more customers, they all try to promote the best special bonuses for first-time players on posters, flyer and video screens. It was surprising to me how [B]many slot machines[/B] were available in only one! casino (many hundreds, if not a thousand) and I was even more surprised that at least 40-50% of the machines were in use, regardless of the current day time.\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/14.jpg][IMG2=195x146xright]{$root_dir}media/blog/5/ac_7.jpg[/IMG2][/URL_IMG]There were many Poker and Blackjack tables, too. Before you can play in the casino, you need to register at the casino at the very first visit. Subsequently, you can either fill your new casino card with money from your bank account or, especially for poker games, draw money from your bank account and get playing chips in exchange for your bills at the cashier. \r\nFinally, you be able to join a poker or blackjack table, or sit down at a slot machine and play.\r\nAs a last point I want to mention that one casino complex contains not only casino games and hotel rooms, but also all kind of shops and restaurants, so every "casino" is more like its own small city! \r\n\r\n<span style="float:left;padding-right:12px"><object width="300" height="243"><param name="movie" value="http://www.youtube.com/v/GeGesRLOlhw&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/GeGesRLOlhw&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="300" height="243"></embed></object></span>Feel free to enjoy my little video on the left side. It shows you a 360° view from the beach.\r\n\r\nYou can see more pictures that I have taken in Atlantic City in the [URL_INTERN={$root_dir}gallery/16/]Gallery[/URL_INTERN].\r\n\r\n[B]Now I am looking forward to my second weekend in New York[/B] (I will write about both NYC weekends soon) [B]and to celebrating Christmas & New Year''s Eve in Germany with family & friends.[/B]\r\n[/SIZE]', 'My first American travel experiences', '[SIZE=2]Meanwhile I am living in the US for almost two months and enjoying every day! Read this message to get updated about my latest travel experiences in the US.[/SIZE]\r\n\r\n[SIZE=3][CENTER][B]Philadelphia[/B][/CENTER][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_Philadelphia/images/1.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Philadelphia/images/2.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_2.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Philadelphia/images/3.jpg][IMG2=195x146x]{$root_dir}media/blog/5/ph_3.jpg[/IMG2][/URL_IMG]\r\n\r\n[SIZE=2]On a warm and beautiful Sunday in late October, I took a walk in Philadelphia (about half an hour to drive from my residence). "Philly" - as it is called by natives - is the largest city in Pennsylvania and the sixth-most-populous city in the United States ([I]approx. 1.4 million residents[/I]). However, the city center is not as big as you would expect, especially when you see all those [B]huge skyscrapers [/B]for the first time. Along with its [B]beautiful parks and walkways along the Schuylkill River[/B], Philly is the perfect city for passionate joggers. Next time, I am planning to visit the [URL=http://www.philamuseum.org/]Philadelphia Museum of Art[/URL] (middle picture), which is one of the largest museums in the United States. \r\nYou can see more pictures that I have taken in Philly in the [URL_INTERN={$root_dir}gallery/14/]Gallery[/URL_INTERN].\r\n[/SIZE]\r\n[SIZE=3][CENTER][B]Washington D.C.[/B][/CENTER][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/7.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Washington/images/26.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_12.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_Washington/images/18.jpg][IMG2=195x146x]{$root_dir}media/blog/5/wa_7.jpg[/IMG2][/URL_IMG]\r\n\r\n[SIZE=2]A few weeks ago I traveled together with seven other interns to Washington D.C. to join [URL=http://my.barackobama.com]Barack Obama[/URL] for dinner. Just kidding; but at least we had the opportunity to be very close to the most powerful man on earth.\r\n\r\n[B]United States Capitol[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/15.jpg][IMG2=220x165xleft]{$root_dir}media/blog/5/wa_4.jpg[/IMG2][/URL_IMG][URL_IMG={$root_dir}gallery/2009_Washington/images/1.jpg][IMG2=180x240xright]{$root_dir}media/blog/5/wa_1.jpg[/IMG2][/URL_IMG]Surprisingly, we were allowed to park almost directly in front of the [URL=http://en.wikipedia.org/wiki/Capitol]United States Capitol[/URL]. First, we decided to take a guided tour through the Capitol and the Library of Congress. \r\nTo get into these buildings, however, you have to pass a magnetometer at the entrance and all your items are screened by an x-ray device (items like weapons, battery operated devices, recording devices, bags, cans, bottles, creams, perfumes, strollers, food, beverages and knives are not allowed). You could already anticipate the [B]high security measures[/B] from outside of the Capitol: police is everywhere and for instance, barricades are implanted in the roads that can be raised in the event of an emergency (if you want you can call these barricades as a much tightened version of the spike tripes you know from [URL=http://www.needforspeed.com]Need for Speed[/URL]). Moreover, it is not unlikely that some roads around the Capitol are closed temporarily for public cars, especially when important members of the government are on site. [B]Most of the security efforts I mentioned were the result of the [URL=http://en.wikipedia.org/wiki/September_11_attacks]9-11 attacks[/URL][/B]. \r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/21.jpg][IMG2=220x165xright]{$root_dir}media/blog/5/wa_9.jpg[/IMG2][/URL_IMG] Finally, we stood in the [URL=http://en.wikipedia.org/wiki/United_States_Capitol_rotunda]Rotunda of the Capitol[/URL] and admired its astonishing and intriguing architecture (the same applies to the whole building – inside as well as outside)! For me it was particularly exciting, because at the present time I am reading [URL=http://www.amazon.com/Lost-Symbol-Dan-Brown/dp/0385504225]"The Lost Symbol" of Dan Brown[/URL] (I highly recommend to reading this great book!): A large part of the story takes place at the Capitol and especially in its Rotunda. In his book, Brown gives the reader plenty of background information about historic facts and myths of the Capitol and its chambers, and also describes how it may be possible to fool security at the entrance. During the guided tour, we learned some interesting facts about the Senate and the House of Representatives, too. And as we visited the Library of Congress (see the reading room on the right picture), we saw a very interesting [URL={$root_dir}gallery/2009_Washington/images/22.jpg]caricature[/URL] about the role of government.\r\n\r\n[B]Health care reform bill[/B]\r\nInterestingly on this day, the House of Representatives was about to make a very crucial decision about the [URL=http://docs.house.gov/rules/health/111_ahcaa.pdf]health care reform bill[/URL] (which had finally passed by a very close vote of 220-215). Consequently, there took a big demonstration place in front of the Capitol, because many Americans (most of them are Republicans and/or Conservatives) reject the proposal of having a federal insurance. Although I do not understand this attitude, these US citizens insist on their freedom to make their own decision whether to pay for health insurance or not rather then having the government intervening regulatory.\r\n\r\n[B]Flags flown at half-staff[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/23.jpg][IMG2=90x120xright]{$root_dir}media/blog/5/wa_11.jpg[/IMG2][/URL_IMG]In addition, the [URL=http://www.foxnews.com/story/0,2933,572571,00.html]Fort Hood Massacre[/URL] (13 dead and 38 injured) was a second big topic at Washington on this day. As a result, the president ordered flags flown at half-staff until Veterans Day in respect for the killed and wounded people.\r\n\r\n\r\n[B]Lincoln Memorial and White House[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Washington/images/34.jpg][IMG2=195x146xleft]{$root_dir}media/blog/5/wa_16.jpg[/IMG2][/URL_IMG][URL_IMG={$root_dir}gallery/2009_Washington/images/38.jpg][IMG2=195x291xright]{$root_dir}media/blog/5/wa_19.jpg[/IMG2][/URL_IMG]Having visited the Capitol & the Library, we walked from the Capitol to the [URL=http://en.wikipedia.org/wiki/Lincoln_Memorial]Lincoln Memorial[/URL] and finally to the [URL=http://en.wikipedia.org/wiki/White_House]White House[/URL]. It was a great walk at sunset and at the end of a warm day with about 20°C!\r\n\r\n[B]Arlington National Cemetery[/B]\r\nEven the second day greeted us with a warm and sunny weather and so we could enjoy visiting the [URL=http://en.wikipedia.org/wiki/Arlington_National_Cemetery]Arlington National Cemetery[/URL]. [URL_IMG={$root_dir}gallery/2009_Washington/images/42.jpg][IMG2=195x260xleft]{$root_dir}media/blog/5/wa_20.jpg[/IMG2][/URL_IMG] It is the resting place for more than 300,000 veterans and military casualties of the US, consisting of [B]all "war heroes" from the American Civil War through the current wars in Afghanistan and Iraq[/B]. You can infer that American people have a different mindset of war and that they honor and are proud of their military men more than those of any other country.\r\n\r\nAs a last resort we visited the [URL=http://www.mnh.si.edu/]Museum of Natural History[/URL], where you can primarily experience all kind of animals and learn a lot about them. Fortunately, the visit is free of charge.\r\n\r\n[B]To sum up we had two awesome days in Washington![/B]\r\nYou can see more pictures that I have taken in Washington D.C. in the [URL_INTERN={$root_dir}gallery/15/]Gallery[/URL_INTERN].\r\n[/SIZE]\r\n\r\n[SIZE=3][CENTER][B]Atlantic City[/B][/CENTER][/SIZE]\r\n[SIZE=2][IMG2=195x146xleft]{$root_dir}media/blog/5/ac_trump.jpg[/IMG2][B]Americans are always looking forward to especially two days every year: Christmas and Thanksgiving! [/B]Because [URL=http://en.wikipedia.org/wiki/Thanksgiving]Thanksgiving[/URL] is an official vacation day in the US, as well as the following Black Friday, you can enjoy almost one week without having to work. For me, it was a welcome opportunity to make another trip for several days. This time, my destination was the second biggest city for casino games in the US: Atlantic City (most famous one is Las Vegas, of course).\r\n\r\n[B]My motel[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/1.jpg][IMG2=195x146xright]{$root_dir}media/blog/5/ac_1.jpg[/IMG2][/URL_IMG]I was very pleased about the nice motel that I booked. The furniture was convenient and everything was very clean. Furthermore, if you step out of the hostel you will be directly in front of the sea! Consequently, I can highly recommend the [URL=http://www.ascot-motel.com]Ascot Motel[/URL]. \r\n\r\nAlthough the city is famous for its hotels and casinos, it has a beautiful boardwalk along the sea, too. [B]You can walk along the beach or the boardwalk for approx. four miles![/B] In front of the boardwalk you will find hotels/casinos like the [URL=http://www.ballysac.com]Bally’s[/URL] or the [URL=http://www.trumptaj.com]Trump Taj Mahal Casino Resort[/URL] as well as retail stores, restaurants and amusements.\r\n\r\n[B]Rolling chairs on the boardwalk[/B]\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/11.jpg][IMG2=195x146xleft]{$root_dir}media/blog/5/ac_5.jpg[/IMG2][/URL_IMG]As you can see on the left picture, there is a very convenient as well as odd transportation you can use: [URL=http://atlantic-city.travelape.com/travel/rolling-chairs/]rolling chairs[/URL]. You can sit down in one of the rolling chairs which are available all over the boardwalk. Then, for just a few bucks a friendly attendant will manually push the "chair-on-wheels" the length of the Boardwalk until you reached your desired destination (I really do not know whether the job is physically hard and exhausting for the pusher or not – but I guess it is). Thereby you can, for instance, quickly move from one casino to another. In addition, it is cheaper than driving with your car and using the expensive parking lots of the casinos. \r\nHowever, I saw almost nobody who used this transportation service. Moreover, there were so many attendants who waited with their rolling chairs at the side of the board and in front of the casinos; one attendant has to feel lucky if someone wants to make use of his service. Thus, I can not imagine at all how they make enough money with their rolling chairs.\r\n\r\n[B]The magnificent casinos[/B]\r\n[IMG2=195x146xleft]{$root_dir}media/blog/5/ac_casino_slots.jpg[/IMG2]The casinos itself were all very pompous and upscale. In order to win more customers, they all try to promote the best special bonuses for first-time players on posters, flyer and video screens. It was surprising to me how [B]many slot machines[/B] were available in only one! casino (many hundreds, if not a thousand) and I was even more surprised that at least 40-50% of the machines were in use, regardless of the current day time.\r\n[URL_IMG={$root_dir}gallery/2009_Atlantic City/images/14.jpg][IMG2=195x146xright]{$root_dir}media/blog/5/ac_7.jpg[/IMG2][/URL_IMG]There were many Poker and Blackjack tables, too. Before you can play in the casino, you need to register at the casino at the very first visit. Subsequently, you can either fill your new casino card with money from your bank account or, especially for poker games, draw money from your bank account and get playing chips in exchange for your bills at the cashier. \r\nFinally, you be able to join a poker or blackjack table, or sit down at a slot machine and play.\r\nAs a last point I want to mention that one casino complex contains not only casino games and hotel rooms, but also all kind of shops and restaurants, so every "casino" is more like its own small city! \r\n\r\n<span style="float:left;padding-right:12px"><object width="300" height="243"><param name="movie" value="http://www.youtube.com/v/GeGesRLOlhw&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/GeGesRLOlhw&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="300" height="243"></embed></object></span>Feel free to enjoy my little video on the left side. It shows you a 360° view from the beach.\r\n\r\nYou can see more pictures that I have taken in Atlantic City in the [URL_INTERN={$root_dir}gallery/16/]Gallery[/URL_INTERN].\r\n\r\n[B]Now I am looking forward to my second weekend in New York[/B] (I will write about both NYC weekends soon) [B]and to celebrating Christmas & New Year''s Eve in Germany with family & friends.[/B]\r\n[/SIZE]', 'PD', '2013-06-01 13:39:44', 'Yes', 'As I''ve been living in the US again for one month and my MBA program at UC Irvine is about to start, it''s about time to write about my adventures on the west coast, right?', 'Popup', 'No', '', '', '', '', '', '', 1, 0, 0),
(6, 1, 'Working_in_the_US', 'Working in the US', '[SIZE=2]In the following I want to give you an impression how it is to work in the US.\r\n \r\n[B]How are you?[/B]\r\nThe first unfamiliar experience that I made during my initial working days was the frequent usage of the sentence "How are you (doing)?" [IMG=180x127xright]{$root_dir}media/blog/6/greet.gif[/IMG] You will hear this sentence at least 5 times a day (likely even more), so not just in the morning or the first time of the day when you see a certain colleague! The intention behind it is to start a conversation with another person positively. You will just reply a quick "Good" for most of the time. So for Americans it is just a way to be nice to each other before talking about business or other topics. You are not supposed to give an exhaustive answer. In fact, you often do not have to give an answer at all (e.g. two people come across each other and just say "How are you?" to each other instead of "Hello" and that''s it). Although I have experienced this form of greeting for almost two months now, I feel still not completely comfortable with it.\r\n\r\n[B]Working in my cube[/B]\r\n[IMG2=180x180xright]{$root_dir}media/blog/6/cube.jpg[/IMG2]In contrary to Germany, every employee - so as I - has his or her own [URL=http://en.wikipedia.org/wiki/Cubicle]cube[/URL] (as it is standard in the US). On the one hand, it''s great, because you have more space for your working materials, you feel more appreciated by the company and you can take a quick nap after lunch if you want and nobody will notice it ;) You could even have a sneaky game of [URL=http://de.partypoker.com/]PartyPoker[/URL] or make private phone calls without anyone seeing what you are up to. On the other hand, sitting the whole day in a cube without seeing daylight can be very hard (you will be tired more often)! Only managers enjoy the privilege to work in an office with windows. Furthermore, the air conditioning system is activated 365 days per year and it forces me to often sit in my cube wearing a jacket, because it can be uncomfortably cool.\r\n\r\n[B]Making small talk[/B]\r\nSurprisingly, the communication with colleagues is not suffering from the circumstance that everyone is sitting in his own cube. [B]In fact, I suppose that the communication frequency is even higher than in Germany![/B] One reason is, probably, that you will have more (short) meetings than in Germany. Americans like to discuss as much as possible together. As a result, you get used to stop by the cube or office of your colleagues for several times a day and talk about current issues. Besides, it often includes some nice small talk at the beginning of the conversation: Before talking about work it is quite normal to share the newest experiences about the last weekend, upcoming traveling plans or current (local) events.\r\n\r\n[B]Lunch time[/B]\r\n[IMG2=140x129xright]{$root_dir}media/blog/6/cafeteria2.jpg[/IMG2] Admittedly, in return it is not common to go to lunch with your colleagues. Most employees bring their meal from home with them and use one of the numerous microwaves that are available in the building: There is a kitchen on every floor of the building! I really love this possibility; therefore I bring my food with me for most of the time, too. It is not unusual to see many employees eating their meal in their cube while continuing to work. Aside from that, to go for a walk after lunch is no option for most of the staff members. Of course there is also a cafeteria in the building, but the prices are slightly higher than those of Siemens in Germany and there are always the same meals at choice every day.\r\n\r\n[B]Everyday work[/B]\r\nAs I already implied in the last paragraph, most of my colleagues work longer than the standard 8 hours a day. However, I am under the impression that overall, [B]working is more relaxed and less stressful than in Germany[/B]: [IMG2=200x149xleft]{$root_dir}media/blog/6/siemens_malvern.gif[/IMG2]There is always time for small talk and nobody forces you to finish a certain task as quickly as possible. More likely you just stay until 8pm in the evening, although work more slowly and composed. So in general, it is also no problem to deal with some private issues in the afternoon and in return stay longer in the evening. Most employees prefer to start their working day at 9am. Furthermore, working from home is more common than in Germany. Especially on snowy, cold days you prefer to work from home instead of driving to work (you need to know, that not many people in the US spring snow tires for their cars; consequently it is dangerous, and the traffic could be horrible, too). \r\n\r\n[B]Talking with your manager[/B]\r\nIn addition, I have discerned that it is more easygoing to talk with your manager. Although the distinction of cubes and offices with windows visualizes the hierarchy stages strongly, it is not so distinctive while talking to your manager. Feedback, for instance, is always asked for ("What do you think about this?"), and meaningful proposals will be incorporated. \r\n\r\n[B]Motivation culture[/B]\r\nMoreover, you will often receive e-mails with compliments like "Great work", "Thanks again, nice job", "Thanks for the heads-up" - even for completing small and simple tasks. Besides, expressions like "Thanks" and "Thank you (so much)" are part of almost every e-mail. [B]In addition, you are on first-name basis with everyone: managers, colleagues and employees you meet the first time.[/B]\r\n\r\n[IMG=75x103xleft]{$root_dir}media/blog/6/good_job-small.jpg[/IMG] To sum up I like it a lot more to work at Siemens in the US than I did in Germany, mostly because working in the US is more pleasant, you have more flexibility and freedom on the job, and you have more conversations with your colleagues.\r\n[/SIZE]\r\n\r\n', 'Working in the US', '[SIZE=2]In the following I want to give you an impression how it is to work in the US.\r\n \r\n[B]How are you?[/B]\r\nThe first unfamiliar experience that I made during my initial working days was the frequent usage of the sentence "How are you (doing)?" [IMG=180x127xright]{$root_dir}media/blog/6/greet.gif[/IMG] You will hear this sentence at least 5 times a day (likely even more), so not just in the morning or the first time of the day when you see a certain colleague! The intention behind it is to start a conversation with another person positively. You will just reply a quick "Good" for most of the time. So for Americans it is just a way to be nice to each other before talking about business or other topics. You are not supposed to give an exhaustive answer. In fact, you often do not have to give an answer at all (e.g. two people come across each other and just say "How are you?" to each other instead of "Hello" and that''s it). Although I have experienced this form of greeting for almost two months now, I feel still not completely comfortable with it.\r\n\r\n[B]Working in my cube[/B]\r\n[IMG2=180x180xright]{$root_dir}media/blog/6/cube.jpg[/IMG2]In contrary to Germany, every employee - so as I - has his or her own [URL=http://en.wikipedia.org/wiki/Cubicle]cube[/URL] (as it is standard in the US). On the one hand, it''s great, because you have more space for your working materials, you feel more appreciated by the company and you can take a quick nap after lunch if you want and nobody will notice it ;) You could even have a sneaky game of [URL=http://de.partypoker.com/]PartyPoker[/URL] or make private phone calls without anyone seeing what you are up to. On the other hand, sitting the whole day in a cube without seeing daylight can be very hard (you will be tired more often)! Only managers enjoy the privilege to work in an office with windows. Furthermore, the air conditioning system is activated 365 days per year and it forces me to often sit in my cube wearing a jacket, because it can be uncomfortably cool.\r\n\r\n[B]Making small talk[/B]\r\nSurprisingly, the communication with colleagues is not suffering from the circumstance that everyone is sitting in his own cube. [B]In fact, I suppose that the communication frequency is even higher than in Germany![/B] One reason is, probably, that you will have more (short) meetings than in Germany. Americans like to discuss as much as possible together. As a result, you get used to stop by the cube or office of your colleagues for several times a day and talk about current issues. Besides, it often includes some nice small talk at the beginning of the conversation: Before talking about work it is quite normal to share the newest experiences about the last weekend, upcoming traveling plans or current (local) events.\r\n\r\n[B]Lunch time[/B]\r\n[IMG2=140x129xright]{$root_dir}media/blog/6/cafeteria2.jpg[/IMG2] Admittedly, in return it is not common to go to lunch with your colleagues. Most employees bring their meal from home with them and use one of the numerous microwaves that are available in the building: There is a kitchen on every floor of the building! I really love this possibility; therefore I bring my food with me for most of the time, too. It is not unusual to see many employees eating their meal in their cube while continuing to work. Aside from that, to go for a walk after lunch is no option for most of the staff members. Of course there is also a cafeteria in the building, but the prices are slightly higher than those of Siemens in Germany and there are always the same meals at choice every day.\r\n\r\n[B]Everyday work[/B]\r\nAs I already implied in the last paragraph, most of my colleagues work longer than the standard 8 hours a day. However, I am under the impression that overall, [B]working is more relaxed and less stressful than in Germany[/B]: [IMG2=200x149xleft]{$root_dir}media/blog/6/siemens_malvern.gif[/IMG2]There is always time for small talk and nobody forces you to finish a certain task as quickly as possible. More likely you just stay until 8pm in the evening, although work more slowly and composed. So in general, it is also no problem to deal with some private issues in the afternoon and in return stay longer in the evening. Most employees prefer to start their working day at 9am. Furthermore, working from home is more common than in Germany. Especially on snowy, cold days you prefer to work from home instead of driving to work (you need to know, that not many people in the US spring snow tires for their cars; consequently it is dangerous, and the traffic could be horrible, too). \r\n\r\n[B]Talking with your manager[/B]\r\nIn addition, I have discerned that it is more easygoing to talk with your manager. Although the distinction of cubes and offices with windows visualizes the hierarchy stages strongly, it is not so distinctive while talking to your manager. Feedback, for instance, is always asked for ("What do you think about this?"), and meaningful proposals will be incorporated. \r\n\r\n[B]Motivation culture[/B]\r\nMoreover, you will often receive e-mails with compliments like "Great work", "Thanks again, nice job", "Thanks for the heads-up" - even for completing small and simple tasks. Besides, expressions like "Thanks" and "Thank you (so much)" are part of almost every e-mail. [B]In addition, you are on first-name basis with everyone: managers, colleagues and employees you meet the first time.[/B]\r\n\r\n[IMG=75x103xleft]{$root_dir}media/blog/6/good_job-small.jpg[/IMG] To sum up I like it a lot more to work at Siemens in the US than I did in Germany, mostly because working in the US is more pleasant, you have more flexibility and freedom on the job, and you have more conversations with your colleagues.\r\n[/SIZE]\r\n\r\n', 'PD', '2013-06-01 00:00:24', 'Yes', '', 'None', 'Yes', '', '', '', '', '', '', 1, 0, 0),
(5, 1, 'How_to_focus_in_the_age_of_distraction', 'How to focus in the age of distraction', '[SIZE=2]Yes, I know. My last blog entry was a long time ago! However, I had to prepare for the [URL=http://www.mba.com/mba/thegmat]GMAT[/URL] during the last two months, because most of the universities in which I am interested in doing a master’s program require a GMAT score. The preparation was very time-intensive and exhaustive so that I simply had not the calm and ease to maintain my blog. But now the test is over, which means that I can finally feed you with some pictures from my several stays in New York City![/SIZE]\r\n\r\n[SIZE=2][B]The awesome Limoride adventure[/B][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_New York City/images/4.jpg] [IMG2=120x160xleft]{$root_dir}media/blog/7/4.jpg[/IMG2][/URL_IMG] [IMG2=120x160xright]{$root_dir}media/blog/7/6.jpg[/IMG2][SIZE=2]Most of the Siemens''s interns joined this great opportunity: We booked a Hummer limousine and were escorted for about 3 hours through Manhattan. We made stops at the most prestigious sights: Battery Park, Brooklyn Bridge, Time Square. As you can probably see on the pictures, we had a lot of fun during this ride, despite the heavy rain outside.[/SIZE]\r\n\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/1.jpg][IMG2=194x146x]{$root_dir}media/blog/7/1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/5.jpg][IMG2=194x146x]{$root_dir}media/blog/7/5.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/3.jpg][IMG2=194x146x]{$root_dir}media/blog/7/3.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2]After this "warm-up", we went to the [URL=http://pachanyc.com/]Pacha club[/URL], a very famous club in New York for impeccable house music, dancing and celebrating the whole night.[/SIZE]\r\n\r\n[CENTER][IMG]{$root_dir}media/blog/7/pacha.gif[/IMG] [/CENTER]\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/6.jpg][IMG2=109x146x]{$root_dir}media/blog/7/7.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/2.jpg][IMG2=194x146x]{$root_dir}media/blog/7/22.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/7.jpg][IMG2=194x146x]{$root_dir}media/blog/7/23.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2][B]Swedish House Mafia[/B][/SIZE]\r\n[SIZE=2]On my latest visit to New York City in February, Sebastian Ingrosso, Axwell and Steve Angello, together known as the [URL=http://www.swedishhousemafia.com/]Swedish House Mafia[/URL], made their first appearance in New York. You want to know how it was? Awesome! The three Swedish absolutely rocked the dancefloor, the atmosphere was sensational and the crowd was thrilled, cheering and dancing the whole night. The location, the [URL=http://www.m2ultralounge.com/]M2 Ultralounge[/URL], a very fancy and noble club in NYC, also played its part in contributing to this great night! Overall, this event was definitely on a par with the Sensation White event!  \r\n\r\n[CENTER][IMG2=194x146x]{$root_dir}media/blog/7/shm_02.jpg[/IMG2] [IMG2=194x146x]{$root_dir}media/blog/7/shm_01.jpg[/IMG2] [IMG2=194x146x]{$root_dir}media/blog/7/shm_03.jpg[/IMG2][/CENTER]\r\nThe only negative aspect of clubbing in NYC, however, is the ridiculous cost of alcohol! You can expect a beer to cost 8 bucks and a Long Drink to cost between 12 and 15 bucks, and you should always add 1 or 2 bucks tip, otherwise the charming bartender is not likely to serve you again ;) \r\nBesides, do not consider Shots a fair alternative. While in Germany you are used to club evenings with specials like "Tequila for just one Euro", you won''t find this situation here. Normally, there are no Shots at all on the menue and I guess that if you order, lets say, one Tequila, you will probably pay at least 10 bucks. So better stick with the Long Drink, whose amount is, by the way, not much more than that of a Shot in Germany. Ok, I am overstating slightly, but it''s really not much, so better enjoy your drink or take a lot of money with you. By implication, while I often thought to spend too much money on club evening''s in Germany, it''s definitely nothing in comparison with the amount you''re likely to spend on club evening''s in the US!![/SIZE]\r\n\r\n[B][SIZE=2]Sightseeing[/SIZE][/B]\r\n[SIZE=2]In the meantime, I have seen most of the Must-Sees of New York City, except of Staten Island, where I plan to go to in spring when the weather is hopefully better. It is always exciting and intriguing to be in NYC and I am already looking forward to being there again soon. I think there is not much more I need to talk about, so for now I just leave you alone with some pictures from Rockefeller Center ([URL=http://www.topoftherocknyc.com/]Top of the Rocks[/URL]), Central Park and Time Square.[/SIZE]\r\n\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/14.jpg][IMG2=194x146x]{$root_dir}media/blog/7/16.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/18.jpg][IMG2=194x146x]{$root_dir}media/blog/7/19.jpg[/IMG2][/URL_IMG] [IMG2=194x146x]{$root_dir}media/blog/7/24.jpg[/IMG2]\r\n[URL_IMG={$root_dir}gallery/2009_New York City/images/21.jpg][IMG2=194x146x]{$root_dir}media/blog/7/20.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/22.jpg][IMG2=194x146x]{$root_dir}media/blog/7/21.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/15.jpg][IMG2=194x146x]{$root_dir}media/blog/7/17.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2]As always, you can see these pictures in large in the [URL_INTERN={$root_dir}gallery/17/]Gallery[/URL_INTERN].[/SIZE]', 'How to focus in the age of distraction', '[IMG=600x]{$root_dir}media/blog/5/pinterest.jpg[/IMG]', 'PD', '2013-06-02 20:10:23', 'Yes', 'Candida diet day 1: so far so good, ate salad from vapiano (5 mini pieces of meat - ridiculous, and I had to remove the cheese), and fish later. prepared my breakfast for tomorrow (eggs + vegetables) 29 days to go :-)', 'Popup', 'Yes', '', '', '', '', '', '', 1, 0, 0);
INSERT INTO `blog` (`ID`, `author`, `permalink`, `title_DE`, `message_DE`, `title_EN`, `message_EN`, `category`, `date`, `pinterest_picture`, `pinterest_text`, `click_action`, `popup_title`, `file1`, `filename1`, `file2`, `filename2`, `file3`, `filename3`, `visibility`, `comments`, `deleted`) VALUES
(8, 1, 'What_are_winter_conditions_like_in_the_US', 'What are winter conditions like in the US?', '[SIZE=2][URL_IMG={$root_dir}media/blog/8/1-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/1.jpg[/IMG2][/URL_IMG][B]1. Tons of snow[/B]\r\nThe amount of snow we had to cope with in the last few weeks was just unbelievable. Snow hills [B]higher than 40 inches[/B] were no rarity! I have never experienced that much snow in my life.\r\n\r\n[B]2. Working from home[/B]\r\nWorking from home is not just a simple possibility in the US, but an inherent part of American business activity. In February, for instance, I worked at least 5 days at home, [URL_IMG={$root_dir}media/blog/8/2-b.jpg][IMG2=160x213xright]{$root_dir}media/blog/8/2.jpg[/IMG2][/URL_IMG]and my manager would have no problem if I decide to do so even more often. \r\n[B]So does home-working negatively affect productivity? Yes, it most-likely does![/B] You receive much less emails per day, communication is delayed, and you notice pretty quickly that most employees try to slow down at least two gears on such days. And if it snows as much as recently, you will probably spend most of the time on freeing the driveway from all the snow. So from a managerial point of view I doubt that regular work from home can positively affect businesses.\r\n\r\n[B]3. School closings – "Snow Day"[/B][URL_IMG={$root_dir}media/blog/8/3-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/3.jpg[/IMG2][/URL_IMG]\r\nAlthough kids in US schools have no "Hitzefrei", mainly because many schools are equipped with air conditioners, they do have so-called "Snow Days". Due to the heavy snow this year, kids in some areas could take a full week off school. However, it''s not as good as the German "Hitzefrei", because they have to make up for the lost time in spring or summer.\r\n\r\n[URL_IMG={$root_dir}media/blog/8/4-b.jpg][IMG2=160x213xright]{$root_dir}media/blog/8/4.jpg[/IMG2][/URL_IMG][B]4. Horrible street conditions[/B]\r\nIf you consider that the streets conditions are already bad without snow (e.g. no blacktop here and there, [B]HUGE holes[/B] in the street, open gully covers, sudden changes in the height of a main road, etc.), than you can maybe imagine how more fun car driving is going to be under snowing conditions. Besides, as I told you previously, cars in the US are not equipped with snow tires.\r\n\r\n[B]5. Empty shelves in stores[/B]\r\nConsider shelves in stores (especially those for food) almost empty one or two days after a heavy blizzard. Hence, you should better buy ahead a lot of stuff the day before a blizzard is forecasted. Even Amazon could not deliver one of my recent orders on time due to the extreme weather conditions.[URL_IMG={$root_dir}media/blog/8/5-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/5.jpg[/IMG2][/URL_IMG]\r\n\r\n[B]6. Flight cancellations[/B]\r\nRetrospectively, I were really lucky that I could fly back to Germany on Christmas. A few days before and after Christmas, and almost every week since beginning of 2010, many flights were cancelled in account of the adverse weather conditions.[/SIZE]', 'What are winter conditions like in the US?', '[SIZE=2][URL_IMG={$root_dir}media/blog/8/1-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/1.jpg[/IMG2][/URL_IMG][B]1. Tons of snow[/B]\r\nThe amount of snow we had to cope with in the last few weeks was just unbelievable. Snow hills [B]higher than 40 inches[/B] were no rarity! I have never experienced that much snow in my life.\r\n\r\n[B]2. Working from home[/B]\r\nWorking from home is not just a simple possibility in the US, but an inherent part of American business activity. In February, for instance, I worked at least 5 days at home, [URL_IMG={$root_dir}media/blog/8/2-b.jpg][IMG2=160x213xright]{$root_dir}media/blog/8/2.jpg[/IMG2][/URL_IMG]and my manager would have no problem if I decide to do so even more often. \r\n[B]So does home-working negatively affect productivity? Yes, it most-likely does![/B] You receive much less emails per day, communication is delayed, and you notice pretty quickly that most employees try to slow down at least two gears on such days. And if it snows as much as recently, you will probably spend most of the time on freeing the driveway from all the snow. So from a managerial point of view I doubt that regular work from home can positively affect businesses.\r\n\r\n[B]3. School closings – "Snow Day"[/B][URL_IMG={$root_dir}media/blog/8/3-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/3.jpg[/IMG2][/URL_IMG]\r\nAlthough kids in US schools have no "Hitzefrei", mainly because many schools are equipped with air conditioners, they do have so-called "Snow Days". Due to the heavy snow this year, kids in some areas could take a full week off school. However, it''s not as good as the German "Hitzefrei", because they have to make up for the lost time in spring or summer.\r\n\r\n[URL_IMG={$root_dir}media/blog/8/4-b.jpg][IMG2=160x213xright]{$root_dir}media/blog/8/4.jpg[/IMG2][/URL_IMG][B]4. Horrible street conditions[/B]\r\nIf you consider that the streets conditions are already bad without snow (e.g. no blacktop here and there, [B]HUGE holes[/B] in the street, open gully covers, sudden changes in the height of a main road, etc.), than you can maybe imagine how more fun car driving is going to be under snowing conditions. Besides, as I told you previously, cars in the US are not equipped with snow tires.\r\n\r\n[B]5. Empty shelves in stores[/B]\r\nConsider shelves in stores (especially those for food) almost empty one or two days after a heavy blizzard. Hence, you should better buy ahead a lot of stuff the day before a blizzard is forecasted. Even Amazon could not deliver one of my recent orders on time due to the extreme weather conditions.[URL_IMG={$root_dir}media/blog/8/5-b.jpg][IMG2=194x146xleft]{$root_dir}media/blog/8/5.jpg[/IMG2][/URL_IMG]\r\n\r\n[B]6. Flight cancellations[/B]\r\nRetrospectively, I were really lucky that I could fly back to Germany on Christmas. A few days before and after Christmas, and almost every week since beginning of 2010, many flights were cancelled in account of the adverse weather conditions.[/SIZE]', 'PD', '2013-06-01 13:38:33', 'No', 'As I''ve been living in the US again for one month and my MBA program at UC Irvine is about to start, it''s about time to write about my adventures on the west coast, right?', 'Subpage', 'Yes', '', '', '', '', '', '', 1, 0, 0),
(1, 1, 'The_first_month_in_California', 'The first month in California', '[SIZE=2]As I''ve been living in the US again for one month and my [B]MBA program at UC Irvine[/B] is about to start, it''s about time to write about my adventures on the west coast, right?[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]My home, my car, my weather[/B][/CENTER][/SIZE]\r\n[SIZE=2]<table style="float:left"><tr><td>[URL_IMG={$root_dir}gallery/2011_California/images/1.jpg][IMG2=194x146xleft]{$root_dir}media/blog/9/1.jpg[/IMG2][/URL_IMG][P1][/P1][BLOCK][B]Touchdown in Los Angeles[/B][/BLOCK]</td></tr></table> I live off-campus in central Irvine, which is located 40 miles south of [B]Los Angeles[/B]. My neighborhood is very calm. I live together with two other students in a nice house. Of course I have my own room with refrigerator, microwave, toaster, tv, bed, desk, so everything I need, plus I have my own large bathroom! The next supermarket is a 5 minutes walk (but it''s Ralphs and not Wal-Mart this time). I can either take the bus or the bike to university, both taking me about 20-30 minutes, which is ok. Although a bus runs only every hour, and neither in the late evening nor at the weekend. But yes, I don''t have my rental car anymore and instead bought a cheap bike via craigslist. For travel purposes I can rent a car again, but I don''t need it for commuting between campus and my living place, and I would also have to pay for parking at the campus every day. Using the bike is perfect with no cold winter upcoming and it helps to keep in shape :-) And as you know I hate car driving [URL_IMG={$root_dir}gallery/2011_California/images/3.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/5.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/5.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/4.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/4.jpg[/IMG2][/URL_IMG] in the States anyway, this super cautious and super slow bullshiting can drive an impatient German like me crazy. I already thought it was horrible on the east coast, but here it is much worse, especially with those [B]stupid stop signs EVERYWHERE![/B] But you would have to experience it yourself to understand.\r\n[B]Regarding the weather here:[/B] Yes, it''s nice, most of the times blue sky and sunny. However, it''s not so warm as expected, often around 25° during the day and below 20° in the evening, which is chilly, especially at the beach with stronger wind. Residents say that it is pretty unusual for this time period. But I don''t mind, 25° is just perfect. At the beach, however, once the sun is gone it can get really cold and you need a jacket! I didn''t expect that for September.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]My university[/B][/CENTER][/SIZE]\r\n[SIZE=2]As you can see on the pictures, [B]the campus[/B] is not so spectacular, but you feel comfortable there, it has a lot of green and it is not so large so you get around quickly. Most of my lectures will take place in the [B]Paul Merage School of Business[/B] building. There is a big food corner right at the campus and as expected it is just a compilation of standard US fast food companies - Wendy''s, Taco Bell, Starbucks, some pizza and thai stuff and so on. [URL_IMG={$root_dir}gallery/2011_California/images/8.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/8.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/11.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/11.jpg[/IMG2][/URL_IMG] The lecture halls are noble and modern, plus they have sockets close to the seats!! (it is just unusual for me as WU student). I can print about 1500 pages b/w for free during the term, which is a lot. There are apparently 9 other exchange students with me from Austria, Hungary, France, Singapore, and some other [URL_IMG={$root_dir}gallery/2011_California/images/9.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/9.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/10.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/10.jpg[/IMG2][/URL_IMG] Asian countries. However, I''ve only met 5 of them so far. I intend to take 4 courses ([B]Competitive Intelligence, Experiential Learning, Global Strategy, Venture Capital & Private Equity[/B]). 2 of them for fun, 2 for my master''s degree - so should be pretty relaxed, right. It is just a quarter term, starting next week and ending on 2th of December. I''m curious to see how it will be to study in an MBA program with older and more experienced students. We already met them once at a really nice [B]beach BBQ get-together with bonfire in the evening at Corona del Mar [/B](unfortunately I didn''t take photos...), and all of them I met seem to be really ambitious, open-minded and interesting. I will have a lot of group works here as well, so I''ll see whether they are as good as their GMAT average of 670 indicates ;-)[/SIZE] \r\n\r\n\r\n[SIZE=3][CENTER][B]My travelling activities[/B][/CENTER][/SIZE]\r\n[SIZE=2]Of course I used the first month to travel. I saw most of the beaches between LA and San Diego. The nicest ones are definitely [B]Laguna Beach[/B] and [B]Corona del Mar[/B].  \r\n\r\n[URL_IMG={$root_dir}gallery/2011_California/images/22.jpg][IMG2=195x146x]{$root_dir}media/blog/9/22.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/23.jpg][IMG2=195x146x]{$root_dir}media/blog/9/23.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/25.jpg][IMG2=195x146x]{$root_dir}media/blog/9/25.jpg[/IMG2][/URL_IMG]\r\n\r\n[B]San Diego[/B] is a very nice little city with beautiful beaches. In LA I only went to [B]Hollywood and Beverly Hills[/B], there is not much more worth to see.  \r\n\r\n [URL_IMG={$root_dir}gallery/2011_California/images/26.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/26.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/35.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/35.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/38.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/38.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/34.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/34.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/56.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/56.jpg[/IMG2][/URL_IMG]\r\n [URL_IMG={$root_dir}gallery/2011_California/images/42.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/42.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/51.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/51.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/48.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/48.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/58.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/58.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/15.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/15.jpg[/IMG2][/URL_IMG][/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]Palm Springs[/B][/CENTER][/SIZE]\r\n[SIZE=2]One day I went hiking to [B]Palm Springs[/B], just a 2-hours drive from my place. Unfortunately the weather was not good as it was raining most of the time, but of course that does not stop an ambitious hiker like me. First I had to use the Palm Springs Aerial Tramway to get to the starting point at 2596m. It ascends two and one half miles to a pristine wilderness and is the world''s largest rotating tramcar. \r\n\r\n[URL_IMG={$root_dir}gallery/2011_Jacinto/images/1.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/7.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/7.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/4.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/4.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/11.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/11.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/14.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/14.jpg[/IMG2][/URL_IMG]\r\n\r\nHowever, this comes at a price: [B]24 US-Dollar![/B] In addition, I was extremely annoyed by all these lazy American tourists without any proper hiking clothes, just using the expensive tram and then going to the restaurant at the station, instead of going for a hike, which should be the only reason to go there... So I quickly started my tour and as expected I had not much people traffic during my hike. For me it was a fairly easy hike of 2 hours to the top of [B]Mount San Jacinto (3302m)[/B] and 1.5 hours down.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]New York - US Open 2011[/B][/CENTER][/SIZE]\r\n[SIZE=2]Then it was finally time to leave to New York - [B]I got tickets for the US Open![/B] Unfortunately the weather always starts to get worse in September on the east coast and so I really feared not seeing any match at all. There was not one single match on Tuesday and Wednesday of the second week as it rained the whole day. But when I landed at JFK it suddenly stopped raining!! Destiny I guess.\r\n\r\n[URL_IMG={$root_dir}gallery/2011_US-Open/images/6.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/6.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/12.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/12.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/23.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/23.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/45.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/45.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/69.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/69.jpg[/IMG2][/URL_IMG]\r\n\r\nI saw the quarterfinal night match between [B]Roger Federer and Wilfried Tsonga[/B] and both semifinals with the current top 4 players in the world ([B]Roger Federer - Novak Djokovic[/B] and [B]Rafael Nadal - Andy Murray[/B]).[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]San Francisco[/B][/CENTER][/SIZE]\r\n[SIZE=2]And just a couple of days ago I visited the San Francisco area. Luckily I could stay at a friends place who is currently working at Stanford, thanks again! I loved San Francisco. \r\n\r\n[URL_IMG={$root_dir}gallery/2011_San-Francisco/images/3.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/31.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/31.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/40.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/40.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/21.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/21.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/22.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/22.jpg[/IMG2][/URL_IMG]\r\n\r\nI guess it is now one of my favorite cities in the US, better than Boston or Miami. But I also were lucky to enjoy the city without it''s famous fog on that day. [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/43.jpg][IMG2=194x146xleft]{$root_dir}media/blog/9/43.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/44.jpg][IMG2=194x146xright]{$root_dir}media/blog/9/44.jpg[/IMG2][/URL_IMG] [B]Pier 39, Golden Gate Bridge and Sausalito[/B] is a must-see. My goal must be to live in Sausalito some day, the most expensive city in the US, with only 7000 people living there.\r\nI used those tourist buses to get around in the city because unfortunately I did not have much time, but I guess it would have been better to rent a bike. The ferry to [B]Alcatraz[/B] was booked out for the next two days. There was an awesome chocolate store at Pier 39, omg, I could have bought the whole store, everything looked so delicious!\r\n\r\n[B]Here you can watch videos I took during the US Open and at Pier 39:[/B][/SIZE]\r\n<span style="float:left;padding-right:12px"><object width="250" height="202"><param name="movie" value="http://www.youtube.com/v/nc-YLpQUGek&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/nc-YLpQUGek&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="250" height="202"></embed></object></span> <span style="float:left"><object width="250" height="202"><param name="movie" value="http://www.youtube.com/v/0G429Z6aPec&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/0G429Z6aPec&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="250" height="202"></embed></object></span> <div style="clear:both"></div>\r\n\r\n[SIZE=3][CENTER][B]Yosemite National Park[/B][/CENTER][/SIZE]\r\n[SIZE=2]The next day I went to [B]Yosemite Valley[/B], a must for me of course. Starting at 5am in the morning it was a 4 hours drive. As I also wanted to drive along the famous [B]Tioga road[/B] that day I had only about 6 hours for hiking, but of course I wanted to see as much as possible and all the tours suggested were way too boring for me. So I came up with my own challenging tour, which is as follows:\r\n<p class="h_tour">Four Mile Trail (1220m) - Glacier Point (2199m) - Sentinel Dome (2476m) - Panorama Trail - Nevada Fall (1806m) - Vernal Fall (1558m) - Happy Isle (1230m)</p><table><tr><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/23.jpg]<img src="{$dir_img}hiking/yosemite5.jpg" class="h_img">[/URL_IMG]</td><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/35.jpg]<img src="{$dir_img}hiking/yosemite8.jpg" class="h_img">[/URL_IMG]</td><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/51.jpg]<img src="{$dir_img}hiking/yosemite16.jpg" class="h_img">[/URL_IMG]</td></tr><tr><td align="center">[B]Half Dome[/B]</td><td align="center">[B]Nevada Fall and Vernal Fall[/B]</td><td align="center">[B]above Nevada Fall[/B]</td></tr></table>\r\nThe tour was about [B]24km long with 1500m ascent and 1500m descent[/B]. You can read more about the tour in the hiking section of my website. [URL_IMG={$root_dir}gallery/2011_Yosemite/images/28.jpg][IMG2=146x194xleft]{$root_dir}media/blog/9/28.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Yosemite/images/33.jpg][IMG2=146x194xright]{$root_dir}media/blog/9/33.jpg[/IMG2][/URL_IMG] Overall it took me 1.75 hours to [B]Glacier Point[/B], from there 40 minutes to [B]Sentinel Dome[/B], then 2.25 hours to [B]Nevada Fall[/B] and another 1.25 back to the valley. Which is about [B]6.5 hours[/B] total with breaks, tough to beat and right on schedule! (please note that this route normally takes you about 9 hours and is quite strenuous - read the hiking section for more information). It was a great tour. I saw waterfalls, the famous Half Dome and several animals (mule deers, ground squirrels, and a snake; but no bear). <span style="float:left;padding-right:12px"><object width="300" height="243"><param name="movie" value="http://www.youtube.com/v/74wD6qrl1g4&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/74wD6qrl1g4&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="300" height="243"></embed></object></span> I also had the luck to see a rainbow within a waterfall, how awesome is that?\r\nBack in the valley I drove along the famous [B]Tioga Road[/B] (a panorama road across the national park), but it was not so special anymore. I guess for me at some point all those stony mountains looked the same and it does not appear to be high as the treeline is so high compared to what I''m used to in Europe (around 3400m), and there was no snow at all anymore. So I definitely prefer the Alps, they are much more exciting, challenging and diverse. But still it was a very nice day with a long hike.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]Stanford University[/B][/CENTER][/SIZE]\r\n[SIZE=2]Finally I took the opportunity to see the Stanford Campus; it''s amazing! It takes you up to 30 minutes to walk from one end to the other and everything is nice and clean there. My campus at UCI can definitely not be compared with this one. [P1][/P1] [B]Too bad it is not a partner university of the WU ;-)[/B]\r\n\r\n[URL_IMG={$root_dir}gallery/Stanford/images/1.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/1.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/2.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/2.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/3.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/3.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/4.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/4.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/5.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/5.jpg[/IMG2][/URL_IMG] \r\n\r\nAs always you can find more pictures of my travels in the [URL_INTERN={$root_dir}gallery/]Gallery[/URL_INTERN].\r\n\r\nOverall a very varied and exciting first month. Still, what is missing on my TODO list? Right! [B]Las Vegas and Grand Canyon[/B]. But I will only go there in November.[/SIZE]', 'The first month in California', '[SIZE=2]As I''ve been living in the US again for one month and my [B]MBA program at UC Irvine[/B] is about to start, it''s about time to write about my adventures on the west coast, right?[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]My home, my car, my weather[/B][/CENTER][/SIZE]\r\n[SIZE=2]<table style="float:left"><tr><td>[URL_IMG={$root_dir}gallery/2011_California/images/1.jpg][IMG2=194x146xleft]{$root_dir}media/blog/9/1.jpg[/IMG2][/URL_IMG][P1][/P1][BLOCK][B]Touchdown in Los Angeles[/B][/BLOCK]</td></tr></table> I live off-campus in central Irvine, which is located 40 miles south of [B]Los Angeles[/B]. My neighborhood is very calm. I live together with two other students in a nice house. Of course I have my own room with refrigerator, microwave, toaster, tv, bed, desk, so everything I need, plus I have my own large bathroom! The next supermarket is a 5 minutes walk (but it''s Ralphs and not Wal-Mart this time). I can either take the bus or the bike to university, both taking me about 20-30 minutes, which is ok. Although a bus runs only every hour, and neither in the late evening nor at the weekend. But yes, I don''t have my rental car anymore and instead bought a cheap bike via craigslist. For travel purposes I can rent a car again, but I don''t need it for commuting between campus and my living place, and I would also have to pay for parking at the campus every day. Using the bike is perfect with no cold winter upcoming and it helps to keep in shape :-) And as you know I hate car driving [URL_IMG={$root_dir}gallery/2011_California/images/3.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/5.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/5.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/4.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/4.jpg[/IMG2][/URL_IMG] in the States anyway, this super cautious and super slow bullshiting can drive an impatient German like me crazy. I already thought it was horrible on the east coast, but here it is much worse, especially with those [B]stupid stop signs EVERYWHERE![/B] But you would have to experience it yourself to understand.\r\n[B]Regarding the weather here:[/B] Yes, it''s nice, most of the times blue sky and sunny. However, it''s not so warm as expected, often around 25° during the day and below 20° in the evening, which is chilly, especially at the beach with stronger wind. Residents say that it is pretty unusual for this time period. But I don''t mind, 25° is just perfect. At the beach, however, once the sun is gone it can get really cold and you need a jacket! I didn''t expect that for September.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]My university[/B][/CENTER][/SIZE]\r\n[SIZE=2]As you can see on the pictures, [B]the campus[/B] is not so spectacular, but you feel comfortable there, it has a lot of green and it is not so large so you get around quickly. Most of my lectures will take place in the [B]Paul Merage School of Business[/B] building. There is a big food corner right at the campus and as expected it is just a compilation of standard US fast food companies - Wendy''s, Taco Bell, Starbucks, some pizza and thai stuff and so on. [URL_IMG={$root_dir}gallery/2011_California/images/8.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/8.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/11.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/11.jpg[/IMG2][/URL_IMG] The lecture halls are noble and modern, plus they have sockets close to the seats!! (it is just unusual for me as WU student). I can print about 1500 pages b/w for free during the term, which is a lot. There are apparently 9 other exchange students with me from Austria, Hungary, France, Singapore, and some other [URL_IMG={$root_dir}gallery/2011_California/images/9.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/9.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/10.jpg][IMG2=100x75xright]{$root_dir}gallery/2011_California/thumbs/10.jpg[/IMG2][/URL_IMG] Asian countries. However, I''ve only met 5 of them so far. I intend to take 4 courses ([B]Competitive Intelligence, Experiential Learning, Global Strategy, Venture Capital & Private Equity[/B]). 2 of them for fun, 2 for my master''s degree - so should be pretty relaxed, right. It is just a quarter term, starting next week and ending on 2th of December. I''m curious to see how it will be to study in an MBA program with older and more experienced students. We already met them once at a really nice [B]beach BBQ get-together with bonfire in the evening at Corona del Mar [/B](unfortunately I didn''t take photos...), and all of them I met seem to be really ambitious, open-minded and interesting. I will have a lot of group works here as well, so I''ll see whether they are as good as their GMAT average of 670 indicates ;-)[/SIZE] \r\n\r\n\r\n[SIZE=3][CENTER][B]My travelling activities[/B][/CENTER][/SIZE]\r\n[SIZE=2]Of course I used the first month to travel. I saw most of the beaches between LA and San Diego. The nicest ones are definitely [B]Laguna Beach[/B] and [B]Corona del Mar[/B].  \r\n\r\n[URL_IMG={$root_dir}gallery/2011_California/images/22.jpg][IMG2=195x146x]{$root_dir}media/blog/9/22.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/23.jpg][IMG2=195x146x]{$root_dir}media/blog/9/23.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/25.jpg][IMG2=195x146x]{$root_dir}media/blog/9/25.jpg[/IMG2][/URL_IMG]\r\n\r\n[B]San Diego[/B] is a very nice little city with beautiful beaches. In LA I only went to [B]Hollywood and Beverly Hills[/B], there is not much more worth to see.  \r\n\r\n [URL_IMG={$root_dir}gallery/2011_California/images/26.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/26.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/35.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/35.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/38.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/38.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/34.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/34.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/56.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/56.jpg[/IMG2][/URL_IMG]\r\n [URL_IMG={$root_dir}gallery/2011_California/images/42.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/42.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/51.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/51.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/48.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/48.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/2011_California/images/58.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/58.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_California/images/15.jpg][IMG2=100x75x]{$root_dir}gallery/2011_California/thumbs/15.jpg[/IMG2][/URL_IMG][/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]Palm Springs[/B][/CENTER][/SIZE]\r\n[SIZE=2]One day I went hiking to [B]Palm Springs[/B], just a 2-hours drive from my place. Unfortunately the weather was not good as it was raining most of the time, but of course that does not stop an ambitious hiker like me. First I had to use the Palm Springs Aerial Tramway to get to the starting point at 2596m. It ascends two and one half miles to a pristine wilderness and is the world''s largest rotating tramcar. \r\n\r\n[URL_IMG={$root_dir}gallery/2011_Jacinto/images/1.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/7.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/7.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/4.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/4.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/11.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/11.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Jacinto/images/14.jpg][IMG2=100x75x]{$root_dir}gallery/2011_Jacinto/thumbs/14.jpg[/IMG2][/URL_IMG]\r\n\r\nHowever, this comes at a price: [B]24 US-Dollar![/B] In addition, I was extremely annoyed by all these lazy American tourists without any proper hiking clothes, just using the expensive tram and then going to the restaurant at the station, instead of going for a hike, which should be the only reason to go there... So I quickly started my tour and as expected I had not much people traffic during my hike. For me it was a fairly easy hike of 2 hours to the top of [B]Mount San Jacinto (3302m)[/B] and 1.5 hours down.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]New York - US Open 2011[/B][/CENTER][/SIZE]\r\n[SIZE=2]Then it was finally time to leave to New York - [B]I got tickets for the US Open![/B] Unfortunately the weather always starts to get worse in September on the east coast and so I really feared not seeing any match at all. There was not one single match on Tuesday and Wednesday of the second week as it rained the whole day. But when I landed at JFK it suddenly stopped raining!! Destiny I guess.\r\n\r\n[URL_IMG={$root_dir}gallery/2011_US-Open/images/6.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/6.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/12.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/12.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/23.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/23.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/45.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/45.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_US-Open/images/69.jpg][IMG2=100x75x]{$root_dir}gallery/2011_US-Open/thumbs/69.jpg[/IMG2][/URL_IMG]\r\n\r\nI saw the quarterfinal night match between [B]Roger Federer and Wilfried Tsonga[/B] and both semifinals with the current top 4 players in the world ([B]Roger Federer - Novak Djokovic[/B] and [B]Rafael Nadal - Andy Murray[/B]).[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]San Francisco[/B][/CENTER][/SIZE]\r\n[SIZE=2]And just a couple of days ago I visited the San Francisco area. Luckily I could stay at a friends place who is currently working at Stanford, thanks again! I loved San Francisco. \r\n\r\n[URL_IMG={$root_dir}gallery/2011_San-Francisco/images/3.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/3.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/31.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/31.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/40.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/40.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/21.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/21.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/22.jpg][IMG2=100x75x]{$root_dir}gallery/2011_San-Francisco/thumbs/22.jpg[/IMG2][/URL_IMG]\r\n\r\nI guess it is now one of my favorite cities in the US, better than Boston or Miami. But I also were lucky to enjoy the city without it''s famous fog on that day. [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/43.jpg][IMG2=194x146xleft]{$root_dir}media/blog/9/43.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_San-Francisco/images/44.jpg][IMG2=194x146xright]{$root_dir}media/blog/9/44.jpg[/IMG2][/URL_IMG] [B]Pier 39, Golden Gate Bridge and Sausalito[/B] is a must-see. My goal must be to live in Sausalito some day, the most expensive city in the US, with only 7000 people living there.\r\nI used those tourist buses to get around in the city because unfortunately I did not have much time, but I guess it would have been better to rent a bike. The ferry to [B]Alcatraz[/B] was booked out for the next two days. There was an awesome chocolate store at Pier 39, omg, I could have bought the whole store, everything looked so delicious!\r\n\r\n[B]Here you can watch videos I took during the US Open and at Pier 39:[/B][/SIZE]\r\n<span style="float:left;padding-right:12px"><object width="250" height="202"><param name="movie" value="http://www.youtube.com/v/nc-YLpQUGek&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/nc-YLpQUGek&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="250" height="202"></embed></object></span> <span style="float:left"><object width="250" height="202"><param name="movie" value="http://www.youtube.com/v/0G429Z6aPec&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/0G429Z6aPec&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="250" height="202"></embed></object></span> <div style="clear:both"></div>\r\n\r\n[SIZE=3][CENTER][B]Yosemite National Park[/B][/CENTER][/SIZE]\r\n[SIZE=2]The next day I went to [B]Yosemite Valley[/B], a must for me of course. Starting at 5am in the morning it was a 4 hours drive. As I also wanted to drive along the famous [B]Tioga road[/B] that day I had only about 6 hours for hiking, but of course I wanted to see as much as possible and all the tours suggested were way too boring for me. So I came up with my own challenging tour, which is as follows:\r\n<p class="h_tour">Four Mile Trail (1220m) - Glacier Point (2199m) - Sentinel Dome (2476m) - Panorama Trail - Nevada Fall (1806m) - Vernal Fall (1558m) - Happy Isle (1230m)</p><table><tr><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/23.jpg]<img src="{$dir_img}hiking/yosemite5.jpg" class="h_img">[/URL_IMG]</td><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/35.jpg]<img src="{$dir_img}hiking/yosemite8.jpg" class="h_img">[/URL_IMG]</td><td align="center">[URL_IMG={$root_dir}gallery/2011_Yosemite/images/51.jpg]<img src="{$dir_img}hiking/yosemite16.jpg" class="h_img">[/URL_IMG]</td></tr><tr><td align="center">[B]Half Dome[/B]</td><td align="center">[B]Nevada Fall and Vernal Fall[/B]</td><td align="center">[B]above Nevada Fall[/B]</td></tr></table>\r\nThe tour was about [B]24km long with 1500m ascent and 1500m descent[/B]. You can read more about the tour in the hiking section of my website. [URL_IMG={$root_dir}gallery/2011_Yosemite/images/28.jpg][IMG2=146x194xleft]{$root_dir}media/blog/9/28.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2011_Yosemite/images/33.jpg][IMG2=146x194xright]{$root_dir}media/blog/9/33.jpg[/IMG2][/URL_IMG] Overall it took me 1.75 hours to [B]Glacier Point[/B], from there 40 minutes to [B]Sentinel Dome[/B], then 2.25 hours to [B]Nevada Fall[/B] and another 1.25 back to the valley. Which is about [B]6.5 hours[/B] total with breaks, tough to beat and right on schedule! (please note that this route normally takes you about 9 hours and is quite strenuous - read the hiking section for more information). It was a great tour. I saw waterfalls, the famous Half Dome and several animals (mule deers, ground squirrels, and a snake; but no bear). <span style="float:left;padding-right:12px"><object width="300" height="243"><param name="movie" value="http://www.youtube.com/v/74wD6qrl1g4&hl=en&fs=1&wmode=transparent&rel=0"></param><param name="WMode" value="transparent"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/74wD6qrl1g4&hl=en&fs=1&wmode=transparent&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="300" height="243"></embed></object></span> I also had the luck to see a rainbow within a waterfall, how awesome is that?\r\nBack in the valley I drove along the famous [B]Tioga Road[/B] (a panorama road across the national park), but it was not so special anymore. I guess for me at some point all those stony mountains looked the same and it does not appear to be high as the treeline is so high compared to what I''m used to in Europe (around 3400m), and there was no snow at all anymore. So I definitely prefer the Alps, they are much more exciting, challenging and diverse. But still it was a very nice day with a long hike.[/SIZE]\r\n\r\n\r\n[SIZE=3][CENTER][B]Stanford University[/B][/CENTER][/SIZE]\r\n[SIZE=2]Finally I took the opportunity to see the Stanford Campus; it''s amazing! It takes you up to 30 minutes to walk from one end to the other and everything is nice and clean there. My campus at UCI can definitely not be compared with this one. [P1][/P1] [B]Too bad it is not a partner university of the WU ;-)[/B]\r\n\r\n[URL_IMG={$root_dir}gallery/Stanford/images/1.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/1.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/2.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/2.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/3.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/3.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/4.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/4.jpg[/IMG2][/URL_IMG]  [URL_IMG={$root_dir}gallery/Stanford/images/5.jpg][IMG2=100x75x]{$root_dir}gallery/Stanford/thumbs/5.jpg[/IMG2][/URL_IMG] \r\n\r\nAs always you can find more pictures of my travels in the [URL_INTERN={$root_dir}gallery/]Gallery[/URL_INTERN].\r\n\r\nOverall a very varied and exciting first month. Still, what is missing on my TODO list? Right! [B]Las Vegas and Grand Canyon[/B]. But I will only go there in November.[/SIZE]', 'Inspiring', '2013-06-01 13:40:13', 'No', 'As I''ve been living in the US again for one month and my MBA program at UC Irvine is about to start, it''s about time to write about my adventures on the west coast, right?', 'None', 'Yes', '', '', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `checklist_categories`
--

CREATE TABLE IF NOT EXISTS `checklist_categories` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `name_EN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `checklist_categories`
--

INSERT INTO `checklist_categories` (`ID`, `name_EN`) VALUES
(1, 'Thoughts and Feelings'),
(2, 'Activities and Personal Relationships'),
(3, 'Physical Symptoms'),
(4, 'Suicidal Urges');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `checklist_items`
--

CREATE TABLE IF NOT EXISTS `checklist_items` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `categoryID` int(4) DEFAULT NULL,
  `item` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `checklist_items`
--

INSERT INTO `checklist_items` (`ID`, `categoryID`, `item`) VALUES
(1, 1, 'Feeling sad or down in the dumps'),
(2, 1, 'Feeling unhappy or blue'),
(3, 1, 'Crying spells or tearfulness'),
(4, 1, 'Feeling discouraged'),
(5, 1, 'Feeling hopeless'),
(6, 1, 'Low self-esteem'),
(7, 1, 'Feeling worthless or inadequate'),
(8, 1, 'Guilt or shame'),
(9, 1, 'Criticizing yourself or blaming yourself'),
(10, 1, 'Difficulty making decisions'),
(11, 2, 'Loss of interest in family, friends or colleagues'),
(12, 2, 'Loneliness'),
(13, 2, 'Spending less time with family or friends'),
(14, 2, 'Loss of motivation'),
(15, 2, 'Loss of interest in work or other activities'),
(16, 2, 'Avoiding work or other activities'),
(17, 2, 'Loss of pleasure or satisfaction in life'),
(18, 3, 'Feeling tired'),
(19, 3, 'Difficulty sleeping or sleeping too much'),
(20, 3, 'Decreased or increased appetite'),
(21, 3, 'Loss of interest in sex'),
(22, 3, 'Worrying about your health'),
(23, 4, 'Do you have any suicidal thoughts?'),
(24, 4, 'Would you like to end your life?'),
(25, 4, 'Do you have a plan for harming yourself?');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `about` text NOT NULL,
  `faq` text NOT NULL,
  `contact` text NOT NULL,
  `imprint` text NOT NULL,
  `press` text NOT NULL,
  `lang` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `cms`
--

INSERT INTO `cms` (`id`, `about`, `faq`, `contact`, `imprint`, `press`, `lang`) VALUES
(1, '{$test}\r\nÜber uns', '{$test}\r\nFAQ', '{$test}\r\nKontakt', '{$test}\r\nImpressum', '{$test}\r\nPresse', 'DE'),
(2, '<b><span style="font-size:20px">Happify''s mission is to support people to make every day a happy and fulfilling day.</span></b>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n\r\n<span class="cms_title">Depression or unhappiness among adults is widely spread.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]about <span class="cms_highlight">121 million people</span> worldwide have some form of depression\r\n[*]15% of the population of most developed countries suffers severe depression\r\n[*]about 6.7 percent of the U.S. population over 18 experience clinical depression in any given year\r\n\r\n[*]increase of sickness days due to burnout or depression\r\n[*]majority of fully employed people consider themselves as being at [B]risk of burnout[/B]</span>\r\n\r\n[*]about <span class="cms_highlight">75% of the people working today are unhappy</span> with their current jobs\r\n\r\n[*]Everyone will at some time in their life be affected by depression; their own or someone else''s\r\n[*]15% of depressed people will <span class="cms_highlight">commit suicide</span>\r\n[*]Depression will be the second largest killer after heart disease by 2020\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Professional treatment is often ineffective.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]80% of depressed people are not currently having any treatment\r\n[*]less than 25% of depressed people have access to effective treatment\r\n[*]<span class="cms_highlight">Antidepressants work for far less than 50% of depressed people</span>\r\n[*]40% of depressed people do not respond to medications\r\n[*]<span class="cms_highlight">High relapse rate</span> with antidepressant drugs as well as therapy\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Plenty of factors can lead to or are characteristics of depression and unhappiness.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]Negative, past experiences (in childhood)\r\n[*]Wrong assumptions and believes\r\n[*]Distorted thinking and acting – "Mindfucked"\r\n[*]No purpose (passion) in life\r\n[*]Emotional baggage from childhood/parents\r\n[*]Not being yourself\r\n[*]Unhealthy life style (e.g. smoking, alcohol, obesity, no sports)\r\n[*]Negativism, skepticism, pessimism\r\n[*]Feel “accepted and worth” only with consistent love, approval, or entitlement\r\n[*]Not living in the present\r\n[*]Being dependent on outside factors\r\n[*]Perfectionism\r\n[*]Missing close and meaningful connections with other people\r\n[*]Lost in too much distraction and the fast-paced world\r\n[*]Guilt\r\n[*]Feeling lonely\r\n[*]Procrastination, Wasting time\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">The distorted mind is the true underlying cause of persistent depression and unhappiness.</span>\r\n<hr class="cms_hr">\r\nThe way someone feels at a certain moment is defined by the thoughts this person has at this moment.\r\n[P2][/P2]\r\n[B]Happy thoughts makes you feel happy![/B]\r\n[P2][/P2]\r\nUnhappy and depressed people…\r\n\r\n[LIST]\r\n[*]are dependent on outside factors that they cannot influence, \r\n[*]thus disappointed very often,\r\n[*]blame themselves and\r\n[*]create distorted thoughts assuming it is them who failed.\r\n[/LIST]\r\n[B]They get mind-fucked![/B]\r\n\r\n[P2][/P2]\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Cognitive therapy (CT) can change the distorted way of thinking.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]CT helps to control mood swings and self-defeating behavior\r\n[*]CT is more sustainable than antidepressant drug therapy\r\n[*]CT addresses the underlying relationship causes of depression\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n[B]Techniques of cognitive therapy that enable continuous and long-lasting improvement.[/B]\r\n[LIST]\r\n[*]Identify distorted thoughts\r\n[*]Take behavioral actions\r\n[*]Pursue enjoyable activities\r\n[*]Be open to personal relationships \r\n[*]Activate healthy and varied lifestyle\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n[P1][/P1]\r\n\r\n\r\n<span class="cms_title">Happify offers CT-based tools and reading to assist in climbing the ladder of happiness to the very top.</span>\r\n<hr class="cms_hr">\r\n<div style="float:left;width:40%">\r\nIt is important to climb one step at a time. It is possible to work on multiple dimensions at the same time, but especially if you are severely depressed it is hard to execute. Set goals for each step and pursue them one after the other. As soon as you feel in control of one step, immediately move on to the next step, but do not forget the goals and rules of the previous steps.\r\n<p>&nbsp;</p>\r\n1. [B]Get rid of distorted thoughts:[/B] Clear your mind with thoughts that are biased and not true. Discard extreme thoughts and expectations, such as the hassle to be perfect, any thought that makes you believe you are not unique, not loved, not or worthy.\r\n<p></p>\r\n2. [B]Get your life organized![/B] Plan your day and what you wanna do and achieve. Clean your room. Stick to plans.\r\n<p></p>\r\n3. [B]Incorporate a healthy lifestyle:[/B] Do sports to make you feel good and fresh, eat healthy, meditate.\r\n<p></p>\r\n4. [B]Think positive - always![/B] Remember the positives of your day. Be optimistic and dream big.\r\n<p></p>\r\n5. [B]Meet people:[/B] With time, you will feel stronger and happier again, forcing you to meet new people automatically. Build meaningful friendships with them.\r\n<p></p>\r\n6. [B]Constantly grow:[/B] Read books, be open to new ideas and activities, broaden your knowledge everyday and take them into practice immediately.\r\n<p></p>\r\n7. [B]Fulfill yourself:[/B] The ultimate goal in life. Do what you really love to do. Take your time to find it. But search for it. Never stop searching until you found it. And then go for it.\r\n</div>\r\n<div style="float:left;width:60%">\r\n[IMG=500x]{$dir_img}cms/about/pyramid3.png[/IMG]\r\n</div>\r\n<div style="clear:both"></div>\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">A depressed person has to walk through 3 major phases to become a consistently happier and better person.</span>\r\n<hr class="cms_hr">\r\n<div style="float:left;width:33%">\r\n[B]1 ANALYZE[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]identify your level of happiness and your mental areas for improvement\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="float:left;width:34%">\r\n[B]2 LEARN AND IMPROVE[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]learn what your mental weaknesses are and how you can improve mentally\r\n[*]use the tools Happify offers to assist you in becoming a happier person\r\n[*]track the progress you make\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="float:left;width:33%">\r\n[B]3 PURSUE FULFILLMENT[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]pursue constant personal growth, self-fullfillment and rich interpersonal relationships\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="clear:both"></div>', '{$test}\r\nFAQ', '{$test}\r\nContact', '{$test}\r\nImprint', '{$test}\r\nPress', 'EN');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `root_dir` varchar(100) NOT NULL,
  `title_hp` varchar(100) NOT NULL,
  `title_hp_EN` varchar(100) NOT NULL,
  `main_title` varchar(100) NOT NULL,
  `main_title_EN` varchar(100) NOT NULL,
  `main_description` text NOT NULL,
  `main_description_EN` text NOT NULL,
  `keywords` text NOT NULL,
  `contact_mail` varchar(50) NOT NULL,
  `perpage_blog` int(5) NOT NULL,
  `perpage_comments` int(5) NOT NULL,
  `perpage_gallery` int(5) NOT NULL,
  `perpage_thumbs` int(5) NOT NULL,
  `perpage_users` int(5) NOT NULL,
  `width_images` int(5) NOT NULL,
  `height_images_max` int(4) NOT NULL,
  `width_thumbs` int(5) NOT NULL,
  `height_thumbs_max` int(4) NOT NULL,
  `rss_german_url` varchar(200) NOT NULL,
  `rss_german_title` varchar(100) NOT NULL,
  `rss_english_url` varchar(200) NOT NULL,
  `rss_english_title` varchar(100) NOT NULL,
  `time_ban` int(5) NOT NULL,
  `twitter` text NOT NULL,
  `twitter_EN` text NOT NULL,
  `twitter_time` int(10) NOT NULL,
  `visiters_total` int(10) NOT NULL DEFAULT '0',
  `del_old_visiters` int(10) NOT NULL,
  `time_new_visiter` int(10) NOT NULL,
  `rss_intern_totalentries` int(3) NOT NULL,
  `rss_extern_totalentries` int(3) NOT NULL,
  `rss_intern_left_totalentries` int(2) NOT NULL,
  `rss_msg_length` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `config`
--

INSERT INTO `config` (`id`, `root_dir`, `title_hp`, `title_hp_EN`, `main_title`, `main_title_EN`, `main_description`, `main_description_EN`, `keywords`, `contact_mail`, `perpage_blog`, `perpage_comments`, `perpage_gallery`, `perpage_thumbs`, `perpage_users`, `width_images`, `height_images_max`, `width_thumbs`, `height_thumbs_max`, `rss_german_url`, `rss_german_title`, `rss_english_url`, `rss_english_title`, `time_ban`, `twitter`, `twitter_EN`, `twitter_time`, `visiters_total`, `del_old_visiters`, `time_new_visiter`, `rss_intern_totalentries`, `rss_extern_totalentries`, `rss_intern_left_totalentries`, `rss_msg_length`) VALUES
(1, 'http://localhost/happify/', 'Happify | helps you to fully enjoy your life', 'Happify | helps you to fully enjoy your life', 'happify.me', 'happify.me', 'Herzlich Willkommen auf der Homepage von [B]Stefan Richter aus Nürnberg.[/B]\r\nAuf den einzelnen Seiten können Sie sich über meine Person, meine aktuellen Tätigkeiten und meine Referenzen als Webprogrammierer informieren.', 'Welcome on the website of [B]Stefan Richter from Nuremberg (Germany).[/B]\r\nPlease feel free to read my blog or inform yourself about my person, my current activities and my references as web programmer.', 'Stefan Richter, Nürnberg, WiSo, Student, Bachelor, Webprogrammierer, Consulting, Singapur, St. Gallen, Mannheim, München, Universität, Erlangen-Nürnberg, Erlangen, Blog', 'stefan.richter@nbg-master.de', 1, 1, 10, 40, 10, 800, 800, 100, 150, 'http://www.spiegel.de/schlagzeilen/index.rss', 'SPIEGEL ONLINE - Schlagzeilen', 'http://rss.cnn.com/rss/edition_world.rss', 'CNN Newsticker', 0, 'gerade am Schreiben meiner Bachelorarbeit... oder wohl doch eher am prokrastinieren :-)', 'currently working on my bachelor thesis... or call it procrastination if you want :-)', 1248032254, 81, 20160, 10, 10, 10, 5, 600);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `da_scale_categories`
--

CREATE TABLE IF NOT EXISTS `da_scale_categories` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `name_EN` varchar(20) DEFAULT NULL,
  `description_EN` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `da_scale_categories`
--

INSERT INTO `da_scale_categories` (`ID`, `name_EN`, `description_EN`) VALUES
(1, 'Approval', 'Tendency to measure your self-esteem based on how people react to you and what they think of you'),
(2, 'Love', 'Tendency to base your worth on whether or not you are loved'),
(3, 'Achievement', 'Tendency to see yourself as a commodity in the marketplace and workaholic. Tendency to think your sense of self-worth and your capacity for joy are dependent on your productivity.'),
(4, 'Perfection', 'Tendency to perfectionism, to demand perfection in yourself'),
(5, 'Entitlement', 'Tendency to feel "entitled" to things (success, love, happiness, etc.) because of your inherent goodness or hard work'),
(6, 'Omnipotence', 'Tendency to see yourself as the center of your personal universe to hold yourself responsible for much of what goes on around you. You blame yourself inappropriately for the negative actions and attit'),
(7, 'Autonomy', 'Tendency to find happiness within yourself');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `da_scale_items`
--

CREATE TABLE IF NOT EXISTS `da_scale_items` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `categoryID` int(4) NOT NULL,
  `item_EN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `da_scale_items`
--

INSERT INTO `da_scale_items` (`ID`, `categoryID`, `item_EN`) VALUES
(1, 1, 'Criticism will obviously upset the person who receives the criticism.'),
(2, 1, 'It is best to give up my own interests in order to please other people.'),
(3, 1, 'I need other people''s approval in order to be happy.'),
(4, 1, 'If someone important to me expects me to do something, then I really should do it.'),
(5, 1, 'My value as a person depends greatly on what others think of me.'),
(6, 2, 'I cannot find happiness without being loved by another person.'),
(7, 2, 'If others dislike you, you are bound to be less happy.'),
(8, 2, 'If people whom I care about reject me, it means there is something wrong with me.'),
(9, 2, 'If a person I love does not love me, it means I am unlovable.'),
(10, 2, 'Being isolated from others is bound to lead to unhappiness.'),
(11, 3, ' If I am to be a worthwhile person, I must be truly outstanding in at least one major respect.'),
(12, 3, 'I must be a useful, productive, creative person or life has no purpose.'),
(13, 3, 'People who have good ideas are more worthy than those who do not.'),
(14, 3, 'If I do not do as well as other people, it means I am inferior.'),
(15, 3, 'If I fail at my work, then I am a failure as a person.'),
(16, 4, 'If you cannot do something well, there is little point in doing it at all.'),
(17, 4, 'It is shameful for a person to display his weaknesses.'),
(18, 4, 'A person should try to be the best at everything he undertakes.'),
(19, 4, 'I should be upset if I make a mistake.'),
(20, 4, 'If I don''t set the highest standards for myself, I am likely to end up a second-rate person.'),
(21, 5, 'If I strongly believe I deserve something, I have reason to expect that I should get it.'),
(22, 5, 'It is necessary to become frustrated if you find obstacles to getting what you want.'),
(23, 5, 'If I put other people''s needs before my own, they should help me when I need something from them.'),
(24, 5, 'If I am a good husband (or wife), then my spouse is bound to love me.'),
(25, 5, 'If I do nice things for someone, I can anticipate that they will respect me and treat me just as well as I treat them.'),
(26, 6, 'I should assume responsibility for how people feel and behave if they are close to me.'),
(27, 6, 'If I criticize the way someone does something and they become angry or depressed, this means I have upset them.'),
(28, 6, 'To be a good, worthwhile, moral person, I must try to help everyone who needs it.'),
(29, 6, 'If a child is having emotional or behavioral difficulties, this shows that the child''s parents have failed in some important respect.'),
(30, 6, 'I should be able to please everybody.'),
(31, 7, 'I cannot expect to control how I feel when something bad happens.'),
(32, 7, 'There is no point in trying to change upsetting emotions because they are a valid and inevitable part of daily living.'),
(33, 7, 'My moods are primarily created by factors that are largely beyond my control, such as the past, or body chemistry, or hormone cycles, or biorhythms, or chance, or fate.'),
(34, 7, 'My happiness is largely dependent on what happens to me.'),
(35, 7, 'People who have the marks of success (good looks, social status, wealth, or fame) are bound to be happier than those who do not.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `da_scale_results`
--

CREATE TABLE IF NOT EXISTS `da_scale_results` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `userID` int(12) NOT NULL,
  `itemID` int(4) DEFAULT NULL,
  `value` int(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=376 ;

--
-- Daten für Tabelle `da_scale_results`
--

INSERT INTO `da_scale_results` (`ID`, `userID`, `itemID`, `value`, `date`) VALUES
(340, 1, 35, -2, '2012-09-22 15:40:44'),
(339, 1, 34, -2, '2012-09-22 15:40:44'),
(338, 1, 33, -1, '2012-09-22 15:40:44'),
(337, 1, 32, -1, '2012-09-22 15:40:44'),
(336, 1, 31, -2, '2012-09-22 15:40:44'),
(335, 1, 30, -1, '2012-09-22 15:40:44'),
(334, 1, 29, -2, '2012-09-22 15:40:44'),
(333, 1, 28, -1, '2012-09-22 15:40:44'),
(332, 1, 27, -1, '2012-09-22 15:40:44'),
(331, 1, 26, -2, '2012-09-22 15:40:44'),
(330, 1, 25, -1, '2012-09-22 15:40:44'),
(329, 1, 24, -1, '2012-09-22 15:40:44'),
(328, 1, 23, -2, '2012-09-22 15:40:44'),
(327, 1, 22, -2, '2012-09-22 15:40:44'),
(326, 1, 21, -1, '2012-09-22 15:40:44'),
(325, 1, 20, -1, '2012-09-22 15:40:44'),
(324, 1, 19, -2, '2012-09-22 15:40:44'),
(323, 1, 18, -2, '2012-09-22 15:40:44'),
(322, 1, 17, -1, '2012-09-22 15:40:44'),
(321, 1, 16, -1, '2012-09-22 15:40:44'),
(320, 1, 15, -2, '2012-09-22 15:40:44'),
(319, 1, 14, -1, '2012-09-22 15:40:44'),
(318, 1, 13, 0, '2012-09-22 15:40:44'),
(317, 1, 12, -1, '2012-09-22 15:40:44'),
(316, 1, 11, 0, '2012-09-22 15:40:44'),
(315, 1, 10, -1, '2012-09-22 15:40:44'),
(314, 1, 9, 0, '2012-09-22 15:40:44'),
(313, 1, 8, -1, '2012-09-22 15:40:44'),
(312, 1, 7, 0, '2012-09-22 15:40:44'),
(311, 1, 6, -1, '2012-09-22 15:40:44'),
(310, 1, 5, 0, '2012-09-22 15:40:44'),
(309, 1, 4, 0, '2012-09-22 15:40:44'),
(308, 1, 3, 0, '2012-09-22 15:40:44'),
(307, 1, 2, -2, '2012-09-22 15:40:44'),
(306, 1, 1, 1, '2012-09-22 15:40:44'),
(375, 1, 35, 1, '2012-09-22 15:45:18'),
(374, 1, 34, 2, '2012-09-22 15:45:18'),
(373, 1, 33, 1, '2012-09-22 15:45:18'),
(372, 1, 32, 2, '2012-09-22 15:45:18'),
(371, 1, 31, 1, '2012-09-22 15:45:18'),
(370, 1, 30, 2, '2012-09-22 15:45:18'),
(369, 1, 29, 2, '2012-09-22 15:45:18'),
(368, 1, 28, 2, '2012-09-22 15:45:18'),
(367, 1, 27, 1, '2012-09-22 15:45:18'),
(366, 1, 26, 1, '2012-09-22 15:45:18'),
(365, 1, 25, 2, '2012-09-22 15:45:18'),
(364, 1, 24, 1, '2012-09-22 15:45:18'),
(363, 1, 23, 1, '2012-09-22 15:45:18'),
(362, 1, 22, 1, '2012-09-22 15:45:18'),
(361, 1, 21, 1, '2012-09-22 15:45:18'),
(360, 1, 20, 1, '2012-09-22 15:45:18'),
(359, 1, 19, 2, '2012-09-22 15:45:18'),
(358, 1, 18, 2, '2012-09-22 15:45:18'),
(357, 1, 17, 1, '2012-09-22 15:45:18'),
(356, 1, 16, 1, '2012-09-22 15:45:18'),
(355, 1, 15, 1, '2012-09-22 15:45:18'),
(354, 1, 14, 2, '2012-09-22 15:45:18'),
(353, 1, 13, 1, '2012-09-22 15:45:18'),
(352, 1, 12, 2, '2012-09-22 15:45:18'),
(351, 1, 11, 1, '2012-09-22 15:45:18'),
(350, 1, 10, 1, '2012-09-22 15:45:18'),
(349, 1, 9, 2, '2012-09-22 15:45:18'),
(348, 1, 8, 1, '2012-09-22 15:45:18'),
(347, 1, 7, 2, '2012-09-22 15:45:18'),
(346, 1, 6, 1, '2012-09-22 15:45:18'),
(345, 1, 5, 2, '2012-09-22 15:45:18'),
(344, 1, 4, 1, '2012-09-22 15:45:18'),
(343, 1, 3, 2, '2012-09-22 15:45:18'),
(342, 1, 2, 1, '2012-09-22 15:45:18'),
(341, 1, 1, 1, '2012-09-22 15:45:18'),
(305, 1, 35, 0, '2012-09-22 15:38:53'),
(304, 1, 34, 0, '2012-09-22 15:38:53'),
(303, 1, 33, 0, '2012-09-22 15:38:53'),
(302, 1, 32, 0, '2012-09-22 15:38:53'),
(301, 1, 31, -1, '2012-09-22 15:38:53'),
(300, 1, 30, 1, '2012-09-22 15:38:53'),
(299, 1, 29, 2, '2012-09-22 15:38:53'),
(298, 1, 28, 0, '2012-09-22 15:38:53'),
(297, 1, 27, 0, '2012-09-22 15:38:53'),
(296, 1, 26, 1, '2012-09-22 15:38:53'),
(295, 1, 25, 2, '2012-09-22 15:38:53'),
(294, 1, 24, 1, '2012-09-22 15:38:53'),
(293, 1, 23, 2, '2012-09-22 15:38:53'),
(292, 1, 22, 2, '2012-09-22 15:38:53'),
(291, 1, 21, 2, '2012-09-22 15:38:53'),
(290, 1, 20, -2, '2012-09-22 15:38:53'),
(289, 1, 19, -2, '2012-09-22 15:38:53'),
(288, 1, 18, -1, '2012-09-22 15:38:53'),
(287, 1, 17, -2, '2012-09-22 15:38:53'),
(286, 1, 16, -2, '2012-09-22 15:38:53'),
(285, 1, 15, -2, '2012-09-22 15:38:53'),
(284, 1, 14, -1, '2012-09-22 15:38:53'),
(283, 1, 13, -1, '2012-09-22 15:38:53'),
(282, 1, 12, 0, '2012-09-22 15:38:53'),
(281, 1, 11, 0, '2012-09-22 15:38:53'),
(280, 1, 10, -1, '2012-09-22 15:38:53'),
(279, 1, 9, -1, '2012-09-22 15:38:53'),
(278, 1, 8, -1, '2012-09-22 15:38:53'),
(277, 1, 7, -2, '2012-09-22 15:38:53'),
(276, 1, 6, -2, '2012-09-22 15:38:53'),
(275, 1, 5, 1, '2012-09-22 15:38:53'),
(274, 1, 4, 2, '2012-09-22 15:38:53'),
(273, 1, 3, 1, '2012-09-22 15:38:53'),
(272, 1, 2, 1, '2012-09-22 15:38:53'),
(271, 1, 1, 2, '2012-09-22 15:38:53');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `diary`
--

CREATE TABLE IF NOT EXISTS `diary` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `userID` int(12) NOT NULL,
  `entry` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Daten für Tabelle `diary`
--

INSERT INTO `diary` (`ID`, `userID`, `entry`, `date`, `picture`) VALUES
(1, 1, 'managed to get to uni', '2012-06-01 22:00:00', ''),
(2, 1, 'met the funny oma again at Mc''Donalds', '2012-06-01 22:00:00', ''),
(3, 1, 'Trivia question of the day: aside from Yahveh, does the bible explicitly recognize the existence of other gods?', '2012-06-03 16:46:19', ''),
(4, 1, 'Hey everyone,\r\nlittle reminder: the general meeting will take place tomorrow!\r\nThe meeting will take place in DE03 (UZA4). After the meetings, tables are reserved at Summerstage.', '2012-06-03 16:46:19', ''),
(9, 1, 'that I went jogging AND to the gym today (and in the end without getting headache)', '2012-06-03 22:17:56', ''),
(10, 1, 'used HAIRSPRAY today!! how awesome my hair looks now', '2012-06-04 22:23:27', ''),
(11, 1, 'MIB3 was fun', '2012-06-06 23:26:11', ''),
(12, 1, 'had a nice park meeting with Sylwia. She also helped me to understand what matter in real friendships. It felt good to socialize a bit :-)', '2012-06-07 19:38:02', ''),
(13, 1, 'it was nice to meet Doina today after haven''t seen her for a long time', '2012-06-08 19:06:11', ''),
(14, 1, 'Germany: first win against Portugal!!', '2012-06-09 21:39:00', ''),
(15, 1, 'Djoker comeback unbelievable. but rain delay probably not good for him. to be continued tmrw', '2012-06-10 18:47:45', ''),
(16, 1, 'low expectations = the key to happiness', '2012-06-16 22:14:43', ''),
(17, 1, 'came back from the workshop. had a good time! Adriana is interesting ;-)', '2012-06-16 22:14:43', ''),
(18, 1, 'muscles are starting to be slightly visible again - motivating!', '2012-06-26 22:02:22', ''),
(19, 1, 'I do not know why, but I really had a date with Adriana and we made out - wow!', '2012-07-05 22:13:17', ''),
(20, 1, 'I''m happy! Adriana gives me so much confidence back, no matter how it ends. I''m feeling good these days, and who had thought that a couple of weeks ago... ;-)', '2012-07-12 19:06:58', ''),
(21, 1, 'first work week ran by so fast... lot of meetings... but so far so good :-)', '2012-08-17 20:28:39', ''),
(22, 1, 'I need to get to know this women in the office!!!!', '2012-08-30 19:53:30', ''),
(45, 1, 'today I felt amazing; confident; I even asked the waitress Paula at flanagans for her phone number. I hope I can keep up this positive attitude', '2012-09-11 09:18:44', ''),
(46, 1, 'master thesis submitted!!555', '2012-09-13 09:19:14', ''),
(62, 1, 'I''m so excited to have my date with Eva! She is really cute and nice!! But let''s just enjoy the day and then we''ll see.', '2013-01-17 22:46:10', ''),
(61, 1, 'I don''t need a girl to be happy!', '2012-11-14 23:12:07', ''),
(60, 1, 'surgery survived...now we''ll see... so far it looks good!', '2012-10-13 12:42:44', ''),
(183, 1, 'Tell yourself something nice about the day', '2013-06-09 19:08:54', '4fd3d4f49126b07484fd60d987aed237.jpg'),
(65, 1, 'Let''s get the PUA thing started!', '2013-02-03 12:48:07', ''),
(66, 1, 'I know myself! I''m introverted and prefer to spend time with myself. I''m on the right track!', '2013-02-09 10:36:57', ''),
(67, 1, 'http://www.airpano.com woohoo!', '2013-02-09 14:08:35', ''),
(68, 1, 'Candida diet day 1: so far so good, ate salad from vapiano (5 mini pieces of meat - ridiculous, and I had to remove the cheese), and fish later. prepared my breakfast for tomorrow (eggs + vegetables) 29 days to go :-)', '2013-05-01 21:26:58', ''),
(69, 1, 'Candida diet day 2: horrible headache!! Feeling energyless as expected. but tongue gets better and spill test was positive so I need to stay positive!', '2013-05-03 14:12:42', ''),
(70, 1, 'Candida diet day 3: feel better, but I ate chicken mcnuggets :/ 30g kohlenhydrate is probably too much I guess. Need to have self-made meat only. tmrw go to passau to get my drugs, ridiculous...', '2013-05-03 14:16:28', ''),
(184, 1, 'woohoo, happify first release version seems managable after all. keep on going!', '2013-06-10 21:58:32', ''),
(166, 1, 'Tell yourself something nice about the day: http://www.script-tutorials.com/pinterest-like-script-step-2/ jooo, check it out999jkljjhkhjkhj', '2013-06-08 19:54:35', ''),
(170, 1, 'Tell yourself something nice about the day', '2013-06-08 22:26:59', '9c4a43758838d43428943eaeee5fc320.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `distorted_thoughts`
--

CREATE TABLE IF NOT EXISTS `distorted_thoughts` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `thought` varchar(250) DEFAULT NULL,
  `distortion` varchar(84) DEFAULT NULL,
  `response` varchar(250) DEFAULT NULL,
  `action` varchar(250) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `distorted_thoughts`
--

INSERT INTO `distorted_thoughts` (`ID`, `userID`, `thought`, `distortion`, `response`, `action`, `status`, `created`) VALUES
(1, 1, 'No girl likes me.', 'Overgeneralization\nJumping to conclusions', 'Yes, overly good-looking girls are not attracted by you. But there are others. You will find the right one for you. Be patient.', 'Meet girls', '1', '2013-06-04 00:00:00'),
(2, 1, 'I''m ugly.', 'Magnification\nLabelling\nDisqualifying the positive\nMental filter', 'Yes, you are not pretty and not attractive to most girls. But there are some who would like you. And also it is not everything. Beauty also comes from inside. Smile more!', 'Mirror training', '2', '2013-05-24 00:00:00'),
(3, 1, 'I will never kiss a girl again.', 'Overgeneralization\nAll or nothing', 'That is up to you, idiot. Just go out and kiss one. She can refuse afterwards, but you can kiss her.', 'Kiss girls', '1', '2013-05-20 00:00:00'),
(4, 1, 'I''m boring.', 'Emotional reasoning\nDisqualifying the positive\nMagnification\nLabelling\nMental filter', 'No, you are just someone who is more intellectual. People need to know you to find out that you are not boring. So give them the chance to know you better. But stay yourself', 'Be yourself', '1', '0000-00-00 00:00:00'),
(5, 1, 'I failed completely with Kristina', 'All or nothing\nMagnification\nPersonalization', 'True. So learn from your mistakes!!!! And also, don''t blame yourself completely. She did more mistakes than u did. I hope it is a lesson for your future.', 'Forget her! She does not deserve you! And don''t make the same mistakes again', '1', '2012-11-14 00:00:00'),
(6, 1, 'Kristina is all I ever wanted', 'All or nothing\nMagnification\nMental filter\n', 'Yes, it''s true, she is the one you adored the most so far from her looks. But she is far from perfect!! You had only troubles with her. She hurt u often!! So why do u want her? There are others out there!!', 'Forget her! She does not deserve you! And don''t make the same mistakes again', '0', '0000-00-00 00:00:00'),
(7, 1, 'I''m not sociable.', 'Overgeneralization\nLabelling\nDisqualifying the positive', 'You are just less sociable than others. You like interesting 1-to-1 discussions more than dancing on a dancefloor in a group. That is absolutely ok. Find like-minded people you can share your passion with.', 'Don''t party and have more 1-to-1 meetings with people', '0', '0000-00-00 00:00:00'),
(8, 1, 'I''m not normal when I don''t party', 'Emotional reasoning\nDisqualifying the positive\nJumping to conclusions', 'You are just less sociable than others. You like interesting 1-to-1 discussions more than dancing on a dancefloor in a group. That is absolutely ok. Find like-minded people you can share your passion with.', 'Don''t party and have more 1-to-1 meetings with people', '0', '0000-00-00 00:00:00'),
(9, 1, 'My jobs do not satisfy me', 'Emotional reasoning\nDisqualifying the positive', 'Yes, you need to continue to find your pursue in life. This is hard, so be patient, it will come.', 'Keep on going...', '0', '0000-00-00 00:00:00'),
(10, 1, 'I feel alone / I''m alone', 'Disqualifying the positive\nMagnification', 'It''s not quite true. Yes, you do have a smaller friend circle. But u do go out with them from time to time. Appreciate this time more. And meet new people.', 'Meet people', '0', '0000-00-00 00:00:00');

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
(1, 1, 'Build Happify.me', '', 40, '2012-01-16 00:00:00', '0000-00-00 00:00:00', 0),
(2, 1, 'Fix your phimose', '', 100, '2012-08-02 00:00:00', '2013-06-15 21:50:01', 0),
(3, 1, 'Talk to at least 20 girls until the end of the year', '', 0, '2012-09-07 00:00:00', '0000-00-00 00:00:00', 0),
(4, 1, 'Speak slower consistently', '', 50, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(5, 1, 'Speak more clearly and louder consistently', '', 40, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(6, 1, 'Smile consistently', '', 40, '2012-09-11 00:00:00', '0000-00-00 00:00:00', 0),
(7, 1, 'Healthy nutrition!!!', 'Gesunde Ernährung!!!', 50, '2012-09-23 18:12:34', '0000-00-00 00:00:00', 0),
(26, 1, 'Start to sarge women! Start to sarge women! Start to sarge women! Start to sarge women! Start to sarge women! Start to sarge women! Start to sarge women!', '', 0, '2013-02-03 13:48:44', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `happifiers`
--

CREATE TABLE IF NOT EXISTS `happifiers` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `lastdone` datetime NOT NULL,
  `number` int(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `happifiers`
--

INSERT INTO `happifiers` (`ID`, `userID`, `activity`, `description`, `lastdone`, `number`) VALUES
(1, 1, 'To go to the gym', '', '2012-07-25 00:00:00', 0),
(2, 1, 'To play tennis', '', '2012-07-10 00:00:00', 0),
(3, 1, 'To go to the cinema', '', '2012-08-02 00:00:00', 0),
(4, 1, 'To read a book', '', '2012-09-16 00:00:00', 0),
(5, 1, 'To play computer games', '', '2012-09-04 00:00:00', 0),
(6, 1, 'To create meaningful, awesome websites', '', '2012-09-16 00:00:00', 0),
(7, 1, 'To play poker, also in the casino', '', '2012-06-16 00:00:00', 0),
(8, 1, 'To play bowling', '', '2012-07-19 00:00:00', 0),
(9, 1, 'To go hiking', '', '2012-08-28 00:00:00', 0),
(10, 1, 'To go jogging', '', '2012-09-16 00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rules`
--

CREATE TABLE IF NOT EXISTS `rules` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `rule` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `number` int(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `rules`
--

INSERT INTO `rules` (`ID`, `rule`, `description`, `number`) VALUES
(1, 'Be yourself', '', 1),
(2, 'Your past does not matter at all', '', 2),
(3, 'Do not live in the past or in the future, live in the present', '', 3),
(4, 'Do not be nice to others as long as you are not nice to yourself', 'Why should you love someones else more than you love yourself?', 4),
(5, 'Work on your dreams', '', 5),
(6, 'Do what you love and what you are passionate about', '', 6),
(7, 'Avoid negative thoughts, think only positively', '', 7),
(8, 'Be healthy', 'sports & food (tea)', 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `UserToken` varchar(32) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPass` varchar(32) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(30) NOT NULL,
  `gender` enum('m','w') NOT NULL,
  `birthday` date NOT NULL,
  `nationality` varchar(5) NOT NULL,
  `residence` varchar(5) NOT NULL,
  `description` varchar(200) NOT NULL,
  `personal_goal` varchar(200) NOT NULL,
  `flash_categories_visible` set('1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `fb_ID` bigint(20) NOT NULL,
  `fb_name` varchar(50) NOT NULL,
  `sections_public` set('1','2','3','4','5') NOT NULL,
  `language` varchar(2) NOT NULL,
  `last_online_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trigger_friends` int(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(32) NOT NULL,
  `diary_start_month` smallint(2) NOT NULL,
  `diary_start_year` mediumint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cookie` (`UserToken`,`UserPass`),
  UNIQUE KEY `UserEmail` (`UserEmail`),
  KEY `logon` (`UserEmail`,`UserPass`),
  KEY `fb_ID` (`fb_ID`),
  KEY `token` (`UserToken`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=546 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`ID`, `UserToken`, `UserEmail`, `UserPass`, `RegDate`, `firstname`, `gender`, `birthday`, `nationality`, `residence`, `description`, `personal_goal`, `flash_categories_visible`, `fb_ID`, `fb_name`, `sections_public`, `language`, `last_online_time`, `trigger_friends`, `activation_code`, `diary_start_month`, `diary_start_year`) VALUES
(1, 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 'stefan@happify.com', '3a2b37336664ede535b20c76b315a0f1', '0000-00-00 00:00:00', 'Stefan', 'm', '1985-06-18', 'DE', 'DE', 'öäö222', '', '1,2,3,4', 675992449, 'Stefan Richter', '1,2,3,5', 'EN', '2013-06-16 00:17:07', 0, '', 8, 2012),
(227, '4711048', 'Hannah Acquah', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 4711048, 'Hannah Acquah', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(228, '13612033', 'Mazin Hassan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 13612033, 'Mazin Hassan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(229, '29613155', 'Brett Neu', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 29613155, 'Brett Neu', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(230, '61308565', 'Soti Rolo', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 61308565, 'Soti Rolo', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(231, '61309025', 'Isaac Newton Acquah', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 61309025, 'Isaac Newton Acquah', '', '', '0000-00-00 00:00:00', 1, '', 0, 0),
(232, '188800488', 'Lalo Quintero', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 188800488, 'Lalo Quintero', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(233, '222305691', 'Marius Karabaczek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 222305691, 'Marius Karabaczek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(234, '223300517', 'Yara Bevaart', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 223300517, 'Yara Bevaart', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(236, '506363885', 'xyz@wiflash.com', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 506363885, 'Alina Mihali', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(237, '510099348', 'Claire Wintle', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 510099348, 'Claire Wintle', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(238, '513415204', 'Felix Jung', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 513415204, 'Felix Jung', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(239, '516603614', 'Jo Felton', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 516603614, 'Jo Felton', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(240, '518114787', 'Martin Staude', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 518114787, 'Martin Staude', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(241, '521386268', 'Julien Mottet', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 521386268, 'Julien Mottet', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(242, '531582261', 'Flo Fuchs', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 531582261, 'Flo Fuchs', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(243, '544528321', 'Pascal Janitschke', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 544528321, 'Pascal Janitschke', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(244, '545000401', 'Hannes Pfister', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 545000401, 'Hannes Pfister', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(245, '549010660', 'Stephan Ludwig Wirries', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 549010660, 'Stephan Ludwig Wirries', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(246, '550690209', 'Christina Mayr', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 550690209, 'Christina Mayr', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(247, '558070318', 'Johanna Schodl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 558070318, 'Johanna Schodl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(248, '560552789', 'Martin Hirschvogel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 560552789, 'Martin Hirschvogel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(249, '561436876', 'Jens Soeldner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 561436876, 'Jens Soeldner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(250, '568608180', 'Petra Lehmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 568608180, 'Petra Lehmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(251, '582467256', 'Andrea Gnad', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 582467256, 'Andrea Gnad', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(252, '591444876', 'Rudolf Klein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 591444876, 'Rudolf Klein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(253, '597210697', 'Tobias Haeusser', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 597210697, 'Tobias Haeusser', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(254, '611278448', 'Ivana Sijan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 611278448, 'Ivana Sijan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(255, '618159288', 'Dominik Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 618159288, 'Dominik Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(256, '618828168', 'Jakob Maier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 618828168, 'Jakob Maier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(257, '624760814', 'Yasmin Schmelzer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 624760814, 'Yasmin Schmelzer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(258, '628724846', 'Fabi Zweitausend', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 628724846, 'Fabi Zweitausend', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(259, '636984129', 'Klose Bastian', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 636984129, 'Klose Bastian', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(260, '638995067', 'Elvin Sule', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 638995067, 'Elvin Sule', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(261, '645439049', 'Robert Grosse', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 645439049, 'Robert Grosse', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(262, '652326064', 'Eva Holíková', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 652326064, 'Eva Holíková', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(263, '661504447', 'Daniel Stitz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 661504447, 'Daniel Stitz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(264, '665110751', 'Anne Schröder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 665110751, 'Anne Schröder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(265, '665563504', 'Franziska Herberg', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 665563504, 'Franziska Herberg', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(266, '666643040', 'Martin Ebner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 666643040, 'Martin Ebner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(267, '670360599', 'Karen Murillo', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 670360599, 'Karen Murillo', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(268, '672529261', 'Jacqueline Reid', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 672529261, 'Jacqueline Reid', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(269, '673048159', 'Faruk Kapetanovic', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 673048159, 'Faruk Kapetanovic', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(270, '674234172', 'Christoph Mergner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 674234172, 'Christoph Mergner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(271, '685086895', 'Lukas Hochgerner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 685086895, 'Lukas Hochgerner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(272, '694382551', 'Alexander Trinkmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 694382551, 'Alexander Trinkmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(273, '699205152', 'Anna ForstBattaglia', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 699205152, 'Anna ForstBattaglia', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(274, '702271997', 'Doina Bors', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 702271997, 'Doina Bors', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(275, '706531296', 'Susi Vockenhuber', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 706531296, 'Susi Vockenhuber', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(276, '730369845', 'Harald Augeneder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 730369845, 'Harald Augeneder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(277, '731305392', 'Fani Christofi', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 731305392, 'Fani Christofi', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(278, '731937545', 'Susanne Schlicht', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 731937545, 'Susanne Schlicht', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(279, '732799964', 'Miguel Trigueiros', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 732799964, 'Miguel Trigueiros', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(280, '733378858', 'Johannes Rüby', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 733378858, 'Johannes Rüby', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(281, '745857128', 'André Häberlein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 745857128, 'André Häberlein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(282, '752559988', 'Sebastian Knabl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 752559988, 'Sebastian Knabl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(283, '760300494', 'Pablo Piñeiro López', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 760300494, 'Pablo Piñeiro López', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(284, '804159775', 'Dina F. Kristina', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 804159775, 'Dina F. Kristina', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(285, '805730205', 'Geraldine Grosch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 805730205, 'Geraldine Grosch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(286, '811810586', 'Elisabeth Danninger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 811810586, 'Elisabeth Danninger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(287, '827825216', 'Tino Schröder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 827825216, 'Tino Schröder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(288, '828324909', 'Judith Schwarz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 828324909, 'Judith Schwarz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(289, '863235564', 'Bea Alústiza', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 863235564, 'Bea Alústiza', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(290, '1003642913', 'Martin Technau', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1003642913, 'Martin Technau', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(291, '1016415453', 'Marcus Toco-Loco', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1016415453, 'Marcus Toco-Loco', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(292, '1019001072', 'Michael Scheremet', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1019001072, 'Michael Scheremet', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(293, '1030465930', 'Johannes Huebner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1030465930, 'Johannes Huebner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(294, '1030755904', 'Johannes Stefan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1030755904, 'Johannes Stefan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(295, '1032414140', 'Tanja Sonntag', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1032414140, 'Tanja Sonntag', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(296, '1032558218', 'David Hlavacek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1032558218, 'David Hlavacek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(297, '1038331228', 'Sara Kaczmarek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1038331228, 'Sara Kaczmarek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(298, '1040844880', 'Lu Sa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1040844880, 'Lu Sa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(299, '1044370140', 'Tino Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1044370140, 'Tino Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(300, '1047232098', 'Isi Kappel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1047232098, 'Isi Kappel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(301, '1079138956', 'Christin Florence', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1079138956, 'Christin Florence', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(302, '1107251577', 'Marcel Rausendorff', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1107251577, 'Marcel Rausendorff', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(303, '1134776851', 'Daniela Scheidhammer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1134776851, 'Daniela Scheidhammer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(304, '1139102080', 'Henrik Zimmermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1139102080, 'Henrik Zimmermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(305, '1140185531', 'Michaela Thöress', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1140185531, 'Michaela Thöress', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(306, '1147868018', 'Livia Staudinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1147868018, 'Livia Staudinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(307, '1151023138', 'Fabian Oberhofer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1151023138, 'Fabian Oberhofer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(308, '1155841098', 'Jennifer Thornton', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1155841098, 'Jennifer Thornton', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(309, '1161636328', 'An Di', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1161636328, 'An Di', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(310, '1175641856', 'Maximilian Schuessler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1175641856, 'Maximilian Schuessler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(311, '1178274401', 'Katharina Kerres', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1178274401, 'Katharina Kerres', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(312, '1187548297', 'Norbert Mattern', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1187548297, 'Norbert Mattern', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(313, '1192740133', 'Toby Berster', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1192740133, 'Toby Berster', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(314, '1206705382', 'Annika Habermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1206705382, 'Annika Habermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(315, '1211034346', 'Kathrin Hagenbucher', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1211034346, 'Kathrin Hagenbucher', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(316, '1221774508', 'Andreas Fischer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1221774508, 'Andreas Fischer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(317, '1230613602', 'Teresa Chicharro Antolín', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1230613602, 'Teresa Chicharro Antolín', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(318, '1244707886', 'Anita Kemptner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1244707886, 'Anita Kemptner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(319, '1257156185', 'Bianca Anna Arnold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1257156185, 'Bianca Anna Arnold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(320, '1268183822', 'Doris Wanzenboeck', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1268183822, 'Doris Wanzenboeck', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(321, '1268967509', 'Florence Boulenger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1268967509, 'Florence Boulenger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(322, '1305556255', 'Caro Wa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1305556255, 'Caro Wa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(323, '1308460958', 'Cosima Meyer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1308460958, 'Cosima Meyer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(324, '1324862722', 'Saskia Mailer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1324862722, 'Saskia Mailer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(325, '1338275180', 'Peter Fritsch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1338275180, 'Peter Fritsch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(326, '1363772166', 'Daniel Lupp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1363772166, 'Daniel Lupp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(327, '1368054280', 'Gerrit Seidel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1368054280, 'Gerrit Seidel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(328, '1389760432', 'Caro Huck', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1389760432, 'Caro Huck', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(329, '1410872110', 'Marina Ulrich', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1410872110, 'Marina Ulrich', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(330, '1416410333', 'Christian Van Christian', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1416410333, 'Christian Van Christian', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(331, '1423470021', 'Alexander Hektor', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1423470021, 'Alexander Hektor', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(332, '1437406500', 'Anna-Katharina Praetorius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1437406500, 'Anna-Katharina Praetorius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(333, '1452675873', 'Melinda Appel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1452675873, 'Melinda Appel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(334, '1466498370', 'Manuel Johannes Medinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1466498370, 'Manuel Johannes Medinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(335, '1469974731', 'Elvira Trüe', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1469974731, 'Elvira Trüe', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(336, '1478687555', 'Robert Czafik', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1478687555, 'Robert Czafik', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(337, '1482436942', 'Marisa Schaffer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1482436942, 'Marisa Schaffer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(338, '1491571418', 'Saskia Thieme', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1491571418, 'Saskia Thieme', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(339, '1492501952', 'Erik Harloff', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1492501952, 'Erik Harloff', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(340, '1500393102', 'Andrea Schorr', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1500393102, 'Andrea Schorr', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(341, '1504124897', 'Annelie Rossbach', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1504124897, 'Annelie Rossbach', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(342, '1512797255', 'Dora Tüz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1512797255, 'Dora Tüz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(343, '1517804158', 'Désirée Biedermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1517804158, 'Désirée Biedermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(344, '1519856486', 'Simon Beez', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1519856486, 'Simon Beez', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(345, '1528158065', 'Barbara Anita P', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1528158065, 'Barbara Anita P', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(346, '1535897417', 'Sandra Zulehner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1535897417, 'Sandra Zulehner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(347, '1537225461', 'Melanie Schwarz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1537225461, 'Melanie Schwarz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(348, '1539463846', 'Thor Sten', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1539463846, 'Thor Sten', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(349, '1548265698', 'Stephanie Schrembs', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1548265698, 'Stephanie Schrembs', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(350, '1580280847', 'Lea Erlbacher', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1580280847, 'Lea Erlbacher', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(351, '1607666341', 'Maddin Hella', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1607666341, 'Maddin Hella', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(352, '1643821987', 'Alexandra Kokot', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1643821987, 'Alexandra Kokot', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(353, '1654203720', 'Mami Egawa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1654203720, 'Mami Egawa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(354, '1655583277', 'Susanne Franz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1655583277, 'Susanne Franz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(355, '1663155101', 'Alessandra Bianca', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1663155101, 'Alessandra Bianca', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(356, '1663316214', 'Dorothee Rapsch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1663316214, 'Dorothee Rapsch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(357, '1684737636', 'Miguel da Silva', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1684737636, 'Miguel da Silva', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(358, '1750759078', 'Andreas Kuhn', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1750759078, 'Andreas Kuhn', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(359, '1764796018', 'Tim Gradel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1764796018, 'Tim Gradel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(360, '1781378051', 'David Ben Josef', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1781378051, 'David Ben Josef', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(361, '1818832599', 'Laura Straub', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1818832599, 'Laura Straub', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(362, '100000002050606', 'Kati Lange', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000002050606, 'Kati Lange', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(363, '100000007789469', 'Мария Пиргова', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000007789469, 'Мария Пиргова', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(364, '100000010929590', 'Viola Frank', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000010929590, 'Viola Frank', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(365, '100000034343363', 'Simon Niedermeier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000034343363, 'Simon Niedermeier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(366, '100000080895458', 'Harry Kokesch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000080895458, 'Harry Kokesch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(367, '100000085113896', 'Daniel Routschka', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000085113896, 'Daniel Routschka', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(368, '100000093977731', 'Jasmin Pol', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000093977731, 'Jasmin Pol', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(369, '100000117878844', 'Carina Ruppert', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000117878844, 'Carina Ruppert', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(370, '100000118453340', 'Elisabeth Praetorius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000118453340, 'Elisabeth Praetorius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(371, '100000121304899', 'Daniel Nagel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000121304899, 'Daniel Nagel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(372, '100000125351450', 'Andrea Patla', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000125351450, 'Andrea Patla', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(373, '100000170438919', 'Jens Meier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000170438919, 'Jens Meier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(374, '100000179167352', 'Primat Der Vernunft', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000179167352, 'Primat Der Vernunft', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(375, '100000186974205', 'Kerstin Pol', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000186974205, 'Kerstin Pol', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(376, '100000202814034', 'Kathrin Stock', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000202814034, 'Kathrin Stock', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(377, '100000205180286', 'Stephanie Tschernitz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000205180286, 'Stephanie Tschernitz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(378, '100000216678170', 'Jule Be', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000216678170, 'Jule Be', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(379, '100000268216083', 'Peter Ziß', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000268216083, 'Peter Ziß', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(380, '100000283346874', 'Bea Mue', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000283346874, 'Bea Mue', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(381, '100000316994194', 'Olga Tolstikhina', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000316994194, 'Olga Tolstikhina', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(382, '100000318736708', 'Karolin Dingens', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000318736708, 'Karolin Dingens', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(383, '100000319542995', 'Dominik Friedel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000319542995, 'Dominik Friedel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(384, '100000355013314', 'Florian Schmidbauer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000355013314, 'Florian Schmidbauer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(385, '100000356622507', 'Matthias Lutz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000356622507, 'Matthias Lutz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(386, '100000376922096', 'Sanne Mäh', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000376922096, 'Sanne Mäh', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(387, '100000386753929', 'Caroline Cathérine', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000386753929, 'Caroline Cathérine', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(388, '100000391839703', 'Verena Gilzinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000391839703, 'Verena Gilzinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(389, '100000401877282', 'Mona Boehm', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000401877282, 'Mona Boehm', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(390, '100000411998686', 'Jan Häberlein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000411998686, 'Jan Häberlein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(391, '100000439765606', 'Thomas Mladek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000439765606, 'Thomas Mladek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(392, '100000457712552', 'Georg Terlecki', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000457712552, 'Georg Terlecki', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(393, '100000461773575', 'Manu Fox', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000461773575, 'Manu Fox', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(394, '100000466443361', 'Christina Patscheider', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000466443361, 'Christina Patscheider', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(395, '100000470956458', 'Dominik Leroch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000470956458, 'Dominik Leroch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(396, '100000484420303', 'Simon Can', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000484420303, 'Simon Can', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(397, '100000486915326', 'Alexandra Bc', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000486915326, 'Alexandra Bc', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(398, '100000529963006', 'Alexander Kreul', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000529963006, 'Alexander Kreul', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(399, '100000530450394', 'Anastasija Terebkova', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000530450394, 'Anastasija Terebkova', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(400, '100000574537590', 'Martin Junger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000574537590, 'Martin Junger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(401, '100000606318282', 'So Phiaa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000606318282, 'So Phiaa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(402, '100000607879668', 'Katrin Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000607879668, 'Katrin Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(403, '100000608415115', 'Daniel Meixner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000608415115, 'Daniel Meixner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(404, '100000629367755', 'Christian Bach', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000629367755, 'Christian Bach', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(405, '100000643194798', 'Doris Schüssler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000643194798, 'Doris Schüssler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(406, '100000657376063', 'Matthias Lederer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000657376063, 'Matthias Lederer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(407, '100000671284782', 'Julia He', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000671284782, 'Julia He', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(408, '100000680851487', 'Käptn Nobbi', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000680851487, 'Käptn Nobbi', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(409, '100000683616246', 'Matthias Ewald', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000683616246, 'Matthias Ewald', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(410, '100000698224682', 'Peter Batz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000698224682, 'Peter Batz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(411, '100000712232001', 'Missi Mathe', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000712232001, 'Missi Mathe', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(412, '100000712245309', 'Maria Arold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000712245309, 'Maria Arold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(413, '100000728741385', 'Mark UsLa Skonius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000728741385, 'Mark UsLa Skonius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(414, '100000763043535', 'Anja Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000763043535, 'Anja Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(415, '100000783663903', 'Alexander Sankowski', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000783663903, 'Alexander Sankowski', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(416, '100000788142694', 'Valerie Kleeberger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000788142694, 'Valerie Kleeberger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(417, '100000807861223', 'Oliver Gawlik', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000807861223, 'Oliver Gawlik', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(418, '100000835003358', 'Kerstin Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000835003358, 'Kerstin Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(419, '100000851798080', 'Hanna Auf Der Erbse', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000851798080, 'Hanna Auf Der Erbse', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(420, '100000901367860', 'Andrea Rasp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000901367860, 'Andrea Rasp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(421, '100000927008110', 'Marc Sippel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000927008110, 'Marc Sippel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(422, '100000984669302', 'Manuel Bößenecker', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000984669302, 'Manuel Bößenecker', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(423, '100001028705214', 'Christina Nelson', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001028705214, 'Christina Nelson', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(424, '100001052281764', 'Poli Tiker', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001052281764, 'Poli Tiker', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(425, '100001081564768', 'Alexander Popp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001081564768, 'Alexander Popp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(426, '100001219663645', 'Peter Galiger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001219663645, 'Peter Galiger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(427, '100001223796425', 'Patrick Pickelmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001223796425, 'Patrick Pickelmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(428, '100001274533506', 'Nicole Haßlauer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001274533506, 'Nicole Haßlauer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(429, '100001275986436', 'Vera Maja', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001275986436, 'Vera Maja', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(430, '100001287920161', 'Mathias Kohl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001287920161, 'Mathias Kohl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(431, '100001324862397', 'Christian Boesch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001324862397, 'Christian Boesch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(432, '100001375174066', 'Stefan Gerber', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001375174066, 'Stefan Gerber', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(433, '100001382434350', 'Sebastian Arnecke', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001382434350, 'Sebastian Arnecke', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(434, '100001409583539', 'Franziska Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001409583539, 'Franziska Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(435, '100001409911358', 'Thomas Neuhof', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001409911358, 'Thomas Neuhof', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(436, '100001427003854', 'DerHannes Derkannes', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001427003854, 'DerHannes Derkannes', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(437, '100001446923579', 'Stef An', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001446923579, 'Stef An', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(438, '100001569750446', 'Shisha Light', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001569750446, 'Shisha Light', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(439, '100001575792111', 'Philipp VVinter', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001575792111, 'Philipp VVinter', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(440, '100001613961234', 'Simon Algegenbertig', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001613961234, 'Simon Algegenbertig', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(441, '100001615782309', 'Mische Schrist', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001615782309, 'Mische Schrist', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(442, '100001623873345', 'Harald Biegel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001623873345, 'Harald Biegel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(443, '100001638025298', 'Brin Chen', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001638025298, 'Brin Chen', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(444, '100001680568802', 'Marion Haeckler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001680568802, 'Marion Haeckler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(445, '100001694951910', 'Udo Brehm', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001694951910, 'Udo Brehm', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(446, '100001709670746', 'Ivan Aleksandrov', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001709670746, 'Ivan Aleksandrov', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(447, '100001791395982', 'Daniel Mann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001791395982, 'Daniel Mann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(448, '100001805203198', 'Martin Goll', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001805203198, 'Martin Goll', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(449, '100001840412388', 'Christopher Klausnitzer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001840412388, 'Christopher Klausnitzer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(450, '100001985733821', 'Antonia Semmert', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001985733821, 'Antonia Semmert', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(451, '100002199306466', 'Ki Ka', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100002199306466, 'Ki Ka', '', '', '0000-00-00 00:00:00', 0, '', 0, 0),
(452, '6db7427c118fa786c95a61fd5460a614', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '65320ea9fe13f531f752611b7bc59b07', 0, 0),
(454, '557cde96ef4154ef9b7e6a6b3ed1dba2', 'testuser@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '737c24528775eeaa685e90622a38727b', 0, 0),
(455, '957ea09b87f72e670d2a2f84b1e8e6de', 'test2@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '9e0d44a66e400f582ead8a38ed7e0a4f', 0, 0),
(456, 'bc24142e9411c60f878b741c9bf30c2a', 'test3@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '3da07eceaeb847944d3c6212f431eaf8', 0, 0),
(457, '36ccfadca83ae062ee0a052f981d6efd', 'test4@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '91a9bca5022f9da39ad30036e3a5cd37', 0, 0),
(458, 'ab1cf6b0cca44ad67a91d6e8eeb56747', 'fgdfgd@hhhiin', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '894dfc34f2be918e2beebceca667427c', 0, 0),
(470, '026a1ccd132cc10258efe411787076f0', 'stefan5@wiflash.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '18703b536e94f1e71526988b71ffec9c', 0, 0),
(472, 'da038e1e46dfd8c826043f7c79833329', 'stefan6@wiflash.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '3d08ec21ec785258d6fb36a60c8d097d', 0, 0),
(474, 'e7990074c61e2aa3226a12e1e01dd19e', 'stefan@wiflashe.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'dec731a4b1db937910fa9f9af45bbef8', 0, 0),
(475, '688e92d09bba4e4dfcb28da51fba6d16', 'fghfhf@jhjkhkh', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '69e3037f5c827fa540ea8daa4bad8535', 0, 0),
(476, '27c34c3e751e960056c6a634a1549b00', 'fghfhf@jhjkhkh.com', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'a1f5916d015cf40f968de5df1aa090c5', 0, 0),
(477, 'edc817ccf1c6e397c1c81b7c2b68e4fb', 'hjkh@jkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '4ab51b7faa1553779bd765a8fc48c885', 0, 0),
(478, '16e926fe77d737f5777267688399b2b1', 'hjkhf@jkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '47a3fc5014b3943b8c6fa38cc8ee83ba', 0, 0),
(479, '9d9daf530efd4e53538f809d6169deb7', 'hghjg@hjkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '0ffc2662705e21ca7f241ddea42d9d78', 0, 0),
(488, '26b9c5c1affd37b5e6ef36fb4350e765', 'fghfhf@jhjkhkh.comm', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '1704ec1810767466993f4dcb1312ad5b', 0, 0),
(492, '15b065f500d9eca59e98e0d0cd0e3d37', 'fghfhf@jhjkhkh.comn', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7387d4443990823422a96faa9f282451', 0, 0),
(493, '0476444f714696e3728d2d57c49a681c', 'fghf@ghjg.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'c6ef90b46e037516851a8383478538cb', 0, 0),
(498, '798c745a863f55a9c7e49a1906df8caa', 'stefan@wiflash.com6', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'df25c685c6b32752171f3d4a652343a0', 0, 0),
(499, '6cd746d3f0d08f3a74616efa214cbbf4', 'stefan@wiflash.comg', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '67f2b966389724a86024505dcace35b9', 0, 0),
(500, '32fb6bf95ffd3176e100a0036558623e', 'stefan@wiflash.comh', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6ae91af7d37d010e3976519a9825d49e', 0, 0),
(503, '37648a23076286bfc16e840861497170', 'stefan@wiflash.comgg', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'df5d42bfac419016568984a2ad07d919', 0, 0),
(504, '2d92d4128acd66ff1c0a10fa581f746f', 'stefan@wiflash.comb', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'fc20e0c45e2d9dc9d3a39dd81f5162fd', 0, 0),
(505, 'd4e88c080eba8f595f65e09167893ca9', 'stefan@wiflash.coms', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7a4eee16ac84d9f7616d809618625bd0', 0, 0),
(506, '96134f0514017c98db08150775662254', 'stefan@wiflash.comr', '84a9de180e0ea617561ae8abb256084f', '2011-08-22 23:21:15', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6d1403ebde5a02e347efff5c94153ec5', 0, 0),
(507, '50bdacec67c3db943c1eba8ac39a9b69', 'stefan@wiflash.come', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:27:44', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '8f5ede1cb71a454f6116057208843a7a', 0, 0),
(508, '13140567474e52ea2b23feb', 'tester@test,de', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:45:47', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '814cf24d27bc82ecdb6bc7ec80548da4', 0, 0),
(509, '13140570694e52eb6df164f', 'stefan@wiflash.comhh', 'd40c2c1557cdcb1f10ac8a599a875d5c', '2011-08-22 23:51:09', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'd708b074b40e000b94e9e274758acaf7', 0, 0),
(510, '13140575844e52ed70736d2', 'stefan@wiflash.comeee', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:59:44', '', 'm', '1956-07-06', 'AS', 'AO', '', '', '', 0, '', '', 'en', '2011-08-23 11:12:17', 0, '', 0, 0),
(511, '13140603364e52f830b8c4e', 'stefan@wiflash.comxx', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-23 00:45:36', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7ed354cf82624fa49cbd136c33f38f6d', 0, 0),
(512, 'huih', 'dd', 'huih', '2012-09-01 18:31:46', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0),
(513, 'huih2', 'dd2', 'huih', '2012-09-01 18:35:30', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0),
(514, 'huih3', 'dd3', 'huih', '2012-09-01 18:36:06', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0),
(515, '1346524669504255fd16610', 'huih', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:37:49', 'ghfghf', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '31ba998d3425f9839b707fc53cb1e6aa', 0, 0);
INSERT INTO `users` (`ID`, `UserToken`, `UserEmail`, `UserPass`, `RegDate`, `firstname`, `gender`, `birthday`, `nationality`, `residence`, `description`, `personal_goal`, `flash_categories_visible`, `fb_ID`, `fb_name`, `sections_public`, `language`, `last_online_time`, `trigger_friends`, `activation_code`, `diary_start_month`, `diary_start_year`) VALUES
(516, '134652470750425623df2cd', 'gzuguzg', 'd41d8cd98f00b204e9800998ecf8427e', '2012-09-01 18:38:27', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '44508299c4d1c1f3460b61b040fe8893', 0, 0),
(517, '1346524787504256733c0a2', 'hjkhkjh', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:39:47', 'hjui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '13ea3959731b34e0d7d72da8fda8f90a', 0, 0),
(518, '1346525542504259666e92c', 'stefan@happify.cm', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:52:22', 'jkoii', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6f8a74f6880d7e79b8ce882ad59e27f5', 0, 0),
(545, '13469529835048df1799989', 'de.stefan.richter@gmail.com', '3a2b37336664ede535b20c76b315a0f1', '2012-09-06 17:36:23', 'jkljklj', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
