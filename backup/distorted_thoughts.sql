-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 15. Jun 2013 um 12:39
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

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
(9, 1, 'My jobs do not satisfy me', 'Emotional reasoning\nDisqualifying the positive', NULL, NULL, '0', '0000-00-00 00:00:00'),
(10, 1, 'I feel alone / I''m alone', 'Disqualifying the positive\nMagnification', 'It''s not quite true. Yes, you do have a smaller friend circle. But u do go out with them from time to time. Appreciate this time more. And meet new people.', 'Meet people', '0', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
