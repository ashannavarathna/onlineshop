-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.33-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema onlineshop
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ onlineshop;
USE onlineshop;

--
-- Table structure for table `onlineshop`.`brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `idbrand` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbrand`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`brand`
--

/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`idbrand`,`code`,`name`,`description`) VALUES 
 (1,'696','Upgradable client-driven frame','Est exercitationem adipisci alias rerum. Libe'),
 (2,'902','Enhanced executive artificialintelligence','Tempora impedit reiciendis repellat est quo v'),
 (3,'012','Re-contextualized content-based solution','Odit et itaque consequatur perferendis adipis'),
 (4,'847','Devolved multi-state alliance','Aliquid exercitationem officiis voluptas erro'),
 (5,'842','Devolved tertiary definition','Error non aspernatur et nesciunt ducimus quo '),
 (6,'761','Synergistic reciprocal projection','Et ad qui similique laboriosam voluptatem lab'),
 (7,'462','Vision-oriented systematic strategy','Exercitationem eligendi architecto qui eos. Q'),
 (8,'617','Team-oriented 5thgeneration installation','Quis qui laboriosam eos totam enim exercitati'),
 (9,'577','Seamless system-worthy challenge','Officia quia qui sunt sint cum. Aut magni sun'),
 (10,'628','Ergonomic attitude-oriented info-mediaries','Quia et reiciendis qui qui quisquam doloribus'),
 (11,'538','Future-proofed optimal success','Molestias libero magnam voluptates voluptatem');
INSERT INTO `brand` (`idbrand`,`code`,`name`,`description`) VALUES 
 (12,'009','Persistent intermediate hierarchy','Nesciunt eos dolorem mollitia iste quia qui. '),
 (13,'483','Cross-group leadingedge standardization','Harum eius iusto ipsum nam voluptatem. Assume'),
 (14,'984','Public-key 6thgeneration function','Est quibusdam cumque et. Voluptatibus sed ali'),
 (15,'135','Future-proofed 4thgeneration localareanetwork','Qui suscipit similique vel. Architecto eum qu'),
 (16,'866','Digitized user-facing migration','Sed id est aut fugit sit minus nisi expedita.'),
 (17,'837','Reduced full-range hierarchy','Maiores nesciunt qui rem id. Sit ipsam error '),
 (18,'267','Organized bandwidth-monitored architecture','Cumque quisquam aut omnis suscipit dolores qu'),
 (19,'988','Secured system-worthy product','Cum officia quisquam animi et vero rerum enim'),
 (20,'047','Enterprise-wide real-time application','Soluta beatae qui alias qui voluptates invent');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`idcart`),
  KEY `fk_cart_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_cart_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`contact_types`
--

DROP TABLE IF EXISTS `contact_types`;
CREATE TABLE `contact_types` (
  `idcontact_types` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcontact_types`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`contact_types`
--

/*!40000 ALTER TABLE `contact_types` DISABLE KEYS */;
INSERT INTO `contact_types` (`idcontact_types`,`name`) VALUES 
 (1,'mobile'),
 (2,'home'),
 (3,'fax');
