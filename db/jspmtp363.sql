-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmtp363
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmtp363/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmtp363/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmtp363/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-02-28 15:34:55','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-02-28 15:34:55','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-02-28 15:34:55','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-02-28 15:34:55','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-02-28 15:34:55','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-02-28 15:34:55','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (71,'2021-02-28 15:34:55',1,'用户名1','留言内容1','回复内容1'),(72,'2021-02-28 15:34:55',2,'用户名2','留言内容2','回复内容2'),(73,'2021-02-28 15:34:55',3,'用户名3','留言内容3','回复内容3'),(74,'2021-02-28 15:34:55',4,'用户名4','留言内容4','回复内容4'),(75,'2021-02-28 15:34:55',5,'用户名5','留言内容5','回复内容5'),(76,'2021-02-28 15:34:55',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuzhixinxi`
--

DROP TABLE IF EXISTS `qiuzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `gongzidaiyu` varchar(200) DEFAULT NULL COMMENT '工资待遇',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `gongzuodizhi` varchar(200) DEFAULT NULL COMMENT '工作地址',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614528417372 DEFAULT CHARSET=utf8 COMMENT='求职信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuzhixinxi`
--

LOCK TABLES `qiuzhixinxi` WRITE;
/*!40000 ALTER TABLE `qiuzhixinxi` DISABLE KEYS */;
INSERT INTO `qiuzhixinxi` VALUES (51,'2021-02-28 15:34:54','岗位1','工资待遇1','学历要求1','工作地址1','企业号1','企业名称1','','学生号1','学生姓名1','2021-02-28','是',''),(52,'2021-02-28 15:34:54','岗位2','工资待遇2','学历要求2','工作地址2','企业号2','企业名称2','','学生号2','学生姓名2','2021-02-28','是',''),(53,'2021-02-28 15:34:54','岗位3','工资待遇3','学历要求3','工作地址3','企业号3','企业名称3','','学生号3','学生姓名3','2021-02-28','是',''),(54,'2021-02-28 15:34:54','岗位4','工资待遇4','学历要求4','工作地址4','企业号4','企业名称4','','学生号4','学生姓名4','2021-02-28','是',''),(55,'2021-02-28 15:34:54','岗位5','工资待遇5','学历要求5','工作地址5','企业号5','企业名称5','','学生号5','学生姓名5','2021-02-28','是',''),(56,'2021-02-28 15:34:54','岗位6','工资待遇6','学历要求6','工作地址6','企业号6','企业名称6','','学生号6','学生姓名6','2021-02-28','是',''),(1614526755932,'2021-02-28 15:39:15','岗位2','工资待遇2','学历要求2','工作地址2','企业号2','企业名称2','','学生1','学生姓名1','2021-03-01','否',NULL),(1614528417371,'2021-02-28 16:06:56','前台','2500-3500','高中以上','商城','101','智趣乐园','','学生1','学生姓名1','2021-03-03','是','请3月5号上午10点来面试');
/*!40000 ALTER TABLE `qiuzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyehao` varchar(200) NOT NULL COMMENT '企业号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyehao` (`qiyehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614527958559 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2021-02-28 15:34:54','企业1','123456','企业名称1','http://localhost:8080/jspmtp363/upload/qiye_tupian1.jpg','负责人1','13823888881','地址1'),(22,'2021-02-28 15:34:54','企业2','123456','企业名称2','http://localhost:8080/jspmtp363/upload/qiye_tupian2.jpg','负责人2','13823888882','地址2'),(23,'2021-02-28 15:34:54','企业3','123456','企业名称3','http://localhost:8080/jspmtp363/upload/qiye_tupian3.jpg','负责人3','13823888883','地址3'),(24,'2021-02-28 15:34:54','企业4','123456','企业名称4','http://localhost:8080/jspmtp363/upload/qiye_tupian4.jpg','负责人4','13823888884','地址4'),(25,'2021-02-28 15:34:54','企业5','123456','企业名称5','http://localhost:8080/jspmtp363/upload/qiye_tupian5.jpg','负责人5','13823888885','地址5'),(26,'2021-02-28 15:34:54','企业6','123456','企业名称6','http://localhost:8080/jspmtp363/upload/qiye_tupian6.jpg','负责人6','13823888886','地址6'),(1614527958558,'2021-02-28 15:59:18','101','123456','智趣乐园',NULL,'王先生','18850667789','');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiyexinxi`
--

DROP TABLE IF EXISTS `qiyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongsijianjie` longtext COMMENT '公司简介',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='企业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyexinxi`
--

LOCK TABLES `qiyexinxi` WRITE;
/*!40000 ALTER TABLE `qiyexinxi` DISABLE KEYS */;
INSERT INTO `qiyexinxi` VALUES (31,'2021-02-28 15:34:54','企业名称1','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian1.jpg','公司简介1','地址1','负责人1','13823888881'),(32,'2021-02-28 15:34:54','企业名称2','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian2.jpg','公司简介2','地址2','负责人2','13823888882'),(33,'2021-02-28 15:34:54','企业名称3','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian3.jpg','公司简介3','地址3','负责人3','13823888883'),(34,'2021-02-28 15:34:54','企业名称4','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian4.jpg','公司简介4','地址4','负责人4','13823888884'),(35,'2021-02-28 15:34:54','企业名称5','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian5.jpg','公司简介5','地址5','负责人5','13823888885'),(36,'2021-02-28 15:34:54','企业名称6','http://localhost:8080/jspmtp363/upload/qiyexinxi_tupian6.jpg','公司简介6','地址6','负责人6','13823888886');
/*!40000 ALTER TABLE `qiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'学生1','xuesheng','学生','guc6zy3eh59h8tz8s2d47073ew1049qe','2021-02-28 15:38:04','2021-02-28 17:09:41'),(2,22,'企业2','qiye','企业','xuvfysepr8husmb24b3ekd126uxhkint','2021-02-28 15:39:58','2021-02-28 16:39:59'),(3,1,'abo','users','管理员','ribasjfc3vdnj3h4a0v3ib14uzqaib18','2021-02-28 15:43:53','2021-02-28 17:09:57'),(4,1614527958558,'101','qiye','企业','g2kwo7cei1ak9a11me1776b2sbayspoo','2021-02-28 16:07:23','2021-02-28 17:07:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-28 15:34:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-28 15:34:54','学生1','123456','学生姓名1','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang1.jpg','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-02-28 15:34:54','学生2','123456','学生姓名2','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang2.jpg','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-02-28 15:34:54','学生3','123456','学生姓名3','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang3.jpg','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-02-28 15:34:54','学生4','123456','学生姓名4','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang4.jpg','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-02-28 15:34:54','学生5','123456','学生姓名5','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang5.jpg','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-02-28 15:34:54','学生6','123456','学生姓名6','http://localhost:8080/jspmtp363/upload/xuesheng_touxiang6.jpg','男','13823888886','773890006@qq.com','440300199606060006');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongzidaiyu` varchar(200) DEFAULT NULL COMMENT '工资待遇',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `gongzuodizhi` varchar(200) DEFAULT NULL COMMENT '工作地址',
  `gangweizhize` longtext COMMENT '岗位职责',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614528357396 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (41,'2021-02-28 15:34:54','岗位1','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian1.jpg','工资待遇1',1,'学历要求1','工作地址1','岗位职责1','负责人1','13823888881','企业号1','企业名称1'),(42,'2021-02-28 15:34:54','岗位2','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian2.jpg','工资待遇2',2,'学历要求2','工作地址2','岗位职责2','负责人2','13823888882','企业号2','企业名称2'),(43,'2021-02-28 15:34:54','岗位3','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian3.jpg','工资待遇3',3,'学历要求3','工作地址3','岗位职责3','负责人3','13823888883','企业号3','企业名称3'),(44,'2021-02-28 15:34:54','岗位4','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian4.jpg','工资待遇4',4,'学历要求4','工作地址4','岗位职责4','负责人4','13823888884','企业号4','企业名称4'),(45,'2021-02-28 15:34:54','岗位5','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian5.jpg','工资待遇5',5,'学历要求5','工作地址5','岗位职责5','负责人5','13823888885','企业号5','企业名称5'),(46,'2021-02-28 15:34:54','岗位6','http://localhost:8080/jspmtp363/upload/zhaopinxinxi_tupian6.jpg','工资待遇6',6,'学历要求6','工作地址6','岗位职责6','负责人6','13823888886','企业号6','企业名称6'),(1614528357395,'2021-02-28 16:05:57','前台','http://localhost:8080/jspmtp363/upload/1614528261900.jpg','2500-3500',2,'高中以上','商城','','李先生','13823888881','101','智趣乐园');
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02 17:05:35
