-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 25. Jun 2013 um 22:21
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=301 ;

--
-- Daten für Tabelle `bd_scale_results`
--

INSERT INTO `bd_scale_results` (`ID`, `userID`, `itemID`, `value`, `date`) VALUES
(25, 1, 25, 1, '2012-08-08 00:00:00'),
(24, 1, 24, 1, '2012-08-08 00:00:00'),
(23, 1, 23, 1, '2012-08-08 00:00:00'),
(22, 1, 22, 2, '2012-08-08 00:00:00'),
(21, 1, 21, 2, '2012-08-08 00:00:00'),
(20, 1, 20, 2, '2012-08-08 00:00:00'),
(19, 1, 19, 2, '2012-08-08 00:00:00'),
(18, 1, 18, 2, '2012-08-08 00:00:00'),
(17, 1, 17, 3, '2012-08-08 00:00:00'),
(16, 1, 16, 3, '2012-08-08 00:00:00'),
(15, 1, 15, 3, '2012-08-08 00:00:00'),
(14, 1, 14, 3, '2012-08-08 00:00:00'),
(13, 1, 13, 3, '2012-08-08 00:00:00'),
(12, 1, 12, 3, '2012-08-08 00:00:00'),
(11, 1, 11, 3, '2012-08-08 00:00:00'),
(10, 1, 10, 4, '2012-08-08 00:00:00'),
(9, 1, 9, 4, '2012-08-08 00:00:00'),
(8, 1, 8, 4, '2012-08-08 00:00:00'),
(7, 1, 7, 4, '2012-08-08 00:00:00'),
(6, 1, 6, 4, '2012-08-08 00:00:00'),
(5, 1, 5, 4, '2012-08-08 00:00:00'),
(4, 1, 4, 4, '2012-08-08 00:00:00'),
(3, 1, 3, 4, '2012-08-08 00:00:00'),
(2, 1, 2, 4, '2012-08-08 00:00:00'),
(1, 1, 1, 4, '2012-08-08 00:00:00'),
(50, 1, 25, 2, '2012-09-21 19:42:38'),
(49, 1, 24, 2, '2012-09-21 19:42:38'),
(48, 1, 23, 3, '2012-09-21 19:42:38'),
(47, 1, 22, 2, '2012-09-21 19:42:38'),
(46, 1, 21, 1, '2012-09-21 19:42:38'),
(45, 1, 20, 1, '2012-09-21 19:42:38'),
(44, 1, 19, 2, '2012-09-21 19:42:38'),
(43, 1, 18, 2, '2012-09-21 19:42:38'),
(42, 1, 17, 2, '2012-09-21 19:42:38'),
(41, 1, 16, 3, '2012-09-21 19:42:38'),
(40, 1, 15, 1, '2012-09-21 19:42:38'),
(39, 1, 14, 2, '2012-09-21 19:42:38'),
(38, 1, 13, 3, '2012-09-21 19:42:38'),
(37, 1, 12, 3, '2012-09-21 19:42:38'),
(36, 1, 11, 2, '2012-09-21 19:42:38'),
(35, 1, 10, 1, '2012-09-21 19:42:38'),
(34, 1, 9, 3, '2012-09-21 19:42:38'),
(33, 1, 8, 3, '2012-09-21 19:42:38'),
(32, 1, 7, 3, '2012-09-21 19:42:38'),
(31, 1, 6, 3, '2012-09-21 19:42:38'),
(30, 1, 5, 3, '2012-09-21 19:42:38'),
(29, 1, 4, 2, '2012-09-21 19:42:38'),
(28, 1, 3, 2, '2012-09-21 19:42:38'),
(27, 1, 2, 1, '2012-09-21 19:42:38'),
(26, 1, 1, 1, '2012-09-21 19:42:38'),
(75, 1, 25, 0, '2012-09-21 19:43:54'),
(74, 1, 24, 0, '2012-09-21 19:43:54'),
(73, 1, 23, 1, '2012-09-21 19:43:54'),
(72, 1, 22, 2, '2012-09-21 19:43:54'),
(71, 1, 21, 1, '2012-09-21 19:43:54'),
(70, 1, 20, 1, '2012-09-21 19:43:54'),
(69, 1, 19, 1, '2012-09-21 19:43:54'),
(68, 1, 18, 1, '2012-09-21 19:43:54'),
(67, 1, 17, 1, '2012-09-21 19:43:54'),
(66, 1, 16, 2, '2012-09-21 19:43:54'),
(65, 1, 15, 2, '2012-09-21 19:43:54'),
(64, 1, 14, 3, '2012-09-21 19:43:54'),
(63, 1, 13, 0, '2012-09-21 19:43:54'),
(62, 1, 12, 1, '2012-09-21 19:43:54'),
(61, 1, 11, 0, '2012-09-21 19:43:54'),
(60, 1, 10, 2, '2012-09-21 19:43:54'),
(59, 1, 9, 3, '2012-09-21 19:43:54'),
(58, 1, 8, 3, '2012-09-21 19:43:54'),
(57, 1, 7, 3, '2012-09-21 19:43:54'),
(56, 1, 6, 2, '2012-09-21 19:43:54'),
(55, 1, 5, 2, '2012-09-21 19:43:54'),
(54, 1, 4, 2, '2012-09-21 19:43:54'),
(53, 1, 3, 2, '2012-09-21 19:43:54'),
(52, 1, 2, 1, '2012-09-21 19:43:54'),
(51, 1, 1, 1, '2012-09-21 19:43:54'),
(100, 1, 25, 0, '2012-09-21 19:44:35'),
(99, 1, 24, 0, '2012-09-21 19:44:35'),
(98, 1, 23, 0, '2012-09-21 19:44:35'),
(97, 1, 22, 0, '2012-09-21 19:44:35'),
(96, 1, 21, 0, '2012-09-21 19:44:35'),
(95, 1, 20, 0, '2012-09-21 19:44:35'),
(94, 1, 19, 0, '2012-09-21 19:44:35'),
(93, 1, 18, 0, '2012-09-21 19:44:35'),
(92, 1, 17, 0, '2012-09-21 19:44:35'),
(91, 1, 16, 0, '2012-09-21 19:44:35'),
(90, 1, 15, 0, '2012-09-21 19:44:35'),
(89, 1, 14, 0, '2012-09-21 19:44:35'),
(88, 1, 13, 0, '2012-09-21 19:44:35'),
(87, 1, 12, 0, '2012-09-21 19:44:35'),
(86, 1, 11, 0, '2012-09-21 19:44:35'),
(85, 1, 10, 1, '2012-09-21 19:44:35'),
(84, 1, 9, 2, '2012-09-21 19:44:35'),
(83, 1, 8, 2, '2012-09-21 19:44:35'),
(82, 1, 7, 2, '2012-09-21 19:44:35'),
(81, 1, 6, 2, '2012-09-21 19:44:35'),
(80, 1, 5, 2, '2012-09-21 19:44:35'),
(79, 1, 4, 2, '2012-09-21 19:44:35'),
(78, 1, 3, 2, '2012-09-21 19:44:35'),
(77, 1, 2, 2, '2012-09-21 19:44:35'),
(76, 1, 1, 2, '2012-09-21 19:44:35');

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
  `click_action` enum('None','URL','Popup','Subpage') NOT NULL DEFAULT 'None',
  `popup_title` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `url` varchar(250) NOT NULL,
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

