/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : farm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-02-03 17:43:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for f_consume
-- ----------------------------
DROP TABLE IF EXISTS `f_consume`;
CREATE TABLE `f_consume` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_consume_type` int(2) DEFAULT NULL COMMENT '类型 1早餐 2午餐 3晚餐 4小吃 5生活 6通讯 7交通 8娱乐',
  `f_consume_money` decimal(11,2) DEFAULT NULL COMMENT '金额',
  `f_consume_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `f_consume_time` datetime DEFAULT NULL COMMENT '消费时间',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='消费信息表';

-- ----------------------------
-- Records of f_consume
-- ----------------------------
INSERT INTO `f_consume` VALUES ('1', '1', '5.00', '早饭', '2018-01-02 08:30:32');
INSERT INTO `f_consume` VALUES ('2', '7', '18.80', '车费', '2018-01-02 10:11:29');
INSERT INTO `f_consume` VALUES ('3', '4', '17.00', '超市', '2018-01-02 19:04:29');
INSERT INTO `f_consume` VALUES ('4', '5', '1.00', '纸巾', '2018-01-03 09:06:02');
INSERT INTO `f_consume` VALUES ('5', '7', '3.60', '轻轨+公交车', '2018-01-03 10:09:01');
INSERT INTO `f_consume` VALUES ('6', '2', '10.00', '午饭', '2018-01-03 12:04:56');
INSERT INTO `f_consume` VALUES ('7', '2', '12.00', '午饭', '2018-01-04 12:05:35');
INSERT INTO `f_consume` VALUES ('8', '4', '1.00', '棒棒糖', '2018-01-04 10:08:15');
INSERT INTO `f_consume` VALUES ('9', '4', '1.00', '哇哈哈', '2018-01-05 10:09:43');
INSERT INTO `f_consume` VALUES ('10', '2', '12.00', '午饭', '2018-01-05 14:05:53');
INSERT INTO `f_consume` VALUES ('11', '7', '25.10', '公交+轻轨+出租车', '2018-01-05 22:15:55');
INSERT INTO `f_consume` VALUES ('12', '8', '88.00', '电影票+爆米花+可乐', '2018-01-05 22:18:59');
INSERT INTO `f_consume` VALUES ('13', '7', '3.60', '轻轨', '2018-01-06 08:33:46');
INSERT INTO `f_consume` VALUES ('14', '2', '15.00', '午饭', '2018-01-06 12:34:12');
INSERT INTO `f_consume` VALUES ('15', '4', '74.00', '超市', '2018-01-06 19:35:51');
INSERT INTO `f_consume` VALUES ('16', '7', '31.60', '轻轨+滴滴打车', '2018-01-08 08:36:36');
INSERT INTO `f_consume` VALUES ('17', '4', '6.10', '红牛+哇哈哈', '2018-01-08 08:37:30');
INSERT INTO `f_consume` VALUES ('18', '5', '10.00', '洗衣粉', '2018-01-08 20:06:32');
INSERT INTO `f_consume` VALUES ('19', '7', '1.80', '公交车', '2018-01-09 08:07:47');
INSERT INTO `f_consume` VALUES ('20', '2', '12.00', '午饭', '2018-01-09 12:08:08');
INSERT INTO `f_consume` VALUES ('21', '2', '13.00', '午饭', '2018-01-10 13:37:35');
INSERT INTO `f_consume` VALUES ('22', '7', '3.60', '轻轨+公交', '2018-01-10 18:02:18');
INSERT INTO `f_consume` VALUES ('23', '7', '3.60', '轻轨+公交', '2018-01-11 19:35:42');
INSERT INTO `f_consume` VALUES ('24', '2', '12.00', '午饭', '2018-01-11 13:35:57');
INSERT INTO `f_consume` VALUES ('25', '2', '12.00', '午饭', '2018-01-12 11:37:19');
INSERT INTO `f_consume` VALUES ('26', '7', '3.60', '轻轨+公交', '2018-01-12 11:37:47');
INSERT INTO `f_consume` VALUES ('27', '3', '20.00', '晚饭', '2018-01-12 20:38:14');
INSERT INTO `f_consume` VALUES ('28', '4', '10.00', '橘子', '2018-01-12 20:38:34');
INSERT INTO `f_consume` VALUES ('29', '2', '11.00', '午饭面条', '2018-01-13 14:29:04');
INSERT INTO `f_consume` VALUES ('30', '3', '143.00', '自主烤肉(沙坪坝)', '2018-01-13 20:29:18');
INSERT INTO `f_consume` VALUES ('31', '7', '7.20', '车费', '2018-01-13 14:31:11');
INSERT INTO `f_consume` VALUES ('32', '7', '7.20', '车费', '2018-01-14 14:32:04');
INSERT INTO `f_consume` VALUES ('33', '4', '71.00', '超市', '2018-01-14 17:34:09');
INSERT INTO `f_consume` VALUES ('34', '8', '3.00', '可乐', '2018-01-14 14:34:42');
INSERT INTO `f_consume` VALUES ('35', '1', '2.00', '早饭(油条)', '2018-01-15 08:48:11');
INSERT INTO `f_consume` VALUES ('36', '7', '31.00', '车费', '2018-01-15 08:49:49');
INSERT INTO `f_consume` VALUES ('37', '2', '14.00', '午饭', '2018-01-16 16:52:12');
INSERT INTO `f_consume` VALUES ('38', '7', '3.60', '车费', '2018-01-16 16:52:35');
INSERT INTO `f_consume` VALUES ('39', '2', '14.00', '午饭', '2018-01-17 12:24:03');
INSERT INTO `f_consume` VALUES ('40', '7', '3.60', '车费', '2018-01-17 19:24:21');
INSERT INTO `f_consume` VALUES ('41', '2', '15.00', '午饭', '2018-01-18 12:24:37');
INSERT INTO `f_consume` VALUES ('42', '7', '3.60', '车费', '2018-01-18 17:24:52');
INSERT INTO `f_consume` VALUES ('43', '4', '5.00', '红牛+好粥道', '2018-01-19 10:01:07');
INSERT INTO `f_consume` VALUES ('44', '7', '3.60', '公交', '2018-01-24 09:16:09');
INSERT INTO `f_consume` VALUES ('45', '2', '14.00', '午饭', '2018-01-24 13:16:24');
INSERT INTO `f_consume` VALUES ('46', '6', '100.00', '话费', '2018-01-23 09:17:07');
INSERT INTO `f_consume` VALUES ('47', '2', '14.00', '午饭', '2018-01-23 13:17:23');
INSERT INTO `f_consume` VALUES ('48', '7', '3.60', '车费', '2018-01-23 09:19:23');
INSERT INTO `f_consume` VALUES ('49', '7', '18.60', '滴滴打车+公交', '2018-01-22 06:19:41');
INSERT INTO `f_consume` VALUES ('50', '1', '8.00', '棒棒糖+威化饼干+八宝粥', '2018-01-22 11:20:50');
INSERT INTO `f_consume` VALUES ('51', '2', '14.00', '午饭', '2018-02-01 14:15:14');
INSERT INTO `f_consume` VALUES ('52', '2', '14.00', '午饭', '2018-01-31 14:15:39');
INSERT INTO `f_consume` VALUES ('53', '7', '14.50', '打车+公交', '2018-01-31 19:16:14');
INSERT INTO `f_consume` VALUES ('54', '4', '25.50', '超市', '2018-01-31 17:16:44');
INSERT INTO `f_consume` VALUES ('55', '2', '14.00', '午饭', '2018-01-30 14:17:11');
INSERT INTO `f_consume` VALUES ('56', '1', '1.50', '早饭', '2018-01-30 08:17:28');
INSERT INTO `f_consume` VALUES ('57', '7', '22.00', '打车', '2018-01-30 20:18:13');
INSERT INTO `f_consume` VALUES ('58', '2', '14.00', '午饭', '2018-01-29 14:19:43');
INSERT INTO `f_consume` VALUES ('59', '1', '3.50', '早饭', '2018-01-29 07:19:59');
INSERT INTO `f_consume` VALUES ('60', '4', '72.00', '超市', '2018-01-25 19:22:28');
INSERT INTO `f_consume` VALUES ('61', '2', '14.00', '午饭', '2018-01-25 14:23:00');
INSERT INTO `f_consume` VALUES ('62', '7', '3.60', '公交车', '2018-01-25 18:23:19');
INSERT INTO `f_consume` VALUES ('63', '2', '14.00', '午饭', '2018-01-26 14:23:50');
INSERT INTO `f_consume` VALUES ('64', '7', '36.60', '打车+公交', '2018-01-26 14:24:28');
INSERT INTO `f_consume` VALUES ('65', '2', '14.00', '午饭', '2018-02-01 16:47:02');
INSERT INTO `f_consume` VALUES ('66', '7', '40.00', '打车', '2018-02-01 16:47:27');
INSERT INTO `f_consume` VALUES ('67', '8', '30.00', '牛奶+面包', '2018-02-01 16:47:53');
INSERT INTO `f_consume` VALUES ('68', '3', '77.00', '晚饭', '2018-02-01 21:48:04');
INSERT INTO `f_consume` VALUES ('69', '2', '14.00', '午饭', '2018-02-02 14:41:32');
INSERT INTO `f_consume` VALUES ('70', '3', '10.00', '晚饭', '2018-02-03 19:41:45');
INSERT INTO `f_consume` VALUES ('71', '7', '6.30', '轻轨', '2018-02-02 20:42:05');
INSERT INTO `f_consume` VALUES ('72', '4', '180.00', '超市', '2018-02-02 21:42:40');
INSERT INTO `f_consume` VALUES ('73', '2', '10.00', '午饭', '2018-02-03 12:43:01');
INSERT INTO `f_consume` VALUES ('74', '7', '3.60', '公交', '2018-02-03 17:43:16');

