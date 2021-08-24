-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','publications','monksam','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y'),('localhost','wordpress','wordpress','Y','Y','Y','Y','Y','Y','N','N','N','Y','N','N','N','N','N','N','N','N','N');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2019-07-14 12:50:51',NULL),('default',0,'memory_block_read_cost',NULL,'2019-07-14 12:50:51',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('debian-sys-maint','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('debian-sys-maint','localhost','AUDIT_ADMIN','Y'),('debian-sys-maint','localhost','BACKUP_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','CLONE_ADMIN','Y'),('debian-sys-maint','localhost','CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','ENCRYPTION_KEY_ADMIN','Y'),('debian-sys-maint','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('debian-sys-maint','localhost','FLUSH_STATUS','Y'),('debian-sys-maint','localhost','FLUSH_TABLES','Y'),('debian-sys-maint','localhost','FLUSH_USER_RESOURCES','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_ADMIN','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ENABLE','Y'),('debian-sys-maint','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','REPLICATION_APPLIER','Y'),('debian-sys-maint','localhost','REPLICATION_SLAVE_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_USER','Y'),('debian-sys-maint','localhost','ROLE_ADMIN','Y'),('debian-sys-maint','localhost','SERVICE_CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','SESSION_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','SET_USER_ID','Y'),('debian-sys-maint','localhost','SHOW_ROUTINE','Y'),('debian-sys-maint','localhost','SYSTEM_USER','Y'),('debian-sys-maint','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','XA_RECOVER_ADMIN','Y'),('monksam','localhost','APPLICATION_PASSWORD_ADMIN','N'),('monksam','localhost','AUDIT_ADMIN','N'),('monksam','localhost','BACKUP_ADMIN','N'),('monksam','localhost','BINLOG_ADMIN','N'),('monksam','localhost','BINLOG_ENCRYPTION_ADMIN','N'),('monksam','localhost','CLONE_ADMIN','N'),('monksam','localhost','CONNECTION_ADMIN','N'),('monksam','localhost','ENCRYPTION_KEY_ADMIN','N'),('monksam','localhost','FLUSH_OPTIMIZER_COSTS','N'),('monksam','localhost','FLUSH_STATUS','N'),('monksam','localhost','FLUSH_TABLES','N'),('monksam','localhost','FLUSH_USER_RESOURCES','N'),('monksam','localhost','GROUP_REPLICATION_ADMIN','N'),('monksam','localhost','INNODB_REDO_LOG_ARCHIVE','N'),('monksam','localhost','INNODB_REDO_LOG_ENABLE','N'),('monksam','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('monksam','localhost','REPLICATION_APPLIER','N'),('monksam','localhost','REPLICATION_SLAVE_ADMIN','N'),('monksam','localhost','RESOURCE_GROUP_ADMIN','N'),('monksam','localhost','RESOURCE_GROUP_USER','N'),('monksam','localhost','ROLE_ADMIN','N'),('monksam','localhost','SERVICE_CONNECTION_ADMIN','N'),('monksam','localhost','SESSION_VARIABLES_ADMIN','N'),('monksam','localhost','SET_USER_ID','N'),('monksam','localhost','SHOW_ROUTINE','N'),('monksam','localhost','SYSTEM_USER','N'),('monksam','localhost','SYSTEM_VARIABLES_ADMIN','N'),('monksam','localhost','TABLE_ENCRYPTION_ADMIN','N'),('monksam','localhost','XA_RECOVER_ADMIN','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','BINLOG_ADMIN','N'),('mysql.session','localhost','BINLOG_ENCRYPTION_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','ENCRYPTION_KEY_ADMIN','N'),('mysql.session','localhost','GROUP_REPLICATION_ADMIN','N'),('mysql.session','localhost','INNODB_REDO_LOG_ENABLE','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','REPLICATION_APPLIER','N'),('mysql.session','localhost','REPLICATION_SLAVE_ADMIN','N'),('mysql.session','localhost','RESOURCE_GROUP_ADMIN','N'),('mysql.session','localhost','RESOURCE_GROUP_USER','N'),('mysql.session','localhost','ROLE_ADMIN','N'),('mysql.session','localhost','SERVICE_CONNECTION_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SET_USER_ID','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.session','localhost','XA_RECOVER_ADMIN','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=latin1 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Compound Statements',0,''),(44,'Account Management',0,''),(45,'Table Maintenance',0,''),(46,'User-Defined Functions',0,''),(47,'Components',0,''),(48,'Plugins',0,''),(49,'Utility',0,''),(50,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(264,'&'),(421,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(422,'->'),(424,'->>'),(87,'/'),(75,':='),(59,'<'),(266,'<<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(267,'>>'),(90,'ABS'),(851,'ACCOUNT'),(91,'ACOS'),(655,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(877,'ADMIN'),(270,'AES_DECRYPT'),(271,'AES_ENCRYPT'),(578,'AFTER'),(247,'AGAINST'),(898,'AGGREGATE'),(579,'ALGORITHM'),(718,'ALL'),(50,'ALTER'),(580,'ANALYZE'),(62,'AND'),(525,'ANY_VALUE'),(656,'ARCHIVE'),(254,'ARRAY'),(719,'AS'),(463,'ASC'),(185,'ASCII'),(92,'ASIN'),(6,'ASYMMETRIC_DECRYPT'),(7,'ASYMMETRIC_DERIVE'),(8,'ASYMMETRIC_ENCRYPT'),(9,'ASYMMETRIC_SIGN'),(10,'ASYMMETRIC_VERIFY'),(639,'AT'),(93,'ATAN'),(94,'ATAN2'),(852,'ATTRIBUTE'),(740,'AUTOCOMMIT'),(678,'AUTOEXTEND_SIZE'),(581,'AUTO_INCREMENT'),(457,'AVG'),(582,'AVG_ROW_LENGTH'),(752,'BACKUP'),(766,'BEFORE'),(741,'BEGIN'),(288,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(561,'BINLOG'),(526,'BIN_TO_UUID'),(459,'BIT_AND'),(269,'BIT_COUNT'),(187,'BIT_LENGTH'),(460,'BIT_OR'),(461,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(643,'BTREE'),(464,'BY'),(42,'BYTE'),(933,'CACHE'),(686,'CALL'),(496,'CAN_ACCESS_COLUMN'),(497,'CAN_ACCESS_DATABASE'),(498,'CAN_ACCESS_TABLE'),(499,'CAN_ACCESS_USER'),(500,'CAN_ACCESS_VIEW'),(657,'CASCADE'),(76,'CASE'),(255,'CAST'),(832,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(742,'CHAIN'),(583,'CHANGE'),(562,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(289,'CHARSET'),(188,'CHAR_LENGTH'),(584,'CHECK'),(585,'CHECKSUM'),(853,'CIPHER'),(833,'CLASS_ORIGIN'),(878,'CLIENT'),(906,'CLONE'),(692,'CLOSE'),(65,'COALESCE'),(927,'CODE'),(290,'COERCIBILITY'),(544,'COLLATE'),(291,'COLLATION'),(586,'COLUMN'),(587,'COLUMNS'),(834,'COLUMN_NAME'),(549,'COMMENT'),(743,'COMMIT'),(755,'COMMITTED'),(658,'COMPACT'),(550,'COMPLETION'),(902,'COMPONENT'),(272,'COMPRESS'),(659,'COMPRESSED'),(588,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(705,'CONCURRENT'),(829,'CONDITION'),(589,'CONNECTION'),(292,'CONNECTION_ID'),(744,'CONSISTENT'),(590,'CONSTRAINT'),(835,'CONSTRAINT_CATALOG'),(836,'CONSTRAINT_NAME'),(837,'CONSTRAINT_SCHEMA'),(830,'CONTINUE'),(97,'CONV'),(256,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(462,'COUNT'),(100,'CRC32'),(51,'CREATE'),(11,'CREATE_ASYMMETRIC_PRIV_KEY'),(12,'CREATE_ASYMMETRIC_PUB_KEY'),(13,'CREATE_DH_PARAMETERS'),(14,'CREATE_DIGEST'),(735,'CROSS'),(660,'CSV'),(481,'CUME_DIST'),(123,'CURDATE'),(854,'CURRENT'),(124,'CURRENT_DATE'),(293,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(294,'CURRENT_USER'),(827,'CURSOR'),(838,'CURSOR_NAME'),(127,'CURTIME'),(591,'DATA'),(295,'DATABASE'),(911,'DATABASES'),(632,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(257,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(818,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(819,'DECLARE'),(2,'DEFAULT'),(809,'DEFAULT_AUTH'),(551,'DEFINER'),(649,'DEFINITION'),(101,'DEGREES'),(698,'DELAYED'),(592,'DELAY_KEY_WRITE'),(661,'DELETE'),(482,'DENSE_RANK'),(465,'DESC'),(944,'DESCRIBE'),(650,'DESCRIPTION'),(839,'DIAGNOSTICS'),(593,'DIRECTORY'),(552,'DISABLE'),(594,'DISCARD'),(458,'DISTINCT'),(720,'DISTINCTROW'),(88,'DIV'),(553,'DO'),(595,'DROP'),(734,'DUAL'),(721,'DUMPFILE'),(699,'DUPLICATE'),(662,'DYNAMIC'),(77,'ELSE'),(820,'ELSEIF'),(192,'ELT'),(554,'ENABLE'),(706,'ENCLOSED'),(545,'ENCRYPTION'),(78,'END'),(640,'ENDS'),(596,'ENGINE'),(912,'ENGINES'),(563,'ERROR'),(913,'ERRORS'),(239,'ESCAPE'),(707,'ESCAPED'),(555,'EVENT'),(925,'EVENTS'),(641,'EVERY'),(889,'EXCEPT'),(597,'EXCHANGE'),(817,'EXECUTE'),(638,'EXISTS'),(831,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(855,'EXPIRE'),(945,'EXPLAIN'),(934,'EXPORT'),(193,'EXPORT_SET'),(896,'EXTENDED'),(679,'EXTENT_SIZE'),(149,'EXTRACT'),(423,'EXTRACTION)'),(261,'EXTRACTVALUE'),(856,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(894,'FAST'),(663,'FEDERATED'),(828,'FETCH'),(194,'FIELD'),(708,'FIELDS'),(879,'FILE'),(680,'FILE_BLOCK_SIZE'),(799,'FILTER'),(195,'FIND_IN_SET'),(598,'FIRST'),(483,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(935,'FLUSH'),(564,'FOR'),(736,'FORCE'),(599,'FOREIGN'),(196,'FORMAT'),(492,'FORMAT_BYTES'),(493,'FORMAT_PICO_TIME'),(296,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(664,'FULL'),(600,'FULLTEXT'),(169,'FUNCTION'),(936,'GENERAL'),(336,'GEOMCOLLECTION'),(337,'GEOMETRYCOLLECTION'),(840,'GET'),(501,'GET_DD_COLUMN_PRIVILEGES'),(502,'GET_DD_CREATE_OPTIONS'),(503,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(283,'GET_LOCK'),(756,'GLOBAL'),(880,'GRANT'),(914,'GRANTS'),(66,'GREATEST'),(573,'GROUP'),(527,'GROUPING'),(466,'GROUP_CONCAT'),(453,'GTID_SUBSET'),(454,'GTID_SUBTRACT'),(693,'HANDLER'),(722,'HAVING'),(665,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(700,'HIGH_PRIORITY'),(857,'HISTORY'),(644,'HOST'),(915,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(297,'ICU_VERSION'),(716,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(701,'IGNORE'),(771,'IGNORE_SERVER_IDS'),(601,'IMPORT'),(67,'IN'),(52,'INDEX'),(916,'INDEXES'),(530,'INET6_ATON'),(531,'INET6_NTOA'),(528,'INET_ATON'),(529,'INET_NTOA'),(709,'INFILE'),(633,'INITIAL_SIZE'),(425,'INLINE'),(737,'INNER'),(565,'INNODB'),(199,'INSERT'),(602,'INSERT_METHOD'),(903,'INSTALL'),(566,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(504,'INTERNAL_AUTO_INCREMENT'),(505,'INTERNAL_AVG_ROW_LENGTH'),(507,'INTERNAL_CHECKSUM'),(506,'INTERNAL_CHECK_TIME'),(508,'INTERNAL_DATA_FREE'),(509,'INTERNAL_DATA_LENGTH'),(510,'INTERNAL_DD_CHAR_LENGTH'),(511,'INTERNAL_GET_COMMENT_OR_ERROR'),(512,'INTERNAL_GET_ENABLED_ROLE_JSON'),(513,'INTERNAL_GET_HOSTNAME'),(514,'INTERNAL_GET_USERNAME'),(515,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(516,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(517,'INTERNAL_INDEX_LENGTH'),(518,'INTERNAL_IS_ENABLED_ROLE'),(519,'INTERNAL_IS_MANDATORY_ROLE'),(520,'INTERNAL_KEYS_DISABLED'),(521,'INTERNAL_MAX_DATA_LENGTH'),(522,'INTERNAL_TABLE_ROWS'),(523,'INTERNAL_UPDATE_TIME'),(68,'INTERVAL'),(702,'INTO'),(603,'INVISIBLE'),(810,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(757,'ISOLATION'),(858,'ISSUER'),(284,'IS_FREE_LOCK'),(532,'IS_IPV4'),(533,'IS_IPV4_COMPAT'),(534,'IS_IPV4_MAPPED'),(535,'IS_IPV6'),(285,'IS_USED_LOCK'),(536,'IS_UUID'),(524,'IS_VISIBLE_DD_OBJECT'),(821,'ITERATE'),(723,'JOIN'),(259,'JSON'),(415,'JSON_ARRAY'),(469,'JSON_ARRAYAGG'),(433,'JSON_ARRAY_APPEND'),(434,'JSON_ARRAY_INSERT'),(418,'JSON_CONTAINS'),(419,'JSON_CONTAINS_PATH'),(443,'JSON_DEPTH'),(420,'JSON_EXTRACT'),(435,'JSON_INSERT'),(427,'JSON_KEYS'),(444,'JSON_LENGTH'),(436,'JSON_MERGE'),(437,'JSON_MERGE_PATCH'),(438,'JSON_MERGE_PRESERVE'),(416,'JSON_OBJECT'),(470,'JSON_OBJECTAGG'),(428,'JSON_OVERLAPS'),(450,'JSON_PRETTY'),(417,'JSON_QUOTE'),(439,'JSON_REMOVE'),(440,'JSON_REPLACE'),(448,'JSON_SCHEMA_VALID'),(449,'JSON_SCHEMA_VALIDATION_REPORT'),(429,'JSON_SEARCH'),(441,'JSON_SET'),(451,'JSON_STORAGE_FREE'),(452,'JSON_STORAGE_SIZE'),(447,'JSON_TABLE'),(445,'JSON_TYPE'),(442,'JSON_UNQUOTE'),(446,'JSON_VALID'),(430,'JSON_VALUE'),(53,'KEY'),(604,'KEYS'),(605,'KEY_BLOCK_SIZE'),(941,'KILL'),(484,'LAG'),(694,'LAST'),(153,'LAST_DAY'),(298,'LAST_INSERT_ID'),(485,'LAST_VALUE'),(201,'LCASE'),(486,'LEAD'),(232,'LEADING'),(72,'LEAST'),(822,'LEAVE'),(942,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(758,'LEVEL'),(223,'LIKE'),(687,'LIMIT'),(710,'LINES'),(338,'LINESTRING'),(104,'LN'),(711,'LOAD'),(204,'LOAD_FILE'),(712,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(606,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(574,'LOGFILE'),(767,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(823,'LOOP'),(206,'LOWER'),(688,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(567,'MASTER'),(772,'MASTER_AUTO_POSITION'),(773,'MASTER_BIND'),(774,'MASTER_COMPRESSION_ALGORITHMS'),(775,'MASTER_CONNECT_RETRY'),(776,'MASTER_HEARTBEAT_PERIOD'),(777,'MASTER_HOST'),(778,'MASTER_LOG_FILE'),(779,'MASTER_LOG_POS'),(780,'MASTER_PASSWORD'),(781,'MASTER_PORT'),(537,'MASTER_POS_WAIT'),(782,'MASTER_RETRY_COUNT'),(783,'MASTER_SSL'),(784,'MASTER_SSL_CA'),(785,'MASTER_SSL_CERT'),(786,'MASTER_SSL_CIPHER'),(787,'MASTER_SSL_CRL'),(788,'MASTER_SSL_CRLPATH'),(789,'MASTER_SSL_KEY'),(790,'MASTER_SSL_VERIFY_SERVER_CERT'),(791,'MASTER_TLS_CIPHERSUITES'),(792,'MASTER_TLS_VERSION'),(793,'MASTER_USER'),(794,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(471,'MAX'),(859,'MAX_CONNECTIONS_PER_HOUR'),(860,'MAX_QUERIES_PER_HOUR'),(607,'MAX_ROWS'),(681,'MAX_SIZE'),(861,'MAX_UPDATES_PER_HOUR'),(862,'MAX_USER_CONNECTIONS'),(395,'MBRCONTAINS'),(396,'MBRCOVEREDBY'),(397,'MBRCOVERS'),(398,'MBRDISJOINT'),(399,'MBREQUALS'),(400,'MBRINTERSECTS'),(401,'MBROVERLAPS'),(402,'MBRTOUCHES'),(403,'MBRWITHIN'),(273,'MD5'),(895,'MEDIUM'),(431,'MEMBER'),(724,'MEMORY'),(666,'MERGE'),(841,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(472,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(608,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(609,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(667,'MRG_MYISAM'),(339,'MULTILINESTRING'),(340,'MULTIPOINT'),(341,'MULTIPOLYGON'),(917,'MUTEX'),(668,'MYISAM'),(842,'MYSQL_ERRNO'),(651,'NAME'),(910,'NAMES'),(538,'NAME_CONST'),(40,'NATIONAL'),(738,'NATURAL'),(41,'NCHAR'),(669,'NDB'),(670,'NDBCLUSTER'),(795,'NETWORK_NAMESPACE'),(863,'NEVER'),(695,'NEXT'),(568,'NO'),(682,'NODEGROUP'),(864,'NONE'),(64,'NOT'),(160,'NOW'),(893,'NO_WRITE_TO_BINLOG'),(487,'NTH_VALUE'),(488,'NTILE'),(70,'NULL'),(83,'NULLIF'),(843,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(432,'OF'),(725,'OFFSET'),(865,'OLD'),(556,'ON'),(546,'ONLY'),(696,'OPEN'),(610,'OPTIMIZE'),(937,'OPTIMIZER_COSTS'),(881,'OPTION'),(866,'OPTIONAL'),(713,'OPTIONALLY'),(576,'OPTIONS'),(73,'OR'),(213,'ORD'),(467,'ORDER'),(652,'ORGANIZATION'),(739,'OUTER'),(726,'OUTFILE'),(645,'OWNER'),(611,'PACK_KEYS'),(612,'PARSER'),(671,'PARTIAL'),(613,'PARTITION'),(614,'PARTITIONING'),(615,'PASSWORD'),(867,'PASSWORD_LOCK_TIME'),(426,'PATH)'),(489,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(907,'PERSIST'),(908,'PERSIST_ONLY'),(109,'PI'),(904,'PLUGIN'),(928,'PLUGINS'),(811,'PLUGIN_DIR'),(342,'POINT'),(343,'POLYGON'),(646,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(763,'PREPARE'),(557,'PRESERVE'),(697,'PREV'),(616,'PRIMARY'),(882,'PRIVILEGES'),(796,'PRIVILEGE_CHECKS_USER'),(575,'PROCEDURE'),(883,'PROCESS'),(918,'PROCESSLIST'),(929,'PROFILE'),(930,'PROFILES'),(887,'PROXY'),(494,'PS_CURRENT_THREAD_ID'),(495,'PS_THREAD_ID'),(768,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(689,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(868,'RANDOM'),(274,'RANDOM_BYTES'),(490,'RANK'),(547,'READ'),(35,'REAL'),(617,'REBUILD'),(764,'RECOVER'),(569,'REDO_LOG'),(672,'REDUNDANT'),(653,'REFERENCE'),(673,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(938,'RELAY'),(931,'RELAYLOG'),(797,'RELAY_LOG_FILE'),(798,'RELAY_LOG_POS'),(745,'RELEASE'),(286,'RELEASE_ALL_LOCKS'),(287,'RELEASE_LOCK'),(570,'RELOAD'),(618,'REMOVE'),(558,'RENAME'),(619,'REORGANIZE'),(620,'REPAIR'),(216,'REPEAT'),(759,'REPEATABLE'),(217,'REPLACE'),(808,'REPLICA'),(932,'REPLICAS'),(800,'REPLICATE_DO_DB'),(801,'REPLICATE_DO_TABLE'),(802,'REPLICATE_IGNORE_DB'),(803,'REPLICATE_IGNORE_TABLE'),(804,'REPLICATE_REWRITE_DB'),(805,'REPLICATE_WILD_DO_TABLE'),(806,'REPLICATE_WILD_IGNORE_TABLE'),(807,'REPLICATION'),(869,'REQUIRE'),(769,'RESET'),(848,'RESIGNAL'),(890,'RESOURCE'),(943,'RESTART'),(676,'RESTRICT'),(870,'RETAIN'),(825,'RETURN'),(844,'RETURNED_SQLSTATE'),(899,'RETURNS'),(871,'REUSE'),(218,'REVERSE'),(888,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(872,'ROLE'),(299,'ROLES_GRAPHML'),(571,'ROLLBACK'),(114,'ROUND'),(703,'ROW'),(717,'ROWS'),(300,'ROW_COUNT'),(621,'ROW_FORMAT'),(491,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(751,'SAVEPOINT'),(559,'SCHEDULE'),(301,'SCHEMA'),(919,'SCHEMAS'),(845,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(704,'SELECT'),(468,'SEPARATOR'),(3,'SERIAL'),(760,'SERIALIZABLE'),(577,'SERVER'),(761,'SESSION'),(302,'SESSION_USER'),(548,'SET'),(275,'SHA'),(276,'SHA1'),(277,'SHA2'),(727,'SHARE'),(920,'SHOW'),(884,'SHUTDOWN'),(115,'SIGN'),(850,'SIGNAL'),(260,'SIGNED'),(116,'SIN'),(560,'SLAVE'),(539,'SLEEP'),(939,'SLOW'),(746,'SNAPSHOT'),(647,'SOCKET'),(900,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(225,'SPACE'),(622,'SPATIAL'),(849,'SQLSTATE'),(812,'SQL_AFTER_GTIDS'),(813,'SQL_AFTER_MTS_GAPS'),(814,'SQL_BEFORE_GTIDS'),(728,'SQL_BIG_RESULT'),(729,'SQL_BUFFER_RESULT'),(730,'SQL_CALC_FOUND_ROWS'),(770,'SQL_LOG_BIN'),(731,'SQL_NO_CACHE'),(732,'SQL_SMALL_RESULT'),(815,'SQL_THREAD'),(117,'SQRT'),(873,'SSL'),(747,'START'),(714,'STARTING'),(642,'STARTS'),(278,'STATEMENT_DIGEST'),(279,'STATEMENT_DIGEST_TEXT'),(623,'STATS_AUTO_RECALC'),(624,'STATS_PERSISTENT'),(625,'STATS_SAMPLE_PAGES'),(921,'STATUS'),(473,'STD'),(474,'STDDEV'),(475,'STDDEV_POP'),(476,'STDDEV_SAMP'),(816,'STOP'),(926,'STORAGE'),(674,'STORED'),(733,'STRAIGHT_JOIN'),(240,'STRCMP'),(901,'STRING'),(165,'STR_TO_DATE'),(365,'ST_AREA'),(344,'ST_ASBINARY'),(408,'ST_ASGEOJSON'),(346,'ST_ASTEXT'),(345,'ST_ASWKB'),(347,'ST_ASWKT'),(373,'ST_BUFFER'),(374,'ST_BUFFER_STRATEGY'),(366,'ST_CENTROID'),(384,'ST_CONTAINS'),(375,'ST_CONVEXHULL'),(385,'ST_CROSSES'),(376,'ST_DIFFERENCE'),(349,'ST_DIMENSION'),(386,'ST_DISJOINT'),(387,'ST_DISTANCE'),(410,'ST_DISTANCE_SPHERE'),(359,'ST_ENDPOINT'),(350,'ST_ENVELOPE'),(388,'ST_EQUALS'),(367,'ST_EXTERIORRING'),(389,'ST_FRECHETDISTANCE'),(404,'ST_GEOHASH'),(306,'ST_GEOMCOLLFROMTEXT'),(321,'ST_GEOMCOLLFROMWKB'),(307,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(322,'ST_GEOMETRYCOLLECTIONFROMWKB'),(308,'ST_GEOMETRYFROMTEXT'),(323,'ST_GEOMETRYFROMWKB'),(371,'ST_GEOMETRYN'),(351,'ST_GEOMETRYTYPE'),(409,'ST_GEOMFROMGEOJSON'),(309,'ST_GEOMFROMTEXT'),(324,'ST_GEOMFROMWKB'),(390,'ST_HAUSDORFFDISTANCE'),(368,'ST_INTERIORRINGN'),(377,'ST_INTERSECTION'),(391,'ST_INTERSECTS'),(360,'ST_ISCLOSED'),(352,'ST_ISEMPTY'),(353,'ST_ISSIMPLE'),(411,'ST_ISVALID'),(405,'ST_LATFROMGEOHASH'),(355,'ST_LATITUDE'),(361,'ST_LENGTH'),(310,'ST_LINEFROMTEXT'),(325,'ST_LINEFROMWKB'),(378,'ST_LINEINTERPOLATEPOINT'),(379,'ST_LINEINTERPOLATEPOINTS'),(311,'ST_LINESTRINGFROMTEXT'),(326,'ST_LINESTRINGFROMWKB'),(406,'ST_LONGFROMGEOHASH'),(356,'ST_LONGITUDE'),(412,'ST_MAKEENVELOPE'),(312,'ST_MLINEFROMTEXT'),(327,'ST_MLINEFROMWKB'),(314,'ST_MPOINTFROMTEXT'),(329,'ST_MPOINTFROMWKB'),(316,'ST_MPOLYFROMTEXT'),(331,'ST_MPOLYFROMWKB'),(313,'ST_MULTILINESTRINGFROMTEXT'),(328,'ST_MULTILINESTRINGFROMWKB'),(315,'ST_MULTIPOINTFROMTEXT'),(330,'ST_MULTIPOINTFROMWKB'),(317,'ST_MULTIPOLYGONFROMTEXT'),(332,'ST_MULTIPOLYGONFROMWKB'),(372,'ST_NUMGEOMETRIES'),(369,'ST_NUMINTERIORRING'),(370,'ST_NUMINTERIORRINGS'),(362,'ST_NUMPOINTS'),(392,'ST_OVERLAPS'),(380,'ST_POINTATDISTANCE'),(407,'ST_POINTFROMGEOHASH'),(318,'ST_POINTFROMTEXT'),(333,'ST_POINTFROMWKB'),(363,'ST_POINTN'),(319,'ST_POLYFROMTEXT'),(334,'ST_POLYFROMWKB'),(320,'ST_POLYGONFROMTEXT'),(335,'ST_POLYGONFROMWKB'),(413,'ST_SIMPLIFY'),(354,'ST_SRID'),(364,'ST_STARTPOINT'),(348,'ST_SWAPXY'),(381,'ST_SYMDIFFERENCE'),(393,'ST_TOUCHES'),(382,'ST_TRANSFORM'),(383,'ST_UNION'),(414,'ST_VALIDATE'),(394,'ST_WITHIN'),(357,'ST_X'),(358,'ST_Y'),(846,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(874,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(477,'SUM'),(885,'SUPER'),(168,'SYSDATE'),(654,'SYSTEM'),(303,'SYSTEM_USER'),(54,'TABLE'),(754,'TABLES'),(626,'TABLESPACE'),(847,'TABLE_NAME'),(118,'TAN'),(685,'TEMPORARY'),(715,'TERMINATED'),(79,'THEN'),(891,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(258,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(572,'TLS'),(634,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(946,'TRADITIONAL'),(233,'TRAILING'),(748,'TRANSACTION'),(947,'TREE'),(684,'TRIGGER'),(922,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(627,'TYPE'),(235,'UCASE'),(875,'UNBOUNDED'),(762,'UNCOMMITTED'),(280,'UNCOMPRESS'),(281,'UNCOMPRESSED_LENGTH'),(635,'UNDO'),(236,'UNHEX'),(905,'UNINSTALL'),(628,'UNION'),(629,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(753,'UNLOCK'),(20,'UNSIGNED'),(824,'UNTIL'),(677,'UPDATE'),(262,'UPDATEXML'),(630,'UPGRADE'),(237,'UPPER'),(886,'USAGE'),(683,'USE'),(304,'USER'),(940,'USER_RESOURCES'),(897,'USE_FRM'),(690,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(540,'UUID'),(541,'UUID_SHORT'),(542,'UUID_TO_BIN'),(282,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(543,'VALUES'),(45,'VARCHARACTER'),(909,'VARIABLE'),(923,'VARIABLES'),(480,'VARIANCE'),(46,'VARYING'),(478,'VAR_POP'),(479,'VAR_SAMP'),(892,'VCPU'),(305,'VERSION'),(637,'VIEW'),(675,'VIRTUAL'),(631,'VISIBLE'),(636,'WAIT'),(455,'WAIT_FOR_EXECUTED_GTID_SET'),(456,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(924,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(691,'WHERE'),(826,'WHILE'),(252,'WITH'),(749,'WORK'),(648,'WRAPPER'),(750,'WRITE'),(876,'X509'),(765,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL'),(265,'^'),(263,'|'),(268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(482,2),(500,2),(501,2),(508,2),(511,2),(512,2),(520,2),(521,2),(544,2),(549,2),(587,2),(605,2),(607,2),(613,2),(615,2),(2,3),(520,3),(2,4),(544,4),(549,4),(603,4),(604,4),(3,5),(695,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(243,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(243,26),(625,26),(22,27),(23,28),(23,29),(520,29),(23,30),(24,31),(243,31),(625,31),(25,32),(26,33),(26,34),(26,35),(625,35),(28,36),(129,36),(131,36),(243,36),(30,37),(165,37),(31,38),(163,38),(243,38),(33,39),(35,39),(500,39),(501,39),(508,39),(511,39),(512,39),(520,39),(547,39),(548,39),(550,39),(633,39),(634,39),(636,39),(640,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(243,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(508,49),(509,49),(522,49),(53,50),(500,50),(501,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(605,50),(610,50),(616,50),(53,51),(511,51),(512,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(522,51),(523,51),(524,51),(606,51),(607,51),(617,51),(625,51),(636,51),(644,51),(645,51),(646,51),(647,51),(648,51),(649,51),(651,51),(53,52),(508,52),(514,52),(520,52),(528,52),(552,52),(636,52),(662,52),(684,52),(687,52),(53,53),(508,53),(520,53),(521,53),(544,53),(53,54),(508,54),(520,54),(533,54),(537,54),(538,54),(543,54),(545,54),(555,54),(620,54),(621,54),(622,54),(623,54),(624,54),(636,54),(649,54),(678,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(511,64),(512,64),(513,64),(519,64),(606,64),(607,64),(63,65),(508,65),(64,66),(65,67),(66,67),(240,67),(550,67),(639,67),(642,67),(643,67),(662,67),(672,67),(67,68),(131,68),(513,68),(605,68),(607,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(521,70),(72,71),(73,72),(76,73),(519,73),(77,74),(78,75),(80,76),(588,76),(80,77),(588,77),(80,78),(568,78),(585,78),(588,78),(589,78),(592,78),(593,78),(595,78),(80,79),(588,79),(589,79),(80,80),(588,80),(81,81),(511,81),(512,81),(513,81),(519,81),(525,81),(526,81),(527,81),(531,81),(532,81),(533,81),(536,81),(589,81),(605,81),(606,81),(607,81),(608,81),(609,81),(626,81),(689,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(508,119),(538,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(605,131),(607,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(243,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(503,169),(516,169),(517,169),(529,169),(530,169),(625,169),(626,169),(636,169),(647,169),(659,169),(660,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(692,196),(693,196),(694,196),(194,197),(195,198),(196,199),(544,199),(545,199),(546,199),(197,200),(198,201),(199,202),(552,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(593,216),(214,217),(519,217),(547,217),(548,217),(549,217),(605,217),(614,217),(215,218),(216,219),(552,219),(217,220),(218,221),(219,222),(220,223),(232,223),(636,223),(642,223),(643,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(540,231),(543,231),(550,231),(636,231),(639,231),(642,231),(643,231),(662,231),(672,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(550,250),(240,251),(686,251),(240,252),(508,252),(514,252),(520,252),(605,252),(607,252),(610,252),(685,252),(241,253),(243,253),(569,253),(570,253),(637,253),(638,253),(685,253),(242,254),(242,255),(242,256),(243,256),(242,257),(243,257),(242,258),(243,259),(692,259),(693,259),(694,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(633,289),(634,289),(272,290),(273,291),(636,291),(641,291),(274,292),(275,293),(276,294),(502,294),(513,294),(277,295),(500,295),(501,295),(511,295),(512,295),(518,295),(525,295),(526,295),(636,295),(644,295),(645,295),(278,296),(279,297),(280,298),(281,299),(282,300),(602,300),(283,301),(500,301),(501,301),(511,301),(512,301),(525,301),(526,301),(636,301),(644,301),(645,301),(284,302),(285,303),(286,304),(518,304),(577,304),(578,304),(605,304),(607,304),(609,304),(611,304),(617,304),(651,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,421),(386,422),(386,423),(387,424),(387,425),(387,426),(388,427),(389,428),(390,429),(391,430),(392,431),(392,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(417,458),(422,458),(423,458),(426,458),(427,458),(432,458),(550,458),(553,458),(418,459),(419,460),(420,461),(421,462),(422,462),(657,462),(682,462),(423,463),(550,463),(423,464),(508,464),(520,464),(540,464),(547,464),(548,464),(550,464),(554,464),(556,464),(605,464),(607,464),(423,465),(550,465),(692,465),(693,465),(694,465),(423,466),(423,467),(508,467),(540,467),(550,467),(554,467),(555,467),(556,467),(557,467),(423,468),(424,469),(425,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(483,527),(484,528),(485,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(544,543),(549,543),(557,543),(500,544),(501,544),(508,544),(511,544),(512,544),(520,544),(500,545),(501,545),(508,545),(511,545),(512,545),(520,545),(500,546),(501,546),(558,546),(559,546),(560,546),(561,546),(567,546),(568,546),(500,547),(501,547),(542,547),(558,547),(559,547),(560,547),(561,547),(566,547),(567,547),(568,547),(685,547),(500,548),(501,548),(508,548),(511,548),(512,548),(520,548),(521,548),(544,548),(547,548),(548,548),(549,548),(550,548),(556,548),(558,548),(559,548),(560,548),(561,548),(572,548),(603,548),(604,548),(613,548),(614,548),(615,548),(619,548),(632,548),(633,548),(634,548),(635,548),(636,548),(640,548),(502,549),(508,549),(513,549),(514,549),(520,549),(522,549),(605,549),(607,549),(502,550),(513,550),(502,551),(513,551),(502,552),(508,552),(513,552),(616,552),(617,552),(502,553),(513,553),(541,553),(595,553),(502,554),(508,554),(513,554),(616,554),(617,554),(502,555),(513,555),(527,555),(646,555),(502,556),(504,556),(513,556),(521,556),(552,556),(502,557),(513,557),(502,558),(508,558),(509,558),(537,558),(611,558),(502,559),(513,559),(502,560),(513,560),(576,560),(578,560),(580,560),(674,560),(676,560),(688,560),(504,561),(639,561),(683,561),(504,562),(573,562),(575,562),(576,562),(577,562),(578,562),(579,562),(580,562),(672,562),(675,562),(676,562),(685,562),(504,563),(685,563),(504,564),(550,564),(573,564),(575,564),(576,564),(577,564),(578,564),(579,564),(580,564),(597,564),(600,564),(601,564),(614,564),(619,564),(636,564),(672,564),(675,564),(676,564),(685,564),(692,564),(693,564),(694,564),(504,565),(520,565),(636,565),(504,566),(565,566),(504,567),(569,567),(570,567),(571,567),(573,567),(637,567),(638,567),(663,567),(688,567),(504,568),(520,568),(521,568),(504,569),(504,570),(610,570),(504,571),(558,571),(559,571),(560,571),(561,571),(562,571),(563,571),(564,571),(568,571),(504,572),(505,573),(515,573),(522,573),(550,573),(616,573),(617,573),(618,573),(619,573),(505,574),(515,574),(522,574),(506,575),(516,575),(517,575),(529,575),(530,575),(636,575),(648,575),(667,575),(668,575),(507,576),(518,576),(507,577),(518,577),(531,577),(508,578),(508,579),(508,580),(620,580),(692,580),(693,580),(694,580),(508,581),(508,582),(520,582),(508,583),(573,583),(574,583),(508,584),(520,584),(621,584),(508,585),(520,585),(622,585),(508,586),(508,587),(520,587),(547,587),(636,587),(642,587),(643,587),(508,588),(520,588),(508,589),(520,589),(686,589),(692,589),(693,589),(694,589),(508,590),(520,590),(508,591),(518,591),(520,591),(547,591),(508,592),(520,592),(508,593),(520,593),(508,594),(605,594),(508,595),(509,595),(525,595),(526,595),(527,595),(528,595),(529,595),(530,595),(531,595),(532,595),(533,595),(534,595),(535,595),(536,595),(583,595),(584,595),(608,595),(609,595),(618,595),(626,595),(508,596),(509,596),(520,596),(522,596),(534,596),(636,596),(655,596),(685,596),(508,597),(508,598),(520,598),(542,598),(508,599),(518,599),(520,599),(521,599),(508,600),(514,600),(520,600),(508,601),(543,601),(547,601),(508,602),(520,602),(508,603),(514,603),(520,603),(508,604),(636,604),(662,604),(508,605),(520,605),(508,606),(550,606),(565,606),(566,606),(605,606),(607,606),(685,606),(508,607),(520,607),(508,608),(520,608),(508,609),(508,610),(623,610),(508,611),(520,611),(508,612),(514,612),(520,612),(508,613),(520,613),(540,613),(544,613),(547,613),(549,613),(550,613),(552,613),(684,613),(687,613),(508,614),(508,615),(518,615),(577,615),(578,615),(605,615),(607,615),(614,615),(508,616),(508,617),(508,618),(508,619),(508,620),(624,620),(508,621),(520,621),(508,622),(514,622),(519,622),(532,622),(508,623),(520,623),(508,624),(520,624),(508,625),(520,625),(508,626),(509,626),(522,626),(534,626),(508,627),(617,627),(508,628),(553,628),(554,628),(508,629),(508,630),(621,630),(508,631),(514,631),(520,631),(509,632),(522,632),(509,633),(522,633),(509,634),(562,634),(563,634),(564,634),(569,634),(570,634),(573,634),(614,634),(509,635),(522,635),(534,635),(601,635),(509,636),(522,636),(510,637),(524,637),(536,637),(511,638),(512,638),(513,638),(519,638),(525,638),(526,638),(527,638),(531,638),(532,638),(533,638),(536,638),(605,638),(606,638),(607,638),(608,638),(609,638),(626,638),(689,638),(513,639),(513,640),(513,641),(513,642),(514,643),(518,644),(518,645),(518,646),(518,647),(518,648),(519,649),(519,650),(519,651),(519,652),(519,653),(532,653),(519,654),(532,654),(617,654),(520,655),(521,655),(520,656),(520,657),(521,657),(533,657),(536,657),(520,658),(520,659),(520,660),(547,660),(520,661),(521,661),(540,661),(520,662),(520,663),(520,664),(636,664),(642,664),(643,664),(669,664),(679,664),(520,665),(520,666),(520,667),(520,668),(520,669),(520,670),(520,671),(520,672),(520,673),(521,673),(610,673),(520,674),(520,675),(521,676),(533,676),(536,676),(521,677),(544,677),(550,677),(556,677),(522,678),(522,679),(522,680),(522,681),(522,682),(522,683),(552,683),(696,683),(523,684),(535,684),(636,684),(533,685),(539,686),(540,687),(542,687),(550,687),(554,687),(555,687),(556,687),(557,687),(639,687),(672,687),(540,688),(544,688),(547,688),(548,688),(549,688),(556,688),(566,688),(540,689),(621,689),(624,689),(540,690),(552,690),(582,690),(661,690),(540,691),(542,691),(556,691),(642,691),(643,691),(662,691),(542,692),(596,692),(542,693),(601,693),(542,694),(542,695),(542,696),(599,696),(636,696),(664,696),(542,697),(544,698),(546,698),(549,698),(544,699),(544,700),(550,700),(544,701),(547,701),(548,701),(550,701),(552,701),(556,701),(687,701),(544,702),(549,702),(550,702),(554,702),(687,702),(544,703),(557,703),(544,704),(545,704),(549,704),(550,704),(554,704),(692,704),(693,704),(694,704),(547,705),(548,705),(547,706),(547,707),(547,708),(636,708),(642,708),(643,708),(547,709),(548,709),(547,710),(548,710),(547,711),(687,711),(547,712),(548,712),(566,712),(620,712),(623,712),(624,712),(685,712),(547,713),(547,714),(547,715),(548,716),(605,716),(607,716),(548,717),(550,718),(553,718),(575,718),(576,718),(605,718),(610,718),(612,718),(613,718),(615,718),(684,718),(687,718),(550,719),(552,719),(566,719),(605,719),(607,719),(610,719),(550,720),(550,721),(550,722),(550,723),(552,723),(550,724),(550,725),(550,726),(550,727),(550,728),(550,729),(550,730),(550,731),(550,732),(550,733),(552,733),(551,734),(552,735),(552,736),(616,736),(618,736),(552,737),(552,738),(552,739),(558,740),(559,740),(560,740),(561,740),(558,741),(559,741),(560,741),(561,741),(568,741),(585,741),(558,742),(559,742),(560,742),(561,742),(558,743),(559,743),(560,743),(561,743),(568,743),(558,744),(559,744),(560,744),(561,744),(568,744),(558,745),(559,745),(560,745),(561,745),(562,745),(563,745),(564,745),(568,745),(558,746),(559,746),(560,746),(561,746),(568,746),(558,747),(559,747),(560,747),(561,747),(568,747),(577,747),(578,747),(558,748),(559,748),(560,748),(561,748),(567,748),(558,749),(559,749),(560,749),(561,749),(558,750),(559,750),(560,750),(561,750),(566,750),(567,750),(568,750),(562,751),(563,751),(564,751),(565,752),(565,753),(566,753),(605,753),(607,753),(566,754),(636,754),(664,754),(679,754),(685,754),(567,755),(567,756),(632,756),(677,756),(681,756),(567,757),(567,758),(567,759),(567,760),(567,761),(632,761),(677,761),(681,761),(567,762),(568,763),(581,763),(583,763),(584,763),(568,764),(568,765),(569,766),(570,766),(569,767),(570,767),(636,767),(637,767),(638,767),(685,767),(569,768),(570,768),(571,769),(575,769),(576,769),(688,769),(689,769),(572,770),(573,771),(573,772),(573,773),(573,774),(573,775),(573,776),(573,777),(573,778),(573,779),(573,780),(573,781),(573,782),(573,783),(573,784),(573,785),(573,786),(573,787),(573,788),(573,789),(573,790),(573,791),(573,792),(573,793),(573,794),(573,795),(573,796),(573,797),(573,798),(574,799),(574,800),(574,801),(574,802),(574,803),(574,804),(574,805),(574,806),(574,807),(610,807),(575,808),(577,808),(579,808),(675,808),(688,808),(577,809),(578,809),(577,810),(578,810),(579,810),(580,810),(577,811),(578,811),(577,812),(578,812),(577,813),(578,813),(577,814),(578,814),(577,815),(578,815),(579,815),(580,815),(579,816),(580,816),(582,817),(610,817),(583,818),(584,818),(587,819),(597,819),(600,819),(601,819),(589,820),(590,821),(591,822),(592,823),(593,824),(594,825),(595,826),(597,827),(598,828),(600,829),(601,830),(601,831),(602,832),(603,832),(604,832),(602,833),(603,833),(604,833),(602,834),(603,834),(604,834),(602,835),(603,835),(604,835),(602,836),(603,836),(604,836),(602,837),(603,837),(604,837),(602,838),(603,838),(604,838),(602,839),(602,840),(602,841),(603,841),(604,841),(602,842),(603,842),(604,842),(602,843),(602,844),(602,845),(603,845),(604,845),(602,846),(603,846),(604,846),(602,847),(603,847),(604,847),(603,848),(603,849),(604,849),(604,850),(605,851),(607,851),(605,852),(607,852),(605,853),(607,853),(605,854),(607,854),(614,854),(605,855),(607,855),(605,856),(607,856),(605,857),(607,857),(605,858),(607,858),(605,859),(607,859),(605,860),(607,860),(605,861),(607,861),(605,862),(607,862),(605,863),(607,863),(605,864),(610,864),(613,864),(615,864),(605,865),(605,866),(607,866),(605,867),(607,867),(605,868),(607,868),(614,868),(605,869),(607,869),(605,870),(614,870),(605,871),(607,871),(605,872),(606,872),(607,872),(608,872),(610,872),(613,872),(615,872),(605,873),(607,873),(605,874),(607,874),(605,875),(607,875),(605,876),(607,876),(610,877),(610,878),(610,879),(610,880),(612,880),(610,881),(612,881),(610,882),(612,882),(666,882),(685,882),(610,883),(610,884),(691,884),(610,885),(610,886),(612,887),(612,888),(615,889),(616,890),(617,890),(618,890),(619,890),(616,891),(617,891),(616,892),(617,892),(620,893),(623,893),(624,893),(685,893),(621,894),(621,895),(624,896),(642,896),(643,896),(662,896),(679,896),(624,897),(625,898),(625,899),(625,900),(625,901),(627,902),(629,902),(627,903),(628,903),(628,904),(630,904),(636,904),(629,905),(630,905),(631,906),(632,907),(689,907),(632,908),(632,909),(635,910),(636,911),(653,911),(654,911),(636,912),(656,912),(636,913),(657,913),(636,914),(661,914),(636,915),(674,915),(685,915),(636,916),(636,917),(655,917),(636,918),(669,918),(636,919),(653,919),(654,919),(636,920),(637,920),(638,920),(639,920),(640,920),(641,920),(642,920),(643,920),(644,920),(645,920),(646,920),(647,920),(648,920),(649,920),(651,920),(653,920),(654,920),(655,920),(656,920),(657,920),(658,920),(659,920),(660,920),(661,920),(662,920),(663,920),(664,920),(665,920),(666,920),(667,920),(668,920),(669,920),(670,920),(671,920),(672,920),(673,920),(674,920),(675,920),(676,920),(677,920),(678,920),(679,920),(680,920),(681,920),(682,920),(636,921),(655,921),(660,921),(663,921),(668,921),(675,921),(676,921),(677,921),(678,921),(685,921),(636,922),(680,922),(636,923),(681,923),(636,924),(682,924),(639,925),(658,925),(672,925),(656,926),(659,927),(667,927),(665,928),(670,929),(671,930),(672,931),(673,932),(684,933),(687,933),(685,934),(685,935),(685,936),(685,937),(685,938),(685,939),(685,940),(686,941),(687,942),(690,943),(692,944),(693,944),(694,944),(692,945),(693,945),(694,945),(692,946),(693,946),(694,946),(692,947),(693,947),(694,947);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (690,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/restart.html'),(691,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API\nfunction.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html'),(692,'EXPLAIN',49,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(693,'DESCRIBE',49,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(694,'DESC',49,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(695,'HELP STATEMENT',49,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/help.html'),(696,'USE',49,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/use.html'),(697,'MERGE',50,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('basicwebsite','failed_jobs','PRIMARY','2019-09-08 17:27:47','n_diff_pfx01',0,1,'id'),('basicwebsite','failed_jobs','PRIMARY','2019-09-08 17:27:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','failed_jobs','PRIMARY','2019-09-08 17:27:47','size',1,NULL,'Number of pages in the index'),('basicwebsite','messages','PRIMARY','2019-09-08 17:47:35','n_diff_pfx01',2,1,'id'),('basicwebsite','messages','PRIMARY','2019-09-08 17:47:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','messages','PRIMARY','2019-09-08 17:47:35','size',1,NULL,'Number of pages in the index'),('basicwebsite','migrations','PRIMARY','2019-09-08 17:27:57','n_diff_pfx01',4,1,'id'),('basicwebsite','migrations','PRIMARY','2019-09-08 17:27:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','migrations','PRIMARY','2019-09-08 17:27:57','size',1,NULL,'Number of pages in the index'),('basicwebsite','password_resets','GEN_CLUST_INDEX','2019-09-08 17:27:46','n_diff_pfx01',0,1,'DB_ROW_ID'),('basicwebsite','password_resets','GEN_CLUST_INDEX','2019-09-08 17:27:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','password_resets','GEN_CLUST_INDEX','2019-09-08 17:27:46','size',1,NULL,'Number of pages in the index'),('basicwebsite','password_resets','password_resets_email_index','2019-09-08 17:27:47','n_diff_pfx01',0,1,'email'),('basicwebsite','password_resets','password_resets_email_index','2019-09-08 17:27:47','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('basicwebsite','password_resets','password_resets_email_index','2019-09-08 17:27:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','password_resets','password_resets_email_index','2019-09-08 17:27:47','size',1,NULL,'Number of pages in the index'),('basicwebsite','users','PRIMARY','2019-09-08 17:27:46','n_diff_pfx01',0,1,'id'),('basicwebsite','users','PRIMARY','2019-09-08 17:27:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','users','PRIMARY','2019-09-08 17:27:46','size',1,NULL,'Number of pages in the index'),('basicwebsite','users','users_email_unique','2019-09-08 17:27:46','n_diff_pfx01',0,1,'email'),('basicwebsite','users','users_email_unique','2019-09-08 17:27:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('basicwebsite','users','users_email_unique','2019-09-08 17:27:46','size',1,NULL,'Number of pages in the index'),('cms','articles','PRIMARY','2019-08-28 04:21:56','n_diff_pfx01',0,1,'id'),('cms','articles','PRIMARY','2019-08-28 04:21:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cms','articles','PRIMARY','2019-08-28 04:21:56','size',1,NULL,'Number of pages in the index'),('custom','failed_jobs','PRIMARY','2019-09-24 08:39:56','n_diff_pfx01',0,1,'id'),('custom','failed_jobs','PRIMARY','2019-09-24 08:39:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','failed_jobs','PRIMARY','2019-09-24 08:39:56','size',1,NULL,'Number of pages in the index'),('custom','migrations','PRIMARY','2019-09-24 08:39:55','n_diff_pfx01',2,1,'id'),('custom','migrations','PRIMARY','2019-09-24 08:39:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','migrations','PRIMARY','2019-09-24 08:39:55','size',1,NULL,'Number of pages in the index'),('custom','password_resets','GEN_CLUST_INDEX','2019-09-24 08:39:55','n_diff_pfx01',0,1,'DB_ROW_ID'),('custom','password_resets','GEN_CLUST_INDEX','2019-09-24 08:39:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','password_resets','GEN_CLUST_INDEX','2019-09-24 08:39:55','size',1,NULL,'Number of pages in the index'),('custom','password_resets','password_resets_email_index','2019-09-24 08:39:55','n_diff_pfx01',0,1,'email'),('custom','password_resets','password_resets_email_index','2019-09-24 08:39:55','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('custom','password_resets','password_resets_email_index','2019-09-24 08:39:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','password_resets','password_resets_email_index','2019-09-24 08:39:55','size',1,NULL,'Number of pages in the index'),('custom','users','PRIMARY','2019-09-24 08:39:55','n_diff_pfx01',0,1,'id'),('custom','users','PRIMARY','2019-09-24 08:39:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','users','PRIMARY','2019-09-24 08:39:55','size',1,NULL,'Number of pages in the index'),('custom','users','users_email_unique','2019-09-24 08:39:55','n_diff_pfx01',0,1,'email'),('custom','users','users_email_unique','2019-09-24 08:39:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('custom','users','users_email_unique','2019-09-24 08:39:55','size',1,NULL,'Number of pages in the index'),('itemapi','failed_jobs','PRIMARY','2019-09-14 09:34:29','n_diff_pfx01',0,1,'id'),('itemapi','failed_jobs','PRIMARY','2019-09-14 09:34:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','failed_jobs','PRIMARY','2019-09-14 09:34:29','size',1,NULL,'Number of pages in the index'),('itemapi','items','PRIMARY','2019-09-14 11:39:35','n_diff_pfx01',2,1,'id'),('itemapi','items','PRIMARY','2019-09-14 11:39:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','items','PRIMARY','2019-09-14 11:39:35','size',1,NULL,'Number of pages in the index'),('itemapi','migrations','PRIMARY','2019-09-14 09:34:40','n_diff_pfx01',4,1,'id'),('itemapi','migrations','PRIMARY','2019-09-14 09:34:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','migrations','PRIMARY','2019-09-14 09:34:40','size',1,NULL,'Number of pages in the index'),('itemapi','password_resets','GEN_CLUST_INDEX','2019-09-14 09:34:28','n_diff_pfx01',0,1,'DB_ROW_ID'),('itemapi','password_resets','GEN_CLUST_INDEX','2019-09-14 09:34:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','password_resets','GEN_CLUST_INDEX','2019-09-14 09:34:28','size',1,NULL,'Number of pages in the index'),('itemapi','password_resets','password_resets_email_index','2019-09-14 09:34:29','n_diff_pfx01',0,1,'email'),('itemapi','password_resets','password_resets_email_index','2019-09-14 09:34:29','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('itemapi','password_resets','password_resets_email_index','2019-09-14 09:34:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','password_resets','password_resets_email_index','2019-09-14 09:34:29','size',1,NULL,'Number of pages in the index'),('itemapi','users','PRIMARY','2019-09-14 09:34:28','n_diff_pfx01',0,1,'id'),('itemapi','users','PRIMARY','2019-09-14 09:34:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','users','PRIMARY','2019-09-14 09:34:28','size',1,NULL,'Number of pages in the index'),('itemapi','users','users_email_unique','2019-09-14 09:34:28','n_diff_pfx01',0,1,'email'),('itemapi','users','users_email_unique','2019-09-14 09:34:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('itemapi','users','users_email_unique','2019-09-14 09:34:28','size',1,NULL,'Number of pages in the index'),('kanboard','action_has_params','PRIMARY','2020-07-30 02:31:19','n_diff_pfx01',0,1,'id'),('kanboard','action_has_params','PRIMARY','2020-07-30 02:31:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','action_has_params','PRIMARY','2020-07-30 02:31:19','size',1,NULL,'Number of pages in the index'),('kanboard','action_has_params','action_id','2020-07-30 02:31:19','n_diff_pfx01',0,1,'action_id'),('kanboard','action_has_params','action_id','2020-07-30 02:31:19','n_diff_pfx02',0,1,'action_id,id'),('kanboard','action_has_params','action_id','2020-07-30 02:31:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','action_has_params','action_id','2020-07-30 02:31:19','size',1,NULL,'Number of pages in the index'),('kanboard','actions','PRIMARY','2020-07-30 02:31:19','n_diff_pfx01',0,1,'id'),('kanboard','actions','PRIMARY','2020-07-30 02:31:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','actions','PRIMARY','2020-07-30 02:31:19','size',1,NULL,'Number of pages in the index'),('kanboard','actions','project_id','2020-07-30 02:31:19','n_diff_pfx01',0,1,'project_id'),('kanboard','actions','project_id','2020-07-30 02:31:19','n_diff_pfx02',0,1,'project_id,id'),('kanboard','actions','project_id','2020-07-30 02:31:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','actions','project_id','2020-07-30 02:31:19','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_move_restrictions','PRIMARY','2020-07-30 02:31:20','n_diff_pfx01',0,1,'restriction_id'),('kanboard','column_has_move_restrictions','PRIMARY','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_move_restrictions','PRIMARY','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_move_restrictions','dst_column_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'dst_column_id'),('kanboard','column_has_move_restrictions','dst_column_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'dst_column_id,restriction_id'),('kanboard','column_has_move_restrictions','dst_column_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_move_restrictions','dst_column_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_move_restrictions','project_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'project_id'),('kanboard','column_has_move_restrictions','project_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'project_id,restriction_id'),('kanboard','column_has_move_restrictions','project_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_move_restrictions','project_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_move_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'role_id'),('kanboard','column_has_move_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'role_id,src_column_id'),('kanboard','column_has_move_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx03',0,1,'role_id,src_column_id,dst_column_id'),('kanboard','column_has_move_restrictions','role_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_move_restrictions','role_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_move_restrictions','src_column_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'src_column_id'),('kanboard','column_has_move_restrictions','src_column_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'src_column_id,restriction_id'),('kanboard','column_has_move_restrictions','src_column_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_move_restrictions','src_column_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_restrictions','PRIMARY','2020-07-30 02:31:20','n_diff_pfx01',0,1,'restriction_id'),('kanboard','column_has_restrictions','PRIMARY','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_restrictions','PRIMARY','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_restrictions','column_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'column_id'),('kanboard','column_has_restrictions','column_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'column_id,restriction_id'),('kanboard','column_has_restrictions','column_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_restrictions','column_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_restrictions','project_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'project_id'),('kanboard','column_has_restrictions','project_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'project_id,restriction_id'),('kanboard','column_has_restrictions','project_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_restrictions','project_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','column_has_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx01',0,1,'role_id'),('kanboard','column_has_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx02',0,1,'role_id,column_id'),('kanboard','column_has_restrictions','role_id','2020-07-30 02:31:20','n_diff_pfx03',0,1,'role_id,column_id,rule'),('kanboard','column_has_restrictions','role_id','2020-07-30 02:31:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','column_has_restrictions','role_id','2020-07-30 02:31:20','size',1,NULL,'Number of pages in the index'),('kanboard','columns','PRIMARY','2021-05-07 09:52:16','n_diff_pfx01',24,1,'id'),('kanboard','columns','PRIMARY','2021-05-07 09:52:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','columns','PRIMARY','2021-05-07 09:52:16','size',1,NULL,'Number of pages in the index'),('kanboard','columns','columns_project_idx','2021-05-07 09:52:16','n_diff_pfx01',6,1,'project_id'),('kanboard','columns','columns_project_idx','2021-05-07 09:52:16','n_diff_pfx02',24,1,'project_id,id'),('kanboard','columns','columns_project_idx','2021-05-07 09:52:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','columns','columns_project_idx','2021-05-07 09:52:16','size',1,NULL,'Number of pages in the index'),('kanboard','columns','idx_title_project','2021-05-07 09:52:16','n_diff_pfx01',4,1,'title'),('kanboard','columns','idx_title_project','2021-05-07 09:52:16','n_diff_pfx02',24,1,'title,project_id'),('kanboard','columns','idx_title_project','2021-05-07 09:52:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','columns','idx_title_project','2021-05-07 09:52:16','size',1,NULL,'Number of pages in the index'),('kanboard','comments','PRIMARY','2020-07-30 02:31:21','n_diff_pfx01',0,1,'id'),('kanboard','comments','PRIMARY','2020-07-30 02:31:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','comments','PRIMARY','2020-07-30 02:31:21','size',1,NULL,'Number of pages in the index'),('kanboard','comments','comments_reference_idx','2020-07-30 02:31:21','n_diff_pfx01',0,1,'reference'),('kanboard','comments','comments_reference_idx','2020-07-30 02:31:21','n_diff_pfx02',0,1,'reference,id'),('kanboard','comments','comments_reference_idx','2020-07-30 02:31:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','comments','comments_reference_idx','2020-07-30 02:31:21','size',1,NULL,'Number of pages in the index'),('kanboard','comments','comments_task_idx','2020-07-30 02:31:21','n_diff_pfx01',0,1,'task_id'),('kanboard','comments','comments_task_idx','2020-07-30 02:31:21','n_diff_pfx02',0,1,'task_id,id'),('kanboard','comments','comments_task_idx','2020-07-30 02:31:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','comments','comments_task_idx','2020-07-30 02:31:21','size',1,NULL,'Number of pages in the index'),('kanboard','comments','user_id','2020-07-30 02:31:21','n_diff_pfx01',0,1,'user_id'),('kanboard','comments','user_id','2020-07-30 02:31:21','n_diff_pfx02',0,1,'user_id,id'),('kanboard','comments','user_id','2020-07-30 02:31:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','comments','user_id','2020-07-30 02:31:21','size',1,NULL,'Number of pages in the index'),('kanboard','currencies','currency','2020-07-30 02:31:21','n_diff_pfx01',0,1,'currency'),('kanboard','currencies','currency','2020-07-30 02:31:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','currencies','currency','2020-07-30 02:31:21','size',1,NULL,'Number of pages in the index'),('kanboard','custom_filters','PRIMARY','2020-07-30 02:31:22','n_diff_pfx01',0,1,'id'),('kanboard','custom_filters','PRIMARY','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','custom_filters','PRIMARY','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','custom_filters','project_id','2020-07-30 02:31:22','n_diff_pfx01',0,1,'project_id'),('kanboard','custom_filters','project_id','2020-07-30 02:31:22','n_diff_pfx02',0,1,'project_id,id'),('kanboard','custom_filters','project_id','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','custom_filters','project_id','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','custom_filters','user_id','2020-07-30 02:31:22','n_diff_pfx01',0,1,'user_id'),('kanboard','custom_filters','user_id','2020-07-30 02:31:22','n_diff_pfx02',0,1,'user_id,id'),('kanboard','custom_filters','user_id','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','custom_filters','user_id','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','customizer_files','PRIMARY','2020-08-29 08:14:20','n_diff_pfx01',0,1,'id'),('kanboard','customizer_files','PRIMARY','2020-08-29 08:14:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','customizer_files','PRIMARY','2020-08-29 08:14:20','size',1,NULL,'Number of pages in the index'),('kanboard','group_has_users','group_id','2020-07-30 02:31:22','n_diff_pfx01',0,1,'group_id'),('kanboard','group_has_users','group_id','2020-07-30 02:31:22','n_diff_pfx02',0,1,'group_id,user_id'),('kanboard','group_has_users','group_id','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','group_has_users','group_id','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','group_has_users','user_id','2020-07-30 02:31:22','n_diff_pfx01',0,1,'user_id'),('kanboard','group_has_users','user_id','2020-07-30 02:31:22','n_diff_pfx02',0,1,'user_id,group_id'),('kanboard','group_has_users','user_id','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','group_has_users','user_id','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','groups','PRIMARY','2020-07-30 02:31:22','n_diff_pfx01',0,1,'id'),('kanboard','groups','PRIMARY','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','groups','PRIMARY','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','groups','name','2020-07-30 02:31:22','n_diff_pfx01',0,1,'name'),('kanboard','groups','name','2020-07-30 02:31:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','groups','name','2020-07-30 02:31:22','size',1,NULL,'Number of pages in the index'),('kanboard','invites','PRIMARY','2020-07-30 02:31:23','n_diff_pfx01',0,1,'email'),('kanboard','invites','PRIMARY','2020-07-30 02:31:23','n_diff_pfx02',0,1,'email,token'),('kanboard','invites','PRIMARY','2020-07-30 02:31:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','invites','PRIMARY','2020-07-30 02:31:23','size',1,NULL,'Number of pages in the index'),('kanboard','last_logins','PRIMARY','2021-05-01 01:37:07','n_diff_pfx01',10,1,'id'),('kanboard','last_logins','PRIMARY','2021-05-01 01:37:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','last_logins','PRIMARY','2021-05-01 01:37:07','size',1,NULL,'Number of pages in the index'),('kanboard','last_logins','user_id','2021-05-01 01:37:07','n_diff_pfx01',1,1,'user_id'),('kanboard','last_logins','user_id','2021-05-01 01:37:07','n_diff_pfx02',10,1,'user_id,id'),('kanboard','last_logins','user_id','2021-05-01 01:37:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','last_logins','user_id','2021-05-01 01:37:07','size',1,NULL,'Number of pages in the index'),('kanboard','links','PRIMARY','2020-07-30 02:31:46','n_diff_pfx01',11,1,'id'),('kanboard','links','PRIMARY','2020-07-30 02:31:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','links','PRIMARY','2020-07-30 02:31:46','size',1,NULL,'Number of pages in the index'),('kanboard','links','label','2020-07-30 02:31:46','n_diff_pfx01',11,1,'label'),('kanboard','links','label','2020-07-30 02:31:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','links','label','2020-07-30 02:31:46','size',1,NULL,'Number of pages in the index'),('kanboard','password_reset','PRIMARY','2020-07-30 02:31:24','n_diff_pfx01',0,1,'token'),('kanboard','password_reset','PRIMARY','2020-07-30 02:31:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','password_reset','PRIMARY','2020-07-30 02:31:24','size',1,NULL,'Number of pages in the index'),('kanboard','password_reset','user_id','2020-07-30 02:31:24','n_diff_pfx01',0,1,'user_id'),('kanboard','password_reset','user_id','2020-07-30 02:31:24','n_diff_pfx02',0,1,'user_id,token'),('kanboard','password_reset','user_id','2020-07-30 02:31:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','password_reset','user_id','2020-07-30 02:31:24','size',1,NULL,'Number of pages in the index'),('kanboard','plugin_schema_versions','PRIMARY','2020-07-30 02:31:24','n_diff_pfx01',0,1,'plugin'),('kanboard','plugin_schema_versions','PRIMARY','2020-07-30 02:31:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','plugin_schema_versions','PRIMARY','2020-07-30 02:31:24','size',1,NULL,'Number of pages in the index'),('kanboard','predefined_task_descriptions','PRIMARY','2020-07-30 02:31:25','n_diff_pfx01',0,1,'id'),('kanboard','predefined_task_descriptions','PRIMARY','2020-07-30 02:31:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','predefined_task_descriptions','PRIMARY','2020-07-30 02:31:25','size',1,NULL,'Number of pages in the index'),('kanboard','predefined_task_descriptions','project_id','2020-07-30 02:31:25','n_diff_pfx01',0,1,'project_id'),('kanboard','predefined_task_descriptions','project_id','2020-07-30 02:31:25','n_diff_pfx02',0,1,'project_id,id'),('kanboard','predefined_task_descriptions','project_id','2020-07-30 02:31:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','predefined_task_descriptions','project_id','2020-07-30 02:31:25','size',1,NULL,'Number of pages in the index'),('kanboard','project_activities','PRIMARY','2020-10-08 08:54:14','n_diff_pfx01',78,8,'id'),('kanboard','project_activities','PRIMARY','2020-10-08 08:54:14','n_leaf_pages',8,NULL,'Number of leaf pages in the index'),('kanboard','project_activities','PRIMARY','2020-10-08 08:54:14','size',9,NULL,'Number of pages in the index'),('kanboard','project_activities','creator_id','2020-10-08 08:54:14','n_diff_pfx01',1,1,'creator_id'),('kanboard','project_activities','creator_id','2020-10-08 08:54:14','n_diff_pfx02',78,1,'creator_id,id'),('kanboard','project_activities','creator_id','2020-10-08 08:54:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_activities','creator_id','2020-10-08 08:54:14','size',1,NULL,'Number of pages in the index'),('kanboard','project_activities','project_id','2020-10-08 08:54:14','n_diff_pfx01',3,1,'project_id'),('kanboard','project_activities','project_id','2020-10-08 08:54:14','n_diff_pfx02',78,1,'project_id,id'),('kanboard','project_activities','project_id','2020-10-08 08:54:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_activities','project_id','2020-10-08 08:54:14','size',1,NULL,'Number of pages in the index'),('kanboard','project_activities','task_id','2020-10-08 08:54:14','n_diff_pfx01',21,1,'task_id'),('kanboard','project_activities','task_id','2020-10-08 08:54:14','n_diff_pfx02',78,1,'task_id,id'),('kanboard','project_activities','task_id','2020-10-08 08:54:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_activities','task_id','2020-10-08 08:54:14','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_column_stats','PRIMARY','2021-05-01 01:39:15','n_diff_pfx01',52,1,'id'),('kanboard','project_daily_column_stats','PRIMARY','2021-05-01 01:39:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_column_stats','PRIMARY','2021-05-01 01:39:15','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_column_stats','column_id','2021-05-01 01:39:15','n_diff_pfx01',12,1,'column_id'),('kanboard','project_daily_column_stats','column_id','2021-05-01 01:39:15','n_diff_pfx02',52,1,'column_id,id'),('kanboard','project_daily_column_stats','column_id','2021-05-01 01:39:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_column_stats','column_id','2021-05-01 01:39:15','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_column_stats','project_daily_column_stats_idx','2021-05-01 01:39:15','n_diff_pfx01',16,1,'day'),('kanboard','project_daily_column_stats','project_daily_column_stats_idx','2021-05-01 01:39:15','n_diff_pfx02',20,1,'day,project_id'),('kanboard','project_daily_column_stats','project_daily_column_stats_idx','2021-05-01 01:39:15','n_diff_pfx03',52,1,'day,project_id,column_id'),('kanboard','project_daily_column_stats','project_daily_column_stats_idx','2021-05-01 01:39:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_column_stats','project_daily_column_stats_idx','2021-05-01 01:39:15','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_column_stats','project_id','2021-05-01 01:39:15','n_diff_pfx01',5,1,'project_id'),('kanboard','project_daily_column_stats','project_id','2021-05-01 01:39:15','n_diff_pfx02',52,1,'project_id,id'),('kanboard','project_daily_column_stats','project_id','2021-05-01 01:39:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_column_stats','project_id','2021-05-01 01:39:15','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_stats','PRIMARY','2021-04-19 21:07:57','n_diff_pfx01',19,1,'id'),('kanboard','project_daily_stats','PRIMARY','2021-04-19 21:07:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_stats','PRIMARY','2021-04-19 21:07:57','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_stats','project_daily_stats_idx','2021-04-19 21:07:57','n_diff_pfx01',15,1,'day'),('kanboard','project_daily_stats','project_daily_stats_idx','2021-04-19 21:07:57','n_diff_pfx02',19,1,'day,project_id'),('kanboard','project_daily_stats','project_daily_stats_idx','2021-04-19 21:07:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_stats','project_daily_stats_idx','2021-04-19 21:07:57','size',1,NULL,'Number of pages in the index'),('kanboard','project_daily_stats','project_id','2021-04-19 21:07:57','n_diff_pfx01',4,1,'project_id'),('kanboard','project_daily_stats','project_id','2021-04-19 21:07:57','n_diff_pfx02',19,1,'project_id,id'),('kanboard','project_daily_stats','project_id','2021-04-19 21:07:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_daily_stats','project_id','2021-04-19 21:07:57','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_categories','PRIMARY','2020-07-30 02:31:26','n_diff_pfx01',0,1,'id'),('kanboard','project_has_categories','PRIMARY','2020-07-30 02:31:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_categories','PRIMARY','2020-07-30 02:31:26','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_categories','categories_project_idx','2020-07-30 02:31:26','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_categories','categories_project_idx','2020-07-30 02:31:26','n_diff_pfx02',0,1,'project_id,id'),('kanboard','project_has_categories','categories_project_idx','2020-07-30 02:31:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_categories','categories_project_idx','2020-07-30 02:31:26','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_categories','idx_project_category','2020-07-30 02:31:26','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_categories','idx_project_category','2020-07-30 02:31:26','n_diff_pfx02',0,1,'project_id,name'),('kanboard','project_has_categories','idx_project_category','2020-07-30 02:31:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_categories','idx_project_category','2020-07-30 02:31:26','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_files','PRIMARY','2020-07-30 02:31:26','n_diff_pfx01',0,1,'id'),('kanboard','project_has_files','PRIMARY','2020-07-30 02:31:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_files','PRIMARY','2020-07-30 02:31:26','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_files','project_id','2020-07-30 02:31:26','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_files','project_id','2020-07-30 02:31:26','n_diff_pfx02',0,1,'project_id,id'),('kanboard','project_has_files','project_id','2020-07-30 02:31:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_files','project_id','2020-07-30 02:31:26','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_groups','group_id','2020-07-30 02:31:27','n_diff_pfx01',0,1,'group_id'),('kanboard','project_has_groups','group_id','2020-07-30 02:31:27','n_diff_pfx02',0,1,'group_id,project_id'),('kanboard','project_has_groups','group_id','2020-07-30 02:31:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_groups','group_id','2020-07-30 02:31:27','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_groups','project_id','2020-07-30 02:31:27','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_groups','project_id','2020-07-30 02:31:27','n_diff_pfx02',0,1,'project_id,group_id'),('kanboard','project_has_groups','project_id','2020-07-30 02:31:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_groups','project_id','2020-07-30 02:31:27','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_metadata','project_id','2020-07-30 02:31:27','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_metadata','project_id','2020-07-30 02:31:27','n_diff_pfx02',0,1,'project_id,name'),('kanboard','project_has_metadata','project_id','2020-07-30 02:31:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_metadata','project_id','2020-07-30 02:31:27','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_notification_types','PRIMARY','2020-07-30 02:31:27','n_diff_pfx01',0,1,'id'),('kanboard','project_has_notification_types','PRIMARY','2020-07-30 02:31:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_notification_types','PRIMARY','2020-07-30 02:31:27','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_notification_types','project_id','2020-07-30 02:31:27','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_notification_types','project_id','2020-07-30 02:31:27','n_diff_pfx02',0,1,'project_id,notification_type'),('kanboard','project_has_notification_types','project_id','2020-07-30 02:31:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_notification_types','project_id','2020-07-30 02:31:27','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_roles','PRIMARY','2020-07-30 02:31:28','n_diff_pfx01',0,1,'role_id'),('kanboard','project_has_roles','PRIMARY','2020-07-30 02:31:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_roles','PRIMARY','2020-07-30 02:31:28','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_roles','project_id','2020-07-30 02:31:28','n_diff_pfx01',0,1,'project_id'),('kanboard','project_has_roles','project_id','2020-07-30 02:31:28','n_diff_pfx02',0,1,'project_id,role'),('kanboard','project_has_roles','project_id','2020-07-30 02:31:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_roles','project_id','2020-07-30 02:31:28','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_users','idx_project_user','2020-08-29 10:43:13','n_diff_pfx01',3,1,'project_id'),('kanboard','project_has_users','idx_project_user','2020-08-29 10:43:13','n_diff_pfx02',3,1,'project_id,user_id'),('kanboard','project_has_users','idx_project_user','2020-08-29 10:43:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_users','idx_project_user','2020-08-29 10:43:13','size',1,NULL,'Number of pages in the index'),('kanboard','project_has_users','user_id','2020-08-29 10:43:13','n_diff_pfx01',1,1,'user_id'),('kanboard','project_has_users','user_id','2020-08-29 10:43:13','n_diff_pfx02',3,1,'user_id,project_id'),('kanboard','project_has_users','user_id','2020-08-29 10:43:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_has_users','user_id','2020-08-29 10:43:13','size',1,NULL,'Number of pages in the index'),('kanboard','project_role_has_restrictions','PRIMARY','2020-07-30 02:31:28','n_diff_pfx01',0,1,'restriction_id'),('kanboard','project_role_has_restrictions','PRIMARY','2020-07-30 02:31:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_role_has_restrictions','PRIMARY','2020-07-30 02:31:28','size',1,NULL,'Number of pages in the index'),('kanboard','project_role_has_restrictions','project_id','2020-07-30 02:31:28','n_diff_pfx01',0,1,'project_id'),('kanboard','project_role_has_restrictions','project_id','2020-07-30 02:31:28','n_diff_pfx02',0,1,'project_id,restriction_id'),('kanboard','project_role_has_restrictions','project_id','2020-07-30 02:31:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_role_has_restrictions','project_id','2020-07-30 02:31:28','size',1,NULL,'Number of pages in the index'),('kanboard','project_role_has_restrictions','role_id','2020-07-30 02:31:28','n_diff_pfx01',0,1,'role_id'),('kanboard','project_role_has_restrictions','role_id','2020-07-30 02:31:28','n_diff_pfx02',0,1,'role_id,rule'),('kanboard','project_role_has_restrictions','role_id','2020-07-30 02:31:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','project_role_has_restrictions','role_id','2020-07-30 02:31:28','size',1,NULL,'Number of pages in the index'),('kanboard','projects','PRIMARY','2020-08-29 10:43:12','n_diff_pfx01',3,1,'id'),('kanboard','projects','PRIMARY','2020-08-29 10:43:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','projects','PRIMARY','2020-08-29 10:43:12','size',1,NULL,'Number of pages in the index'),('kanboard','remember_me','PRIMARY','2021-04-19 21:04:37','n_diff_pfx01',1,1,'id'),('kanboard','remember_me','PRIMARY','2021-04-19 21:04:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','remember_me','PRIMARY','2021-04-19 21:04:37','size',1,NULL,'Number of pages in the index'),('kanboard','remember_me','user_id','2021-04-19 21:04:37','n_diff_pfx01',1,1,'user_id'),('kanboard','remember_me','user_id','2021-04-19 21:04:37','n_diff_pfx02',1,1,'user_id,id'),('kanboard','remember_me','user_id','2021-04-19 21:04:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','remember_me','user_id','2021-04-19 21:04:37','size',1,NULL,'Number of pages in the index'),('kanboard','schema_version','GEN_CLUST_INDEX','2020-07-30 02:31:29','n_diff_pfx01',0,1,'DB_ROW_ID'),('kanboard','schema_version','GEN_CLUST_INDEX','2020-07-30 02:31:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','schema_version','GEN_CLUST_INDEX','2020-07-30 02:31:29','size',1,NULL,'Number of pages in the index'),('kanboard','sessions','PRIMARY','2021-04-19 21:04:13','n_diff_pfx01',30,2,'id'),('kanboard','sessions','PRIMARY','2021-04-19 21:04:13','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('kanboard','sessions','PRIMARY','2021-04-19 21:04:13','size',3,NULL,'Number of pages in the index'),('kanboard','settings','PRIMARY','2020-07-30 02:31:56','n_diff_pfx01',23,1,'option'),('kanboard','settings','PRIMARY','2020-07-30 02:31:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','settings','PRIMARY','2020-07-30 02:31:56','size',1,NULL,'Number of pages in the index'),('kanboard','subtask_time_tracking','PRIMARY','2020-07-30 02:31:30','n_diff_pfx01',0,1,'id'),('kanboard','subtask_time_tracking','PRIMARY','2020-07-30 02:31:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','subtask_time_tracking','PRIMARY','2020-07-30 02:31:30','size',1,NULL,'Number of pages in the index'),('kanboard','subtask_time_tracking','subtask_id','2020-07-30 02:31:30','n_diff_pfx01',0,1,'subtask_id'),('kanboard','subtask_time_tracking','subtask_id','2020-07-30 02:31:30','n_diff_pfx02',0,1,'subtask_id,id'),('kanboard','subtask_time_tracking','subtask_id','2020-07-30 02:31:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','subtask_time_tracking','subtask_id','2020-07-30 02:31:30','size',1,NULL,'Number of pages in the index'),('kanboard','subtask_time_tracking','user_id','2020-07-30 02:31:30','n_diff_pfx01',0,1,'user_id'),('kanboard','subtask_time_tracking','user_id','2020-07-30 02:31:30','n_diff_pfx02',0,1,'user_id,id'),('kanboard','subtask_time_tracking','user_id','2020-07-30 02:31:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','subtask_time_tracking','user_id','2020-07-30 02:31:30','size',1,NULL,'Number of pages in the index'),('kanboard','subtasks','PRIMARY','2020-07-30 02:31:31','n_diff_pfx01',0,1,'id'),('kanboard','subtasks','PRIMARY','2020-07-30 02:31:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','subtasks','PRIMARY','2020-07-30 02:31:31','size',1,NULL,'Number of pages in the index'),('kanboard','subtasks','subtasks_task_idx','2020-07-30 02:31:31','n_diff_pfx01',0,1,'task_id'),('kanboard','subtasks','subtasks_task_idx','2020-07-30 02:31:31','n_diff_pfx02',0,1,'task_id,id'),('kanboard','subtasks','subtasks_task_idx','2020-07-30 02:31:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','subtasks','subtasks_task_idx','2020-07-30 02:31:31','size',1,NULL,'Number of pages in the index'),('kanboard','swimlanes','PRIMARY','2020-08-29 10:43:13','n_diff_pfx01',3,1,'id'),('kanboard','swimlanes','PRIMARY','2020-08-29 10:43:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','swimlanes','PRIMARY','2020-08-29 10:43:13','size',1,NULL,'Number of pages in the index'),('kanboard','swimlanes','name','2020-08-29 10:43:13','n_diff_pfx01',1,1,'name'),('kanboard','swimlanes','name','2020-08-29 10:43:13','n_diff_pfx02',3,1,'name,project_id'),('kanboard','swimlanes','name','2020-08-29 10:43:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','swimlanes','name','2020-08-29 10:43:13','size',1,NULL,'Number of pages in the index'),('kanboard','swimlanes','swimlanes_project_idx','2020-08-29 10:43:13','n_diff_pfx01',3,1,'project_id'),('kanboard','swimlanes','swimlanes_project_idx','2020-08-29 10:43:13','n_diff_pfx02',3,1,'project_id,id'),('kanboard','swimlanes','swimlanes_project_idx','2020-08-29 10:43:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','swimlanes','swimlanes_project_idx','2020-08-29 10:43:13','size',1,NULL,'Number of pages in the index'),('kanboard','tags','PRIMARY','2020-07-30 02:31:31','n_diff_pfx01',0,1,'id'),('kanboard','tags','PRIMARY','2020-07-30 02:31:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tags','PRIMARY','2020-07-30 02:31:31','size',1,NULL,'Number of pages in the index'),('kanboard','tags','project_id','2020-07-30 02:31:31','n_diff_pfx01',0,1,'project_id'),('kanboard','tags','project_id','2020-07-30 02:31:31','n_diff_pfx02',0,1,'project_id,name'),('kanboard','tags','project_id','2020-07-30 02:31:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tags','project_id','2020-07-30 02:31:31','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_external_links','PRIMARY','2020-07-30 02:31:32','n_diff_pfx01',0,1,'id'),('kanboard','task_has_external_links','PRIMARY','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_external_links','PRIMARY','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_external_links','task_id','2020-07-30 02:31:32','n_diff_pfx01',0,1,'task_id'),('kanboard','task_has_external_links','task_id','2020-07-30 02:31:32','n_diff_pfx02',0,1,'task_id,id'),('kanboard','task_has_external_links','task_id','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_external_links','task_id','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_files','PRIMARY','2020-07-30 02:31:32','n_diff_pfx01',0,1,'id'),('kanboard','task_has_files','PRIMARY','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_files','PRIMARY','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_files','files_task_idx','2020-07-30 02:31:32','n_diff_pfx01',0,1,'task_id'),('kanboard','task_has_files','files_task_idx','2020-07-30 02:31:32','n_diff_pfx02',0,1,'task_id,id'),('kanboard','task_has_files','files_task_idx','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_files','files_task_idx','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_links','PRIMARY','2020-07-30 02:31:32','n_diff_pfx01',0,1,'id'),('kanboard','task_has_links','PRIMARY','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_links','PRIMARY','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_links','opposite_task_id','2020-07-30 02:31:32','n_diff_pfx01',0,1,'opposite_task_id'),('kanboard','task_has_links','opposite_task_id','2020-07-30 02:31:32','n_diff_pfx02',0,1,'opposite_task_id,id'),('kanboard','task_has_links','opposite_task_id','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_links','opposite_task_id','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_links','task_has_links_task_index','2020-07-30 02:31:32','n_diff_pfx01',0,1,'task_id'),('kanboard','task_has_links','task_has_links_task_index','2020-07-30 02:31:32','n_diff_pfx02',0,1,'task_id,id'),('kanboard','task_has_links','task_has_links_task_index','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_links','task_has_links_task_index','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_links','task_has_links_unique','2020-07-30 02:31:32','n_diff_pfx01',0,1,'link_id'),('kanboard','task_has_links','task_has_links_unique','2020-07-30 02:31:32','n_diff_pfx02',0,1,'link_id,task_id'),('kanboard','task_has_links','task_has_links_unique','2020-07-30 02:31:32','n_diff_pfx03',0,1,'link_id,task_id,opposite_task_id'),('kanboard','task_has_links','task_has_links_unique','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_links','task_has_links_unique','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_metadata','task_id','2020-07-30 02:31:32','n_diff_pfx01',0,1,'task_id'),('kanboard','task_has_metadata','task_id','2020-07-30 02:31:32','n_diff_pfx02',0,1,'task_id,name'),('kanboard','task_has_metadata','task_id','2020-07-30 02:31:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_metadata','task_id','2020-07-30 02:31:32','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_tags','tag_id','2020-07-30 02:31:33','n_diff_pfx01',0,1,'tag_id'),('kanboard','task_has_tags','tag_id','2020-07-30 02:31:33','n_diff_pfx02',0,1,'tag_id,task_id'),('kanboard','task_has_tags','tag_id','2020-07-30 02:31:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_tags','tag_id','2020-07-30 02:31:33','size',1,NULL,'Number of pages in the index'),('kanboard','task_has_tags','task_id','2020-07-30 02:31:33','n_diff_pfx01',0,1,'task_id'),('kanboard','task_has_tags','task_id','2020-07-30 02:31:33','n_diff_pfx02',0,1,'task_id,tag_id'),('kanboard','task_has_tags','task_id','2020-07-30 02:31:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','task_has_tags','task_id','2020-07-30 02:31:33','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','PRIMARY','2021-04-19 21:07:47','n_diff_pfx01',29,1,'id'),('kanboard','tasks','PRIMARY','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','PRIMARY','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','column_id','2021-04-19 21:07:47','n_diff_pfx01',9,1,'column_id'),('kanboard','tasks','column_id','2021-04-19 21:07:47','n_diff_pfx02',29,1,'column_id,id'),('kanboard','tasks','column_id','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','column_id','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','idx_task_active','2021-04-19 21:07:47','n_diff_pfx01',1,1,'is_active'),('kanboard','tasks','idx_task_active','2021-04-19 21:07:47','n_diff_pfx02',29,1,'is_active,id'),('kanboard','tasks','idx_task_active','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','idx_task_active','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','tasks_project_idx','2021-04-19 21:07:47','n_diff_pfx01',4,1,'project_id'),('kanboard','tasks','tasks_project_idx','2021-04-19 21:07:47','n_diff_pfx02',29,1,'project_id,id'),('kanboard','tasks','tasks_project_idx','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','tasks_project_idx','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','tasks_reference_idx','2021-04-19 21:07:47','n_diff_pfx01',1,1,'reference'),('kanboard','tasks','tasks_reference_idx','2021-04-19 21:07:47','n_diff_pfx02',29,1,'reference,id'),('kanboard','tasks','tasks_reference_idx','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','tasks_reference_idx','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','tasks','tasks_swimlane_ibfk_1','2021-04-19 21:07:47','n_diff_pfx01',4,1,'swimlane_id'),('kanboard','tasks','tasks_swimlane_ibfk_1','2021-04-19 21:07:47','n_diff_pfx02',29,1,'swimlane_id,id'),('kanboard','tasks','tasks_swimlane_ibfk_1','2021-04-19 21:07:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','tasks','tasks_swimlane_ibfk_1','2021-04-19 21:07:47','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','PRIMARY','2020-10-08 08:58:06','n_diff_pfx01',36,1,'id'),('kanboard','transitions','PRIMARY','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','PRIMARY','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','dst_column_id','2020-10-08 08:58:06','n_diff_pfx01',10,1,'dst_column_id'),('kanboard','transitions','dst_column_id','2020-10-08 08:58:06','n_diff_pfx02',36,1,'dst_column_id,id'),('kanboard','transitions','dst_column_id','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','dst_column_id','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','src_column_id','2020-10-08 08:58:06','n_diff_pfx01',10,1,'src_column_id'),('kanboard','transitions','src_column_id','2020-10-08 08:58:06','n_diff_pfx02',36,1,'src_column_id,id'),('kanboard','transitions','src_column_id','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','src_column_id','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','transitions_project_index','2020-10-08 08:58:06','n_diff_pfx01',3,1,'project_id'),('kanboard','transitions','transitions_project_index','2020-10-08 08:58:06','n_diff_pfx02',36,1,'project_id,id'),('kanboard','transitions','transitions_project_index','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','transitions_project_index','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','transitions_task_index','2020-10-08 08:58:06','n_diff_pfx01',20,1,'task_id'),('kanboard','transitions','transitions_task_index','2020-10-08 08:58:06','n_diff_pfx02',36,1,'task_id,id'),('kanboard','transitions','transitions_task_index','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','transitions_task_index','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','transitions','transitions_user_index','2020-10-08 08:58:06','n_diff_pfx01',1,1,'user_id'),('kanboard','transitions','transitions_user_index','2020-10-08 08:58:06','n_diff_pfx02',36,1,'user_id,id'),('kanboard','transitions','transitions_user_index','2020-10-08 08:58:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','transitions','transitions_user_index','2020-10-08 08:58:06','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_metadata','user_id','2020-07-30 02:31:34','n_diff_pfx01',0,1,'user_id'),('kanboard','user_has_metadata','user_id','2020-07-30 02:31:34','n_diff_pfx02',0,1,'user_id,name'),('kanboard','user_has_metadata','user_id','2020-07-30 02:31:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_metadata','user_id','2020-07-30 02:31:34','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_notification_types','PRIMARY','2020-07-30 02:31:34','n_diff_pfx01',0,1,'id'),('kanboard','user_has_notification_types','PRIMARY','2020-07-30 02:31:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_notification_types','PRIMARY','2020-07-30 02:31:34','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_notification_types','user_has_notification_types_user_idx','2020-07-30 02:31:34','n_diff_pfx01',0,1,'user_id'),('kanboard','user_has_notification_types','user_has_notification_types_user_idx','2020-07-30 02:31:34','n_diff_pfx02',0,1,'user_id,notification_type'),('kanboard','user_has_notification_types','user_has_notification_types_user_idx','2020-07-30 02:31:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_notification_types','user_has_notification_types_user_idx','2020-07-30 02:31:34','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_notifications','user_has_notifications_ibfk_2','2020-07-30 02:31:35','n_diff_pfx01',0,1,'project_id'),('kanboard','user_has_notifications','user_has_notifications_ibfk_2','2020-07-30 02:31:35','n_diff_pfx02',0,1,'project_id,user_id'),('kanboard','user_has_notifications','user_has_notifications_ibfk_2','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_notifications','user_has_notifications_ibfk_2','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_notifications','user_has_notifications_unique_idx','2020-07-30 02:31:35','n_diff_pfx01',0,1,'user_id'),('kanboard','user_has_notifications','user_has_notifications_unique_idx','2020-07-30 02:31:35','n_diff_pfx02',0,1,'user_id,project_id'),('kanboard','user_has_notifications','user_has_notifications_unique_idx','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_notifications','user_has_notifications_unique_idx','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_unread_notifications','PRIMARY','2020-07-30 02:31:35','n_diff_pfx01',0,1,'id'),('kanboard','user_has_unread_notifications','PRIMARY','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_unread_notifications','PRIMARY','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('kanboard','user_has_unread_notifications','user_id','2020-07-30 02:31:35','n_diff_pfx01',0,1,'user_id'),('kanboard','user_has_unread_notifications','user_id','2020-07-30 02:31:35','n_diff_pfx02',0,1,'user_id,id'),('kanboard','user_has_unread_notifications','user_id','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','user_has_unread_notifications','user_id','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('kanboard','users','PRIMARY','2020-07-30 02:31:35','n_diff_pfx01',0,1,'id'),('kanboard','users','PRIMARY','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','users','PRIMARY','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('kanboard','users','users_username_idx','2020-07-30 02:31:35','n_diff_pfx01',0,1,'username'),('kanboard','users','users_username_idx','2020-07-30 02:31:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('kanboard','users','users_username_idx','2020-07-30 02:31:35','size',1,NULL,'Number of pages in the index'),('lara_hb','bookings','110461_5a676fa2321c7','2020-06-08 09:02:57','n_diff_pfx01',3,1,'customer_id'),('lara_hb','bookings','110461_5a676fa2321c7','2020-06-08 09:02:57','n_diff_pfx02',11,1,'customer_id,id'),('lara_hb','bookings','110461_5a676fa2321c7','2020-06-08 09:02:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','bookings','110461_5a676fa2321c7','2020-06-08 09:02:57','size',1,NULL,'Number of pages in the index'),('lara_hb','bookings','110461_5a676fa239ffd','2020-06-08 09:02:57','n_diff_pfx01',2,1,'room_id'),('lara_hb','bookings','110461_5a676fa239ffd','2020-06-08 09:02:57','n_diff_pfx02',11,1,'room_id,id'),('lara_hb','bookings','110461_5a676fa239ffd','2020-06-08 09:02:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','bookings','110461_5a676fa239ffd','2020-06-08 09:02:57','size',1,NULL,'Number of pages in the index'),('lara_hb','bookings','PRIMARY','2020-06-08 09:02:57','n_diff_pfx01',11,1,'id'),('lara_hb','bookings','PRIMARY','2020-06-08 09:02:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','bookings','PRIMARY','2020-06-08 09:02:57','size',1,NULL,'Number of pages in the index'),('lara_hb','bookings','bookings_deleted_at_index','2020-06-08 09:02:57','n_diff_pfx01',1,1,'deleted_at'),('lara_hb','bookings','bookings_deleted_at_index','2020-06-08 09:02:57','n_diff_pfx02',11,1,'deleted_at,id'),('lara_hb','bookings','bookings_deleted_at_index','2020-06-08 09:02:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','bookings','bookings_deleted_at_index','2020-06-08 09:02:57','size',1,NULL,'Number of pages in the index'),('lara_hb','categories','PRIMARY','2020-06-02 13:21:36','n_diff_pfx01',0,1,'id'),('lara_hb','categories','PRIMARY','2020-06-02 13:21:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','categories','PRIMARY','2020-06-02 13:21:36','size',1,NULL,'Number of pages in the index'),('lara_hb','countries','PRIMARY','2020-06-02 13:21:47','n_diff_pfx01',264,1,'id'),('lara_hb','countries','PRIMARY','2020-06-02 13:21:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','countries','PRIMARY','2020-06-02 13:21:47','size',1,NULL,'Number of pages in the index'),('lara_hb','countries','countries_deleted_at_index','2020-06-02 13:21:47','n_diff_pfx01',1,1,'deleted_at'),('lara_hb','countries','countries_deleted_at_index','2020-06-02 13:21:47','n_diff_pfx02',264,1,'deleted_at,id'),('lara_hb','countries','countries_deleted_at_index','2020-06-02 13:21:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','countries','countries_deleted_at_index','2020-06-02 13:21:47','size',1,NULL,'Number of pages in the index'),('lara_hb','customers','110459_5a676ed5d9792','2020-06-08 09:06:24','n_diff_pfx01',2,1,'country_id'),('lara_hb','customers','110459_5a676ed5d9792','2020-06-08 09:06:24','n_diff_pfx02',16,1,'country_id,id'),('lara_hb','customers','110459_5a676ed5d9792','2020-06-08 09:06:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','customers','110459_5a676ed5d9792','2020-06-08 09:06:24','size',1,NULL,'Number of pages in the index'),('lara_hb','customers','PRIMARY','2020-06-08 09:06:24','n_diff_pfx01',16,1,'id'),('lara_hb','customers','PRIMARY','2020-06-08 09:06:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','customers','PRIMARY','2020-06-08 09:06:24','size',1,NULL,'Number of pages in the index'),('lara_hb','customers','customers_deleted_at_index','2020-06-08 09:06:24','n_diff_pfx01',1,1,'deleted_at'),('lara_hb','customers','customers_deleted_at_index','2020-06-08 09:06:24','n_diff_pfx02',16,1,'deleted_at,id'),('lara_hb','customers','customers_deleted_at_index','2020-06-08 09:06:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','customers','customers_deleted_at_index','2020-06-08 09:06:24','size',1,NULL,'Number of pages in the index'),('lara_hb','migrations','PRIMARY','2020-06-02 13:21:57','n_diff_pfx01',15,1,'id'),('lara_hb','migrations','PRIMARY','2020-06-02 13:21:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','migrations','PRIMARY','2020-06-02 13:21:57','size',1,NULL,'Number of pages in the index'),('lara_hb','password_resets','GEN_CLUST_INDEX','2020-06-02 13:21:28','n_diff_pfx01',0,1,'DB_ROW_ID'),('lara_hb','password_resets','GEN_CLUST_INDEX','2020-06-02 13:21:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','password_resets','GEN_CLUST_INDEX','2020-06-02 13:21:28','size',1,NULL,'Number of pages in the index'),('lara_hb','password_resets','password_resets_email_index','2020-06-02 13:21:28','n_diff_pfx01',0,1,'email'),('lara_hb','password_resets','password_resets_email_index','2020-06-02 13:21:28','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('lara_hb','password_resets','password_resets_email_index','2020-06-02 13:21:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','password_resets','password_resets_email_index','2020-06-02 13:21:28','size',1,NULL,'Number of pages in the index'),('lara_hb','roles','PRIMARY','2020-06-06 04:10:16','n_diff_pfx01',2,1,'id'),('lara_hb','roles','PRIMARY','2020-06-06 04:10:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','roles','PRIMARY','2020-06-06 04:10:16','size',1,NULL,'Number of pages in the index'),('lara_hb','rooms','PRIMARY','2020-06-08 09:06:26','n_diff_pfx01',16,1,'id'),('lara_hb','rooms','PRIMARY','2020-06-08 09:06:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','rooms','PRIMARY','2020-06-08 09:06:26','size',1,NULL,'Number of pages in the index'),('lara_hb','rooms','rooms_category_id_foreign','2020-06-08 09:06:26','n_diff_pfx01',2,1,'category_id'),('lara_hb','rooms','rooms_category_id_foreign','2020-06-08 09:06:26','n_diff_pfx02',16,1,'category_id,id'),('lara_hb','rooms','rooms_category_id_foreign','2020-06-08 09:06:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','rooms','rooms_category_id_foreign','2020-06-08 09:06:26','size',1,NULL,'Number of pages in the index'),('lara_hb','rooms','rooms_deleted_at_index','2020-06-08 09:06:26','n_diff_pfx01',1,1,'deleted_at'),('lara_hb','rooms','rooms_deleted_at_index','2020-06-08 09:06:26','n_diff_pfx02',16,1,'deleted_at,id'),('lara_hb','rooms','rooms_deleted_at_index','2020-06-08 09:06:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','rooms','rooms_deleted_at_index','2020-06-08 09:06:26','size',1,NULL,'Number of pages in the index'),('lara_hb','users','110457_5a676d8ddf4c7','2020-06-08 08:57:46','n_diff_pfx01',2,1,'role_id'),('lara_hb','users','110457_5a676d8ddf4c7','2020-06-08 08:57:46','n_diff_pfx02',4,1,'role_id,id'),('lara_hb','users','110457_5a676d8ddf4c7','2020-06-08 08:57:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','users','110457_5a676d8ddf4c7','2020-06-08 08:57:46','size',1,NULL,'Number of pages in the index'),('lara_hb','users','PRIMARY','2020-06-08 08:57:46','n_diff_pfx01',4,1,'id'),('lara_hb','users','PRIMARY','2020-06-08 08:57:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lara_hb','users','PRIMARY','2020-06-08 08:57:46','size',1,NULL,'Number of pages in the index'),('laravel6','articles','PRIMARY','2019-12-05 03:34:31','n_diff_pfx01',3,1,'id'),('laravel6','articles','PRIMARY','2019-12-05 03:34:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','articles','PRIMARY','2019-12-05 03:34:31','size',1,NULL,'Number of pages in the index'),('laravel6','assignments','PRIMARY','2019-11-03 10:16:24','n_diff_pfx01',0,1,'id'),('laravel6','assignments','PRIMARY','2019-11-03 10:16:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','assignments','PRIMARY','2019-11-03 10:16:24','size',1,NULL,'Number of pages in the index'),('laravel6','failed_jobs','PRIMARY','2019-11-02 14:06:42','n_diff_pfx01',0,1,'id'),('laravel6','failed_jobs','PRIMARY','2019-11-02 14:06:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','failed_jobs','PRIMARY','2019-11-02 14:06:42','size',1,NULL,'Number of pages in the index'),('laravel6','migrations','PRIMARY','2019-11-27 11:13:21','n_diff_pfx01',9,1,'id'),('laravel6','migrations','PRIMARY','2019-11-27 11:13:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','migrations','PRIMARY','2019-11-27 11:13:21','size',1,NULL,'Number of pages in the index'),('laravel6','news','PRIMARY','2019-11-20 03:19:17','n_diff_pfx01',0,1,'id'),('laravel6','news','PRIMARY','2019-11-20 03:19:17','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','news','PRIMARY','2019-11-20 03:19:17','size',1,NULL,'Number of pages in the index'),('laravel6','password_resets','GEN_CLUST_INDEX','2019-11-02 14:06:41','n_diff_pfx01',0,1,'DB_ROW_ID'),('laravel6','password_resets','GEN_CLUST_INDEX','2019-11-02 14:06:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','password_resets','GEN_CLUST_INDEX','2019-11-02 14:06:41','size',1,NULL,'Number of pages in the index'),('laravel6','password_resets','password_resets_email_index','2019-11-02 14:06:42','n_diff_pfx01',0,1,'email'),('laravel6','password_resets','password_resets_email_index','2019-11-02 14:06:42','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('laravel6','password_resets','password_resets_email_index','2019-11-02 14:06:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','password_resets','password_resets_email_index','2019-11-02 14:06:42','size',1,NULL,'Number of pages in the index'),('laravel6','posts','PRIMARY','2019-11-03 10:16:24','n_diff_pfx01',0,1,'id'),('laravel6','posts','PRIMARY','2019-11-03 10:16:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','posts','PRIMARY','2019-11-03 10:16:24','size',1,NULL,'Number of pages in the index'),('laravel6','tests','PRIMARY','2019-11-04 03:08:45','n_diff_pfx01',0,1,'id'),('laravel6','tests','PRIMARY','2019-11-04 03:08:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','tests','PRIMARY','2019-11-04 03:08:45','size',1,NULL,'Number of pages in the index'),('laravel6','users','PRIMARY','2019-11-02 14:06:41','n_diff_pfx01',0,1,'id'),('laravel6','users','PRIMARY','2019-11-02 14:06:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','users','PRIMARY','2019-11-02 14:06:41','size',1,NULL,'Number of pages in the index'),('laravel6','users','users_email_unique','2019-11-02 14:06:41','n_diff_pfx01',0,1,'email'),('laravel6','users','users_email_unique','2019-11-02 14:06:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','users','users_email_unique','2019-11-02 14:06:41','size',1,NULL,'Number of pages in the index'),('laravel6','writeups','PRIMARY','2019-11-27 11:20:11','n_diff_pfx01',2,1,'id'),('laravel6','writeups','PRIMARY','2019-11-27 11:20:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laravel6','writeups','PRIMARY','2019-11-27 11:20:11','size',1,NULL,'Number of pages in the index'),('ld','lod','PRIMARY','2019-12-03 04:14:00','n_diff_pfx01',2,1,'id'),('ld','lod','PRIMARY','2019-12-03 04:14:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ld','lod','PRIMARY','2019-12-03 04:14:00','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2021-04-30 23:33:18','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2021-04-30 23:33:18','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2021-04-30 23:33:18','size',1,NULL,'Number of pages in the index'),('publications','Books','PRIMARY','2019-07-27 08:47:36','n_diff_pfx01',3,1,'isbn'),('publications','Books','PRIMARY','2019-07-27 08:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','Books','PRIMARY','2019-07-27 08:47:36','size',1,NULL,'Number of pages in the index'),('publications','accounts','PRIMARY','2019-07-27 08:47:36','n_diff_pfx01',2,1,'number'),('publications','accounts','PRIMARY','2019-07-27 08:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','accounts','PRIMARY','2019-07-27 08:47:36','size',1,NULL,'Number of pages in the index'),('publications','cats','PRIMARY','2019-07-28 14:23:50','n_diff_pfx01',2,1,'id'),('publications','cats','PRIMARY','2019-07-28 14:23:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','cats','PRIMARY','2019-07-28 14:23:50','size',1,NULL,'Number of pages in the index'),('publications','classics','FTS_DOC_ID_INDEX','2019-07-28 07:10:09','n_diff_pfx01',4,1,'FTS_DOC_ID'),('publications','classics','FTS_DOC_ID_INDEX','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','FTS_DOC_ID_INDEX','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','classics','PRIMARY','2019-07-28 07:10:09','n_diff_pfx01',4,1,'isbn'),('publications','classics','PRIMARY','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','PRIMARY','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','classics','author','2019-07-28 07:10:09','n_diff_pfx01',4,1,'author'),('publications','classics','author','2019-07-28 07:10:09','n_diff_pfx02',4,1,'author,isbn'),('publications','classics','author','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','author','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','classics','category','2019-07-28 07:10:09','n_diff_pfx01',2,1,'category'),('publications','classics','category','2019-07-28 07:10:09','n_diff_pfx02',4,1,'category,isbn'),('publications','classics','category','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','category','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','classics','title','2019-07-28 07:10:09','n_diff_pfx01',4,1,'title'),('publications','classics','title','2019-07-28 07:10:09','n_diff_pfx02',4,1,'title,isbn'),('publications','classics','title','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','title','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','classics','year','2019-07-28 07:10:09','n_diff_pfx01',4,1,'year'),('publications','classics','year','2019-07-28 07:10:09','n_diff_pfx02',4,1,'year,isbn'),('publications','classics','year','2019-07-28 07:10:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','classics','year','2019-07-28 07:10:09','size',1,NULL,'Number of pages in the index'),('publications','customers','PRIMARY','2019-07-27 08:47:49','n_diff_pfx01',3,1,'isbn'),('publications','customers','PRIMARY','2019-07-27 08:47:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','customers','PRIMARY','2019-07-27 08:47:49','size',1,NULL,'Number of pages in the index'),('publications','tasks','PRIMARY','2020-07-11 23:37:07','n_diff_pfx01',0,1,'id'),('publications','tasks','PRIMARY','2020-07-11 23:37:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','tasks','PRIMARY','2020-07-11 23:37:07','size',1,NULL,'Number of pages in the index'),('publications','users','GEN_CLUST_INDEX','2019-08-16 09:13:44','n_diff_pfx01',2,1,'DB_ROW_ID'),('publications','users','GEN_CLUST_INDEX','2019-08-16 09:13:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('publications','users','GEN_CLUST_INDEX','2019-08-16 09:13:44','size',1,NULL,'Number of pages in the index'),('rara','failed_jobs','PRIMARY','2020-01-12 08:47:14','n_diff_pfx01',0,1,'id'),('rara','failed_jobs','PRIMARY','2020-01-12 08:47:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','failed_jobs','PRIMARY','2020-01-12 08:47:14','size',1,NULL,'Number of pages in the index'),('rara','messages','PRIMARY','2020-01-17 03:27:59','n_diff_pfx01',2,1,'id'),('rara','messages','PRIMARY','2020-01-17 03:27:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','messages','PRIMARY','2020-01-17 03:27:59','size',1,NULL,'Number of pages in the index'),('rara','migrations','PRIMARY','2020-01-12 08:47:24','n_diff_pfx01',4,1,'id'),('rara','migrations','PRIMARY','2020-01-12 08:47:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','migrations','PRIMARY','2020-01-12 08:47:24','size',1,NULL,'Number of pages in the index'),('rara','password_resets','GEN_CLUST_INDEX','2020-01-12 08:47:14','n_diff_pfx01',0,1,'DB_ROW_ID'),('rara','password_resets','GEN_CLUST_INDEX','2020-01-12 08:47:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','password_resets','GEN_CLUST_INDEX','2020-01-12 08:47:14','size',1,NULL,'Number of pages in the index'),('rara','password_resets','password_resets_email_index','2020-01-12 08:47:14','n_diff_pfx01',0,1,'email'),('rara','password_resets','password_resets_email_index','2020-01-12 08:47:14','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('rara','password_resets','password_resets_email_index','2020-01-12 08:47:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','password_resets','password_resets_email_index','2020-01-12 08:47:14','size',1,NULL,'Number of pages in the index'),('rara','users','PRIMARY','2020-01-12 08:47:13','n_diff_pfx01',0,1,'id'),('rara','users','PRIMARY','2020-01-12 08:47:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','users','PRIMARY','2020-01-12 08:47:13','size',1,NULL,'Number of pages in the index'),('rara','users','users_email_unique','2020-01-12 08:47:13','n_diff_pfx01',0,1,'email'),('rara','users','users_email_unique','2020-01-12 08:47:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('rara','users','users_email_unique','2020-01-12 08:47:13','size',1,NULL,'Number of pages in the index'),('shyamnest','friends','GEN_CLUST_INDEX','2021-04-07 01:16:49','n_diff_pfx01',0,1,'DB_ROW_ID'),('shyamnest','friends','GEN_CLUST_INDEX','2021-04-07 01:16:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','friends','GEN_CLUST_INDEX','2021-04-07 01:16:49','size',1,NULL,'Number of pages in the index'),('shyamnest','friends','friend','2021-04-07 01:16:49','n_diff_pfx01',0,1,'friend'),('shyamnest','friends','friend','2021-04-07 01:16:49','n_diff_pfx02',0,1,'friend,DB_ROW_ID'),('shyamnest','friends','friend','2021-04-07 01:16:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','friends','friend','2021-04-07 01:16:49','size',1,NULL,'Number of pages in the index'),('shyamnest','friends','user','2021-04-07 01:16:49','n_diff_pfx01',0,1,'user'),('shyamnest','friends','user','2021-04-07 01:16:49','n_diff_pfx02',0,1,'user,DB_ROW_ID'),('shyamnest','friends','user','2021-04-07 01:16:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','friends','user','2021-04-07 01:16:49','size',1,NULL,'Number of pages in the index'),('shyamnest','members','GEN_CLUST_INDEX','2021-04-05 22:08:04','n_diff_pfx01',0,1,'DB_ROW_ID'),('shyamnest','members','GEN_CLUST_INDEX','2021-04-05 22:08:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','members','GEN_CLUST_INDEX','2021-04-05 22:08:04','size',1,NULL,'Number of pages in the index'),('shyamnest','members','user','2021-04-05 22:08:04','n_diff_pfx01',0,1,'user'),('shyamnest','members','user','2021-04-05 22:08:04','n_diff_pfx02',0,1,'user,DB_ROW_ID'),('shyamnest','members','user','2021-04-05 22:08:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','members','user','2021-04-05 22:08:04','size',1,NULL,'Number of pages in the index'),('shyamnest','messages','PRIMARY','2021-04-08 00:00:54','n_diff_pfx01',2,1,'id'),('shyamnest','messages','PRIMARY','2021-04-08 00:00:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','messages','PRIMARY','2021-04-08 00:00:54','size',1,NULL,'Number of pages in the index'),('shyamnest','messages','auth','2021-04-08 00:00:54','n_diff_pfx01',1,1,'auth'),('shyamnest','messages','auth','2021-04-08 00:00:54','n_diff_pfx02',2,1,'auth,id'),('shyamnest','messages','auth','2021-04-08 00:00:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','messages','auth','2021-04-08 00:00:54','size',1,NULL,'Number of pages in the index'),('shyamnest','messages','recip','2021-04-08 00:00:54','n_diff_pfx01',1,1,'recip'),('shyamnest','messages','recip','2021-04-08 00:00:54','n_diff_pfx02',2,1,'recip,id'),('shyamnest','messages','recip','2021-04-08 00:00:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','messages','recip','2021-04-08 00:00:54','size',1,NULL,'Number of pages in the index'),('shyamnest','profiles','GEN_CLUST_INDEX','2021-04-05 22:12:40','n_diff_pfx01',0,1,'DB_ROW_ID'),('shyamnest','profiles','GEN_CLUST_INDEX','2021-04-05 22:12:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','profiles','GEN_CLUST_INDEX','2021-04-05 22:12:40','size',1,NULL,'Number of pages in the index'),('shyamnest','profiles','user','2021-04-05 22:12:40','n_diff_pfx01',0,1,'user'),('shyamnest','profiles','user','2021-04-05 22:12:40','n_diff_pfx02',0,1,'user,DB_ROW_ID'),('shyamnest','profiles','user','2021-04-05 22:12:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shyamnest','profiles','user','2021-04-05 22:12:40','size',1,NULL,'Number of pages in the index'),('site','failed_jobs','PRIMARY','2019-09-09 10:47:37','n_diff_pfx01',0,1,'id'),('site','failed_jobs','PRIMARY','2019-09-09 10:47:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','failed_jobs','PRIMARY','2019-09-09 10:47:37','size',1,NULL,'Number of pages in the index'),('site','messages','PRIMARY','2019-09-09 10:55:33','n_diff_pfx01',2,1,'id'),('site','messages','PRIMARY','2019-09-09 10:55:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','messages','PRIMARY','2019-09-09 10:55:33','size',1,NULL,'Number of pages in the index'),('site','migrations','PRIMARY','2019-09-09 10:47:47','n_diff_pfx01',4,1,'id'),('site','migrations','PRIMARY','2019-09-09 10:47:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','migrations','PRIMARY','2019-09-09 10:47:47','size',1,NULL,'Number of pages in the index'),('site','password_resets','GEN_CLUST_INDEX','2019-09-09 10:47:36','n_diff_pfx01',0,1,'DB_ROW_ID'),('site','password_resets','GEN_CLUST_INDEX','2019-09-09 10:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','password_resets','GEN_CLUST_INDEX','2019-09-09 10:47:36','size',1,NULL,'Number of pages in the index'),('site','password_resets','password_resets_email_index','2019-09-09 10:47:36','n_diff_pfx01',0,1,'email'),('site','password_resets','password_resets_email_index','2019-09-09 10:47:36','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('site','password_resets','password_resets_email_index','2019-09-09 10:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','password_resets','password_resets_email_index','2019-09-09 10:47:36','size',1,NULL,'Number of pages in the index'),('site','users','PRIMARY','2019-09-09 10:47:36','n_diff_pfx01',0,1,'id'),('site','users','PRIMARY','2019-09-09 10:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','users','PRIMARY','2019-09-09 10:47:36','size',1,NULL,'Number of pages in the index'),('site','users','users_email_unique','2019-09-09 10:47:36','n_diff_pfx01',0,1,'email'),('site','users','users_email_unique','2019-09-09 10:47:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('site','users','users_email_unique','2019-09-09 10:47:36','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2021-02-01 22:39:40','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2021-02-01 22:39:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2021-02-01 22:39:40','size',1,NULL,'Number of pages in the index'),('taskapp','failed_jobs','PRIMARY','2021-01-30 22:59:49','n_diff_pfx01',0,1,'id'),('taskapp','failed_jobs','PRIMARY','2021-01-30 22:59:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','failed_jobs','PRIMARY','2021-01-30 22:59:49','size',1,NULL,'Number of pages in the index'),('taskapp','failed_jobs','failed_jobs_uuid_unique','2021-01-30 22:59:50','n_diff_pfx01',0,1,'uuid'),('taskapp','failed_jobs','failed_jobs_uuid_unique','2021-01-30 22:59:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','failed_jobs','failed_jobs_uuid_unique','2021-01-30 22:59:50','size',1,NULL,'Number of pages in the index'),('taskapp','migrations','PRIMARY','2021-01-30 22:59:49','n_diff_pfx01',2,1,'id'),('taskapp','migrations','PRIMARY','2021-01-30 22:59:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','migrations','PRIMARY','2021-01-30 22:59:49','size',1,NULL,'Number of pages in the index'),('taskapp','password_resets','GEN_CLUST_INDEX','2021-01-30 22:59:49','n_diff_pfx01',0,1,'DB_ROW_ID'),('taskapp','password_resets','GEN_CLUST_INDEX','2021-01-30 22:59:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','password_resets','GEN_CLUST_INDEX','2021-01-30 22:59:49','size',1,NULL,'Number of pages in the index'),('taskapp','password_resets','password_resets_email_index','2021-01-30 22:59:49','n_diff_pfx01',0,1,'email'),('taskapp','password_resets','password_resets_email_index','2021-01-30 22:59:49','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('taskapp','password_resets','password_resets_email_index','2021-01-30 22:59:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','password_resets','password_resets_email_index','2021-01-30 22:59:49','size',1,NULL,'Number of pages in the index'),('taskapp','users','PRIMARY','2021-01-30 22:59:48','n_diff_pfx01',0,1,'id'),('taskapp','users','PRIMARY','2021-01-30 22:59:48','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','users','PRIMARY','2021-01-30 22:59:48','size',1,NULL,'Number of pages in the index'),('taskapp','users','users_email_unique','2021-01-30 22:59:48','n_diff_pfx01',0,1,'email'),('taskapp','users','users_email_unique','2021-01-30 22:59:48','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('taskapp','users','users_email_unique','2021-01-30 22:59:48','size',1,NULL,'Number of pages in the index'),('test','failed_jobs','PRIMARY','2021-01-07 00:40:45','n_diff_pfx01',0,1,'id'),('test','failed_jobs','PRIMARY','2021-01-07 00:40:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','failed_jobs','PRIMARY','2021-01-07 00:40:45','size',1,NULL,'Number of pages in the index'),('test','failed_jobs','failed_jobs_uuid_unique','2021-01-07 00:40:45','n_diff_pfx01',0,1,'uuid'),('test','failed_jobs','failed_jobs_uuid_unique','2021-01-07 00:40:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','failed_jobs','failed_jobs_uuid_unique','2021-01-07 00:40:45','size',1,NULL,'Number of pages in the index'),('test','migrations','PRIMARY','2021-01-07 00:40:45','n_diff_pfx01',2,1,'id'),('test','migrations','PRIMARY','2021-01-07 00:40:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','migrations','PRIMARY','2021-01-07 00:40:45','size',1,NULL,'Number of pages in the index'),('test','password_resets','GEN_CLUST_INDEX','2021-01-07 00:40:45','n_diff_pfx01',0,1,'DB_ROW_ID'),('test','password_resets','GEN_CLUST_INDEX','2021-01-07 00:40:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','password_resets','GEN_CLUST_INDEX','2021-01-07 00:40:45','size',1,NULL,'Number of pages in the index'),('test','password_resets','password_resets_email_index','2021-01-07 00:40:45','n_diff_pfx01',0,1,'email'),('test','password_resets','password_resets_email_index','2021-01-07 00:40:45','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('test','password_resets','password_resets_email_index','2021-01-07 00:40:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','password_resets','password_resets_email_index','2021-01-07 00:40:45','size',1,NULL,'Number of pages in the index'),('test','users','PRIMARY','2021-01-07 00:40:44','n_diff_pfx01',0,1,'id'),('test','users','PRIMARY','2021-01-07 00:40:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','users','PRIMARY','2021-01-07 00:40:44','size',1,NULL,'Number of pages in the index'),('test','users','users_email_unique','2021-01-07 00:40:44','n_diff_pfx01',0,1,'email'),('test','users','users_email_unique','2021-01-07 00:40:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('test','users','users_email_unique','2021-01-07 00:40:44','size',1,NULL,'Number of pages in the index'),('testdb','tutorials','PRIMARY','2020-11-12 19:55:19','n_diff_pfx01',2,1,'id'),('testdb','tutorials','PRIMARY','2020-11-12 19:55:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('testdb','tutorials','PRIMARY','2020-11-12 19:55:19','size',1,NULL,'Number of pages in the index'),('timelog','members','GEN_CLUST_INDEX','2021-05-02 23:48:25','n_diff_pfx01',0,1,'DB_ROW_ID'),('timelog','members','GEN_CLUST_INDEX','2021-05-02 23:48:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('timelog','members','GEN_CLUST_INDEX','2021-05-02 23:48:25','size',1,NULL,'Number of pages in the index'),('timelog','members','user','2021-05-02 23:48:25','n_diff_pfx01',0,1,'user'),('timelog','members','user','2021-05-02 23:48:25','n_diff_pfx02',0,1,'user,DB_ROW_ID'),('timelog','members','user','2021-05-02 23:48:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('timelog','members','user','2021-05-02 23:48:25','size',1,NULL,'Number of pages in the index'),('timelog','store','PRIMARY','2021-05-02 23:48:26','n_diff_pfx01',0,1,'id'),('timelog','store','PRIMARY','2021-05-02 23:48:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('timelog','store','PRIMARY','2021-05-02 23:48:26','size',1,NULL,'Number of pages in the index'),('todo','failed_jobs','PRIMARY','2021-01-05 11:28:42','n_diff_pfx01',0,1,'id'),('todo','failed_jobs','PRIMARY','2021-01-05 11:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','failed_jobs','PRIMARY','2021-01-05 11:28:42','size',1,NULL,'Number of pages in the index'),('todo','migrations','PRIMARY','2021-01-05 11:28:42','n_diff_pfx01',2,1,'id'),('todo','migrations','PRIMARY','2021-01-05 11:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','migrations','PRIMARY','2021-01-05 11:28:42','size',1,NULL,'Number of pages in the index'),('todo','password_resets','GEN_CLUST_INDEX','2021-01-05 11:28:42','n_diff_pfx01',0,1,'DB_ROW_ID'),('todo','password_resets','GEN_CLUST_INDEX','2021-01-05 11:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','password_resets','GEN_CLUST_INDEX','2021-01-05 11:28:42','size',1,NULL,'Number of pages in the index'),('todo','password_resets','password_resets_email_index','2021-01-05 11:28:42','n_diff_pfx01',0,1,'email'),('todo','password_resets','password_resets_email_index','2021-01-05 11:28:42','n_diff_pfx02',0,1,'email,DB_ROW_ID'),('todo','password_resets','password_resets_email_index','2021-01-05 11:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','password_resets','password_resets_email_index','2021-01-05 11:28:42','size',1,NULL,'Number of pages in the index'),('todo','users','PRIMARY','2021-01-05 11:28:41','n_diff_pfx01',0,1,'id'),('todo','users','PRIMARY','2021-01-05 11:28:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','users','PRIMARY','2021-01-05 11:28:41','size',1,NULL,'Number of pages in the index'),('todo','users','users_email_unique','2021-01-05 11:28:41','n_diff_pfx01',0,1,'email'),('todo','users','users_email_unique','2021-01-05 11:28:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('todo','users','users_email_unique','2021-01-05 11:28:41','size',1,NULL,'Number of pages in the index'),('wordpress','wp_commentmeta','PRIMARY','2021-03-21 01:26:23','n_diff_pfx01',0,1,'meta_id'),('wordpress','wp_commentmeta','PRIMARY','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_commentmeta','PRIMARY','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_commentmeta','comment_id','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_id'),('wordpress','wp_commentmeta','comment_id','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_id,meta_id'),('wordpress','wp_commentmeta','comment_id','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_commentmeta','comment_id','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_commentmeta','meta_key','2021-03-21 01:26:23','n_diff_pfx01',0,1,'meta_key'),('wordpress','wp_commentmeta','meta_key','2021-03-21 01:26:23','n_diff_pfx02',0,1,'meta_key,meta_id'),('wordpress','wp_commentmeta','meta_key','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_commentmeta','meta_key','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','PRIMARY','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_ID'),('wordpress','wp_comments','PRIMARY','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','PRIMARY','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','comment_approved_date_gmt','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_approved'),('wordpress','wp_comments','comment_approved_date_gmt','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_approved,comment_date_gmt'),('wordpress','wp_comments','comment_approved_date_gmt','2021-03-21 01:26:23','n_diff_pfx03',0,1,'comment_approved,comment_date_gmt,comment_ID'),('wordpress','wp_comments','comment_approved_date_gmt','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','comment_approved_date_gmt','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','comment_author_email','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_author_email'),('wordpress','wp_comments','comment_author_email','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_author_email,comment_ID'),('wordpress','wp_comments','comment_author_email','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','comment_author_email','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','comment_date_gmt','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_date_gmt'),('wordpress','wp_comments','comment_date_gmt','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_date_gmt,comment_ID'),('wordpress','wp_comments','comment_date_gmt','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','comment_date_gmt','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','comment_parent','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_parent'),('wordpress','wp_comments','comment_parent','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_parent,comment_ID'),('wordpress','wp_comments','comment_parent','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','comment_parent','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_comments','comment_post_ID','2021-03-21 01:26:23','n_diff_pfx01',0,1,'comment_post_ID'),('wordpress','wp_comments','comment_post_ID','2021-03-21 01:26:23','n_diff_pfx02',0,1,'comment_post_ID,comment_ID'),('wordpress','wp_comments','comment_post_ID','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_comments','comment_post_ID','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_links','PRIMARY','2021-03-21 01:26:24','n_diff_pfx01',0,1,'link_id'),('wordpress','wp_links','PRIMARY','2021-03-21 01:26:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_links','PRIMARY','2021-03-21 01:26:24','size',1,NULL,'Number of pages in the index'),('wordpress','wp_links','link_visible','2021-03-21 01:26:24','n_diff_pfx01',0,1,'link_visible'),('wordpress','wp_links','link_visible','2021-03-21 01:26:24','n_diff_pfx02',0,1,'link_visible,link_id'),('wordpress','wp_links','link_visible','2021-03-21 01:26:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_links','link_visible','2021-03-21 01:26:24','size',1,NULL,'Number of pages in the index'),('wordpress','wp_options','PRIMARY','2021-03-26 22:30:24','n_diff_pfx01',138,3,'option_id'),('wordpress','wp_options','PRIMARY','2021-03-26 22:30:24','n_leaf_pages',45,NULL,'Number of leaf pages in the index'),('wordpress','wp_options','PRIMARY','2021-03-26 22:30:24','size',97,NULL,'Number of pages in the index'),('wordpress','wp_options','autoload','2021-03-26 22:30:24','n_diff_pfx01',2,1,'autoload'),('wordpress','wp_options','autoload','2021-03-26 22:30:24','n_diff_pfx02',141,1,'autoload,option_id'),('wordpress','wp_options','autoload','2021-03-26 22:30:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_options','autoload','2021-03-26 22:30:24','size',1,NULL,'Number of pages in the index'),('wordpress','wp_options','option_name','2021-03-26 22:30:24','n_diff_pfx01',141,1,'option_name'),('wordpress','wp_options','option_name','2021-03-26 22:30:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_options','option_name','2021-03-26 22:30:24','size',1,NULL,'Number of pages in the index'),('wordpress','wp_postmeta','PRIMARY','2021-03-21 01:33:41','n_diff_pfx01',10,1,'meta_id'),('wordpress','wp_postmeta','PRIMARY','2021-03-21 01:33:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_postmeta','PRIMARY','2021-03-21 01:33:41','size',1,NULL,'Number of pages in the index'),('wordpress','wp_postmeta','meta_key','2021-03-21 01:33:41','n_diff_pfx01',3,1,'meta_key'),('wordpress','wp_postmeta','meta_key','2021-03-21 01:33:41','n_diff_pfx02',10,1,'meta_key,meta_id'),('wordpress','wp_postmeta','meta_key','2021-03-21 01:33:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_postmeta','meta_key','2021-03-21 01:33:41','size',1,NULL,'Number of pages in the index'),('wordpress','wp_postmeta','post_id','2021-03-21 01:33:41','n_diff_pfx01',6,1,'post_id'),('wordpress','wp_postmeta','post_id','2021-03-21 01:33:41','n_diff_pfx02',10,1,'post_id,meta_id'),('wordpress','wp_postmeta','post_id','2021-03-21 01:33:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_postmeta','post_id','2021-03-21 01:33:41','size',1,NULL,'Number of pages in the index'),('wordpress','wp_posts','PRIMARY','2021-03-21 01:33:31','n_diff_pfx01',9,2,'ID'),('wordpress','wp_posts','PRIMARY','2021-03-21 01:33:31','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('wordpress','wp_posts','PRIMARY','2021-03-21 01:33:31','size',3,NULL,'Number of pages in the index'),('wordpress','wp_posts','post_author','2021-03-21 01:33:31','n_diff_pfx01',1,1,'post_author'),('wordpress','wp_posts','post_author','2021-03-21 01:33:31','n_diff_pfx02',9,1,'post_author,ID'),('wordpress','wp_posts','post_author','2021-03-21 01:33:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_posts','post_author','2021-03-21 01:33:31','size',1,NULL,'Number of pages in the index'),('wordpress','wp_posts','post_name','2021-03-21 01:33:31','n_diff_pfx01',5,1,'post_name'),('wordpress','wp_posts','post_name','2021-03-21 01:33:31','n_diff_pfx02',9,1,'post_name,ID'),('wordpress','wp_posts','post_name','2021-03-21 01:33:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_posts','post_name','2021-03-21 01:33:31','size',1,NULL,'Number of pages in the index'),('wordpress','wp_posts','post_parent','2021-03-21 01:33:31','n_diff_pfx01',1,1,'post_parent'),('wordpress','wp_posts','post_parent','2021-03-21 01:33:31','n_diff_pfx02',9,1,'post_parent,ID'),('wordpress','wp_posts','post_parent','2021-03-21 01:33:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_posts','post_parent','2021-03-21 01:33:31','size',1,NULL,'Number of pages in the index'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','n_diff_pfx01',3,1,'post_type'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','n_diff_pfx02',6,1,'post_type,post_status'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','n_diff_pfx03',6,1,'post_type,post_status,post_date'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','n_diff_pfx04',9,1,'post_type,post_status,post_date,ID'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_posts','type_status_date','2021-03-21 01:33:31','size',1,NULL,'Number of pages in the index'),('wordpress','wp_term_relationships','PRIMARY','2021-03-21 01:26:23','n_diff_pfx01',0,1,'object_id'),('wordpress','wp_term_relationships','PRIMARY','2021-03-21 01:26:23','n_diff_pfx02',0,1,'object_id,term_taxonomy_id'),('wordpress','wp_term_relationships','PRIMARY','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_term_relationships','PRIMARY','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_term_relationships','term_taxonomy_id','2021-03-21 01:26:23','n_diff_pfx01',0,1,'term_taxonomy_id'),('wordpress','wp_term_relationships','term_taxonomy_id','2021-03-21 01:26:23','n_diff_pfx02',0,1,'term_taxonomy_id,object_id'),('wordpress','wp_term_relationships','term_taxonomy_id','2021-03-21 01:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_term_relationships','term_taxonomy_id','2021-03-21 01:26:23','size',1,NULL,'Number of pages in the index'),('wordpress','wp_term_taxonomy','PRIMARY','2021-03-21 01:26:22','n_diff_pfx01',0,1,'term_taxonomy_id'),('wordpress','wp_term_taxonomy','PRIMARY','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_term_taxonomy','PRIMARY','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_term_taxonomy','taxonomy','2021-03-21 01:26:22','n_diff_pfx01',0,1,'taxonomy'),('wordpress','wp_term_taxonomy','taxonomy','2021-03-21 01:26:22','n_diff_pfx02',0,1,'taxonomy,term_taxonomy_id'),('wordpress','wp_term_taxonomy','taxonomy','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_term_taxonomy','taxonomy','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_term_taxonomy','term_id_taxonomy','2021-03-21 01:26:22','n_diff_pfx01',0,1,'term_id'),('wordpress','wp_term_taxonomy','term_id_taxonomy','2021-03-21 01:26:22','n_diff_pfx02',0,1,'term_id,taxonomy'),('wordpress','wp_term_taxonomy','term_id_taxonomy','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_term_taxonomy','term_id_taxonomy','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_termmeta','PRIMARY','2021-03-21 01:26:22','n_diff_pfx01',0,1,'meta_id'),('wordpress','wp_termmeta','PRIMARY','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_termmeta','PRIMARY','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_termmeta','meta_key','2021-03-21 01:26:22','n_diff_pfx01',0,1,'meta_key'),('wordpress','wp_termmeta','meta_key','2021-03-21 01:26:22','n_diff_pfx02',0,1,'meta_key,meta_id'),('wordpress','wp_termmeta','meta_key','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_termmeta','meta_key','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_termmeta','term_id','2021-03-21 01:26:22','n_diff_pfx01',0,1,'term_id'),('wordpress','wp_termmeta','term_id','2021-03-21 01:26:22','n_diff_pfx02',0,1,'term_id,meta_id'),('wordpress','wp_termmeta','term_id','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_termmeta','term_id','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_terms','PRIMARY','2021-03-21 01:26:22','n_diff_pfx01',0,1,'term_id'),('wordpress','wp_terms','PRIMARY','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_terms','PRIMARY','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_terms','name','2021-03-21 01:26:22','n_diff_pfx01',0,1,'name'),('wordpress','wp_terms','name','2021-03-21 01:26:22','n_diff_pfx02',0,1,'name,term_id'),('wordpress','wp_terms','name','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_terms','name','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_terms','slug','2021-03-21 01:26:22','n_diff_pfx01',0,1,'slug'),('wordpress','wp_terms','slug','2021-03-21 01:26:22','n_diff_pfx02',0,1,'slug,term_id'),('wordpress','wp_terms','slug','2021-03-21 01:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_terms','slug','2021-03-21 01:26:22','size',1,NULL,'Number of pages in the index'),('wordpress','wp_usermeta','PRIMARY','2021-03-21 01:27:09','n_diff_pfx01',17,1,'umeta_id'),('wordpress','wp_usermeta','PRIMARY','2021-03-21 01:27:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_usermeta','PRIMARY','2021-03-21 01:27:09','size',1,NULL,'Number of pages in the index'),('wordpress','wp_usermeta','meta_key','2021-03-21 01:27:09','n_diff_pfx01',17,1,'meta_key'),('wordpress','wp_usermeta','meta_key','2021-03-21 01:27:09','n_diff_pfx02',17,1,'meta_key,umeta_id'),('wordpress','wp_usermeta','meta_key','2021-03-21 01:27:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_usermeta','meta_key','2021-03-21 01:27:09','size',1,NULL,'Number of pages in the index'),('wordpress','wp_usermeta','user_id','2021-03-21 01:27:09','n_diff_pfx01',1,1,'user_id'),('wordpress','wp_usermeta','user_id','2021-03-21 01:27:09','n_diff_pfx02',17,1,'user_id,umeta_id'),('wordpress','wp_usermeta','user_id','2021-03-21 01:27:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_usermeta','user_id','2021-03-21 01:27:09','size',1,NULL,'Number of pages in the index'),('wordpress','wp_users','PRIMARY','2021-03-21 01:26:21','n_diff_pfx01',0,1,'ID'),('wordpress','wp_users','PRIMARY','2021-03-21 01:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_users','PRIMARY','2021-03-21 01:26:21','size',1,NULL,'Number of pages in the index'),('wordpress','wp_users','user_email','2021-03-21 01:26:21','n_diff_pfx01',0,1,'user_email'),('wordpress','wp_users','user_email','2021-03-21 01:26:21','n_diff_pfx02',0,1,'user_email,ID'),('wordpress','wp_users','user_email','2021-03-21 01:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_users','user_email','2021-03-21 01:26:21','size',1,NULL,'Number of pages in the index'),('wordpress','wp_users','user_login_key','2021-03-21 01:26:21','n_diff_pfx01',0,1,'user_login'),('wordpress','wp_users','user_login_key','2021-03-21 01:26:21','n_diff_pfx02',0,1,'user_login,ID'),('wordpress','wp_users','user_login_key','2021-03-21 01:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_users','user_login_key','2021-03-21 01:26:21','size',1,NULL,'Number of pages in the index'),('wordpress','wp_users','user_nicename','2021-03-21 01:26:21','n_diff_pfx01',0,1,'user_nicename'),('wordpress','wp_users','user_nicename','2021-03-21 01:26:21','n_diff_pfx02',0,1,'user_nicename,ID'),('wordpress','wp_users','user_nicename','2021-03-21 01:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('wordpress','wp_users','user_nicename','2021-03-21 01:26:21','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('basicwebsite','failed_jobs','2019-09-08 17:27:47',0,1,0),('basicwebsite','messages','2019-09-08 17:47:35',2,1,0),('basicwebsite','migrations','2019-09-08 17:27:57',4,1,0),('basicwebsite','password_resets','2019-09-08 17:27:47',0,1,1),('basicwebsite','users','2019-09-08 17:27:46',0,1,1),('cms','articles','2019-08-28 04:21:56',0,1,0),('custom','failed_jobs','2019-09-24 08:39:56',0,1,0),('custom','migrations','2019-09-24 08:39:55',2,1,0),('custom','password_resets','2019-09-24 08:39:55',0,1,1),('custom','users','2019-09-24 08:39:55',0,1,1),('itemapi','failed_jobs','2019-09-14 09:34:29',0,1,0),('itemapi','items','2019-09-14 11:39:35',2,1,0),('itemapi','migrations','2019-09-14 09:34:40',4,1,0),('itemapi','password_resets','2019-09-14 09:34:29',0,1,1),('itemapi','users','2019-09-14 09:34:28',0,1,1),('kanboard','action_has_params','2020-07-30 02:31:19',0,1,1),('kanboard','actions','2020-07-30 02:31:19',0,1,1),('kanboard','column_has_move_restrictions','2020-07-30 02:31:20',0,1,4),('kanboard','column_has_restrictions','2020-07-30 02:31:20',0,1,3),('kanboard','columns','2021-05-07 09:52:16',24,1,2),('kanboard','comments','2020-07-30 02:31:21',0,1,3),('kanboard','currencies','2020-07-30 02:31:21',0,1,0),('kanboard','custom_filters','2020-07-30 02:31:22',0,1,2),('kanboard','customizer_files','2020-08-29 08:14:20',0,1,0),('kanboard','group_has_users','2020-07-30 02:31:22',0,1,1),('kanboard','groups','2020-07-30 02:31:22',0,1,1),('kanboard','invites','2020-07-30 02:31:23',0,1,0),('kanboard','last_logins','2021-05-01 01:37:07',10,1,1),('kanboard','links','2020-07-30 02:31:46',11,1,1),('kanboard','password_reset','2020-07-30 02:31:24',0,1,1),('kanboard','plugin_schema_versions','2020-07-30 02:31:24',0,1,0),('kanboard','predefined_task_descriptions','2020-07-30 02:31:25',0,1,1),('kanboard','project_activities','2020-10-08 08:54:14',78,9,3),('kanboard','project_daily_column_stats','2021-05-01 01:39:15',52,1,3),('kanboard','project_daily_stats','2021-04-19 21:07:57',19,1,2),('kanboard','project_has_categories','2020-07-30 02:31:26',0,1,2),('kanboard','project_has_files','2020-07-30 02:31:26',0,1,1),('kanboard','project_has_groups','2020-07-30 02:31:27',0,1,1),('kanboard','project_has_metadata','2020-07-30 02:31:27',0,1,0),('kanboard','project_has_notification_types','2020-07-30 02:31:27',0,1,1),('kanboard','project_has_roles','2020-07-30 02:31:28',0,1,1),('kanboard','project_has_users','2020-08-29 10:43:13',3,1,1),('kanboard','project_role_has_restrictions','2020-07-30 02:31:28',0,1,2),('kanboard','projects','2020-08-29 10:43:12',3,1,0),('kanboard','remember_me','2021-04-19 21:04:37',1,1,1),('kanboard','schema_version','2021-04-30 23:35:30',1,1,0),('kanboard','sessions','2021-04-19 21:04:13',30,3,0),('kanboard','settings','2020-07-30 02:31:56',23,1,0),('kanboard','subtask_time_tracking','2020-07-30 02:31:30',0,1,2),('kanboard','subtasks','2020-07-30 02:31:31',0,1,1),('kanboard','swimlanes','2020-08-29 10:43:13',3,1,2),('kanboard','tags','2020-07-30 02:31:31',0,1,1),('kanboard','task_has_external_links','2020-07-30 02:31:32',0,1,1),('kanboard','task_has_files','2020-07-30 02:31:32',0,1,1),('kanboard','task_has_links','2020-07-30 02:31:32',0,1,3),('kanboard','task_has_metadata','2020-07-30 02:31:32',0,1,0),('kanboard','task_has_tags','2020-07-30 02:31:33',0,1,1),('kanboard','tasks','2021-04-19 21:07:47',29,1,5),('kanboard','transitions','2020-10-08 08:58:06',36,1,5),('kanboard','user_has_metadata','2020-07-30 02:31:34',0,1,0),('kanboard','user_has_notification_types','2020-07-30 02:31:34',0,1,1),('kanboard','user_has_notifications','2020-07-30 02:31:35',0,1,1),('kanboard','user_has_unread_notifications','2020-07-30 02:31:35',0,1,1),('kanboard','users','2020-07-30 02:31:35',0,1,1),('lara_hb','bookings','2020-06-08 09:02:57',11,1,3),('lara_hb','categories','2020-06-02 13:21:36',0,1,0),('lara_hb','countries','2020-06-02 13:21:47',264,1,1),('lara_hb','customers','2020-06-08 09:06:24',16,1,2),('lara_hb','migrations','2020-06-02 13:21:57',15,1,0),('lara_hb','password_resets','2020-06-02 13:21:28',0,1,1),('lara_hb','roles','2020-06-06 04:10:16',2,1,0),('lara_hb','rooms','2020-06-08 09:06:26',16,1,2),('lara_hb','users','2020-06-08 08:57:46',4,1,1),('laravel6','articles','2019-12-05 03:34:31',3,1,0),('laravel6','assignments','2019-11-03 10:16:24',0,1,0),('laravel6','failed_jobs','2019-11-02 14:06:42',0,1,0),('laravel6','migrations','2019-11-27 11:13:21',9,1,0),('laravel6','news','2019-11-20 03:19:17',0,1,0),('laravel6','password_resets','2019-11-02 14:06:42',0,1,1),('laravel6','posts','2019-11-03 10:16:24',0,1,0),('laravel6','tests','2019-11-04 03:08:45',0,1,0),('laravel6','users','2019-11-02 14:06:41',0,1,1),('laravel6','writeups','2019-11-27 11:20:11',2,1,0),('ld','lod','2019-12-03 04:14:00',2,1,0),('mysql','component','2021-04-30 23:33:18',0,1,0),('publications','Books','2019-07-27 08:47:36',3,1,0),('publications','accounts','2019-07-27 08:47:36',2,1,0),('publications','cats','2019-07-28 14:23:50',2,1,0),('publications','classics','2019-07-28 07:10:09',4,1,5),('publications','customers','2019-07-27 08:47:49',3,1,0),('publications','tasks','2020-07-11 23:37:07',0,1,0),('publications','users','2021-04-30 23:35:34',2,1,0),('rara','failed_jobs','2020-01-12 08:47:14',0,1,0),('rara','messages','2020-01-17 03:27:59',2,1,0),('rara','migrations','2020-01-12 08:47:24',4,1,0),('rara','password_resets','2020-01-12 08:47:14',0,1,1),('rara','users','2020-01-12 08:47:13',0,1,1),('shyamnest','friends','2021-04-07 01:16:49',0,1,2),('shyamnest','members','2021-04-05 22:08:04',0,1,1),('shyamnest','messages','2021-04-08 00:00:54',2,1,2),('shyamnest','profiles','2021-04-05 22:12:40',0,1,1),('site','failed_jobs','2019-09-09 10:47:37',0,1,0),('site','messages','2019-09-09 10:55:33',2,1,0),('site','migrations','2019-09-09 10:47:47',4,1,0),('site','password_resets','2019-09-09 10:47:36',0,1,1),('site','users','2019-09-09 10:47:36',0,1,1),('sys','sys_config','2021-02-01 22:39:40',6,1,0),('taskapp','failed_jobs','2021-01-30 22:59:50',0,1,1),('taskapp','migrations','2021-01-30 22:59:49',2,1,0),('taskapp','password_resets','2021-01-30 22:59:49',0,1,1),('taskapp','users','2021-01-30 22:59:48',0,1,1),('test','failed_jobs','2021-01-07 00:40:45',0,1,1),('test','migrations','2021-01-07 00:40:45',2,1,0),('test','password_resets','2021-01-07 00:40:45',0,1,1),('test','users','2021-01-07 00:40:44',0,1,1),('testdb','tutorials','2020-11-12 19:55:19',2,1,0),('timelog','members','2021-05-02 23:48:25',0,1,1),('timelog','store','2021-05-02 23:48:26',0,1,0),('todo','failed_jobs','2021-01-05 11:28:42',0,1,0),('todo','migrations','2021-01-05 11:28:42',2,1,0),('todo','password_resets','2021-01-05 11:28:42',0,1,1),('todo','users','2021-01-05 11:28:41',0,1,1),('wordpress','wp_commentmeta','2021-03-21 01:26:23',0,1,2),('wordpress','wp_comments','2021-03-21 01:26:23',0,1,5),('wordpress','wp_links','2021-03-21 01:26:24',0,1,1),('wordpress','wp_options','2021-03-26 22:30:24',138,97,2),('wordpress','wp_postmeta','2021-03-21 01:33:41',10,1,2),('wordpress','wp_posts','2021-03-21 01:33:31',9,3,4),('wordpress','wp_term_relationships','2021-03-21 01:26:23',0,1,1),('wordpress','wp_term_taxonomy','2021-03-21 01:26:22',0,1,2),('wordpress','wp_termmeta','2021-03-21 01:26:22',0,1,2),('wordpress','wp_terms','2021-03-21 01:26:22',0,1,2),('wordpress','wp_usermeta','2021-03-21 01:27:09',17,1,2),('wordpress','wp_users','2021-03-21 01:26:21',0,1,3);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint unsigned NOT NULL,
  `inserts` int unsigned NOT NULL,
  `updates` int unsigned NOT NULL,
  `deletes` int unsigned NOT NULL,
  `schemaops` int unsigned NOT NULL,
  `orig_server_id` int unsigned NOT NULL,
  `orig_epoch` bigint unsigned NOT NULL,
  `gci` int unsigned NOT NULL,
  `next_position` bigint unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=latin1 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dl` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@connecting host','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2019-07-14 12:50:51',NULL),('disk_temptable_row_cost',NULL,'2019-07-14 12:50:51',NULL),('key_compare_cost',NULL,'2019-07-14 12:50:51',NULL),('memory_temptable_create_cost',NULL,'2019-07-14 12:50:51',NULL),('memory_temptable_row_cost',NULL,'2019-07-14 12:50:51',NULL),('row_evaluate_cost',NULL,'2019-07-14 12:50:51',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between master and slave.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) DEFAULT '0' COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables having primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@connecting host','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2021-02-01 22:39:39','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('%','monksam','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*4D70C3A005B412882C9F3C49E60CD41F08050C92','N','2019-07-14 12:59:30',NULL,'N','N','N',NULL,NULL,NULL,NULL),('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*4C89AA37341230D4C04ECD82D49E67FC805A7738','N','2019-07-14 12:51:05',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','monksam','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*4D70C3A005B412882C9F3C49E60CD41F08050C92','N','2019-08-26 08:36:55',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-04-30 23:33:01',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2019-07-14 12:50:59',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2021-02-01 22:39:39',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'auth_socket','','N','2019-07-14 12:50:56',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','wordpress','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*4D70C3A005B412882C9F3C49E60CD41F08050C92','N','2021-03-20 02:10:21',NULL,'N','N','N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `basicwebsite`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `basicwebsite` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `basicwebsite`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'sam','sam.chaudhary615@gmail.com','Hello, I need a website.','2019-09-08 12:02:18','2019-09-08 12:02:18'),(2,'ram','ram@gmail.com','hey there, long time no see.','2019-09-08 12:02:35','2019-09-08 12:02:35'),(3,'mary jane','mary@yahoo.com','Hello, how are you?','2019-09-08 12:08:13','2019-09-08 12:08:13'),(4,'sam','sam@gmail.com','Hey!','2019-09-08 22:03:47','2019-09-08 22:03:47');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_08_170240_create_messages_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `cms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cms` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cms`;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `custom`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `custom` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `custom`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `forma`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `forma` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `forma`;

--
-- Current Database: `hourslog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hourslog` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hourslog`;

--
-- Current Database: `itemapi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `itemapi` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `itemapi`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (2,'Item 3','This is item 3',NULL,'2019-09-14 05:50:08'),(3,'Item 3','This is item 3','2019-09-14 05:42:34','2019-09-14 05:42:34');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_14_092526_create_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `kanboard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kanboard` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `kanboard`;

--
-- Table structure for table `action_has_params`
--

DROP TABLE IF EXISTS `action_has_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_has_params` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_id` int NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action_id` (`action_id`),
  CONSTRAINT `action_has_params_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_has_params`
--

LOCK TABLES `action_has_params` WRITE;
/*!40000 ALTER TABLE `action_has_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_has_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_has_move_restrictions`
--

DROP TABLE IF EXISTS `column_has_move_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `column_has_move_restrictions` (
  `restriction_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `role_id` int NOT NULL,
  `src_column_id` int NOT NULL,
  `dst_column_id` int NOT NULL,
  `only_assigned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`src_column_id`,`dst_column_id`),
  KEY `project_id` (`project_id`),
  KEY `src_column_id` (`src_column_id`),
  KEY `dst_column_id` (`dst_column_id`),
  CONSTRAINT `column_has_move_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `column_has_move_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `column_has_move_restrictions_ibfk_3` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `column_has_move_restrictions_ibfk_4` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_has_move_restrictions`
--

LOCK TABLES `column_has_move_restrictions` WRITE;
/*!40000 ALTER TABLE `column_has_move_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_has_move_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_has_restrictions`
--

DROP TABLE IF EXISTS `column_has_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `column_has_restrictions` (
  `restriction_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `role_id` int NOT NULL,
  `column_id` int NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`column_id`,`rule`),
  KEY `project_id` (`project_id`),
  KEY `column_id` (`column_id`),
  CONSTRAINT `column_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `column_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `column_has_restrictions_ibfk_3` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_has_restrictions`
--

LOCK TABLES `column_has_restrictions` WRITE;
/*!40000 ALTER TABLE `column_has_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_has_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columns`
--

DROP TABLE IF EXISTS `columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `project_id` int NOT NULL,
  `task_limit` int DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `hide_in_dashboard` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_title_project` (`title`,`project_id`),
  KEY `columns_project_idx` (`project_id`),
  CONSTRAINT `columns_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns`
--

LOCK TABLES `columns` WRITE;
/*!40000 ALTER TABLE `columns` DISABLE KEYS */;
INSERT INTO `columns` VALUES (1,'Backlog',1,1,0,'',0),(2,'Ready',2,1,0,'',0),(3,'Work in progress',3,1,0,'',0),(4,'Done',4,1,0,'',0),(5,'Backlog',1,2,0,'',0),(6,'Ready',2,2,0,'',0),(7,'Work in progress',3,2,0,'',0),(8,'Done',4,2,0,'',0),(9,'Backlog',1,3,0,'',0),(10,'Ready',2,3,0,'',0),(11,'Work in progress',3,3,0,'',0),(12,'Done',4,3,0,'',0),(13,'Backlog',1,4,0,'',0),(14,'Ready',2,4,0,'',0),(15,'Work in progress',3,4,0,'',0),(16,'Done',4,4,0,'',0),(17,'Backlog',1,5,0,'',0),(18,'Ready',2,5,0,'',0),(19,'Work in progress',3,5,0,'',0),(20,'Done',4,5,0,'',0),(21,'Backlog',1,6,0,'',0),(22,'Ready',2,6,0,'',0),(23,'Work in progress',3,6,0,'',0),(24,'Done',4,6,0,'',0);
/*!40000 ALTER TABLE `columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL,
  `user_id` int DEFAULT '0',
  `date_creation` bigint DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_modification` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comments_reference_idx` (`reference`),
  KEY `comments_task_idx` (`task_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float DEFAULT '0',
  UNIQUE KEY `currency` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_filters`
--

DROP TABLE IF EXISTS `custom_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_shared` tinyint(1) DEFAULT '0',
  `append` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `custom_filters_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `custom_filters_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_filters`
--

LOCK TABLES `custom_filters` WRITE;
/*!40000 ALTER TABLE `custom_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customizer_files`
--

DROP TABLE IF EXISTS `customizer_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customizer_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `is_image` tinyint(1) DEFAULT '0',
  `date` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `size` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customizer_files`
--

LOCK TABLES `customizer_files` WRITE;
/*!40000 ALTER TABLE `customizer_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `customizer_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_has_users`
--

DROP TABLE IF EXISTS `group_has_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_has_users` (
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  UNIQUE KEY `group_id` (`group_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `group_has_users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_has_users`
--

LOCK TABLES `group_has_users` WRITE;
/*!40000 ALTER TABLE `group_has_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_has_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invites` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`email`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `last_logins`
--

DROP TABLE IF EXISTS `last_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_logins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `last_logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last_logins`
--

LOCK TABLES `last_logins` WRITE;
/*!40000 ALTER TABLE `last_logins` DISABLE KEYS */;
INSERT INTO `last_logins` VALUES (31,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36',1616289420),(32,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36',1618866156),(33,'Database',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36',1618866257),(34,'Database',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36',1618866275),(35,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1619833027),(36,'Database',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1619833042),(37,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1619985867),(38,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1620252097),(39,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1620355452),(40,'RememberMe',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1620422503);
/*!40000 ALTER TABLE `last_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opposite_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'relates to',0),(2,'blocks',3),(3,'is blocked by',2),(4,'duplicates',5),(5,'is duplicated by',4),(6,'is a child of',7),(7,'is a parent of',6),(8,'targets milestone',9),(9,'is a milestone of',8),(10,'fixes',11),(11,'is fixed by',10);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `token` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `date_expiration` int NOT NULL,
  `date_creation` int NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `password_reset_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_schema_versions`
--

DROP TABLE IF EXISTS `plugin_schema_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin_schema_versions` (
  `plugin` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_schema_versions`
--

LOCK TABLES `plugin_schema_versions` WRITE;
/*!40000 ALTER TABLE `plugin_schema_versions` DISABLE KEYS */;
INSERT INTO `plugin_schema_versions` VALUES ('customizer',1);
/*!40000 ALTER TABLE `plugin_schema_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predefined_task_descriptions`
--

DROP TABLE IF EXISTS `predefined_task_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predefined_task_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `predefined_task_descriptions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefined_task_descriptions`
--

LOCK TABLES `predefined_task_descriptions` WRITE;
/*!40000 ALTER TABLE `predefined_task_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `predefined_task_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_activities`
--

DROP TABLE IF EXISTS `project_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_creation` bigint DEFAULT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `creator_id` (`creator_id`),
  KEY `project_id` (`project_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `project_activities_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_activities_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_activities_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_activities`
--

LOCK TABLES `project_activities` WRITE;
/*!40000 ALTER TABLE `project_activities` DISABLE KEYS */;
INSERT INTO `project_activities` VALUES (1,1596076787,'task.create',1,1,1,'{\"task_id\":1,\"task\":{\"id\":\"1\",\"title\":\"Build the prototype for the gig website\",\"description\":\"## Prototype for the gig website\",\"date_creation\":\"1596076787\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"1\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596076787\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596076787\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"1\"}}'),(2,1596076848,'task.create',1,1,2,'{\"task_id\":2,\"task\":{\"id\":\"2\",\"title\":\"Start writing code\",\"description\":\"## Implement the gig website according to the prototype\",\"date_creation\":\"1596076848\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"1\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596076848\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596076848\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"1\"}}'),(3,1596077450,'task.move.column',1,1,1,'{\"task_id\":\"1\",\"task\":{\"id\":\"1\",\"title\":\"Build the prototype for the gig website\",\"description\":\"## Prototype for the gig website\",\"date_creation\":\"1596076787\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"2\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077450\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077450\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"1\",\"dst_column_id\":\"2\",\"date_moved\":\"1596076787\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"2\",\"swimlane_id\":\"1\",\"src_column_id\":\"1\",\"dst_column_id\":\"2\",\"date_moved\":\"1596076787\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(4,1596077455,'task.move.column',1,1,1,'{\"task_id\":\"1\",\"task\":{\"id\":\"1\",\"title\":\"Build the prototype for the gig website\",\"description\":\"## Prototype for the gig website\",\"date_creation\":\"1596076787\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077455\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077455\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"2\",\"dst_column_id\":\"3\",\"date_moved\":\"1596077450\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"3\",\"swimlane_id\":\"1\",\"src_column_id\":\"2\",\"dst_column_id\":\"3\",\"date_moved\":\"1596077450\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(5,1596077531,'task.move.column',1,1,1,'{\"task_id\":\"1\",\"task\":{\"id\":\"1\",\"title\":\"Build the prototype for the gig website\",\"description\":\"## Prototype for the gig website\",\"date_creation\":\"1596076787\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077531\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077531\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077455\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077455\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(6,1596077620,'task.move.column',1,1,2,'{\"task_id\":\"2\",\"task\":{\"id\":\"2\",\"title\":\"Start writing code\",\"description\":\"## Implement the gig website according to the prototype\",\"date_creation\":\"1596076848\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077620\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077620\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"1\",\"dst_column_id\":\"3\",\"date_moved\":\"1596076848\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"3\",\"swimlane_id\":\"1\",\"src_column_id\":\"1\",\"dst_column_id\":\"3\",\"date_moved\":\"1596076848\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(7,1596077628,'task.move.column',1,1,2,'{\"task_id\":\"2\",\"task\":{\"id\":\"2\",\"title\":\"Start writing code\",\"description\":\"## Implement the gig website according to the prototype\",\"date_creation\":\"1596076848\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077627\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077627\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077620\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077620\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(8,1596077648,'task.create',1,1,3,'{\"task_id\":3,\"task\":{\"id\":\"3\",\"title\":\"Test the code\",\"description\":\"## Test and Implement the code\",\"date_creation\":\"1596077647\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077647\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077647\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"}}'),(9,1596077657,'task.move.column',1,1,3,'{\"task_id\":\"3\",\"task\":{\"id\":\"3\",\"title\":\"Test the code\",\"description\":\"## Test and Implement the code\",\"date_creation\":\"1596077647\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077657\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077657\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077647\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077647\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(10,1596077715,'task.create',1,1,4,'{\"task_id\":4,\"task\":{\"id\":\"4\",\"title\":\"Deploy the code to firebase \",\"description\":\"Deploy the code to firebase\",\"date_creation\":\"1596077715\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"4\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077715\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077715\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"}}'),(11,1596077721,'task.move.position',1,1,4,'{\"task_id\":\"4\",\"task\":{\"id\":\"4\",\"title\":\"Deploy the code to firebase \",\"description\":\"Deploy the code to firebase\",\"date_creation\":\"1596077715\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077715\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077715\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"4\",\"dst_column_id\":\"4\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"4\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077715\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(12,1596077737,'task.create',1,1,5,'{\"task_id\":5,\"task\":{\"id\":\"5\",\"title\":\"Push the code to gitlab\",\"description\":\"\",\"date_creation\":\"1596077737\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077737\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077737\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"}}'),(13,1596077740,'task.move.column',1,1,5,'{\"task_id\":\"5\",\"task\":{\"id\":\"5\",\"title\":\"Push the code to gitlab\",\"description\":\"\",\"date_creation\":\"1596077737\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077740\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077740\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077737\"},\"project_id\":\"1\",\"position\":2,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077737\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(14,1596077764,'task.create',1,1,6,'{\"task_id\":6,\"task\":{\"id\":\"6\",\"title\":\"Note down tasks fro Xariyon\",\"description\":\"\",\"date_creation\":\"1596077764\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077764\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077764\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"}}'),(15,1596077767,'task.move.column',1,1,6,'{\"task_id\":\"6\",\"task\":{\"id\":\"6\",\"title\":\"Note down tasks fro Xariyon\",\"description\":\"\",\"date_creation\":\"1596077764\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077767\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077767\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077764\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077764\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(16,1596077776,'task.move.position',1,1,4,'{\"task_id\":\"4\",\"task\":{\"id\":\"4\",\"title\":\"Deploy the code to firebase \",\"description\":\"Deploy the code to firebase\",\"date_creation\":\"1596077715\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"3\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077715\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077715\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"4\",\"dst_column_id\":\"4\"},\"project_id\":\"1\",\"position\":3,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"4\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077715\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(17,1596077798,'task.create',1,1,7,'{\"task_id\":7,\"task\":{\"id\":\"7\",\"title\":\"Accept merge requests of Xariyon\",\"description\":\"\",\"date_creation\":\"1596077798\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077798\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077798\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"}}'),(18,1596077804,'task.move.column',1,1,7,'{\"task_id\":\"7\",\"task\":{\"id\":\"7\",\"title\":\"Accept merge requests of Xariyon\",\"description\":\"\",\"date_creation\":\"1596077798\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077804\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077804\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077798\"},\"project_id\":\"1\",\"position\":2,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077798\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(19,1596077806,'task.move.position',1,1,6,'{\"task_id\":\"6\",\"task\":{\"id\":\"6\",\"title\":\"Note down tasks fro Xariyon\",\"description\":\"\",\"date_creation\":\"1596077764\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077767\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077767\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"4\",\"dst_column_id\":\"4\"},\"project_id\":\"1\",\"position\":2,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"4\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077767\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(20,1596077836,'task.create',1,1,8,'{\"task_id\":8,\"task\":{\"id\":\"8\",\"title\":\"Work on new features discuss by the team\",\"description\":\"\",\"date_creation\":\"1596077835\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"1\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596077835\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596077835\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"1\"}}'),(21,1596079985,'task.move.column',1,1,7,'{\"task_id\":\"7\",\"task\":{\"id\":\"7\",\"title\":\"Accept merge requests of Xariyon\",\"description\":\"\",\"date_creation\":\"1596077798\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"3\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596079985\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596079985\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"4\",\"dst_column_id\":\"3\",\"date_moved\":\"1596077804\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"3\",\"swimlane_id\":\"1\",\"src_column_id\":\"4\",\"dst_column_id\":\"3\",\"date_moved\":\"1596077804\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(22,1596079987,'task.move.column',1,1,7,'{\"task_id\":\"7\",\"task\":{\"id\":\"7\",\"title\":\"Accept merge requests of Xariyon\",\"description\":\"\",\"date_creation\":\"1596077798\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1596079987\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596079987\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596079985\"},\"project_id\":\"1\",\"position\":2,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"3\",\"dst_column_id\":\"4\",\"date_moved\":\"1596079985\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(23,1598686085,'task.move.column',1,1,8,'{\"task_id\":\"8\",\"task\":{\"id\":\"8\",\"title\":\"Work on new features discuss by the team\",\"description\":\"\",\"date_creation\":\"1596077835\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686085\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1598686085\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"1\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077835\"},\"project_id\":\"1\",\"position\":1,\"column_id\":\"4\",\"swimlane_id\":\"1\",\"src_column_id\":\"1\",\"dst_column_id\":\"4\",\"date_moved\":\"1596077835\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(24,1598686566,'task.create',1,2,9,'{\"task_id\":9,\"task\":{\"id\":\"9\",\"title\":\"Research pros and cons of moodle\",\"description\":\"\",\"date_creation\":\"1598686565\",\"date_completed\":null,\"date_due\":\"1597968000\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"1\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686565\",\"reference\":\"\",\"date_started\":\"1597363200\",\"time_spent\":\"3\",\"time_estimated\":\"2\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686565\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"1\"}}'),(25,1598686576,'task.move.column',1,2,9,'{\"task_id\":\"9\",\"task\":{\"id\":\"9\",\"title\":\"Research pros and cons of moodle\",\"description\":\"\",\"date_creation\":\"1598686565\",\"date_completed\":null,\"date_due\":\"1597968000\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"1\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686575\",\"reference\":\"\",\"date_started\":\"1597363200\",\"time_spent\":\"3\",\"time_estimated\":\"2\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686575\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1598686565\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1598686565\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(26,1598686683,'task.create',1,2,10,'{\"task_id\":10,\"task\":{\"id\":\"10\",\"title\":\"Install Moodle and Test some plugins\",\"description\":\"Installing moodle and testing it with some popular plugins\",\"date_creation\":\"1598686683\",\"date_completed\":null,\"date_due\":\"1598486400\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686683\",\"reference\":\"\",\"date_started\":\"1597968000\",\"time_spent\":\"4\",\"time_estimated\":\"4\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686683\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"1\"}}'),(27,1598686693,'task.move.column',1,2,10,'{\"task_id\":\"10\",\"task\":{\"id\":\"10\",\"title\":\"Install Moodle and Test some plugins\",\"description\":\"Installing moodle and testing it with some popular plugins\",\"date_creation\":\"1598686683\",\"date_completed\":null,\"date_due\":\"1598486400\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"6\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686693\",\"reference\":\"\",\"date_started\":\"1597968000\",\"time_spent\":\"4\",\"time_estimated\":\"4\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686693\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1598686683\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"6\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1598686683\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(28,1598686699,'task.move.column',1,2,10,'{\"task_id\":\"10\",\"task\":{\"id\":\"10\",\"title\":\"Install Moodle and Test some plugins\",\"description\":\"Installing moodle and testing it with some popular plugins\",\"date_creation\":\"1598686683\",\"date_completed\":null,\"date_due\":\"1598486400\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686699\",\"reference\":\"\",\"date_started\":\"1597968000\",\"time_spent\":\"4\",\"time_estimated\":\"4\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686699\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1598686693\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1598686693\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(29,1598686701,'task.move.column',1,2,10,'{\"task_id\":\"10\",\"task\":{\"id\":\"10\",\"title\":\"Install Moodle and Test some plugins\",\"description\":\"Installing moodle and testing it with some popular plugins\",\"date_creation\":\"1598686683\",\"date_completed\":null,\"date_due\":\"1598486400\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598686701\",\"reference\":\"\",\"date_started\":\"1597968000\",\"time_spent\":\"4\",\"time_estimated\":\"4\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686701\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":null,\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1598686699\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1598686699\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(30,1598688396,'task.update',1,2,10,'{\"task_id\":\"10\",\"task\":{\"id\":\"10\",\"title\":\"Install Moodle and Test some plugins\",\"description\":\"Installing moodle and testing it with some popular plugins\",\"date_creation\":\"1598686683\",\"date_completed\":null,\"date_due\":\"1598486400\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598688396\",\"reference\":\"\",\"date_started\":\"1597968000\",\"time_spent\":\"4\",\"time_estimated\":\"4\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686701\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(31,1598688423,'task.update',1,2,9,'{\"task_id\":\"9\",\"task\":{\"id\":\"9\",\"title\":\"Research pros and cons of moodle\",\"description\":\"\",\"date_creation\":\"1598686565\",\"date_completed\":null,\"date_due\":\"1597968000\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"1\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598688423\",\"reference\":\"\",\"date_started\":\"1597363200\",\"time_spent\":\"3\",\"time_estimated\":\"2\",\"swimlane_id\":\"2\",\"date_moved\":\"1598686575\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(32,1598688608,'task.create',1,2,11,'{\"task_id\":11,\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598688608\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598688608\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(33,1598688622,'task.update',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598688622\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598688608\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"date_due\":1599177600}}'),(34,1598688646,'task.update',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598688645\",\"reference\":\"\",\"date_started\":\"1598832000\",\"time_spent\":\"0\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1598688608\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"date_started\":1598832000,\"time_estimated\":\"5\"}}'),(36,1598698003,'task.create',1,3,13,'{\"task_id\":13,\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598698003\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598698003\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(39,1598698060,'task.update',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"<h1>Make your CV according the resume you have and double check it<\\/h1>\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598698059\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598698003\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"description\":\"<h1>Make your CV according the resume you have and double check it<\\/h1>\"}}'),(40,1598698088,'task.update',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"## Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598698088\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598698003\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"description\":\"## Make your CV according the resume you have and double check it\"}}'),(42,1598698149,'task.create',1,3,14,'{\"task_id\":14,\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598698149\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598698149\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(43,1598698183,'task.update',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598698182\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598698149\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"date_due\":1598745600,\"date_started\":1598745600}}'),(46,1598905829,'task.move.column',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"6\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598905828\",\"reference\":\"\",\"date_started\":\"1598832000\",\"time_spent\":\"0\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1598905828\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1598688608\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"6\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1598688608\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(47,1598906206,'task.move.column',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"## Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598906206\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598906206\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598698003\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598698003\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(48,1598906211,'task.move.column',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598906211\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598906211\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598698149\"},\"project_id\":\"3\",\"position\":2,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598698149\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(49,1598906221,'task.update',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"## Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598906221\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598906206\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"color_id\":\"red\"}}'),(50,1598911038,'task.create',1,3,16,'{\"task_id\":16,\"task\":{\"id\":\"16\",\"title\":\"Remodify the old website with React and JQuery.\",\"description\":\"### Revive the old website with new designs that you saw in lainchan. But use the technology React and JQuery.\",\"date_creation\":\"1598911037\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598911037\",\"reference\":\"\",\"date_started\":\"1598954400\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1598911037\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(53,1598961481,'task.create',1,2,17,'{\"task_id\":17,\"task\":{\"id\":\"17\",\"title\":\"Start working on competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598961480\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598961480\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(54,1598961525,'task.update',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598961525\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598961480\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"title\":\"Competition \",\"color_id\":\"red\",\"date_started\":1599123600}}'),(55,1598961601,'task.create',1,2,18,'{\"task_id\":18,\"task\":{\"id\":\"18\",\"title\":\"Slack or Riot integration\",\"description\":\"## Slack or Riot Integration \",\"date_creation\":\"1598961601\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598961601\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598961601\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(56,1598961643,'task.move.position',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598961525\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1598961480\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"5\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"5\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"5\",\"date_moved\":\"1598961480\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(57,1598992603,'task.move.column',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598992603\",\"reference\":\"\",\"date_started\":\"1598832000\",\"time_spent\":\"0\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1598992603\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1598905828\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1598905828\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(58,1598994894,'task.update',1,1,8,'{\"task_id\":\"8\",\"task\":{\"id\":\"8\",\"title\":\"Work on new features discuss by the team\",\"description\":\"\",\"date_creation\":\"1596077835\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598994894\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1598686085\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"red\"}}'),(59,1598994905,'task.update',1,1,7,'{\"task_id\":\"7\",\"task\":{\"id\":\"7\",\"title\":\"Accept merge requests of Xariyon\",\"description\":\"\",\"date_creation\":\"1596077798\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"1\",\"column_id\":\"4\",\"owner_id\":\"0\",\"position\":\"3\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1598994905\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"1\",\"date_moved\":\"1596079987\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"TheGigWebsite\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"red\"}}'),(60,1600172164,'task.create',1,3,19,'{\"task_id\":19,\"task\":{\"id\":\"19\",\"title\":\"LocalStorage And TicTacToe\",\"description\":\"## Finish these two projects tomorrow and start working on the assessment for web technologies.\",\"date_creation\":\"1600172163\",\"date_completed\":null,\"date_due\":\"1600300800\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1600172163\",\"reference\":\"\",\"date_started\":\"1600246800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1600172163\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(61,1600172169,'task.move.column',1,3,19,'{\"task_id\":\"19\",\"task\":{\"id\":\"19\",\"title\":\"LocalStorage And TicTacToe\",\"description\":\"## Finish these two projects tomorrow and start working on the assessment for web technologies.\",\"date_creation\":\"1600172163\",\"date_completed\":null,\"date_due\":\"1600300800\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1600172168\",\"reference\":\"\",\"date_started\":\"1600246800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1600172168\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1600172163\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1600172163\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(62,1600945118,'task.move.column',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"## Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"12\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1600945118\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1600945118\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Done\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"10\",\"dst_column_id\":\"12\",\"date_moved\":\"1598906206\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"12\",\"swimlane_id\":\"3\",\"src_column_id\":\"10\",\"dst_column_id\":\"12\",\"date_moved\":\"1598906206\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(63,1601280036,'task.move.column',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280035\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601280035\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1598906211\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1598906211\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(64,1601280040,'task.move.column',1,3,16,'{\"task_id\":\"16\",\"task\":{\"id\":\"16\",\"title\":\"Remodify the old website with React and JQuery.\",\"description\":\"### Revive the old website with new designs that you saw in lainchan. But use the technology React and JQuery.\",\"date_creation\":\"1598911037\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280040\",\"reference\":\"\",\"date_started\":\"1598954400\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601280040\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598911037\"},\"project_id\":\"3\",\"position\":2,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1598911037\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(65,1601280097,'task.create',1,3,20,'{\"task_id\":20,\"task\":{\"id\":\"20\",\"title\":\"React and API\",\"description\":\"## Start preparing for third assessment with React and JavaScript\",\"date_creation\":\"1601280096\",\"date_completed\":null,\"date_due\":\"1603152000\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280096\",\"reference\":\"\",\"date_started\":\"1601337600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601280096\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(66,1601280113,'task.update',1,3,13,'{\"task_id\":\"13\",\"task\":{\"id\":\"13\",\"title\":\"Complete the CV\",\"description\":\"## Make your CV according the resume you have and double check it\",\"date_creation\":\"1598698003\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"green\",\"project_id\":\"3\",\"column_id\":\"12\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280113\",\"reference\":\"\",\"date_started\":\"1598659200\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1600945118\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Done\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(67,1601280124,'task.update',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280124\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601280035\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"color_id\":\"red\"}}'),(68,1601814988,'task.move.column',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"12\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601814987\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601814987\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Done\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"11\",\"dst_column_id\":\"12\",\"date_moved\":\"1601280035\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"12\",\"swimlane_id\":\"3\",\"src_column_id\":\"11\",\"dst_column_id\":\"12\",\"date_moved\":\"1601280035\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(69,1601814999,'task.update',1,3,14,'{\"task_id\":\"14\",\"task\":{\"id\":\"14\",\"title\":\"Update Your Portfolio Site\",\"description\":\"### Add the gig website in the project column and update the site with latest resume\",\"date_creation\":\"1598698149\",\"date_completed\":null,\"date_due\":\"1598745600\",\"color_id\":\"green\",\"project_id\":\"3\",\"column_id\":\"12\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601814998\",\"reference\":\"\",\"date_started\":\"1598745600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601814987\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Done\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(70,1601815012,'task.move.column',1,3,19,'{\"task_id\":\"19\",\"task\":{\"id\":\"19\",\"title\":\"LocalStorage And TicTacToe\",\"description\":\"## Finish these two projects tomorrow and start working on the assessment for web technologies.\",\"date_creation\":\"1600172163\",\"date_completed\":null,\"date_due\":\"1600300800\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601815011\",\"reference\":\"\",\"date_started\":\"1600246800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601815011\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1600172168\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1600172168\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(71,1602146313,'task.move.column',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146313\",\"reference\":\"\",\"date_started\":\"1598832000\",\"time_spent\":\"0\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146313\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1598992603\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1598992603\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(72,1602146321,'task.update',1,2,11,'{\"task_id\":\"11\",\"task\":{\"id\":\"11\",\"title\":\"Research theme and assests\",\"description\":\"Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.\",\"date_creation\":\"1598688608\",\"date_completed\":null,\"date_due\":\"1599177600\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146320\",\"reference\":\"\",\"date_started\":\"1598832000\",\"time_spent\":\"0\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146313\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(73,1602146331,'task.move.column',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146331\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146331\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"7\",\"date_moved\":\"1598961480\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"7\",\"date_moved\":\"1598961480\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(74,1602146356,'task.move.column',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146356\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146356\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"src_column_id\":\"7\",\"dst_column_id\":\"5\",\"date_moved\":\"1602146331\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"5\",\"swimlane_id\":\"2\",\"src_column_id\":\"7\",\"dst_column_id\":\"5\",\"date_moved\":\"1602146331\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(75,1602146430,'task.create',1,2,21,'{\"task_id\":21,\"task\":{\"id\":\"21\",\"title\":\"PWA \",\"description\":\"Learn and implement it in the testing LMS site\",\"date_creation\":\"1602146429\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146429\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146429\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(76,1602146433,'task.move.column',1,2,21,'{\"task_id\":\"21\",\"task\":{\"id\":\"21\",\"title\":\"PWA \",\"description\":\"Learn and implement it in the testing LMS site\",\"date_creation\":\"1602146429\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146433\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146433\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602146429\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602146429\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(77,1602146443,'task.update',1,2,21,'{\"task_id\":\"21\",\"task\":{\"id\":\"21\",\"title\":\"PWA \",\"description\":\"Learn and implement it in the testing LMS site\",\"date_creation\":\"1602146429\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146443\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146433\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(78,1602146978,'task.update',1,2,21,'{\"task_id\":\"21\",\"task\":{\"id\":\"21\",\"title\":\"PWA \",\"description\":\"Learn and implement it in the testing LMS site\",\"date_creation\":\"1602146429\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"1\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146978\",\"reference\":\"\",\"date_started\":\"1600819200\",\"time_spent\":\"15\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146433\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"date_started\":1600819200,\"time_estimated\":\"10\",\"time_spent\":\"15\",\"score\":\"1\"}}'),(79,1602146992,'task.update',1,2,21,'{\"task_id\":\"21\",\"task\":{\"id\":\"21\",\"title\":\"PWA \",\"description\":\"Learn and implement it in the testing LMS site\",\"date_creation\":\"1602146429\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"1\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602146992\",\"reference\":\"\",\"date_started\":\"1600819200\",\"time_spent\":\"15\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1602146433\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"priority\":1}}'),(80,1602147146,'task.create',1,2,22,'{\"task_id\":22,\"task\":{\"id\":\"22\",\"title\":\" Low-fidelity prototyping - Figma\",\"description\":\"Learn low-fidelity prototyping in Figma and think about forms how they will behave and act...\",\"date_creation\":\"1602147145\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"3\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147145\",\"reference\":\"\",\"date_started\":\"1603411200\",\"time_spent\":\"12\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147145\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"2\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(81,1602147151,'task.move.column',1,2,22,'{\"task_id\":\"22\",\"task\":{\"id\":\"22\",\"title\":\" Low-fidelity prototyping - Figma\",\"description\":\"Learn low-fidelity prototyping in Figma and think about forms how they will behave and act...\",\"date_creation\":\"1602147145\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"3\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147150\",\"reference\":\"\",\"date_started\":\"1603411200\",\"time_spent\":\"12\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147150\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"2\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147145\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147145\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(82,1602147160,'task.update',1,2,22,'{\"task_id\":\"22\",\"task\":{\"id\":\"22\",\"title\":\" Low-fidelity prototyping - Figma\",\"description\":\"Learn low-fidelity prototyping in Figma and think about forms how they will behave and act...\",\"date_creation\":\"1602147145\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"3\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147160\",\"reference\":\"\",\"date_started\":\"1603411200\",\"time_spent\":\"12\",\"time_estimated\":\"5\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147150\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"2\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\"}}'),(83,1602147227,'task.create',1,2,23,'{\"task_id\":23,\"task\":{\"id\":\"23\",\"title\":\"LMS Competition Form - Figma\",\"description\":\"Draw a rough form for lms in figma and try to modify it to the high-fidelity prototype\",\"date_creation\":\"1602147227\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147227\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147227\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(84,1602147231,'task.move.column',1,2,23,'{\"task_id\":\"23\",\"task\":{\"id\":\"23\",\"title\":\"LMS Competition Form - Figma\",\"description\":\"Draw a rough form for lms in figma and try to modify it to the high-fidelity prototype\",\"date_creation\":\"1602147227\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147230\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147230\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147227\"},\"project_id\":\"2\",\"position\":2,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147227\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(85,1602147238,'task.move.position',1,2,23,'{\"task_id\":\"23\",\"task\":{\"id\":\"23\",\"title\":\"LMS Competition Form - Figma\",\"description\":\"Draw a rough form for lms in figma and try to modify it to the high-fidelity prototype\",\"date_creation\":\"1602147227\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147230\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147230\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"8\",\"dst_column_id\":\"8\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"8\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147230\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(86,1602147254,'task.update',1,2,23,'{\"task_id\":\"23\",\"task\":{\"id\":\"23\",\"title\":\"LMS Competition Form - Figma\",\"description\":\"Draw a rough form for lms in figma and try to modify it to the high-fidelity prototype\",\"date_creation\":\"1602147227\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147253\",\"reference\":\"\",\"date_started\":\"1604016000\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147230\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"2\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"color_id\":\"green\",\"priority\":2,\"date_started\":1604016000}}'),(87,1602147272,'task.move.column',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147272\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147272\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"7\",\"date_moved\":\"1602146356\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"7\",\"date_moved\":\"1602146356\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(88,1602147379,'task.create',1,2,24,'{\"task_id\":24,\"task\":{\"id\":\"24\",\"title\":\"Firebase Deployment\",\"description\":\"Deployment of the lms web app to firebase\",\"date_creation\":\"1602147379\",\"date_completed\":null,\"date_due\":\"1602028800\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147379\",\"reference\":\"\",\"date_started\":\"1601510400\",\"time_spent\":\"1\",\"time_estimated\":\"1\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147379\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(89,1602147385,'task.move.column',1,2,24,'{\"task_id\":\"24\",\"task\":{\"id\":\"24\",\"title\":\"Firebase Deployment\",\"description\":\"Deployment of the lms web app to firebase\",\"date_creation\":\"1602147379\",\"date_completed\":null,\"date_due\":\"1602028800\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147384\",\"reference\":\"\",\"date_started\":\"1601510400\",\"time_spent\":\"1\",\"time_estimated\":\"1\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147384\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147379\"},\"project_id\":\"2\",\"position\":2,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147379\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(90,1602147388,'task.move.position',1,2,24,'{\"task_id\":\"24\",\"task\":{\"id\":\"24\",\"title\":\"Firebase Deployment\",\"description\":\"Deployment of the lms web app to firebase\",\"date_creation\":\"1602147379\",\"date_completed\":null,\"date_due\":\"1602028800\",\"color_id\":\"green\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147384\",\"reference\":\"\",\"date_started\":\"1601510400\",\"time_spent\":\"1\",\"time_estimated\":\"1\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147384\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"8\",\"dst_column_id\":\"8\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"8\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147384\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(91,1602147469,'task.create',1,2,25,'{\"task_id\":25,\"task\":{\"id\":\"25\",\"title\":\"Stripe Integration\",\"description\":\"Connect the checkout with stripe...\",\"date_creation\":\"1602147468\",\"date_completed\":null,\"date_due\":\"1602666000\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"5\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"2\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147468\",\"reference\":\"\",\"date_started\":\"1602115200\",\"time_spent\":\"0\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147468\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(92,1602147472,'task.move.column',1,2,25,'{\"task_id\":\"25\",\"task\":{\"id\":\"25\",\"title\":\"Stripe Integration\",\"description\":\"Connect the checkout with stripe...\",\"date_creation\":\"1602147468\",\"date_completed\":null,\"date_due\":\"1602666000\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"6\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"2\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147471\",\"reference\":\"\",\"date_started\":\"1602115200\",\"time_spent\":\"0\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147471\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1602147468\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"6\",\"swimlane_id\":\"2\",\"src_column_id\":\"5\",\"dst_column_id\":\"6\",\"date_moved\":\"1602147468\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(93,1602147476,'task.move.column',1,2,25,'{\"task_id\":\"25\",\"task\":{\"id\":\"25\",\"title\":\"Stripe Integration\",\"description\":\"Connect the checkout with stripe...\",\"date_creation\":\"1602147468\",\"date_completed\":null,\"date_due\":\"1602666000\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"2\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1602147476\",\"reference\":\"\",\"date_started\":\"1602115200\",\"time_spent\":\"0\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1602147476\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1602147471\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1602147471\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(94,1604573441,'task.move.column',1,2,17,'{\"task_id\":\"17\",\"task\":{\"id\":\"17\",\"title\":\"Competition \",\"description\":\"## Competition page for the competitions with price \",\"date_creation\":\"1598961480\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604573441\",\"reference\":\"\",\"date_started\":\"1599123600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1604573441\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147272\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147272\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(95,1604573447,'task.move.column',1,2,25,'{\"task_id\":\"25\",\"task\":{\"id\":\"25\",\"title\":\"Stripe Integration\",\"description\":\"Connect the checkout with stripe...\",\"date_creation\":\"1602147468\",\"date_completed\":null,\"date_due\":\"1602666000\",\"color_id\":\"red\",\"project_id\":\"2\",\"column_id\":\"8\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"2\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604573447\",\"reference\":\"\",\"date_started\":\"1602115200\",\"time_spent\":\"0\",\"time_estimated\":\"10\",\"swimlane_id\":\"2\",\"date_moved\":\"1604573447\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Done\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147476\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"8\",\"swimlane_id\":\"2\",\"src_column_id\":\"7\",\"dst_column_id\":\"8\",\"date_moved\":\"1602147476\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(96,1604573508,'task.create',1,2,26,'{\"task_id\":26,\"task\":{\"id\":\"26\",\"title\":\"Testing of Register Form and Payment\",\"description\":\"## Finish testing register from and payment gateway with Python and Selenium\",\"date_creation\":\"1604573508\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"6\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604573508\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1604573508\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"}}'),(97,1604573513,'task.move.column',1,2,26,'{\"task_id\":\"26\",\"task\":{\"id\":\"26\",\"title\":\"Testing of Register Form and Payment\",\"description\":\"## Finish testing register from and payment gateway with Python and Selenium\",\"date_creation\":\"1604573508\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"2\",\"column_id\":\"7\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604573513\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"2\",\"date_moved\":\"1604573513\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Thrill-Capital\",\"column_title\":\"Work in progress\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1604573508\"},\"project_id\":\"2\",\"position\":1,\"column_id\":\"7\",\"swimlane_id\":\"2\",\"src_column_id\":\"6\",\"dst_column_id\":\"7\",\"date_moved\":\"1604573508\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(98,1604654190,'task.create',1,3,27,'{\"task_id\":27,\"task\":{\"id\":\"27\",\"title\":\"Hours Recording Web App\",\"description\":\"## Web App in PHP, MySQL, and JavaScript to record work hours\",\"date_creation\":\"1604654190\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604654190\",\"reference\":\"\",\"date_started\":\"1604620800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604654190\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(99,1604654195,'task.move.column',1,3,27,'{\"task_id\":\"27\",\"task\":{\"id\":\"27\",\"title\":\"Hours Recording Web App\",\"description\":\"## Web App in PHP, MySQL, and JavaScript to record work hours\",\"date_creation\":\"1604654190\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604654195\",\"reference\":\"\",\"date_started\":\"1604620800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604654195\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1604654190\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"10\",\"date_moved\":\"1604654190\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(100,1604655681,'task.move.column',1,3,27,'{\"task_id\":\"27\",\"task\":{\"id\":\"27\",\"title\":\"Hours Recording Web App\",\"description\":\"## Web App in PHP, MySQL, and JavaScript to record work hours\",\"date_creation\":\"1604654190\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604655681\",\"reference\":\"\",\"date_started\":\"1604620800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604655681\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1604654195\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"10\",\"dst_column_id\":\"11\",\"date_moved\":\"1604654195\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(101,1604961765,'task.create',1,3,28,'{\"task_id\":28,\"task\":{\"id\":\"28\",\"title\":\"Laravel & API\",\"description\":\"## Build E-commerce site in Laravel \\r\\n## Create some APIs related to some of the important features\\r\\n## Test those APIs in Laravel and Postman\",\"date_creation\":\"1604961765\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604961765\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604961765\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(102,1604961770,'task.move.position',1,3,20,'{\"task_id\":\"20\",\"task\":{\"id\":\"20\",\"title\":\"React and API\",\"description\":\"## Start preparing for third assessment with React and JavaScript\",\"date_creation\":\"1601280096\",\"date_completed\":null,\"date_due\":\"1603152000\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1601280096\",\"reference\":\"\",\"date_started\":\"1601337600\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1601280096\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"9\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"9\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"9\",\"date_moved\":\"1601280096\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(103,1609111578,'task.create',1,3,29,'{\"task_id\":29,\"task\":{\"id\":\"29\",\"title\":\"Things to do today APP\",\"description\":\"Things to do app with date, priority, and completed status\",\"date_creation\":\"1609111577\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1609111577\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1609111577\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(104,1609111587,'task.move.column',1,3,29,'{\"task_id\":\"29\",\"task\":{\"id\":\"29\",\"title\":\"Things to do today APP\",\"description\":\"Things to do app with date, priority, and completed status\",\"date_creation\":\"1609111577\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1609111587\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1609111587\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1609111577\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1609111577\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(105,1609811300,'task.create',1,4,30,'{\"task_id\":30,\"task\":{\"id\":\"30\",\"title\":\"Authentication \",\"description\":\"Work for authentication today\",\"date_creation\":\"1609811299\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"4\",\"column_id\":\"13\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1609811299\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"4\",\"date_moved\":\"1609811299\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Things to do today - App\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(106,1609811303,'task.move.column',1,4,30,'{\"task_id\":\"30\",\"task\":{\"id\":\"30\",\"title\":\"Authentication \",\"description\":\"Work for authentication today\",\"date_creation\":\"1609811299\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"4\",\"column_id\":\"14\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1609811302\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"4\",\"date_moved\":\"1609811302\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Things to do today - App\",\"column_title\":\"Ready\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"13\",\"dst_column_id\":\"14\",\"date_moved\":\"1609811299\"},\"project_id\":\"4\",\"position\":1,\"column_id\":\"14\",\"swimlane_id\":\"4\",\"src_column_id\":\"13\",\"dst_column_id\":\"14\",\"date_moved\":\"1609811299\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(107,1618866386,'task.move.position',1,3,27,'{\"task_id\":\"27\",\"task\":{\"id\":\"27\",\"title\":\"Hours Recording Web App\",\"description\":\"## Web App in PHP, MySQL, and JavaScript to record work hours\",\"date_creation\":\"1604654190\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604655681\",\"reference\":\"\",\"date_started\":\"1604620800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604655681\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"11\",\"dst_column_id\":\"11\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"11\",\"dst_column_id\":\"11\",\"date_moved\":\"1604655681\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(108,1618866399,'task.move.column',1,3,19,'{\"task_id\":\"19\",\"task\":{\"id\":\"19\",\"title\":\"LocalStorage And TicTacToe\",\"description\":\"## Finish these two projects tomorrow and start working on the assessment for web technologies.\",\"date_creation\":\"1600172163\",\"date_completed\":null,\"date_due\":\"1600300800\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"12\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618866398\",\"reference\":\"\",\"date_started\":\"1600246800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1618866398\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Done\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"4\"},\"changes\":{\"src_column_id\":\"11\",\"dst_column_id\":\"12\",\"date_moved\":\"1601815011\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"12\",\"swimlane_id\":\"3\",\"src_column_id\":\"11\",\"dst_column_id\":\"12\",\"date_moved\":\"1601815011\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(109,1618866452,'task.create',1,3,31,'{\"task_id\":31,\"task\":{\"id\":\"31\",\"title\":\"Reddit Image Viewer\",\"description\":\"Build the pilot and make it professional later on...\",\"date_creation\":\"1618866451\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618866451\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1618866451\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(110,1618866462,'task.move.column',1,3,31,'{\"task_id\":\"31\",\"task\":{\"id\":\"31\",\"title\":\"Reddit Image Viewer\",\"description\":\"Build the pilot and make it professional later on...\",\"date_creation\":\"1618866451\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618866462\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1618866462\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"1\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1618866451\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1618866451\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(111,1618866467,'task.move.column',1,3,29,'{\"task_id\":\"29\",\"task\":{\"id\":\"29\",\"title\":\"Things to do today APP\",\"description\":\"Things to do app with date, priority, and completed status\",\"date_creation\":\"1609111577\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"10\",\"owner_id\":\"1\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618866467\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1618866467\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Ready\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"11\",\"dst_column_id\":\"10\",\"date_moved\":\"1609111587\"},\"project_id\":\"3\",\"position\":2,\"column_id\":\"10\",\"swimlane_id\":\"3\",\"src_column_id\":\"11\",\"dst_column_id\":\"10\",\"date_moved\":\"1609111587\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(112,1618885200,'task.create',1,5,32,'{\"task_id\":32,\"task\":{\"id\":\"32\",\"title\":\"Fixing CORS\",\"description\":\"fixing the cors issue that can handle multiple requests when pressed next button\",\"date_creation\":\"1618885200\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"5\",\"column_id\":\"17\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618885200\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"5\",\"date_moved\":\"1618885200\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Reddit Image Viewer\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(113,1618885203,'task.move.column',1,5,32,'{\"task_id\":\"32\",\"task\":{\"id\":\"32\",\"title\":\"Fixing CORS\",\"description\":\"fixing the cors issue that can handle multiple requests when pressed next button\",\"date_creation\":\"1618885200\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"5\",\"column_id\":\"19\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1618885203\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"5\",\"date_moved\":\"1618885203\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Reddit Image Viewer\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"17\",\"dst_column_id\":\"19\",\"date_moved\":\"1618885200\"},\"project_id\":\"5\",\"position\":1,\"column_id\":\"19\",\"swimlane_id\":\"5\",\"src_column_id\":\"17\",\"dst_column_id\":\"19\",\"date_moved\":\"1618885200\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(114,1619833150,'task.create',1,3,33,'{\"task_id\":33,\"task\":{\"id\":\"33\",\"title\":\"Tic Tac Toe Game in JavaScript\",\"description\":\"Simple game to understand the logic and program flow(how other guys do these things?) Later going to start building the hour app ...:)\",\"date_creation\":\"1619833148\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1619833148\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1619833148\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(115,1619833157,'task.move.column',1,3,33,'{\"task_id\":\"33\",\"task\":{\"id\":\"33\",\"title\":\"Tic Tac Toe Game in JavaScript\",\"description\":\"Simple game to understand the logic and program flow(how other guys do these things?) Later going to start building the hour app ...:)\",\"date_creation\":\"1619833148\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1619833155\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1619833155\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1619833148\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"9\",\"dst_column_id\":\"11\",\"date_moved\":\"1619833148\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(116,1619985881,'task.move.position',1,3,27,'{\"task_id\":\"27\",\"task\":{\"id\":\"27\",\"title\":\"Hours Recording Web App\",\"description\":\"## Web App in PHP, MySQL, and JavaScript to record work hours\",\"date_creation\":\"1604654190\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"11\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1604655681\",\"reference\":\"\",\"date_started\":\"1604620800\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1604655681\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Work in progress\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"11\",\"dst_column_id\":\"11\"},\"project_id\":\"3\",\"position\":1,\"column_id\":\"11\",\"swimlane_id\":\"3\",\"src_column_id\":\"11\",\"dst_column_id\":\"11\",\"date_moved\":\"1604655681\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),(117,1620252156,'task.create',1,3,34,'{\"task_id\":34,\"task\":{\"id\":\"34\",\"title\":\"Startup Page\",\"description\":\"Make a neat startup page with either flexbox and grid, or both!\",\"date_creation\":\"1620252155\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"3\",\"column_id\":\"9\",\"owner_id\":\"1\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1620252155\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"3\",\"date_moved\":\"1620252155\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Important\",\"column_title\":\"Backlog\",\"assignee_username\":\"admin\",\"assignee_name\":\"Shyam Chaudhary\",\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}'),(118,1620381206,'task.create',1,6,35,'{\"task_id\":35,\"task\":{\"id\":\"35\",\"title\":\"Read the docs(developer version) \",\"description\":\"Read the docs and get a feel for moodle. Install the developer version and make a backup copy of it.\",\"date_creation\":\"1620381204\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"6\",\"column_id\":\"21\",\"owner_id\":\"0\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"1\",\"date_modification\":\"1620381204\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"6\",\"date_moved\":\"1620381204\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"Default swimlane\",\"project_name\":\"Bug Test (Moodle)\",\"column_title\":\"Backlog\",\"assignee_username\":null,\"assignee_name\":null,\"creator_username\":\"admin\",\"creator_name\":\"Shyam Chaudhary\",\"category_description\":null,\"column_position\":\"1\"}}');
/*!40000 ALTER TABLE `project_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_daily_column_stats`
--

DROP TABLE IF EXISTS `project_daily_column_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_daily_column_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `column_id` int NOT NULL,
  `total` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_daily_column_stats_idx` (`day`,`project_id`,`column_id`),
  KEY `column_id` (`column_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_daily_column_stats_ibfk_1` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_daily_column_stats_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_daily_column_stats`
--

LOCK TABLES `project_daily_column_stats` WRITE;
/*!40000 ALTER TABLE `project_daily_column_stats` DISABLE KEYS */;
INSERT INTO `project_daily_column_stats` VALUES (30,'2020-07-30',1,1,1,0),(31,'2020-07-30',1,4,7,0),(32,'2020-08-29',1,4,8,0),(48,'2020-08-29',2,5,1,0),(49,'2020-08-29',2,8,2,1),(68,'2020-08-29',3,9,3,0),(69,'2020-08-29',3,10,1,0),(70,'2020-08-31',2,6,1,0),(71,'2020-08-31',2,8,2,1),(80,'2020-08-31',3,9,1,0),(81,'2020-08-31',3,10,4,0),(91,'2020-09-01',2,5,2,0),(92,'2020-09-01',2,7,1,0),(93,'2020-09-01',2,8,2,1),(95,'2020-09-01',1,4,8,0),(98,'2020-09-15',3,9,1,0),(99,'2020-09-15',3,10,4,0),(100,'2020-09-24',3,9,1,0),(101,'2020-09-24',3,10,3,0),(102,'2020-09-24',3,12,1,0),(118,'2020-09-28',3,9,1,0),(119,'2020-09-28',3,10,2,0),(120,'2020-09-28',3,11,1,0),(121,'2020-09-28',3,12,1,0),(128,'2020-10-04',3,9,1,0),(129,'2020-10-04',3,10,1,0),(130,'2020-10-04',3,11,1,0),(131,'2020-10-04',3,12,2,0),(179,'2020-10-08',2,5,1,0),(180,'2020-10-08',2,7,2,2),(181,'2020-10-08',2,8,7,5),(190,'2020-11-05',2,5,1,0),(191,'2020-11-05',2,7,1,0),(192,'2020-11-05',2,8,9,7),(201,'2020-11-06',3,9,1,0),(202,'2020-11-06',3,10,1,0),(203,'2020-11-06',3,11,2,0),(204,'2020-11-06',3,12,2,0),(205,'2020-11-09',3,9,2,0),(206,'2020-11-09',3,10,1,0),(207,'2020-11-09',3,11,2,0),(208,'2020-11-09',3,12,2,0),(213,'2020-12-27',3,9,2,0),(214,'2020-12-27',3,10,1,0),(215,'2020-12-27',3,11,3,0),(216,'2020-12-27',3,12,2,0),(218,'2021-01-05',4,14,1,0),(231,'2021-04-19',3,9,2,0),(232,'2021-04-19',3,10,2,0),(233,'2021-04-19',3,11,2,0),(234,'2021-04-19',3,12,3,0),(236,'2021-04-20',5,19,1,0),(241,'2021-05-01',3,12,3,0),(242,'2021-05-01',3,10,2,0),(243,'2021-05-01',3,9,2,0),(244,'2021-05-01',3,11,3,0),(245,'2021-05-05',3,12,3,0),(246,'2021-05-05',3,10,2,0),(247,'2021-05-05',3,9,3,0),(248,'2021-05-05',3,11,3,0),(249,'2021-05-07',6,21,1,0);
/*!40000 ALTER TABLE `project_daily_column_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_daily_stats`
--

DROP TABLE IF EXISTS `project_daily_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_daily_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `avg_lead_time` int NOT NULL DEFAULT '0',
  `avg_cycle_time` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_daily_stats_idx` (`day`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_daily_stats_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_daily_stats`
--

LOCK TABLES `project_daily_stats` WRITE;
/*!40000 ALTER TABLE `project_daily_stats` DISABLE KEYS */;
INSERT INTO `project_daily_stats` VALUES (19,'2020-07-30',1,2470,0),(20,'2020-08-29',1,2608568,0),(31,'2020-08-29',2,1360,682030),(42,'2020-08-29',3,6837,23622),(43,'2020-08-31',2,218542,851428),(48,'2020-08-31',3,169155,133829),(52,'2020-09-01',2,195615,562921),(54,'2020-09-01',1,2917388,0),(56,'2020-09-15',3,1135424,831461),(57,'2020-09-24',3,1908373,1434894),(62,'2020-09-28',3,1728234,1702899),(65,'2020-10-04',3,2263122,2226292),(86,'2020-10-08',2,1675417,1730073),(90,'2020-11-05',2,3728595,3272983),(93,'2020-11-06',3,4253408,4228281),(94,'2020-11-09',3,3908136,3886598),(96,'2020-12-27',3,7050714,6513140),(98,'2021-01-05',4,3,0),(102,'2021-04-19',3,14938308,12292711),(104,'2021-04-20',5,3,0),(106,'2021-05-01',3,14314498,11643453),(107,'2021-05-05',3,13394089,10813503),(108,'2021-05-07',6,1,0);
/*!40000 ALTER TABLE `project_daily_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_categories`
--

DROP TABLE IF EXISTS `project_has_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_category` (`project_id`,`name`),
  KEY `categories_project_idx` (`project_id`),
  CONSTRAINT `project_has_categories_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_categories`
--

LOCK TABLES `project_has_categories` WRITE;
/*!40000 ALTER TABLE `project_has_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_files`
--

DROP TABLE IF EXISTS `project_has_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT '0',
  `size` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_has_files_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_files`
--

LOCK TABLES `project_has_files` WRITE;
/*!40000 ALTER TABLE `project_has_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_groups`
--

DROP TABLE IF EXISTS `project_has_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_groups` (
  `group_id` int NOT NULL,
  `project_id` int NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `group_id` (`group_id`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_has_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_has_groups_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_groups`
--

LOCK TABLES `project_has_groups` WRITE;
/*!40000 ALTER TABLE `project_has_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_metadata`
--

DROP TABLE IF EXISTS `project_has_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_metadata` (
  `project_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int NOT NULL DEFAULT '0',
  `changed_on` int NOT NULL DEFAULT '0',
  UNIQUE KEY `project_id` (`project_id`,`name`),
  CONSTRAINT `project_has_metadata_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_metadata`
--

LOCK TABLES `project_has_metadata` WRITE;
/*!40000 ALTER TABLE `project_has_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_notification_types`
--

DROP TABLE IF EXISTS `project_has_notification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_notification_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`notification_type`),
  CONSTRAINT `project_has_notification_types_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_notification_types`
--

LOCK TABLES `project_has_notification_types` WRITE;
/*!40000 ALTER TABLE `project_has_notification_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_notification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_roles`
--

DROP TABLE IF EXISTS `project_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `project_id` (`project_id`,`role`),
  CONSTRAINT `project_has_roles_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_roles`
--

LOCK TABLES `project_has_roles` WRITE;
/*!40000 ALTER TABLE `project_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_users`
--

DROP TABLE IF EXISTS `project_has_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_users` (
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `idx_project_user` (`project_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `project_has_users_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_users`
--

LOCK TABLES `project_has_users` WRITE;
/*!40000 ALTER TABLE `project_has_users` DISABLE KEYS */;
INSERT INTO `project_has_users` VALUES (1,1,'project-manager'),(2,1,'project-manager'),(3,1,'project-manager'),(4,1,'project-manager'),(5,1,'project-manager'),(6,1,'project-manager');
/*!40000 ALTER TABLE `project_has_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_role_has_restrictions`
--

DROP TABLE IF EXISTS `project_role_has_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_role_has_restrictions` (
  `restriction_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `role_id` int NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`rule`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_role_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_role_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_role_has_restrictions`
--

LOCK TABLES `project_role_has_restrictions` WRITE;
/*!40000 ALTER TABLE `project_role_has_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_role_has_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` bigint DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `is_private` tinyint(1) DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `start_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `end_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `owner_id` int DEFAULT '0',
  `priority_default` int DEFAULT '0',
  `priority_start` int DEFAULT '0',
  `priority_end` int DEFAULT '3',
  `email` mediumtext COLLATE utf8mb4_unicode_ci,
  `predefined_email_subjects` mediumtext COLLATE utf8mb4_unicode_ci,
  `per_swimlane_task_limits` int NOT NULL DEFAULT '0',
  `task_limit` int DEFAULT '0',
  `enable_global_tags` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'TheGigWebsite',1,'',1598994905,0,0,NULL,'','','',1,0,0,3,NULL,NULL,0,2,1),(2,'Thrill-Capital',1,'',1604573513,0,0,NULL,'LMS','','',1,0,0,3,NULL,NULL,0,0,1),(3,'Important',1,'',1620252156,0,1,NULL,'DTTG','','',1,0,0,3,NULL,NULL,0,0,1),(4,'Things to do today - App',1,'',1609811302,0,0,NULL,'','','',1,0,0,3,NULL,NULL,0,0,1),(5,'Reddit Image Viewer',1,'',1618885203,0,1,NULL,'','','',1,0,0,3,NULL,NULL,0,0,1),(6,'Bug Test (Moodle)',1,'',1620381205,0,0,NULL,'','','',1,0,0,3,NULL,NULL,0,0,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remember_me`
--

DROP TABLE IF EXISTS `remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remember_me` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` int DEFAULT NULL,
  `date_creation` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `remember_me_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remember_me`
--

LOCK TABLES `remember_me` WRITE;
/*!40000 ALTER TABLE `remember_me` DISABLE KEYS */;
INSERT INTO `remember_me` VALUES (10,1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','bc029d32b789992c0445051b1389997770c6a073a861ce7b8ffb99aba29397d3','74a9a954ab5f4b269010f2d6cdebc5edb63c788e4b129b0e9567237e7d59',1624050277,1618866277),(11,1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36','836e3247b91db98329587a7eeeab21563e4d6382626d0be1f9f4712f562fd4d8','587e9bfe2a533ef43d874cbd59ea8b993c9ccf5440fc2b13047e02ec007d',1625017042,1619833042);
/*!40000 ALTER TABLE `remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_version` (
  `version` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES (137);
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` int NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1eucmeuolqtcn2r4f4jci546e0',1599213208,'csrf|a:1:{s:60:\"46b0dfe2e70ba226a872ce310cf926276bc3287a343ac3a47569a4541c67\";b:1;}'),('1j46s17ffg7dhriiqbbn5c5vcp',1598849571,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";'),('4v2ngevc52gnl5gkq2k46q7p31',1618916651,'csrf|a:1:{s:60:\"cda497802cef009369215e838b1d4ef6a6d566413e719256e40784155952\";b:1;}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"1\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";filters:3|s:11:\"status:open\";flash|a:0:{}filters:5|s:11:\"status:open\";listOrder:5|a:2:{i:0;s:8:\"tasks.id\";i:1;s:4:\"DESC\";}'),('5k67p8tjq0pqtvb7svc4vd0ti0',1609757893,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";'),('6hea3nc4nuh8b0o1lnk0nm3o48',1620392488,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}filters:6|s:11:\"status:open\";'),('6mdat9jdg7mtgsnq30d3v6tuls',1619834480,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;'),('71mckeau5lrvfmdqc5n5ba1og8',1604582869,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";csrf|a:1:{s:60:\"415819e5eda1d475402fde30406390e9f85a7181898657f29c71cbe9f756\";b:1;}flash|a:0:{}'),('77ndnmpbvv2rtr5hmkb992qeuk',1609851834,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}filters:4|s:11:\"status:open\";'),('8c7ur8odb6cup7d9puk5q3efnt',1598965521,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"1\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";filters:1|s:11:\"status:open\";'),('8jm0futs2tiovk2krbtjig00eu',1598781356,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;csrf|a:1:{s:60:\"70384f162fa9a9e891cff4d54868437ddf1e26b07cd6163357f155f3dae3\";b:1;}filters:3|s:11:\"status:open\";'),('a1u8uqk2uvkb07mur7dbt7jtb7',1605003920,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('aqp5sopq3kionclroiimfj21fe',1598882570,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:1:{s:60:\"96b5ee7e392ec0bf168180470b9cf7073a51065768ba3c7c35691cd9f182\";b:1;}'),('c3gr1j1p28uanj9hq70e940rhg',1598965529,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";filters:2|s:11:\"status:open\";csrf|a:2:{s:60:\"10972becc2e3275a1f80f446045d5179d063ce2480cf86188db639558b55\";b:1;s:60:\"f8782851b9f521818b232250cd348c16e81023951efcfb465f19cde49b85\";b:1;}flash|a:0:{}filters:1|s:11:\"status:open\";'),('di7vgbbvl66lt74teogea57ecl',1600264248,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";'),('enmmrl5ve3b20cvsvv6m1kevav',1596185880,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";N;s:5:\"email\";N;s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";N;s:8:\"language\";N;s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";N;}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:1|s:11:\"status:open\";'),('eoad06s7srbm0qbdh1egc9nn32',1601288646,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('esl3rq1si0qnbk2mqaf7fh5dfv',1600173614,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('fonu548oqmlgq46677ev86gr37',1601816460,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('fu5iu3vi398af88sp40lajntmt',1601376317,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";'),('ghavbso3hjc5av41rcgf254i2m',1616294101,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;'),('j9jn72e94n5qp9h3oed95p6mte',1599033833,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";filters:2|s:11:\"status:open\";'),('nun4bgn95obvll8c8icace6n3i',1620039290,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:1:{s:60:\"a0bafc604d4e239eb5dc3d0e529129447b7296cf48e48734d3672d76fcb2\";b:1;}filters:5|s:11:\"status:open\";filters:4|s:11:\"status:open\";'),('o04hr26raulc950eqsb14mkudj',1619836283,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:5|s:11:\"status:open\";filters:3|s:11:\"status:open\";flash|a:0:{}'),('o36lrdvvlq4vtnni7c01rfl0g7',1616288221,'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;'),('ooua9hr73u9qi29g8mtjhno2md',1596129371,'csrf|a:21:{s:60:\"bbfecb46eb739a1e31fb50a750c6b25f3a88ac2b32d434bef48d512044fc\";b:1;s:60:\"cc996b38c5daa62d5832102cb5225bf830b9d1ecc6bc3601e838563acbe2\";b:1;s:60:\"e1ec9a1bc63f60f954d3c86a4fa993e37f4826f2d669e53ab7a8d3df9345\";b:1;s:60:\"20c24b3d3cd3c4db09a6ba570f78a776be8d669e3b71dfc4b003acdb90ff\";b:1;s:60:\"96dbc3c363c6dfabc265a7a5dc699c23e582043f8560676b76cbd599be9e\";b:1;s:60:\"b649b7c974946887da69b2ba9e86717775137ea2f97c86e51818c86b7d8a\";b:1;s:60:\"dc612c3c1cdec421d74040360e609bff373d37c1e63b1b91663bb560ba9f\";b:1;s:60:\"64a6e406f4bcca6799b265ae31af4e05c905c73ced602a8005b0592134f1\";b:1;s:60:\"6a9883ca402eaedb266c34713eae2203d7e8337f94dce393adfa6e3271e3\";b:1;s:60:\"e6bb6052806c2aaed09407401bc6c47e88519965017a61bc4f0e2a657913\";b:1;s:60:\"3ecb81758c6ed0efd0e2f7ac9fb457d93cb1b5b5f50fe9d4156a255a7b1d\";b:1;s:60:\"67b3cb9b796955112709c97931863dd4523f345bca918a462b1780a448a9\";b:1;s:60:\"0c41d611b4e8c1d51ac2493c325844ee9b2e5faabf83b8511bdd5dbdb615\";b:1;s:60:\"68f506d8ef1a24059f2b9fbd53500c256078c4666cfa1c4a61e4fe384437\";b:1;s:60:\"e826a03748bb79588a290bbb4f4278d2f23d36f1286ad661425d198dc15a\";b:1;s:60:\"f98487e8f23404416fdfbd8ba1eb5ce0666d9839c4a6f11d8cbdae6844ec\";b:1;s:60:\"b0da2d6f2b3228c930c76d7e2db4839241fd71a55fb58edf54673a4013f6\";b:1;s:60:\"fd58a4b1cce2686c64384ba1a3745d3f8ed692f03126f7545741749c7d2b\";b:1;s:60:\"3dfc1e7bda939892aef015249d47ceff6f8d285368ba2c6a7ca775d8493d\";b:1;s:60:\"fd61b8900b6f888c66b9d1d5a3413e47ee33e42f9686bce9dec2a4774403\";b:1;s:60:\"3261be77a6c99005bbc252d0cf3a85b25394a0297b00fc0a9f8830ff3b70\";b:1;}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";N;s:5:\"email\";N;s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";N;s:8:\"language\";N;s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";N;s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";N;}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;flash|a:0:{}filters:1|s:11:\"status:open\";'),('p7fb21fkuo379riu6dnus2cifj',1599048221,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";'),('pffdd66nj96b48tpujqbeqeb4a',1598997448,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";filters:1|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('q60pl80p1o042vv0b2qdp1mvjg',1609116259,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('r1d77ltkgb5qvag9ai1hd8pjhu',1598714900,'csrf|a:1:{s:60:\"936760a13ef780b39f647a95912d80db230a9ab9edfbdf14be4ce17cfe05\";b:1;}'),('rsemd3age0jud9l85m34te0hcr',1599438860,'csrf|a:3:{s:60:\"82089575dac42866f5d676714f7a0f5973eba0d7b798bfebc5d77e947ac9\";b:1;s:60:\"240950b9ede5e537c0d920fccdec5aee72d02fe72c09606d325f264586ba\";b:1;s:60:\"71269ec8dc6ce7f3f7e1c280a171fb02fd85869d51461f785a75042f35ea\";b:1;}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";flash|a:0:{}'),('s6uhir2tkv4fjdt5l6t1v78pka',1620301309,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:0:{}flash|a:0:{}'),('sbitne0vk9a2f3a5uiah6mj3q1',1604661891,'csrf|a:1:{s:60:\"22382200dc5a7d62c696268dc4cee8010b7b58e400e8aaab84c8c52d54ff\";b:1;}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";flash|a:0:{}'),('sia1tbp8qdr5tckrq1i60d21pb',1598688443,'csrf|a:1:{s:60:\"444a8db141596113c035a3b8fdcbf6759f4b4544835fd5c718aacd097708\";b:1;}hasRememberMe|b:1;captcha|s:5:\"zNQVL\";'),('stimqtrndpo8ne8cqqr3ous5o4',1602156518,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";csrf|a:5:{s:60:\"00638daaa1949a3fe6162033a52dda2593613382adaf7f08729e78543e00\";b:1;s:60:\"c12e1948273aba021ddb11d095621c2bc7ca2454e677b1d57e2d76773f91\";b:1;s:60:\"6b9394dfd30fe2fb9f30a6f459fc41bf64e0b8815766a5cfbe871155107c\";b:1;s:60:\"6cd46f740182ec03f79130b3ffdebd4e5218a288e5d1230dba126ed53aaa\";b:1;s:60:\"df49cd69cd4c0e23c04914d58369f1cb41a6707d158915699188cf986823\";b:1;}flash|a:0:{}'),('tnhlftfhts7e4nb9bv30khgife',1620426770,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;filters:6|s:11:\"status:open\";hasSubtaskInProgress|b:0;'),('v2coii6l80qdoog67qmlkp96co',1600948667,'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:15:\"Shyam Chaudhary\";s:5:\"email\";s:31:\"sam.chaudhary615@protonmail.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:3|s:11:\"status:open\";csrf|a:5:{s:60:\"848f60be19193ea33d1e463573671e2488ed942989c498484ee47e02dde9\";b:1;s:60:\"1d1c2510a7f6d1982fd00dd54f831ed1e18be31539960e4fd53300ffdffe\";b:1;s:60:\"cc3fbc306e70a5197d58f2513840798cac29a4802da2e518e4bca6cf13d9\";b:1;s:60:\"c22c1b32f38a4bf04613830cad6e8a0010489c042204aeb81ad4839b1167\";b:1;s:60:\"d31ecfc26706414741c4646cdc0446ec7a96c6f4678b052a8ba95705ae9e\";b:1;}flash|a:0:{}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `changed_by` int NOT NULL DEFAULT '0',
  `changed_on` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('api_token','0fde96ab43568a586f9e4ab95e6a38e7a955dcc6124a073f023e951a4197',0,0),('application_currency','USD',0,0),('application_date_format','m/d/Y',0,0),('application_language','en_US',0,0),('application_stylesheet','',0,0),('application_timezone','UTC',0,0),('application_url','',0,0),('board_columns','',0,0),('board_highlight_period','172800',0,0),('board_private_refresh_interval','10',0,0),('board_public_refresh_interval','60',0,0),('calendar_project_tasks','date_started',0,0),('calendar_user_subtasks_time_tracking','0',0,0),('calendar_user_tasks','date_started',0,0),('cfd_include_closed_tasks','1',0,0),('default_color','yellow',0,0),('integration_gravatar','0',0,0),('password_reset','1',0,0),('project_categories','',0,0),('subtask_restriction','0',0,0),('subtask_time_tracking','1',0,0),('webhook_token','b652b0d2d3e086025f8c3b6797f571b2139ea7bbfdca534f680ba7e41a32',0,0),('webhook_url','',0,0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtask_time_tracking`
--

DROP TABLE IF EXISTS `subtask_time_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtask_time_tracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subtask_id` int NOT NULL,
  `start` bigint DEFAULT NULL,
  `end` bigint DEFAULT NULL,
  `time_spent` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subtask_id` (`subtask_id`),
  CONSTRAINT `subtask_time_tracking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `subtask_time_tracking_ibfk_2` FOREIGN KEY (`subtask_id`) REFERENCES `subtasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtask_time_tracking`
--

LOCK TABLES `subtask_time_tracking` WRITE;
/*!40000 ALTER TABLE `subtask_time_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtask_time_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtasks`
--

DROP TABLE IF EXISTS `subtasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int DEFAULT '0',
  `time_estimated` float DEFAULT NULL,
  `time_spent` float DEFAULT NULL,
  `task_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `position` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `subtasks_task_idx` (`task_id`),
  CONSTRAINT `subtasks_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtasks`
--

LOCK TABLES `subtasks` WRITE;
/*!40000 ALTER TABLE `subtasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swimlanes`
--

DROP TABLE IF EXISTS `swimlanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `swimlanes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int DEFAULT '1',
  `is_active` int DEFAULT '1',
  `project_id` int DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `task_limit` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`project_id`),
  KEY `swimlanes_project_idx` (`project_id`),
  CONSTRAINT `swimlanes_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swimlanes`
--

LOCK TABLES `swimlanes` WRITE;
/*!40000 ALTER TABLE `swimlanes` DISABLE KEYS */;
INSERT INTO `swimlanes` VALUES (1,'Default swimlane',1,1,1,'',0),(2,'Default swimlane',1,1,2,'',0),(3,'Default swimlane',1,1,3,'',0),(4,'Default swimlane',1,1,4,'',0),(5,'Default swimlane',1,1,5,'',0),(6,'Default swimlane',1,1,6,'',0);
/*!40000 ALTER TABLE `swimlanes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_has_external_links`
--

DROP TABLE IF EXISTS `task_has_external_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_has_external_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` int NOT NULL,
  `date_modification` int NOT NULL,
  `task_id` int NOT NULL,
  `creator_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_has_external_links_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_has_external_links`
--

LOCK TABLES `task_has_external_links` WRITE;
/*!40000 ALTER TABLE `task_has_external_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_has_external_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_has_files`
--

DROP TABLE IF EXISTS `task_has_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_has_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT '0',
  `task_id` int NOT NULL,
  `date` bigint DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `size` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `files_task_idx` (`task_id`),
  CONSTRAINT `task_has_files_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_has_files`
--

LOCK TABLES `task_has_files` WRITE;
/*!40000 ALTER TABLE `task_has_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_has_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_has_links`
--

DROP TABLE IF EXISTS `task_has_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_has_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link_id` int NOT NULL,
  `task_id` int NOT NULL,
  `opposite_task_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_has_links_unique` (`link_id`,`task_id`,`opposite_task_id`),
  KEY `opposite_task_id` (`opposite_task_id`),
  KEY `task_has_links_task_index` (`task_id`),
  CONSTRAINT `task_has_links_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `task_has_links_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `task_has_links_ibfk_3` FOREIGN KEY (`opposite_task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_has_links`
--

LOCK TABLES `task_has_links` WRITE;
/*!40000 ALTER TABLE `task_has_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_has_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_has_metadata`
--

DROP TABLE IF EXISTS `task_has_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_has_metadata` (
  `task_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int NOT NULL DEFAULT '0',
  `changed_on` int NOT NULL DEFAULT '0',
  UNIQUE KEY `task_id` (`task_id`,`name`),
  CONSTRAINT `task_has_metadata_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_has_metadata`
--

LOCK TABLES `task_has_metadata` WRITE;
/*!40000 ALTER TABLE `task_has_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_has_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_has_tags`
--

DROP TABLE IF EXISTS `task_has_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_has_tags` (
  `task_id` int NOT NULL,
  `tag_id` int NOT NULL,
  UNIQUE KEY `tag_id` (`tag_id`,`task_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_has_tags_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `task_has_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_has_tags`
--

LOCK TABLES `task_has_tags` WRITE;
/*!40000 ALTER TABLE `task_has_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_has_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_creation` bigint DEFAULT NULL,
  `date_completed` bigint DEFAULT NULL,
  `date_due` bigint DEFAULT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int NOT NULL,
  `column_id` int NOT NULL,
  `owner_id` int DEFAULT '0',
  `position` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `category_id` int DEFAULT '0',
  `creator_id` int DEFAULT '0',
  `date_modification` int DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_started` bigint DEFAULT NULL,
  `time_spent` float DEFAULT '0',
  `time_estimated` float DEFAULT '0',
  `swimlane_id` int NOT NULL,
  `date_moved` bigint DEFAULT NULL,
  `recurrence_status` int NOT NULL DEFAULT '0',
  `recurrence_trigger` int NOT NULL DEFAULT '0',
  `recurrence_factor` int NOT NULL DEFAULT '0',
  `recurrence_timeframe` int NOT NULL DEFAULT '0',
  `recurrence_basedate` int NOT NULL DEFAULT '0',
  `recurrence_parent` int DEFAULT NULL,
  `recurrence_child` int DEFAULT NULL,
  `priority` int DEFAULT '0',
  `external_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_task_active` (`is_active`),
  KEY `column_id` (`column_id`),
  KEY `tasks_reference_idx` (`reference`),
  KEY `tasks_project_idx` (`project_id`),
  KEY `tasks_swimlane_ibfk_1` (`swimlane_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tasks_swimlane_ibfk_1` FOREIGN KEY (`swimlane_id`) REFERENCES `swimlanes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Build the prototype for the gig website','## Prototype for the gig website',1596076787,NULL,0,'yellow',1,4,0,8,0,1,0,1,1596077531,'',0,0,0,1,1596077531,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(2,'Start writing code','## Implement the gig website according to the prototype',1596076848,NULL,0,'yellow',1,4,0,7,0,1,0,1,1596077627,'',0,0,0,1,1596077627,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(3,'Test the code','## Test and Implement the code',1596077647,NULL,0,'yellow',1,4,0,6,0,1,0,1,1596077657,'',0,0,0,1,1596077657,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(4,'Deploy the code to firebase ','Deploy the code to firebase',1596077715,NULL,0,'yellow',1,4,0,5,0,1,0,1,1596077715,'',0,0,0,1,1596077715,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(5,'Push the code to gitlab','',1596077737,NULL,0,'yellow',1,4,0,4,0,1,0,1,1596077740,'',0,0,0,1,1596077740,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(6,'Note down tasks fro Xariyon','',1596077764,NULL,0,'yellow',1,4,0,2,0,1,0,1,1596077767,'',0,0,0,1,1596077767,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(7,'Accept merge requests of Xariyon','',1596077798,NULL,0,'red',1,4,0,3,0,1,0,1,1598994905,'',0,0,0,1,1596079987,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(8,'Work on new features discuss by the team','',1596077835,NULL,0,'red',1,4,0,1,0,1,0,1,1598994894,'',0,0,0,1,1598686085,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(9,'Research pros and cons of moodle','',1598686565,NULL,1597968000,'green',2,8,0,9,1,1,0,1,1598688423,'',1597363200,3,2,2,1598686575,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(10,'Install Moodle and Test some plugins','Installing moodle and testing it with some popular plugins',1598686683,NULL,1598486400,'green',2,8,0,8,0,1,0,1,1598688396,'',1597968000,4,4,2,1598686701,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(11,'Research theme and assests','Research different themes and assets that we can use in our project along with how to write a custom plugins for moodle.',1598688608,NULL,1599177600,'green',2,8,0,7,0,1,0,1,1602146320,'',1598832000,0,5,2,1602146313,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(13,'Complete the CV','## Make your CV according the resume you have and double check it',1598698003,NULL,1598745600,'green',3,12,1,3,0,1,0,1,1601280113,'',1598659200,0,0,3,1600945118,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(14,'Update Your Portfolio Site','### Add the gig website in the project column and update the site with latest resume',1598698149,NULL,1598745600,'green',3,12,1,2,0,1,0,1,1601814998,'',1598745600,0,0,3,1601814987,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(16,'Remodify the old website with React and JQuery.','### Revive the old website with new designs that you saw in lainchan. But use the technology React and JQuery.',1598911037,NULL,0,'yellow',3,10,1,1,0,1,0,1,1601280040,'',1598954400,0,0,3,1601280040,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(17,'Competition ','## Competition page for the competitions with price ',1598961480,NULL,0,'red',2,8,0,2,0,1,0,1,1604573441,'',1599123600,0,0,2,1604573441,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(18,'Slack or Riot integration','## Slack or Riot Integration ',1598961601,NULL,0,'red',2,5,0,1,0,1,0,1,1598961601,'',0,0,0,2,1598961601,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(19,'LocalStorage And TicTacToe','## Finish these two projects tomorrow and start working on the assessment for web technologies.',1600172163,NULL,1600300800,'red',3,12,1,1,0,1,0,1,1618866398,'',1600246800,0,0,3,1618866398,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(20,'React and API','## Start preparing for third assessment with React and JavaScript',1601280096,NULL,1603152000,'yellow',3,9,1,2,0,1,0,1,1601280096,'',1601337600,0,0,3,1601280096,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(21,'PWA ','Learn and implement it in the testing LMS site',1602146429,NULL,0,'green',2,8,0,6,1,1,0,1,1602146992,'',1600819200,15,10,2,1602146433,0,0,0,0,0,NULL,NULL,1,NULL,NULL),(22,' Low-fidelity prototyping - Figma','Learn low-fidelity prototyping in Figma and think about forms how they will behave and act...',1602147145,NULL,0,'green',2,8,0,5,3,1,0,1,1602147160,'',1603411200,12,5,2,1602147150,0,0,0,0,0,NULL,NULL,2,NULL,NULL),(23,'LMS Competition Form - Figma','Draw a rough form for lms in figma and try to modify it to the high-fidelity prototype',1602147227,NULL,0,'green',2,8,0,4,0,1,0,1,1602147253,'',1604016000,0,0,2,1602147230,0,0,0,0,0,NULL,NULL,2,NULL,NULL),(24,'Firebase Deployment','Deployment of the lms web app to firebase',1602147379,NULL,1602028800,'green',2,8,0,3,0,1,0,1,1602147384,'',1601510400,1,1,2,1602147384,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(25,'Stripe Integration','Connect the checkout with stripe...',1602147468,NULL,1602666000,'red',2,8,0,1,2,1,0,1,1604573447,'',1602115200,0,10,2,1604573447,0,0,0,0,0,NULL,NULL,1,NULL,NULL),(26,'Testing of Register Form and Payment','## Finish testing register from and payment gateway with Python and Selenium',1604573508,NULL,0,'yellow',2,7,0,1,0,1,0,1,1604573513,'',0,0,0,2,1604573513,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(27,'Hours Recording Web App','## Web App in PHP, MySQL, and JavaScript to record work hours',1604654190,NULL,0,'red',3,11,1,1,0,1,0,1,1604655681,'',1604620800,0,0,3,1604655681,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(28,'Laravel & API','## Build E-commerce site in Laravel \r\n## Create some APIs related to some of the important features\r\n## Test those APIs in Laravel and Postman',1604961765,NULL,0,'yellow',3,9,1,3,0,1,0,1,1604961765,'',0,0,0,3,1604961765,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(29,'Things to do today APP','Things to do app with date, priority, and completed status',1609111577,NULL,0,'yellow',3,10,1,2,0,1,0,1,1618866467,'',0,0,0,3,1618866467,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(30,'Authentication ','Work for authentication today',1609811299,NULL,0,'yellow',4,14,0,1,0,1,0,1,1609811302,'',0,0,0,4,1609811302,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(31,'Reddit Image Viewer','Build the pilot and make it professional later on...',1618866451,NULL,0,'yellow',3,11,1,3,0,1,0,1,1618866462,'',0,0,0,3,1618866462,0,0,0,0,0,NULL,NULL,1,NULL,NULL),(32,'Fixing CORS','fixing the cors issue that can handle multiple requests when pressed next button',1618885200,NULL,0,'red',5,19,1,1,0,1,0,1,1618885203,'',0,0,0,5,1618885203,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(33,'Tic Tac Toe Game in JavaScript','Simple game to understand the logic and program flow(how other guys do these things?) Later going to start building the hour app ...:)',1619833148,NULL,0,'yellow',3,11,1,2,0,1,0,1,1619833155,'',0,0,0,3,1619833155,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(34,'Startup Page','Make a neat startup page with either flexbox and grid, or both!',1620252155,NULL,0,'red',3,9,1,1,0,1,0,1,1620252155,'',0,0,0,3,1620252155,0,0,0,0,0,NULL,NULL,0,NULL,NULL),(35,'Read the docs(developer version) ','Read the docs and get a feel for moodle. Install the developer version and make a backup copy of it.',1620381204,NULL,0,'red',6,21,0,1,0,1,0,1,1620381204,'',0,0,0,6,1620381204,0,0,0,0,0,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transitions`
--

DROP TABLE IF EXISTS `transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL,
  `src_column_id` int NOT NULL,
  `dst_column_id` int NOT NULL,
  `date` bigint DEFAULT NULL,
  `time_spent` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `src_column_id` (`src_column_id`),
  KEY `dst_column_id` (`dst_column_id`),
  KEY `transitions_task_index` (`task_id`),
  KEY `transitions_project_index` (`project_id`),
  KEY `transitions_user_index` (`user_id`),
  CONSTRAINT `transitions_ibfk_1` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transitions_ibfk_2` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transitions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transitions_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transitions_ibfk_5` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transitions`
--

LOCK TABLES `transitions` WRITE;
/*!40000 ALTER TABLE `transitions` DISABLE KEYS */;
INSERT INTO `transitions` VALUES (1,1,1,1,1,2,1596077450,663),(2,1,1,1,2,3,1596077455,5),(3,1,1,1,3,4,1596077531,76),(4,1,1,2,1,3,1596077620,772),(5,1,1,2,3,4,1596077628,8),(6,1,1,3,3,4,1596077657,10),(7,1,1,5,3,4,1596077741,4),(8,1,1,6,3,4,1596077767,3),(9,1,1,7,3,4,1596077804,6),(10,1,1,7,4,3,1596079985,2181),(11,1,1,7,3,4,1596079987,2),(12,1,1,8,1,4,1598686085,2608250),(13,1,2,9,5,8,1598686576,11),(14,1,2,10,5,6,1598686693,10),(15,1,2,10,6,7,1598686699,6),(16,1,2,10,7,8,1598686701,2),(18,1,2,11,5,6,1598905829,217221),(19,1,3,13,9,10,1598906206,208203),(20,1,3,14,9,10,1598906211,208062),(22,1,2,11,6,7,1598992603,86775),(23,1,3,19,9,10,1600172169,6),(24,1,3,13,10,12,1600945118,2038912),(25,1,3,14,10,11,1601280036,2373825),(26,1,3,16,9,10,1601280040,2369003),(27,1,3,14,11,12,1601814988,534953),(28,1,3,19,10,11,1601815012,1642844),(29,1,2,11,7,8,1602146313,3153710),(30,1,2,17,5,7,1602146331,3184851),(31,1,2,17,7,5,1602146356,25),(32,1,2,21,5,8,1602146433,4),(33,1,2,22,5,8,1602147151,6),(34,1,2,23,5,8,1602147231,4),(35,1,2,17,5,7,1602147272,916),(36,1,2,24,5,8,1602147385,6),(37,1,2,25,5,6,1602147472,4),(38,1,2,25,6,7,1602147476,5),(39,1,2,17,7,8,1604573442,2426170),(40,1,2,25,7,8,1604573447,2425971),(41,1,2,26,6,7,1604573513,5),(42,1,3,27,9,10,1604654195,5),(43,1,3,27,10,11,1604655682,1487),(44,1,3,29,9,11,1609111587,10),(45,1,4,30,13,14,1609811303,4),(46,1,3,19,11,12,1618866399,17051388),(47,1,3,31,9,11,1618866462,11),(48,1,3,29,11,10,1618866467,9754880),(49,1,5,32,17,19,1618885203,3),(50,1,3,33,9,11,1619833157,9);
/*!40000 ALTER TABLE `transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_metadata`
--

DROP TABLE IF EXISTS `user_has_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_metadata` (
  `user_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int NOT NULL DEFAULT '0',
  `changed_on` int NOT NULL DEFAULT '0',
  UNIQUE KEY `user_id` (`user_id`,`name`),
  CONSTRAINT `user_has_metadata_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_metadata`
--

LOCK TABLES `user_has_metadata` WRITE;
/*!40000 ALTER TABLE `user_has_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_notification_types`
--

DROP TABLE IF EXISTS `user_has_notification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_notification_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_has_notification_types_user_idx` (`user_id`,`notification_type`),
  CONSTRAINT `user_has_notification_types_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_notification_types`
--

LOCK TABLES `user_has_notification_types` WRITE;
/*!40000 ALTER TABLE `user_has_notification_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_notification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_notifications`
--

DROP TABLE IF EXISTS `user_has_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_notifications` (
  `user_id` int NOT NULL,
  `project_id` int NOT NULL,
  UNIQUE KEY `user_has_notifications_unique_idx` (`user_id`,`project_id`),
  KEY `user_has_notifications_ibfk_2` (`project_id`),
  CONSTRAINT `user_has_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_has_notifications_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_notifications`
--

LOCK TABLES `user_has_notifications` WRITE;
/*!40000 ALTER TABLE `user_has_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_unread_notifications`
--

DROP TABLE IF EXISTS `user_has_unread_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_unread_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `date_creation` bigint NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_has_unread_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_unread_notifications`
--

LOCK TABLES `user_has_unread_notifications` WRITE;
/*!40000 ALTER TABLE `user_has_unread_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_unread_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ldap_user` tinyint(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications_enabled` tinyint(1) DEFAULT '0',
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_login_form` tinyint(1) DEFAULT '0',
  `twofactor_activated` tinyint(1) DEFAULT '0',
  `twofactor_secret` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notifications_filter` int DEFAULT '4',
  `nb_failed_login` int DEFAULT '0',
  `lock_expiration_date` bigint DEFAULT NULL,
  `gitlab_id` int DEFAULT NULL,
  `role` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'app-user',
  `is_active` tinyint(1) DEFAULT '1',
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$GzDCeQl/GdH.pCZfz4fWdO3qmayutRCmxEIY9U9t1k9q9F89VNDCm',0,'Shyam Chaudhary','sam.chaudhary615@protonmail.com',NULL,NULL,0,'','',0,0,NULL,'',4,0,0,NULL,'app-admin',1,NULL,NULL,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `lara_hb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lara_hb` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `lara_hb`;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `time_from` datetime DEFAULT NULL,
  `time_to` datetime DEFAULT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `room_id` int unsigned DEFAULT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_deleted_at_index` (`deleted_at`),
  KEY `110461_5a676fa2321c7` (`customer_id`),
  KEY `110461_5a676fa239ffd` (`room_id`),
  CONSTRAINT `110461_5a676fa2321c7` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `110461_5a676fa239ffd` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2020-06-03 01:26:00','2020-06-04 01:26:00','Advance paid.','2020-06-02 01:26:43','2020-06-02 01:26:43',NULL,1,1,12000),(2,'2020-06-25 22:32:00','2020-06-17 22:32:00','paid','2020-06-02 22:32:56','2020-06-02 22:32:56',NULL,2,1,1500),(3,'2020-06-04 02:36:00','2020-06-04 02:36:00','Booked with advance deposit','2020-06-03 02:36:23','2020-06-03 02:36:23',NULL,3,3,1200),(4,'2020-06-06 18:22:00','2020-06-06 18:22:00','Booked with advance deposit','2020-06-05 18:23:05','2020-06-05 18:23:05',NULL,3,3,1200),(5,'2020-06-08 00:26:00','2020-06-08 00:26:00','Booked with advance deposit','2020-06-07 00:26:23','2020-06-07 00:26:23',NULL,3,3,1200),(6,'2020-06-08 00:55:00','2020-06-08 00:55:00','Booked with advance deposit','2020-06-07 00:55:17','2020-06-07 00:55:17',NULL,3,3,1200),(7,'2020-06-08 14:09:00','2020-06-08 14:09:00','Booked with advance deposit','2020-06-07 14:09:01','2020-06-07 14:09:01',NULL,3,3,1200),(8,'2020-06-08 14:34:00','2020-06-08 14:34:00','Booked with advance deposit','2020-06-07 14:34:30','2020-06-07 14:34:30',NULL,3,3,1200),(9,'2020-06-08 19:43:00','2020-06-08 19:43:00','Booked with advance deposit','2020-06-07 19:43:44','2020-06-07 19:43:44',NULL,3,3,1200),(10,'2020-06-08 20:32:00','2020-06-08 20:32:00','Booked with advance deposit','2020-06-07 20:32:17','2020-06-07 20:32:17',NULL,3,3,1200),(11,'2020-06-08 21:02:00','2020-06-08 21:02:00','Booked with advance deposit','2020-06-07 21:02:57','2020-06-07 21:02:57',NULL,3,3,1200),(12,'2020-06-08 21:06:00','2020-06-08 21:06:00','Booked with advance deposit','2020-06-07 21:06:32','2020-06-07 21:06:32',NULL,3,3,1200);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2020-06-02 01:25:43','2020-06-02 01:25:43','DownFloor');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(2,'AL','Albania','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(3,'DZ','Algeria','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(4,'AS','American Samoa','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(5,'AD','Andorra','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(6,'AO','Angola','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(7,'AI','Anguilla','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(8,'AQ','Antarctica','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(9,'AG','Antigua and Barbuda','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(10,'AR','Argentina','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(11,'AM','Armenia','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(12,'AW','Aruba','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(13,'AU','Australia','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(14,'AT','Austria','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(15,'AZ','Azerbaijan','2020-06-02 01:21:38','2020-06-02 01:21:38',NULL),(16,'BS','Bahamas','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(17,'BH','Bahrain','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(18,'BD','Bangladesh','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(19,'BB','Barbados','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(20,'BY','Belarus','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(21,'BE','Belgium','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(22,'BZ','Belize','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(23,'BJ','Benin','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(24,'BM','Bermuda','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(25,'BT','Bhutan','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(26,'BO','Bolivia','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(27,'BA','Bosnia and Herzegovina','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(28,'BW','Botswana','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(29,'BV','Bouvet Island','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(30,'BR','Brazil','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(31,'BQ','British Antarctic Territory','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(32,'IO','British Indian Ocean Territory','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(33,'VG','British Virgin Islands','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(34,'BN','Brunei','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(35,'BG','Bulgaria','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(36,'BF','Burkina Faso','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(37,'BI','Burundi','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(38,'KH','Cambodia','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(39,'CM','Cameroon','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(40,'CA','Canada','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(41,'CT','Canton and Enderbury Islands','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(42,'CV','Cape Verde','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(43,'KY','Cayman Islands','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(44,'CF','Central African Republic','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(45,'TD','Chad','2020-06-02 01:21:39','2020-06-02 01:21:39',NULL),(46,'CL','Chile','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(47,'CN','China','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(48,'CX','Christmas Island','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(49,'CC','Cocos [Keeling] Islands','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(50,'CO','Colombia','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(51,'KM','Comoros','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(52,'CG','Congo - Brazzaville','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(53,'CD','Congo - Kinshasa','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(54,'CK','Cook Islands','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(55,'CR','Costa Rica','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(56,'HR','Croatia','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(57,'CU','Cuba','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(58,'CY','Cyprus','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(59,'CZ','Czech Republic','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(60,'CI','Côte d’Ivoire','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(61,'DK','Denmark','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(62,'DJ','Djibouti','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(63,'DM','Dominica','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(64,'DO','Dominican Republic','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(65,'NQ','Dronning Maud Land','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(66,'DD','East Germany','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(67,'EC','Ecuador','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(68,'EG','Egypt','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(69,'SV','El Salvador','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(70,'GQ','Equatorial Guinea','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(71,'ER','Eritrea','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(72,'EE','Estonia','2020-06-02 01:21:40','2020-06-02 01:21:40',NULL),(73,'ET','Ethiopia','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(74,'FK','Falkland Islands','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(75,'FO','Faroe Islands','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(76,'FJ','Fiji','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(77,'FI','Finland','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(78,'FR','France','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(79,'GF','French Guiana','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(80,'PF','French Polynesia','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(81,'TF','French Southern Territories','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(82,'FQ','French Southern and Antarctic Territories','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(83,'GA','Gabon','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(84,'GM','Gambia','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(85,'GE','Georgia','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(86,'DE','Germany','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(87,'GH','Ghana','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(88,'GI','Gibraltar','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(89,'GR','Greece','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(90,'GL','Greenland','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(91,'GD','Grenada','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(92,'GP','Guadeloupe','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(93,'GU','Guam','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(94,'GT','Guatemala','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(95,'GG','Guernsey','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(96,'GN','Guinea','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(97,'GW','Guinea-Bissau','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(98,'GY','Guyana','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(99,'HT','Haiti','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(100,'HM','Heard Island and McDonald Islands','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(101,'HN','Honduras','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(102,'HK','Hong Kong SAR China','2020-06-02 01:21:41','2020-06-02 01:21:41',NULL),(103,'HU','Hungary','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(104,'IS','Iceland','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(105,'IN','India','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(106,'ID','Indonesia','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(107,'IR','Iran','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(108,'IQ','Iraq','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(109,'IE','Ireland','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(110,'IM','Isle of Man','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(111,'IL','Israel','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(112,'IT','Italy','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(113,'JM','Jamaica','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(114,'JP','Japan','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(115,'JE','Jersey','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(116,'JT','Johnston Island','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(117,'JO','Jordan','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(118,'KZ','Kazakhstan','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(119,'KE','Kenya','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(120,'KI','Kiribati','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(121,'KW','Kuwait','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(122,'KG','Kyrgyzstan','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(123,'LA','Laos','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(124,'LV','Latvia','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(125,'LB','Lebanon','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(126,'LS','Lesotho','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(127,'LR','Liberia','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(128,'LY','Libya','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(129,'LI','Liechtenstein','2020-06-02 01:21:42','2020-06-02 01:21:42',NULL),(130,'LT','Lithuania','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(131,'LU','Luxembourg','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(132,'MO','Macau SAR China','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(133,'MK','Macedonia','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(134,'MG','Madagascar','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(135,'MW','Malawi','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(136,'MY','Malaysia','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(137,'MV','Maldives','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(138,'ML','Mali','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(139,'MT','Malta','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(140,'MH','Marshall Islands','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(141,'MQ','Martinique','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(142,'MR','Mauritania','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(143,'MU','Mauritius','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(144,'YT','Mayotte','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(145,'FX','Metropolitan France','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(146,'MX','Mexico','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(147,'FM','Micronesia','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(148,'MI','Midway Islands','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(149,'MD','Moldova','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(150,'MC','Monaco','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(151,'MN','Mongolia','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(152,'ME','Montenegro','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(153,'MS','Montserrat','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(154,'MA','Morocco','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(155,'MZ','Mozambique','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(156,'MM','Myanmar [Burma]','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(157,'NA','Namibia','2020-06-02 01:21:43','2020-06-02 01:21:43',NULL),(158,'NR','Nauru','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(159,'NP','Nepal','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(160,'NL','Netherlands','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(161,'AN','Netherlands Antilles','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(162,'NT','Neutral Zone','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(163,'NC','New Caledonia','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(164,'NZ','New Zealand','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(165,'NI','Nicaragua','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(166,'NE','Niger','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(167,'NG','Nigeria','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(168,'NU','Niue','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(169,'NF','Norfolk Island','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(170,'KP','North Korea','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(171,'VD','North Vietnam','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(172,'MP','Northern Mariana Islands','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(173,'NO','Norway','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(174,'OM','Oman','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(175,'PC','Pacific Islands Trust Territory','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(176,'PK','Pakistan','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(177,'PW','Palau','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(178,'PS','Palestinian Territories','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(179,'PA','Panama','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(180,'PZ','Panama Canal Zone','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(181,'PG','Papua New Guinea','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(182,'PY','Paraguay','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(183,'YD','People\'s Democratic Republic of Yemen','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(184,'PE','Peru','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(185,'PH','Philippines','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(186,'PN','Pitcairn Islands','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(187,'PL','Poland','2020-06-02 01:21:44','2020-06-02 01:21:44',NULL),(188,'PT','Portugal','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(189,'PR','Puerto Rico','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(190,'QA','Qatar','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(191,'RO','Romania','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(192,'RU','Russia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(193,'RW','Rwanda','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(194,'RE','Réunion','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(195,'BL','Saint Barthélemy','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(196,'SH','Saint Helena','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(197,'KN','Saint Kitts and Nevis','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(198,'LC','Saint Lucia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(199,'MF','Saint Martin','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(200,'PM','Saint Pierre and Miquelon','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(201,'VC','Saint Vincent and the Grenadines','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(202,'WS','Samoa','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(203,'SM','San Marino','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(204,'SA','Saudi Arabia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(205,'SN','Senegal','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(206,'RS','Serbia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(207,'CS','Serbia and Montenegro','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(208,'SC','Seychelles','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(209,'SL','Sierra Leone','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(210,'SG','Singapore','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(211,'SK','Slovakia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(212,'SI','Slovenia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(213,'SB','Solomon Islands','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(214,'SO','Somalia','2020-06-02 01:21:45','2020-06-02 01:21:45',NULL),(215,'ZA','South Africa','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(216,'GS','South Georgia and the South Sandwich Islands','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(217,'KR','South Korea','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(218,'ES','Spain','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(219,'LK','Sri Lanka','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(220,'SD','Sudan','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(221,'SR','Suriname','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(222,'SJ','Svalbard and Jan Mayen','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(223,'SZ','Swaziland','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(224,'SE','Sweden','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(225,'CH','Switzerland','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(226,'SY','Syria','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(227,'ST','São Tomé and Príncipe','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(228,'TW','Taiwan','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(229,'TJ','Tajikistan','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(230,'TZ','Tanzania','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(231,'TH','Thailand','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(232,'TL','Timor-Leste','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(233,'TG','Togo','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(234,'TK','Tokelau','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(235,'TO','Tonga','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(236,'TT','Trinidad and Tobago','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(237,'TN','Tunisia','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(238,'TR','Turkey','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(239,'TM','Turkmenistan','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(240,'TC','Turks and Caicos Islands','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(241,'TV','Tuvalu','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(242,'UM','U.S. Minor Outlying Islands','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(243,'PU','U.S. Miscellaneous Pacific Islands','2020-06-02 01:21:46','2020-06-02 01:21:46',NULL),(244,'VI','U.S. Virgin Islands','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(245,'UG','Uganda','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(246,'UA','Ukraine','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(247,'SU','Union of Soviet Socialist Republics','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(248,'AE','United Arab Emirates','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(249,'GB','United Kingdom','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(250,'US','United States','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(251,'ZZ','Unknown or Invalid Region','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(252,'UY','Uruguay','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(253,'UZ','Uzbekistan','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(254,'VU','Vanuatu','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(255,'VA','Vatican City','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(256,'VE','Venezuela','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(257,'VN','Vietnam','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(258,'WK','Wake Island','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(259,'WF','Wallis and Futuna','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(260,'EH','Western Sahara','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(261,'YE','Yemen','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(262,'ZM','Zambia','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(263,'ZW','Zimbabwe','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL),(264,'AX','Åland Islands','2020-06-02 01:21:47','2020-06-02 01:21:47',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_deleted_at_index` (`deleted_at`),
  KEY `110459_5a676ed5d9792` (`country_id`),
  CONSTRAINT `110459_5a676ed5d9792` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'test','test','test','1234568900','sam@test.com','2020-06-02 01:25:09','2020-06-02 01:25:09',NULL,159),(2,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-02 22:25:13','2020-06-02 22:25:13',NULL,NULL),(3,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-02 22:33:39','2020-06-02 22:33:39',NULL,NULL),(4,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-03 02:30:17','2020-06-03 02:30:17',NULL,NULL),(5,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-03 02:33:29','2020-06-03 02:33:29',NULL,NULL),(6,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-03 02:36:11','2020-06-03 02:36:11',NULL,NULL),(7,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-03 02:43:11','2020-06-03 02:43:11',NULL,NULL),(8,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-05 18:22:52','2020-06-05 18:22:52',NULL,NULL),(9,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 00:26:14','2020-06-07 00:26:14',NULL,NULL),(10,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 00:55:09','2020-06-07 00:55:09',NULL,NULL),(11,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 14:34:22','2020-06-07 14:34:22',NULL,NULL),(12,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 19:43:36','2020-06-07 19:43:36',NULL,NULL),(13,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 20:19:41','2020-06-07 20:19:41',NULL,NULL),(14,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 20:32:09','2020-06-07 20:32:09',NULL,NULL),(15,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 21:00:04','2020-06-07 21:00:04',NULL,NULL),(16,'Monk','Buddhist','Tibet','0223266666','monk@gmail.com','2020-06-07 21:06:24','2020-06-07 21:06:24',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2018_01_23_191448_create_1516727688_roles_table',1),(3,'2018_01_23_191453_create_1516727692_users_table',1),(4,'2018_01_23_191454_add_5a676d8f84952_relationships_to_user_table',1),(5,'2018_01_23_191536_create_1516727736_countries_table',1),(6,'2018_01_23_192021_create_1516728020_customers_table',1),(7,'2018_01_23_192022_add_5a676ed766f5b_relationships_to_customer_table',1),(8,'2018_01_23_192145_create_1516728105_rooms_table',1),(9,'2018_01_23_192345_create_1516728224_bookings_table',1),(10,'2018_01_23_192346_add_5a676fa3e3cd8_relationships_to_booking_table',1),(11,'2018_01_23_192755_add_5a67709b89c38_relationships_to_booking_table',1),(12,'2018_01_23_192910_add_5a6770e6b5767_relationships_to_customer_table',1),(13,'2019_05_11_143908_create_categories_table',1),(14,'2019_05_11_144019_add_category_rooms',1),(15,'2019_10_18_114615_add_amount_to_bookings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator (can create other users)','2020-06-02 01:21:47','2020-06-02 01:21:47'),(2,'Simple user','2020-06-02 01:21:47','2020-06-02 01:21:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_deleted_at_index` (`deleted_at`),
  KEY `rooms_category_id_foreign` (`category_id`),
  CONSTRAINT `rooms_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'101',1,'Not so good.','2020-06-02 01:26:11','2020-06-02 01:26:11',NULL,1),(2,'102',1,'Single bed room with attach bathroom','2020-06-02 22:25:16','2020-06-02 22:25:16',NULL,NULL),(3,'102',1,'Single bed room with attach bathroom','2020-06-02 22:33:41','2020-06-02 22:33:41',NULL,NULL),(4,'102',1,'Single bed room with attach bathroom','2020-06-03 02:30:19','2020-06-03 02:30:19',NULL,NULL),(5,'102',1,'Single bed room with attach bathroom','2020-06-03 02:33:31','2020-06-03 02:33:31',NULL,NULL),(6,'102',1,'Single bed room with attach bathroom','2020-06-03 02:36:13','2020-06-03 02:36:13',NULL,NULL),(7,'102',1,'Single bed room with attach bathroom','2020-06-03 02:43:13','2020-06-03 02:43:13',NULL,NULL),(8,'102',1,'Single bed room with attach bathroom','2020-06-05 18:22:54','2020-06-05 18:22:54',NULL,NULL),(9,'102',1,'Single bed room with attach bathroom','2020-06-07 00:26:17','2020-06-07 00:26:17',NULL,NULL),(10,'102',1,'Single bed room with attach bathroom','2020-06-07 00:55:12','2020-06-07 00:55:12',NULL,NULL),(11,'102',1,'Single bed room with attach bathroom','2020-06-07 14:07:12','2020-06-07 14:07:12',NULL,NULL),(12,'102',1,'Single bed room with attach bathroom','2020-06-07 14:34:24','2020-06-07 14:34:24',NULL,NULL),(13,'102',1,'Single bed room with attach bathroom','2020-06-07 19:43:38','2020-06-07 19:43:38',NULL,NULL),(14,'102',1,'Single bed room with attach bathroom','2020-06-07 20:21:24','2020-06-07 20:21:24',NULL,NULL),(15,'102',1,'Single bed room with attach bathroom','2020-06-07 20:32:11','2020-06-07 20:32:11',NULL,NULL),(16,'102',1,'Single bed room with attach bathroom','2020-06-07 21:06:26','2020-06-07 21:06:26',NULL,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `110457_5a676d8ddf4c7` (`role_id`),
  CONSTRAINT `110457_5a676d8ddf4c7` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','test@test.com','$2y$10$TtQ2E3OUHvaN.ts.b0WMN.1w5/mxZW96IUfcTYj5JJgVs7C5Dy5MW','d19pbDpPHOCIIW874JDM9Rhl1IG65HnkGP551ZTEuwR3iB4LyYeCWDi0cHKE','2020-06-02 01:21:47','2020-06-02 22:24:51',1),(5,'simpleuser','simple@test.com','$2y$10$Rau9dOr8PaSf/ZQwK33YIO2psMiyP/pDVRka0aTyLpY2aG/QNzlti','xcnQzMSEYWroEmBAyR7nkfbFvFrc3xyy7uM1IG3necx3wLYRF6XUI2hs4zbn','2020-06-07 04:07:38','2020-06-07 21:04:58',2),(12,'first','first@gmail.com','$2y$10$HA2CHGjsteyHMWZM.9gi.OTJTLhvZhbO8yEFO6jAr/zwQBLlolMBC',NULL,'2020-06-07 20:57:46','2020-06-07 20:57:46',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `laravel6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laravel6` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `laravel6`;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Getting to know us','Hey there! Welcome','We are a new company that values morals and discipline. We believe in trust between us and the custumer. We do what we say and we deliver the products that we think our custumers deserve. So, feel free to comment, critize and publish when we do somehting good or bad','2019-11-17 22:54:49','2019-11-17 22:54:49'),(2,'we\'re ready','Finally, the moment has come','Horrah! We\'re finally releasing our first product that you our beloved customers have been waiting for long long time','2019-11-17 22:56:57','2019-11-17 22:56:57'),(3,'My New Updated Article','Are you looking for short poems in the Spanish language?','No duerme nadie por el cielo. Nadie, nadie. \r\nNo duerme nadie. \r\nLas criaturas de la luna huelen y rondan sus cabañas. \r\nVendrán las iguanas​ vivas a morder a los hombres que no sueñan \r\ny el que huye con el corazón roto encontrará por las esquinas \r\nal increíble cocodrilo quieto bajo la tierna protesta de los astros.','2019-12-03 21:26:51','2019-12-04 21:49:56');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_11_02_134528_create_posts_table',1),(7,'2019_11_02_141415_add_title_to_posts_table',2),(8,'2019_11_03_101447_create_assignments_table',2),(9,'2019_11_04_030706_create_tests_table',3),(10,'2019_11_18_042702_create_articles_table',4),(11,'2019_11_20_031601_create_news_table',5),(13,'2019_11_27_110438_create_writeups_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'We\'re finally delievering our products','Now the wait is gone. Don\'t wait, be aggressive and enjoy! We\'re here to deliver the gift of god','This is the one. You are going to enjoy this so much. Though we are not here to sell any kind of bullshit, but except bullshit from our competitors.','2019-11-19 21:38:13','2019-11-19 21:40:38');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'Finish school work','Complete the work in time, please','2019-11-03 21:31:32','2019-11-03 21:31:32');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Table structure for table `writeups`
--

DROP TABLE IF EXISTS `writeups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writeups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writeups`
--

LOCK TABLES `writeups` WRITE;
/*!40000 ALTER TABLE `writeups` DISABLE KEYS */;
INSERT INTO `writeups` VALUES (1,'Getting to know us','We are new in town. Find us through the series of articles which are below that shows our talent and our expertise. Our motto is \'simplicty is beautiful\'','Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database, you will be prompted for confirmation before the commands are executed. To force the commands to run without a prompt, use the --force flag','2019-11-27 05:32:14','2019-11-27 05:32:14'),(2,'Rolling Back Migrations','You may rollback a limited number of migrations by providing the step option to the rollback command. For example, the following command will rollback the last five migrations:','To rollback the latest migration operation, you may use the rollback command. This command rolls back the last \"batch\" of migrations, which may include multiple migration files','2019-11-27 05:35:11','2019-11-27 05:35:11'),(3,'Creating Tables','You may easily check for the existence of a table or column using the hasTable and hasColumn methods','To create a new database table, use the create method on the Schema facade. The create method accepts two arguments. The first is the name of the table, while the second is a Closure which receives a Blueprint object that may be used to define the new table','2019-11-27 05:37:07','2019-11-27 05:37:07');
/*!40000 ALTER TABLE `writeups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ld`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ld` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ld`;

--
-- Table structure for table `lod`
--

DROP TABLE IF EXISTS `lod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lod` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lod`
--

LOCK TABLES `lod` WRITE;
/*!40000 ALTER TABLE `lod` DISABLE KEYS */;
INSERT INTO `lod` VALUES (1,'reddit','yatir_sam','Blink182'),(2,'reddit1','roadie_','monksam182');
/*!40000 ALTER TABLE `lod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `moodle`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `moodle` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `moodle`;

--
-- Current Database: `publications`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `publications` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `publications`;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books` (
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `isbn` char(13) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES ('sam chaudhary','making a name in the programming world','9676290680'),('lonely ghost','creating chaoas in this tough world','9817384643');
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `number` int NOT NULL,
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (12345,1025.5),(67890,140);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `family` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'Cheetah','Charlie',3),(4,'Lynx','Stumpy',5);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classics`
--

DROP TABLE IF EXISTS `classics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classics` (
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `year` smallint DEFAULT NULL,
  `isbn` char(13) NOT NULL,
  PRIMARY KEY (`isbn`),
  KEY `author` (`author`(20)),
  KEY `title` (`title`(20)),
  KEY `category` (`category`(4)),
  KEY `year` (`year`),
  FULLTEXT KEY `author_2` (`author`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classics`
--

LOCK TABLES `classics` WRITE;
/*!40000 ALTER TABLE `classics` DISABLE KEYS */;
INSERT INTO `classics` VALUES ('Charles Dickens','The Old Curiosity Shop','Fiction',1841,'9780099533474'),('Charles Darwin','The Origin of Species','Non-Fiction',1856,'9780517123201'),('Emily Bronte','Wuthering Heights','Classic Fiction',1847,'9780553212587'),('Jane Austen','Pride and Prejudice','Fiction',1811,'9780582506206'),('Mark Twain','The Adventures of Tom Sawyer','Fiction',1876,'9781598184891'),('Shyam Chaudhary','Lonely Ghost','autobiography',2019,'9829355443967');
/*!40000 ALTER TABLE `classics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `name` varchar(128) DEFAULT NULL,
  `isbn` varchar(13) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('Joe Blogs','9780099533474'),('Jack Wilson','9780517123201'),('Mary Smith','9780582506206');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `firstname` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Bill','Smith','bsmith','$2y$10$LBQjrP3/HbgTY5paN0gBz.TED5QiwafDWIWOs.8hs.H9hpI40tzFi'),('Pauline','Jones','pjones','$2y$10$8m9abJYqWRaIk3kYj94.Nu.hL/Fh3pM6ML7fRR4FayvKG1J3SXyRS');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `rara`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `rara` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `rara`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (28,'one','two','three@gmail.com','Please respect everybody.','2020-01-16 21:41:49','2020-01-16 21:41:49'),(29,'mitsubi','senpai','msenpai@gmail.com','we\'re going home.','2020-01-16 21:42:59','2020-01-16 21:42:59'),(30,'two','three','four@gmail.com','You are welcome!','2020-01-16 22:08:55','2020-01-16 22:08:55');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_01_12_083849_create_messages_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `shyamnest`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `shyamnest` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shyamnest`;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `user` varchar(16) DEFAULT NULL,
  `friend` varchar(16) DEFAULT NULL,
  KEY `user` (`user`(6)),
  KEY `friend` (`friend`(6))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('lain6141','shycha');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  KEY `user` (`user`(6))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('shycha','Blink182!'),('lain6141','Blink182!');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int unsigned DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth` (`auth`(6)),
  KEY `recip` (`recip`(6))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'shycha','shycha','0',1617839995,'I\'m working hard in the silence.'),(2,'shycha','shycha=1','0',1617840054,'Working hard, going to work hard till I get my freedom :)'),(3,'lain6141','lain6141','0',1617841129,'Feeling good, the effort of persistence and perseverance can make anything possible.');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL,
  KEY `user` (`user`(6))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES ('shycha','Work hard or go home!');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `site`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `site` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `site`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'sam','sam','hey, there','2019-09-09 05:10:21','2019-09-09 05:10:21'),(2,'ram','ram@gmail.com','hey, there!','2019-09-09 05:10:33','2019-09-09 05:10:33');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_09_104346_create_messages_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `taskapp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taskapp` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `taskapp`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `test`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','test@test.com',NULL,'$2y$10$R.e3tUC4VnDPKiVpcTOI5eZs31apoVbEavwK7tLn6oOeQ6q1gty3.',NULL,'2021-01-06 11:45:23','2021-01-06 11:45:23'),(2,'temp','temp199@protonmail.com',NULL,'$2y$10$SGJ0jbc3A3XzdlabhYf92e/xY/8XIVFUCMwt2QKnwKXO88PfEoZua',NULL,'2021-01-07 12:10:04','2021-01-07 12:10:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `testdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `testdb` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `testdb`;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
INSERT INTO `tutorials` VALUES (7,'Finish','Five Six',0,'2020-11-12 19:38:40','2020-11-12 20:01:11'),(8,'Finish Todo','one two three',0,'2020-11-12 19:55:18','2020-11-12 19:55:18'),(9,'video','finish video',0,'2020-11-13 08:50:37','2020-11-13 08:50:37');
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `timelog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `timelog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `timelog`;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  KEY `user` (`user`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('shycha','blink182');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(16) DEFAULT NULL,
  `hour` varchar(16) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `todo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `todo` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `todo`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sam','sam.chaudhary615@protonmail.com',NULL,'$2y$10$WHM4O72vbdir9aZwtWx0jeiiCFrXcfverU3UQZfusUqPqGhnJXkuK',NULL,'2021-01-04 23:35:44','2021-01-04 23:35:44'),(2,'temp','temnp199@protonmail.com',NULL,'$2y$10$pjCatgxbyByRv9VZf1ziw.t4N89n.laBsSaCNk1MmiuS.IV58neR.',NULL,'2021-01-06 10:45:06','2021-01-06 10:45:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `wordpress`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wordpress` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `wordpress`;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-03-21 01:26:31','2021-03-21 01:26:31','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_customize_draft_post_name','create-your-website-with-blocks'),(4,5,'_customize_changeset_uuid','e31a900d-dce3-4f41-a83f-327ddde9cee0'),(5,6,'_customize_draft_post_name','about'),(6,6,'_customize_changeset_uuid','e31a900d-dce3-4f41-a83f-327ddde9cee0'),(7,7,'_customize_draft_post_name','contact'),(8,7,'_customize_changeset_uuid','e31a900d-dce3-4f41-a83f-327ddde9cee0'),(9,8,'_customize_draft_post_name','blog'),(10,8,'_customize_changeset_uuid','e31a900d-dce3-4f41-a83f-327ddde9cee0');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-03-21 01:26:31','2021-03-21 01:26:31','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-03-21 01:26:31','2021-03-21 01:26:31','',0,'http://localhost/wordpress/?p=1',0,'post','',1),(2,1,'2021-03-21 01:26:31','2021-03-21 01:26:31','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-03-21 01:26:31','2021-03-21 01:26:31','',0,'http://localhost/wordpress/?page_id=2',0,'page','',0),(3,1,'2021-03-21 01:26:31','2021-03-21 01:26:31','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-03-21 01:26:31','2021-03-21 01:26:31','',0,'http://localhost/wordpress/?page_id=3',0,'page','',0),(4,1,'2021-03-21 01:27:09','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-03-21 01:27:09','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?p=4',0,'post','',0),(5,1,'2021-03-21 01:33:21','0000-00-00 00:00:00','\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->','Create your website with blocks','','auto-draft','closed','closed','','','','','2021-03-21 01:33:20','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?page_id=5',0,'page','',0),(6,1,'2021-03-21 01:33:21','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','auto-draft','closed','closed','','','','','2021-03-21 01:33:21','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?page_id=6',0,'page','',0),(7,1,'2021-03-21 01:33:21','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','auto-draft','closed','closed','','','','','2021-03-21 01:33:21','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?page_id=7',0,'page','',0),(8,1,'2021-03-21 01:33:21','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2021-03-21 01:33:21','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?page_id=8',0,'page','',0),(9,1,'2021-03-21 01:33:21','0000-00-00 00:00:00','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 01:33:21\"\n    }\n}','','','auto-draft','closed','closed','','e31a900d-dce3-4f41-a83f-327ddde9cee0','','','2021-03-21 01:33:21','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?p=9',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','modern'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"e27cbefcfa682b7fbcfd03972b6dfa8e590c1608f9ae5f84b70b422a4c444226\";a:4:{s:10:\"expiration\";i:1616970619;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";s:5:\"login\";i:1616797819;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BX8VOORX/1TfRhxqSVb26/iIdrgXYD1','admin','sam.chaudhary615@protonmail.com','http://localhost/wordpress','2021-03-21 01:26:30','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 10:09:50