/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - edm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`edm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `edm`;

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `oname` varchar(250) DEFAULT NULL,
  `fid` varchar(200) DEFAULT NULL,
  `fname` varchar(150) DEFAULT NULL,
  `block1` mediumtext,
  `block2` mediumtext,
  `block3` mediumtext,
  `date` varchar(150) DEFAULT NULL,
  `filesize` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT 'Not uploaded in csp',
  `request` varchar(250) DEFAULT 'No response',
  `file` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`oname`,`fid`,`fname`,`block1`,`block2`,`block3`,`date`,`filesize`,`status`,`request`,`file`) values ('surekha','168','file3.txt','&Ã‚Â»ÃƒÂ¥4?+dC9Ã‚ÂÃ‹â€ ÃƒÂ¹Ã¢â€žÂ¢nÃ‚Â°Ã‚Â¹ÃƒÅ’Ã¢â‚¬Å“Ãƒâ€žÃ‚Â!	ÃƒÂ¸XX}(Ã‚Â£ÃƒÆ’Ã‚Â J(','n\r}ÃƒÂÃƒâ€”?awÃƒÂ¾ÃƒÂ¯\0ÃƒÂ±Ã‚ÂªbÃ¢â‚¬â€~BZÃƒâ€ºDÃ‚Â½t]:oF}ÃƒÂ¥Ã¢â‚¬Å¾Ã‚Â­gxÃƒÆ’ÃƒÂ©[Ã‚ÂÃ‚Â¯ÃƒÅ“1WYÃ‚Â»Ã¢â‚¬â€œ','5ÃƒÅ“ÃƒÂ¯EÃ‚Â£ÃƒÂ 0Ãƒâ€”ÃƒÂÃ‚Âªo:\'\rÃƒâ€”Ã‚Â½+ÃƒÂ­?	:Ã†â€™Ã‹Å“ÃƒÂÃƒÂ¼z4ÃƒÂµÃ‚ÂºSeÃƒâ„¢Ã‚Â³sÃ‚Â£ÃƒÂ¦Ã¢â€šÂ¬Ãƒâ€º<Ã‚Â¬#0AÃ…â€™','27.10.2018 ',NULL,'Uploaded in csp','No response','&Â»Ã¥4?+dC9ÂË†Ã¹â„¢nÂ°Â¹\\~Â¦Â´Â´ÃŽÃ–Â â€œ+Â­â€º1Â¡Ã¢|ÃuHÃ¥1y/)UPÅ¸+lsÂ¬V]1Ã†ÃºÂ®Ã–1â€™ÃNEÂ¾Ã„ÃŸIÂ£\"Ã†uâ‚¬)Â­LÃ˜-nJ!nRÂ=)KgÃBÂ¾ÃŸÃ˜CÂ¬â€ºJÂ·Ã¶Ã«â€Ã+Âºg'),('surekha','141','file1.txt','ÃƒÂ¹Ã‹Å“Ã¢â‚¬Â¢~Ã‚Â£&MÃ‚Â¯Ã…Â¾#ÃƒÂ¿6ÃƒÂ¶Ã‚Â¶oÃƒÂ,ÃƒÅ Ã…Â¸QÃƒÅ½Ã¢â€šÂ¬Ãƒâ‚¬ÃƒËœÃ¢â‚¬Â¢Ãƒâ€œÃ…Â E\nÃƒÆ’','Ãƒâ€aZ	ÃƒÂ¯K%Ã‚Â¥ÃƒÂÃ¢â‚¬Â¹(Ã‚Â¸ÃƒÂÃƒÂ°9\nÃ‚Â¤Wv\'\\ÃƒÂ¨|vÃ…Â¡ÃƒÂªÃƒÂ','Ã¢â‚¬Â°DTÃ¢â‚¬Â BÃƒÂÃƒÅ’j|\"kFÃ¢â‚¬Ëœ*hÃƒÂº.ÃƒÂ± Ãƒâ€˜\Z{Ã‚Â¯ÃƒÂ¼3RUÃ‚Âºk\\','27.10.2018 ',NULL,'Uploaded in csp','No response','Ã¹Ëœâ€¢~Â£&MÂ¯Å¾#Ã¿6Ã¶Â¶oÂ´{2Ã©k\r~Å“Â²Ã®Ã€D5KÂ±ÃŠe\\bÃ™7ÃŽÃ¸â€¹Â½\0â€¦ÃRkÃ‹Â WÂ£â€™3Â¶â€ ]g6Â±ÂU)ÃºiÂ¾:ÂµÂ½â€°R\0LOÃŽZ'),('surekha','104','fileeee.txt','_Ã‚Â¶<X\"ÃƒÂ±IÃ¢â‚¬ÂºhÃƒÅ½ÃƒÆ’{Ã‚Â·aÃƒÂ¯Ãƒâ€°QÃ‚Â¤\'4\Z	Ã…Â >YÃ‚ÂÃ‚Â²ÃƒÂ¤8','n <ÃƒÂÃ‚Â°Ã…Â¸%ÃƒÂ¢6zÃƒÂºoÃƒâ€“Ãƒâ€°AÃ¢â€šÂ¬Ã…Â½*y,Ãƒâ€œÃƒÂ²Ã‚Â¾HÃƒÂ¼ÃƒÂ­Ã…â€œÃƒÂ²EuÃƒÂ¼ %\"2Ã…â€™Ã¢â‚¬Â¦ÃƒÂ»Ã‚Â³PÃ‚ÂÃ‚Â¶Ã…Â¸ÃƒÂ°Ã†â€™Ãƒâ€˜Ã‚Â«;=ÃƒÂ·ÃƒÂ¦]\"Ã…Â gÃ¢â‚¬Â¦L','Ã‚Â±Ã‚ÂÃƒË†ÃƒÂ¹ÃƒÂ¶&Ã‚Â´!QÃƒâ€ $ÃƒÂ¬Ã‚Âg,ÃƒÅ“ÃƒËœÃƒâ€¡Ã‚ÂªÃ‚Â¿ÃƒË†N0ÃƒÂ¼iÃƒâ€¦{ÃƒÂ¤|Ã‚Âº`\0qÃƒâ€ÃƒÂ¨ ÃƒÆ’ÃƒÂ¯IÃƒÅ¾Ã¢â‚¬Â¢Ã¢â‚¬Â¡ÃƒÂ U|Ã¢â‚¬Â°XÃ‚Â®MÃ†â€™ÃƒÂ¼g\"Ãƒâ€”ÃƒÂµ2ÃƒÂ²ÃƒÅ½ÃƒÂ¡XÃƒÂ´ÃƒÅ ~=\rÃ‚Â²\Zy$Ãƒâ€žÃ‚Â´Ã‚Â¯Ã‚ÂcVk3ÃƒÂ¹UÃƒÂ~ÃƒÂ¤Ã‚Â Ã‚ÂªÃ…â€œÃƒÂ»Ã¢â‚¬Â¹Ã‚Âµ','27.10.2018 ',NULL,'Uploaded in csp','No response','_Â¶<X\"Ã±Iâ€ºhÃŽÃƒ{Â·aÃ¯ILÃˆÃ©â€˜Âµ7Ã©75\\\\Â¢b9Ã‹ÃÂrM:Ë†â€ AÅ¸Ã_GÂ´yÃ¢!Â®Â£%ÃŸÃ‹FÂ£Â°V\"ÃƒÂ£Ãœâ€¹Â­AÂ¹Ã•Å¡ÃÃ„ÃŒ\'Â¦\"4Â¢â‚¬Ã¬â€œâ€šÃ»Â¦ÂÃ‚QÃŸexâ€”d&8Ã¼=+Â²â€¦Ã²\\Ã¤YÃ EL9Â£GoÂÃ¶Ã¿Å¸Ã—Â¢,QÃ«Å¸Ã³Ã«Â|qx]ÃºÂ«Ã¥Â@>uâ€ J,Â­Ã¶ÃžÂ§â€šTÃ–8ÃµÅ¡ÂXÃ½,Â¿%ÃªÃ‰ÂÃºÅ’Å¡Ã“Ã‚Â¬&Ã½Â¯'),('kumar','115','file.txt','y\'wÂ°Ã‰Ã£Ãâ€¹Ãº\n;Å½Ã…\\Ã§','â€Ã®?Âi*Âj\rÃƒaâ€ â€˜','Â·bwÂ¦â€ºÂ¯Â²Æ’Å¾kÂ½lÃ•','27.11.2018 ',NULL,'Not uploaded in csp','No response','ºë³g3>÷<Û‰EeÚî\\YÝÓâóÃºäò×)ö\ZÄ'),('kumar','184','file.txt','y\'wÂ°Ã‰Ã£Ãâ€¹Ãº\n;Å½Ã…\\Ã§','â€Ã®?Âi*Âj\rÃƒaâ€ â€˜','Â·bwÂ¦â€ºÂ¯Â²Æ’Å¾kÂ½lÃ•','27.11.2018 ',NULL,'Not uploaded in csp','No response','ºë³g3>÷<Û‰EeÚî\\YÝÓâóÃºäò×)ö\ZÄ');

