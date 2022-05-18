-- Adminer 4.8.1 MySQL 5.5.5-10.7.3-MariaDB-1:10.7.3+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `bets`;
CREATE TABLE `bets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` varchar(36) NOT NULL,
  `ticket_id` varchar(36) NOT NULL,
  `pronostic` varchar(1) DEFAULT '1' COMMENT '1 = victory for home_team, D = draw, 2 = victory for away_team',
  `potentialGain` float NOT NULL DEFAULT 0,
  `result` tinyint(1) DEFAULT NULL COMMENT '0 = false, 1 = true',
  PRIMARY KEY (`id`),
  KEY `party_id` (`party_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `bets_ibfk_1` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  CONSTRAINT `bets_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `parties`;
CREATE TABLE `parties` (
  `id` varchar(36) NOT NULL COMMENT 'uuid v4',
  `home_team` varchar(36) NOT NULL,
  `away_team` varchar(36) NOT NULL,
  `score_home_team` int(11) DEFAULT NULL,
  `score_away_team` int(11) DEFAULT NULL,
  `home_team_rating` float NOT NULL DEFAULT 0,
  `away_team_rating` float NOT NULL DEFAULT 0,
  `draft_rating` float NOT NULL DEFAULT 0,
  `result` varchar(1) DEFAULT NULL COMMENT '1 = victory for home_team, D = draw, 2 = victory for away_team',
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_team` (`home_team`),
  KEY `away_team` (`away_team`),
  CONSTRAINT `parties_ibfk_1` FOREIGN KEY (`home_team`) REFERENCES `teams` (`id`),
  CONSTRAINT `parties_ibfk_2` FOREIGN KEY (`away_team`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` varchar(36) NOT NULL COMMENT 'uuid v4',
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` varchar(36) NOT NULL COMMENT 'uuid v4',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `result` tinyint(1) DEFAULT NULL COMMENT '1 = true / 0 = false',
  `bet` float NOT NULL DEFAULT 0,
  `potentialGain` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-05-16 20:06:50