DROP TABLE IF EXISTS `compliances`;

CREATE TABLE `compliances` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`product` VARCHAR(256) NOT NULL,
	`edition` VARCHAR(256),
	`entitlement_qty` TEXT,
	`installs` SMALLINT,
	`value` FLOAT,
	`unit_cost` FLOAT,
	`entitlement_status` ENUM("RED","AMBER","GREEN"), 
	`compliance` SMALLINT,
	`compliance_value` FLOAT,
	`compliance_status` ENUM("RED","AMBER","GREEN"),
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `compliances` VALUES
(1, "3dsmax ancillary install", "1",                "0",     1, 0.0, 0.0,          "GREEN", -1, 0.0, "RED", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(2, "ACTRIX TECHNICAL",         "1",                "0",     0, 303.0, 303.0,      "AMBER",  1, 303.0, "GREEN", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(3, "ANIMATOR STUDIO",          "V1.1",             "1.1",   1, 476.0, 476.0,      "AMBER",  1, 476.0, "GREEN", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(4, "AOLP AutoCAD",             "LT 2002 MP LVL-B", "2002",  35,17185.0, 491.0,    "AMBER", 35, 17185.0, "GREEN", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(5, "AutoCAD",                  "15.0",             "0",     30,0.0, 0.0,          "RED",   -30, 0.0, "RED", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(6, "AutoCAD",                  "2000",             "2000",  59, 0.0, 0.0,      "GREEN", -59, 0.0, "RED", "2010-03-16 12:41:13", "2010-03-22 15:54:12"),
(7, "AutoCAD",                  "2000i",            "2000i", 66, 0.0, 0.0,      "AMBER", -66, 0.0, "RED", "2010-03-16 12:41:13", "2010-03-22 15:54:12");

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256) NOT NULL,
	`hashed_password` VARCHAR(256),
	`salt` VARCHAR(256),
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `users` VALUES
(1,"duncan","d9464c082551a64fdd0cbefd7d29c3cffd2def7a","21586780800.256940676954111","2010-03-16 12:41:13","2010-03-16 12:40:58" ),
(2,"john","2c6764f2c74637acc1add82efba338112b022bac","700998967158800.872774635520514", "2010-03-16 12:48:13","2010-03-16 12:55:58"),
(3,"tim","1fb8ccbbbf7902743a7c4d60cb09b04ddb07b7ac","700998972022800.579487216983946", "2010-03-22 15:59:12","2010-03-22 15:59:12"),
(4,"fraz","1fb8ccbbbf7902743a7c4d60cb09b04ddb07b7ac","700998972022800.579487216983946", "2010-03-22 15:59:12","2010-03-22 15:59:12");


DROP TABLE IF EXISTS 'publishers';

CREATE TABLE 'publishers' (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR (256) NOT NULL,
	`shortname` VARCHAR (256),
	`description` TEXT,
  `created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `publishers` VALUES
(1, "Adobe Inc.","Adobe","Design, Creative and Media Management","2010-03-18 18:25:09","2010-03-18 18:25:09"),
(2, "Autodesk Inc.","Autodesk","Computer Aided Design (CAD)","2010-03-18 18:26:17","2010-03-18 18:26:17"),
(3, "Badley Geoscience Limited","Badley Geoscience","","2010-03-18 18:26:57","2010-03-18 18:26:57"),
(4, "ePulse Limited","ePulse","","2010-03-18 18:27:20","2010-03-18 18:27:20"),
(5, "Globalview Software Inc","Globalview","","2010-03-18 18:27:57","2010-03-18 18:27:57"),
(6, "Informatica Corporation","Informatica","","2010-03-18 18:28:26","2010-03-18 18:28:26"),
(7, "Information Builders Inc","Information Builders","","2010-03-18 18:29:13","2010-03-18 18:29:13"),
(8, "Open Text Corporation","Open Text","","2010-03-18 18:29:40","2010-03-18 18:29:40"),
(9, "Primavera System Inc.","Primavera","","2010-03-18 18:30:08","2010-03-18 18:30:08"),
(10, "Quest Software UK Ltd","Quest","","2010-03-18 18:30:33","2010-03-18 18:30:33"),
(11, "Salesforce.com Inc.","Salesforce","","2010-03-18 18:31:09","2010-03-18 18:31:09"),
(12, "SAS Institute Inc.","SAS","","2010-03-18 18:31:32","2010-03-18 18:31:32"),
(13, "Serverware Group plc","Serverware","","2010-03-18 18:32:00","2010-03-18 18:32:00"),
(14, "Silicon Graphics Inc.","Silicon Graphics","","2010-03-18 18:32:24","2010-03-18 18:32:24"),
(15, "The Mathworks Limited","The Mathworks","","2010-03-18 18:32:50","2010-03-18 18:32:50"),
(16, "Websense Inc.","Websense","","2010-03-18 18:33:21","2010-03-18 18:33:21");
