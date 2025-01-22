-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm28zz6
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
-- Current Database: `ssm28zz6`
--

/*!40000 DROP DATABASE IF EXISTS `ssm28zz6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm28zz6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm28zz6`;

--
-- Table structure for table `changdileibie`
--

DROP TABLE IF EXISTS `changdileibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdileibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdileibie` varchar(200) DEFAULT NULL COMMENT '场地类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='场地类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdileibie`
--

LOCK TABLES `changdileibie` WRITE;
/*!40000 ALTER TABLE `changdileibie` DISABLE KEYS */;
INSERT INTO `changdileibie` VALUES (21,'2022-03-28 05:58:27','场地类别1'),(22,'2022-03-28 05:58:27','场地类别2'),(23,'2022-03-28 05:58:27','场地类别3'),(24,'2022-03-28 05:58:27','场地类别4'),(25,'2022-03-28 05:58:27','场地类别5'),(26,'2022-03-28 05:58:27','场地类别6');
/*!40000 ALTER TABLE `changdileibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdixinxi`
--

DROP TABLE IF EXISTS `changdixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileibie` varchar(200) DEFAULT NULL COMMENT '场地类别',
  `zulinjiage` int(11) NOT NULL COMMENT '租赁价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdidaxiao` varchar(200) NOT NULL COMMENT '场地大小',
  `rongnarenshu` int(11) NOT NULL COMMENT '容纳人数',
  `changdixiangqing` longtext COMMENT '场地详情',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='场地信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdixinxi`
--

LOCK TABLES `changdixinxi` WRITE;
/*!40000 ALTER TABLE `changdixinxi` DISABLE KEYS */;
INSERT INTO `changdixinxi` VALUES (31,'2022-03-28 05:58:27','场地名称1','场地类别1',1,'13823888881','大',1,'场地详情1','upload/changdixinxi_changditupian1.jpg'),(32,'2022-03-28 05:58:27','场地名称2','场地类别2',2,'13823888882','大',2,'场地详情2','upload/changdixinxi_changditupian2.jpg'),(33,'2022-03-28 05:58:27','场地名称3','场地类别3',3,'13823888883','大',3,'场地详情3','upload/changdixinxi_changditupian3.jpg'),(34,'2022-03-28 05:58:27','场地名称4','场地类别4',4,'13823888884','大',4,'场地详情4','upload/changdixinxi_changditupian4.jpg'),(35,'2022-03-28 05:58:27','场地名称5','场地类别5',5,'13823888885','大',5,'场地详情5','upload/changdixinxi_changditupian5.jpg'),(36,'2022-03-28 05:58:27','场地名称6','场地类别6',6,'13823888886','大',6,'场地详情6','upload/changdixinxi_changditupian6.jpg');
/*!40000 ALTER TABLE `changdixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdiyuyue`
--

DROP TABLE IF EXISTS `changdiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileibie` varchar(200) DEFAULT NULL COMMENT '场地类别',
  `zulinjiage` varchar(200) DEFAULT NULL COMMENT '租赁价格',
  `changdidaxiao` varchar(200) DEFAULT NULL COMMENT '场地大小',
  `rongnarenshu` varchar(200) DEFAULT NULL COMMENT '容纳人数',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='场地预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdiyuyue`
--

LOCK TABLES `changdiyuyue` WRITE;
/*!40000 ALTER TABLE `changdiyuyue` DISABLE KEYS */;
INSERT INTO `changdiyuyue` VALUES (61,'2022-03-28 05:58:27','1111111111','场地名称1','场地类别1','租赁价格1','场地大小1','容纳人数1','用户账号1','用户姓名1','用户手机1','2022-03-28 13:58:27','备注1','2022-03-28 13:58:27','是','','未支付'),(62,'2022-03-28 05:58:27','2222222222','场地名称2','场地类别2','租赁价格2','场地大小2','容纳人数2','用户账号2','用户姓名2','用户手机2','2022-03-28 13:58:27','备注2','2022-03-28 13:58:27','是','','未支付'),(63,'2022-03-28 05:58:27','3333333333','场地名称3','场地类别3','租赁价格3','场地大小3','容纳人数3','用户账号3','用户姓名3','用户手机3','2022-03-28 13:58:27','备注3','2022-03-28 13:58:27','是','','未支付'),(64,'2022-03-28 05:58:27','4444444444','场地名称4','场地类别4','租赁价格4','场地大小4','容纳人数4','用户账号4','用户姓名4','用户手机4','2022-03-28 13:58:27','备注4','2022-03-28 13:58:27','是','','未支付'),(65,'2022-03-28 05:58:27','5555555555','场地名称5','场地类别5','租赁价格5','场地大小5','容纳人数5','用户账号5','用户姓名5','用户手机5','2022-03-28 13:58:27','备注5','2022-03-28 13:58:27','是','','未支付'),(66,'2022-03-28 05:58:27','6666666666','场地名称6','场地类别6','租赁价格6','场地大小6','容纳人数6','用户账号6','用户姓名6','用户手机6','2022-03-28 13:58:27','备注6','2022-03-28 13:58:27','是','','未支付');
/*!40000 ALTER TABLE `changdiyuyue` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (71,'2022-03-28 05:58:27','标题1','内容1','2022-03-28','发布人1'),(72,'2022-03-28 05:58:27','标题2','内容2','2022-03-28','发布人2'),(73,'2022-03-28 05:58:27','标题3','内容3','2022-03-28','发布人3'),(74,'2022-03-28 05:58:27','标题4','内容4','2022-03-28','发布人4'),(75,'2022-03-28 05:58:28','标题5','内容5','2022-03-28','发布人5'),(76,'2022-03-28 05:58:28','标题6','内容6','2022-03-28','发布人6');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-28 05:58:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuleixing`
--

DROP TABLE IF EXISTS `xiangmuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='项目类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuleixing`
--

LOCK TABLES `xiangmuleixing` WRITE;
/*!40000 ALTER TABLE `xiangmuleixing` DISABLE KEYS */;
INSERT INTO `xiangmuleixing` VALUES (51,'2022-03-28 05:58:27','项目类型1'),(52,'2022-03-28 05:58:27','项目类型2'),(53,'2022-03-28 05:58:27','项目类型3'),(54,'2022-03-28 05:58:27','项目类型4'),(55,'2022-03-28 05:58:27','项目类型5'),(56,'2022-03-28 05:58:27','项目类型6');
/*!40000 ALTER TABLE `xiangmuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-28 05:58:27','用户账号1','123456','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881'),(12,'2022-03-28 05:58:27','用户账号2','123456','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882'),(13,'2022-03-28 05:58:27','用户账号3','123456','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883'),(14,'2022-03-28 05:58:27','用户账号4','123456','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884'),(15,'2022-03-28 05:58:27','用户账号5','123456','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885'),(16,'2022-03-28 05:58:27','用户账号6','123456','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongxiangmu`
--

DROP TABLE IF EXISTS `yundongxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongmingcheng` varchar(200) NOT NULL COMMENT '运动名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `xiangmuneirong` longtext COMMENT '项目内容',
  `youxiaoshijian` date DEFAULT NULL COMMENT '有效时间',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='运动项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongxiangmu`
--

LOCK TABLES `yundongxiangmu` WRITE;
/*!40000 ALTER TABLE `yundongxiangmu` DISABLE KEYS */;
INSERT INTO `yundongxiangmu` VALUES (41,'2022-03-28 05:58:27','运动名称1','项目类型1','场地名称1','发布人1','项目内容1','2022-03-28','2022-03-28'),(42,'2022-03-28 05:58:27','运动名称2','项目类型2','场地名称2','发布人2','项目内容2','2022-03-28','2022-03-28'),(43,'2022-03-28 05:58:27','运动名称3','项目类型3','场地名称3','发布人3','项目内容3','2022-03-28','2022-03-28'),(44,'2022-03-28 05:58:27','运动名称4','项目类型4','场地名称4','发布人4','项目内容4','2022-03-28','2022-03-28'),(45,'2022-03-28 05:58:27','运动名称5','项目类型5','场地名称5','发布人5','项目内容5','2022-03-28','2022-03-28'),(46,'2022-03-28 05:58:27','运动名称6','项目类型6','场地名称6','发布人6','项目内容6','2022-03-28','2022-03-28');
/*!40000 ALTER TABLE `yundongxiangmu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 10:37:05
