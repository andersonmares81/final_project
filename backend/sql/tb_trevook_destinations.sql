-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para peaku
CREATE DATABASE IF NOT EXISTS `peaku` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peaku`;

-- Volcando estructura para tabla peaku.destinations
CREATE TABLE IF NOT EXISTS `destinations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `descriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rates` decimal(20,2) NOT NULL,
  `discounts` decimal(20,2) NOT NULL DEFAULT '0.00',
  `qualification` decimal(20,2) NOT NULL DEFAULT '0.00',
  `datepublish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla peaku.destinations: ~40 rows (aproximadamente)
DELETE FROM `destinations`;
INSERT INTO `destinations` (`id`, `city`, `country`, `descriptions`, `rates`, `discounts`, `qualification`, `datepublish`) VALUES
	(1, 'Paris', 'France', 'Explore the Eiffel Tower and Louvre Museum', 2500.00, 2300.00, 4.90, '2024-03-12'),
	(2, 'Rome', 'Italy', 'Experience the Colosseum and Trevi Fountain', 1800.00, 1650.00, 4.80, '2024-03-12'),
	(3, 'London', 'England', 'Visit Buckingham Palace and Big Ben', 1950.00, 1800.00, 4.70, '2024-03-12'),
	(4, 'Prague', 'Czech Republic', 'Discover the Charles Bridge and Prague Castle', 1200.00, 1100.00, 4.60, '2024-03-12'),
	(5, 'Amsterdam', 'Netherlands', 'Explore canals and museums', 1400.00, 1300.00, 4.50, '2024-03-12'),
	(6, 'Barcelona', 'Spain', 'Enjoy the vibrant city life', 1630.00, 1520.00, 4.70, '2024-03-12'),
	(7, 'Berlin', 'Germany', 'Explore the Brandenburg Gate and historical sites', 1350.00, 1250.00, 4.60, '2024-03-12'),
	(8, 'Budapest', 'Hungary', 'Relax in thermal baths and explore architecture', 1000.00, 900.00, 4.50, '2024-03-12'),
	(9, 'Athens', 'Greece', 'Visit the Acropolis and Parthenon', 1150.00, 1050.00, 4.40, '2024-03-12'),
	(10, 'Lisbon', 'Portugal', 'Explore historical sites and enjoy the beaches', 1080.00, 980.00, 4.30, '2024-03-12'),
	(11, 'New York City', 'USA', 'Explore iconic landmarks and vibrant culture', 3200.00, 3000.00, 4.90, '2024-03-12'),
	(12, 'Los Angeles', 'USA', 'Experience Hollywood, beaches, and theme parks', 2800.00, 2600.00, 4.80, '2024-03-12'),
	(13, 'Toronto', 'Canada', 'Discover multicultural city life and natural beauty', 1900.00, 1750.00, 4.70, '2024-03-12'),
	(14, 'Rio de Janeiro', 'Brazil', 'Enjoy the beaches, Carnival, and Christ the Redeemer', 2100.00, 1900.00, 4.60, '2024-03-12'),
	(15, 'Machu Picchu', 'Peru', 'Explore the ancient Inca citadel', 2500.00, 2300.00, 4.50, '2024-03-12'),
	(16, 'Buenos Aires', 'Argentina', 'Experience tango, culture, and delicious food', 1600.00, 1450.00, 4.40, '2024-03-12'),
	(17, 'Patagonia', 'Argentina', 'Hike stunning glaciers and mountains', 1800.00, 1650.00, 4.30, '2024-03-12'),
	(18, 'Cancun', 'Mexico', 'Relax on beautiful beaches and explore Mayan ruins', 2000.00, 1800.00, 4.20, '2024-03-12'),
	(19, 'San Francisco', 'USA', 'Explore Golden Gate Bridge and tech culture', 2400.00, 2200.00, 4.10, '2024-03-12'),
	(20, 'Las Vegas', 'USA', 'Enjoy gambling, shows, and nightlife', 2300.00, 2100.00, 4.00, '2024-03-12'),
	(21, 'Tokyo', 'Japan', 'Experience culture and technology', 3000.00, 2800.00, 4.90, '2024-03-12'),
	(22, 'Beijing', 'China', 'Visit the Great Wall and Forbidden City', 2200.00, 2000.00, 4.80, '2024-03-12'),
	(23, 'Singapore', 'Singapore', 'Discover a vibrant mix of cultures', 1800.00, 1650.00, 4.70, '2024-03-12'),
	(24, 'Bali', 'Indonesia', 'Relax on beautiful beaches and experience temples', 1500.00, 1350.00, 4.60, '2024-03-12'),
	(25, 'Agra', 'India', 'Visit the Taj Mahal, a wonder of the world', 1200.00, 1100.00, 4.50, '2024-03-12'),
	(26, 'Bangkok', 'Thailand', 'Explore temples and floating markets', 1400.00, 1300.00, 4.40, '2024-03-12'),
	(27, 'Hoi An', 'Vietnam', 'Explore the colorful ancient town', 1000.00, 900.00, 4.30, '2024-03-12'),
	(28, 'Lombong', 'Indonesia', 'Experience stunning scenery and volcanic landscapes', 1100.00, 1000.00, 4.20, '2024-03-12'),
	(29, 'Kuala Lumpur', 'Malaysia', 'Explore Petronas Twin Towers and diverse culture', 1300.00, 1200.00, 4.10, '2024-03-12'),
	(30, 'Angkor Wat', 'Cambodia', 'Explore the magnificent temple complex', 1600.00, 1450.00, 4.00, '2024-03-12'),
	(31, 'Cape Town', 'South Africa', 'Experience stunning scenery, wildlife, and beaches', 2000.00, 1800.00, 4.90, '2024-03-12'),
	(32, 'Marrakech', 'Morocco', 'Explore vibrant markets, palaces, and desert landscapes', 1500.00, 1350.00, 4.80, '2024-03-12'),
	(33, 'Victoria Falls', 'Zambia/Zimbabwe', 'Witness the power of the worlds largest waterfall', 1800.00, 1650.00, 4.70, '2024-03-12'),
	(34, 'Serengeti National Park', 'Tanzania', 'Go on a safari and see incredible wildlife', 2500.00, 2300.00, 4.60, '2024-03-12'),
	(35, 'Masai Mara National Reserve', 'Kenya', 'Experience the Great Migration and diverse wildlife', 2200.00, 2000.00, 4.50, '2024-03-12'),
	(36, 'Luxor', 'Egypt', 'Explore ancient temples and tombs', 1600.00, 1450.00, 4.40, '2024-03-12'),
	(37, 'Zanzibar', 'Tanzania', 'Relax on beautiful beaches and explore historical sites', 1700.00, 1550.00, 4.30, '2024-03-12'),
	(38, 'Chefchaouen', 'Morocco', 'Explore the "Blue Pearl" city with its unique architecture', 1200.00, 1100.00, 4.20, '2024-03-12'),
	(39, 'Cape Winelands', 'South Africa', 'Enjoy wine tasting and beautiful scenery', 1400.00, 1300.00, 4.10, '2024-03-12'),
	(40, 'Botswana Delta', 'Botswana', 'Experience a luxurious safari and unique wildlife', 3000.00, 2800.00, 4.00, '2024-03-12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