INSERT INTO `blog` (`ID`, `author`, `permalink`, `title_DE`, `message_DE`, `title_EN`, `message_EN`, `category`, `date`, `pinterest_picture`, `pinterest_text`, `click_action`, `popup_title`, `url`, `file1`, `filename1`, `file2`, `filename2`, `file3`, `filename3`, `visibility`, `comments`, `deleted`) VALUES
(9, 1, 'Feeling_good', 'Feeling Good', '', 'Feeling Good', '', 'Depression', '2012-06-01 13:40:18', 'Yes', 'The first step out of your depression! Read this book from David Burns and you will feel enlightened. A lot of our tools are based on concepts and ideas that were introduced in this book.', 'None', 'Yes', '', '', '', '', '', '', '', 1, 0, 0),
(4, 1, 'My_internship_at_Siemens_Healthcare_in_the_USA', 'My internship at Siemens Healthcare in the USA', '[SIZE=2][IMG=160x37xright]{$root_dir}media/blog/4/siemens_logo.jpg[/IMG] For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.\r\n\r\n[B]My Preparation[/B]\r\nFirst of all, I want to give you a short insight what I had to do since I got the positive answer from Siemens in the mid-September. The starting date of my internship was determined to be exactly one month later and that is actually the earliest starting date you can possibly aim at, because you need almost a month to get your Visa, which is mandatory to take your flight to the US.\r\n[B]To sum it up shortly: You have to do a lot of paperwork![/B] It was annoying to fill out and sign many different forms with the same information again and again (passport number, passport expiration date, birth date, etc.). Isn''t one form enough!? A drug test plus a thorough examination of criminal databases were part of the process, too. Oddly, the responsible company sent me the outcome of the drug test and the database investigation (all clear of course) separately, although both mails contained the exact same documents (about 10 identical pages) and only one checkmark was added in the second mail, which came in just a few days later - [B]what a waste of paper! [/B]\r\nMeanwhile I booked a flight; a risky move because delays in the visa process could make it impossible for you to take the plane you payed a lot of money for... Anyway, I can not wait until receiving the visa unless I want to pay a fortune! Moreover I needed an international driver license in order to drive legally in the US; no big deal - it was done in a few minutes.\r\n\r\n[IMG=100x71xleft]{$root_dir}media/blog/4/aipt_logo.jpg[/IMG] Subsequently I sent a lot of documents (copies of my passport, references, student card, filled-out forms, etc.) to the [B]sponsor of my visa, AIPT[/B]. I also had to pay them the SEVIS fee plus the fee for health insurance in the US. The collaboration was without any big problems and easy-going.\r\n\r\n[IMG=100x100xleft]{$root_dir}media/blog/4/usembassy_logo.gif[/IMG] A few days later AIPT shipped me all forms I needed to show at the Embassy in Munich, which is actually the last step of the visa application process. I made an appointment at the Embassy, left them fingerprints, my passport and other documents, which I had to fill out on the website of the Embassy prior to the appointment, and explained them what I am about to do in the US. The event took me approx. 1 hour, most of the time just waiting for my call-up. [B]Crazy enough, you don''t get back your passport and forms immediately, instead they will sent it back to you via mail a few days later![/B] All you can do is to wait and hope it will arrive early enough before your booked flight is scheduled. Fortunately, I received it in time: passport, the DS-2019 form and the Visa.\r\n\r\n[B]Thanks to the great support from Petra, my Internship Coordinator at Siemens, the whole paperwork was transacted quickly and fluently. [/B]She also helped me with finding an accommodation. All in all, I had to pay more than 1000 € for everything (flight, Visa, health insurance, other fees and stuff), but I am confident that it is worth for a great time ahead!\r\n\r\n[B]My Journey[/B]\r\nOverall the journey went off relatively smoothly. However, the check-in at Munich airport took a while, because 3! employees of Lufthansa didn''t know which of the numerous numbers on the visa card is the visa number required for their computer system (the process can be executed only with the correct entered number). Although the staff was convinced that the red number at the bottom would be the right one, it turned out to be the black one on the right top corner... Having survived these fearful minutes, the scale displayed 28kg for my suitcase, wow, I had expected more! I payed the 50$ for the excess luggage (23kg were allowed at most) and was fine with it.\r\n\r\n[IMG=100x53xleft]{$root_dir}media/blog/4/usairways_logo.jpg[/IMG] [IMG=100x63xright]{$root_dir}media/blog/4/usairways_plane.jpg[/IMG] The flight with US Airways was supportable, not more: [B]Movies were boring and beyond that a big head in front of mine made it difficult for me to see more than half of the screen...[/B] therefore I preferred listening to my iPod and sleeping most of the time. While the lunch was eatable, the chicken-cheese sandwich after 8 hours of flight was not! - I gulped it down anyway... \r\nOn board, I had to fill out the I-94, a form that I received at check-in. It required the same information as always (passport number, visa number, passport expiration date, etc.). [B]Nevertheless, the I-94 form is as important as the Visa and the DS-2019 form for my authorized stay in the US.[/B]\r\nFinally, after nine long hours of flying I reached Philadelphia Airport at 4pm! Unfortunately it is raining there for more than 70!! hours and as I''m writing this message it is still raining... can''t imagine this region without rain right now!! Before I could get my baggage, I had to pass the Border Protection Office. Once again, I had to leave fingerprints and show my documents to the officer who stamped and signed them (Visa, DS-2019, I-94).\r\n\r\n[B]My Pick Up[/B]\r\nSvetlana, an intern from Siemens who already lives here for one year, and her husband picked me up at the airport and transported me directly to the rental car company where I get my own car for the next 6 months.\r\n\r\n[B]My Car[/B]\r\nHaving made countless (I estimate at least 8!) signatures on one contract sheet I had my car within seconds. \r\nFortunately, I am very satisfied with my car: It is relatively new, clean, convenient and it has an air conditioner and offers enough space. But of course it''s not too challenging to top my small Corsa at home ;)\r\n[IMG2=197x148x]{$root_dir}media/blog/4/13.jpg[/IMG2] [IMG2=197x148x]{$root_dir}media/blog/4/14.jpg[/IMG2] [IMG2=197x158x]{$root_dir}media/blog/4/18.jpg[/IMG2]\r\n\r\n[B]My First Poker Evening in the US[/B]\r\nSvetlana and her husband routed me to the next supermarket where I bought something to drink and eat for the weekend. Finally, we arrived at the house of my landlords (approx. 30 miles from Philly away). It was already 7.30pm now due to the horrible traffic (lots of stop & go).\r\n \r\nBill, the landlord, greeted my with the sentence [B]"Do you play Poker? I mean Texas Holdem?"[/B] I laughed and admitted to play for years and he invited me to join his poker round with friends starting in 30 minutes. \r\n[IMG2=200x241xright]{$root_dir}media/blog/4/poker.jpg[/IMG2] The buy-in was 10$ and rebuying was permitted "as long as you have a 10$ bill with you" (citation Bill). The host sets up the rules and all guests have to accept that! Not surprisingly for me, every hand was played from most of the players until the river, no matter what bet would come. For them, it was really just to have fun and sitting together, they didn''t care for the money. One player rebuyed himself 4 times and a few others at least 3 times, [B]so in the end more than 150$ were in the pot! [/B]Second place gets 20, the winner receives the rest - that''s the rule of the host, again (but everyone agreed anyway). Although I already played thousands of hands face to face and online, I saw styles of playing I have never seen before. For instance, a female player called 4 big bets on every round (preflop, flop, turn, river) with 48 off-suited, missing every single community card... [B]girl, you have 8 high!! Are you kidding me?? She couldn''t possibly thought to be in front!?[/B] However, nobody seemed to be that shocked, they just laughed all together and the lucky opponent was happy to show his full house :) There were actually several hands were someone called bets and raises until the river with nothing, just to reveal his hand by saying "I have nothing" and letting his chips pass to the winner. Often high card was good enough to win. Now you shouldn''t be surprised that hands like AA, AK, AQ and other big guns barely won. Unfortunately, AQ was one of my hands and I went broke against a flush of my opponent. The guy who busted me was also the player who finally took the 150$ at the end ;) Anyway, I was not that disappointed because thereby I had the opportunity to go to bed after my loss and more than 24 hours of wakefulness. Besides, the next poker evening will be soon; I definitely have to prepare a winning strategy for it, although I think that no strategy will work except to pray for luck! \r\n[B]During the poker evening we also enjoyed eating pork sandwiches :) I have to admit it was really delicious![/B]\r\n\r\n[B]My First Shopping Tour at Walmart[/B]\r\nOn Saturday, I unpacked my stuff and tested the power converter for my macbook and mobile phone - not working...! It seems that my converter only supports devices up to 45W, however my ones need at least 60W. [IMG2=200x150xright]{$root_dir}media/blog/4/1.jpg[/IMG2] But never mind, I bought another converter at Amazon, which should be there at Monday :)\r\nAs I found out in a conversation with Betty, Bill''s wife, [B]Walmart is only 1.8 miles away from my home, great![/B] I decided to check it out immediately. I took some food for the next days with me and of course, Oreo cookies had to take along, too :) \r\nIt was very funny to see all those food at Walmart...for instance, a frozen chicken; put it in your microwave for 10 minutes and enjoy it! However, it would take years to try out every dish available and additionally, it is hard to find normal food portions for just one person, most of them are designated for the whole family! \r\n\r\n[B]My Accommodation [/B]\r\nFinally I want to give you an insight how I actually live here. [B]I uploaded some pictures of my dwelling (see below)[/B]. My bedroom is on the first floor next to the bedrooms of three other interns (one French guy, one Mexican and one female person from Germany). We share kitchen, dining room, bathroom and living room. I have not seen my housemates until now because they have been on a weekend trip since the day of my arrival. \r\n\r\n[B]MY BEDROOM (1)[/B] [IMG2]{$root_dir}media/blog/4/3.jpg[/IMG2]\r\n\r\n[B]MY BEDROOM (2)[/B] [IMG2]{$root_dir}media/blog/4/4.jpg[/IMG2]\r\n\r\n[B]MY LIVING ROOM[/B] [IMG2]{$root_dir}media/blog/4/5.jpg[/IMG2]\r\n\r\n[B]MY KITCHEN (1)[/B] [IMG2]{$root_dir}media/blog/4/6.jpg[/IMG2]\r\n\r\n[B]MY KITCHEN (2)[/B] [IMG2]{$root_dir}media/blog/4/8.jpg[/IMG2]\r\n\r\n[B]MY DINING ROOM[/B] [IMG2]{$root_dir}media/blog/4/9.jpg[/IMG2]\r\n\r\n[B]MY BATHROOM[/B] [IMG2]{$root_dir}media/blog/4/12.jpg[/IMG2]\r\n\r\n[B]OUTDOOR AREA (1)[/B] [IMG2]{$root_dir}media/blog/4/7.jpg[/IMG2]\r\n\r\n[B]OUTDOOR AREA (2)[/B] [IMG2]{$root_dir}media/blog/4/11.jpg[/IMG2]\r\n\r\nTill now I do not miss anything except of my purchased power converter and look forward to my first day at Siemens![/SIZE]\r\n', 'My internship at Siemens Healthcare in the USA', '[SIZE=2][IMG=160x37xright]{$root_dir}media/images/blog/4/siemens_logo.jpg[/IMG] For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.\r\n\r\n[B]My Preparation[/B]\r\nFirst of all, I want to give you a short insight what I had to do since I got the positive answer from Siemens in the mid-September. The starting date of my internship was determined to be exactly one month later and that is actually the earliest starting date you can possibly aim at, because you need almost a month to get your Visa, which is mandatory to take your flight to the US.\r\n[B]To sum it up shortly: You have to do a lot of paperwork![/B] It was annoying to fill out and sign many different forms with the same information again and again (passport number, passport expiration date, birth date, etc.). Isn''t one form enough!? A drug test plus a thorough examination of criminal databases were part of the process, too. Oddly, the responsible company sent me the outcome of the drug test and the database investigation (all clear of course) separately, although both mails contained the exact same documents (about 10 identical pages) and only one checkmark was added in the second mail, which came in just a few days later - [B]what a waste of paper! [/B]\r\nMeanwhile I booked a flight; a risky move because delays in the visa process could make it impossible for you to take the plane you payed a lot of money for... Anyway, I can not wait until receiving the visa unless I want to pay a fortune! Moreover I needed an international driver license in order to drive legally in the US; no big deal - it was done in a few minutes.\r\n\r\n[IMG=100x71xleft]{$root_dir}media/images/blog/4/aipt_logo.jpg[/IMG] Subsequently I sent a lot of documents (copies of my passport, references, student card, filled-out forms, etc.) to the [B]sponsor of my visa, AIPT[/B]. I also had to pay them the SEVIS fee plus the fee for health insurance in the US. The collaboration was without any big problems and easy-going.\r\n\r\n[IMG=100x100xleft]{$root_dir}media/images/blog/4/usembassy_logo.gif[/IMG] A few days later AIPT shipped me all forms I needed to show at the Embassy in Munich, which is actually the last step of the visa application process. I made an appointment at the Embassy, left them fingerprints, my passport and other documents, which I had to fill out on the website of the Embassy prior to the appointment, and explained them what I am about to do in the US. The event took me approx. 1 hour, most of the time just waiting for my call-up. [B]Crazy enough, you don''t get back your passport and forms immediately, instead they will sent it back to you via mail a few days later![/B] All you can do is to wait and hope it will arrive early enough before your booked flight is scheduled. Fortunately, I received it in time: passport, the DS-2019 form and the Visa.\r\n\r\n[B]Thanks to the great support from Petra, my Internship Coordinator at Siemens, the whole paperwork was transacted quickly and fluently. [/B]She also helped me with finding an accommodation. All in all, I had to pay more than 1000 € for everything (flight, Visa, health insurance, other fees and stuff), but I am confident that it is worth for a great time ahead!\r\n\r\n[B]My Journey[/B]\r\nOverall the journey went off relatively smoothly. However, the check-in at Munich airport took a while, because 3! employees of Lufthansa didn''t know which of the numerous numbers on the visa card is the visa number required for their computer system (the process can be executed only with the correct entered number). Although the staff was convinced that the red number at the bottom would be the right one, it turned out to be the black one on the right top corner... Having survived these fearful minutes, the scale displayed 28kg for my suitcase, wow, I had expected more! I payed the 50$ for the excess luggage (23kg were allowed at most) and was fine with it.\r\n\r\n[IMG=100x53xleft]{$root_dir}media/images/blog/4/usairways_logo.jpg[/IMG] [IMG=100x63xright]{$root_dir}media/images/blog/4/usairways_plane.jpg[/IMG] The flight with US Airways was supportable, not more: [B]Movies were boring and beyond that a big head in front of mine made it difficult for me to see more than half of the screen...[/B] therefore I preferred listening to my iPod and sleeping most of the time. While the lunch was eatable, the chicken-cheese sandwich after 8 hours of flight was not! - I gulped it down anyway... \r\nOn board, I had to fill out the I-94, a form that I received at check-in. It required the same information as always (passport number, visa number, passport expiration date, etc.). [B]Nevertheless, the I-94 form is as important as the Visa and the DS-2019 form for my authorized stay in the US.[/B]\r\nFinally, after nine long hours of flying I reached Philadelphia Airport at 4pm! Unfortunately it is raining there for more than 70!! hours and as I''m writing this message it is still raining... can''t imagine this region without rain right now!! Before I could get my baggage, I had to pass the Border Protection Office. Once again, I had to leave fingerprints and show my documents to the officer who stamped and signed them (Visa, DS-2019, I-94).\r\n\r\n[B]My Pick Up[/B]\r\nSvetlana, an intern from Siemens who already lives here for one year, and her husband picked me up at the airport and transported me directly to the rental car company where I get my own car for the next 6 months.\r\n\r\n[B]My Car[/B]\r\nHaving made countless (I estimate at least 8!) signatures on one contract sheet I had my car within seconds. \r\nFortunately, I am very satisfied with my car: It is relatively new, clean, convenient and it has an air conditioner and offers enough space. But of course it''s not too challenging to top my small Corsa at home ;)\r\n[IMG2=197x148x]{$root_dir}media/images/blog/4/13.jpg[/IMG2] [IMG2=197x148x]{$root_dir}media/images/blog/4/14.jpg[/IMG2] [IMG2=197x158x]{$root_dir}media/images/blog/4/18.jpg[/IMG2]\r\n[/SIZE]', 'PD', '2013-06-01 13:59:07', 'Yes', 'For the next six months, the purpose of this blog is to keep you up-to-date about my stay in the US. I hope you will enjoy my blog entries and comment on them whenever you want to.', 'Subpage', 'Yes', '', '', '', '', '', '', '', 1, 0, 0),
(3, 1, 'Esmee_Denters_Outta_here', 'Esmée Denters :: Outta here', 'Endlich ist das erste Album von Esmée Denters in den UK rausgekommen. Mehr über Esmée könnt ihr auf ihrer offiziellen Website erfahren: [URL=http://www.esmeeworld.com]http://www.esmeeworld.com[/URL].\r\n\r\n[B]Und hier ist das Video zur aktuellen Single "Outta here":[/B]\r\n[CENTER]<object width="600" height="473"><param name="movie" value="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="473"></embed></object>[/CENTER]\r\nDie Lyrics gibts auf [URL=http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html]http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html[/URL]', 'Esmée Denters :: Outta here', 'Finally, Esmée Denters'' first album and debut single is released in the UK. See more of Esmée on her official website [URL=http://www.esmeeworld.com]http://www.esmeeworld.com[/URL].\r\n\r\n[B]Enjoy her video on nbg-master.de:[/B]\r\n[CENTER]<object width="600" height="473"><param name="movie" value="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/e-K31G0UfgY&hl=de&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="473"></embed></object>[/CENTER]\r\nYou can find the lyrics at [URL=http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html]http://www.metrolyrics.com/outta-here-lyrics-esmee-denters.html[/URL]', 'Health', '2013-06-01 13:38:51', 'Yes', '', 'None', 'Yes', '', '', '', '', '', '', '', 1, 0, 0),
(7, 1, 'Think_positive', '', '', '', '', 'PD', '2013-06-01 13:39:44', 'Yes', '', 'Popup', 'No', '', '', '', '', '', '', '', 1, 0, 0),
(6, 1, 'Working_in_the_US', 'Working in the US', '[SIZE=2]In the following I want to give you an impression how it is to work in the US.\r\n \r\n[B]How are you?[/B]\r\nThe first unfamiliar experience that I made during my initial working days was the frequent usage of the sentence "How are you (doing)?" [IMG=180x127xright]{$root_dir}media/blog/6/greet.gif[/IMG] You will hear this sentence at least 5 times a day (likely even more), so not just in the morning or the first time of the day when you see a certain colleague! The intention behind it is to start a conversation with another person positively. You will just reply a quick "Good" for most of the time. So for Americans it is just a way to be nice to each other before talking about business or other topics. You are not supposed to give an exhaustive answer. In fact, you often do not have to give an answer at all (e.g. two people come across each other and just say "How are you?" to each other instead of "Hello" and that''s it). Although I have experienced this form of greeting for almost two months now, I feel still not completely comfortable with it.\r\n\r\n[B]Working in my cube[/B]\r\n[IMG2=180x180xright]{$root_dir}media/blog/6/cube.jpg[/IMG2]In contrary to Germany, every employee - so as I - has his or her own [URL=http://en.wikipedia.org/wiki/Cubicle]cube[/URL] (as it is standard in the US). On the one hand, it''s great, because you have more space for your working materials, you feel more appreciated by the company and you can take a quick nap after lunch if you want and nobody will notice it ;) You could even have a sneaky game of [URL=http://de.partypoker.com/]PartyPoker[/URL] or make private phone calls without anyone seeing what you are up to. On the other hand, sitting the whole day in a cube without seeing daylight can be very hard (you will be tired more often)! Only managers enjoy the privilege to work in an office with windows. Furthermore, the air conditioning system is activated 365 days per year and it forces me to often sit in my cube wearing a jacket, because it can be uncomfortably cool.\r\n\r\n[B]Making small talk[/B]\r\nSurprisingly, the communication with colleagues is not suffering from the circumstance that everyone is sitting in his own cube. [B]In fact, I suppose that the communication frequency is even higher than in Germany![/B] One reason is, probably, that you will have more (short) meetings than in Germany. Americans like to discuss as much as possible together. As a result, you get used to stop by the cube or office of your colleagues for several times a day and talk about current issues. Besides, it often includes some nice small talk at the beginning of the conversation: Before talking about work it is quite normal to share the newest experiences about the last weekend, upcoming traveling plans or current (local) events.\r\n\r\n[B]Lunch time[/B]\r\n[IMG2=140x129xright]{$root_dir}media/blog/6/cafeteria2.jpg[/IMG2] Admittedly, in return it is not common to go to lunch with your colleagues. Most employees bring their meal from home with them and use one of the numerous microwaves that are available in the building: There is a kitchen on every floor of the building! I really love this possibility; therefore I bring my food with me for most of the time, too. It is not unusual to see many employees eating their meal in their cube while continuing to work. Aside from that, to go for a walk after lunch is no option for most of the staff members. Of course there is also a cafeteria in the building, but the prices are slightly higher than those of Siemens in Germany and there are always the same meals at choice every day.\r\n\r\n[B]Everyday work[/B]\r\nAs I already implied in the last paragraph, most of my colleagues work longer than the standard 8 hours a day. However, I am under the impression that overall, [B]working is more relaxed and less stressful than in Germany[/B]: [IMG2=200x149xleft]{$root_dir}media/blog/6/siemens_malvern.gif[/IMG2]There is always time for small talk and nobody forces you to finish a certain task as quickly as possible. More likely you just stay until 8pm in the evening, although work more slowly and composed. So in general, it is also no problem to deal with some private issues in the afternoon and in return stay longer in the evening. Most employees prefer to start their working day at 9am. Furthermore, working from home is more common than in Germany. Especially on snowy, cold days you prefer to work from home instead of driving to work (you need to know, that not many people in the US spring snow tires for their cars; consequently it is dangerous, and the traffic could be horrible, too). \r\n\r\n[B]Talking with your manager[/B]\r\nIn addition, I have discerned that it is more easygoing to talk with your manager. Although the distinction of cubes and offices with windows visualizes the hierarchy stages strongly, it is not so distinctive while talking to your manager. Feedback, for instance, is always asked for ("What do you think about this?"), and meaningful proposals will be incorporated. \r\n\r\n[B]Motivation culture[/B]\r\nMoreover, you will often receive e-mails with compliments like "Great work", "Thanks again, nice job", "Thanks for the heads-up" - even for completing small and simple tasks. Besides, expressions like "Thanks" and "Thank you (so much)" are part of almost every e-mail. [B]In addition, you are on first-name basis with everyone: managers, colleagues and employees you meet the first time.[/B]\r\n\r\n[IMG=75x103xleft]{$root_dir}media/blog/6/good_job-small.jpg[/IMG] To sum up I like it a lot more to work at Siemens in the US than I did in Germany, mostly because working in the US is more pleasant, you have more flexibility and freedom on the job, and you have more conversations with your colleagues.\r\n[/SIZE]\r\n\r\n', 'Working in the US', '[SIZE=2]In the following I want to give you an impression how it is to work in the US.\r\n \r\n[B]How are you?[/B]\r\nThe first unfamiliar experience that I made during my initial working days was the frequent usage of the sentence "How are you (doing)?" [IMG=180x127xright]{$root_dir}media/blog/6/greet.gif[/IMG] You will hear this sentence at least 5 times a day (likely even more), so not just in the morning or the first time of the day when you see a certain colleague! The intention behind it is to start a conversation with another person positively. You will just reply a quick "Good" for most of the time. So for Americans it is just a way to be nice to each other before talking about business or other topics. You are not supposed to give an exhaustive answer. In fact, you often do not have to give an answer at all (e.g. two people come across each other and just say "How are you?" to each other instead of "Hello" and that''s it). Although I have experienced this form of greeting for almost two months now, I feel still not completely comfortable with it.\r\n\r\n[B]Working in my cube[/B]\r\n[IMG2=180x180xright]{$root_dir}media/blog/6/cube.jpg[/IMG2]In contrary to Germany, every employee - so as I - has his or her own [URL=http://en.wikipedia.org/wiki/Cubicle]cube[/URL] (as it is standard in the US). On the one hand, it''s great, because you have more space for your working materials, you feel more appreciated by the company and you can take a quick nap after lunch if you want and nobody will notice it ;) You could even have a sneaky game of [URL=http://de.partypoker.com/]PartyPoker[/URL] or make private phone calls without anyone seeing what you are up to. On the other hand, sitting the whole day in a cube without seeing daylight can be very hard (you will be tired more often)! Only managers enjoy the privilege to work in an office with windows. Furthermore, the air conditioning system is activated 365 days per year and it forces me to often sit in my cube wearing a jacket, because it can be uncomfortably cool.\r\n\r\n[B]Making small talk[/B]\r\nSurprisingly, the communication with colleagues is not suffering from the circumstance that everyone is sitting in his own cube. [B]In fact, I suppose that the communication frequency is even higher than in Germany![/B] One reason is, probably, that you will have more (short) meetings than in Germany. Americans like to discuss as much as possible together. As a result, you get used to stop by the cube or office of your colleagues for several times a day and talk about current issues. Besides, it often includes some nice small talk at the beginning of the conversation: Before talking about work it is quite normal to share the newest experiences about the last weekend, upcoming traveling plans or current (local) events.\r\n\r\n[B]Lunch time[/B]\r\n[IMG2=140x129xright]{$root_dir}media/blog/6/cafeteria2.jpg[/IMG2] Admittedly, in return it is not common to go to lunch with your colleagues. Most employees bring their meal from home with them and use one of the numerous microwaves that are available in the building: There is a kitchen on every floor of the building! I really love this possibility; therefore I bring my food with me for most of the time, too. It is not unusual to see many employees eating their meal in their cube while continuing to work. Aside from that, to go for a walk after lunch is no option for most of the staff members. Of course there is also a cafeteria in the building, but the prices are slightly higher than those of Siemens in Germany and there are always the same meals at choice every day.\r\n\r\n[B]Everyday work[/B]\r\nAs I already implied in the last paragraph, most of my colleagues work longer than the standard 8 hours a day. However, I am under the impression that overall, [B]working is more relaxed and less stressful than in Germany[/B]: [IMG2=200x149xleft]{$root_dir}media/blog/6/siemens_malvern.gif[/IMG2]There is always time for small talk and nobody forces you to finish a certain task as quickly as possible. More likely you just stay until 8pm in the evening, although work more slowly and composed. So in general, it is also no problem to deal with some private issues in the afternoon and in return stay longer in the evening. Most employees prefer to start their working day at 9am. Furthermore, working from home is more common than in Germany. Especially on snowy, cold days you prefer to work from home instead of driving to work (you need to know, that not many people in the US spring snow tires for their cars; consequently it is dangerous, and the traffic could be horrible, too). \r\n\r\n[B]Talking with your manager[/B]\r\nIn addition, I have discerned that it is more easygoing to talk with your manager. Although the distinction of cubes and offices with windows visualizes the hierarchy stages strongly, it is not so distinctive while talking to your manager. Feedback, for instance, is always asked for ("What do you think about this?"), and meaningful proposals will be incorporated. \r\n\r\n[B]Motivation culture[/B]\r\nMoreover, you will often receive e-mails with compliments like "Great work", "Thanks again, nice job", "Thanks for the heads-up" - even for completing small and simple tasks. Besides, expressions like "Thanks" and "Thank you (so much)" are part of almost every e-mail. [B]In addition, you are on first-name basis with everyone: managers, colleagues and employees you meet the first time.[/B]\r\n\r\n[IMG=75x103xleft]{$root_dir}media/blog/6/good_job-small.jpg[/IMG] To sum up I like it a lot more to work at Siemens in the US than I did in Germany, mostly because working in the US is more pleasant, you have more flexibility and freedom on the job, and you have more conversations with your colleagues.\r\n[/SIZE]\r\n\r\n', 'PD', '2013-06-01 00:00:24', 'Yes', '', 'None', 'Yes', '', '', '', '', '', '', '', 1, 0, 0),
(5, 1, 'How_to_focus_in_the_age_of_distraction', 'How to focus in the age of distraction', '[SIZE=2]Yes, I know. My last blog entry was a long time ago! However, I had to prepare for the [URL=http://www.mba.com/mba/thegmat]GMAT[/URL] during the last two months, because most of the universities in which I am interested in doing a master’s program require a GMAT score. The preparation was very time-intensive and exhaustive so that I simply had not the calm and ease to maintain my blog. But now the test is over, which means that I can finally feed you with some pictures from my several stays in New York City![/SIZE]\r\n\r\n[SIZE=2][B]The awesome Limoride adventure[/B][/SIZE]\r\n[URL_IMG={$root_dir}gallery/2009_New York City/images/4.jpg] [IMG2=120x160xleft]{$root_dir}media/blog/7/4.jpg[/IMG2][/URL_IMG] [IMG2=120x160xright]{$root_dir}media/blog/7/6.jpg[/IMG2][SIZE=2]Most of the Siemens''s interns joined this great opportunity: We booked a Hummer limousine and were escorted for about 3 hours through Manhattan. We made stops at the most prestigious sights: Battery Park, Brooklyn Bridge, Time Square. As you can probably see on the pictures, we had a lot of fun during this ride, despite the heavy rain outside.[/SIZE]\r\n\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/1.jpg][IMG2=194x146x]{$root_dir}media/blog/7/1.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/5.jpg][IMG2=194x146x]{$root_dir}media/blog/7/5.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/3.jpg][IMG2=194x146x]{$root_dir}media/blog/7/3.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2]After this "warm-up", we went to the [URL=http://pachanyc.com/]Pacha club[/URL], a very famous club in New York for impeccable house music, dancing and celebrating the whole night.[/SIZE]\r\n\r\n[CENTER][IMG]{$root_dir}media/blog/7/pacha.gif[/IMG] [/CENTER]\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/6.jpg][IMG2=109x146x]{$root_dir}media/blog/7/7.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/2.jpg][IMG2=194x146x]{$root_dir}media/blog/7/22.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/7.jpg][IMG2=194x146x]{$root_dir}media/blog/7/23.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2][B]Swedish House Mafia[/B][/SIZE]\r\n[SIZE=2]On my latest visit to New York City in February, Sebastian Ingrosso, Axwell and Steve Angello, together known as the [URL=http://www.swedishhousemafia.com/]Swedish House Mafia[/URL], made their first appearance in New York. You want to know how it was? Awesome! The three Swedish absolutely rocked the dancefloor, the atmosphere was sensational and the crowd was thrilled, cheering and dancing the whole night. The location, the [URL=http://www.m2ultralounge.com/]M2 Ultralounge[/URL], a very fancy and noble club in NYC, also played its part in contributing to this great night! Overall, this event was definitely on a par with the Sensation White event!  \r\n\r\n[CENTER][IMG2=194x146x]{$root_dir}media/blog/7/shm_02.jpg[/IMG2] [IMG2=194x146x]{$root_dir}media/blog/7/shm_01.jpg[/IMG2] [IMG2=194x146x]{$root_dir}media/blog/7/shm_03.jpg[/IMG2][/CENTER]\r\nThe only negative aspect of clubbing in NYC, however, is the ridiculous cost of alcohol! You can expect a beer to cost 8 bucks and a Long Drink to cost between 12 and 15 bucks, and you should always add 1 or 2 bucks tip, otherwise the charming bartender is not likely to serve you again ;) \r\nBesides, do not consider Shots a fair alternative. While in Germany you are used to club evenings with specials like "Tequila for just one Euro", you won''t find this situation here. Normally, there are no Shots at all on the menue and I guess that if you order, lets say, one Tequila, you will probably pay at least 10 bucks. So better stick with the Long Drink, whose amount is, by the way, not much more than that of a Shot in Germany. Ok, I am overstating slightly, but it''s really not much, so better enjoy your drink or take a lot of money with you. By implication, while I often thought to spend too much money on club evening''s in Germany, it''s definitely nothing in comparison with the amount you''re likely to spend on club evening''s in the US!![/SIZE]\r\n\r\n[B][SIZE=2]Sightseeing[/SIZE][/B]\r\n[SIZE=2]In the meantime, I have seen most of the Must-Sees of New York City, except of Staten Island, where I plan to go to in spring when the weather is hopefully better. It is always exciting and intriguing to be in NYC and I am already looking forward to being there again soon. I think there is not much more I need to talk about, so for now I just leave you alone with some pictures from Rockefeller Center ([URL=http://www.topoftherocknyc.com/]Top of the Rocks[/URL]), Central Park and Time Square.[/SIZE]\r\n\r\n[CENTER][URL_IMG={$root_dir}gallery/2009_New York City/images/14.jpg][IMG2=194x146x]{$root_dir}media/blog/7/16.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/18.jpg][IMG2=194x146x]{$root_dir}media/blog/7/19.jpg[/IMG2][/URL_IMG] [IMG2=194x146x]{$root_dir}media/blog/7/24.jpg[/IMG2]\r\n[URL_IMG={$root_dir}gallery/2009_New York City/images/21.jpg][IMG2=194x146x]{$root_dir}media/blog/7/20.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/22.jpg][IMG2=194x146x]{$root_dir}media/blog/7/21.jpg[/IMG2][/URL_IMG] [URL_IMG={$root_dir}gallery/2009_New York City/images/15.jpg][IMG2=194x146x]{$root_dir}media/blog/7/17.jpg[/IMG2][/URL_IMG][/CENTER]\r\n[SIZE=2]As always, you can see these pictures in large in the [URL_INTERN={$root_dir}gallery/17/]Gallery[/URL_INTERN].[/SIZE]', 'How to focus in the age of distraction', '[IMG=600x]{$root_dir}media/blog/5/pinterest.jpg[/IMG]', 'PD', '2013-06-02 20:10:23', 'Yes', 'Candida diet day 1: so far so good, ate salad from vapiano (5 mini pieces of meat - ridiculous, and I had to remove the cheese), and fish later. prepared my breakfast for tomorrow (eggs + vegetables) 29 days to go :-)', 'Popup', 'Yes', '', '', '', '', '', '', '', 1, 0, 0),
(8, 1, 'Awesomeness_Fest', 'Awesomeness Fest', '', 'Awesomeness Fest', '', 'PD', '2013-06-01 13:38:33', 'Yes', 'Awesomeness Fest is an experiential event that brings together people who are driven to change the world', 'URL', 'Yes', 'http://www.awesomenessfest.com/', '', '', '', '', '', '', 1, 0, 0),
(1, 1, 'How_to_win_friends_and_influence_people', 'How to win friends and influence people', '', 'How to win friends and influence people', '', 'PD', '2013-06-01 13:40:13', 'Yes', 'Read this awesome book if you want to learn how to communicate with people. A must-read for everyone who wants to become a successful leader and respected person among his fellows.', 'None', 'Yes', '', '', '', '', '', '', '', 1, 0, 0);

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
(2, '<b><span style="font-size:20px">Happify''s mission is to support people to make every day a happy and fulfilling day.</span></b>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n\r\n<span class="cms_title">Depression or unhappiness among adults is widely spread.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]about <span class="cms_highlight">121 million people</span> worldwide have some form of depression\r\n[*]15% of the population of most developed countries suffers severe depression\r\n[*]about 6.7 percent of the U.S. population over 18 experience clinical depression in any given year\r\n\r\n[*]increase of sickness days due to burnout or depression\r\n[*]majority of fully employed people consider themselves as being at [B]risk of burnout[/B]</span>\r\n\r\n[*]about <span class="cms_highlight">75% of the people working today are unhappy</span> with their current jobs\r\n\r\n[*]Everyone will at some time in their life be affected by depression; their own or someone else''s\r\n[*]15% of depressed people will <span class="cms_highlight">commit suicide</span>\r\n[*]Depression will be the second largest killer after heart disease by 2020\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Professional treatment is often ineffective.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]80% of depressed people are not currently having any treatment\r\n[*]less than 25% of depressed people have access to effective treatment\r\n[*]<span class="cms_highlight">Antidepressants work for far less than 50% of depressed people</span>\r\n[*]40% of depressed people do not respond to medications\r\n[*]<span class="cms_highlight">High relapse rate</span> with antidepressant drugs as well as therapy\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Plenty of factors can lead to or are characteristics of depression and unhappiness.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]Negative, past experiences (in childhood)\r\n[*]Wrong assumptions and believes\r\n[*]Distorted thinking and acting – "Mindfucked"\r\n[*]No purpose (passion) in life\r\n[*]Emotional baggage from childhood/parents\r\n[*]Not being yourself\r\n[*]Unhealthy life style (e.g. smoking, alcohol, obesity, no sports)\r\n[*]Negativism, skepticism, pessimism\r\n[*]Feel “accepted and worth” only with consistent love, approval, or entitlement\r\n[*]Not living in the present\r\n[*]Being dependent on outside factors\r\n[*]Perfectionism\r\n[*]Missing close and meaningful connections with other people\r\n[*]Lost in too much distraction and the fast-paced world\r\n[*]Guilt\r\n[*]Feeling lonely\r\n[*]Procrastination, Wasting time\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">The distorted mind is the true underlying cause of persistent depression and unhappiness.</span>\r\n<hr class="cms_hr">\r\nThe way someone feels at a certain moment is defined by the thoughts this person has at this moment.\r\n[P2][/P2]\r\n[B]Happy thoughts makes you feel happy![/B]\r\n[P2][/P2]\r\nUnhappy and depressed people…\r\n\r\n[LIST]\r\n[*]are dependent on outside factors that they cannot influence, \r\n[*]thus disappointed very often,\r\n[*]blame themselves and\r\n[*]create distorted thoughts assuming it is them who failed.\r\n[/LIST]\r\n[B]They get mind-fucked![/B]\r\n\r\n[P2][/P2]\r\n[P2][/P2]\r\n\r\n<span class="cms_title">Cognitive therapy (CT) can change the distorted way of thinking.</span>\r\n<hr class="cms_hr">\r\n[LIST]\r\n[*]CT helps to control mood swings and self-defeating behavior\r\n[*]CT is more sustainable than antidepressant drug therapy\r\n[*]CT addresses the underlying relationship causes of depression\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n\r\n[B]Techniques of cognitive therapy that enable continuous and long-lasting improvement.[/B]\r\n[LIST]\r\n[*]Identify distorted thoughts\r\n[*]Take behavioral actions\r\n[*]Pursue enjoyable activities\r\n[*]Be open to personal relationships \r\n[*]Activate healthy and varied lifestyle\r\n[/LIST]\r\n\r\n[P2][/P2]\r\n[P1][/P1]\r\n\r\n\r\n<span class="cms_title">Happify offers CT-based tools and reading to assist in climbing the ladder of happiness to the very top.</span>\r\n<hr class="cms_hr">\r\n<div style="float:left;width:40%">\r\nIt is important to climb one step at a time. It is possible to work on multiple dimensions at the same time, but especially if you are severely depressed it is hard to execute. Set goals for each step and pursue them one after the other. As soon as you feel in control of one step, immediately move on to the next step, but do not forget the goals and rules of the previous steps.\r\n<p>&nbsp;</p>\r\n1. [B]Get rid of distorted thoughts:[/B] Clear your mind with thoughts that are biased and not true. Discard extreme thoughts and expectations, such as the hassle to be perfect, any thought that makes you believe you are not unique, not loved, not or worthy.\r\n<p></p>\r\n2. [B]Get your life organized![/B] Plan your day and what you wanna do and achieve. Clean your room. Stick to plans.\r\n<p></p>\r\n3. [B]Incorporate a healthy lifestyle:[/B] Do sports to make you feel good and fresh, eat healthy, meditate.\r\n<p></p>\r\n4. [B]Think positive - always![/B] Remember the positives of your day. Be optimistic and dream big.\r\n<p></p>\r\n5. [B]Meet people:[/B] With time, you will feel stronger and happier again, forcing you to meet new people automatically. Build meaningful friendships with them.\r\n<p></p>\r\n6. [B]Constantly grow:[/B] Read books, be open to new ideas and activities, broaden your knowledge everyday and take them into practice immediately.\r\n<p></p>\r\n7. [B]Fulfill yourself:[/B] The ultimate goal in life. Do what you really love to do. Take your time to find it. But search for it. Never stop searching until you found it. And then go for it.\r\n</div>\r\n<div style="float:left;width:60%">\r\n[IMG=500x]{$dir_img}cms/about/pyramid3.png[/IMG]\r\n</div>\r\n<div style="clear:both"></div>\r\n\r\n[P2][/P2]\r\n\r\n<span class="cms_title">A depressed person has to walk through 3 major phases to become a consistently happier and better person.</span>\r\n<hr class="cms_hr">\r\n<div style="float:left;width:33%">\r\n[B]1 ANALYZE AND LEARN[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]identify your level of happiness and your mental areas for improvement\r\n[*]learn what your mental weaknesses mean and how you can improve mentally\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="float:left;width:34%">\r\n[B]2 IMPROVE[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]use the tools Happify offers to assist you in becoming a happier person\r\n[*]track the progress you make\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="float:left;width:33%">\r\n[B]3 PURSUE PERSONAL FULFILLMENT[/B]\r\n<p style="width:80%">\r\n[LIST]\r\n[*]pursue constant personal growth, self-fullfillment and rich interpersonal relationships\r\n[/LIST]\r\n<p>&nbsp;</p>\r\n<a class="btn">Start now</a>\r\n</p>\r\n</div>\r\n<div style="clear:both"></div>', 'no FAQ yet', '{$test}\r\nThis website was published in November 2013 and will be improved constantly. The founder of myhappifier.info is looking forward to hear from you if:\r\n- you have recommendations on how to improve the website or general feedback\r\n- you want to join the team ', '[SIZE=2][B]Publisher[/B][/SIZE]\r\n[HR][/HR]\r\nmail@happifier.info\r\n\r\n[P2][/P2]\r\n[P2][/P2]\r\n\r\n[SIZE=2][B]Disclaimer[/B][/SIZE]\r\n[HR][/HR]\r\n\r\n[B]1. Content[/B]\r\n[BLOCK]The author reserves the right not to be responsible for the topicality, correctness, completeness or quality of the information provided. Liability claims regarding damage caused by the use of any information provided, including any kind of information which is incomplete or incorrect,will therefore be rejected.\r\nAll offers are not-binding and without obligation. Parts of the pages or the complete publication including all offers and information might be extended, changed or partly or completely deleted by the author without separate announcement.[/BLOCK]\r\n\r\n[P2][/P2][B]2. Referrals and links[/B]\r\n[BLOCK]The author is not responsible for any contents linked or referred to from his pages - unless he has full knowledge of illegal contents and would be able to prevent the visitors of his site fromviewing those pages. If any damage occurs by the use of information presented there, only the author of the respective pages might be liable, not the one who has linked to these pages. Furthermore the author is not liable for any postings or messages published by users of discussion boards, guestbooks or mailinglists provided on his page.[/BLOCK]\r\n\r\n[P2][/P2][B]3. Copyright[/B]\r\n[BLOCK]The author intended not to use any copyrighted material for the publication or, if not possible, to indicate the copyright of the respective object.\r\nThe copyright for any material created by the author is reserved. Any duplication or use of objects such as images, diagrams, sounds or texts in other electronic or printed publications is not permitted without the author''s agreement.[/BLOCK]\r\n\r\n[P2][/P2][B]4. Privacy policy[/B]\r\n[BLOCK]If the opportunity for the input of personal or business data (email addresses, name, addresses) is given, the input of these data takes place voluntarily. The use and payment of all offered services are permitted - if and so far technically possible and reasonable - without specification of any personal data or under specification of anonymized data or an alias. The use of published postal addresses, telephone or fax numbers and email addresses for marketing purposes is prohibited, offenders sending unwanted spam messages will be punished.[/BLOCK]\r\n\r\n[P2][/P2][B]5. Legal validity of this disclaimer[/B]\r\n[BLOCK]This disclaimer is to be regarded as part of the internet publication which you were referred from. If sections or individual terms of this statement are not legal or correct, the content or validity of the other parts remain uninfluenced by this fact.[/BLOCK]\r\n\r\n[P2][/P2]', '{$test}\r\nPress', 'EN');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=551 ;