/*!40000 ALTER TABLE `contact_types` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `idcontacts` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(12) NOT NULL,
  `contact_types_idcontact_types` int(11) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`idcontacts`),
  KEY `fk_contact_contact_types1` (`contact_types_idcontact_types`),
  KEY `fk_contact_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_contact_contact_types1` FOREIGN KEY (`contact_types_idcontact_types`) REFERENCES `contact_types` (`idcontact_types`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contact_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`idcontacts`,`number`,`contact_types_idcontact_types`,`is_primary`,`user_profile_iduser_profile`) VALUES 
 (1,717533368,1,1,2),
 (2,717533368,1,1,1);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`featured_products_menus`
--

DROP TABLE IF EXISTS `featured_products_menus`;
CREATE TABLE `featured_products_menus` (
  `idfeatured_products_menus` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idfeatured_products_menus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`featured_products_menus`
--

/*!40000 ALTER TABLE `featured_products_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `featured_products_menus` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `idgender` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idgender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`gender`
--

/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` (`idgender`,`type`) VALUES 
 (1,'male'),
 (2,'female'),
 (3,'shemale');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout_at` timestamp NULL DEFAULT NULL,
  `is_logged` tinyint(1) DEFAULT NULL,
  `session_id` varchar(45) DEFAULT NULL,
  `cookie_id` varchar(45) DEFAULT NULL,
  `user_account_iduser_account` int(11) NOT NULL,
  `ipv4` varchar(15) NOT NULL,
  `ipv6` varchar(45) DEFAULT NULL,
  `device_info` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idlogin`),
  KEY `fk_login_user_account1` (`user_account_iduser_account`),
  CONSTRAINT `fk_login_user_account1` FOREIGN KEY (`user_account_iduser_account`) REFERENCES `user_account` (`iduser_account`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `idoffers` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  `discount_prasentage` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`idoffers`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`offers`
--

/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
CREATE TABLE `password_reset` (
  `idpassword_reset` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_iduser_account` int(11) NOT NULL,
  `contact_idcontacts` int(11) DEFAULT NULL,
  `reset_code` varchar(45) NOT NULL,
  `send_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_reset` tinyint(1) NOT NULL,
  `reset_by_email` tinyint(1) NOT NULL,
  PRIMARY KEY (`idpassword_reset`),
  KEY `fk_password_reset_user_account1` (`user_account_iduser_account`),
  KEY `fk_password_reset_contact1` (`contact_idcontacts`),
  CONSTRAINT `fk_password_reset_contact1` FOREIGN KEY (`contact_idcontacts`) REFERENCES `contacts` (`idcontacts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_password_reset_user_account1` FOREIGN KEY (`user_account_iduser_account`) REFERENCES `user_account` (`iduser_account`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`password_reset`
--

/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `porder` int(11) DEFAULT NULL,
  `brand_idbrand` int(11) NOT NULL,
  `product_sub_category_idproduct_sub_category` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `offers_idoffers` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `product_type` int(11) NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `fk_product_brand1_idx` (`brand_idbrand`),
  KEY `fk_product_product_sub_category1_idx` (`product_sub_category_idproduct_sub_category`),
  KEY `fk_product_offers1_idx` (`offers_idoffers`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_idbrand`) REFERENCES `brand` (`idbrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_offers1` FOREIGN KEY (`offers_idoffers`) REFERENCES `offers` (`idoffers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_product_sub_category1` FOREIGN KEY (`product_sub_category_idproduct_sub_category`) REFERENCES `product_sub_category` (`idproduct_sub_category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (1,'tqqg','dolor',78824062,1,1,'Molestiae atque sequi earum laudantium voluptatem. At est earum nisi. Nam fugiat qui fugit adipisci perferendis esse.',NULL,1,197275.3632,0,0),
 (2,'esyo','architecto',73878419,2,2,'Qui quaerat sint dolorem. Labore et ut eius quisquam inventore. Aliquid pariatur eum sunt dignissimos amet.',NULL,0,84.734,0,0),
 (3,'hifz','perspiciatis',28973,3,3,'Sit quidem eos qui magnam modi quidem earum. Rem necessitatibus a harum voluptatem a hic. Ipsum sunt nihil reiciendis aut. Non facilis incidunt et. Quam ut nobis doloremque dicta.',NULL,0,0,0,0),
 (4,'urwq','quos',995125,4,4,'Mollitia earum quia fuga culpa. Eveniet pariatur minus sint repellat distinctio perferendis architecto. Quisquam qui in eum quidem quis odio optio amet. Enim sed aut in omnis.',NULL,1,0,0,0),
 (5,'eqfd','est',2,5,5,'Impedit quaerat beatae sed maiores qui adipisci voluptatibus. Natus consequatur itaque esse est architecto quidem. Voluptatibus ipsum at quas deserunt iusto quisquam quis. Dolorum quia architecto temp',NULL,0,193.14,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (6,'gtyg','ratione',6014,6,6,'Velit fugit veritatis suscipit reprehenderit eos. Dolor sed porro suscipit. Quia eius animi ipsam qui quos dolorem est. Harum in eius vel sit voluptas laudantium.',NULL,0,268.744750474,0,0),
 (7,'zdnq','quia',764931845,7,7,'Vel sunt nulla est eum repellendus praesentium consequatur. Et nesciunt consequatur consequuntur veniam non saepe eaque laudantium. Voluptatem recusandae saepe ex asperiores in. Officia numquam sit do',NULL,1,393022869,0,0),
 (8,'sovr','tenetur',894386,8,8,'Beatae atque impedit ad veniam. Placeat earum repellendus eaque vel ducimus et molestiae beatae. Tenetur ratione enim veniam.',NULL,1,262.596772811,0,0),
 (9,'svws','ut',96927151,9,9,'Quas accusamus modi neque maxime sit deserunt sequi. Distinctio quaerat velit nam possimus ut laborum odio. Et nihil voluptatem distinctio labore aut aliquid voluptatum et. Omnis est illo et voluptatu',NULL,0,0,0,0),
 (10,'niex','rerum',8357,10,10,'Quo ea doloribus quibusdam atque atque quia. Iure voluptatibus asperiores dolorum laborum. Illum explicabo aut ipsam nesciunt alias. Neque velit accusantium soluta corporis optio.',NULL,1,478406.0476112,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (11,'tegg','dignissimos',8,11,11,'Eos sed consequatur velit labore. Aut ipsum autem voluptas. Praesentium architecto sed expedita perferendis. Maiores laudantium eaque architecto voluptas et ut necessitatibus.',NULL,0,231024764.88155,0,0),
 (12,'poms','quo',75,12,12,'Et aut rerum occaecati voluptatem. Tempore necessitatibus iure tempora porro et. Saepe et officiis non et. Quos officia ut in reprehenderit.',NULL,0,0,0,0),
 (13,'fjyy','odio',7427388,13,13,'Velit dolorem eligendi quia iure possimus est. Hic voluptatibus et voluptatem. Cum eos provident repellendus excepturi maxime nemo saepe. Veniam ipsam enim non temporibus.',NULL,0,2757.85,0,0),
 (14,'tvfg','fuga',4126,14,14,'Placeat deserunt velit ut perferendis. Voluptatibus vel perferendis ratione. Non id est aut atque omnis iure et. Nisi ut quis est laborum.',NULL,0,0,0,0),
 (15,'dgfk','dolor',269,15,15,'Rerum sed voluptatem facilis rerum sint doloribus. Aliquam omnis aut quos amet aut consequatur. Aut dolor quia ut quis aliquid. Blanditiis non molestiae enim vitae voluptatem ducimus corrupti. Dolor n',NULL,1,4559.8,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (16,'vbpg','quia',0,16,16,'Non fugit ut voluptas sunt. Doloribus quis adipisci numquam modi. Et quibusdam eveniet quia qui et laboriosam distinctio. Nesciunt unde dolorem placeat maxime quia eveniet placeat.',NULL,1,0,0,0),
 (17,'mrji','quo',257,17,17,'Est occaecati omnis quisquam molestias corrupti ipsa iure. Est distinctio quia accusamus. Doloribus molestiae voluptatum rem laudantium et qui.',NULL,0,0,0,0),
 (18,'oeux','perferendis',6557,18,18,'Molestiae magnam vitae optio magni laboriosam voluptatem expedita. Nobis porro nisi est repudiandae qui enim soluta. Molestiae quaerat sunt aut consequatur. Culpa a sit consectetur veritatis.',NULL,0,0,0,0),
 (19,'uqji','omnis',49199880,19,19,'Libero qui quis velit incidunt architecto. Quibusdam esse et quia et. Et itaque officiis ab magnam quidem earum omnis. Reprehenderit rerum quaerat et voluptates corporis nam.',NULL,1,450724269.2357,0,0),
 (20,'qdtm','sit',543654,20,20,'Rem praesentium quae dignissimos optio rerum soluta. Blanditiis doloremque sed fugiat. Voluptatem perspiciatis et eum error id.',NULL,0,100971656,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (21,'uepl','sed',84217,1,21,'Molestiae qui voluptas eos sed ut aspernatur cum. Ut omnis ducimus cumque corrupti atque sint maiores omnis. Animi maxime quae recusandae tenetur quis labore.',NULL,1,99.95980399,0,0),
 (22,'erij','inventore',778,2,22,'Numquam aperiam impedit delectus quo. Nemo alias ut id ratione. Necessitatibus maxime ea cupiditate at iure unde magni. Nihil deleniti sunt sequi.',NULL,1,619,0,0),
 (23,'yofd','quidem',8266891,3,23,'Ea non enim vero. Voluptatibus dolorum quam corrupti magnam harum sunt dicta qui. Doloremque a voluptatem perspiciatis et rerum.',NULL,1,143.2025,0,0),
 (24,'aprq','iste',0,4,24,'Illo sequi placeat ut amet est. Iste quia et nulla et aut dolores debitis. Molestias dicta accusantium sed aut molestiae eius cum. Dolores culpa voluptas molestias quis.',NULL,0,1047089.0909508,0,0),
 (25,'tsgp','expedita',84533162,5,25,'Omnis veritatis culpa praesentium consequatur autem hic veniam. Quae debitis quaerat necessitatibus quisquam in. Voluptatibus suscipit qui laudantium fugit est vel eos.',NULL,0,11,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (26,'neiu','voluptates',0,6,26,'Quod ea harum et doloribus. Dignissimos similique voluptas fugit laudantium enim. Eum et eum odit et tenetur non.',NULL,1,0.6344,0,0),
 (27,'ktqp','incidunt',42516394,7,27,'Voluptatem hic nisi aspernatur incidunt porro nihil iure. Dolor voluptas tempora perferendis. Nobis earum voluptates libero. Explicabo quia esse dolorem voluptatem praesentium et.',NULL,1,19,0,0),
 (28,'sloq','sunt',8252401,8,28,'Possimus praesentium odit beatae minima. Totam consequatur sed labore rem impedit. Nam voluptas aut blanditiis ut doloribus. Consequatur et distinctio vel est eveniet corporis ut.',NULL,0,11.361693,0,0),
 (29,'cwtm','quibusdam',8250143,9,29,'Nisi ut saepe quis voluptatibus qui quibusdam ex. Deleniti voluptatem ratione voluptatum illo exercitationem. Fugit iusto quam aut inventore.',NULL,1,82.987937,0,0),
 (30,'rlrl','earum',6117,10,30,'Ratione vitae iste quaerat dolorem. Sapiente repellat id consequatur illo. Facilis qui veritatis saepe voluptas dolorem.',NULL,1,4869.753555,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (31,'anwf','quibusdam',1415,11,1,'Ipsum sint aspernatur sequi saepe. Sequi alias iure alias aliquid aperiam vel. Iusto et voluptas sed qui eveniet consequatur. Eligendi sed incidunt ut eaque dolorem voluptatem.',NULL,0,181,0,0),
 (32,'eqwn','at',0,12,2,'Consequuntur sint quas culpa repudiandae officiis. Sed ut quisquam pariatur veritatis. Ad officia laboriosam itaque maiores rerum maiores sit alias.',NULL,0,12625881.043,0,0),
 (33,'basb','dolorem',879,13,3,'Quos nostrum quis ipsum est accusamus ullam. Optio modi sit et itaque. Id ut autem rerum quo voluptates excepturi dolore. Voluptatum est eum sed maxime omnis totam. Aperiam ipsa soluta blanditiis quae',NULL,1,2876.67903704,0,0),
 (34,'nepi','iure',538642127,14,4,'Culpa deleniti impedit esse sunt sunt error. Exercitationem laborum hic excepturi porro.',NULL,0,10.9642,0,0),
 (35,'hfld','porro',832537452,15,5,'Dolores qui cum quo eum et ipsum et. Voluptate at sunt in quisquam. Occaecati porro cupiditate voluptatem ipsum rem. Excepturi sint harum dicta reprehenderit ut optio.',NULL,1,410.7065,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (36,'ggwn','minima',65,16,6,'Nobis quidem et similique est beatae. Sed sunt rerum et qui iste praesentium occaecati.',NULL,0,162184.45413,0,0),
 (37,'aadt','illo',5136425,17,7,'Deleniti dolor quo aperiam. Accusamus exercitationem quas ipsam doloremque blanditiis laudantium alias. Doloribus maxime dolor numquam reprehenderit sint saepe.',NULL,1,61.805,0,0),
 (38,'thay','aut',0,18,8,'Labore consequatur voluptatem iure eos soluta dolorem explicabo. Cumque molestiae occaecati quis vel. Enim vero velit vel inventore voluptas velit magnam. Repellat molestiae nostrum quod inventore per',NULL,1,0,0,0),
 (39,'ejpz','ut',8326,19,9,'Id omnis fugit perferendis repellendus omnis amet recusandae. Adipisci praesentium quo sequi soluta sed vel. Laudantium voluptatem quam magnam excepturi numquam qui consequatur. Placeat aperiam qui qu',NULL,0,4.753555,0,0),
 (40,'vggs','perferendis',0,20,10,'Odit aut iste nulla repudiandae rerum rem voluptas. Accusamus quidem velit voluptatem ullam odit. Officia molestiae voluptas alias quasi.',NULL,1,0.016,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (41,'qbdh','quidem',505972,1,11,'Id aut ipsam culpa officia officiis officiis sapiente. Reprehenderit quidem laborum minus consequatur dolores quas quisquam. Ducimus quo ipsa eum ipsum ullam optio sit. Non veritatis ipsum laborum qui',NULL,0,1464600.89,0,0),
 (42,'jqtb','neque',0,2,12,'Omnis ipsam dolores quo esse in quis. Delectus ut ut consequatur at nihil et fugit. Accusantium sed aliquid architecto aspernatur distinctio ut. Aliquid ut quo et unde velit amet veniam. Sequi commodi',NULL,1,3.8,0,0),
 (43,'shqj','eos',4508,3,13,'Impedit veritatis autem provident aut est. Saepe rerum et voluptas. Alias eos dolores voluptatem voluptas.',NULL,1,13.288689,0,0),
 (44,'oftc','aut',39934788,4,14,'Ut excepturi odit impedit praesentium error. Et placeat earum temporibus necessitatibus aliquam quo minus eligendi. Dignissimos dignissimos aut maxime est saepe maxime iusto hic.',NULL,0,0,0,0),
 (45,'iqlv','porro',250,5,15,'Enim quas iste soluta adipisci. Quis ducimus id consequatur. Doloremque voluptatum voluptatem cum dolor dolor sit. Velit est officia hic accusantium unde praesentium ut dignissimos.',NULL,1,4167.9,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (46,'sbio','non',53243,6,16,'Consequatur consectetur libero laborum illum itaque et veniam. Qui eos enim omnis odit ut voluptas voluptatem. Ea velit quis dignissimos vitae dolor.',NULL,1,45552,0,0),
 (47,'ymxa','enim',54,7,17,'Asperiores at quo qui similique enim blanditiis dicta aut. Laborum dolorem sit odit distinctio nulla optio ipsum.',NULL,0,17.976548,0,0),
 (48,'kerd','ratione',111,8,18,'Facilis magnam eius quibusdam similique. Voluptatem dolores sint vel recusandae ut. Amet ut non molestias suscipit veritatis cum sunt a.',NULL,0,12119.01437,0,0),
 (49,'lppl','illum',4976,9,19,'Id rem temporibus placeat. Distinctio rerum fuga fugit omnis. Cum et omnis sunt corporis ut sequi.',NULL,1,3824249.678285,0,0),
 (50,'pxcp','aut',115920,10,20,'Ullam autem quos aut sed aliquam amet. Officiis hic atque asperiores dolorem illo nulla in. Delectus hic corporis suscipit minima iure vitae eos.',NULL,0,282775,0,0),
 (51,'adcm','qui',939,11,21,'Voluptatum placeat ratione expedita. Dolor culpa a in. Aut dolor incidunt qui quae aspernatur.',NULL,1,1235953.309,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (52,'ecrd','similique',76441243,12,22,'Optio porro sed voluptates et omnis. Dignissimos vel enim qui ratione. Sunt ex nulla aut sit porro tempore qui. Esse et ipsam numquam eveniet rem.',NULL,1,333,0,0),
 (53,'tbvt','nesciunt',167650,13,23,'Nemo sit cum magnam recusandae deserunt cupiditate doloribus. Et tempore ipsam ullam voluptate facilis dolores. Voluptatibus ut ea sed quia et. Quis sed ut sequi quisquam molestias.',NULL,0,4691.501481,0,0),
 (54,'iglt','id',0,14,24,'Eligendi iure natus et porro quia nihil sunt. Amet aut aut velit et. Ut vel autem modi error sed beatae. Ab rerum laudantium cum provident quia.',NULL,0,111754.3081,0,0),
 (55,'tybc','reiciendis',6,15,25,'Architecto est eum illo. Dolor provident veniam inventore doloribus culpa distinctio blanditiis. Et repellendus libero aut et ut.',NULL,0,318736.71,0,0),
 (56,'kimf','eaque',63741177,16,26,'Distinctio sunt incidunt provident animi ratione repudiandae dolorum qui. Iste soluta ipsum aut.',NULL,1,2359862,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (57,'awtz','ut',17029596,17,27,'In similique iusto voluptates ea inventore. Quas in harum dolorum et rerum. Totam assumenda est voluptatem vero.',NULL,1,37266130.375904,0,0),
 (58,'dbjs','id',87840201,18,28,'Qui non distinctio provident ipsam ut sit ut. Sit incidunt magnam et. Tempora consequatur quo quia.',NULL,0,5557518.5741456,0,0),
 (59,'mlfa','cupiditate',374246367,19,29,'Necessitatibus quis fugiat qui rem in iusto natus. Ducimus nihil quisquam sit quis. Ut rerum odit quo et rerum.',NULL,1,944,0,0),
 (60,'pnqm','labore',57973,20,30,'Vero sit voluptatem quidem repudiandae inventore sit. Tempora sit accusamus eligendi ut. Ut asperiores dolor optio qui aut. Omnis consectetur pariatur ad veniam.',NULL,0,9.49018,0,0),
 (61,'wzou','rerum',9183464,1,1,'Cum dolorum minima et fugiat doloremque magni ipsam. Aperiam ipsum animi exercitationem. Dolorem qui nobis nihil omnis.',NULL,1,0,0,0),
 (62,'mqur','sit',94700,2,2,'Ea quia quis similique quia molestiae qui. Veniam aliquid quo aspernatur dicta delectus repudiandae. Quisquam iure et cumque consequatur ut.',NULL,0,334242.6,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (63,'ksil','veniam',3534,3,3,'Et deserunt aut et sed eos itaque aut. Necessitatibus non vero dolor odit. Qui possimus omnis cumque non est.',NULL,0,16281.822421025,0,0),
 (64,'obru','temporibus',803,4,4,'Ab dolorum impedit dolor in. Sint libero nihil deleniti et vel facilis aperiam enim. Mollitia non qui et fugit fugit dolorem. Tempore incidunt iusto consequuntur molestiae aliquam eius.',NULL,1,0.051762002,0,0),
 (65,'ydqc','placeat',9,5,5,'Nobis est sed non nam ut esse. Qui mollitia voluptatem vel nisi consectetur assumenda amet. Soluta ex ut tenetur distinctio eum. Vero praesentium expedita et. Dolor aut aliquam rerum consequuntur et e',NULL,1,0,0,0),
 (66,'beue','ut',93,6,6,'Excepturi adipisci reiciendis molestias. Vel in excepturi explicabo sed omnis cum perspiciatis. Et aut iure beatae nemo. Aut odio atque laudantium eligendi dolorem.',NULL,0,647616.8094877,0,0),
 (67,'avrv','dolores',8893,7,7,'Minima voluptatem aut ad facere. Aliquid ut aut rerum suscipit ut ut qui. Beatae eos deserunt cum sunt sunt voluptas voluptatem. Molestias nihil maiores assumenda in enim ut beatae.',NULL,0,11.9,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (68,'cjlu','dolorum',0,8,8,'Praesentium aut autem quia odio incidunt. Cum voluptatem a aut illum ullam. Quidem qui quibusdam sit vitae et et.',NULL,1,1601548.7,0,0),
 (69,'zijx','est',8052,9,9,'Nisi perspiciatis vel et doloribus cum ducimus. Aut aperiam dolores ipsum assumenda. Sed quia et excepturi culpa et. Doloremque dolores rerum ut sed. Ut aut est velit repudiandae molestias rerum id.',NULL,0,34454.93006094,0,0),
 (70,'dmtg','velit',2803,10,10,'Maiores fugit iure doloribus enim. Ut vel odit earum ut cum nam. Minus modi distinctio in modi adipisci voluptate. Quis temporibus aliquam eveniet dolorem.',NULL,1,6417047.7122,0,0),
 (71,'xfuf','natus',45,11,11,'Id labore voluptatem est voluptatem ut architecto atque. Sit neque voluptatibus dicta hic veritatis aut.',NULL,0,9470906,0,0),
 (72,'ptjr','et',90081760,12,12,'Molestias unde nam voluptatem molestias non necessitatibus. Inventore optio reprehenderit est quisquam repellat id sit. Blanditiis ut ut architecto et qui quia qui.',NULL,0,250757589.6248,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (73,'ocok','qui',991,13,13,'Aliquam porro ea optio magnam aliquam officiis hic porro. Placeat aut doloremque sit sint quos dolor. Optio enim maiores adipisci voluptatem non. Perferendis velit tempore reprehenderit rerum consequu',NULL,0,3025276.734,0,0),
 (74,'darm','doloremque',555,14,14,'Est facilis dolorum voluptatum modi molestiae odit impedit. Praesentium perspiciatis quis reprehenderit aut.',NULL,0,9741002.054106,0,0),
 (75,'njdk','voluptatem',6119132,15,15,'Laudantium in occaecati quam deserunt est ex sit repellendus. Soluta quae rem magnam nostrum consequuntur. Voluptas velit ipsa vitae officiis. Dolorem ad odio maxime ut cumque fuga reiciendis.',NULL,1,40.47,0,0),
 (76,'qfvn','aut',346680,16,16,'Accusantium eum temporibus expedita eum ullam. Delectus non aliquid sunt totam.',NULL,1,3689241.89,0,0),
 (77,'kpcy','perferendis',0,17,17,'Ut labore ut est distinctio. Consectetur recusandae voluptas sint eum incidunt. Rerum ut est nesciunt deleniti accusamus et quisquam. Eos sed error molestiae autem suscipit sequi. Quia ipsum sed dolor',NULL,1,69.254,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (78,'lpcn','dignissimos',75,18,18,'Non dolore molestiae tempore iusto veritatis consequuntur qui perferendis. Rerum optio ex harum labore quisquam. Praesentium blanditiis asperiores dolorum.',NULL,1,3623220.497,0,0),
 (79,'ukca','at',33,19,19,'Illo cupiditate reprehenderit provident rem vero quia voluptas. Est vel consequatur iste enim.',NULL,1,46.832142693,0,0),
 (80,'kplz','accusamus',883,20,20,'Inventore quae repellat exercitationem voluptas optio debitis aut. At accusantium reiciendis maxime hic. Nostrum et amet alias est omnis molestiae vel. Dolore id occaecati impedit labore velit.',NULL,0,665.235894,0,0),
 (81,'mvav','fugit',0,1,21,'Eligendi assumenda rerum neque sit aut. Laudantium ipsam nostrum ut nobis illo amet culpa. Nam placeat voluptate quod occaecati.',NULL,1,5480509.6123,0,0),
 (82,'wvfe','atque',90,2,22,'Consequuntur officiis dignissimos doloremque eum quisquam reiciendis. Ipsam similique quo ullam qui. Ea laborum ut illo eos quis sequi. Qui temporibus corrupti molestiae molestiae rerum nobis nemo.',NULL,0,0.6995,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (83,'ysmr','quia',9132,3,23,'Aut velit ut hic qui iste hic aliquam. Est aliquam eos impedit ad. Aliquam incidunt qui sunt qui. Dicta exercitationem amet id. Dolorem saepe officia possimus ad a maiores.',NULL,0,2526682.1,0,0),
 (84,'kpwk','provident',97109792,4,24,'Voluptatem minus sit deleniti consectetur recusandae aliquid quo. Soluta neque doloribus a. Velit asperiores quae ullam non.',NULL,0,4057332.842,0,0),
 (85,'wocx','sit',89396,5,25,'Repellat in commodi recusandae atque numquam possimus. Quos incidunt culpa culpa tempora quis minus qui. Sapiente cupiditate autem quia provident repellendus deleniti voluptas. Omnis qui est suscipit ',NULL,0,44.518,0,0),
 (86,'pjvl','nam',0,6,26,'Odit corrupti atque sit et accusantium voluptatem accusantium. Est voluptas ab officia architecto et blanditiis nostrum. Iste quas est vel eveniet dolor illum. Aut dolor unde quia ratione dolores volu',NULL,1,5.5997,0,0),
 (87,'nbys','odit',65678,7,27,'Et sint porro aspernatur nobis itaque quibusdam. Minima et est consequatur occaecati amet et. Quia laborum et eligendi reiciendis alias exercitationem.',NULL,1,7.26,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (88,'yawo','iste',6,8,28,'Beatae non corporis qui. Recusandae dolores facilis eveniet vel tempora voluptatem.',NULL,0,1101.68409676,0,0),
 (89,'qesm','neque',89716182,9,29,'Porro magnam sit rerum. Nemo ut voluptatem ea earum quam est. Molestiae amet quia molestiae expedita non.',NULL,1,56888.543991,0,0),
 (90,'usma','omnis',2203,10,30,'Consequuntur cumque libero ea quo at. Quos adipisci aut quae laboriosam et dignissimos. Placeat dolores nemo aliquam qui. Tempora libero sit aut aut.',NULL,1,640257,0,0),
 (91,'dvzd','rerum',935467201,11,1,'Et recusandae autem architecto vitae mollitia nihil quas blanditiis. A eaque facere ducimus repudiandae rerum. Sed at est ab.',NULL,0,463184997,0,0),
 (92,'wjnp','omnis',3,12,2,'Incidunt neque est praesentium dolores illum praesentium ea. Nulla recusandae molestias eius sed similique amet necessitatibus. Laborum et labore aliquam quam in.',NULL,0,2.1,0,0),
 (93,'kjhz','corrupti',539891793,13,3,'Ab laudantium doloribus at laboriosam in. Doloremque dolores unde unde. Repellat cupiditate consequatur voluptatem maxime qui qui vel enim. Vitae itaque placeat tempora.',NULL,0,1419.476,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (94,'zjci','ipsa',6818461,14,4,'Animi ea ipsam suscipit delectus illum omnis vero. Quis delectus ut esse ipsam qui eos modi. Est mollitia nam est quod nostrum dolorem. Autem quasi quibusdam molestiae unde at.',NULL,0,45.209,0,0),
 (95,'bzio','eum',43,15,5,'Placeat inventore et magni sapiente dolores. Nemo voluptate molestias aut cum. Aut nam sunt tempora eos praesentium.',NULL,0,405.1177,0,0),
 (96,'gqjj','minus',45307,16,6,'Consequatur distinctio inventore est fugit rem amet sit. Modi ut et esse recusandae expedita. Consectetur voluptas ea veniam dolore nam dicta est exercitationem.',NULL,0,5454680.715,0,0),
 (97,'eptw','modi',9167,17,7,'Temporibus nesciunt sit sit qui sint consequuntur porro. Provident laborum rem nam omnis. Dicta unde quis rem facere. Ullam rerum modi voluptas blanditiis.',NULL,1,89571.38,0,0),
 (98,'asjy','ut',8913012,18,8,'Ex et aperiam tempore voluptas. Eius qui quia enim. Magni vel commodi rerum.',NULL,0,39.2,0,0);
INSERT INTO `product` (`idproduct`,`code`,`name`,`porder`,`brand_idbrand`,`product_sub_category_idproduct_sub_category`,`description`,`offers_idoffers`,`is_featured`,`price`,`status`,`product_type`) VALUES 
 (99,'ugaq','similique',30521655,19,9,'Sit nam praesentium unde. Cum blanditiis harum esse et quae saepe. Doloremque nulla aut animi eaque est quis architecto maxime. Quis vel aliquid dolor sunt itaque est. Nemo accusamus velit accusantium',NULL,0,41.8852083,0,0),
 (100,'czlp','eos',16,20,10,'Voluptatibus nemo quia labore quia. Modi eum praesentium molestiae dicta dolor debitis unde omnis. Eius fugit harum et reprehenderit non ad. Magnam ea iure sed minima facilis ut. Quis ut odit culpa li',NULL,1,3.36663001,0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `idproduct_category` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idproduct_category`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_category`
--

/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` (`idproduct_category`,`code`,`name`) VALUES 
 (1,'329','REICIENDIS'),
 (2,'247','NAM'),
 (3,'117','ID'),
 (4,'411','SIT'),
 (5,'275','NEQUE'),
 (6,'947','UNDE'),
 (7,'483','IPSA'),
 (8,'782','EUM'),
 (9,'477','QUAERAT'),
 (10,'780','SIT'),
 (11,'584','MAGNAM'),
 (12,'913','QUI'),
 (13,'525','DELENITI'),
 (14,'949','ACCUSAMUS'),
 (15,'967','NISI'),
 (16,'752','CUPIDITATE'),
 (17,'455','EST'),
 (18,'798','DELECTUS'),
 (19,'320','CUPIDITATE'),
 (20,'221','AUT'),
 (21,'37744','EDFRGT'),
 (22,'321','SOME'),
 (23,'LAPTOP','LPT'),
 (24,'CMPACSR','COMPUTER ACCESSORIES'),
 (25,'ELTCITMS','ELECTRIC ITEM'),
 (26,'FRNT','FURNITURES'),
 (27,'PWRTLS','POWE TOOLS'),
 (28,'CLTH','CLOTHES'),
 (29,'CMTCODE','SOMEDATA'),
 (30,'2471','NAM1'),
 (31,'24718','NAM2'),
 (32,'TST001','TESTNAME001'),
 (33,'TST002','TESTNAME002'),
 (34,'TST003','TESTNAME003'),
 (35,'TST004','TESTNAME004'),
 (36,'TST005','TESTNAME005');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_comment_replys`
--

DROP TABLE IF EXISTS `product_comment_replys`;
CREATE TABLE `product_comment_replys` (
  `idproduct_coment_replys` int(11) NOT NULL AUTO_INCREMENT,
  `procut_comments_idprocut_comments` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`idproduct_coment_replys`),
  KEY `fk_product_coment_replys_procut_comments1_idx` (`procut_comments_idprocut_comments`),
  KEY `fk_product_comment_replys_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_product_coment_replys_procut_comments1` FOREIGN KEY (`procut_comments_idprocut_comments`) REFERENCES `product_comments` (`idprocut_comments`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_comment_replys_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_comment_replys`
--

/*!40000 ALTER TABLE `product_comment_replys` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_comment_replys` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_comments`
--

DROP TABLE IF EXISTS `product_comments`;
CREATE TABLE `product_comments` (
  `idprocut_comments` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(350) NOT NULL,
  `product_idproduct` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`idprocut_comments`),
  KEY `fk_procut_comments_product1_idx` (`product_idproduct`),
  KEY `fk_procut_comments_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_procut_comments_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_procut_comments_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_comments`
--

/*!40000 ALTER TABLE `product_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_comments` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `idproduct_images` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(70) NOT NULL,
  `image_1` varchar(70) DEFAULT NULL,
  `image_2` varchar(70) DEFAULT NULL,
  `image_3` varchar(70) DEFAULT NULL,
  `image_4` varchar(70) DEFAULT NULL,
  `product_idproduct` int(11) NOT NULL,
  PRIMARY KEY (`idproduct_images`),
  KEY `fk_product_images_product1_idx` (`product_idproduct`),
  CONSTRAINT `fk_product_images_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_images`
--

/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_specification`
--

DROP TABLE IF EXISTS `product_specification`;
CREATE TABLE `product_specification` (
  `idproduct_specification` int(11) NOT NULL AUTO_INCREMENT,
  `detailed_description` varchar(350) DEFAULT NULL,
  `product_model` varchar(45) DEFAULT NULL,
  `product_features` varchar(400) DEFAULT NULL,
  `released_on` date DEFAULT NULL,
  `product_idproduct` int(11) NOT NULL,
  PRIMARY KEY (`idproduct_specification`),
  KEY `fk_prodcut_specification_product1_idx` (`product_idproduct`),
  CONSTRAINT `fk_prodcut_specification_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_specification`
--

/*!40000 ALTER TABLE `product_specification` DISABLE KEYS */;
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (1,'Debitis consectetur tenetur sint iste. Recusandae voluptatem perferendis voluptatibus debitis. Architecto cumque perspiciatis laudantium odit dolorem voluptatum aut minus. Repellendus sed laborum quasi doloremque.','Omnis nam nesciunt et cumque necessitatibus n','Facilis sit quis maiores voluptas voluptatem ex temporibus. Dicta fugiat repellat ipsam quam occaecati tempora et. Possimus tempora delectus pariatur illum aliquam voluptatem qui.','2017-12-02',1),
 (2,'Modi libero voluptatum praesentium perferendis beatae a molestias dolorem. Omnis ipsam distinctio et asperiores praesentium eius. Incidunt aspernatur voluptas voluptatem accusamus et.','Omnis ex aut consequuntur autem sunt.','Maxime reiciendis nostrum dolores culpa. Itaque omnis libero odit quo quidem iusto voluptatem ut.\nMagni quos velit pariatur animi. Rerum beatae beatae nihil nihil.','2007-10-02',2),
 (3,'Qui dolor delectus dolores cumque quos ea itaque suscipit. Repudiandae architecto expedita sapiente aut facere. Assumenda rerum sed minus ipsam ducimus.','Nihil omnis fugit nesciunt voluptatem laborum','Minima id blanditiis doloremque rerum. Ut dolores ab nihil qui sequi. Quasi consectetur nisi qui commodi aspernatur.','1999-07-18',3);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (4,'Molestias praesentium minus dicta libero est recusandae. Est quia unde officia nisi. Quo eos mollitia in aut ipsam ipsum dolore voluptatibus. Et est numquam ab ex corporis natus. Modi non veritatis quibusdam ducimus.','Sapiente odio temporibus mollitia voluptatem ','Commodi pariatur sit rerum alias autem accusantium perspiciatis. Ab sapiente quasi ipsum enim eaque tempore et. Aut quae cupiditate et debitis odit.','2008-12-04',4),
 (5,'Sed facilis enim debitis nam in. Quia qui voluptate ea sequi exercitationem. Ut dolores quis est voluptatem delectus. Corporis sapiente illo doloremque non distinctio.','Sit necessitatibus facilis quia voluptatum ne','Dicta autem qui est maxime. Fugiat ullam et et rem praesentium ipsam et. Eum ut impedit ut ea libero molestiae officiis.','1991-07-30',5),
 (6,'Necessitatibus ipsam dolore eum similique numquam non. Ducimus et rerum et fuga qui dolor deserunt iure. Est aut est fugiat cumque rerum sed vitae.','Magni harum eaque incidunt nostrum sunt qui e','Nisi explicabo dicta animi quia ut ab ut. Eaque sit qui maxime. Quod culpa dignissimos quis praesentium explicabo molestias.','1978-01-03',6),
 (7,'Tenetur sint eaque aut quisquam corporis voluptas quod. Deleniti vel molestias delectus dicta.','Facere cum enim aliquam expedita dolor est.','Exercitationem veritatis commodi consectetur voluptatibus culpa sint accusantium. Numquam qui corporis architecto tempore quisquam omnis. Libero vero ipsam sed est.','2000-09-11',7);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (8,'Rerum quaerat sunt deleniti similique incidunt alias. A est voluptatibus vitae enim omnis et inventore. Commodi saepe et dolor et et aspernatur distinctio velit. Sit eum aut temporibus nemo laudantium aut vel.','Nemo sed harum facilis qui.','Officiis debitis et mollitia voluptas. Sit iusto et ipsa voluptates commodi facere eius. Ullam et deleniti non repellendus repellendus porro.','2019-05-04',8),
 (9,'Ab et numquam quis iure est. Et aperiam est in asperiores voluptatem quidem.','Consequatur recusandae porro et nihil dolorem','Doloribus autem placeat autem est rerum. Fuga voluptatibus et quo molestiae qui.\nQui nam quia nihil reprehenderit. Nemo dolore omnis illum et voluptas molestias dolorum.','1980-01-09',9),
 (10,'Doloribus autem beatae blanditiis et vel dolores aspernatur. Nihil cumque numquam et et aspernatur facere magnam. Voluptatem debitis sunt nesciunt qui soluta eveniet eos fugiat. Sed architecto alias magni ut. Sunt ut harum architecto voluptatem dicta impedit.','Vero vitae aliquid voluptatem et voluptas quo','Minus voluptas rerum in voluptas quibusdam reiciendis quia harum. Qui qui iure ex cum libero. Possimus dolore sed incidunt.','1997-03-23',10),
 (11,'Vero odio sunt nam dolore nisi. Explicabo sint earum omnis et qui. Nostrum qui sed voluptatem nihil sit. Rerum mollitia voluptates fuga reiciendis voluptatem enim ullam saepe.','Nobis at ab neque ut molestiae sit.','Velit beatae nisi harum ullam ut quos. Eligendi repudiandae ipsam libero et quasi. Mollitia distinctio cupiditate doloribus ipsam qui voluptatum tempora. Vel aut autem numquam est ipsam.','2015-11-12',11);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (12,'Qui dicta voluptatum nam accusamus sed. Ipsa accusantium exercitationem nihil doloribus et. Aut illum qui quis voluptatem. Quae soluta iusto minus est est.','Sunt quia tempora omnis dolor laborum non est','Et est adipisci voluptatum voluptatum. Voluptas voluptas qui itaque. Veniam vel nihil libero dolorem rerum et. Rem vero consequatur ab temporibus aut deleniti.','2015-01-27',12),
 (13,'Et illo aut at sed rerum et. Ut autem quam odio molestiae quis voluptates.','Ab sed neque sint molestiae ipsa.','Fuga nihil vel tenetur rerum reiciendis atque. Corporis nemo veniam perspiciatis nihil nihil deserunt.','1997-10-17',13),
 (14,'Vero sed est nam labore. Nemo quisquam voluptates voluptatem ut. Ut consequatur suscipit aut earum et eos. Similique facilis quasi recusandae praesentium.','Cupiditate fugit maiores dicta tenetur.','Explicabo atque commodi occaecati ipsam necessitatibus eligendi omnis voluptas. Excepturi ut necessitatibus distinctio. Rerum nihil quasi quia.','2019-06-08',14),
 (15,'Non explicabo aut beatae blanditiis. Sint debitis quia perferendis fugit deleniti ratione vitae nisi. Recusandae neque quia saepe. Numquam in vitae voluptatem ad aliquid esse.','Quibusdam quos quam fugiat asperiores pariatu','Maiores cumque omnis fugiat unde alias quae id. Ut nesciunt architecto eius vitae blanditiis omnis. Enim eveniet et rem eligendi dolore unde. Et possimus eaque tenetur architecto.','1998-05-12',15);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (16,'Sint error optio ut iure modi. Nihil dolores deserunt sapiente ratione qui dicta. Aut porro illum recusandae assumenda nesciunt magni eum.','Vero praesentium eligendi tempore qui aliquam','Ipsa autem ex quibusdam omnis. Architecto blanditiis ea illum debitis. Ut nihil facilis natus quo aspernatur. Laboriosam rerum quis totam. Ullam deleniti tempore ipsam deleniti.','1972-02-29',16),
 (17,'Vel est nam itaque maxime id architecto sequi. Sunt est cumque et repellendus aperiam. Non voluptatum alias doloribus. Nihil et laboriosam velit aperiam recusandae dolores. Facilis tempora explicabo porro id qui qui.','Qui pariatur quo voluptatem atque.','Ut in vel iusto est officia dolores repellat sunt. Officiis et id ipsum deserunt doloribus delectus. Delectus eos illum dolorem repellat quia quo et.','2002-03-23',17),
 (18,'Nobis nulla omnis totam deleniti. Doloribus et porro cum est officiis. Asperiores dolores consequatur eaque consequuntur.','Nam dolores doloremque ut pariatur ea ullam a','Odit quas et neque corrupti. Sed odio fuga officia molestias maiores est possimus. Quas et quos unde accusamus deserunt culpa odio.','2005-12-03',18),
 (19,'Omnis ut sequi eum dolores ea odio. Id quidem exercitationem accusamus aut voluptatibus enim aut. Et voluptatem cum accusamus voluptates quam deleniti voluptatibus. Nobis nemo dolorem dolores.','Exercitationem sed eius assumenda eos omnis o','Tempore suscipit excepturi exercitationem suscipit. Molestiae sit occaecati sed laborum sit repellendus. Sequi aliquid id sed iure numquam dolor. Autem accusantium saepe quia natus perferendis saepe.','1982-08-15',19);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (20,'Qui et ratione enim optio. Cupiditate sunt harum animi necessitatibus. Eveniet quae provident unde repudiandae doloribus.','Corrupti hic facilis consectetur possimus per','Veritatis incidunt aut aperiam voluptas quod rem. Est maxime magnam vel suscipit recusandae. Quia incidunt ipsa officia consectetur vel non. Eum amet doloribus qui ipsum rerum nostrum.','1981-09-24',20),
 (21,'Dolor sint quasi in cum nulla. Quae excepturi consectetur dolor deserunt reiciendis voluptate. Rerum sapiente id ut occaecati quam sit ut. Ipsa fugit quia ut pariatur aliquam veniam vitae animi.','Nostrum aut a est hic consequatur.','Dignissimos corrupti quisquam atque dolore est adipisci in officiis. Et voluptas non consequatur asperiores. Consequuntur ut voluptatem est.','2015-03-06',21),
 (22,'Vitae dolores a quia ipsa eum totam libero. Temporibus quas modi aut vero dolores id cum. Dolorem et quia nostrum voluptatibus in et similique. At dolore quaerat et.','Facere ut in sunt et.','Dolorem perspiciatis et nisi temporibus. Inventore odio maiores atque eum velit hic vero et. Beatae voluptatem nulla magni sint iure. Commodi eos veniam sed repudiandae qui.','1981-07-04',22),
 (23,'Iure incidunt qui eveniet rerum. Distinctio vero enim officiis doloremque. Inventore sequi asperiores consequuntur sit.','Facere neque et ab aperiam ab nemo saepe.','Sit tempore ut cum pariatur quidem ipsum. Unde aut fuga neque quod assumenda soluta at.','2018-07-25',23);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (24,'Dolores eveniet consectetur harum cupiditate. Suscipit alias velit dolorem sit vel qui autem. Ab est deserunt voluptas voluptatibus.','Tempora sed quaerat enim provident pariatur.','Libero ducimus ullam ad quo. Aut eos in nobis ipsum.\nAutem sit distinctio sequi ut et cupiditate. Earum eos totam corporis dolores autem inventore et. Ut aliquam ea consequatur repudiandae hic.','1980-12-17',24),
 (25,'Tempore iusto aut eligendi quas rerum veniam aut laborum. Amet ea voluptates voluptatem possimus. Distinctio labore ut perspiciatis in rerum. Id ad eos esse eaque id sit aut.','Corrupti sequi ullam ipsum et quo deleniti vo','Consequuntur neque nihil quibusdam optio quisquam. Alias omnis iure et quas optio qui. Deserunt minus illum iste consequatur possimus.','2016-01-28',25),
 (26,'Dolore dolorem aut sed consequatur est deleniti accusantium. Et facere rerum aut alias. Nihil eligendi cum nulla minus velit. Officia veniam quia reprehenderit hic a explicabo.','Corrupti molestiae saepe adipisci non.','Unde temporibus alias at dolorem. Ab dignissimos iure quaerat et rerum accusamus repellendus. Harum voluptas ut rerum et.','2011-09-13',26),
 (27,'In provident maxime omnis explicabo amet repellendus ut aut. Enim maxime sunt praesentium nihil necessitatibus sint et iure. Nihil qui reiciendis quis quisquam nisi voluptas. Molestias eum ut beatae illo molestias.','Iusto earum neque laborum.','Eum veniam maxime sunt. Placeat magnam dolor odit eos ut laboriosam. Ad mollitia fuga odit sequi qui. Consequatur sit ipsa ullam dicta eos architecto quo.','1975-03-25',27);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (28,'Iste alias unde non. Porro vitae est eaque. Doloremque exercitationem sit officiis facilis sunt. Nisi quia occaecati sapiente enim dolore necessitatibus harum. Excepturi ad sunt totam est voluptas sapiente tenetur.','Reiciendis provident et cupiditate nulla offi','Necessitatibus ratione aut doloribus ut. Et enim doloribus et nobis aut. Et autem asperiores in culpa inventore quis sed.','1988-06-11',28),
 (29,'Sapiente et voluptatem sit voluptatum dolore quaerat. Velit est eveniet delectus et id nesciunt. Doloribus est tempore voluptates sit iure consequatur et laborum. Suscipit qui rem qui nostrum ab qui.','Quos itaque reprehenderit est et reiciendis e','Debitis est ipsum laudantium exercitationem provident. Accusantium repellendus optio sunt odio delectus. Ducimus ea consequatur in repudiandae nihil temporibus qui.','1979-10-15',29),
 (30,'Odit eveniet libero doloremque dicta ea distinctio sit. Quasi et itaque et corporis. Sint nihil molestiae voluptates explicabo voluptatem.','Soluta sapiente quia et molestias aliquam et ','Explicabo tempora velit ut sunt omnis. Et et voluptatem voluptas labore odit libero.','2012-12-16',30);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (31,'Neque assumenda fugit et alias. Odio consequatur minus culpa et iste. Quidem officiis est minus iusto tenetur ipsam est.','Similique fugit dicta ut rerum est.','Facilis molestiae sit blanditiis sed nisi non sed. Et dignissimos eum magni ut omnis aut. Tempora omnis dolor possimus hic sit.','1999-07-02',31),
 (32,'Excepturi enim laborum cupiditate minus quia eveniet temporibus aut. Adipisci rerum itaque modi. Recusandae velit consequatur sint voluptas.','Aut veritatis saepe nulla consequatur necessi','Dolorem minima sapiente atque et sunt architecto delectus. Deserunt facere consequuntur maiores repellat. Expedita libero ab ut dolores laborum et et. Voluptas libero enim tempora.','1998-03-17',32),
 (33,'Praesentium eveniet aut quo. Consequatur ratione impedit impedit ab deserunt quae quo. Voluptas quam aut qui cupiditate voluptates est debitis. Ut eligendi corporis possimus voluptas qui.','Temporibus iusto pariatur adipisci qui repudi','Asperiores molestias aut quia nemo mollitia repellat nemo. Modi rem eaque tempore sint et. Vitae sint est reiciendis aut laboriosam. Quis porro exercitationem nam aliquid.','2009-09-10',33),
 (34,'Cum minus rerum repellat excepturi. Deleniti ad laudantium occaecati voluptate similique corporis. Dolorem animi aliquid similique iste. Ullam qui qui voluptas accusamus dolorum omnis veniam. Tempore aut ut rerum vitae deleniti nihil.','Cupiditate nisi exercitationem minima volupta','Qui qui perferendis omnis. Qui quasi animi autem a. Perspiciatis consequuntur illum sint quo voluptates.','2007-10-12',34);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (35,'Sed reprehenderit voluptatibus cumque natus qui maxime. Sed nostrum quasi ut. Facilis quia doloremque perspiciatis voluptate deleniti quae eos. Sed doloribus maxime nihil doloremque voluptatem aut minus. Consequatur quisquam saepe possimus aut eius laborum qui ad.','Possimus asperiores neque molestias libero do','Dolorem est voluptates vero qui dignissimos sit et. Molestias praesentium vel eius. Natus sint quibusdam quis ad.','2013-02-28',35),
 (36,'Autem aut nisi perspiciatis sit ea autem. Velit asperiores nihil aut laborum doloremque iste. Omnis dolorem dolor aut ab.','Sit ullam atque quia sed dolore.','Qui maiores magnam dolore. Est beatae quod mollitia qui. Nisi reprehenderit nulla corrupti. Reprehenderit rerum delectus illo tempora id voluptatem.','1995-11-28',36),
 (37,'Accusantium voluptas similique voluptas dolor eum inventore maxime impedit. Dolorem mollitia dolores omnis. Natus reiciendis est magni voluptates sint deleniti consequuntur. Quia similique iusto praesentium aut fugiat aperiam molestias.','Voluptatum aliquam nulla asperiores qui omnis','Quia dolores dolores sed necessitatibus nesciunt rerum facere. Ipsam beatae ullam et iure sed saepe et. Impedit corporis rerum nam id. Accusantium unde consequatur soluta eaque.','2020-08-28',37),
 (38,'Laboriosam numquam occaecati numquam aut voluptatem voluptas nesciunt. Et quos voluptate ut doloremque. Dolorem ipsam facere provident voluptas.','Sit numquam sed iste doloremque nam necessita','Ut non esse culpa consequatur et et nihil. Ut quidem atque similique omnis sit. Incidunt quia numquam vel.','1999-11-03',38);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (39,'Error aperiam amet nisi accusantium doloremque. Voluptatem numquam quia optio quia sunt ut. Eligendi quisquam repellendus et aspernatur. Et eveniet quae nisi maxime sed blanditiis. Labore consequatur eligendi ut ratione voluptate qui.','Animi autem molestias dicta aut est.','Ut rem dolore delectus incidunt autem rerum quaerat. Assumenda sequi doloribus quia autem. Ut ipsum ad distinctio et tempora. Molestiae laboriosam eum optio quae.','1992-10-26',39),
 (40,'Neque quas consequatur aut molestiae est. Illum maiores qui omnis est hic labore sed. Assumenda doloribus saepe aut nulla est et voluptas.','A atque a repellat facere voluptatem eligendi','Sed sint doloribus vero quo eius. Maiores voluptatibus assumenda vero quas iusto beatae. Minima non quaerat totam at debitis vel omnis. Et unde et est adipisci explicabo nemo.','2005-04-30',40),
 (41,'Quam tempora explicabo sed. Voluptatem deleniti dolorem rerum perspiciatis autem sed non. Velit facere numquam inventore optio.','Rem temporibus et sit.','Atque rem natus necessitatibus sed quia mollitia. Aut dolores harum possimus non officia. Id ab veniam est aspernatur nesciunt sed non. Quia sunt nihil qui dolores error.','2014-05-05',41);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (42,'Ut voluptatem omnis molestias qui dolor qui sequi. Sunt eum eligendi consectetur dolorem ut et. Et ut doloremque ea blanditiis. Laudantium esse mollitia voluptatem nesciunt.','Praesentium vero consequatur mollitia culpa.','Rerum laborum voluptatem voluptatem corrupti sed officiis. Sed est repellendus eaque consequatur qui omnis. Possimus ut unde vero sed.','2012-04-22',42),
 (43,'Maiores odio quidem dolores vitae iste deleniti. Sit ex possimus quis dignissimos. Numquam ducimus est incidunt ullam temporibus in. Nihil totam quis labore sint labore iusto. Esse et cupiditate consequatur atque.','Laudantium qui quo perferendis.','Voluptatem velit qui cum ex. Cupiditate possimus eius rerum rem. Id tempora rerum qui omnis iure corporis.','1988-08-09',43),
 (44,'Aut aut voluptatem earum. Quod ipsum ut assumenda distinctio. Et odit reprehenderit dolorem. Dolores dolores molestias nobis ad.','Autem molestiae tempore aut maiores facilis.','Consequatur eligendi a delectus accusantium. Sunt cumque tempore beatae optio corporis minima blanditiis. Eaque quae impedit nihil id.','1992-11-26',44),
 (45,'Qui suscipit quia at aliquid. Ut mollitia dignissimos maxime nihil qui rerum. Explicabo tempora quis totam aut deserunt neque. Dolore praesentium tempore aut quod beatae inventore eligendi.','Illum inventore ab ut repellat voluptates.','Laudantium autem maiores officia sint praesentium enim. Tempore officiis qui eius qui voluptatem. Explicabo quo quia est animi ducimus molestiae veritatis.','2001-10-30',45);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (46,'Quos porro pariatur dolor unde ut. Reiciendis eaque eius laborum dolor fuga et. Temporibus nihil eum at reiciendis.','Omnis ab nam omnis cum ut.','Quia quis magni voluptatem mollitia ipsa. Est dolorem quas porro ipsum et aut inventore. Nostrum est quo ea ipsum animi numquam sint.','1993-08-08',46),
 (47,'Sapiente nemo officiis omnis. Eos aut saepe provident et dolorum suscipit omnis. Neque et velit soluta error nisi laborum.','In porro alias et labore blanditiis.','Officiis tempore in asperiores. Quia ab velit qui nesciunt dolorem. Quod qui dolor inventore sint occaecati et.','1979-11-29',47),
 (48,'Modi dolor quos cumque et id temporibus ex veritatis. Quo et sed quod similique voluptatem id cumque animi. Aut quam totam at voluptatem nihil nobis ipsa adipisci. Rerum labore sit rerum dolor eaque non.','Aut porro reiciendis debitis dolorem numquam ','Totam qui labore dolorum est sapiente. Laudantium dolor quidem impedit quis. Provident labore voluptatibus officia tempora.','2019-11-29',48),
 (49,'Voluptatibus eum velit consequuntur et hic. Fugit deleniti architecto ut laborum aliquid perspiciatis.','Dolore provident maiores qui aut atque conseq','Qui dolorem laudantium a porro nihil. Eum aut corporis dolores in nam veritatis et. Vero reiciendis labore nulla nobis ut id voluptas velit. Veritatis qui sapiente beatae quod.','2016-07-03',49);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (50,'Aut nostrum ipsum ex velit assumenda aut. Aut voluptatibus quia pariatur et iusto officia. Dolorum cum tenetur distinctio est hic.','Saepe quia dolor quia harum voluptate.','Aut perspiciatis neque maxime voluptas exercitationem alias. A mollitia deleniti repellendus suscipit. Rerum voluptas voluptatem reiciendis quis quae mollitia.','2006-10-02',50),
 (51,'Omnis minima autem impedit harum rerum voluptatibus. Soluta velit suscipit ea ratione et voluptatem. Alias tenetur iure ut ea.','Ullam et illo voluptas eos dolores velit cons','Temporibus reprehenderit architecto atque quia ipsum architecto quis. Odit non iste pariatur ex quas quisquam suscipit. Ex sint repellat earum officia.','1974-11-10',51),
 (52,'Repudiandae blanditiis neque cupiditate omnis fugiat vel perspiciatis. Eligendi doloremque nostrum temporibus et ad qui. Qui et dolor corrupti et assumenda amet ut.','Nisi labore neque laboriosam debitis in dolor','Est eveniet nulla id omnis. Voluptate et eos totam et. Nihil sed a est molestiae aut ut. Sed dolor minus mollitia ratione voluptatibus iure. Sint amet sunt iure ea rem.','1982-11-09',52),
 (53,'Omnis officiis mollitia a blanditiis alias error. Inventore culpa quam repellat id odio suscipit quas. Ducimus libero totam sunt molestiae et.','Saepe quis dolorem ipsum totam deserunt imped','Architecto inventore eveniet voluptate minima architecto vel eligendi. Quae aut perferendis aut voluptatum quas voluptatibus. Et rerum illo sequi optio est eum sit.','2002-06-06',53);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (54,'Eveniet quae accusamus eos nam distinctio. Recusandae labore sint fugiat voluptas sequi. Doloremque maiores blanditiis fuga ex quia molestiae exercitationem voluptatem. Nemo est quas voluptas velit aut maiores.','Eum quis aut recusandae repellat.','Molestiae a enim consequatur delectus voluptatum perspiciatis officia. Aut deleniti earum ut ab delectus dolore. Atque voluptates aut voluptate aut. Sunt quaerat cum qui blanditiis ipsa quia.','1992-04-21',54),
 (55,'Nemo eaque exercitationem omnis quos consequatur. Voluptas cumque aliquam autem. Et eaque rem nihil quae quasi. Aliquid quibusdam fuga iste.','Voluptatem quia qui ut animi.','Voluptas eius ex nesciunt aut ea ullam est deleniti. Magnam qui in rem impedit omnis ratione. Rerum quis qui quis quibusdam modi velit magni. Maiores sint et dignissimos rerum sunt.','1993-03-30',55),
 (56,'Voluptates distinctio dicta provident delectus. Voluptas sed laboriosam quidem doloremque. Quae explicabo ut consequuntur ut et voluptatibus. Illo sed eum quos libero ad facilis architecto. Rerum aliquam fuga non ut.','Impedit itaque magnam consectetur blanditiis ','Molestiae qui dolorem facere beatae minus quia qui. Eos in ipsum minima pariatur. Ut ipsa cupiditate et est quibusdam. Laudantium aliquam quia odio eos perspiciatis natus dolorum.','1975-06-22',56);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (57,'Eos sit et harum eum culpa aut. Omnis molestiae vitae quidem nihil. Quia totam inventore sed nesciunt.','Amet perspiciatis labore cum repellendus volu','Non accusantium non autem voluptatum esse voluptatem odio. Sed sint totam quia magni doloremque voluptatem iste non. Voluptate culpa praesentium aut quia.','1980-09-10',57),
 (58,'Culpa aut sapiente sed quibusdam. Quasi suscipit harum assumenda rerum. Explicabo dicta eos et occaecati autem. Excepturi pariatur voluptate itaque dolorum sunt deleniti.','Iusto repellat sint est at voluptatibus dolor','Rerum nulla esse qui alias. Rerum iure nisi quidem non. Et numquam sunt facere quam dolore.','1997-07-18',58),
 (59,'Ducimus voluptas quia vitae est. Alias vero deserunt minus sapiente cum voluptatibus. Iusto quo laudantium commodi quidem dolorum. Pariatur qui numquam quidem saepe quia.','Voluptatem assumenda aliquam earum non aut ad','Quia et animi amet. Dolorem et quis eaque commodi ex sed ut et. Placeat expedita tenetur aut eaque fugit. Laborum laudantium quidem voluptatem minima voluptas quis assumenda.','1998-10-19',59),
 (60,'Consequatur dolores eos blanditiis tempora. Architecto ipsam perspiciatis ut aut et ut et. Possimus aut enim voluptatem dolorum. Ut molestiae ipsam quisquam velit sit omnis ut.','Incidunt id accusamus vel eaque pariatur fuga','Dignissimos officiis quam saepe qui corrupti. Et expedita at autem reiciendis pariatur aut est at. Sequi est cum qui. Qui et quia voluptates neque dolorem deserunt.','1995-07-12',60);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (61,'Accusamus optio quae eius quidem sit tempore. Perferendis et enim dolorem voluptas sint est vero. Quas qui vel voluptatem natus rerum et sequi assumenda. Sequi nemo sequi nisi eum. Atque sunt ut nisi sed nam ab facere.','Perspiciatis consectetur sed ut aut est et al','Itaque esse ut veniam cum sunt maiores. Facilis et in modi excepturi velit eveniet laboriosam. Rerum voluptates mollitia et porro.','2012-06-02',61),
 (62,'Nemo rerum quisquam ea qui. Qui incidunt et nesciunt.','Eaque eveniet fuga dolor pariatur.','Minus rem sit aut. Error fugiat architecto quasi eos. Odio quaerat consequatur enim cum rerum et.','2005-05-14',62),
 (63,'Qui placeat iste ut vel. In vitae ut voluptatum iste. Earum aperiam occaecati natus voluptatem quidem architecto sit. Eos quisquam laboriosam amet facere tempora placeat.','Ex nihil tempora enim vel deserunt.','Ut officia sit illo autem sunt. Repudiandae quia et consequatur incidunt ea rerum reprehenderit. Reprehenderit nostrum omnis deserunt hic dignissimos ut. Dicta omnis temporibus quis eveniet qui.','1986-11-19',63),
 (64,'Voluptatum est libero odio nostrum. Non illum velit doloremque maiores eligendi occaecati. Rerum velit voluptatem dolores omnis perferendis est accusantium. Sequi et sed laboriosam officia dolor quis.','In autem est omnis ut illo ut ea.','Labore veniam eos voluptas. Quae voluptas ducimus et et quibusdam voluptate. Numquam qui autem et dolores officiis dolorem non. Voluptas rerum ea qui quidem vel facilis.','2013-02-18',64);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (65,'Eligendi voluptas provident error minima voluptas deserunt repellat. Et commodi commodi rerum modi mollitia nemo ducimus. Eveniet dolor repellat repellat cumque atque impedit est. Placeat maxime sit maxime.','Vel molestiae repellendus sint.','Eaque quae est consequatur omnis qui maiores et. Enim aliquam sapiente qui consectetur omnis. Laborum ut aliquam optio.','2012-12-19',65),
 (66,'Dolorem et corporis modi enim. Voluptas voluptatem qui saepe amet.','Explicabo quasi et cumque eum nisi impedit de','Fuga autem dolore sunt sit. Rerum sit rerum sapiente reiciendis voluptatibus aut. Doloremque animi ipsum ullam vel a ut excepturi.','1975-03-06',66),
 (67,'Fuga eum delectus porro. Et nesciunt itaque quidem quasi. Consequatur reprehenderit ipsum esse et qui ipsum.','Non quia reprehenderit saepe sint.','Nemo dolorum saepe animi iure. Ea eaque repellendus occaecati velit quae. Similique mollitia magni illum fugit dolores non est.','2002-05-04',67),
 (68,'Quis repellat id reprehenderit in ducimus ut tempore. Harum veniam neque et sunt odio ipsam ad. Est aut deserunt aut molestias perspiciatis.','Necessitatibus aspernatur laboriosam est even','Amet itaque id possimus nihil. Quod repudiandae sit beatae deserunt nemo. Veritatis molestiae sapiente sit eaque. Quia sed nesciunt quod illum repudiandae est ratione.','2016-09-03',68);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (69,'Occaecati animi iure veniam velit et. Dicta itaque porro suscipit eum eum qui sed dolorum. Consectetur corporis dicta possimus.','Sit molestias totam ducimus possimus debitis ','Qui repellat voluptatem sint ducimus fuga quia. Blanditiis consectetur eos ipsum. Blanditiis odio tenetur nulla iusto porro aut atque est. Neque dolorum eaque ex et voluptatem velit.','1997-04-12',69),
 (70,'Dignissimos sunt iusto cumque ex. Quasi ut adipisci molestias magni reprehenderit aut.','Molestiae et reprehenderit excepturi fugiat i','Soluta et magnam odio cum et. Nisi velit assumenda non omnis. Itaque quia sunt quae natus. Asperiores cupiditate facilis voluptatem unde.','2011-04-13',70),
 (71,'Aut aliquam incidunt itaque velit consequatur. Officia odit ipsam alias qui consequatur quaerat. Sunt ut aut quia.','Recusandae illum culpa beatae fugit.','Provident id aliquam et sed. Numquam veritatis voluptatem possimus. Aut in porro non dolorum dolores.','1985-01-08',71),
 (72,'Doloribus est ut id quo voluptate quia iste numquam. Ea voluptatibus aut et harum alias itaque maxime ut. Suscipit qui quasi id consequuntur autem officiis. Numquam quam corrupti delectus dolores.','Vero sit vel necessitatibus a.','Vero voluptatem libero laboriosam voluptatibus eos recusandae. Iusto exercitationem eum repudiandae beatae. Quam blanditiis eos magnam omnis sed. Ab est qui et nisi tenetur est aut.','1979-03-17',72);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (73,'Quo itaque excepturi ut voluptatem. Eum cumque ullam deleniti. Soluta quia fugit omnis et.','Eveniet atque nulla mollitia consequatur quia','Dolorum ut quos praesentium pariatur facere. Omnis asperiores quaerat ratione nihil a consequatur enim. Dolores pariatur eum unde neque rerum quidem. Amet nobis aut quam dolor similique.','2014-03-12',73),
 (74,'Et omnis officiis quam occaecati ipsa velit. Eius quam voluptas excepturi perspiciatis voluptatem doloribus ut. Voluptate autem eos in modi voluptatem in molestias. Aut adipisci quia modi voluptatem.','Consequatur rem porro fuga.','Error sapiente nostrum et consequatur vel exercitationem. Quae veniam ad rem dignissimos. Adipisci ut rerum quas dolores consequatur alias corporis.','2000-03-26',74),
 (75,'Debitis sunt soluta nobis eveniet eos voluptatem. Similique laborum sed eos natus odit voluptatum.','Corporis et consequatur veritatis similique a','Totam iure ut et libero quibusdam. Ex fugiat et voluptatem similique provident. Accusantium culpa non autem ducimus inventore.','2010-01-26',75),
 (76,'Quas porro laudantium modi eaque magnam labore illo. Aliquid nisi est qui totam sint eaque. Vel omnis delectus rerum non dolore quo rerum eum. Et corporis cumque est ea sit.','Similique incidunt sunt consectetur aut sequi','Nemo velit ab ratione omnis aut nam natus. Facilis ut vel nihil odit praesentium. Nobis rerum unde a voluptatem. Nostrum ut sit necessitatibus aut. Consequuntur architecto et voluptate omnis.','2020-10-26',76);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (77,'Recusandae aut qui nihil temporibus itaque error nisi. Recusandae et ratione ad odio aperiam consequatur. Aut amet omnis provident incidunt qui ut. Dolor cupiditate eos dolorem.','Et asperiores tempora dolorem tenetur.','Et sit accusantium voluptatum nulla. Temporibus suscipit et ut velit quo. Accusantium voluptatem necessitatibus dignissimos porro numquam commodi alias.','1997-04-01',77),
 (78,'Aut velit praesentium quo dolore eum. Et quia non excepturi rem. Voluptate culpa sint assumenda error et. Praesentium pariatur provident quidem sint voluptas ut totam.','Quisquam placeat dolores sit debitis ratione ','Sed quia error recusandae vel delectus eum assumenda. Aut optio voluptatem consectetur odit veniam nemo magni et. Ab illum vel voluptas placeat quibusdam quidem aperiam qui.','1989-07-17',78),
 (79,'Nihil ut incidunt quo in voluptatem quis minus. Et eum illo quas ad dolorem nesciunt. Qui voluptas et reiciendis beatae dolorem. Et maxime voluptas et neque esse aut autem.','Consequuntur dolorem sunt aut cumque.','Rerum ut delectus omnis cumque fuga adipisci. Aut velit ut veritatis unde quidem. Enim voluptatem culpa rerum temporibus qui labore. Aliquam nisi ut omnis fugit quasi et.','2001-01-01',79),
 (80,'Vitae quos aut cum aut hic illo eum. Aut tempora iusto quis totam laudantium consequatur quia. Qui impedit aspernatur impedit dicta sunt. Id omnis dolorem neque ratione quod velit.','Inventore accusantium et quia placeat necessi','Velit cumque soluta recusandae quas blanditiis. Aliquid quam consectetur impedit explicabo beatae tempore hic. Totam inventore quisquam facere qui molestias aut ut sed.','2011-03-18',80);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (81,'Et error quis laboriosam eum. Omnis tenetur ut incidunt sapiente sunt explicabo qui enim. Similique consequatur sed non earum et occaecati eos eos.','Ut sunt ut sit molestiae eum.','Quos dolore expedita minima quae delectus iste. Tempore qui nisi iste provident asperiores. Animi esse voluptate qui dolores cum est et qui.','1993-08-04',81),
 (82,'Ea eum voluptate veniam sit aut error voluptas quo. Ea est officia velit recusandae.','Officia doloribus voluptates sunt est exercit','Sequi qui ipsum dolores eaque quisquam. Tempora et ipsum esse exercitationem velit quo. Quae optio a voluptatem voluptatem non qui et. Dolor tenetur ratione voluptate quos minima illo quia.','1979-02-01',82),
 (83,'Culpa alias labore quo illum voluptatem perferendis cum. Totam iste a voluptas earum. Iure est ratione in ullam sed. Sunt nam dolorum modi saepe fugit consequuntur occaecati.','Minima consequatur ratione modi doloremque.','Aliquam molestias accusamus accusamus ut ullam nulla. Voluptatibus laboriosam ut vel. Et ut consequatur vel qui culpa beatae maxime.','2017-09-07',83),
 (84,'Voluptatibus non qui qui incidunt. Hic et asperiores illo qui. Consequatur minus qui debitis est.','Ut quia nostrum et dignissimos.','Autem minima dignissimos repudiandae quo odit sit magnam. Nemo quasi ex voluptatem est impedit iure. Repellendus aperiam voluptas at adipisci ut aut. Repellat earum et officia unde maiores inventore.','1978-02-15',84);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (85,'Officiis eos enim voluptas. Illum aut illo deleniti sit ratione. Qui culpa dolor harum reprehenderit aut.','Beatae omnis doloremque ullam qui.','Expedita temporibus ut omnis dolorum enim nemo. Autem sequi ut quos delectus ut quia.','1982-05-07',85),
 (86,'Necessitatibus nihil voluptatem ut nobis delectus qui qui minus. Velit dolores mollitia fugit qui. Voluptas molestiae tempora explicabo rerum sequi et molestias.','Asperiores ad vel maiores pariatur quae.','Voluptas similique aut placeat voluptatem quia non rerum. Non beatae assumenda unde reprehenderit repellendus recusandae laborum. Dolorem dolores corporis omnis ad ut omnis repudiandae.','1984-11-30',86),
 (87,'Commodi et omnis repellendus et hic. Nostrum aut temporibus dicta eius quis fuga qui. Deleniti doloremque omnis non aliquam voluptatem quam possimus.','Nostrum voluptas consequatur molestiae ea.','Ab dolorum reiciendis ullam perferendis maxime maxime. Animi excepturi consequuntur qui iusto id necessitatibus. Saepe quia vitae neque et.','2006-02-02',87),
 (88,'Dolorem tempora ut modi facere. Error ab pariatur eos dolorem reiciendis voluptatum reprehenderit similique.','Voluptatem est et eum illum.','Numquam ipsam repudiandae sed harum ipsum aut. Culpa aut perspiciatis ipsa odit est quisquam esse. Quia dignissimos eum enim sint iure maiores vel.','2003-11-24',88);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (89,'Fugit aut nobis occaecati numquam aut et. Fugiat fugiat quod quae reprehenderit. Reiciendis assumenda placeat suscipit rem facilis quaerat cum atque.','At ea porro exercitationem ea enim saepe.','Et quia quia molestiae aut sunt eligendi fugiat. Voluptates ducimus debitis earum veritatis quo soluta qui. Excepturi explicabo corrupti autem consequatur.','2006-08-29',89),
 (90,'Iusto laboriosam aut aut. Commodi nisi in qui ipsa perspiciatis voluptatem debitis. Minima in omnis consequatur rem quae.','Amet sed provident et.','Nihil esse fugit voluptas. Qui veniam dolor quis perspiciatis maxime porro. Enim eos quibusdam veniam neque sunt qui atque.','2017-04-17',90),
 (91,'Aut sed recusandae porro qui voluptas nesciunt officiis eos. Architecto cum dolores omnis ut. Veritatis id accusantium aut laborum excepturi soluta. Velit laborum sint voluptatem illo alias repellendus cum. Dolor laboriosam occaecati vero minus voluptate.','Maxime qui ut adipisci voluptatem.','Nemo laudantium tempora aperiam quasi praesentium beatae. Necessitatibus impedit ab accusamus aut. Asperiores hic nostrum quas iusto ipsam mollitia.','1975-08-31',91),
 (92,'Aspernatur ratione minima repudiandae incidunt adipisci voluptas. Tempora ratione ullam quia est sed earum iusto. Quo blanditiis eveniet laboriosam est odio aut.','Magni veritatis eveniet labore quam.','In earum repellendus non. Est et molestiae quia aut. Sit expedita et quia voluptatibus velit eius pariatur.','1997-01-30',92);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (93,'Qui ducimus a quis possimus quis impedit. Assumenda ut rerum itaque dolor rerum quia illo. Aut sunt ab omnis eligendi molestiae occaecati recusandae.','Est ad ullam dolore aut eveniet vel.','Rerum sed in inventore qui. Asperiores et dolores eveniet accusamus. Accusamus nulla ut est nulla quis dolor labore.','2000-01-22',93),
 (94,'Neque laudantium beatae aut inventore odio. Et magni aut aspernatur recusandae in expedita fugit. Ea velit sit sed autem voluptatem dolor rerum. Provident ut et accusantium soluta.','Omnis dolor similique velit.','Placeat velit quidem animi ut. Ex aperiam in fuga expedita. Eum eos et aliquam dolor consequuntur. Dolore velit temporibus et.','2003-07-16',94),
 (95,'Dolores recusandae modi id eaque beatae distinctio. Reprehenderit eum voluptatum quia et exercitationem. Sed asperiores facilis odio qui illo ut qui ullam. Aliquam in fuga exercitationem labore molestiae.','Suscipit commodi voluptatum ad nulla fugiat t','Suscipit nam nostrum omnis voluptatem iste sed. Aut quidem quae rerum fuga quo non molestiae. Aut corporis et ratione rerum ullam iusto ducimus eos.','2016-12-25',95),
 (96,'Ipsam aperiam et voluptas nulla. Quam suscipit quis ab similique sapiente. Quibusdam optio voluptatem ut alias. Sunt minima ea velit esse qui voluptatem.','Accusamus in sit asperiores optio consequatur','Quisquam et laudantium earum enim. Non culpa veniam et inventore. Non repellat odit quisquam et. Hic veniam sunt ut voluptas hic.','1987-02-07',96);
