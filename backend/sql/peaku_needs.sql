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
-- Table structure for table `needs`
--
DROP TABLE IF EXISTS `needs`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `needs` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `needs`
--
LOCK TABLES `needs` WRITE;

/*!40000 ALTER TABLE `needs` DISABLE KEYS */


INSERT INTO
    `needs`
VALUES
    (
        1,
        'Things-icon-1.png',
        'Vector4857.png',
        'Sign up',
        'Completes all the work associated<br/> with planning and processing'
    ),
    (
        2,
        'Things-icon-2.png',
        'Vector4857.png',
        'Worth of money',
        'After successful access then book<br/>from exclusive deals & pricing'
    ),
    (
        3,
        'Things-icon-3.png',
        'Vector4857.png',
        'Exciting travel',
        'Start and explore a wide range of<br/>exciting travel experience'
    ),
    (
        4,
        'Things-icon-1.png',
        'Vector4857.png',
        'Effortless Planning',
        'Sign up and streamline your trip<br/>planning process effortlessly'
    ),
    (
        5,
        'Things-icon-2.png',
        'Vector4857.png',
        'Exclusive Deals',
        'Access exclusive deals and pricing<br/>after successful registration'
    ),
    (
        6,
        'Things-icon-3.png',
        'Vector4857.png',
        'Diverse Experiences',
        'Explore a wide array of exciting <br/>travel experiences'
    ),
    (
        7,
        'Things-icon-1.png',
        'Vector4857.png',
        'Exciting Adventures',
        'Explore diverse travel experiences <br/>with ease'
    ),
    (
        8,
        'Things-icon-2.png',
        'Vector4857.png',
        'Easy Planning',
        'Sign up for effortless trip and <br/>vacations organization'
    ),
    (
        9,
        'Things-icon-3.png',
        'Vector4857.png',
        'Simple Registration',
        'Sign up and start planning your <br/>trip instantly'
    );

/*!40000 ALTER TABLE `needs` ENABLE KEYS */
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