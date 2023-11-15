/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - wholesale
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wholesale` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wholesale`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT NULL,
  `brand_desc` varchar(100) DEFAULT NULL,
  `brand_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `brand` */

insert  into `brand`(`brand_id`,`brand_name`,`brand_desc`,`brand_status`) values 
(1,'Sunfeast','sunfeast','1'),
(2,'Aashirvaad','Aashirvaad','1'),
(3,'Fiama','soap products company','1'),
(4,'Engage','for fragrance','1'),
(5,'Vivel','soap products company','1'),
(6,'Yipee','yummy noodles','1'),
(7,'B naturals','juice items','1');

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(100) DEFAULT NULL,
  `card_name` varchar(100) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `card` */

insert  into `card`(`card_id`,`customer_id`,`card_no`,`card_name`,`expiry_date`) values 
(1,1,'2104321342345678','adhilakhan','2023-12'),
(2,1,'1234567891234567','adhilakhan','2023-12');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `category_description` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_name`,`category_description`,`status`) values 
(1,'Food Items','food items','1'),
(2,'Fragrance items','fragrance','1'),
(4,'Soap products','used for bathing and cleaning','1'),
(5,'Stationery items','pen,book,etc','1');

/*Table structure for table `color` */

DROP TABLE IF EXISTS `color`;

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(100) DEFAULT NULL,
  `color_desc` varchar(100) DEFAULT NULL,
  `color_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `color` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `courier` */

DROP TABLE IF EXISTS `courier`;

CREATE TABLE `courier` (
  `courier_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `courier_name` varchar(100) DEFAULT NULL,
  `courier_street` varchar(100) DEFAULT NULL,
  `courier_dist` varchar(100) DEFAULT NULL,
  `courier_state` varchar(100) DEFAULT NULL,
  `courier_pincode` varchar(100) DEFAULT NULL,
  `courier_phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `courier` */

insert  into `courier`(`courier_id`,`staff_id`,`username`,`courier_name`,`courier_street`,`courier_dist`,`courier_state`,`courier_pincode`,`courier_phone`) values 
(1,0,'razeena@gmail.com','biju','chalakudy','thrissur','kerala','680307','7736105684');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `customer_fname` varchar(100) DEFAULT NULL,
  `customer_lname` varchar(100) DEFAULT NULL,
  `customer_houser_name` varchar(100) DEFAULT NULL,
  `customer_street` varchar(100) DEFAULT NULL,
  `customer_dist` varchar(100) DEFAULT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_pincode` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(100) DEFAULT NULL,
  `customer_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`username`,`customer_fname`,`customer_lname`,`customer_houser_name`,`customer_street`,`customer_dist`,`customer_state`,`customer_pincode`,`customer_phone`,`customer_status`) values 
(1,'sulthana@gmail.com','Sulthanabakery','Ayub khan','pvt stand building','perumbavoor','ernakulam','kerala','688707','9988776655',1),
(2,'mmm1@gmail.com','mmm bakers','midhun','K K Building','aluva','ernakulam','kerala','680307','8899776677',1);

/*Table structure for table `delivery` */

DROP TABLE IF EXISTS `delivery`;

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `delivery_date` varchar(100) DEFAULT NULL,
  `status` varchar(41) DEFAULT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `delivery` */

insert  into `delivery`(`delivery_id`,`order_master_id`,`courier_id`,`delivery_date`,`status`) values 
(1,1,1,'2023-04-17','Delivered'),
(2,2,1,'2023-04-24','Delivered'),
(3,5,1,'2023-04-24','Delivered'),
(4,7,1,'2023-04-25','Delivered');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`user_type`,`status`) values 
('admin@gmail.com','admin','admin','1'),
('razi@gmail.com','razi','customer','1'),
('raz@gmail.com','raz','customer','1'),
('bb@gmail.com','bib','customer','1'),
('mm@gmail.com','mariya','customer','1'),
('kk@gmail.com','kk','customer','1'),
('hi@gmail.com','hello','customer','1'),
('ramla@gmail.com','ramla','staff','1'),
('sreya@gmail.com','sreya','staff','0'),
('itcc@gmail.com','itcc','vendor','1'),
('adhila@gmail.com','adhila','staff','1'),
('razeena@gmail.com','razeena','courier','1'),
('sulthana@gmail.com','sulthana','customer','1'),
('mmm@gmail.com','mmm','customer','1'),
('mmm1@gmail.com','mmm1','customer','1'),
('rithu@gmail.com','rithu','staff','1');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `total_price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