INSERT INTO `product_specification` (`idproduct_specification`,`detailed_description`,`product_model`,`product_features`,`released_on`,`product_idproduct`) VALUES 
 (97,'Ducimus commodi repellat qui temporibus maxime nostrum iure. Sint quae ut molestiae ducimus nemo odit autem. Sunt amet suscipit aperiam aperiam voluptas. Ad nulla autem esse fugit.','Nihil voluptatem et sit explicabo est soluta ','Reiciendis quibusdam animi rerum autem. Nihil alias deserunt consequatur neque. Error fugiat inventore voluptas nemo consequatur. Quo nostrum esse in tenetur.','1973-02-01',97),
 (98,'Nihil nam rerum quibusdam. Vero tempore repellendus iste rem ab modi aliquam veniam. Dolor incidunt numquam et deserunt dolore quia veniam. Ab ipsa et tempora iusto.','Eos tempore et laudantium.','Error et hic ad magnam aspernatur tenetur. Aut et odit libero et. Ut aspernatur ut qui consequatur dolores aliquid. Voluptatem maxime aut impedit quaerat voluptas sapiente eum.','1982-07-28',98),
 (99,'Praesentium laudantium soluta expedita nam dolores ipsam asperiores. Cumque adipisci accusantium ut maiores et et. Est et accusantium labore est alias ratione. Sit iste et sit alias.','Est est accusantium eum.','Qui non omnis eum molestiae voluptates facere sed. Iure sed consequatur ut molestias. Excepturi aut illo eaque distinctio sed earum. Ut doloribus eos omnis. Ut quibusdam modi nostrum error.','1993-08-13',99),
 (100,'Culpa quos nihil voluptas nobis aliquam culpa. Consequatur aut error repudiandae vel. Unde qui facere quo cumque at maiores necessitatibus cupiditate. Quaerat eaque numquam porro possimus consequatur.','Perspiciatis quaerat explicabo cumque laborio','Cum eos perferendis nemo doloremque. Vitae aspernatur illo minus magni. Modi voluptates perspiciatis nam dolores. Distinctio earum repellat quia ipsum.','1987-10-05',100);
