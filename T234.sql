/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t234`;
CREATE DATABASE IF NOT EXISTS `t234` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t234`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/jiuyeguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/jiuyeguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/jiuyeguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'hanye_types', '所在行业', 1, '行业1', NULL, NULL, '2022-04-13 08:35:17'),
	(2, 'hanye_types', '所在行业', 2, '行业2', NULL, NULL, '2022-04-13 08:35:17'),
	(3, 'hanye_types', '所在行业', 3, '行业3', NULL, NULL, '2022-04-13 08:35:17'),
	(4, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-13 08:35:17'),
	(5, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-13 08:35:17'),
	(6, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2022-04-13 08:35:17'),
	(7, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2022-04-13 08:35:17'),
	(8, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2022-04-13 08:35:17'),
	(9, 'zhaopin_types', '招聘岗位', 4, '招聘岗位4', NULL, NULL, '2022-04-13 08:35:17'),
	(10, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-13 08:35:18'),
	(11, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-13 08:35:18'),
	(12, 'jianli_sex_types', '性别', 1, '男', NULL, NULL, '2022-04-13 08:35:18'),
	(13, 'jianli_sex_types', '性别', 2, '女', NULL, NULL, '2022-04-13 08:35:18'),
	(14, 'yuanxi_types', '院系类型', 1, '院系类型1', NULL, NULL, '2022-04-13 08:35:18'),
	(15, 'yuanxi_types', '院系类型', 2, '院系类型2', NULL, NULL, '2022-04-13 08:35:18'),
	(16, 'yuanxi_types', '院系类型', 3, '院系类型3', NULL, NULL, '2022-04-13 08:35:18'),
	(17, 'yuanxi_types', '院系类型', 4, '院系类型4', NULL, NULL, '2022-04-13 08:35:18'),
	(18, 'hanye_types', '所在行业', 4, '行业4', NULL, '', '2022-04-13 09:33:58'),
	(20, 'jiuye_types', '是否就业', 1, '未就业', NULL, NULL, '2022-04-13 09:33:58'),
	(21, 'jiuye_types', '是否就业', 2, '已就业', NULL, NULL, '2022-04-13 09:33:58'),
	(22, 'zhaopin_types', '招聘岗位', 5, '招聘岗位5', NULL, '', '2022-04-14 01:30:19');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `hanye_types` int DEFAULT NULL COMMENT '所在行业',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `gongsi_content` text COMMENT '公司简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='公司';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `hanye_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '公司1', '123456', '公司名称111', 4, '17703786901', '1@qq.com', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '<p>公司简介111</p>', 1, '2022-04-13 08:35:25'),
	(2, '公司2', '123456', '公司名称2', 1, '17703786902', '2@qq.com', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '公司简介2', 1, '2022-04-13 08:35:25'),
	(3, '公司3', '123456', '公司名称3', 3, '17703786903', '3@qq.com', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '公司简介3', 1, '2022-04-13 08:35:25');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 Search111 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历名称  Search111 ',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuanxi_types` int DEFAULT NULL COMMENT '院系',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_sex_types`, `jianli_phone`, `jianli_photo`, `yuanxi_types`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 3, '16450005250590', '简历名称1', '姓名1', 1, '17703786901', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 3, '教育经历1', '实习或工作经历1', '个人介绍1', '2022-04-13 08:35:25'),
	(2, 2, '164500052505918', '简历名称4', '姓名4', 2, '17703786904', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 2, '教育经历4', '实习或工作经历4', '个人介绍4', '2022-04-13 08:35:25'),
	(3, 1, '164500052505915', '简历名称5', '姓名5', 1, '17703786905', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 1, '教育经历5', '实习或工作经历5', '个人介绍5', '2022-04-13 08:35:25');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'v36yipgc6xme7hlzplfflftow2b2kl99', '2022-04-13 08:41:09', '2022-04-13 10:37:41'),
	(2, 6, 'admin', 'users', '管理员', 'uvdzafw8qij3wdxxfhmuc7nwpcvf5lvu', '2022-04-13 09:09:53', '2024-06-21 09:30:12'),
	(3, 1, 'a1', 'gongsi', '公司', 'a6d0i3rpb32y100e303pekkk7yp24mox', '2022-04-13 09:27:15', '2024-06-21 09:31:19'),
	(4, 1, 'a1', 'yonghu', '学生', 'kxm0lvmi9d0j4wxj4keukwv79bbssw1k', '2022-04-14 01:21:33', '2024-06-21 09:31:44'),
	(5, 3, 'a3', 'yonghu', '学生', 'exz0gmx119lyslpdiifyvs702ph8bhh0', '2022-04-14 01:29:30', '2022-04-14 02:29:31');

DROP TABLE IF EXISTS `toudi`;
CREATE TABLE IF NOT EXISTS `toudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='简历投递';

DELETE FROM `toudi`;
INSERT INTO `toudi` (`id`, `jianli_id`, `zhaopin_id`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(2, 2, 2, '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(3, 3, 3, '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(12, 3, 10, '2022-04-13 09:05:04', '2022-04-13 09:05:04'),
	(13, 3, 11, '2022-04-13 09:33:28', '2022-04-13 09:33:28'),
	(14, 3, 9, '2022-04-14 01:21:56', '2022-04-14 01:21:56'),
	(15, 1, 11, '2022-04-14 01:29:45', '2022-04-14 01:29:45');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `xueshengjiuye`;
CREATE TABLE IF NOT EXISTS `xueshengjiuye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xueshengjiuye_uuid_number` varchar(200) DEFAULT NULL COMMENT '就业编号 Search111  ',
  `xueshengjiuye_address` varchar(200) DEFAULT NULL COMMENT '就业地点 Search111  ',
  `xueshengjiuye_gongsi` varchar(200) DEFAULT NULL COMMENT '就业公司 Search111  ',
  `xueshengjiuye_zhiwei` varchar(200) DEFAULT NULL COMMENT '就业职位 Search111  ',
  `xueshengjiuye_xinzi` decimal(10,2) DEFAULT NULL COMMENT '就业薪资/月 Search111  ',
  `jiuye_time` timestamp NULL DEFAULT NULL COMMENT '就业时间',
  `xueshengjiuye_content` text COMMENT '就业备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='学生就业信息';

DELETE FROM `xueshengjiuye`;
INSERT INTO `xueshengjiuye` (`id`, `yonghu_id`, `xueshengjiuye_uuid_number`, `xueshengjiuye_address`, `xueshengjiuye_gongsi`, `xueshengjiuye_zhiwei`, `xueshengjiuye_xinzi`, `jiuye_time`, `xueshengjiuye_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1649899364039', '地址111', '公司111', '职位111', 3000.00, '2022-04-12 16:00:00', '<p>市规划局健康</p>', '2022-04-14 01:23:06', '2022-04-14 01:23:06');

DROP TABLE IF EXISTS `yaoqing`;
CREATE TABLE IF NOT EXISTS `yaoqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `mianshi_time` timestamp NULL DEFAULT NULL COMMENT '面试时间',
  `mianshi_address` varchar(200) DEFAULT NULL COMMENT '面试地点',
  `mianshi_text` varchar(200) DEFAULT NULL COMMENT '面试需知',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '邀请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='邀请面试';

DELETE FROM `yaoqing`;
INSERT INTO `yaoqing` (`id`, `jianli_id`, `zhaopin_id`, `mianshi_time`, `mianshi_address`, `mianshi_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '2022-04-13 08:35:25', '面试地点1', '面试需知1', '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(2, 2, 2, '2022-04-13 08:35:25', '面试地点2', '面试需知2', '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(3, 3, 3, '2022-04-13 08:35:25', '面试地点3', '面试需知3', '2022-04-13 08:35:25', '2022-04-13 08:35:25'),
	(12, 2, 11, '2022-02-17 14:00:22', '面试地点999', '面试须知内容', '2022-04-13 09:28:04', '2022-04-13 09:28:04'),
	(13, 3, 11, '2022-02-18 16:00:00', '地点999', '面试须知内容详情999', '2022-04-13 09:37:29', '2022-04-13 09:37:29'),
	(14, 2, 11, '2022-04-14 01:59:26', '地点1111', '面试携带简历 携带笔', '2022-04-14 01:27:16', '2022-04-14 01:27:16'),
	(15, 1, 11, '2022-04-13 16:00:00', '地点1111', '携带笔  携带简历  按时到达', '2022-04-14 01:31:56', '2022-04-14 01:31:56');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `jiuye_types` int DEFAULT NULL COMMENT '是否就业 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `jiuye_types`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '学生1', '123456', '用户姓名11', '17703786901', '410224199610232001', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 1, 2, '1@qq.com', '2022-04-13 08:35:25'),
	(2, '学生2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 2, 2, '2@qq.com', '2022-04-13 08:35:25'),
	(3, '学生3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', 1, 1, '3@qq.com', '2022-04-13 08:35:25');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数  Search111',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='招聘信息';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `gongsi_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zhaopin_types`, `zhaopin_renshu_number`, `shangxia_types`, `zhaopin_content`, `create_time`) VALUES
	(1, 1, '招聘信息名称1', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 3, 452, 1, '招聘信息详情1', '2022-04-13 08:35:25'),
	(2, 2, '招聘信息名称2', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 3, 146, 1, '招聘信息详情2', '2022-04-13 08:35:25'),
	(3, 2, '招聘信息名称3', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 1, 261, 1, '招聘信息详情3', '2022-04-13 08:35:25'),
	(4, 3, '招聘信息名称4', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 3, 42, 1, '招聘信息详情4', '2022-04-13 08:35:25'),
	(5, 3, '招聘信息名称5', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 2, 472, 1, '招聘信息详情5', '2022-04-13 08:35:25'),
	(6, 2, '招聘信息名称6', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇6', '上班地点6', '联系人6', '17703786906', 3, 326, 1, '招聘信息详情6', '2022-04-13 08:35:25'),
	(7, 3, '招聘信息名称7', 'http://localhost:8080/jiuyeguanli/upload/photo.jpg', '薪资待遇7', '上班地点7', '联系人7', '17703786907', 2, 246, 1, '招聘信息详情7', '2022-04-13 08:35:25'),
	(8, 2, '招聘信息名称8', 'http://localhost:8080/jiuyeguanli/upload/photo1.jpg', '薪资待遇8', '上班地点8', '联系人8', '17703786908', 1, 134, 1, '招聘信息详情8', '2022-04-13 08:35:25'),
	(9, 2, '招聘信息名称9', 'http://localhost:8080/jiuyeguanli/upload/photo2.jpg', '薪资待遇9', '上班地点9', '联系人9', '17703786909', 1, 66, 1, '招聘信息详情9', '2022-04-13 08:35:25'),
	(10, 3, '招聘信息名称10', 'http://localhost:8080/jiuyeguanli/upload/photo3.jpg', '薪资待遇10', '上班地点10', '联系人10', '17703786910', 2, 456, 1, '招聘信息详情10', '2022-04-13 08:35:25'),
	(11, 1, '招聘信息名称11', 'http://localhost:8080/jiuyeguanli/upload/photo4.jpg', '薪资待遇11', '上班地点11', '联系人11', '17703786911', 3, 256, 1, '招聘信息详情11', '2022-04-13 08:35:25'),
	(12, 1, '诚招技术人员', 'http://localhost:8080/jiuyeguanli/upload/1649899574098.jpg', '3000', '地点111', '张思', '17703786969', 3, 10, 1, '<p>市规划局</p>', '2022-04-14 01:26:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