insert  into `order_details`(`order_details_id`,`order_master_id`,`product_id`,`quantity`,`total_price`) values 
(1,1,14,'10','210'),
(2,2,14,'25','525'),
(3,2,15,'6','690'),
(4,2,16,'2','230'),
(5,3,14,'2','42'),
(6,3,15,'7','805'),
(7,3,16,'1','115'),
(8,4,14,'1','21'),
(9,5,14,'4','84'),
(10,6,19,'10','370'),
(11,7,21,'20','380'),
(12,8,19,'30','1110'),
(13,9,21,'20','380'),
(14,10,15,'5','575'),
(15,10,21,'10','190');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_master_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `order_master` */

insert  into `order_master`(`order_master_id`,`customer_id`,`total_amount`,`date`,`order_status`) values 
(1,1,'210','2023-04-17','Delivered'),
(2,1,'1445','2023-04-23','Delivered'),
(3,1,'962','2023-04-24','cashondelivery'),
(4,2,'21','2023-04-24','cashondelivery'),
(5,1,'84','2023-04-24','Delivered'),
(6,1,'370','2023-04-24','Paid'),
(7,1,'380','2023-04-24','Delivered'),
(8,2,'1110','2023-04-24','cashondelivery'),
(9,1,'380','2023-04-25','Paid'),
(10,1,'765','2023-04-25','Paid');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL,
  `order_master_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`card_id`,`order_master_id`,`amount`,`date`) values 
(1,2,1,'210','2023-04-17'),
(2,1,2,'1445','2023-04-24'),
(3,2,5,'84','2023-04-24'),
(4,1,6,'370','2023-04-24'),
(5,1,7,'380','2023-04-24'),
(6,2,9,'380','2023-04-25'),
(7,2,10,'765','2023-04-25');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_description` varchar(100) DEFAULT NULL,
  `product_image` varchar(1000) DEFAULT NULL,
  `pro_per` varchar(10) NOT NULL,
  `product_exp` date DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `product_status` varchar(1) DEFAULT NULL,
  `rate` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`product_id`,`subcategory_id`,`color_id`,`brand_id`,`product_name`,`product_description`,`product_image`,`pro_per`,`product_exp`,`stock`,`product_status`,`rate`) values 
(21,3,0,5,'Vivel soap','soap for bath and other use','static/images586a5be3-59bd-4386-884a-47381248c0c3vivel.jpg','20','2023-04-29','0','1',19),
(20,6,0,4,'Engage Perfume for women',' women perfume','static/imagesd0c1a898-fd2a-4a1c-8231-a54514df5b4aspray.jpg','40','2023-04-29','40','1',140),
(19,5,0,7,'B naturals apple juice','juice containg apple extract','static/imagesd8832e49-7143-4605-a6d5-250c32f909aebnaturals.jpg','50','2023-04-29','30','1',37),
(18,4,0,6,'Yipee noodles','instant noodles','static/imagesafc0c84c-482a-4586-90f4-cef3b0d8ff82yipee.jpg','50','2023-04-29','10','1',30),
(17,3,0,3,'Fiama gel bar peach&avacado','soothe the skin and revitalise the mind','static/images77e733d9-b393-4dd3-9d7e-eac1d03b92df71eZETNboHL._SL1200_.jpg','30','2023-12-17','50','1',39),
(16,2,0,2,'Ashirvaad  Aatta','Multigrain atta consists of a mixture of wheat, soya, oats, maize, chana dal, and more. ','static/imagesf6eb6773-528e-41fd-bbf2-cafcece366b991o0m2iIpVL._SL1500_.jpg','65','2023-11-17','8','1',115),
(15,2,0,2,'Ashirvaad MultiGrain Aatta','Multigrain atta consists of a mixture of wheat, soya, oats, maize, chana dal, and more. ','static/imagesd6849aaa-e792-49ef-aadb-475188d2edeb911CWc+vSrL._SX522_.jpg','65','2023-07-17','89','1',115),
(14,1,1,1,'Sunfeast bounce elaichi 3','biscuit contains  elaichi flavour cream','static/images3294413f-95e4-415d-be82-dd6c620d9d1481l8fPoGlWL._SL1500_.jpg','20','2023-04-28','461','1',21);

/*Table structure for table `purchase_child` */

DROP TABLE IF EXISTS `purchase_child`;

