-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: lga_db
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lga_autorizaciones`
--

DROP TABLE IF EXISTS `lga_autorizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lga_autorizaciones` (
  `COD_MEYSS` varchar(6) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_PERMISO` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_VIA` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_MODELO` varchar(4) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NUM_PLAZO` int DEFAULT NULL,
  `TIPO_PLAZO` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `SILENCIO` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`COD_MEYSS`),
  KEY `FK_AUT_PERMISO` (`ID_PERMISO`),
  KEY `FK_AUT_VIA` (`ID_VIA`),
  KEY `FK_AUT_MODELO` (`ID_MODELO`),
  CONSTRAINT `FK_AUT_MODELO` FOREIGN KEY (`ID_MODELO`) REFERENCES `lga_modelos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_AUT_PERMISO` FOREIGN KEY (`ID_PERMISO`) REFERENCES `lga_permisos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_AUT_VIA` FOREIGN KEY (`ID_VIA`) REFERENCES `lga_via_acceso` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lga_autorizaciones`
--

LOCK TABLES `lga_autorizaciones` WRITE;
/*!40000 ALTER TABLE `lga_autorizaciones` DISABLE KEYS */;
INSERT INTO `lga_autorizaciones` VALUES ('A1I000','ELI','ESE','EX00',2,'M','N'),('A1I001','ELI','ESC','EX00',2,'M','N'),('A1I002','ELI','ESI','EX00',15,'D','N'),('A1I003','ELI','EPE','EX00',2,'M','N'),('A1I004','ELI','EPC','EX00',2,'M','N'),('A1I005','ELI','PME','EX00',2,'M','N'),('A1I006','ELI','PMC','EX00',2,'M','N'),('A1I009','ELI','FOE','EX00',2,'M','N'),('A1I010','ELI','FOC','EX00',2,'M','N'),('A1I011','ELI','FIE','EX00',2,'M','N'),('A1I012','ELI','FIC','EX00',2,'M','N'),('A1I015','ELI','SFE','EX00',2,'M','N'),('A1I016','ELI','SFC','EX00',2,'M','N'),('A1I018','ELI','MUE','EX00',1,'M','P'),('A1I020','ELI','KH','EX00',2,'M','N'),('A1P000','ELP','ESP','EX00',1,'M','N'),('A1P001','ELP','EPP','EX00',1,'M','N'),('A1P003','ELP','FOP','EX00',1,'M','N'),('A1P004','ELP','FEP','EX00',1,'M','N'),('B0I000','NLI','MEI','EX01',1,'M','N'),('B0I001','NLI','FMI','EX01',1,'M','N'),('B0R000','NLR','MER','EX01',3,'M','P'),('B0R001','NLR','FMR','EX01',3,'M','P'),('B1I000','RGI','RFI','EX02',2,'M','N'),('B1I002','RFV','RED','EX02',2,'M','N'),('B1I003','RFV','TSH','EX02',2,'M','N'),('B1R000','RGR','RFR','EX02',3,'M','p'),('B20I00','KAI','EXA','EX03',3,'M','N'),('B20I01','KAI','EXB','EX03',3,'M','N'),('B20I02','KAI','EXC','EX03',3,'M','N'),('B20I03','KAI','EXD','EX03',3,'M','N'),('B20I04','KAI','ODA','EX03',3,'M','N'),('B20I05','KAI','ODB','EX03',3,'M','N'),('B20I06','KAI','OGA','EX03',3,'M','N'),('B20I07','KAI','OGB','EX03',3,'M','N'),('B20I08','KAI','EA0','EX03',3,'M','N'),('B20I09','KAI','EA1','EX03',3,'M','N'),('B20I10','KAI','EA2','EX03',3,'M','N'),('B20I11','KAI','EA3','EX03',3,'M','N'),('B20I12','KAI','EA4','EX03',3,'M','N'),('B20I13','KAI','EA5','EX03',3,'M','N'),('B20I14','KAI','EFC','EX03',3,'M','N'),('B21I00','KAI','IG0','EX03',1,'M','N'),('B21I01','KAI','IG1','EX03',1,'M','N'),('B21I02','KAI','CE0','EX03',1,'M','N'),('B21I03','KAI','CE1','EX03',1,'M','N'),('B2R000','KA4','SG0','EX03',3,'M','P'),('B2R001','KA1','SG1','EX03',3,'M','P'),('B2R002','KA4','BP0','EX03',3,'M','P'),('B2R003','KA1','BP1','EX03',3,'M','P'),('B3I002','CPI','CAN','EX07',3,'M','N'),('B3R000','CP5','PAC','EX07',3,'M','P'),('B3R001','CP5','POS','EX07',3,'M','P'),('B4I000','ETI','AQD','EX09',15,'D','N'),('B4I001','ETI','AQE','EX09',15,'D','N'),('B4I002','ETA','AQF','EX09',2,'M','N'),('B4I003','ETA','AQG','EX09',2,'M','N'),('B6I001','FEI','EES','EX24',2,'M','N'),('B6I002','FEI','EFO','EX24',2,'M','N'),('B6I003','FEI','EFE','EX24',2,'M','N'),('B6I004','FEI','DT4','EX24',2,'M','N'),('B6I005','FIN','EFI','EX24',2,'M','N'),('B6R001','FRV','EFR','EX24',2,'M','P'),('B9FI00','RIT','INI','EX02',2,'M','N'),('B9FI01','RIT','INR','EX02',2,'M','N'),('B9FI02','RIT','INV','EX02',2,'M','N'),('B9FI04','RIT','INE','EX02',2,'M','N'),('B9PI04','RIF','FA1','EX04',30,'D','P'),('B9PR02','RRF','FA2','EX04',3,'M','P'),('C0C000','RAT','XX3','EX06',15,'D','N'),('C0P000','RAT','XX4','EX06',3,'M','N'),('E0I000','ARR','SO1','EX10',3,'M','N'),('E0I001','ARR','SL1','EX10',3,'M','N'),('E0I002','ARR','SC1','EX10',3,'M','N'),('E0I003','ARR','SF1','EX10',3,'M','N'),('E0I004','ARR','ARF','EX10',3,'M','N'),('E0I005','COL','PN1','EX10',3,'M','N'),('E0I006','COL','CAL','EX10',3,'M','N'),('E0I007','RHU','VD1','EX10',3,'M','N'),('E0I008','RHU','ES3','EX10',3,'M','N'),('E0I009','RHU','PS1','EX10',3,'M','N'),('E0P000','ARR','SO2','EX10',3,'M','P'),('E0P001','ARR','SL2','EX10',3,'M','P'),('E0P002','ARR','SC2','EX10',3,'M','P'),('E0P003','ARR','SF2','EX10',3,'M','P'),('E0P004','COL','PN2','EX10',3,'M','P'),('E0P005','COL','CAP','EX10',3,'M','P'),('E0P006','RHU','VD2','EX10',3,'M','N'),('E0P007','RHU','ES4','EX10',3,'M','N'),('E0P008','RHU','PS2','EX10',3,'M','N'),('E1I000','VGN','VI1','EX10',3,'M','N'),('E1I001','VGN','VI2','EX10',NULL,NULL,'N'),('E1I002','VGN','HV1','EX10',3,'M','N'),('E1I003','VGN','HV2','EX10',NULL,NULL,'N'),('E2I000','VSX','VI3','EX10',3,'M','N'),('E2I001','VSX','VI4','EX10',NULL,NULL,'N'),('E2I002','VSX','FA3','EX10',3,'M','N'),('E2I003','VSX','FA4','EX10',NULL,NULL,'N'),('E2I004','VSX','AR1','EX10',3,'M','N'),('E2I005','VSX','AR2','EX10',NULL,NULL,'N'),('E3I000','COL','FV1','EX10',3,'M','N'),('E3I001','COL','FV2','EX10',3,'M','N'),('E3I002','EXE','ER2','EX10',3,'M','N'),('E3I003','EXE','ER1','EX10',3,'M','N'),('E4I000','TSH','VI5','EX10',3,'M','N'),('E4I001','TSH','VI6','EX10',3,'M','N'),('E4I002','TSH','VI7','EX10',NULL,NULL,'N'),('E4I003','TSH','FA5','EX10',3,'M','N'),('E4I004','TSH','FA6','EX10',3,'M','N'),('E4I005','TSH','FA7','EX10',NULL,NULL,'N'),('E9I000','DA2','RE3','EX10',3,'M','N'),('E9I001','PRR','RE5','EX10',5,'D','P'),('E9P000','DA2','RE4','EX10',3,'M','P'),('E9P001','PRR','RE6','EX10',5,'D','P'),('H0U000','LUE','RUO','EX11',3,'M','P'),('H0U001','LUE','RUE','EX11',3,'M','P'),('H0U002','LUE','RUZ','EX11',3,'M','P'),('H0U003','LUE','RUP','EX11',3,'M','P'),('H2E000','LDE','RDO','EX11',3,'M','P'),('H2E001','LDE','RDE','EX11',3,'M','P'),('H2E002','LDE','RDP','EX11',3,'M','P'),('H2E003','LDE','RDM','EX11',3,'M','P'),('H2E004','LDE','RDT','EX11',3,'M','P'),('H2E005','LDE','RDA','EX11',3,'M','P'),('H2E006','LDE','RDU','EX11',2,'M','N'),('H2E007','LDE','RDL','EX11',2,'M','N'),('H3E000','LDR','RDQ','EX11',3,'M','P'),('H3E001','LDR','RDR','EX11',3,'M','P'),('H3E002','LDR','RDX','EX11',3,'M','P'),('H3U000','LUR','RDV','EX11',3,'M','P'),('H3U001','LUR','RUR','EX11',3,'M','P'),('H3U002','LUR','RUV','EX11',3,'M','P'),('I0I000','MTN','MNL','EX26',3,'M','N'),('I1I000','MF1','MFE','EX26',3,'M','N'),('I3I000','MAI','MET','EX26',3,'M','N'),('I3I001','MIA','MA1','EX26',3,'M','N'),('I3I002','MAI','MA2','EX26',3,'M','N'),('I3I004','MA1','MST','EX26',1,'M','P'),('I3I007','MIA','MTA','EX26',3,'M','N'),('I3I008','MTI','MBE','EX26',20,'D','P'),('I4I000','MPI','MEA','EX26',3,'M','N'),('I4I001','MPI','MA2','EX26',3,'M','N'),('I4I002','MIP','MTP','EX26',3,'M','N'),('I5I001','M2I','MAP','EX26',3,'M','N'),('I5R000','M2R','MCA','EX26',3,'M','N'),('I5R001','MAI','MIE','EX26',3,'M','N'),('I6I000','MTE','MEE','EX26',2,'M','N'),('I6I001','MTE','MCE','EX26',3,'M','N');
/*!40000 ALTER TABLE `lga_autorizaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15 13:14:47
