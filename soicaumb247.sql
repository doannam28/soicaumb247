-- MariaDB dump 10.19  Distrib 10.10.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: soicaumb247
-- ------------------------------------------------------
-- Server version	10.10.7-MariaDB-1:10.10.7+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES
(1,0,1,'Các danh mục trong trang','fa-bar-chart','/',NULL,NULL,'2025-09-28 14:32:09'),
(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),
(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),
(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),
(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),
(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),
(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),
(8,1,0,'Danh mục','fa-bars','/taxonomies',NULL,'2025-09-28 14:31:46','2025-09-28 14:32:26'),
(9,1,0,'Danh mục con','fa-bars','/taxonomy-items',NULL,'2025-09-28 14:32:48','2025-09-28 14:33:03');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES
(1,1,'admin','GET','172.19.0.1','[]','2025-09-28 10:26:54','2025-09-28 10:26:54'),
(2,1,'admin','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 10:27:08','2025-09-28 10:27:08'),
(3,1,'admin','GET','172.19.0.1','[]','2025-09-28 14:29:57','2025-09-28 14:29:57'),
(4,1,'admin/auth/menu','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:30:22','2025-09-28 14:30:22'),
(5,1,'admin/auth/menu/1/edit','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:30:43','2025-09-28 14:30:43'),
(6,1,'admin/auth/menu/1','PUT','172.19.0.1','{\"parent_id\":\"0\",\"title\":\"Taxonomy\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/auth\\/menu\"}','2025-09-28 14:31:11','2025-09-28 14:31:11'),
(7,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:31:11','2025-09-28 14:31:11'),
(8,1,'admin/auth/menu','POST','172.19.0.1','{\"parent_id\":\"1\",\"title\":\"Taxonomy\",\"icon\":\"fa-bars\",\"uri\":\"\\/taxonomies\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\"}','2025-09-28 14:31:46','2025-09-28 14:31:46'),
(9,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:31:46','2025-09-28 14:31:46'),
(10,1,'admin/auth/menu/1/edit','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:31:59','2025-09-28 14:31:59'),
(11,1,'admin/auth/menu/1','PUT','172.19.0.1','{\"parent_id\":\"0\",\"title\":\"C\\u00e1c danh m\\u1ee5c trong trang\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/auth\\/menu\"}','2025-09-28 14:32:09','2025-09-28 14:32:09'),
(12,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:32:09','2025-09-28 14:32:09'),
(13,1,'admin/auth/menu/8/edit','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:32:12','2025-09-28 14:32:12'),
(14,1,'admin/auth/menu/8','PUT','172.19.0.1','{\"parent_id\":\"1\",\"title\":\"Taxonomy\",\"icon\":\"fa-bars\",\"uri\":\"\\/taxonomies\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/auth\\/menu\"}','2025-09-28 14:32:16','2025-09-28 14:32:16'),
(15,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:32:16','2025-09-28 14:32:16'),
(16,1,'admin/auth/menu/8/edit','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:32:19','2025-09-28 14:32:19'),
(17,1,'admin/auth/menu/8','PUT','172.19.0.1','{\"parent_id\":\"1\",\"title\":\"Danh m\\u1ee5c\",\"icon\":\"fa-bars\",\"uri\":\"\\/taxonomies\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/auth\\/menu\"}','2025-09-28 14:32:26','2025-09-28 14:32:26'),
(18,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:32:26','2025-09-28 14:32:26'),
(19,1,'admin/auth/menu','POST','172.19.0.1','{\"parent_id\":\"0\",\"title\":\"Danh m\\u1ee5c con\",\"icon\":\"fa-bars\",\"uri\":\"\\/taxonomy-items\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\"}','2025-09-28 14:32:48','2025-09-28 14:32:48'),
(20,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:32:48','2025-09-28 14:32:48'),
(21,1,'admin/auth/menu/9/edit','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:32:55','2025-09-28 14:32:55'),
(22,1,'admin/auth/menu/9','PUT','172.19.0.1','{\"parent_id\":\"1\",\"title\":\"Danh m\\u1ee5c con\",\"icon\":\"fa-bars\",\"uri\":\"\\/taxonomy-items\",\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/auth\\/menu\"}','2025-09-28 14:33:02','2025-09-28 14:33:02'),
(23,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:33:03','2025-09-28 14:33:03'),
(24,1,'admin/auth/menu','POST','172.19.0.1','{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\"}','2025-09-28 14:33:05','2025-09-28 14:33:05'),
(25,1,'admin/auth/menu','GET','172.19.0.1','[]','2025-09-28 14:33:05','2025-09-28 14:33:05'),
(26,1,'admin','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:33:09','2025-09-28 14:33:09'),
(27,1,'admin','GET','172.19.0.1','[]','2025-09-28 14:33:11','2025-09-28 14:33:11'),
(28,1,'admin/taxonomies','GET','172.19.0.1','[]','2025-09-28 14:33:39','2025-09-28 14:33:39'),
(29,1,'admin/taxonomies','GET','172.19.0.1','[]','2025-09-28 14:34:06','2025-09-28 14:34:06'),
(30,1,'admin/taxonomies','GET','172.19.0.1','[]','2025-09-28 14:35:34','2025-09-28 14:35:34'),
(31,1,'admin/taxonomy-items','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:35:40','2025-09-28 14:35:40'),
(32,1,'admin/taxonomies','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:35:43','2025-09-28 14:35:43'),
(33,1,'admin/taxonomies/create','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:35:45','2025-09-28 14:35:45'),
(34,1,'admin/taxonomies','POST','172.19.0.1','{\"name\":\"Danh m\\u1ee5c Tin t\\u1ee9c\",\"slug\":null,\"status\":\"on\",\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\",\"_previous_\":\"http:\\/\\/soicaumb247.local\\/admin\\/taxonomies\"}','2025-09-28 14:35:56','2025-09-28 14:35:56'),
(35,1,'admin/taxonomies/create','GET','172.19.0.1','[]','2025-09-28 14:35:58','2025-09-28 14:35:58'),
(36,1,'admin/taxonomies','POST','172.19.0.1','{\"name\":\"Danh m\\u1ee5c Tin t\\u1ee9c\",\"slug\":\"danh-muc-tin-tuc\",\"status\":\"on\",\"_token\":\"3rL7ZWHnnoYOIo4ixZ3Eu1xEKOI7sUMdQA4k4uns\"}','2025-09-28 14:36:20','2025-09-28 14:36:20'),
(37,1,'admin/taxonomies','GET','172.19.0.1','[]','2025-09-28 14:36:20','2025-09-28 14:36:20'),
(38,1,'admin/taxonomy-items','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:36:25','2025-09-28 14:36:25'),
(39,1,'admin/taxonomy-items/create','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:36:29','2025-09-28 14:36:29'),
(40,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:36:30','2025-09-28 14:36:30'),
(41,1,'admin/taxonomy-items/create','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:37:35','2025-09-28 14:37:35'),
(42,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:37:36','2025-09-28 14:37:36'),
(43,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:38:40','2025-09-28 14:38:40'),
(44,1,'admin/taxonomy-items/create','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:38:43','2025-09-28 14:38:43'),
(45,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:38:44','2025-09-28 14:38:44'),
(46,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:39:44','2025-09-28 14:39:44'),
(47,1,'admin/taxonomy-items/create','GET','172.19.0.1','{\"_pjax\":\"#pjax-container\"}','2025-09-28 14:39:46','2025-09-28 14:39:46'),
(48,1,'admin/taxonomy-items','GET','172.19.0.1','[]','2025-09-28 14:39:48','2025-09-28 14:39:48');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES
(1,'All permission','*','','*',NULL,NULL),
(2,'Dashboard','dashboard','GET','/',NULL,NULL),
(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES
(1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES
(1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES
(1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES
(1,'Administrator','administrator','2025-09-28 10:21:54','2025-09-28 10:21:54');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES
(1,'admin','$2y$12$bTLSTpd/IuyxvWJJAmosBeOCa0RMka3WZr4/f0eI2l0d4eITS7Uqy','Administrator',NULL,'NJ3abrQvRwxQLHgeLfdo7u9VzS1MJyEt7jsUmUyvEb5meGlSLM7TS11m283m','2025-09-28 10:21:54','2025-09-28 10:21:54');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2016_01_04_173148_create_admin_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('zRJcurPZcZkNIko8Zr2tEP9Hl4xaYUjdPaoTZP9B',1,'172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3JMN1pXSG5ub1lPSW80aXhaM0V1MXhFS09JN3NVTWRRQTRrNHVucyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9zb2ljYXVtYjI0Ny5sb2NhbC9hZG1pbi90YXhvbm9teS1pdGVtcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1759070388);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomies`
--

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
INSERT INTO `taxonomies` VALUES
(1,'Danh mục Tin tức','danh-muc-tin-tuc',1,'2025-09-28 14:36:20','2025-09-28 14:36:20');
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_items`
--

DROP TABLE IF EXISTS `taxonomy_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taxonomy_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taxonomy_items_taxonomy_id_foreign` (`taxonomy_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_items`
--

LOCK TABLES `taxonomy_items` WRITE;
/*!40000 ALTER TABLE `taxonomy_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 14:50:46
