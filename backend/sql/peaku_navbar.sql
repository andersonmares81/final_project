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
-- Table structure for table `navbar`
--
DROP TABLE IF EXISTS `navbar`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `navbar` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btn_txt_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `btn_txt_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `navbar`
--
LOCK TABLES `navbar` WRITE;

/*!40000 ALTER TABLE `navbar` DISABLE KEYS */


INSERT INTO
    `navbar`
VALUES
    (
        1,
        'Logo-icon.png',
        'Home',
        'Sections',
        'About',
        'Subscribe',
        'Blog',
        'Login',
        'Sign up'
    );

/*!40000 ALTER TABLE `navbar` ENABLE KEYS */
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