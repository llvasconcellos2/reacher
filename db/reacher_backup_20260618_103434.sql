-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: reacher
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `config_reacher`
--

DROP TABLE IF EXISTS `config_reacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_reacher` (
  `cd` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chave` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `valor` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cd`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_reacher`
--

LOCK TABLES `config_reacher` WRITE;
/*!40000 ALTER TABLE `config_reacher` DISABLE KEYS */;
INSERT INTO `config_reacher` VALUES (1,'senha','123456'),(2,'email_admin','reacher@reacher.com.br'),(3,'url_site','http://www.devhouse.com.br'),(4,'remetente','Nome do Remetente'),(5,'email_remetente','reacher@reacher.com.br'),(6,'modelo_aniversario','1'),(7,'assunto_email_aniversario','Feliz Aniversário!'),(8,'data_envio_aniversario','17/02/2010'),(9,'return-path','reacher@reacher.com.br');
/*!40000 ALTER TABLE `config_reacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicoes`
--

DROP TABLE IF EXISTS `instituicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicoes` (
  `id_instituicao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_instituicao` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `razao_social_instituicao` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `telefone_instituicao` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `fax_instituicao` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco_instituicao` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro_instituicao` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade_instituicao` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `estado_instituicao` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `cep_instituicao` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_instituicao`),
  UNIQUE KEY `nome` (`nome_instituicao`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicoes`
--

LOCK TABLES `instituicoes` WRITE;
/*!40000 ALTER TABLE `instituicoes` DISABLE KEYS */;
INSERT INTO `instituicoes` VALUES (1,'ACME Indústria e Comércio','ACME Indústria e Comércio','122345567889','','Rua Sem Nome, sn','Centro','Joinville','SC','89201000'),(2,'Móveis XPTO','Móveis XPTO','4734537898','','Rua Blumenau, sn','América','Joinville','SC','89200000');
/*!40000 ALTER TABLE `instituicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lembretes`
--

DROP TABLE IF EXISTS `lembretes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lembretes` (
  `id_lembrete` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `destinatario` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `texto` text COLLATE latin1_general_ci NOT NULL,
  `data` varchar(12) COLLATE latin1_general_ci NOT NULL DEFAULT '0000-00-00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `ultimo_envio` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`id_lembrete`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lembretes`
--

LOCK TABLES `lembretes` WRITE;
/*!40000 ALTER TABLE `lembretes` DISABLE KEYS */;
INSERT INTO `lembretes` VALUES (1,'Lembrete Exemplo','reacher@reacher.com.br','Mais um exemplo de lembrete','W;1',1,'1000-01-01'),(2,'Enviar Mala Direta','reacher@reacher.com.br','Lembrar de enviar os emails de mala direta.','W;1',1,'1000-01-01');
/*!40000 ALTER TABLE `lembretes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malas`
--

DROP TABLE IF EXISTS `malas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malas` (
  `id_mala` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_mala` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `remetente_mala` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `assunto_mala` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_mala` date DEFAULT '2099-12-31',
  `css_mala` text COLLATE latin1_general_ci NOT NULL,
  `html_mala` text COLLATE latin1_general_ci NOT NULL,
  `status_mala` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `emails_enviados` bigint(20) NOT NULL DEFAULT '0',
  `bounces` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mala`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malas`
--

LOCK TABLES `malas` WRITE;
/*!40000 ALTER TABLE `malas` DISABLE KEYS */;
INSERT INTO `malas` VALUES (1,'Boticário','reacher@reacher.com.br','Promoção Boticário','2026-07-02','','<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>O BoticÃ¡rio - boti PROMO</title><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#e6e6e6;\"><tbody><tr><td align=\"center\" style=\"padding:24px 12px;\"><table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px; max-width:600px; background-color:#ffffff;\"><!--Logo--><tbody><tr><td align=\"center\" style=\"padding:24px 0 16px 0;\"><img src=\"img/boticario-logo.png\" width=\"160\" alt=\"O BoticÃ¡rio\" style=\"display:block; border:0;\"></td></tr><!--Nav--><tr><td style=\"background-color:#f5f5f5; padding:14px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" style=\"font-size:12px; letter-spacing:.5px; color:#204758; font-weight:bold;\">PERFUMARIA &nbsp;&nbsp; LANÇAMENTOS &nbsp;&nbsp; PRESENTES &nbsp;&nbsp; MAIS VENDIDOS<span style=\"color:#00a163;\">PROMOÇÕES</span></td></tr></tbody></table></td></tr><!--Frete Gratis bar--><tr><td align=\"center\" style=\"background-color:#204758; padding:18px 10px;\"><span style=\"font-size:20px; font-weight:bold; color:#abcf64;\">Frete Grátis</span><span style=\"font-size:20px; color:#ffffff;\">acima de R$ 139</span></td></tr><!--Hero promo--><tr><td style=\"background:linear-gradient(135deg,#ff8a63,#ff4f6c); background-color:#ff6b6e; padding:28px 24px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td valign=\"top\" width=\"55%\" style=\"padding-right:12px;\"><div style=\"font-size:30px; font-style:italic; font-weight:bold; color:#ffffff; font-family:Georgia, \'Times New Roman\', serif;\">boti<span style=\"color:#abcf64;\">&#9829;</span></div><div style=\"font-size:34px; font-weight:900; color:#ffffff; letter-spacing:1px; margin-top:-6px; font-family:Arial Black, Arial, sans-serif;\">PROMO</div><div style=\"font-size:13px; color:#ffffff; line-height:1.5; margin-top:10px;\">Sua aliada na realização das suas<strong>metas de início de ano</strong>com foco no<strong>bem-estar e autocuidado!</strong></div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"margin-top:18px;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"background-color:#ff4658; border-radius:50%; width:78px; height:78px; color:#ffffff; font-weight:bold; text-align:center; line-height:1.1;\"><span style=\"font-size:11px; display:block;\">COM ATÉ</span><span style=\"font-size:22px; display:block;\">50%</span><span style=\"font-size:11px; display:block;\">OFF</span></td></tr></tbody></table><div style=\"font-size:13px; font-weight:bold; color:#ffffff; margin-top:14px;\">+ de 600 itens participantes</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"margin-top:16px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-radius:20px; padding:10px 26px;\"><a href=\"#\" style=\"font-size:13px; font-weight:bold; color:#204758; text-decoration:none;\">EU QUERO ›</a></td></tr></tbody></table></td><td valign=\"middle\" width=\"45%\" align=\"right\"><img src=\"img/boticario-products.png\" width=\"220\" alt=\"Produtos em promoção\" style=\"display:block; border:0; max-width:100%;\"></td></tr></tbody></table></td></tr><!--Category section--><tr><td style=\"background-color:#204758; padding:26px 16px;\"><div style=\"text-align:center; color:#ffffff; font-size:18px; margin-bottom:18px;\">APROVEITE<strong>POR CATEGORIA!</strong></div><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-perfumaria.png\" width=\"100%\" alt=\"Perfumaria\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff4658\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">PERFUMARIA</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-skincare.png\" width=\"100%\" alt=\"Skincare\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#abcf64\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#204758;\">SKINCARE</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-corpo-banho.png\" width=\"100%\" alt=\"Corpo e Banho\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff7767\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">CORPO E BANHO</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-cabelos.png\" width=\"100%\" alt=\"Cabelos\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff7487\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">CABELOS</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-maquiagem.png\" width=\"100%\" alt=\"Maquiagem\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#00bba6\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">MAQUIAGEM</td></tr></tbody></table></td></tr></tbody></table></td></tr><!--Footer CTA--><tr><td align=\"center\" style=\"background:linear-gradient(135deg,#ff8a63,#ff4f6c); background-color:#ff6b6e; padding:30px 20px;\"><div style=\"font-size:16px; color:#ffffff;\">FIQUE POR DENTRO DE</div><div style=\"font-size:22px; font-weight:bold; color:#ffffff; margin-top:4px; margin-bottom:18px;\">TODAS AS PROMOÇÕES!</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" bgcolor=\"#abcf64\" style=\"border-radius:18px; padding:12px 28px;\"><a href=\"#\" style=\"font-size:13px; font-weight:bold; color:#204758; text-decoration:none;\">CLIQUE PARA CONFERIR ›</a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>','1',0,0),(2,'FutFanatics','reacher@reacher.com.br','Promoção do FutFanatics','2026-07-02','','<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Futfanatics - Produtos que você pode gostar</title><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#e5e5e5;\"><tbody><tr><td align=\"center\" style=\"padding:24px 12px;\"><table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px; max-width:600px; background-color:#ffffff; border-radius:6px;\"><!-- Title --><tbody><tr><td align=\"center\" style=\"padding:22px 16px 18px 16px;\"><span style=\"font-size:17px; font-weight:bold; color:#1a2b4d;\">Produtos que você pode gostar:</span></td></tr><!-- Row 1 --><tr><td style=\"padding:0 10px 22px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><!-- Camisa Kappa Bangu --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-camisa-kappa-bangu.png\" width=\"180\" alt=\"Camisa Kappa Bangu I 2023\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Camisa Kappa Bangu I 2023</div><div style=\"font-size:11px; color:#999999; margin-top:8px;\">&nbsp;</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 229,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td><!-- Camisa Umbro GrÃªmio --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-camisa-umbro-gremio.png\" width=\"180\" alt=\"Camisa Umbro Grêmio I 2021\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Camisa Umbro Grêmio I 2021</div><div style=\"font-size:11px; color:#999999; margin-top:8px; text-decoration:line-through;\">259,90</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 149,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td><!-- Camisa Puma Palmeiras --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-camisa-puma-palmeiras.png\" width=\"180\" alt=\"Camisa Puma Palmeiras I 2022\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Camisa Puma Palmeiras I 2022</div><div style=\"font-size:11px; color:#999999; margin-top:8px; text-decoration:line-through;\">299,90</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 199,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td></tr></tbody></table></td></tr><!-- Row 2 --><tr><td style=\"padding:0 10px 24px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><!-- Camisa EsquadrÃ£o Bahia --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-camisa-esquadrao-bahia.png\" width=\"180\" alt=\"Camisa Esquadrão Bahia II 2022 Torcedor\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Camisa Esquadrão Bahia II 2022 Torcedor</div><div style=\"font-size:11px; color:#999999; margin-top:8px;\">&nbsp;</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 119,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td><!-- TÃªnis Olympikus --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-tenis-olympikus.png\" width=\"180\" alt=\"Tênis Olympikus Corre Vento Amarelo\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Tênis Olympikus Corre Vento Amarelo</div><div style=\"font-size:11px; color:#999999; margin-top:8px; text-decoration:line-through;\">399,90</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 319,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td><!-- Camisa Kappa Remo --><td align=\"center\" valign=\"top\" width=\"33.33%\" style=\"padding:0 6px;\"><img src=\"img/futfanatics-camisa-kappa-remo.png\" width=\"180\" alt=\"Camisa Kappa Remo I 2021\" style=\"display:block; border:0; width:100%; max-width:180px;\"><div style=\"font-size:11px; color:#787878; line-height:1.4; margin-top:10px; min-height:30px;\">Camisa Kappa Remo I 2021</div><div style=\"font-size:11px; color:#999999; margin-top:8px; text-decoration:line-through;\">229,90</div><div style=\"font-size:13px; font-weight:bold; color:#1a2b4d; margin-top:4px;\">Por: R$ 59,90</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"margin-top:10px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border:1px solid #192c53; border-radius:6px; padding:8px 0;\"><a href=\"#\" style=\"font-size:12px; font-weight:bold; color:#1a2b4d; text-decoration:none;\">Confira</a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>','1',0,0);
/*!40000 ALTER TABLE `malas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malas_envios`
--

DROP TABLE IF EXISTS `malas_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malas_envios` (
  `id_mala` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ordem` bigint(20) NOT NULL,
  KEY `id_mala` (`id_mala`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malas_envios`
--

LOCK TABLES `malas_envios` WRITE;
/*!40000 ALTER TABLE `malas_envios` DISABLE KEYS */;
/*!40000 ALTER TABLE `malas_envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malas_visualizacoes`
--

DROP TABLE IF EXISTS `malas_visualizacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malas_visualizacoes` (
  `id_mala` int(10) unsigned NOT NULL,
  `id_pessoa` int(10) unsigned NOT NULL,
  KEY `id_mala` (`id_mala`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malas_visualizacoes`
--

LOCK TABLES `malas_visualizacoes` WRITE;
/*!40000 ALTER TABLE `malas_visualizacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `malas_visualizacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos` (
  `id_modelo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_modelo` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `css_modelo` text COLLATE latin1_general_ci NOT NULL,
  `html_modelo` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modelo`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,'Mala Direta FutFanatics','','<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Futfanatics - Produtos que você pode gostar</title><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#e5e5e5;\"><tbody><tr><td align=\"center\" style=\"padding:24px 12px;\"><table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px; max-width:600px; background-color:#ffffff; border-radius:6px;\"><!--Title--><tbody><tr><td align=\"center\" style=\"padding:22px 16px 18px 16px;\"><br></td></tr><tr><td style=\"padding:0 10px 24px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody></tbody></table></td></tr></tbody></table></td></tr></tbody></table>'),(2,'Mala Direta FutFanatics','','<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Futfanatics - Produtos que você pode gostar</title><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#e5e5e5;\"><tbody><tr><td align=\"center\" style=\"padding:24px 12px;\"><table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px; max-width:600px; background-color:#ffffff; border-radius:6px;\"><!--Title--><tbody><tr><td align=\"center\" style=\"padding:22px 16px 18px 16px;\"><br></td></tr><tr><td style=\"padding:0 10px 24px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody></tbody></table></td></tr></tbody></table></td></tr></tbody></table>'),(3,'Mala Direta Boticario','','<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>O BoticÃ¡rio - boti PROMO</title><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#e6e6e6;\"><tbody><tr><td align=\"center\" style=\"padding:24px 12px;\"><table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px; max-width:600px; background-color:#ffffff;\"><!--Logo--><tbody><tr><td align=\"center\" style=\"padding:24px 0 16px 0;\"><img src=\"img/boticario-logo.png\" width=\"160\" alt=\"O BoticÃ¡rio\" style=\"display:block; border:0;\"></td></tr><!--Nav--><tr><td style=\"background-color:#f5f5f5; padding:14px 10px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" style=\"font-size:12px; letter-spacing:.5px; color:#204758; font-weight:bold;\">PERFUMARIA &nbsp;&nbsp; LANÇAMENTOS &nbsp;&nbsp; PRESENTES &nbsp;&nbsp; MAIS VENDIDOS<span style=\"color:#00a163;\">PROMOÇÕES</span></td></tr></tbody></table></td></tr><!--Frete Gratis bar--><tr><td align=\"center\" style=\"background-color:#204758; padding:18px 10px;\"><span style=\"font-size:20px; font-weight:bold; color:#abcf64;\">Frete Grátis</span><span style=\"font-size:20px; color:#ffffff;\">acima de R$ 139</span></td></tr><!--Hero promo--><tr><td style=\"background:linear-gradient(135deg,#ff8a63,#ff4f6c); background-color:#ff6b6e; padding:28px 24px;\"><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td valign=\"top\" width=\"55%\" style=\"padding-right:12px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"margin-top:16px;\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-radius:20px; padding:10px 26px;\"><a href=\"#\" style=\"font-size:13px; font-weight:bold; color:#204758; text-decoration:none;\">EU QUERO ›</a></td></tr></tbody></table></td><td valign=\"middle\" width=\"45%\" align=\"right\"><br></td></tr></tbody></table></td></tr><!--Category section--><tr><td style=\"background-color:#204758; padding:26px 16px;\"><div style=\"text-align:center; color:#ffffff; font-size:18px; margin-bottom:18px;\">APROVEITE<strong>POR CATEGORIA!</strong></div><table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-perfumaria.png\" width=\"100%\" alt=\"Perfumaria\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff4658\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">PERFUMARIA</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-skincare.png\" width=\"100%\" alt=\"Skincare\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#abcf64\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#204758;\">SKINCARE</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-corpo-banho.png\" width=\"100%\" alt=\"Corpo e Banho\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff7767\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">CORPO E BANHO</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-cabelos.png\" width=\"100%\" alt=\"Cabelos\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#ff7487\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">CABELOS</td></tr></tbody></table></td><td align=\"center\" width=\"20%\" style=\"padding:0 4px;\"><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #ffffff; border-radius:8px; overflow:hidden;\"><tbody><tr><td><img src=\"img/boticario-icon-maquiagem.png\" width=\"100%\" alt=\"Maquiagem\" style=\"display:block; border:0;\"></td></tr><tr><td align=\"center\" bgcolor=\"#00bba6\" style=\"padding:8px 2px; font-size:10px; font-weight:bold; color:#ffffff;\">MAQUIAGEM</td></tr></tbody></table></td></tr></tbody></table></td></tr><!--Footer CTA--><tr><td align=\"center\" style=\"background:linear-gradient(135deg,#ff8a63,#ff4f6c); background-color:#ff6b6e; padding:30px 20px;\"><div style=\"font-size:16px; color:#ffffff;\">FIQUE POR DENTRO DE</div><div style=\"font-size:22px; font-weight:bold; color:#ffffff; margin-top:4px; margin-bottom:18px;\">TODAS AS PROMOÇÕES!</div><table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td align=\"center\" bgcolor=\"#abcf64\" style=\"border-radius:18px; padding:12px 28px;\"><a href=\"#\" style=\"font-size:13px; font-weight:bold; color:#204758; text-decoration:none;\">CLIQUE PARA CONFERIR ›</a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>');
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `id_pessoa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_instituicao` int(10) unsigned NOT NULL DEFAULT '0',
  `nome_pessoa` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `telefone_pessoa` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `celular_pessoa` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ramal_pessoa` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `email_pessoa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `departamento_pessoa` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `dt_nascimento_pessoa` date DEFAULT NULL,
  `recebe_email_pessoa` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 's',
  `dt_nao_recebe_email` datetime NOT NULL,
  `motivo` smallint(6) DEFAULT NULL,
  `bounces` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  UNIQUE KEY `email_pessoa` (`email_pessoa`),
  KEY `id_instituicao` (`id_instituicao`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,1,'Alice Gomes Silva','(11) 2170-8092','(11) 97846-8960','8540','alice.gomes@example.com',NULL,'1992-10-16','s','2026-06-18 10:31:36',NULL,NULL),(2,1,'Amanda Carvalho Rodrigues','(51) 5868-6824','(71) 96207-6687','7291','amanda.carvalho@example.com',NULL,'1979-03-24','s','2026-06-18 10:31:36',NULL,NULL),(3,1,'Amanda Ferreira Soares','(41) 4641-2483','(19) 97664-4197','2988','amanda.ferreira@example.com',NULL,'1984-09-02','s','2026-06-18 10:31:36',NULL,NULL),(4,1,'Amanda Souza Nunes','(51) 4225-6803','(31) 96751-9082','1785','amanda.souza@example.com',NULL,'1984-02-27','s','2026-06-18 10:31:36',NULL,NULL),(5,1,'Ana Andrade Machado','(19) 2987-4955','(51) 96675-1080','8648','ana.andrade@example.com',NULL,'1974-03-11','s','2026-06-18 10:31:36',NULL,NULL),(6,1,'Beatriz Fernandes Pereira','(81) 3909-7622','(19) 96907-1020','4776','beatriz.fernandes@example.com',NULL,'2003-01-17','s','2026-06-18 10:31:36',NULL,NULL),(7,1,'Beatriz Vieira Mendes','(11) 2657-3185','(47) 98265-7923','3704','beatriz.vieira@example.com',NULL,'1981-12-17','s','2026-06-18 10:31:36',NULL,NULL),(8,1,'Bianca Souza Moreira','(21) 2478-4671','(47) 96672-1779','4881','bianca.souza@example.com',NULL,'1999-06-11','s','2026-06-18 10:31:36',NULL,NULL),(9,1,'Bruna Lima Oliveira','(61) 3508-6248','(51) 99642-4605','5575','bruna.lima@example.com',NULL,'1980-05-31','s','2026-06-18 10:31:36',NULL,NULL),(10,1,'Bruna Marques Rodrigues','(71) 2027-2321','(19) 99353-3652','2973','bruna.marques@example.com',NULL,'1966-06-20','s','2026-06-18 10:31:36',NULL,NULL),(11,1,'Bruna Martins Santos','(31) 4884-7902','(21) 99576-4230','4153','bruna.markins@example.com',NULL,'1980-11-19','s','2026-06-18 10:31:36',NULL,NULL),(12,1,'Bruno Almeida Alves','(71) 4220-2599','(21) 99260-5955','4650','bruno.almeida@example.com',NULL,'1977-10-11','s','2026-06-18 10:31:36',NULL,NULL),(13,1,'Bruno Ferreira Souza','(41) 2055-9123','(47) 98587-8947','1451','bruno.ferreira@example.com',NULL,'1974-11-25','s','2026-06-18 10:31:36',NULL,NULL),(14,1,'Camila Costa Freitas','(47) 5616-7661','(21) 97448-9405','3581','camila.costa@example.com',NULL,'1974-08-19','s','2026-06-18 10:31:36',NULL,NULL),(15,1,'Camila Nunes Costa','(47) 2582-4464','(51) 97043-5036','5320','camila.nunes@example.com',NULL,'1985-11-10','s','2026-06-18 10:31:36',NULL,NULL),(16,1,'Camila Ribeiro Ferreira','(11) 3748-1040','(19) 98043-6930','9301','camila.ribeiro@example.com',NULL,'2003-06-12','s','2026-06-18 10:31:36',NULL,NULL),(17,1,'Felipe Machado Gomes','(51) 5349-9951','(51) 99319-9686','3563','felipe.machado@example.com',NULL,'2004-10-08','s','2026-06-18 10:31:36',NULL,NULL),(18,1,'Fernanda Souza Dias','(51) 2003-7334','(47) 96514-6347','4983','fernanda.souza@example.com',NULL,'1973-11-30','s','2026-06-18 10:31:36',NULL,NULL),(19,1,'Gabriel Ribeiro Lopes','(11) 3771-7194','(19) 97276-7540','8629','gabriel.ribeiro@example.com',NULL,'1991-02-15','s','2026-06-18 10:31:36',NULL,NULL),(20,1,'Guilherme Mendes Dias','(41) 3040-8962','(47) 99111-8937','2894','guilherme.mendes@example.com',NULL,'1968-06-02','s','2026-06-18 10:31:36',NULL,NULL),(21,1,'Gustavo Barbosa Nunes','(11) 5180-6383','(31) 99389-1018','9057','gustavo.barbosa1@example.com',NULL,'1967-12-18','s','2026-06-18 10:31:36',NULL,NULL),(22,1,'Gustavo Barbosa Silva','(31) 5304-1772','(81) 97978-7755','5072','gustavo.barbosa@example.com',NULL,'1983-05-27','s','2026-06-18 10:31:36',NULL,NULL),(23,1,'Gustavo Pereira Almeida','(47) 4138-6125','(51) 99869-6153','4612','gustavo.pereira@example.com',NULL,'1998-11-07','s','2026-06-18 10:31:36',NULL,NULL),(24,1,'Julia Rodrigues Moreira','(19) 2957-5633','(41) 99009-9383','9197','julia.rodrigues@example.com',NULL,'2004-12-04','s','2026-06-18 10:31:36',NULL,NULL),(25,1,'Larissa Andrade Moreira','(31) 2194-5639','(71) 98452-7358','5313','larissa.andrade@example.com',NULL,'2000-04-29','s','2026-06-18 10:31:36',NULL,NULL),(26,1,'Larissa Mendes Alves','(81) 3066-5993','(61) 96658-8711','5860','larissa.mendes@example.com',NULL,'2001-03-26','s','2026-06-18 10:31:36',NULL,NULL),(27,1,'Lucas Moreira Marques','(61) 5074-8334','(31) 99486-4605','7192','lucas.moreira@example.com',NULL,'1972-04-05','s','2026-06-18 10:31:36',NULL,NULL),(28,1,'Luiz Mendes Barbosa','(21) 4388-1539','(51) 98175-7693','5208','luiz.mendes@example.com',NULL,'2004-03-21','s','2026-06-18 10:31:36',NULL,NULL),(29,1,'Luiz Ribeiro Alves','(61) 3069-6281','(51) 97381-1171','5537','luiz.ribeiro@example.com',NULL,'1988-05-19','s','2026-06-18 10:31:36',NULL,NULL),(30,1,'Marcos Rocha Santos','(61) 5835-2393','(41) 96305-9116','6366','marcos.rocha@example.com',NULL,'1998-08-12','s','2026-06-18 10:31:36',NULL,NULL),(31,1,'Maria Mendes Andrade','(19) 2341-8836','(31) 99144-1020','6318','maria.mendes@example.com',NULL,'1975-12-24','s','2026-06-18 10:31:36',NULL,NULL),(32,1,'Mateus Almeida Nunes','(71) 5938-2652','(11) 98877-1727','7571','mateus.almeida@example.com',NULL,'1982-12-17','s','2026-06-18 10:31:36',NULL,NULL),(33,1,'Mateus Andrade Lima','(21) 3360-3374','(51) 97224-8920','9835','mateus.andrade@example.com',NULL,'1986-10-12','s','2026-06-18 10:31:36',NULL,NULL),(34,1,'Mateus Gomes Moreira','(47) 5910-3306','(47) 99392-6799','7094','mateus.gomes@example.com',NULL,'1968-05-16','s','2026-06-18 10:31:36',NULL,NULL),(35,1,'Paula Fernandes Mendes','(61) 5452-4666','(71) 96058-2618','3909','paula.fernandes@example.com',NULL,'2000-04-12','s','2026-06-18 10:31:36',NULL,NULL),(36,1,'Paula Moreira Nascimento','(21) 5336-3921','(71) 99181-5335','2540','paula.moreira@example.com',NULL,'1980-10-26','s','2026-06-18 10:31:36',NULL,NULL),(37,1,'Paula Rodrigues Gomes','(47) 5602-7822','(19) 98632-5480','4256','paula.rodrigues@example.com',NULL,'1994-03-13','s','2026-06-18 10:31:36',NULL,NULL),(38,1,'Pedro Silva Machado','(11) 4091-4229','(41) 99899-1636','8963','pedro.silva@example.com',NULL,'1982-01-22','s','2026-06-18 10:31:36',NULL,NULL),(39,1,'Rafael Oliveira Rocha','(41) 3766-7271','(71) 98537-5993','2843','rafael.oliveira@example.com',NULL,'1978-01-05','s','2026-06-18 10:31:36',NULL,NULL),(40,1,'Rafael Santos Dias','(31) 2207-8158','(41) 97899-2218','6931','rafael.santos@example.com',NULL,'1992-10-30','s','2026-06-18 10:31:36',NULL,NULL),(41,1,'Rodrigo Freitas Gomes','(51) 5212-7416','(41) 97714-6462','4913','rodrigo.freitas@example.com',NULL,'1970-11-18','s','2026-06-18 10:31:36',NULL,NULL),(42,1,'Sophia Santos Soares','(11) 4088-9500','(31) 97668-5799','8919','sophia.santos@example.com',NULL,'1986-10-09','s','2026-06-18 10:31:36',NULL,NULL),(43,1,'Thiago Almeida Rodrigues','(47) 4279-1441','(61) 96348-3557','7594','thiago.almeida1@example.com',NULL,'1994-01-29','s','2026-06-18 10:31:36',NULL,NULL),(44,1,'Thiago Almeida Souza','(61) 4099-7410','(11) 96617-6997','8989','thiago.almeida@example.com',NULL,'1988-09-09','s','2026-06-18 10:31:36',NULL,NULL),(45,1,'Thiago Fernandes Almeida','(31) 2302-6893','(47) 97893-2503','1980','thiago.fernandes@example.com',NULL,'2003-12-16','s','2026-06-18 10:31:36',NULL,NULL),(46,1,'Thiago Nascimento Barbosa','(19) 2465-9822','(41) 99487-5474','6823','thiago.nascimento@example.com',NULL,'1977-12-29','s','2026-06-18 10:31:36',NULL,NULL),(47,1,'Thiago Santos Gomes','(41) 4138-8925','(19) 97339-8897','3386','thiago.santos@example.com',NULL,'1993-07-25','s','2026-06-18 10:31:36',NULL,NULL),(48,2,'Alexandre Frota Souto','(11) 3881-5522','(11) 98222-1133','4712','alexandre.frota@example.com',NULL,'1978-03-21','s','2026-06-18 10:32:43',NULL,NULL),(49,2,'Aline Barbosa Oliveira','(81) 3422-8899','(81) 97333-4455','6741','aline.barbosa@example.com',NULL,'1989-10-22','s','2026-06-18 10:32:43',NULL,NULL),(50,2,'André Sanches Malta','(11) 3991-4433','(11) 98333-0011','1562','andre.sanches@example.com',NULL,'1982-04-07','s','2026-06-18 10:32:43',NULL,NULL),(51,2,'Arthur Bernardes Neto','(71) 3281-5522','(71) 98666-5511','8541','arthur.bernardes@example.com',NULL,'1972-07-16','s','2026-06-18 10:32:43',NULL,NULL),(52,2,'Beatriz Amaral Cruz','(47) 3451-7788','(47) 99777-4422','4862','beatriz.amaral@example.com',NULL,'1990-03-31','s','2026-06-18 10:32:43',NULL,NULL),(53,2,'Caio Temer Franco','(51) 3241-7766','(51) 96777-1100','6523','caio.temer@example.com',NULL,'1987-06-28','s','2026-06-18 10:32:43',NULL,NULL),(54,2,'Camila Pires Rezende','(41) 3352-7766','(41) 97444-6655','2589','camila.pires@example.com',NULL,'1997-05-13','s','2026-06-18 10:32:43',NULL,NULL),(55,2,'Carlos Eduardo Vieira','(19) 3231-5566','(19) 96444-5566','1289','carlos.eduardo@example.com',NULL,'1994-06-15','s','2026-06-18 10:32:43',NULL,NULL),(56,2,'Carolina Nogueira Lins','(81) 3441-2233','(81) 97444-3311','5821','carolina.nogueira@example.com',NULL,'1985-12-28','s','2026-06-18 10:32:43',NULL,NULL),(57,2,'Clarice Bernardes','(21) 2561-2211','(21) 99555-1144','7458','clarice.bernardes@example.com',NULL,'1994-12-05','s','2026-06-18 10:32:43',NULL,NULL),(58,2,'Daniel Cavalcanti Luz','(31) 3291-7755','(31) 98444-1100','3214','daniel.cavalcanti@example.com',NULL,'1986-10-06','s','2026-06-18 10:32:43',NULL,NULL),(59,2,'Daniela Dorneles Vaz','(81) 3461-5544','(81) 97555-6644','9512','daniela.dorneles@example.com',NULL,'1988-01-26','s','2026-06-18 10:32:43',NULL,NULL),(60,2,'Diego Carvalho Pinto','(11) 3214-5599','(11) 98765-4321','1024','diego.carvalho@example.com',NULL,'1988-02-14','s','2026-06-18 10:32:43',NULL,NULL),(61,2,'Douglas Richa Frota','(19) 3234-1155','(19) 96888-0022','9652','douglas.richa@example.com',NULL,'1978-11-08','s','2026-06-18 10:32:43',NULL,NULL),(62,2,'Eduardo Junqueira Paz','(71) 3254-1100','(71) 98444-7766','3641','eduardo.junqueira@example.com',NULL,'1974-07-03','s','2026-06-18 10:32:43',NULL,NULL),(63,2,'Fernando Rocha Silva','(51) 3225-1122','(51) 96344-5566','8912','fernando.rocha@example.com',NULL,'1982-07-30','s','2026-06-18 10:32:43',NULL,NULL),(64,2,'Fábio Guimarães Orta','(19) 3251-4477','(19) 96555-2211','9632','fabio.guimaraes@example.com',NULL,'1983-04-17','s','2026-06-18 10:32:43',NULL,NULL),(65,2,'Gabriel Prado Rosa','(19) 3291-2233','(19) 96666-5533','7531','gabriel.prado@example.com',NULL,'1998-09-15','s','2026-06-18 10:32:43',NULL,NULL),(66,2,'Gabriela Costa Machado','(41) 3015-4433','(41) 97122-3344','3621','gabriela.costa@example.com',NULL,'1995-12-11','s','2026-06-18 10:32:43',NULL,NULL),(67,2,'Heloísa Abravanel','(41) 3341-8822','(41) 97666-2211','2145','heloisa.abravanel@example.com',NULL,'1993-01-09','s','2026-06-18 10:32:43',NULL,NULL),(68,2,'Hugo Linhares Malta','(71) 3261-8833','(71) 98555-9944','7410','hugo.linhares@example.com',NULL,'1971-03-04','s','2026-06-18 10:32:43',NULL,NULL),(69,2,'Igor Quadros Kubits','(11) 3771-8844','(11) 98444-2255','3691','igor.quadros@example.com',NULL,'1980-09-18','s','2026-06-18 10:32:43',NULL,NULL),(70,2,'Isabela Neves Caldas','(61) 3381-4411','(61) 99444-8855','3254','isabela.neves@example.com',NULL,'1992-10-16','s','2026-06-18 10:32:43',NULL,NULL),(71,2,'Juliana Martins Fonseca','(21) 2445-3322','(21) 99222-8877','8521','juliana.martins@example.com',NULL,'1993-08-19','s','2026-06-18 10:32:43',NULL,NULL),(72,2,'Jéssica Alckmin','(47) 3482-9911','(47) 99999-2233','7415','jessica.alckmin@example.com',NULL,'1991-02-10','s','2026-06-18 10:32:43',NULL,NULL),(73,2,'Leonardo Moura Diniz','(71) 3233-5566','(71) 98333-4422','1478','leonardo.moura@example.com',NULL,'1976-06-10','s','2026-06-18 10:32:43',NULL,NULL),(74,2,'Letícia Borba Viana','(21) 2511-4433','(21) 99333-2211','8965','leticia.borba@example.com',NULL,'1996-11-14','s','2026-06-18 10:32:43',NULL,NULL),(75,2,'Lorena Azeredo Rios','(81) 3481-2255','(81) 97666-8833','9631','lorena.azeredo@example.com',NULL,'1996-08-25','s','2026-06-18 10:32:43',NULL,NULL),(76,2,'Lucas Maluf Paes','(19) 3213-9988','(19) 96777-4411','1452','lucas.maluf@example.com',NULL,'1983-02-11','s','2026-06-18 10:32:43',NULL,NULL),(77,2,'Marcelo Ramos Cardoso','(11) 3662-4411','(11) 98111-9988','4123','marcelo.ramos@example.com',NULL,'1981-11-27','s','2026-06-18 10:32:43',NULL,NULL),(78,2,'Marcos Valle Fontes','(31) 3212-5544','(31) 98555-3344','9856','marcos.valle@example.com',NULL,'1985-05-13','s','2026-06-18 10:32:43',NULL,NULL),(79,2,'Mariana Souza Lima','(21) 2533-8877','(21) 99888-7766','4521','mariana.souza@example.com',NULL,'1991-05-23','s','2026-06-18 10:32:43',NULL,NULL),(80,2,'Milena Campos Pitta','(81) 3491-4477','(81) 97777-1199','2563','milena.campos@example.com',NULL,'1995-03-24','s','2026-06-18 10:32:43',NULL,NULL),(81,2,'Monique Braga Melo','(41) 3322-6644','(41) 97555-0099','7452','monique.braga@example.com',NULL,'1994-02-24','s','2026-06-18 10:32:43',NULL,NULL),(82,2,'Murilo Goulart Flores','(51) 3262-4400','(51) 96888-2211','3625','murilo.goulart@example.com',NULL,'1985-10-27','s','2026-06-18 10:32:43',NULL,NULL),(83,2,'Mônica Veloso Dias','(21) 2541-9988','(21) 99444-0022','3541','monica.veloso@example.com',NULL,'1977-11-22','s','2026-06-18 10:32:43',NULL,NULL),(84,2,'Natália Paschoal','(41) 3362-5533','(41) 97777-3366','9852','natalia.paschoal@example.com',NULL,'1991-05-12','s','2026-06-18 10:32:43',NULL,NULL),(85,2,'Otávio Maciel Vargas','(31) 3242-7711','(31) 98666-4422','1254','otavio.maciel@example.com',NULL,'1969-04-29','s','2026-06-18 10:32:43',NULL,NULL),(86,2,'Patricia Mendes Ribeiro','(61) 3344-7788','(61) 99111-2233','5410','patricia.mendes@example.com',NULL,'1980-04-18','s','2026-06-18 10:32:43',NULL,NULL),(87,2,'Priscila Meireles Basto','(47) 3421-8899','(47) 99666-1122','2541','priscila.meireles@example.com',NULL,'1992-07-09','s','2026-06-18 10:32:43',NULL,NULL),(88,2,'Renato Correia Sales','(31) 3271-8844','(31) 98333-7766','6341','renato.correia@example.com',NULL,'1979-02-04','s','2026-06-18 10:32:43',NULL,NULL),(89,2,'Ricardo Alves Gomes','(31) 3421-9900','(31) 98451-2233','7856','ricardo.alves@example.com',NULL,'1975-09-02','s','2026-06-18 10:32:43',NULL,NULL),(90,2,'Roberto Almeida Santos','(71) 3245-6677','(71) 98222-3344','2369','roberto.almeida@example.com',NULL,'1973-01-05','s','2026-06-18 10:32:43',NULL,NULL),(91,2,'Rodrigo Cunha Peixoto','(51) 3211-9933','(51) 96555-4433','7412','rodrigo.cunha@example.com',NULL,'1984-09-25','s','2026-06-18 10:32:43',NULL,NULL),(92,2,'Sabrina Arantes Reis','(61) 3361-9922','(61) 99333-8877','8520','sabrina.arantes@example.com',NULL,'1991-05-19','s','2026-06-18 10:32:43',NULL,NULL),(93,2,'Tatiane Antunes Frota','(61) 3321-4455','(61) 99222-5544','3698','tatiane.antunes@example.com',NULL,'1990-01-01','s','2026-06-18 10:32:43',NULL,NULL),(94,2,'Thiago Farias Neto','(51) 3234-8811','(51) 96666-9988','1593','thiago.farias@example.com',NULL,'1989-08-12','s','2026-06-18 10:32:43',NULL,NULL),(95,2,'Vanessa Teixeira Nunes','(47) 3433-2211','(47) 99555-6677','9034','vanessa.teixeira@example.com',NULL,'1987-03-08','s','2026-06-18 10:32:43',NULL,NULL),(96,2,'Viviane Sarney Collor','(47) 3462-1133','(47) 99888-3355','8523','viviane.sarney@example.com',NULL,'1976-07-20','s','2026-06-18 10:32:43',NULL,NULL),(97,2,'Érica Dornelles','(61) 3391-2277','(61) 99555-6611','1423','erica.dornelles@example.com',NULL,'1984-01-03','s','2026-06-18 10:32:43',NULL,NULL),(98,0,'Aline Barbosa Santos','(61) 3381-3388','(61) 99933-2233','8965','aline.barbosa1@example.com',NULL,'1988-11-23','s','2026-06-18 10:34:22',NULL,NULL),(99,0,'Arthur Junqueira Paz','(11) 3911-8833','(11) 98366-6677','2369','arthur.junqueira@example.com',NULL,'1971-03-22','s','2026-06-18 10:34:22',NULL,NULL),(100,0,'Augusto Meireles Leal','(11) 3622-5599','(11) 98144-3344','1254','augusto.meireles@example.com',NULL,'1979-02-25','s','2026-06-18 10:34:22',NULL,NULL),(101,0,'Beatriz Alckmin','(21) 2591-3344','(21) 99366-5566','2563','beatriz.alckmin@example.com',NULL,'1994-07-14','s','2026-06-18 10:34:22',NULL,NULL),(102,0,'Breno Fontes Leitão','(19) 3251-3366','(19) 96811-1122','3698','breno.fontes@example.com',NULL,'1983-05-15','s','2026-06-18 10:34:22',NULL,NULL),(103,0,'Camila Amaral Cruz','(81) 3491-5500','(81) 97933-2233','3621','camila.amaral@example.com',NULL,'1988-05-24','s','2026-06-18 10:34:22',NULL,NULL),(104,0,'Carlos Eduardo Vieira','(51) 3271-2277','(51) 96822-1122','4712','carlos.eduardo1@example.com',NULL,'1994-06-17','s','2026-06-18 10:34:22',NULL,NULL),(105,0,'Carolina Nogueira Pais','(61) 3323-3388','(61) 99822-1122','8521','carolina.nogueira1@example.com',NULL,'1984-07-06','s','2026-06-18 10:34:22',NULL,NULL),(106,0,'Caroline Malta Torres','(61) 3388-1155','(61) 99577-8899','9635','caroline.malta@example.com',NULL,'1989-10-12','s','2026-06-18 10:34:22',NULL,NULL),(107,0,'Cecilia Paschoal','(81) 3455-9988','(81) 97822-1122','8523','cecilia.paschoal@example.com',NULL,'1982-04-13','s','2026-06-18 10:34:22',NULL,NULL),(108,0,'Daniel Maciel Frota','(31) 3252-8855','(31) 98477-6677','9652','daniel.maciel@example.com',NULL,'1972-02-07','s','2026-06-18 10:34:22',NULL,NULL),(109,0,'Debora Junqueira Sales','(21) 2465-4411','(21) 99255-4455','9852','debora.junqueira@example.com',NULL,'1986-09-11','s','2026-06-18 10:34:22',NULL,NULL),(110,0,'Douglas Cavalcanti','(31) 3233-0055','(31) 98588-8899','1289','douglas.cavalcanti@example.com',NULL,'1977-08-30','s','2026-06-18 10:34:22',NULL,NULL),(111,0,'Erick Temer Vargas','(51) 3292-2277','(51) 96699-8899','1024','erick.temer@example.com',NULL,'1985-04-11','s','2026-06-18 10:34:22',NULL,NULL),(112,0,'Fabio Guimaraes Neto','(51) 3213-2277','(51) 96711-0011','4123','fabio.guimaraes1@example.com',NULL,'1982-05-25','s','2026-06-18 10:34:22',NULL,NULL),(113,0,'Felipe Ornelas Ramos','(71) 3211-5588','(71) 98688-9900','2514','felipe.ornelas@example.com',NULL,'1975-04-04','s','2026-06-18 10:34:22',NULL,NULL),(114,0,'Fernando Rocha Gomes','(19) 3221-6611','(19) 96366-5566','1593','fernando.rocha1@example.com',NULL,'1983-09-26','s','2026-06-18 10:34:22',NULL,NULL),(115,0,'Gabriela Costa Rocha','(47) 3432-7722','(47) 99477-7788','8520','gabriela.costa1@example.com',NULL,'1994-12-10','s','2026-06-18 10:34:22',NULL,NULL),(116,0,'Guilherme Aguiar Portela','(11) 3145-8822','(11) 98122-3344','4512','guilherme.aguiar@example.com',NULL,'1987-03-14','s','2026-06-18 10:34:22',NULL,NULL),(117,0,'Isabela Dorneles Vaz','(47) 3422-7722','(47) 99255-5566','5410','isabela.dorneles@example.com',NULL,'1991-01-09','s','2026-06-18 10:34:22',NULL,NULL),(118,0,'Isadora Valente Rios','(41) 3315-6622','(41) 97355-6677','8954','isadora.valente@example.com',NULL,'1996-01-19','s','2026-06-18 10:34:22',NULL,NULL),(119,0,'Jessica Borba Viana','(41) 3353-1166','(41) 97699-9900','9034','jessica.borba@example.com',NULL,'1989-11-12','s','2026-06-18 10:34:22',NULL,NULL),(120,0,'Juliana Martins Ramos','(21) 2531-9944','(21) 99588-7788','5821','juliana.martins1@example.com',NULL,'1993-01-21','s','2026-06-18 10:34:22',NULL,NULL),(121,0,'Larissa Viana Lins','(81) 3433-2277','(81) 97799-0011','8547','larissa.viana@example.com',NULL,'1993-07-27','s','2026-06-18 10:34:22',NULL,NULL),(122,0,'Leandro Veloso Falcão','(71) 3244-1122','(71) 98711-9900','3691','leandro.veloso@example.com',NULL,'1973-10-31','s','2026-06-18 10:34:22',NULL,NULL),(123,0,'Leonardo Moura Diniz','(71) 3235-4499','(71) 98933-2233','6341','leonardo.moura1@example.com',NULL,'1976-10-18','s','2026-06-18 10:34:22',NULL,NULL),(124,0,'Leticia Collor Sarney','(47) 3481-3311','(47) 99144-3344','1423','leticia.collor@example.com',NULL,'1978-06-02','s','2026-06-18 10:34:22',NULL,NULL),(125,0,'Lorena Abravanel Reis','(41) 3372-1166','(41) 97588-7788','7415','lorena.abravanel@example.com',NULL,'1993-10-26','s','2026-06-18 10:34:22',NULL,NULL),(126,0,'Lucas Prado Rosa','(19) 3211-6611','(19) 96144-4455','8912','lucas.prado@example.com',NULL,'1998-08-16','s','2026-06-18 10:34:22',NULL,NULL),(127,0,'Manuela Menezes Frota','(21) 2514-9966','(21) 99133-4455','7821','manuela.menezes@example.com',NULL,'1992-08-22','s','2026-06-18 10:34:22',NULL,NULL),(128,0,'Marcelo Ramos Cardoso','(31) 3241-0055','(31) 98699-8899','9632','marcelo.ramos1@example.com',NULL,'1979-10-29','s','2026-06-18 10:34:22',NULL,NULL),(129,0,'Matheus Dantas Guedes','(51) 3266-4433','(51) 96466-7788','1425','matheus.dantas@example.com',NULL,'1981-06-30','s','2026-06-18 10:34:22',NULL,NULL),(130,0,'Milena Arantes Fontes','(21) 2522-9944','(21) 99477-7788','6741','milena.arantes@example.com',NULL,'1996-02-15','s','2026-06-18 10:34:22',NULL,NULL),(131,0,'Murilo Goulart Campos','(19) 3291-4477','(19) 96933-2233','7458','murilo.goulart1@example.com',NULL,'1985-11-28','s','2026-06-18 10:34:22',NULL,NULL),(132,0,'Nathalia Fontes Luz','(61) 3341-3388','(61) 99711-0011','4521','nathalia.fontes@example.com',NULL,'1990-09-19','s','2026-06-18 10:34:22',NULL,NULL),(133,0,'Nicole Bernardes Peixoto','(47) 3462-4411','(47) 99922-2233','7410','nicole.bernardes@example.com',NULL,'1990-12-08','s','2026-06-18 10:34:22',NULL,NULL),(134,0,'Patricia Mendes Lima','(81) 3411-5500','(81) 97255-4455','7452','patricia.mendes1@example.com',NULL,'1981-05-19','s','2026-06-18 10:34:22',NULL,NULL),(135,0,'Pedro Sanches Malta','(71) 3261-4499','(71) 98822-1122','7856','pedro.sanches@example.com',NULL,'1974-01-03','s','2026-06-18 10:34:22',NULL,NULL),(136,0,'Priscila Rezende Peixe','(47) 3473-7722','(47) 99366-5566','3698','priscila.rezende@example.com',NULL,'1995-04-14','s','2026-06-18 10:34:22',NULL,NULL),(137,0,'Rebeca Dornelles','(61) 3311-6655','(61) 99699-8899','2541','rebeca.dornelles@example.com',NULL,'1991-05-17','s','2026-06-18 10:34:22',NULL,NULL),(138,0,'Renato Correia Sales','(11) 3811-8833','(11) 98477-6677','1478','renato.correia1@example.com',NULL,'1980-05-03','s','2026-06-18 10:34:22',NULL,NULL),(139,0,'Roberto Almeida Silva','(71) 3291-4499','(71) 98144-3344','3214','roberto.almeida1@example.com',NULL,'1972-02-02','s','2026-06-18 10:34:22',NULL,NULL),(140,0,'Rodrigo Cunha Basto','(19) 3263-6611','(19) 96255-4455','7412','rodrigo.cunha1@example.com',NULL,'1983-09-27','s','2026-06-18 10:34:22',NULL,NULL),(141,0,'Samuel Quadros Neto','(11) 3741-2255','(11) 98255-4455','8541','samuel.quadros@example.com',NULL,'1980-12-20','s','2026-06-18 10:34:22',NULL,NULL),(142,0,'Stefany Arantes Neves','(41) 3342-8833','(41) 97477-6677','4589','stefany.arantes@example.com',NULL,'1997-07-23','s','2026-06-18 10:34:22',NULL,NULL),(143,0,'Tatiane Antunes Frota','(81) 3443-5500','(81) 97144-3344','2589','tatiane.antunes1@example.com',NULL,'1992-03-01','s','2026-06-18 10:34:22',NULL,NULL),(144,0,'Thiago Albuquerque','(31) 3245-7711','(31) 98244-5566','3612','thiago.albuquerque@example.com',NULL,'1984-11-05','s','2026-06-18 10:34:22',NULL,NULL),(145,0,'Vanessa Teixeira Lins','(41) 3361-1166','(41) 97711-0011','2541','vanessa.teixeira1@example.com',NULL,'1986-04-08','s','2026-06-18 10:34:22',NULL,NULL),(146,0,'Vinicius Sampaio Cruz','(31) 3281-9922','(31) 98366-5566','6321','vinicius.sampaio@example.com',NULL,'1995-01-18','s','2026-06-18 10:34:22',NULL,NULL),(147,0,'Yago Linhares Castelo','(51) 3222-7744','(51) 96588-7788','1574','yago.linhares@example.com',NULL,'1988-03-09','s','2026-06-18 10:34:22',NULL,NULL);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentos`
--

DROP TABLE IF EXISTS `segmentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segmentos` (
  `id_segmento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_segmento` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_segmento`),
  UNIQUE KEY `nome_segmento` (`nome_segmento`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentos`
--

LOCK TABLES `segmentos` WRITE;
/*!40000 ALTER TABLE `segmentos` DISABLE KEYS */;
INSERT INTO `segmentos` VALUES (1,'Textil'),(2,'Movéis'),(3,'Geral');
/*!40000 ALTER TABLE `segmentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentos_instituicoes`
--

DROP TABLE IF EXISTS `segmentos_instituicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segmentos_instituicoes` (
  `id_segmento` int(10) unsigned NOT NULL DEFAULT '0',
  `id_instituicao` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_segmento`,`id_instituicao`),
  KEY `id_segmento` (`id_segmento`),
  KEY `id_instituicao` (`id_instituicao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentos_instituicoes`
--

LOCK TABLES `segmentos_instituicoes` WRITE;
/*!40000 ALTER TABLE `segmentos_instituicoes` DISABLE KEYS */;
INSERT INTO `segmentos_instituicoes` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `segmentos_instituicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentos_malas`
--

DROP TABLE IF EXISTS `segmentos_malas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segmentos_malas` (
  `id_segmento` int(10) unsigned NOT NULL DEFAULT '0',
  `id_mala` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_segmento`,`id_mala`),
  KEY `id_segmento` (`id_segmento`),
  KEY `id_mala` (`id_mala`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentos_malas`
--

LOCK TABLES `segmentos_malas` WRITE;
/*!40000 ALTER TABLE `segmentos_malas` DISABLE KEYS */;
INSERT INTO `segmentos_malas` VALUES (1,1),(1,2),(2,1),(3,1),(3,2);
/*!40000 ALTER TABLE `segmentos_malas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentos_pessoas`
--

DROP TABLE IF EXISTS `segmentos_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segmentos_pessoas` (
  `id_segmento` int(10) unsigned NOT NULL DEFAULT '0',
  `id_pessoa` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_segmento`,`id_pessoa`),
  KEY `id_segmento` (`id_segmento`),
  KEY `id_pessoa` (`id_pessoa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentos_pessoas`
--

LOCK TABLES `segmentos_pessoas` WRITE;
/*!40000 ALTER TABLE `segmentos_pessoas` DISABLE KEYS */;
INSERT INTO `segmentos_pessoas` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74),(2,75),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,97),(3,98),(3,99),(3,100),(3,101),(3,102),(3,103),(3,104),(3,105),(3,106),(3,107),(3,108),(3,109),(3,110),(3,111),(3,112),(3,113),(3,114),(3,115),(3,116),(3,117),(3,118),(3,119),(3,120),(3,121),(3,122),(3,123),(3,124),(3,125),(3,126),(3,127),(3,128),(3,129),(3,130),(3,131),(3,132),(3,133),(3,134),(3,135),(3,136),(3,137),(3,138),(3,139),(3,140),(3,141),(3,142),(3,143),(3,144),(3,145),(3,146),(3,147);
/*!40000 ALTER TABLE `segmentos_pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-18 13:37:32
