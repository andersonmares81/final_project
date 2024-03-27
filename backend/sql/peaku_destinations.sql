-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: peaku
-- ------------------------------------------------------
-- Server version	8.0.33
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!50503 SET NAMES utf8 */
;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;

/*!40103 SET TIME_ZONE='+00:00' */
;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `destinations`
--
DROP TABLE IF EXISTS `destinations`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `destinations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `descriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rates` decimal(20, 2) NOT NULL,
  `discounts` decimal(20, 2) NOT NULL DEFAULT '0.00',
  `qualification` decimal(20, 2) NOT NULL DEFAULT '0.00',
  `duration` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destinationscol` int DEFAULT NULL,
  `datepublish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `destinations`
--
LOCK TABLES `destinations` WRITE;

/*!40000 ALTER TABLE `destinations` DISABLE KEYS */
;

INSERT INTO
  `destinations`
VALUES
  (
    1,
    'Paris',
    'France',
    'Explore the Eiffel Tower and Louvre Museum',
    'Paris.png',
    2500.00,
    2300.00,
    4.90,
    '10 days trip',
    1,
    '2024-03-12'
  ),
(
    2,
    'Rome',
    'Italy',
    'Experience the Colosseum and Trevi Fountain',
    'Firenze.png',
    1800.00,
    1650.00,
    4.80,
    '3 days trip',
    0,
    '2024-03-12'
  ),
(
    3,
    'London',
    'England',
    'Visit Buckingham Palace and Big Ben',
    'Madrid.png',
    1950.00,
    1800.00,
    4.70,
    '7 days trip',
    1,
    '2024-03-12'
  ),
(
    4,
    'Prague',
    'Czech Republic',
    'Discover the Charles Bridge and Prague Castle',
    'London.png',
    1200.00,
    1100.00,
    4.60,
    '6 days trip',
    0,
    '2024-03-12'
  ),
(
    5,
    'Amsterdam',
    'Netherlands',
    'Explore canals and museums',
    'Paris.png',
    1400.00,
    1300.00,
    4.50,
    '12 days trip',
    1,
    '2024-03-12'
  ),
(
    6,
    'Barcelona',
    'Spain',
    'Enjoy the vibrant city life',
    'Firenze.png',
    1630.00,
    1520.00,
    4.70,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    7,
    'Berlin',
    'Germany',
    'Explore the Brandenburg Gate and historical sites',
    'Madrid.png',
    1350.00,
    1250.00,
    4.60,
    '8 days trip',
    1,
    '2024-03-12'
  ),
(
    8,
    'Budapest',
    'Hungary',
    'Relax in thermal baths and explore architecture',
    'London.png',
    1000.00,
    900.00,
    4.50,
    '10 days trip',
    0,
    '2024-03-12'
  ),
(
    9,
    'Athens',
    'Greece',
    'Visit the Acropolis and Parthenon',
    'Paris.png',
    1150.00,
    1050.00,
    4.40,
    '3 days trip',
    0,
    '2024-03-12'
  ),
(
    10,
    'Lisbon',
    'Portugal',
    'Explore historical sites and enjoy the beaches',
    'Firenze.png',
    1080.00,
    980.00,
    4.30,
    '7 days trip',
    1,
    '2024-03-12'
  ),
(
    11,
    'New York City',
    'USA',
    'Explore iconic landmarks and vibrant culture',
    'Madrid.png',
    3200.00,
    3000.00,
    4.90,
    '6 days trip',
    1,
    '2024-03-12'
  ),
(
    12,
    'Los Angeles',
    'USA',
    'Experience Hollywood, beaches, and theme parks',
    'London.png',
    2800.00,
    2600.00,
    4.80,
    '12 days trip',
    0,
    '2024-03-12'
  ),
(
    13,
    'Toronto',
    'Canada',
    'Discover multicultural city life and natural beauty',
    'Paris.png',
    1900.00,
    1750.00,
    4.70,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    14,
    'Rio de Janeiro',
    'Brazil',
    'Enjoy the beaches, Carnival, and Christ the Redeemer',
    'Firenze.png',
    2100.00,
    1900.00,
    4.60,
    '8 days trip',
    0,
    '2024-03-12'
  ),
(
    15,
    'Machu Picchu',
    'Peru',
    'Explore the ancient Inca citadel',
    'Madrid.png',
    2500.00,
    2300.00,
    4.50,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    16,
    'Buenos Aires',
    'Argentina',
    'Experience tango, culture, and delicious food',
    'London.png',
    1600.00,
    1450.00,
    4.40,
    '3 days trip',
    0,
    '2024-03-12'
  ),
(
    17,
    'Patagonia',
    'Argentina',
    'Hike stunning glaciers and mountains',
    'Paris.png',
    1800.00,
    1650.00,
    4.30,
    '10 days trip',
    0,
    '2024-03-12'
  ),
(
    18,
    'Cancun',
    'Mexico',
    'Relax on beautiful beaches and explore Mayan ruins',
    'Firenze.png',
    2000.00,
    1800.00,
    4.20,
    '7 days trip',
    0,
    '2024-03-12'
  ),
(
    19,
    'San Francisco',
    'USA',
    'Explore Golden Gate Bridge and tech culture',
    'Madrid.png',
    2400.00,
    2200.00,
    4.10,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    20,
    'Las Vegas',
    'USA',
    'Enjoy gambling, shows, and nightlife',
    'London.png',
    2300.00,
    2100.00,
    4.00,
    '10 days trip',
    0,
    '2024-03-12'
  ),
(
    21,
    'Tokyo',
    'Japan',
    'Experience culture and technology',
    'Paris.png',
    3000.00,
    2800.00,
    4.90,
    '3 days trip',
    0,
    '2024-03-12'
  ),
(
    22,
    'Beijing',
    'China',
    'Visit the Great Wall and Forbidden City',
    'Firenze.png',
    2200.00,
    2000.00,
    4.80,
    '7 days trip',
    1,
    '2024-03-12'
  ),
(
    23,
    'Singapore',
    'Singapore',
    'Discover a vibrant mix of cultures',
    'Madrid.png',
    1800.00,
    1650.00,
    4.70,
    '6 days trip',
    0,
    '2024-03-12'
  ),
(
    24,
    'Bali',
    'Indonesia',
    'Relax on beautiful beaches and experience temples',
    'London.png',
    1500.00,
    1350.00,
    4.60,
    '12 days trip',
    0,
    '2024-03-12'
  ),
(
    25,
    'Agra',
    'India',
    'Visit the Taj Mahal, a wonder of the world',
    'Paris.png',
    1200.00,
    1100.00,
    4.50,
    '5 days trip',
    1,
    '2024-03-12'
  ),
(
    26,
    'Bangkok',
    'Thailand',
    'Explore temples and floating markets',
    'Firenze.png',
    1400.00,
    1300.00,
    4.40,
    '8 days trip',
    1,
    '2024-03-12'
  ),
(
    27,
    'Hoi An',
    'Vietnam',
    'Explore the colorful ancient town',
    'Madrid.png',
    1000.00,
    900.00,
    4.30,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    28,
    'Lombong',
    'Indonesia',
    'Experience stunning scenery and volcanic landscapes',
    'London.png',
    1100.00,
    1000.00,
    4.20,
    '3 days trip',
    0,
    '2024-03-12'
  ),
(
    29,
    'Kuala Lumpur',
    'Malaysia',
    'Explore Petronas Twin Towers and diverse culture',
    'Paris.png',
    1300.00,
    1200.00,
    4.10,
    '10 days trip',
    0,
    '2024-03-12'
  ),
(
    30,
    'Angkor Wat',
    'Cambodia',
    'Explore the magnificent temple complex',
    'Firenze.png',
    1600.00,
    1450.00,
    4.00,
    '7 days trip',
    0,
    '2024-03-12'
  ),
(
    31,
    'Cape Town',
    'South Africa',
    'Experience stunning scenery, wildlife, and beaches',
    'Madrid.png',
    2000.00,
    1800.00,
    4.90,
    '5 days trip',
    0,
    '2024-03-12'
  ),
(
    32,
    'Marrakech',
    'Morocco',
    'Explore vibrant markets, palaces, and desert landscapes',
    'London.png',
    1500.00,
    1350.00,
    4.80,
    '12 days trip',
    0,
    '2024-03-12'
  ),
(
    33,
    'Victoria Falls',
    'Zambia/Zimbabwe',
    'Witness the power of the worlds largest waterfall',
    'Paris.png',
    1800.00,
    1650.00,
    4.70,
    '10 days trip',
    0,
    '2024-03-12'
  ),
(
    34,
    'Serengeti National Park',
    'Tanzania',
    'Go on a safari and see incredible wildlife',
    'Firenze.png',
    2500.00,
    2300.00,
    4.60,
    '3 days trip',
    1,
    '2024-03-12'
  ),
(
    35,
    'Masai Mara National Reserve',
    'Kenya',
    'Experience the Great Migration and diverse wildlife',
    'Madrid.png',
    2200.00,
    2000.00,
    4.50,
    '7 days trip',
    1,
    '2024-03-12'
  ),
(
    36,
    'Luxor',
    'Egypt',
    'Explore ancient temples and tombs',
    'London.png',
    1600.00,
    1450.00,
    4.40,
    '6 days trip',
    0,
    '2024-03-12'
  ),
(
    37,
    'Zanzibar',
    'Tanzania',
    'Relax on beautiful beaches and explore historical sites',
    'Paris.png',
    1700.00,
    1550.00,
    4.30,
    '12 days trip',
    1,
    '2024-03-12'
  ),
(
    38,
    'Chefchaouen',
    'Morocco',
    'Explore the \"Blue Pearl\" city with its unique architecture',
    'Firenze.png',
    1200.00,
    1100.00,
    4.20,
    '5 days trip',
    1,
    '2024-03-12'
  ),
(
    39,
    'Cape Winelands',
    'South Africa',
    'Enjoy wine tasting and beautiful scenery',
    'Madrid.png',
    1400.00,
    1300.00,
    4.10,
    '8 days trip',
    0,
    '2024-03-12'
  ),
(
    40,
    'Botswana Delta',
    'Botswana',
    'Experience a luxurious safari and unique wildlife',
    'London.png',
    3000.00,
    2800.00,
    4.00,
    '5 days trip',
    1,
    '2024-03-12'
  );

/*!40000 ALTER TABLE `destinations` ENABLE KEYS */
;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2024-03-26  0:28:03