# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.27
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2016-04-05 07:29:11
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for karang
CREATE DATABASE IF NOT EXISTS `karang` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `karang`;


# Dumping structure for table karang.rov
CREATE TABLE IF NOT EXISTS `rov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ec` float NOT NULL,
  `orp` float NOT NULL,
  `do` float NOT NULL,
  `ph` float NOT NULL,
  `latitude` float(44,22) NOT NULL,
  `longitude` float(44,22) NOT NULL,
  `image` varchar(50) NOT NULL,
  `rov_id` int(11) NOT NULL,
  `rov_name` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

# Dumping data for table karang.rov: ~13 rows (approximately)
DELETE FROM `rov`;
/*!40000 ALTER TABLE `rov` DISABLE KEYS */;
INSERT INTO `rov` (`id`, `timestamp`, `ec`, `orp`, `do`, `ph`, `latitude`, `longitude`, `image`, `rov_id`, `rov_name`) VALUES
	(1, '2016-03-22 21:37:23', 802.5, 1016.4, 9.33, 5.525, -7.2768969535827640000000, 112.7907867431640600000000, 'karang1.jpg', 1, 'Satu'),
	(2, '2016-03-22 21:42:28', 802.4, 1016.3, 9.31, 5.528, -7.2768697738647460000000, 112.7907867431640600000000, 'karang1.jpg', 1, 'Satu'),
	(3, '2016-03-22 21:57:28', 802.2, 1016.4, 9.34, 5.523, -7.2768969535827640000000, 112.7907867431640600000000, 'karang1.jpg', 1, 'Satu'),
	(4, '2016-03-22 21:58:28', 802.9, 1016.3, 9.34, 5.528, -7.2768697738647460000000, 112.7907867431640600000000, 'karang1.jpg', 1, 'Satu'),
	(5, '2016-03-22 21:59:18', 800.4, 1016.3, 9.31, 5.528, -7.2259092330932620000000, 112.7891616821289000000000, 'karang1.jpg', 2, 'Dua'),
	(6, '2016-03-22 21:59:18', 800.4, 1016.3, 9.29, 5.528, -7.2514529228210450000000, 112.8118209838867200000000, 'karang2.jpg', 3, 'Tiga'),
	(7, '2016-03-22 21:59:24', 800.4, 1016.3, 9.31, 5.526, -7.2259092330932620000000, 112.7891616821289000000000, 'karang1.jpg', 2, 'Dua'),
	(8, '2016-03-22 21:59:24', 800.4, 1016.3, 9.29, 5.528, -7.2514529228210450000000, 112.8118209838867200000000, 'karang2.jpg', 3, 'Tiga'),
	(13, '2016-03-24 15:46:49', 800.4, 1016.3, 9.29, 5.528, 0.0000000000000000000000, 0.0000000000000000000000, 'karang2.jpg', 3, 'Tiga'),
	(14, '2016-03-24 15:49:51', 800.4, 1016.3, 9.29, 5.528, 0.0000000000000000000000, 0.0000000000000000000000, 'karang2.jpg', 3, 'Tiga'),
	(15, '2016-03-24 15:54:05', 800.4, 1016.3, 9.29, 5.528, 0.0000000000000000000000, 0.0000000000000000000000, 'karang2.jpg', 3, 'Tiga'),
	(16, '2016-03-24 16:02:55', 800.4, 1016.3, 9.29, 5.528, 0.0000000000000000000000, 0.0000000000000000000000, 'karang2.jpg', 3, 'Tiga'),
	(17, '2016-04-04 14:38:14', 802.8, 1016.2, 9.33, 5.628, -7.2768697738647460000000, 112.7907867431640600000000, 'karang1.jpg', 1, 'Satu');
/*!40000 ALTER TABLE `rov` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