--
-- Daten für Tabelle `da_scale_results`
--

INSERT INTO `da_scale_results` (`ID`, `userID`, `itemID`, `value`, `date`) VALUES
(271, 1, 1, 2, '2012-09-22 15:38:53'),
(272, 1, 2, 1, '2012-09-22 15:38:53'),
(273, 1, 3, 1, '2012-09-22 15:38:53'),
(274, 1, 4, 2, '2012-09-22 15:38:53'),
(275, 1, 5, 1, '2012-09-22 15:38:53'),
(276, 1, 6, -2, '2012-09-22 15:38:53'),
(277, 1, 7, -2, '2012-09-22 15:38:53'),
(278, 1, 8, -1, '2012-09-22 15:38:53'),
(279, 1, 9, -1, '2012-09-22 15:38:53'),
(280, 1, 10, -1, '2012-09-22 15:38:53'),
(281, 1, 11, 0, '2012-09-22 15:38:53'),
(282, 1, 12, 0, '2012-09-22 15:38:53'),
(283, 1, 13, -1, '2012-09-22 15:38:53'),
(284, 1, 14, -1, '2012-09-22 15:38:53'),
(285, 1, 15, -2, '2012-09-22 15:38:53'),
(286, 1, 16, -2, '2012-09-22 15:38:53'),
(287, 1, 17, -2, '2012-09-22 15:38:53'),
(288, 1, 18, -1, '2012-09-22 15:38:53'),
(289, 1, 19, -2, '2012-09-22 15:38:53'),
(290, 1, 20, -2, '2012-09-22 15:38:53'),
(291, 1, 21, 2, '2012-09-22 15:38:53'),
(292, 1, 22, 2, '2012-09-22 15:38:53'),
(293, 1, 23, 2, '2012-09-22 15:38:53'),
(294, 1, 24, 1, '2012-09-22 15:38:53'),
(295, 1, 25, 2, '2012-09-22 15:38:53'),
(296, 1, 26, 1, '2012-09-22 15:38:53'),
(297, 1, 27, 0, '2012-09-22 15:38:53'),
(298, 1, 28, 0, '2012-09-22 15:38:53'),
(299, 1, 29, 2, '2012-09-22 15:38:53'),
(300, 1, 30, 1, '2012-09-22 15:38:53'),
(301, 1, 31, -1, '2012-09-22 15:38:53'),
(302, 1, 32, 0, '2012-09-22 15:38:53'),
(303, 1, 33, 0, '2012-09-22 15:38:53'),
(304, 1, 34, 0, '2012-09-22 15:38:53'),
(305, 1, 35, 0, '2012-09-22 15:38:53'),
(411, 1, 1, 1, '2013-06-23 19:43:12'),
(435, 1, 25, 1, '2013-06-23 19:43:12'),
(421, 1, 11, 1, '2013-06-23 19:43:12'),
(420, 1, 10, 2, '2013-06-23 19:43:12'),
(419, 1, 9, 1, '2013-06-23 19:43:12'),
(418, 1, 8, 2, '2013-06-23 19:43:12'),
(417, 1, 7, 1, '2013-06-23 19:43:12'),
(416, 1, 6, 1, '2013-06-23 19:43:12'),
(415, 1, 5, 1, '2013-06-23 19:43:12'),
(414, 1, 4, 2, '2013-06-23 19:43:12'),
(413, 1, 3, 2, '2013-06-23 19:43:12'),
(412, 1, 2, 1, '2013-06-23 19:43:12'),
(424, 1, 14, 1, '2013-06-23 19:43:12'),
(422, 1, 12, 2, '2013-06-23 19:43:12'),
(423, 1, 13, 1, '2013-06-23 19:43:12'),
(434, 1, 24, 2, '2013-06-23 19:43:12'),
(433, 1, 23, 2, '2013-06-23 19:43:12'),
(432, 1, 22, 1, '2013-06-23 19:43:12'),
(431, 1, 21, 1, '2013-06-23 19:43:12'),
(430, 1, 20, 0, '2013-06-23 19:43:12'),
(429, 1, 19, 0, '2013-06-23 19:43:12'),
(428, 1, 18, 0, '2013-06-23 19:43:12'),
(427, 1, 17, 1, '2013-06-23 19:43:12'),
(426, 1, 16, 1, '2013-06-23 19:43:12'),
(425, 1, 15, 1, '2013-06-23 19:43:12'),
(436, 1, 26, 1, '2013-06-23 19:43:12'),
(437, 1, 27, 0, '2013-06-23 19:43:12'),
(438, 1, 28, 0, '2013-06-23 19:43:12'),
(439, 1, 29, 1, '2013-06-23 19:43:12'),
(440, 1, 30, 1, '2013-06-23 19:43:12'),
(441, 1, 31, 1, '2013-06-23 19:43:12'),
(442, 1, 32, 2, '2013-06-23 19:43:12'),
(443, 1, 33, 2, '2013-06-23 19:43:12'),
(444, 1, 34, 1, '2013-06-23 19:43:12'),
(445, 1, 35, 1, '2013-06-23 19:43:12');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

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
(170, 1, 'Tell yourself something nice about the day', '2013-06-08 22:26:59', '9c4a43758838d43428943eaeee5fc320.jpg'),
(186, 1, 'Tell yourself something nice about the day', '2013-06-20 20:56:59', 'e80106007c9ee7ca438560f715b7b7c8.jpg'),
(187, 1, 'Tell yourself something nice about the day', '2013-06-20 20:58:52', '7fb19026eacb0d0f0bfde88e4b2c2b42.jpg'),
(188, 1, 'Tell yourself something nice about the day', '2013-06-20 20:59:34', 'e9b5662f0a86cfaed832023604908e75.jpg'),
(189, 1, 'hot!!!', '2013-06-20 21:01:27', 'b2c9aa7ef38842ca0a485c65e89e3f4b.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
(8, 'Be healthy', 'sports & food (tea)', 8),
(9, 'Don’t hold grudges', 'Happy people understand that it’s better to forgive and forget than to let their negative feelings crowd out their positive feelings. Holding a grudge has a lot of detrimental effects on your wellbeing, including increased depression, anxiety, and stress. Why let anyone who has wronged you have power over you? If you let go of all your grudges, you’ll gain a clear conscience and enough energy to enjoy the good things in life.', 0),
(10, 'Treat everyone with kindness', 'Did you know that it has been scientifically proven that being kind makes you happier? Every time you perform a selfless act, your brain produces serotonin, a hormone that eases tension and lifts your spirits. Not only that, but treating people with love, dignity, and respect also allows you to build stronger relationships.', 0),
(11, 'See problems as challenges', 'The word “problem” is never part of a happy person’s vocabulary. A problem is viewed as a drawback, a struggle, or an unstable situation while a challenge is viewed as something positive like an opportunity, a task, or a dare. Whenever you face an obstacle, try looking at it as a challenge.', 0),
(12, 'Express gratitude for what they already have', 'There’s a popular saying that goes something like this: “The happiest people don’t have the best of everything; they just make the best of everything they have.” You will have a deeper sense of contentment if you count your blessings instead of yearning for what you don’t have.', 0),
(13, 'Dream big', 'People who get into the habit of dreaming big are more likely to accomplish their goals than those who don’t. If you dare to dream big, your mind will put itself in a focused and positive state.', 0);

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
  `bd_latest_score` smallint(3) NOT NULL,
  `da_latest_score` varchar(100) NOT NULL,
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

INSERT INTO `users` (`ID`, `UserToken`, `UserEmail`, `UserPass`, `RegDate`, `firstname`, `gender`, `birthday`, `nationality`, `residence`, `description`, `personal_goal`, `flash_categories_visible`, `fb_ID`, `fb_name`, `sections_public`, `language`, `last_online_time`, `trigger_friends`, `activation_code`, `diary_start_month`, `diary_start_year`, `bd_latest_score`, `da_latest_score`) VALUES
(1, 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 'stefan@happify.com', '3a2b37336664ede535b20c76b315a0f1', '0000-00-00 00:00:00', 'Stefan', 'm', '1985-06-18', 'DE', 'DE', 'öäö222', '', '1,2,3,4', 675992449, 'Stefan Richter', '1,2,3,5', 'EN', '2013-06-24 06:55:52', 0, '', 8, 2012, 0, 'a:7:{i:0;i:7;i:1;i:7;i:2;i:6;i:3;i:2;i:4;i:7;i:5;i:3;i:6;i:7;}'),
(227, '4711048', 'Hannah Acquah', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 4711048, 'Hannah Acquah', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(228, '13612033', 'Mazin Hassan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 13612033, 'Mazin Hassan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(229, '29613155', 'Brett Neu', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 29613155, 'Brett Neu', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(230, '61308565', 'Soti Rolo', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 61308565, 'Soti Rolo', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(231, '61309025', 'Isaac Newton Acquah', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 61309025, 'Isaac Newton Acquah', '', '', '0000-00-00 00:00:00', 1, '', 0, 0, 0, ''),
(232, '188800488', 'Lalo Quintero', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 188800488, 'Lalo Quintero', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(233, '222305691', 'Marius Karabaczek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 222305691, 'Marius Karabaczek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(234, '223300517', 'Yara Bevaart', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 223300517, 'Yara Bevaart', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(236, '506363885', 'xyz@wiflash.com', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 506363885, 'Alina Mihali', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(237, '510099348', 'Claire Wintle', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 510099348, 'Claire Wintle', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(238, '513415204', 'Felix Jung', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 513415204, 'Felix Jung', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(239, '516603614', 'Jo Felton', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 516603614, 'Jo Felton', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(240, '518114787', 'Martin Staude', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 518114787, 'Martin Staude', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(241, '521386268', 'Julien Mottet', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 521386268, 'Julien Mottet', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(242, '531582261', 'Flo Fuchs', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 531582261, 'Flo Fuchs', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(243, '544528321', 'Pascal Janitschke', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 544528321, 'Pascal Janitschke', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(244, '545000401', 'Hannes Pfister', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 545000401, 'Hannes Pfister', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(245, '549010660', 'Stephan Ludwig Wirries', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 549010660, 'Stephan Ludwig Wirries', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(246, '550690209', 'Christina Mayr', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 550690209, 'Christina Mayr', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(247, '558070318', 'Johanna Schodl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 558070318, 'Johanna Schodl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(248, '560552789', 'Martin Hirschvogel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 560552789, 'Martin Hirschvogel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(249, '561436876', 'Jens Soeldner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 561436876, 'Jens Soeldner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(250, '568608180', 'Petra Lehmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 568608180, 'Petra Lehmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(251, '582467256', 'Andrea Gnad', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 582467256, 'Andrea Gnad', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(252, '591444876', 'Rudolf Klein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 591444876, 'Rudolf Klein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(253, '597210697', 'Tobias Haeusser', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 597210697, 'Tobias Haeusser', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(254, '611278448', 'Ivana Sijan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 611278448, 'Ivana Sijan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(255, '618159288', 'Dominik Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 618159288, 'Dominik Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(256, '618828168', 'Jakob Maier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 618828168, 'Jakob Maier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(257, '624760814', 'Yasmin Schmelzer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 624760814, 'Yasmin Schmelzer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(258, '628724846', 'Fabi Zweitausend', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 628724846, 'Fabi Zweitausend', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(259, '636984129', 'Klose Bastian', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 636984129, 'Klose Bastian', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(260, '638995067', 'Elvin Sule', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 638995067, 'Elvin Sule', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(261, '645439049', 'Robert Grosse', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 645439049, 'Robert Grosse', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(262, '652326064', 'Eva Holíková', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 652326064, 'Eva Holíková', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(263, '661504447', 'Daniel Stitz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 661504447, 'Daniel Stitz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(264, '665110751', 'Anne Schröder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 665110751, 'Anne Schröder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(265, '665563504', 'Franziska Herberg', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 665563504, 'Franziska Herberg', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(266, '666643040', 'Martin Ebner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 666643040, 'Martin Ebner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(267, '670360599', 'Karen Murillo', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 670360599, 'Karen Murillo', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(268, '672529261', 'Jacqueline Reid', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 672529261, 'Jacqueline Reid', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(269, '673048159', 'Faruk Kapetanovic', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 673048159, 'Faruk Kapetanovic', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(270, '674234172', 'Christoph Mergner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 674234172, 'Christoph Mergner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(271, '685086895', 'Lukas Hochgerner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 685086895, 'Lukas Hochgerner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(272, '694382551', 'Alexander Trinkmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 694382551, 'Alexander Trinkmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(273, '699205152', 'Anna ForstBattaglia', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 699205152, 'Anna ForstBattaglia', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(274, '702271997', 'Doina Bors', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 702271997, 'Doina Bors', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(275, '706531296', 'Susi Vockenhuber', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 706531296, 'Susi Vockenhuber', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(276, '730369845', 'Harald Augeneder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 730369845, 'Harald Augeneder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(277, '731305392', 'Fani Christofi', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 731305392, 'Fani Christofi', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(278, '731937545', 'Susanne Schlicht', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 731937545, 'Susanne Schlicht', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(279, '732799964', 'Miguel Trigueiros', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 732799964, 'Miguel Trigueiros', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(280, '733378858', 'Johannes Rüby', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 733378858, 'Johannes Rüby', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(281, '745857128', 'André Häberlein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 745857128, 'André Häberlein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(282, '752559988', 'Sebastian Knabl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 752559988, 'Sebastian Knabl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(283, '760300494', 'Pablo Piñeiro López', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 760300494, 'Pablo Piñeiro López', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(284, '804159775', 'Dina F. Kristina', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 804159775, 'Dina F. Kristina', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(285, '805730205', 'Geraldine Grosch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 805730205, 'Geraldine Grosch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(286, '811810586', 'Elisabeth Danninger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 811810586, 'Elisabeth Danninger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(287, '827825216', 'Tino Schröder', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 827825216, 'Tino Schröder', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(288, '828324909', 'Judith Schwarz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 828324909, 'Judith Schwarz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(289, '863235564', 'Bea Alústiza', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 863235564, 'Bea Alústiza', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(290, '1003642913', 'Martin Technau', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1003642913, 'Martin Technau', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(291, '1016415453', 'Marcus Toco-Loco', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1016415453, 'Marcus Toco-Loco', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(292, '1019001072', 'Michael Scheremet', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1019001072, 'Michael Scheremet', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(293, '1030465930', 'Johannes Huebner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1030465930, 'Johannes Huebner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(294, '1030755904', 'Johannes Stefan', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1030755904, 'Johannes Stefan', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(295, '1032414140', 'Tanja Sonntag', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1032414140, 'Tanja Sonntag', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(296, '1032558218', 'David Hlavacek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1032558218, 'David Hlavacek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(297, '1038331228', 'Sara Kaczmarek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1038331228, 'Sara Kaczmarek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(298, '1040844880', 'Lu Sa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1040844880, 'Lu Sa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(299, '1044370140', 'Tino Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1044370140, 'Tino Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(300, '1047232098', 'Isi Kappel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1047232098, 'Isi Kappel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(301, '1079138956', 'Christin Florence', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1079138956, 'Christin Florence', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(302, '1107251577', 'Marcel Rausendorff', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1107251577, 'Marcel Rausendorff', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(303, '1134776851', 'Daniela Scheidhammer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1134776851, 'Daniela Scheidhammer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(304, '1139102080', 'Henrik Zimmermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1139102080, 'Henrik Zimmermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(305, '1140185531', 'Michaela Thöress', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1140185531, 'Michaela Thöress', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(306, '1147868018', 'Livia Staudinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1147868018, 'Livia Staudinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(307, '1151023138', 'Fabian Oberhofer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1151023138, 'Fabian Oberhofer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(308, '1155841098', 'Jennifer Thornton', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1155841098, 'Jennifer Thornton', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(309, '1161636328', 'An Di', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1161636328, 'An Di', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(310, '1175641856', 'Maximilian Schuessler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1175641856, 'Maximilian Schuessler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(311, '1178274401', 'Katharina Kerres', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1178274401, 'Katharina Kerres', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(312, '1187548297', 'Norbert Mattern', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1187548297, 'Norbert Mattern', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(313, '1192740133', 'Toby Berster', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1192740133, 'Toby Berster', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(314, '1206705382', 'Annika Habermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1206705382, 'Annika Habermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(315, '1211034346', 'Kathrin Hagenbucher', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1211034346, 'Kathrin Hagenbucher', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(316, '1221774508', 'Andreas Fischer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1221774508, 'Andreas Fischer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(317, '1230613602', 'Teresa Chicharro Antolín', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1230613602, 'Teresa Chicharro Antolín', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(318, '1244707886', 'Anita Kemptner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1244707886, 'Anita Kemptner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(319, '1257156185', 'Bianca Anna Arnold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1257156185, 'Bianca Anna Arnold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(320, '1268183822', 'Doris Wanzenboeck', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1268183822, 'Doris Wanzenboeck', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(321, '1268967509', 'Florence Boulenger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1268967509, 'Florence Boulenger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(322, '1305556255', 'Caro Wa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1305556255, 'Caro Wa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(323, '1308460958', 'Cosima Meyer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1308460958, 'Cosima Meyer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(324, '1324862722', 'Saskia Mailer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1324862722, 'Saskia Mailer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(325, '1338275180', 'Peter Fritsch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1338275180, 'Peter Fritsch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(326, '1363772166', 'Daniel Lupp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1363772166, 'Daniel Lupp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(327, '1368054280', 'Gerrit Seidel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1368054280, 'Gerrit Seidel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(328, '1389760432', 'Caro Huck', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1389760432, 'Caro Huck', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(329, '1410872110', 'Marina Ulrich', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1410872110, 'Marina Ulrich', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(330, '1416410333', 'Christian Van Christian', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1416410333, 'Christian Van Christian', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(331, '1423470021', 'Alexander Hektor', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1423470021, 'Alexander Hektor', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(332, '1437406500', 'Anna-Katharina Praetorius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1437406500, 'Anna-Katharina Praetorius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(333, '1452675873', 'Melinda Appel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1452675873, 'Melinda Appel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(334, '1466498370', 'Manuel Johannes Medinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1466498370, 'Manuel Johannes Medinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(335, '1469974731', 'Elvira Trüe', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1469974731, 'Elvira Trüe', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(336, '1478687555', 'Robert Czafik', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1478687555, 'Robert Czafik', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(337, '1482436942', 'Marisa Schaffer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1482436942, 'Marisa Schaffer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(338, '1491571418', 'Saskia Thieme', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1491571418, 'Saskia Thieme', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(339, '1492501952', 'Erik Harloff', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1492501952, 'Erik Harloff', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(340, '1500393102', 'Andrea Schorr', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1500393102, 'Andrea Schorr', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(341, '1504124897', 'Annelie Rossbach', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1504124897, 'Annelie Rossbach', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(342, '1512797255', 'Dora Tüz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1512797255, 'Dora Tüz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(343, '1517804158', 'Désirée Biedermann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1517804158, 'Désirée Biedermann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(344, '1519856486', 'Simon Beez', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1519856486, 'Simon Beez', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(345, '1528158065', 'Barbara Anita P', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1528158065, 'Barbara Anita P', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(346, '1535897417', 'Sandra Zulehner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1535897417, 'Sandra Zulehner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(347, '1537225461', 'Melanie Schwarz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1537225461, 'Melanie Schwarz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(348, '1539463846', 'Thor Sten', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1539463846, 'Thor Sten', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(349, '1548265698', 'Stephanie Schrembs', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1548265698, 'Stephanie Schrembs', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(350, '1580280847', 'Lea Erlbacher', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1580280847, 'Lea Erlbacher', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(351, '1607666341', 'Maddin Hella', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1607666341, 'Maddin Hella', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(352, '1643821987', 'Alexandra Kokot', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1643821987, 'Alexandra Kokot', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(353, '1654203720', 'Mami Egawa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1654203720, 'Mami Egawa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(354, '1655583277', 'Susanne Franz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1655583277, 'Susanne Franz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(355, '1663155101', 'Alessandra Bianca', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1663155101, 'Alessandra Bianca', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(356, '1663316214', 'Dorothee Rapsch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1663316214, 'Dorothee Rapsch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(357, '1684737636', 'Miguel da Silva', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1684737636, 'Miguel da Silva', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(358, '1750759078', 'Andreas Kuhn', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1750759078, 'Andreas Kuhn', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(359, '1764796018', 'Tim Gradel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1764796018, 'Tim Gradel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(360, '1781378051', 'David Ben Josef', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1781378051, 'David Ben Josef', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(361, '1818832599', 'Laura Straub', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 1818832599, 'Laura Straub', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(362, '100000002050606', 'Kati Lange', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000002050606, 'Kati Lange', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(363, '100000007789469', 'Мария Пиргова', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000007789469, 'Мария Пиргова', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(364, '100000010929590', 'Viola Frank', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000010929590, 'Viola Frank', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(365, '100000034343363', 'Simon Niedermeier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000034343363, 'Simon Niedermeier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(366, '100000080895458', 'Harry Kokesch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000080895458, 'Harry Kokesch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(367, '100000085113896', 'Daniel Routschka', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000085113896, 'Daniel Routschka', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(368, '100000093977731', 'Jasmin Pol', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000093977731, 'Jasmin Pol', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(369, '100000117878844', 'Carina Ruppert', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000117878844, 'Carina Ruppert', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(370, '100000118453340', 'Elisabeth Praetorius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000118453340, 'Elisabeth Praetorius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(371, '100000121304899', 'Daniel Nagel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000121304899, 'Daniel Nagel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(372, '100000125351450', 'Andrea Patla', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000125351450, 'Andrea Patla', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(373, '100000170438919', 'Jens Meier', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000170438919, 'Jens Meier', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(374, '100000179167352', 'Primat Der Vernunft', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000179167352, 'Primat Der Vernunft', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(375, '100000186974205', 'Kerstin Pol', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000186974205, 'Kerstin Pol', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(376, '100000202814034', 'Kathrin Stock', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000202814034, 'Kathrin Stock', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(377, '100000205180286', 'Stephanie Tschernitz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000205180286, 'Stephanie Tschernitz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(378, '100000216678170', 'Jule Be', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000216678170, 'Jule Be', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(379, '100000268216083', 'Peter Ziß', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000268216083, 'Peter Ziß', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(380, '100000283346874', 'Bea Mue', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000283346874, 'Bea Mue', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(381, '100000316994194', 'Olga Tolstikhina', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000316994194, 'Olga Tolstikhina', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(382, '100000318736708', 'Karolin Dingens', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000318736708, 'Karolin Dingens', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(383, '100000319542995', 'Dominik Friedel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000319542995, 'Dominik Friedel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(384, '100000355013314', 'Florian Schmidbauer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000355013314, 'Florian Schmidbauer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(385, '100000356622507', 'Matthias Lutz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000356622507, 'Matthias Lutz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(386, '100000376922096', 'Sanne Mäh', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000376922096, 'Sanne Mäh', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(387, '100000386753929', 'Caroline Cathérine', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000386753929, 'Caroline Cathérine', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(388, '100000391839703', 'Verena Gilzinger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000391839703, 'Verena Gilzinger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(389, '100000401877282', 'Mona Boehm', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000401877282, 'Mona Boehm', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(390, '100000411998686', 'Jan Häberlein', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000411998686, 'Jan Häberlein', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(391, '100000439765606', 'Thomas Mladek', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000439765606, 'Thomas Mladek', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(392, '100000457712552', 'Georg Terlecki', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000457712552, 'Georg Terlecki', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(393, '100000461773575', 'Manu Fox', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000461773575, 'Manu Fox', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(394, '100000466443361', 'Christina Patscheider', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000466443361, 'Christina Patscheider', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(395, '100000470956458', 'Dominik Leroch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000470956458, 'Dominik Leroch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(396, '100000484420303', 'Simon Can', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000484420303, 'Simon Can', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(397, '100000486915326', 'Alexandra Bc', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000486915326, 'Alexandra Bc', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(398, '100000529963006', 'Alexander Kreul', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000529963006, 'Alexander Kreul', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(399, '100000530450394', 'Anastasija Terebkova', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000530450394, 'Anastasija Terebkova', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(400, '100000574537590', 'Martin Junger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000574537590, 'Martin Junger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(401, '100000606318282', 'So Phiaa', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000606318282, 'So Phiaa', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(402, '100000607879668', 'Katrin Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000607879668, 'Katrin Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(403, '100000608415115', 'Daniel Meixner', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000608415115, 'Daniel Meixner', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(404, '100000629367755', 'Christian Bach', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000629367755, 'Christian Bach', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(405, '100000643194798', 'Doris Schüssler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000643194798, 'Doris Schüssler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(406, '100000657376063', 'Matthias Lederer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000657376063, 'Matthias Lederer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(407, '100000671284782', 'Julia He', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000671284782, 'Julia He', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(408, '100000680851487', 'Käptn Nobbi', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000680851487, 'Käptn Nobbi', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(409, '100000683616246', 'Matthias Ewald', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000683616246, 'Matthias Ewald', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(410, '100000698224682', 'Peter Batz', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000698224682, 'Peter Batz', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(411, '100000712232001', 'Missi Mathe', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000712232001, 'Missi Mathe', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(412, '100000712245309', 'Maria Arold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000712245309, 'Maria Arold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(413, '100000728741385', 'Mark UsLa Skonius', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000728741385, 'Mark UsLa Skonius', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(414, '100000763043535', 'Anja Müller', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000763043535, 'Anja Müller', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(415, '100000783663903', 'Alexander Sankowski', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000783663903, 'Alexander Sankowski', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(416, '100000788142694', 'Valerie Kleeberger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000788142694, 'Valerie Kleeberger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(417, '100000807861223', 'Oliver Gawlik', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000807861223, 'Oliver Gawlik', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(418, '100000835003358', 'Kerstin Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000835003358, 'Kerstin Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(419, '100000851798080', 'Hanna Auf Der Erbse', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000851798080, 'Hanna Auf Der Erbse', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(420, '100000901367860', 'Andrea Rasp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000901367860, 'Andrea Rasp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(421, '100000927008110', 'Marc Sippel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000927008110, 'Marc Sippel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(422, '100000984669302', 'Manuel Bößenecker', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100000984669302, 'Manuel Bößenecker', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(423, '100001028705214', 'Christina Nelson', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001028705214, 'Christina Nelson', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(424, '100001052281764', 'Poli Tiker', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001052281764, 'Poli Tiker', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(425, '100001081564768', 'Alexander Popp', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001081564768, 'Alexander Popp', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(426, '100001219663645', 'Peter Galiger', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001219663645, 'Peter Galiger', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(427, '100001223796425', 'Patrick Pickelmann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001223796425, 'Patrick Pickelmann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(428, '100001274533506', 'Nicole Haßlauer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001274533506, 'Nicole Haßlauer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(429, '100001275986436', 'Vera Maja', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001275986436, 'Vera Maja', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(430, '100001287920161', 'Mathias Kohl', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001287920161, 'Mathias Kohl', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(431, '100001324862397', 'Christian Boesch', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001324862397, 'Christian Boesch', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(432, '100001375174066', 'Stefan Gerber', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001375174066, 'Stefan Gerber', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(433, '100001382434350', 'Sebastian Arnecke', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001382434350, 'Sebastian Arnecke', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(434, '100001409583539', 'Franziska Leibold', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001409583539, 'Franziska Leibold', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(435, '100001409911358', 'Thomas Neuhof', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001409911358, 'Thomas Neuhof', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(436, '100001427003854', 'DerHannes Derkannes', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001427003854, 'DerHannes Derkannes', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(437, '100001446923579', 'Stef An', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001446923579, 'Stef An', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(438, '100001569750446', 'Shisha Light', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001569750446, 'Shisha Light', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(439, '100001575792111', 'Philipp VVinter', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001575792111, 'Philipp VVinter', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(440, '100001613961234', 'Simon Algegenbertig', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001613961234, 'Simon Algegenbertig', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(441, '100001615782309', 'Mische Schrist', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001615782309, 'Mische Schrist', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(442, '100001623873345', 'Harald Biegel', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001623873345, 'Harald Biegel', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(443, '100001638025298', 'Brin Chen', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001638025298, 'Brin Chen', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(444, '100001680568802', 'Marion Haeckler', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001680568802, 'Marion Haeckler', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(445, '100001694951910', 'Udo Brehm', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001694951910, 'Udo Brehm', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(446, '100001709670746', 'Ivan Aleksandrov', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001709670746, 'Ivan Aleksandrov', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(447, '100001791395982', 'Daniel Mann', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001791395982, 'Daniel Mann', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(448, '100001805203198', 'Martin Goll', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001805203198, 'Martin Goll', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(449, '100001840412388', 'Christopher Klausnitzer', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001840412388, 'Christopher Klausnitzer', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(450, '100001985733821', 'Antonia Semmert', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100001985733821, 'Antonia Semmert', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(451, '100002199306466', 'Ki Ka', '', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 100002199306466, 'Ki Ka', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, ''),
(452, '6db7427c118fa786c95a61fd5460a614', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '65320ea9fe13f531f752611b7bc59b07', 0, 0, 0, ''),
(454, '557cde96ef4154ef9b7e6a6b3ed1dba2', 'testuser@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '737c24528775eeaa685e90622a38727b', 0, 0, 0, ''),
(455, '957ea09b87f72e670d2a2f84b1e8e6de', 'test2@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '9e0d44a66e400f582ead8a38ed7e0a4f', 0, 0, 0, ''),
(456, 'bc24142e9411c60f878b741c9bf30c2a', 'test3@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '3da07eceaeb847944d3c6212f431eaf8', 0, 0, 0, ''),
(457, '36ccfadca83ae062ee0a052f981d6efd', 'test4@test.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '91a9bca5022f9da39ad30036e3a5cd37', 0, 0, 0, ''),
(458, 'ab1cf6b0cca44ad67a91d6e8eeb56747', 'fgdfgd@hhhiin', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '894dfc34f2be918e2beebceca667427c', 0, 0, 0, ''),
(470, '026a1ccd132cc10258efe411787076f0', 'stefan5@wiflash.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '18703b536e94f1e71526988b71ffec9c', 0, 0, 0, ''),
(472, 'da038e1e46dfd8c826043f7c79833329', 'stefan6@wiflash.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '3d08ec21ec785258d6fb36a60c8d097d', 0, 0, 0, ''),
(474, 'e7990074c61e2aa3226a12e1e01dd19e', 'stefan@wiflashe.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'dec731a4b1db937910fa9f9af45bbef8', 0, 0, 0, ''),
(475, '688e92d09bba4e4dfcb28da51fba6d16', 'fghfhf@jhjkhkh', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '69e3037f5c827fa540ea8daa4bad8535', 0, 0, 0, ''),
(476, '27c34c3e751e960056c6a634a1549b00', 'fghfhf@jhjkhkh.com', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'a1f5916d015cf40f968de5df1aa090c5', 0, 0, 0, ''),
(477, 'edc817ccf1c6e397c1c81b7c2b68e4fb', 'hjkh@jkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '4ab51b7faa1553779bd765a8fc48c885', 0, 0, 0, ''),
(478, '16e926fe77d737f5777267688399b2b1', 'hjkhf@jkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '47a3fc5014b3943b8c6fa38cc8ee83ba', 0, 0, 0, ''),
(479, '9d9daf530efd4e53538f809d6169deb7', 'hghjg@hjkhjkh.com', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '0ffc2662705e21ca7f241ddea42d9d78', 0, 0, 0, ''),
(488, '26b9c5c1affd37b5e6ef36fb4350e765', 'fghfhf@jhjkhkh.comm', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '1704ec1810767466993f4dcb1312ad5b', 0, 0, 0, ''),
(492, '15b065f500d9eca59e98e0d0cd0e3d37', 'fghfhf@jhjkhkh.comn', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7387d4443990823422a96faa9f282451', 0, 0, 0, ''),
(493, '0476444f714696e3728d2d57c49a681c', 'fghf@ghjg.de', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'c6ef90b46e037516851a8383478538cb', 0, 0, 0, ''),
(498, '798c745a863f55a9c7e49a1906df8caa', 'stefan@wiflash.com6', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'df25c685c6b32752171f3d4a652343a0', 0, 0, 0, ''),
(499, '6cd746d3f0d08f3a74616efa214cbbf4', 'stefan@wiflash.comg', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '67f2b966389724a86024505dcace35b9', 0, 0, 0, ''),
(500, '32fb6bf95ffd3176e100a0036558623e', 'stefan@wiflash.comh', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6ae91af7d37d010e3976519a9825d49e', 0, 0, 0, ''),
(503, '37648a23076286bfc16e840861497170', 'stefan@wiflash.comgg', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'df5d42bfac419016568984a2ad07d919', 0, 0, 0, ''),
(504, '2d92d4128acd66ff1c0a10fa581f746f', 'stefan@wiflash.comb', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'fc20e0c45e2d9dc9d3a39dd81f5162fd', 0, 0, 0, ''),
(505, 'd4e88c080eba8f595f65e09167893ca9', 'stefan@wiflash.coms', 'f5d1278e8109edd94e1e4197e04873b9', '0000-00-00 00:00:00', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7a4eee16ac84d9f7616d809618625bd0', 0, 0, 0, ''),
(506, '96134f0514017c98db08150775662254', 'stefan@wiflash.comr', '84a9de180e0ea617561ae8abb256084f', '2011-08-22 23:21:15', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6d1403ebde5a02e347efff5c94153ec5', 0, 0, 0, '');
INSERT INTO `users` (`ID`, `UserToken`, `UserEmail`, `UserPass`, `RegDate`, `firstname`, `gender`, `birthday`, `nationality`, `residence`, `description`, `personal_goal`, `flash_categories_visible`, `fb_ID`, `fb_name`, `sections_public`, `language`, `last_online_time`, `trigger_friends`, `activation_code`, `diary_start_month`, `diary_start_year`, `bd_latest_score`, `da_latest_score`) VALUES
(507, '50bdacec67c3db943c1eba8ac39a9b69', 'stefan@wiflash.come', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:27:44', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '8f5ede1cb71a454f6116057208843a7a', 0, 0, 0, ''),
(508, '13140567474e52ea2b23feb', 'tester@test,de', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:45:47', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '814cf24d27bc82ecdb6bc7ec80548da4', 0, 0, 0, ''),
(509, '13140570694e52eb6df164f', 'stefan@wiflash.comhh', 'd40c2c1557cdcb1f10ac8a599a875d5c', '2011-08-22 23:51:09', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'd708b074b40e000b94e9e274758acaf7', 0, 0, 0, ''),
(510, '13140575844e52ed70736d2', 'stefan@wiflash.comeee', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-22 23:59:44', '', 'm', '1956-07-06', 'AS', 'AO', '', '', '', 0, '', '', 'en', '2011-08-23 11:12:17', 0, '', 0, 0, 0, ''),
(511, '13140603364e52f830b8c4e', 'stefan@wiflash.comxx', 'f5d1278e8109edd94e1e4197e04873b9', '2011-08-23 00:45:36', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '7ed354cf82624fa49cbd136c33f38f6d', 0, 0, 0, ''),
(512, 'huih', 'dd', 'huih', '2012-09-01 18:31:46', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0, 0, ''),
(513, 'huih2', 'dd2', 'huih', '2012-09-01 18:35:30', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0, 0, ''),
(514, 'huih3', 'dd3', 'huih', '2012-09-01 18:36:06', 'hui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, 'huih', 0, 0, 0, ''),
(515, '1346524669504255fd16610', 'huih', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:37:49', 'ghfghf', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '31ba998d3425f9839b707fc53cb1e6aa', 0, 0, 0, ''),
(516, '134652470750425623df2cd', 'gzuguzg', 'd41d8cd98f00b204e9800998ecf8427e', '2012-09-01 18:38:27', '', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '44508299c4d1c1f3460b61b040fe8893', 0, 0, 0, ''),
(517, '1346524787504256733c0a2', 'hjkhkjh', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:39:47', 'hjui', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '13ea3959731b34e0d7d72da8fda8f90a', 0, 0, 0, ''),
(518, '1346525542504259666e92c', 'stefan@happify.cm', '827ccb0eea8a706c4c34a16891f84e7b', '2012-09-01 18:52:22', 'jkoii', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '6f8a74f6880d7e79b8ce882ad59e27f5', 0, 0, 0, ''),
(545, '13469529835048df1799989', 'de.stefan.richter@gmail.com', '3a2b37336664ede535b20c76b315a0f1', '2012-09-06 17:36:23', 'jkljklj', 'm', '0000-00-00', '', '', '', '', '', 0, '', '', 'en', '0000-00-00 00:00:00', 0, '', 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