/*!40000 ALTER TABLE `product_specification` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`product_sub_category`
--

DROP TABLE IF EXISTS `product_sub_category`;
CREATE TABLE `product_sub_category` (
  `idproduct_sub_category` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_category_idproduct_category` int(11) NOT NULL,
  PRIMARY KEY (`idproduct_sub_category`),
  KEY `fk_product_sub_category_product_category1_idx` (`product_category_idproduct_category`),
  CONSTRAINT `fk_product_sub_category_product_category1` FOREIGN KEY (`product_category_idproduct_category`) REFERENCES `product_category` (`idproduct_category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`product_sub_category`
--

/*!40000 ALTER TABLE `product_sub_category` DISABLE KEYS */;
INSERT INTO `product_sub_category` (`idproduct_sub_category`,`code`,`name`,`product_category_idproduct_category`) VALUES 
 (1,'340','deleniti',1),
 (2,'363','perspiciatis',2),
 (3,'661','ducimus',3),
 (4,'436','repellat',4),
 (5,'839','voluptatum',5),
 (6,'517','repellendus',6),
 (7,'530','vel',7),
 (8,'318','excepturi',8),
 (9,'245','ipsum',9),
 (10,'760','beatae',10),
 (11,'017','non',11),
 (12,'527','numquam',12),
 (13,'624','sed',13),
 (14,'834','et',14),
 (15,'592','est',15),
 (16,'474','vitae',16),
 (17,'147','voluptatem',17),
 (18,'913','eos',18),
 (19,'208','ea',19),
 (20,'844','est',20),
 (21,'209','error',1),
 (22,'907','velit',2),
 (23,'072','quia',3),
 (24,'583','neque',4),
 (25,'053','maiores',5),
 (26,'494','voluptate',6),
 (27,'488','et',7),
 (28,'432','accusamus',8),
 (29,'652','fuga',9),
 (30,'540','aut',10);