/*Table structure for table `fkey` */

DROP TABLE IF EXISTS `fkey`;

CREATE TABLE `fkey` (
  `uname` varchar(100) DEFAULT NULL,
  `oname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sk` varchar(100) DEFAULT '--',
  `status` varchar(100) DEFAULT NULL,
  `gkey` varchar(100) DEFAULT 'request',
  `fid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fkey` */

insert  into `fkey`(`uname`,`oname`,`fname`,`sk`,`status`,`gkey`,`fid`) values ('joshu','surekha','file3.txt','684','Accepted','success','168'),('joshu','surekha','file1.txt','4947','Accepted','success','141'),('joshu','surekha','fileeee.txt','1186','Accepted','success','104');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `oname` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `filesize` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not uploaded in csp',
  `request` varchar(100) DEFAULT 'No response',
  `file` longblob,
  `hashvalue` varchar(50000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `image` */

insert  into `image`(`id`,`oname`,`fid`,`fname`,`date`,`filesize`,`status`,`request`,`file`,`hashvalue`) values (1,'kumar','177','imgg.jpg','27.11.2018 ',NULL,'Uploaded in csp','No response','°\\)~N	Q¾D[ˆT©ÅÇlW¯ŒÓí$&\"	ÀÅ*Ç51íó1y‹œ¯‰^Iš³	ú„IÙ´ûP×”ÏE,#ÌEçK…\rÇP‘¬ïŽŒêó‹kŒ+<^Ï9è–á\Zydœí[ ¹»Ø-(hŒŸ~ªX÷Õ^½á;3:Fž‚~²C¢ i›£ƒyäØ2{,øÖÄN1Ô’©Aˆ2v«I‰5°›Äw‹¸a6T.ò`7/kŽ˜E‡Qg³ýÿHéJ¥!„î¤¦ÁÌsšL³¥† PCù9ÌÑX¯¤úQ@Íµ‡æî:UŸ\rf¶«N™v0ª÷¡ÿ2à˜¸Gb‚É+5\\y°Ô“Y¥•ÅÐ#	¶[30ÕW¨ç†Ž¤->83Ùˆ½*#…ÝJ+LOó1‡ø%c€œ·¦övsüv‹!øø²Ä\Z¯÷´åOço‰æd«‘éRW™g§ªÖ?ØKéŽìg´@‡\\ƒîA§²wP¹®Ô ècT	â+çõ²pîÞµ}¦HÀŒ~x}g³¤4@8&Ô§‡ÔH\0Ê+sÎuÜ€WØŽªcÜ!›%CÞ„™iŸâx`“J\0î\\Š³Ótâ¤¨ºdÌ½šgÝÂ¶>Ý§esB¯hxÈÌxlW\Zã°Î×øœTïÈ·ÙåÊŒPB“ñ!Ô:ÌYß+<B¡¡çúÂã2úbQüRÉ?6˜šÈ:”ûí¼Ìu]H~¥©Ê„@ôíÝš8|üM7-„  ¨ªBU{!Ï}Èâ¦7À½ç¾hV^ðš‚†ÅÏüÔ?4¿¤¯«Ÿ”KjZÕNrrp(žC_Ôˆø>>Ë|7,µ”©èhï·bG+›\"Wt¡³¦ªbËñ\Z×	âªäÙA\r\08¥þ£š©¡ØÊr9¼5a2D/lz›$‰ì§uñg4ú²„Èì„ªrõ«WÄÞ%ê‡ø°Ùon–žxdeeW¥«jð¬«–!µ¬äýýèØ*)rÓ`Ðsú\"Á(ì. ¨ä9,ËöhZAS‹Æ{¢\rõy0\\-Ý\nã”—-è—þZ½a<3\0­*Z®¡ýœ°ˆ	ÃÐÔ6p.$9·w±<å;÷*ßŒ\n\\ó¶ùÃqjå/|íôFÖGt}Lç­€Æ-Ò®E3ñ@wa;±U‹ÇÇ5g–ÇƒSÊ™\0–jÊwTÐøXššõ@©Òíè)Û\0«°Jõ8z¤þÉÅawç¿Õ¿À\r#ªˆã£¾PŸ+G&á³ýVpÁfíU²ÙŸ8<Â:LîÉÀ«ñúiZ	MÕNäÁb]¢T7z<6Q\"o¬qÊ¡yÁÏ\\»^—Æ“<7\'¸ÞÂýP)«Òî²$ïþ:…}ÏZÜy<I>.-v«Vþ‡q3Ê¨à¸§ˆñQÂ„E Cä†S˜Ç¿Ì‘žõi{¯¤ªÌÔ4i­ËÅuŒEYãîpg[w,ØZYf×=gjÖ.•ž»;#!OF¨\rP¾˜¬5®i†’77Æ±Nl›Ê˜^ær_œWž|®ïM±Ý@ØãòZLæï  åú>ã¢ 	T>?º:ÖM.FØJ‰Òb3îª~X‚@Oo)\"©©UïM\rÿä%â–ˆ`È·ƒ¾’RaÁS—w@ RjE¼ü?Ê}®mJ[]‹ÓfŸŠ÷N=ä›Ãø0îž´ì3uô¸êçöýr$Ú“ˆ™FA­\'ñôØ}ÊÊéÂ‚µ?É™Àî\0ÅÑ†Ãšj\'ê\\¾Í_ÑStÊN·2=Lüc8ÿ»ÌâL¸Ÿ^ªœÚ°ñà[ú‰(‚ëº˜zJ•ÊšP§Fà¬É‡£QI4Êp<ô €øðì(Ž Ïuàýÿ¼6ÿº7x’¶:­·Ò”æ Ë_,S‚x´a›´‡õC¨=Ä@÷åÖÄÂºw¾~ÙÙ|xpF`©ðoÿµý¿*íÁ Ï_A ´s½ÁºVFŽ(µê7fÅÊ¢Í{ùÐýw›úCW£žmØ~yåÃ{M~A‰^½Ùµ¦µòQšn,(>6ÝøQäá×ÐÃqì£gßÌÁ.‡²Ôzi¦Ê›~J¢èØHÝ¾§pà®gqºç®|scÍù|)ü—)Ó»P8W¬Žò[â-Æ{ÿ;¼k²/3!‡ØA\rÔ1b,§oWªYÉË³‹€	9O\n³I©’Û\0®3¾À{ÁŠ¦ÚP	H\n˜V´ Zgàðö—Š©¼ô?Ôh>½€ƒ¬\rãô\\&O-fïX‹…á6É>Ç‰DèÅæz%ç0býmsLŠ~ƒ|Ø“\Z·äg~ÁeÙG‚”8?Š„ã,³Gr»GéÒSÂrª­×÷\"ü—»Î¡¤q±x©;ÿŸÎŠèW`BrE&p¾.iùÝ9UþŽ¥ï+ÃYþQÜfíD“XòW–á$pº,ÂŸtÃÈ¯C¹/è¶ó°§™oøK½>–Ørû¦+3yÑá§ÇPÈÆ±H‰5¬@Ýš,×’E×d¾xè8Õ0K3âtŽðìMq€è²(¨ëOô]ê—¶—Ã¡Ôã¸}:h¯OX^RÿÇ;ß­Äøql.Ü—²rû½®Ä¿}ê/îhåW0ÚIC\nžqºg1µ+ÈÿÜfƒ7!\0­öPô¯0.Œ%Pý£EÀkŸS¡òöÿådô¿‚Ò•rÝâ6Ÿ¸¡ˆe{íaÀ\n¼~jÜ–÷6]û›Îxg¢×3©m6XPž§iºê¸Jþœ$1‹âøÇæúê¢êKnµÜ†ä3K÷·˜­¶<ö$Ÿç.§Ïa5x¹ÌÐ|-p×nN-ÄÃÂ@±t-ñA9&¦“[¿ø®ï¿@¥T›é°÷5ÿ¸Ûá]ëæ-|™¹¼l²BˆeòåuÆ=¬A,€#A‡ì>Ø^ÊvèÈS€Öd¶ÐLH\\žO\'è€z¾”•r*©ÃÓ.c\\íëag5¤>¢@k(RO‹)·Õ´³tºXƒÈ?]%ÝS¢iûM=56Û\\Ý‰ïàÐ»‚ìX¬£^oXXØ‡anÖ *?J¢GPu­ëÒ^Òû]×>—¥a¿¨˜$yÿøÅ1¿OmRÞ¡É›$;½âö\0·&àƒwàèŠÏCvŠ~‚­-M×Ú42Äp<ßúõùo	›3ÜjqaAé³Óø¸[Ä€³*º›Ö»!}(&>çµ<a“¨þyÒÂ0¶:vÙë›±!Fp^$AëSAå¥ÐŒÏ¹ÊˆˆóÝ‰9ljj@‘ólh?ê~ÌPJ CLÎ–‚Î{šâXOø\'¸ûÛÐ=#Jýœé¦Æy¹Y&ô„Mïþ4§Àn‘½KQ?Ìåž\0œÒÐ½·úp‚1d1c×?xò[9rQ‘ÒªZè6KWWÇ(êÆdÝæ~Ô‹`ÀÞT3«¦¿ÍX^jþÈÇ¾ðoyQÅÔ†.9~\r=@”XÎP™æü—Ó5\'‡l^ „5HÎáÍwÖÿZç³÷_à•‰Û‰_UB‹¯xšîT’•Q±H\0T+‰:™ˆ}lp—úìW‹[7Áô@Þxï§Ýr¯Ò2m×	‹­Pþd }”@±NÄÇ=êt<ÛmCKÃ`2¿ù5-8£føÅ©v\'Ñæº\0Us¼/‹!çQdîî(2–n ê¼œ¯Æ\'ãYS‡FŸ£Ÿ+Î|]¿¹MûZ„ÆÚÜ5Ùá!Q?…iÃmæ×/ÀÁx¿@²3$ßî©àkÈ=‡¸–íq#\"6—Wn®ÚÅ‚íË†¥oêg†\r«cÓŒa\\3²¹Õ¦CB\\êê¬$9+†5¤›oxÇ¿Ò2{Þ\"gü!{Ã­­T±[°·¥^P9iª›¡Fèšé²,»l—,ÓfM=ä)åá\rQ4Ï¶ª*‹êÔH^LÒ‰i4ÅÌ×WÅ?Ä+Bö1½è€0gvÑn&ñø§ÃqrRÕ¤­dÄâ9W£@üXäÿy&âÉª¥”¯:´ür	ªë}á`i+aíÿÆŒ—5€²j] ù¿û7|d?¬oÿ¿àÊ¬ŽÊÑuS”%hûG1[Uh}2’‚Úˆ›ÅÂÔ“CÂÙwc{œZ.È¸vQÁ!–ƒþ\\ÅíÓao1\r\"É©ò_f7@8—ÊlG¼·O&](m—Q;#;Þ÷9©Ï©ÆªÝÖÐ×¨îIê}VIü^¤iª¤jÀ§X”ü9¦a1¶UÈ^ŸÐ•4¢<nözBÆø×jÓ7Ä/J	ôôõá¼¶uêßØ®ÂŸ¼š«Ÿ‘Œ¸ƒ»gI8Ïý_Ãy‡ù} ü‘¢ªœâ‡þíÐ\'ë”ÏA¯UûÄDDIìMQe0°ï-`ôÎc\rÞó£S\"<ÕiÝŸx£s­\rUw‘ƒÀŒ]T·_¹EòSwµºÞ‚9šÙÝ:+? A†oºño®ŒOÁÊ{÷‘¹OVqÂN?Úð˜Úá¼UÙ9Ågr¦·6«\'?)(œ¢_Ã8ïB¦ Yò{©0E†€Ì+¢Cy±1û]Æ$²Ò¿í\"µ/<†u®\r(¦|§C{>	U—’¶½y8qeª\'·7Û2!€×Aú]5 b!0o©ƒväÿÄ…[	þQ Bè•›žsö–…LÛæ(6ª?Ø~Â]ž<úñH<ýXìB5Pèõ½ƒÃ†lï±$§·2&Ë¬ÑS½Ò€´É\"ÇÜN^íAª’ýºiÉ.£$š*JÎ¬¡€QVó$:\'‚õÙ j\rå£¿ÿSË+\"pE]ý…Dhpe‚]>GÜ_ÚÂ÷Ð(‚â;fRõº„„;m‘Ïqe\r³Mˆ­“åx4kR-7\ZW¼O€ì|¦ðísÚþt	‰£itðÀ\\sý@£ÇûÔÁFs<ž¦BÂC|ŠBÄ)Ÿ™Bó\0ÓlVÅý)U\'¢WI]gé ¹åh´Â˜çÎu\'2–ƒ™öí	¾ðDQ´‡ß€GqÆ† q“£Ç\rZ~üÐ~qí¼Y§ÐÔ¨·z¨î·£L	Û¨1á]K}F|ÐÜYõÒFê­i’ª#\rä>Aá#r£\0ó=Mó”,.¯·Ÿ‰éÔÃ\\¹Vm*¾1H³¶AiBÕ¯«aàÛÖ‘É]¹ìt`k@aDH.\n¡Ž<,„œ*u_âè³nWŒ¼ù_tÅÒÈÔµ-®w&10Á#|k¿=\n¨™Nykât’Äxg Y7QUû­e‘2;Ï7¾k0$¹‚´@ÇŽž(l:¸j¯üîàr•+wa,êæ<œYš™¯ò—CîéðÇ6-^Ø «Ýp½ïêÂÄ¾c…þ|vØÃÀ,ŒÀÏ´‡æÝ¤gÞág÷ì#{iˆeÂ3v/öÊÊe=qÜ``=5D··{!ç÷X(“€ÑB›äI“Qƒôxìî<ÚÛg\ZìÕ??úUtR‚u—Ç^¦œŒ¹ªAï£)TJn\0ž\nÅ\'Žw<w¼×:ý5÷Àf\rïÞ7€¬±$¨2Ý Ãhc~£ïÓü5Þçq8\\±¸û¨Í§+GSo¤þU‰¤å57£>]\0p–òdBÔüWêR2ý	™eN@Ú6IO¹¨Ò]ˆëµF*H…þú wÓ8³Ã`iÈB[\ZÌÚµn¡…ˆGbÍ}­á›(2SÔÀ9|&€\'qKV‰IÏ÷€ltªÆT—3o¨ÏjB™‘|M`W¤¤,=¶½î*†ð³7*äãƒK¸÷p³i×€µBØ~„ cG9:¶ œèªG;2è\'¨·;ƒä=Dg}Ï‰2œ7é=:U…¾ë\0oêj}ˆd6±Á\'™Ö¾¬­Ö(n$ò£Zý§Þ„ n¢‰âñZJ;ß\n âjqüLÈ*‰² ‚R\'?vâ¸2èiw\0H2—‘K’;üºJ§¯­m©’(ƒV ”¾‰ÞýSõhDjðÖiî-À=wFÃê8>8´µÝ-ÞwÕÝ¼ûa=sc/š[Vmd:ÿN¨¦uØõ±a¯HìË+‰óœû1»¶.°”š¶ÔãYÙü¡—wc&ÏÊº\\3Z¡” aM˜ê\Z; ðFÚÿ‰ðiŸ]]&!À‚êèÜõÌ~X”ƒ©\\üÕdÂÙ;ìsª&qe\"`\nEY¹,c ‚\\£âïŒŸ:&<&µBœRsv¬¶ölèkŠÓ®ÀdÏ‘apã5•^.ÅÈÔýYÀzµp–¨h!¨:*llRÌÛ:ÏéùcV+> !´2Ä7¹r$î!Ý0.D¡]©fæ5ÖíêÓüVè«2œµ2¸z–\n\\Â)>e”2Ç•[÷ôÅLØÚo\"¬‚xõíêÑyKÄÄ¦jj¹añ×‡ÒˆL˜\nX¸K/ìl`“EÍ\0HIneÅ—ýfˆ\ZzåÚ9ÕàK¾óÀ	h•Óù–~­Xi\r:ÖNéR­æ:¸ï”æ2AÔƒ~«ß.öe8¦êÍ—ú6»¯«à+y?›EE	lfQ€xÂ˜µ>gJè®¾¶ÞÆ×1ß©’%Yýý†\\¡©ñˆ‚bReŠ9?+&§ª‘ovobcÑì	î”€l\r#ªæyí¿bÓd\r<”GqÙ¦4î- £–gW”DY@a„u3Nê÷ß…Ì$nˆ’¡ZSKW¯†aeª¼q28Í\rÐ 1üà¶¸pÈ·ûÐ¨óúP•ÚüU<­\'œ7w\r€‹ÚÃ×ŸêÛÆ˜C-»}oÁ³î_ò»ÆZ”7,øc¼Ö‹20#N·@}³ªYx‘É(ååd»JPh ¤ì¥äâú ûk7õJÄÿô’ÉÛ§KU@0½ß&¬ïcØ¹bƒâþmµG,8šL‘có·, sùÂ²n—°œ¤ÚU€×hðfœ#ò¦Kv¡UBLáMIHñïÐ§P\"u1E°|£ðÏ{{.<ï‚½Ã\r£gukÙßgæ¨ \'Õ5iŠpeÅdíéåDÿ±+§¶pƒB»¬7U-äjñcQ–€–Â8ºS‰-ÓãMQ¾RÄæ›´!DÈe¨Ðä‹%Ÿ+^\ZƒTé óË)ÎÝ×HÕÔ¤³jr…Ko,þ1<»?T™¯‚ÚØËxNÒÈôÉåX‡MÈ¹:{:99ÎR]Ê	ÙF?|É\\KÎf\rPÝ¸Jhš=¬J;lûd°M41üXy:Ìp\rˆ[nyšKÝ\rÜ¦O!R^Ug<÷`(Á£á?®-Dw¬Ó‰SY,dª`¨å¥\0×?‡¥NÜô7ÿr,Z\nV3ðû¯‚º¶ßŒ[=Kú¦ë  Ù·“ŒÃ†sßcV\'\"Ÿæù‘.ƒ$wëbŸÊ}âé YÎžU½Â÷1ì<\nàp<‚yà\"¼A:×®Ù\n´ú©ÝÝ­9AŠ—ÏTL+Jc¥JgÕº(:Ñæ{tÐµÔñÈ­CÛ3:j“ +\0®ùfWÏe²JþO-n\"gš`6Nƒ ¢ó•à¤,ƒ$W’WÐºÿ‰w‚`¦¤1×Ed\rÄŽ}:ÛjÏjÏQ×¿¶ÎÞ”†ü<ä’ííX@ò$•Fb7ßÙ²kê‹° %x‚&3ó¥KÑü¨å‘§‡øÞà#Fóü˜ŸõÖt	‡øÜ	˜->u\n)Á±7·> K:©(Í™ŸŸ„qê!yéßïZÑV¶¥6V5ˆ*iº…\0X æ4‹<µrÀ€!=!]ngrBs´WSš³îå€e21áðÚ;óaöÞÞÙÉÄ¢ÆþÕ“@ë`P©Jª€`}µoP÷Tégd•ç¿ÏkF.AãÔíœ½¨ç§›À\"¦m3-îJp>ã&ˆ ¾ÅÂ»oÌäÔLÖôÞ8‘¦ã4•«rõÑ©i¹4ñ¯­‡AèInä9JvzÌ—KGvs0åŒpìqn>;ð¦þ@I/¶J±aTëB¿æº,½PXŸtÐsÚÅð|hY Ñ1H\0>	”áIû!í|Å\rE¾8ÿÚÎ¾ƒ¨§ÒÜóÀ™_æƒw—¨a³¥âfb‹UŒÖv–€¿Z$¿ Ë—ïìü€¦¶{ë\nêOb¨Ijõs›°Ò‡ÈÕ?êƒ·I#”{™$lóôö	RInÂvû B§Ç&íª˜MidRŠKg#âQ€f¶6ß5a\'˜™öd«µÃ|­š—¾òì×Þ9ÑOÓ*\'’Ü‰ºzeÇ²|ÆÑî%†=´Qœö\\*³^0Àw¾¢óiuÏ¨4v¿K)¶«\rW²Ìb–ð oŒ·{±üáãŽÅíXÎÂóå”‰ÏêYn®ÖŸ˜ynA˜l3E‡ÂŒÞz…úÿ!Mˆ·Öª7‰	¤ßÝ\0a®Îÿ¸«ÓHzb_ÜõøÏªµKkRtákW„Æâè·!VÆ|.n,«0‡âOÑÛµ\"‹[Ý‚Î‡c$BMØ$ÉðC6 Ú‚`Ÿä1ãBŸ*x ‡.¨\'‡sQ°ÇæTCªP&	¨x´‘?#ê»|ó¾±pãg¼ /ÉÉür¼.-ë¶(Éß]éß)Áj6EÉr¡£ÆÆÃÖ:r	/¯ùïÔf¬&îfíäk`27®² ˆaæh>G+½á)AýSëðNéÓ{	kå­‘ =A¾¯{‰j=}¸®‘ª¼ÍPQÍÃ·­Ìß$vÝê2•,ÌÞ…ì`q”O<§ƒ¶NKWÇÂÔÿ”hWRwš¶ñÉoT	U0øcÖÎ`Ê7ýw¯]n¶çømÅ&\0È“Á\nˆl$h®³X\"Ñ™ðá\"6EÂò„Šƒß.¤Õr\\ß\08\nŸë¸äe–Œ„sK…T†²×>\ZÌ	(•™èeYX÷ÿG±¾ý#ª£i÷±kW_‰=h\\z?\Z³Á ö­tò\'â©fÉ4hñ\n·¶Œ|†ô’[|¦–Êð1®Ak›7i_‹©C@`Š~}*buÊcjõ,)ýééÅËÅé°éÜ‡¢ºþ6·ÈLÇ1.Q\0`dÒØžÜ\0‘ØÞ°Ñí\'éÉ…ùcºâž9Bs3å¹ì=7}½•Òóp¨\\ärm#K*YwëI20«8ÆÊd¡€úlêÄieBG˜,è={iú€v“ëÂVÖäšHµ,`‰¶n¤³;>ˆé.èGóöÊ>Évæ*\Z	^k^ëþ°(ŠÏìKú€ªÖŠ[û@>YÊóÍÞ\\ÁZfÆÔ˜õÂj³NÛÜî»;s–¹½É-N~\0EÀ9º:ßý¦p²ù›™…ŽßŠ¤OŸ°Ú$mì%¼ÉD\'jÉ­¯CÎF)ƒHZ\'\\äÎ)’Tþ\r@z•ýÓeØv‘Xð~5<èm%•¶ÂÜàEòÊ-¥ÜèŒÊm<ùÜVHÞø´ç÷09×v—q*ètê§ûLûÿ_ÿÖ#’¸×õRµQ*%é&aŠò³3ÉJ«çn@ñ˜ªˆj¢sÿ)Á‹÷íWð»¡—éWqì]<xk}~ËP)\ZÍÁäµ^<\n$Ýº¹ÐH³²Nu˜f˜HBÞP(n Æ©‚\n%—g•<Z<´òîm¢>zŠSÜÓU	\Z¾­ÙÎ‰ŸÚ[ñ“¤ï„<^ýÝÞ·‹','f9bdd3f09b7a1b6727346295465d7ba7');

/*Table structure for table `img` */

DROP TABLE IF EXISTS `img`;

CREATE TABLE `img` (
  `uname` varchar(100) DEFAULT NULL,
  `oname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sk` varchar(100) DEFAULT '--',
  `status` varchar(100) DEFAULT NULL,
  `gkey` varchar(100) DEFAULT 'request',
  `fid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `img` */

insert  into `img`(`uname`,`oname`,`fname`,`sk`,`status`,`gkey`,`fid`) values ('sai','kumar','imgg.jpg','2691','Accepted','success','177');

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `name` varchar(100) DEFAULT NULL,
  `pswd` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`name`,`pswd`,`email`,`phone`,`address`,`status`) values ('kumar','kumar','kumar@gmail.com','8686942772','hyd','Accepted'),('sravan','sra1','sra1@gmail.com','1234567890','moulali','Accepted'),('surekha','surekha','surekha@gmail.com','7894561230','nlr\r\n','Accepted');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `oname` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `upload` blob,
  `date` varchar(1000) DEFAULT NULL,
  `filesize` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not uploaded in csp',
  `req` varchar(100) DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `name` varchar(100) DEFAULT NULL,
  `pswd` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`name`,`pswd`,`email`,`phone`,`address`) values ('chandu','chandu','chandu@gmail.com','1234567890','tpty'),('joshu','joshu','joshu@gmail.com','1234567890','nlr'),('sai','sai','sai@gmail.com','8686942772','hyd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
