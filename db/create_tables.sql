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

DROP TABLE IF EXISTS `assets_devices`;

CREATE TABLE `assets_devices`(
	`asset_id` SMALLINT UNSIGNED NOT NULL,
	`device_id` SMALLINT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
);

INSERT INTO `clients` VALUES
(1,'BP','2010-05-25 09:25:55','2010-05-25 09:25:55'),
(2,'Isle of Wight Council','2010-05-25 09:25:55','2010-05-25 09:25:55'),
(3,'RSPCA','2010-05-25 09:25:55','2010-05-25 09:25:55'),
(4,'Cumbria','2010-05-25 09:25:55','2010-05-25 09:25:55');


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


DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(256),
	`iso_code` VARCHAR(3),
	PRIMARY KEY (`id`)
);
INSERT INTO `countries` VALUES
(1,'Afghanistan','AF'),
(2,'Åland Islands','AX'),
(3,'Albania','AL'),
(4,'Algeria','DZ'),
(5,'American Samoa','AS'),
(6,'Andorra','AD'),
(7,'Angola','AO'),
(8,'Anguilla','AI'),
(9,'Antarctica','AQ'),
(10,'Antigua and Barbuda','AG'),
(11,'Argentina','AR'),
(12,'Armenia','AM'),
(13,'Aruba','AW'),
(14,'Australia','AU'),
(15,'Austria','AT'),
(16,'Azerbaijan','AZ'),
(17,'Bahamas','BS'),
(18,'Bahrain','BH'),
(19,'Bangladesh','BD'),
(20,'Barbados','BB'),
(21,'Belarus','BY'),
(22,'Belgium','BE'),
(23,'Belize','BZ'),
(24,'Benin','BJ'),
(25,'Bermuda','BM'),
(26,'Bhutan','BT'),
(27,'Bolivia','BO'),
(28,'Bosnia and Herzegovina','BA'),
(29,'Botswana','BW'),
(30,'Bouvet Island','BV'),
(31,'Brazil','BR'),
(32,'British Indian Ocean Territory','IO'),
(33,'Brunei Darussalam','BN'),
(34,'Bulgaria','BG'),
(35,'Burkina Faso','BF'),
(36,'Burundi','BI'),
(37,'Cambodia','KH'),
(38,'Cameroon','CM'),
(39,'Canada','CA'),
(40,'Cape Verde','CV'),
(41,'Cayman Islands','KY'),
(42,'Central African Republic','CF'),
(43,'Chad','TD'),
(44,'Chile','CL'),
(45,'China','CN'),
(46,'Christmas Island','CX'),
(47,'Cocos (Keeling) Islands','CC'),
(48,'Colombia','CO'),
(49,'Comoros','KM'),
(50,'Congo','CG'),
(51,'Congo The Democratic Republic of The','CD'),
(52,'Cook Islands','CK'),
(53,'Costa Rica','CR'),
(54,'Cote D''Ivoire','CI'),
(55,'Croatia','HR'),
(56,'Cuba','CU'),
(57,'Cyprus','CY'),
(58,'Czech Republic','CZ'),
(59,'Denmark','DK'),
(60,'Djibouti','DJ'),
(61,'Dominica','DM'),
(62,'Dominican Republic','DO'),
(63,'Ecuador','EC'),
(64,'Egypt','EG'),
(65,'El Salvador','SV'),
(66,'Equatorial Guinea','GQ'),
(67,'Eritrea','ER'),
(68,'Estonia','EE'),
(69,'Ethiopia','ET'),
(70,'Falkland Islands (Malvinas)','FK'),
(71,'Faroe Islands','FO'),
(72,'Fiji','FJ'),
(73,'Finland','FI'),
(74,'France','FR'),
(75,'French Guiana','GF'),
(76,'French Polynesia','PF'),
(77,'French Southern Territories','TF'),
(78,'Gabon','GA'),
(79,'Gambia','GM'),
(80,'Georgia','GE'),
(81,'Germany','DE'),
(82,'Ghana','GH'),
(83,'Gibraltar','GI'),
(84,'Greece','GR'),
(85,'Greenland','GL'),
(86,'Grenada','GD'),
(87,'Guadeloupe','GP'),
(88,'Guam','GU'),
(89,'Guatemala','GT'),
(90,'Guernsey','GG'),
(91,'Guinea','GN'),
(92,'Guinea-bissau','GW'),
(93,'Guyana','GY'),
(94,'Haiti','HT'),
(95,'Heard Island and Mcdonald Islands','HM'),
(96,'Holy See (Vatican City State)','VA'),
(97,'Honduras','HN'),
(98,'Hong Kong','HK'),
(99,'Hungary','HU'),
(100,'Iceland','IS'),
(101,'India','IN'),
(102,'Indonesia','ID'),
(103,'Iran (Islamic Republic of)','IR'),
(104,'Iraq','IQ'),
(105,'Ireland','IE'),
(106,'Isle of Man','IM'),
(107,'Israel','IL'),
(108,'Italy','IT'),
(109,'Jamaica','JM'),
(110,'Japan','JP'),
(111,'Jersey','JE'),
(112,'Jordan','JO'),
(113,'Kazakhstan','KZ'),
(114,'Kenya','KE'),
(115,'Kiribati','KI'),
(116,'Korea (Democratic People''s Republic of)','KP'),
(117,'Korea (Republic of)','KR'),
(118,'Kuwait','KW'),
(119,'Kyrgyzstan','KG'),
(120,'Lao People''s Democratic Republic','LA'),
(121,'Latvia','LV'),
(122,'Lebanon','LB'),
(123,'Lesotho','LS'),
(124,'Liberia','LR'),
(125,'Libyan Arab Jamahiriya','LY'),
(126,'Liechtenstein','LI'),
(127,'Lithuania','LT'),
(128,'Luxembourg','LU'),
(129,'Macao','MO'),
(130,'Macedonia The Former Yugoslav Republic of','MK'),
(131,'Madagascar','MG'),
(132,'Malawi','MW'),
(133,'Malaysia','MY'),
(134,'Maldives','MV'),
(135,'Mali','ML'),
(136,'Malta','MT'),
(137,'Marshall Islands','MH'),
(138,'Martinique','MQ'),
(139,'Mauritania','MR'),
(140,'Mauritius','MU'),
(141,'Mayotte','YT'),
(142,'Mexico','MX'),
(143,'Micronesia Federated States of','FM'),
(144,'Moldova Republic of','MD'),
(145,'Monaco','MC'),
(146,'Mongolia','MN'),
(147,'Montenegro','ME'),
(148,'Montserrat','MS'),
(149,'Morocco','MA'),
(150,'Mozambique','MZ'),
(151,'Myanmar','MM'),
(152,'Namibia','NA'),
(153,'Nauru','NR'),
(154,'Nepal','NP'),
(155,'Netherlands','NL'),
(156,'Netherlands Antilles','AN'),
(157,'New Caledonia','NC'),
(158,'New Zealand','NZ'),
(159,'Nicaragua','NI'),
(160,'Niger','NE'),
(161,'Nigeria','NG'),
(162,'Niue','NU'),
(163,'Norfolk Island','NF'),
(164,'Northern Mariana Islands','MP'),
(165,'Norway','NO'),
(166,'Oman','OM'),
(167,'Pakistan','PK'),
(168,'Palau','PW'),
(169,'Palestinian Territory Occupied','PS'),
(170,'Panama','PA'),
(171,'Papua New Guinea','PG'),
(172,'Paraguay','PY'),
(173,'Peru','PE'),
(174,'Philippines','PH'),
(175,'Pitcairn','PN'),
(176,'Poland','PL'),
(177,'Portugal','PT'),
(178,'Puerto Rico','PR'),
(179,'Qatar','QA'),
(180,'Reunion','RE'),
(181,'Romania','RO'),
(182,'Russian Federation','RU'),
(183,'Rwanda','RW'),
(184,'Saint Helena','SH'),
(185,'Saint Kitts and Nevis','KN'),
(186,'Saint Lucia','LC'),
(187,'Saint Pierre and Miquelon','PM'),
(188,'Saint Vincent and The Grenadines','VC'),
(189,'Samoa','WS'),
(190,'San Marino','SM'),
(191,'Sao Tome and Principe','ST'),
(192,'Saudi Arabia','SA'),
(193,'Senegal','SN'),
(194,'Serbia','RS'),
(195,'Seychelles','SC'),
(196,'Sierra Leone','SL'),
(197,'Singapore','SG'),
(198,'Slovakia','SK'),
(199,'Slovenia','SI'),
(200,'Solomon Islands','SB'),
(201,'Somalia','SO'),
(202,'South Africa','ZA'),
(203,'South Georgia and The South Sandwich Islands','GS'),
(204,'Spain','ES'),
(205,'Sri Lanka','LK'),
(206,'Sudan','SD'),
(207,'Suriname','SR'),
(208,'Svalbard and Jan Mayen','SJ'),
(209,'Swaziland','SZ'),
(210,'Sweden','SE'),
(211,'Switzerland','CH'),
(212,'Syrian Arab Republic','SY'),
(213,'Taiwan Province of China','TW'),
(214,'Tajikistan','TJ'),
(215,'Tanzania United Republic of','TZ'),
(216,'Thailand','TH'),
(217,'Timor-leste','TL'),
(218,'Togo','TG'),
(219,'Tokelau','TK'),
(220,'Tonga','TO'),
(221,'Trinidad and Tobago','TT'),
(222,'Tunisia','TN'),
(223,'Turkey','TR'),
(224,'Turkmenistan','TM'),
(225,'Turks and Caicos Islands','TC'),
(226,'Tuvalu','TV'),
(227,'Uganda','UG'),
(228,'Ukraine','UA'),
(229,'United Arab Emirates','AE'),
(230,'United Kingdom','GB'),
(231,'United States','US'),
(232,'United States Minor Outlying Islands','UM'),
(233,'Uruguay','UY'),
(234,'Uzbekistan','UZ'),
(235,'Vanuatu','VU'),
(236,'Venezuela','VE'),
(237,'Viet Nam','VN'),
(238,'Virgin Islands British','VG'),
(239,'Virgin Islands U.S.','VI'),
(240,'Wallis and Futuna','WF'),
(241,'Western Sahara','EH'),
(242,'Yemen','YE'),
(243,'Zambia','ZM'),
(244,'Zimbabwe','ZW');



DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`asset_id` SMALLINT NOT NULL,
  `make` VARCHAR(64) ,
  `model` VARCHAR(64),
  `serial` VARCHAR(64) ,
  `network_user_name` VARCHAR(64),
  `node` VARCHAR(64),
  `os` VARCHAR(64),
  `os_service_level` VARCHAR(64),
  `chassis` VARCHAR(64),
	`domain` VARCHAR(64) NOT NULL,
  `ip` VARCHAR(24) ,
  `processor_count` TINYINT,
  `processor_type` VARCHAR(256),
  `processor_speed` TINYINT,
  `ram` SMALLINT,
  `bios_date` DATE,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  `mac_address` VARCHAR(64) ,
  `location_id` SMALLINT ,
  PRIMARY KEY (`id`)
)

INSERT INTO `devices` 
VALUES(1,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(2,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(3,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(4,467389,'Dell','Latitude D660','T829FGH','jspringall','DCAL08320','Windows 7 Pro',0,'Network Portable','Aramis','170.22.33.37',2,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',2900,4096,'2010-02-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',2),
(5,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(6,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(7,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(8,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(9,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(10,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(11,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(12,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(13,467389,'Dell','Latitude D660','T829FGH','jspringall','DCAL08320','Windows 7 Pro',0,'Network Portable','Aramis','170.22.33.37',2,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',2900,4096,'2010-02-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',2),
(14,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(15,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(16,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(17,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(18,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(19,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(20,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(21,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(22,467389,'Dell','Latitude D660','T829FGH','jspringall','DCAL08320','Windows 7 Pro',0,'Network Portable','Aramis','170.22.33.37',2,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',2900,4096,'2010-02-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',2),
(23,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(24,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4),
(25,393744,'Dell','Latitude D410','D9LZ42J','agay','DCAL08320','Windows XP',2,'Network Portable','Aramis','170.22.33.87',1,'x64 Family 6 Model 15 Stepping 6 Intel Core 2',1733,1024,'2004-05-14','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(26,432234,'Dell','Latitude D510','QZSD798A','dsmith','DCAL08321','Windows XP',2,'Network Portable','Aramis','170.22.33.89',1,'x64 Family 6 Model 15 Stepping Intel Core 2',2366,4096,'2009-09-24','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',1),
(27,537729,'Dell','Latitude D510','RREX238B','tcollis','ER0034A91','Windows XP',2,'Network Portable','Aramis','170.22.33.62',1,'x64 Family 6 Model 15 Stepping Intel Core 2',1733,2048,'2008-07-11','2010-04-20 14:07:06','2010-04-20 14:07:06','123MACXYZ987',4);


DROP TABLE IF EXISTS `devices_registers`;

CREATE TABLE `devices_registers`(
	`device_id` SMALLINT UNSIGNED NOT NULL,
	`register_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`device_id`,`register_id`)
);

INSERT INTO `devices_registers` VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(3,4),
(4,1),
(4,4),
(5,2),
(5,3),
(6,3),
(6,2),
(7,2),
(7,3),
(8,3),
(9,3);



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




DROP TABLE IF EXISTS `licences`;

CREATE TABLE `licences`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`sku` VARCHAR(64),
	`publisher` VARCHAR(64),
	`product` VARCHAR(64),
	`edition` VARCHAR(64),
	`version` VARCHAR(64),
	`identifying_number` VARCHAR(64),
	`product_id` SMALLINT,
  `region_or_country` VARCHAR(128),
  `cal` VARCHAR(48),
  `licence_type` VARCHAR(64),
  `term` VARCHAR(64),
  `upgrade` VARCHAR(64),
	`term_expiry_date` DATE,
  `ci_name` VARCHAR(64),
  `base_licence` VARCHAR(64),
	`maintenance_expiry` DATE,
  `entitlement_type` VARCHAR(64),
  `cost_centre` VARCHAR(64),
  `volume_licence_agreement_number` VARCHAR(64),
  `agreement_location` VARCHAR(64),
  `entitlement_location` VARCHAR(64),
  `supplier` VARCHAR(64),
  `supplier_invoice_number` VARCHAR(64),
	`invoice_date` DATE,
  `po_number` VARCHAR(64),
  `country_of_usage` VARCHAR(64),
  `product_substitution_rights` VARCHAR(64),
  `secondary_rights` VARCHAR(64),
  `transferability` VARCHAR(64),
  `external_licence_transfer_requirements` VARCHAR(64),
  `linkages` VARCHAR(64),
	`total_cost_of_line_item` SMALLINT,
	`quantity` SMALLINT,
	`unit` VARCHAR(48),
	`cost_unit` SMALLINT,
	`maintenance_pa` SMALLINT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `licences` VALUES(1,1233221983,'Adobe','Photoshop','CS4',6.445,1920938,1,'Europe',23,'Perpetual','Unlimited','Unlimited','2010-04-07','All',124432234,'2010-04-07','Perpetual','CHYUX9203','AUER9304SERX8839','Vancouver Office','Vancouver Office','Adobe Reseller XYZ',12443,'2010-04-07',93249203492,'UK','All','None','OK','Flexible','Both',64500,1000,'GBP',2134,1234,'2010-04-20 14:07:06','2010-04-20 14:07:06'),
(2,827638472,'Autodesk','AutoCAD',300.99,4.223,928739428,4,'North America',34,'Perpetual','Unlimited','Unlimited','2010-04-07','All',29834928,'2010-04-07','Perpetual','UXB345','YUAKJH928394','New York Office','New York Office','Autodesk Reseller XYZ',1283,'2010-04-07',8479384983,'USA','All','None','OK','Flexible','Both',320000,3,'GBP',320000,20000,'2010-04-20 14:07:06','2010-04-20 14:07:06'),
(3,39287394,'Microsoft','Office',2008,7.0,2984982,5,'Europe',34,'Perpetual','Unlimited','Unlimited','2010-04-07','All',2734539489,'2010-04-19','Perpetual','CHYUX9203','AUER9304SERX8839','Vancouver Office','Vancouver Office','MS Reseller XYZ',37644563,'2010-04-07',10293829,'USA','All','None','OK','Flexible','Both',465738,10000,'USD',178723,12342,'2010-04-20 14:07:06','2010-04-20 14:07:06'),
(4,48263847,'Microsoft','Outlook',4,'4.23.223',37653726,5,'North America',29381,'Perpetual','Unlimited','Unlimited','2010-04-07','All',29834928,'2010-04-07','Perpetual','UXB345','YUAKJH928394','New York Office','New York Office','Autodesk Reseller XYZ',1283,'2010-04-07',8479384983,'USA','All','None','OK','Flexible','Both',320000,3,'GBP',320000,20000,'2010-04-20 14:07:06','2010-04-20 14:07:06'),
(5,1233221983,'QuarkXpress','QuarkXpress',8.0,8.445,78943845,6,'Europe',23,'Perpetual','Unlimited','Unlimited','2010-04-07','All',124432234,'2010-04-07','Perpetual','CHYUX9203','AUER9304SERX8839','Vancouver Office','Vancouver Office','Adobe Reseller XYZ',12443,'2010-04-07',93249203492,'UK','All','None','OK','Flexible','Both',64500,1000,'GBP',2134,1234,'2010-04-20 14:07:06','2010-04-20 14:07:06'),
(6,93874953,'Quest','Toad','9.3.0','9.3.499',63773628,8,'North America',67,'Perpetual','Unlimited','Unlimited','2010-04-07','All',29834928,'2010-04-07','Perpetual','UXB345','YUAKJH928394','New York Office','New York Office','Quest Reseller XYZ',1283,'2010-04-07',83457384,'USA','All','None','OK','Flexible','Both',320000,3,'GBP',320000,20000,'2010-04-20 14:07:06','2010-04-20 14:07:06');


DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations`(
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256),
	`reference` VARCHAR(256),
	`address1` VARCHAR(256),
	`address2` VARCHAR(256),
	`address3` VARCHAR(256),
	`address4` VARCHAR(256),
	`country` VARCHAR(256),
	`postcode` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
	`client_id` SMALLINT,
	PRIMARY KEY (`id`)
);

INSERT INTO `locations` VALUES
(1,"Antares Incorporated","1234","12 Ocean Blvd","Santa Ana","CA","USA","","97837","2010-02-19 14:02:01","2010-02-19 14:02:01", 1),
(2,"Vega Ltd","89223","Vega Point","3 London Bridge Street","London","UK", "","SE1 8ZZ","2010-02-19 14:02:01","2010-02-19 14:02:01", 2),
(3,"Sirius GmbH","66473","Sirius Plaza","345 Steinerstrasse","Frankfurt","Germany", "","123328","2010-02-19 14:02:01","2010-02-19 14:02:01", 3),
(4,"Aquarius Ltd","99933","Glass Shard","5 Tooley Street","London","UK", "","SE1 8AA","2010-02-19 14:02:01","2010-02-19 14:02:01", 4),
(5,"Orion Incorporated","777333","Axe Yard","13 Leadenhall","London","UK", "","EC1 9UU","2010-02-19 14:02:01","2010-02-19 14:02:01", 3);

DROP TABLE IF EXISTS `products`;

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
(1,"Photoshop","Photoshop CS4",1,"1829939802928734","992038801209","23413234","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(2,"Illustrator","Illustrator CS4",1,"3928829293","929910980923","12332223","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(3,"Acrobat Reader","Acrobat Reader Pro ",1,"1829939802928734","998038801209","2233114411","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(4,"Acrobat Reader","Acrobat Reader Standard ",1,"2738476283677632","745784398543","3728374827","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(5,"Air","Air Home Edition",1,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(6,"Word","Microsoft Word 2003",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(7,"Excel","Microsoft Excel 2003",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(8,"Powerpoint","Microsoft Powerpoint 2003",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(9,"Outlook","Microsoft Outlook 2003",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(10,"Access","Microsoft Access 2003",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(11,"Entourage","Microsoft Entourage 2008 for Mac",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(12,"Excel","Microsoft Excel 2008 for Mac",17,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(13,"AutoCAD","AutoCAD",2,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(14,"AutoCAD","AutoCAD Extended",2,"8237984238","38274827384","98394823984","2010-02-19 14:02:01","2010-02-19 14:02:01");

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR (256) NOT NULL,
	`shortname` VARCHAR (256),
	`description` TEXT,
  `created_at` DATETIME,
	`updated_at` DATETIME,
	`url` VARCHAR (256),
	PRIMARY KEY (`id`)
);

INSERT INTO `publishers` VALUES
(1,'Adobe','Adobe','Graphics and Visual Design Software','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.adobe.com/'),
(2,'Autodesk','Autodesk','Computer Aided Design Software (CAD)','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.autodesk.co.uk/'),
(3,'Badley Geoscience','Badley Geoscience','Geoscience software','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.badleys.co.uk/'),
(4,'ePulse','ePulse','Dealing and Brokerage solutions','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.epulse.ltd.uk/'),
(5,'Globalview Software Inc.','Globalview','Energy Market Data Solutions','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.gvsi.com/'),
(6,'Informatica Corporation','Informatica','Data Integration','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.informatica.com/'),
(7,'Information Builders','Information Builders','Business Data Analysis','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.informationbuilders.co.uk/'),
(8,'Open Text Corporation','Open Text','Content Management','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.opentext.com/'),
(9,'Primavera System Inc.','Primavera','Project Portfolio Management','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.oracle.com/primavera/'),
(10,'Quest Software','Quest','Smart Systems Management','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.quest.com/'),
(11,'Salesforce.com Inc.','Salesforce','Customer Relationship Management Software Cloud Computing','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.salesforce.com/'),
(12,'SAS Institute Inc.','SAS Institute','Business Analytics Software','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.sas.com/'),
(13,'Serverware Group Inc.','Serverware','Compliance Change and Configuration Management Solutions','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.serverware.com/'),
(14,'Silicon Graphics Inc.','Silicon Graphics','HPC Servers Storage Data Center Solutions Cloud Computing','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.sgi.com/'),
(15,'The Mathworks Limited','The Mathworks','Science and Engineering Software','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.mathworks.com/'),
(16,'Websense Inc.','Websense','Information Protection','2010-05-25 09:25:56','2010-05-25 09:25:56','http://www.websense.com');

DROP TABLE IF EXISTS `registers`;

CREATE TABLE `registers` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24),
  `client_id` SMALLINT,
  `date` DATETIME,
  `frequency` VARCHAR(24),
  `regtype` VARCHAR(24),
  `accuracy` SMALLINT,
  `device_id` SMALLINT,
  `asset_id` SMALLINT,
  `created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `registers` VALUES
(1, "Walkaround Audit", 1, "2010-03-25 18:36:09","Annual","Catalog X",99, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(2, "Network Discovery", 1, "2010-03-25 18:36:09","Monthly","Catalog Y",89, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(3, "Fixed Asset Register", 1, "2010-03-25 18:36:09","Once","Catalog Z",72, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(4, "Purchase Record", 1, "2010-03-25 18:36:09","Once","Catalog AA",55, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(5, "Walkaround Audit", 2, "2010-03-25 18:36:09","Annual","Catalog X",99, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(6, "Network Discovery", 2, "2010-03-25 18:36:09","Monthly","Catalog Y",89, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(7, "Fixed Asset Register", 2, "2010-03-25 18:36:09","Once","Catalog Z",72, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(8, "Purchase Record", 2, "2010-03-25 18:36:09","Once","Catalog AA",55, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09");

DROP TABLE IF EXISTS `registers_servers`;

CREATE TABLE `registers_servers`(
	`register_id` SMALLINT UNSIGNED NOT NULL,
	`server_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`register_id`,`server_id`)
);


DROP TABLE IF EXISTS `servers`;

CREATE TABLE `servers`( 
	`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128),
  `client_id` SMALLINT UNSIGNED,
  `alternative_name` VARCHAR(128),
  `licence_type` VARCHAR(128),
  `alt_reference` SMALLINT UNSIGNED,
  `comment` VARCHAR(512),
  `scope` ENUM("","RED","GREEN","AMBER"),
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
); 

INSERT INTO `servers` VALUES
(1,'BLACKBERRY',2,'BLACKBERRY','TSM standard Tivoli licence (STL)',1,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(2,'',2,'BLACKBERRY_SQL','TSM standard Tivoli licence (STL)',2,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(3,'BLACKBERRYDMZ',2,'BLACKBERRYDMZ','TSM standard Tivoli licence (STL)',3,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(4,'BUSINESSOBJECTS',2,'BUSINESSOBJECTS','TSM standard Tivoli licence (STL)',4,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(5,'CARPARKS',2,'CARPARKS','TSM standard Tivoli licence (STL)',5,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(6,'',2,'CARPARKS_SQL','TSM standard Tivoli licence (STL)',6,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(7,'CFRMIS',2,'CFRMIS','TSM standard Tivoli licence (STL)',7,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(8,'',2,'CFRMIS_SQL','TSM standard Tivoli licence (STL)',8,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(9,'CTISERVER',2,'CTISERVER','TSM standard Tivoli licence (STL)',9,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(10,'CTXFR001',2,'CTXFR001','TSM standard Tivoli licence (STL)',10,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(11,'CTXHW001',2,'CTXHW001','TSM standard Tivoli licence (STL)',11,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(12,'CTXHW002',2,'CTXHW002','TSM standard Tivoli licence (STL)',12,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(13,'',2,'DIP_GROUP','TSM standard Tivoli licence (STL)',13,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(14,'',2,'DIP_SHARES','TSM standard Tivoli licence (STL)',14,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(15,'DIP1',2,'DIP1','TSM standard Tivoli licence (STL)',15,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(16,'DIP2',2,'DIP2','TSM standard Tivoli licence (STL)',16,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(17,'',2,'DISNEY_GROUP','TSM standard Tivoli licence (STL)',17,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(18,'',2,'DISNEY_SHARES','TSM standard Tivoli licence (STL)',18,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(19,'DONALD',2,'DONALD','TSM standard Tivoli licence (STL)',19,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(20,'GOOFY',2,'GOOFY','TSM standard Tivoli licence (STL)',20,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(21,'MICKEY',2,'MICKEY','TSM standard Tivoli licence (STL)',21,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(22,'EDUNT-3',2,'EDUNT-3','TSM standard Tivoli licence (STL)',22,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(23,'EDUNT-FIZ',2,'EDUNT-FIZ','TSM standard Tivoli licence (STL)',23,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(24,'EPICENTRE',2,'EPICENTRE','TSM standard Tivoli licence (STL)',24,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(25,'CORVUREP',2,'CORVUREP','TSM standard Tivoli licence (STL)',25,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(26,'DEVLGOL',2,'DEVLGOL','TSM standard Tivoli licence (STL)',26,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(27,'FARM1TEST',2,'FARM1TEST','TSM standard Tivoli licence (STL)',27,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(28,'',2,'FARM1TEST_SQL','TSM standard Tivoli licence (STL)',28,'not a server','AMBER','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(29,'FIRE',2,'FIRE','TSM standard Tivoli licence (STL)',29,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27'),
(30,'IWCEPO4',2,'IWCEPO4','TSM standard Tivoli licence (STL)',30,'','GREEN','2010-05-11 09:55:27','2010-05-11 09:55:27');

DROP TABLE IF EXISTS `sessions`;

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
	`name` VARCHAR(64) NOT NULL,
	`email` VARCHAR(128) NOT NULL,
	`role` VARCHAR(48) NOT NULL,
	`client_id`	SMALLINT,
	`crypted_password` VARCHAR(256),
	`password_salt` VARCHAR(256),
	`persistence_token` VARCHAR(256),
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `users` VALUES(1,'duncan','duncan.smith@sameclat.com','admin',1,'a9eb68b19ca177bb9390484bcb18077b3a8c725d2cd9b91d9ed95bb3644b0aedeee9e7a176bc990b11cee2873c12adaf3f098e8668f93d1b8057c443931595b9','5a8wyjsIyKIztIGMjqRl',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(2,'john','john.springall@sameclat.com','admin',2,'2314bed3e92f00f9b0e2eac0c74f5fefc61fdbfdfc67fab3fd4f15f7bf0b642a7d204310b17b26416dc6f4a62e2721c3fa5f55b065fb7a931ec9d87c023e3508','4WAj-Subnz06HiU0ASwG',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(3,'fraz','fraz.hamid@sameclat.com','admin',2,'9bb51d932c527dc83cd5b3ea2ce96c166258d81f0dff146c689b9e2c46735f4376579245967ab1e03ca505e0a322c61a48bfde598caba4a1df50ca17e2741965','Acy2xGODHCEZh05bELpu',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(4,'tim','tim.collis@sameclat.com','admin',2,'95a72263b0affc65abb9a85b427cab17d552c975ff8f2a810d18e14225ec1805a01f944ab11b249234d3587559a213a149aef123707307bb1e2c7d02ab168f39','8leQruhRbGLxPB_EWMvD',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(5,'admin','admin@sameclat.com','admin',2,'4e17a991c62470639abc5f7a7e9f0eb99b2e8eb46e2520e68636afdf5f0c26060e1200eb5b3424a87157291575b674ad12a170df17a70beabe95ce1c4d5616b1','f1mvaOl0YOR_n0qoDRS8',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(6,'client','client@sameclat.com','client',2,'ba3ff0b7cb5e376a343f2e930f374934d0a80f4c2b74cddf91ab1b44f0cc6a696b230a80ed7509882812a93af0631be861796fc83fb48e7594b4c4f5ab106fe9','Rt6wZ07E_5zW-xyerPAB',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(7,'clientmaintainer','clientmaintainer@sameclat.com','clientmaintainer',2,'625057bcc44ea3710c2152ce87c81d1739d4faa768b978f72b044b03ac7e7c4eaef3f4c1871d780a342caf09fd3b5c7ce2896e28f3f97f7281509d178e0692a8','1lvy8He6F2QaemGnrzWW',0,'2010-04-20 14:07:07','2010-04-20 14:07:07');

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
(1,"6.22.10","Photoshop CS4 6.22.10",1,"XVAH23787623456","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(2,"5.223.144","Illustrator",1,"RU9879879","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(3,"2.4","AutoCAD",0,"IUY898798","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(4,"5.3","",0,"","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(5,"3.4","",0,"","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(6,"","",0,"","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(7,"","",0,"","EN","2010-03-26 09:28:02","2010-03-26 09:28:02"),
(8,"","",0,"","EN","2010-03-26 09:28:02","2010-03-26 09:28:02");


