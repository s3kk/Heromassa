-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Out 12, 2016 as 03:38 
-- Versão do Servidor: 5.1.41
-- Versão do PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `ice`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `salt` varchar(40) NOT NULL DEFAULT '',
  `premdays` int(11) NOT NULL DEFAULT '0',
  `lastday` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(20) NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'internal usage',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '1',
  `vip_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `salt`, `premdays`, `lastday`, `email`, `key`, `blocked`, `warnings`, `group_id`, `vip_time`) VALUES
(1, '1', '1', '', 0, 1451340395, '', '0', 0, 0, 1, 0),
(2, 'heroice', 'exice', '', 99999, 1451340395, '', '0', 0, 0, 1, 9999);

--
-- Gatilhos `accounts`
--
DROP TRIGGER IF EXISTS `ondelete_accounts`;
DELIMITER //
CREATE TRIGGER `ondelete_accounts` BEFORE DELETE ON `accounts`
 FOR EACH ROW BEGIN
	DELETE FROM `bans` WHERE `type` IN (3, 4) AND `value` = OLD.`id`;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `account_viplist`
--

CREATE TABLE IF NOT EXISTS `account_viplist` (
  `account_id` int(11) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  UNIQUE KEY `account_id_2` (`account_id`,`player_id`),
  KEY `account_id` (`account_id`),
  KEY `player_id` (`player_id`),
  KEY `world_id` (`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `account_viplist`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `auction_system`
--

CREATE TABLE IF NOT EXISTS `auction_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auction_system`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '1 - ip banishment, 2 - namelock, 3 - account banishment, 4 - notation, 5 - deletion',
  `value` int(10) unsigned NOT NULL COMMENT 'ip address (integer), player guid or account number',
  `param` int(10) unsigned NOT NULL DEFAULT '4294967295' COMMENT 'used only for ip banishment mask (integer)',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `expires` int(11) NOT NULL,
  `added` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `reason` int(10) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `statement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`value`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `bans`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `environment_killers`
--

CREATE TABLE IF NOT EXISTS `environment_killers` (
  `kill_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `kill_id` (`kill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `environment_killers`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `global_storage`
--

CREATE TABLE IF NOT EXISTS `global_storage` (
  `key` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '0',
  UNIQUE KEY `key` (`key`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `global_storage`
--

INSERT INTO `global_storage` (`key`, `world_id`, `value`) VALUES
(34370, 0, '0'),
(34371, 0, '5'),
(34372, 0, '0'),
(34373, 0, '0'),
(42300, 0, '0'),
(42301, 0, '0'),
(42302, 0, '0'),
(42303, 0, '0'),
(42304, 0, '0'),
(42305, 0, '0'),
(42306, 0, '0'),
(42307, 0, '0'),
(42308, 0, '0'),
(42309, 0, '0'),
(42400, 0, '0'),
(42401, 0, '0'),
(42402, 0, '0'),
(42403, 0, '0'),
(42404, 0, '0'),
(42405, 0, '0'),
(42406, 0, '0'),
(42407, 0, '0'),
(42408, 0, '0'),
(42409, 0, '0'),
(140120, 0, '0'),
(140121, 0, '0'),
(180400, 0, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `checkdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL,
  `balance` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`world_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `guilds`
--

INSERT INTO `guilds` (`id`, `world_id`, `name`, `ownerid`, `creationdata`, `checkdata`, `motd`, `balance`) VALUES
(1, 0, 'Staff', 2, 1451340658, 0, 'Your guild has been successfully created, to view all available commands type: !commands. If you would like to remove this message use !cleanmotd and to set new motd use !setmotd text.', 0),
(2, 0, 'Backup Staff', 3, 1451340667, 0, 'Your guild has been successfully created, to view all available commands type: !commands. If you would like to remove this message use !cleanmotd and to set new motd use !setmotd text.', 0);

--
-- Gatilhos `guilds`
--
DROP TRIGGER IF EXISTS `oncreate_guilds`;
DELIMITER //
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds`
 FOR EACH ROW BEGIN
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Leader', 3, NEW.`id`);
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `ondelete_guilds`;
DELIMITER //
CREATE TRIGGER `ondelete_guilds` BEFORE DELETE ON `guilds`
 FOR EACH ROW BEGIN
	UPDATE `players` SET `guildnick` = '', `rank_id` = 0 WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = OLD.`id`);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_invites`
--

CREATE TABLE IF NOT EXISTS `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id` (`player_id`,`guild_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_invites`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_kills`
--

CREATE TABLE IF NOT EXISTS `guild_kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL,
  `war_id` int(11) NOT NULL,
  `death_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guild_kills_ibfk_1` (`war_id`),
  KEY `guild_kills_ibfk_2` (`death_id`),
  KEY `guild_kills_ibfk_3` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `guild_kills`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL COMMENT '1 - leader, 2 - vice leader, 3 - member',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `guild_ranks`
--

INSERT INTO `guild_ranks` (`id`, `guild_id`, `name`, `level`) VALUES
(1, 1, 'Leader', 3),
(2, 1, 'Vice-Leader', 2),
(3, 1, 'Member', 1),
(4, 2, 'Leader', 3),
(5, 2, 'Vice-Leader', 2),
(6, 2, 'Member', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_wars`
--

