-- Adminer 4.8.1 MySQL 5.5.5-10.7.3-MariaDB-1:10.7.3+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `bets` (`id`, `party_id`, `ticket_id`, `pronostic`, `potentialGain`, `result`) VALUES
(1,	'0e45050f-d54f-11ec-b813-0242ac130002',	'a797efee-d54f-11ec-b813-0242ac130002',	'1',	1.9,	NULL);

INSERT INTO `parties` (`id`, `home_team`, `away_team`, `score_home_team`, `score_away_team`, `home_team_rating`, `away_team_rating`, `draft_rating`, `result`, `date`) VALUES
('0e45050f-d54f-11ec-b813-0242ac130002',	'0f7e5b8e-d54e-11ec-b813-0242ac130002',	'fd37ba96-d54d-11ec-b813-0242ac130002',	NULL,	NULL,	1.9,	2.2,	1.7,	NULL,	'2022-05-16'),
('2b33e5a2-d54f-11ec-b813-0242ac130002',	'150690ea-d54e-11ec-b813-0242ac130002',	'066604ed-d54e-11ec-b813-0242ac130002',	NULL,	NULL,	1.8,	2,	2.1,	NULL,	'2022-05-16'),
('5aeb55f9-d54f-11ec-b813-0242ac130002',	'1c659f20-d54e-11ec-b813-0242ac130002',	'24f13e0d-d54e-11ec-b813-0242ac130002',	NULL,	NULL,	1.9,	2.1,	1.8,	NULL,	'2022-05-16'),
('7dc838f7-d54f-11ec-b813-0242ac130002',	'0af805f1-d54e-11ec-b813-0242ac130002',	'36b09c56-d54e-11ec-b813-0242ac130002',	NULL,	NULL,	1.7,	2.2,	2,	NULL,	'2022-05-16'),
('84366cbb-d54f-11ec-b813-0242ac130002',	'326b83d2-d54e-11ec-b813-0242ac130002',	'2dd06ce6-d54e-11ec-b813-0242ac130002',	NULL,	NULL,	1.5,	2,	2.1,	NULL,	'2022-05-16');

INSERT INTO `teams` (`id`, `name`) VALUES
('326b83d2-d54e-11ec-b813-0242ac130002',	'Argentina'),
('2dd06ce6-d54e-11ec-b813-0242ac130002',	'Brazil'),
('0f7e5b8e-d54e-11ec-b813-0242ac130002',	'England'),
('fd37ba96-d54d-11ec-b813-0242ac130002',	'France'),
('150690ea-d54e-11ec-b813-0242ac130002',	'Germany'),
('066604ed-d54e-11ec-b813-0242ac130002',	'Italy'),
('1c659f20-d54e-11ec-b813-0242ac130002',	'Netherlands'),
('24f13e0d-d54e-11ec-b813-0242ac130002',	'Portugal'),
('0af805f1-d54e-11ec-b813-0242ac130002',	'Spain'),
('36b09c56-d54e-11ec-b813-0242ac130002',	'Uruguay');

INSERT INTO `tickets` (`id`, `date`, `result`, `bet`, `potentialGain`) VALUES
('a797efee-d54f-11ec-b813-0242ac130002',	'2022-05-16 00:00:00',	0,	3,	0);

-- 2022-05-16 20:07:22