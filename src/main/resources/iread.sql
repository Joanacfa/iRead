/*
Navicat MySQL Data Transfer

Source Server         : iread
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : iread

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-03 17:41:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commento_tabella
-- ----------------------------
DROP TABLE IF EXISTS `commento_tabella`;
CREATE TABLE `commento_tabella` (
  `commento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commento_descrizione` varchar(255) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `utente_id` int(11) NOT NULL,
  PRIMARY KEY (`commento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commento_tabella
-- ----------------------------

-- ----------------------------
-- Table structure for genere_tabella
-- ----------------------------
DROP TABLE IF EXISTS `genere_tabella`;
CREATE TABLE `genere_tabella` (
  `genere_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `genere_nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genere_tabella
-- ----------------------------
INSERT INTO `genere_tabella` VALUES ('1', 'Narrativa');
INSERT INTO `genere_tabella` VALUES ('2', 'Gialli');
INSERT INTO `genere_tabella` VALUES ('3', 'Fantasy e fantascienza');
INSERT INTO `genere_tabella` VALUES ('4', 'Storia e archeologia');
INSERT INTO `genere_tabella` VALUES ('5', 'Filosofia');
INSERT INTO `genere_tabella` VALUES ('6', 'Arte');
INSERT INTO `genere_tabella` VALUES ('7', 'Scienze');
INSERT INTO `genere_tabella` VALUES ('8', 'Biografie');
INSERT INTO `genere_tabella` VALUES ('9', 'Casa e cucina');
INSERT INTO `genere_tabella` VALUES ('10', 'Fumetti');

-- ----------------------------
-- Table structure for libro_tabella
-- ----------------------------
DROP TABLE IF EXISTS `libro_tabella`;
CREATE TABLE `libro_tabella` (
  `libro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `libro_autore` varchar(255) DEFAULT NULL,
  `libro_descrizione` varchar(255) DEFAULT NULL,
  `genere_id` bigint(20) NOT NULL,
  `libro_isbn` varchar(255) DEFAULT NULL,
  `libro_prezzo` float DEFAULT NULL,
  `libro_quanttita_disponibile` int(11) DEFAULT NULL,
  `libro_titolo` varchar(255) DEFAULT NULL,
  `libro_fotoback` varchar(255) DEFAULT NULL,
  `libro_fotofront` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`libro_id`),
  KEY `FK_god21kf60w8yqxpoeue6sgysb` (`genere_id`),
  CONSTRAINT `FK_god21kf60w8yqxpoeue6sgysb` FOREIGN KEY (`genere_id`) REFERENCES `genere_tabella` (`genere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of libro_tabella
-- ----------------------------
INSERT INTO `libro_tabella` VALUES ('1', 'Franz Kafka', 'Un libro magnifico', '1', '126', '12', '55', 'Il castello', 'http://localhost:8080/img/castello_back.jpg', 'http://localhost:8080/img/castello_front.jpg');
INSERT INTO `libro_tabella` VALUES ('2', 'Arthur Schnitzler', 'Doppio Sogno', '2', '321', '7', '2', 'Doppio Sogno', 'http://localhost:8080/img/doppio-sogno_back.jpg', 'http://localhost:8080/img/doppio-sogno_front.jpg');
INSERT INTO `libro_tabella` VALUES ('3', 'Fiodor Dostojevskij', 'Libro 3', '1', '77', '22', '50', 'I fratelli Karamazov', 'http://localhost:8080/img/fratelli_back.jpg', 'http://localhost:8080/img/fratelli_front.jpg');
INSERT INTO `libro_tabella` VALUES ('5', 'Stefan Zweig', 'kk', '1', '87', '7', '0', 'Mendel dei libri', 'http://localhost:8080/img/zw_back.jpg', 'http://localhost:8080/img/zw_front.jpg');
INSERT INTO `libro_tabella` VALUES ('6', 'Arthur Conan Doyle', 'Tutto', '2', '5555', '15', '0', 'Tutto Sherlock Holmes', 'http://localhost:8080/img/sh-h1_back.png', 'http://localhost:8080/img/sh-h1_front.jpg');
INSERT INTO `libro_tabella` VALUES ('7', 'Douglas Adams', '', '3', '444', '13', '0', 'Guida galattica per gli autostoppisti', 'http://localhost:8080/img/ga_back.jpg', 'http://localhost:8080/img/ga_front.jpg');
INSERT INTO `libro_tabella` VALUES ('8', 'Lev Tolstoj', 'kms', '1', '33', '51.01', '0', 'Guerra e Pace', 'http://localhost:8080/img/lvgp_back.jpg', 'http://localhost:8080/img/lvgp_front.jpg');

-- ----------------------------
-- Table structure for ordine_tabella
-- ----------------------------
DROP TABLE IF EXISTS `ordine_tabella`;
CREATE TABLE `ordine_tabella` (
  `ordine_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_author` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `libro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ordine_id`),
  KEY `FK_86ayb5b97rxwr2kynmisiuywo` (`libro_id`),
  CONSTRAINT `FK_86ayb5b97rxwr2kynmisiuywo` FOREIGN KEY (`libro_id`) REFERENCES `libro_tabella` (`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordine_tabella
-- ----------------------------

-- ----------------------------
-- Table structure for post_tabella
-- ----------------------------
DROP TABLE IF EXISTS `post_tabella`;
CREATE TABLE `post_tabella` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_descrizione` varchar(255) DEFAULT NULL,
  `post_libro` varchar(255) DEFAULT NULL,
  `post_titolo` varchar(255) DEFAULT NULL,
  `utente_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_tabella
-- ----------------------------

-- ----------------------------
-- Table structure for ruolo_tabella
-- ----------------------------
DROP TABLE IF EXISTS `ruolo_tabella`;
CREATE TABLE `ruolo_tabella` (
  `ruolo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruolo_nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruolo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ruolo_tabella
-- ----------------------------

-- ----------------------------
-- Table structure for utente_tabella
-- ----------------------------
DROP TABLE IF EXISTS `utente_tabella`;
CREATE TABLE `utente_tabella` (
  `dtype` varchar(31) NOT NULL,
  `id_utente` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ruolo_id` varchar(255) DEFAULT NULL,
  `consumatore_citta` varchar(255) DEFAULT NULL,
  `cosumatore_indirizzo` varchar(255) DEFAULT NULL,
  `consumatore_phone` varchar(255) DEFAULT NULL,
  `sugg_personalizzata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utente_tabella
-- ----------------------------
INSERT INTO `utente_tabella` VALUES ('Utente', '1', 'joana', 'joana', 'cf', '1', null, null, null, null);
