#设置客户端连接服务器端的编码格式为utf8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS mk_cake;
#创建数据库，设置编码为utf8
CREATE DATABASE mk_cake CHARSET = UTF8;
#进入数据库
USE mk_cake;
#分类第一项
CREATE TABLE classify_one (
	fid int(11) NOT NULL PRIMARY KEY,
	src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL,
	href varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO classify_one (fid, src, title, href)
VALUES (
		'1',
		'image/classify/caek1(1).jpg',
		'ins风/网红蛋糕',
		'1'
	),
	('2', 'image/classify/caek1(2).jpg', '圆形蛋糕', '2'),
	('3', 'image/classify/caek1(3).jpg', '心形蛋糕', '3'),
	('4', 'image/classify/caek2(1).jpg', '送朋友', '4'),
	('5', 'image/classify/caek2(2).jpg', '送恋人', '5'),
	('6', 'image/classify/caek2(3).jpg', '送长辈', '6'),
	('7', 'image/classify/caek3(1).jpg', '水果蛋糕', '7'),
	('8', 'image/classify/caek3(2).jpg', '巧克力蛋糕', '8'),
	('9', 'image/classify/caek3(3).jpg', '慕斯蛋糕', '9');
#分类第二项
CREATE TABLE classify_two (
	fid int(11) NOT NULL PRIMARY KEY,
	src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL,
	href varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO classify_two (fid, src, title, href)
VALUES (
		'1',
		'image/classify/flower1(1).jpg',
		'圆形花束',
		'1'
	),
	(
		'2',
		'image/classify/flower1(2).jpg',
		'扇形花束',
		'2'
	),
	(
		'3',
		'image/classify/flower1(3).jpg',
		'鲜花礼盒',
		'3'
	),
	('4', 'image/classify/flower2(1).jpg', '红玫瑰', '4'),
	('5', 'image/classify/flower2(2).jpg', '粉玫瑰', '5'),
	('6', 'image/classify/flower2(3).jpg', '白玫瑰', '6'),
	(
		'7',
		'image/classify/flower3(1).jpg',
		'蓝色妖姬',
		'7'
	),
	(
		'8',
		'image/classify/flower3(2).jpg',
		'香槟玫瑰',
		'8'
	),
	('9', 'image/classify/flower3(3).jpg', '康乃馨', '9');
#分类第三项
CREATE TABLE classify_three (
	fid int(11) NOT NULL PRIMARY KEY,
	src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL,
	href varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO classify_three (fid, src, title, href)
VALUES (
		'1',
		'image/classify/group1(1).jpg',
		'红玫瑰+蛋糕',
		'1'
	),
	(
		'2',
		'image/classify/group1(2).jpg',
		'粉玫瑰+蛋糕',
		'2'
	),
	(
		'3',
		'image/classify/group1(3).jpg',
		'白玫瑰+蛋糕',
		'3'
	);
#分类第四项
CREATE TABLE classify_four (
	fid int(11) NOT NULL PRIMARY KEY,
	src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL,
	href varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO classify_four (fid, src, title, href)
VALUES (
		'1',
		'image/classify/chocolate1(1).jpg',
		'30粒装',
		'1'
	),
	(
		'2',
		'image/classify/chocolate1(2).jpg',
		'78粒装',
		'2'
	),
	(
		'4',
		'image/classify/chocolate2(1).jpg',
		'心语礼盒',
		'4'
	),
	(
		'5',
		'image/classify/chocolate2(2).jpg',
		'心印礼盒',
		'5'
	),
	(
		'6',
		'image/classify/chocolate2(3).jpg',
		'碗装290g',
		'6'
	);
#分类第五项
CREATE TABLE classify_five (
	fid int(11) NOT NULL PRIMARY KEY,
	src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL,
	href varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO classify_five (fid, src, title, href)
VALUES (
		'1',
		'image/classify/plants1(1).jpg',
		'生意兴隆',
		'1'
	),
	(
		'2',
		'image/classify/plants1(2).jpg',
		'双喜临门',
		'2'
	),
	(
		'3',
		'image/classify/plants1(3).jpg',
		'吉星高照',
		'3'
	);
#表的结构 user
CREATE TABLE user (
	uid int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	uname varchar(32) DEFAULT NULL,
	upwd varchar(32) DEFAULT NULL,
	email varchar(64) DEFAULT NULL,
	phone varchar(16) DEFAULT NULL,
	user_name varchar(16) DEFAULT NULL,
	gender tinyint(1) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO user (
		uid,
		uname,
		upwd,
		email,
		phone,
		user_name,
		gender
	)
VALUES (
		NULL,
		'xiaoming',
		'11111111',
		'1111@163.com',
		'18355556666',
		'小明',
		1
	);

CREATE TABLE carousel (
  cid int(11) NOT NULL PRIMARY KEY,
  src varchar(128) DEFAULT NULL,
  title varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO carousel(cid, src, title) VALUES
('1', 'carouse/carousel1.jpg', '轮播图片1'),
('2', 'carouse/carousel2.jpg', '轮播图片2'),
('3', 'carouse/carousel3.jpg', '轮播图片3');

#菜单
CREATE TABLE index_list (
  lid int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  src varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO index_list(lid, src, title) VALUES
('null', 'lists/list01.png','生日蛋糕'),
('null', 'lists/list02.png','长辈蛋糕'),
('null', 'lists/list03.png','水果蛋糕'),
('null', 'lists/list04.png','鲜花预定');


CREATE TABLE flower (
  fid int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  src varchar(128) DEFAULT NULL,
  title varchar(64) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  type varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO flower (fid, src, title,  price, type) VALUES
('null','product/cake001.jpg','水果蛋糕 水果传奇','182','1'),
('null','product/cake002.jpg','心有灵犀 爱的果园','182','1'),
('null','product/cake003.jpg','方形蛋糕 无尽幸福','182','1'),
('null','product/cake004.jpg','方形蛋糕 深厚情谊','182','1'),
('null','product/cake005.jpg','巧克力蛋糕 小浣熊','182','1'),
('null','product/cake006.jpg','心形蛋糕 欣欣小悦','182','1'),
('null','product/cake007.jpg','水果蛋糕 爱的见证','182','1'),
('null','product/cake008.jpg','ins风 皇冠','182','1'),
('null','product/hua001.jpg','9朵红玫 陷入爱情','182','2'),
('null','product/hua002.jpg','11朵粉玫+百合','182','2'),
('null','product/hua003.jpg','九朵香槟玫瑰','182','2'),
('null','product/hua004.jpg','九朵香槟玫瑰+百合','182','2'),
('null','product/hua005.jpg','美好的期待','182','2'),
('null','product/hua006.jpg','12朵白玫瑰/浪漫','182','2'),
('null','product/zuhe001.jpg','与你度过漫长岁月','182','3'),
('null','product/zuhe002.jpg','谱写我们的未来','182','3'),
('null','product/zuhe003.jpg','套餐组合 无法替代','182','3'),
('null','product/zuhe004.jpg','套餐组合 相约一生','182','3'),
('null','product/zuhe005.jpg','最重要的人','182','3'),
('null','product/zuhe006.jpg','找到爱','182','3');


####################################
CREATE TABLE details_carousel(
	cid int(11) NOT NULL PRIMARY KEY,
	pic varchar(128) DEFAULT NULL,
	title varchar(64) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO details_carousel(cid, pic, title)
VALUES ('1', '01.jpg', '轮播图片1'),
	('2', '02.jpg', '轮播图片2'),
	('3', '03.jpg', '轮播图片3');
CREATE TABLE `details` (
	`pid` int(11) NOT NULL auto_increment,
	`carousel_pics1` varchar(128) default NULL,
	`carousel_pics2` varchar(128) default NULL,
	`carousel_pics3` varchar(128) default NULL,
	`title` varchar(50) default NULL,
	`price` decimal(10, 2) default NULL,
	`sold` varchar(20),
	PRIMARY KEY (`pid`)
) ENGINE = InnoDB AUTO_INCREMENT = 44 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details`
VALUES (
		'1',
		'01.jpg',
		'02.jpg',
		'03.jpg',
		'水果蛋糕 水果传奇',
		'182.00',
		'430'
	);
INSERT INTO `details`
VALUES (
		'2',
		'04.jpg',
		'05.jpg',
		'06.jpg',
		'心有灵犀 爱的果园',
		'182.00',
		'460'
	);
INSERT INTO `details`
VALUES (
		'3',
		'07.jpg',
		'08.jpg',
		'08.jpg',
		'方形蛋糕 无尽幸福',
		'182.00',
		'440'
	);
INSERT INTO `details`
VALUES (
		'4',
		'10.jpg',
		'11.jpg',
		'12.jpg',
		'方形蛋糕 深厚情谊',
		'182.00',
		'470'
	);
INSERT INTO `details`
VALUES (
		'5',
		'13.jpg',
		'14.jpg',
		'15.jpg',
		'巧克力蛋糕 小浣熊',
		'182.00',
		'490'
	);
INSERT INTO `details`
VALUES (
		'6',
		'16.jpg',
		'17.jpg',
		'18.jpg',
		'心形蛋糕 欣欣小悦',
		'182.00',
		'400'
	);
INSERT INTO `details`
VALUES (
		'7',
		'19.jpg',
		'20.jpg',
		'banner3.jpg',
		'水果蛋糕 爱的见证',
		'182.00',
		'390'
	);
INSERT INTO `details`
VALUES (
		'8',
		'22.jpg',
		'23.jpg',
		'24.jpg',
		'ins风 皇冠',
		'182.00',
		'370'
	);
INSERT INTO `details`
VALUES (
		'9',
		'25.jpg',
		'26.jpg',
		'26.jpg',
		'9朵红玫 陷入爱情',
		'182.00',
		'340'
	);
INSERT INTO `details`
VALUES (
		'10',
		'28.jpg',
		'29.jpg',
		'30.jpg',
		'11朵粉玫+百合',
		'182.00',
		'300'
	);
INSERT INTO `details`
VALUES (
		'11',
		'31.jpg',
		'32.jpg',
		'32.jpg',
		'九朵香槟玫瑰',
		'182.00',
		'420'
	);
INSERT INTO `details`
VALUES (
		'12',
		'34.jpg',
		'35.jpg',
		'35.jpg',
		'九朵香槟玫瑰+百合',
		'182.00',
		'450'
	);
INSERT INTO `details`
VALUES (
		'13',
		'37.jpg',
		'38.jpg',
		'38.jpg',
		'美好的期待',
		'182.00',
		'430'
	);
INSERT INTO `details`
VALUES (
		'14',
		'40.jpg',
		'41.jpg',
		'42.jpg',
		'12朵白玫瑰/浪漫',
		'182.00',
		'430'
	);
INSERT INTO `details`
VALUES (
		'15',
		'43.jpg',
		'44.jpg',
		'45.jpg',
		'与你度过漫长岁月',
		'182.00',
		'470'
	);
INSERT INTO `details`
VALUES (
		'16',
		'46.jpg',
		'47.jpg',
		'48.jpg',
		'谱写我们的未来',
		'182.00',
		'460'
	);
INSERT INTO `details`
VALUES (
		'17',
		'49.jpg',
		'50.jpg',
		'50.jpg',
		'套餐组合 无法替代',
		'182.00',
		'450'
	);
INSERT INTO `details`
VALUES (
		'18',
		'52.jpg',
		'53.jpg',
		'54.jpg',
		'套餐组合 相约一生',
		'182.00',
		'440'
	);
INSERT INTO `details`
VALUES (
		'19',
		'56.jpg',
		'56.jpg',
		'57.jpg',
		'最重要的人',
		'182.00',
		'430'
	);
INSERT INTO `details`
VALUES (
		'20',
		'58.jpg',
		'59.jpg',
		'60.jpg',
		'找到爱',
		'182.00',
		'410'
	);