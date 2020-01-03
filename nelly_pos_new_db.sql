-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 03, 2020 at 08:11 AM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nelly_pos_new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addquantity`
--

DROP TABLE IF EXISTS `addquantity`;
CREATE TABLE IF NOT EXISTS `addquantity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `add_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Arrack & Whisky', '2018-05-25 14:55:20'),
(2, 'Beer', '2018-05-28 09:10:49'),
(3, 'Pizza', '2018-05-28 17:38:43'),
(4, 'Veg Curry', '2018-06-28 10:58:27'),
(5, 'Veg Salad', '2018-06-28 15:01:41'),
(6, 'Non Vege Curry', '2018-06-28 19:18:18'),
(7, 'Omelet', '2018-09-14 21:14:45'),
(8, 'Plats', '2018-09-14 21:26:47'),
(9, 'Special Rice', '2018-09-14 21:38:40'),
(10, 'Chopsey Rice', '2018-09-14 21:44:47'),
(11, 'Noodles', '2018-09-14 23:59:35'),
(12, 'String Hoppers', '2018-09-15 01:29:09'),
(13, 'Kottu', '2018-09-15 06:04:11'),
(14, 'Indian Naan', '2018-09-15 06:20:02'),
(15, 'Tea Coffee', '2018-09-15 06:36:58'),
(16, 'Drinks', '2018-09-15 06:37:09'),
(17, 'Lassi', '2018-09-15 07:44:35'),
(18, 'Deserts', '2018-09-15 07:44:44'),
(19, 'Snacks', '2018-09-16 08:02:55'),
(20, 'Fruit Juices', '2018-09-16 08:12:53'),
(21, 'Soups', '2018-09-16 08:24:13'),
(22, 'Devils', '2018-09-16 08:49:29'),
(23, 'Fry/Grill', '2018-09-16 08:49:40'),
(24, 'Fried Rice', '2018-09-16 10:49:50'),
(25, 'Briyani', '2018-09-16 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_expences`
--

DROP TABLE IF EXISTS `categorie_expences`;
CREATE TABLE IF NOT EXISTS `categorie_expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `combo_items`
--

DROP TABLE IF EXISTS `combo_items`;
CREATE TABLE IF NOT EXISTS `combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

DROP TABLE IF EXISTS `expences`;
CREATE TABLE IF NOT EXISTS `expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

DROP TABLE IF EXISTS `holds`;
CREATE TABLE IF NOT EXISTS `holds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`id`, `number`, `time`, `register_id`) VALUES
(190, 1, 'TABLE', 36),
(192, 2, 'TABLE', 36),
(193, 3, 'TABLE', 36),
(194, 4, 'TABLE', 36),
(195, 5, 'TABLE', 36),
(196, 6, 'TABLE', 36),
(197, 7, 'TABLE', 36),
(198, 8, 'TABLE', 36),
(199, 9, 'TABLE', 36);

-- --------------------------------------------------------

--
-- Table structure for table `payements`
--

DROP TABLE IF EXISTS `payements`;
CREATE TABLE IF NOT EXISTS `payements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(60) CHARACTER SET latin1 NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posales`
--

DROP TABLE IF EXISTS `posales`;
CREATE TABLE IF NOT EXISTS `posales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET latin1 NOT NULL,
  `name` varchar(25) CHARACTER SET latin1 NOT NULL,
  `category` varchar(20) CHARACTER SET latin1 NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `price` float NOT NULL,
  `photo` varchar(200) CHARACTER SET latin1 NOT NULL,
  `photothumb` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(10) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `modified_at` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `unit` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`) VALUES
