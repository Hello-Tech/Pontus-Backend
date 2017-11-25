SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '授权信息',
  `created_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  `updated_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS  `users_property`;
CREATE TABLE `users_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'user id',
  `uk` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user property name',
  `uv` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user property value',
  `created_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  `updated_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_propery_unique` (`uid`,`uk`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS  `users_auth`;
CREATE TABLE `users_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'user id',
  `device_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user device id',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user device token',
  `created_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  `updated_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS  `users_device`;
CREATE TABLE `users_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '设备名称',
  `device_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '设备类型:1,android,2,ios,3,web',
  `extra_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '',
  `created_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  `updated_at` timestamp NOT NULL DEFAULT '1971-01-01 01:01:01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS  `systems`;
CREATE TABLE `systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` int(11) NOT NULL DEFAULT '0',
  `system_name` varchar(255)  NOT NULL,
  `system_value` varchar(255)  NOT NULL,
  PRIMARY KEY (`id`)
);


SET FOREIGN_KEY_CHECKS = 1;

