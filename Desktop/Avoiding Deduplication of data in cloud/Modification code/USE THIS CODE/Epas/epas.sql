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

insert  into `file`(`oname`,`fid`,`fname`,`block1`,`block2`,`block3`,`date`,`filesize`,`status`,`request`,`file`) values ('surekha','168','file3.txt','&Â»Ã¥4?+dC9ÂË†Ã¹â„¢nÂ°Â¹ÃŒâ€œÃ„Â!	Ã¸XX}(Â£ÃƒÂ J(','n\r}ÃÃ—?awÃ¾Ã¯\0Ã±Âªbâ€”~BZÃ›DÂ½t]:oF}Ã¥â€žÂ­gxÃƒÃ©[ÂÂ¯Ãœ1WYÂ»â€“','5ÃœÃ¯EÂ£Ã 0Ã—ÃÂªo:\'\rÃ—Â½+Ã­?	:Æ’ËœÃÃ¼z4ÃµÂºSeÃ™Â³sÂ£Ã¦â‚¬Ã›<Â¬#0AÅ’','27.10.2018 ',NULL,'Uploaded in csp','No response','&»å4?+dC9ˆù™n°¹\\~¦´´ÎÖ “+­›1¡â|ÐuHå1y/)UPŸ+ls¬V]1Æú®Ö1’ÏNE¾ÄßI£\"Æu€)­LØ-nJ!nR=)KgÝB¾ßØC¬›J·öë”Á+ºg'),('surekha','141','file1.txt','Ã¹Ëœâ€¢~Â£&MÂ¯Å¾#Ã¿6Ã¶Â¶oÃ,ÃŠÅ¸QÃŽâ‚¬Ã€Ã˜â€¢Ã“Å E\nÃƒ','Ã”aZ	Ã¯K%Â¥Ãâ€¹(Â¸ÃÃ°9\nÂ¤Wv\'\\Ã¨|vÅ¡ÃªÃ','â€°DTâ€ BÃÃŒj|\"kFâ€˜*hÃº.Ã± Ã‘\Z{Â¯Ã¼3RUÂºk\\','27.10.2018 ',NULL,'Uploaded in csp','No response','ù˜•~£&M¯ž#ÿ6ö¶o´{2ék\r~œ²îÀD5K±Êe\\bÙ7Îø‹½\0…ÝRkË W£’3¶†]g6±U)úi¾:µ½‰R\0LOÎZ'),('surekha','104','fileeee.txt','_Â¶<X\"Ã±Iâ€ºhÃŽÃƒ{Â·aÃ¯Ã‰QÂ¤\'4\Z	Å >YÂÂ²Ã¤8','n <ÃÂ°Å¸%Ã¢6zÃºoÃ–Ã‰Aâ‚¬Å½*y,Ã“Ã²Â¾HÃ¼Ã­Å“Ã²EuÃ¼ %\"2Å’â€¦Ã»Â³PÂÂ¶Å¸Ã°Æ’Ã‘Â«;=Ã·Ã¦]\"Å gâ€¦L','Â±ÂÃˆÃ¹Ã¶&Â´!QÃ†$Ã¬Âg,ÃœÃ˜Ã‡ÂªÂ¿ÃˆN0Ã¼iÃ…{Ã¤|Âº`\0qÃ”Ã¨ ÃƒÃ¯IÃžâ€¢â€¡Ã U|â€°XÂ®MÆ’Ã¼g\"Ã—Ãµ2Ã²ÃŽÃ¡XÃ´ÃŠ~=\rÂ²\Zy$Ã„Â´Â¯ÂcVk3Ã¹UÃ~Ã¤Â ÂªÅ“Ã»â€¹Âµ','27.10.2018 ',NULL,'Uploaded in csp','No response','_¶<X\"ñI›hÎÃ{·aïILÈé‘µ7é75\\\\¢b9ËÍrM:ˆ†AŸÍ_G´yâ!®£%ßËF£°V\"Ã£Ü‹­A¹ÕšÝÄÌ\'¦\"4¢€ì“‚û¦ÂQßex—d&8ü=+²…ò\\äYàEL9£GoöÿŸ×¢,QëŸóë|qx]ú«å@>u†J,­öÞ§‚TÖ8õšXý,¿%êÉúŒšÓÂ¬&ý¯'),('kumar','115','file.txt','y\'w°ÉãÝ‹ú\n;ŽÅ\\ç','”î?i*j\rÃa†‘','·bw¦›¯²ƒžk½lÕ','27.11.2018 ',NULL,'Not uploaded in csp','No response','��g3>�<�ۉEe��\\Y����Ý����)�\Z�'),('kumar','184','file.txt','y\'w°ÉãÝ‹ú\n;ŽÅ\\ç','”î?i*j\rÃa†‘','·bw¦›¯²ƒžk½lÕ','27.11.2018 ',NULL,'Not uploaded in csp','No response','��g3>�<�ۉEe��\\Y����Ý����)�\Z�');

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

