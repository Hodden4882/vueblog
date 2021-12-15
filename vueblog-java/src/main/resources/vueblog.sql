DROP TABLE IF EXISTS `m_blog`;
CREATE TABLE `m_blog` (
`id` bigint(20) NOT NULL AUTO_INCREMENT,
`user_id` bigint(20) NOT NULL,
`title` varchar(255) NOT NULL,
`description` varchar(255) NOT NULL,
`content` longtext,
`created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
`status` tinyint(4) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of m_blog
-- ----------------------------
insert into `m_blog` (`id`, `user_id`, `title`, `description`, `content`, `created`, `status`) values('11','1','測試','初始測試','內容??','2021-12-15 13:53:25','0');
insert into `m_blog` (`id`, `user_id`, `title`, `description`, `content`, `created`, `status`) values('12','1','測試2','上傳之前一次測試','* 測試123','2021-12-15 14:12:41','0');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
`id` bigint(20) NOT NULL AUTO_INCREMENT,
`username` varchar(64) DEFAULT NULL,
`avatar` varchar(255) DEFAULT NULL,
`email` varchar(64) DEFAULT NULL,
`password` varchar(64) DEFAULT NULL,
`status` int(5) NOT NULL,
`created` datetime DEFAULT NULL,
`last_login` datetime DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'hodden', 'https://i.imgur.com/maixVua.jpeg', null, '96e79218965eb72c92a549dd5a330112', '0', '2021-12-15 00:00:00', null);