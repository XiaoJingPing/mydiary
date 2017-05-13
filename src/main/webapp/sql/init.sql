/*Table structure for table `t_diary` */

DROP TABLE IF EXISTS `t_diary`;

CREATE TABLE `t_diary` (
  `diaryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`diaryId`),
  KEY `FK_t_diary` (`typeId`),
  CONSTRAINT `FK_t_diary` FOREIGN KEY (`typeId`) REFERENCES `t_diarytype` (`diaryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_diary` */

/*Table structure for table `t_diarytype` */

DROP TABLE IF EXISTS `t_diarytype`;

CREATE TABLE `t_diarytype` (
  `diaryTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`diaryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_diarytype` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `imageName` varchar(40) DEFAULT NULL,
  `mood` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