insert  into `image`(`id`,`oname`,`fid`,`fname`,`date`,`filesize`,`status`,`request`,`file`,`hashvalue`) values (1,'kumar','177','imgg.jpg','27.11.2018 ',NULL,'Uploaded in csp','No response','�\\)~N	Q�D[�T����lW����$&\"	��*�51��1y����^I���	��Iٴ�Pה�E,#�E�K��\r�P��������k�+<^�9���\Zyd��[����-(h��~�X��^��;3:F��~�C� �i���y��2{,���N1Ԓ�A�2v�I�5���w��a6T.�`7/k��E�Qg���H�J�!�����s�L����� PC�9��X���Q@͵���:U�\rf��N�v0����2���Gb��+5\\y�ԓY����#	�[30�W�熎�->83ِ��*#��J+LO�1��%c�����vs�v�!����\Z����O�o��d���RW�g���?�K��g�@���\\��A��wP���� �cT	�+���p�޵}�H��~x}g��4@8&ԧ��H�\0�+s�u܀W؎�c�!�%C���i��x`�J\0�\\���t⤨�d̽�g�¶>��esB�hx��xlW\Z�����T�ȷ��ʌPB���!�:�Y��+<B������2�bQ�R�?6���:����u]H~��ʄ@��ݚ8�|�M7-�  ��BU{!�}��7���hV^𚂆����?4������KjZ�Nrrp(�C_����>>�|7,�����h�bG+�\"Wt����b��\Z�	����A\r\08��������r9�5a2D/lz�$���u�g4����섪r��W��%����on��xdeeW��j𬫖!�������*)r�`�s�\"�(�.���9,��hZAS��{�\r�y0��\\-�\n㔗-��Z�a<3\0�*Z������	���6p.$9�w�<�;�*ߌ\n\\���qj�/|���F�Gt}L���-�ҮE3�@�wa;�U���5g�ǃSʙ\0�j�w�T��X���@����)�\0��J�8z����aw�տ�\r#��㣾P�+G&��Vp�f�U�ٝ�8<�:L������iZ	M�N��b]�T7z<6Q\"o�qʡy��\\�^���<�7\'�ޝ��P)���$��:�}�Z�y<I>.-v�V���q3ʨว��QE C�S���̐���i{�����4i���u�EY��pg[w,�ZYf�=gj�.���;#!OF�\rP����5��i��77ƱNl�ʘ^�r_�W�|���M��@���ZL���>㢠	T>?�:�M.F�J��b3�~X�@Oo)\"��U�M\r��%���`ȷ���Ra�S��w@ RjE��?�}�mJ[�]��f���N=�Í�0�3u������r$ړ��FA�\'���}����?ə��\0ŁцÚj\'�\\��_�St�N�2=L�c8����L��^��ڰ��[��(�뺘zJ�ʚP�F�ɇ�QI4�p<������(���u����6��7x���:��Ҕ� �_�,S�x�a����C�=�@����ºw�~��|xpF`��o����*�� �_A �s���VF�(��7f�ʢ�{���w��CW��m�~y��{M~A�^�ٵ���Q�n,(>6���Q�����q��g���.���zi�ʛ~J���Hݾ��p���gq��|sc��|)��)ӻP8W���[�-��{�;�k�/3!��A\r�1b,�oW�Y�˳��	9O\n�I���\0�3��{����P	H\n�V��Zg��������?�h>�����\r��\\&O-f�X���6�>ǉD���z%�0b�msL�~�|ؓ\Z��g~�e�G��8?���,�G�r�G��S�r����\"���Ρ�q�x�;��Ί�W`BrE&p�.i��9U����+�Y�Q�f�D�X�W��$p�,t�ȯC�/�󰧙o�K�>��r��+3y���P�ƱH�5�@ݚ,גE�d�x�8�0K3�t���M�q��(��O�]���á��}:h�OX^R��;߭��ql.ܗ�r���Ŀ}�/�h�W0�IC�\n�q�g�1�+���f�7!\0���P��0.�%P��E�k��S������d���ҕr��6����e{�a�\n�~jܖ�6]���xg��3�m6XP��i��J��$1��������Kn�܆�3K�����<�$��.��a5x���|-p�nN-���@�t-�A9&���[����@�T���5����]��-�|���l�B���e��u�=�A,�#A��>�^�v��S��d��LH\\�O\'�z���r*���.c\\��ag5�>�@k(RO�)�մ�t�X��?�]%��S�i�M=56�\\݉������X��^oX�X؇an֠*?J�GPu���^��]�>��a���$y���1�OmRޡ��$;���\0�&���w���Cv�~���-M��42�p<����o	�3�jqaA����[Ā�*��ֻ!}(&>�<a���y��0�:v���!Fp^$A�SA�ЌϹʈ��݉9ljj@��lh?�~�PJ�CLΖ���{��XO�\'����=#J����y�Y&�M��4��n��KQ?��\0��н��p�1d1c�?x�[9rQ�ҪZ�6KWW�(��d���~ԋ`��T3����X^j��Ǿ�oyQ�ԏ�.9~\r=@��X�P������5\'�l^ �5H���w��Z��_���ۉ_UB���x��T��Q�H\0T+�:��}lp���W�[7��@�x��r��2m�	��P�d�}�@�N��=�t<�mCKÐ`2��5-8�f�ũv\'��\0Us�/�!�Qd��(2�n 꼜��\'�YS�F���+�|]��M��Z����5��!Q?�i�m��/��x�@�3$���k�=����q#\"6�Wn��ł�ˆ�o�g�\r�cӌa\\3��զCB\\��$9+��5��o�xǿ�2{�\"g�!{í�T�[���^P9i����F�鲁,�l�,�fM=�)��\r�Q4϶�*���H^L҉i4���W�?�+B�1��0gv�n&����qrRդ�d��9W�@�X��y&�ɪ���:��r	��}�`i+a��ƌ�5��j] ���7|d?�o���ʬ���uS�%h�G1[Uh}2��ڈ����ԓC��wc{�Z.ȸvQ�!���\\���a�o1\r\"ɩ�_f7@8��lG��O&](m�Q;#;��9��ϩƪ���ר�I�}VI�^�i��j��X��9�a1�U�^�Е4��<n�zB��ׁj�7�/J	���ἶu��خ����������gI8��_�y��} ���������\'���A�U����DDI�MQe0��-�`��c\r��S\"<�iݟx�s�\rUw����]T�_�E�S�w��ނ9���:+? A�o��o��O��{����OVq�N?����U�9�gr��6�\'?)(��_�8�B� Y�{�0E���+�Cy��1�]�$�ҿ�\"�/<��u��\r(�|�C{>	�U����y8qe�\'�7�2!��A�]5�b!0o��v��ą[	�Q B蕛�s����L��(6�?�~�]�<��H<�X�B5P����Æl�$��2&ˬ�S��Ҁ��\"��N^�A����i�.�$�*Jά��QV�$:\'��٠j\r壿�S�+\"pE]��Dhpe�]>G�_����(��;fR����;m��qe\r�M����x4kR-7\ZW�O���|���s��t	��it��\\s�@�����Fs<��BC|�B�)��B�\0�lV��)U\'�WI]g� ��h���u\'2�����	��DQ��߀GqƆ q���\rZ~��~q�Y��Ԩ�z�L�	ۨ1�]K}F|��Y��Fꝭi��#\r�>A�#r�\0�=M�,.�������\\�Vm*�1H��AiBկ�a��֑�]��t�`k@aDH.\n��<,��*u_��nW���_t���Ե-�w&10�#|k�=\n��Ny�k�t��xg Y7�QU��e�2;�7�k0$���@ǎ�(l:�j����r�+wa�,���<�Y����C����6-^ؠ��p����ľc��|v����,��ϴ��ݤg��g��#{i�e�3v/���e=q�``=5D��{!��X(���B��I�Q��x��<��g\Z��??�UtR�u��^�����A�)TJn\0�\n�\'�w<w���:�5��f\r��7���$�2ݠ�hc~����5��q8\\����ͧ+GS�o��U���57�>]\0p��dB��W�R2�	�eN�@�6IO���]��F*H��� w�8��`i�B[\Z̏ڵn���Gb�}��(2S��9|&�\'qKV�I���lt��T�3o���jB���|M`W��,=���*��7*��K���p�i׀�B�~� cG9:�� ��G;2�\'��;��=Dg}ω2�7�=:U���\0o�j}�d6��\'�־���(n$��Z��ބ n����ZJ;�\n��jq�L�*�� �R\'�?v�2�iw\0H2��K�;��J���m��(�V������S�hDj��i�-�=wF��8>8���-�w�ݼ�a=sc/�[Vmd:�N��u���a�H��+���1��.������Y����wc&��ʺ\\�3Z���aM��\Z; �F����i�]]&!�������~X���\\���d��;��s�&qe\"`\nEY�,c �\\����:&<&�B�Rsv���l�k�ӏ��dϑap�5�^.����Y�z�p���h!�:*llR��:���c�V+>�!�2�7�r$�!�0.D�]�f�5�����V��2��2�z�\n\\�)>e�2Ǖ[���L��o\"��x����yK�Ħjj�a���҈L�\nX�K/�l`�E�\0�HIneŗ�f�\Zz��9��K���	h�����~�Xi\r:�N�R��:����2Aԃ~��.�e8��͗�6����+y?�EE	lfQ�x�>gJ�������1����%Y����\\���bRe�9?+&���ovobcэ�	l\r#��y�b�d\r<�Gq٦4�-���gW�DY@a�u3N��߅�$n���ZSKW����ae��q28�\rР1����pȷ�Ш��P���U<�\'��7w\r����ן��ƘC-�}o���_���Z�7,�c�֋20#N�@}��Yx��(��d�JPh ��������k7�J�����ۍ�KU@0��&��cعb���m�G,8�L�c�,�s�²n�����U��h�f�#��Kv�UBL�MIH��ЧP�\"u1E�|���{{.<�\r�guk��g樠\'�5i�pe��d���D��+��p�B��7U-�j�cQ����8�S�-��MQ�R�更!D�e���%�+^\Z�T���)���H�Ԥ�jr�Ko,�1<�?T������xN�����X�Mȹ:�{:99�R]�	�F?|�\\K�f\rPݸJh�=�J;l�d�M41�Xy:�p\r�[ny�K�\rܦO!R^Ug<�`(���?�-Dw�ӉSY,d�`���\0�?��N��7�r,Z\nV3������ߌ[=K��� ٷ��Æs��cV\'\"����.�$w�b��}�� YΞU���1�<\n�p<�y�\"�A:���\n����ݭ9A���TL+Jc�Jg�պ(:��{tе��ȭC�3:j��+\0��fW�e�J�O-n\"g�`6N� ���,�$W�Wк���w�`��1�Ed\rĎ}:�j�j�Q׿��ޔ��<����X@�$�Fb7�ٲk�� %x�&3�K���呧����#F������t	���	�->u\n)��7�> K:�(͙���q�!y���Z�V��6V5�*i��\0X �4�<�r��!=!]ngrBs�WS����e21���;�a���������Փ@�`P�J��`}�oP�T�gd���kF.A��휽�����\"�m3-�Jp>�&� ��»o���L���8���4��r�ѩi�4񯭇A�In�9Jvz��KGvs0��p�qn>;��@I/�J�aT�B��,�PX�t�s���|hY �1H\0>	��I�!�|�\rE�8��ξ���������_�w��a���fb�U��v����Z$� ˗������{�\n�Ob�Ij�s��҇��?���I#�{�$l����	RIn�v� B��&�MidR�Kg#�Q�f�6�5a\'���d���|��������9�O�*\'�܉�zeǲ|���%�=�Q��\\*�^0�w���iuϨ4�v�K)��\rW��b��o��{������X���唉��Yn�֟�ynA�l3E��z���!M��֪7�	���\0a������Hzb�_���Ϫ�Kk�Rt�kW����!V�|.n,�0��O�۵\"�[݂·c$BM�$��C6�ڂ`��1�B�*x��.�\'�sQ���TC�P&	�x��?#�|�p�g��/���r�.-�(��]��)�j6E�r������:r	/������f�&�f��k`27����a�h>G+��)A�S��N��{	k孑 =A��{�j=}������PQ�÷���$v��2�,�ޅ�`q�O<���NKW�����hWRw����oT	U0�c��`�7�w�]n���m�&\0ȓ�\n�l$h��X\"����\"6E������.��r\\�\08\n���e���sK�T���>\Z�	(���eYX��G���#��i��kW_�=�h\\z?\Z�����t�\'�f�4h�\n���|���[|����1��Ak�7i_��C@`�~}*bu�cj�,)�������������6���L�1.Q\0`d�؞�\0������\'�Ʌ�c��9Bs3��=7}����p�\\�rm#K*Yw�I20�8��d���l��i�eBG�,�={i��v���V��H��,`��n��;>��.��G���>�v�*\Z	^k^���(���K����֊[�@>Y����\\�Zf�Ԙ��j�N���;s����-N~\0E�9�:���p������ߊ�O���$m�%��D\'jɭ�C�F)�HZ\'\\��)�T�\r@z���e�v�X�~5<�m%�����E��-����m<���VH�����09�v�q*�t���L��_��#����R�Q*%�&a��3�J��n�@����j�s�)����W𻡗�Wq�]<xk}~�P�)\Z���^<\n$ݺ�АH��Nu�f�HB�P(n�Ʃ�\n%�g�<Z<���m�>z�S��U	\Z���Ή��[��<^�����','f9bdd3f09b7a1b6727346295465d7ba7');

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
