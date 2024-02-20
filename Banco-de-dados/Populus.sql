-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: populus
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `CON_ID_CONTRATO` int NOT NULL AUTO_INCREMENT,
  `CON_FUN_ID_MATRICULA` int NOT NULL,
  `CON_TPC_ID_CONTRATO` int NOT NULL,
  `CON_DT_INICIO` date NOT NULL,
  `CON_DT_FINAL` date DEFAULT NULL,
  `CON_DT_CRIACAO` date NOT NULL,
  `CON_VL_SALARIO` float NOT NULL,
  `CON_QT_JORNADA` int NOT NULL,
  PRIMARY KEY (`CON_ID_CONTRATO`),
  KEY `fk_contrato_tipoContrato` (`CON_TPC_ID_CONTRATO`),
  KEY `fk_contrato_funcionario` (`CON_FUN_ID_MATRICULA`),
  CONSTRAINT `fk_contrato_funcionario` FOREIGN KEY (`CON_FUN_ID_MATRICULA`) REFERENCES `funcionario` (`FUN_ID_MATRICULA`),
  CONSTRAINT `fk_contrato_tipoContrato` FOREIGN KEY (`CON_TPC_ID_CONTRATO`) REFERENCES `tipo_contrato` (`TPC_ID_CONTRATO`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,4,2,'2013-06-20',NULL,'2013-06-19',13000,44),(2,5,1,'2023-04-19','2024-04-17','2023-04-18',2000,44),(3,6,2,'2013-06-20',NULL,'2013-06-19',13000,44),(4,7,1,'2024-02-03','2026-02-01','2024-02-02',6000,44),(5,8,7,'2020-11-20','2025-11-18','2020-11-19',5000,24),(6,9,1,'2020-11-20','2024-11-18','2020-11-19',3500,44),(7,10,7,'2020-07-15',NULL,'2020-07-14',3000,44),(8,11,5,'2024-01-15','2025-01-13','2024-01-14',1500,44),(9,12,2,'2013-08-30',NULL,'2013-08-29',2000,44),(10,13,2,'2013-09-10',NULL,'2013-09-08',1500,44),(11,14,4,'2023-05-05','2024-05-03','2023-05-04',1320,30),(12,15,2,'2013-09-20',NULL,'2013-09-19',13000,44),(13,16,1,'2013-01-10','2015-01-08','2013-01-09',3000,44),(14,17,2,'2017-06-14',NULL,'2017-06-13',1300,44),(15,18,7,'2022-03-27',NULL,'2022-03-26',6000,44),(16,19,2,'2016-09-12',NULL,'2016-09-11',1000,44),(17,20,2,'2014-12-17',NULL,'2014-12-16',7000,44);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `DEP_ID_DEPARTAMENTO` int NOT NULL AUTO_INCREMENT,
  `DEP_NOME` varchar(30) NOT NULL,
  `DEP_DT_CRIACAO` datetime NOT NULL,
  `DEP_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`DEP_ID_DEPARTAMENTO`),
  UNIQUE KEY `DEP_NOME` (`DEP_NOME`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Administração','2024-02-03 00:00:00','2024-02-03 00:00:00'),(2,'recursos humanos','2024-02-03 00:00:00',NULL),(3,'financeiro','2024-02-03 00:00:00',NULL),(4,'contábil','2024-02-03 00:00:00',NULL),(5,'marketing e vendas','2024-02-03 00:00:00',NULL),(6,'produção','2024-02-03 00:00:00',NULL),(7,'logística','2024-02-03 00:00:00',NULL),(8,'tecnologia da informação','2024-02-03 00:00:00',NULL),(9,'jurídico','2024-02-03 00:00:00',NULL),(10,'pesquisa','2024-02-03 00:00:00',NULL),(11,'atendimento ao cliente','2024-02-03 00:00:00',NULL),(12,'suprimentos','2024-02-03 00:00:00',NULL);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `END_ID_ENDERECO` int NOT NULL AUTO_INCREMENT,
  `END_LOGRADOURO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `END_CEP` char(8) NOT NULL,
  `END_BAIRRO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `END_NR_CASA` varchar(10) NOT NULL,
  `END_CIDADE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `END_UF` char(2) NOT NULL,
  `END_COMPLEMENTO` text,
  `END_DT_CRIACAO` datetime NOT NULL,
  `END_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`END_ID_ENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua sergipe','55008360','Morro bom Jesus','43','Caruaru','pe','casa de esquina','2024-02-03 00:00:00',NULL),(2,'Rua Engenheiro Oscar Ferreira','52061020','Poço','400','Recife','pe',NULL,'2024-02-03 00:00:00',NULL),(3,'1º Alto do Sol','54210212','Cavaleiro','579','Jaboatão dos Guararapes','pe',NULL,'2024-02-03 00:00:00',NULL),(4,'4ª Travessa do Progresso','54220394','Curado','528','Jaboatão dos Guararapes','pe',NULL,'2024-02-03 00:00:00',NULL),(5,'Rua Analicio Antônio de Moura','54220394','Bela Vista','473','Santa Cruz do Capibaribe','pe',NULL,'2024-02-03 00:00:00',NULL),(6,'Avenida Frei Antônio Jaboatão','53300110','Bela Vista','630','Jardim Brasil','pe',NULL,'2024-02-03 00:00:00',NULL),(7,'2ª Travessa Coronel Francisco Rodrigues Porto','55032001','Petrópolis','801','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(8,'2ª Travessa São Francisco','55032001','São Francisco','883','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(9,'5ª Travessa Arquimedes de Oliveira','55032426','Petrópolis','799','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(10,'1ª Travessa Joaquim de Melo','55004251','Nossa Senhora das Dores','465','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(11,'Rua Olívia Evangelista Leite','55042340','José Carlos de Oliveira','311','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(12,'Praça Deputado Henrique Pinto','55042340','Nossa Senhora das Dores','528','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(13,'Rua Valdomiro Manuel da Silva','55018121','Salgado','192','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(14,'Avenida Dom Hélder Câmara','55014205','Maurício de Nassau','866','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(15,'Travessa Timbaúba','55008601','São Francisco','317','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(16,'Rua Paris','55002035','Nossa Senhora das Dores','667','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(17,'Avenida Campina Grande','55034630','Caiuca','198','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(18,'Rua Cuiabá','55008240','Morro do Bom Jesus','993','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(19,'Avenida Afonso Aires','55014180','Nova Caruaru','701','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL),(20,'Rua R-17','55036720','Kennedy','998','Caruaru','pe',NULL,'2024-02-03 00:00:00',NULL);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `FUN_ID_MATRICULA` int NOT NULL AUTO_INCREMENT,
  `FUN_NOME` varchar(100) NOT NULL,
  `FUN_CPF` varchar(11) NOT NULL,
  `FUN_PISPASEP` varchar(11) NOT NULL,
  `FUN_SEXO` char(1) NOT NULL,
  `FUN_NR_CTPS` varchar(11) NOT NULL,
  `FUN_FUNCAO` varchar(30) NOT NULL,
  `FUN_DEP_ID_DEPARTAMENTO` int NOT NULL,
  `FUN_ESTADO_CIVIL` varchar(10) DEFAULT NULL,
  `FUN_DT_NASCIMENTO` date NOT NULL,
  `FUN_ETNIA` varchar(11) DEFAULT NULL,
  `FUN_ESCOLARIDADE` varchar(25) DEFAULT NULL,
  `FUN_EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FUN_STATUS` tinyint(1) NOT NULL,
  `FUN_PCD_ID_PCD` int DEFAULT NULL,
  `FUN_END_ID_ENDERECO` int NOT NULL,
  `FUN_DT_CRIACAO` datetime NOT NULL,
  `FUN_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`FUN_ID_MATRICULA`),
  UNIQUE KEY `FUN_CPF` (`FUN_CPF`),
  UNIQUE KEY `FUN_PISPASEP` (`FUN_PISPASEP`),
  UNIQUE KEY `FUN_NR_CTPS` (`FUN_NR_CTPS`),
  UNIQUE KEY `FUN_EMAIL` (`FUN_EMAIL`),
  KEY `fk_funcionario_departamento` (`FUN_DEP_ID_DEPARTAMENTO`),
  KEY `fk_funcionario_pcd` (`FUN_PCD_ID_PCD`),
  KEY `fk_funcionario_endereco` (`FUN_END_ID_ENDERECO`),
  CONSTRAINT `fk_funcionario_departamento` FOREIGN KEY (`FUN_DEP_ID_DEPARTAMENTO`) REFERENCES `departamento` (`DEP_ID_DEPARTAMENTO`),
  CONSTRAINT `fk_funcionario_endereco` FOREIGN KEY (`FUN_END_ID_ENDERECO`) REFERENCES `endereco` (`END_ID_ENDERECO`),
  CONSTRAINT `fk_funcionario_pcd` FOREIGN KEY (`FUN_PCD_ID_PCD`) REFERENCES `pcd` (`PCD_ID_PCD`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Silvio Fabian Ribeiro Torres Filho','06424011870','74325796797','M','06424011870','Diretor Executivo',1,'Solteiro','2001-08-12','Branco','Superior Incompleto','silviofabian@gmail.com',1,NULL,1,'2024-02-03 00:00:00',NULL),(2,'Sebastião Bernardo Otávio Nascimento','30101158491','16697921669','M','12345678901','Diretor de Operações',1,'Casado','1948-02-02','Pardo','Superior completo','sebastiao@prlme.com.br',1,NULL,2,'2024-02-03 13:42:10',NULL),(3,'Bianca Eduarda Adriana Oliveira','94879697486','82747411160','F','98765432102','Diretor Técnico',1,'Divorciado','1960-04-02','Branco','Superior completo','biancaeduardaoliveira@iclud.com',1,NULL,3,'2024-02-03 13:42:10',NULL),(4,'Danilo João Gomes','56536573447','31629645191','M','55555555503','Gerente de TI',8,'Solteiro','1985-06-06','Branco','Mestrado','danilo.gomes@bitco.cc',1,NULL,4,'2024-02-03 13:42:10',NULL),(5,'Maria Mariana Moraes','98973033409','96510376333','F','99988877704','Auxiliar administrativo',2,'Solteiro','1995-02-02','Pardo','Médio completo','maria-moraes96@ept.com.br',1,NULL,5,'2024-02-03 13:42:10',NULL),(6,'Caleb Ryan Marcos Vinicius Ramos','00121118487','80616857169','M','77770000106','Gerente do RH',2,'Casado','1990-07-12','Preto','Superior completo','caleb-ramos80@its.jnj.com',1,NULL,6,'2024-02-03 13:42:10',NULL),(7,'Lívia Sandra Duarte','09327112431','32976462409','F','44443333207','Coordernador contabilidade',4,'Casado','1978-01-17','Pardo','Superior completo','livia_duarte@etipel.com.br',1,NULL,7,'2024-02-03 13:42:10',NULL),(8,'Sandra Patrícia Cecília Assunção','82981350404','31454902921','F','88887777608','Advogado 1',9,'Casado','1985-09-28','Branco','Mestrado','sandra_patricia@hotmail.com.br',1,NULL,8,'2024-02-03 13:42:10',NULL),(9,'Rosângela Rosa Laís Martins','31809701465','34761215969','F','66660000609','Advogado 2',9,'Solteiro','1982-02-02','Negro','Superior completo','rosangelarosamartins@click21.com.br',1,NULL,9,'2024-02-03 13:42:10',NULL),(10,'Benedito Luan da Luz','80402028414','69845023753','M','55550000213','Design',5,'Solteiro','1997-10-01','Branco','Superior incompleto','luan_daluz@gmail.com.br',1,NULL,10,'2024-02-03 13:42:10',NULL),(11,'Benedito Bruno Benjamin da Cunha','03349727441','60699135749','M','78901234512','Auxiliar de advogado',9,'Solteiro','2004-12-12','Branco','Superior incompleto','benedito-dacunha96@almaquinas.com.br',1,NULL,11,'2024-02-03 13:42:10',NULL),(12,'Clarice Carolina Sophia Fernandes','89242512443','02426401456','F','99996666714','Faxineiro',12,'Casado','1983-01-17','Pardo','Médio completo','clarice.carolina.fernandes@gmail.com.br',1,NULL,12,'2024-02-03 13:42:10',NULL),(13,'Rebeca Tânia Gabrielly da Cruz','44167797470','17525640295','F','11110000315','Auxiliar de Serviços Gerais',12,'Divordiado','1967-02-01','Pardo','Médio incompleto','rebeca_tania_dacruz@hotmail.com.br',1,NULL,13,'2024-02-03 13:42:10',NULL),(14,'Isaac Manuel Breno da Rosa','70235125431','78470538666','M','77778888916','Estagiário',8,'Solteiro','2005-01-25','Branco','Superior incompleto','isaac_manuel_darosa@sanidet.com.br',1,NULL,14,'2024-02-03 13:42:10',NULL),(15,'Renato Caio Tomás Nunes','86332743450','71989952745','M','44441111217','Gerente financeiro',3,'Viuvo','1980-01-17','Negro','Mestrado','renato_nunes@care-br.com',1,NULL,15,'2024-02-03 13:42:10',NULL),(16,'Luan Heitor Augusto Novaes','27878177422','10199025646','M','88889999018','Contador',3,'Solteiro','1990-09-24','Branco','Superior completo','luan_heitor_novaes@arysta.com.br',1,NULL,16,'2024-02-03 13:42:10',NULL),(17,'Gregory House','73138845401','77438891757','M','66667777819','Planejamento de Transporte',7,'Divorciado','1959-06-11','Branco','Superior completo','gregoryhouse42@hotmail.com',1,1,17,'2024-02-03 13:42:10',NULL),(18,'Patrick Jane','15598511479','42070577612','M','22220000420','Investigador',9,'Viuvo','1969-07-30','Branco','Médio completo','janep@gmail.com',1,NULL,18,'2024-02-03 13:42:10',NULL),(19,'Dean Winchester','53779538431','71818497342','M','53779538431','Gerente de suprimentos',12,'Solteiro','1979-01-24','Branco','Médio completo','deanmonsterkiller@hotmail.com',1,NULL,19,'2024-02-03 13:42:10',NULL),(20,'César Ruan Thales Pereira','23397755409','41595150346','M','72778888916','Coordenador de TI',8,'Casado','1989-12-24','Pardo','Superior completo','cesar_ruan_pereira@cesar.com',1,NULL,20,'2024-02-03 13:42:10',NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `LOGIN_ID` int NOT NULL AUTO_INCREMENT,
  `LOGIN_FUN_ID_MATRICULA` int NOT NULL,
  `LOGIN_USUARIO` varchar(50) NOT NULL,
  `LOPGIN_SENHA` varchar(50) NOT NULL,
  `LOGIN_DT_CRIACAO` datetime NOT NULL,
  `LOGIN_DT_ATUALIZADO` datetime DEFAULT NULL,
  `LOGIN_STATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`LOGIN_ID`),
  UNIQUE KEY `LOGIN_USUARIO` (`LOGIN_USUARIO`),
  UNIQUE KEY `LOPGIN_SENHA` (`LOPGIN_SENHA`),
  KEY `fk_login_funcionario` (`LOGIN_FUN_ID_MATRICULA`),
  CONSTRAINT `fk_login_funcionario` FOREIGN KEY (`LOGIN_FUN_ID_MATRICULA`) REFERENCES `funcionario` (`FUN_ID_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'silvio.filho','123456','2024-02-02 00:00:00',NULL,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcd`
--

DROP TABLE IF EXISTS `pcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcd` (
  `PCD_ID_PCD` int NOT NULL AUTO_INCREMENT,
  `PCD_TIPO_DEFICIENCIA` varchar(30) DEFAULT NULL,
  `PCD_DESCRICAO` text,
  `PCD_DT_CRIACAO` datetime NOT NULL,
  `PCD_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`PCD_ID_PCD`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcd`
--

LOCK TABLES `pcd` WRITE;
/*!40000 ALTER TABLE `pcd` DISABLE KEYS */;
INSERT INTO `pcd` VALUES (1,'Aleijado','O funcionário é manco da perna esquerda, se tornando dependente de analgesicos e impossibilitado de trabalhos braçais','2024-01-04 00:00:00',NULL);
/*!40000 ALTER TABLE `pcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude`
--

DROP TABLE IF EXISTS `saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude` (
  `SAU_ID_SAUDE` int NOT NULL AUTO_INCREMENT,
  `SAU_FUN_ID_MATRICULA` int NOT NULL,
  `SAU_TP_SANGUINEO` varchar(3) DEFAULT NULL,
  `SAU_DT_CRIACAO` datetime NOT NULL,
  `SAU_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`SAU_ID_SAUDE`),
  KEY `fk_saude_funcionario` (`SAU_FUN_ID_MATRICULA`),
  CONSTRAINT `fk_saude_funcionario` FOREIGN KEY (`SAU_FUN_ID_MATRICULA`) REFERENCES `funcionario` (`FUN_ID_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude`
--

LOCK TABLES `saude` WRITE;
/*!40000 ALTER TABLE `saude` DISABLE KEYS */;
INSERT INTO `saude` VALUES (1,1,'A+','2024-02-03 23:42:30',NULL),(2,2,'AB-','2024-02-03 23:42:30',NULL),(3,3,'O-','2024-02-03 23:42:30',NULL),(4,4,'A-','2024-02-03 23:42:30',NULL),(5,5,'A+','2024-02-03 23:42:30',NULL),(6,6,'O+','2024-02-03 23:42:30',NULL),(7,7,'B-','2024-02-03 23:42:30',NULL),(8,8,'B+','2024-02-03 23:42:30',NULL),(9,9,'AB+','2024-02-03 23:42:30',NULL),(10,10,'O-','2024-02-03 23:42:30',NULL),(11,11,'AB-','2024-02-03 23:42:30',NULL),(12,12,'AB-','2024-02-03 23:42:30',NULL),(13,13,'A+','2024-02-03 23:42:30',NULL),(14,14,'A-','2024-02-03 23:42:30',NULL),(15,15,'B+','2024-02-03 23:42:30',NULL),(16,16,'B-','2024-02-03 23:42:30',NULL),(17,17,'A+','2024-02-03 23:42:30',NULL),(18,18,'AB-','2024-02-03 23:42:30',NULL),(19,19,'A-','2024-02-03 23:42:30',NULL),(20,20,'O+','2024-02-03 23:42:30',NULL);
/*!40000 ALTER TABLE `saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `TEL_ID_TELEFONE` int NOT NULL AUTO_INCREMENT,
  `TEL_FUN_ID_MATRICULA` int NOT NULL,
  `TEL_DDD` tinyint NOT NULL,
  `TEL_NUMERO` int NOT NULL,
  `TEL_OBSERVACAO` text,
  `TEL_DT_CRIACAO` datetime NOT NULL,
  `TEL_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`TEL_ID_TELEFONE`),
  KEY `fk_telefone_funcionario` (`TEL_FUN_ID_MATRICULA`),
  CONSTRAINT `fk_telefone_funcionario` FOREIGN KEY (`TEL_FUN_ID_MATRICULA`) REFERENCES `funcionario` (`FUN_ID_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,1,87,969205432,'Telefone pessoal','2024-02-04 00:00:00',NULL),(2,1,87,980821874,'Telefone profissional','2024-02-04 00:00:00',NULL),(3,2,81,988969551,NULL,'2024-02-04 00:00:00',NULL),(4,2,81,969689861,'numero de emergencia','2024-02-04 00:00:00',NULL),(5,3,87,972131824,NULL,'2024-02-04 00:00:00',NULL),(6,4,81,971085597,NULL,'2024-02-04 00:00:00',NULL),(7,5,87,999568465,NULL,'2024-02-04 00:00:00',NULL),(8,6,81,981880174,NULL,'2024-02-04 00:00:00',NULL),(9,7,81,979146341,'Telefone pessoal','2024-02-04 00:00:00',NULL),(10,15,87,992427653,'Telefone profissional','2024-02-04 00:00:00',NULL),(11,17,81,986132358,NULL,'2024-02-04 00:00:00',NULL),(12,18,81,974643171,NULL,'2024-02-04 00:00:00',NULL),(13,20,81,975114444,'Telefone pessoal','2024-02-04 00:00:00',NULL),(14,20,81,979021401,'Telefone profissional','2024-02-04 00:00:00',NULL);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contrato`
--

DROP TABLE IF EXISTS `tipo_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_contrato` (
  `TPC_ID_CONTRATO` int NOT NULL AUTO_INCREMENT,
  `TPC_TIPO_CONTRATO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TPC_DESCRICAO` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `TPC_DT_CRIACAO` datetime NOT NULL,
  `TPC_DT_ATUALIZADO` datetime DEFAULT NULL,
  PRIMARY KEY (`TPC_ID_CONTRATO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
INSERT INTO `tipo_contrato` VALUES (1,'tempo determinado','estabelece o tempo exato em que o contratante terá um contratado prestando serviço ao estabelecimento.','2024-02-03 00:00:00',NULL),(2,'tempo indeterminado','tipo de contrato de trabalho padrão na legislação brasileira. Esse é o modelo de contrato mais usado no mundo corporativo, que é normalmente implementado após o final de contratos temporários de experiência, com duração de no máximo 90 dias.','2024-02-03 21:54:46',NULL),(3,'trabalho eventual','utilizado quando as empresas não querem criar nenhum vínculo empregatício com o contratado','2024-02-03 21:55:42',NULL),(4,'estágio','estilo de contrato que não configura um vínculo empregatício, por ser uma oportunidade de aprendizado.','2024-02-03 21:56:25',NULL),(5,'experiência','esse contrato só pode ser prorrogado uma vez, no período integral de 90 dias','2024-02-03 21:57:22',NULL),(6,'intermitente','permitiu a prestação de serviços de maneira subordinada e não continuada, ou seja, os profissionais têm um contrato efetivo CLT firmado, mas o período de trabalho pode ser alterado em horas, dias ou meses.','2024-02-03 21:58:36',NULL),(7,'autônomo','tipo de contrato de prestação de serviço, em que o profissional e a empresa não firmam vínculo empregatício, sendo assim, o prestador de serviço não é subordinado ao empregador, e todo o trabalho acordado é estabelecido previamente entre as partes envolvidas.','2024-02-03 21:59:22',NULL);
/*!40000 ALTER TABLE `tipo_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'populus'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 18:07:03
