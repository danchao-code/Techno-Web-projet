
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image_src` varchar(100) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
INSERT INTO `article` VALUES (1,'Green T-shirt','images/greenTshirt.jpeg',1),(2,'Black shoes','images/blackShoes.jpeg',3),(3,'Green pants','images/greenPants.jpeg',2),(4,'yellow T-shirt','images/yellowTshirt.jpeg',1),(5,'Blue pants','images/bluePants.jpeg',2),(6,'Blue shoes','images/blueShoes.jpeg',3);

DROP TABLE IF EXISTS `basket`;
CREATE TABLE `basket` (
  `id_basket` int(11) NOT NULL AUTO_INCREMENT,
  `etat` varchar(20) DEFAULT NULL, --basket ou order
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_basket`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `basket_line`;
CREATE TABLE `basket_line` (
  `id_basket_line` int(11) NOT NULL AUTO_INCREMENT,
  `id_basket` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_basket_line`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `category` VALUES (1,'T-shirt'),(2,'Pants'),(3,'Shoes');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `user` VALUES (1,'admin','admin','admin');
