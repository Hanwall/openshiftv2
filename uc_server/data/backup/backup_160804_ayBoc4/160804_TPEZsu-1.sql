# Identify: MTQ3MDMwMzEyMyx1Y2VudGVyLHVjZW50ZXIsbXVsdGl2b2wsMQ==
# <?php exit();?>
# ucenter Multi-Volume Data Dump Vol.1
# Time: 2016-08-04 17:32:03
# Type: ucenter
# Table Prefix: pre_ucenter_
# utf8
# ucenter Home: http://www.comsenz.com
# Please visit our website for newest infomation about ucenter
# --------------------------------------------------------


DROP TABLE IF EXISTS pre_ucenter_admins;
CREATE TABLE pre_ucenter_admins (
  uid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  username char(15) NOT NULL DEFAULT '',
  allowadminsetting tinyint(1) NOT NULL DEFAULT '0',
  allowadminapp tinyint(1) NOT NULL DEFAULT '0',
  allowadminuser tinyint(1) NOT NULL DEFAULT '0',
  allowadminbadword tinyint(1) NOT NULL DEFAULT '0',
  allowadmintag tinyint(1) NOT NULL DEFAULT '0',
  allowadminpm tinyint(1) NOT NULL DEFAULT '0',
  allowadmincredits tinyint(1) NOT NULL DEFAULT '0',
  allowadmindomain tinyint(1) NOT NULL DEFAULT '0',
  allowadmindb tinyint(1) NOT NULL DEFAULT '0',
  allowadminnote tinyint(1) NOT NULL DEFAULT '0',
  allowadmincache tinyint(1) NOT NULL DEFAULT '0',
  allowadminlog tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (uid),
  UNIQUE KEY username (username)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

DROP TABLE IF EXISTS pre_ucenter_applications;
CREATE TABLE pre_ucenter_applications (
  appid smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  url varchar(255) NOT NULL DEFAULT '',
  authkey varchar(255) NOT NULL DEFAULT '',
  ip varchar(15) NOT NULL DEFAULT '',
  viewprourl varchar(255) NOT NULL,
  apifilename varchar(30) NOT NULL DEFAULT 'uc.php',
  `charset` varchar(8) NOT NULL DEFAULT '',
  dbcharset varchar(8) NOT NULL DEFAULT '',
  synlogin tinyint(1) NOT NULL DEFAULT '0',
  recvnote tinyint(1) DEFAULT '0',
  extra text NOT NULL,
  tagtemplates text NOT NULL,
  allowips text NOT NULL,
  PRIMARY KEY (appid)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

DROP TABLE IF EXISTS pre_ucenter_badwords;
CREATE TABLE pre_ucenter_badwords (
  id smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  admin varchar(15) NOT NULL DEFAULT '',
  find varchar(255) NOT NULL DEFAULT '',
  replacement varchar(255) NOT NULL DEFAULT '',
  findpattern varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  UNIQUE KEY find (find)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_domains;
CREATE TABLE pre_ucenter_domains (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  domain char(40) NOT NULL DEFAULT '',
  ip char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_failedlogins;
CREATE TABLE pre_ucenter_failedlogins (
  ip char(15) NOT NULL DEFAULT '',
  count tinyint(1) unsigned NOT NULL DEFAULT '0',
  lastupdate int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (ip)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_feeds;
CREATE TABLE pre_ucenter_feeds (
  feedid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  appid varchar(30) NOT NULL DEFAULT '',
  icon varchar(30) NOT NULL DEFAULT '',
  uid mediumint(8) unsigned NOT NULL DEFAULT '0',
  username varchar(15) NOT NULL DEFAULT '',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  hash_template varchar(32) NOT NULL DEFAULT '',
  hash_data varchar(32) NOT NULL DEFAULT '',
  title_template text NOT NULL,
  title_data text NOT NULL,
  body_template text NOT NULL,
  body_data text NOT NULL,
  body_general text NOT NULL,
  image_1 varchar(255) NOT NULL DEFAULT '',
  image_1_link varchar(255) NOT NULL DEFAULT '',
  image_2 varchar(255) NOT NULL DEFAULT '',
  image_2_link varchar(255) NOT NULL DEFAULT '',
  image_3 varchar(255) NOT NULL DEFAULT '',
  image_3_link varchar(255) NOT NULL DEFAULT '',
  image_4 varchar(255) NOT NULL DEFAULT '',
  image_4_link varchar(255) NOT NULL DEFAULT '',
  target_ids varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (feedid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_friends;
CREATE TABLE pre_ucenter_friends (
  uid mediumint(8) unsigned NOT NULL DEFAULT '0',
  friendid mediumint(8) unsigned NOT NULL DEFAULT '0',
  direction tinyint(1) NOT NULL DEFAULT '0',
  version int(10) unsigned NOT NULL AUTO_INCREMENT,
  delstatus tinyint(1) NOT NULL DEFAULT '0',
  `comment` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (version),
  KEY uid (uid),
  KEY friendid (friendid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_mailqueue;
CREATE TABLE pre_ucenter_mailqueue (
  mailid int(10) unsigned NOT NULL AUTO_INCREMENT,
  touid mediumint(8) unsigned NOT NULL DEFAULT '0',
  tomail varchar(32) NOT NULL,
  frommail varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  message text NOT NULL,
  `charset` varchar(15) NOT NULL,
  htmlon tinyint(1) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  failures tinyint(3) unsigned NOT NULL DEFAULT '0',
  appid smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (mailid),
  KEY appid (appid),
  KEY `level` (`level`,failures)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_memberfields;
CREATE TABLE pre_ucenter_memberfields (
  uid mediumint(8) unsigned NOT NULL,
  blacklist text NOT NULL,
  PRIMARY KEY (uid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_members;
CREATE TABLE pre_ucenter_members (
  uid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  username char(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  email char(32) NOT NULL DEFAULT '',
  myid char(30) NOT NULL DEFAULT '',
  myidkey char(16) NOT NULL DEFAULT '',
  regip char(15) NOT NULL DEFAULT '',
  regdate int(10) unsigned NOT NULL DEFAULT '0',
  lastloginip int(10) NOT NULL DEFAULT '0',
  lastlogintime int(10) unsigned NOT NULL DEFAULT '0',
  salt char(6) NOT NULL,
  secques char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (uid),
  UNIQUE KEY username (username),
  KEY email (email)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3;

DROP TABLE IF EXISTS pre_ucenter_mergemembers;
CREATE TABLE pre_ucenter_mergemembers (
  appid smallint(6) unsigned NOT NULL,
  username char(15) NOT NULL,
  PRIMARY KEY (appid,username)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_newpm;
CREATE TABLE pre_ucenter_newpm (
  uid mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (uid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_notelist;
CREATE TABLE pre_ucenter_notelist (
  noteid int(10) unsigned NOT NULL AUTO_INCREMENT,
  operation char(32) NOT NULL,
  closed tinyint(4) NOT NULL DEFAULT '0',
  totalnum smallint(6) unsigned NOT NULL DEFAULT '0',
  succeednum smallint(6) unsigned NOT NULL DEFAULT '0',
  getdata mediumtext NOT NULL,
  postdata mediumtext NOT NULL,
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  pri tinyint(3) NOT NULL DEFAULT '0',
  app1 tinyint(4) NOT NULL,
  PRIMARY KEY (noteid),
  KEY closed (closed,pri,noteid),
  KEY dateline (dateline)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;

DROP TABLE IF EXISTS pre_ucenter_pm_indexes;
CREATE TABLE pre_ucenter_pm_indexes (
  pmid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_pm_lists;
CREATE TABLE pre_ucenter_pm_lists (
  plid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  pmtype tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL,
  members smallint(5) unsigned NOT NULL DEFAULT '0',
  min_max varchar(17) NOT NULL,
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  lastmessage text NOT NULL,
  PRIMARY KEY (plid),
  KEY pmtype (pmtype),
  KEY min_max (min_max),
  KEY authorid (authorid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS pre_ucenter_pm_members;
CREATE TABLE pre_ucenter_pm_members (
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  uid mediumint(8) unsigned NOT NULL DEFAULT '0',
  isnew tinyint(1) unsigned NOT NULL DEFAULT '0',
  pmnum int(10) unsigned NOT NULL DEFAULT '0',
  lastupdate int(10) unsigned NOT NULL DEFAULT '0',
  lastdateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (plid,uid),
  KEY isnew (isnew),
  KEY lastdateline (uid,lastdateline),
  KEY lastupdate (uid,lastupdate)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_0;
CREATE TABLE pre_ucenter_pm_messages_0 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_1;
CREATE TABLE pre_ucenter_pm_messages_1 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_2;
CREATE TABLE pre_ucenter_pm_messages_2 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_3;
CREATE TABLE pre_ucenter_pm_messages_3 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_4;
CREATE TABLE pre_ucenter_pm_messages_4 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_5;
CREATE TABLE pre_ucenter_pm_messages_5 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_6;
CREATE TABLE pre_ucenter_pm_messages_6 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_7;
CREATE TABLE pre_ucenter_pm_messages_7 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_8;
CREATE TABLE pre_ucenter_pm_messages_8 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_pm_messages_9;
CREATE TABLE pre_ucenter_pm_messages_9 (
  pmid mediumint(8) unsigned NOT NULL DEFAULT '0',
  plid mediumint(8) unsigned NOT NULL DEFAULT '0',
  authorid mediumint(8) unsigned NOT NULL DEFAULT '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pmid),
  KEY plid (plid,delstatus,dateline),
  KEY dateline (plid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_protectedmembers;
CREATE TABLE pre_ucenter_protectedmembers (
  uid mediumint(8) unsigned NOT NULL DEFAULT '0',
  username char(15) NOT NULL DEFAULT '',
  appid tinyint(1) unsigned NOT NULL DEFAULT '0',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  admin char(15) NOT NULL DEFAULT '0',
  UNIQUE KEY username (username,appid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_settings;
CREATE TABLE pre_ucenter_settings (
  k varchar(32) NOT NULL DEFAULT '',
  v text NOT NULL,
  PRIMARY KEY (k)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_sqlcache;
CREATE TABLE pre_ucenter_sqlcache (
  sqlid char(6) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL,
  expiry int(10) unsigned NOT NULL,
  PRIMARY KEY (sqlid),
  KEY expiry (expiry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_tags;
CREATE TABLE pre_ucenter_tags (
  tagname char(20) NOT NULL,
  appid smallint(6) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext,
  expiration int(10) unsigned NOT NULL,
  KEY tagname (tagname,appid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pre_ucenter_vars;
CREATE TABLE pre_ucenter_vars (
  `name` char(32) NOT NULL DEFAULT '',
  `value` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

INSERT INTO pre_ucenter_admins VALUES ('1',0x61646d696e,'1','1','1','1','1','1','1','1','1','1','1','1');

INSERT INTO pre_ucenter_applications VALUES ('1',0x44495343555a58,0xe8a197e6ba90,0x687474703a2f2f686b2e6875697a686f7568732e636f6d2f6262732f,0x623562617057773277454a497931756c76544f72446958706a69535445444749614e393249522b3077757359383549584a42464459596f6966586e39344765682b4e6a584e736343304e7555704662715a4b366242305662346e6f7562717447755464432f6656585662686e5253686a457a496b55684d47576c645a,'','',0x75632e706870,'','','1','1',0x613a323a7b733a373a2261707070617468223b733a303a22223b733a383a22657874726175726c223b613a303a7b7d7d,0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d2274656d706c617465223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a3c2f726f6f743e,'');



INSERT INTO pre_ucenter_failedlogins VALUES (0x3231382e37322e3131372e3635,'0','1470301304');
INSERT INTO pre_ucenter_failedlogins VALUES (0x376135376135613734333839346130,'0','1470301304');




INSERT INTO pre_ucenter_memberfields VALUES ('1','');

INSERT INTO pre_ucenter_members VALUES ('1',0x61646d696e,0x6262393835653665333039623537623032663539666630343366623338616231,0x68656c6c6f776f726c64406875697a686f7568732e636f6d,'','',0x68696464656e,'1469490680','0','0',0x383335316137,'');



INSERT INTO pre_ucenter_notelist VALUES ('5',0x757064617465636c69656e74,'1','5','0','',0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d22616363657373656d61696c223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2263656e736f72656d61696c223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2263656e736f72757365726e616d65223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2264617465666f726d6174223e3c215b43444154415b792d6e2d6a5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d22646f75626c6565223e3c215b43444154415b305d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2274696d656f6666736574223e3c215b43444154415b32383830305d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2270726976617465706d7468726561646c696d6974223e3c215b43444154415b32355d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2263686174706d7468726561646c696d6974223e3c215b43444154415b33305d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2263686174706d6d656d6265726c696d6974223e3c215b43444154415b33355d5d3e3c2f6974656d3e0d0a093c6974656d2069643d22706d666c6f6f646374726c223e3c215b43444154415b31355d5d3e3c2f6974656d3e0d0a093c6974656d2069643d22706d63656e746572223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d2273656e64706d736563636f6465223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d22706d73656e6472656764617973223e3c215b43444154415b305d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c64656661756c74223e3c215b43444154415b61646d696e406875697a686f7568732e636f6d5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c73656e64223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c736572766572223e3c215b43444154415b736d74702e3231636e2e636f6d5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c706f7274223e3c215b43444154415b32355d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c61757468223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c66726f6d223e3c215b43444154415b5543656e746572203c757365726e616d65403231636e2e636f6d3e5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c617574685f757365726e616d65223e3c215b43444154415b757365726e616d65403231636e2e636f6d5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c617574685f70617373776f7264223e3c215b43444154415b70617373776f72645d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c64656c696d69746572223e3c215b43444154415b305d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c757365726e616d65223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226d61696c73696c656e74223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226c6f67696e5f6661696c656474696d65223e3c215b43444154415b355d5d3e3c2f6974656d3e0d0a3c2f726f6f743e,'1470302037','0','-5');
INSERT INTO pre_ucenter_notelist VALUES ('4',0x75706461746561707073,'1','2','0','',0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d2231223e0d0a09093c6974656d2069643d226170706964223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2274797065223e3c215b43444154415b44495343555a585d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226e616d65223e3c215b43444154415be8a197e6ba905d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2275726c223e3c215b43444154415b687474703a2f2f686b2e6875697a686f7568732e636f6d2f6262732f5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226970223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d227669657770726f75726c223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2261706966696c656e616d65223e3c215b43444154415b75632e7068705d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2263686172736574223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2273796e6c6f67696e223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226578747261223e0d0a0909093c6974656d2069643d2261707070617468223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a0909093c6974656d2069643d22657874726175726c223e0d0a0909093c2f6974656d3e0d0a09093c2f6974656d3e0d0a09093c6974656d2069643d22726563766e6f7465223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c2f6974656d3e0d0a093c6974656d2069643d2255435f415049223e3c215b43444154415b687474703a2f2f686b2e6875697a686f7568732e636f6d2f6262732f75635f7365727665725d5d3e3c2f6974656d3e0d0a3c2f726f6f743e,'1470231802','0','-2');
INSERT INTO pre_ucenter_notelist VALUES ('3',0x75706461746561707073,'1','4','0','',0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d2231223e0d0a09093c6974656d2069643d226170706964223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2274797065223e3c215b43444154415b44495343555a585d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226e616d65223e3c215b43444154415be8a197e6ba905d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2275726c223e3c215b43444154415b687474703a2f2f686b2e6875697a686f7568732e636f6d2f6262732f5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226970223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d227669657770726f75726c223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2261706966696c656e616d65223e3c215b43444154415b75632e7068705d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2263686172736574223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2273796e6c6f67696e223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226578747261223e0d0a0909093c6974656d2069643d2261707070617468223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a0909093c6974656d2069643d22657874726175726c223e0d0a0909093c2f6974656d3e0d0a09093c2f6974656d3e0d0a09093c6974656d2069643d22726563766e6f7465223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a093c2f6974656d3e0d0a093c6974656d2069643d2255435f415049223e3c215b43444154415b687474703a2f2f686b2e6875697a686f7568732e636f6d2f6262732f75635f7365727665725d5d3e3c2f6974656d3e0d0a3c2f726f6f743e,'1470267311','0','-4');
INSERT INTO pre_ucenter_notelist VALUES ('6',0x64656c65746575736572,'1','1','1',0x6964733d273227,'','1470302995','0','1');















INSERT INTO pre_ucenter_settings VALUES (0x616363657373656d61696c,'');
INSERT INTO pre_ucenter_settings VALUES (0x63656e736f72656d61696c,'');
INSERT INTO pre_ucenter_settings VALUES (0x63656e736f72757365726e616d65,'');
INSERT INTO pre_ucenter_settings VALUES (0x64617465666f726d6174,0x792d6e2d6a);
INSERT INTO pre_ucenter_settings VALUES (0x646f75626c6565,'0');
INSERT INTO pre_ucenter_settings VALUES (0x6e6578746e6f746574696d65,'0');
INSERT INTO pre_ucenter_settings VALUES (0x74696d656f6666736574,0x3238383030);
INSERT INTO pre_ucenter_settings VALUES (0x70726976617465706d7468726561646c696d6974,0x3235);
INSERT INTO pre_ucenter_settings VALUES (0x63686174706d7468726561646c696d6974,0x3330);
INSERT INTO pre_ucenter_settings VALUES (0x63686174706d6d656d6265726c696d6974,0x3335);
INSERT INTO pre_ucenter_settings VALUES (0x706d666c6f6f646374726c,0x3135);
INSERT INTO pre_ucenter_settings VALUES (0x706d63656e746572,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x73656e64706d736563636f6465,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x706d73656e6472656764617973,'0');
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c64656661756c74,0x61646d696e406875697a686f7568732e636f6d);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c73656e64,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c736572766572,0x736d74702e3231636e2e636f6d);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c706f7274,0x3235);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c61757468,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c66726f6d,0x5543656e746572203c757365726e616d65403231636e2e636f6d3e);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c617574685f757365726e616d65,0x757365726e616d65403231636e2e636f6d);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c617574685f70617373776f7264,0x70617373776f7264);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c64656c696d69746572,'0');
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c757365726e616d65,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x6d61696c73696c656e74,0x31);
INSERT INTO pre_ucenter_settings VALUES (0x6c6f67696e5f6661696c656474696d65,0x35);
INSERT INTO pre_ucenter_settings VALUES (0x76657273696f6e,0x312e362e30);



INSERT INTO pre_ucenter_vars VALUES (0x6e6f7465657869737473,'0');
INSERT INTO pre_ucenter_vars VALUES (0x6e6f746565786973747331,0x31);