-- ----------------------------
-- Table structure for f_consume_detail
-- ----------------------------
DROP TABLE IF EXISTS `f_consume_detail`;
CREATE TABLE `f_consume_detail` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_consume_id` int(11) DEFAULT NULL COMMENT '消费主表id',
  `f_name` varchar(255) DEFAULT NULL COMMENT '消费物品名称',
  `f_price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `f_ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='消费信息详情表';

-- ----------------------------
-- Records of f_consume_detail
-- ----------------------------
INSERT INTO `f_consume_detail` VALUES ('1', '1', '棒棒糖', '1.00', '2018-01-02 10:10:42');
INSERT INTO `f_consume_detail` VALUES ('2', '1', '八宝粥', '4.00', '2018-01-02 10:10:52');
INSERT INTO `f_consume_detail` VALUES ('3', '2', '轻轨', '3.60', '2018-01-02 10:11:44');
INSERT INTO `f_consume_detail` VALUES ('4', '2', '滴滴打车', '15.20', '2018-01-02 10:12:06');
INSERT INTO `f_consume_detail` VALUES ('5', '3', '泡面', '12.50', '2018-01-02 19:06:51');
INSERT INTO `f_consume_detail` VALUES ('6', '3', '辣条', '4.50', '2018-01-02 19:06:51');
INSERT INTO `f_consume_detail` VALUES ('7', '4', '纸巾', '1.00', '2018-01-03 09:07:45');
INSERT INTO `f_consume_detail` VALUES ('8', '5', '车费', '3.60', '2018-01-03 10:09:18');
INSERT INTO `f_consume_detail` VALUES ('9', '6', '午饭', '10.00', '2018-01-03 12:05:21');
INSERT INTO `f_consume_detail` VALUES ('10', '7', '午饭', '12.00', '2018-01-04 12:05:49');
INSERT INTO `f_consume_detail` VALUES ('11', '8', '棒棒糖', '1.00', '2018-01-04 10:10:58');
INSERT INTO `f_consume_detail` VALUES ('12', '9', '哇哈哈', '1.00', '2018-01-05 10:11:14');
INSERT INTO `f_consume_detail` VALUES ('13', '10', '午饭', '12.00', '2018-01-05 14:06:09');
INSERT INTO `f_consume_detail` VALUES ('14', '11', '轻轨+公交', '11.10', '2018-01-05 20:17:20');
INSERT INTO `f_consume_detail` VALUES ('15', '11', '出租车', '14.00', '2018-01-05 23:59:33');
INSERT INTO `f_consume_detail` VALUES ('16', '12', '电影票', '60.00', '2018-01-05 22:20:27');
INSERT INTO `f_consume_detail` VALUES ('17', '12', '爆米花+可乐', '28.00', '2018-01-05 22:20:27');
INSERT INTO `f_consume_detail` VALUES ('18', '13', '轻轨', '3.60', '2018-01-06 08:38:57');
INSERT INTO `f_consume_detail` VALUES ('19', '14', '午饭', '15.00', '2018-01-06 12:39:02');
INSERT INTO `f_consume_detail` VALUES ('20', '15', '超市', '74.00', '2018-01-06 19:39:06');
INSERT INTO `f_consume_detail` VALUES ('21', '16', '轻轨', '3.60', '2018-01-08 08:40:32');
INSERT INTO `f_consume_detail` VALUES ('22', '16', '滴滴打车', '28.00', '2018-01-08 08:40:30');
INSERT INTO `f_consume_detail` VALUES ('23', '17', '红牛+哇哈哈', '6.10', '2018-01-08 08:40:06');
INSERT INTO `f_consume_detail` VALUES ('24', '18', '洗衣粉', '10.00', '2018-01-08 20:07:09');
INSERT INTO `f_consume_detail` VALUES ('25', '20', '午饭饺子', '12.00', '2018-01-09 12:08:36');
INSERT INTO `f_consume_detail` VALUES ('26', '19', '公交车', '1.80', '2018-01-09 08:08:51');
INSERT INTO `f_consume_detail` VALUES ('27', '21', '午饭', '13.00', '2018-01-10 13:38:03');
INSERT INTO `f_consume_detail` VALUES ('28', '22', '轻轨+公交', '3.60', '2018-01-10 18:02:37');
INSERT INTO `f_consume_detail` VALUES ('29', '23', '轻轨+公交', '3.60', '2018-01-11 19:36:34');
INSERT INTO `f_consume_detail` VALUES ('30', '24', '午饭', '12.00', '2018-01-11 13:36:51');
INSERT INTO `f_consume_detail` VALUES ('31', '25', '午饭', '12.00', '2018-01-12 11:39:12');
INSERT INTO `f_consume_detail` VALUES ('32', '26', '公交', '3.60', '2018-01-12 11:39:37');
INSERT INTO `f_consume_detail` VALUES ('33', '27', '晚饭', '20.00', '2018-01-12 20:39:54');
INSERT INTO `f_consume_detail` VALUES ('34', '28', '橘子', '10.00', '2018-01-12 21:40:16');

-- ----------------------------
-- Table structure for f_goods
-- ----------------------------
DROP TABLE IF EXISTS `f_goods`;
CREATE TABLE `f_goods` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_goods_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `f_goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `f_goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `f_goods_pics` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `f_goods_remark` varchar(255) DEFAULT NULL COMMENT '商品备注',
  `f_goods_status` int(2) DEFAULT NULL COMMENT '商品状态',
  `f_goods_ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `f_version` int(1) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of f_goods
