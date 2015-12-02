CREATE TABLE `t_blog` (
  `N_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_TITLE` varchar(50) DEFAULT NULL,
  `C_CONTENT` text,
  `N_TYPE` int(11) DEFAULT NULL,
  `N_USERID` int(11) DEFAULT NULL,
  `DT_CREATETIME` datetime DEFAULT NULL,
  `DT_EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`N_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `t_blog_comment` (
  `T_ID` int(11) NOT NULL AUTO_INCREMENT,
  `T_PID` int(11) DEFAULT NULL,
  `T_REP_ID` int(11) DEFAULT NULL,
  `T_USER_ID` int(11) DEFAULT NULL,
  `T_COMMENT` text,
  `DT_CREATETIME` datetime DEFAULT NULL,
  `DT_EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`T_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_user` (
  `N_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_USERNAME` varchar(30) DEFAULT NULL,
  `C_PASSWORD` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `DT_CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`N_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `t_leave_message` (
  `N_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_TITLE` varchar(50) DEFAULT NULL,
  `C_CONTENT` text,
  `N_USERID` int(11) DEFAULT NULL,
 `C_USERNAME` int(11) DEFAULT NULL,
  `DT_CREATETIME` datetime DEFAULT NULL,
  `DT_EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`N_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `t_codepush_record` (
  `N_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_PUSH_ID` varchar(50) DEFAULT NULL,
  `C_COMMITTER_EMAIL` varchar(50) DEFAULT NULL,
  `C_COMMITTER_NAME` varchar(50) DEFAULT NULL,
  `C_COMMITTER_SHA` varchar(50) DEFAULT NULL,
  `C_COMMITTER_MSG` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `DT_CREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`N_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `TPolymerizationElement` (
  `id` int NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ext1` varchar(300) DEFAULT NULL,
  `ext2` varchar(300) DEFAULT NULL,
  `ext3` varchar(300) DEFAULT NULL,
  `ext4` varchar(300) DEFAULT NULL,
  `ext5` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `TGasoline` (
  `id` varchar(50) NOT NULL,
  `bdrq` date DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `bdfd` decimal(5,2) DEFAULT NULL,
  `type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

