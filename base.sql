/*
SQLyog Ultimate v8.61 
MySQL - 5.5.16 : Database - phpstormpreguntas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`phpstormpreguntas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `phpstormpreguntas`;

/*Table structure for table `calificacion` */

DROP TABLE IF EXISTS `calificacion`;

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `calificacion` varchar(100) DEFAULT NULL,
  `respuestas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calificacion` */

/*Table structure for table `cuestionario` */

DROP TABLE IF EXISTS `cuestionario`;

CREATE TABLE `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL,
  `respuesta2` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `cuestionario` */

insert  into `cuestionario`(`id`,`pregunta`,`respuesta`,`respuesta2`) values (1,'There are ________ people who prefer to work part-time.','a lot of',0),(2,'We don\'t have ________ time to listen to your arguments.','much',0),(3,'You need ________ time to finish your homework.','a lot of',0),(4,'Look at the sky! You can see ________ birds flying southwards.','a lot of',0),(5,'Have you received ________ letters from your friend?','many',0),(6,'In the morning you can see ________ people running to the beach.','a lot of',0),(7,'I can see that you have ________ interest in helping me.','little',0),(8,'He found ________ support in his family when he got divorced.','little',0),(9,'There were ________ foreigners in that village last summer?','many',1),(10,'I am very busy; I have ________ things to do.','a lot of',0),(11,'Mark is not a millionaire. I am sure he doesn\'t have ________ money.','much',1),(12,'I put a ________ bit of sugar in my coffee because I don\'t like it very sweet.','little',0),(13,'Peter has a stomach ache and that is because he ate ________ biscuits.	','a lot of',0),(14,'He didn\'t have ________ luck. He lost all his money in the casino.','much',1),(15,'It is a very small car park; it allows ________ cars.','few',0),(16,'We haven\'t had ________ rain during this year.','much',1),(17,'He made ________ effort to win the race.','little',0),(18,'I have ________ books of the Second World War.','a lot of',0),(19,'Martin doesn\'t eat ________ Martin doesn\'t eat.','much',1),(20,'Do you have ________ friends in England?','many',1),(21,'He was very furious and said ________ nonsense.','a lot of',0),(22,'After ________ attempts he could cross the river.','a lot of',0);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(200) DEFAULT NULL,
  `Contrasena` varchar(200) DEFAULT NULL,
  `Calificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`Id`,`User`,`Contrasena`,`Calificacion`) values (1,'Eder','123','5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