-- ----------------------------

-- ----------------------------
-- Table structure for f_order
-- ----------------------------
DROP TABLE IF EXISTS `f_order`;
CREATE TABLE `f_order` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `f_order_type` int(1) DEFAULT NULL COMMENT '订单类型',
  `f_order_goods` varchar(50) DEFAULT NULL COMMENT '订单商品',
  `f_order_goods_name` varchar(255) DEFAULT NULL COMMENT '订单商品名称',
  `f_order_money` decimal(11,2) DEFAULT NULL COMMENT '订单金额',
  `f_order_user` varchar(50) DEFAULT NULL COMMENT '收货人',
  `f_order_tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `f_order_address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `f_order_remark` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `f_order_status` int(2) DEFAULT NULL COMMENT '订单状态',
  `f_order_ctime` datetime DEFAULT NULL COMMENT '订单创建时间',
  `f_version` int(2) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';

-- ----------------------------
-- Records of f_order
-- ----------------------------

-- ----------------------------
-- Table structure for f_sys_exception
-- ----------------------------
DROP TABLE IF EXISTS `f_sys_exception`;
CREATE TABLE `f_sys_exception` (
  `fid` int(11) NOT NULL,
  `f_exception_no` varchar(50) DEFAULT NULL COMMENT '异常编号',
  `f_exception_name` varchar(50) DEFAULT NULL COMMENT '异常名称',
  `f_exception_method` varchar(50) DEFAULT NULL COMMENT '异常发生方法',
  `f_exception_ctime` datetime DEFAULT NULL COMMENT '异常产生时间',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异常信息记录表';

-- ----------------------------
-- Records of f_sys_exception
-- ----------------------------

-- ----------------------------
-- Table structure for f_sys_http
-- ----------------------------
DROP TABLE IF EXISTS `f_sys_http`;
CREATE TABLE `f_sys_http` (
  `fid` int(11) NOT NULL,
  `f_http_url` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `f_http_ip` varchar(255) DEFAULT NULL COMMENT '请求ip',
  `f_http_method` varchar(50) DEFAULT NULL COMMENT '请求方式',
  `f_http_class_method` varchar(50) DEFAULT NULL COMMENT '请求方法',
  `f_http_args` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `f_http_ctime` datetime DEFAULT NULL COMMENT '请求时间',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请求信息表';

-- ----------------------------
-- Records of f_sys_http
-- ----------------------------

-- ----------------------------
-- Table structure for f_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `f_sys_log`;
CREATE TABLE `f_sys_log` (
  `fid` int(11) NOT NULL,
  `f_log_no` varchar(50) DEFAULT NULL COMMENT '日志编号',
  `f_log_method` varchar(50) DEFAULT NULL COMMENT '调用方法',
  `f_log_content` varchar(255) DEFAULT NULL COMMENT '日志内容',
  `f_log_type` varchar(10) DEFAULT NULL COMMENT '日志类型',
  `f_log_ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志记录表';

-- ----------------------------
-- Records of f_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for f_sys_type
-- ----------------------------
DROP TABLE IF EXISTS `f_sys_type`;
CREATE TABLE `f_sys_type` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `f_des` varchar(255) DEFAULT NULL COMMENT '中文名称',
  `f_ctime` datetime DEFAULT NULL,
  `f_utime` datetime DEFAULT NULL,
  `f_version` int(2) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消费类型配置';

-- ----------------------------
-- Records of f_sys_type
-- ----------------------------
INSERT INTO `f_sys_type` VALUES ('1', 'BREAKFIRST', '早餐', '2018-01-08 14:01:03', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('2', 'LUNCH', '午餐', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('3', 'DINNER', '晚餐', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('4', 'SNACK', '小吃', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('5', 'LIFE', '生活', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('6', 'COMMUNICATION', '通讯', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('7', 'TRAFFIC', '交通', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');
INSERT INTO `f_sys_type` VALUES ('8', 'ENTERTAINMENT', '娱乐', '2018-01-08 14:01:07', '2018-01-08 14:01:07', '1');

-- ----------------------------
-- Table structure for f_task
-- ----------------------------
DROP TABLE IF EXISTS `f_task`;
CREATE TABLE `f_task` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_task_name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `f_task_content` varchar(255) DEFAULT NULL COMMENT '任务内容',
  `f_task_ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `f_task_stime` datetime DEFAULT NULL COMMENT '任务开始时间',
  `f_task_etime` datetime DEFAULT NULL COMMENT '任务结束时间',
  `version` int(2) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务表';

-- ----------------------------
-- Records of f_task
-- ----------------------------

-- ----------------------------
-- Table structure for f_time_axis
-- ----------------------------
DROP TABLE IF EXISTS `f_time_axis`;
CREATE TABLE `f_time_axis` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_time_axis_title` varchar(50) DEFAULT NULL COMMENT '标题',
  `f_time_axis_type` int(2) DEFAULT NULL COMMENT '类型 1 开心 2 难过 3 ',
  `f_time_axis_content` varchar(500) DEFAULT NULL COMMENT '具体内容',
  `f_user` varchar(50) DEFAULT NULL COMMENT '所属人',
  `f_ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `f_utime` datetime DEFAULT NULL COMMENT '修改时间',
  `f_version` int(2) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='时间轴';

-- ----------------------------
-- Records of f_time_axis
-- ----------------------------
INSERT INTO `f_time_axis` VALUES ('3', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('4', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('5', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('6', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('7', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('8', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('9', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('10', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('11', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('12', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('13', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('14', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('15', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('16', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('17', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('18', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('19', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('20', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('21', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('22', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('23', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('24', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('25', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('26', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('27', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('28', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('29', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('30', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('31', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('32', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('33', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('34', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('35', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');
INSERT INTO `f_time_axis` VALUES ('36', '惹我生气', '1', '哈哈哈哈哈', '杜敏', '2017-02-02 12:13:14', '2017-02-02 12:13:14', '1');

-- ----------------------------
-- Table structure for f_user
-- ----------------------------
DROP TABLE IF EXISTS `f_user`;
CREATE TABLE `f_user` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_user_name` varchar(50) DEFAULT NULL COMMENT '登录名',
  `f_user_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `f_user_realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `f_user_login_time` datetime DEFAULT NULL COMMENT '最近登录时间',
  `f_user_status` int(2) DEFAULT NULL COMMENT '状态 0:禁用 1:启用',
  `f_user_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `f_user_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `f_user_version` int(1) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_user
-- ----------------------------
INSERT INTO `f_user` VALUES ('1', '123', '202CB962AC59075B964B07152D234B70', '恶趣味', '2017-12-28 01:28:23', '1', '2017-12-28 01:28:28', '2017-12-28 01:28:30', '1');
