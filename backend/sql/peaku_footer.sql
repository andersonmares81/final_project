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
-- Table structure for table `footer`
--
DROP TABLE IF EXISTS `footer`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `footer` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `slogan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_item_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_item_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_item_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `company_item_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_item_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_item_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `contact_item_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `more_item_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `more_item_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `more_item_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `footer`
--

/*!40000 ALTER TABLE `footer` DISABLE KEYS */


INSERT INTO
    `footer`
VALUES
    (
        1,
        'Logo.png',
        'Book your trip in a minute, get full control for much longer.',
        'About',
        'Careers',
        'Logistic',
        'Privacy & Policy',
        'Help/FAQ',
        'Press',
        'Affiliates',
        'Press centre',
        'Our blog',
        'Low fare tips'
    );

/*!40000 ALTER TABLE `footer` ENABLE KEYS */
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