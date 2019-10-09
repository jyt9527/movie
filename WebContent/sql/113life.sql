/*
Navicat MySQL Data Transfer

Source Server         : MySQL5.5
Source Server Version : 50500
Source Host           : localhost:3306
Source Database       : 113life

Target Server Type    : MYSQL
Target Server Version : 50500
File Encoding         : 65001

Date: 2018-12-19 21:36:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `angelaba`
-- ----------------------------
DROP TABLE IF EXISTS `angelaba`;
CREATE TABLE `angelaba` (
  `id` int(25) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pagination` varchar(50) NOT NULL COMMENT '分页导航',
  `headline` varchar(50) DEFAULT NULL COMMENT '标题',
  `headline_url` varchar(200) DEFAULT NULL COMMENT '标题链接',
  `brief` varchar(200) DEFAULT NULL COMMENT '简要',
  `photo` varchar(50) DEFAULT NULL COMMENT '图片',
  `view` varchar(200) DEFAULT NULL COMMENT '查看',
  `comment` varchar(50) DEFAULT '' COMMENT '评论',
  `share` varchar(50) DEFAULT NULL COMMENT '分享',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of angelaba
-- ----------------------------
INSERT INTO `angelaba` VALUES ('1', 'New', '《七月安生》获百花最佳编剧 制片人透露会有续集', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8937441.shtml', '在今日举行的百花奖上，《七月与安生》获百花最佳编剧。制片人陈乐当场透露：“我们会有《七月与安生2》。', 'images/Soulmate.jpg', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8937441.shtml', '', null);
INSERT INTO `angelaba` VALUES ('2', 'Chinese', '吴京获百花奖最佳男主：没想到拿奖，诚惶诚恐', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihnstwwq2790137.shtml', '吴京获百花奖最佳男主角，“我以为获奖没我啥事了，没想到能拿奖。观众你们给《战狼2》的荣誉，我诚惶诚恐。', 'images/JansonWu.jpg', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihnstwwq2790137.shtml', '', null);
INSERT INTO `angelaba` VALUES ('3', 'Chinese', '小蛮腰变水桶腰？林志玲百花奖红毯礼服被指显胖', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8939927.shtml', '不少网友就直言志玲姐姐身上那件礼服让她看起来胖了不少，“打零分，还好颜值在线hold住了”。', 'images/Chiling.png', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8939927.shtml', '', null);
INSERT INTO `angelaba` VALUES ('4', 'Chinese', '周冬雨马思纯齐获影后提名 大谈友情感情好', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8928668.shtml', '继获得金马奖影后双黄蛋后，马思纯和周冬雨凭借《七月与安生》获本届百花奖最佳女主角提名。', 'images/Actress.jpg', 'http://ent.sina.com.cn/m/c/2018-11-10/doc-ihmutuea8928668.shtml', '', null);
INSERT INTO `angelaba` VALUES ('5', 'Occident', '这么蠢萌的《毒液》，你们不想养一只吗？', 'http://k.sina.com.cn/article_1804034764_6b8762cc00100fdrl.html?from=ent&subch=film', '你关注的公众号肯定近几个月来陆陆续续都提到这个家伙，并且在这几天持续刷屏了你的朋友圈，没办法，谁让这家伙火出天际，光是定档消息就上了好几次热搜榜。', 'images/duye.jpg', 'http://k.sina.com.cn/article_1804034764_6b8762cc00100fdrl.html?from=ent&subch=film', '', null);
INSERT INTO `angelaba` VALUES ('6', 'KKC', '宋智孝金成五马东锡出席《愤怒的黄牛》首映', 'http://k.sina.com.cn/article_6416908680_p17e7a418800100cx8m.html?from=ent&subch=krent', '宋智孝金成五马东锡等艺人出席新片《愤怒的黄牛》VIP首映宋智孝金成五马东锡等艺人出席新片《愤怒的黄牛》VIP首映宋智孝金成五马东锡等艺人出席新片《愤怒的黄牛》VIP首映...', 'images/SPY.jpg', 'http://k.sina.com.cn/article_6416908680_p17e7a418800100cx8m.html?from=ent&subch=krent', '', null);
INSERT INTO `angelaba` VALUES ('7', 'filmReview', '电影《至暗时刻》上线 加里·奥德曼的时代来了', 'http://ent.sina.com.cn/m/f/2018-04-02/doc-ifysvcyt2404520.shtml', '他的表演依旧保持着往日的高水准，他从外表、表情、动作到心理、性格、情绪都完完全全地变成了英国首相丘吉尔。', 'images/DarkestHour.jpg', 'http://ent.sina.com.cn/m/f/2018-04-02/doc-ifysvcyt2404520.shtml', '', null);
INSERT INTO `angelaba` VALUES ('8', 'New', '《霸王别姬》张国荣获赞超敬业 受伤流血仍无怨言', 'http://ent.sina.com.cn/m/c/2018-12-05/doc-ihmutuec6517348.shtml', '据悉，当年在拍“程蝶衣”戒烟瘾的桥段时，导演陈凯歌拍了一次后就觉得OK，但张国荣却不满意而坚持要重拍。', 'images/FarewellToMyConcubine.jpg', 'http://ent.sina.com.cn/m/c/2018-12-05/doc-ihmutuec6517348.shtml', '', null);
INSERT INTO `angelaba` VALUES ('9', 'New', '文牧野《药神》澳洲获最佳亚洲电影 华语片首拿奖', 'http://ent.sina.com.cn/m/c/2018-12-05/doc-ihprknvt2385310.shtml', '在颁奖礼上，《我不是药神》夺得AACTA奖最佳亚洲电影奖。这是中国电影人首次获得该项荣誉。', 'images/Asvin.jpg', 'http://ent.sina.com.cn/m/c/2018-12-05/doc-ihprknvt2385310.shtml', '', null);
INSERT INTO `angelaba` VALUES ('10', 'KKC', '怪盗基德大展身手！柯南新剧场版定名：深蓝之拳', 'http://ent.sina.com.cn/m/f/2018-12-05/doc-ihprknvt1492179.shtml', '柯南2019新剧场版正式定名《名侦探柯南：深蓝之拳（紺青の拳）》，青山刚昌画的先导海报同步公开。', 'images/Conan.jpg', 'http://ent.sina.com.cn/m/f/2018-12-05/doc-ihprknvt1492179.shtml', '', null);
INSERT INTO `angelaba` VALUES ('11', 'KKC', '都暻秀朴慧秀等出席《Swing Kids》试映', 'http://k.sina.com.cn/article_6416908680_p17e7a418800100ddpy.html?from=ent&subch=krent', '都暻秀朴慧秀等艺人出席新片《Swing Kids》试映都暻秀朴慧秀等艺人出席新片《Swing Kids》试映都暻秀朴慧秀等艺人出席新片《Swing Kids》', 'images/SwingKids.jpg', 'http://k.sina.com.cn/article_6416908680_p17e7a418800100ddpy.html?from=ent&subch=krent', '', null);
INSERT INTO `angelaba` VALUES ('12', 'Occident', '《摘金奇缘》发布“舌尖情缘”片段 浪漫爱情成观影首选', 'http://k.sina.com.cn/article_2126150055_v7eba79a700100djsi.html?from=ent&subch=film', '由华纳兄弟影片公司出品，康斯坦斯·吴、杨紫琼、亨利·戈尔丁等演员出演，改编自全球畅销小说的好莱坞浪漫爱情喜剧《摘金奇缘》(Crazy Rich Asians) 已于昨日正式在国内上映。', 'images/GoldPicking.jpg', 'http://k.sina.com.cn/article_2126150055_v7eba79a700100djsi.html?from=ent&subch=film', '', null);
INSERT INTO `angelaba` VALUES ('13', 'Occident', '《海王》预售特辑主演喊你来买票 温子仁开启前所未有的海底冒险', 'http://k.sina.com.cn/article_1744203407_v67f66e8f00100gka2.html?from=ent&subch=film', '由华纳兄弟影片公司出品的DC全新超级英雄电影《海王》即将于12月7日提前北美两周在国内上映。', 'images/Aquaman.jpg', 'http://k.sina.com.cn/article_1744203407_v67f66e8f00100gka2.html?from=ent&subch=film', '', null);
INSERT INTO `angelaba` VALUES ('14', 'filmReview', '评论：《妖猫传》美得让你忽视一些瑕疵', 'http://ent.sina.com.cn/m/c/2017-12-23/doc-ifypvuqf2459006.shtml', '一众演员在陈凯歌的执导下，很好地完成了这出充满执念的唐朝凄美爱情故事，整部电影美得足够让你能忽视一些瑕疵。', 'images/CatPass.jpg', 'http://ent.sina.com.cn/m/c/2017-12-23/doc-ifypvuqf2459006.shtml', '', null);
INSERT INTO `angelaba` VALUES ('15', 'filmReview', '《老兽》：这才是中国版“家族之苦”', 'http://ent.sina.com.cn/m/c/2017-12-14/doc-ifyptkyk4404166.shtml', '这部手法纯熟、外在好看、内在丰沛而激烈的电影，则充分证实，根本没有必要去学习别人的经验甚至翻拍别国的故事。', 'images/OldBeast.jpg', 'http://ent.sina.com.cn/m/c/2017-12-14/doc-ifyptkyk4404166.shtml', '', null);

-- ----------------------------
-- Table structure for `cinema`
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `website` varchar(200) DEFAULT NULL COMMENT '网址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cinema
-- ----------------------------

-- ----------------------------
-- Table structure for `top`
-- ----------------------------
DROP TABLE IF EXISTS `top`;
CREATE TABLE `top` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ranking` varchar(50) DEFAULT NULL COMMENT '排名',
  `film` varchar(50) DEFAULT NULL COMMENT '电影名称',
  `website` varchar(200) DEFAULT NULL COMMENT '网址',
  `tendency` varchar(50) DEFAULT NULL COMMENT '趋势',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of top
-- ----------------------------