/*!40000 ALTER TABLE `product_sub_category` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `statustype` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`idstatus`,`statustype`,`description`) VALUES 
 (1,'deactive','user account not activated'),
 (2,'active','account activated'),
 (3,'suspended','account has been suspended');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `display_price` double NOT NULL,
  `discount` double DEFAULT NULL,
  PRIMARY KEY (`idstock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_account`
--

DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `iduser_account` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `status_idstatus` int(11) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `verification_code` varchar(45) NOT NULL,
  `user_profile_iduser_profile` int(11) NOT NULL,
  `user_role_iduser_role` int(11) NOT NULL,
  PRIMARY KEY (`iduser_account`),
  KEY `fk_user_account_status1` (`status_idstatus`),
  KEY `fk_user_account_user_profile1_idx` (`user_profile_iduser_profile`),
  KEY `fk_user_account_user_role1_idx` (`user_role_iduser_role`),
  CONSTRAINT `fk_user_account_status1` FOREIGN KEY (`status_idstatus`) REFERENCES `status` (`idstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_account_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_account_user_role1` FOREIGN KEY (`user_role_iduser_role`) REFERENCES `user_role` (`iduser_role`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_account`
--

/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` (`iduser_account`,`email`,`password`,`status`,`status_idstatus`,`is_verified`,`verification_code`,`user_profile_iduser_profile`,`user_role_iduser_role`) VALUES 
 (1,'navarathna.ashan@icloud.com','$2y$10$bWncaiJYE4l7vzkYUsXmE.Jkr7GMizgLzMnFsDNc9yxvQy3QxYdrO',2,2,1,'1234',1,3),
 (2,'navarathna.ashan@gmail.com','$2y$10$bWncaiJYE4l7vzkYUsXmE.Jkr7GMizgLzMnFsDNc9yxvQy3QxYdrO',2,2,1,'1234',2,1);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `iduser_address` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(45) NOT NULL,
  `line1` varchar(45) NOT NULL,
  `line2` varchar(45) NOT NULL,
  `line3` varchar(45) NOT NULL,
  `line4` varchar(45) DEFAULT NULL,
  `postalcode` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`iduser_address`),
  KEY `fk_user_address_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_user_address_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_address`
--

/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` (`iduser_address`,`no`,`line1`,`line2`,`line3`,`line4`,`postalcode`,`status`,`user_profile_iduser_profile`) VALUES 
 (1,'30','hettiyawatta','rideegama','kurunegala','srilanka','60600',2,2),
 (2,'4540850','aichiken','nagoyashi chikusaku imaike','1-6-2','dai 64 purosupa biru 3-d','4540850',2,1);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_interface`
--

DROP TABLE IF EXISTS `user_interface`;
CREATE TABLE `user_interface` (
  `iduser_interface` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `inf_code` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`iduser_interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_interface`
--

/*!40000 ALTER TABLE `user_interface` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interface` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `iduser_profile` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL COMMENT '		',
  `dob` date NOT NULL,
  `gender_idgender` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser_profile`),
  KEY `fk_user_gender1` (`gender_idgender`),
  CONSTRAINT `fk_user_gender1` FOREIGN KEY (`gender_idgender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_profile`
--

/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`iduser_profile`,`fname`,`lname`,`dob`,`gender_idgender`,`created_at`) VALUES 
 (1,'ashan','navarathna','1993-03-06',1,'2020-10-28 00:00:00'),
 (2,'rajitha','navarathna','1993-03-06',1,'2020-10-28 00:00:00');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_profile_image`
--

DROP TABLE IF EXISTS `user_profile_image`;
CREATE TABLE `user_profile_image` (
  `iduser_profile_image` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(70) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_profile_iduser_profile` int(11) NOT NULL,
  PRIMARY KEY (`iduser_profile_image`),
  KEY `fk_user_profile_image_user_profile1_idx` (`user_profile_iduser_profile`),
  CONSTRAINT `fk_user_profile_image_user_profile1` FOREIGN KEY (`user_profile_iduser_profile`) REFERENCES `user_profile` (`iduser_profile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_profile_image`
--

/*!40000 ALTER TABLE `user_profile_image` DISABLE KEYS */;
INSERT INTO `user_profile_image` (`iduser_profile_image`,`image_id`,`is_current`,`created_at`,`user_profile_iduser_profile`) VALUES 
 (1,'24f8ea5adc1661d7a7ec9822ab67bc534e2f7a21583a75798481541c00513db8.jpg',1,'2021-02-24 11:02:20',1);
