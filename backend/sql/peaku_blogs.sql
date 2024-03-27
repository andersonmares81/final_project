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
-- Table structure for table `blog`
--
DROP TABLE IF EXISTS `blog`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `blog` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
    `date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `blog`
--

/*!40000 ALTER TABLE `blog` DISABLE KEYS */


INSERT INTO
    `blog`
VALUES
    (
        1,
        'blog01.png',
        'The Amazing Difference a Year <br/>of Travelling',
        'July 27, 2023'
    ),
    (
        2,
        'blog02.png',
        'Travel far enough, you meet <br/>yourself',
        'August 13, 2023'
    ),
    (
        3,
        'blog03.png',
        'Reflections on 5 Months of <br/>Travel: Time to Hang',
        'February 29, 2024'
    ),
    (
        4,
        'blog04.png',
        'How to Save Money While <br/>Visiting Africa',
        'June 5, 2022'
    ),
    (
        5,
        'blog05.png',
        'Beyond Borders: Embracing the<br/>Unknown in Your Travels',
        'October 23, 2023'
    ),
    (
        6,
        'blog06.png',
        'Embracing Serendipity: Unexpected<br/>Encounters on the Road',
        'November 4, 20231'
    ),
    (
        7,
        'blog07.png',
        'Navigating the Unknown: Finding<br/>Yourself in Unfamiliar Lands',
        'September 15, 2022'
    ),
    (
        8,
        'blog08.png',
        'Unveiling Cultural Treasures:<br/>Exploring the Tradition Heart',
        'March 17, 2024'
    ),
    (
        9,
        'blog09.png',
        'Wanderlust Chronicles: One<br/>Year, Countless Adventures',
        'March 5, 2021'
    ),
    (
        10,
        'blog10.jpg',
        'A Year Abroad: Tales<br/>of Adventure and Growth',
        'August 10, 2022'
    ),
    (
        11,
        'blog11.png',
        'Roaming the Globe:<br/>One Year, Infinite Memories',
        'January 31, 2020'
    ),
    (
        12,
        'blog12.png',
        'Global Escapades:<br/>Chronicles of a Yearlong Expedition',
        'June 17, 2021'
    );

/*!40000 ALTER TABLE `blog` ENABLE KEYS */
;

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