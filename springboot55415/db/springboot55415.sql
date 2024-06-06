-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot55415
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
-- Current Database: `springboot55415`
--

/*!40000 DROP DATABASE IF EXISTS `springboot55415`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot55415` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot55415`;

--
-- Table structure for table `baomingshenqing`
--

DROP TABLE IF EXISTS `baomingshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `biyenianfen` varchar(200) DEFAULT NULL COMMENT '毕业年份',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409419898 DEFAULT CHARSET=utf8 COMMENT='报名申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingshenqing`
--

LOCK TABLES `baomingshenqing` WRITE;
/*!40000 ALTER TABLE `baomingshenqing` DISABLE KEYS */;
INSERT INTO `baomingshenqing` VALUES (71,'2022-05-13 02:29:01','1111111111','活动名称1','活动类型1','2022-05-13','用户账号1','用户姓名1','毕业年份1','是',''),(72,'2022-05-13 02:29:01','2222222222','活动名称2','活动类型2','2022-05-13','用户账号2','用户姓名2','毕业年份2','是',''),(73,'2022-05-13 02:29:01','3333333333','活动名称3','活动类型3','2022-05-13','用户账号3','用户姓名3','毕业年份3','是',''),(74,'2022-05-13 02:29:01','4444444444','活动名称4','活动类型4','2022-05-13','用户账号4','用户姓名4','毕业年份4','是',''),(75,'2022-05-13 02:29:01','5555555555','活动名称5','活动类型5','2022-05-13','用户账号5','用户姓名5','毕业年份5','是',''),(76,'2022-05-13 02:29:01','6666666666','活动名称6','活动类型6','2022-05-13','用户账号6','用户姓名6','毕业年份6','是',''),(1652409419897,'2022-05-13 02:36:59','202251310352799064690','运动会','运动会','2022-05-13','111','111','2010','是','管理员审核用户报名信息，报名成功');
/*!40000 ALTER TABLE `baomingshenqing` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','upload/1652409339128.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=1652409506614 DEFAULT CHARSET=utf8 COMMENT='论坛中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (141,'2022-05-13 02:29:02','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(142,'2022-05-13 02:29:02','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(143,'2022-05-13 02:29:02','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(144,'2022-05-13 02:29:02','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(145,'2022-05-13 02:29:02','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(146,'2022-05-13 02:29:02','帖子标题6','帖子内容6',0,6,'用户名6','开放'),(1652409463249,'2022-05-13 02:37:42','用户可以发布帖子','<p>请输入内容<span style=\"color: #f73131; font-family: Arial, sans-serif; font-size: 13px; background-color: #ffffff;\">校友会</span><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 13px; background-color: #ffffff;\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>',0,1652409125552,'111','开放'),(1652409506613,'2022-05-13 02:38:26',NULL,'用户评论校友已发布的帖子，在在这里进行学术之类的交流',143,1652409125552,'111',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangwei`
--

DROP TABLE IF EXISTS `gangwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409257630 DEFAULT CHARSET=utf8 COMMENT='岗位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangwei`
--

LOCK TABLES `gangwei` WRITE;
/*!40000 ALTER TABLE `gangwei` DISABLE KEYS */;
INSERT INTO `gangwei` VALUES (81,'2022-05-13 02:29:01','岗位1'),(82,'2022-05-13 02:29:01','岗位2'),(83,'2022-05-13 02:29:01','岗位3'),(84,'2022-05-13 02:29:01','岗位4'),(85,'2022-05-13 02:29:01','岗位5'),(86,'2022-05-13 02:29:01','岗位6'),(1652409257629,'2022-05-13 02:34:16','客服');
/*!40000 ALTER TABLE `gangwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongleixing`
--

DROP TABLE IF EXISTS `huodongleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409218679 DEFAULT CHARSET=utf8 COMMENT='活动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongleixing`
--

LOCK TABLES `huodongleixing` WRITE;
/*!40000 ALTER TABLE `huodongleixing` DISABLE KEYS */;
INSERT INTO `huodongleixing` VALUES (51,'2022-05-13 02:29:01','活动类型1'),(52,'2022-05-13 02:29:01','活动类型2'),(53,'2022-05-13 02:29:01','活动类型3'),(54,'2022-05-13 02:29:01','活动类型4'),(55,'2022-05-13 02:29:01','活动类型5'),(56,'2022-05-13 02:29:01','活动类型6'),(1652409218678,'2022-05-13 02:33:38','运动会');
/*!40000 ALTER TABLE `huodongleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaruxiaoyouhui`
--

DROP TABLE IF EXISTS `jiaruxiaoyouhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaruxiaoyouhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiarubianhao` varchar(200) DEFAULT NULL COMMENT '加入编号',
  `xiaoyouhuimingcheng` varchar(200) DEFAULT NULL COMMENT '校友会名称',
  `jiarushijian` date DEFAULT NULL COMMENT '加入时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `biyenianfen` varchar(200) DEFAULT NULL COMMENT '毕业年份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiarubianhao` (`jiarubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409410600 DEFAULT CHARSET=utf8 COMMENT='加入校友会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaruxiaoyouhui`
--

LOCK TABLES `jiaruxiaoyouhui` WRITE;
/*!40000 ALTER TABLE `jiaruxiaoyouhui` DISABLE KEYS */;
INSERT INTO `jiaruxiaoyouhui` VALUES (41,'2022-05-13 02:29:01','1111111111','校友会名称1','2022-05-13','用户账号1','用户姓名1','毕业年份1'),(42,'2022-05-13 02:29:01','2222222222','校友会名称2','2022-05-13','用户账号2','用户姓名2','毕业年份2'),(43,'2022-05-13 02:29:01','3333333333','校友会名称3','2022-05-13','用户账号3','用户姓名3','毕业年份3'),(44,'2022-05-13 02:29:01','4444444444','校友会名称4','2022-05-13','用户账号4','用户姓名4','毕业年份4'),(45,'2022-05-13 02:29:01','5555555555','校友会名称5','2022-05-13','用户账号5','用户姓名5','毕业年份5'),(46,'2022-05-13 02:29:01','6666666666','校友会名称6','2022-05-13','用户账号6','用户姓名6','毕业年份6'),(1652409410599,'2022-05-13 02:36:49','202251310351846743466','校友会','2022-05-13','111','111','2010');
/*!40000 ALTER TABLE `jiaruxiaoyouhui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409355431 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (151,'2022-05-13 02:29:02','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(152,'2022-05-13 02:29:02','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(153,'2022-05-13 02:29:02','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(154,'2022-05-13 02:29:02','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(155,'2022-05-13 02:29:02','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(156,'2022-05-13 02:29:02','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1652409355430,'2022-05-13 02:35:55','新闻资讯','校友会秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西','upload/1652409351276.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1652409125552,'111','yonghu','用户','mg8y2ubwan3bkepaow3vj6l0a6zaynx2','2022-05-13 02:32:10','2022-05-13 03:39:39'),(2,1,'abo','users','管理员','e50xkx8u6h0v3apt0gqzg6ykc6d5oqga','2022-05-13 02:32:31','2022-05-13 03:38:54');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-13 02:29:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wodejuanzeng`
--

DROP TABLE IF EXISTS `wodejuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wodejuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbianhao` varchar(200) DEFAULT NULL COMMENT '捐赠编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `niandu` varchar(200) DEFAULT NULL COMMENT '年度',
  `xiangmu` varchar(200) DEFAULT NULL COMMENT '项目',
  `juanzengjine` varchar(200) DEFAULT NULL COMMENT '捐赠金额',
  `juanzengshijian` date DEFAULT NULL COMMENT '捐赠时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `biyenianfen` varchar(200) DEFAULT NULL COMMENT '毕业年份',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `juanzengbianhao` (`juanzengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409436541 DEFAULT CHARSET=utf8 COMMENT='我的捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wodejuanzeng`
--

LOCK TABLES `wodejuanzeng` WRITE;
/*!40000 ALTER TABLE `wodejuanzeng` DISABLE KEYS */;
INSERT INTO `wodejuanzeng` VALUES (121,'2022-05-13 02:29:02','1111111111','标题1','年度1','项目1','500','2022-05-13','用户账号1','用户姓名1','毕业年份1','未支付'),(122,'2022-05-13 02:29:02','2222222222','标题2','年度2','项目2','500','2022-05-13','用户账号2','用户姓名2','毕业年份2','未支付'),(123,'2022-05-13 02:29:02','3333333333','标题3','年度3','项目3','500','2022-05-13','用户账号3','用户姓名3','毕业年份3','未支付'),(124,'2022-05-13 02:29:02','4444444444','标题4','年度4','项目4','500','2022-05-13','用户账号4','用户姓名4','毕业年份4','未支付'),(125,'2022-05-13 02:29:02','5555555555','标题5','年度5','项目5','500','2022-05-13','用户账号5','用户姓名5','毕业年份5','未支付'),(126,'2022-05-13 02:29:02','6666666666','标题6','年度6','项目6','500','2022-05-13','用户账号6','用户姓名6','毕业年份6','未支付'),(1652409436540,'2022-05-13 02:37:15','20225131035428218440','爱心捐赠','2006','爱心捐献','5000','2022-05-13','111','111','2010','已支付');
/*!40000 ALTER TABLE `wodejuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmu`
--

DROP TABLE IF EXISTS `xiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmu` varchar(200) NOT NULL COMMENT '项目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409293174 DEFAULT CHARSET=utf8 COMMENT='项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmu`
--

LOCK TABLES `xiangmu` WRITE;
/*!40000 ALTER TABLE `xiangmu` DISABLE KEYS */;
INSERT INTO `xiangmu` VALUES (101,'2022-05-13 02:29:02','项目1'),(102,'2022-05-13 02:29:02','项目2'),(103,'2022-05-13 02:29:02','项目3'),(104,'2022-05-13 02:29:02','项目4'),(105,'2022-05-13 02:29:02','项目5'),(106,'2022-05-13 02:29:02','项目6'),(1652409293173,'2022-05-13 02:34:53','爱心捐献');
/*!40000 ALTER TABLE `xiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyouhuixinxi`
--

DROP TABLE IF EXISTS `xiaoyouhuixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyouhuixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoyouhuibianhao` varchar(200) DEFAULT NULL COMMENT '校友会编号',
  `xiaoyouhuimingcheng` varchar(200) DEFAULT NULL COMMENT '校友会名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jubanyiyi` longtext COMMENT '举办意义',
  `jubanshijian` datetime DEFAULT NULL COMMENT '举办时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoyouhuibianhao` (`xiaoyouhuibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409208768 DEFAULT CHARSET=utf8 COMMENT='校友会信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyouhuixinxi`
--

LOCK TABLES `xiaoyouhuixinxi` WRITE;
/*!40000 ALTER TABLE `xiaoyouhuixinxi` DISABLE KEYS */;
INSERT INTO `xiaoyouhuixinxi` VALUES (31,'2022-05-13 02:29:01','1111111111','校友会名称1','upload/xiaoyouhuixinxi_tupian1.jpg','举办意义1','2022-05-13 10:29:01','可加入','2022-05-13'),(32,'2022-05-13 02:29:01','2222222222','校友会名称2','upload/xiaoyouhuixinxi_tupian2.jpg','举办意义2','2022-05-13 10:29:01','可加入','2022-05-13'),(33,'2022-05-13 02:29:01','3333333333','校友会名称3','upload/xiaoyouhuixinxi_tupian3.jpg','举办意义3','2022-05-13 10:29:01','可加入','2022-05-13'),(34,'2022-05-13 02:29:01','4444444444','校友会名称4','upload/xiaoyouhuixinxi_tupian4.jpg','举办意义4','2022-05-13 10:29:01','可加入','2022-05-13'),(35,'2022-05-13 02:29:01','5555555555','校友会名称5','upload/xiaoyouhuixinxi_tupian5.jpg','举办意义5','2022-05-13 10:29:01','可加入','2022-05-13'),(36,'2022-05-13 02:29:01','6666666666','校友会名称6','upload/xiaoyouhuixinxi_tupian6.jpg','举办意义6','2022-05-13 10:29:01','可加入','2022-05-13'),(1652409208767,'2022-05-13 02:33:28','1652409098614','校友会','upload/1652409196914.jpg','校友会秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西','2022-05-26 07:00:00','可加入','2022-05-13');
/*!40000 ALTER TABLE `xiaoyouhuixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyouhuodong`
--

DROP TABLE IF EXISTS `xiaoyouhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyouhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huodongshijian` datetime DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409244026 DEFAULT CHARSET=utf8 COMMENT='校友活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyouhuodong`
--

LOCK TABLES `xiaoyouhuodong` WRITE;
/*!40000 ALTER TABLE `xiaoyouhuodong` DISABLE KEYS */;
INSERT INTO `xiaoyouhuodong` VALUES (61,'2022-05-13 02:29:01','1111111111','活动名称1','活动类型1','upload/xiaoyouhuodong_tupian1.jpg','2022-05-13 10:29:01','活动地点1','活动详情1'),(62,'2022-05-13 02:29:01','2222222222','活动名称2','活动类型2','upload/xiaoyouhuodong_tupian2.jpg','2022-05-13 10:29:01','活动地点2','活动详情2'),(63,'2022-05-13 02:29:01','3333333333','活动名称3','活动类型3','upload/xiaoyouhuodong_tupian3.jpg','2022-05-13 10:29:01','活动地点3','活动详情3'),(64,'2022-05-13 02:29:01','4444444444','活动名称4','活动类型4','upload/xiaoyouhuodong_tupian4.jpg','2022-05-13 10:29:01','活动地点4','活动详情4'),(65,'2022-05-13 02:29:01','5555555555','活动名称5','活动类型5','upload/xiaoyouhuodong_tupian5.jpg','2022-05-13 10:29:01','活动地点5','活动详情5'),(66,'2022-05-13 02:29:01','6666666666','活动名称6','活动类型6','upload/xiaoyouhuodong_tupian6.jpg','2022-05-13 10:29:01','活动地点6','活动详情6'),(1652409244025,'2022-05-13 02:34:03','1652409133365','运动会','运动会','upload/1652409231452.jpg','2022-05-17 10:00:00','学校','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>');
/*!40000 ALTER TABLE `xiaoyouhuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyouxiangqin`
--

DROP TABLE IF EXISTS `xiaoyouxiangqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyouxiangqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `shifougoufang` varchar(200) DEFAULT NULL COMMENT '是否购房',
  `duitadeqidai` longtext COMMENT '对他的期待',
  `ziwojieshao` longtext COMMENT '自我介绍',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409389928 DEFAULT CHARSET=utf8 COMMENT='校友相亲';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyouxiangqin`
--

LOCK TABLES `xiaoyouxiangqin` WRITE;
/*!40000 ALTER TABLE `xiaoyouxiangqin` DISABLE KEYS */;
INSERT INTO `xiaoyouxiangqin` VALUES (131,'2022-05-13 02:29:02','标题1','用户账号1','用户姓名1','年龄1','性别1','upload/xiaoyouxiangqin_tupian1.jpg','所在城市1','是','对他的期待1','自我介绍1','2022-05-13'),(132,'2022-05-13 02:29:02','标题2','用户账号2','用户姓名2','年龄2','性别2','upload/xiaoyouxiangqin_tupian2.jpg','所在城市2','是','对他的期待2','自我介绍2','2022-05-13'),(133,'2022-05-13 02:29:02','标题3','用户账号3','用户姓名3','年龄3','性别3','upload/xiaoyouxiangqin_tupian3.jpg','所在城市3','是','对他的期待3','自我介绍3','2022-05-13'),(134,'2022-05-13 02:29:02','标题4','用户账号4','用户姓名4','年龄4','性别4','upload/xiaoyouxiangqin_tupian4.jpg','所在城市4','是','对他的期待4','自我介绍4','2022-05-13'),(135,'2022-05-13 02:29:02','标题5','用户账号5','用户姓名5','年龄5','性别5','upload/xiaoyouxiangqin_tupian5.jpg','所在城市5','是','对他的期待5','自我介绍5','2022-05-13'),(136,'2022-05-13 02:29:02','标题6','用户账号6','用户姓名6','年龄6','性别6','upload/xiaoyouxiangqin_tupian6.jpg','所在城市6','是','对他的期待6','自我介绍6','2022-05-13'),(1652409389927,'2022-05-13 02:36:29','校园相亲','111','111','29','女','upload/1652409381135.jpg','广州','是','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>','2022-05-13');
/*!40000 ALTER TABLE `xiaoyouxiangqin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyouxinxi`
--

DROP TABLE IF EXISTS `xiaoyouxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `biyenianfen` varchar(200) DEFAULT NULL COMMENT '毕业年份',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `xinchou` varchar(200) DEFAULT NULL COMMENT '薪酬',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `xiaoyoujianjie` longtext COMMENT '校友简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409184206 DEFAULT CHARSET=utf8 COMMENT='校友信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyouxinxi`
--

LOCK TABLES `xiaoyouxinxi` WRITE;
/*!40000 ALTER TABLE `xiaoyouxinxi` DISABLE KEYS */;
INSERT INTO `xiaoyouxinxi` VALUES (21,'2022-05-13 02:29:01','用户账号1','用户姓名1','毕业年份1','upload/xiaoyouxinxi_tupian1.jpg','所在地区1','薪酬1','职业1','校友简介1'),(22,'2022-05-13 02:29:01','用户账号2','用户姓名2','毕业年份2','upload/xiaoyouxinxi_tupian2.jpg','所在地区2','薪酬2','职业2','校友简介2'),(23,'2022-05-13 02:29:01','用户账号3','用户姓名3','毕业年份3','upload/xiaoyouxinxi_tupian3.jpg','所在地区3','薪酬3','职业3','校友简介3'),(24,'2022-05-13 02:29:01','用户账号4','用户姓名4','毕业年份4','upload/xiaoyouxinxi_tupian4.jpg','所在地区4','薪酬4','职业4','校友简介4'),(25,'2022-05-13 02:29:01','用户账号5','用户姓名5','毕业年份5','upload/xiaoyouxinxi_tupian5.jpg','所在地区5','薪酬5','职业5','校友简介5'),(26,'2022-05-13 02:29:01','用户账号6','用户姓名6','毕业年份6','upload/xiaoyouxinxi_tupian6.jpg','所在地区6','薪酬6','职业6','校友简介6'),(1652409184205,'2022-05-13 02:33:03','111','111','2010','upload/1652409166753.jpg','广州','5000-10000','白领','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>');
/*!40000 ALTER TABLE `xiaoyouxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyuanjuanzeng`
--

DROP TABLE IF EXISTS `xiaoyuanjuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyuanjuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `niandu` varchar(200) DEFAULT NULL COMMENT '年度',
  `xiangmu` varchar(200) DEFAULT NULL COMMENT '项目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `juanzengyongtu` longtext COMMENT '捐赠用途',
  `juanzengxiangqing` longtext COMMENT '捐赠详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409320038 DEFAULT CHARSET=utf8 COMMENT='校园捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyuanjuanzeng`
--

LOCK TABLES `xiaoyuanjuanzeng` WRITE;
/*!40000 ALTER TABLE `xiaoyuanjuanzeng` DISABLE KEYS */;
INSERT INTO `xiaoyuanjuanzeng` VALUES (111,'2022-05-13 02:29:02','标题1','年度1','项目1','upload/xiaoyuanjuanzeng_tupian1.jpg','捐赠用途1','捐赠详情1'),(112,'2022-05-13 02:29:02','标题2','年度2','项目2','upload/xiaoyuanjuanzeng_tupian2.jpg','捐赠用途2','捐赠详情2'),(113,'2022-05-13 02:29:02','标题3','年度3','项目3','upload/xiaoyuanjuanzeng_tupian3.jpg','捐赠用途3','捐赠详情3'),(114,'2022-05-13 02:29:02','标题4','年度4','项目4','upload/xiaoyuanjuanzeng_tupian4.jpg','捐赠用途4','捐赠详情4'),(115,'2022-05-13 02:29:02','标题5','年度5','项目5','upload/xiaoyuanjuanzeng_tupian5.jpg','捐赠用途5','捐赠详情5'),(116,'2022-05-13 02:29:02','标题6','年度6','项目6','upload/xiaoyuanjuanzeng_tupian6.jpg','捐赠用途6','捐赠详情6'),(1652409320037,'2022-05-13 02:35:19','爱心捐赠','2006','爱心捐献','upload/1652409314616.jpg','校友会秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">校友会</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西</span></p>');
/*!40000 ALTER TABLE `xiaoyuanjuanzeng` ENABLE KEYS */;
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
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `biyenianfen` varchar(200) DEFAULT NULL COMMENT '毕业年份',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409125553 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-05-13 02:29:01','用户账号1','用户姓名1','123456','男','upload/yonghu_touxiang1.jpg','13823888881','毕业年份1','年龄1'),(12,'2022-05-13 02:29:01','用户账号2','用户姓名2','123456','男','upload/yonghu_touxiang2.jpg','13823888882','毕业年份2','年龄2'),(13,'2022-05-13 02:29:01','用户账号3','用户姓名3','123456','男','upload/yonghu_touxiang3.jpg','13823888883','毕业年份3','年龄3'),(14,'2022-05-13 02:29:01','用户账号4','用户姓名4','123456','男','upload/yonghu_touxiang4.jpg','13823888884','毕业年份4','年龄4'),(15,'2022-05-13 02:29:01','用户账号5','用户姓名5','123456','男','upload/yonghu_touxiang5.jpg','13823888885','毕业年份5','年龄5'),(16,'2022-05-13 02:29:01','用户账号6','用户姓名6','123456','男','upload/yonghu_touxiang6.jpg','13823888886','毕业年份6','年龄6'),(1652409125552,'2022-05-13 02:32:05','111','111','111','女','upload/1652409138478.jpg','13613613666','2010','29');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
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
  `zhaopinbianhao` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaopinbianhao` (`zhaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652409281942 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (91,'2022-05-13 02:29:01','1111111111','岗位1','upload/zhaopinxinxi_tupian1.jpg','岗位要求1','招聘人数1','薪资待遇1','2022-05-13'),(92,'2022-05-13 02:29:02','2222222222','岗位2','upload/zhaopinxinxi_tupian2.jpg','岗位要求2','招聘人数2','薪资待遇2','2022-05-13'),(93,'2022-05-13 02:29:02','3333333333','岗位3','upload/zhaopinxinxi_tupian3.jpg','岗位要求3','招聘人数3','薪资待遇3','2022-05-13'),(94,'2022-05-13 02:29:02','4444444444','岗位4','upload/zhaopinxinxi_tupian4.jpg','岗位要求4','招聘人数4','薪资待遇4','2022-05-13'),(95,'2022-05-13 02:29:02','5555555555','岗位5','upload/zhaopinxinxi_tupian5.jpg','岗位要求5','招聘人数5','薪资待遇5','2022-05-13'),(96,'2022-05-13 02:29:02','6666666666','岗位6','upload/zhaopinxinxi_tupian6.jpg','岗位要求6','招聘人数6','薪资待遇6','2022-05-13'),(1652409281941,'2022-05-13 02:34:40','1652409174197','客服','upload/1652409270798.jpg','校友会秘书长杨铭带队,一行5人前往校友企业陕西金合信息科技股份有限公司(以下简称金合科技)、西安知微传感技术有限公司(以下简称知微传感)、西安精雕软件科技有限公司(以下简称西','10','5000-8000','2022-05-13');
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

-- Dump completed on 2022-05-13 18:01:57
