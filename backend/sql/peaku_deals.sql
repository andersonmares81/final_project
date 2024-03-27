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
-- Table structure for table `deals`
--
DROP TABLE IF EXISTS `deals`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `deals` (
    `id` int NOT NULL AUTO_INCREMENT,
    `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `rate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `oldprice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `deals`
--
LOCK TABLES `deals` WRITE;

/*!40000 ALTER TABLE `deals` DISABLE KEYS */


INSERT INTO
    `deals`
VALUES
    (
        1,
        'Deals-card-1.png',
        'Madrid',
        '4.8',
        'Spain',
        '950',
        '660'
    ),
    (
        2,
        'Deals-card-2.png',
        'Firenze',
        '4.2',
        'Italy',
        '799',
        '699'
    ),
    (
        3,
        'Deals-card-3.png',
        'Paris',
        '4.6',
        'France',
        '699',
        '599'
    ),
    (
        4,
        'Deals-card-4.png',
        'London',
        '3.9',
        'UK',
        '830',
        '730'
    ),
    (
        5,
        'Deals-card-5.png',
        'Gante',
        '4.7',
        'Belgium',
        '650',
        '599'
    ),
    (
        6,
        'Deals-card-6.png',
        'Hoi An',
        '4.5',
        'Vietnam',
        '499',
        '450'
    ),
    (
        7,
        'Deals-card-7.png',
        'Salónica',
        '4.9',
        'Greece',
        '750',
        '599'
    ),
    (
        8,
        'Deals-card-8.png',
        'Gdansk',
        '4.8',
        'Poland',
        '580',
        '499'
    ),
    (
        9,
        'Deals-card-9.png',
        'Lviv',
        '4.1',
        'Ukraine',
        '610',
        '550'
    ),
    (
        10,
        'Deals-card-10.png',
        'Cuenca',
        '4.4',
        'Ecuador',
        '899',
        '799'
    ),
    (
        11,
        'Deals-card-11.png',
        'Essaouira',
        '4.7',
        'Morocco',
        '999',
        '799'
    ),
    (
        12,
        'Deals-card-12.png',
        'Brasov',
        '4.9',
        'Romania',
        '570',
        '460'
    );

/*!40000 ALTER TABLE `deals` ENABLE KEYS */
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