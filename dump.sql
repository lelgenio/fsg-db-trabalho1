-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Linux (x86_64)
--
-- Host: 34.95.201.6    Database: DB_RECURSOSHUMANOS
-- ------------------------------------------------------
-- Server version	5.7.25-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DEPARTAMENTOS`
--

DROP TABLE IF EXISTS `DEPARTAMENTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTAMENTOS` (
  `DEPARTAMENTO_ID` int(11) NOT NULL,
  `DEPARTAMENTO_NOME` varchar(45) DEFAULT NULL,
  `GERENTE_ID` int(11) DEFAULT NULL,
  `LOCAL_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEPARTAMENTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTAMENTOS`
--

LOCK TABLES `DEPARTAMENTOS` WRITE;
/*!40000 ALTER TABLE `DEPARTAMENTOS` DISABLE KEYS */;
INSERT INTO `DEPARTAMENTOS` VALUES (10,'Administração',200,1700),(20,'Marketing',201,1800),(30,'Compras',114,1700),(40,'Recursos Humanos',203,2400),(50,'Expedição',121,1500),(60,'TI',103,1400),(70,'Relações Publicas',204,2700),(80,'Comercial',145,2500),(90,'Executivo',100,1700),(100,'Financeiro',108,1700),(110,'Controladoria',205,1700),(120,'Tesouraria',NULL,1700),(130,'Fiscal',NULL,1700),(140,'Credito',NULL,1700),(150,'Serviços de Acionista',NULL,1700),(160,'Beneficios',NULL,1700),(170,'Manufatura',NULL,1700),(180,'Construção',NULL,1700),(190,'Contratação',NULL,1700),(200,'Operação',NULL,1700),(210,'Suport de TI',NULL,1700),(220,'NOC',NULL,1700),(230,'TI Helpdesk',NULL,1700),(240,'Comercial/Governo',NULL,1700),(250,'Comercial/Cliente Final',NULL,1700),(260,'Recrutamento',NULL,1700),(270,'Pagamento',NULL,1700);
/*!40000 ALTER TABLE `DEPARTAMENTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPREGADOS`
--

DROP TABLE IF EXISTS `EMPREGADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPREGADOS` (
  `EMPREGADO_ID` int(11) NOT NULL,
  `PRIMEIRO_NOME` varchar(45) DEFAULT NULL,
  `ULTIMO_NOME` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `TELEFONE` varchar(45) DEFAULT NULL,
  `DATA_CONTRATACAO` date DEFAULT NULL,
  `FUNCAO_ID` varchar(45) DEFAULT NULL,
  `SALARIO` double DEFAULT NULL,
  `PCT_COMISSAO` double DEFAULT NULL,
  `GERENTE_ID` int(11) DEFAULT NULL,
  `DEPARTAMENTO_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPREGADO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPREGADOS`
--

LOCK TABLES `EMPREGADOS` WRITE;
/*!40000 ALTER TABLE `EMPREGADOS` DISABLE KEYS */;
INSERT INTO `EMPREGADOS` VALUES (100,'Marcelo','Costa','MCOSTA','515.123.4567','2003-06-17','AD_PRES',24000,NULL,NULL,90),(101,'Marcos','Leal','MLEAL','515.123.4568','2005-09-21','AD_VP',17000,NULL,100,90),(102,'Alexandre','Lorenzo','ALORENZO','515.123.4569','2001-01-13','AD_VP',17000,NULL,100,90),(103,'Mauro','Andre','MANDRE','590.423.4567','2006-01-03','IT_PROG',9000,NULL,102,60),(104,'Fulvio','Bianco','FBIANCO','590.423.4568','2007-05-21','IT_PROG',6000,NULL,103,60),(105,'Lio','Austin','LAUSTIN','590.423.4569','2005-06-25','IT_PROG',4800,NULL,103,60),(106,'Valeria','Pataballa','VPATABALLA','590.423.4560','2006-05-05','IT_PROG',4800,NULL,103,60),(107,'Diana','Lorentz','DLORENTZ','590.423.5567','2007-02-07','IT_PROG',4200,NULL,103,60),(108,'Nancy','Marquez','NMARQUEZ','515.124.4569','2002-08-17','FI_MGR',2000,NULL,101,100),(109,'Daniel','Faviet','DFAVIET','515.124.4169','2002-08-16','FI_ACCOUNT',9000,NULL,108,100),(110,'John','Chen','JCHEN','515.124.4269','2005-09-28','FI_ACCOUNT',8200,NULL,108,100),(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','2005-09-30','FI_ACCOUNT',7700,NULL,108,100),(112,'Jose','Urman','JURMAN','515.124.4469','2006-03-07','FI_ACCOUNT',7800,NULL,108,100),(113,'Luis','Popp','LPOPP','515.124.4567','2007-07-07','FI_ACCOUNT',6900,NULL,108,100),(114,'Denilson','Razoul','DRAZOUL','515.127.4561','2002-12-07','PU_MAN',11000,NULL,100,30),(115,'Alexandre','Ferraz','Ferraz','515.127.4562','2003-05-18','PU_CLERK',3100,NULL,114,30),(116,'Sheila','Baida','SBAIDA','515.127.4563','2005-12-24','PU_CLERK',2900,NULL,114,30),(117,'Sonia','Tobias','STOBIAS','515.127.4564','2005-07-24','PU_CLERK',2800,NULL,114,30),(118,'Gustavo','Himuro','GHIMURO','515.127.4565','2006-11-15','PU_CLERK',2600,NULL,114,30),(119,'Karen','Colmenares','KCOLMENA','515.127.4566','2007-08-10','PU_CLERK',2500,NULL,114,30),(120,'Mateus','Weiss','MWEISS','650.123.1234','2004-07-18','ST_MAN',8000,NULL,100,50),(121,'Adao','Fripp','AFRIPP','650.123.2234','2005-04-10','ST_MAN',8200,NULL,100,50),(122,'Paulo','Kaufling','PKAUFLIN','650.123.3234','2003-05-01','ST_MAN',7900,NULL,100,50),(123,'Sara','Vollman','SVOLLMAN','650.123.4234','2005-10-10','ST_MAN',6500,NULL,100,50),(124,'Kevin','Mourgos','KMOURGOS','650.123.5234','2007-11-16','ST_MAN',5800,NULL,100,50),(125,'Julia','Nayer','JNAYER','650.124.1214','2020-05-27','ST_CLERK',3200,NULL,120,50),(126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','2006-09-28','ST_CLERK',2700,NULL,120,50),(127,'James','Landry','JLANDRY','650.124.1334','2020-05-27','ST_CLERK',2400,NULL,120,50),(128,'Steven','Markle','SMARKLE','650.124.1434','2020-05-27','ST_CLERK',2200,NULL,120,50),(129,'Laura','Bissot','LBISSOT','650.124.5234','2005-08-20','ST_CLERK',3300,NULL,121,50),(130,'Moises','Atkinson','MATKINSO','650.124.6234','2005-10-30','ST_CLERK',2800,NULL,121,50),(131,'James','Marlow','JAMRLOW','650.124.7234','2005-02-16','ST_CLERK',2500,NULL,121,50),(132,'Tiago','Olson','TJOLSON','650.124.8234','2007-04-10','ST_CLERK',2100,NULL,121,50),(133,'Jason','Mallin','JMALLIN','650.127.1934','2004-06-14','ST_CLERK',3300,NULL,122,50),(134,'Michael','Rogers','MROGERS','650.127.1834','2006-08-26','ST_CLERK',2900,NULL,122,50),(135,'Kevin','Gee','KGEE','650.127.1734','2007-12-12','ST_CLERK',2400,NULL,122,50),(136,'Artur','Philtanker','APHILTAN','650.127.1634','2008-02-06','ST_CLERK',2200,NULL,122,50),(137,'Rodrigo','Ladwig','RLADWIG','650.121.1234','2003-07-14','ST_CLERK',3600,NULL,123,50),(138,'Sara','Stiles','SSTILES','650.121.2034','2005-10-26','ST_CLERK',3200,NULL,123,50),(139,'John','Seo','JSEO','650.121.2019','2005-10-26','ST_CLERK',2700,NULL,123,50),(140,'José','Patel','JPATEL','650.121.1834','2006-04-06','ST_CLERK',2500,NULL,123,50),(141,'Tonia','Rajs','TRAJS','650.121.8009','2003-10-17','ST_CLERK',3500,NULL,124,50),(142,'Carlos','Davies','CDAVIES','650.121.2994','2005-01-29','ST_CLERK',3100,NULL,124,50),(143,'Rodrigo','Matos','RMATOS','650.121.2874','2020-05-27','ST_CLERK',2600,NULL,124,50),(144,'Peter','Vargas','PVARGAS','650.121.2004','2006-07-09','ST_CLERK',2500,NULL,124,50),(145,'John','Russell','JRUSSEL','011.44.1344.429268','2004-10-01','SA_MAN',14000,0.4,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467268','2005-05-05','SA_MAN',13500,0.3,100,80),(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','2005-03-10','SA_MAN',1000,0.3,100,80),(148,'Geraldo','Cambrault','GCAMBRAU','011.44.1344.619268','2007-10-15','SA_MAN',11000,0.3,100,80),(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2008-01-29','SA_MAN',10500,0.2,100,80),(150,'Peter','Tucker','PTUCKER','011.44.1344.129268','2005-01-30','SA_REP',10000,0.3,145,80),(151,'David','Bernstein','DBERNSTE','011.44.1344.345268','2005-03-24','SA_REP',9500,0.25,145,80),(152,'Peter','Hall','PHALL','011.44.1344.478968','2005-08-20','SA_REP',9000,0.25,145,80),(153,'Christopher','Olsen','COLSEN','011.44.1344.498718','2006-03-30','SA_REP',8000,0.2,145,80),(154,'Noeli','Cambrault','NCAMBRAU','011.44.1344.987668','2006-12-09','SA_REP',7500,0.2,145,80),(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','2007-11-23','SA_REP',7000,0.15,145,80),(156,'Janete','King','JKING','011.44.1345.429268','2004-01-30','SA_REP',10000,0.35,146,80),(157,'Patrick','Sully','PSULLY','011.44.1345.929268','2004-03-04','SA_REP',9500,0.35,146,80),(158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','2004-08-01','SA_REP',9000,0.35,146,80),(159,'Lindsey','Smith','LSMITH','011.44.1345.729268','2005-03-10','SA_REP',8000,0.3,146,80),(160,'Louise','Doran','LDORAN','011.44.1345.629268','2005-12-15','SA_REP',7500,0.3,146,80),(161,'Sara','Sewall','SSEWALL','011.44.1345.529268','2006-11-03','SA_REP',7000,0.25,146,80),(162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','2005-11-11','SA_REP',10500,0.25,147,80),(163,'Danielle','Greene','DGREENE','011.44.1346.229268','2007-03-19','SA_REP',9500,0.15,147,80),(164,'Marta','Marvins','MMARVINS','011.44.1346.329268','2008-01-03','SA_REP',7200,0.1,147,80),(165,'David','Lee','DLEE','011.44.1346.529268','2008-02-23','SA_REP',6800,0.1,147,80),(166,'Sonia','Ande','SANDE','011.44.1346.629268','2008-03-24','SA_REP',6400,0.1,147,80),(167,'Almir','Banda','ABANDA','011.44.1346.729268','2008-04-21','SA_REP',6200,0.1,147,80),(168,'Lisa','Ozer','LOZER','011.44.1343.929268','2005-03-11','SA_REP',11500,0.25,148,80),(169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','2006-03-23','SA_REP',10000,0.2,148,80),(170,'Tiago','Fox','TFOX','011.44.1343.729268','2006-01-24','SA_REP',9600,0.2,148,80),(171,'William','Smith','WSMITH','011.44.1343.629268','2007-02-23','SA_REP',7400,0.15,148,80),(172,'Elizabeth','Bates','EBATES','011.44.1343.529268','2007-03-24','SA_REP',7300,0.15,148,80),(173,'Sandro','Kumar','SKUMAR','011.44.1343.329268','2008-04-21','SA_REP',6100,0.1,148,80),(174,'Ellen','Abel','EABEL','011.44.1644.429267','2004-05-11','SA_REP',11000,0.3,149,80),(175,'Amanda','Hutton','AHUTTON','011.44.1644.429266','2005-03-19','SA_REP',8800,0.25,149,80),(176,'John','Taylor','JTAYLOR','011.44.1644.429265','2006-03-24','SA_REP',8600,0.2,149,80),(177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','2006-04-23','SA_REP',8400,0.2,149,80),(178,'Kimberely','Grant','KGRANT','011.44.1644.429263','2007-05-24','SA_REP',7000,0.15,149,NULL),(179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','2008-01-05','SA_REP',6200,0.1,149,80),(180,'William','Taylor','WTAYLOR','650.507.9876','2006-01-24','SH_CLERK',3200,NULL,120,50),(181,'Jean','Fleaur','JFLEAUR','650.507.9877','2020-05-27','SH_CLERK',3100,NULL,120,50),(182,'Marta','Sullivan','MSULLIVA','650.507.9878','2007-06-21','SH_CLERK',2500,NULL,120,50),(183,'Girard','Geoni','GGEONI','650.507.9879','2008-02-03','SH_CLERK',2800,NULL,120,50),(184,'Nanda','Sarchand','NSARCHAN','650.509.1876','2004-01-27','SH_CLERK',4200,NULL,121,50),(185,'Alex','Bull','ABULL','650.509.2876','2005-02-20','SH_CLERK',4100,NULL,121,50),(186,'Julia','Dellinger','JDELLING','650.509.3876','2006-06-24','SH_CLERK',3400,NULL,121,50),(187,'Antony','Cabrio','ACABRIO','650.509.4876','2005-10-26','SH_CLERK',3000,NULL,121,50),(188,'Kelly','Chung','KCHUNG','650.505.1876','2005-06-14','SH_CLERK',3800,NULL,122,50),(189,'Jennifer','Dilly','JDILLY','650.505.2876','2005-08-13','SH_CLERK',3600,NULL,122,50),(190,'Timotio','Gates','TGATES','650.505.3876','2006-07-11','SH_CLERK',2900,NULL,122,50),(191,'Rafael','Perkins','RPERKINS','650.505.4876','2007-12-19','SH_CLERK',2500,NULL,122,50),(192,'Sarah','Bell','SBELL','650.501.1876','2004-02-04','SH_CLERK',4000,NULL,123,50),(193,'Britney','Everett','BEVERETT','650.501.2876','2005-03-03','SH_CLERK',3900,NULL,123,50),(194,'Samuel','McCain','SMCCAIN','650.501.3876','2006-07-01','SH_CLERK',3200,NULL,123,50),(195,'Vando','Jones','VJONES','650.501.4876','2007-03-17','SH_CLERK',2800,NULL,123,50),(196,'Alana','Walsh','AWALSH','650.507.9811','2006-04-24','SH_CLERK',3100,NULL,124,50),(197,'Kevin','Feeney','KFEENEY','650.507.9822','2006-05-23','SH_CLERK',3000,NULL,124,50),(198,'Donald','OConnell','DOCONNEL','650.507.9833','2007-06-21','SH_CLERK',2600,NULL,124,50),(199,'Douglas','Grant','DGRANT','650.507.9844','2008-01-13','SH_CLERK',2600,NULL,124,50),(200,'Jennifer','Whalen','JWHALEN','515.123.4444','2003-09-17','AD_ASST',4400,NULL,101,10),(201,'Michael','Hartstein','MHARTSTE','515.123.5555','2004-02-17','MK_MAN',13000,NULL,100,20),(202,'Patricia','Fay','PFAY','603.123.6666','2005-08-17','MK_REP',6000,NULL,201,20),(203,'Susana','Mavris','SMAVRIS','515.123.7777','2002-06-07','HR_REP',6500,NULL,101,40),(204,'Hermann','Baer','HBAER','515.123.8888','2002-06-07','PR_REP',10000,NULL,101,70),(205,'Shelle','Higgins','SHIGGINS','515.123.8080','2002-06-07','AC_MGR',1000,NULL,101,110),(206,'William','Gietz','WGIETZ','515.123.8181','2002-06-07','AC_ACCOUNT',8300,NULL,205,110);
/*!40000 ALTER TABLE `EMPREGADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUNCAO_HISTORICO`
--

DROP TABLE IF EXISTS `FUNCAO_HISTORICO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUNCAO_HISTORICO` (
  `EMPREGADO_ID` int(11) NOT NULL,
  `DATA_INICIAL` date DEFAULT NULL,
  `DATA_FINAL` date DEFAULT NULL,
  `FUNCAO_ID` varchar(11) DEFAULT NULL,
  `DEPARTAMENTO_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPREGADO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUNCAO_HISTORICO`
--

LOCK TABLES `FUNCAO_HISTORICO` WRITE;
/*!40000 ALTER TABLE `FUNCAO_HISTORICO` DISABLE KEYS */;
INSERT INTO `FUNCAO_HISTORICO` VALUES (101,'1997-09-21','2001-10-27','AC_ACCOUNT',110),(102,'2001-01-13','2006-07-24','IT_PROG',60),(103,'2001-10-28','2005-03-15','AC_MGR',110),(114,'2006-03-24','2007-12-31','ST_CLERK',50),(122,'2007-01-01','2007-12-31','ST_CLERK',50),(176,'2006-03-24','2006-12-31','SA_REP',80),(177,'2007-01-01','2007-12-31','SA_MAN',80),(200,'1995-09-17','2001-06-17','AD_ASST',90),(201,'2004-02-17','2007-12-19','MK_REP',20);
/*!40000 ALTER TABLE `FUNCAO_HISTORICO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUNCOES`
--

DROP TABLE IF EXISTS `FUNCOES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUNCOES` (
  `FUNCAO_ID` varchar(11) NOT NULL,
  `FUNCAO_NOME` varchar(45) DEFAULT NULL,
  `MIN_SALARIO` double DEFAULT NULL,
  `MAX_SALARIO` double DEFAULT NULL,
  PRIMARY KEY (`FUNCAO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUNCOES`
--

LOCK TABLES `FUNCOES` WRITE;
/*!40000 ALTER TABLE `FUNCOES` DISABLE KEYS */;
INSERT INTO `FUNCOES` VALUES ('AC_ACCOUNT','Contador Público',4200,9000),('AC_MGR','Gerente Contador',8200,16000),('AD_ASST','Assistente Administrativo',3000,6000),('AD_PRES','Presidente',20080,40000),('AD_VP','Adm Vice Presidente',15000,30000),('FI_ACCOUNT','Contador',4200,9000),('FI_MGR','Gerente Financeiro',8200,16000),('HR_REP','Analista de RH',4000,9000),('IT_PROG','Programador',4000,10000),('MK_MAN','Gerente de Marketing',9000,15000),('MK_REP','Analista de Marketing',4000,9000),('PR_REP','Analista de RP',4500,10500),('PU_CLERK','Comprador',2500,5500),('PU_MAN','Gerente de Compras',8000,15000),('SA_MAN','Gerente Comercial',10000,20080),('SA_REP','Representante de Vendas',6000,12008),('SH_CLERK','Expeditor',2500,5500),('ST_CLERK','Almoxarife',2008,5000),('ST_MAN','Gerente de Suprimentos',5500,8500);
/*!40000 ALTER TABLE `FUNCOES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCAIS`
--

DROP TABLE IF EXISTS `LOCAIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCAIS` (
  `LOCAL_ID` int(11) NOT NULL,
  `RUA` varchar(45) DEFAULT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `CIDADE` varchar(45) DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `PAIS_ID` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`LOCAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCAIS`
--

LOCK TABLES `LOCAIS` WRITE;
/*!40000 ALTER TABLE `LOCAIS` DISABLE KEYS */;
INSERT INTO `LOCAIS` VALUES (1000,'1297 Via Cola di Rie','00989','Roma',NULL,'IT'),(1100,'93091 Calle della Testa','10934','Venice',NULL,'IT'),(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho','6823','Hiroshima',NULL,'JP'),(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000,'40-5-12 Laogianggen','190518','Beijing',NULL,'CN'),(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300,'198 Clementi North','540198','Singapore',NULL,'SG'),(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),(2600,'9702 Chester Road','09629850','Stretford','Manchester','UK'),(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800,'Rua Frei Caneca 1360 ','01307-00','Sao Paulo','Sao Paulo','BR'),(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
/*!40000 ALTER TABLE `LOCAIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAISES`
--

DROP TABLE IF EXISTS `PAISES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAISES` (
  `PAIS_ID` varchar(2) NOT NULL,
  `PAIS_NOME` varchar(45) DEFAULT NULL,
  `REGIAO_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PAIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAISES`
--

LOCK TABLES `PAISES` WRITE;
/*!40000 ALTER TABLE `PAISES` DISABLE KEYS */;
INSERT INTO `PAISES` VALUES ('AR','Argentina',2),('AU','Australia',3),('BE','Belgica',1),('BR','Brasil',2),('CA','Canada',2),('CH','Suiça',1),('CN','China',3),('DE','Alemanha',1),('DK','Dinamarca',1),('EG','Egito',4),('FR','França',1),('IL','Israel',4),('IN','India',3),('IT','Italia',1),('JP','Japão',3),('KW','Kuwait',4),('ML','Malaysia',3),('MX','Mexico',2),('NG','Nigeria',4),('NL','Países Baixos',1),('RF','Rafael',1),('RU','Russia',3),('SG','Singapura',3),('TD','Chad',4),('UK','Reino Unido',1),('US','Estados Unidos',2),('VM','Vinícius Meng',1),('ZM','Zambia',4),('ZW','Zimbabwe',4);
/*!40000 ALTER TABLE `PAISES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGIOES`
--

DROP TABLE IF EXISTS `REGIOES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGIOES` (
  `REGIAO_ID` int(11) NOT NULL,
  `REGIAO_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`REGIAO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGIOES`
--

LOCK TABLES `REGIOES` WRITE;
/*!40000 ALTER TABLE `REGIOES` DISABLE KEYS */;
INSERT INTO `REGIOES` VALUES (1,'Europa'),(2,'Americas'),(3,'Asia'),(4,'Africa');
/*!40000 ALTER TABLE `REGIOES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 20:03:30