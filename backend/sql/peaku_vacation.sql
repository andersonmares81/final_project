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
-- Table structure for table `vacations`
--
DROP TABLE IF EXISTS `vacations`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `vacations` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `location` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `duration` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `rate` decimal(20, 2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `vacations`
--
LOCK TABLES `vacations` WRITE;

/*!40000 ALTER TABLE `vacations` DISABLE KEYS */
;

INSERT INTO
    `vacations`
VALUES
    (
        1,
        'vacation01.png',
        'Rome, Italy',
        '5,42k',
        '10 days trip',
        4.80
    ),
    (
        2,
        'vacation02.png',
        'London, UK',
        '2,83k',
        '3 days trip',
        4.70
    ),
    (
        3,
        'vacation03.png',
        'Osaka, Japan',
        '1,53k',
        '7 days trip',
        5.00
    ),
    (
        4,
        'vacation04.png',
        'Estambul, Turkey',
        '3,71k',
        '6 days trip',
        4.50
    ),
    (
        5,
        'vacation05.png',
        'Cabo, Sudafrica',
        '4,5k',
        '12 days trip',
        3.90
    ),
    (
        6,
        'vacation06.png',
        'Hong Kong, China',
        '1,92k',
        '5 days trip',
        4.20
    ),
    (
        7,
        'vacation07.png',
        'Bangkok, Tailand',
        '2,03k',
        '8 days trip',
        4.90
    ),
    (
        8,
        'vacation08.png',
        'Buenos Aires, Argentina',
        '3,33k',
        '5 days trip',
        4.80
    ),
    (
        9,
        'vacation09.png',
        'Moscow, Russia',
        '0,87k',
        '3 days trip',
        4.30
    );

/*!40000 ALTER TABLE `vacations` ENABLE KEYS */
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