(1, 'AW0001', 'V.S.O.A (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2220, '', '', 'color01', '2018-09-13 20:43:03', '2018-09-13 20:43:03', 0, 0, 'Supplier', '750 ml', 0, NULL),
(2, 'AW0002', 'V.S.O.A (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1650, '', '', 'color01', '2018-09-13 20:43:18', '2018-09-13 20:43:18', 0, 90, 'Supplier', '350', 0, NULL),
(3, 'AW0003', 'D.D.A (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2220, '', '', 'color02', '2018-09-13 20:43:55', '2018-09-13 20:43:55', 0, 90, 'Supplier', '750 ml', 0, NULL),
(4, 'AW0004', 'D.D.A (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1260, '', '', 'color02', '2018-09-13 20:44:07', '2018-09-13 20:44:07', 0, 90, 'Supplier', '', 0, NULL),
(5, 'AW0005', 'Extra Special ( 750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 1900, '', '', 'color03', '2018-09-13 20:44:45', '2018-09-13 20:44:45', 0, 90, 'Supplier', '750 ml', 0, NULL),
(6, 'AW0006', 'Extra Special ( 375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1070, '', '', 'color03', '2018-09-13 20:45:05', '2018-09-13 20:45:05', 0, 90, 'Supplier', '375 ml', 0, NULL),
(7, 'AW0007', 'Extra Special ( 185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 610, '', '', 'color03', '2018-09-13 20:45:31', '2018-09-13 20:45:31', 0, 0, 'Supplier', '185 ml', 0, NULL),
(8, 'AW0008', 'White Label (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 1930, '', '', 'color04', '2018-09-13 20:46:17', '2018-09-13 20:46:17', 0, 90, 'Supplier', '750 ml', 0, NULL),
(9, 'AW0009', 'White Label (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1200, '', '', 'color04', '2018-09-13 20:46:59', '2018-09-13 20:46:59', 0, 90, 'Supplier', '375 ml', 0, NULL),
(10, 'AW0010', 'White Label (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 710, '', '', 'color04', '2018-09-13 20:47:16', '2018-09-13 20:47:16', 0, 90, 'Supplier', '185 ml', 0, NULL),
(11, 'AW0011', 'White Diamond(750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2300, '', '', 'color05', '2018-09-13 20:47:57', '2018-09-13 20:47:57', 0, 90, 'Supplier', '750 ml', 0, NULL),
(12, 'AW0012', 'White Diamond(375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1320, '', '', 'color05', '2018-09-13 20:48:13', '2018-09-13 20:48:13', 0, 0, 'Supplier', '375 ml', 0, NULL),
(13, 'AW0013', 'White Diamond(185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 680, '', '', 'color05', '2018-09-13 20:48:25', '2018-09-13 20:48:25', 0, 90, 'Supplier', '185 ml', 0, NULL),
(14, 'AW0014', 'Old Arrack (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2100, '', '', 'color06', '2018-09-13 20:49:01', '2018-09-13 20:49:01', 0, 90, 'Supplier', '750 ml', 0, NULL),
(15, 'AW0015', 'Old Arrack (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1200, '', '', 'color06', '2018-09-13 20:49:23', '2018-09-13 20:49:23', 0, 90, 'Supplier', '375 ml', 0, NULL),
(16, 'AW0016', 'Old Arrack (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 680, '', '', 'color06', '2018-09-13 20:49:36', '2018-09-13 20:49:36', 0, 90, 'Supplier', '185 ml', 0, NULL),
(17, 'AW0017', 'Old Reserce (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2400, '', '', 'color07', '2018-09-13 20:50:32', '2018-09-13 20:50:32', 0, 90, 'Supplier', '750 ml', 0, NULL),
(18, 'AW0018', 'Old Reserce (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1300, '', '', 'color07', '2018-09-13 20:50:45', '2018-09-13 20:50:45', 0, 90, 'Supplier', '375 ml', 0, NULL),
(19, 'AW0019', 'Blue Saphire (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2200, '', '', 'color14', '2018-05-25 19:05:36', '2018-05-25 19:05:36', 0, 90, 'Supplier', '750 ml', 0, NULL),
(20, 'AW0020', 'Blue Saphire (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1150, '', '', 'color14', '2018-05-25 19:08:11', '2018-05-25 19:08:11', 0, 90, 'Supplier', '375 ml', 0, NULL),
(21, 'AW0021', 'Lemon Gin (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2800, '', '', 'color13', '2018-05-25 19:13:00', '2018-05-25 19:13:00', 0, 90, 'Supplier', '750 ml', 0, NULL),
(22, 'AW0022', 'Lemon Gin (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1500, '', '', 'color13', '2018-05-25 19:14:43', '2018-05-25 19:14:43', 0, 90, 'Supplier', '375 ml', 0, NULL),
(23, 'AW0023', 'Lemon Gin (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 800, '', '', 'color13', '2018-05-25 19:16:31', '2018-05-25 19:16:31', 0, 90, 'Supplier', '185 ml', 0, NULL),
(24, 'AW0024', 'Red Rum (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2750, '', '', 'color15', '2018-05-25 19:22:12', '2018-05-25 19:22:12', 0, 90, 'Supplier', '750 ml', 0, NULL),
(25, 'AW0025', 'Red Rum (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1470, '', '', 'color15', '2018-05-25 19:23:40', '2018-05-25 19:23:40', 0, 90, 'Supplier', '375 ml', 0, NULL),
(26, 'AW0026', 'V.A.Whisky', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2900, '', '', 'color23', '2018-05-25 19:28:04', '2018-05-25 19:28:04', 0, 90, 'Supplier', '750 ml', 0, NULL),
(27, 'AW0027', 'V.A.Whisky', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1650, '', '', 'color23', '2018-05-25 19:34:51', '2018-05-25 19:34:51', 0, 90, 'Supplier', '375  ml', 0, NULL),
(28, 'AW0028', 'V.A.Whisky', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 800, '', '', 'color23', '2018-05-25 20:07:18', '2018-05-25 20:07:18', 0, 90, 'Supplier', '185 ml', 0, NULL),
(29, 'AW0029', 'Ritz Brandy (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750ml</span></p>', 2800, '', '', 'color24', '2018-05-26 07:37:05', '2018-05-26 07:37:05', 0, 90, 'Supplier', '750 ml', 0, NULL),
(30, 'AW0030', 'Ritz Brandy (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1480, '', '', 'color24', '2018-05-26 07:41:49', '2018-05-26 07:41:49', 0, 90, 'Supplier', '375 ml', 0, NULL),
(31, 'AW0031', 'Ritz Brandy (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 800, '', '', 'color24', '2018-05-26 07:41:36', '2018-05-26 07:41:36', 0, 90, 'Supplier', '185 ml', 0, NULL),
(32, 'AW0032', 'Franklin (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2800, '', '', 'color25', '2018-05-26 07:45:13', '2018-05-26 07:45:13', 0, 90, 'Supplier', '750 ml', 0, NULL),
(33, 'AW0033', 'Franklin (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1480, '', '', 'color25', '2018-05-26 07:46:55', '2018-05-26 07:46:55', 0, 90, 'Supplier', '375 ml', 0, NULL),
(34, 'AW0034', 'Franklin (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 800, '', '', 'color25', '2018-05-26 07:48:27', '2018-05-26 07:48:27', 0, 90, 'Supplier', '185 ml', 0, NULL),
(35, 'AW0035', 'Old Keg (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2950, '', '', 'color28', '2018-05-26 07:58:59', '2018-05-26 07:58:59', 0, 90, 'Supplier', '750 ml', 0, NULL),
(36, 'AW0036', 'Old Keg (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1850, '', '', 'color28', '2018-05-26 08:00:21', '2018-05-26 08:00:21', 0, 90, 'Supplier', '375 ml', 0, NULL),
(37, 'AW0037', 'Hanappier (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2900, '', '', 'color27', '2018-05-26 08:03:25', '2018-05-26 08:03:25', 0, 90, 'Supplier', '750 ml', 0, NULL),
(38, 'AW0038', 'Hanappier (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1550, '', '', 'color27', '2018-05-26 08:05:39', '2018-05-26 08:05:39', 0, 90, 'Supplier', '375 ml', 0, NULL),
(39, 'AW0039', 'Hanappier (185 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">185 ml</span></p>', 850, '', '', 'color27', '2018-05-26 08:07:08', '2018-05-26 08:07:08', 0, 90, 'Supplier', '185 ml', 0, NULL),
(40, 'AW0040', 'Grape Arrack (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2150, '', '', 'color26', '2018-05-26 08:10:21', '2018-05-26 08:10:21', 0, 90, 'Supplier', '750 ml', 0, NULL),
(41, 'AW0041', 'Grape Arrack (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1200, '', '', 'color26', '2018-05-26 08:12:05', '2018-05-26 08:12:05', 0, 90, 'Supplier', '375 ml', 0, NULL),
(42, 'AW0042', 'Governor Choice(750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2100, '', '', 'color30', '2018-05-26 08:15:22', '2018-05-26 08:15:22', 0, 90, 'Supplier', '750 ml', 0, NULL),
(43, 'AW0043', 'Governor Choice (375 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 1250, '', '', 'color30', '2018-05-26 08:16:41', '2018-05-26 08:16:41', 0, 90, 'Supplier', '375 ml', 0, NULL),
(44, 'AW0044', 'Vat 9 (750 ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2850, '', '', 'color32', '2018-05-26 08:19:17', '2018-05-26 08:19:17', 0, 90, 'Supplier', '750 ml', 0, NULL),
(45, 'AW0045', 'Rockland Oldarrack(750ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2150, '', '', 'color29', '2018-05-26 08:22:54', '2018-05-26 08:22:53', 0, 90, 'Supplier', '750 ml', 0, NULL),
(46, 'AW0046', 'Rockland Oldarrack(375ml)', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">375 ml</span></p>', 1200, '', '', 'color29', '2018-05-26 08:24:43', '2018-05-26 08:24:43', 0, 90, 'Supplier', '375 ml', 0, NULL),
(47, 'AW0047', 'Navy seal', 'Arrack & Whisky', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 2100, '', '', 'color31', '2018-05-26 08:30:50', '2018-05-26 08:30:50', 0, 90, 'Supplier', '750 ml', 0, NULL),
(48, 'BE0001', 'Stout (750 ml)', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 400, '', '', 'color05', '2018-05-28 09:28:04', '2018-05-28 09:28:04', 0, 90, 'Supplier', '750 ml', 0, NULL),
(49, 'BE0002', 'Strong (750 ml)', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 400, '', '', 'color05', '2018-05-28 09:30:00', '2018-05-28 09:30:00', 0, 90, 'Supplier', '750 ml', 0, NULL),
(50, 'BE0003', 'Carlsberg Green(750 ml)', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 330, '', '', 'color05', '2018-05-28 09:30:14', '2018-05-28 09:30:14', 0, 90, 'Supplier', '750 ml', 0, NULL),
(51, 'BE0004', 'Special Brew (750 ml)', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 420, '', '', 'color05', '2018-05-28 09:34:59', '2018-05-28 09:34:59', 0, 90, 'Supplier', '750 ml', 0, NULL),
(52, 'BE0006', 'Lion Lager (750 ml)', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 320, '', '', 'color05', '2018-05-28 09:38:49', '2018-05-28 09:38:49', 0, 90, 'Supplier', '750 ml', 0, NULL),
(53, 'BE0007', 'Anchor', 'Beer', 0, '', '<p><span style=\"font-size: 18px;\">750 ml</span></p>', 320, '', '', 'color05', '2018-05-28 09:43:04', '2018-05-28 09:43:04', 0, 90, 'Supplier', '750 ml', 0, NULL),
(54, 'PZ0001', 'Vegetable Pizza (Full)', 'Pizza', 0, '', '<p>Fried Potato,Beans,Carrot Mozzarelacheese with onion and Tomato</p>', 950, '', '', 'color07', '2018-09-14 23:26:51', '2018-09-14 23:26:51', 0, 0, 'Supplier', 'Full', 0, NULL),
(55, 'PZ0002', 'Chicken Pizza', 'Pizza', 0, '', '', 1000, '', '', 'color07', '2018-09-14 23:27:01', '2018-09-14 23:27:01', 0, 0, 'Supplier', 'Full', 0, NULL),
(56, 'PZ0003', 'Prawns Pizza (Full)', 'Pizza', 0, '', '', 1250, '', '', 'color07', '2018-09-14 23:27:27', '2018-09-14 23:27:27', 0, 0, 'Supplier', 'Full', 0, NULL),
(57, 'PZ0004', 'Pizza Nelly (Full)', 'Pizza', 0, '', '', 1100, '', '', 'color07', '2018-09-14 23:27:39', '2018-09-14 23:27:39', 0, 0, 'Supplier', '', 0, NULL),
(58, 'PZ0005', 'Mix Pizza', 'Pizza', 0, '', '', 1450, '', '', 'color07', '2018-09-14 23:27:54', '2018-09-14 23:27:54', 0, 0, 'Supplier', 'Full', 0, NULL),
(59, 'VC0001', 'Potato Curry', 'Veg Curry', 0, '', '', 80, '', '', 'color10', '2018-06-28 11:00:29', '2018-06-28 11:00:29', 0, 0, 'Supplier', 'Full', 0, NULL),
(60, 'VC0002', 'Dhal Curry', 'Veg Curry', 0, '', '', 70, '', '', 'color10', '2018-06-28 11:03:24', '2018-06-28 11:03:24', 0, 0, 'Supplier', 'Full', 0, NULL),
(61, 'VC0003', 'Beans Curry', 'Veg Curry', 0, '', '', 120, '', '', 'color10', '2018-06-28 11:04:42', '2018-06-28 11:04:42', 0, 0, 'Supplier', '', 0, NULL),
(62, 'VC0004', 'Mix Veg Curry', 'Veg Curry', 0, '', '', 150, '', '', 'color10', '2018-06-28 11:05:59', '2018-06-28 11:05:59', 0, 0, 'Supplier', 'Full', 0, NULL),
(63, 'VC0005', 'Garlic Curry', 'Veg Curry', 0, '', '', 200, '', '', 'color10', '2018-06-28 11:06:58', '2018-06-28 11:06:58', 0, 0, 'Supplier', 'Full', 0, NULL),
(64, 'VC0006', 'Paneer Curry', 'Veg Curry', 0, '', '', 350, '', '', 'color10', '2018-06-28 11:08:18', '2018-06-28 11:08:18', 0, 0, 'Supplier', 'Full', 0, NULL),
(65, 'VC0007', 'Mushroom Curry', 'Veg Curry', 0, '', '', 320, '', '', 'color10', '2018-06-28 11:09:52', '2018-06-28 11:09:52', 0, 0, 'Supplier', 'Full', 0, NULL),
(66, 'VS0001', 'Tomato Salad', 'Veg Salad', 0, '', '', 200, '', '', 'color12', '2018-09-14 23:28:29', '2018-09-14 23:28:29', 0, 0, 'Supplier', 'Full', 0, NULL),
(67, 'VS0002', 'Cucumber Salad', 'Veg Salad', 0, '', '', 200, '', '', 'color12', '2018-09-14 23:28:41', '2018-09-14 23:28:41', 0, 0, 'Supplier', 'Full', 0, NULL),
(68, 'VS0003', 'Onion Salad', 'Veg Salad', 0, '', '', 150, '', '', 'color12', '2018-09-14 23:28:50', '2018-09-14 23:28:50', 0, 0, 'Supplier', 'Full', 0, NULL),
(69, 'VS0004', 'Vegetable Mix', 'Veg Salad', 0, '', '', 250, '', '', 'color12', '2018-09-14 23:29:09', '2018-09-14 23:29:09', 0, 0, 'Supplier', '', 0, NULL),
(70, 'VS0005', 'Pineapple & Onion', 'Veg Salad', 0, '', '', 250, '', '', 'color12', '2018-09-14 23:29:21', '2018-09-14 23:29:21', 0, 0, 'Supplier', 'Full', 0, NULL),
(71, 'VS0006', 'Hot & Sweet Apple', 'Veg Salad', 0, '', '', 300, '', '', 'color12', '2018-09-14 23:29:36', '2018-09-14 23:29:36', 0, 0, 'Supplier', 'Full', 0, NULL),
(72, 'VS0007', 'Pineapple & Apple', 'Veg Salad', 0, '', '', 300, '', '', 'color12', '2018-09-14 23:29:49', '2018-09-14 23:29:49', 0, 0, 'Supplier', 'Full', 0, NULL),
(73, 'NV0001', 'Chicken Curry', 'Non Vege Curry', 0, '', '', 350, '', '', 'color08', '2018-09-14 23:30:47', '2018-09-14 23:30:47', 0, 0, 'Supplier', 'Full', 0, NULL),
(74, 'NV0002', 'Cuttle Fish Curry', 'Non Vege Curry', 0, '', '', 400, '', '', 'color08', '2018-09-14 23:31:01', '2018-09-14 23:31:01', 0, 0, 'Supplier', 'Full', 0, NULL),
(75, 'NV0003', 'Prawn Curry', 'Non Vege Curry', 0, '', '', 500, '', '', 'color08', '2018-09-14 23:31:10', '2018-09-14 23:31:10', 0, 0, 'Supplier', 'Full', 0, NULL),
(76, 'NV0004', 'Fish Curry', 'Non Vege Curry', 0, '', '', 300, '', '', 'color08', '2018-09-14 23:31:21', '2018-09-14 23:31:21', 0, 0, 'Supplier', 'Full', 0, NULL),
(77, 'NV0005', 'Mutton', 'Non Vege Curry', 0, '', '', 700, '', '', 'color08', '2018-09-14 23:31:32', '2018-09-14 23:31:32', 0, 0, 'Supplier', 'Full', 0, NULL),
(78, 'OM0001', 'Plain Omelet', 'Omelet', 0, '', '', 120, '', '', 'color11', '2018-09-14 21:16:03', '2018-09-14 21:16:03', 0, 1, 'Supplier', 'Full', 0, NULL),
(79, 'OM0002', 'Chicken Omelete', 'Omelet', 0, '', '', 240, '', '', 'color11', '2018-09-14 21:17:23', '2018-09-14 21:17:23', 0, 1, 'Supplier', 'Full', 0, NULL),
(80, 'OM0003', 'Cheese Omelet', 'Omelet', 0, '', '', 380, '', '', 'color11', '2018-09-14 21:18:55', '2018-09-14 21:18:55', 0, 1, 'Supplier', 'Full', 0, NULL),
(81, 'OM0004', 'Prawns Omelet', 'Omelet', 0, '', '', 400, '', '', 'color11', '2018-09-14 21:20:01', '2018-09-14 21:20:01', 0, 1, 'Supplier', 'Full', 0, NULL),
(82, 'OM0005', 'Cuttle Fish Omelet', 'Omelet', 0, '', '', 370, '', '', 'color11', '2018-09-14 21:21:11', '2018-09-14 21:21:11', 0, 1, 'Supplier', 'Full', 0, NULL),
(83, 'OM0006', 'Mix Omelet', 'Omelet', 0, '', '', 450, '', '', 'color11', '2018-09-14 21:22:34', '2018-09-14 21:22:34', 0, 1, 'Supplier', 'Full', 0, NULL),
(84, 'PL0001', 'Fresh Chips & Chicken Leg', 'Plats', 0, '', '', 450, '', '', 'color09', '2018-09-14 21:27:51', '2018-09-14 21:27:51', 0, 1, 'Supplier', 'Full', 0, NULL),
(85, 'PL0002', 'Fresh Chips & Chicken', 'Plats', 0, '', '', 430, '', '', 'color09', '2018-09-14 21:29:10', '2018-09-14 21:29:10', 0, 1, 'Supplier', 'Full', 0, NULL),
(86, 'PL0003', 'Sausages Fry', 'Plats', 0, '', '', 340, '', '', 'color09', '2018-09-14 21:30:28', '2018-09-14 21:30:28', 0, 1, 'Supplier', 'Full', 0, NULL),
(87, 'PL0004', 'French Fry', 'Plats', 0, '', '', 360, '', '', 'color09', '2018-09-14 21:32:52', '2018-09-14 21:32:52', 0, 1, 'Supplier', 'Full', 0, NULL),
(88, 'SR0001', 'Mongolian-Rice', 'Special Rice', 0, '', '', 570, '', '', 'color05', '2018-09-15 00:08:38', '2018-09-15 00:08:38', 0, 1, 'Supplier', 'Full', 0, NULL),
(89, 'SR0002', 'Nasi-Goreng Rice', 'Special Rice', 0, '', '', 500, '', '', 'color05', '2018-09-15 00:08:55', '2018-09-15 00:08:55', 0, 1, 'Supplier', 'Full', 0, NULL),
(90, 'CR0001', 'Vegetable Chopsey', 'Chopsey Rice', 0, '', '', 400, '', '', 'color33', '2018-09-14 23:34:39', '2018-09-14 23:34:39', 0, 1, 'Supplier', 'Full', 0, NULL),
(91, 'CR0002', 'Chicken Chopsey', 'Chopsey Rice', 0, '', '', 450, '', '', 'color33', '2018-09-14 23:34:26', '2018-09-14 23:34:26', 0, 1, 'Supplier', 'Full', 0, NULL),
(92, 'CR0003', 'Cuttle Fish Chopsey', 'Chopsey Rice', 0, '', '', 500, '', '', 'color33', '2018-09-14 23:36:14', '2018-09-14 23:36:14', 0, 1, 'Supplier', 'Full', 0, NULL),
(93, 'CR0004', 'Prawns Chopsey', 'Chopsey Rice', 0, '', '', 560, '', '', 'color33', '2018-09-14 23:37:15', '2018-09-14 23:37:15', 0, 1, 'Supplier', 'Full', 0, NULL),
(94, 'CR0005', 'Mix Chopsey', 'Chopsey Rice', 0, '', '', 620, '', '', 'color33', '2018-09-14 23:38:18', '2018-09-14 23:38:18', 0, 1, 'Supplier', 'Full', 0, NULL),
(95, 'ND0001', 'Vegetable Noodles', 'Noodles', 0, '', '', 200, '', '', 'color07', '2018-09-15 00:00:20', '2018-09-15 00:00:20', 0, 1, 'Supplier', 'Full', 0, NULL),
(96, 'ND0002', 'Egg Noodles', 'Noodles', 0, '', '', 220, '', '', 'color07', '2018-09-15 00:01:17', '2018-09-15 00:01:17', 0, 1, 'Supplier', 'Full', 0, NULL),
(97, 'ND0003', 'Chicken Noodles', 'Noodles', 0, '', '', 270, '', '', 'color07', '2018-09-15 00:02:17', '2018-09-15 00:02:17', 0, 1, 'Supplier', 'Full', 0, NULL),
(98, 'ND0004', 'Cuttle Fish Noodles', 'Noodles', 0, '', '', 400, '', '', 'color07', '2018-09-15 00:03:20', '2018-09-15 00:03:20', 0, 1, 'Supplier', 'Full', 0, NULL),
(99, 'ND0005', 'Prawns Noodles', 'Noodles', 0, '', '', 450, '', '', 'color07', '2018-09-15 00:04:23', '2018-09-15 00:04:23', 0, 1, 'Supplier', 'Full', 0, NULL),
(100, 'ND0006', 'Mixed Noodles', 'Noodles', 0, '', '', 560, '', '', 'color07', '2018-09-15 00:05:16', '2018-09-15 00:05:16', 0, 1, 'Supplier', 'Full', 0, NULL),
(101, 'ND0007', 'Sea Food Noodles', 'Noodles', 0, '', '', 500, '', '', 'color07', '2018-09-15 00:06:15', '2018-09-15 00:06:15', 0, 1, 'Supplier', 'Full', 0, NULL),
(102, 'SH0001', 'Veggie Hopper', 'String Hoppers', 0, '', '', 200, '', '', 'color16', '2018-09-15 01:29:55', '2018-09-15 01:29:55', 0, 1, 'Supplier', 'Full', 0, NULL),
(103, 'SH0002', 'Egg Hoppers', 'String Hoppers', 0, '', '', 220, '', '', 'color16', '2018-09-15 01:30:56', '2018-09-15 01:30:56', 0, 1, 'Supplier', 'Full', 0, NULL),
(104, 'SH0003', 'Chicken Hoppers', 'String Hoppers', 0, '', '', 270, '', '', 'color16', '2018-09-15 01:32:00', '2018-09-15 01:32:00', 0, 1, 'Supplier', 'Full', 0, NULL),
(105, 'SH0004', 'Cuttle Fish Hopper', 'String Hoppers', 0, '', '', 400, '', '', 'color16', '2018-09-15 01:33:29', '2018-09-15 01:33:29', 0, 1, 'Supplier', 'Full', 0, NULL),
(106, 'SH0005', 'Prawns Hoppers', 'String Hoppers', 0, '', '', 450, '', '', 'color16', '2018-09-15 01:34:49', '2018-09-15 01:34:49', 0, 1, 'Supplier', 'Full', 0, NULL),
(107, 'SH0006', 'Mixed Hoppers', 'String Hoppers', 0, '', '', 560, '', '', 'color16', '2018-09-15 01:35:56', '2018-09-15 01:35:56', 0, 1, 'Supplier', 'Full', 0, NULL),
(108, 'SH0007', 'Sea Food Hoppers', 'String Hoppers', 0, '', '', 500, '', '', 'color16', '2018-09-15 01:37:09', '2018-09-15 01:37:09', 0, 1, 'Supplier', 'Full', 0, NULL),
(109, 'KT0001', 'Veggie Kottu', 'Kottu', 0, '', '', 200, '', '', 'color17', '2018-09-15 06:05:28', '2018-09-15 06:05:28', 0, 1, 'Supplier', 'Full', 0, NULL),
(110, 'KT0002', 'Egg Kottu', 'Kottu', 0, '', '', 220, '', '', 'color17', '2018-09-15 06:06:24', '2018-09-15 06:06:24', 0, 1, 'Supplier', 'Full', 0, NULL),
(111, 'KT0003', 'Chicken Kottu', 'Kottu', 0, '', '', 300, '', '', 'color17', '2018-09-15 06:07:00', '2018-09-15 06:07:00', 0, 1, 'Supplier', 'Full', 0, NULL),
(112, 'KT0004', 'Cuttle Fish Kottu', 'Kottu', 0, '', '', 400, '', '', 'color17', '2018-09-15 06:08:02', '2018-09-15 06:08:02', 0, 1, 'Supplier', 'Full', 0, NULL),
(113, 'KT0005', 'Prawn Kottu', 'Kottu', 0, '', '', 450, '', '', 'color17', '2018-09-15 06:08:58', '2018-09-15 06:08:58', 0, 1, 'Supplier', '', 0, NULL),
(114, 'KT0006', 'Sea Food Kottu', 'Kottu', 0, '', '', 500, '', '', 'color17', '2018-09-15 06:09:44', '2018-09-15 06:09:44', 0, 1, 'Supplier', 'Full', 0, NULL),
(115, 'KT0007', 'Mix Kottu', 'Kottu', 0, '', '', 560, '', '', 'color17', '2018-09-15 06:10:23', '2018-09-15 06:10:23', 0, 1, 'Supplier', 'Full', 0, NULL),
(116, 'IN0001', 'Plain Naan', 'Indian Naan', 0, '', '', 90, '', '', 'color18', '2018-09-15 06:20:41', '2018-09-15 06:20:41', 0, 1, 'Supplier', 'Full', 0, NULL),
(117, 'IN0002', 'Cheese Naan', 'Indian Naan', 0, '', '', 180, '', '', 'color18', '2018-09-15 06:24:27', '2018-09-15 06:24:27', 0, 1, 'Supplier', 'Full', 0, NULL),
(118, 'IN0003', 'Butter Naan', 'Indian Naan', 0, '', '', 150, '', '', 'color18', '2018-09-15 06:22:08', '2018-09-15 06:22:08', 0, 1, 'Supplier', 'Full', 0, NULL),
(119, 'IN0004', 'Garlic Naan', 'Indian Naan', 0, '', '', 170, '', '', 'color18', '2018-09-15 06:24:44', '2018-09-15 06:24:44', 0, 1, 'Supplier', 'Full', 0, NULL),
(120, 'IN0005', 'Garlic With Cheese Naan', 'Indian Naan', 0, '', '', 300, '', '', 'color18', '2018-09-15 06:23:37', '2018-09-15 06:23:37', 0, 1, 'Supplier', 'Full', 0, NULL),
(121, 'TC0001', 'Black Tea', 'Tea Coffee', 0, '', '', 40, '', '', 'color19', '2018-09-15 06:38:32', '2018-09-15 06:38:32', 0, 1, 'Supplier', '', 0, NULL),
(122, 'TC0002', 'Nescafe', 'Tea Coffee', 0, '', '', 70, '', '', 'color19', '2018-09-15 06:39:04', '2018-09-15 06:39:04', 0, 1, 'Supplier', '', 0, NULL),
(123, 'TC0003', 'Teapot', 'Tea Coffee', 0, '', '', 200, '', '', 'color19', '2018-09-15 06:39:38', '2018-09-15 06:39:38', 0, 1, 'Supplier', '', 0, NULL),
(124, 'TC0004', 'Tea', 'Tea Coffee', 0, '', '', 60, '', '', 'color19', '2018-09-15 06:40:15', '2018-09-15 06:40:15', 0, 1, 'Supplier', '', 0, NULL),
(125, 'TC0005', 'Post Coffee', 'Tea Coffee', 0, '', '', 240, '', '', 'color19', '2018-09-15 06:40:46', '2018-09-15 06:40:46', 0, 1, 'Supplier', '', 0, NULL),
(126, 'TC0006', 'Tea With Crispy Cookies', 'Tea Coffee', 0, '', '', 90, '', '', 'color19', '2018-09-15 06:41:36', '2018-09-15 06:41:36', 0, 1, 'Supplier', '', 0, NULL),
(127, 'TC0007', 'Milk Coffee With Cripsy ', 'Tea Coffee', 0, '', '', 100, '', '', 'color19', '2018-09-15 06:43:37', '2018-09-15 06:43:37', 0, 1, 'Supplier', '', 0, NULL),
(128, 'DR0001', 'Coco Cola', 'Drinks', 0, '', '', 100, '', '', 'color20', '2018-09-15 06:44:20', '2018-09-15 06:44:20', 0, 1, 'Supplier', '', 0, NULL),
(129, 'DR0002', 'Sprite', 'Drinks', 0, '', '', 100, '', '', 'color20', '2018-09-15 06:45:02', '2018-09-15 06:45:02', 0, 1, 'Supplier', '', 0, NULL),
(130, 'DR0003', 'Pepsi', 'Drinks', 0, '', '', 100, '', '', 'color20', '2018-09-15 06:45:33', '2018-09-15 06:45:33', 0, 1, 'Supplier', '', 0, NULL),
(131, 'DR0004', '7 Up', 'Drinks', 0, '', '', 100, '', '', 'color20', '2018-09-15 06:46:00', '2018-09-15 06:46:00', 0, 1, 'Supplier', '', 0, NULL),
(132, 'DR0005', 'Ginger beer', 'Drinks', 0, '', '', 120, '', '', 'color20', '2018-09-15 06:46:35', '2018-09-15 06:46:35', 0, 1, 'Supplier', '', 0, NULL),
(133, 'DR0006', 'Plain Soda', 'Drinks', 0, '', '', 90, '', '', 'color20', '2018-09-15 06:47:42', '2018-09-15 06:47:42', 0, 1, 'Supplier', '', 0, NULL),
(134, 'DR0007', 'Mega Sprite', 'Drinks', 0, '', '', 360, '', '', 'color20', '2018-09-15 06:48:30', '2018-09-15 06:48:30', 0, 1, 'Supplier', '', 0, NULL),
(135, 'DR0008', 'Mega 7 Up', 'Drinks', 0, '', '', 360, '', '', 'color20', '2018-09-15 06:49:41', '2018-09-15 06:49:41', 0, 1, 'Supplier', '', 0, NULL),
(136, 'DR0009', 'Mega Coco Cola', 'Drinks', 0, '', '', 360, '', '', 'color20', '2018-09-15 06:56:30', '2018-09-15 06:56:30', 0, 1, 'Supplier', '', 0, NULL),
(137, 'LI0001', 'Banana Lassi', 'Lassi', 0, '', '', 220, '', '', 'color21', '2018-09-15 07:45:19', '2018-09-15 07:45:19', 0, 1, 'Supplier', '', 0, NULL),
(138, 'LI0002', 'Sweet Lassi', 'Lassi', 0, '', '', 200, '', '', 'color21', '2018-09-15 07:45:50', '2018-09-15 07:45:50', 0, 1, 'Supplier', '', 0, NULL),
(139, 'LI0003', 'Vanilla Lassi', 'Lassi', 0, '', '', 240, '', '', 'color21', '2018-09-15 07:54:25', '2018-09-15 07:54:25', 0, 1, 'Supplier', '', 0, NULL),
(140, 'LI0004', 'Pineapple Lassi', 'Lassi', 0, '', '', 260, '', '', 'color21', '2018-09-15 07:54:40', '2018-09-15 07:54:40', 0, 1, 'Supplier', '', 0, NULL),
(141, 'LI0005', 'Papaya Lassi', 'Lassi', 0, '', '', 230, '', '', 'color21', '2018-09-15 07:54:58', '2018-09-15 07:54:58', 0, 1, 'Supplier', '', 0, NULL),
(142, 'DT0001', 'Fruits Salad ', 'Deserts', 0, '', '', 160, '', '', 'color22', '2018-09-15 07:49:01', '2018-09-15 07:49:01', 0, 1, 'Supplier', '', 0, NULL),
(143, 'DT0002', 'Fruits Salad with Ice Cre', 'Deserts', 0, '', '', 200, '', '', 'color22', '2018-09-15 07:49:38', '2018-09-15 07:49:38', 0, 1, 'Supplier', '', 0, NULL),
(144, 'DT0003', 'Nelly Ice Cream', 'Deserts', 0, '', '', 220, '', '', 'color22', '2018-09-15 07:50:32', '2018-09-15 07:50:32', 0, 1, 'Supplier', '', 0, NULL),
(145, 'DT0004', 'Ice Cream', 'Deserts', 0, '', '', 120, '', '', 'color22', '2018-09-15 07:50:59', '2018-09-15 07:50:59', 0, 1, 'Supplier', '', 0, NULL),
(146, 'DT0005', 'Banana Split', 'Deserts', 0, '', '', 200, '', '', 'color22', '2018-09-15 07:53:50', '2018-09-15 07:53:50', 0, 1, 'Supplier', '', 0, NULL),
(147, 'DT0006', 'Fruit Punch', 'Deserts', 0, '', '', 260, '', '', 'color22', '2018-09-15 07:54:08', '2018-09-15 07:54:08', 0, 1, 'Supplier', '', 0, NULL),
(148, 'SN0001', 'Veggie Rolls', 'Snacks', 0, '', '', 60, '', '', 'color34', '2018-09-16 08:03:42', '2018-09-16 08:03:42', 0, 1, 'Supplier', '', 0, NULL),
(149, 'SN0002', 'Veggie Spring Rolls', 'Snacks', 0, '', '', 200, '', '', 'color34', '2018-09-16 08:04:12', '2018-09-16 08:04:12', 0, 1, 'Supplier', '', 0, NULL),
(150, 'SN0003', 'Chicken Spring  Rolls', 'Snacks', 0, '', '', 270, '', '', 'color34', '2018-09-16 08:07:16', '2018-09-16 08:07:16', 0, 0, 'Supplier', '', 0, NULL),
(151, 'SN0004', 'Prowns Spring Rolls', 'Snacks', 0, '', '', 350, '', '', 'color34', '2018-09-16 08:05:32', '2018-09-16 08:05:32', 0, 1, 'Supplier', '', 0, NULL),
(152, 'SN0005', 'Mix Spring Rolls', 'Snacks', 0, '', '', 400, '', '', 'color34', '2018-09-16 08:07:34', '2018-09-16 08:07:34', 0, 1, 'Supplier', '', 0, NULL),
(153, 'FJ0001', 'Orange Juice', 'Fruit Juices', 0, '', '', 180, '', '', 'color35', '2018-09-16 08:14:43', '2018-09-16 08:14:42', 0, 1, 'Supplier', '', 0, NULL),
(154, 'FJ0002', 'Apple Juice', 'Fruit Juices', 0, '', '', 160, '', '', 'color35', '2018-09-16 08:15:19', '2018-09-16 08:15:19', 0, 1, 'Supplier', '', 0, NULL),
(155, 'FJ0003', 'Pineapple Juice', 'Fruit Juices', 0, '', '', 180, '', '', 'color35', '2018-09-16 08:16:12', '2018-09-16 08:16:12', 0, 1, 'Supplier', '', 0, NULL),
(156, 'FJ0004', 'Papaya Juice', 'Fruit Juices', 0, '', '', 150, '', '', 'color35', '2018-09-16 08:17:12', '2018-09-16 08:17:12', 0, 1, 'Supplier', '', 0, NULL),
(157, 'FJ0005', 'Lime Juice', 'Fruit Juices', 0, '', '', 120, '', '', 'color35', '2018-09-16 08:17:47', '2018-09-16 08:17:47', 0, 1, 'Supplier', '', 0, NULL),
(158, 'FJ0006', 'Mix Fruit Juice', 'Fruit Juices', 0, '', '', 220, '', '', 'color35', '2018-09-16 09:06:31', '2018-09-16 09:06:31', 0, 1, 'Supplier', '', 0, NULL),
(159, 'SU0001', 'Vegitable Soup', 'Soups', 0, '', '', 120, '', '', 'color36', '2018-09-16 08:24:55', '2018-09-16 08:24:55', 0, 1, 'Supplier', '', 0, NULL),
(160, 'SU0002', 'Mushroom Soup', 'Soups', 0, '', '', 140, '', '', 'color36', '2018-09-16 08:25:31', '2018-09-16 08:25:31', 0, 1, 'Supplier', '', 0, NULL),
(161, 'SU0003', 'Tomato Soup', 'Soups', 0, '', '', 140, '', '', 'color36', '2018-09-16 08:26:06', '2018-09-16 08:26:06', 0, 1, 'Supplier', '', 0, NULL),
(162, 'SU0004', 'Chicken Soup', 'Soups', 0, '', '', 130, '', '', 'color36', '2018-09-16 08:30:02', '2018-09-16 08:30:02', 0, 1, 'Supplier', '', 0, NULL),
(163, 'SU0005', 'Egg Soup', 'Soups', 0, '', '', 120, '', '', 'color36', '2018-09-16 08:27:20', '2018-09-16 08:27:20', 0, 1, 'Supplier', '', 0, NULL),
(164, 'SU0006', 'Prawns Soup', 'Soups', 0, '', '', 150, '', '', 'color36', '2018-09-16 08:28:00', '2018-09-16 08:28:00', 0, 1, 'Supplier', '', 0, NULL),
(165, 'SU0007', 'Sea Food Soup', 'Soups', 0, '', '', 200, '', '', 'color36', '2018-09-16 08:28:39', '2018-09-16 08:28:39', 0, 1, 'Supplier', '', 0, NULL),
(166, 'SU0008', 'Mix Soup', 'Soups', 0, '', '', 220, '', '', 'color36', '2018-09-16 08:29:20', '2018-09-16 08:29:20', 0, 1, 'Supplier', '', 0, NULL),
(167, 'DV0001', 'Devil Chicken', 'Devils', 0, '', '', 420, '', '', 'color37', '2018-09-16 08:50:26', '2018-09-16 08:50:26', 0, 1, 'Supplier', '', 0, NULL),
(168, 'DV0002', 'Devil Lemon Chicken', 'Devils', 0, '', '', 430, '', '', 'color37', '2018-09-16 08:50:56', '2018-09-16 08:50:56', 0, 1, 'Supplier', '', 0, NULL),
(169, 'DV0003', 'Devil Prowns', 'Devils', 0, '', '', 650, '', '', 'color37', '2018-09-16 08:51:39', '2018-09-16 08:51:39', 0, 1, 'Supplier', '', 0, NULL),
(170, 'DV0004', 'Spicy Prowns', 'Devils', 0, '', '', 680, '', '', 'color37', '2018-09-16 08:52:12', '2018-09-16 08:52:12', 0, 1, 'Supplier', '', 0, NULL),
(171, 'DV0005', 'Cuttle Fish', 'Devils', 0, '', '', 575, '', '', 'color37', '2018-09-16 08:53:08', '2018-09-16 08:53:08', 0, 1, 'Supplier', '', 0, NULL),
(172, 'DV0006', 'Chicken Liver Devil', 'Devils', 0, '', '', 400, '', '', 'color37', '2018-09-16 08:53:46', '2018-09-16 08:53:46', 0, 1, 'Supplier', '', 0, NULL),
(173, 'DV0007', 'Mushroom Devil', 'Devils', 0, '', '', 370, '', '', 'color37', '2018-09-16 08:54:22', '2018-09-16 08:54:22', 0, 1, 'Supplier', '', 0, NULL),
(174, 'DV0008', 'Mutton Devil', 'Devils', 0, '', '', 720, '', '', 'color37', '2018-09-16 08:55:05', '2018-09-16 08:55:05', 0, 1, 'Supplier', '', 0, NULL),
(175, 'FG0001', 'Chicken 65', 'Fry/Grill', 0, '', '', 500, '', '', 'color38', '2018-09-16 08:55:42', '2018-09-16 08:55:42', 0, 1, 'Supplier', '', 0, NULL),
(176, 'FG0002', 'Chicken Fry', 'Fry/Grill', 0, '', '', 360, '', '', 'color38', '2018-09-16 08:56:25', '2018-09-16 08:56:25', 0, 1, 'Supplier', '', 0, NULL),
(177, 'FG0003', 'Prowns Fry', 'Fry/Grill', 0, '', '', 625, '', '', 'color38', '2018-09-16 08:57:00', '2018-09-16 08:57:00', 0, 1, 'Supplier', '', 0, NULL),
(178, 'FG0004', 'Fish Fry', 'Fry/Grill', 0, '', '', 380, '', '', 'color38', '2018-09-16 08:57:36', '2018-09-16 08:57:36', 0, 1, 'Supplier', '', 0, NULL),
(179, 'FG0005', 'Cuttle Fish Fry', 'Fry/Grill', 0, '', '', 530, '', '', 'color38', '2018-09-16 08:58:13', '2018-09-16 08:58:13', 0, 1, 'Supplier', '', 0, NULL),
(180, 'FG0006', 'Butter Fry Prowns', 'Fry/Grill', 0, '', '', 675, '', '', 'color38', '2018-09-16 08:59:02', '2018-09-16 08:59:02', 0, 1, 'Supplier', '', 0, NULL),
(181, 'FG0007', 'Butter Fry Cuttle Fish', 'Fry/Grill', 0, '', '', 580, '', '', 'color38', '2018-09-16 08:59:40', '2018-09-16 08:59:40', 0, 1, 'Supplier', '', 0, NULL),
(182, 'FG0008', 'Butter Fry Mix Grill', 'Fry/Grill', 0, '', '', 1350, '', '', 'color38', '2018-09-16 09:00:26', '2018-09-16 09:00:26', 0, 1, 'Supplier', '', 0, NULL),
(183, 'FR0001', 'Veggie Fried Rice', 'Fried Rice', 0, '', '', 200, '', '', 'color39', '2018-09-16 10:51:34', '2018-09-16 10:51:34', 0, 1, 'Supplier', '', 0, NULL),
(184, 'FR0002', 'Egg Rice', 'Fried Rice', 0, '', '', 220, '', '', 'color39', '2018-09-16 10:52:21', '2018-09-16 10:52:21', 0, 1, 'Supplier', '', 0, NULL),
(185, 'FR0003', 'Chicken Fried Rice', 'Fried Rice', 0, '', '', 300, '', '', 'color39', '2018-09-16 10:53:40', '2018-09-16 10:53:40', 0, 1, 'Supplier', '', 0, NULL),
(186, 'FR0004', 'Cuttle Fish Fried Rice', 'Fried Rice', 0, '', '', 400, '', '', 'color39', '2018-09-16 11:00:58', '2018-09-16 11:00:58', 0, 1, 'Supplier', '', 0, NULL),
(187, 'FR0005', 'Prowns Fried Rice', 'Fried Rice', 0, '', '', 450, '', '', 'color39', '2018-09-16 10:55:03', '2018-09-16 10:55:03', 0, 1, 'Supplier', '', 0, NULL),
(188, 'FR0006', 'Sea Food Fried Rice', 'Fried Rice', 0, '', '', 500, '', '', 'color39', '2018-09-16 11:01:47', '2018-09-16 11:01:47', 0, 1, 'Supplier', '', 0, NULL),
(189, 'FR0007', 'Mix Rice', 'Fried Rice', 0, '', '', 560, '', '', 'color39', '2018-09-16 11:02:38', '2018-09-16 11:02:38', 0, 1, 'Supplier', '', 0, NULL),
(190, 'BR0001', 'Veggie Briyani', 'Briyani', 0, '', '', 270, '', '', 'color40', '2018-09-16 10:58:30', '2018-09-16 10:58:30', 0, 1, 'Supplier', '', 0, NULL),
(191, 'BR0002', 'Chicken Briyani', 'Briyani', 0, '', '', 370, '', '', 'color40', '2018-09-16 10:59:03', '2018-09-16 10:59:03', 0, 1, 'Supplier', '', 0, NULL),
(192, 'BR0003', 'Prawns Briyani', 'Briyani', 0, '', '', 500, '', '', 'color40', '2018-09-16 10:59:40', '2018-09-16 10:59:40', 0, 1, 'Supplier', '', 0, NULL),
(193, 'FR0008', 'Mutton Rice', 'Fried Rice', 0, '', '', 600, '', '', 'color39', '2018-09-16 11:04:20', '2018-09-16 11:04:20', 0, 1, 'Supplier', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(11) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` text CHARACTER SET latin1,
  `modified_at` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
CREATE TABLE IF NOT EXISTS `purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
CREATE TABLE IF NOT EXISTS `registers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`) VALUES
(34, '2018-05-23 01:23:42', 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '2018-05-23 07:29:32', 16, 1),
(36, '2018-05-25 09:13:14', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`) VALUES
(1, 9, 'Table 9', '0%', '', '1950.00', 1950, '2020-01-02', NULL, 0, 'Aarooran Kanthasamy', 2, '1950.00', '1~~', 0, 0, 36, 1950),
(2, 9, 'Table 9', '20%', '', '150.00', 180, '2020-01-02', NULL, 0, 'Aarooran Kanthasamy', 2, '2000', '0', 30, 0, 36, 180);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

DROP TABLE IF EXISTS `sale_items`;
CREATE TABLE IF NOT EXISTS `sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1, 1, 54, 'Vegetable Pizza (Full)', 950, 1, '950', '2020-01-02'),
(2, 1, 55, 'Chicken Pizza', 1000, 1, '1000', '2020-01-02'),
(3, 2, 59, 'Potato Curry', 80, 1, '80', '2020-01-02'),
(4, 2, 60, 'Dhal Curry', 70, 1, '70', '2020-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'Nelly POS', NULL, '0242224477', 'LKR', 1, '', 'Thank you for your business', 'Dark', '', '10%', 'Asia/Kolkata', 'english', 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`, `is_show`) VALUES
(60, 60, NULL, 1, NULL, 99999999, 70, 1),
(61, 61, NULL, 1, NULL, 100000000, 120, 1),
(62, 62, NULL, 1, NULL, 100000000, 150, 1),
(63, 63, NULL, 1, NULL, 100000000, 200, 1),
(65, 65, NULL, 1, NULL, 100000000, 320, 1),
(66, 66, NULL, 1, NULL, 100000000, 200, 1),
(67, 67, NULL, 1, NULL, 100000000, 200, 1),
(68, 69, NULL, 1, NULL, 100000000, 250, 1),
(69, 70, NULL, 1, NULL, 100000000, 250, 1),
(70, 71, NULL, 1, NULL, 100000000, 300, 1),
(71, 72, NULL, 1, NULL, 100000000, 300, 1),
(72, 73, NULL, 1, NULL, 100000000, 350, 1),
(73, 74, NULL, 1, NULL, 100000000, 400, 1),
(74, 75, NULL, 1, NULL, 100000000, 500, 1),
(75, 76, NULL, 1, NULL, 100000000, 300, 1),
(76, 77, NULL, 1, NULL, 100000000, 700, 1),
(78, 78, NULL, 1, NULL, 100000000, 120, 1),
(79, 79, NULL, 1, NULL, 100000000, 240, 1),
(80, 80, NULL, 1, NULL, 100000000, 380, 1),
(81, 81, NULL, 1, NULL, 100000000, 400, 1),
(82, 82, NULL, 1, NULL, 100000000, 370, 1),
(83, 83, NULL, 1, NULL, 100000000, 450, 1),
(84, 84, NULL, 1, NULL, 100000000, 450, 1),
(85, 85, NULL, 1, NULL, 100000000, 430, 1),
(86, 86, NULL, 1, NULL, 100000000, 340, 1),
(87, 87, NULL, 1, NULL, 100000000, 360, 1),
(88, 88, NULL, 1, NULL, 100000000, 570, 1),
(89, 89, NULL, 1, NULL, 100000000, 500, 1),
(90, 90, NULL, 1, NULL, 100000000, 450, 1),
(91, 91, NULL, 1, NULL, 100000000, 450, 1),
(92, 92, NULL, 1, NULL, 100000000, 500, 1),
(93, 93, NULL, 1, NULL, 100000000, 560, 1),
(94, 94, NULL, 1, NULL, 100000000, 620, 1),
(95, 95, NULL, 1, NULL, 100000000, 200, 1),
(96, 96, NULL, 1, NULL, 100000000, 220, 1),
(97, 97, NULL, 1, NULL, 100000000, 270, 1),
(98, 98, NULL, 1, NULL, 100000000, 400, 1),
(99, 99, NULL, 1, NULL, 100000000, 450, 1),
(100, 100, NULL, 1, NULL, 100000000, 560, 1),
(101, 101, NULL, 1, NULL, 100000000, 500, 1),
(102, 102, NULL, 1, NULL, 100000000, 200, 1),
(103, 103, NULL, 1, NULL, 100000000, 220, 1),
(104, 104, NULL, 1, NULL, 100000000, 270, 1),
(105, 105, NULL, 1, NULL, 100000000, 400, 1),
(106, 106, NULL, 1, NULL, 100000000, 450, 1),
(107, 107, NULL, 1, NULL, 100000000, 560, 1),
(108, 108, NULL, 1, NULL, 100000000, 500, 1),
(109, 109, NULL, 1, NULL, 100000000, 200, 1),
(110, 110, NULL, 1, NULL, 100000000, 220, 1),
(111, 111, NULL, 1, NULL, 100000000, 300, 1),
(112, 112, NULL, 1, NULL, 100000000, 400, 1),
(113, 113, NULL, 1, NULL, 100000000, 450, 1),
(114, 114, NULL, 1, NULL, 100000000, 500, 1),
(115, 115, NULL, 1, NULL, 100000000, 560, 1),
(116, 116, NULL, 1, NULL, 100000000, 90, 1),
(117, 117, NULL, 1, NULL, 100000000, 180, 1),
(118, 118, NULL, 1, NULL, 100000000, 150, 1),
(119, 119, NULL, 1, NULL, 100000000, 170, 1),
(120, 120, NULL, 1, NULL, 100000000, 300, 1),
(121, 121, NULL, 1, NULL, 100000000, 40, 1),
(122, 122, NULL, 1, NULL, 100000000, 70, 1),
(123, 123, NULL, 1, NULL, 100000000, 200, 1),
(124, 124, NULL, 1, NULL, 100000000, 60, 1),
(125, 125, NULL, 1, NULL, 100000000, 240, 1),
(126, 126, NULL, 1, NULL, 100000000, 90, 1),
(127, 127, NULL, 1, NULL, 100000000, 100, 1),
(155, 68, NULL, 1, NULL, 100000000, 150, 1),
(154, 64, NULL, 1, NULL, 100000000, 350, 1),
(153, 59, NULL, 1, NULL, 99999999, 80, 1),
(152, 58, NULL, 1, NULL, 100000000, 1450, 1),
(151, 57, NULL, 1, NULL, 100000000, 1100, 1),
(150, 56, NULL, 1, NULL, 100000000, 1250, 1),
(149, 55, NULL, 1, NULL, 99999999, 1000, 1),
(148, 54, NULL, 1, NULL, 99999999, 950, 1),
(137, 142, NULL, 1, NULL, 100000000, 160, 1),
(138, 143, NULL, 1, NULL, 100000000, 200, 1),
(139, 144, NULL, 1, NULL, 100000000, 220, 1),
(140, 145, NULL, 1, NULL, 100000000, 120, 1),
(141, 146, NULL, 1, NULL, 100000000, 200, 1),
(142, 147, NULL, 1, NULL, 100000000, 260, 1),
(143, 137, NULL, 1, NULL, 100000000, 220, 1),
(144, 138, NULL, 1, NULL, 100000000, 200, 1),
(145, 139, NULL, 1, NULL, 100000000, 240, 1),
(146, 140, NULL, 1, NULL, 100000000, 260, 1),
(147, 141, NULL, 1, NULL, 100000000, 230, 1),
(156, 148, NULL, 1, NULL, 100000000, 60, 1),
(157, 149, NULL, 1, NULL, 100000000, 200, 1),
(158, 150, NULL, 1, NULL, 100000000, 270, 1),
(159, 151, NULL, 1, NULL, 100000000, 350, 1),
(160, 152, NULL, 1, NULL, 100000000, 400, 1),
(161, 153, NULL, 1, NULL, 100000000, 180, 1),
(162, 154, NULL, 1, NULL, 100000000, 160, 1),
(163, 155, NULL, 1, NULL, 100000000, 180, 1),
(164, 156, NULL, 1, NULL, 100000000, 150, 1),
(165, 157, NULL, 1, NULL, 100000000, 120, 1),
(166, 158, NULL, 1, NULL, 100000000, 220, 1),
(167, 159, NULL, 1, NULL, 100000000, 120, 1),
(168, 160, NULL, 1, NULL, 100000000, 140, 1),
(169, 161, NULL, 1, NULL, 100000000, 140, 1),
(170, 162, NULL, 1, NULL, 100000000, 130, 1),
(171, 163, NULL, 1, NULL, 100000000, 120, 1),
(172, 164, NULL, 1, NULL, 100000000, 150, 1),
(173, 165, NULL, 1, NULL, 100000000, 200, 1),
(174, 166, NULL, 1, NULL, 100000000, 220, 1),
(175, 175, NULL, 1, NULL, 100000000, 500, 1),
(176, 176, NULL, 1, NULL, 100000000, 360, 1),
(177, 177, NULL, 1, NULL, 100000000, 625, 1),
(178, 178, NULL, 1, NULL, 100000000, 380, 1),
(179, 179, NULL, 1, NULL, 100000000, 530, 1),
(180, 180, NULL, 1, NULL, 100000000, 675, 1),
(181, 181, NULL, 1, NULL, 100000000, 580, 1),
(182, 182, NULL, 1, NULL, 100000000, 1350, 1),
(183, 167, NULL, 1, NULL, 100000000, 420, 1),
(184, 168, NULL, 1, NULL, 100000000, 430, 1),
(185, 169, NULL, 1, NULL, 100000000, 650, 1),
(186, 170, NULL, 1, NULL, 100000000, 680, 1),
(187, 171, NULL, 1, NULL, 100000000, 575, 1),
(188, 172, NULL, 1, NULL, 100000000, 400, 1),
(189, 173, NULL, 1, NULL, 100000000, 370, 1),
(190, 174, NULL, 1, NULL, 100000000, 720, 1),
(191, 183, NULL, 1, NULL, 100000000, 200, 1),
(192, 184, NULL, 1, NULL, 100000000, 220, 1),
(193, 185, NULL, 1, NULL, 100000000, 300, 1),
(194, 186, NULL, 1, NULL, 100000000, 400, 1),
(195, 187, NULL, 1, NULL, 100000000, 450, 1),
(196, 188, NULL, 1, NULL, 100000000, 500, 1),
(197, 189, NULL, 1, NULL, 100000000, 560, 1),
(198, 193, NULL, 1, NULL, 100000000, 600, 1),
(199, 190, NULL, 1, NULL, 100000000, 270, 1),
(200, 191, NULL, 1, NULL, 100000000, 370, 1),
(201, 192, NULL, 1, NULL, 100000000, 500, 1),
(202, 1, NULL, 1, NULL, 0, 2220, 0),
(203, 2, NULL, 1, NULL, 0, 1650, 0),
(204, 3, NULL, 1, NULL, 0, 2220, 0),
(205, 4, NULL, 1, NULL, 0, 1260, 0),
(206, 5, NULL, 1, NULL, 0, 1900, 0),
(207, 6, NULL, 1, NULL, 0, 1070, 0),
(208, 7, NULL, 1, NULL, 0, 610, 0),
(209, 8, NULL, 1, NULL, 0, 1930, 0),
(210, 9, NULL, 1, NULL, 0, 1200, 0),
(211, 10, NULL, 1, NULL, 0, 710, 0),
(212, 11, NULL, 1, NULL, 0, 2300, 0),
(213, 12, NULL, 1, NULL, 0, 1320, 0),
(214, 13, NULL, 1, NULL, 0, 680, 0),
(215, 14, NULL, 1, NULL, 0, 2100, 0),
(216, 15, NULL, 1, NULL, 0, 1200, 0),
(217, 16, NULL, 1, NULL, 0, 680, 0),
(218, 17, NULL, 1, NULL, 0, 2400, 0),
(219, 18, NULL, 1, NULL, 0, 1300, 0),
(220, 19, NULL, 1, NULL, 0, 2200, 0),
(221, 20, NULL, 1, NULL, 0, 1150, 0),
(222, 21, NULL, 1, NULL, 0, 2800, 0),
(223, 22, NULL, 1, NULL, 0, 1500, 0),
(224, 23, NULL, 1, NULL, 0, 800, 0),
(225, 24, NULL, 1, NULL, 0, 2750, 0),
(226, 25, NULL, 1, NULL, 0, 1470, 0),
(227, 26, NULL, 1, NULL, 0, 2900, 0),
(228, 27, NULL, 1, NULL, 0, 1650, 0),
(229, 28, NULL, 1, NULL, 0, 800, 0),
(230, 29, NULL, 1, NULL, 0, 2800, 0),
(231, 30, NULL, 1, NULL, 0, 1480, 0),
(232, 31, NULL, 1, NULL, 0, 800, 0),
(233, 32, NULL, 1, NULL, 0, 2800, 0),
(234, 33, NULL, 1, NULL, 0, 1480, 0),
(235, 34, NULL, 1, NULL, 0, 800, 0),
(236, 35, NULL, 1, NULL, 0, 2950, 0),
(237, 36, NULL, 1, NULL, 0, 1850, 0),
(238, 37, NULL, 1, NULL, 0, 2900, 0),
(239, 38, NULL, 1, NULL, 0, 1550, 0),
(240, 39, NULL, 1, NULL, 0, 850, 0),
(241, 40, NULL, 1, NULL, 0, 2150, 0),
(242, 41, NULL, 1, NULL, 0, 1200, 0),
(243, 42, NULL, 1, NULL, 0, 2100, 0),
(244, 43, NULL, 1, NULL, 0, 1250, 0),
(245, 44, NULL, 1, NULL, 0, 2850, 0),
(246, 45, NULL, 1, NULL, 0, 2150, 0),
(247, 46, NULL, 1, NULL, 0, 1200, 0),
(248, 47, NULL, 1, NULL, 0, 2100, 0),
(249, 48, NULL, 1, NULL, 0, 400, 0),
(250, 49, NULL, 1, NULL, 0, 400, 0),
(251, 50, NULL, 1, NULL, 0, 330, 0),
(252, 51, NULL, 1, NULL, 0, 420, 0),
(253, 52, NULL, 1, NULL, 0, 320, 0),
(254, 53, NULL, 1, NULL, 0, 320, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(1, 'Nelly POS', 'info@nellymarine.com', ' 0242224477', 'Vavuniya', 'Custome Footer for Nelly POS', 'Vavuniya', 'Srilanka', '2016-05-10 12:44:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `note` text CHARACTER SET latin1,
  `created_at` varchar(150) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`) VALUES
(1, 'Aarooradmin', 'Aarooran', 'Kanthasamy', '3a28d8cb24c69ef4540159a932d1f773d0a8406eb85d3c3649fb258a08abde3caa27e271d948d79b92456ed825b3332358a1e02c3c3d2b274b911ea4ecb3cc1a', 'admin@dar-elweb.com', 'admin', '2020-01-02 15:10:32', '9fff9cc26e539214e9a5fd3b6a10cde9.jpg', '2018-05-25 19:44:25'),
(16, 'ruban', 'ruban', 'ruban', '87429b5f35aceb6e686b660970d27736bf27df8c82f63c5fbd7879921a0b6091c2709369949452e2b92e981a5e65cf2bc435d788519190697c53dc18054f9074', 'ruban@gmail.com', 'admin', '2019-01-11 11:31:23', NULL, '2018-09-13 23:10:30'),
(17, 'staff', 'staff', 'staff', '8b390fcd567e5c04da7a51d72a7b89664c06704b2cf09eb5e783246c14d537bd5f4407ee4b4422df832af494f2b2e18e066696cd539c567aac8847be03942287', 'staff@gmail.com', 'sales', '2019-01-11 11:30:42', NULL, '2018-09-13 23:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
CREATE TABLE IF NOT EXISTS `variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
