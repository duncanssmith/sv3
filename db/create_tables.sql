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
	`location_id` SMALLINT, 
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
);


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
	`created_at` DATETIME,
	`updated_at` DATETIME,
	`iso_code` VARCHAR(3),
	PRIMARY KEY (`id`)
);
INSERT INTO `countries` VALUES(1,'Afghanistan','2010-04-09 10:24:14','2010-04-09 10:24:15','AF'),
(2,'Åland Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','AX'),
(3,'Albania','2010-04-09 10:24:14','2010-04-09 10:24:15','AL'),
(4,'Algeria','2010-04-09 10:24:14','2010-04-09 10:24:15','DZ'),
(5,'American Samoa','2010-04-09 10:24:14','2010-04-09 10:24:15','AS'),
(6,'Andorra','2010-04-09 10:24:14','2010-04-09 10:24:15','AD'),
(7,'Angola','2010-04-09 10:24:14','2010-04-09 10:24:15','AO'),
(8,'Anguilla','2010-04-09 10:24:14','2010-04-09 10:24:15','AI'),
(9,'Antarctica','2010-04-09 10:24:14','2010-04-09 10:24:15','AQ'),
(10,'Antigua and Barbuda','2010-04-09 10:24:14','2010-04-09 10:24:15','AG'),
(11,'Argentina','2010-04-09 10:24:14','2010-04-09 10:24:15','AR'),
(12,'Armenia','2010-04-09 10:24:14','2010-04-09 10:24:15','AM'),
(13,'Aruba','2010-04-09 10:24:14','2010-04-09 10:24:15','AW'),
(14,'Australia','2010-04-09 10:24:14','2010-04-09 10:24:15','AU'),
(15,'Austria','2010-04-09 10:24:14','2010-04-09 10:24:15','AT'),
(16,'Azerbaijan','2010-04-09 10:24:14','2010-04-09 10:24:15','AZ'),
(17,'Bahamas','2010-04-09 10:24:14','2010-04-09 10:24:15','BS'),
(18,'Bahrain','2010-04-09 10:24:14','2010-04-09 10:24:15','BH'),
(19,'Bangladesh','2010-04-09 10:24:14','2010-04-09 10:24:15','BD'),
(20,'Barbados','2010-04-09 10:24:14','2010-04-09 10:24:15','BB'),
(21,'Belarus','2010-04-09 10:24:14','2010-04-09 10:24:15','BY'),
(22,'Belgium','2010-04-09 10:24:14','2010-04-09 10:24:15','BE'),
(23,'Belize','2010-04-09 10:24:14','2010-04-09 10:24:15','BZ'),
(24,'Benin','2010-04-09 10:24:14','2010-04-09 10:24:15','BJ'),
(25,'Bermuda','2010-04-09 10:24:14','2010-04-09 10:24:15','BM'),
(26,'Bhutan','2010-04-09 10:24:14','2010-04-09 10:24:15','BT'),
(27,'Bolivia','2010-04-09 10:24:14','2010-04-09 10:24:15','BO'),
(28,'Bosnia and Herzegovina','2010-04-09 10:24:14','2010-04-09 10:24:15','BA'),
(29,'Botswana','2010-04-09 10:24:14','2010-04-09 10:24:15','BW'),
(30,'Bouvet Island','2010-04-09 10:24:14','2010-04-09 10:24:15','BV'),
(31,'Brazil','2010-04-09 10:24:14','2010-04-09 10:24:15','BR'),
(32,'British Indian Ocean Territory','2010-04-09 10:24:14','2010-04-09 10:24:15','IO'),
(33,'Brunei Darussalam','2010-04-09 10:24:14','2010-04-09 10:24:15','BN'),
(34,'Bulgaria','2010-04-09 10:24:14','2010-04-09 10:24:15','BG'),
(35,'Burkina Faso','2010-04-09 10:24:14','2010-04-09 10:24:15','BF'),
(36,'Burundi','2010-04-09 10:24:14','2010-04-09 10:24:15','BI'),
(37,'Cambodia','2010-04-09 10:24:14','2010-04-09 10:24:15','KH'),
(38,'Cameroon','2010-04-09 10:24:14','2010-04-09 10:24:15','CM'),
(39,'Canada','2010-04-09 10:24:14','2010-04-09 10:24:15','CA'),
(40,'Cape Verde','2010-04-09 10:24:14','2010-04-09 10:24:15','CV'),
(41,'Cayman Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','KY'),
(42,'Central African Republic','2010-04-09 10:24:14','2010-04-09 10:24:15','CF'),
(43,'Chad','2010-04-09 10:24:14','2010-04-09 10:24:15','TD'),
(44,'Chile','2010-04-09 10:24:14','2010-04-09 10:24:15','CL'),
(45,'China','2010-04-09 10:24:14','2010-04-09 10:24:15','CN'),
(46,'Christmas Island','2010-04-09 10:24:14','2010-04-09 10:24:15','CX'),
(47,'Cocos (Keeling) Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','CC'),
(48,'Colombia','2010-04-09 10:24:14','2010-04-09 10:24:15','CO'),
(49,'Comoros','2010-04-09 10:24:14','2010-04-09 10:24:15','KM'),
(50,'Congo','2010-04-09 10:24:14','2010-04-09 10:24:15','CG'),
(51,'Congo The Democratic Republic of The','2010-04-09 10:24:14','2010-04-09 10:24:15','CD'),
(52,'Cook Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','CK'),
(53,'Costa Rica','2010-04-09 10:24:14','2010-04-09 10:24:15','CR'),
(54,'Cote D''Ivoire','2010-04-09 10:24:14','2010-04-09 10:24:15','CI'),
(55,'Croatia','2010-04-09 10:24:14','2010-04-09 10:24:15','HR'),
(56,'Cuba','2010-04-09 10:24:14','2010-04-09 10:24:15','CU'),
(57,'Cyprus','2010-04-09 10:24:14','2010-04-09 10:24:15','CY'),
(58,'Czech Republic','2010-04-09 10:24:14','2010-04-09 10:24:15','CZ'),
(59,'Denmark','2010-04-09 10:24:14','2010-04-09 10:24:15','DK'),
(60,'Djibouti','2010-04-09 10:24:14','2010-04-09 10:24:15','DJ'),
(61,'Dominica','2010-04-09 10:24:14','2010-04-09 10:24:15','DM'),
(62,'Dominican Republic','2010-04-09 10:24:14','2010-04-09 10:24:15','DO'),
(63,'Ecuador','2010-04-09 10:24:14','2010-04-09 10:24:15','EC'),
(64,'Egypt','2010-04-09 10:24:14','2010-04-09 10:24:15','EG'),
(65,'El Salvador','2010-04-09 10:24:14','2010-04-09 10:24:15','SV'),
(66,'Equatorial Guinea','2010-04-09 10:24:14','2010-04-09 10:24:15','GQ'),
(67,'Eritrea','2010-04-09 10:24:14','2010-04-09 10:24:15','ER'),
(68,'Estonia','2010-04-09 10:24:14','2010-04-09 10:24:15','EE'),
(69,'Ethiopia','2010-04-09 10:24:14','2010-04-09 10:24:15','ET'),
(70,'Falkland Islands (Malvinas)','2010-04-09 10:24:14','2010-04-09 10:24:15','FK'),
(71,'Faroe Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','FO'),
(72,'Fiji','2010-04-09 10:24:14','2010-04-09 10:24:15','FJ'),
(73,'Finland','2010-04-09 10:24:14','2010-04-09 10:24:15','FI'),
(74,'France','2010-04-09 10:24:14','2010-04-09 10:24:15','FR'),
(75,'French Guiana','2010-04-09 10:24:14','2010-04-09 10:24:15','GF'),
(76,'French Polynesia','2010-04-09 10:24:14','2010-04-09 10:24:15','PF'),
(77,'French Southern Territories','2010-04-09 10:24:14','2010-04-09 10:24:15','TF'),
(78,'Gabon','2010-04-09 10:24:14','2010-04-09 10:24:15','GA'),
(79,'Gambia','2010-04-09 10:24:14','2010-04-09 10:24:15','GM'),
(80,'Georgia','2010-04-09 10:24:14','2010-04-09 10:24:15','GE'),
(81,'Germany','2010-04-09 10:24:14','2010-04-09 10:24:15','DE'),
(82,'Ghana','2010-04-09 10:24:14','2010-04-09 10:24:15','GH'),
(83,'Gibraltar','2010-04-09 10:24:14','2010-04-09 10:24:15','GI'),
(84,'Greece','2010-04-09 10:24:14','2010-04-09 10:24:15','GR'),
(85,'Greenland','2010-04-09 10:24:14','2010-04-09 10:24:15','GL'),
(86,'Grenada','2010-04-09 10:24:14','2010-04-09 10:24:15','GD'),
(87,'Guadeloupe','2010-04-09 10:24:14','2010-04-09 10:24:15','GP'),
(88,'Guam','2010-04-09 10:24:14','2010-04-09 10:24:15','GU'),
(89,'Guatemala','2010-04-09 10:24:14','2010-04-09 10:24:15','GT'),
(90,'Guernsey','2010-04-09 10:24:14','2010-04-09 10:24:15','GG'),
(91,'Guinea','2010-04-09 10:24:14','2010-04-09 10:24:15','GN'),
(92,'Guinea-bissau','2010-04-09 10:24:14','2010-04-09 10:24:15','GW'),
(93,'Guyana','2010-04-09 10:24:14','2010-04-09 10:24:15','GY'),
(94,'Haiti','2010-04-09 10:24:14','2010-04-09 10:24:15','HT'),
(95,'Heard Island and Mcdonald Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','HM'),
(96,'Holy See (Vatican City State)','2010-04-09 10:24:14','2010-04-09 10:24:15','VA'),
(97,'Honduras','2010-04-09 10:24:14','2010-04-09 10:24:15','HN'),
(98,'Hong Kong','2010-04-09 10:24:14','2010-04-09 10:24:15','HK'),
(99,'Hungary','2010-04-09 10:24:14','2010-04-09 10:24:15','HU'),
(100,'Iceland','2010-04-09 10:24:14','2010-04-09 10:24:15','IS'),
(101,'India','2010-04-09 10:24:14','2010-04-09 10:24:15','IN'),
(102,'Indonesia','2010-04-09 10:24:14','2010-04-09 10:24:15','ID'),
(103,'Iran (Islamic Republic of)','2010-04-09 10:24:14','2010-04-09 10:24:15','IR'),
(104,'Iraq','2010-04-09 10:24:14','2010-04-09 10:24:15','IQ'),
(105,'Ireland','2010-04-09 10:24:14','2010-04-09 10:24:15','IE'),
(106,'Isle of Man','2010-04-09 10:24:14','2010-04-09 10:24:15','IM'),
(107,'Israel','2010-04-09 10:24:14','2010-04-09 10:24:15','IL'),
(108,'Italy','2010-04-09 10:24:14','2010-04-09 10:24:15','IT'),
(109,'Jamaica','2010-04-09 10:24:14','2010-04-09 10:24:15','JM'),
(110,'Japan','2010-04-09 10:24:14','2010-04-09 10:24:15','JP'),
(111,'Jersey','2010-04-09 10:24:14','2010-04-09 10:24:15','JE'),
(112,'Jordan','2010-04-09 10:24:14','2010-04-09 10:24:15','JO'),
(113,'Kazakhstan','2010-04-09 10:24:14','2010-04-09 10:24:15','KZ'),
(114,'Kenya','2010-04-09 10:24:14','2010-04-09 10:24:15','KE'),
(115,'Kiribati','2010-04-09 10:24:14','2010-04-09 10:24:15','KI'),
(116,'Korea (Democratic People''s Republic of)','2010-04-09 10:24:14','2010-04-09 10:24:15','KP'),
(117,'Korea (Republic of)','2010-04-09 10:24:14','2010-04-09 10:24:15','KR'),
(118,'Kuwait','2010-04-09 10:24:14','2010-04-09 10:24:15','KW'),
(119,'Kyrgyzstan','2010-04-09 10:24:14','2010-04-09 10:24:15','KG'),
(120,'Lao People''s Democratic Republic','2010-04-09 10:24:14','2010-04-09 10:24:15','LA'),
(121,'Latvia','2010-04-09 10:24:14','2010-04-09 10:24:15','LV'),
(122,'Lebanon','2010-04-09 10:24:14','2010-04-09 10:24:15','LB'),
(123,'Lesotho','2010-04-09 10:24:14','2010-04-09 10:24:15','LS'),
(124,'Liberia','2010-04-09 10:24:14','2010-04-09 10:24:15','LR'),
(125,'Libyan Arab Jamahiriya','2010-04-09 10:24:14','2010-04-09 10:24:15','LY'),
(126,'Liechtenstein','2010-04-09 10:24:14','2010-04-09 10:24:15','LI'),
(127,'Lithuania','2010-04-09 10:24:14','2010-04-09 10:24:15','LT'),
(128,'Luxembourg','2010-04-09 10:24:14','2010-04-09 10:24:15','LU'),
(129,'Macao','2010-04-09 10:24:14','2010-04-09 10:24:15','MO'),
(130,'Macedonia The Former Yugoslav Republic of','2010-04-09 10:24:14','2010-04-09 10:24:15','MK'),
(131,'Madagascar','2010-04-09 10:24:14','2010-04-09 10:24:15','MG'),
(132,'Malawi','2010-04-09 10:24:14','2010-04-09 10:24:15','MW'),
(133,'Malaysia','2010-04-09 10:24:14','2010-04-09 10:24:15','MY'),
(134,'Maldives','2010-04-09 10:24:14','2010-04-09 10:24:15','MV'),
(135,'Mali','2010-04-09 10:24:14','2010-04-09 10:24:15','ML'),
(136,'Malta','2010-04-09 10:24:14','2010-04-09 10:24:15','MT'),
(137,'Marshall Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','MH'),
(138,'Martinique','2010-04-09 10:24:14','2010-04-09 10:24:15','MQ'),
(139,'Mauritania','2010-04-09 10:24:14','2010-04-09 10:24:15','MR'),
(140,'Mauritius','2010-04-09 10:24:14','2010-04-09 10:24:15','MU'),
(141,'Mayotte','2010-04-09 10:24:14','2010-04-09 10:24:15','YT'),
(142,'Mexico','2010-04-09 10:24:14','2010-04-09 10:24:15','MX'),
(143,'Micronesia Federated States of','2010-04-09 10:24:14','2010-04-09 10:24:15','FM'),
(144,'Moldova Republic of','2010-04-09 10:24:14','2010-04-09 10:24:15','MD'),
(145,'Monaco','2010-04-09 10:24:14','2010-04-09 10:24:15','MC'),
(146,'Mongolia','2010-04-09 10:24:14','2010-04-09 10:24:15','MN'),
(147,'Montenegro','2010-04-09 10:24:14','2010-04-09 10:24:15','ME'),
(148,'Montserrat','2010-04-09 10:24:14','2010-04-09 10:24:15','MS'),
(149,'Morocco','2010-04-09 10:24:14','2010-04-09 10:24:15','MA'),
(150,'Mozambique','2010-04-09 10:24:14','2010-04-09 10:24:15','MZ'),
(151,'Myanmar','2010-04-09 10:24:14','2010-04-09 10:24:15','MM'),
(152,'Namibia','2010-04-09 10:24:14','2010-04-09 10:24:15','NA'),
(153,'Nauru','2010-04-09 10:24:14','2010-04-09 10:24:15','NR'),
(154,'Nepal','2010-04-09 10:24:14','2010-04-09 10:24:15','NP'),
(155,'Netherlands','2010-04-09 10:24:14','2010-04-09 10:24:15','NL'),
(156,'Netherlands Antilles','2010-04-09 10:24:14','2010-04-09 10:24:15','AN'),
(157,'New Caledonia','2010-04-09 10:24:14','2010-04-09 10:24:15','NC'),
(158,'New Zealand','2010-04-09 10:24:14','2010-04-09 10:24:15','NZ'),
(159,'Nicaragua','2010-04-09 10:24:14','2010-04-09 10:24:15','NI'),
(160,'Niger','2010-04-09 10:24:14','2010-04-09 10:24:15','NE'),
(161,'Nigeria','2010-04-09 10:24:14','2010-04-09 10:24:15','NG'),
(162,'Niue','2010-04-09 10:24:14','2010-04-09 10:24:15','NU'),
(163,'Norfolk Island','2010-04-09 10:24:14','2010-04-09 10:24:15','NF'),
(164,'Northern Mariana Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','MP'),
(165,'Norway','2010-04-09 10:24:14','2010-04-09 10:24:15','NO'),
(166,'Oman','2010-04-09 10:24:14','2010-04-09 10:24:15','OM'),
(167,'Pakistan','2010-04-09 10:24:14','2010-04-09 10:24:15','PK'),
(168,'Palau','2010-04-09 10:24:14','2010-04-09 10:24:15','PW'),
(169,'Palestinian Territory Occupied','2010-04-09 10:24:14','2010-04-09 10:24:15','PS'),
(170,'Panama','2010-04-09 10:24:14','2010-04-09 10:24:15','PA'),
(171,'Papua New Guinea','2010-04-09 10:24:14','2010-04-09 10:24:15','PG'),
(172,'Paraguay','2010-04-09 10:24:14','2010-04-09 10:24:15','PY'),
(173,'Peru','2010-04-09 10:24:14','2010-04-09 10:24:15','PE'),
(174,'Philippines','2010-04-09 10:24:14','2010-04-09 10:24:15','PH'),
(175,'Pitcairn','2010-04-09 10:24:14','2010-04-09 10:24:15','PN'),
(176,'Poland','2010-04-09 10:24:14','2010-04-09 10:24:15','PL'),
(177,'Portugal','2010-04-09 10:24:14','2010-04-09 10:24:15','PT'),
(178,'Puerto Rico','2010-04-09 10:24:14','2010-04-09 10:24:15','PR'),
(179,'Qatar','2010-04-09 10:24:14','2010-04-09 10:24:15','QA'),
(180,'Reunion','2010-04-09 10:24:14','2010-04-09 10:24:15','RE'),
(181,'Romania','2010-04-09 10:24:14','2010-04-09 10:24:15','RO'),
(182,'Russian Federation','2010-04-09 10:24:14','2010-04-09 10:24:15','RU'),
(183,'Rwanda','2010-04-09 10:24:14','2010-04-09 10:24:15','RW'),
(184,'Saint Helena','2010-04-09 10:24:14','2010-04-09 10:24:15','SH'),
(185,'Saint Kitts and Nevis','2010-04-09 10:24:14','2010-04-09 10:24:15','KN'),
(186,'Saint Lucia','2010-04-09 10:24:14','2010-04-09 10:24:15','LC'),
(187,'Saint Pierre and Miquelon','2010-04-09 10:24:14','2010-04-09 10:24:15','PM'),
(188,'Saint Vincent and The Grenadines','2010-04-09 10:24:14','2010-04-09 10:24:15','VC'),
(189,'Samoa','2010-04-09 10:24:14','2010-04-09 10:24:15','WS'),
(190,'San Marino','2010-04-09 10:24:14','2010-04-09 10:24:15','SM'),
(191,'Sao Tome and Principe','2010-04-09 10:24:14','2010-04-09 10:24:15','ST'),
(192,'Saudi Arabia','2010-04-09 10:24:14','2010-04-09 10:24:15','SA'),
(193,'Senegal','2010-04-09 10:24:14','2010-04-09 10:24:15','SN'),
(194,'Serbia','2010-04-09 10:24:14','2010-04-09 10:24:15','RS'),
(195,'Seychelles','2010-04-09 10:24:14','2010-04-09 10:24:15','SC'),
(196,'Sierra Leone','2010-04-09 10:24:14','2010-04-09 10:24:15','SL'),
(197,'Singapore','2010-04-09 10:24:14','2010-04-09 10:24:15','SG'),
(198,'Slovakia','2010-04-09 10:24:14','2010-04-09 10:24:15','SK'),
(199,'Slovenia','2010-04-09 10:24:14','2010-04-09 10:24:15','SI'),
(200,'Solomon Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','SB'),
(201,'Somalia','2010-04-09 10:24:14','2010-04-09 10:24:15','SO'),
(202,'South Africa','2010-04-09 10:24:14','2010-04-09 10:24:15','ZA'),
(203,'South Georgia and The South Sandwich Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','GS'),
(204,'Spain','2010-04-09 10:24:14','2010-04-09 10:24:15','ES'),
(205,'Sri Lanka','2010-04-09 10:24:14','2010-04-09 10:24:15','LK'),
(206,'Sudan','2010-04-09 10:24:14','2010-04-09 10:24:15','SD'),
(207,'Suriname','2010-04-09 10:24:14','2010-04-09 10:24:15','SR'),
(208,'Svalbard and Jan Mayen','2010-04-09 10:24:14','2010-04-09 10:24:15','SJ'),
(209,'Swaziland','2010-04-09 10:24:14','2010-04-09 10:24:15','SZ'),
(210,'Sweden','2010-04-09 10:24:14','2010-04-09 10:24:15','SE'),
(211,'Switzerland','2010-04-09 10:24:14','2010-04-09 10:24:15','CH'),
(212,'Syrian Arab Republic','2010-04-09 10:24:14','2010-04-09 10:24:15','SY'),
(213,'Taiwan Province of China','2010-04-09 10:24:14','2010-04-09 10:24:15','TW'),
(214,'Tajikistan','2010-04-09 10:24:14','2010-04-09 10:24:15','TJ'),
(215,'Tanzania United Republic of','2010-04-09 10:24:14','2010-04-09 10:24:15','TZ'),
(216,'Thailand','2010-04-09 10:24:14','2010-04-09 10:24:15','TH'),
(217,'Timor-leste','2010-04-09 10:24:14','2010-04-09 10:24:15','TL'),
(218,'Togo','2010-04-09 10:24:14','2010-04-09 10:24:15','TG'),
(219,'Tokelau','2010-04-09 10:24:14','2010-04-09 10:24:15','TK'),
(220,'Tonga','2010-04-09 10:24:14','2010-04-09 10:24:15','TO'),
(221,'Trinidad and Tobago','2010-04-09 10:24:14','2010-04-09 10:24:15','TT'),
(222,'Tunisia','2010-04-09 10:24:14','2010-04-09 10:24:15','TN'),
(223,'Turkey','2010-04-09 10:24:14','2010-04-09 10:24:15','TR'),
(224,'Turkmenistan','2010-04-09 10:24:14','2010-04-09 10:24:15','TM'),
(225,'Turks and Caicos Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','TC'),
(226,'Tuvalu','2010-04-09 10:24:14','2010-04-09 10:24:15','TV'),
(227,'Uganda','2010-04-09 10:24:14','2010-04-09 10:24:15','UG'),
(228,'Ukraine','2010-04-09 10:24:14','2010-04-09 10:24:15','UA'),
(229,'United Arab Emirates','2010-04-09 10:24:14','2010-04-09 10:24:15','AE'),
(230,'United Kingdom','2010-04-09 10:24:14','2010-04-09 10:24:15','GB'),
(231,'United States','2010-04-09 10:24:14','2010-04-09 10:24:15','US'),
(232,'United States Minor Outlying Islands','2010-04-09 10:24:14','2010-04-09 10:24:15','UM'),
(233,'Uruguay','2010-04-09 10:24:14','2010-04-09 10:24:15','UY'),
(234,'Uzbekistan','2010-04-09 10:24:14','2010-04-09 10:24:15','UZ'),
(235,'Vanuatu','2010-04-09 10:24:14','2010-04-09 10:24:15','VU'),
(236,'Venezuela','2010-04-09 10:24:14','2010-04-09 10:24:15','VE'),
(237,'Viet Nam','2010-04-09 10:24:14','2010-04-09 10:24:15','VN'),
(238,'Virgin Islands British','2010-04-09 10:24:14','2010-04-09 10:24:15','VG'),
(239,'Virgin Islands U.S.','2010-04-09 10:24:14','2010-04-09 10:24:15','VI'),
(240,'Wallis and Futuna','2010-04-09 10:24:14','2010-04-09 10:24:15','WF'),
(241,'Western Sahara','2010-04-09 10:24:14','2010-04-09 10:24:15','EH'),
(242,'Yemen','2010-04-09 10:24:14','2010-04-09 10:24:15','YE'),
(243,'Zambia','2010-04-09 10:24:14','2010-04-09 10:24:15','ZM'),
(244,'Zimbabwe','2010-04-09 10:24:14','2010-04-09 10:24:15','ZW');



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
	`address5` VARCHAR(256),
	`postcode` VARCHAR(256),
  `created_at` DATETIME,
  `updated_at` DATETIME,
	PRIMARY KEY (`id`)
);

