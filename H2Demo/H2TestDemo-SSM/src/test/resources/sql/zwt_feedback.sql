


CREATE TABLE `zfb_app_config` (
  `zfb_app_config_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '建议配置表id',
  `zfb_app_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'app名称',
  `zfb_position_show` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示位置',
  `zfb_position_required` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否位置必填 1必填 2不必填',
  `zfb_photo_show` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示图片',
  `zfb_photo_required` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否图片必填 1必填 2不必填',
  `zfb_app_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'appId',
  `zfb_app_key` varchar(64) NOT NULL DEFAULT '' COMMENT 'appkey',
  `zfb_cs_user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '客服id',
  `zfb_cs_feed_id` varchar(25) NOT NULL DEFAULT '' COMMENT '客服名片id',
  `zfb_create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `zfb_upate_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `zfb_cs_employee_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '员工id',
  `zfb_cs_employee_name` varchar(25) NOT NULL DEFAULT '' COMMENT '员工名称',
  PRIMARY KEY (`zfb_app_config_id`),
  UNIQUE KEY `zfb_app_id` (`zfb_app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;



CREATE TABLE `zfb_app_config_tag` (
  `zfb_app_config_tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '建议标签表id',
  `zfb_app_config_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '建议配置表id',
  `zfb_app_config_tag_content` varchar(100) NOT NULL DEFAULT '' COMMENT '建议标签内容',
  `zfb_rank` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '建议标签的配置位置',
  PRIMARY KEY (`zfb_app_config_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 ;



CREATE TABLE `zfb_suggestion` (
  `zfb_suggestion_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户建议id',
  `zfb_user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `zfb_feed_id` varchar(25) NOT NULL DEFAULT '' COMMENT '用户名片id',
  `zfb_position` varchar(50) NOT NULL DEFAULT '' COMMENT '位置坐标',
  `zfb_address` varchar(50) NOT NULL DEFAULT '' COMMENT '详细位置',
  `zfb_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `zfb_process_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '处理状态   1未处理 2已处理 ',
  `zfb_create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `zfb_update_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '处理时间',
  `zfb_app_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zfb_app_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'app名字',
  PRIMARY KEY (`zfb_suggestion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1282627 DEFAULT CHARSET=utf8 ;



CREATE TABLE `zfb_suggestion_feedback` (
  `zfb_suggestion_feedback_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '客服反馈表id',
  `zfb_suggestion_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户建议id',
  `zfb_cs_user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '客服id',
  `zfb_cs_feed_id` varchar(25) NOT NULL DEFAULT '' COMMENT '客服名片id',
  `zfb_cs_org_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '组织id',
  `zfb_suggestion_feedback_message` varchar(100) NOT NULL DEFAULT '' COMMENT '反馈信息',
  `zfb_app_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zfb_create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `zfb_cs_employee_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '员工id',
  `zfb_cs_employee_name` varchar(25) NOT NULL DEFAULT '' COMMENT '员工名称',
  PRIMARY KEY (`zfb_suggestion_feedback_id`),
  KEY `zfb_feedback_suggestion_id_index` (`zfb_suggestion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;



CREATE TABLE `zfb_suggestion_img` (
  `zfb_suggestion_img_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `zfb_suggestion_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户建议id',
  `zfb_suggestion_img_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图片内容',
  `zfb_suggestion_img_width` int(10) unsigned NOT NULL COMMENT '图片宽度',
  `zfb_suggestion_img_height` int(10) unsigned NOT NULL COMMENT '图片长度',
  PRIMARY KEY (`zfb_suggestion_img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;



CREATE TABLE `zfb_suggestion_tag` (
  `zfb_suggestion_tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户建议-建议关联表id',
  `zfb_app_config_tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '建议标签表id',
  `zfb_suggestion_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户建议id',
  `zfb_suggestion_content` varchar(200) NOT NULL DEFAULT '""' COMMENT '用户建议',
  PRIMARY KEY (`zfb_suggestion_tag_id`),
  KEY `zfb_tag_suggestion_id_index` (`zfb_suggestion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3931129 DEFAULT CHARSET=utf8 ;


insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('2','大赞北京9.0','1','0','0','0','10002','10002','144434','1450017622967057','1502174743879','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('3','积分落户','1','0','0','0','10003','10003','144434','1450017622967057','1502174848871','1502354602370','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('5','公积金7.0','0','1','0','0','10005','10005','144434','1450017622967057','1502175911491','1502186152155','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('6','发生在','1','0','0','0','10006','10006','144434','1450017622967057','1502270549695','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('7','的飞洒发','0','0','0','0','10007','10007','144434','1450017622967057','1502270573031','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('8','沙发上','1','0','0','0','10008','10008','144434','1450017622967057','1502270605992','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('9','啊发大水发打f','1','0','0','0','10009','10009','144434','1450017622967057','1502270628773','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('10','阿范德萨的飞洒','1','0','0','0','10010','10010','144434','1450017622967057','1502270653511','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('11','滴答滴滴答滴滴答滴答滴答滴多','1','0','0','0','10011','10011','144434','1450017622967057','1502270673372','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('12','啊啊啊啊啊啊啊啊啊啊','1','0','0','0','10012','10012','144434','1450017622967057','1502270697584','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('13','德萨范德萨范德萨范德萨','1','0','0','0','10013','10013','144434','1450017622967057','1502271118906','0','19814662524231773','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('15','1+1','0','0','0','0','10015','10015','600194','1350202765898378','1502854713512','1502892009211','19814662524231779','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('16','3214321','1','0','0','0','10016','10016','600194','1350202765898378','1502891486532','1502892226119','19814662524231779','意见反馈测试');
insert into `zfb_app_config` (`zfb_app_config_id`, `zfb_app_name`, `zfb_position_show`, `zfb_position_required`, `zfb_photo_show`, `zfb_photo_required`, `zfb_app_id`, `zfb_app_key`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_create_time`, `zfb_upate_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('17','fsda','1','0','0','0','122222222224','fdsafds','0','1450017622967057','1503541822521','0','19814662524231773','意见反馈测试');


insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('5','2','大赞-棒棒哒','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('6','2','北京-棒棒哒','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('7','2','大赞北京棒棒哒','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('8','2','大家都棒棒哒','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('23','5','公积金不好用','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('24','5','需要改进','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('25','5','我不管','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('26','5','给我去改','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('27','5','不改请吃饭','5');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('28','5','还要吃贵的','6');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('37','6','1','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('38','6','2','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('39','6','3','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('40','7','啊撒范德萨','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('41','7','范德萨','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('42','7','放大法','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('43','7','都是','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('44','8','啊 发生','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('45','8','啊 fdsa','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('46','8','啊','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('47','8','范德萨','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('48','9','范德萨范德萨sa','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('49','9','的飞洒','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('50','9','安抚的','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('51','9','奋斗地方发','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('52','9','奋斗','5');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('53','10','发发发发发发付付付付付付付付','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('54','10','发发发发发发付付付付付付','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('55','10','发发发发发发付付付付付付付','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('56','10','发点点点多多多多多','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('57','11','发点点点多多','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('58','11','发反反复复','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('59','11','奋斗','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('60','11','滴答滴滴答滴滴答滴答滴答滴多多多多多多多','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('61','12','范德萨啊啊啊啊啊啊啊','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('62','12','撒啊啊啊啊啊啊啊啊','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('63','12','发发发发发发付付付付','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('64','12','啊啊啊啊啊啊啊啊啊啊啊','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('65','12','啊啊啊啊啊啊啊啊啊','5');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('66','13','暗室逢灯','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('67','13','安抚发付付付','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('68','13','阿范德萨','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('93','3','落户啦','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('94','3','拿积分啦','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('95','3','啦啦啦','3');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('96','3','积分落户啦','4');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('97','3','fdsafdasfdsaf','5');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('98','3','fdsafdasffffffffffff','6');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('121','15','4343','0');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('125','16','的撒范德萨发4564','0');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('126','16','发大放送','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('127','16','发疯似的111','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('128','17','afdsafd','0');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('129','17','safsda','1');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('130','17','fsdafsd','2');
insert into `zfb_app_config_tag` (`zfb_app_config_tag_id`, `zfb_app_config_id`, `zfb_app_config_tag_content`, `zfb_rank`) values('131','17','afdsa','3');








insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('27','14785','','经度,纬度','地址','','2','1502096743316','0','10000','随手拍');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('28','9361','','经度,纬度','地址','','1','1502162031514','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('29','9361','','经度,纬度','地址','','1','1502163472139','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('30','9361','','经度,纬度','地址','','2','1502163480211','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('31','9361','','经度,纬度','地址','','1','1502163494110','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('32','9361','','经度,纬度','地址','','1','1502163516147','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('33','9361','','经度,纬度','地址','','1','1502176358083','0','10002','大赞北京9.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('34','9361','','经度,纬度','地址','','2','1502176373332','0','10002','大赞北京9.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('35','312697','','经度,纬度','地址','','2','1502178085081','0','10005','公积金7.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('36','374106','','经度,纬度','地址','','2','1502180435503','0','10004','积分落户1.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('37','374106','','经度,纬度','地址','','1','1502180445928','0','10004','积分落户1.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('38','374106','','经度,纬度','地址','','1','1502180454720','0','10004','积分落户1.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('39','374611','','经度,纬度','地址','','1','1502180471531','0','10002','大赞北京9.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('40','374611','','经度,纬度','地址','','1','1502180481658','0','10002','大赞北京9.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('41','374611','','经度,纬度','地址','','1','1502180494445','0','10002','大赞北京9.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('42','374106','','经度,纬度','地址','','1','1502180515572','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('43','374106','','经度,纬度','地址','','1','1502180519850','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('44','374106','','经度,纬度','地址','','1','1502181328662','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('45','12306','','39.995256767860596,116.45163614954173','北京市朝阳区南湖中园316号思源大厦','','2','1502258692708','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('46','12306','','','','','1','1502259372678','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('47','363485','','','','','2','1502260035143','0','10001','随手拍2.0');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('48','374106','','39.99508508277032,116.45133227436204','北京市朝阳区望京西路152号附近','','1','1502350940064','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('49','363485','','39.994981724998546,116.45117281825323','北京市朝阳区南湖西园甲205号楼1层8号底商','','1','1502352197109','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('50','363485','','39.99462744451038,116.45104248029487','北京市朝阳区望京K6区季景沁园一期第02号商铺','','1','1502352287484','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('51','363485','','39.994840533165565,116.45108557984456','北京市朝阳区南湖西园甲205号楼1层','','1','1502352310654','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('52','363485','','','','','1','1502353875212','0','10003','积分落户');
insert into `zfb_suggestion` (`zfb_suggestion_id`, `zfb_user_id`, `zfb_feed_id`, `zfb_position`, `zfb_address`, `zfb_mobile`, `zfb_process_state`, `zfb_create_time`, `zfb_update_time`, `zfb_app_id`, `zfb_app_name`) values('53','363485','','39.994981724998546,116.45117281825323','北京市朝阳区南湖西园甲205号楼1层8号底商','','1','1502354238234','0','10003','积分落户');




insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('19','27','144434','1450017622967057','3147281031955094','dfgjherhiqrhkl;awevjhqwer','10000','1502098780137','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('20','35','144434','1450017622967057','3147281031955094','准！！','10005','1502179451052','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('21','34','144434','1450017622967057','3147281031955094','准！！啦阿里','10002','1502179649046','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('22','30','144434','1450017622967057','3147281031955094','帅帅哒','10001','1502181234541','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('23','47','144434','1450017622967057','3147281031955094','        要更好哦','10001','1502262085050','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('24','36','144434','1450017622967057','3147281031955094','        要更好哦谁谁谁水水水水所所所所','10004','1502262122445','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('25','45','144434','1450017622967057','3147281031955094','这个地址正确','10003','1502263835907','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('26','79','600194','1350202765898378','3147281031955094','我们看看','10003','1502846736981','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('27','78','600194','1350202765898378','3147281031955094','我就是看看','10003','1502850186086','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('28','76','600194','1350202765898378','3147281031955094','555','10003','1502854948526','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('29','77','600194','1350202765898378','3147281031955094','fdsafds','10003','1502891364413','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('30','75','600194','1350202765898378','3147281031955094','发达的范德萨·','10003','1502936745236','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('31','74','600194','1350202765898378','3147281031955094','32123131223','10003','1502936895348','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('32','73','600194','1350202765898378','3147281031955094','2132132','10003','1502937172616','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('33','72','600194','1350202765898378','3147281031955094','21321','10003','1502937488086','19814662524231779','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('34','102','144434','1450017622967057','3147281031955094','个发','10003','1503050870489','19814662524231773','意见反馈测试');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('35','100','0','1450017622967057','3147281031955094','gfsdgfsdgsdf ','0','1503059916519','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('36','71','0','1450017622967057','3147281031955094','sgfsdgfdsgfd','10003','1503060632036','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('37','70','0','1450017622967057','3147281031955094','zvzvzvzvzvzvzv','10003','1503060698126','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('38','69','0','1450017622967057','3147281031955094','fdasfd','10003','1503061621854','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('39','68','0','1450017622967057','3147281031955094','fdsa','10003','1503062170926','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('40','67','0','1450017622967057','3147281031955094','afdasfdas','10003','1503062585529','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('41','66','0','1450017622967057','3147281031955094','afdsafsda','10003','1503062989264','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('42','65','0','1450017622967057','3147281031955094','afdsa','10003','1503063307155','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('43','112','0','1450017622967057','3147281031955094','范德萨范德萨','10003','1503281986896','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('44','113','0','1450017622967057','3147281031955094','发大水发呆三','10003','1503282362375','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('45','115','0','1450017622967057','3147281031955094','范德萨发生大','10003','1503283266936','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('46','114','0','1450017622967057','3147281031955094','fdasf','10003','1503283704774','10856','t00姚华新');
insert into `zfb_suggestion_feedback` (`zfb_suggestion_feedback_id`, `zfb_suggestion_id`, `zfb_cs_user_id`, `zfb_cs_feed_id`, `zfb_cs_org_id`, `zfb_suggestion_feedback_message`, `zfb_app_id`, `zfb_create_time`, `zfb_cs_employee_id`, `zfb_cs_employee_name`) values('47','117','0','1450017622967057','3147281031955094','fas ','10003','1503285255737','10856','t00姚华新');









insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('55','49','27','到底是啥');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('56','0','30','阿范德萨');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('57','1','30','随手拍太帅了');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('58','2','30','随手拍好好哦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('59','0','34','大赞大赞大大赞');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('60','7','34','大赞北京棒棒哒');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('61','8','34','大家都棒棒哒');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('62','0','35','失敬失敬');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('63','17','35','公积金不好用');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('64','18','35','需要改进');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('65','19','35','我不管');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('66','20','35','给我去改');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('67','21','35','不改请吃饭');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('68','22','35','还要吃贵的');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('69','0','36','的飞洒发付付付付付付付付付付付付付付付付付');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('70','14','36','拿积分啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('71','15','36','啦啦啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('72','16','36','积分落户啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('73','0','37','发发发发发发付付付付付付付付');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('74','14','37','拿积分啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('75','15','37','啦啦啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('76','13','38','落户啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('77','14','38','拿积分啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('78','15','38','啦啦啦');
insert into `zfb_suggestion_tag` (`zfb_suggestion_tag_id`, `zfb_app_config_tag_id`, `zfb_suggestion_id`, `zfb_suggestion_content`) values('79','6','39','北京-棒棒哒');


