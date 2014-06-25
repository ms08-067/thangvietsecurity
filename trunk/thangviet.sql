-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2014 at 12:51 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thangviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_assets`
--

CREATE TABLE IF NOT EXISTS `d9jhp_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `d9jhp_assets`
--

INSERT INTO `d9jhp_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 117, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 82, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 83, 86, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 87, 88, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 89, 90, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 91, 92, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 93, 94, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 95, 98, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 99, 102, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 103, 104, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 84, 85, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 100, 101, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 96, 97, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 105, 106, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 107, 108, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 109, 110, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 111, 112, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 113, 114, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 115, 116, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Menu top', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Slide show', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Dịch Vụ Bảo Vệ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 76, 77, 2, 'com_modules.module.89', 'Danh Bạ Bảo Vệ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 27, 19, 20, 3, 'com_content.article.1', 'Trang Chủ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 78, 79, 2, 'com_modules.module.90', 'Footer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 80, 81, 2, 'com_modules.module.91', 'Liên Hệ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_associations`
--

CREATE TABLE IF NOT EXISTS `d9jhp_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_banners`
--

CREATE TABLE IF NOT EXISTS `d9jhp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_banner_clients`
--

CREATE TABLE IF NOT EXISTS `d9jhp_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `d9jhp_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_categories`
--

CREATE TABLE IF NOT EXISTS `d9jhp_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `d9jhp_categories`
--

INSERT INTO `d9jhp_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_contact_details`
--

CREATE TABLE IF NOT EXISTS `d9jhp_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_content`
--

CREATE TABLE IF NOT EXISTS `d9jhp_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `d9jhp_content`
--

INSERT INTO `d9jhp_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 57, 'Trang Chủ', 'trang-ch', '<p> <br /> <strong>THƯ NGỎ</strong></p>\r\n<p align="center"><strong>CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT</strong><br /> <strong>“ TRUNG THÀNH – KỶ LUẬT – TRÁCH NHIỆM ”</strong></p>\r\n<p><strong><span style="text-decoration: underline;">Kính Gửi</span></strong> : Quý khách hàng</p>\r\n<p>            Hội nhập xu thế phát triển thời đại bằng con đường “ CÔNG NGHIỆP HÓA – HIỆN ĐẠI HÓA” là chủ trương đúng đắn của nhà nước Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam trong thời kỳ đổi mới hiện nay, nhất là sau khi Việt Nam chính thức gia nhập tổ chức thương mại thế giới (WTO), nhu cầu dịch vụ bảo vệ cũng trở nên hết sức cần thiết, đòi hỏi phải được xây dựng phát triển ngang tầm với quy mô ngày càng lớn mạnh, với tính chuyên nghiệp ngày càng cao, nhằm mục đích thực hiện tốt công tác bảo vệ an toàn cho các đơn vị, cơ quan, doanh nghiệp, xí nghiệp , nhà máy, đáp ứng sự mong muốn chung của các thành phần kinh tế trong và ngoài nước.<br /> <br /> Xuất phát từ nhận thức trên, vì sự nghiệp phát triển chung của ngành dịch vụ bảo vệ, góp phần tích cực vào việc bảo vệ an ninh trật tự chung xã hội, nguồn động lực chính thúc đẩy cho sự phát triển của nền kinh tế đất nước nói chung và các thành phần kinh tế nói riêng .<strong>CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT </strong> đuợc thành lập, biểu tượng cho đất nước VIỆT NAM có truyền thống lịch sử con rồng cháu tiên, đang trên đà phát triển thăng hoa, khát vọng thật sự trở thành con rồng kinh tế trong khu vực, với kỳ vọng đem đến Quý khách hàng một dịch vụ chất lượng cao hoàn hảo.</p>\r\n<p>Thưa Quý khách !</p>\r\n<p> </p>\r\n<p><strong>          CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT</strong> được thành lập và hoạt động trên phạm vi toàn lãnh thổ Việt Nam , được Phòng QLHC về TTXH Công An TP. HCM cấp giấy chứng nhận đủ điều kiện về an ninh trật tự dịch vụ bảo vệ chuyên nghiệp , giấy chứng nhận đăng ký kinh doanh do Phòng ĐKKD – Sở Kế hoạch đầu tư TP.HCM cấp .</p>\r\n<p>          Với đội ngũ cán bộ lãnh đạo tài năng trí tuệ có bề dày kinh nghiệm lâu năm trong lĩnh vực bảo vệ chuyên nghiệp, kết hợp cùng đội ngũ nhân viên trẻ năng động được huấn luyện về chính trị, pháp luật, nghiệp vụ, PCCC, võ thuật, và một số chuyên môn có liên quan đến nghề nghiệp, chắc chắn sẽ mang đến cho Quý khách cảm giác hài lòng và yên tâm đối với chất lượng dịch vụ của chúng tôi cung cấp.</p>\r\n<p>           Đối với Quý khách hàng chúng tôi luôn ôm ấp hoài bão sẽ thực hiện , tư vấn , cũng như hỗ trợ các biện pháp nghiệp vụ an ninh tối ưu nhằm bảo vệ an toàn về tài sản và con người cho Quý khách hàng. Chắc chắn Quý khách sẽ hài lòng và yên tâm với chất lượng công việc mà chúng tôi đã và sẽ phục vụ cho Quý khách, vì đồng hành với chúng tôi có một đội ngũ cán bộ nhân viên đầy nhiệt huyết – trung thực – kiên quyết – khôn khéo – dũng cảm , luôn trong tư thế sẵn sàng giải quyết mọi tình huống trên tinh thần trách nhiệm cao nhất, đảm bảo đáp ứng nhu cầu thực hiện phương châm “ <strong>VÌ BÌNH YÊN CUỘC SỐNG</strong> ” <br /> <br /> Dịch vụ an ninh của <strong>CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT</strong> đa dạng hóa và linh hoạt, đồng thời dựa trên cơ sở sẵn có mối quan hệ ngoại giao tốt với Chính quyền địa phương các cấp, để có cơ chế phối hợp kịp thời, chặt chẽ với các đơn vị, lực lượng chức năng chuyên môn, sẵn sàng đáp ứng kịp thời mọi nhu cầu thực tế của khách hàng, với mức giá dịch vụ phù hợp, hợp lý ( được bao trọn gói gồm : Đồng phục, Trang thiết bị bảo vệ, các khoản phúc lợi xã hội, bảo hiểm v.v…..)<br /> <br /> Chúng tôi cam kết với Quý khách hàng là sẽ luôn đảm bảo quyền lợi cơ bản và ngày càng được cải thiện về vật chất và tinh thần cho đội ngũ cán bộ nhân viên của Công ty chúng tôi, để họ luôn là những thành viên trung thành, có trách nhiệm cao, gắn bó lâu dài với Công ty và chính họ cũng sẽ là những hạt nhân tích cực trong phong trào giữ gìn, bảo vệ an ninh trật tự, an toàn xã hội. Đó là những lý do vì sao chúng tôi tin tưởng sẽ mang đến Quý khách một dịch vụ an ninh có chất lượng cao như mong muốn của Quý khách.</p>\r\n<p align="center"><strong><span style="text-decoration: underline;">NẾU QUÝ KHÁCH CẦN CÓ MỘT GIẢI PHÁP AN NINH TIN CẬY – UY TÍN</span></strong><br /> <strong>Xin vui lòng liên hệ với chúng tôi !!!  ( Qua các thông tin sau )</strong></p>\r\n<p>        - Tên Công ty  : CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT <br /> - Địa chỉ  : 137B, Đường Nguyễn Chí Thanh , P. 09 ,  Q. 05 , TP.HCM , VN<br /> - Điện thoại : 086 2646719 – 0650 3777518 <br /> - Fax  : 0862646719 – 0650 3777519</p>\r\n<p>Hotline:<br /> - Mr. TRẦN HUY PHONG   -  ĐTDĐ :  0938.304.333<br /> - Mr. Ngô Cơ –ĐTDĐ: 0906.097.864</p>\r\n<p>             <strong><img src="index_clip_image001.gif" alt="HÂN HẠNH ĐƯỢC PHỤC VỤ QUÝ KHÁCH !" width="639" height="40" border="0" /></strong></p>\r\n<p> </p>', '', 1, 2, '2014-06-25 09:45:13', 880, '', '2014-06-25 22:50:25', 880, 880, '2014-06-25 22:50:25', '2014-06-25 09:45:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 91, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `d9jhp_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `d9jhp_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_content_rating`
--

CREATE TABLE IF NOT EXISTS `d9jhp_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_content_types`
--

CREATE TABLE IF NOT EXISTS `d9jhp_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `d9jhp_content_types`
--

INSERT INTO `d9jhp_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `d9jhp_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_extensions`
--

CREATE TABLE IF NOT EXISTS `d9jhp_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10002 ;

--
-- Dumping data for table `d9jhp_extensions`
--

INSERT INTO `d9jhp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"9ce7b55c2dc5bd19d960ad9106c1aed2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.22","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `d9jhp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"June 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'thangviet', 'template', 'thangviet', '', 0, 1, 1, 0, '{"name":"thangviet","type":"template","creationDate":"24\\/06\\/2014","author":"Hung Phan","copyright":"Copyright (C) 2014 joomlavi.net","authorEmail":"hunguit@yahoo.com","authorUrl":"","version":"1.0","description":"C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u1eaeNG VI\\u1ec6T ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Vinaora Nivo Slider', 'module', 'mod_vt_nivo_slider', '', 0, 1, 0, 0, '{"name":"Vinaora Nivo Slider","type":"module","creationDate":"Jun 2013","author":"VINAORA","copyright":"Copyright (C) 2011-2013 VINAORA. All rights reserved.","authorEmail":"info@vinaora.com","authorUrl":"http:\\/\\/vinaora.com","version":"3.1.0","description":"MOD_VT_NIVO_SLIDER_XML_DESCRIPTION","group":""}', '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"all","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_filters`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `d9jhp_finder_taxonomy`
--

INSERT INTO `d9jhp_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_terms`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d9jhp_finder_terms_common`
--

INSERT INTO `d9jhp_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_finder_types`
--

CREATE TABLE IF NOT EXISTS `d9jhp_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_languages`
--

CREATE TABLE IF NOT EXISTS `d9jhp_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `d9jhp_languages`
--

INSERT INTO `d9jhp_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_menu`
--

