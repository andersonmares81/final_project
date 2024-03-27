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
-- Table structure for table `reviews`
--
DROP TABLE IF EXISTS `reviews`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `reviews` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `reviews`
--
LOCK TABLES `reviews` WRITE;

/*!40000 ALTER TABLE `reviews` DISABLE KEYS */


INSERT INTO
    `reviews`
VALUES
    (
        1,
        'reviews1.png',
        'On the Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or divertes no.',
        'Mike taylor',
        'Lahore',
        'Pakistan'
    ),
    (
        2,
        'reviews2.png',
        'On the Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or divertes no.',
        'John Cena',
        'Cairo',
        'Egypt'
    ),
    (
        3,
        'reviews3.png',
        'On the Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or divertes no.',
        'Ozy Cena',
        'CDX',
        'Mexico'
    );

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */
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