/*!40000 ALTER TABLE `user_profile_image` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `iduser_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  `role_order` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_role`
--

/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`iduser_role`,`role`,`role_order`) VALUES 
 (1,'user','1'),
 (2,'admin','2'),
 (3,'superadmin','3');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;


--
-- Table structure for table `onlineshop`.`user_role_has_user_interfaces`
--

DROP TABLE IF EXISTS `user_role_has_user_interfaces`;
CREATE TABLE `user_role_has_user_interfaces` (
  `iduser_role_has_user_interfaces` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `user_interface_iduser_interface` int(11) NOT NULL,
  `user_role_iduser_role` int(11) NOT NULL,
  PRIMARY KEY (`iduser_role_has_user_interfaces`),
  KEY `fk_user_role_has_user_interfaces_user_interface1` (`user_interface_iduser_interface`),
  KEY `fk_user_role_has_user_interfaces_user_role1` (`user_role_iduser_role`),
  CONSTRAINT `fk_user_role_has_user_interfaces_user_interface1` FOREIGN KEY (`user_interface_iduser_interface`) REFERENCES `user_interface` (`iduser_interface`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_role_has_user_interfaces_user_role1` FOREIGN KEY (`user_role_iduser_role`) REFERENCES `user_role` (`iduser_role`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineshop`.`user_role_has_user_interfaces`
--

/*!40000 ALTER TABLE `user_role_has_user_interfaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role_has_user_interfaces` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
