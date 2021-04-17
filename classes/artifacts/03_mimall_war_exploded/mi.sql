-- MySQL dump 10.13  Distrib 5.5.25, for Win32 (x86)
--
-- Host: localhost    Database: p-mimall
-- ------------------------------------------------------
-- Server version	5.5.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cms_menu`
--

DROP TABLE IF EXISTS `cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menu` (
  `menu_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级编号',
  `menu_type` tinyint(2) DEFAULT NULL COMMENT '权限类型 1=菜单/2=功能/3=子功能/0=操作',
  `menu_code` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限代码',
  `menu_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限名称',
  `sort` int(9) DEFAULT NULL COMMENT '排序',
  `href` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '图标名称',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态 0=隐藏/1=显示',
  `permission` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='目录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menu`
--

LOCK TABLES `cms_menu` WRITE;
/*!40000 ALTER TABLE `cms_menu` DISABLE KEYS */;
INSERT INTO `cms_menu` VALUES (1,0,NULL,'','功能菜单',NULL,'','',1,'','2016-10-23 16:50:34','2016-12-08 16:14:48','主页'),(2,1,1,'administrator','管理员管理',100,'/administrator','user',1,NULL,'2016-10-23 17:08:23','2016-10-23 17:08:27',''),(3,2,2,'list','管理员列表',20,'/administrator/list/view','users',1,'','2016-10-23 17:24:24','2016-12-10 06:22:36',''),(4,3,0,'list_view','查看',1,'/administrator/list/view','',1,'administrator:list:view','2016-10-23 17:46:12','2016-10-23 17:46:18',''),(5,3,0,'list_edit','编辑',2,'/administrator/list/edit','',1,'administrator:list:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',''),(6,3,0,'list_delete','删除',3,'/administrator/list/delete',NULL,1,'administrator:list:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(7,3,0,'list_create','添加',4,'/administrator/list/create',NULL,1,'administrator:list:create','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(8,2,2,'info','个人信息',10,'/administrator/info/view','user-times',1,'','2016-10-23 17:24:24','2016-12-10 06:22:23',''),(9,8,0,'info_view','查看',1,'/administrator/info/view','',1,'administrator:info:view','2016-10-23 17:46:12','2016-10-23 17:46:18',''),(10,8,0,'info_edit','编辑',2,'/administrator/info/edit','',1,'administrator:info:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',''),(11,2,2,'role','角色管理',30,'/administrator/role/view','user-secret',1,'','2016-10-23 17:24:24','2016-12-08 17:21:33',''),(12,11,0,'role_view','查看',1,'/administrator/role/view','',1,'administrator:role:view','2016-10-23 17:46:12','2016-10-23 17:46:18',''),(13,11,0,'role_edit','编辑',2,'/administrator/role/edit','',1,'administrator:role:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',''),(14,11,0,'role_delete','删除',3,'/administrator/role/delete','',1,'administrator:role:delete','2016-10-23 17:46:12','2016-10-23 17:46:18',''),(15,11,0,'role_create','添加',4,'/administrator/role/create','',1,'administrator:role:create','2016-10-23 17:47:14','2016-10-23 17:47:23',''),(16,1,1,'user','会员管理',300,'/system/user','users',1,NULL,'2016-10-23 17:08:23','2016-10-23 17:08:27',NULL),(17,16,2,'list','会员列表',10,'/system/user/list/view','user',1,'','2016-10-23 17:24:24','2016-12-10 06:15:37',''),(18,17,0,'list_view','查看',1,'/system/user/list/view',NULL,1,'user:list:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(19,17,0,'list_edit','编辑',2,'/system/user/list/edit',NULL,1,'user:list:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(20,17,0,'list_delete','删除',3,'/system/user/list/delete',NULL,1,'user:list:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(21,17,0,'list_add','添加',4,'/system/user/list/add',NULL,1,'user:list:add','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(22,16,2,'grade','等级管理',20,'/system/user/grade/view','',1,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(23,22,0,'grade_view','查看',1,'/system/user/grade/view',NULL,1,'user:grade:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(24,22,0,'grade_edit','编辑',2,'/system/user/grade/edit',NULL,1,'user:grade:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(25,16,2,'record','会员记录管理',30,'/system/user/record/view','',1,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(26,25,0,'record_view','查看',1,'/system/user/record/view','',1,'user:record:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(27,1,1,'product','产品管理',400,'/product','product-hunt',1,NULL,'2016-10-23 17:08:23','2017-05-20 06:58:07',''),(28,27,2,'list','产品列表',10,'/product/list/view','fax',1,'','2016-10-23 17:24:24','2017-05-20 07:00:31',''),(29,28,0,'list_view','查看',1,'/product/list/view',NULL,1,'product:list:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(30,28,0,'list_edit','编辑',2,'/product/list/edit',NULL,1,'product:list:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(31,28,0,'list_delete','删除',3,'/product/list/delete',NULL,1,'product:list:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(32,28,0,'list_add','添加',4,'/product/list/add',NULL,1,'product:list:add','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(33,27,2,'category','分类管理',20,'/product/category/view','object-ungroup',1,'','2016-10-23 17:24:24','2017-05-20 07:04:06',''),(34,33,0,'category_view','查看',1,'/product/category/view',NULL,1,'product:category:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(35,33,0,'category_edit','编辑',2,'/product/category/edit',NULL,1,'product:category:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(36,33,0,'category_delete','删除',3,'/product/category/delete',NULL,1,'product:category:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(37,33,0,'category_create','添加',4,'/product/category/create','',1,'product:category:create','2016-10-23 17:50:45','2017-06-07 17:01:10',''),(38,27,2,'query','问答管理',30,'/system/goods/query','',1,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(39,38,0,'query_view','查看',1,'/system/goods/query/view',NULL,1,'goods:query:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(40,38,0,'query_edit','编辑',2,'/system/goods/query/edit',NULL,1,'goods:query:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(41,38,0,'query_delete','删除',3,'/system/goods/query/delete',NULL,1,'goods:query:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(42,38,0,'query_add','添加',4,'/system/goods/query/add',NULL,1,'goods:query:add','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(43,1,1,'order','交易管理',500,'/system/order','money',1,NULL,'2016-10-23 17:08:23','2016-10-23 17:08:27',NULL),(44,43,2,'list','订单管理',10,'/system/order/list','',1,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(45,44,0,'list_view','查看',1,'/system/order/list/view',NULL,1,'order:list:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(46,44,0,'list_edit','编辑',2,'/system/order/list/edit',NULL,1,'order:list:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(47,44,0,'list_delete','删除',3,'/system/order/list/delete',NULL,1,'order:list:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(48,44,0,'list_add','添加',4,'/system/order/list/add',NULL,1,'order:list:add','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(49,43,2,'info','交易信息',10,'/system/order/info','',0,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(50,49,0,'info_view','查看',1,'/system/order/info/view',NULL,0,'goods:info:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(51,43,2,'reviews','评论管理',10,'/system/order/reviews','',0,'','2016-10-23 17:24:24','2016-10-23 17:24:29',NULL),(52,51,0,'reviews_view','查看',1,'/system/order/reviews/view',NULL,0,'goods:reviews:view','2016-10-23 17:46:12','2016-10-23 17:46:18',NULL),(53,51,0,'reviews_edit','编辑',2,'/system/order/reviews/edit',NULL,0,'goods:reviews:edit','2016-10-23 17:47:14','2016-10-23 17:47:23',NULL),(54,51,0,'reviews_delete','删除',3,'/system/order/reviews/delete',NULL,0,'goods:reviews:delete','2016-10-23 17:48:40','2016-10-23 17:48:47',NULL),(55,51,0,'reviews_add','添加',4,'/system/order/reviews/add',NULL,0,'goods:reviews:add','2016-10-23 17:50:45','2016-10-23 17:50:52',NULL),(65,1,1,'system','系统管理',700,'/system','universal-access',1,NULL,'2016-10-23 20:22:55','2016-10-23 20:23:02',''),(66,65,2,'menu','菜单管理',10,'/system/menu/view','file-text',1,'','2016-10-23 17:24:24','2016-12-08 17:22:33',''),(69,3,0,'list_audit','审查',5,'/administrator/list/audit','',1,'administrator:list:audit','2016-10-25 17:25:29','2016-10-25 17:25:35',''),(70,17,0,'list_audit','审查',5,'/system/user/list/audit',NULL,1,'user:list:audit','2016-10-25 17:25:29','2016-10-25 17:25:35',NULL),(72,28,0,'list_audit','审查',5,'/product/list/audit',NULL,1,'product:list:audit','2016-10-25 17:25:29','2016-10-25 17:25:35',NULL),(74,66,0,'menu_view','查看',1,'/system/menu/view',NULL,1,'system:menu:view','2016-12-05 16:08:59','2016-12-05 16:09:05',NULL),(75,66,0,'menu_edit','编辑',2,'/system/menu/edit','',1,'system:menu:edit','2016-12-05 16:08:59','2016-12-10 06:45:32',''),(76,66,0,'menu_delete','删除',3,'/system/menu/delete',NULL,1,'system:menu:delete','2016-12-05 16:08:59','2016-12-05 16:09:05',NULL),(77,66,0,'menu_create','添加',4,'/system/menu/create','',1,'system:menu:create','2016-12-05 16:08:59','2016-12-05 16:09:05',''),(78,66,0,'menu_audit','审查',5,'/system/menu/audit',NULL,1,'system:menu:audit','2016-12-05 16:08:59','2016-12-05 16:09:05',NULL),(83,11,0,'role_audit','审查',5,'/administrator/role/audit','',1,'administrator:role:audit','2016-12-10 07:25:58','2016-12-10 07:26:56',''),(84,65,2,'version','版本日志',20,'/system/version/view','file-text-o',1,NULL,NULL,NULL,'系统版本日志'),(85,84,0,'version_view','查看',1,'/system/version/view','',1,'system:version:view',NULL,NULL,''),(86,2,2,'organization','组织管理',40,'/administrator/organization/view','coffee',1,NULL,NULL,NULL,'组织管理'),(87,86,0,'organization_view','查看',1,'/administrator/organization/view','',1,'administrator:organization:view',NULL,NULL,''),(88,86,0,'organization_edit','编辑',2,'/administrator/organization/edit','',1,'administrator:organization:edit',NULL,NULL,''),(89,86,0,'organization_delete','删除',3,'/administrator/organization/delete','',1,'administrator:organization:delete',NULL,NULL,''),(90,86,0,'organization_audit','审查',5,'/administrator/organization/audit','',1,'administrator:organization:audit',NULL,NULL,''),(91,86,0,'organization_create','添加',4,'/administrator/organization/create','',1,'administrator:organization:create',NULL,NULL,''),(93,65,2,'swagger','Swagger',30,'/swagger-ui.html','black-tie',1,NULL,'2017-04-07 12:18:42',NULL,'swagger API'),(94,1,1,'online','内容管理',600,'online','bars',1,NULL,'2017-04-08 17:12:36',NULL,'电子商城内容管理模块'),(95,94,2,'navigation','导航管理',10,'/online/navigation/view','line-chart',1,NULL,'2017-04-08 17:14:48',NULL,'电子商城内容管理模块导航管理'),(96,95,0,'navigation_view','查看',1,'/online/navigation/view','',1,'online:navigation:view','2017-04-08 17:16:43',NULL,''),(97,95,0,'navigation_edit','编辑',2,'/online/navigation/edit','',1,'online:navigation:edit','2017-04-08 17:17:45',NULL,''),(98,95,0,'navigation_delete','删除',3,'/online/navigation/delete','',1,'online:navigation:delete','2017-04-08 17:19:16',NULL,''),(99,95,0,'navigation_add','添加',4,'/online/navigation/create','',1,'online:navigation:create','2017-04-08 17:21:14',NULL,''),(100,95,0,'navigation_audit','审查',5,'/online/navigation/audit','',1,'online:navigation:audit','2017-04-08 17:22:22',NULL,''),(101,94,2,'advert','广告管理',20,'/online/advert/view','black-tie',1,NULL,'2017-05-11 07:26:00',NULL,''),(102,101,0,'advert_view','查看',1,'/online/advert/view','',1,'online:advert:view','2017-05-11 07:27:58',NULL,''),(103,101,0,'advert_edit','编辑',2,'/online/advert/edit','',1,'online:advert:edit','2017-05-11 07:30:52',NULL,''),(104,101,0,'advert_delete','删除',3,'/online/advert/delete','',1,'online:advert:delete','2017-05-11 07:32:12',NULL,''),(105,101,0,'advert_add','添加',4,'/online/advert/create','',1,'online:advert:create','2017-05-11 07:33:00',NULL,''),(106,101,0,'advert_audit','审查',5,'/online/advert/audit','',1,'online:advert:audit','2017-05-11 07:33:47',NULL,''),(107,33,0,'category_audit','审查',5,'/product/category/audit','',1,'product:category:audit','2017-05-20 07:05:27',NULL,''),(108,65,2,'druid','数据监控',40,'/druid','cc-jcb',1,NULL,'2017-06-08 11:00:37',NULL,''),(109,65,2,'log','日志记录',50,'/system/log/view','file-text',1,'','2017-06-09 04:46:38',NULL,''),(110,109,0,'log_view','查看',1,'/system/log/view','',1,'system:log:view','2017-06-09 04:48:47',NULL,'');
/*!40000 ALTER TABLE `cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_role`
--

DROP TABLE IF EXISTS `cms_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_role` (
  `role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(64) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(64) DEFAULT NULL COMMENT '角色标志',
  `is_system` tinyint(2) DEFAULT '1' COMMENT '系统数据 1=是,只有超级管理员能修改/0=否,拥有角色修改人员的权限能都修改',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态 0=冻结/1=正常',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_role`
--

LOCK TABLES `cms_role` WRITE;
/*!40000 ALTER TABLE `cms_role` DISABLE KEYS */;
INSERT INTO `cms_role` VALUES (1,'超级管理员','admin',0,1,'2016-10-23 14:26:47','2017-07-10 05:35:15','超级管理员，拥有系统所有的权力！'),(3,'角色管理员','role',1,1,'2017-02-07 16:20:21','2017-04-07 02:46:35','角色管理员，只能修改、创建角色'),(4,'测试管理员','test',0,0,'2017-04-07 01:59:32','2017-04-07 11:47:59','测试管理员');
/*!40000 ALTER TABLE `cms_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_role_menu`
--

DROP TABLE IF EXISTS `cms_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_role_menu` (
  `role_menu_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色权限编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色编号',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '权限编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3772 DEFAULT CHARSET=utf8 COMMENT='角色权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_role_menu`
--

LOCK TABLES `cms_role_menu` WRITE;
/*!40000 ALTER TABLE `cms_role_menu` DISABLE KEYS */;
INSERT INTO `cms_role_menu` VALUES (2810,3,1,'2017-04-07 02:46:35'),(2811,3,2,'2017-04-07 02:46:35'),(2812,3,8,'2017-04-07 02:46:35'),(2813,3,9,'2017-04-07 02:46:35'),(2814,3,10,'2017-04-07 02:46:35'),(2815,3,3,'2017-04-07 02:46:35'),(2816,3,4,'2017-04-07 02:46:35'),(2817,3,5,'2017-04-07 02:46:35'),(2818,3,6,'2017-04-07 02:46:35'),(2819,3,7,'2017-04-07 02:46:35'),(2820,3,69,'2017-04-07 02:46:35'),(2821,3,11,'2017-04-07 02:46:35'),(2822,3,12,'2017-04-07 02:46:35'),(2823,3,13,'2017-04-07 02:46:35'),(2824,3,14,'2017-04-07 02:46:35'),(2825,3,15,'2017-04-07 02:46:35'),(2826,3,83,'2017-04-07 02:46:35'),(2827,3,86,'2017-04-07 02:46:35'),(2828,3,87,'2017-04-07 02:46:35'),(2829,3,88,'2017-04-07 02:46:35'),(2830,3,89,'2017-04-07 02:46:35'),(2831,3,91,'2017-04-07 02:46:35'),(2832,3,90,'2017-04-07 02:46:35'),(2833,3,65,'2017-04-07 02:46:35'),(2834,3,66,'2017-04-07 02:46:35'),(2835,3,74,'2017-04-07 02:46:35'),(2836,3,75,'2017-04-07 02:46:35'),(2837,3,76,'2017-04-07 02:46:35'),(2838,3,77,'2017-04-07 02:46:35'),(2839,3,78,'2017-04-07 02:46:35'),(3004,4,1,'2017-04-07 11:47:59'),(3005,4,2,'2017-04-07 11:47:59'),(3006,4,8,'2017-04-07 11:47:59'),(3007,4,9,'2017-04-07 11:47:59'),(3008,4,10,'2017-04-07 11:47:59'),(3009,4,3,'2017-04-07 11:47:59'),(3010,4,4,'2017-04-07 11:47:59'),(3011,4,5,'2017-04-07 11:47:59'),(3012,4,6,'2017-04-07 11:47:59'),(3013,4,7,'2017-04-07 11:47:59'),(3014,4,69,'2017-04-07 11:47:59'),(3015,4,11,'2017-04-07 11:47:59'),(3016,4,12,'2017-04-07 11:47:59'),(3017,4,13,'2017-04-07 11:47:59'),(3018,4,14,'2017-04-07 11:47:59'),(3019,4,15,'2017-04-07 11:47:59'),(3020,4,83,'2017-04-07 11:47:59'),(3021,4,86,'2017-04-07 11:47:59'),(3022,4,87,'2017-04-07 11:47:59'),(3023,4,88,'2017-04-07 11:47:59'),(3024,4,89,'2017-04-07 11:47:59'),(3025,4,91,'2017-04-07 11:47:59'),(3026,4,90,'2017-04-07 11:47:59'),(3027,4,16,'2017-04-07 11:47:59'),(3028,4,17,'2017-04-07 11:47:59'),(3029,4,18,'2017-04-07 11:47:59'),(3030,4,19,'2017-04-07 11:47:59'),(3031,4,20,'2017-04-07 11:47:59'),(3032,4,21,'2017-04-07 11:47:59'),(3033,4,70,'2017-04-07 11:47:59'),(3034,4,22,'2017-04-07 11:47:59'),(3035,4,23,'2017-04-07 11:47:59'),(3036,4,24,'2017-04-07 11:47:59'),(3037,4,25,'2017-04-07 11:47:59'),(3038,4,26,'2017-04-07 11:47:59'),(3039,4,27,'2017-04-07 11:47:59'),(3040,4,28,'2017-04-07 11:47:59'),(3041,4,29,'2017-04-07 11:47:59'),(3042,4,30,'2017-04-07 11:47:59'),(3043,4,31,'2017-04-07 11:47:59'),(3044,4,32,'2017-04-07 11:47:59'),(3045,4,72,'2017-04-07 11:47:59'),(3046,4,33,'2017-04-07 11:47:59'),(3047,4,34,'2017-04-07 11:47:59'),(3048,4,35,'2017-04-07 11:47:59'),(3049,4,36,'2017-04-07 11:47:59'),(3050,4,37,'2017-04-07 11:47:59'),(3051,4,38,'2017-04-07 11:47:59'),(3052,4,39,'2017-04-07 11:47:59'),(3053,4,40,'2017-04-07 11:47:59'),(3054,4,41,'2017-04-07 11:47:59'),(3055,4,42,'2017-04-07 11:47:59'),(3056,4,43,'2017-04-07 11:47:59'),(3057,4,44,'2017-04-07 11:47:59'),(3058,4,45,'2017-04-07 11:47:59'),(3059,4,46,'2017-04-07 11:47:59'),(3060,4,47,'2017-04-07 11:47:59'),(3061,4,48,'2017-04-07 11:47:59'),(3062,4,65,'2017-04-07 11:47:59'),(3063,4,66,'2017-04-07 11:47:59'),(3064,4,74,'2017-04-07 11:47:59'),(3065,4,75,'2017-04-07 11:47:59'),(3066,4,76,'2017-04-07 11:47:59'),(3067,4,77,'2017-04-07 11:47:59'),(3068,4,78,'2017-04-07 11:47:59'),(3069,4,84,'2017-04-07 11:47:59'),(3070,4,85,'2017-04-07 11:47:59'),(3699,1,1,'2017-07-10 05:35:15'),(3700,1,2,'2017-07-10 05:35:15'),(3701,1,8,'2017-07-10 05:35:15'),(3702,1,9,'2017-07-10 05:35:15'),(3703,1,10,'2017-07-10 05:35:15'),(3704,1,3,'2017-07-10 05:35:15'),(3705,1,4,'2017-07-10 05:35:15'),(3706,1,5,'2017-07-10 05:35:15'),(3707,1,6,'2017-07-10 05:35:15'),(3708,1,7,'2017-07-10 05:35:15'),(3709,1,69,'2017-07-10 05:35:15'),(3710,1,11,'2017-07-10 05:35:15'),(3711,1,12,'2017-07-10 05:35:15'),(3712,1,13,'2017-07-10 05:35:15'),(3713,1,14,'2017-07-10 05:35:15'),(3714,1,15,'2017-07-10 05:35:15'),(3715,1,83,'2017-07-10 05:35:15'),(3716,1,86,'2017-07-10 05:35:15'),(3717,1,87,'2017-07-10 05:35:15'),(3718,1,88,'2017-07-10 05:35:15'),(3719,1,89,'2017-07-10 05:35:15'),(3720,1,91,'2017-07-10 05:35:15'),(3721,1,90,'2017-07-10 05:35:15'),(3722,1,27,'2017-07-10 05:35:15'),(3723,1,28,'2017-07-10 05:35:15'),(3724,1,29,'2017-07-10 05:35:15'),(3725,1,30,'2017-07-10 05:35:15'),(3726,1,31,'2017-07-10 05:35:15'),(3727,1,32,'2017-07-10 05:35:15'),(3728,1,72,'2017-07-10 05:35:15'),(3729,1,33,'2017-07-10 05:35:15'),(3730,1,34,'2017-07-10 05:35:15'),(3731,1,35,'2017-07-10 05:35:15'),(3732,1,36,'2017-07-10 05:35:15'),(3733,1,37,'2017-07-10 05:35:15'),(3734,1,107,'2017-07-10 05:35:15'),(3735,1,38,'2017-07-10 05:35:15'),(3736,1,39,'2017-07-10 05:35:15'),(3737,1,40,'2017-07-10 05:35:15'),(3738,1,41,'2017-07-10 05:35:15'),(3739,1,42,'2017-07-10 05:35:15'),(3740,1,43,'2017-07-10 05:35:15'),(3741,1,44,'2017-07-10 05:35:15'),(3742,1,45,'2017-07-10 05:35:15'),(3743,1,46,'2017-07-10 05:35:15'),(3744,1,47,'2017-07-10 05:35:15'),(3745,1,48,'2017-07-10 05:35:15'),(3746,1,94,'2017-07-10 05:35:15'),(3747,1,95,'2017-07-10 05:35:15'),(3748,1,96,'2017-07-10 05:35:15'),(3749,1,97,'2017-07-10 05:35:15'),(3750,1,98,'2017-07-10 05:35:15'),(3751,1,99,'2017-07-10 05:35:15'),(3752,1,100,'2017-07-10 05:35:15'),(3753,1,101,'2017-07-10 05:35:15'),(3754,1,102,'2017-07-10 05:35:15'),(3755,1,103,'2017-07-10 05:35:15'),(3756,1,104,'2017-07-10 05:35:15'),(3757,1,105,'2017-07-10 05:35:15'),(3758,1,106,'2017-07-10 05:35:15'),(3759,1,65,'2017-07-10 05:35:15'),(3760,1,66,'2017-07-10 05:35:15'),(3761,1,74,'2017-07-10 05:35:15'),(3762,1,75,'2017-07-10 05:35:15'),(3763,1,76,'2017-07-10 05:35:15'),(3764,1,77,'2017-07-10 05:35:15'),(3765,1,78,'2017-07-10 05:35:15'),(3766,1,84,'2017-07-10 05:35:15'),(3767,1,85,'2017-07-10 05:35:15'),(3768,1,93,'2017-07-10 05:35:15'),(3769,1,108,'2017-07-10 05:35:15'),(3770,1,109,'2017-07-10 05:35:15'),(3771,1,110,'2017-07-10 05:35:15');
/*!40000 ALTER TABLE `cms_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user`
--

DROP TABLE IF EXISTS `cms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `login_name` varchar(20) DEFAULT '' COMMENT '管理员账号',
  `login_password` varchar(32) DEFAULT '' COMMENT '管理员密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '加密密码的盐',
  `user_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `sex` int(1) DEFAULT '0' COMMENT '性别 0=保密/1=男/2=女',
  `age` tinyint(4) DEFAULT '0' COMMENT '年龄',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `status` int(1) DEFAULT '1' COMMENT '状态 0=冻结/1=正常',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `telephone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user`
--

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;
INSERT INTO `cms_user` VALUES (1,'admin','d81c31b9348c3da513177a781703767e','Dts7jk','leijun','雷军',0,22,'images/avatar/20170710/1499664515370.jpg',1,'','','2016-10-27 23:11:43','2017-07-10 05:28:52'),(14,'test','aa7b19dfac77ec06a669c6a3d44f3c82','oFkuwy','jack','马云',1,0,'default/avatar/avatar_6.jpg',1,'','','2017-04-06 12:55:44','2017-04-07 05:04:52');
/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_role`
--

DROP TABLE IF EXISTS `cms_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_role` (
  `user_role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '管理员ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 COMMENT='管理员角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_role`
--

LOCK TABLES `cms_user_role` WRITE;
/*!40000 ALTER TABLE `cms_user_role` DISABLE KEYS */;
INSERT INTO `cms_user_role` VALUES (257,1,14,'2017-04-07 05:04:52'),(258,3,14,'2017-04-07 05:04:52'),(260,1,1,'2017-04-07 11:45:55');
/*!40000 ALTER TABLE `cms_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_address`
--

DROP TABLE IF EXISTS `os_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_address` (
  `address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '收获地址ID',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `user_tag` varchar(64) DEFAULT NULL COMMENT '地址标签',
  `user_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `user_adress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `user_zipcode` int(6) DEFAULT NULL COMMENT '邮政编码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='收获地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_address`
--

LOCK TABLES `os_address` WRITE;
/*!40000 ALTER TABLE `os_address` DISABLE KEYS */;
INSERT INTO `os_address` VALUES (3,1,'王勇','公司','13041100750','北京经济技术开发区大族企业湾10栋A座3层',111111,'2017-03-16 18:48:14','2017-03-16 18:48:18');
/*!40000 ALTER TABLE `os_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_category`
--

DROP TABLE IF EXISTS `os_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父分类ID',
  `name` varchar(64) DEFAULT NULL COMMENT '分类名称',
  `sort` int(9) DEFAULT NULL COMMENT '排序',
  `type` tinyint(2) DEFAULT NULL COMMENT '目录类型 2=二级目录/1=一级目录/0=总目录',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `page_title` varchar(64) DEFAULT NULL COMMENT '页面标题',
  `page_description` varchar(64) DEFAULT NULL COMMENT '页面描述',
  `page_keyword` varchar(64) DEFAULT NULL COMMENT '页面关键词',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_category`
--

LOCK TABLES `os_category` WRITE;
/*!40000 ALTER TABLE `os_category` DISABLE KEYS */;
INSERT INTO `os_category` VALUES (1,0,'全部商品',NULL,0,'2017-02-25 21:44:43','2017-02-25 21:44:48','全部商品',NULL,NULL,NULL),(2,1,'手机',100,1,'2017-02-25 21:44:43','2017-06-08 07:06:07','手机','小米手机,超乎你的想象,性能超级棒;小米手机,超乎你的想象,性能超级棒.','小米手机,超乎你的想象,性能超级棒','小米手机'),(3,1,'智能硬件',200,1,'2017-02-25 21:44:43','2017-06-08 06:51:01','智能硬件',NULL,NULL,''),(4,1,'笔记本  平板',300,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','笔记本/平板',NULL,NULL,NULL),(5,1,'路由器  移动电源',400,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','路由器/移动电源',NULL,NULL,NULL),(6,1,'周边配件',500,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','周边配件',NULL,NULL,NULL),(7,1,'耳机  音响',600,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','耳机/音响',NULL,NULL,NULL),(8,1,'保护套  贴膜',700,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','保护套/贴膜',NULL,NULL,NULL),(9,1,'生活周边',800,1,'2017-02-25 21:44:43','2017-02-25 21:44:48','生活周边',NULL,NULL,NULL),(10,3,'手环及配件',10,2,'2017-02-25 21:44:43','2017-06-08 06:48:38','手环及配件','手环及配件','手环及配件','手环及配件'),(11,3,'智能灯',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','智能健康',NULL,NULL,NULL),(12,3,'智能家居',30,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','智能家居',NULL,NULL,NULL),(13,3,'智能健康',40,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','智能出行',NULL,NULL,NULL),(15,4,'笔记本电脑',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','笔记本电脑',NULL,NULL,NULL),(16,4,'平板电脑',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','平板电脑',NULL,NULL,NULL),(17,5,'路由器',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','路由器',NULL,NULL,NULL),(18,5,'移动电源',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','移动电源',NULL,NULL,NULL),(19,5,'路由器配件',30,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','路由器配件',NULL,NULL,NULL),(20,6,'插线板',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','插线板',NULL,NULL,NULL),(21,6,'存储卡',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','存储卡',NULL,NULL,NULL),(22,6,'移动硬盘',30,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','移动硬盘',NULL,NULL,NULL),(23,7,'头戴式耳机',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','头戴式耳机',NULL,NULL,NULL),(24,7,'活塞耳机',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','活塞耳机',NULL,NULL,NULL),(25,7,'蓝牙耳机',30,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','蓝牙耳机',NULL,NULL,NULL),(26,7,'音响',40,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','音响',NULL,NULL,NULL),(27,8,'贴膜',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','贴膜',NULL,NULL,NULL),(28,8,'保护套  保护壳',20,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','保护套/保护壳',NULL,NULL,NULL),(29,8,'移动电源保护套',30,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','移动电源保护套',NULL,NULL,NULL),(30,9,'箱包',10,2,'2017-02-25 21:44:43','2017-02-25 21:44:48','箱包',NULL,NULL,NULL),(31,9,'服装',20,2,'2017-02-25 21:44:43','2017-06-08 07:05:56','服装',NULL,NULL,''),(32,1,'智能家电',900,1,'2017-06-08 07:38:02','2017-06-08 07:41:23','智能家电','智能家电','智能家电','智能家电'),(33,2,'小米手机',5,2,'2017-06-08 07:44:39',NULL,'小米手机','小米手机','小米手机','小米手机');
/*!40000 ALTER TABLE `os_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_order`
--

DROP TABLE IF EXISTS `os_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_order` (
  `order_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_number` bigint(20) DEFAULT NULL COMMENT '订单编号,系统生成',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `pay_type` tinyint(2) DEFAULT '1' COMMENT '支付方式 0=线下支付，1=在线支付',
  `shipment_time` tinyint(2) DEFAULT NULL COMMENT '配送时间 1=不限送货时间，2=工作日送货，3=双休日、假日送货',
  `shipment_type` tinyint(2) DEFAULT '0' COMMENT '配送方式 0=快递配送（免运费），1=快递配送（运费）',
  `shipment_amount` decimal(10,0) DEFAULT '0' COMMENT '快递费',
  `invoice_type` tinyint(2) DEFAULT NULL COMMENT '支付方式 1=不开发票，2=电子发票，3=普通发票',
  `invoice_title` varchar(64) DEFAULT NULL COMMENT '发票抬头',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `order_amount` decimal(10,0) DEFAULT '0' COMMENT '订单金额',
  `order_score` int(11) DEFAULT '0' COMMENT '订单积分',
  `pay_amount` decimal(10,0) DEFAULT NULL COMMENT '支付金额 = 订单金额 + 快递费',
  `buy_number` int(11) DEFAULT NULL COMMENT '商品总数量',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_order`
--

LOCK TABLES `os_order` WRITE;
/*!40000 ALTER TABLE `os_order` DISABLE KEYS */;
INSERT INTO `os_order` VALUES (1,14907102171468493,1,1,1,1,0,1,NULL,1,'2017-03-28 22:10:17','2017-03-28 22:10:17',24985,25000,24985,15),(2,14907103498114457,1,1,1,1,0,1,NULL,3,'2017-03-28 22:12:30','2017-03-28 22:12:30',24985,25000,24985,15),(3,14907105253442098,1,1,1,1,0,1,NULL,6,'2017-03-28 22:15:25','2017-03-28 22:15:25',24985,25000,24985,15),(4,14907114706600918,1,1,1,1,0,1,NULL,12,'2017-03-28 22:31:11','2017-03-28 22:31:11',24985,25000,24985,15),(5,14944359894082287,1,1,1,1,0,1,NULL,1,'2017-05-10 17:06:29','2017-05-10 17:06:29',14591,14600,14591,9),(6,14944360987092400,1,1,1,1,0,1,NULL,1,'2017-05-10 17:08:19','2017-05-10 17:08:19',1599,1600,1599,1),(7,14944361196869580,1,1,1,1,0,1,NULL,12,'2017-05-10 17:08:40','2017-05-10 18:46:41',1599,1600,1599,1),(8,14944369120266217,1,1,1,1,0,1,NULL,12,'2017-05-10 17:21:52','2017-05-10 18:44:56',3198,3200,3198,2),(9,14944376560186831,1,1,1,1,0,1,NULL,12,'2017-05-10 17:34:16','2017-05-10 18:44:06',1599,1600,1599,1),(10,14944390772967434,1,1,1,1,0,1,NULL,1,'2017-05-10 17:57:57','2017-05-10 17:57:57',9843,9848,9843,7),(11,14944392556221620,1,1,1,1,0,1,NULL,12,'2017-05-10 18:00:56','2017-05-10 18:42:11',1599,1600,1599,1),(12,14944739317304562,1,1,3,1,0,2,'王勇',1,'2017-05-11 03:38:52','2017-05-11 05:53:17',1828,1829,1828,2),(13,14944841433444157,1,1,1,1,0,1,NULL,12,'2017-05-11 06:29:03','2017-05-11 07:13:51',5270,5273,5270,5),(14,14947730414380630,1,1,1,1,0,1,NULL,1,'2017-05-14 14:44:01','2017-05-14 14:44:01',1599,1600,1599,1),(18,15025180252292837,1,1,1,1,0,1,'',1,'2017-08-12 14:07:05',NULL,1599,0,1599,1),(19,15025181769174369,1,1,1,1,0,1,'',1,'2017-08-12 14:09:36',NULL,1799,0,1799,1),(20,15025183123016651,1,1,1,1,0,1,'',1,'2017-08-12 14:11:52',NULL,1699,0,1699,1),(21,15025183964457327,1,1,1,1,0,1,'',1,'2017-08-12 14:13:16',NULL,1699,0,1699,1),(22,15025184390653472,1,1,1,1,0,1,'',1,'2017-08-12 14:13:59',NULL,1699,0,1699,1),(23,15025185087906518,1,1,1,1,0,1,'',1,'2017-08-12 14:15:08',NULL,1799,0,1799,1),(24,15025185287718511,1,1,1,1,0,1,'',1,'2017-08-12 14:15:28',NULL,1799,0,1799,1),(25,15025187148087712,1,1,1,1,0,1,'',1,'2017-08-12 14:18:42',NULL,1799,0,1799,1),(26,15025188773332167,1,1,1,1,0,1,'',1,'2017-08-12 14:21:17',NULL,1799,0,1799,1),(27,15025190011807402,1,1,1,1,0,1,'',1,'2017-08-12 14:23:21',NULL,1799,0,1799,1),(29,15025191375923310,1,1,1,1,0,1,'',1,'2017-08-12 14:25:37',NULL,1799,0,1799,1),(30,15025899883793633,1,1,1,1,0,1,'',1,'2017-08-13 10:06:28',NULL,1997,0,1997,3),(31,15026075571077021,1,1,1,1,0,1,'',1,'2017-08-13 14:59:17',NULL,1599,0,1599,1);
/*!40000 ALTER TABLE `os_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_order_product`
--

DROP TABLE IF EXISTS `os_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_order_product` (
  `order_product_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单商品ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `product_number` bigint(20) unsigned DEFAULT NULL COMMENT '商品编号',
  `name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `product_spec_number` bigint(20) unsigned DEFAULT NULL COMMENT '商品规格编号',
  `product_spec_name` varchar(64) DEFAULT NULL COMMENT '商品规格名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `buy_number` int(11) DEFAULT NULL COMMENT '商品总数量',
  `product_score` int(11) DEFAULT NULL COMMENT '商品总积分',
  `product_amount` decimal(10,0) DEFAULT NULL COMMENT '商品总金额',
  `comment_status` tinyint(2) DEFAULT '0' COMMENT '评论状态 0=未评论，1=已评论',
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='订单明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_order_product`
--

LOCK TABLES `os_order_product` WRITE;
/*!40000 ALTER TABLE `os_order_product` DISABLE KEYS */;
INSERT INTO `os_order_product` VALUES (1,1,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,9,14400,14391,0),(2,1,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G ',1799.00,1800,5,9000,8995,0),(3,1,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207484,'金色 16G ',1599.00,1600,1,1600,1599,0),(4,2,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,9,14400,14391,0),(5,2,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G ',1799.00,1800,5,9000,8995,0),(6,2,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207484,'金色 16G ',1599.00,1600,1,1600,1599,0),(7,3,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,9,14400,14391,0),(8,3,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G ',1799.00,1800,5,9000,8995,0),(9,3,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207484,'金色 16G ',1599.00,1600,1,1600,1599,0),(10,4,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,9,14400,14391,0),(11,4,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G ',1799.00,1800,5,9000,8995,0),(12,5,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,8,12800,12792,0),(13,5,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G ',1799.00,1800,1,1800,1799,0),(14,6,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(15,7,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(16,8,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,2,3200,3198,0),(17,9,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(18,10,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,2,3200,3198,0),(19,10,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,' ',1799.00,1800,3,5400,5397,0),(20,10,1472581300305,'魅蓝 Note5','images/goods/20170226/1471798388806.jpg',1472581300305,' ',1099.00,1099,1,1099,1099,0),(21,10,1472583774201,'小米手环 2','images/goods/20170226/1471798568000.jpg',1472583774201,' ',149.00,149,1,149,149,0),(22,11,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(23,12,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(24,12,1472583831117,'魅族手环','images/goods/20170226/1471798587971.jpg',1472583831117,' ',229.00,229,1,229,229,0),(25,13,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,2,3200,3198,0),(26,13,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,' ',1799.00,1800,1,1800,1799,0),(27,13,1472583774201,'小米手环 2','images/goods/20170226/1471798568000.jpg',1472583774201,' ',149.00,149,1,149,149,0),(28,13,1475353918562,'测试商品名称4','images/goods/20170226/1471797894441.jpg',1475353918562,' ',124.00,124,1,124,124,0),(29,14,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G ',1599.00,1600,1,1600,1599,0),(33,18,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G',1599.00,NULL,1,NULL,1599,0),(34,19,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207483,'白色 64G',1799.00,NULL,1,NULL,1799,0),(35,20,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207482,'白色 32G',1699.00,NULL,1,NULL,1699,0),(36,21,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207482,'白色 32G',1699.00,NULL,1,NULL,1699,0),(37,22,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207482,'白色 32G',1699.00,NULL,1,NULL,1699,0),(38,26,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,'',1799.00,NULL,1,NULL,1799,0),(39,27,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,'',1799.00,NULL,1,NULL,1799,0),(41,28,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,'',1799.00,NULL,1,NULL,1799,0),(42,29,1472581245880,'小米MIX','images/goods/20170226/1471798364441.jpg',14725812458801,'',1799.00,NULL,1,NULL,1799,0),(43,30,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207486,'金色 64G',1799.00,NULL,1,NULL,1799,0),(44,30,1473318741286,'Yeelight LED智能灯泡','images/goods/20170226/1471798581451.jpg',1473318741286,'',99.00,NULL,2,NULL,198,0),(45,31,1472581220748,'小米手机5','images/goods/20170226/1471798318820.png',14725812207481,'白色 16G',1599.00,NULL,1,NULL,1599,0);
/*!40000 ALTER TABLE `os_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_order_shipment`
--

DROP TABLE IF EXISTS `os_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_order_shipment` (
  `order_shipment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '配送ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `user_name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `user_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `user_adress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `user_zipcode` int(6) DEFAULT NULL COMMENT '邮政编码',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='订单配送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_order_shipment`
--

LOCK TABLES `os_order_shipment` WRITE;
/*!40000 ALTER TABLE `os_order_shipment` DISABLE KEYS */;
INSERT INTO `os_order_shipment` VALUES (1,1,'王勇','13041100750','发烧发到斯蒂芬斯蒂芬',123456,NULL),(2,2,'王勇','13041100750','发烧发到斯蒂芬斯蒂芬',123456,NULL),(3,3,'王勇','13041100750','发烧发到斯蒂芬斯蒂芬',123456,NULL),(4,4,'王勇','13041100750','发烧发到斯蒂芬斯蒂芬',123456,NULL),(5,5,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(6,6,'王勇','13041100750','大撒旦3d大苏打',321231,NULL),(7,7,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(8,8,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(9,9,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(10,10,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(11,11,'王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(12,12,'王勇王勇','13041100750','海曙路58号',123456,'2017-03-16 18:48:18'),(13,13,'王勇','13041100750','大撒旦3d大苏打',321231,NULL),(14,14,'王勇','13041100750','大撒旦3d大苏打',321231,NULL),(18,18,'王勇','13041100750','大撒旦3d大苏打',321231,NULL),(19,19,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(20,20,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(21,21,'王勇','13041100750','大撒旦3d大苏打',321231,NULL),(22,22,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(23,26,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(24,27,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(26,29,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(27,30,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11'),(28,31,'王勇','13041100750','北京经济技术开发区大族企业湾10栋A座3层',123456,'2017-05-10 15:39:11');
/*!40000 ALTER TABLE `os_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_order_status`
--

DROP TABLE IF EXISTS `os_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_order_status` (
  `order_status_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单状态ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_status` tinyint(2) DEFAULT NULL COMMENT '操作类型 0=会员，1=后台管理人员，2=异常通知',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='订单状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_order_status`
--

LOCK TABLES `os_order_status` WRITE;
/*!40000 ALTER TABLE `os_order_status` DISABLE KEYS */;
INSERT INTO `os_order_status` VALUES (1,1,1,'2017-03-28 22:10:17',0,'订单提交'),(2,2,1,'2017-03-28 22:12:30',0,'订单提交'),(3,3,1,'2017-03-28 22:15:25',0,'订单提交'),(4,4,1,'2017-03-28 22:31:11',0,'订单提交'),(5,4,2,'2017-04-06 14:06:16',0,'付款'),(6,4,3,'2017-04-13 14:06:48',0,'商家打包货物'),(7,4,4,'2017-04-15 14:06:54',0,'等待快递揽收'),(8,4,5,'2017-05-03 14:07:04',0,'快递运输途中'),(9,4,6,'2017-05-10 14:07:09',0,'已收货'),(15,5,1,'2017-05-10 17:06:29',0,'订单提交'),(16,6,1,'2017-05-10 17:08:19',0,'订单提交'),(17,7,1,'2017-05-10 17:08:40',0,'订单提交'),(18,8,1,'2017-05-10 17:21:52',0,'订单提交'),(19,9,1,'2017-05-10 17:34:16',0,'订单提交'),(20,10,1,'2017-05-10 17:57:57',0,'订单提交'),(21,11,1,'2017-05-10 18:00:56',0,'订单提交'),(22,11,12,'2017-05-10 18:42:11',0,'手动取消订单'),(23,9,12,'2017-05-10 18:44:06',0,'手动取消订单'),(24,8,12,'2017-05-10 18:44:56',0,'手动取消订单'),(25,7,12,'2017-05-10 18:46:41',0,'手动取消订单'),(26,12,1,'2017-05-11 03:38:52',0,'订单提交'),(27,13,1,'2017-05-11 06:29:03',0,'订单提交'),(29,14,1,'2017-05-14 14:44:01',0,'订单提交'),(30,18,1,'2017-08-12 14:07:29',0,'订单提交'),(31,19,1,'2017-08-12 14:09:37',0,'订单提交'),(32,20,1,'2017-08-12 14:12:07',0,'订单提交'),(33,21,1,'2017-08-12 14:13:16',0,'订单提交'),(34,22,1,'2017-08-12 14:13:59',0,'订单提交'),(35,26,1,'2017-08-12 14:21:17',0,'订单提交'),(36,27,1,'2017-08-12 14:23:21',0,'订单提交'),(37,28,1,'2017-08-12 14:24:48',0,'订单提交'),(38,29,1,'2017-08-12 14:25:37',0,'订单提交'),(39,30,1,'2017-08-13 10:06:28',0,'订单提交'),(40,31,1,'2017-08-13 14:59:17',0,'订单提交');
/*!40000 ALTER TABLE `os_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product`
--

DROP TABLE IF EXISTS `os_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product` (
  `product_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `product_number` bigint(20) unsigned DEFAULT NULL COMMENT '商品编号',
  `name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `show_price` decimal(10,2) DEFAULT NULL COMMENT '显示价格',
  `introduce` varchar(64) DEFAULT NULL COMMENT '商品简介',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `page_title` varchar(64) DEFAULT NULL COMMENT '页面标题',
  `page_description` varchar(255) DEFAULT NULL COMMENT '页面描述',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product`
--

LOCK TABLES `os_product` WRITE;
/*!40000 ALTER TABLE `os_product` DISABLE KEYS */;
INSERT INTO `os_product` VALUES (1,1472581220748,'小米手机5',2299.00,'支持手机分身，能刷公交卡、银行卡','images/goods/20170226/1471798318820.png','2017-02-25 21:44:43','2017-02-25 21:44:48','小米手机5','小米手机5 十余项黑科技，很轻狠快。骁龙820处理器，最大可选4GB内存+128GB闪存，4轴防抖相机，3D陶瓷/玻璃机身。',NULL),(2,1472581245880,'小米MIX',3499.00,'全面屏概念手机','images/goods/20170226/1471798364441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','小米MIX','小米MIX 全面屏概念手机，开创性的在6.4寸超大屏幕上，做到了惊人的91.3%。当你点亮屏幕的一瞬间，200多万颗像素的色彩，开满了整个屏幕。',NULL),(3,1472581300305,'魅蓝 Note5',1099.00,'快的更漂亮，薄的更持久','images/goods/20170226/1471798388806.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','魅蓝 Note5','魅蓝 Note5，正品行货，另有魅蓝 Note5详细介绍、图片、价格、参数、售前咨询等，购买魅蓝 Note5上魅族商城，全场包邮，7天无理由退货，15天换货保障。',NULL),(4,1472583774201,'小米手环 2',149.00,'看得见的时刻，和你的每一步','images/goods/20170226/1471798568000.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','小米手环2','全新的小米手环 2，加入了 OLED 显示屏，通过轻触圆形按键，即可显示当前时间、步数、心率，甚至里程、热量等更多数据。当不方便触控操作时，抬起手腕，手环便可自动显示当前时间，轻松便捷。',NULL),(5,1472583831117,'魅族手环',229.00,'腕间流动的心率专家','images/goods/20170226/1471798587971.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','魅族手环','魅族手环，腕间流动的心率专家，正品行货，另有魅族手环详细介绍、图片、价格、参数、售前咨询等，购买魅族手环上魅族商城，全场包邮，7天无理由退货，15天换货保障。',NULL),(6,1472628630086,'LED 智能台灯',169.00,'照明之上，光的艺术品','images/goods/20170226/1471798587451.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','LED 智能台灯','米家LED智能台灯的色温与亮度可以无级调节，几乎可以满足用户对光线的所有需求。还针对最常见的四种使用场景单独做了光线优化，专注保护用户的双眼。',NULL),(7,1472736931796,'Yeelight床头灯',249.00,'触摸式操作 给卧室1600万种颜色','images/goods/20170226/1471799887971.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','Yeelight床头灯','官网正品智能灯推荐，Yeelight床头灯最新价格249元，有多种颜色可选，另有Yeelight床头灯详细介绍及图片，还有用户评价，售前咨询等。',NULL),(8,1473318741286,'Yeelight LED智能灯泡',99.00,'亮度自由调节 WIFI远程操作','images/goods/20170226/1471798581451.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','Yeelight LED智能灯泡','Yeelight LED 智能灯泡,亮度自由调节 WIFI远程操作',NULL),(9,1473685327798,'测试商品名称1',166.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称1','测试商品页面描述,测试商品页面描述',''),(10,1474910562755,'测试商品名称2',223.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称2','测试商品页面描述,测试商品页面描述',''),(11,1475353900453,'测试商品名称3',166.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称3','测试商品页面描述,测试商品页面描述',''),(12,1475353918562,'测试商品名称4',124.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称4','测试商品页面描述,测试商品页面描述',''),(13,1475354006972,'测试商品名称5',249.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称5','测试商品页面描述,测试商品页面描述',''),(14,1475407186147,'测试商品名称6',219.00,'测试描述，测试商品描述，测试商品描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称6','测试商品页面描述,测试商品页面描述',''),(15,1475947762038,'测试商品名称7',2366.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称7','测试商品页面描述,测试商品页面描述',''),(16,1475996329018,'测试商品名称8',2499.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称8','测试商品页面描述,测试商品页面描述',''),(17,1477472951669,'测试商品名称9',2188.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称9','测试商品页面描述,测试商品页面描述',''),(18,1478099883634,'测试商品名称10',249.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称10','测试商品页面描述,测试商品页面描述',''),(19,1478522533460,'测试商品名称11',1300.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称11','测试商品页面描述,测试商品页面描述',''),(20,1478527872182,'测试商品名称12',179.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称12','测试商品页面描述,测试商品页面描述',''),(21,1478680540669,'测试商品名称13',6429.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称13','测试商品页面描述,测试商品页面描述',''),(22,1478682438293,'测试商品名称14',2416.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称14','测试商品页面描述,测试商品页面描述',''),(23,1478682709405,'测试商品名称15',219.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称15','测试商品页面描述,测试商品页面描述',''),(24,1478682831935,'测试商品名称16',295.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称16','测试商品页面描述,测试商品页面描述',''),(25,1478682893916,'测试商品名称17',2164.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称17','测试商品页面描述,测试商品页面描述',''),(26,1478683391099,'测试商品名称18',146.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称18','测试商品页面描述,测试商品页面描述',''),(27,1478683407372,'测试商品名称19',26.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称19','测试商品页面描述,测试商品页面描述',''),(28,1478683468241,'测试商品名称20',4974.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称20','测试商品页面描述,测试商品页面描述',''),(29,1478683468246,'测试商品名称21',265.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称21','测试商品页面描述,测试商品页面描述',''),(30,1478683468279,'测试商品名称22',259.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称22','测试商品页面描述,测试商品页面描述',''),(31,1478689468277,'测试商品名称23',789.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称23','测试商品页面描述,测试商品页面描述',''),(32,1478689468979,'测试商品名称24',456.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称24','测试商品页面描述,测试商品页面描述',''),(33,1478689448279,'测试商品名称25',7845.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称25','测试商品页面描述,测试商品页面描述',''),(34,1478689468679,'测试商品名称26',1548.00,'测试描述，测试商品描述','images/goods/20170226/1471797894441.jpg','2017-02-25 21:44:43','2017-02-25 21:44:48','测试商品名称26','测试商品页面描述,测试商品页面描述','');
/*!40000 ALTER TABLE `os_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product_category`
--

DROP TABLE IF EXISTS `os_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product_category` (
  `product_category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`product_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='商品分类关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product_category`
--

LOCK TABLES `os_product_category` WRITE;
/*!40000 ALTER TABLE `os_product_category` DISABLE KEYS */;
INSERT INTO `os_product_category` VALUES (1,1,33,'2017-02-26 13:52:17'),(2,2,33,'2017-02-26 13:52:17'),(3,3,12,'2017-02-27 01:51:36'),(4,4,10,'2017-02-26 13:52:17'),(5,5,10,'2017-02-26 13:52:17'),(6,6,11,'2017-02-26 13:52:17'),(7,7,11,'2017-02-26 13:52:17'),(8,8,11,'2017-02-26 13:52:17'),(9,9,12,'2017-02-26 13:52:17'),(10,10,13,'2017-02-26 13:52:17'),(11,11,13,'2017-02-26 13:52:17'),(12,12,15,'2017-02-26 13:52:17'),(13,13,15,'2017-02-26 13:52:17'),(14,14,16,'2017-02-26 13:52:17'),(15,15,13,'2017-02-26 13:52:17'),(16,16,18,'2017-02-26 13:52:17'),(17,17,19,'2017-02-26 13:52:17'),(18,18,20,'2017-02-26 13:52:17'),(19,19,21,'2017-02-26 13:52:17'),(20,20,22,'2017-02-26 13:52:17'),(21,21,23,'2017-02-26 13:52:17'),(22,22,24,'2017-02-26 13:52:17'),(23,23,25,'2017-02-26 13:52:17'),(24,24,26,'2017-02-26 13:52:17'),(25,25,26,'2017-02-26 13:52:17'),(26,26,28,'2017-02-26 13:52:17'),(27,27,29,'2017-02-26 13:52:17'),(28,28,30,'2017-02-26 13:52:17'),(29,29,30,'2017-02-26 13:52:17'),(30,30,30,'2017-02-26 13:52:17'),(31,31,31,'2017-02-26 13:52:17');
/*!40000 ALTER TABLE `os_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product_detail`
--

DROP TABLE IF EXISTS `os_product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product_detail` (
  `product_detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品描述ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `description` text COMMENT '商品描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`product_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品描述表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product_detail`
--

LOCK TABLES `os_product_detail` WRITE;
/*!40000 ALTER TABLE `os_product_detail` DISABLE KEYS */;
INSERT INTO `os_product_detail` VALUES (1,1,'<p><img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_01.jpg\" src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_01.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_03.jpg\" src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_03.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_05.jpg\" src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_05.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_07.jpg\" src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_07.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_09.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_11.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_13.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_15.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_17.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_19.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_21.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_23.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_25.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_27.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_29.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_31.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_33.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_35.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_37.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_39.jpg\"> <img alt=\"\" data-src=\"//c1.mifile.cn/f/i/g/2015/cn-index/U1xingzhen_41.jpg\"></p>','2017-04-14 02:16:57','2017-04-14 02:17:05');
/*!40000 ALTER TABLE `os_product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product_image`
--

DROP TABLE IF EXISTS `os_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product_image` (
  `pic_img_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品图片ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `sort` tinyint(2) DEFAULT NULL COMMENT '排序',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态：1.显示；0.隐藏',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`pic_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product_image`
--

LOCK TABLES `os_product_image` WRITE;
/*!40000 ALTER TABLE `os_product_image` DISABLE KEYS */;
INSERT INTO `os_product_image` VALUES (1,1,'images/goods/20170304/1471797894441.jpg',1,1,'2017-03-04 18:30:12'),(2,1,'images/goods/20170304/1471798318820.jpg',2,1,'2017-03-04 18:30:12'),(3,1,'images/goods/20170304/1471798364441.jpg',3,1,'2017-03-04 18:30:12'),(4,1,'images/goods/20170304/1471798581451.png',4,1,'2017-03-04 18:30:12'),(5,1,'images/goods/20170304/14717983642141.jpg',5,1,'2017-03-04 18:30:12'),(6,1,'images/goods/20170304/14717983642141.jpg',6,1,'2017-03-04 18:30:12');
/*!40000 ALTER TABLE `os_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product_parameter`
--

DROP TABLE IF EXISTS `os_product_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product_parameter` (
  `product_parameter_id` bigint(20) NOT NULL COMMENT '参数ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `name` varchar(64) DEFAULT NULL COMMENT '参数名',
  `value` varchar(64) DEFAULT NULL COMMENT '参数值',
  `sort` int(9) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`product_parameter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product_parameter`
--

LOCK TABLES `os_product_parameter` WRITE;
/*!40000 ALTER TABLE `os_product_parameter` DISABLE KEYS */;
INSERT INTO `os_product_parameter` VALUES (1,1,'处理器','骁龙820',1,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(2,1,'电池容量','3000mAh',2,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(3,1,'主屏尺寸','5.15英寸',3,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(4,1,'主屏分辨率','1920x1080像素',4,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(5,1,'后置摄像头','1600万像素',5,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(6,1,'前置摄像头','400万像素',6,'2017-03-04 18:55:19','2017-03-04 18:55:29'),(7,1,'内存','3GB',7,'2017-03-04 18:55:19','2017-03-04 18:55:29');
/*!40000 ALTER TABLE `os_product_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_product_specification`
--

DROP TABLE IF EXISTS `os_product_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_product_specification` (
  `product_spec_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品规格ID',
  `product_spec_number` bigint(20) unsigned DEFAULT NULL COMMENT '商品规格编号',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `spec` varchar(64) DEFAULT NULL COMMENT '规格：规格ID，以“,”相隔',
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `sales_volume` int(11) DEFAULT '0' COMMENT '销售量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `default_status` tinyint(2) DEFAULT '0' COMMENT '是否默认状态：0,不默认；1,默认',
  `status` tinyint(2) DEFAULT '0' COMMENT '商品状态：0,新增；1,上架；2,下架',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`product_spec_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='商品规格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_product_specification`
--

LOCK TABLES `os_product_specification` WRITE;
/*!40000 ALTER TABLE `os_product_specification` DISABLE KEYS */;
INSERT INTO `os_product_specification` VALUES (1,14725812207481,1,'1,3',40,10,1599.00,1600,1,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(2,14725812207482,1,'1,4',80,20,1699.00,1700,0,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(3,14725812207483,1,'1,5',100,30,1799.00,1800,0,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(4,14725812207484,1,'2,3',45,45,1599.00,1600,0,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(5,14725812207485,1,'2,4',12,45,1699.00,1700,0,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(6,14725812207486,1,'2,5',72,75,1799.00,1800,0,0,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(7,1472581245880,2,'',72,75,1799.00,1800,1,1,'2017-03-05 21:51:01','2017-03-05 21:51:25'),(8,1472581300305,3,NULL,3,3,1099.00,1099,1,1,NULL,NULL),(9,1472583774201,4,NULL,4,4,149.00,149,1,1,NULL,NULL),(10,1472583831117,5,NULL,5,5,229.00,229,1,1,NULL,NULL),(11,1472628630086,6,NULL,6,6,169.00,169,1,1,NULL,NULL),(12,1472736931796,7,NULL,7,7,249.00,249,1,1,NULL,NULL),(13,1473318741286,8,NULL,8,8,99.00,99,1,1,NULL,NULL),(14,1473685327798,9,NULL,9,9,166.00,166,1,1,NULL,NULL),(15,1474910562755,10,NULL,10,10,223.00,223,1,1,NULL,NULL),(16,1475353900453,11,NULL,11,11,166.00,166,1,1,NULL,NULL),(17,1475353918562,12,NULL,12,12,124.00,124,1,1,NULL,NULL),(18,1475354006972,13,NULL,13,13,249.00,249,1,1,NULL,NULL),(19,1475407186147,14,NULL,14,14,219.00,219,1,1,NULL,NULL),(20,1475947762038,15,NULL,15,15,2366.00,2366,1,1,NULL,NULL),(21,1475996329018,16,NULL,16,16,2499.00,2499,1,1,NULL,NULL),(22,1477472951669,17,NULL,17,17,2188.00,2188,1,1,NULL,NULL),(23,1478099883634,18,NULL,18,18,249.00,249,1,1,NULL,NULL),(24,1478522533460,19,NULL,19,19,1300.00,1300,1,1,NULL,NULL),(25,1478527872182,20,NULL,20,20,179.00,179,1,1,NULL,NULL),(26,1478680540669,21,NULL,21,21,6429.00,6429,1,1,NULL,NULL),(27,1478682438293,22,NULL,22,22,2416.00,2416,1,1,NULL,NULL),(28,1478682709405,23,NULL,23,23,219.00,219,1,1,NULL,NULL),(29,1478682831935,24,NULL,24,24,295.00,295,1,1,NULL,NULL),(30,1478682893916,25,NULL,25,25,2164.00,2164,1,1,NULL,NULL),(31,1478683391099,26,NULL,26,26,146.00,146,1,1,NULL,NULL),(32,1478683407372,27,NULL,27,27,26.00,26,1,1,NULL,NULL),(33,1478683468241,28,NULL,28,28,4974.00,4974,1,1,NULL,NULL),(34,1478683468246,29,NULL,29,29,265.00,265,1,1,NULL,NULL),(35,1478683468279,30,NULL,30,30,259.00,259,1,1,NULL,NULL),(36,1478689468277,31,NULL,31,31,789.00,789,1,1,NULL,NULL),(37,1478689468979,32,NULL,32,32,456.00,456,1,1,NULL,NULL),(38,1478689448279,33,NULL,33,33,7845.00,7845,1,1,NULL,NULL),(39,1478689468679,34,NULL,34,34,1548.00,1548,1,1,NULL,NULL);
/*!40000 ALTER TABLE `os_product_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_specification`
--

DROP TABLE IF EXISTS `os_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_specification` (
  `specification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格ID',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类ID',
  `name` varchar(64) DEFAULT NULL COMMENT '规格名称',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态：1.显示；0.隐藏',
  `sort` int(9) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='规格表\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_specification`
--

LOCK TABLES `os_specification` WRITE;
/*!40000 ALTER TABLE `os_specification` DISABLE KEYS */;
INSERT INTO `os_specification` VALUES (1,2,'颜色',1,1,'2017-03-05 17:04:45','2017-03-05 17:04:50'),(2,2,'内存容量',1,2,'2017-03-05 17:07:17','2017-03-05 17:07:22');
/*!40000 ALTER TABLE `os_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_specification_attribute`
--

DROP TABLE IF EXISTS `os_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_specification_attribute` (
  `spec_attr_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格属性ID',
  `specification_id` bigint(20) DEFAULT NULL COMMENT '规格ID',
  `name` varchar(64) DEFAULT NULL COMMENT '规格属性名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`spec_attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='规格属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_specification_attribute`
--

LOCK TABLES `os_specification_attribute` WRITE;
/*!40000 ALTER TABLE `os_specification_attribute` DISABLE KEYS */;
INSERT INTO `os_specification_attribute` VALUES (1,1,'白色','2017-03-05 17:07:56'),(2,1,'金色','2017-03-05 17:08:09'),(3,2,'16G','2017-03-05 17:07:56'),(4,2,'32G','2017-03-05 17:08:09'),(5,2,'64G','2017-03-05 17:09:50');
/*!40000 ALTER TABLE `os_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_user`
--

DROP TABLE IF EXISTS `os_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_number` bigint(20) unsigned DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(30) DEFAULT NULL COMMENT '昵称',
  `login_password` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(1) DEFAULT '0' COMMENT '性别 0=保密/1=男/2=女',
  `age` tinyint(4) DEFAULT '0' COMMENT '年龄',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 0=冻结/1=正常',
  `telephone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `regeist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_user`
--

LOCK TABLES `os_user` WRITE;
/*!40000 ALTER TABLE `os_user` DISABLE KEYS */;
INSERT INTO `os_user` VALUES (1,14875975007231277,'王勇','123456','王勇',0,0,'default/avatar/avatar_8.jpg',1,'13041100750','2017-02-21 15:19:07','2017-02-24 01:53:02'),(8,148777295260796,'杜聚斌','123456','杜聚斌',0,0,'default/avatar/avatar_4.jpg',1,'13041100751','2017-02-22 22:15:53',NULL),(12,148777481346536,'吴士忠','123456','吴士忠',0,0,'default/avatar/avatar_5.jpg',1,'13041100752','2017-02-22 22:46:53',NULL),(28,149165425386333,'张习羽','123456','张习羽',0,0,'default/avatar/avatar_7.jpg',1,'13041100753','2017-04-08 12:24:14','2017-04-18 08:05:39'),(29,149165425386388,'付晓峰','123456','付晓峰',0,0,NULL,1,'13041100754',NULL,NULL),(30,15057099199554958,'bjpowernode','a123456',NULL,0,0,NULL,1,'15188888888',NULL,NULL);
/*!40000 ALTER TABLE `os_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18 13:36:29