CREATE TABLE IF NOT EXISTS `guild_wars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL,
  `enemy_id` int(11) NOT NULL,
  `begin` bigint(20) NOT NULL DEFAULT '0',
  `end` bigint(20) NOT NULL DEFAULT '0',
  `frags` int(10) unsigned NOT NULL DEFAULT '0',
  `payment` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guild_kills` int(10) unsigned NOT NULL DEFAULT '0',
  `enemy_kills` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `guild_id` (`guild_id`),
  KEY `enemy_id` (`enemy_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `guild_wars`
--

INSERT INTO `guild_wars` (`id`, `guild_id`, `enemy_id`, `begin`, `end`, `frags`, `payment`, `guild_kills`, `enemy_kills`, `status`) VALUES
(1, 2, 1, 1451340698, 0, 100, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `lastwarning` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `town` int(10) unsigned NOT NULL DEFAULT '0',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `rent` int(10) unsigned NOT NULL DEFAULT '0',
  `doors` int(10) unsigned NOT NULL DEFAULT '0',
  `beds` int(10) unsigned NOT NULL DEFAULT '0',
  `tiles` int(10) unsigned NOT NULL DEFAULT '0',
  `guild` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `houses`
--

INSERT INTO `houses` (`id`, `world_id`, `owner`, `paid`, `warnings`, `lastwarning`, `name`, `town`, `size`, `price`, `rent`, `doors`, `beds`, `tiles`, `guild`, `clear`) VALUES
(268, 0, 0, 0, 0, 0, 'House #0', 1, 16, 42000, 0, 3, 4, 42, 0, 0),
(269, 0, 0, 0, 0, 0, 'House #1', 1, 14, 40000, 0, 2, 4, 40, 0, 0),
(270, 0, 0, 0, 0, 0, 'House #2', 1, 26, 60000, 0, 4, 4, 60, 0, 0),
(273, 0, 0, 0, 0, 0, 'House #3', 1, 41, 96000, 0, 4, 4, 96, 0, 0),
(274, 0, 0, 0, 0, 0, 'House #4', 1, 23, 50000, 0, 3, 1, 50, 0, 0),
(275, 0, 0, 0, 0, 0, 'House #5', 1, 20, 45000, 0, 2, 1, 45, 0, 0),
(276, 0, 0, 0, 0, 0, 'House #6', 1, 11, 30000, 0, 2, 1, 30, 0, 0),
(277, 0, 0, 0, 0, 0, 'House #7', 1, 15, 37000, 0, 1, 1, 37, 0, 0),
(278, 0, 0, 0, 0, 0, 'House #8', 1, 20, 42000, 0, 2, 1, 42, 0, 0),
(279, 0, 0, 0, 0, 0, 'House #9', 1, 29, 56000, 0, 2, 2, 56, 0, 0),
(280, 0, 0, 0, 0, 0, 'House #10', 1, 11, 24000, 0, 1, 1, 24, 0, 0),
(281, 0, 0, 0, 0, 0, 'House #11', 1, 11, 30000, 0, 1, 1, 30, 0, 0),
(282, 0, 0, 0, 0, 0, 'House #12', 1, 11, 25000, 0, 1, 1, 25, 0, 0),
(283, 0, 0, 0, 0, 0, 'House #13', 1, 11, 24000, 0, 1, 1, 24, 0, 0),
(284, 0, 0, 0, 0, 0, 'House #14', 1, 17, 45000, 0, 1, 4, 45, 0, 0),
(285, 0, 0, 0, 0, 0, 'House #15', 1, 17, 41000, 0, 1, 1, 41, 0, 0),
(286, 0, 0, 0, 0, 0, 'House #16', 1, 14, 35000, 0, 2, 1, 35, 0, 0),
(287, 0, 0, 0, 0, 0, 'House #17', 1, 29, 70000, 0, 2, 1, 70, 0, 0),
(288, 0, 0, 0, 0, 0, 'House #18', 1, 19, 51000, 0, 5, 0, 51, 0, 0),
(289, 0, 0, 0, 0, 0, 'House #19', 1, 15, 35000, 0, 1, 0, 35, 0, 0),
(290, 0, 0, 0, 0, 0, 'House #20', 1, 8, 20000, 0, 1, 0, 20, 0, 0),
(291, 0, 0, 0, 0, 0, 'House #21', 1, 19, 42000, 0, 5, 0, 42, 0, 0),
(292, 0, 0, 0, 0, 0, 'House #22', 1, 12, 30000, 0, 3, 0, 30, 0, 0),
(293, 0, 0, 0, 0, 0, 'House #23', 1, 7, 20000, 0, 1, 2, 20, 0, 0),
(294, 0, 0, 0, 0, 0, 'House #24', 1, 4, 15000, 0, 1, 2, 15, 0, 0),
(295, 0, 0, 0, 0, 0, 'House #25', 1, 4, 20000, 0, 1, 2, 20, 0, 0),
(296, 0, 0, 0, 0, 0, 'House #26', 1, 4, 20000, 0, 2, 2, 20, 0, 0),
(297, 0, 0, 0, 0, 0, 'House #27', 1, 4, 15000, 0, 2, 2, 15, 0, 0),
(298, 0, 0, 0, 0, 0, 'House #28', 1, 7, 20000, 0, 2, 2, 20, 0, 0),
(299, 0, 0, 0, 0, 0, 'House #29', 1, 13, 39000, 0, 1, 0, 39, 0, 0),
(300, 0, 0, 0, 0, 0, 'House #30', 1, 8, 24000, 0, 1, 0, 24, 0, 0),
(301, 0, 0, 0, 0, 0, 'House #31', 1, 10, 24000, 0, 1, 0, 24, 0, 0),
(302, 0, 0, 0, 0, 0, 'House #32', 1, 8, 24000, 0, 1, 0, 24, 0, 0),
(303, 0, 0, 0, 0, 0, 'House #33', 1, 334, 652000, 0, 7, 0, 652, 0, 0),
(304, 0, 0, 0, 0, 0, 'House #34', 1, 14, 30000, 0, 2, 2, 30, 0, 0),
(305, 0, 0, 0, 0, 0, 'House #35', 1, 14, 30000, 0, 3, 2, 30, 0, 0),
(306, 0, 0, 0, 0, 0, 'House #36', 1, 14, 30000, 0, 2, 2, 30, 0, 0),
(307, 0, 0, 0, 0, 0, 'House #37', 1, 14, 30000, 0, 3, 2, 30, 0, 0),
(308, 0, 0, 0, 0, 0, 'House #38', 1, 22, 42000, 0, 3, 2, 42, 0, 0),
(309, 0, 0, 0, 0, 0, 'House #39', 1, 14, 30000, 0, 2, 2, 30, 0, 0),
(310, 0, 0, 0, 0, 0, 'House #40', 1, 26, 61000, 0, 7, 2, 61, 0, 0),
(311, 0, 0, 0, 0, 0, 'House #41', 1, 30, 60000, 0, 4, 2, 60, 0, 0),
(312, 0, 0, 0, 0, 0, 'House #42', 1, 18, 35000, 0, 2, 2, 35, 0, 0),
(313, 0, 0, 0, 0, 0, 'House #43', 1, 18, 35000, 0, 2, 2, 35, 0, 0),
(314, 0, 0, 0, 0, 0, 'House #44', 1, 23, 42000, 0, 2, 2, 42, 0, 0),
(315, 0, 0, 0, 0, 0, 'House #45', 1, 18, 35000, 0, 2, 2, 35, 0, 0),
(316, 0, 0, 0, 0, 0, 'House #46', 1, 15, 36000, 0, 2, 2, 36, 0, 0),
(317, 0, 0, 0, 0, 0, 'House #47', 1, 16, 44000, 0, 3, 2, 44, 0, 0),
(318, 0, 0, 0, 0, 0, 'House #48', 1, 16, 45000, 0, 3, 2, 45, 0, 0),
(319, 0, 0, 0, 0, 0, 'House #49', 1, 16, 45000, 0, 3, 2, 45, 0, 0),
(320, 0, 0, 0, 0, 0, 'House #50', 1, 16, 45000, 0, 3, 2, 45, 0, 0),
(321, 0, 0, 0, 0, 0, 'House #51', 1, 40, 84000, 0, 1, 0, 84, 0, 0),
(322, 0, 0, 0, 0, 0, 'House #52', 1, 24, 50000, 0, 3, 0, 50, 0, 0),
(323, 0, 0, 0, 0, 0, 'House #53', 1, 12, 30000, 0, 1, 0, 30, 0, 0),
(324, 0, 0, 0, 0, 0, 'House #54', 1, 12, 30000, 0, 1, 0, 30, 0, 0),
(325, 0, 0, 0, 0, 0, 'House #55', 1, 12, 25000, 0, 4, 0, 25, 0, 0),
(326, 0, 0, 0, 0, 0, 'House #56', 1, 34, 66000, 0, 4, 0, 66, 0, 0),
(327, 0, 0, 0, 0, 0, 'House #57', 1, 15, 35000, 0, 4, 0, 35, 0, 0),
(328, 0, 0, 0, 0, 0, 'House #58', 1, 22, 48000, 0, 2, 0, 48, 0, 0),
(329, 0, 0, 0, 0, 0, 'House #59', 1, 25, 49000, 0, 1, 0, 49, 0, 0),
(330, 0, 0, 0, 0, 0, 'House #60', 1, 9, 20000, 0, 2, 0, 20, 0, 0),
(331, 0, 0, 0, 0, 0, 'House #61', 1, 11, 28000, 0, 1, 0, 28, 0, 0),
(332, 0, 0, 0, 0, 0, 'House #62', 1, 12, 30000, 0, 2, 0, 30, 0, 0),
(333, 0, 0, 0, 0, 0, 'House #63', 1, 9, 20000, 0, 2, 0, 20, 0, 0),
(334, 0, 0, 0, 0, 0, 'House #64', 1, 6, 15000, 0, 2, 0, 15, 0, 0),
(335, 0, 0, 0, 0, 0, 'House #65', 1, 9, 19000, 0, 1, 0, 19, 0, 0),
(336, 0, 0, 0, 0, 0, 'House #66', 1, 13, 33000, 0, 1, 0, 33, 0, 0),
(337, 0, 0, 0, 0, 0, 'House #67', 1, 12, 25000, 0, 1, 0, 25, 0, 0),
(338, 0, 0, 0, 0, 0, 'House #68', 1, 12, 25000, 0, 1, 0, 25, 0, 0),
(339, 0, 0, 0, 0, 0, 'House #69', 1, 9, 20000, 0, 1, 0, 20, 0, 0),
(340, 0, 0, 0, 0, 0, 'House #70', 1, 9, 25000, 0, 2, 0, 25, 0, 0),
(341, 0, 0, 0, 0, 0, 'House #71', 1, 11, 24000, 0, 3, 0, 24, 0, 0),
(342, 0, 0, 0, 0, 0, 'House #72', 1, 12, 21000, 0, 3, 0, 21, 0, 0),
(343, 0, 0, 0, 0, 0, 'House #73', 1, 16, 30000, 0, 2, 0, 30, 0, 0),
(344, 0, 0, 0, 0, 0, 'House #74', 1, 16, 30000, 0, 2, 0, 30, 0, 0),
(345, 0, 0, 0, 0, 0, 'House #75', 1, 15, 35000, 0, 1, 0, 35, 0, 0),
(346, 0, 0, 0, 0, 0, 'House #76', 1, 15, 35000, 0, 1, 0, 35, 0, 0),
(347, 0, 0, 0, 0, 0, 'House #77', 1, 30, 56000, 0, 1, 0, 56, 0, 0),
(348, 0, 0, 0, 0, 0, 'House #78', 1, 12, 30000, 0, 1, 0, 30, 0, 0),
(349, 0, 0, 0, 0, 0, 'House #79', 1, 12, 30000, 0, 1, 0, 30, 0, 0),
(350, 0, 0, 0, 0, 0, 'House #80', 1, 15, 35000, 0, 1, 0, 35, 0, 0),
(351, 0, 0, 0, 0, 0, 'House #81', 1, 98, 193000, 0, 1, 0, 193, 0, 0),
(352, 0, 0, 0, 0, 0, 'House #82', 1, 47, 100000, 0, 1, 0, 100, 0, 0),
(353, 0, 0, 0, 0, 0, 'House #83', 1, 30, 63000, 0, 3, 0, 63, 0, 0),
(354, 0, 0, 0, 0, 0, 'House #84', 1, 36, 74000, 0, 3, 0, 74, 0, 0),
(355, 0, 0, 0, 0, 0, 'House #85', 1, 36, 72000, 0, 3, 0, 72, 0, 0),
(356, 0, 0, 0, 0, 0, 'House #86', 1, 35, 70000, 0, 3, 0, 70, 0, 0),
(357, 0, 0, 0, 0, 0, 'House #87', 1, 24, 48000, 0, 2, 0, 48, 0, 0),
(358, 0, 0, 0, 0, 0, 'House #88', 1, 32, 66000, 0, 3, 0, 66, 0, 0),
(359, 0, 0, 0, 0, 0, 'House #89', 1, 32, 66000, 0, 3, 0, 66, 0, 0),
(360, 0, 0, 0, 0, 0, 'House #90', 1, 42, 64000, 0, 1, 0, 64, 0, 0),
(361, 0, 0, 0, 0, 0, 'House #91', 1, 42, 72000, 0, 1, 0, 72, 0, 0),
(362, 0, 0, 0, 0, 0, 'House #92', 1, 30, 56000, 0, 1, 0, 56, 0, 0),
(363, 0, 0, 0, 0, 0, 'House #93', 1, 15, 30000, 0, 1, 0, 30, 0, 0),
(364, 0, 0, 0, 0, 0, 'House #94', 1, 15, 35000, 0, 1, 0, 35, 0, 0),
(365, 0, 0, 0, 0, 0, 'House #95', 1, 27, 61000, 0, 2, 0, 61, 0, 0),
(366, 0, 0, 0, 0, 0, 'House #96', 1, 5, 18000, 0, 1, 2, 18, 0, 0),
(367, 0, 0, 0, 0, 0, 'House #97', 1, 5, 18000, 0, 1, 2, 18, 0, 0),
(368, 0, 0, 0, 0, 0, 'House #98', 1, 5, 18000, 0, 1, 2, 18, 0, 0),
(369, 0, 0, 0, 0, 0, 'House #99', 1, 5, 24000, 0, 1, 2, 24, 0, 0),
(370, 0, 0, 0, 0, 0, 'House #100', 1, 30, 48000, 0, 1, 0, 48, 0, 0),
(371, 0, 0, 0, 0, 0, 'House #101', 1, 30, 56000, 0, 1, 0, 56, 0, 0),
(372, 0, 0, 0, 0, 0, 'House #102', 1, 18, 44000, 0, 1, 4, 44, 0, 0),
(373, 0, 0, 0, 0, 0, 'House #103', 1, 18, 50000, 0, 1, 4, 50, 0, 0),
(374, 0, 0, 0, 0, 0, 'House #104', 1, 7, 20000, 0, 1, 2, 20, 0, 0),
(375, 0, 0, 0, 0, 0, 'House #105', 1, 10, 28000, 0, 1, 2, 28, 0, 0),
(376, 0, 0, 0, 0, 0, 'House #106', 1, 10, 25000, 0, 1, 2, 25, 0, 0),
(377, 0, 0, 0, 0, 0, 'House #107', 1, 10, 25000, 0, 1, 2, 25, 0, 0),
(378, 0, 0, 0, 0, 0, 'House #108', 1, 24, 60000, 0, 1, 8, 60, 0, 0),
(379, 0, 0, 0, 0, 0, 'House #109', 1, 10, 25000, 0, 1, 2, 25, 0, 0),
(380, 0, 0, 0, 0, 0, 'House #100', 1, 10, 28000, 0, 1, 2, 28, 0, 0),
(381, 0, 0, 0, 0, 0, 'House #111', 1, 10, 25000, 0, 1, 2, 25, 0, 0),
(382, 0, 0, 0, 0, 0, 'House #112', 1, 7, 20000, 0, 1, 2, 20, 0, 0),
(383, 0, 0, 0, 0, 0, 'House #113', 1, 17, 47000, 0, 0, 0, 47, 0, 0),
(384, 0, 0, 0, 0, 0, 'House #114', 1, 28, 54000, 0, 1, 0, 54, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `house_auctions`
--

CREATE TABLE IF NOT EXISTS `house_auctions` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  `bid` int(10) unsigned NOT NULL DEFAULT '0',
  `limit` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `house_id` (`house_id`,`world_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `house_auctions`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `house_data`
--

CREATE TABLE IF NOT EXISTS `house_data` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  UNIQUE KEY `house_id` (`house_id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `house_data`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  UNIQUE KEY `house_id` (`house_id`,`world_id`,`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `house_lists`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `killers`
--

CREATE TABLE IF NOT EXISTS `killers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `death_id` int(11) NOT NULL,
  `final_hit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `war` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `death_id` (`death_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `killers`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `vocation` int(11) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '150',
  `healthmax` int(11) NOT NULL DEFAULT '150',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `lookbody` int(11) NOT NULL DEFAULT '0',
  `lookfeet` int(11) NOT NULL DEFAULT '0',
  `lookhead` int(11) NOT NULL DEFAULT '0',
  `looklegs` int(11) NOT NULL DEFAULT '0',
  `looktype` int(11) NOT NULL DEFAULT '136',
  `lookaddons` int(11) NOT NULL DEFAULT '0',
  `maglevel` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manamax` int(11) NOT NULL DEFAULT '0',
  `manaspent` int(11) NOT NULL DEFAULT '0',
  `soul` int(10) unsigned NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `lastlogin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastip` int(10) unsigned NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `skulltime` int(11) NOT NULL DEFAULT '0',
  `rank_id` int(11) NOT NULL DEFAULT '0',
  `guildnick` varchar(255) NOT NULL DEFAULT '',
  `lastlogout` bigint(20) unsigned NOT NULL DEFAULT '0',
  `blessings` tinyint(2) NOT NULL DEFAULT '0',
  `balance` bigint(20) NOT NULL DEFAULT '0',
  `stamina` bigint(20) NOT NULL DEFAULT '151200000' COMMENT 'stored in miliseconds',
  `direction` int(11) NOT NULL DEFAULT '2',
  `loss_experience` int(11) NOT NULL DEFAULT '100',
  `loss_mana` int(11) NOT NULL DEFAULT '100',
  `loss_skills` int(11) NOT NULL DEFAULT '100',
  `loss_containers` int(11) NOT NULL DEFAULT '100',
  `loss_items` int(11) NOT NULL DEFAULT '100',
  `premend` int(11) NOT NULL DEFAULT '0' COMMENT 'NOT IN USE BY THE SERVER',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `marriage` int(10) unsigned NOT NULL DEFAULT '0',
  `promotion` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cast` tinyint(4) NOT NULL DEFAULT '0',
  `castViewers` int(11) NOT NULL DEFAULT '0',
  `castDescription` varchar(255) NOT NULL,
  `auction_balance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`deleted`),
  KEY `account_id` (`account_id`),
  KEY `group_id` (`group_id`),
  KEY `online` (`online`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `players`
--

INSERT INTO `players` (`id`, `name`, `world_id`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `rank_id`, `guildnick`, `lastlogout`, `blessings`, `balance`, `stamina`, `direction`, `loss_experience`, `loss_mana`, `loss_skills`, `loss_containers`, `loss_items`, `premend`, `online`, `marriage`, `promotion`, `deleted`, `description`, `cast`, `castViewers`, `castDescription`, `auction_balance`) VALUES
(1, 'Account Manager', 0, 1, 1, 8, 0, 150, 150, 4200, 0, 0, 0, 0, 302, 3, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0),
(4, 'Rook Sample', 0, 1, 2, 8, 0, 150, 150, 4200, 0, 0, 0, 0, 110, 0, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0),
(5, 'Sorcerer Sample', 0, 1, 2, 8, 1, 150, 150, 4200, 0, 0, 0, 0, 110, 0, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0),
(6, 'Druid Sample', 0, 1, 2, 8, 2, 150, 150, 4200, 0, 0, 0, 0, 110, 0, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0),
(7, 'Paladin Sample', 0, 1, 2, 8, 3, 150, 150, 4200, 0, 0, 0, 0, 110, 0, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0),
(8, 'Knight Sample', 0, 1, 2, 8, 4, 150, 150, 4200, 0, 0, 0, 0, 110, 0, 4, 150, 150, 0, 100, 1, 10160, 10054, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, '', 0, 0, '', 0);

--
-- Gatilhos `players`
--
DROP TRIGGER IF EXISTS `oncreate_players`;
DELIMITER //
CREATE TRIGGER `oncreate_players` AFTER INSERT ON `players`
 FOR EACH ROW BEGIN
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 0, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 1, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 2, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 3, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 4, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 5, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 6, 10);
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `ondelete_players`;
DELIMITER //
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players`
 FOR EACH ROW BEGIN
	DELETE FROM `bans` WHERE `type` IN (2, 5) AND `value` = OLD.`id`;
	UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_deaths`
--

CREATE TABLE IF NOT EXISTS `player_deaths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `date` bigint(20) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `player_deaths`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range, eg. 0-100 is reserved for depot lockers and all above 100 will be normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_depotitems`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_items`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_killers`
--

CREATE TABLE IF NOT EXISTS `player_killers` (
  `kill_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  KEY `kill_id` (`kill_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_killers`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_namelocks`
--

CREATE TABLE IF NOT EXISTS `player_namelocks` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `new_name` varchar(255) NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_namelocks`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_skills`
--

CREATE TABLE IF NOT EXISTS `player_skills` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `skillid` tinyint(2) NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id_2` (`player_id`,`skillid`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_skills`
--

INSERT INTO `player_skills` (`player_id`, `skillid`, `value`, `count`) VALUES
(1, 0, 10, 0),
(1, 1, 10, 0),
(1, 2, 10, 0),
(1, 3, 10, 0),
(1, 4, 10, 0),
(1, 5, 10, 0),
(1, 6, 10, 0),
(4, 0, 10, 0),
(4, 1, 10, 0),
(4, 2, 10, 0),
(4, 3, 10, 0),
(4, 4, 10, 0),
(4, 5, 10, 0),
(4, 6, 10, 0),
(5, 0, 10, 0),
(5, 1, 10, 0),
(5, 2, 10, 0),
(5, 3, 10, 0),
(5, 4, 10, 0),
(5, 5, 10, 0),
(5, 6, 10, 0),
(6, 0, 10, 0),
(6, 1, 10, 0),
(6, 2, 10, 0),
(6, 3, 10, 0),
(6, 4, 10, 0),
(6, 5, 10, 0),
(6, 6, 10, 0),
(7, 0, 10, 0),
(7, 1, 10, 0),
(7, 2, 10, 0),
(7, 3, 10, 0),
(7, 4, 10, 0),
(7, 5, 10, 0),
(7, 6, 10, 0),
(8, 0, 10, 0),
(8, 1, 10, 0),
(8, 2, 10, 0),
(8, 3, 10, 0),
(8, 4, 10, 0),
(8, 5, 10, 0),
(8, 6, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`name`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_spells`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `key` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id_2` (`player_id`,`key`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_storage`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_viplist`
--

CREATE TABLE IF NOT EXISTS `player_viplist` (
  `player_id` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`vip_id`),
  KEY `player_id` (`player_id`),
  KEY `vip_id` (`vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_viplist`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `server_config`
--

CREATE TABLE IF NOT EXISTS `server_config` (
  `config` varchar(35) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `config` (`config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '26'),
('encryption', '0'),
('vahash_key', 'ND65-5WPO-UWV5-492I');

-- --------------------------------------------------------

--
-- Estrutura da tabela `server_motd`
--

CREATE TABLE IF NOT EXISTS `server_motd` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  UNIQUE KEY `id` (`id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `server_motd`
--

INSERT INTO `server_motd` (`id`, `world_id`, `text`) VALUES
(1, 0, 'Welcome to The Forgotten Server!'),
(2, 0, 'Bem vindo ao LoucoMassa!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `server_record`
--

CREATE TABLE IF NOT EXISTS `server_record` (
  `record` int(11) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL,
  UNIQUE KEY `record` (`record`,`world_id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `server_record`
--

INSERT INTO `server_record` (`record`, `world_id`, `timestamp`) VALUES
(0, 0, 0),
(1, 0, 1451340396);

-- --------------------------------------------------------

--
-- Estrutura da tabela `server_reports`
--

CREATE TABLE IF NOT EXISTS `server_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL DEFAULT '1',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  `report` text NOT NULL,
  `reads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `world_id` (`world_id`),
  KEY `reads` (`reads`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `server_reports`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tiles`
--

CREATE TABLE IF NOT EXISTS `tiles` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `house_id` int(10) unsigned NOT NULL,
  `x` int(5) unsigned NOT NULL,
  `y` int(5) unsigned NOT NULL,
  `z` tinyint(2) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`,`world_id`),
  KEY `x` (`x`,`y`,`z`),
  KEY `house_id` (`house_id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tiles`
--

INSERT INTO `tiles` (`id`, `world_id`, `house_id`, `x`, `y`, `z`) VALUES
(0, 0, 268, 10147, 10059, 7),
(1, 0, 268, 10148, 10059, 7),
(2, 0, 268, 10149, 10059, 7),
(3, 0, 268, 10146, 10063, 7),
(4, 0, 268, 10149, 10063, 7),
(5, 0, 268, 10146, 10064, 7),
(6, 0, 268, 10149, 10064, 7),
(7, 0, 269, 10153, 10059, 7),
(8, 0, 269, 10154, 10059, 7),
(9, 0, 269, 10152, 10064, 7),
(10, 0, 269, 10152, 10065, 7),
(11, 0, 269, 10154, 10064, 7),
(12, 0, 269, 10154, 10065, 7),
(13, 0, 270, 10157, 10059, 7),
(14, 0, 270, 10158, 10059, 7),
(15, 0, 270, 10159, 10059, 7),
(16, 0, 270, 10164, 10062, 7),
(17, 0, 270, 10157, 10064, 7),
(18, 0, 270, 10157, 10065, 7),
(19, 0, 270, 10159, 10064, 7),
(20, 0, 270, 10159, 10065, 7),
(21, 0, 273, 10173, 10053, 7),
(22, 0, 273, 10175, 10052, 7),
(23, 0, 273, 10175, 10053, 7),
(24, 0, 273, 10173, 10056, 7),
(25, 0, 273, 10176, 10051, 7),
(26, 0, 273, 10178, 10051, 7),
(27, 0, 273, 10178, 10052, 7),
(28, 0, 273, 10178, 10053, 7),
(29, 0, 273, 10176, 10056, 7),
(30, 0, 273, 10178, 10056, 7),
(31, 0, 274, 10137, 10031, 7),
(32, 0, 274, 10139, 10035, 7),
(33, 0, 274, 10141, 10035, 7),
(34, 0, 274, 10143, 10032, 7),
(35, 0, 275, 10137, 10026, 7),
(36, 0, 275, 10143, 10027, 7),
(37, 0, 275, 10143, 10028, 7),
(38, 0, 276, 10151, 10026, 7),
(39, 0, 276, 10148, 10028, 7),
(40, 0, 276, 10148, 10029, 7),
(41, 0, 277, 10148, 10032, 7),
(42, 0, 277, 10151, 10035, 7),
(43, 0, 278, 10159, 10029, 7),
(44, 0, 278, 10160, 10031, 7),
(45, 0, 278, 10157, 10033, 7),
(46, 0, 279, 10169, 10034, 7),
(47, 0, 279, 10164, 10037, 7),
(48, 0, 279, 10169, 10039, 7),
(49, 0, 279, 10170, 10037, 7),
(50, 0, 280, 10180, 10027, 7),
(51, 0, 280, 10180, 10031, 7),
(52, 0, 281, 10184, 10029, 7),
(53, 0, 281, 10182, 10032, 7),
(54, 0, 282, 10182, 10038, 7),
(55, 0, 282, 10184, 10036, 7),
(56, 0, 283, 10182, 10042, 7),
(57, 0, 283, 10185, 10041, 7),
(58, 0, 284, 10127, 10062, 7),
(59, 0, 284, 10129, 10062, 7),
(60, 0, 284, 10131, 10062, 7),
(61, 0, 284, 10133, 10062, 7),
(62, 0, 284, 10126, 10064, 7),
(63, 0, 284, 10127, 10064, 7),
(64, 0, 284, 10127, 10065, 7),
(65, 0, 284, 10133, 10064, 7),
(66, 0, 284, 10133, 10065, 7),
(67, 0, 285, 10119, 10063, 7),
(68, 0, 285, 10122, 10066, 7),
(69, 0, 286, 10119, 10070, 7),
(70, 0, 286, 10121, 10070, 7),
(71, 0, 286, 10122, 10073, 7),
(72, 0, 287, 10129, 10070, 7),
(73, 0, 287, 10129, 10071, 7),
(74, 0, 287, 10134, 10071, 7),
(75, 0, 288, 10099, 10074, 7),
(76, 0, 288, 10102, 10072, 7),
(77, 0, 288, 10102, 10073, 7),
(78, 0, 288, 10107, 10075, 7),
(79, 0, 288, 10104, 10077, 7),
(80, 0, 289, 10110, 10069, 7),
(81, 0, 290, 10111, 10066, 7),
(82, 0, 291, 10099, 10065, 7),
(83, 0, 291, 10100, 10067, 7),
(84, 0, 291, 10104, 10065, 7),
(85, 0, 291, 10099, 10069, 7),
(86, 0, 291, 10104, 10069, 7),
(87, 0, 292, 10103, 10059, 7),
(88, 0, 292, 10099, 10061, 7),
(89, 0, 292, 10103, 10061, 7),
(90, 0, 293, 10113, 10055, 7),
(91, 0, 293, 10113, 10056, 7),
(92, 0, 293, 10116, 10056, 7),
(93, 0, 294, 10113, 10052, 7),
(94, 0, 294, 10113, 10053, 7),
(95, 0, 294, 10116, 10053, 7),
(96, 0, 295, 10113, 10049, 7),
(97, 0, 295, 10113, 10050, 7),
(98, 0, 295, 10116, 10050, 7),
(99, 0, 296, 10119, 10049, 7),
(100, 0, 296, 10119, 10050, 7),
(101, 0, 296, 10122, 10049, 7),
(102, 0, 296, 10122, 10050, 7),
(103, 0, 297, 10119, 10052, 7),
(104, 0, 297, 10119, 10053, 7),
(105, 0, 297, 10122, 10052, 7),
(106, 0, 297, 10122, 10053, 7),
(107, 0, 298, 10122, 10055, 7),
(108, 0, 298, 10119, 10056, 7),
(109, 0, 298, 10119, 10057, 7),
(110, 0, 298, 10122, 10056, 7),
(111, 0, 299, 10077, 10030, 7),
(112, 0, 300, 10082, 10028, 7),
(113, 0, 301, 10087, 10027, 7),
(114, 0, 302, 10087, 10034, 7),
(115, 0, 303, 10095, 10030, 6),
(116, 0, 303, 10099, 10026, 6),
(117, 0, 303, 10107, 10026, 6),
(118, 0, 303, 10111, 10030, 6),
(119, 0, 303, 10097, 10034, 6),
(120, 0, 303, 10110, 10034, 6),
(121, 0, 303, 10103, 10039, 7),
(122, 0, 304, 10205, 10023, 7),
(123, 0, 304, 10203, 10027, 7),
(124, 0, 304, 10205, 10024, 7),
(125, 0, 304, 10205, 10027, 7),
(126, 0, 305, 10209, 10022, 7),
(127, 0, 305, 10210, 10023, 7),
(128, 0, 305, 10209, 10027, 7),
(129, 0, 305, 10210, 10024, 7),
(130, 0, 305, 10210, 10027, 7),
(131, 0, 306, 10215, 10023, 7),
(132, 0, 306, 10213, 10027, 7),
(133, 0, 306, 10214, 10027, 7),
(134, 0, 306, 10215, 10024, 7),
(135, 0, 307, 10218, 10022, 7),
(136, 0, 307, 10220, 10023, 7),
(137, 0, 307, 10219, 10027, 7),
(138, 0, 307, 10220, 10024, 7),
(139, 0, 307, 10220, 10027, 7),
(140, 0, 308, 10225, 10022, 7),
(141, 0, 308, 10227, 10023, 7),
(142, 0, 308, 10224, 10027, 7),
(143, 0, 308, 10226, 10027, 7),
(144, 0, 308, 10227, 10024, 7),
(145, 0, 309, 10232, 10023, 7),
(146, 0, 309, 10230, 10027, 7),
(147, 0, 309, 10231, 10027, 7),
(148, 0, 309, 10232, 10024, 7),
(149, 0, 310, 10236, 10022, 7),
(150, 0, 310, 10234, 10027, 7),
(151, 0, 310, 10236, 10027, 7),
(152, 0, 310, 10238, 10027, 7),
(153, 0, 310, 10241, 10022, 7),
(154, 0, 310, 10242, 10023, 7),
(155, 0, 310, 10241, 10025, 7),
(156, 0, 310, 10242, 10024, 7),
(157, 0, 310, 10243, 10024, 7),
(158, 0, 311, 10236, 10033, 7),
(159, 0, 311, 10238, 10033, 7),
(160, 0, 311, 10238, 10034, 7),
(161, 0, 311, 10238, 10035, 7),
(162, 0, 311, 10238, 10039, 7),
(163, 0, 311, 10236, 10041, 7),
(164, 0, 312, 10230, 10033, 7),
(165, 0, 312, 10232, 10034, 7),
(166, 0, 312, 10232, 10035, 7),
(167, 0, 312, 10231, 10039, 7),
(168, 0, 313, 10225, 10033, 7),
(169, 0, 313, 10226, 10039, 7),
(170, 0, 313, 10227, 10037, 7),
(171, 0, 313, 10227, 10038, 7),
(172, 0, 314, 10220, 10033, 7),
(173, 0, 314, 10220, 10039, 7),
(174, 0, 314, 10222, 10037, 7),
(175, 0, 314, 10222, 10038, 7),
(176, 0, 315, 10214, 10033, 7),
(177, 0, 315, 10216, 10034, 7),
(178, 0, 315, 10216, 10035, 7),
(179, 0, 315, 10214, 10039, 7),
(180, 0, 316, 10148, 10060, 6),
(181, 0, 316, 10147, 10064, 6),
(182, 0, 316, 10147, 10065, 6),
(183, 0, 316, 10148, 10066, 6),
(184, 0, 317, 10152, 10060, 6),
(185, 0, 317, 10151, 10064, 6),
(186, 0, 317, 10151, 10065, 6),
(187, 0, 317, 10152, 10066, 6),
(188, 0, 317, 10153, 10066, 6),
(189, 0, 318, 10157, 10060, 6),
(190, 0, 318, 10156, 10064, 6),
(191, 0, 318, 10156, 10065, 6),
(192, 0, 318, 10157, 10066, 6),
(193, 0, 318, 10158, 10066, 6),
(194, 0, 319, 10162, 10061, 6),
(195, 0, 319, 10161, 10065, 6),
(196, 0, 319, 10161, 10066, 6),
(197, 0, 319, 10162, 10067, 6),
(198, 0, 319, 10163, 10067, 6),
(199, 0, 320, 10167, 10061, 6),
(200, 0, 320, 10166, 10067, 6),
(201, 0, 320, 10167, 10067, 6),
(202, 0, 320, 10168, 10065, 6),
(203, 0, 320, 10168, 10066, 6),
(204, 0, 321, 10132, 10062, 6),
(205, 0, 322, 10143, 10055, 6),
(206, 0, 322, 10145, 10049, 6),
(207, 0, 322, 10147, 10053, 6),
(208, 0, 323, 10144, 10042, 6),
(209, 0, 324, 10176, 10032, 6),
(210, 0, 325, 10166, 10032, 6),
(211, 0, 325, 10166, 10033, 6),
(212, 0, 325, 10166, 10035, 6),
(213, 0, 325, 10170, 10034, 6),
(214, 0, 326, 10162, 10028, 6),
(215, 0, 326, 10164, 10031, 6),
(216, 0, 326, 10162, 10033, 6),
(217, 0, 326, 10164, 10032, 6),
(218, 0, 327, 10164, 10039, 6),
(219, 0, 327, 10165, 10036, 6),
(220, 0, 327, 10170, 10038, 6),
(221, 0, 327, 10167, 10040, 6),
(222, 0, 328, 10164, 10031, 5),
(223, 0, 328, 10167, 10031, 5),
(224, 0, 329, 10168, 10034, 5),
(225, 0, 330, 10143, 10049, 5),
(226, 0, 330, 10145, 10051, 5),
(227, 0, 331, 10146, 10053, 5),
(228, 0, 332, 10144, 10046, 5),
(229, 0, 332, 10145, 10046, 5),
(230, 0, 333, 10145, 10044, 4),
(231, 0, 333, 10145, 10045, 4),
(232, 0, 334, 10145, 10047, 4),
(233, 0, 334, 10145, 10048, 4),
(234, 0, 335, 10145, 10051, 4),
(235, 0, 336, 10147, 10052, 4),
(236, 0, 337, 10155, 10052, 4),
(237, 0, 338, 10160, 10052, 4),
(238, 0, 339, 10164, 10052, 4),
(239, 0, 340, 10168, 10052, 4),
(240, 0, 340, 10169, 10052, 4),
(241, 0, 341, 10167, 10047, 4),
(242, 0, 341, 10168, 10047, 4),
(243, 0, 341, 10169, 10047, 4),
(244, 0, 342, 10163, 10047, 4),
(245, 0, 342, 10164, 10047, 4),
(246, 0, 342, 10165, 10047, 4),
(247, 0, 343, 10159, 10046, 4),
(248, 0, 343, 10160, 10046, 4),
(249, 0, 344, 10155, 10046, 4),
(250, 0, 344, 10156, 10046, 4),
(251, 0, 345, 10176, 10096, 7),
(252, 0, 346, 10171, 10101, 7),
(253, 0, 347, 10181, 10104, 7),
(254, 0, 348, 10185, 10096, 7),
(255, 0, 349, 10186, 10101, 7),
(256, 0, 350, 10185, 10106, 7),
(257, 0, 351, 10155, 10106, 7),
(258, 0, 352, 10121, 10128, 7),
(259, 0, 353, 10130, 10003, 7),
(260, 0, 353, 10135, 10002, 7),
(261, 0, 353, 10135, 10003, 7),
(262, 0, 354, 10130, 9995, 7),
(263, 0, 354, 10135, 9994, 7),
(264, 0, 354, 10135, 9995, 7),
(265, 0, 355, 10130, 9987, 7),
(266, 0, 355, 10135, 9985, 7),
(267, 0, 355, 10135, 9986, 7),
(268, 0, 356, 10156, 9983, 7),
(269, 0, 356, 10154, 9988, 7),
(270, 0, 356, 10155, 9988, 7),
(271, 0, 357, 10163, 9988, 7),
(272, 0, 357, 10164, 9988, 7),
(273, 0, 358, 10155, 10002, 7),
(274, 0, 358, 10155, 10003, 7),
(275, 0, 358, 10161, 10002, 7),
(276, 0, 359, 10155, 9995, 7),
(277, 0, 359, 10155, 9996, 7),
(278, 0, 359, 10161, 9995, 7),
(279, 0, 360, 10113, 10202, 7),
(280, 0, 361, 10121, 10202, 7),
(281, 0, 362, 10126, 10190, 7),
(282, 0, 363, 10136, 10187, 7),
(283, 0, 364, 10141, 10187, 7),
(284, 0, 365, 10152, 10186, 7),
(285, 0, 365, 10156, 10186, 7),
(286, 0, 366, 10140, 10177, 7),
(287, 0, 366, 10141, 10177, 7),
(288, 0, 366, 10140, 10181, 7),
(289, 0, 367, 10143, 10177, 7),
(290, 0, 367, 10143, 10181, 7),
(291, 0, 367, 10144, 10177, 7),
(292, 0, 368, 10146, 10177, 7),
(293, 0, 368, 10147, 10177, 7),
(294, 0, 368, 10146, 10181, 7),
(295, 0, 369, 10149, 10177, 7),
(296, 0, 369, 10150, 10177, 7),
(297, 0, 369, 10149, 10181, 7),
(298, 0, 370, 10114, 10185, 7),
(299, 0, 371, 10114, 10179, 7),
(300, 0, 372, 10202, 10055, 6),
(301, 0, 372, 10202, 10056, 6),
(302, 0, 372, 10204, 10058, 6),
(303, 0, 372, 10202, 10062, 6),
(304, 0, 372, 10202, 10063, 6),
(305, 0, 373, 10206, 10056, 6),
(306, 0, 373, 10206, 10062, 6),
(307, 0, 373, 10206, 10063, 6),
(308, 0, 373, 10208, 10055, 6),
(309, 0, 373, 10208, 10056, 6),
(310, 0, 374, 10201, 10043, 7),
(311, 0, 374, 10201, 10044, 7),
(312, 0, 374, 10204, 10044, 7),
(313, 0, 375, 10201, 10047, 7),
(314, 0, 375, 10201, 10048, 7),
(315, 0, 375, 10204, 10049, 7),
(316, 0, 376, 10201, 10052, 7),
(317, 0, 376, 10201, 10053, 7),
(318, 0, 376, 10204, 10054, 7),
(319, 0, 377, 10201, 10057, 7),
(320, 0, 377, 10201, 10058, 7),
(321, 0, 377, 10204, 10058, 7),
(322, 0, 378, 10202, 10062, 7),
(323, 0, 378, 10202, 10063, 7),
(324, 0, 378, 10203, 10062, 7),
(325, 0, 378, 10203, 10063, 7),
(326, 0, 378, 10205, 10061, 7),
(327, 0, 378, 10206, 10062, 7),
(328, 0, 378, 10206, 10063, 7),
(329, 0, 378, 10207, 10062, 7),
(330, 0, 378, 10207, 10063, 7),
(331, 0, 379, 10206, 10058, 7),
(332, 0, 379, 10208, 10057, 7),
(333, 0, 379, 10208, 10058, 7),
(334, 0, 380, 10206, 10054, 7),
(335, 0, 380, 10207, 10052, 7),
(336, 0, 380, 10207, 10053, 7),
(337, 0, 381, 10208, 10047, 7),
(338, 0, 381, 10206, 10049, 7),
(339, 0, 381, 10208, 10048, 7),
(340, 0, 382, 10206, 10044, 7),
(341, 0, 382, 10208, 10043, 7),
(342, 0, 382, 10208, 10044, 7),
(343, 0, 384, 10205, 10059, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tile_items`
--

CREATE TABLE IF NOT EXISTS `tile_items` (
  `tile_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `tile_id` (`tile_id`,`world_id`,`sid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tile_items`
--

INSERT INTO `tile_items` (`tile_id`, `world_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(0, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202330272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640202000000),
(1, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202330272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(2, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202330272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(3, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(4, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(5, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(6, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(7, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202331272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(8, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202331272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(9, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(10, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(11, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(12, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(13, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202332272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(14, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202332272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(15, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202332272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(16, 0, 1, 0, 10267, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202332272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640204000000),
(17, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(18, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(19, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(20, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(21, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320393630303020676f6c6420636f696e732e0600646f6f7269640204000000),
(22, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(23, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(24, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320393630303020676f6c6420636f696e732e0600646f6f7269640205000000),
(25, 0, 1, 0, 1878, 1, ''),
(26, 0, 1, 0, 1878, 1, ''),
(27, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(28, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(29, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320393630303020676f6c6420636f696e732e0600646f6f7269640201000000),
(30, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320393630303020676f6c6420636f696e732e0600646f6f7269640203000000),
(31, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(32, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202334272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(33, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202334272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(34, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202334272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(35, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(36, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202335272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(37, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202335272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(38, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(39, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202336272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(40, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202336272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(41, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202337272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333730303020676f6c6420636f696e732e0600646f6f7269640202000000),
(42, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(43, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(44, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202338272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640202000000),
(45, 0, 1, 0, 1637, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202338272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(46, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(47, 0, 1, 0, 1635, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202339272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353630303020676f6c6420636f696e732e0600646f6f7269640201000000),
(48, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(49, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015200000049742062656c6f6e677320746f20686f7573652027486f757365202339272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(50, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(51, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233130272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(52, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(53, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233131272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(54, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233132272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(55, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(56, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233133272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(57, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(58, 0, 1, 0, 1867, 1, ''),
(59, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233134272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(60, 0, 1, 0, 1867, 1, ''),
(61, 0, 1, 0, 1867, 1, ''),
(62, 0, 1, 0, 1868, 1, ''),
(63, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(64, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(65, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(66, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(67, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(68, 0, 1, 0, 1214, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233135272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343130303020676f6c6420636f696e732e0600646f6f7269640202000000),
(69, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233136272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(70, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233136272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(71, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(72, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233137272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(73, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233137272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(74, 0, 1, 0, 7814, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(75, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233138272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353130303020676f6c6420636f696e732e0600646f6f7269640203000000),
(76, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233138272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353130303020676f6c6420636f696e732e0600646f6f7269640202000000),
(77, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233138272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353130303020676f6c6420636f696e732e0600646f6f7269640201000000),
(78, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233138272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353130303020676f6c6420636f696e732e0600646f6f7269640205000000),
(79, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233138272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353130303020676f6c6420636f696e732e0600646f6f7269640204000000),
(80, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233139272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(81, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233230272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(82, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233231272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640202000000),
(83, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233231272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640203000000),
(84, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233231272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640205000000),
(85, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233231272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640204000000),
(86, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233231272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640206000000),
(87, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233232272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(88, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233232272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(89, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233232272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640204000000),
(90, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(91, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(92, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233233272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(93, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(94, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(95, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233234272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(96, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(97, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(98, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233235272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(99, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233236272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(100, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233236272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(101, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(102, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(103, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233237272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(104, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233237272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(105, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(106, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(107, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(108, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233238272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(109, 0, 1, 0, 6439, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233238272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(110, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(111, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233239272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333930303020676f6c6420636f696e732e0600646f6f7269640202000000),
(112, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233330272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(113, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233331272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(114, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233332272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(115, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(116, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640203000000),
(117, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640206000000),
(118, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640207000000),
(119, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640204000000),
(120, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640208000000),
(121, 0, 1, 0, 1542, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233333272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732036353230303020676f6c6420636f696e732e0600646f6f7269640202000000),
(122, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(123, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233334272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(124, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(125, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233334272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(126, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233335272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(127, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(128, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233335272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(129, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(130, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233335272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(131, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(132, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233336272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(133, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233336272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(134, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(135, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233337272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(136, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(137, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233337272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(138, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(139, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233337272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(140, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233338272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(141, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(142, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233338272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640204000000),
(143, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233338272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640203000000),
(144, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(145, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(146, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233339272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(147, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233339272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(148, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(149, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640201000000),
(150, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640205000000),
(151, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640207000000),
(152, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640208000000),
(153, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640202000000),
(154, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(155, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640204000000),
(156, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(157, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233430272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640203000000),
(158, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233431272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(159, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233431272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(160, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(161, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(162, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233431272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640204000000),
(163, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233431272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(164, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233432272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(165, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(166, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(167, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233432272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(168, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233433272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(169, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233433272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(170, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(171, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(172, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233434272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640202000000),
(173, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233434272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(174, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(175, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(176, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233435272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(177, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(178, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(179, 0, 1, 0, 10266, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233435272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(180, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233436272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(181, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(182, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(183, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233436272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333630303020676f6c6420636f696e732e0600646f6f7269640201000000),
(184, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233437272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343430303020676f6c6420636f696e732e0600646f6f7269640203000000),
(185, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(186, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(187, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233437272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(188, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233437272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(189, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233438272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(190, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(191, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(192, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233438272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(193, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233438272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(194, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233439272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(195, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(196, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(197, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233439272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(198, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233439272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(199, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233530272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640204000000),
(200, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233530272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(201, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233530272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(202, 0, 1, 0, 7815, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(203, 0, 1, 0, 7816, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(204, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233531272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320383430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(205, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233532272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640204000000),
(206, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233532272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(207, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233532272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(208, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233533272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(209, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233534272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(210, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233535272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(211, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233535272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(212, 0, 1, 0, 10267, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233535272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(213, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233535272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(214, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233536272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640204000000),
(215, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233536272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640205000000),
(216, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233536272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640205000000),
(217, 0, 1, 0, 10267, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233536272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640205000000),
(218, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233537272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(219, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233537272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640204000000),
(220, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233537272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640203000000),
(221, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233537272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(222, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233538272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343830303020676f6c6420636f696e732e0600646f6f7269640202000000),
(223, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233538272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(224, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233539272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343930303020676f6c6420636f696e732e0600646f6f7269640201000000),
(225, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233630272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(226, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233630272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(227, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233631272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(228, 0, 1, 0, 6436, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233632272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(229, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233632272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(230, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233633272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(231, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233633272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(232, 0, 1, 0, 10265, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233634272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(233, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233634272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(234, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233635272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313930303020676f6c6420636f696e732e0600646f6f7269640201000000),
(235, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233636272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333330303020676f6c6420636f696e732e0600646f6f7269640201000000),
(236, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233637272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(237, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233638272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(238, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233639272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(239, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233730272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000);
INSERT INTO `tile_items` (`tile_id`, `world_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(240, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233730272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(241, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233731272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(242, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233731272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640203000000),
(243, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233731272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640203000000),
(244, 0, 1, 0, 10264, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233732272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323130303020676f6c6420636f696e732e0600646f6f7269640203000000),
(245, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233732272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323130303020676f6c6420636f696e732e0600646f6f7269640203000000),
(246, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233732272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323130303020676f6c6420636f696e732e0600646f6f7269640203000000),
(247, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233733272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(248, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233733272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(249, 0, 1, 0, 1213, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233734272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(250, 0, 1, 0, 6438, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233734272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(251, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233735272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(252, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233736272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(253, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233737272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(254, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233738272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(255, 0, 1, 0, 1209, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233739272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(256, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233830272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(257, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233831272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732031393330303020676f6c6420636f696e732e0600646f6f7269640202000000),
(258, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f75736520233832272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f7374732031303030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(259, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233833272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363330303020676f6c6420636f696e732e0600646f6f7269640202000000),
(260, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233833272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363330303020676f6c6420636f696e732e0600646f6f7269640203000000),
(261, 0, 1, 0, 6443, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233833272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363330303020676f6c6420636f696e732e0600646f6f7269640201000000),
(262, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233834272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373430303020676f6c6420636f696e732e0600646f6f7269640203000000),
(263, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233834272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(264, 0, 1, 0, 6443, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233834272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(265, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233835272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373230303020676f6c6420636f696e732e0600646f6f7269640204000000),
(266, 0, 1, 0, 6443, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233835272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373230303020676f6c6420636f696e732e0600646f6f7269640203000000),
(267, 0, 1, 0, 1210, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233835272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(268, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233836272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(269, 0, 1, 0, 6442, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233836272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(270, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233836272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373030303020676f6c6420636f696e732e0600646f6f7269640203000000),
(271, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233837272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(272, 0, 1, 0, 6442, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233837272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343830303020676f6c6420636f696e732e0600646f6f7269640202000000),
(273, 0, 1, 0, 6443, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233838272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(274, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233838272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(275, 0, 1, 0, 1209, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233838272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640203000000),
(276, 0, 1, 0, 6443, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233839272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640202000000),
(277, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233839272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640203000000),
(278, 0, 1, 0, 1209, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233839272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363630303020676f6c6420636f696e732e0600646f6f7269640204000000),
(279, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233930272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363430303020676f6c6420636f696e732e0600646f6f7269640201000000),
(280, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233931272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320373230303020676f6c6420636f696e732e0600646f6f7269640201000000),
(281, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233932272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353630303020676f6c6420636f696e732e0600646f6f7269640201000000),
(282, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233933272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(283, 0, 1, 0, 1221, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233934272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320333530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(284, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233935272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640201000000),
(285, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233935272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363130303020676f6c6420636f696e732e0600646f6f7269640202000000),
(286, 0, 1, 0, 1756, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(287, 0, 1, 0, 1757, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(288, 0, 1, 0, 3537, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233936272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313830303020676f6c6420636f696e732e0600646f6f7269640202000000),
(289, 0, 1, 0, 1756, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(290, 0, 1, 0, 3537, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233937272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(291, 0, 1, 0, 1757, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(292, 0, 1, 0, 1756, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(293, 0, 1, 0, 1757, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(294, 0, 1, 0, 3537, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233938272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320313830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(295, 0, 1, 0, 1756, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(296, 0, 1, 0, 1757, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(297, 0, 1, 0, 3537, 1, 0x8002000b006465736372697074696f6e015300000049742062656c6f6e677320746f20686f7573652027486f75736520233939272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(298, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313030272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343830303020676f6c6420636f696e732e0600646f6f7269640201000000),
(299, 0, 1, 0, 1219, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313031272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353630303020676f6c6420636f696e732e0600646f6f7269640201000000),
(300, 0, 1, 0, 3836, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(301, 0, 1, 0, 3837, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(302, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313032272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320343430303020676f6c6420636f696e732e0600646f6f7269640202000000),
(303, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(304, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(305, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313033272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(306, 0, 1, 0, 7819, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(307, 0, 1, 0, 7820, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(308, 0, 1, 0, 3836, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(309, 0, 1, 0, 3837, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(310, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(311, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(312, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313034272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(313, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(314, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(315, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313035272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323830303020676f6c6420636f696e732e0600646f6f7269640202000000),
(316, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(317, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(318, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313036272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(319, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(320, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(321, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313037272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640201000000),
(322, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(323, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(324, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(325, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(326, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313038272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320363030303020676f6c6420636f696e732e0600646f6f7269640202000000),
(327, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(328, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(329, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(330, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(331, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313039272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(332, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(333, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(334, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313030272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323830303020676f6c6420636f696e732e0600646f6f7269640202000000),
(335, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(336, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(337, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(338, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313131272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323530303020676f6c6420636f696e732e0600646f6f7269640202000000),
(339, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(340, 0, 1, 0, 5082, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313132272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320323030303020676f6c6420636f696e732e0600646f6f7269640201000000),
(341, 0, 1, 0, 5496, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(342, 0, 1, 0, 5497, 1, 0x8001000b006465736372697074696f6e01190000004e6f626f647920697320736c656570696e672074686572652e),
(343, 0, 1, 0, 1212, 1, 0x8002000b006465736372697074696f6e015400000049742062656c6f6e677320746f20686f7573652027486f7573652023313134272e204e6f626f6479206f776e73207468697320686f7573652e20497420636f73747320353430303020676f6c6420636f696e732e0600646f6f7269640201000000);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `environment_killers`
--
ALTER TABLE `environment_killers`
  ADD CONSTRAINT `environment_killers_ibfk_1` FOREIGN KEY (`kill_id`) REFERENCES `killers` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `guild_kills`
--
ALTER TABLE `guild_kills`
  ADD CONSTRAINT `guild_kills_ibfk_1` FOREIGN KEY (`war_id`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_kills_ibfk_2` FOREIGN KEY (`death_id`) REFERENCES `player_deaths` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_kills_ibfk_3` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD CONSTRAINT `guild_wars_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_wars_ibfk_2` FOREIGN KEY (`enemy_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `house_auctions`
--
ALTER TABLE `house_auctions`
  ADD CONSTRAINT `house_auctions_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `house_auctions_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `house_data`
--
ALTER TABLE `house_data`
  ADD CONSTRAINT `house_data_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `killers`
--
ALTER TABLE `killers`
  ADD CONSTRAINT `killers_ibfk_1` FOREIGN KEY (`death_id`) REFERENCES `player_deaths` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_killers`
--
ALTER TABLE `player_killers`
  ADD CONSTRAINT `player_killers_ibfk_1` FOREIGN KEY (`kill_id`) REFERENCES `killers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_killers_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_skills`
--
ALTER TABLE `player_skills`
  ADD CONSTRAINT `player_skills_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `player_viplist`
--
ALTER TABLE `player_viplist`
  ADD CONSTRAINT `player_viplist_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_viplist_ibfk_2` FOREIGN KEY (`vip_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `server_reports`
--
ALTER TABLE `server_reports`
  ADD CONSTRAINT `server_reports_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `tiles`
--
ALTER TABLE `tiles`
  ADD CONSTRAINT `tiles_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE;

--
-- Restrições para a tabela `tile_items`
--
ALTER TABLE `tile_items`
  ADD CONSTRAINT `tile_items_ibfk_1` FOREIGN KEY (`tile_id`) REFERENCES `tiles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
