create table `t_blog` (
  `n_id` int(11) not null auto_increment,
  `c_title` varchar(50) default null,
  `c_content` text,
  `n_type` int(11) default null,
  `n_userid` int(11) default null,
  `dt_createtime` datetime default null,
  `dt_edittime` datetime default null,
  primary key (`n_id`)
) engine=innodb auto_increment=2 default charset=utf8;


create table `t_blog_comment` (
  `t_id` int(11) not null auto_increment,
  `t_pid` int(11) default null,
  `t_rep_id` int(11) default null,
  `t_user_id` int(11) default null,
  `t_comment` text,
  `dt_createtime` datetime default null,
  `dt_edittime` datetime default null,
  primary key (`t_id`)
) engine=innodb default charset=utf8;


create table `t_user` (
  `n_id` int(11) not null auto_increment,
  `c_username` varchar(30) default null,
  `c_password` varchar(50) default null,
  `c_email` varchar(50) default null,
  `dt_create_time` datetime default null,
  primary key (`n_id`)
) engine=innodb auto_increment=2 default charset=utf8;

create table `t_leave_message` (
  `n_id` int(11) not null auto_increment,
  `c_title` varchar(50) default null,
  `c_content` text,
  `n_userid` int(11) default null,
 `c_username` int(11) default null,
  `dt_createtime` datetime default null,
  `dt_edittime` datetime default null,
  primary key (`n_id`)
) engine=innodb auto_increment=2 default charset=utf8;

create table `t_codepush_record` (
  `n_id` int(11) not null auto_increment,
  `c_push_id` varchar(50) default null,
  `c_committer_email` varchar(50) default null,
  `c_committer_name` varchar(50) default null,
  `c_committer_sha` varchar(50) default null,
  `c_committer_msg` varchar(50) default null,
  `ref` varchar(50) default null,
  `dt_createtime` datetime default null,
  primary key (`n_id`)
) engine=innodb auto_increment=2 default charset=utf8;

create table `tpolymerizationelement` (
  `id` int not null,
  `title` varchar(300) default null,
  `url` varchar(300) default null,
  `type` int default null,
  `date` datetime default null,
  `ext1` varchar(300) default null,
  `ext2` varchar(300) default null,
  `ext3` varchar(300) default null,
  `ext4` varchar(300) default null,
  `ext5` varchar(300) default null,
  primary key (`id`,`type`)
) engine=innodb default charset=utf8;


create table `tgasoline` (
  `id` varchar(50) not null,
  `bdrq` date default null,
  `price` decimal(5,2) default null,
  `bdfd` decimal(5,2) default null,
  `type` int(255) default null,
  primary key (`id`)
) engine=innodb default charset=utf8;