INSERT INTO `locations` VALUES
(1,"Antares Incorporated","1234","12 Ocean Blvd","Santa Ana","CA","USA","","97837","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(2,"Vega Ltd","89223","Vega Point","3 London Bridge Street","London","UK", "","SE1 8ZZ","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(3,"Sirius GmbH","66473","Sirius Plaza","345 Steinerstrasse","Frankfurt","Germany", "","123328","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(4,"Aquarius Ltd","99933","Glass Shard","5 Tooley Street","London","UK", "","SE1 8AA","2010-02-19 14:02:01","2010-02-19 14:02:01"),
(5,"Orion Incorporated","777333","Axe Yard","13 Leadenhall","London","UK", "","EC1 9UU","2010-02-19 14:02:01","2010-02-19 14:02:01");

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
(17, "Microsoft","Microsoft","Operating System Software and Office Productivity Software","2010-03-18 18:33:21","2010-03-18 18:33:21");

DROP TABLE IF EXISTS `registers`;

CREATE TABLE `registers` (
	`id`	SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24),
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
(1, "Walkaround Audit","2010-03-25 18:36:09","Annual","Catalog X",99, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(2, "Network Discovery","2010-03-25 18:36:09","Monthly","Catalog Y",89, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(3, "Fixed Asset Register","2010-03-25 18:36:09","Once","Catalog Z",72, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09"),
(4, "Purchase Record","2010-03-25 18:36:09","Once","Catalog AA",55, 1, 1,"2010-03-18 18:25:09","2010-03-18 18:25:09");

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
(2,'john','john.springall@sameclat.com','admin',1,'2314bed3e92f00f9b0e2eac0c74f5fefc61fdbfdfc67fab3fd4f15f7bf0b642a7d204310b17b26416dc6f4a62e2721c3fa5f55b065fb7a931ec9d87c023e3508','4WAj-Subnz06HiU0ASwG',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(3,'fraz','fraz.hamid@sameclat.com','admin',0,'9bb51d932c527dc83cd5b3ea2ce96c166258d81f0dff146c689b9e2c46735f4376579245967ab1e03ca505e0a322c61a48bfde598caba4a1df50ca17e2741965','Acy2xGODHCEZh05bELpu',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(4,'tim','tim.collis@sameclat.com','admin',0,'95a72263b0affc65abb9a85b427cab17d552c975ff8f2a810d18e14225ec1805a01f944ab11b249234d3587559a213a149aef123707307bb1e2c7d02ab168f39','8leQruhRbGLxPB_EWMvD',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(5,'admin','admin@sameclat.com','admin',0,'4e17a991c62470639abc5f7a7e9f0eb99b2e8eb46e2520e68636afdf5f0c26060e1200eb5b3424a87157291575b674ad12a170df17a70beabe95ce1c4d5616b1','f1mvaOl0YOR_n0qoDRS8',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(6,'client','client@sameclat.com','client',1,'ba3ff0b7cb5e376a343f2e930f374934d0a80f4c2b74cddf91ab1b44f0cc6a696b230a80ed7509882812a93af0631be861796fc83fb48e7594b4c4f5ab106fe9','Rt6wZ07E_5zW-xyerPAB',0,'2010-04-20 14:07:07','2010-04-20 14:07:07'),
(7,'clientmaintainer','clientmaintainer@sameclat.com','clientmaintainer',1,'625057bcc44ea3710c2152ce87c81d1739d4faa768b978f72b044b03ac7e7c4eaef3f4c1871d780a342caf09fd3b5c7ce2896e28f3f97f7281509d178e0692a8','1lvy8He6F2QaemGnrzWW',0,'2010-04-20 14:07:07','2010-04-20 14:07:07');

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