CREATE TABLE `purchase_child` (
  `purchase_child_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_master_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cost_price` varchar(100) DEFAULT NULL,
  `selling_price` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `pc_status` varchar(20) NOT NULL,
  PRIMARY KEY (`purchase_child_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_child` */

insert  into `purchase_child`(`purchase_child_id`,`purchase_master_id`,`product_id`,`cost_price`,`selling_price`,`quantity`,`pc_status`) values 
(1,1,14,'18','21','500','stock added'),
(2,2,14,'25','30','100','available'),
(3,3,14,'25','30','50','available'),
(4,4,15,'70','115','100','stock added'),
(5,5,16,'70','115','10','stock added'),
(6,6,15,'70','115','10','available'),
(7,7,14,'25','30','40','available'),
(8,8,16,'70','115','2','available'),
(9,9,18,'20','30','10','stock added'),
(10,10,21,'16','19','50','stock added'),
(11,10,17,'30','39','50','stock added'),
(12,10,20,'100','140','40','stock added'),
(13,10,19,'25','37','40','stock added');

/*Table structure for table `purchase_master` */

DROP TABLE IF EXISTS `purchase_master`;

CREATE TABLE `purchase_master` (
  `purchase_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`purchase_master_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_master` */

insert  into `purchase_master`(`purchase_master_id`,`vendor_id`,`staff_id`,`total`,`status`) values 
(1,7,0,'9000','paid'),
(2,8,0,'2500','paid'),
(3,8,0,'1250','paid'),
(4,8,0,'7000','paid'),
(7,8,0,'1000','paid'),
(5,8,0,'700','paid'),
(6,8,0,'700','paid'),
(8,8,0,'140','paid'),
(9,8,0,'200','paid'),
(10,8,0,'7300','paid');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `staff_fname` varchar(100) DEFAULT NULL,
  `staff_lname` varchar(100) DEFAULT NULL,
  `staff_gender` varchar(100) DEFAULT NULL,
  `staff_dob` varchar(100) DEFAULT NULL,
  `staff_house_name` varchar(100) DEFAULT NULL,
  `staff_street` varchar(100) DEFAULT NULL,
  `staff_dist` varchar(100) DEFAULT NULL,
  `staff_state` varchar(100) DEFAULT NULL,
  `staff_pincode` varchar(100) DEFAULT NULL,
  `staff_phone` varchar(100) DEFAULT NULL,
  `staff_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`username`,`staff_fname`,`staff_lname`,`staff_gender`,`staff_dob`,`staff_house_name`,`staff_street`,`staff_dist`,`staff_state`,`staff_pincode`,`staff_phone`,`staff_status`) values 
(7,'sreya@gmail.com','sreya','jayeesha','female','1989-12-13','sreyahouse','sree nagar','malappuram','Kerala','680976','5678945678',0),
(12,'rithu@gmail.com','Rithu','nandhana','female','1995-07-12','nedumthazhath','chalakudy','thrissur','kerala','680307','8606654668',1),
(11,'ramla@gmail.com','ramla','n s','female','1993-12-10','nedumthazhath','chalakudy','thrissur','kerala','680307','8606654668',1),
(10,'adhila@gmail.com','adhila ','khan','female','2023-04-15','velamparambil house','kochukadavu','thrissur','kerala','680734','9446074940',1);

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) DEFAULT NULL,
  `subcategory_description` varchar(100) DEFAULT NULL,
  `sub_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`subcategory_id`,`category_id`,`subcategory_name`,`subcategory_description`,`sub_status`) values 
(1,1,'Biscuits','various types of biscuits','1'),
(2,1,'Atta','Multigrain atta consists of a mixture of wheat, soya, oats, maize, chana dal, and more. ','1'),
(3,4,'Soap',' natural components soap','1'),
(4,1,'Noodles','food','1'),
(5,1,'Juice','drink','1'),
(6,2,'Perfume','for fragrance','1');

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_phone` varchar(100) DEFAULT NULL,
  `vendor_email` varchar(100) DEFAULT NULL,
  `vendor_hno` varchar(100) DEFAULT NULL,
  `vendor_street` varchar(100) DEFAULT NULL,
  `vendor_dist` varchar(100) DEFAULT NULL,
  `vendor_pin` varchar(100) DEFAULT NULL,
  `vendor_date` varchar(100) DEFAULT NULL,
  `vendor_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `vendor` */

insert  into `vendor`(`vendor_id`,`username`,`staff_id`,`vendor_name`,`vendor_phone`,`vendor_email`,`vendor_hno`,`vendor_street`,`vendor_dist`,`vendor_pin`,`vendor_date`,`vendor_status`) values 
(1,NULL,0,'GLOWEL COSMETICS','9876235644','glowel@gmail.com','glowel pvt','seoul','malappuram','789026','2023-02-24','1'),
(7,NULL,0,'ITC coimbatore','9988776655','itc@gmail.com','coimbatore pvm','coimbatore street','coimbatore','688707','2023-04-21','1'),
(8,'itcc@gmail.com',0,'ITCC ','8877665544','itcc@gmail.com','coimbatore pvm','coimbatore street','coimbatore','688707','2023-04-26','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
