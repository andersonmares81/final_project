-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 *  /;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para peaku
CREATE DATABASE IF NOT EXISTS `peaku` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peaku`;

-- Volcando estructura para tabla peaku.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `autor` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `images` text COLLATE utf8mb4_unicode_ci,
  `datepublish` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `datecreate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.blogs: ~0 rows (aproximadamente)
DELETE FROM `blogs`;
INSERT INTO `blogs` (`id`, `name`, `content`, `autor`, `images`, `datepublish`, `datecreate`) VALUES
	(1, 'The Amazing Difference a Year of Travelling.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec tellus a ante faucibus ullamcorper sed vel nibh. Aliquam non tortor non urna ornare tristique dignissim ut augue. Aliquam urna ex, ultricies ut gravida sed, rutrum ac turpis. Curabitur a enim eleifend, tristique turpis eu, interdum neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut aliquam malesuada ex, quis semper nisl mattis a. Proin quis mi ac dolor malesuada scelerisque. In laoreet augue purus, fringilla lobortis nibh malesuada id. Donec quis quam laoreet, sagittis ex vitae, venenatis velit. Maecenas aliquam nibh vel ipsum rutrum, vitae auctor mi faucibus. In interdum est non diam pellentesque, a malesuada enim ultricies. Ut vitae elit ex. Aliquam feugiat nunc id turpis mollis porttitor.', 'Lorem Ipsum', '/images/blogs/blog01.png', 'July 27, 2021', '2024-03-12 17:27:42');

-- Volcando estructura para tabla peaku.calendar
CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(10) unsigned zerofill NOT NULL,
  `dia` int(10) unsigned zerofill NOT NULL,
  `mes` int(10) unsigned zerofill NOT NULL,
  `anio` int(10) unsigned zerofill NOT NULL,
  `semana` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.calendar: ~0 rows (aproximadamente)
DELETE FROM `calendar`;

-- Volcando estructura para tabla peaku.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int DEFAULT NULL,
  `firstname` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenSession` text COLLATE utf8mb4_unicode_ci,
  `datecreate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.clients: ~0 rows (aproximadamente)
DELETE FROM `clients`;

-- Volcando estructura para tabla peaku.destinations
CREATE TABLE IF NOT EXISTS `destinations` (
  `id` int NOT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rates` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `qualification` decimal(20,2) NOT NULL DEFAULT '0.00',
  `datepublish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.destinations: ~0 rows (aproximadamente)
DELETE FROM `destinations`;
INSERT INTO `destinations` (`id`, `city`, `country`, `descriptions`, `rates`, `discounts`, `qualification`, `datepublish`) VALUES
	(1, 'Madrid', 'Spain', 'Travel with your family', 850.000000, 830.000000, 4.80, '2024-03-12');

-- Volcando estructura para tabla peaku.language
CREATE TABLE IF NOT EXISTS `language` (
  `id` int DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.language: ~2 rows (aproximadamente)
DELETE FROM `language`;
INSERT INTO `language` (`id`, `language`, `lang`) VALUES
	(1, 'Spanish', 'sp'),
	(2, 'English', 'en');

-- Volcando estructura para tabla peaku.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone` int DEFAULT NULL,
  `roles` int DEFAULT NULL,
  `tokenSession` text COLLATE utf8mb4_unicode_ci,
  `datecreate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.users: ~0 rows (aproximadamente)
DELETE FROM `users`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
