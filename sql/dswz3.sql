/*
SQLyog v10.2 
MySQL - 5.1.73-community : Database - dswz3
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dswz3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dswz3`;

/*Table structure for table `book_type` */

DROP TABLE IF EXISTS `book_type`;

CREATE TABLE `book_type` (
  `book_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_type_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`book_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `book_type` */

insert  into `book_type`(`book_type_id`,`book_type_name`) values (1,'武侠类'),(2,'文学类'),(3,'架空类'),(4,'都市类');

/*Table structure for table `bookshelf` */

DROP TABLE IF EXISTS `bookshelf`;

CREATE TABLE `bookshelf` (
  `bookshelf_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bookshelf_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookshelf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `bookshelf` */

insert  into `bookshelf`(`bookshelf_id`,`user_id`,`bookshelf_name`) values (1,2,'默认书架'),(2,2,'都市言情'),(3,3,'最喜欢的'),(4,3,'最耐看的');

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bookshelf_id` int(11) DEFAULT NULL,
  `tbook_id` int(11) DEFAULT NULL,
  `collect_date` varchar(50) DEFAULT NULL,
  `collect_tip` int(11) DEFAULT '0',
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `collect` */

insert  into `collect`(`collect_id`,`user_id`,`bookshelf_id`,`tbook_id`,`collect_date`,`collect_tip`) values (1,2,1,2,'2019-03-23',0),(2,2,2,4,'2019-03-23',1),(3,3,3,2,'2019-03-24',0);

/*Table structure for table `evaluate` */

DROP TABLE IF EXISTS `evaluate`;

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbook_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `evaluate_score` int(11) DEFAULT NULL,
  `evaluate_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `evaluate` */

insert  into `evaluate`(`evaluate_id`,`tbook_id`,`user_id`,`evaluate_score`,`evaluate_date`) values (1,2,2,4,'2019-03-20 10:20:53'),(2,1,2,3,'2019-03-20 11:22:29'),(3,5,2,4,'2019-03-20 11:22:40');

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbook_id` int(11) DEFAULT NULL,
  `info_title` varchar(225) DEFAULT NULL,
  `info_content` text,
  `info_words` int(11) DEFAULT NULL,
  `info_date` datetime DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `info` */

insert  into `info`(`info_id`,`tbook_id`,`info_title`,`info_content`,`info_words`,`info_date`) values
                                                                                                      (9,1,'第1章 飞天入地1','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-21 23:50:16'),
                                                                                                      (10,1,'第2章 飞天入地2','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-21 23:50:16'),
                                                                                                      (11,1,'第3章 飞天入地3','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-21 23:50:16'),
                                                                                                      (12,1,'第4章 飞天入地4','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (13,1,'第5章 飞天入地5','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (14,1,'第6章 飞天入地6','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (15,1,'第7章 飞天入地7','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (16,1,'第8章 飞天入地8','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (17,1,'第9章 飞天入地9','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&lt;span style=\"line-height:2;\"&gt;&lt;/span&gt;测试图书内容测试图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容图书内容\r\n&lt;/p&gt;',10000,'2019-03-22 23:50:16'),
                                                                                                      (18,2,'第一章 蝼蚁','&lt;p style=\"text-indent:2em;\"&gt;\r\n	孽龙江滔滔江水，日日夜夜无穷无休地从广安府许家村绕过，东归入海，江畔一排数十株紫枫树，叶子似火燃烧。正是八月天时，村前村后的野草刚起始变黄，一抹斜阳映照之下，更增几分萧索。一株斑驳的老梧桐下，一堆村民，男男女女和十几个小孩，围着一个书生，聚精会神地听他说话。那书生十八九岁，挺鼻俊目，满脸蜡黄，像染病容，罩着一件浆洗得发白的麻衣，风一吹，麻衣贴紧身子，体格倒是不弱。只见他将手中的两片黄梨木碰了一下，发出得得连声，起唇展喉，声音清朗。“却说那狐仙一缕香魂随风散，与那金榜题名的张生，阴阳两隔，沦为永憾。张生悲从中来，不可断绝，念及恩情，遂熄青云之志，辞官归隐，在狐丘边结庐而居，参生悟死，了却残生……正所谓，曾经沧海难为水，除却巫山不是云。取次花丛懒回顾，半缘修道半缘君。”一曲词罢，满场无声。方才，这书生说的是个狐仙和书生的故事，一人一妖，相知相恋，最终天人永隔。最后以这一曲应景的唱词收尾，原本已十分感人的故事，待这番唱词一出，已惹得满场潸然下泪。便是那不识情爱的孩童，也听得呆住了。梨板再度得得两声，书生长身而起，端着一只残破的木碗，向着满座的观众挨个儿行去。没多会儿，碗中便聚齐满满一碗铜钱，铜钱堆里，隐隐还露出几个银角子。广安府地华天宝，物阜民丰，虽是乡野村民，囊中也并不羞涩。书生的故事，是乡间难得的精彩娱乐，心神随着故事动摇之际，对这书生自也生出钦佩、感激，出手之时，自也大方。收拾好所得，书生团团一鞠，定下了下次开坛的地点，便自去了。这书生出自附近许家村，名唤许易，今年十八岁。早些时候，名迹不彰，最近两年，却靠着满嘴的好故事，在十里八乡，名声鹊起。许易快步而行，堪堪将午，已到许家村口。金色的阳光下，苍郁的会阴山如巨大的龙脊，向着远方布展延伸，龙脊最低处，七八十幢歪歪斜斜的木屋，如棋子散落在山脚，绵延十数里。许易的那间矮小木屋，就在山脚最角落处，因着年深日久，木屋不仅陈旧，还有些歪斜。木屋虽破，却是家乡！见之，心安。“汪汪！”许易离着木屋还有百丈，一条老黄狗远远叫着撒着欢的跑了过来，到得近前，两只前掌直往许易肩头搭来。这条老黄狗在许家待了近二十年，早已化作许家的一份子，许易父母已亡，又无兄姊，某种程度老黄狗也是上他唯一的家人。每日，只要他远行归来，老黄狗必定远远来迎。许易拍拍已遍布皱褶的狗头，心中一阵温暖。一人一狗在山道上缓行，山道紧窄，荆棘遍布，仅容一人通行，每每许易想让开道路，都被老黄狗拿尾巴扫了，将他赶到窄窄的小道上，自己在一边的荆棘中穿行，好似慈祥的长辈关爱着晚辈！行至家中，已过正午，忙碌一上午，许易已然腹中火烧，麻利地从角落的破缸中拣出数块六七斤重的腌得猩红的肉块，折身出来，捅开木屋边上矮棚里前后架了两口黑锅的土灶台，点着火，前锅放肉，后锅下米。盖上锅盖后，许易折回房间，取来一本《南华集》，便在灶前坐了，边轻抚老黄狗的颈间的软皮，边安静观书。青山郁郁，山风徐来，温柔可亲，许易心中一片安然。一炷香左右的功夫，肉香、米香从锅盖缝隙溜出，卷着袅袅炊烟飘向远方。许易放下书本，正要起身揭开锅盖，眼皮一跳，猛地扑住老黄狗压倒在地。他方倒下，便听砰的一声巨响，灶台好像挨了发炮弹，猛地垮塌，土石飞溅，烟尘滚滚。接着便听一道粗犷的声音喊道，“三十斤的磨石，掷出三十丈外，一击而中，公子当真神力，看来离突破锻体后期，已经不远了。”许易爬起身来，循声看去，眼角猛地收冷，抓起老黄狗扔进屋去，反手将门关上，自己稳稳立在亭间。“好香啊！嘿嘿，都说你许易近来生发了，看来所言非虚啊，你这天天喝酒吃肉的，把我都比下去了，实在让人羡慕啊。”说话的是个华服公子，身后跟着两名彪形大汉，一个满脸络腮胡，甚至威猛，一个铁塔似的身子，鹰鼻深目，只看外形，便知皆是熊虎之士。“周公子说笑了，我不过仗着口舌之利，编些个无稽之谈，混些营生，焉敢和贵人相提并论。”许易平静地说道。“跟我们公子相比？你也配！”络腮胡子大步上前，在许易身前半步之地停下，伸手在他半边脸颊不轻不重地拍着，冷笑道，“小子，我们的来意，想必你清楚，用不着我们公子再废话吧，痛快把事情办了吧！”“周公子放心，地契已经递上去了，衙门正在审核。这样吧，明天的这个时候，我在此间恭候，你派人来取！”许易冷峻依然。周公子哈哈一笑，道，“算你识相！明日我恰好入会阴山围猎，你小子到路边等着吧，希望你不要叫我失望，否则后果你清楚。对了，听说你最近也在习练拳脚，想必有所成就，不如和我这手下比划比划，好指点指点他！”不待许易答话，络腮胡子哈哈一笑，抓住许易的领口，将他提了起来，“对对，可得请你狗日的好好指点指点你爷爷！”喝声未落，铁锤一般的拳头已砸到许易肩头，砰的一声闷响，许易如断了线的风筝飞出三丈多远方才落地，立时面如金纸，嘴角已溢出血迹。“哈哈，公子，就他？蝼蚁一般的东西，也配修习武道！我一根指头就摁死他了！”络腮胡子仰天狂笑。周公子轻蔑地看了许易一眼，转头就走，远远地飘来他的声音，“有你这样驴粪一般的子孙，明德公在天有灵，怕得从坟墓里气得爬起来，哦，忘了，现如今，明德公哪里还有坟墓，都圈作猪圈啦！”\r\n&lt;/p&gt;',2000,'2019-03-24 22:28:02'),(19,4,'第0001章 十八年','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 时间是2014年\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 江枫透过头等舱的玻璃俯瞰着云端下的豪华都市，穿越到这个世界已经有十八年了，要说，这十八年的时间自己最大的感悟是什么，江枫觉得，自己大可以用一个字来形容。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; ——爽\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 这个世界上总是有那么一两个幸运儿的，而江枫，毫无疑问就是其中之一。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 十八年前，江枫在某个叫地球的世界，只能算是**丝群体，大学刚刚毕业，四处找工作，谈了多少年的女朋友也无奈分手，踏入社会之后才明白，这个世界到底是有多么的残酷。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 江枫倒是不恨自己的女朋友，毕竟，人都是很现实的，离开了象牙塔才知道，这个世界并不是你想象中的那个样子。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 江枫也并不气馁，反正自己还年轻，然后就在下班的时候，看到一个小孩子差点要被碾压，自己冲上去推了一下，随后，就是一片黑暗。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 也就是在这个时候，命运之神光临了他，让他重生到了这个世界。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 同样是地球，同样是有着五千年历史的中国，这个世界历史进程跟地球几乎相差无几，但是，却又大不一样的世界。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 这个世界没有原来地球上的明星，没有那些著名的诗词歌赋，没有了那些大诗人，却有了截然不同的世界和人，虽说，一些重点历史人物没有太大的变化，但是，少了诸多名人。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 然而，命运之神给自己的好处也绝对不至于此，江枫，出生在了一个富贵之家。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 至于，这个家庭多么有钱？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 1999年10月份的时候，有一个姓马的小伙子，在厕所堵住了江枫的老爹江林，两个人交谈了六分钟，不久之后，江林大手一挥，丢给了这个姓马的小伙子两千万美元的投资。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 嗯，也就是今年，他的公司就要上市了，如果，问题不大的话，估计，今年他就是中国首富了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 当然，这是明面上的，毕竟，这家公司有百分之五十一的股份姓江。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 除了这些，江家在全世界都有着举足轻重的布局，无论是金融还是实业，亦或者是房地产，就算是军火生意都有所涉及。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 财富的积累，要么伴随着国家的极速崛起，要么伴随着国家的极速衰落。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 而江家的财富，完全就是血淋淋的积累，江家原本是在民国的时候在东南亚建立了养殖场，而早在改革开放的时候，江家是第一批投资中国的华人，帮助中国打通各国渠道，倾销产品。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 又在苏联解体的时候，横插一脚，疯狂的掠夺财富，直到今日，江家已然是一个庞然大物，在全球范围内有着举足轻重的影响力。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 而江枫则是江林的独生子，未来江家唯一的继承人。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 这样的家庭，这样的财富，足以让江枫十辈子无忧无虑。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 不过，最让江枫震撼的还是命运之神给自己的最后一个馈赠。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 他的身上天生携带着一个系统，大约是在十岁的时候，觉醒了这个系统。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 系统会时不时的发布一些任务，只要完成这些任务，自己就可以获得相应的奖励，除了这些，系统每个月还可以让自己抽奖，获取一些相应的技能。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 到目前为止，江枫其实已经记不太清楚自己有多少技能了，只知道自己现在有着过目不忘的能力，能打篮球，能踢足球，能歌善舞，还会国术，一个人能打十个这还是没有问题的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 不久之前，就在江枫十八岁的生日结束之后，江枫的老爷子给了江枫一个新的任务，要求江枫回国创业。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 用老爷子的话说就是，这么大的家产，总不能交给你来败坏，你总得证明你有能力接手咱们家的家产。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 一句话，轻飘飘的就把江枫打发回国。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 也就是老爷子说完这句话之后，系统的提示音也传来了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 说是，系统现在开启了声望系统，现在已经不需要江枫继续完成什么任务了，需要的是江枫获得声望，声望越大，可以兑换的东西也就越多。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 当然，现在系统提供的东西也是越来越多。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 简单来说，之前提供的玩意儿都是比较低等级的，现在都是高等级的，打个比方说，以前江枫能一个打十个普通人，系统升级之后，获取的能力，足以支撑江枫一个打一百个，还都是练家子。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 江枫简单的收拾了一下就准备回国了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 十八年了，江枫觉得自己也的确是应该做点什么了，总不能靠着老爷子吃饭，何况，自己还得把系统升升级。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 当然了，老爷子的启动资金还是有的，本来老爷子打算给江枫一个亿，后来被老娘拧着老爹的耳朵硬生生的给了江枫五个亿。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 毕竟是自家儿子，咋都不能亏待了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 用老娘的话说就是，一个亿，在东海的好地角买套别墅就没了，这点破钱还咋创业，读书，吃饭，找女朋友都得用钱。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 末了，老娘还来了一句，别听你爹瞎说，赚不到钱，你也是咱家的人，咱家家产，跑不到别人家手里。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 老娘在外人面前一向都是知书达礼、温润尔雅、气质出众，只是在他们父子面前，却又有那么几分稍显粗鄙，只是，这一份粗鄙却非常管用，至少，他们父子俩还是很受用的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 这话一出来，弄得江林万分尴尬，想严肃都严肃不起来，江枫则是冲着母亲竖了一个大拇指。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 顺道说一句，江枫老娘家里的背景可不一般，根正苗红的那种，他们夫妻的结合，那真是强强联手。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 带着五个亿，江枫坐着飞机，优哉游哉的回国了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 除了钱，江林还给江枫办理了一个手续，回国之后，江枫可以直接到东海大学读书，当然了，因为某个系统的缘故，从小开始，江枫就是学霸，这一点，还是让江林十分骄傲的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 十八年啊！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 江枫自言自语，心中却是涌现出了一种期待的情绪，自己在国外上的都是私立学校，倒是极少跟国内学校接触。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 不知道，接下来迎接我的会是什么样的生活。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp; 飞机轰然落地，江枫的唇角勾勒出了一个淡淡的弧度。\r\n&lt;/p&gt;',5000,'2019-03-24 22:29:03');

/*Table structure for table `sblog2` */

DROP TABLE IF EXISTS `sblog2`;

CREATE TABLE `sblog2` (
  `sblog_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbook_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `nick_name2` varchar(50) DEFAULT NULL,
  `sblog_pic` varchar(225) DEFAULT NULL,
  `sblog_content` text,
  `sblog_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sblog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `sblog2` */

insert  into `sblog2`(`sblog_id`,`tbook_id`,`user_id`,`nick_name`,`nick_name2`,`sblog_pic`,`sblog_content`,`sblog_date`) values
(1,1,3,'李玲玲',NULL,'2.jpg','图书真的不错','2019-03-24 22:00:12'),(3,1,2,'李梅梅',NULL,'1.jpg','图书真的不错','2019-03-24 22:08:43');

/*Table structure for table `tbook` */

DROP TABLE IF EXISTS `tbook`;

CREATE TABLE `tbook` (
  `tbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `book_type_id` int(11) DEFAULT '0',
  `tbook_name` varchar(225) DEFAULT NULL,
  `tbook_pic` varchar(225) DEFAULT NULL,
  `tbook_author` varchar(225) DEFAULT NULL,
  `tbook_desc` text,
  `tbook_date` date DEFAULT NULL,
  `tbook_click` int(11) DEFAULT NULL,
  `tbook_words` double DEFAULT NULL,
  `tbook_money` double DEFAULT '0',
  `tbook_flag` int(11) DEFAULT '1' COMMENT '1:否 2:是',
  PRIMARY KEY (`tbook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbook` */

insert  into `tbook`(`tbook_id`,`user_id`,`book_type_id`,`tbook_name`,`tbook_pic`,`tbook_author`,`tbook_desc`,`tbook_date`,`tbook_click`,`tbook_words`,`tbook_flag`) values
                                                                                                                                                                            (1,1,1,'神荒龙帝','1.jpg','我吃土豆','&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一滴龙血，可压碎山河，一根龙骨，可撕裂苍穹，一双龙眸，可看穿古今！在这里，有女帝君临天下！有古兽只手遮天！ 有大魔祸乱天地，也有人族先贤镇压八荒！少年凌飞身怀龙骨，崛起于微末，闯神荒，探帝墓，开启了一条与亿万神魔争锋的无敌 之路！ 整个天地……因他而变 ！【已有六百万字完本老书《不死武尊》】更有国漫精品《大唐玄笔录》，网文，影视等多方面联动，妖月夜出品，必属精品，可放心阅读。','2019-03-18',10023,163.7,1),
                                                                                                                                                                            (2,1,2,'我从凡间来','2.jpg','想见江南','&lt;p&gt;\r\n	我从凡间来，到此觅长生。 &emsp;&emsp; &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	*********** &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	已完本540万字《官道之1976》，更新稳定，请放心阅读！ &emsp;\r\n&lt;/p&gt;','2019-03-18',30053,163.7,1),
                                                                                                                                                                            (3,1,3,'神门','3.jpg','薪意','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;【超人气玄幻】这是一个诡异莫名的世界…… &emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&emsp;山，水，石，花，草，树，木，太阳，月亮，星辰……天地万物都是力量的来源。 &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这里有着前世所有的经典名著，但却有了一个新的名字《道典》！ &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;原来看书就能获得力量啊？方正直很纠结，那么我是先看《道德经》《奇门遁甲》《论语》还是看……《金瓶梅》《西厢记》啊？ &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;以《道典》为根基，掌万物之道，打开成神之门！\r\n&lt;/p&gt;','2019-03-18',30002,223.2,2),
                                                                                                                                                                            (4,1,4,'极品大神壕','4.jpg','枫江王','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;重生了，来到了一个跟地球像又不像的世界 &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;带着系统在绝世豪门里重生的江枫开始了自己的征服之路。 &emsp;&emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;江枫：“人呐，就是不知道，这辈子就不可以预料。人的命运，固然是要靠自我奋斗，但是，也要考虑，你会不会忽然间撞大运了。” &emsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&emsp;“我来到这个世界上大概干了三件事，第一，在文娱圈子里呼风唤雨，说捧谁就捧谁，想睡谁就睡谁，第二，在看不见的地下世界只手遮天，第三，一手缔造了一个庞大的资本帝国。” &emsp;&emsp;“ 如果说还有一点什么成绩，身边的美女太多算不算？”\r\n&lt;/p&gt;','2019-03-18',20003,150.5,1),
                                                                                                                                                                            (5,1,1,'盗天仙途','5.jpg','荆柯守','&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&nbsp;&nbsp;&nbsp;&nbsp;福地产生地仙，洞天来往天仙，我有梅花一株，盗取一线天机！\r\n&lt;/p&gt;','2019-03-18',30003,165.6,2);

/*Table structure for table `uhis` */

DROP TABLE IF EXISTS `uhis`;

CREATE TABLE `uhis` (
  `uhis_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `uhis_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uhis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `uhis` */

insert  into `uhis`(`uhis_id`,`user_id`,`info_id`,`uhis_date`) values (2,2,9,'2019-03-23'),(3,2,18,'2019-03-23'),(4,3,18,'2019-03-24');

/*Table structure for table `unote` */

DROP TABLE IF EXISTS `unote`;

CREATE TABLE `unote` (
  `unote_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `unote_content` text,
  `unote_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`unote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `unote` */

insert  into `unote`(`unote_id`,`user_id`,`info_id`,`unote_content`,`unote_date`) values (1,2,18,'这个章节写的非常棒！！！\n我很喜欢^_^','2019-03-23'),
                                                                                         (2,3,18,'2019-03-23\n这个章节写的太高了！！\n\n2019-03-24\n又看了一遍','2019-03-24');

/*Table structure for table `upay` */

DROP TABLE IF EXISTS `upay`;

CREATE TABLE `upay` (
  `upay_id` int(11) NOT NULL AUTO_INCREMENT,
  `upay_no` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upay_date` varchar(50) DEFAULT NULL,
  `upay_price` double DEFAULT NULL,
  PRIMARY KEY (`upay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `upay` */

insert  into `upay`(`upay_id`,`upay_no`,`user_id`,`upay_date`,`upay_price`) values (1,'20180311221010222',3,'2019-03-18 22:40:01',20),(4,'20190324224001313',3,'2019-03-24 22:40:01',20);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(200) DEFAULT NULL,
  `real_name` varchar(200) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `user_address` varchar(300) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_money` double DEFAULT NULL,
  `user_photo` varchar(300) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_kind` int(11) DEFAULT '1' COMMENT '1：普通 2：会员',
  `invalid_date` varchar(50) DEFAULT NULL,
  `user_type` int(11) DEFAULT '1' COMMENT '1：注册用户 2：系统管理员 3：作者 ',
  `buy_book` int(11) DEFAULT '0' COMMENT '0：未购买 1：已购买 ',

  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pass`,`real_name`,`nick_name`,`user_address`,`user_mail`,`user_phone`,`user_money`,`user_photo`,`reg_date`,`user_kind`,`invalid_date`,`user_type`,`buy_book`)
values (1,'admin','111111','张丽',NULL,NULL,'admin@163.com','15088888883',0,NULL,'2017-03-01 23:08:39',1,NULL,2,0),
       (2,'t001','111111','李梅','李梅梅','北京天堂路666号','limei@163.com','15088888889',0,'1.jpg','2017-03-01 23:08:44',1,'',1,0),
       (3,'t002','111111','李玲','李玲玲','北京天堂路666号','liling@163.com','15088888888',1000,'2.jpg','2017-03-01 23:08:46',2,'2019-05-09',1,0),
       (4,'t003','111111','陈生','陈生生','北京天堂路666号','chensheng@163.com','15088888884',1000,'3.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (5,'t004','111111','李超','李超超','天津天堂路666号','lichao@163.com','15088888887',1000,'4.jpg','2017-03-01 23:08:44',2,'2019-04-10',1,0),
       (6,'t005','111111','张斌','张斌斌','上海天堂路666号','zhangbin@163.com','15088888882',1000,'5.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (7,'t006','111111','赵辉','赵辉辉','河北天堂路666号','zhaohui@163.com','15088888881',1000,'6.jpg','2017-03-01 23:08:44',2,'2019-04-10',1,0),
       (8,'t007','111111','张伟明','小小明','世纪天堂路666号','zhangweiming@163.com','15088888888',1000,'7.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (9,'t008','111111','李昆仑','李昆仑','河南天堂路666号','likunlun@163.com','15088888888',1000,'8.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (10,'t009','111111','李静','李静静','湖南天堂路666号','lijing@163.com','15088888886',1000,'9.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (11,'t010','111111','张勇乐','张勇勇','湖北天堂路666号','zhangyongle@163.com','15088888887',1000,'10.jpg','2017-03-01 23:08:44',1,NULL,1,0),
       (12,'t011','111111','我吃土豆','作者','湖北解放路888号','zhangsanfeng@163.com','15088888889',1000,'10.jpg','2017-03-01 23:08:44',1,NULL,3,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
