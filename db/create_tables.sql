DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256) NOT NULL,
  `serial` VARCHAR(256) ,
  `assetnumber` VARCHAR(256),
  `deploymentstatus` VARCHAR(256),
  `asset_label` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
);

INSERT INTO `assets` VALUES
(1, "CI-55577","YBER087308","241728","Current","","",""),
(2, "Pocket_PC","P2CK5030QMS","240796","","","",""),
(3, "DI-39984","UYSO982735","566372","Current","","",""),
(4, "Pocket_PC","HDJSK738272","302993","","","",""),
(5, "FY-37483","TYSU839920","576446","Current","","",""),
(6, "Pocket_PC","TSID263782S","444306","","","",""),
(7, "WS-99283","WSPO983300","548839","Current","","",""),
(8, "Pocket_PC","QDXR748392Y","332441","","","",""),
(9, "CI-55577","WWPO011139","664430","Current","","",""),
(10, "Pocket_PC","EEOI112334X","233220","","","","");

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

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`asset_id` VARCHAR(256) NOT NULL,
  `make` VARCHAR(256) ,
  `model` VARCHAR(256),
  `serial` VARCHAR(256) ,
  `network_user_name` VARCHAR(256),
  `node` VARCHAR(256),
	`name` VARCHAR(256) NOT NULL,
  `os` VARCHAR(256),
  `os_service_level` VARCHAR(256),
  `chassis` VARCHAR(256),
	`domain` VARCHAR(256) NOT NULL,
  `ip` VARCHAR(256) ,
  `processor_count` TINYINT,
  `processor_type` VARCHAR(256),
  `processor_speed` SMALLINT,
  `ram` SMALLINT,
  `bios_date` DATETIME,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  `mac_address` VARCHAR(256) ,
  `location_id` SMALLINT,
  PRIMARY KEY (`id`)
);

INSERT INTO `devices` VALUES
(1, "393744","Dell","Latitude D410","QZSD798A","1","","","Windows XP","2","Network Portable","ARAMIS","170.22.33.87",1,"Intel Core Duo",1733,2048,"","","","",0),
(2, "534783","Dell","Latitude D410","KASH9887","3","","","Windows XP","2","Network Portable","ARAMIS","170.22.33.62",1,"x64 Family 6 Model 15 Stepping 6 Intel Core 2",1733,4096,"","","","",0),
(3, "122219","HP","Touchsmart 401","AJSH8763","1","","","Windows 7","0","Network Portable","ARAMIS","170.22.33.89",1,"",1733,4096,"","","","",0),
(4, "122223","HP","Touchsmart 501","SHDJ8943","4","","","Windows 7","0","Network Portable","ARAMIS","170.22.33.93",1,"",2256,4096,"","","","",0),
(5, "534789","HP","Touchsmart 1200","GHHS7738","3","","","Windows 7","0","Network Portable","ARAMIS","170.22.33.22",1,"",1833,4096,"","","","",0),
(6, "534723","Dell","Latitude D500","JKDK9384","2","","","Windows Vista","2","Network Portable","ARAMIS","170.22.33.88",1,"",2200,4096,"","","","",0),
(7, "534801","Dell","Optiplex 220","AAEE9388","2","","","Windows 7 Pro","0","Network Portable","ARAMIS","170.22.33.91",2,"",2200,4096,"","","","",0),
(8, "393765","Dell","Optiplex 220","SIOP2382","2","","","Windows 7 Pro","0","Network Portable","ARAMIS","170.22.33.95",2,"",2200,4096,"","","","",0);

DROP TABLE IF EXISTS `entitlements`;

CREATE TABLE `entitlements`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `installation_id` SMALLINT,
  `version_id` SMALLINT,
	`region` VARCHAR(256) NOT NULL,
	`agreement_type` VARCHAR(256) NOT NULL,
	`licence_type` VARCHAR(256) NOT NULL,
  `location_id` SMALLINT,
  `quantity` SMALLINT,
  `cost` SMALLINT,
	`currency` VARCHAR(256) NOT NULL,
	`document_reference` VARCHAR(256) NOT NULL,
	`document_type` VARCHAR(256) NOT NULL,
  `expiry` DATE,
  `support_expiry` DATE,
  `entitlement_id` SMALLINT,
	`supplier` VARCHAR(256) NOT NULL,
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `entitlements` VALUES
(1, 1,6,"Europe","","Perpetual",3,1,10000,"USD","123ABC","Original document","2015-03-24","2010-05-24",0,"Supplier X","",""),
(2, 4,1,"Europe","Volume","Site",2,2,21200,"USD","182XYZ","Reseller document","2015-03-24","2010-05-24",0,"Supplier Z","",""),
(3, 3,2,"North America","","Concurrent",15400,5,30000,"USD","RDX988","Invoice","2015-03-24","2010-05-24",0,"Supplier X","",""),
(4, 4,1,"Europe","","Site",1,1,14230,"EUR","33TTYU","Purchase record","2015-03-24","2010-05-24",0,"Supplier Y","",""),
(5, 3,2,"EMEA","","Concurrent",2,2,113500,"EUR","RDX738","Invoice","2015-03-24","2010-05-24",0,"Supplier Y","",""),
(6, 4,1,"UK","","Site",1,1,20000,"GBP","WTY009","Purchase record","2015-03-24","2010-05-24",0,"Supplier Z","","");

DROP TABLE IF EXISTS `installations`;

CREATE TABLE `installations`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `version_id` SMALLINT,
  `device_id` SMALLINT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `installations` VALUES
(1, 0,0,"",""),
(2, 0,0,"",""),
(3, 0,0,"",""),
(4, 0,0,"",""),
(5, 0,0,"",""),
(6, 0,0,"",""),
(7, 0,0,"",""),
(8, 0,0,"","");

CREATE TABLE `locations`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256),
	`reference` VARCHAR(256),
	`address1` VARCHAR(256),
	`address2` VARCHAR(256),
	`address3` VARCHAR(256),
	`address4` VARCHAR(256),
	`address5` VARCHAR(256),
	`postcode` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `locations` VALUES
(1,"","","","","","","","","",""),
(2,"","","","","","","","","",""),
(3,"","","","","","","","","",""),
(4,"","","","","","","","","",""),
(5,"","","","","","","","","",""),
(6,"","","","","","","","","","");

CREATE TABLE `products`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256),
	`fullname` VARCHAR(256),
	`publisher_id` SMALLINT,
	`serial` VARCHAR(256),
	`sku` VARCHAR(256),
	`identifier` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `products` VALUES
(1,"","",0,"","","","",""),
(2,"","",0,"","","","",""),
(3,"","",0,"","","","",""),
(4,"","",0,"","","","",""),
(5,"","",0,"","","","",""),
(6,"","",0,"","","","","");

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
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


CREATE TABLE `sessions`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`session_id` VARCHAR(256) NOT NULL,
	`data` TEXT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `sessions` VALUES
(1,"","","",""),
(2,"","","",""),
(3,"","","","");

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

DROP TABLE IF EXISTS `versions`;

CREATE TABLE `versions`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256),
	`fullname` VARCHAR(256),
	`product_id` SMALLINT,
	`serial` VARCHAR(256),
	`language` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `versions` VALUES
(1,"","",0,"","","",""),
(2,"","",0,"","","",""),
(3,"","",0,"","","",""),
(4,"","",0,"","","",""),
(5,"","",0,"","","",""),
(6,"","",0,"","","",""),
(7,"","",0,"","","",""),
(8,"","",0,"","","","");


