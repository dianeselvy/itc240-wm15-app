-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `wm16_Albums`;
CREATE TABLE `wm16_Albums` (
  `AlbumID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Artist` varchar(255) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Label` varchar(100) DEFAULT NULL,
  `ReleaseYear` int(10) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`AlbumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `wm16_Albums` (`AlbumID`, `Title`, `Artist`, `Genre`, `Label`, `ReleaseYear`, `Description`) VALUES
(1,	'Dark Side of the Moon',	'Pink Floyd',	'Classic Rock',	'Capitol',	1972,	'A good album');

-- 2016-03-01 02:54:41