CREATE TABLE IF NOT EXISTS `d9jhp_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `d9jhp_menu`
--

INSERT INTO `d9jhp_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 135, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'TRANG CHỦ', 'trang-chu', '', 'trang-chu', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'mainmenu', 'GIỚI THIỆU', 'gioi-thieu', '', 'gioi-thieu', '', 'url', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 49, 50, 0, '*', 0),
(103, 'mainmenu', 'DỊCH VỤ BẢO VỆ', 'gioi-thieu-2', '', 'gioi-thieu-2', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 51, 52, 0, '*', 0),
(104, 'mainmenu', 'KHÁCH HÀNG', 'gioi-thieu-3', '', 'gioi-thieu-3', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 53, 54, 0, '*', 0),
(105, 'mainmenu', 'TUYỂN DỤNG', 'gioi-thieu-4', '', 'gioi-thieu-4', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 55, 56, 0, '*', 0),
(106, 'mainmenu', 'THIẾT BỊ BẢO VỆ', 'gioi-thieu-5', '', 'gioi-thieu-5', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(107, 'mainmenu', 'LIÊN HỆ', 'gioi-thieu-6', '', 'gioi-thieu-6', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(108, 'menu-left', 'Bảo Vệ Toà Nhà', '2014-06-25-09-22-56', '', '2014-06-25-09-22-56', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(109, 'menu-left', 'Bảo Vệ Nhà Máy', '2014-06-25-09-22-57', '', '2014-06-25-09-22-57', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 63, 64, 0, '*', 0),
(110, 'menu-left', 'Bảo Vệ Ngân Hàng', '2014-06-25-09-22-58', '', '2014-06-25-09-22-58', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 65, 66, 0, '*', 0),
(111, 'menu-left', 'Bảo Vệ Siêu Thị', '2014-06-25-09-22-59', '', '2014-06-25-09-22-59', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(112, 'menu-left', 'Bảo Vệ Trường Học', '2014-06-25-09-22-60', '', '2014-06-25-09-22-60', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 69, 70, 0, '*', 0),
(113, 'menu-left', 'Bảo Vệ Bệnh Viện', '2014-06-25-09-22-61', '', '2014-06-25-09-22-61', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 71, 72, 0, '*', 0),
(114, 'menu-left', 'Bảo Vệ Khách Sạn', '2014-06-25-09-22-62', '', '2014-06-25-09-22-62', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 73, 74, 0, '*', 0),
(115, 'menu-left', 'Bảo Vệ Cửa Hàng', '2014-06-25-09-22-63', '', '2014-06-25-09-22-63', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 75, 76, 0, '*', 0),
(116, 'menu-left', 'Bảo Vệ Công Trường', '2014-06-25-09-22-64', '', '2014-06-25-09-22-64', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 77, 78, 0, '*', 0),
(117, 'menu-left', 'Bảo Vệ Khu Công Nghiệp', '2014-06-25-09-22-65', '', '2014-06-25-09-22-65', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 79, 80, 0, '*', 0),
(118, 'menu-left', 'Bảo Vệ Sân Bay, Bến Cảng', '2014-06-25-09-22-66', '', '2014-06-25-09-22-66', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 81, 82, 0, '*', 0),
(119, 'menu-left', 'Bảo Vệ Sự Kiện', '2014-06-25-09-22-67', '', '2014-06-25-09-22-67', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 83, 84, 0, '*', 0),
(120, 'menu-left', 'Bảo Vệ Yếu Nhân(Vệ Sĩ)', '2014-06-25-09-22-68', '', '2014-06-25-09-22-68', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 85, 86, 0, '*', 0),
(121, 'menu-left', 'Hình Thức Bảo Vệ Khác', '2014-06-25-09-22-69', '', '2014-06-25-09-22-69', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 87, 88, 0, '*', 0),
(122, 'menu-right', 'Bảo Vệ Quận 1', '2014-06-25-09-30-44', '', '2014-06-25-09-30-44', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 89, 90, 0, '*', 0),
(123, 'menu-right', 'Bảo Vệ Quận 2', '2014-06-25-09-30-45', '', '2014-06-25-09-30-45', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 91, 92, 0, '*', 0),
(124, 'menu-right', 'Bảo Vệ Quận 3', '2014-06-25-09-30-46', '', '2014-06-25-09-30-46', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 93, 94, 0, '*', 0),
(125, 'menu-right', 'Bảo Vệ Quận 4', '2014-06-25-09-30-47', '', '2014-06-25-09-30-47', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 95, 96, 0, '*', 0),
(126, 'menu-right', 'Bảo Vệ Quận 5', '2014-06-25-09-30-48', '', '2014-06-25-09-30-48', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 97, 98, 0, '*', 0),
(127, 'menu-right', 'Bảo Vệ Quận 6', '2014-06-25-09-30-49', '', '2014-06-25-09-30-49', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 99, 100, 0, '*', 0),
(128, 'menu-right', 'Bảo Vệ Quận 7', '2014-06-25-09-30-50', '', '2014-06-25-09-30-50', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 101, 102, 0, '*', 0),
(129, 'menu-right', 'Bảo Vệ Quận 8', '2014-06-25-09-30-51', '', '2014-06-25-09-30-51', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 103, 104, 0, '*', 0),
(130, 'menu-right', 'Bảo Vệ Quận 9', '2014-06-25-09-30-52', '', '2014-06-25-09-30-52', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 105, 106, 0, '*', 0),
(131, 'menu-right', 'Bảo Vệ Quận 10', '2014-06-25-09-30-53', '', '2014-06-25-09-30-53', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 107, 108, 0, '*', 0),
(132, 'menu-right', 'Bảo Vệ Quận 11', '2014-06-25-09-30-54', '', '2014-06-25-09-30-54', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 109, 110, 0, '*', 0),
(133, 'menu-right', 'Bảo Vệ Quận 12', '2014-06-25-09-30-55', '', '2014-06-25-09-30-55', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 111, 112, 0, '*', 0),
(134, 'menu-right', 'Bảo Vệ Tại Quận Tân Bình', '2014-06-25-09-30-56', '', '2014-06-25-09-30-56', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 113, 114, 0, '*', 0),
(135, 'menu-right', 'Bảo Vệ Tại Quận Bình Tân', '2014-06-25-09-30-57', '', '2014-06-25-09-30-57', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(136, 'menu-right', 'Bảo Vệ Tại Quận Bình Thạnh', '2014-06-25-09-30-58', '', '2014-06-25-09-30-58', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 117, 118, 0, '*', 0),
(137, 'menu-right', 'Bảo Vệ Tại Quận Gò Vấp', '2014-06-25-09-30-59', '', '2014-06-25-09-30-59', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 119, 120, 0, '*', 0),
(138, 'menu-right', 'Bảo Vệ Tại Quận Phú Nhuận', '2014-06-25-09-30-60', '', '2014-06-25-09-30-60', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 121, 122, 0, '*', 0),
(139, 'menu-right', 'Bảo Vệ Tại Quận Tân Phú', '2014-06-25-09-30-61', '', '2014-06-25-09-30-61', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 123, 124, 0, '*', 0),
(140, 'menu-right', 'Bảo Vệ Tại Quận Bình Chánh', '2014-06-25-09-30-62', '', '2014-06-25-09-30-62', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 125, 126, 0, '*', 0),
(141, 'menu-right', 'Bảo Vệ Tại Quận Cần Giờ', '2014-06-25-09-30-63', '', '2014-06-25-09-30-63', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 127, 128, 0, '*', 0),
(142, 'menu-right', 'Bảo Vệ Tại Củ Chi', '2014-06-25-09-30-64', '', '2014-06-25-09-30-64', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 129, 130, 0, '*', 0),
(143, 'menu-right', 'Bảo Vệ Tại Hóc Môn', '2014-06-25-09-30-65', '', '2014-06-25-09-30-65', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 131, 132, 0, '*', 0),
(144, 'menu-right', 'Bảo Vệ Tại Nhà Bè', '2014-06-25-09-30-66', '', '2014-06-25-09-30-66', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 133, 134, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_menu_types`
--

CREATE TABLE IF NOT EXISTS `d9jhp_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `d9jhp_menu_types`
--

INSERT INTO `d9jhp_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'menu-left', 'Menu Left', 'menu-left'),
(3, 'menu-right', 'Menu Right', 'menu-right');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_messages`
--

CREATE TABLE IF NOT EXISTS `d9jhp_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `d9jhp_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_modules`
--

CREATE TABLE IF NOT EXISTS `d9jhp_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `d9jhp_modules`
--

INSERT INTO `d9jhp_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu top', '', '', 1, 'menutop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" menutop","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Slide show', '', '', 1, 'slideshow', 880, '2014-06-25 02:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vt_nivo_slider', 1, 0, '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_dir":".\\/images\\/thangviet\\/slideshow\\/","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"0","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"01.png","arrowStyle":"01.png","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Dịch Vụ Bảo Vệ', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu-left","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" menuleft","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 56, 'Danh Bạ Bảo Vệ', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu-right","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" menuright","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'Footer', '', '<p style="text-align: center;">CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG VIỆT</p>\r\n<p style="text-align: center;">Địa chỉ: 137B, Đường Nguyễn Chí Thanh , P. 09 ,Q. 05 , TP.HCM , VN</p>\r\n<p style="text-align: center;">Điện thoại : 086 2646719 – 0650 3777518</p>\r\n<p style="text-align: center;">Fax: 0862646719 – 0650 3777519</p>', 1, 'footer', 880, '2014-06-25 22:46:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" footer","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 59, 'Liên Hệ', '', '<p><!-- [if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n   <w:UseFELayout/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="--"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--></p>\r\n<p><!-- [if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="0" Name="Hyperlink"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!-- [if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin:0in;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:"Times New Roman";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]--></p>\r\n<p class="MsoNormal" style="text-align: center;"><span style="font-family: ''Times New Roman'',''serif'';"><span style="mso-spacerun: yes;">        </span><strong>CÔNG TY TNHH DỊCH VỤ BẢO VỆ THĂNG</strong></span><strong> <span style="font-family: ''Times New Roman'',''serif'';">VIỆT</span></strong></p>\r\n<p class="MsoNormal" style="margin-left: 0.25in; text-align: center;">137B, <span style="font-family: ''Times New Roman'',''serif'';">Đường </span>Nguy<span style="font-family: ''Times New Roman'',''serif'';">ễ</span>n Chí Thanh , P. 09 ,<span style="mso-spacerun: yes;">  </span>Q. 05 , TP.HCM , VN</p>\r\n<p class="MsoNormal" style="text-align: center;"><span style="font-family: ''Times New Roman'',''serif'';"><span style="mso-spacerun: yes;">        </span>- Điện thoại : 086 2646719 – 0650 3777518</span></p>\r\n<p class="MsoNormal" style="text-align: center;"><span style="font-family: ''Times New Roman'',''serif'';"><span style="mso-spacerun: yes;">        </span>- Fax <span style="mso-spacerun: yes;"> </span>: 0862646719 – 0650 3777519</span></p>\r\n<p class="MsoNormal" style="text-align: center;"><span style="font-family: ''Times New Roman'',''serif'';"><span style="mso-spacerun: yes;">        </span>- Mr. TRẦN HUY PHONG<span style="mso-spacerun: yes;">  </span><span style="mso-spacerun: yes;"> </span>-<span style="mso-spacerun: yes;">  </span>ĐTDĐ :<span style="mso-spacerun: yes;">  </span>0938.304.333</span></p>\r\n<p class="MsoNormal" style="text-align: center;"><span style="font-family: ''Times New Roman'',''serif'';"><span style="mso-spacerun: yes;">        </span>- Mr. Ngô Cơ –ĐTDĐ: 0906.097.864</span></p>', 1, 'left', 880, '2014-06-25 13:09:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" ","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_modules_menu`
--

CREATE TABLE IF NOT EXISTS `d9jhp_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d9jhp_modules_menu`
--

INSERT INTO `d9jhp_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `d9jhp_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_overrider`
--

CREATE TABLE IF NOT EXISTS `d9jhp_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `d9jhp_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `d9jhp_postinstall_messages`
--

INSERT INTO `d9jhp_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_redirect_links`
--

CREATE TABLE IF NOT EXISTS `d9jhp_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_schemas`
--

CREATE TABLE IF NOT EXISTS `d9jhp_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d9jhp_schemas`
--

INSERT INTO `d9jhp_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_session`
--

CREATE TABLE IF NOT EXISTS `d9jhp_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d9jhp_session`
--

INSERT INTO `d9jhp_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('nmqtj6pn4t794ut0qfpe2n3g03', 0, 1, '1403736632', '__default|a:7:{s:15:"session.counter";i:7;s:19:"session.timer.start";i:1403735683;s:18:"session.timer.last";i:1403736402;s:17:"session.timer.now";i:1403736631;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.0; rv:30.0) Gecko/20100101 Firefox/30.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('rqgfa4l7bf3u3ajbn3othtq064', 1, 0, '1403736628', '__default|a:8:{s:15:"session.counter";i:34;s:19:"session.timer.start";i:1403730118;s:18:"session.timer.last";i:1403736625;s:17:"session.timer.now";i:1403736627;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.0; rv:30.0) Gecko/20100101 Firefox/30.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:11:"com_modules";O:8:"stdClass":3:{s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:1:{i:0;i:90;}}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:1;}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"880";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:17:"hunguit@yahoo.com";s:8:"password";s:60:"$2y$10$N4T3siSb0oH3.eiESbGPeuynNF3dv1IElCw6vmI3XPbiUUU.qgIB2";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-06-24 15:06:59";s:13:"lastvisitDate";s:19:"2014-06-25 14:00:02";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"35ed29abd310ae7b474e3d65dfd55898";}', 880, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_tags`
--

CREATE TABLE IF NOT EXISTS `d9jhp_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `d9jhp_tags`
--

INSERT INTO `d9jhp_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_template_styles`
--

CREATE TABLE IF NOT EXISTS `d9jhp_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `d9jhp_template_styles`
--

INSERT INTO `d9jhp_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'thangviet', 0, '1', 'thangviet - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_ucm_base`
--

CREATE TABLE IF NOT EXISTS `d9jhp_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_ucm_content`
--

CREATE TABLE IF NOT EXISTS `d9jhp_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_ucm_history`
--

CREATE TABLE IF NOT EXISTS `d9jhp_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `d9jhp_ucm_history`
--

INSERT INTO `d9jhp_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2014-06-25 09:45:13', 880, 8624, '58a64dc68f0fc99f4090ae08f8b6a1c3b95ce237', '{"id":1,"asset_id":57,"title":"Trang Ch\\u1ee7","alias":"trang-ch","introtext":"<h2><strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TU\\u1ed4I TR\\u1eba<\\/strong><\\/h2>\\r\\n<p><img src=\\"http:\\/\\/baovetuoitre.net\\/upload\\/sanpham\\/cong%20ty%20bao%20ve%20tuoi%20tre.gif\\" alt=\\"cong-ty-bao-ve\\" width=\\"140\\" height=\\"140\\" \\/><\\/p>\\r\\n<p><em><span style=\\"text-decoration: underline;\\">K\\u00ednh Th\\u01b0a<\\/span>:\\u00a0<strong>Qu\\u00fd kh\\u00e1ch h\\u00e0ng<\\/strong>!<\\/em><\\/p>\\r\\n<p><em>L\\u1eddi \\u0111\\u1ea7u, C\\u00f4ng ty TNHH D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong> Tu\\u1ed5i Tr\\u1ebb xin tr\\u00e2n tr\\u1ecdng g\\u1eedi t\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng l\\u1eddi ch\\u00fac t\\u1ed1t \\u0111\\u1eb9p nh\\u1ea5t. Ch\\u00fac Qu\\u00fd kh\\u00e1ch h\\u00e0ng An khang v\\u00e0 Th\\u1ecbnh v\\u01b0\\u1ee3ng.<\\/em><\\/p>\\r\\n<p><strong><em>Th\\u01b0a qu\\u00fd kh\\u00e1ch<\\/em><\\/strong>: Trong n\\u1ec1n kinh t\\u1ebf n\\u0103ng \\u0111\\u1ed9ng, c\\u1ea1nh tranh, \\u0111a d\\u1ea1ng h\\u00f3a d\\u1eabn \\u0111\\u1ebfn t\\u00ecnh h\\u00ecnh an ninh x\\u00e3 h\\u1ed9i ph\\u1ee9c t\\u1ea1p nh\\u01b0 giai \\u0111o\\u1ea1n hi\\u1ec7n nay. V\\u1ea5n \\u0111\\u1ec1 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 l\\u00e3nh \\u0111\\u1ea1o, c\\u00e1c doanh nghi\\u1ec7p quan t\\u00e2m l\\u00e0 l\\u00e0m sao \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u01b0\\u1ee3c an to\\u00e0n \\u2013 an ninh tr\\u1eadt t\\u1ef1 trong ho\\u1ea1t \\u0111\\u1ed9ng s\\u1ea3n xu\\u1ea5t kinh doanh. Do v\\u1eady vi\\u1ec7c trang b\\u1ecb m\\u1ed9t l\\u1ef1c l\\u01b0\\u1ee3ng <strong>b\\u1ea3o v\\u1ec7<\\/strong> - v\\u1ec7 s\\u1ef9 chuy\\u00ean nghi\\u1ec7p l\\u00e0 \\u0111i\\u1ec1u t\\u1ea5t y\\u1ebfu v\\u00e0 kh\\u00f4ng th\\u1ec3 thi\\u1ebfu \\u0111\\u01b0\\u1ee3c c\\u1ee7a b\\u1ea5t k\\u1ef3 doanh nghi\\u1ec7p n\\u00e0o.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2>\\u0110\\u1ee9ng tr\\u01b0\\u1edbc \\u0111\\u00f2i h\\u1ecfi \\u0111\\u00f3, C\\u00f4ng ty TNHH\\u00a0<strong>D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7<\\/strong>\\u00a0Tu\\u1ed5i Tr\\u1ebb ra \\u0111\\u1eddi nh\\u1eb1m \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u n\\u00eau tr\\u00ean. C\\u00f4ng ty ch\\u00fang t\\u00f4i \\u0111\\u01b0\\u1ee3c c\\u00e1c c\\u01a1 quan ch\\u1ee9c n\\u0103ng c\\u1ea5p ph\\u00e9p ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh cung c\\u1ea5p<\\/h2>\\r\\n<h2><strong>D\\u1ecbch v\\u1ee5\\u00a0<a href=\\"http:\\/\\/baovetuoitre.vn\\">b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p<\\/a>:<\\/strong><\\/h2>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- \\u00a0<strong>C\\u00f4ng ty TNHH\\u00a0D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7\\u00a0Tu\\u1ed5i Tr\\u1ebb<\\/strong>, \\u0111\\u01b0\\u1ee3c Ph\\u00f2ng \\u0110\\u0103ng k\\u00fd Kinh doanh, s\\u1edf k\\u1ebf Ho\\u1ea1ch v\\u00e0 \\u0110\\u1ea7u t\\u01b0 th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh c\\u1ea5p Gi\\u1ea5y ph\\u00e9p \\u0110\\u0103ng k\\u00fd Kinh doanh <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/em> chuy\\u00ean nghi\\u1ec7p s\\u1ed1: 0311592006<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- \\u00a0Ph\\u00f2ng C\\u1ea3nh s\\u00e1t Qu\\u1ea3n l\\u00fd H\\u00e0nh ch\\u00ednh v\\u1ec1 Tr\\u1eadt t\\u1ef1 x\\u00e3 h\\u1ed9i \\u2013 C\\u00f4ng an th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh, c\\u1ea5p Gi\\u1ea5y x\\u00e1c nh\\u1eadn \\u0110\\u1ee7 \\u0111i\\u1ec1u ki\\u1ec7n \\u0111\\u1ec3 kinh doanh <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/em> s\\u1ed1: 315\\/ GXN<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ngo\\u00e0i ra <strong>c\\u00f4ng ty TNHH D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/strong> c\\u00f3 Mua b\\u1ea3o hi\\u1ec3m tr\\u00e1ch nhi\\u1ec7m ph\\u00e1p l\\u00fd \\u0111\\u1ed5i v\\u1edbi ngh\\u1ec1 nghi\\u1ec7p v\\u00e0 d\\u00e2n s\\u1ef1, v\\u1edbi t\\u1ed5ng m\\u1ee9c gi\\u1edbi h\\u1ea1n B\\u1ea3o hi\\u1ec3m l\\u00ean t\\u1edbi 3.000.000.000\\u0111 cho m\\u1ed7i v\\u1ee5 b\\u1ea3o hi\\u1ec3m v\\u00e0 kh\\u00f4ng gi\\u1edbi h\\u1ea1n s\\u1ed1 v\\u1ee5 trong n\\u0103m.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>C\\u00f4ng ty TNHH<strong>\\u00a0D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7<\\/strong>\\u00a0Tu\\u1ed5i Tr\\u1ebb ch\\u00fang t\\u00f4i r\\u1ea5t vinh d\\u1ef1, v\\u00e0 t\\u1ef1 h\\u00e0o l\\u00e0 m\\u1ed9t <strong>c\\u00f4ng ty b\\u1ea3o v\\u1ec7 <\\/strong>\\u0111ang s\\u1edf h\\u1eefu \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 qu\\u1ea3n l\\u00fd, c\\u00e1c chuy\\u00ean gia h\\u00e0ng \\u0111\\u1ea7u trong l\\u0129nh v\\u1ef1c\\u00a0<strong><a href=\\"http:\\/\\/baovetuoitre.vn\\">D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0<\\/strong>Chuy\\u00ean nghi\\u1ec7p, L\\u00e3nh \\u0111\\u1ea1o <strong>c\\u00f4ng ty <\\/strong>l\\u00e0 nh\\u1eefng chuy\\u00ean vi\\u00ean cao c\\u1ea5p v\\u1ec1 an ninh d\\u00e2n s\\u1ef1 t\\u1ea1i Vi\\u1ec7t Nam.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>H\\u01a1n n\\u1eefa, \\u0110\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean <strong>b\\u1ea3o v\\u1ec7<\\/strong> c\\u1ee7a <em>c\\u00f4ng ty <\\/em>ch\\u00fang t\\u00f4i \\u0111\\u01b0\\u1ee3c tuy\\u1ec3n ch\\u1ecdn ch\\u1eb7t ch\\u1ebd v\\u00e0 \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edbng nghi\\u1ec7p \\u0111\\u00e0o t\\u1ea1o c\\u00e1c k\\u1ef9 n\\u0103ng nh\\u01b0: v\\u00f5 thu\\u1eadt, k\\u1ef9 n\\u0103ng <strong>b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p<\\/strong>, c\\u00f4ng t\\u00e1c ph\\u00f2ng ch\\u00e1y ch\\u1eefa ch\\u00e1y, y t\\u1ebf c\\u1ea5p c\\u1ee9u, x\\u1eed l\\u00fd c\\u00e1c h\\u00e0nh vi b\\u1ea5t h\\u1ee3p ph\\u00e1p nh\\u01b0 \\u0111\\u00ecnh c\\u00f4ng, b\\u1ea1o lo\\u1ea1n\\u2026. \\u0111\\u01b0\\u1ee3c s\\u00e1t h\\u1ea1ch v\\u00e0 c\\u1ea5p ch\\u1ee9ng ch\\u1ec9 nghi\\u1ec7p v\\u1ee5\\u00a0<a href=\\"http:\\/\\/baovetuoitre.vn\\"><strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0t\\u1ea1i T\\u1ed5ng c\\u1ee5c c\\u1ea3nh s\\u00e1t QLHC v\\u1ec1 TTXH B\\u1ed9 C\\u00f4ng an.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>V\\u1edbi ph\\u01b0\\u01a1ng ch\\u00e2m c\\u1ee7a <em>C\\u00f4ng ty <\\/em>TNHH <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 <\\/em>Tu\\u1ed5i Tr\\u1ebb l\\u00e0 \\u201c<strong>L\\u1ecbch s\\u1ef1 - \\u0110\\u1ea1o \\u0111\\u1ee9c \\u2013 Uy t\\u00edn \\u2013 Ch\\u1ea5t l\\u01b0\\u1ee3ng\\u201d<\\/strong>,\\u00a0<strong><a href=\\"http:\\/\\/baovetuoitre.vn\\">c\\u00f4ng ty <strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0<\\/strong>ch\\u00fang t\\u00f4i lu\\u00f4n mong mu\\u1ed1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u1ee7a kh\\u00e1ch h\\u00e0ng \\u0111\\u1ebfn m\\u1ee9c t\\u1ed1i \\u0111a khi s\\u1eed d\\u1ee5ng <strong>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 <\\/strong>chuy\\u00ean nghi\\u1ec7p c\\u1ee7a c\\u00f4ng ty ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><em>\\u00a0 \\u00a0Khi Qu\\u00fd kh\\u00e1ch c\\u00f3 nhu c\\u1ea7u v\\u1ec1 D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>, h\\u00e3y vui l\\u00f2ng g\\u1ecdi \\u0111i\\u1ec7n cho c\\u00f4ng ty ch\\u00fang t\\u00f4i theo s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i:\\u00a0<strong>08.668 06 998 - 08.6289 1090<\\/strong>, ho\\u1eb7c\\u00a0<strong>hotline: 0919 996 526<\\/strong>\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n v\\u1ec1 D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>: th\\u00f4ng tin v\\u1ec1 gi\\u00e1 c\\u1ea3 d\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>, chu\\u1ea9n b\\u1ecb cu\\u1ed9c h\\u1eb9n, kh\\u1ea3o s\\u00e1t m\\u1ee5c ti\\u00eau <strong>b\\u1ea3o v\\u1ec7<\\/strong>, th\\u1ea3o lu\\u1eadn ph\\u01b0\\u01a1ng \\u00e1n <strong>b\\u1ea3o v\\u1ec7<\\/strong>, v\\u00e0 c\\u00e1c \\u0111i\\u1ec1u kho\\u1ea3n c\\u1ee7a h\\u1ee3p \\u0111\\u1ed3ng <strong>b\\u1ea3o v\\u1ec7<\\/strong>...<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong><em>H\\u00e2n h\\u1ea1nh \\u0111\\u01b0\\u1ee3c ph\\u1ee5c v\\u1ee5 qu\\u00fd kh\\u00e1ch!<\\/em><\\/strong><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-25 09:45:13","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-25 09:45:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 1, 1, '', '2014-06-25 10:03:19', 880, 8501, '5d12a0d4f1e1cc1f8235ddaf6f1c54a18138ffa3', '{"id":1,"asset_id":"57","title":"Trang Ch\\u1ee7","alias":"trang-ch","introtext":"<h2><strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TU\\u1ed4I TR\\u1eba<\\/strong><\\/h2>\\r\\n<p><img src=\\"http:\\/\\/baovetuoitre.net\\/upload\\/sanpham\\/cong%20ty%20bao%20ve%20tuoi%20tre.gif\\" alt=\\"cong-ty-bao-ve\\" width=\\"140\\" height=\\"140\\" \\/><\\/p>\\r\\n<p><em><span style=\\"text-decoration: underline;\\">K\\u00ednh Th\\u01b0a<\\/span>:\\u00a0<strong>Qu\\u00fd kh\\u00e1ch h\\u00e0ng<\\/strong>!<\\/em><\\/p>\\r\\n<p><em>L\\u1eddi \\u0111\\u1ea7u, C\\u00f4ng ty TNHH D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong> Tu\\u1ed5i Tr\\u1ebb xin tr\\u00e2n tr\\u1ecdng g\\u1eedi t\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng l\\u1eddi ch\\u00fac t\\u1ed1t \\u0111\\u1eb9p nh\\u1ea5t. Ch\\u00fac Qu\\u00fd kh\\u00e1ch h\\u00e0ng An khang v\\u00e0 Th\\u1ecbnh v\\u01b0\\u1ee3ng.<\\/em><\\/p>\\r\\n<p><strong><em>Th\\u01b0a qu\\u00fd kh\\u00e1ch<\\/em><\\/strong>: Trong n\\u1ec1n kinh t\\u1ebf n\\u0103ng \\u0111\\u1ed9ng, c\\u1ea1nh tranh, \\u0111a d\\u1ea1ng h\\u00f3a d\\u1eabn \\u0111\\u1ebfn t\\u00ecnh h\\u00ecnh an ninh x\\u00e3 h\\u1ed9i ph\\u1ee9c t\\u1ea1p nh\\u01b0 giai \\u0111o\\u1ea1n hi\\u1ec7n nay. V\\u1ea5n \\u0111\\u1ec1 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 l\\u00e3nh \\u0111\\u1ea1o, c\\u00e1c doanh nghi\\u1ec7p quan t\\u00e2m l\\u00e0 l\\u00e0m sao \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u01b0\\u1ee3c an to\\u00e0n \\u2013 an ninh tr\\u1eadt t\\u1ef1 trong ho\\u1ea1t \\u0111\\u1ed9ng s\\u1ea3n xu\\u1ea5t kinh doanh. Do v\\u1eady vi\\u1ec7c trang b\\u1ecb m\\u1ed9t l\\u1ef1c l\\u01b0\\u1ee3ng <strong>b\\u1ea3o v\\u1ec7<\\/strong> - v\\u1ec7 s\\u1ef9 chuy\\u00ean nghi\\u1ec7p l\\u00e0 \\u0111i\\u1ec1u t\\u1ea5t y\\u1ebfu v\\u00e0 kh\\u00f4ng th\\u1ec3 thi\\u1ebfu \\u0111\\u01b0\\u1ee3c c\\u1ee7a b\\u1ea5t k\\u1ef3 doanh nghi\\u1ec7p n\\u00e0o.<\\/p>\\r\\n<h2>\\u0110\\u1ee9ng tr\\u01b0\\u1edbc \\u0111\\u00f2i h\\u1ecfi \\u0111\\u00f3, C\\u00f4ng ty TNHH\\u00a0<strong>D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7<\\/strong>\\u00a0Tu\\u1ed5i Tr\\u1ebb ra \\u0111\\u1eddi nh\\u1eb1m \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u n\\u00eau tr\\u00ean. C\\u00f4ng ty ch\\u00fang t\\u00f4i \\u0111\\u01b0\\u1ee3c c\\u00e1c c\\u01a1 quan ch\\u1ee9c n\\u0103ng c\\u1ea5p ph\\u00e9p ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh cung c\\u1ea5p<\\/h2>\\r\\n<h2><strong>D\\u1ecbch v\\u1ee5\\u00a0<a href=\\"http:\\/\\/baovetuoitre.vn\\">b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p<\\/a>:<\\/strong><\\/h2>\\r\\n<p>- \\u00a0<strong>C\\u00f4ng ty TNHH\\u00a0D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7\\u00a0Tu\\u1ed5i Tr\\u1ebb<\\/strong>, \\u0111\\u01b0\\u1ee3c Ph\\u00f2ng \\u0110\\u0103ng k\\u00fd Kinh doanh, s\\u1edf k\\u1ebf Ho\\u1ea1ch v\\u00e0 \\u0110\\u1ea7u t\\u01b0 th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh c\\u1ea5p Gi\\u1ea5y ph\\u00e9p \\u0110\\u0103ng k\\u00fd Kinh doanh <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/em> chuy\\u00ean nghi\\u1ec7p s\\u1ed1: 0311592006<\\/p>\\r\\n<p>- \\u00a0Ph\\u00f2ng C\\u1ea3nh s\\u00e1t Qu\\u1ea3n l\\u00fd H\\u00e0nh ch\\u00ednh v\\u1ec1 Tr\\u1eadt t\\u1ef1 x\\u00e3 h\\u1ed9i \\u2013 C\\u00f4ng an th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh, c\\u1ea5p Gi\\u1ea5y x\\u00e1c nh\\u1eadn \\u0110\\u1ee7 \\u0111i\\u1ec1u ki\\u1ec7n \\u0111\\u1ec3 kinh doanh <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/em> s\\u1ed1: 315\\/ GXN<\\/p>\\r\\n<p>Ngo\\u00e0i ra <strong>c\\u00f4ng ty TNHH D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7<\\/strong> c\\u00f3 Mua b\\u1ea3o hi\\u1ec3m tr\\u00e1ch nhi\\u1ec7m ph\\u00e1p l\\u00fd \\u0111\\u1ed5i v\\u1edbi ngh\\u1ec1 nghi\\u1ec7p v\\u00e0 d\\u00e2n s\\u1ef1, v\\u1edbi t\\u1ed5ng m\\u1ee9c gi\\u1edbi h\\u1ea1n B\\u1ea3o hi\\u1ec3m l\\u00ean t\\u1edbi 3.000.000.000\\u0111 cho m\\u1ed7i v\\u1ee5 b\\u1ea3o hi\\u1ec3m v\\u00e0 kh\\u00f4ng gi\\u1edbi h\\u1ea1n s\\u1ed1 v\\u1ee5 trong n\\u0103m.<\\/p>\\r\\n<p>C\\u00f4ng ty TNHH<strong>\\u00a0D\\u1ecbch v\\u1ee5 B\\u1ea3o v\\u1ec7<\\/strong>\\u00a0Tu\\u1ed5i Tr\\u1ebb ch\\u00fang t\\u00f4i r\\u1ea5t vinh d\\u1ef1, v\\u00e0 t\\u1ef1 h\\u00e0o l\\u00e0 m\\u1ed9t <strong>c\\u00f4ng ty b\\u1ea3o v\\u1ec7 <\\/strong>\\u0111ang s\\u1edf h\\u1eefu \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 qu\\u1ea3n l\\u00fd, c\\u00e1c chuy\\u00ean gia h\\u00e0ng \\u0111\\u1ea7u trong l\\u0129nh v\\u1ef1c\\u00a0<strong><a href=\\"http:\\/\\/baovetuoitre.vn\\">D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0<\\/strong>Chuy\\u00ean nghi\\u1ec7p, L\\u00e3nh \\u0111\\u1ea1o <strong>c\\u00f4ng ty <\\/strong>l\\u00e0 nh\\u1eefng chuy\\u00ean vi\\u00ean cao c\\u1ea5p v\\u1ec1 an ninh d\\u00e2n s\\u1ef1 t\\u1ea1i Vi\\u1ec7t Nam.<\\/p>\\r\\n<p>H\\u01a1n n\\u1eefa, \\u0110\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean <strong>b\\u1ea3o v\\u1ec7<\\/strong> c\\u1ee7a <em>c\\u00f4ng ty <\\/em>ch\\u00fang t\\u00f4i \\u0111\\u01b0\\u1ee3c tuy\\u1ec3n ch\\u1ecdn ch\\u1eb7t ch\\u1ebd v\\u00e0 \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edbng nghi\\u1ec7p \\u0111\\u00e0o t\\u1ea1o c\\u00e1c k\\u1ef9 n\\u0103ng nh\\u01b0: v\\u00f5 thu\\u1eadt, k\\u1ef9 n\\u0103ng <strong>b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p<\\/strong>, c\\u00f4ng t\\u00e1c ph\\u00f2ng ch\\u00e1y ch\\u1eefa ch\\u00e1y, y t\\u1ebf c\\u1ea5p c\\u1ee9u, x\\u1eed l\\u00fd c\\u00e1c h\\u00e0nh vi b\\u1ea5t h\\u1ee3p ph\\u00e1p nh\\u01b0 \\u0111\\u00ecnh c\\u00f4ng, b\\u1ea1o lo\\u1ea1n\\u2026. \\u0111\\u01b0\\u1ee3c s\\u00e1t h\\u1ea1ch v\\u00e0 c\\u1ea5p ch\\u1ee9ng ch\\u1ec9 nghi\\u1ec7p v\\u1ee5\\u00a0<a href=\\"http:\\/\\/baovetuoitre.vn\\"><strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0t\\u1ea1i T\\u1ed5ng c\\u1ee5c c\\u1ea3nh s\\u00e1t QLHC v\\u1ec1 TTXH B\\u1ed9 C\\u00f4ng an.<\\/p>\\r\\n<p>V\\u1edbi ph\\u01b0\\u01a1ng ch\\u00e2m c\\u1ee7a <em>C\\u00f4ng ty <\\/em>TNHH <em>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 <\\/em>Tu\\u1ed5i Tr\\u1ebb l\\u00e0 \\u201c<strong>L\\u1ecbch s\\u1ef1 - \\u0110\\u1ea1o \\u0111\\u1ee9c \\u2013 Uy t\\u00edn \\u2013 Ch\\u1ea5t l\\u01b0\\u1ee3ng\\u201d<\\/strong>,\\u00a0<strong><a href=\\"http:\\/\\/baovetuoitre.vn\\">c\\u00f4ng ty <strong>b\\u1ea3o v\\u1ec7<\\/strong><\\/a>\\u00a0<\\/strong>ch\\u00fang t\\u00f4i lu\\u00f4n mong mu\\u1ed1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u1ee7a kh\\u00e1ch h\\u00e0ng \\u0111\\u1ebfn m\\u1ee9c t\\u1ed1i \\u0111a khi s\\u1eed d\\u1ee5ng <strong>D\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 <\\/strong>chuy\\u00ean nghi\\u1ec7p c\\u1ee7a c\\u00f4ng ty ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p><em>\\u00a0 \\u00a0Khi Qu\\u00fd kh\\u00e1ch c\\u00f3 nhu c\\u1ea7u v\\u1ec1 D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>, h\\u00e3y vui l\\u00f2ng g\\u1ecdi \\u0111i\\u1ec7n cho c\\u00f4ng ty ch\\u00fang t\\u00f4i theo s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i:\\u00a0<strong>08.668 06 998 - 08.6289 1090<\\/strong>, ho\\u1eb7c\\u00a0<strong>hotline: 0919 996 526<\\/strong>\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n v\\u1ec1 D\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>: th\\u00f4ng tin v\\u1ec1 gi\\u00e1 c\\u1ea3 d\\u1ecbch v\\u1ee5 <strong>b\\u1ea3o v\\u1ec7<\\/strong>, chu\\u1ea9n b\\u1ecb cu\\u1ed9c h\\u1eb9n, kh\\u1ea3o s\\u00e1t m\\u1ee5c ti\\u00eau <strong>b\\u1ea3o v\\u1ec7<\\/strong>, th\\u1ea3o lu\\u1eadn ph\\u01b0\\u01a1ng \\u00e1n <strong>b\\u1ea3o v\\u1ec7<\\/strong>, v\\u00e0 c\\u00e1c \\u0111i\\u1ec1u kho\\u1ea3n c\\u1ee7a h\\u1ee3p \\u0111\\u1ed3ng <strong>b\\u1ea3o v\\u1ec7<\\/strong>...<\\/em><\\/p>\\r\\n<p><strong><em>H\\u00e2n h\\u1ea1nh \\u0111\\u01b0\\u1ee3c ph\\u1ee5c v\\u1ee5 qu\\u00fd kh\\u00e1ch!<\\/em><\\/strong><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-25 09:45:13","created_by":"880","created_by_alias":"","modified":"2014-06-25 10:03:19","modified_by":"880","checked_out":"880","checked_out_time":"2014-06-25 10:02:36","publish_up":"2014-06-25 09:45:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2014-06-25 10:05:17', 880, 11059, '2db80de427f9a749775fecad195dda7b7e5304b8', '{"id":1,"asset_id":"57","title":"Trang Ch\\u1ee7","alias":"trang-ch","introtext":"<p>\\u00a0<br \\/> <strong>TH\\u01af NG\\u1ece<\\/strong><\\/p>\\r\\n<p align=\\"center\\"><strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong><br \\/> <strong>\\u201c TRUNG TH\\u00c0NH \\u2013 K\\u1ef6 LU\\u1eacT \\u2013 TR\\u00c1CH NHI\\u1ec6M \\u201d<\\/strong><\\/p>\\r\\n<p><strong><span style=\\"text-decoration: underline;\\">K\\u00ednh G\\u1eedi<\\/span><\\/strong> : Qu\\u00fd kh\\u00e1ch h\\u00e0ng<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 H\\u1ed9i nh\\u1eadp xu th\\u1ebf ph\\u00e1t tri\\u1ec3n th\\u1eddi \\u0111\\u1ea1i b\\u1eb1ng con \\u0111\\u01b0\\u1eddng \\u201c C\\u00d4NG NGHI\\u1ec6P H\\u00d3A \\u2013 HI\\u1ec6N \\u0110\\u1ea0I H\\u00d3A\\u201d l\\u00e0 ch\\u1ee7 tr\\u01b0\\u01a1ng \\u0111\\u00fang \\u0111\\u1eafn c\\u1ee7a nh\\u00e0 n\\u01b0\\u1edbc C\\u1ed9ng H\\u00f2a X\\u00e3 H\\u1ed9i Ch\\u1ee7 Ngh\\u0129a Vi\\u1ec7t Nam trong th\\u1eddi k\\u1ef3 \\u0111\\u1ed5i m\\u1edbi hi\\u1ec7n nay, nh\\u1ea5t l\\u00e0 sau khi Vi\\u1ec7t Nam ch\\u00ednh th\\u1ee9c gia nh\\u1eadp t\\u1ed5 ch\\u1ee9c th\\u01b0\\u01a1ng m\\u1ea1i th\\u1ebf gi\\u1edbi (WTO), nhu c\\u1ea7u d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 c\\u0169ng tr\\u1edf n\\u00ean h\\u1ebft s\\u1ee9c c\\u1ea7n thi\\u1ebft, \\u0111\\u00f2i h\\u1ecfi ph\\u1ea3i \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng ph\\u00e1t tri\\u1ec3n ngang t\\u1ea7m v\\u1edbi quy m\\u00f4 ng\\u00e0y c\\u00e0ng l\\u1edbn m\\u1ea1nh, v\\u1edbi t\\u00ednh chuy\\u00ean nghi\\u1ec7p ng\\u00e0y c\\u00e0ng cao, nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch th\\u1ef1c hi\\u1ec7n t\\u1ed1t c\\u00f4ng t\\u00e1c b\\u1ea3o v\\u1ec7 an to\\u00e0n cho c\\u00e1c \\u0111\\u01a1n v\\u1ecb, c\\u01a1 quan, doanh nghi\\u1ec7p, x\\u00ed nghi\\u1ec7p , nh\\u00e0 m\\u00e1y, \\u0111\\u00e1p \\u1ee9ng s\\u1ef1 mong mu\\u1ed1n chung c\\u1ee7a c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc.<br \\/> <br \\/> Xu\\u1ea5t ph\\u00e1t t\\u1eeb nh\\u1eadn th\\u1ee9c tr\\u00ean, v\\u00ec s\\u1ef1 nghi\\u1ec7p ph\\u00e1t tri\\u1ec3n chung c\\u1ee7a ng\\u00e0nh d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7, g\\u00f3p ph\\u1ea7n t\\u00edch c\\u1ef1c v\\u00e0o vi\\u1ec7c b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1 chung x\\u00e3 h\\u1ed9i, ngu\\u1ed3n \\u0111\\u1ed9ng l\\u1ef1c ch\\u00ednh th\\u00fac \\u0111\\u1ea9y cho s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a n\\u1ec1n kinh t\\u1ebf \\u0111\\u1ea5t n\\u01b0\\u1edbc n\\u00f3i chung v\\u00e0 c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf n\\u00f3i ri\\u00eang .<strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <\\/strong>\\u00a0\\u0111u\\u1ee3c th\\u00e0nh l\\u1eadp, bi\\u1ec3u t\\u01b0\\u1ee3ng cho \\u0111\\u1ea5t n\\u01b0\\u1edbc VI\\u1ec6T NAM c\\u00f3 truy\\u1ec1n th\\u1ed1ng l\\u1ecbch s\\u1eed con r\\u1ed3ng ch\\u00e1u ti\\u00ean, \\u0111ang tr\\u00ean \\u0111\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u0103ng hoa, kh\\u00e1t v\\u1ecdng th\\u1eadt s\\u1ef1 tr\\u1edf th\\u00e0nh con r\\u1ed3ng kinh t\\u1ebf trong khu v\\u1ef1c, v\\u1edbi k\\u1ef3 v\\u1ecdng \\u0111em \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch h\\u00e0ng m\\u1ed9t d\\u1ecbch v\\u1ee5 ch\\u1ea5t l\\u01b0\\u1ee3ng cao ho\\u00e0n h\\u1ea3o.<\\/p>\\r\\n<p>Th\\u01b0a Qu\\u00fd kh\\u00e1ch !<\\/p>\\r\\n<p><strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u00e0 ho\\u1ea1t \\u0111\\u1ed9ng tr\\u00ean ph\\u1ea1m vi to\\u00e0n l\\u00e3nh th\\u1ed5 Vi\\u1ec7t Nam , \\u0111\\u01b0\\u1ee3c Ph\\u00f2ng QLHC v\\u1ec1 TTXH C\\u00f4ng An TP. HCM c\\u1ea5p gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u1ee7 \\u0111i\\u1ec1u ki\\u1ec7n v\\u1ec1 an ninh tr\\u1eadt t\\u1ef1 d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p , gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u0103ng k\\u00fd kinh doanh do Ph\\u00f2ng \\u0110KKD \\u2013 S\\u1edf K\\u1ebf ho\\u1ea1ch \\u0111\\u1ea7u t\\u01b0 TP.HCM c\\u1ea5p .<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0\\u00a0\\u00a0\\u00a0V\\u1edbi \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 l\\u00e3nh \\u0111\\u1ea1o t\\u00e0i n\\u0103ng tr\\u00ed tu\\u1ec7 c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p, k\\u1ebft h\\u1ee3p c\\u00f9ng \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean tr\\u1ebb n\\u0103ng \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c hu\\u1ea5n luy\\u1ec7n v\\u1ec1 ch\\u00ednh tr\\u1ecb, ph\\u00e1p lu\\u1eadt, nghi\\u1ec7p v\\u1ee5, PCCC, v\\u00f5 thu\\u1eadt, v\\u00e0 m\\u1ed9t s\\u1ed1 chuy\\u00ean m\\u00f4n c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn ngh\\u1ec1 nghi\\u1ec7p, ch\\u1eafc ch\\u1eafn s\\u1ebd mang \\u0111\\u1ebfn cho Qu\\u00fd kh\\u00e1ch c\\u1ea3m gi\\u00e1c h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m \\u0111\\u1ed1i v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng d\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i cung c\\u1ea5p.<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u0110\\u1ed1i v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng ch\\u00fang t\\u00f4i lu\\u00f4n \\u00f4m \\u1ea5p ho\\u00e0i b\\u00e3o s\\u1ebd th\\u1ef1c hi\\u1ec7n , t\\u01b0 v\\u1ea5n , c\\u0169ng nh\\u01b0 h\\u1ed7 tr\\u1ee3 c\\u00e1c bi\\u1ec7n ph\\u00e1p nghi\\u1ec7p v\\u1ee5 an ninh t\\u1ed1i \\u01b0u nh\\u1eb1m b\\u1ea3o v\\u1ec7 an to\\u00e0n v\\u1ec1 t\\u00e0i s\\u1ea3n v\\u00e0 con ng\\u01b0\\u1eddi cho Qu\\u00fd kh\\u00e1ch h\\u00e0ng. Ch\\u1eafc ch\\u1eafn Qu\\u00fd kh\\u00e1ch s\\u1ebd h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c m\\u00e0 ch\\u00fang t\\u00f4i \\u0111\\u00e3 v\\u00e0 s\\u1ebd ph\\u1ee5c v\\u1ee5 cho Qu\\u00fd kh\\u00e1ch, v\\u00ec \\u0111\\u1ed3ng h\\u00e0nh v\\u1edbi ch\\u00fang t\\u00f4i c\\u00f3 m\\u1ed9t \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean \\u0111\\u1ea7y nhi\\u1ec7t huy\\u1ebft \\u2013 trung th\\u1ef1c \\u2013 ki\\u00ean quy\\u1ebft \\u2013 kh\\u00f4n kh\\u00e9o \\u2013 d\\u0169ng c\\u1ea3m , lu\\u00f4n trong t\\u01b0 th\\u1ebf s\\u1eb5n s\\u00e0ng gi\\u1ea3i quy\\u1ebft m\\u1ecdi t\\u00ecnh hu\\u1ed1ng tr\\u00ean tinh th\\u1ea7n tr\\u00e1ch nhi\\u1ec7m cao nh\\u1ea5t, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u th\\u1ef1c hi\\u1ec7n ph\\u01b0\\u01a1ng ch\\u00e2m \\u201c <strong>V\\u00cc B\\u00ccNH Y\\u00caN CU\\u1ed8C S\\u1ed0NG<\\/strong> \\u201d <br \\/> <br \\/> D\\u1ecbch v\\u1ee5 an ninh c\\u1ee7a <strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111a d\\u1ea1ng h\\u00f3a v\\u00e0 linh ho\\u1ea1t, \\u0111\\u1ed3ng th\\u1eddi d\\u1ef1a tr\\u00ean c\\u01a1 s\\u1edf s\\u1eb5n c\\u00f3 m\\u1ed1i quan h\\u1ec7 ngo\\u1ea1i giao t\\u1ed1t v\\u1edbi Ch\\u00ednh quy\\u1ec1n \\u0111\\u1ecba ph\\u01b0\\u01a1ng c\\u00e1c c\\u1ea5p, \\u0111\\u1ec3 c\\u00f3 c\\u01a1 ch\\u1ebf ph\\u1ed1i h\\u1ee3p k\\u1ecbp th\\u1eddi, ch\\u1eb7t ch\\u1ebd v\\u1edbi c\\u00e1c \\u0111\\u01a1n v\\u1ecb, l\\u1ef1c l\\u01b0\\u1ee3ng ch\\u1ee9c n\\u0103ng chuy\\u00ean m\\u00f4n, s\\u1eb5n s\\u00e0ng \\u0111\\u00e1p \\u1ee9ng k\\u1ecbp th\\u1eddi m\\u1ecdi nhu c\\u1ea7u th\\u1ef1c t\\u1ebf c\\u1ee7a kh\\u00e1ch h\\u00e0ng, v\\u1edbi m\\u1ee9c gi\\u00e1 d\\u1ecbch v\\u1ee5 ph\\u00f9 h\\u1ee3p, h\\u1ee3p l\\u00fd ( \\u0111\\u01b0\\u1ee3c bao tr\\u1ecdn g\\u00f3i g\\u1ed3m : \\u0110\\u1ed3ng ph\\u1ee5c, Trang thi\\u1ebft b\\u1ecb b\\u1ea3o v\\u1ec7, c\\u00e1c kho\\u1ea3n ph\\u00fac l\\u1ee3i x\\u00e3 h\\u1ed9i, b\\u1ea3o hi\\u1ec3m v.v\\u2026..)<br \\/> <br \\/> Ch\\u00fang t\\u00f4i cam k\\u1ebft v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng l\\u00e0 s\\u1ebd lu\\u00f4n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u01a1 b\\u1ea3n v\\u00e0 ng\\u00e0y c\\u00e0ng \\u0111\\u01b0\\u1ee3c c\\u1ea3i thi\\u1ec7n v\\u1ec1 v\\u1eadt ch\\u1ea5t v\\u00e0 tinh th\\u1ea7n cho \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean c\\u1ee7a C\\u00f4ng ty ch\\u00fang t\\u00f4i, \\u0111\\u1ec3 h\\u1ecd lu\\u00f4n l\\u00e0 nh\\u1eefng th\\u00e0nh vi\\u00ean trung th\\u00e0nh, c\\u00f3 tr\\u00e1ch nhi\\u1ec7m cao, g\\u1eafn b\\u00f3 l\\u00e2u d\\u00e0i v\\u1edbi C\\u00f4ng ty v\\u00e0 ch\\u00ednh h\\u1ecd c\\u0169ng s\\u1ebd l\\u00e0 nh\\u1eefng h\\u1ea1t nh\\u00e2n t\\u00edch c\\u1ef1c trong phong tr\\u00e0o gi\\u1eef g\\u00ecn, b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1, an to\\u00e0n x\\u00e3 h\\u1ed9i. \\u0110\\u00f3 l\\u00e0 nh\\u1eefng l\\u00fd do v\\u00ec sao ch\\u00fang t\\u00f4i tin t\\u01b0\\u1edfng s\\u1ebd mang \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch m\\u1ed9t d\\u1ecbch v\\u1ee5 an ninh c\\u00f3 ch\\u1ea5t l\\u01b0\\u1ee3ng cao nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a Qu\\u00fd kh\\u00e1ch.<\\/p>\\r\\n<p align=\\"center\\"><strong><span style=\\"text-decoration: underline;\\">N\\u1ebeU QU\\u00dd KH\\u00c1CH C\\u1ea6N C\\u00d3 M\\u1ed8T GI\\u1ea2I PH\\u00c1P AN NINH TIN C\\u1eacY \\u2013 UY T\\u00cdN<\\/span><\\/strong><br \\/> <strong>Xin vui l\\u00f2ng li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i !!!\\u00a0 ( Qua c\\u00e1c th\\u00f4ng tin sau )<\\/strong><\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - T\\u00ean C\\u00f4ng ty \\u00a0: C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <br \\/> - \\u0110\\u1ecba ch\\u1ec9 \\u00a0: 137B, \\u0110\\u01b0\\u1eddng Nguy\\u1ec5n Ch\\u00ed Thanh , P. 09 ,\\u00a0 Q. 05 , TP.HCM , VN<br \\/> - \\u0110i\\u1ec7n tho\\u1ea1i : 086 2646719 \\u2013 0650 3777518 <br \\/> - Fax \\u00a0: 0862646719 \\u2013 0650 3777519<br \\/> - Website \\u00a0: <a href=\\"http:\\/\\/thangvietsecurity.com\\/\\">http:\\/\\/thangvietsecurity.com<\\/a> <br \\/> - Mr. TR\\u1ea6N HUY PHONG\\u00a0 \\u00a0-\\u00a0 \\u0110TD\\u0110 :\\u00a0 0938.304.333<br \\/> - Mr. Ng\\u00f4 C\\u01a1 \\u2013\\u0110TD\\u0110: 0906.097.864<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <strong><img src=\\"index_clip_image001.gif\\" alt=\\"H\\u00c2N H\\u1ea0NH \\u0110\\u01af\\u1ee2C PH\\u1ee4C V\\u1ee4 QU\\u00dd KH\\u00c1CH !\\" width=\\"639\\" height=\\"40\\" border=\\"0\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-25 09:45:13","created_by":"880","created_by_alias":"","modified":"2014-06-25 10:05:17","modified_by":"880","checked_out":"880","checked_out_time":"2014-06-25 10:03:19","publish_up":"2014-06-25 09:45:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 1, 1, '', '2014-06-25 22:37:24', 880, 10972, 'bc66cc6cf70663793795fdd7a4f45f315a6e6983', '{"id":1,"asset_id":"57","title":"Trang Ch\\u1ee7","alias":"trang-ch","introtext":"<p>\\u00a0<br \\/> <strong>TH\\u01af NG\\u1ece<\\/strong><\\/p>\\r\\n<p align=\\"center\\"><strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong><br \\/> <strong>\\u201c TRUNG TH\\u00c0NH \\u2013 K\\u1ef6 LU\\u1eacT \\u2013 TR\\u00c1CH NHI\\u1ec6M \\u201d<\\/strong><\\/p>\\r\\n<p><strong><span style=\\"text-decoration: underline;\\">K\\u00ednh G\\u1eedi<\\/span><\\/strong> : Qu\\u00fd kh\\u00e1ch h\\u00e0ng<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 H\\u1ed9i nh\\u1eadp xu th\\u1ebf ph\\u00e1t tri\\u1ec3n th\\u1eddi \\u0111\\u1ea1i b\\u1eb1ng con \\u0111\\u01b0\\u1eddng \\u201c C\\u00d4NG NGHI\\u1ec6P H\\u00d3A \\u2013 HI\\u1ec6N \\u0110\\u1ea0I H\\u00d3A\\u201d l\\u00e0 ch\\u1ee7 tr\\u01b0\\u01a1ng \\u0111\\u00fang \\u0111\\u1eafn c\\u1ee7a nh\\u00e0 n\\u01b0\\u1edbc C\\u1ed9ng H\\u00f2a X\\u00e3 H\\u1ed9i Ch\\u1ee7 Ngh\\u0129a Vi\\u1ec7t Nam trong th\\u1eddi k\\u1ef3 \\u0111\\u1ed5i m\\u1edbi hi\\u1ec7n nay, nh\\u1ea5t l\\u00e0 sau khi Vi\\u1ec7t Nam ch\\u00ednh th\\u1ee9c gia nh\\u1eadp t\\u1ed5 ch\\u1ee9c th\\u01b0\\u01a1ng m\\u1ea1i th\\u1ebf gi\\u1edbi (WTO), nhu c\\u1ea7u d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 c\\u0169ng tr\\u1edf n\\u00ean h\\u1ebft s\\u1ee9c c\\u1ea7n thi\\u1ebft, \\u0111\\u00f2i h\\u1ecfi ph\\u1ea3i \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng ph\\u00e1t tri\\u1ec3n ngang t\\u1ea7m v\\u1edbi quy m\\u00f4 ng\\u00e0y c\\u00e0ng l\\u1edbn m\\u1ea1nh, v\\u1edbi t\\u00ednh chuy\\u00ean nghi\\u1ec7p ng\\u00e0y c\\u00e0ng cao, nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch th\\u1ef1c hi\\u1ec7n t\\u1ed1t c\\u00f4ng t\\u00e1c b\\u1ea3o v\\u1ec7 an to\\u00e0n cho c\\u00e1c \\u0111\\u01a1n v\\u1ecb, c\\u01a1 quan, doanh nghi\\u1ec7p, x\\u00ed nghi\\u1ec7p , nh\\u00e0 m\\u00e1y, \\u0111\\u00e1p \\u1ee9ng s\\u1ef1 mong mu\\u1ed1n chung c\\u1ee7a c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc.<br \\/> <br \\/> Xu\\u1ea5t ph\\u00e1t t\\u1eeb nh\\u1eadn th\\u1ee9c tr\\u00ean, v\\u00ec s\\u1ef1 nghi\\u1ec7p ph\\u00e1t tri\\u1ec3n chung c\\u1ee7a ng\\u00e0nh d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7, g\\u00f3p ph\\u1ea7n t\\u00edch c\\u1ef1c v\\u00e0o vi\\u1ec7c b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1 chung x\\u00e3 h\\u1ed9i, ngu\\u1ed3n \\u0111\\u1ed9ng l\\u1ef1c ch\\u00ednh th\\u00fac \\u0111\\u1ea9y cho s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a n\\u1ec1n kinh t\\u1ebf \\u0111\\u1ea5t n\\u01b0\\u1edbc n\\u00f3i chung v\\u00e0 c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf n\\u00f3i ri\\u00eang .<strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <\\/strong>\\u00a0\\u0111u\\u1ee3c th\\u00e0nh l\\u1eadp, bi\\u1ec3u t\\u01b0\\u1ee3ng cho \\u0111\\u1ea5t n\\u01b0\\u1edbc VI\\u1ec6T NAM c\\u00f3 truy\\u1ec1n th\\u1ed1ng l\\u1ecbch s\\u1eed con r\\u1ed3ng ch\\u00e1u ti\\u00ean, \\u0111ang tr\\u00ean \\u0111\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u0103ng hoa, kh\\u00e1t v\\u1ecdng th\\u1eadt s\\u1ef1 tr\\u1edf th\\u00e0nh con r\\u1ed3ng kinh t\\u1ebf trong khu v\\u1ef1c, v\\u1edbi k\\u1ef3 v\\u1ecdng \\u0111em \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch h\\u00e0ng m\\u1ed9t d\\u1ecbch v\\u1ee5 ch\\u1ea5t l\\u01b0\\u1ee3ng cao ho\\u00e0n h\\u1ea3o.<\\/p>\\r\\n<p>Th\\u01b0a Qu\\u00fd kh\\u00e1ch !<\\/p>\\r\\n<p><strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u00e0 ho\\u1ea1t \\u0111\\u1ed9ng tr\\u00ean ph\\u1ea1m vi to\\u00e0n l\\u00e3nh th\\u1ed5 Vi\\u1ec7t Nam , \\u0111\\u01b0\\u1ee3c Ph\\u00f2ng QLHC v\\u1ec1 TTXH C\\u00f4ng An TP. HCM c\\u1ea5p gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u1ee7 \\u0111i\\u1ec1u ki\\u1ec7n v\\u1ec1 an ninh tr\\u1eadt t\\u1ef1 d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p , gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u0103ng k\\u00fd kinh doanh do Ph\\u00f2ng \\u0110KKD \\u2013 S\\u1edf K\\u1ebf ho\\u1ea1ch \\u0111\\u1ea7u t\\u01b0 TP.HCM c\\u1ea5p .<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0\\u00a0\\u00a0\\u00a0V\\u1edbi \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 l\\u00e3nh \\u0111\\u1ea1o t\\u00e0i n\\u0103ng tr\\u00ed tu\\u1ec7 c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p, k\\u1ebft h\\u1ee3p c\\u00f9ng \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean tr\\u1ebb n\\u0103ng \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c hu\\u1ea5n luy\\u1ec7n v\\u1ec1 ch\\u00ednh tr\\u1ecb, ph\\u00e1p lu\\u1eadt, nghi\\u1ec7p v\\u1ee5, PCCC, v\\u00f5 thu\\u1eadt, v\\u00e0 m\\u1ed9t s\\u1ed1 chuy\\u00ean m\\u00f4n c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn ngh\\u1ec1 nghi\\u1ec7p, ch\\u1eafc ch\\u1eafn s\\u1ebd mang \\u0111\\u1ebfn cho Qu\\u00fd kh\\u00e1ch c\\u1ea3m gi\\u00e1c h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m \\u0111\\u1ed1i v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng d\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i cung c\\u1ea5p.<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u0110\\u1ed1i v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng ch\\u00fang t\\u00f4i lu\\u00f4n \\u00f4m \\u1ea5p ho\\u00e0i b\\u00e3o s\\u1ebd th\\u1ef1c hi\\u1ec7n , t\\u01b0 v\\u1ea5n , c\\u0169ng nh\\u01b0 h\\u1ed7 tr\\u1ee3 c\\u00e1c bi\\u1ec7n ph\\u00e1p nghi\\u1ec7p v\\u1ee5 an ninh t\\u1ed1i \\u01b0u nh\\u1eb1m b\\u1ea3o v\\u1ec7 an to\\u00e0n v\\u1ec1 t\\u00e0i s\\u1ea3n v\\u00e0 con ng\\u01b0\\u1eddi cho Qu\\u00fd kh\\u00e1ch h\\u00e0ng. Ch\\u1eafc ch\\u1eafn Qu\\u00fd kh\\u00e1ch s\\u1ebd h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c m\\u00e0 ch\\u00fang t\\u00f4i \\u0111\\u00e3 v\\u00e0 s\\u1ebd ph\\u1ee5c v\\u1ee5 cho Qu\\u00fd kh\\u00e1ch, v\\u00ec \\u0111\\u1ed3ng h\\u00e0nh v\\u1edbi ch\\u00fang t\\u00f4i c\\u00f3 m\\u1ed9t \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean \\u0111\\u1ea7y nhi\\u1ec7t huy\\u1ebft \\u2013 trung th\\u1ef1c \\u2013 ki\\u00ean quy\\u1ebft \\u2013 kh\\u00f4n kh\\u00e9o \\u2013 d\\u0169ng c\\u1ea3m , lu\\u00f4n trong t\\u01b0 th\\u1ebf s\\u1eb5n s\\u00e0ng gi\\u1ea3i quy\\u1ebft m\\u1ecdi t\\u00ecnh hu\\u1ed1ng tr\\u00ean tinh th\\u1ea7n tr\\u00e1ch nhi\\u1ec7m cao nh\\u1ea5t, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u th\\u1ef1c hi\\u1ec7n ph\\u01b0\\u01a1ng ch\\u00e2m \\u201c <strong>V\\u00cc B\\u00ccNH Y\\u00caN CU\\u1ed8C S\\u1ed0NG<\\/strong> \\u201d <br \\/> <br \\/> D\\u1ecbch v\\u1ee5 an ninh c\\u1ee7a <strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111a d\\u1ea1ng h\\u00f3a v\\u00e0 linh ho\\u1ea1t, \\u0111\\u1ed3ng th\\u1eddi d\\u1ef1a tr\\u00ean c\\u01a1 s\\u1edf s\\u1eb5n c\\u00f3 m\\u1ed1i quan h\\u1ec7 ngo\\u1ea1i giao t\\u1ed1t v\\u1edbi Ch\\u00ednh quy\\u1ec1n \\u0111\\u1ecba ph\\u01b0\\u01a1ng c\\u00e1c c\\u1ea5p, \\u0111\\u1ec3 c\\u00f3 c\\u01a1 ch\\u1ebf ph\\u1ed1i h\\u1ee3p k\\u1ecbp th\\u1eddi, ch\\u1eb7t ch\\u1ebd v\\u1edbi c\\u00e1c \\u0111\\u01a1n v\\u1ecb, l\\u1ef1c l\\u01b0\\u1ee3ng ch\\u1ee9c n\\u0103ng chuy\\u00ean m\\u00f4n, s\\u1eb5n s\\u00e0ng \\u0111\\u00e1p \\u1ee9ng k\\u1ecbp th\\u1eddi m\\u1ecdi nhu c\\u1ea7u th\\u1ef1c t\\u1ebf c\\u1ee7a kh\\u00e1ch h\\u00e0ng, v\\u1edbi m\\u1ee9c gi\\u00e1 d\\u1ecbch v\\u1ee5 ph\\u00f9 h\\u1ee3p, h\\u1ee3p l\\u00fd ( \\u0111\\u01b0\\u1ee3c bao tr\\u1ecdn g\\u00f3i g\\u1ed3m : \\u0110\\u1ed3ng ph\\u1ee5c, Trang thi\\u1ebft b\\u1ecb b\\u1ea3o v\\u1ec7, c\\u00e1c kho\\u1ea3n ph\\u00fac l\\u1ee3i x\\u00e3 h\\u1ed9i, b\\u1ea3o hi\\u1ec3m v.v\\u2026..)<br \\/> <br \\/> Ch\\u00fang t\\u00f4i cam k\\u1ebft v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng l\\u00e0 s\\u1ebd lu\\u00f4n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u01a1 b\\u1ea3n v\\u00e0 ng\\u00e0y c\\u00e0ng \\u0111\\u01b0\\u1ee3c c\\u1ea3i thi\\u1ec7n v\\u1ec1 v\\u1eadt ch\\u1ea5t v\\u00e0 tinh th\\u1ea7n cho \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean c\\u1ee7a C\\u00f4ng ty ch\\u00fang t\\u00f4i, \\u0111\\u1ec3 h\\u1ecd lu\\u00f4n l\\u00e0 nh\\u1eefng th\\u00e0nh vi\\u00ean trung th\\u00e0nh, c\\u00f3 tr\\u00e1ch nhi\\u1ec7m cao, g\\u1eafn b\\u00f3 l\\u00e2u d\\u00e0i v\\u1edbi C\\u00f4ng ty v\\u00e0 ch\\u00ednh h\\u1ecd c\\u0169ng s\\u1ebd l\\u00e0 nh\\u1eefng h\\u1ea1t nh\\u00e2n t\\u00edch c\\u1ef1c trong phong tr\\u00e0o gi\\u1eef g\\u00ecn, b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1, an to\\u00e0n x\\u00e3 h\\u1ed9i. \\u0110\\u00f3 l\\u00e0 nh\\u1eefng l\\u00fd do v\\u00ec sao ch\\u00fang t\\u00f4i tin t\\u01b0\\u1edfng s\\u1ebd mang \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch m\\u1ed9t d\\u1ecbch v\\u1ee5 an ninh c\\u00f3 ch\\u1ea5t l\\u01b0\\u1ee3ng cao nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a Qu\\u00fd kh\\u00e1ch.<\\/p>\\r\\n<p align=\\"center\\"><strong><span style=\\"text-decoration: underline;\\">N\\u1ebeU QU\\u00dd KH\\u00c1CH C\\u1ea6N C\\u00d3 M\\u1ed8T GI\\u1ea2I PH\\u00c1P AN NINH TIN C\\u1eacY \\u2013 UY T\\u00cdN<\\/span><\\/strong><br \\/> <strong>Xin vui l\\u00f2ng li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i !!!\\u00a0 ( Qua c\\u00e1c th\\u00f4ng tin sau )<\\/strong><\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - T\\u00ean C\\u00f4ng ty \\u00a0: C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <br \\/> - \\u0110\\u1ecba ch\\u1ec9 \\u00a0: 137B, \\u0110\\u01b0\\u1eddng Nguy\\u1ec5n Ch\\u00ed Thanh , P. 09 ,\\u00a0 Q. 05 , TP.HCM , VN<br \\/> - \\u0110i\\u1ec7n tho\\u1ea1i : 086 2646719 \\u2013 0650 3777518 <br \\/> - Fax \\u00a0: 0862646719 \\u2013 0650 3777519<\\/p>\\r\\n<p>Hotline:<br \\/> - Mr. TR\\u1ea6N HUY PHONG\\u00a0 \\u00a0-\\u00a0 \\u0110TD\\u0110 :\\u00a0 0938.304.333<br \\/> - Mr. Ng\\u00f4 C\\u01a1 \\u2013\\u0110TD\\u0110: 0906.097.864<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <strong><img src=\\"index_clip_image001.gif\\" alt=\\"H\\u00c2N H\\u1ea0NH \\u0110\\u01af\\u1ee2C PH\\u1ee4C V\\u1ee4 QU\\u00dd KH\\u00c1CH !\\" width=\\"639\\" height=\\"40\\" border=\\"0\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-25 09:45:13","created_by":"880","created_by_alias":"","modified":"2014-06-25 22:37:24","modified_by":"880","checked_out":"880","checked_out_time":"2014-06-25 22:36:28","publish_up":"2014-06-25 09:45:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"85","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `d9jhp_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(5, 1, 1, '', '2014-06-25 22:50:25', 880, 10990, '744f0e76219bd2eeb89045c1cbad1e5393f20570', '{"id":1,"asset_id":"57","title":"Trang Ch\\u1ee7","alias":"trang-ch","introtext":"<p>\\u00a0<br \\/> <strong>TH\\u01af NG\\u1ece<\\/strong><\\/p>\\r\\n<p align=\\"center\\"><strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong><br \\/> <strong>\\u201c TRUNG TH\\u00c0NH \\u2013 K\\u1ef6 LU\\u1eacT \\u2013 TR\\u00c1CH NHI\\u1ec6M \\u201d<\\/strong><\\/p>\\r\\n<p><strong><span style=\\"text-decoration: underline;\\">K\\u00ednh G\\u1eedi<\\/span><\\/strong> : Qu\\u00fd kh\\u00e1ch h\\u00e0ng<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 H\\u1ed9i nh\\u1eadp xu th\\u1ebf ph\\u00e1t tri\\u1ec3n th\\u1eddi \\u0111\\u1ea1i b\\u1eb1ng con \\u0111\\u01b0\\u1eddng \\u201c C\\u00d4NG NGHI\\u1ec6P H\\u00d3A \\u2013 HI\\u1ec6N \\u0110\\u1ea0I H\\u00d3A\\u201d l\\u00e0 ch\\u1ee7 tr\\u01b0\\u01a1ng \\u0111\\u00fang \\u0111\\u1eafn c\\u1ee7a nh\\u00e0 n\\u01b0\\u1edbc C\\u1ed9ng H\\u00f2a X\\u00e3 H\\u1ed9i Ch\\u1ee7 Ngh\\u0129a Vi\\u1ec7t Nam trong th\\u1eddi k\\u1ef3 \\u0111\\u1ed5i m\\u1edbi hi\\u1ec7n nay, nh\\u1ea5t l\\u00e0 sau khi Vi\\u1ec7t Nam ch\\u00ednh th\\u1ee9c gia nh\\u1eadp t\\u1ed5 ch\\u1ee9c th\\u01b0\\u01a1ng m\\u1ea1i th\\u1ebf gi\\u1edbi (WTO), nhu c\\u1ea7u d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 c\\u0169ng tr\\u1edf n\\u00ean h\\u1ebft s\\u1ee9c c\\u1ea7n thi\\u1ebft, \\u0111\\u00f2i h\\u1ecfi ph\\u1ea3i \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng ph\\u00e1t tri\\u1ec3n ngang t\\u1ea7m v\\u1edbi quy m\\u00f4 ng\\u00e0y c\\u00e0ng l\\u1edbn m\\u1ea1nh, v\\u1edbi t\\u00ednh chuy\\u00ean nghi\\u1ec7p ng\\u00e0y c\\u00e0ng cao, nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch th\\u1ef1c hi\\u1ec7n t\\u1ed1t c\\u00f4ng t\\u00e1c b\\u1ea3o v\\u1ec7 an to\\u00e0n cho c\\u00e1c \\u0111\\u01a1n v\\u1ecb, c\\u01a1 quan, doanh nghi\\u1ec7p, x\\u00ed nghi\\u1ec7p , nh\\u00e0 m\\u00e1y, \\u0111\\u00e1p \\u1ee9ng s\\u1ef1 mong mu\\u1ed1n chung c\\u1ee7a c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc.<br \\/> <br \\/> Xu\\u1ea5t ph\\u00e1t t\\u1eeb nh\\u1eadn th\\u1ee9c tr\\u00ean, v\\u00ec s\\u1ef1 nghi\\u1ec7p ph\\u00e1t tri\\u1ec3n chung c\\u1ee7a ng\\u00e0nh d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7, g\\u00f3p ph\\u1ea7n t\\u00edch c\\u1ef1c v\\u00e0o vi\\u1ec7c b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1 chung x\\u00e3 h\\u1ed9i, ngu\\u1ed3n \\u0111\\u1ed9ng l\\u1ef1c ch\\u00ednh th\\u00fac \\u0111\\u1ea9y cho s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a n\\u1ec1n kinh t\\u1ebf \\u0111\\u1ea5t n\\u01b0\\u1edbc n\\u00f3i chung v\\u00e0 c\\u00e1c th\\u00e0nh ph\\u1ea7n kinh t\\u1ebf n\\u00f3i ri\\u00eang .<strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <\\/strong>\\u00a0\\u0111u\\u1ee3c th\\u00e0nh l\\u1eadp, bi\\u1ec3u t\\u01b0\\u1ee3ng cho \\u0111\\u1ea5t n\\u01b0\\u1edbc VI\\u1ec6T NAM c\\u00f3 truy\\u1ec1n th\\u1ed1ng l\\u1ecbch s\\u1eed con r\\u1ed3ng ch\\u00e1u ti\\u00ean, \\u0111ang tr\\u00ean \\u0111\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u0103ng hoa, kh\\u00e1t v\\u1ecdng th\\u1eadt s\\u1ef1 tr\\u1edf th\\u00e0nh con r\\u1ed3ng kinh t\\u1ebf trong khu v\\u1ef1c, v\\u1edbi k\\u1ef3 v\\u1ecdng \\u0111em \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch h\\u00e0ng m\\u1ed9t d\\u1ecbch v\\u1ee5 ch\\u1ea5t l\\u01b0\\u1ee3ng cao ho\\u00e0n h\\u1ea3o.<\\/p>\\r\\n<p>Th\\u01b0a Qu\\u00fd kh\\u00e1ch !<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u00e0 ho\\u1ea1t \\u0111\\u1ed9ng tr\\u00ean ph\\u1ea1m vi to\\u00e0n l\\u00e3nh th\\u1ed5 Vi\\u1ec7t Nam , \\u0111\\u01b0\\u1ee3c Ph\\u00f2ng QLHC v\\u1ec1 TTXH C\\u00f4ng An TP. HCM c\\u1ea5p gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u1ee7 \\u0111i\\u1ec1u ki\\u1ec7n v\\u1ec1 an ninh tr\\u1eadt t\\u1ef1 d\\u1ecbch v\\u1ee5 b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p , gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u0103ng k\\u00fd kinh doanh do Ph\\u00f2ng \\u0110KKD \\u2013 S\\u1edf K\\u1ebf ho\\u1ea1ch \\u0111\\u1ea7u t\\u01b0 TP.HCM c\\u1ea5p .<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0\\u00a0\\u00a0\\u00a0V\\u1edbi \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 l\\u00e3nh \\u0111\\u1ea1o t\\u00e0i n\\u0103ng tr\\u00ed tu\\u1ec7 c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c b\\u1ea3o v\\u1ec7 chuy\\u00ean nghi\\u1ec7p, k\\u1ebft h\\u1ee3p c\\u00f9ng \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean tr\\u1ebb n\\u0103ng \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c hu\\u1ea5n luy\\u1ec7n v\\u1ec1 ch\\u00ednh tr\\u1ecb, ph\\u00e1p lu\\u1eadt, nghi\\u1ec7p v\\u1ee5, PCCC, v\\u00f5 thu\\u1eadt, v\\u00e0 m\\u1ed9t s\\u1ed1 chuy\\u00ean m\\u00f4n c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn ngh\\u1ec1 nghi\\u1ec7p, ch\\u1eafc ch\\u1eafn s\\u1ebd mang \\u0111\\u1ebfn cho Qu\\u00fd kh\\u00e1ch c\\u1ea3m gi\\u00e1c h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m \\u0111\\u1ed1i v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng d\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i cung c\\u1ea5p.<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 \\u0110\\u1ed1i v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng ch\\u00fang t\\u00f4i lu\\u00f4n \\u00f4m \\u1ea5p ho\\u00e0i b\\u00e3o s\\u1ebd th\\u1ef1c hi\\u1ec7n , t\\u01b0 v\\u1ea5n , c\\u0169ng nh\\u01b0 h\\u1ed7 tr\\u1ee3 c\\u00e1c bi\\u1ec7n ph\\u00e1p nghi\\u1ec7p v\\u1ee5 an ninh t\\u1ed1i \\u01b0u nh\\u1eb1m b\\u1ea3o v\\u1ec7 an to\\u00e0n v\\u1ec1 t\\u00e0i s\\u1ea3n v\\u00e0 con ng\\u01b0\\u1eddi cho Qu\\u00fd kh\\u00e1ch h\\u00e0ng. Ch\\u1eafc ch\\u1eafn Qu\\u00fd kh\\u00e1ch s\\u1ebd h\\u00e0i l\\u00f2ng v\\u00e0 y\\u00ean t\\u00e2m v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c m\\u00e0 ch\\u00fang t\\u00f4i \\u0111\\u00e3 v\\u00e0 s\\u1ebd ph\\u1ee5c v\\u1ee5 cho Qu\\u00fd kh\\u00e1ch, v\\u00ec \\u0111\\u1ed3ng h\\u00e0nh v\\u1edbi ch\\u00fang t\\u00f4i c\\u00f3 m\\u1ed9t \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean \\u0111\\u1ea7y nhi\\u1ec7t huy\\u1ebft \\u2013 trung th\\u1ef1c \\u2013 ki\\u00ean quy\\u1ebft \\u2013 kh\\u00f4n kh\\u00e9o \\u2013 d\\u0169ng c\\u1ea3m , lu\\u00f4n trong t\\u01b0 th\\u1ebf s\\u1eb5n s\\u00e0ng gi\\u1ea3i quy\\u1ebft m\\u1ecdi t\\u00ecnh hu\\u1ed1ng tr\\u00ean tinh th\\u1ea7n tr\\u00e1ch nhi\\u1ec7m cao nh\\u1ea5t, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u th\\u1ef1c hi\\u1ec7n ph\\u01b0\\u01a1ng ch\\u00e2m \\u201c <strong>V\\u00cc B\\u00ccNH Y\\u00caN CU\\u1ed8C S\\u1ed0NG<\\/strong> \\u201d <br \\/> <br \\/> D\\u1ecbch v\\u1ee5 an ninh c\\u1ee7a <strong>C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T<\\/strong> \\u0111a d\\u1ea1ng h\\u00f3a v\\u00e0 linh ho\\u1ea1t, \\u0111\\u1ed3ng th\\u1eddi d\\u1ef1a tr\\u00ean c\\u01a1 s\\u1edf s\\u1eb5n c\\u00f3 m\\u1ed1i quan h\\u1ec7 ngo\\u1ea1i giao t\\u1ed1t v\\u1edbi Ch\\u00ednh quy\\u1ec1n \\u0111\\u1ecba ph\\u01b0\\u01a1ng c\\u00e1c c\\u1ea5p, \\u0111\\u1ec3 c\\u00f3 c\\u01a1 ch\\u1ebf ph\\u1ed1i h\\u1ee3p k\\u1ecbp th\\u1eddi, ch\\u1eb7t ch\\u1ebd v\\u1edbi c\\u00e1c \\u0111\\u01a1n v\\u1ecb, l\\u1ef1c l\\u01b0\\u1ee3ng ch\\u1ee9c n\\u0103ng chuy\\u00ean m\\u00f4n, s\\u1eb5n s\\u00e0ng \\u0111\\u00e1p \\u1ee9ng k\\u1ecbp th\\u1eddi m\\u1ecdi nhu c\\u1ea7u th\\u1ef1c t\\u1ebf c\\u1ee7a kh\\u00e1ch h\\u00e0ng, v\\u1edbi m\\u1ee9c gi\\u00e1 d\\u1ecbch v\\u1ee5 ph\\u00f9 h\\u1ee3p, h\\u1ee3p l\\u00fd ( \\u0111\\u01b0\\u1ee3c bao tr\\u1ecdn g\\u00f3i g\\u1ed3m : \\u0110\\u1ed3ng ph\\u1ee5c, Trang thi\\u1ebft b\\u1ecb b\\u1ea3o v\\u1ec7, c\\u00e1c kho\\u1ea3n ph\\u00fac l\\u1ee3i x\\u00e3 h\\u1ed9i, b\\u1ea3o hi\\u1ec3m v.v\\u2026..)<br \\/> <br \\/> Ch\\u00fang t\\u00f4i cam k\\u1ebft v\\u1edbi Qu\\u00fd kh\\u00e1ch h\\u00e0ng l\\u00e0 s\\u1ebd lu\\u00f4n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u01a1 b\\u1ea3n v\\u00e0 ng\\u00e0y c\\u00e0ng \\u0111\\u01b0\\u1ee3c c\\u1ea3i thi\\u1ec7n v\\u1ec1 v\\u1eadt ch\\u1ea5t v\\u00e0 tinh th\\u1ea7n cho \\u0111\\u1ed9i ng\\u0169 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean c\\u1ee7a C\\u00f4ng ty ch\\u00fang t\\u00f4i, \\u0111\\u1ec3 h\\u1ecd lu\\u00f4n l\\u00e0 nh\\u1eefng th\\u00e0nh vi\\u00ean trung th\\u00e0nh, c\\u00f3 tr\\u00e1ch nhi\\u1ec7m cao, g\\u1eafn b\\u00f3 l\\u00e2u d\\u00e0i v\\u1edbi C\\u00f4ng ty v\\u00e0 ch\\u00ednh h\\u1ecd c\\u0169ng s\\u1ebd l\\u00e0 nh\\u1eefng h\\u1ea1t nh\\u00e2n t\\u00edch c\\u1ef1c trong phong tr\\u00e0o gi\\u1eef g\\u00ecn, b\\u1ea3o v\\u1ec7 an ninh tr\\u1eadt t\\u1ef1, an to\\u00e0n x\\u00e3 h\\u1ed9i. \\u0110\\u00f3 l\\u00e0 nh\\u1eefng l\\u00fd do v\\u00ec sao ch\\u00fang t\\u00f4i tin t\\u01b0\\u1edfng s\\u1ebd mang \\u0111\\u1ebfn Qu\\u00fd kh\\u00e1ch m\\u1ed9t d\\u1ecbch v\\u1ee5 an ninh c\\u00f3 ch\\u1ea5t l\\u01b0\\u1ee3ng cao nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a Qu\\u00fd kh\\u00e1ch.<\\/p>\\r\\n<p align=\\"center\\"><strong><span style=\\"text-decoration: underline;\\">N\\u1ebeU QU\\u00dd KH\\u00c1CH C\\u1ea6N C\\u00d3 M\\u1ed8T GI\\u1ea2I PH\\u00c1P AN NINH TIN C\\u1eacY \\u2013 UY T\\u00cdN<\\/span><\\/strong><br \\/> <strong>Xin vui l\\u00f2ng li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i !!!\\u00a0 ( Qua c\\u00e1c th\\u00f4ng tin sau )<\\/strong><\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - T\\u00ean C\\u00f4ng ty \\u00a0: C\\u00d4NG TY TNHH D\\u1ecaCH V\\u1ee4 B\\u1ea2O V\\u1ec6 TH\\u0102NG VI\\u1ec6T <br \\/> - \\u0110\\u1ecba ch\\u1ec9 \\u00a0: 137B, \\u0110\\u01b0\\u1eddng Nguy\\u1ec5n Ch\\u00ed Thanh , P. 09 ,\\u00a0 Q. 05 , TP.HCM , VN<br \\/> - \\u0110i\\u1ec7n tho\\u1ea1i : 086 2646719 \\u2013 0650 3777518 <br \\/> - Fax \\u00a0: 0862646719 \\u2013 0650 3777519<\\/p>\\r\\n<p>Hotline:<br \\/> - Mr. TR\\u1ea6N HUY PHONG\\u00a0 \\u00a0-\\u00a0 \\u0110TD\\u0110 :\\u00a0 0938.304.333<br \\/> - Mr. Ng\\u00f4 C\\u01a1 \\u2013\\u0110TD\\u0110: 0906.097.864<\\/p>\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <strong><img src=\\"index_clip_image001.gif\\" alt=\\"H\\u00c2N H\\u1ea0NH \\u0110\\u01af\\u1ee2C PH\\u1ee4C V\\u1ee4 QU\\u00dd KH\\u00c1CH !\\" width=\\"639\\" height=\\"40\\" border=\\"0\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-25 09:45:13","created_by":"880","created_by_alias":"","modified":"2014-06-25 22:50:25","modified_by":"880","checked_out":"880","checked_out_time":"2014-06-25 22:37:24","publish_up":"2014-06-25 09:45:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"90","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_updates`
--

CREATE TABLE IF NOT EXISTS `d9jhp_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_update_sites`
--

CREATE TABLE IF NOT EXISTS `d9jhp_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `d9jhp_update_sites`
--

INSERT INTO `d9jhp_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1403701617, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1403701617, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 1403701617, ''),
(4, 'Vinaora Update Server', 'extension', 'http://update.vinaora.com/joomla3x/mod_vt_nivo_slider.xml', 1, 1403701617, '');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `d9jhp_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `d9jhp_update_sites_extensions`
--

INSERT INTO `d9jhp_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10001);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_usergroups`
--

CREATE TABLE IF NOT EXISTS `d9jhp_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `d9jhp_usergroups`
--

INSERT INTO `d9jhp_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_users`
--

CREATE TABLE IF NOT EXISTS `d9jhp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=881 ;

--
-- Dumping data for table `d9jhp_users`
--

INSERT INTO `d9jhp_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(880, 'Super User', 'admin', 'hunguit@yahoo.com', '$2y$10$N4T3siSb0oH3.eiESbGPeuynNF3dv1IElCw6vmI3XPbiUUU.qgIB2', 0, 1, '2014-06-24 15:06:59', '2014-06-25 22:33:42', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_user_keys`
--

CREATE TABLE IF NOT EXISTS `d9jhp_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_user_notes`
--

CREATE TABLE IF NOT EXISTS `d9jhp_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_user_profiles`
--

CREATE TABLE IF NOT EXISTS `d9jhp_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `d9jhp_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d9jhp_user_usergroup_map`
--

INSERT INTO `d9jhp_user_usergroup_map` (`user_id`, `group_id`) VALUES
(880, 8);

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_viewlevels`
--

CREATE TABLE IF NOT EXISTS `d9jhp_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `d9jhp_viewlevels`
--

INSERT INTO `d9jhp_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `d9jhp_weblinks`
--

CREATE TABLE IF NOT EXISTS `d9jhp_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
