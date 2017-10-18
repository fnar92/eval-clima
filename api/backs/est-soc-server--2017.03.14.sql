SET NAMES 'utf8';

DROP TABLE IF EXISTS cat_ciclo_escolar;

CREATE TABLE `cat_ciclo_escolar` (
  `id_ciclo_escolar` int(11) NOT NULL AUTO_INCREMENT,
  `ciclo_escolar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_ciclo_escolar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO cat_ciclo_escolar VALUES('1','2015-2016','0');
INSERT INTO cat_ciclo_escolar VALUES('2','2016-2017','0');
INSERT INTO cat_ciclo_escolar VALUES('3','2017-2018','1');



DROP TABLE IF EXISTS cat_estatus_estudios;

CREATE TABLE `cat_estatus_estudios` (
  `id_estatus` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO cat_estatus_estudios VALUES('1','Recibido');
INSERT INTO cat_estatus_estudios VALUES('2','Asignado');
INSERT INTO cat_estatus_estudios VALUES('3','Agendado');
INSERT INTO cat_estatus_estudios VALUES('4','Reagendado');
INSERT INTO cat_estatus_estudios VALUES('5','Capturado');
INSERT INTO cat_estatus_estudios VALUES('6','En revision');
INSERT INTO cat_estatus_estudios VALUES('7','Terminado');
INSERT INTO cat_estatus_estudios VALUES('8','Cancelado');
INSERT INTO cat_estatus_estudios VALUES('9','Cancelo entrevista');



DROP TABLE IF EXISTS comentario_familia;

CREATE TABLE `comentario_familia` (
  `id_comentario_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_comentario_familia`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO comentario_familia VALUES('5','450','7','La familia está pagando crédito hipotecario por una casa adquirida en SLP.','2017-KP-7','GENERAL');
INSERT INTO comentario_familia VALUES('6','450','7','En el formato anotaron los datos de la casa de la que están pagando y el importe de la misma.','2017-KP-7','GENERAL');
INSERT INTO comentario_familia VALUES('7','450','7','El hermano menor está bajo tratamiento médico por problemas respiratorios crónico.','2017-KP-7','GENERAL');
INSERT INTO comentario_familia VALUES('8','450','7','Se observa un gasto elevado en el rubro de alimentación.','2017-KP-7','GENERAL');
INSERT INTO comentario_familia VALUES('9','1','1','Agendado para mañana','2017-CEE-1','ACEPTO_ENTREVISTA');



DROP TABLE IF EXISTS dependiente_familia;

CREATE TABLE `dependiente_familia` (
  `id_dependiente_economico` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `parentesco` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_dependiente_economico`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;




DROP TABLE IF EXISTS documentos_familia;

CREATE TABLE `documentos_familia` (
  `id_documento_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `carta_no_adeudo` tinyint(2) DEFAULT '0',
  `firma_reglamento` tinyint(2) DEFAULT '0',
  `nomina_carta` tinyint(2) DEFAULT '0',
  `poliza` tinyint(2) DEFAULT '0',
  `estado_cuenta` tinyint(2) DEFAULT '0',
  `recibos_renta` tinyint(2) DEFAULT '0',
  `facturas_hospital` tinyint(2) DEFAULT '0',
  `comprobante_finiquito` tinyint(2) DEFAULT '0',
  `demandas_judiciales` tinyint(2) DEFAULT '0',
  `servicios` tinyint(2) DEFAULT '0',
  `pagos_credito_hipo` tinyint(2) DEFAULT '0',
  `pagos_credito_auto` tinyint(2) DEFAULT '0',
  `otros` tinyint(2) DEFAULT '0',
  `comentarios` text,
  PRIMARY KEY (`id_documento_familia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;




DROP TABLE IF EXISTS egresos_familia;

CREATE TABLE `egresos_familia` (
  `id_egreso_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `alimentacion_despensa` decimal(65,2) DEFAULT NULL,
  `renta` decimal(65,2) DEFAULT NULL,
  `credito_hipotecario` decimal(65,2) DEFAULT NULL,
  `colegiaturas` decimal(65,2) DEFAULT NULL,
  `otras_colegiaturas` decimal(65,2) DEFAULT NULL,
  `clases_particulares` decimal(65,2) DEFAULT NULL,
  `agua` decimal(65,2) DEFAULT NULL,
  `luz` decimal(65,2) DEFAULT NULL,
  `telefono` decimal(65,2) DEFAULT NULL,
  `servicio_domestico` decimal(65,2) DEFAULT NULL,
  `gas` decimal(65,2) DEFAULT NULL,
  `otros` decimal(65,2) DEFAULT NULL,
  `gasolina` decimal(65,2) DEFAULT NULL,
  `credito_auto` decimal(65,2) DEFAULT NULL,
  `pago_tdc_mensual` decimal(65,2) DEFAULT NULL,
  `saldo_tdc` decimal(65,2) DEFAULT NULL,
  `creditos_comerciales` decimal(65,2) DEFAULT NULL,
  `vestido_calzado` decimal(65,2) DEFAULT NULL,
  `medico_medicinas` decimal(65,2) DEFAULT NULL,
  `diversion_entretenimiento` decimal(65,2) DEFAULT NULL,
  `clubes_deportivos` decimal(65,2) DEFAULT NULL,
  `seguros` decimal(65,2) DEFAULT NULL,
  `vacaciones` decimal(65,2) DEFAULT NULL,
  `otros2` decimal(65,2) DEFAULT NULL,
  `total_servicios` decimal(65,2) DEFAULT NULL,
  `comentarios` text,
  `total_egresos` decimal(65,2) DEFAULT NULL,
  `diferencia_egre_ingre` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`id_egreso_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO egresos_familia VALUES('1','450','7','2017-KP-7','6000.00','0.00','0.00','5912.00','0.00','0.00','400.00','200.00','389.00','800.00','400.00','800.00','4001.00','0.00','3500.00','72000.00','0.00','300.00','1500.00','500.00','0.00','3983.33','0.00','9183.00','1389.00','Otros gastos se refiere a crédito hipotecario ($5689,95), inscripciones, vacaciones, tenencias, etc. ($3493.93)','37868.33','-2368.33');
INSERT INTO egresos_familia VALUES('2','1','1','2017-CEE-1','6000.00','0.00','0.00','13600.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','19600.00','20285.00');



DROP TABLE IF EXISTS estudio;

CREATE TABLE `estudio` (
  `id_estudio` int(11) NOT NULL AUTO_INCREMENT,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `id_institucion_solicito` varchar(255) DEFAULT NULL,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_usuario_asignado` varchar(255) DEFAULT '0',
  `id_usuario_asigno` varchar(255) DEFAULT '0',
  `id_estatus_estudio` varchar(255) DEFAULT NULL,
  `pago` varchar(255) DEFAULT NULL,
  `num_recibo` varchar(255) DEFAULT NULL,
  `fecha_estudio` date DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `institucion_familia` varchar(255) DEFAULT NULL,
  `institucion_solicito` varchar(255) DEFAULT NULL,
  `fecha_entrevista` date DEFAULT NULL,
  `ciclo_escolar` varchar(255) DEFAULT NULL,
  `fecha_reagendar_entrevista` date DEFAULT NULL,
  `sync` int(11) DEFAULT '0',
  PRIMARY KEY (`id_estudio`)
) ENGINE=MyISAM AUTO_INCREMENT=379 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO estudio VALUES('1','2017-CEE-1','3','1','6','1','3','','','2017-03-01','2017-03-13 22:03:10','CEE','KP','2017-03-17','2017-2018','','0');
INSERT INTO estudio VALUES('2','2017-CEE-2','3','20','0','0','1','','','2017-03-02','2017-03-02 11:15:50','CEE','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('3','2017-KP-3','3','474','0','0','1','','','2017-03-02','2017-03-02 11:35:55','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('4','2017-KP-4','3','479','0','0','1','','','2017-03-02','2017-03-02 11:44:21','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('5','2017-KP-5','3','550','0','0','1','','','2017-03-02','2017-03-02 11:49:12','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('6','2017-CET-6','3','402','0','0','1','','','2017-03-02','2017-03-02 12:03:15','CET','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('7','2017-KP-7','2','450','6','1','6','','','2017-03-02','2017-03-02 12:29:52','KP','CET','2017-02-21','2017-2018','','0');
INSERT INTO estudio VALUES('8','2017-CET-8','2','164','0','0','1','','','2017-03-06','2017-03-06 10:54:53','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('9','2017-CET-9','2','165','0','0','1','','','2017-03-06','2017-03-06 11:02:41','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('10','2017-CET-10','2','172','0','0','1','','','2017-03-06','2017-03-06 11:05:08','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('11','2017-CET-11','2','177','0','0','1','','','2017-03-06','2017-03-06 11:08:09','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('12','2017-CET-12','2','174','0','0','1','','','2017-03-06','2017-03-06 11:11:23','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('13','2017-CET-13','2','204','0','0','1','','','2017-03-06','2017-03-06 11:20:01','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('14','2017-CET-14','2','277','0','0','1','','','2017-03-06','2017-03-06 11:23:31','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('15','2017-CET-15','2','234','0','0','1','','','2017-03-06','2017-03-06 11:26:12','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('16','2017-KP-16','2','558','0','0','1','','','2017-03-06','2017-03-06 11:30:30','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('17','2017-CET-17','2','187','0','0','1','','','2017-03-06','2017-03-06 11:42:34','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('18','2017-KP-18','2','444','0','0','1','','','2017-03-06','2017-03-06 11:45:45','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('19','2017-CET-19','2','382','0','0','1','','','2017-03-06','2017-03-06 11:48:24','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('20','2017-KP-20','2','525','0','0','1','','','2017-03-06','2017-03-06 11:51:06','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('21','2017-CET-21','2','168','0','0','1','','','2017-03-06','2017-03-06 11:53:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('22','2017-CET-22','2','176','0','0','1','','','2017-03-06','2017-03-06 11:58:38','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('23','2017-CET-23','2','215','0','0','1','','','2017-03-06','2017-03-06 12:03:10','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('24','2017-CET-24','2','170','0','0','1','','','2017-03-06','2017-03-06 12:05:05','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('25','2017-CET-25','2','299','0','0','1','','','2017-03-06','2017-03-06 12:14:07','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('26','2017-CET-26','2','212','0','0','1','','','2017-03-06','2017-03-06 12:20:13','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('27','2017-CET-27','2','244','0','0','1','','','2017-03-06','2017-03-06 12:23:48','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('28','2017-CET-28','2','208','0','0','1','','','2017-03-06','2017-03-06 12:36:43','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('29','2017-CET-29','2','210','0','0','1','','','2017-03-06','2017-03-06 12:41:52','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('30','2017-CET-30','2','240','0','0','1','','','2017-03-06','2017-03-06 12:44:50','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('31','2017-KP-31','2','442','0','0','1','','','2017-03-06','2017-03-06 12:48:44','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('32','2017-NICET-32','2','507','0','0','1','','','2017-03-06','2017-03-06 12:53:02','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('33','2017-CET-33','2','401','0','0','1','','','2017-03-06','2017-03-06 12:58:58','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('34','2017-CET-34','2','325','0','0','1','','','2017-03-06','2017-03-06 13:01:14','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('35','2017-NICET-35','2','510','0','0','1','','','2017-03-06','2017-03-06 13:03:22','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('36','2017-CET-36','2','183','0','0','1','','','2017-03-06','2017-03-06 13:05:16','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('37','2017-CET-37','2','284','0','0','1','','','2017-03-06','2017-03-06 13:16:43','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('38','2017-NICET-38','2','505','0','0','1','','','2017-03-06','2017-03-06 13:19:51','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('39','2017-CET-39','2','254','0','0','1','','','2017-03-06','2017-03-06 13:21:32','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('40','2017-CET-40','2','205','0','0','1','','','2017-03-06','2017-03-06 13:24:12','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('41','2017-CET-41','2','430','0','0','1','','','2017-03-06','2017-03-06 13:31:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('42','2017-CET-42','2','274','0','0','1','','','2017-03-06','2017-03-06 13:33:28','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('43','2017-CET-43','2','169','0','0','1','','','2017-03-06','2017-03-06 13:35:49','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('44','2017-CET-44','2','294','0','0','1','','','2017-03-06','2017-03-06 13:41:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('45','2017-NICET-45','2','501','0','0','1','','','2017-03-06','2017-03-06 13:43:08','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('46','2017-CET-46','2','361','0','0','1','','','2017-03-06','2017-03-06 13:45:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('47','2017-CET-47','2','243','0','0','1','','','2017-03-06','2017-03-06 13:49:00','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('48','2017-KP-48','2','558','0','0','1','','','2017-03-07','2017-03-07 09:07:43','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('49','2017-KP-49','2','444','0','0','1','','','2017-03-07','2017-03-07 09:09:38','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('50','2017-CET-50','2','382','0','0','1','','','2017-03-07','2017-03-07 09:10:33','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('51','2017-CET-51','2','176','0','0','1','','','2017-03-07','2017-03-07 09:11:29','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('52','2017-KP-52','2','486','0','0','1','','','2017-03-07','2017-03-07 09:17:54','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('53','2017-CET-53','2','189','0','0','1','','','2017-03-07','2017-03-07 09:23:12','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('54','2017-KP-54','2','447','0','0','1','','','2017-03-07','2017-03-07 09:27:17','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('55','2017-CET-55','2','252','0','0','1','','','2017-03-07','2017-03-07 09:31:11','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('56','2017-CET-56','2','296','0','0','1','','','2017-03-07','2017-03-07 09:35:26','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('57','2017-CET-57','2','199','0','0','1','','','2017-03-07','2017-03-07 09:40:12','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('58','2017-CET-58','2','233','0','0','1','','','2017-03-07','2017-03-07 09:41:49','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('59','2017-CET-59','2','350','0','0','1','','','2017-03-07','2017-03-07 09:48:25','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('60','2017-CET-60','2','251','0','0','1','','','2017-03-07','2017-03-07 09:50:46','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('61','2017-CEE-61','2','48','0','0','1','','','2017-03-07','2017-03-07 09:53:09','CEE','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('62','2017-CET-62','2','220','0','0','1','','','2017-03-07','2017-03-07 10:08:16','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('63','2017-CET-63','2','238','0','0','1','','','2017-03-07','2017-03-07 10:10:33','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('64','2017-CET-64','2','258','0','0','1','','','2017-03-07','2017-03-07 10:15:42','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('65','2017-CET-65','2','336','0','0','1','','','2017-03-07','2017-03-07 10:21:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('66','2017-CET-66','2','308','0','0','1','','','2017-03-07','2017-03-07 10:24:54','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('67','2017-CET-67','2','222','0','0','1','','','2017-03-07','2017-03-07 10:50:36','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('68','2017-CET-68','2','227','0','0','1','','','2017-03-07','2017-03-07 10:52:45','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('69','2017-CET-69','2','167','0','0','1','','','2017-03-07','2017-03-07 10:54:25','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('70','2017-CET-70','2','230','0','0','1','','','2017-03-07','2017-03-07 10:58:36','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('71','2017-CET-71','2','391','0','0','1','','','2017-03-07','2017-03-07 11:00:39','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('72','2017-CET-72','2','201','0','0','1','','','2017-03-07','2017-03-07 11:04:47','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('73','2017-CET-73','2','283','0','0','1','','','2017-03-07','2017-03-07 11:07:11','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('74','2017-CET-74','2','332','0','0','1','','','2017-03-07','2017-03-07 11:09:09','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('75','2017-CET-75','2','202','0','0','1','','','2017-03-07','2017-03-07 11:10:41','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('76','2017-KP-76','2','534','0','0','1','','','2017-03-07','2017-03-07 11:12:48','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('77','2017-CET-77','2','175','0','0','1','','','2017-03-07','2017-03-07 11:14:47','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('78','2017-CET-78','2','297','0','0','1','','','2017-03-07','2017-03-07 11:18:01','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('79','2017-KP-79','2','481','0','0','1','','','2017-03-07','2017-03-07 11:20:05','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('80','2017-CET-80','2','344','0','0','1','','','2017-03-07','2017-03-07 11:35:14','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('81','2017-CET-81','2','245','0','0','1','','','2017-03-07','2017-03-07 11:37:30','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('82','2017-CET-82','2','190','0','0','1','','','2017-03-07','2017-03-07 11:38:53','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('83','2017-CET-83','2','195','0','0','1','','','2017-03-07','2017-03-07 11:40:59','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('84','2017-CET-84','2','330','0','0','1','','','2017-03-07','2017-03-07 11:42:48','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('85','2017-CET-85','2','345','0','0','1','','','2017-03-07','2017-03-07 11:44:55','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('86','2017-CET-86','2','200','0','0','1','','','2017-03-07','2017-03-07 11:46:41','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('87','2017-CET-87','2','257','0','0','1','','','2017-03-07','2017-03-07 11:49:41','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('88','2017-CET-88','2','353','0','0','1','','','2017-03-07','2017-03-07 11:52:50','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('89','2017-CET-89','2','286','0','0','1','','','2017-03-07','2017-03-07 11:54:40','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('90','2017-CEE-90','2','4','0','0','1','','','2017-03-07','2017-03-07 11:58:46','CEE','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('91','2017-CET-91','2','217','0','0','1','','','2017-03-07','2017-03-07 12:00:39','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('92','2017-CET-92','2','224','0','0','1','','','2017-03-07','2017-03-07 12:02:51','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('93','2017-CET-93','2','237','0','0','1','','','2017-03-07','2017-03-07 12:04:27','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('94','2017-CET-94','2','223','0','0','1','','','2017-03-07','2017-03-07 12:06:03','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('95','2017-CET-95','2','318','0','0','1','','','2017-03-07','2017-03-07 12:07:48','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('96','2017-CET-96','2','307','0','0','1','','','2017-03-07','2017-03-07 12:09:24','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('97','2017-CET-97','2','166','0','0','1','','','2017-03-07','2017-03-07 12:12:30','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('98','2017-CET-98','2','239','0','0','1','','','2017-03-07','2017-03-07 12:14:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('99','2017-CET-99','2','303','0','0','1','','','2017-03-07','2017-03-07 12:22:48','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('100','2017-CET-100','2','333','0','0','1','','','2017-03-07','2017-03-07 12:24:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('101','2017-CET-101','2','387','0','0','1','','','2017-03-07','2017-03-07 12:26:25','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('102','2017-NICET-102','2','519','0','0','1','','','2017-03-07','2017-03-07 12:29:00','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('103','2017-CET-103','2','295','0','0','1','','','2017-03-07','2017-03-07 12:31:22','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('104','2017-CET-104','2','266','0','0','1','','','2017-03-07','2017-03-07 12:32:54','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('105','2017-CET-105','2','173','0','0','1','','','2017-03-07','2017-03-07 12:34:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('106','2017-CET-106','2','356','0','0','1','','','2017-03-07','2017-03-07 12:36:18','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('107','2017-CET-107','2','261','0','0','1','','','2017-03-07','2017-03-07 12:38:18','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('108','2017-CET-108','2','184','0','0','1','','','2017-03-07','2017-03-07 12:40:40','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('109','2017-CET-109','2','209','0','0','1','','','2017-03-07','2017-03-07 12:42:18','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('110','2017-CET-110','2','311','0','0','1','','','2017-03-07','2017-03-07 12:47:46','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('111','2017-CET-111','2','242','0','0','1','','','2017-03-07','2017-03-07 12:51:24','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('112','2017-CET-112','2','276','0','0','1','','','2017-03-07','2017-03-07 12:55:36','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('113','2017-KP-113','2','524','0','0','1','','','2017-03-07','2017-03-07 12:59:50','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('114','2017-CET-114','2','326','0','0','1','','','2017-03-07','2017-03-07 13:02:19','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('115','2017-CET-115','2','390','0','0','1','','','2017-03-07','2017-03-07 13:05:40','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('116','2017-CET-116','2','229','0','0','1','','','2017-03-07','2017-03-07 13:09:13','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('117','2017-CET-117','2','236','0','0','1','','','2017-03-07','2017-03-07 13:11:53','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('118','2017-CET-118','2','196','0','0','1','','','2017-03-07','2017-03-07 13:13:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('119','2017-CET-119','2','221','0','0','1','','','2017-03-07','2017-03-07 13:15:17','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('120','2017-CET-120','2','185','0','0','1','','','2017-03-07','2017-03-07 13:17:03','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('121','2017-CET-121','2','213','0','0','1','','','2017-03-07','2017-03-07 13:18:30','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('122','2017-CEE-122','2','6','0','0','1','','','2017-03-07','2017-03-07 13:21:10','CEE','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('123','2017-CET-123','2','304','0','0','1','','','2017-03-07','2017-03-07 13:23:54','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('124','2017-CET-124','2','264','0','0','1','','','2017-03-07','2017-03-07 13:26:01','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('125','2017-KP-125','2','448','0','0','1','','','2017-03-07','2017-03-07 13:27:28','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('126','2017-CET-126','2','181','0','0','1','','','2017-03-07','2017-03-07 13:33:35','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('127','2017-CET-127','2','263','0','0','1','','','2017-03-07','2017-03-07 13:35:48','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('128','2017-CET-128','2','256','0','0','1','','','2017-03-07','2017-03-07 13:37:08','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('129','2017-CET-129','2','271','0','0','1','','','2017-03-07','2017-03-07 13:38:58','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('130','2017-CET-130','2','207','0','0','1','','','2017-03-07','2017-03-07 13:40:31','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('131','2017-CET-131','2','232','0','0','1','','','2017-03-07','2017-03-07 13:42:30','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('132','2017-CET-132','2','246','0','0','1','','','2017-03-07','2017-03-07 13:44:49','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('133','2017-CET-133','2','228','0','0','1','','','2017-03-07','2017-03-07 13:46:17','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('134','2017-CET-134','2','316','0','0','1','','','2017-03-07','2017-03-07 13:49:58','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('135','2017-KP-135','2','484','0','0','1','','','2017-03-07','2017-03-07 13:51:44','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('136','2017-CET-136','2','191','0','0','1','','','2017-03-07','2017-03-07 13:53:32','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('137','2017-CET-137','2','269','0','0','1','','','2017-03-08','2017-03-08 09:16:03','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('138','2017-CET-138','2','335','0','0','1','','','2017-03-08','2017-03-08 09:18:43','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('139','2017-CET-139','2','292','0','0','1','','','2017-03-08','2017-03-08 09:20:38','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('140','2017-CET-140','2','334','0','0','1','','','2017-03-08','2017-03-08 09:47:15','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('141','2017-CET-141','2','378','0','0','1','','','2017-03-08','2017-03-08 09:51:38','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('142','2017-CET-142','2','403','0','0','1','','','2017-03-08','2017-03-08 09:54:29','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('143','2017-CET-143','2','211','0','0','1','','','2017-03-08','2017-03-08 09:58:01','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('144','2017-CET-144','2','389','0','0','1','','','2017-03-08','2017-03-08 09:59:54','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('145','2017-CET-145','2','331','0','0','1','','','2017-03-08','2017-03-08 10:02:19','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('146','2017-CET-146','2','407','0','0','1','','','2017-03-08','2017-03-08 10:21:55','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('147','2017-CET-147','2','178','0','0','1','','','2017-03-08','2017-03-08 10:31:33','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('148','2017-CET-148','2','329','0','0','1','','','2017-03-08','2017-03-08 10:34:10','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('149','2017-CET-149','2','259','0','0','1','','','2017-03-08','2017-03-08 10:39:11','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('150','2017-KP-150','2','464','0','0','1','','','2017-03-08','2017-03-08 10:46:33','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('151','2017-CET-151','2','405','0','0','1','','','2017-03-08','2017-03-08 11:24:17','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('152','2017-CET-152','2','309','0','0','1','','','2017-03-08','2017-03-08 11:26:04','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('153','2017-CET-153','2','397','0','0','1','','','2017-03-08','2017-03-08 11:27:53','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('154','2017-CET-154','2','305','0','0','1','','','2017-03-08','2017-03-08 11:31:27','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('155','2017-CET-155','2','287','0','0','1','','','2017-03-08','2017-03-08 11:33:37','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('156','2017-CET-156','2','370','0','0','1','','','2017-03-08','2017-03-08 11:43:07','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('157','2017-CET-157','2','265','0','0','1','','','2017-03-08','2017-03-08 11:46:42','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('158','2017-CET-158','2','384','0','0','1','','','2017-03-08','2017-03-08 11:48:17','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('159','2017-CET-159','2','355','0','0','1','','','2017-03-08','2017-03-08 11:50:01','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('160','2017-CET-160','2','214','0','0','1','','','2017-03-08','2017-03-08 11:51:46','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('161','2017-CET-161','2','197','0','0','1','','','2017-03-08','2017-03-08 11:53:11','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('162','2017-CET-162','2','288','0','0','1','','','2017-03-08','2017-03-08 11:54:25','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('163','2017-CET-163','2','250','0','0','1','','','2017-03-08','2017-03-08 11:57:12','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('164','2017-KP-164','2','552','0','0','1','','','2017-03-08','2017-03-08 11:59:12','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('165','2017-CET-165','2','388','0','0','1','','','2017-03-08','2017-03-08 12:01:36','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('166','2017-CET-166','2','358','0','0','1','','','2017-03-08','2017-03-08 12:02:39','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('167','2017-CET-167','2','279','0','0','1','','','2017-03-08','2017-03-08 12:10:03','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('168','2017-CET-168','2','315','0','0','1','','','2017-03-08','2017-03-08 12:12:21','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('169','2017-CET-169','2','182','0','0','1','','','2017-03-08','2017-03-08 12:15:47','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('170','2017-KP-170','2','488','0','0','1','','','2017-03-08','2017-03-08 12:17:22','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('171','2017-CET-171','2','321','0','0','1','','','2017-03-08','2017-03-08 12:19:14','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('172','2017-KP-172','2','446','0','0','1','','','2017-03-08','2017-03-08 12:21:33','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('173','2017-KP-173','3','544','0','0','1','','','2017-03-08','2017-03-08 12:28:37','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('174','2017-KP-174','3','462','0','0','1','','','2017-03-08','2017-03-08 12:30:21','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('175','2017-KP-175','3','449','0','0','1','','','2017-03-08','2017-03-08 12:31:57','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('176','2017-KP-176','3','491','0','0','1','','','2017-03-08','2017-03-08 12:34:41','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('177','2017-KP-177','3','459','0','0','1','','','2017-03-08','2017-03-08 12:36:25','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('178','2017-KP-178','3','529','0','0','1','','','2017-03-08','2017-03-08 12:38:56','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('179','2017-KP-179','3','443','0','0','1','','','2017-03-08','2017-03-08 12:41:59','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('180','2017-KP-180','3','457','0','0','1','','','2017-03-08','2017-03-08 12:48:03','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('181','2017-KP-181','3','471','0','0','1','','','2017-03-08','2017-03-08 13:33:25','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('182','2017-KP-182','3','545','0','0','1','','','2017-03-08','2017-03-08 13:35:01','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('183','2017-KP-183','3','551','0','0','1','','','2017-03-08','2017-03-08 13:37:12','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('184','2017-KP-184','3','549','0','0','1','','','2017-03-08','2017-03-08 13:38:41','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('185','2017-KP-185','3','543','0','0','1','','','2017-03-08','2017-03-08 13:40:07','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('186','2017-CET-186','1','328','0','0','1','','','2017-03-08','2017-03-08 13:46:41','CET','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('187','2017-CEE-187','1','12','0','0','1','','','2017-03-09','2017-03-09 09:02:11','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('188','2017-CEE-188','1','31','0','0','1','','','2017-03-09','2017-03-09 09:04:45','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('189','2017-CEE-189','1','19','0','0','1','','','2017-03-09','2017-03-09 09:06:21','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('190','2017-CEE-190','1','122','0','0','1','','','2017-03-09','2017-03-09 09:08:29','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('191','2017-CEE-191','1','10','0','0','1','','','2017-03-09','2017-03-09 09:09:49','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('192','2017-CEE-192','1','64','0','0','1','','','2017-03-09','2017-03-09 09:12:30','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('193','2017-CEE-193','1','7','0','0','1','','','2017-03-09','2017-03-09 09:13:47','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('194','2017-CEE-194','1','69','0','0','1','','','2017-03-09','2017-03-09 09:16:56','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('195','2017-CEE-195','1','106','0','0','1','','','2017-03-09','2017-03-09 09:18:25','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('196','2017-CEE-196','1','26','0','0','1','','','2017-03-09','2017-03-09 09:19:46','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('197','2017-CEE-197','1','52','0','0','1','','','2017-03-09','2017-03-09 09:21:16','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('198','2017-CEE-198','1','64','0','0','1','','','2017-03-09','2017-03-09 09:23:31','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('199','2017-CEE-199','1','7','0','0','1','','','2017-03-09','2017-03-09 09:24:14','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('200','2017-CEE-200','1','69','0','0','1','','','2017-03-09','2017-03-09 09:26:08','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('201','2017-CEE-201','1','106','0','0','1','','','2017-03-09','2017-03-09 09:26:45','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('202','2017-CEE-202','1','26','0','0','1','','','2017-03-09','2017-03-09 09:27:22','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('203','2017-CEE-203','1','52','0','0','1','','','2017-03-09','2017-03-09 09:28:02','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('204','2017-CEE-204','1','89','0','0','1','','','2017-03-09','2017-03-09 09:34:35','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('205','2017-CEE-205','1','42','0','0','1','','','2017-03-09','2017-03-09 09:36:25','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('206','2017-CEE-206','1','140','0','0','1','','','2017-03-09','2017-03-09 09:38:10','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('207','2017-CEE-207','1','65','0','0','1','','','2017-03-09','2017-03-09 09:52:20','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('208','2017-CEE-208','1','21','0','0','1','','','2017-03-09','2017-03-09 09:54:44','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('209','2017-CEE-209','1','45','0','0','1','','','2017-03-09','2017-03-09 09:57:22','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('210','2017-CEE-210','1','83','0','0','1','','','2017-03-09','2017-03-09 10:27:11','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('211','2017-CEE-211','1','14','0','0','1','','','2017-03-09','2017-03-09 10:29:12','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('212','2017-CEE-212','1','49','0','0','1','','','2017-03-09','2017-03-09 10:31:21','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('213','2017-CEE-213','1','115','0','0','1','','','2017-03-09','2017-03-09 10:33:19','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('214','2017-CEE-214','1','66','0','0','1','','','2017-03-09','2017-03-09 10:34:40','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('215','2017-CEE-215','1','162','0','0','1','','','2017-03-09','2017-03-09 10:37:12','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('216','2017-CEE-216','1','8','0','0','1','','','2017-03-09','2017-03-09 10:38:51','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('217','2017-CEE-217','1','81','0','0','1','','','2017-03-09','2017-03-09 10:44:56','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('218','2017-CEE-218','1','90','0','0','1','','','2017-03-09','2017-03-09 11:17:43','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('219','2017-CEE-219','1','23','0','0','1','','','2017-03-09','2017-03-09 11:19:26','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('220','2017-CEE-220','1','15','0','0','1','','','2017-03-09','2017-03-09 11:21:14','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('221','2017-CEE-221','1','46','0','0','1','','','2017-03-09','2017-03-09 11:29:52','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('222','2017-CEE-222','1','3','0','0','1','','','2017-03-09','2017-03-09 11:33:22','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('223','2017-CEE-223','1','152','0','0','1','','','2017-03-09','2017-03-09 11:34:56','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('224','2017-CEE-224','1','87','0','0','1','','','2017-03-09','2017-03-09 11:37:14','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('225','2017-CEE-225','1','60','0','0','1','','','2017-03-09','2017-03-09 11:45:48','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('226','2017-CEE-226','1','111','0','0','1','','','2017-03-09','2017-03-09 11:47:30','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('227','2017-CEE-227','1','53','0','0','1','','','2017-03-09','2017-03-09 11:49:24','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('228','2017-CEE-228','1','39','0','0','1','','','2017-03-09','2017-03-09 11:51:41','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('229','2017-CEE-229','1','43','0','0','1','','','2017-03-09','2017-03-09 11:53:03','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('230','2017-CEE-230','1','77','0','0','1','','','2017-03-09','2017-03-09 11:54:36','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('231','2017-CEE-231','1','16','0','0','1','','','2017-03-09','2017-03-09 11:56:04','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('232','2017-CEE-232','1','92','0','0','1','','','2017-03-09','2017-03-09 12:02:33','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('233','2017-CEE-233','1','85','0','0','1','','','2017-03-09','2017-03-09 12:05:09','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('234','2017-CEE-234','1','76','0','0','1','','','2017-03-09','2017-03-09 12:07:03','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('235','2017-CEE-235','1','59','0','0','1','','','2017-03-09','2017-03-09 12:08:56','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('236','2017-CEE-236','1','96','0','0','1','','','2017-03-09','2017-03-09 12:11:18','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('237','2017-CEE-237','1','73','0','0','1','','','2017-03-09','2017-03-09 12:15:08','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('238','2017-CEE-238','1','57','0','0','1','','','2017-03-09','2017-03-09 12:17:04','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('239','2017-CEE-239','1','2','0','0','1','','','2017-03-09','2017-03-09 12:18:44','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('240','2017-CEE-240','1','100','0','0','1','','','2017-03-09','2017-03-09 12:26:10','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('241','2017-CEE-241','1','22','0','0','1','','','2017-03-09','2017-03-09 12:29:23','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('242','2017-CEE-242','1','28','0','0','1','','','2017-03-09','2017-03-09 12:32:16','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('243','2017-CEE-243','1','98','0','0','1','','','2017-03-09','2017-03-09 12:33:51','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('244','2017-CEE-244','1','114','0','0','1','','','2017-03-09','2017-03-09 12:35:44','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('245','2017-CEE-245','1','55','0','0','1','','','2017-03-09','2017-03-09 12:42:11','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('246','2017-CEE-246','1','71','0','0','1','','','2017-03-09','2017-03-09 12:44:05','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('247','2017-CEE-247','1','56','0','0','1','','','2017-03-09','2017-03-09 12:46:32','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('248','2017-CEE-248','1','133','0','0','1','','','2017-03-09','2017-03-09 12:53:12','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('249','2017-CEE-249','1','29','0','0','1','','','2017-03-09','2017-03-09 12:54:50','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('250','2017-CEE-250','1','157','0','0','1','','','2017-03-09','2017-03-09 12:56:14','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('251','2017-CEE-251','1','143','0','0','1','','','2017-03-09','2017-03-09 13:04:08','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('252','2017-CEE-252','1','99','0','0','1','','','2017-03-09','2017-03-09 13:06:01','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('253','2017-CEE-253','1','62','0','0','1','','','2017-03-09','2017-03-09 13:07:30','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('254','2017-CEE-254','1','9','0','0','1','','','2017-03-09','2017-03-09 13:09:23','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('255','2017-CEE-255','1','68','0','0','1','','','2017-03-09','2017-03-09 13:11:03','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('256','2017-CEE-256','1','61','0','0','1','','','2017-03-09','2017-03-09 13:12:30','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('257','2017-CEE-257','1','36','0','0','1','','','2017-03-09','2017-03-09 13:14:41','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('258','2017-CEE-258','1','27','0','0','1','','','2017-03-09','2017-03-09 13:16:00','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('259','2017-CEE-259','1','63','0','0','1','','','2017-03-09','2017-03-09 13:19:50','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('260','2017-CEE-260','1','105','0','0','1','','','2017-03-09','2017-03-09 13:21:19','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('261','2017-CEE-261','1','86','0','0','1','','','2017-03-09','2017-03-09 13:22:47','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('262','2017-CEE-262','1','103','0','0','1','','','2017-03-09','2017-03-09 13:24:22','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('263','2017-CEE-263','1','142','0','0','1','','','2017-03-09','2017-03-09 13:26:08','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('264','2017-CEE-264','1','51','0','0','1','','','2017-03-09','2017-03-09 13:27:33','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('265','2017-CEE-265','1','95','0','0','1','','','2017-03-09','2017-03-09 13:28:57','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('266','2017-CEE-266','1','109','0','0','1','','','2017-03-09','2017-03-09 13:30:48','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('267','2017-CEE-267','1','131','0','0','1','','','2017-03-09','2017-03-09 13:32:28','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('268','2017-CEE-268','1','50','0','0','1','','','2017-03-09','2017-03-09 13:33:52','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('269','2017-CEE-269','1','11','0','0','1','','','2017-03-09','2017-03-09 13:37:35','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('270','2017-CEE-270','1','75','0','0','1','','','2017-03-09','2017-03-09 13:40:47','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('271','2017-CEE-271','1','91','0','0','1','','','2017-03-09','2017-03-09 13:43:04','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('272','2017-CEE-272','1','78','0','0','1','','','2017-03-09','2017-03-09 13:45:02','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('273','2017-CEE-273','1','119','0','0','1','','','2017-03-09','2017-03-09 13:46:30','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('274','2017-CEE-274','1','25','0','0','1','','','2017-03-09','2017-03-09 13:49:42','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('275','2017-CEE-275','1','54','0','0','1','','','2017-03-09','2017-03-09 13:53:38','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('276','2017-CEE-276','1','108','0','0','1','','','2017-03-10','2017-03-10 10:00:01','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('277','2017-CEE-277','1','93','0','0','1','','','2017-03-10','2017-03-10 10:02:20','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('278','2017-CEE-278','1','107','0','0','1','','','2017-03-10','2017-03-10 10:04:11','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('279','2017-CEE-279','1','116','0','0','1','','','2017-03-10','2017-03-10 10:08:12','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('280','2017-CEE-280','1','18','0','0','1','','','2017-03-10','2017-03-10 10:10:08','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('281','2017-CEE-281','1','32','0','0','1','','','2017-03-10','2017-03-10 10:19:17','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('282','2017-CEE-282','1','144','0','0','1','','','2017-03-10','2017-03-10 10:21:05','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('283','2017-KP-283','1','548','0','0','1','','','2017-03-10','2017-03-10 10:22:39','KP','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('284','2017-CEE-284','1','136','0','0','1','','','2017-03-10','2017-03-10 10:25:26','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('285','2017-CEE-285','1','74','0','0','1','','','2017-03-10','2017-03-10 10:26:45','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('286','2017-CEE-286','1','37','0','0','1','','','2017-03-10','2017-03-10 10:28:20','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('287','2017-CEE-287','1','34','0','0','1','','','2017-03-10','2017-03-10 10:31:16','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('288','2017-CEE-288','1','123','0','0','1','','','2017-03-10','2017-03-10 10:36:09','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('289','2017-CEE-289','1','112','0','0','1','','','2017-03-10','2017-03-10 10:43:56','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('290','2017-CEE-290','1','126','0','0','1','','','2017-03-10','2017-03-10 10:45:28','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('291','2017-CEE-291','1','132','0','0','1','','','2017-03-10','2017-03-10 10:55:52','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('292','2017-CEE-292','1','121','0','0','1','','','2017-03-10','2017-03-10 12:07:36','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('293','2017-CEE-293','1','151','0','0','1','','','2017-03-10','2017-03-10 12:09:33','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('294','2017-CET-294','1','367','0','0','1','','','2017-03-10','2017-03-10 13:20:43','CET','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('295','2017-CEE-295','1','72','0','0','1','','','2017-03-10','2017-03-10 13:27:11','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('296','2017-CEE-296','1','137','0','0','1','','','2017-03-10','2017-03-10 13:29:24','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('297','2017-CEE-297','1','117','0','0','1','','','2017-03-10','2017-03-10 13:31:35','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('298','2017-CEE-298','1','94','0','0','1','','','2017-03-10','2017-03-10 13:33:36','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('299','2017-CEE-299','1','30','0','0','1','','','2017-03-10','2017-03-10 13:35:17','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('300','2017-CEE-300','1','128','0','0','1','','','2017-03-10','2017-03-10 13:37:35','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('301','2017-CEE-301','1','125','0','0','1','','','2017-03-10','2017-03-10 13:49:58','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('302','2017-CEE-302','1','24','0','0','1','','','2017-03-10','2017-03-10 13:52:42','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('303','2017-CEE-303','1','102','0','0','1','','','2017-03-10','2017-03-10 13:54:49','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('304','2017-CEE-304','1','79','0','0','1','','','2017-03-10','2017-03-10 13:56:17','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('305','2017-CET-305','1','373','0','0','1','','','2017-03-10','2017-03-10 13:58:40','CET','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('306','2017-CEE-306','1','148','0','0','1','','','2017-03-10','2017-03-10 14:00:00','CEE','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('307','2017-KP-307','1','498','0','0','1','','','2017-03-10','2017-03-10 14:01:42','KP','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('308','2017-CET-308','1','432','0','0','1','','','2017-03-10','2017-03-10 14:03:01','CET','CEE','','2017-2018','','0');
INSERT INTO estudio VALUES('309','2017-KP-309','3','453','0','0','1','','','2017-03-13','2017-03-13 10:49:59','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('310','2017-KP-310','3','460','0','0','1','','','2017-03-13','2017-03-13 10:51:45','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('311','2017-KP-311','3','482','0','0','1','','','2017-03-13','2017-03-13 10:53:12','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('312','2017-KP-312','3','441','0','0','1','','','2017-03-13','2017-03-13 10:54:47','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('313','2017-KP-313','3','467','0','0','1','','','2017-03-13','2017-03-13 10:56:43','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('314','2017-KP-314','3','497','0','0','1','','','2017-03-13','2017-03-13 10:59:55','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('315','2017-CET-315','3','241','0','0','1','','','2017-03-13','2017-03-13 11:02:09','CET','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('316','2017-KP-316','3','472','0','0','1','','','2017-03-13','2017-03-13 11:07:02','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('317','2017-CET-317','3','428','0','0','1','','','2017-03-13','2017-03-13 11:25:20','CET','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('318','2017-KP-318','3','439','0','0','1','','','2017-03-13','2017-03-13 11:27:09','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('319','2017-KP-319','3','527','0','0','1','','','2017-03-13','2017-03-13 11:29:56','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('320','2017-KP-320','3','560','0','0','1','','','2017-03-13','2017-03-13 11:31:18','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('321','2017-KP-321','3','542','0','0','1','','','2017-03-13','2017-03-13 11:33:15','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('322','2017-KP-322','3','475','0','0','1','','','2017-03-13','2017-03-13 11:35:22','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('323','2017-KP-323','3','466','0','0','1','','','2017-03-13','2017-03-13 11:45:54','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('324','2017-KP-324','3','487','0','0','1','','','2017-03-13','2017-03-13 11:47:32','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('325','2017-KP-325','3','465','0','0','1','','','2017-03-13','2017-03-13 11:49:26','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('326','2017-KP-326','3','456','0','0','1','','','2017-03-13','2017-03-13 11:50:48','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('327','2017-CET-327','3','425','0','0','1','','','2017-03-13','2017-03-13 11:52:37','CET','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('328','2017-KP-328','3','463','0','0','1','','','2017-03-13','2017-03-13 11:55:10','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('329','2017-KP-329','3','476','0','0','1','','','2017-03-13','2017-03-13 11:56:22','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('330','2017-KP-330','3','489','0','0','1','','','2017-03-13','2017-03-13 11:57:53','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('331','2017-KP-331','3','492','0','0','1','','','2017-03-13','2017-03-13 11:58:53','KP','KP','','2017-2018','','0');
INSERT INTO estudio VALUES('332','2017-CET-332','2','180','0','0','1','','','2017-03-13','2017-03-13 12:02:22','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('333','2017-CET-333','2','198','0','0','1','','','2017-03-13','2017-03-13 12:03:57','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('334','2017-CET-334','2','203','0','0','1','','','2017-03-13','2017-03-13 12:05:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('335','2017-CET-335','2','249','0','0','1','','','2017-03-13','2017-03-13 12:08:34','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('336','2017-CET-336','2','285','0','0','1','','','2017-03-13','2017-03-13 12:09:56','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('337','2017-CET-337','2','313','0','0','1','','','2017-03-13','2017-03-13 12:11:59','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('338','2017-CET-338','2','319','0','0','1','','','2017-03-13','2017-03-13 12:13:13','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('339','2017-KP-339','2','557','0','0','1','','','2017-03-13','2017-03-13 12:14:24','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('340','2017-CET-340','2','357','0','0','1','','','2017-03-13','2017-03-13 12:16:52','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('341','2017-CET-341','2','392','0','0','1','','','2017-03-13','2017-03-13 12:39:05','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('342','2017-CET-342','2','380','0','0','1','','','2017-03-13','2017-03-13 12:41:27','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('343','2017-CET-343','2','376','0','0','1','','','2017-03-13','2017-03-13 12:42:54','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('344','2017-CET-344','2','289','0','0','1','','','2017-03-13','2017-03-13 12:44:05','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('345','2017-CET-345','2','322','0','0','1','','','2017-03-13','2017-03-13 12:47:58','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('346','2017-CET-346','2','314','0','0','1','','','2017-03-13','2017-03-13 12:49:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('347','2017-CET-347','2','280','0','0','1','','','2017-03-13','2017-03-13 12:51:06','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('348','2017-CET-348','2','267','0','0','1','','','2017-03-13','2017-03-13 12:52:22','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('349','2017-CET-349','2','394','0','0','1','','','2017-03-13','2017-03-13 12:53:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('350','2017-NICET-350','2','516','0','0','1','','','2017-03-13','2017-03-13 12:55:22','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('351','2017-CET-351','2','360','0','0','1','','','2017-03-13','2017-03-13 12:57:02','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('352','2017-CET-352','2','354','0','0','1','','','2017-03-13','2017-03-13 12:58:38','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('353','2017-CET-353','2','379','0','0','1','','','2017-03-13','2017-03-13 12:59:44','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('354','2017-NICET-354','2','515','0','0','1','','','2017-03-13','2017-03-13 13:01:21','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('355','2017-CET-355','2','352','0','0','1','','','2017-03-13','2017-03-13 13:02:50','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('356','2017-NICET-356','2','517','0','0','1','','','2017-03-13','2017-03-13 13:04:11','NICET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('357','2017-CET-357','2','293','0','0','1','','','2017-03-13','2017-03-13 13:06:45','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('358','2017-CET-358','2','340','0','0','1','','','2017-03-13','2017-03-13 13:09:00','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('359','2017-CET-359','2','298','0','0','1','','','2017-03-13','2017-03-13 13:11:05','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('360','2017-CET-360','2','225','0','0','1','','','2017-03-13','2017-03-13 13:12:17','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('361','2017-CET-361','2','312','0','0','1','','','2017-03-13','2017-03-13 13:13:37','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('362','2017-CET-362','2','275','0','0','1','','','2017-03-13','2017-03-13 13:14:57','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('363','2017-CET-363','2','337','0','0','1','','','2017-03-13','2017-03-13 13:16:27','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('364','2017-CET-364','2','235','0','0','1','','','2017-03-13','2017-03-13 13:17:50','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('365','2017-CET-365','2','192','0','0','1','','','2017-03-13','2017-03-13 13:19:10','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('366','2017-CET-366','2','386','0','0','1','','','2017-03-13','2017-03-13 13:20:20','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('367','2017-CET-367','2','341','0','0','1','','','2017-03-13','2017-03-13 13:21:35','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('368','2017-CET-368','2','359','0','0','1','','','2017-03-13','2017-03-13 13:22:36','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('369','2017-KP-369','2','452','0','0','1','','','2017-03-13','2017-03-13 13:24:01','KP','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('370','2017-CET-370','2','338','0','0','1','','','2017-03-13','2017-03-13 13:25:40','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('371','2017-CET-371','2','400','0','0','1','','','2017-03-13','2017-03-13 13:26:59','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('372','2017-CET-372','2','415','0','0','1','','','2017-03-13','2017-03-13 13:28:21','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('373','2017-CET-373','2','320','0','0','1','','','2017-03-13','2017-03-13 13:31:15','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('374','2017-CET-374','2','377','0','0','1','','','2017-03-13','2017-03-13 13:33:00','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('375','2017-CET-375','2','412','0','0','1','','','2017-03-13','2017-03-13 13:34:18','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('376','2017-CET-376','2','346','0','0','1','','','2017-03-13','2017-03-13 13:36:15','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('377','2017-CET-377','2','399','0','0','1','','','2017-03-13','2017-03-13 13:37:37','CET','CET','','2017-2018','','0');
INSERT INTO estudio VALUES('378','2017-CET-378','2','372','0','0','1','','','2017-03-13','2017-03-13 13:39:37','CET','CET','','2017-2018','','0');



DROP TABLE IF EXISTS estudios_instituciones;

CREATE TABLE `estudios_instituciones` (
  `id_estudio_institucion` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudio` varchar(255) DEFAULT NULL,
  `id_institucion` varchar(255) DEFAULT NULL,
  `comentarios` text,
  `pago` varchar(255) DEFAULT NULL,
  `num_recibo` varchar(255) DEFAULT NULL,
  `estatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id_estudio_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO estudios_instituciones VALUES('1','1','3','','TRIANA','0050','1');
INSERT INTO estudios_instituciones VALUES('2','2','3','','TRIANA','KP001','1');
INSERT INTO estudios_instituciones VALUES('3','3','3','','TRIANA','KP002','1');
INSERT INTO estudios_instituciones VALUES('4','4','3','','TRIANA','KP003','1');
INSERT INTO estudios_instituciones VALUES('5','5','3','','TRIANA','KP004','1');
INSERT INTO estudios_instituciones VALUES('6','6','3','','TRIANA','KP005','1');
INSERT INTO estudios_instituciones VALUES('7','7','2','','TRIANA','CET006','1');
INSERT INTO estudios_instituciones VALUES('8','7','1','','TRIANA','CET006','1');
INSERT INTO estudios_instituciones VALUES('9','8','2','','TRIANA','CET002','1');
INSERT INTO estudios_instituciones VALUES('10','9','2','','TRIANA','CET003','1');
INSERT INTO estudios_instituciones VALUES('11','10','2','','TRIANA','CET004','1');
INSERT INTO estudios_instituciones VALUES('12','11','2','','TRIANA','CET005','1');
INSERT INTO estudios_instituciones VALUES('13','12','2','','TRIANA','CET007','1');
INSERT INTO estudios_instituciones VALUES('14','13','2','','TRIANA','CET008','1');
INSERT INTO estudios_instituciones VALUES('15','14','2','','TRIANA','CET010','1');
INSERT INTO estudios_instituciones VALUES('16','15','2','','TRIANA','CET011','1');
INSERT INTO estudios_instituciones VALUES('17','16','2','','TRIANA','CET012','2');
INSERT INTO estudios_instituciones VALUES('18','17','2','','TRIANA','CET013','1');
INSERT INTO estudios_instituciones VALUES('19','18','2','','ENCINO','CET014','2');
INSERT INTO estudios_instituciones VALUES('20','19','2','','ENCINO','CET015','2');
INSERT INTO estudios_instituciones VALUES('21','20','2','','TRIANA','CET016','1');
INSERT INTO estudios_instituciones VALUES('22','21','2','','TRIANA','CET017','1');
INSERT INTO estudios_instituciones VALUES('23','22','2','','ENCINO','CET018','2');
INSERT INTO estudios_instituciones VALUES('24','23','2','','TRIANA','CET019','1');
INSERT INTO estudios_instituciones VALUES('25','24','2','','TRIANA','CET020','1');
INSERT INTO estudios_instituciones VALUES('26','25','2','','TRIANA','CET021','1');
INSERT INTO estudios_instituciones VALUES('27','26','2','','TRIANA','CET022','1');
INSERT INTO estudios_instituciones VALUES('28','27','2','','ENCINO','CET025','1');
INSERT INTO estudios_instituciones VALUES('29','28','2','','TRIANA','CET026','1');
INSERT INTO estudios_instituciones VALUES('30','29','2','','TRIANA','CET027','1');
INSERT INTO estudios_instituciones VALUES('31','30','2','','TRIANA','CET028','1');
INSERT INTO estudios_instituciones VALUES('32','31','2','','TRIANA','CET029','1');
INSERT INTO estudios_instituciones VALUES('33','32','2','','TRIANA','CET030','1');
INSERT INTO estudios_instituciones VALUES('34','33','2','','TRIANA','CET031','1');
INSERT INTO estudios_instituciones VALUES('35','34','2','','TRIANA','CET032','1');
INSERT INTO estudios_instituciones VALUES('36','35','2','','TRIANA','CET033','1');
INSERT INTO estudios_instituciones VALUES('37','36','2','','TRIANA','CET034','1');
INSERT INTO estudios_instituciones VALUES('38','37','2','','TRIANA','CET036','1');
INSERT INTO estudios_instituciones VALUES('39','38','2','','ENCINO','CEE024','1');
INSERT INTO estudios_instituciones VALUES('40','39','2','','ENCINO','CEE025','1');
INSERT INTO estudios_instituciones VALUES('41','40','2','','TRIANA','CET038','1');
INSERT INTO estudios_instituciones VALUES('42','41','2','','TRIANA','CET039','1');
INSERT INTO estudios_instituciones VALUES('43','42','2','','TRIANA','CET040','1');
INSERT INTO estudios_instituciones VALUES('44','43','2','','ENCINO','CEE027','1');
INSERT INTO estudios_instituciones VALUES('45','44','2','','TRIANA','CET044','1');
INSERT INTO estudios_instituciones VALUES('46','45','2','','TRIANA','CET045','1');
INSERT INTO estudios_instituciones VALUES('47','46','2','','TRIANA','CET046','1');
INSERT INTO estudios_instituciones VALUES('48','47','2','','TRIANA','CET048','1');
INSERT INTO estudios_instituciones VALUES('49','48','2','','TRIANA','CET012','1');
INSERT INTO estudios_instituciones VALUES('50','49','2','','ENCINO','CEE009','1');
INSERT INTO estudios_instituciones VALUES('51','50','2','','ENCINO','CEE008','1');
INSERT INTO estudios_instituciones VALUES('52','51','2','','ENCINO','CEE011','1');
INSERT INTO estudios_instituciones VALUES('53','52','2','','TRIANA','CET049','1');
INSERT INTO estudios_instituciones VALUES('54','53','2','','TRIANA','CET052','1');
INSERT INTO estudios_instituciones VALUES('55','54','2','','TRIANA','CET053','1');
INSERT INTO estudios_instituciones VALUES('56','55','2','','TRIANA','CET055','1');
INSERT INTO estudios_instituciones VALUES('57','56','2','','TRIANA','CET056','1');
INSERT INTO estudios_instituciones VALUES('58','57','2','','TRIANA','CET057','1');
INSERT INTO estudios_instituciones VALUES('59','58','2','','TRIANA','CET058','1');
INSERT INTO estudios_instituciones VALUES('60','59','2','','TRIANA','CET059','1');
INSERT INTO estudios_instituciones VALUES('61','60','2','','TRIANA','CET060','1');
INSERT INTO estudios_instituciones VALUES('62','61','2','','TRIANA','CET061','1');
INSERT INTO estudios_instituciones VALUES('63','62','2','','TRIANA','CET062','1');
INSERT INTO estudios_instituciones VALUES('64','63','2','','TRIANA','CET063','1');
INSERT INTO estudios_instituciones VALUES('65','64','2','','TRIANA','CET064','1');
INSERT INTO estudios_instituciones VALUES('66','65','2','','TRIANA','CET065','1');
INSERT INTO estudios_instituciones VALUES('67','66','2','','TRIANA','CET066','1');
INSERT INTO estudios_instituciones VALUES('68','67','2','','TRIANA','CET068','1');
INSERT INTO estudios_instituciones VALUES('69','68','2','','TRIANA','CET070','1');
INSERT INTO estudios_instituciones VALUES('70','69','2','','TRIANA','CET071','1');
INSERT INTO estudios_instituciones VALUES('71','70','2','','TRIANA','CET072','1');
INSERT INTO estudios_instituciones VALUES('72','71','2','','TRIANA','CET073','1');
INSERT INTO estudios_instituciones VALUES('73','72','2','','ENCINO','V5305','1');
INSERT INTO estudios_instituciones VALUES('74','73','2','','TRIANA','CET075','1');
INSERT INTO estudios_instituciones VALUES('75','74','2','','TRIANA','CET076','1');
INSERT INTO estudios_instituciones VALUES('76','75','2','','TRIANA','CET077','1');
INSERT INTO estudios_instituciones VALUES('77','76','2','','TRIANA','CET078','1');
INSERT INTO estudios_instituciones VALUES('78','77','2','','ENCINO','CEE043','1');
INSERT INTO estudios_instituciones VALUES('79','78','2','','TRIANA','CET080','1');
INSERT INTO estudios_instituciones VALUES('80','79','2','','ENCINO','CEE038','1');
INSERT INTO estudios_instituciones VALUES('81','80','2','','TRIANA','CET082','1');
INSERT INTO estudios_instituciones VALUES('82','81','2','','TRIANA','CET083','1');
INSERT INTO estudios_instituciones VALUES('83','82','2','','TRIANA','CET084','1');
INSERT INTO estudios_instituciones VALUES('84','83','2','','TRIANA','CET085','1');
INSERT INTO estudios_instituciones VALUES('85','84','2','','ENCINO','CEE055','1');
INSERT INTO estudios_instituciones VALUES('86','85','2','','TRIANA','CET087','1');
INSERT INTO estudios_instituciones VALUES('87','86','2','','TRIANA','CET088','1');
INSERT INTO estudios_instituciones VALUES('88','87','2','','TRIANA','CET089','1');
INSERT INTO estudios_instituciones VALUES('89','88','2','','TRIANA','CET090','1');
INSERT INTO estudios_instituciones VALUES('90','89','2','','TRIANA','CET091','1');
INSERT INTO estudios_instituciones VALUES('91','90','2','','ENCINO','CEE054','1');
INSERT INTO estudios_instituciones VALUES('92','91','2','','ENCINO','CEE038','1');
INSERT INTO estudios_instituciones VALUES('93','92','2','','TRIANA','CET095','1');
INSERT INTO estudios_instituciones VALUES('94','93','2','','TRIANA','CET096','1');
INSERT INTO estudios_instituciones VALUES('95','94','2','','TRIANA','CET097','1');
INSERT INTO estudios_instituciones VALUES('96','95','2','','TRIANA','CET098','1');
INSERT INTO estudios_instituciones VALUES('97','96','2','','TRIANA','CET099','1');
INSERT INTO estudios_instituciones VALUES('98','97','2','','TRIANA','CET100','1');
INSERT INTO estudios_instituciones VALUES('99','98','2','','TRIANA','CET101','1');
INSERT INTO estudios_instituciones VALUES('100','99','2','','TRIANA','CET102','1');
INSERT INTO estudios_instituciones VALUES('101','100','2','','TRIANA','CET103','1');
INSERT INTO estudios_instituciones VALUES('102','101','2','','TRIANA','CET104','1');
INSERT INTO estudios_instituciones VALUES('103','102','2','','TRIANA','CET105','1');
INSERT INTO estudios_instituciones VALUES('104','103','2','','TRIANA','CET106','1');
INSERT INTO estudios_instituciones VALUES('105','104','2','','TRIANA','CET107','1');
INSERT INTO estudios_instituciones VALUES('106','105','2','','TRIANA','CET108','1');
INSERT INTO estudios_instituciones VALUES('107','106','2','','TRIANA','CET109','1');
INSERT INTO estudios_instituciones VALUES('108','107','2','','TRIANA','CET111','1');
INSERT INTO estudios_instituciones VALUES('109','108','2','','TRIANA','CET112','1');
INSERT INTO estudios_instituciones VALUES('110','109','2','','TRIANA','CET113','1');
INSERT INTO estudios_instituciones VALUES('111','110','2','','TRIANA','CET114','1');
INSERT INTO estudios_instituciones VALUES('112','111','2','','TRIANA','CET115','1');
INSERT INTO estudios_instituciones VALUES('113','112','2','','TRIANA','CET116','1');
INSERT INTO estudios_instituciones VALUES('114','113','2','','TRIANA','CET117','1');
INSERT INTO estudios_instituciones VALUES('115','114','2','','TRIANA','CET118','1');
INSERT INTO estudios_instituciones VALUES('116','115','2','','TRIANA','CET119','1');
INSERT INTO estudios_instituciones VALUES('117','116','2','','TRIANA','CET121','1');
INSERT INTO estudios_instituciones VALUES('118','117','2','','TRIANA','CET122','1');
INSERT INTO estudios_instituciones VALUES('119','118','2','','TRIANA','CET123','1');
INSERT INTO estudios_instituciones VALUES('120','119','2','','TRIANA','CET124','1');
INSERT INTO estudios_instituciones VALUES('121','120','2','','TRIANA','CET125','1');
INSERT INTO estudios_instituciones VALUES('122','121','2','','ENCINO','CEE080','1');
INSERT INTO estudios_instituciones VALUES('123','122','2','','ENCINO','CEE018','1');
INSERT INTO estudios_instituciones VALUES('124','123','2','','TRIANA','CET128','1');
INSERT INTO estudios_instituciones VALUES('125','124','2','','TRIANA','CET129','1');
INSERT INTO estudios_instituciones VALUES('126','125','2','','TRIANA','CET130','1');
INSERT INTO estudios_instituciones VALUES('127','126','2','','TRIANA','CET131','1');
INSERT INTO estudios_instituciones VALUES('128','127','2','','TRIANA','CET132','1');
INSERT INTO estudios_instituciones VALUES('129','128','2','','TRIANA','CET133','1');
INSERT INTO estudios_instituciones VALUES('130','129','2','','TRIANA','CET134','1');
INSERT INTO estudios_instituciones VALUES('131','130','2','','TRIANA','CET135','1');
INSERT INTO estudios_instituciones VALUES('132','131','2','','TRIANA','CET136','1');
INSERT INTO estudios_instituciones VALUES('133','132','2','','TRIANA','CET137','1');
INSERT INTO estudios_instituciones VALUES('134','133','2','','TRIANA','CET138','1');
INSERT INTO estudios_instituciones VALUES('135','134','2','','TRIANA','CET139','1');
INSERT INTO estudios_instituciones VALUES('136','135','2','','TRIANA','CET140','1');
INSERT INTO estudios_instituciones VALUES('137','136','2','','TRIANA','CET141','1');
INSERT INTO estudios_instituciones VALUES('138','137','2','','TRIANA','CET142','1');
INSERT INTO estudios_instituciones VALUES('139','138','2','','TRIANA','CET143','1');
INSERT INTO estudios_instituciones VALUES('140','139','2','','TRIANA','CET144','1');
INSERT INTO estudios_instituciones VALUES('141','140','2','','TRIANA','CET145','1');
INSERT INTO estudios_instituciones VALUES('142','141','2','','TRIANA','CET146','1');
INSERT INTO estudios_instituciones VALUES('143','142','2','','TRIANA','CET147','1');
INSERT INTO estudios_instituciones VALUES('144','143','2','','TRIANA','CET148','1');
INSERT INTO estudios_instituciones VALUES('145','144','2','','TRIANA','CET149','1');
INSERT INTO estudios_instituciones VALUES('146','145','2','','TRIANA','CET150','1');
INSERT INTO estudios_instituciones VALUES('147','146','2','','ENCINO','CEE095','1');
INSERT INTO estudios_instituciones VALUES('148','147','2','','TRIANA','CET152','1');
INSERT INTO estudios_instituciones VALUES('149','148','2','','TRIANA','CET153','1');
INSERT INTO estudios_instituciones VALUES('150','149','2','','ENCINO','CEE100','1');
INSERT INTO estudios_instituciones VALUES('151','150','2','','TRIANA','CET156','1');
INSERT INTO estudios_instituciones VALUES('152','151','2','','TRIANA','CET157','1');
INSERT INTO estudios_instituciones VALUES('153','152','2','','TRIANA','CET158','1');
INSERT INTO estudios_instituciones VALUES('154','153','2','','TRIANA','CET159','1');
INSERT INTO estudios_instituciones VALUES('155','154','2','','TRIANA','CET161','1');
INSERT INTO estudios_instituciones VALUES('156','155','2','','ENCINO','CEE060','1');
INSERT INTO estudios_instituciones VALUES('157','156','2','','TRIANA','CET163','1');
INSERT INTO estudios_instituciones VALUES('158','157','2','','TRIANA','CET164','1');
INSERT INTO estudios_instituciones VALUES('159','158','2','','TRIANA','CET165','1');
INSERT INTO estudios_instituciones VALUES('160','159','2','','TRIANA','CET166','1');
INSERT INTO estudios_instituciones VALUES('161','160','2','','TRIANA','CET167','1');
INSERT INTO estudios_instituciones VALUES('162','161','2','','TRIANA','CET168','1');
INSERT INTO estudios_instituciones VALUES('163','162','2','','TRIANA','CET169','1');
INSERT INTO estudios_instituciones VALUES('164','163','2','','TRIANA','CET170','1');
INSERT INTO estudios_instituciones VALUES('165','164','2','','TRIANA','CET173','1');
INSERT INTO estudios_instituciones VALUES('166','165','2','','TRIANA','CET174','1');
INSERT INTO estudios_instituciones VALUES('167','166','2','','TRIANA','CET175','1');
INSERT INTO estudios_instituciones VALUES('168','167','2','','TRIANA','CET177','1');
INSERT INTO estudios_instituciones VALUES('169','168','2','','TRIANA','CET178','1');
INSERT INTO estudios_instituciones VALUES('170','169','2','','TRIANA','CET179','1');
INSERT INTO estudios_instituciones VALUES('171','170','2','','TRIANA','CET180','1');
INSERT INTO estudios_instituciones VALUES('172','171','2','','TRIANA','CET181','1');
INSERT INTO estudios_instituciones VALUES('173','172','2','','TRIANA','CETKP001','1');
INSERT INTO estudios_instituciones VALUES('174','173','3','','ENCINO','KP008','1');
INSERT INTO estudios_instituciones VALUES('175','174','3','','TRIANA','KP009','1');
INSERT INTO estudios_instituciones VALUES('176','175','3','','TRIANA','KP010','1');
INSERT INTO estudios_instituciones VALUES('177','176','3','','TRIANA','KP012','1');
INSERT INTO estudios_instituciones VALUES('178','177','3','','TRIANA','KP013','1');
INSERT INTO estudios_instituciones VALUES('179','178','3','','TRIANA','KP015','1');
INSERT INTO estudios_instituciones VALUES('180','179','3','','TRIANA','KP017','1');
INSERT INTO estudios_instituciones VALUES('181','180','3','','TRIANA','KP020','1');
INSERT INTO estudios_instituciones VALUES('182','181','3','','ENCINO','CEE013','1');
INSERT INTO estudios_instituciones VALUES('183','182','3','','TRIANA','KP022','1');
INSERT INTO estudios_instituciones VALUES('184','183','3','','TRIANA','KP024','1');
INSERT INTO estudios_instituciones VALUES('185','184','3','','TRIANA','KP025','1');
INSERT INTO estudios_instituciones VALUES('186','185','3','','TRIANA','KP024','1');
INSERT INTO estudios_instituciones VALUES('187','186','1','','ENCINO','CEE01','1');
INSERT INTO estudios_instituciones VALUES('188','187','1','','ENCINO','4864','1');
INSERT INTO estudios_instituciones VALUES('189','188','1','','TRIANA','CET008','1');
INSERT INTO estudios_instituciones VALUES('190','189','1','','TRIANA','CET011','1');
INSERT INTO estudios_instituciones VALUES('191','190','1','','ENCINO','4911','1');
INSERT INTO estudios_instituciones VALUES('192','191','1','','ENCINO','4956','1');
INSERT INTO estudios_instituciones VALUES('193','192','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('194','193','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('195','194','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('196','195','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('197','196','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('198','197','1','','ENCINO','','2');
INSERT INTO estudios_instituciones VALUES('199','198','1','','ENCINO','CEE011','1');
INSERT INTO estudios_instituciones VALUES('200','199','1','','ENCINO','CEE012','1');
INSERT INTO estudios_instituciones VALUES('201','200','1','','ENCINO','CEE013','1');
INSERT INTO estudios_instituciones VALUES('202','201','1','','ENCINO','CEE014','1');
INSERT INTO estudios_instituciones VALUES('203','202','1','','ENCINO','CEE015','1');
INSERT INTO estudios_instituciones VALUES('204','203','1','','ENCINO','CEE016','1');
INSERT INTO estudios_instituciones VALUES('205','122','1','','ENCINO','CEE018','1');
INSERT INTO estudios_instituciones VALUES('206','31','1','','TRIANA','CET029','1');
INSERT INTO estudios_instituciones VALUES('207','204','1','','ENCINO','CEE019','1');
INSERT INTO estudios_instituciones VALUES('208','205','1','','ENCINO','CEE020','1');
INSERT INTO estudios_instituciones VALUES('209','206','1','','TRIANA','CET031','1');
INSERT INTO estudios_instituciones VALUES('210','207','1','','ENCINO','CET021','1');
INSERT INTO estudios_instituciones VALUES('211','36','1','','ENCINO','CET034','1');
INSERT INTO estudios_instituciones VALUES('212','208','1','','ENCINO','CEE024','1');
INSERT INTO estudios_instituciones VALUES('213','209','1','','ENCINO','CEE025','1');
INSERT INTO estudios_instituciones VALUES('214','210','1','','ENCINO','CEE026','1');
INSERT INTO estudios_instituciones VALUES('215','211','1','','ENCINO','CEE027','1');
INSERT INTO estudios_instituciones VALUES('216','212','1','','ENCINO','5189','1');
INSERT INTO estudios_instituciones VALUES('217','213','1','','ENCINO','5194','1');
INSERT INTO estudios_instituciones VALUES('218','214','1','','TRIANA','CET044','1');
INSERT INTO estudios_instituciones VALUES('219','45','1','','TRIANA','CET045','1');
INSERT INTO estudios_instituciones VALUES('220','215','1','','ENCINO','5281','1');
INSERT INTO estudios_instituciones VALUES('221','216','1','','ENCINO','5252','1');
INSERT INTO estudios_instituciones VALUES('222','217','1','','ENCINO','5295','1');
INSERT INTO estudios_instituciones VALUES('223','91','1','','ENCINO','5298','1');
INSERT INTO estudios_instituciones VALUES('224','218','1','','ENCINO','5296','1');
INSERT INTO estudios_instituciones VALUES('225','219','1','','ENCINO','5299','1');
INSERT INTO estudios_instituciones VALUES('226','220','1','','ENCINO','5305','1');
INSERT INTO estudios_instituciones VALUES('227','221','1','','ENCINO','5308','1');
INSERT INTO estudios_instituciones VALUES('228','222','1','','ENCINO','5311','1');
INSERT INTO estudios_instituciones VALUES('229','223','1','','ENCINO','5313','1');
INSERT INTO estudios_instituciones VALUES('230','224','1','','ENCINO','5314','1');
INSERT INTO estudios_instituciones VALUES('231','225','1','','ENCINO','CET078','1');
INSERT INTO estudios_instituciones VALUES('232','226','1','','ENCINO','5321','1');
INSERT INTO estudios_instituciones VALUES('233','227','1','','ENCINO','5324','1');
INSERT INTO estudios_instituciones VALUES('234','228','1','','TRIANA','CET072','1');
INSERT INTO estudios_instituciones VALUES('235','229','1','','ENCINO','5332','1');
INSERT INTO estudios_instituciones VALUES('236','230','1','','ENCINO','5335','1');
INSERT INTO estudios_instituciones VALUES('237','231','1','','TRIANA','CET084','1');
INSERT INTO estudios_instituciones VALUES('238','90','1','','ENCINO','5331','1');
INSERT INTO estudios_instituciones VALUES('239','232','1','','ENCINO','5337','1');
INSERT INTO estudios_instituciones VALUES('240','233','1','','ENCINO','5341','1');
INSERT INTO estudios_instituciones VALUES('241','234','1','','TRIANA','CET075','1');
INSERT INTO estudios_instituciones VALUES('242','235','1','','ENCINO','5346','1');
INSERT INTO estudios_instituciones VALUES('243','62','1','','TRIANA','CET062','1');
INSERT INTO estudios_instituciones VALUES('244','236','1','','ENCINO','5347','1');
INSERT INTO estudios_instituciones VALUES('245','2','1','','TRIANA','KP001','1');
INSERT INTO estudios_instituciones VALUES('246','2','1','','TRIANA','KP001','1');
INSERT INTO estudios_instituciones VALUES('247','61','1','','TRIANA','CET061','1');
INSERT INTO estudios_instituciones VALUES('248','237','1','','ENCINO','5359','1');
INSERT INTO estudios_instituciones VALUES('249','238','1','','ENCINO','5376','1');
INSERT INTO estudios_instituciones VALUES('250','239','1','','ENCINO','5373','1');
INSERT INTO estudios_instituciones VALUES('251','240','1','','ENCINO','5374','1');
INSERT INTO estudios_instituciones VALUES('252','94','1','','TRIANA','CET097','1');
INSERT INTO estudios_instituciones VALUES('253','241','1','','ENCINO','5380','1');
INSERT INTO estudios_instituciones VALUES('254','242','1','','ENCINO','5388','1');
INSERT INTO estudios_instituciones VALUES('255','243','1','','ENCINO','5397','1');
INSERT INTO estudios_instituciones VALUES('256','244','1','','ENCINO','V','1');
INSERT INTO estudios_instituciones VALUES('257','245','1','','TRIANA','CET113','1');
INSERT INTO estudios_instituciones VALUES('258','246','1','','ENCINO','5933','1');
INSERT INTO estudios_instituciones VALUES('259','247','1','','ENCINO','5402','1');
INSERT INTO estudios_instituciones VALUES('260','248','1','','TRIANA','CET119','1');
INSERT INTO estudios_instituciones VALUES('261','249','1','','ENCINO','5404','1');
INSERT INTO estudios_instituciones VALUES('262','250','1','','TRIANA','CET123','1');
INSERT INTO estudios_instituciones VALUES('263','251','1','','ENCINO','5408','1');
INSERT INTO estudios_instituciones VALUES('264','252','1','','ENCINO','5410','1');
INSERT INTO estudios_instituciones VALUES('265','253','1','','ENCINO','5411','1');
INSERT INTO estudios_instituciones VALUES('266','254','1','','TRIANA','CET131','1');
INSERT INTO estudios_instituciones VALUES('267','255','1','','ENCINO','5413','1');
INSERT INTO estudios_instituciones VALUES('268','256','1','','TRIANA','CET132','1');
INSERT INTO estudios_instituciones VALUES('269','257','1','','TRIANA','CET134','1');
INSERT INTO estudios_instituciones VALUES('270','258','1','','ENCINO','5417','1');
INSERT INTO estudios_instituciones VALUES('271','259','1','','ENCINO','5420','1');
INSERT INTO estudios_instituciones VALUES('272','260','1','','ENCINO','5421','1');
INSERT INTO estudios_instituciones VALUES('273','261','1','','ENCINO','5424','1');
INSERT INTO estudios_instituciones VALUES('274','262','1','','ENCINO','5430','1');
INSERT INTO estudios_instituciones VALUES('275','263','1','','ENCINO','5432','1');
INSERT INTO estudios_instituciones VALUES('276','264','1','','ENCINO','5435','1');
INSERT INTO estudios_instituciones VALUES('277','265','1','','TRIANA','CET145','1');
INSERT INTO estudios_instituciones VALUES('278','266','1','','ENCINO','5409','1');
INSERT INTO estudios_instituciones VALUES('279','267','1','','TRIANA','CET149','1');
INSERT INTO estudios_instituciones VALUES('280','268','1','','ENCINO','5440','1');
INSERT INTO estudios_instituciones VALUES('281','269','1','','ENCINO','5441','1');
INSERT INTO estudios_instituciones VALUES('282','270','1','','ENCINO','5445','1');
INSERT INTO estudios_instituciones VALUES('283','271','1','','TRIANA','CET153','1');
INSERT INTO estudios_instituciones VALUES('284','272','1','','ENCINO','5448','1');
INSERT INTO estudios_instituciones VALUES('285','273','1','','ENCINO','5452','1');
INSERT INTO estudios_instituciones VALUES('286','274','1','','ENCINO','5453','1');
INSERT INTO estudios_instituciones VALUES('287','135','1','','TRIANA','CET140','1');
INSERT INTO estudios_instituciones VALUES('288','275','1','','ENCINO','5454','1');
INSERT INTO estudios_instituciones VALUES('289','116','1','','TRIANA','CET121','1');
INSERT INTO estudios_instituciones VALUES('290','276','1','','ENCINO','5460','1');
INSERT INTO estudios_instituciones VALUES('291','95','1','','TRIANA','CET112','1');
INSERT INTO estudios_instituciones VALUES('292','277','1','','TRIANA','CET128','1');
INSERT INTO estudios_instituciones VALUES('293','278','1','','TRIANA','CET118','1');
INSERT INTO estudios_instituciones VALUES('294','279','1','','TRIANA','CET144','1');
INSERT INTO estudios_instituciones VALUES('295','280','1','','ENCINO','5462','1');
INSERT INTO estudios_instituciones VALUES('296','281','1','','ENCINO','CET138','1');
INSERT INTO estudios_instituciones VALUES('297','282','1','','ENCINO','5464','1');
INSERT INTO estudios_instituciones VALUES('298','283','1','','TRIANA','KP038','1');
INSERT INTO estudios_instituciones VALUES('299','284','1','','ENCINO','5466','1');
INSERT INTO estudios_instituciones VALUES('300','285','1','','ENCINO','5467','1');
INSERT INTO estudios_instituciones VALUES('301','286','1','','ENCINO','5468','1');
INSERT INTO estudios_instituciones VALUES('302','287','1','','ENCINO','5471','1');
INSERT INTO estudios_instituciones VALUES('303','288','1','','ENCINO','5474','1');
INSERT INTO estudios_instituciones VALUES('304','289','1','','ENCINO','5479','1');
INSERT INTO estudios_instituciones VALUES('305','290','1','','TRIANA','CET193','1');
INSERT INTO estudios_instituciones VALUES('306','291','1','','ENCINO','5483','1');
INSERT INTO estudios_instituciones VALUES('307','143','1','','TRIANA','CET148','1');
INSERT INTO estudios_instituciones VALUES('308','8','1','','TRIANA','','1');
INSERT INTO estudios_instituciones VALUES('309','292','1','','TRIANA','CET196','1');
INSERT INTO estudios_instituciones VALUES('310','293','1','','ENCINO','5504','1');
INSERT INTO estudios_instituciones VALUES('311','294','1','','TRIANA','CET205','1');
INSERT INTO estudios_instituciones VALUES('312','295','1','','TRIANA','','1');
INSERT INTO estudios_instituciones VALUES('313','296','1','','TRIANA','CET210','1');
INSERT INTO estudios_instituciones VALUES('314','297','1','','TRIANA','CET146','1');
INSERT INTO estudios_instituciones VALUES('315','298','1','','ENCINO','5520','1');
INSERT INTO estudios_instituciones VALUES('316','299','1','','TRIANA','CET219','1');
INSERT INTO estudios_instituciones VALUES('317','300','1','','TRIANA','CET220','1');
INSERT INTO estudios_instituciones VALUES('318','301','1','','TRIANA','CET221','1');
INSERT INTO estudios_instituciones VALUES('319','302','1','','TRIANA','CET115','1');
INSERT INTO estudios_instituciones VALUES('320','303','1','','ENCINO','5473','1');
INSERT INTO estudios_instituciones VALUES('321','304','1','','ENCINO','5422','1');
INSERT INTO estudios_instituciones VALUES('322','305','1','','TRIANA','CET229','1');
INSERT INTO estudios_instituciones VALUES('323','306','1','','TRIANA','CET226','1');
INSERT INTO estudios_instituciones VALUES('324','307','1','','ENCINO','5559','1');
INSERT INTO estudios_instituciones VALUES('325','308','1','','ENCINO','','1');
INSERT INTO estudios_instituciones VALUES('326','309','3','','TRIANA','KP027','1');
INSERT INTO estudios_instituciones VALUES('327','310','3','','TRIANA','KP028','1');
INSERT INTO estudios_instituciones VALUES('328','311','3','','TRIANA','KP029','1');
INSERT INTO estudios_instituciones VALUES('329','312','3','','TRIANA','KP030','1');
INSERT INTO estudios_instituciones VALUES('330','313','3','','TRIANA','KP031','1');
INSERT INTO estudios_instituciones VALUES('331','314','3','','ENCINO','CEE083','1');
INSERT INTO estudios_instituciones VALUES('332','315','3','','TRIANA','KP034','1');
INSERT INTO estudios_instituciones VALUES('333','316','3','','TRIANA','KP036','1');
INSERT INTO estudios_instituciones VALUES('334','317','3','','TRIANA','KP036','1');
INSERT INTO estudios_instituciones VALUES('335','318','3','','TRIANA','KP037','1');
INSERT INTO estudios_instituciones VALUES('336','283','3','','TRIANA','KP038','1');
INSERT INTO estudios_instituciones VALUES('337','319','3','','TRIANA','KP039','1');
INSERT INTO estudios_instituciones VALUES('338','320','3','','TRIANA','KP040','1');
INSERT INTO estudios_instituciones VALUES('339','272','3','','ENCINO','CEE104','1');
INSERT INTO estudios_instituciones VALUES('340','321','3','','TRIANA','CP042','1');
INSERT INTO estudios_instituciones VALUES('341','322','3','','TRIANA','KP043','1');
INSERT INTO estudios_instituciones VALUES('342','323','3','','TRIANA','KP044','1');
INSERT INTO estudios_instituciones VALUES('343','324','3','','TRIANA','KP045','1');
INSERT INTO estudios_instituciones VALUES('344','325','3','','TRIANA','KP046','1');
INSERT INTO estudios_instituciones VALUES('345','326','3','','TRIANA','KP047','1');
INSERT INTO estudios_instituciones VALUES('346','327','3','','TRIANA','KP048','1');
INSERT INTO estudios_instituciones VALUES('347','328','3','','TRIANA','KP049','1');
INSERT INTO estudios_instituciones VALUES('348','329','3','','TRIANA','KP050','1');
INSERT INTO estudios_instituciones VALUES('349','330','3','','TRIANA','KP051','1');
INSERT INTO estudios_instituciones VALUES('350','331','3','','TRIANA','KP052','1');
INSERT INTO estudios_instituciones VALUES('351','332','2','','ENCINO','CEE-016','1');
INSERT INTO estudios_instituciones VALUES('352','333','2','','TRIANA','CET-183','1');
INSERT INTO estudios_instituciones VALUES('353','334','2','','TRIANA','CET-185','1');
INSERT INTO estudios_instituciones VALUES('354','335','2','','TRIANA','CET-187','1');
INSERT INTO estudios_instituciones VALUES('355','336','2','','TRIANA','CET-188','1');
INSERT INTO estudios_instituciones VALUES('356','337','2','','TRIANA','CET-189','1');
INSERT INTO estudios_instituciones VALUES('357','338','2','','ENCINO','CEE-093','1');
INSERT INTO estudios_instituciones VALUES('358','339','2','','TRIANA','CET-191','1');
INSERT INTO estudios_instituciones VALUES('359','340','2','','TRIANA','CET-193','1');
INSERT INTO estudios_instituciones VALUES('360','341','2','','TRIANA','CET-195','1');
INSERT INTO estudios_instituciones VALUES('361','342','2','','TRIANA','CET-196','1');
INSERT INTO estudios_instituciones VALUES('362','343','2','','TRIANA','CET-197','1');
INSERT INTO estudios_instituciones VALUES('363','344','2','','TRIANA','CET-198','1');
INSERT INTO estudios_instituciones VALUES('364','345','2','','TRIANA','CET-199','1');
INSERT INTO estudios_instituciones VALUES('365','346','2','','TRIANA','CET-200','1');
INSERT INTO estudios_instituciones VALUES('366','347','2','','TRIANA','CET-201','1');
INSERT INTO estudios_instituciones VALUES('367','348','2','','TRIANA','CET-202','1');
INSERT INTO estudios_instituciones VALUES('368','349','2','','TRIANA','CET-203','1');
INSERT INTO estudios_instituciones VALUES('369','350','2','','TRIANA','CET-204','1');
INSERT INTO estudios_instituciones VALUES('370','294','2','','TRIANA','CET-205','1');
INSERT INTO estudios_instituciones VALUES('371','351','2','','TRIANA','CET-206','1');
INSERT INTO estudios_instituciones VALUES('372','352','2','','TRIANA','CET-207','1');
INSERT INTO estudios_instituciones VALUES('373','353','2','','TRIANA','CET-208','1');
INSERT INTO estudios_instituciones VALUES('374','354','2','','TRIANA','CET-209','1');
INSERT INTO estudios_instituciones VALUES('375','355','2','','TRIANA','CET-210','1');
INSERT INTO estudios_instituciones VALUES('376','356','2','','TRIANA','CET-211','1');
INSERT INTO estudios_instituciones VALUES('377','357','2','','TRIANA','CET-212','1');
INSERT INTO estudios_instituciones VALUES('378','358','2','','TRIANA','CET-213','1');
INSERT INTO estudios_instituciones VALUES('379','359','2','','TRIANA','CET-214','1');
INSERT INTO estudios_instituciones VALUES('380','360','2','','TRIANA','CET-215','1');
INSERT INTO estudios_instituciones VALUES('381','361','2','','TRIANA','CET-216','1');
INSERT INTO estudios_instituciones VALUES('382','362','2','','TRIANA','CET-217','1');
INSERT INTO estudios_instituciones VALUES('383','363','2','','TRIANA','CET-218','1');
INSERT INTO estudios_instituciones VALUES('384','364','2','','TRIANA','CET-219','1');
INSERT INTO estudios_instituciones VALUES('385','365','2','','TRIANA','CET-220','1');
INSERT INTO estudios_instituciones VALUES('386','366','2','','TRIANA','CET-221','1');
INSERT INTO estudios_instituciones VALUES('387','367','2','','TRIANA','CET-222','1');
INSERT INTO estudios_instituciones VALUES('388','368','2','','TRIANA','CET-223','1');
INSERT INTO estudios_instituciones VALUES('389','369','2','','TRIANA','CET-224','1');
INSERT INTO estudios_instituciones VALUES('390','370','2','','TRIANA','CET-225','1');
INSERT INTO estudios_instituciones VALUES('391','371','2','','TRIANA','CET-226','1');
INSERT INTO estudios_instituciones VALUES('392','372','2','','TRIANA','CET-227','1');
INSERT INTO estudios_instituciones VALUES('393','373','2','','TRIANA','CET-228','1');
INSERT INTO estudios_instituciones VALUES('394','305','2','','TRIANA','CET-229','1');
INSERT INTO estudios_instituciones VALUES('395','374','2','','TRIANA','CET-230','1');
INSERT INTO estudios_instituciones VALUES('396','375','2','','TRIANA','CET-231','1');
INSERT INTO estudios_instituciones VALUES('397','376','2','','TRIANA','CET-232','1');
INSERT INTO estudios_instituciones VALUES('398','377','2','','TRIANA','CET-233','1');
INSERT INTO estudios_instituciones VALUES('399','378','2','','TRIANA','CET-234','1');



DROP TABLE IF EXISTS evaluacion_familia;

CREATE TABLE `evaluacion_familia` (
  `id_evaluacion_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `apreciacion` varchar(255) DEFAULT NULL,
  `discrepancia` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_evaluacion_familia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO evaluacion_familia VALUES('1','450','7','CONFIABLE','NINGUNA','2017-KP-7');



DROP TABLE IF EXISTS familia;

CREATE TABLE `familia` (
  `id_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_institucion` int(11) NOT NULL,
  `clave_familia` varchar(255) DEFAULT NULL,
  `familia` varchar(255) DEFAULT NULL,
  `num_hijos_cet` varchar(255) DEFAULT NULL,
  `num_hijos_cee` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `num_ext` varchar(255) DEFAULT NULL,
  `num_int` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `telefono_casa` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `estado_civil_padres` varchar(255) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `nombre_papa` varchar(255) DEFAULT NULL,
  `apellido_paterno_papa` varchar(255) DEFAULT NULL,
  `apellido_materno_papa` varchar(255) DEFAULT NULL,
  `edad_papa` varchar(255) DEFAULT NULL,
  `correo_papa` varchar(255) DEFAULT NULL,
  `rfc_papa` varchar(255) DEFAULT NULL,
  `celular_papa` varchar(255) DEFAULT NULL,
  `profesion_papa` varchar(255) DEFAULT NULL,
  `ocupacion_papa` varchar(255) DEFAULT NULL,
  `empresa_papa` varchar(255) DEFAULT NULL,
  `puesto_papa` varchar(255) DEFAULT NULL,
  `giro_papa` varchar(255) DEFAULT NULL,
  `dueno_papa` varchar(255) DEFAULT NULL,
  `antiguedad_papa` varchar(255) DEFAULT NULL,
  `sueldo_papa` int(11) DEFAULT '0',
  `nombre_mama` varchar(255) DEFAULT NULL,
  `apellido_paterno_mama` varchar(255) DEFAULT NULL,
  `apellido_materno_mama` varchar(255) DEFAULT NULL,
  `edad_mama` varchar(255) DEFAULT NULL,
  `correo_mama` varchar(255) DEFAULT NULL,
  `rfc_mama` varchar(255) DEFAULT NULL,
  `celular_mama` varchar(255) DEFAULT NULL,
  `profesion_mama` varchar(255) DEFAULT NULL,
  `ocupacion_mama` varchar(255) DEFAULT NULL,
  `empresa_mama` varchar(255) DEFAULT NULL,
  `puesto_mama` varchar(255) DEFAULT NULL,
  `giro_mama` varchar(255) DEFAULT NULL,
  `dueno_mama` varchar(255) DEFAULT NULL,
  `antiguedad_mama` varchar(255) DEFAULT NULL,
  `sueldo_mama` int(11) DEFAULT '0',
  `compartida` varchar(255) DEFAULT NULL,
  `fecha_nacimiento_papa` date DEFAULT NULL,
  `fecha_nacimiento_mama` date DEFAULT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO familia VALUES('1','1','','VALDEZ CASILLAS ','','','Juan de Tolosa ','','','Fracc. Jardines de la Asunción ','','','','9133550','','','2017-03-01','2017-03-01 12:16:33','ALEJANDRO','VALDEZ','SANTACRUZ','','cano6666@yahoo.com ','','4499048599','','','','','','','','0','MA. ISABEL','CASILLAS','PELLAT','','isacasillas_4@hotmail.com ','','4498946773','','','','','','','','0','','','');
INSERT INTO familia VALUES('2','1','','DIAZ ROSALES','','1','OJOCALIENTE','219','23','FRACC. EX EJIDO OJOCALIENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9718547','','','2017-03-01','2017-03-09 12:18:44','EDUARDO','DÍAZ','ROMO','','eduardo_diazags@hotmail.com','','4492466219','','','','','','','','0','LAURA MIREYA','ROSALES','BAUTISTA','','laura_mireya_r_b@hotmail.com','','4498067656','','','','','','','','0','','','');
INSERT INTO familia VALUES('3','1','','CUADRO MORENO RODRÍGUEZ','2','2','ARROLLO EL MOLINO','301','172','EL LLANO','JESÚS MÁRIA','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:33:22','ANDRÉS ESTEBAN','CUADRO','MORENO','','aecuamo@gmail.com','','4491119383','','','','','','','','0','MARIANA CECILIA','RIDRIGUEZ','','','rodriguezmariana@yahoo.com','','4491119397','','','','','','','','0','','','');
INSERT INTO familia VALUES('4','1','','ANAYA DE LA TORRE','1','1','MOLINO DE BELÉN','137','','FRACC. VILLAS DEL MOLINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2517617','','','2017-03-01','2017-03-09 12:00:45','ALEJANDRO','ANAYA','REYNOSO','','alanrey2002@yahoo.com.mx','','4491067205','','','','','','','','0','ALEJANDRA LIZETTE','DE LA TORRE','INFANTE','','delatorreale@yahoo.com','','4491066761','','','','','','','','0','','','');
INSERT INTO familia VALUES('5','1','','CARBONELL TAGLE ','','','Canal Interceptor 712 ','','','Fracc. Bosques de la Alameda ','','','','1460555','','','2017-03-01','','Jose Antonio Carbonell López ','','','','jacarbonelll@hotmail.com ','','4491204999','','','','','','','','0','Cristina del Pilar Tagle Jiménez ','','','','cristtagle@hotmail.com ','','4495487678','','','','','','','','0','','','');
INSERT INTO familia VALUES('6','1','','MARROQUÍN GONZÁLEZ','','1','LA RIOJA','217','','','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 09:29:44','GERARDO JAVIER','MARROQUÍN','ABIEN','','jerry_marro@hotmail.com','','4491125599','','','','','','','','0','KAYLA MELINA','GONZÁLEZ','ROMÁN','','keylaglezromano@yahoo.com.mx','','4491284002','','','','','','','','0','','','');
INSERT INTO familia VALUES('7','1','','MEDRANO MEDINA','','1','AMAPA','609','','FRACC. JARDINES DE CAMPO REAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 09:24:13','SALVADOR','MEDRANO','PÉREZ','','smedranop@hotmail.com','','4491114394','','','','','','','','0','GABRIELA','MEDINA','LÓPEZ','','gabymedinal@hotmail.com','','4491866046','','','','','','','','0','','','');
INSERT INTO familia VALUES('8','1','','OCAMPO JACOBO ','1','','AV. STA. MÓNICA','201','12','FRACC. RANCHO SANTA MÓNICA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 10:38:51','MANUEL','OCAMPO','LÓPEZ','','zancudo27.5@hotmail.com ','','4492324565','','','','','','','','0','MA. PATRICIA','JACOBO','CARILLO','','paty0670@hotmail.com ','','4499040857','','','','','','','','0','','','');
INSERT INTO familia VALUES('9','1','','GUERRERO FRANCO','1','1','MITLA','101','','FRACC. PIRAMIDES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9781091','','','2017-03-01','2017-03-09 13:09:23','HERNAN EDUARDO','GUERRERO','DAVILA','','hguerreroda@outlook.com','','2267813','','','','','','','','0','TERESA DEL SOCORRO','FRANCO','LÓPEZ','','tfrancol@outlook.com','','4498944605','','','','','','','','0','','','');
INSERT INTO familia VALUES('10','1','','DÁVALOS CUADRA','1','1','AV. LA QUERENCIA','302','117','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189578','','','2017-03-01','2017-03-09 09:09:49','ALFONSO ROBERTO','DÁVALOS','DÁVALOS','','addarq78@gmail.com','','4491553615','','','','','','','','0','LUZ ELVIRA','CUADRA','ARÉCHIGA','','elviracu@yahoo.com','','4491117980','','','','','','','','0','','','');
INSERT INTO familia VALUES('11','1','','MARTINEZ LEDEZMA ','','1','TEOTIHUACÁN','106','','FRACC. PIRÁMIDES ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 13:37:35','J. ELEAZAR','MARTÍNEZ','SANTACRUZ','','c.releazar@hotmail.com ','','4494605798','','','','','','','','0','ILDA','LEDESMA','SÁNDEZ','','creleazar@hotmail.com ','','4492250619','','','','','','','','0','','','');
INSERT INTO familia VALUES('12','1','','LÓPEZ ESPINO','','1','JACARANDAS','11','','FRACC. PULGAS PANDAS SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6884207','','','2017-03-01','2017-03-09 09:02:11','','','','','','','','','','','','','','','0','FABIOLA','ESPINO','VILLA','','fabiolaespino@hotmail.com','','4491558327','','','','','','','','0','','','');
INSERT INTO familia VALUES('13','1','','ROMO CORTÉS','','','Paseo del Olivar Pte. ·225','','','Fracc.  Nueva Alameda','','','','9754705','','','2017-03-01','','Victor Manuel Romo Gallegos','','','','vromo2001@yahoo.com','','4499408324','','','','','','','','0','Gabriela Cortés Ruiz','','','','gabriela.vicsan@hotmaill,com','','4491790439','','','','','','','','0','','','');
INSERT INTO familia VALUES('14','1','','RODRIGUEZ PONCE','1','1','AV. CAMINO DE SANTIAGO','101','','LA RIOJA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9188036','','','2017-03-01','2017-03-09 10:29:12','OSCAR','OSCAR','RANGEL','','','','4491204988','','','','','','','','0','VERONICA','PONCE','CHÁVEZ','','','','4492102048','','','','','','','','0','','','');
INSERT INTO familia VALUES('15','1','','MUÑOZ GOMEZ','1','1','AVE. SAN ANTONIO','302','59','FRACC. STA. MÓNICA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:21:13','JESÚS GUSTAVO','MÚÑOZ','ALTAMIRANO','','familiamunozgomez@yahoo.com.mx','','4499111161','','','','','','','','0','ANA MÓNICA','GÓMEZ','MTZ','','anacomerciantes@yahoo.com.mx','','4494487511','','','','','','','','0','','','');
INSERT INTO familia VALUES('16','1','','SÁNCHEZ LÓPEZ','','','PASEO DE LOS CHOPOS','119','','FRACC. PULGAS PANDAS SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9965473','','','2017-03-01','2017-03-09 11:56:03','FILEMÓN','SÁNCHEZ','CHAVEZ','','filesch@yahoo.com','','4491177340','','','','','','','','0','SILVIA YOLANDA','LÓPEZ','GONZÁLEZ','','silviayolandalopez@yahoo.com.mx','','4491552450','','','','','','','','0','','','');
INSERT INTO familia VALUES('17','1','','CALDERON MUÑIZ','','','Palenque No. 108 ','','','Fracc. Pirámides ','','','','9170484','','','2017-03-01','','Hécto Manuel Calderón Torres','','','','h-calderon@ti.com','','4491866222','','','','','','','','0','Ma. De los Angeles Muñiz Jáuregui','','','','angymi82@gmail.com','','4491515680','','','','','','','','0','','','');
INSERT INTO familia VALUES('18','1','','PINEDA CAMPOS','','2','AURORA BOREAL','312','','FRACC. VISTAS DEL SOL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9706678','','','2017-03-01','2017-03-10 10:10:08','JOSÉ JULIO','PINEDA','OCHOA','','jjpineda69@yahoo.com','','4498041606','','','','','','','','0','MARTHA ESTHER','CAMPOS','ALCANTAR','','meca72@yahoo.com.mx','','4495484921','','','','','','','','0','','','');
INSERT INTO familia VALUES('19','1','','ESPARZA FLORES','1','1','SANTUEI','117','','FRACC. VILLA CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9774233','','','2017-03-01','2017-03-09 09:06:21','VICTOR ABEL','ESPARZA','JIMÉNEZ','','avel_caroltex@hotmail.com.mx','','4498071639','','','','','','','','0','JUANA DORIANA','FLORES','TERRONES','','doriana1977@hotmail.com','','4491144687','','','','','','','','0','','','');
INSERT INTO familia VALUES('20','1','','DELGADO FLORES','2','1','AV. LA QUERANCIA','302','15','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189519','','','2017-03-01','2017-03-09 12:12:27','JUAN ANTONIO','DELGADO','ENRÍQUEZ','','juandelgadoenriquez@hotmail.com','','4491289215','','','','','','','','0','GABRIELA','FLORES','DE LUNA','','gabyfdl@hotmail.com','','4494159788','','','','','','','','0','','','');
INSERT INTO familia VALUES('21','1','','OROZCO GARCIA','2','1','CDA. GRECIA','501','','FRACC. XENIA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9150055','','','2017-03-01','2017-03-09 09:54:44','ALFONSO','OROZCO','LÓPEZ','','gnsorozco@yahoo.com','','444413758','','','','','','','','0','MARÍA VERÓNICA','GARCÍA','HURTADO','','veroghu@yahoo.com.mx','','4491506984','','','','','','','','0','','','');
INSERT INTO familia VALUES('22','1','','TRINIDAD NAVARRETE','','1','EL PALMERAL','406','138','LOMAS SANTA ANITA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9751532','','','2017-03-01','2017-03-09 12:29:23','JORGE','TRINIDAD','MONREAL','','jorgemonreal15@hotmail.com','','4492639555','','','','','','','','0','IRMA','NAVARRETE','GÓMEZ','','jorgemonreal15@hotmail.com','','4499037263','','','','','','','','0','','','');
INSERT INTO familia VALUES('23','1','','PEREZ VITAL','','1','AV. MIGUEL A. BARBERENA VEGA','','520','FRACC. MUNICIPIO LIBRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:19:25','ARMANDO','PÉREZ','SILVA','','no tiene','','4491073569','','','','','','','','0','AMPARO','VITAL','LUGO','','amparo_vital@hotmail.com','','4492619388','','','','','','','','0','','','');
INSERT INTO familia VALUES('24','1','','MARTINEZ JIMENEZ','1','1','CORDILLERA DE LOS ALPES PTE.','135','','FRACC. JARDÍNES DE LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9120904','','','2017-03-01','2017-03-10 13:52:42','RUBEN','MARTÍNEZ','LÓPEZ','','rubenmtzlopez@hotmailcom','','','','','','','','','','0','HILDA','JIMENEZ','JIMENEZ','','hilda_jmz76@icloud.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('25','1','','RUIZ VELASCO OBREGÓN','','1','VALLE DEL YAQUI','103','','FRACC. CERRADA DEL VALLE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1465997','','','2017-03-01','2017-03-09 13:49:42','ERNESTO','RUIZ VELAZCO','DE LIRA','','ernestoruizvelasco@hotmail.com','','4491554762','','','','','','','','0','SIVIA VERÍNICA','OBREGÓN','SALADO','','silviaorv@hotmail.com','','4498908709','','','','','','','','0','','','');
INSERT INTO familia VALUES('26','1','','GALVAN GOMEZ','','1','FLOREO','216','','FRACC. VISTA ALEGRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 09:27:22','JUAN','GALVÁN','ENDESCA','','juan_dalia..@hotmail.com','','4491828672','','','','','','','','0','DALIA IRMA','GÓMEZ','LAMAS','','jua_dalia@hotmail.com','','4491828670','','','','','','','','0','','','');
INSERT INTO familia VALUES('27','1','','LOPEZ FABILA','','2','MISIONES','101','','FRACC. SANTO DOMINGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6882205','','','2017-03-01','2017-03-09 13:16:00','CARLOS RAMÓN','LÓPEZ','TAPIA','','cadajp@hotmail.com','','9512402263','','','','','','','','0','ALEJANDRA DEL C.','FABILA','MONTALVO','','alefabila@hotmail.com','','4491904126','','','','','','','','0','','','');
INSERT INTO familia VALUES('28','1','','CABRERA MORALES','','1','MISIÓN DE SANTO TOMÁS','345','','FRACC. MISIÓN DEL CAMPANARIO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1530967','','','2017-03-01','2017-03-09 12:32:16','MARCO ANTONIO','CABRERA','GUTIÉRREZ','','corsel.marcocabrera@gmail.com','','4491838386','','','','','','','','0','ANA BERTHA','MORALES','FLORES','','anabertha81@gmail.com','','4491259879','','','','','','','','0','','','');
INSERT INTO familia VALUES('29','1','','ROMERO MACIAS','1','1','ROMERO MACÍAS','126','','PASEO DE LOS PIRULES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 12:54:50','CESAR ALEJANDRO','ROMERO','PINEDA','','cesar_romero@ck-mail.com','','4499110536','','','','','','','','0','CLAUDIA ELIZABETH','MACÍAS','SANTILLÁN','','claumacsan@hotmail.com','','4491077002','','','','','','','','0','','','');
INSERT INTO familia VALUES('30','1','','LOPEZ YUNGTINGPING','1','1','JINETEO','311','','FRACC. VISTA ALEGRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9295031','','','2017-03-01','2017-03-10 13:35:16','JOSÉ RAFAEL','LÓPEZ','RIVERA','','raflex22.lopez@gmail.com','','4491557630','','','','','','','','0','GABRIELA','YUNGTINGPING','ATILANO','','gab_yung@hotmail.com','','4491095323','','','','','','','','0','','','');
INSERT INTO familia VALUES('31','1','','LOMELI GARDUÑO','1','1','PASEO DE LOS ALAMOS','123','5','FRACC. PULGAS PANDAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531066','','','2017-03-01','2017-03-09 09:04:45','JORGE','LOMELI','CHAVEZ','','jorgelomelich@gmail.com','','4498906682','','','','','','','','0','VERÓNICA','GARDUÑO','PEREDA','','verolomeli@hotmail.com','','4498043026','','','','','','','','0','','','');
INSERT INTO familia VALUES('32','1','','MURO GARDUÑO','1','1','PASEO DE LOS ALAMOS #','1','10','FRACC. PULGAS PANDAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9126699','','','2017-03-01','2017-03-10 10:19:17','FRANCISCO ALEJANDRO','MURO','ALCALA','','paco_muro@gmail.com','','4494064955','','','','','','','','0','ADRIANA','GARDUÑO','PEREDA','','adrianagardunopereda@hotmail.com','','4491245555','','','','','','','','0','','','');
INSERT INTO familia VALUES('33','1','','BORREGO CRUZ','','','Hernán Cortés#99','','','Fracc. Vergeles ','','','','9930257','','','2017-03-01','','Francisco Borrego Acevedo','','','','el_centenario@prodigy.net.mx','','4499193335','','','','','','','','0','Sofía Aurora Cruz Topete','','','','sact@hotmail.com','','4492033089','','','','','','','','0','','','');
INSERT INTO familia VALUES('34','1','','LLAMAS GARCIA','','1','PRIVADA LA HERRADURA','315','','FRACC. ANTIGUO COUNTRY','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 10:31:16','LUIS FERNANDO','LOMELI','LOMELI','','lfll_09@hotmail.com','','4492564144','','','','','','','','0','LIZETH GABRIELA','GARCIA','MERAZ','','liz.garmer@gmail.com','','4491731387','','','','','','','','0','','','');
INSERT INTO familia VALUES('35','1','','DE LA FUENTE BARBA','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('36','1','','VARGAS LOPEZ','1','1','CORDILLERA DE LOS ALPES SUR','224','','FRACC. LA CONCEPCIÓN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9965507','','','2017-03-01','2017-03-09 13:14:41','JESUS','VARGAS','HERNÁNDEZ','','jesusvargashz@hotmail.com','','4494645124','','','','','','','','0','GUILLERMINA DE LOS ANGELES','LOPEZ','AMEZCUA','','gala13-02@hotmail.com','','4491235833','','','','','','','','0','','','');
INSERT INTO familia VALUES('37','1','','RODRÍGUEZ RÍOS','','1','FEDERICO GARCÍA LORCA','704','','FRACC. MODERNO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9165718','','','2017-03-01','2017-03-10 10:28:20','ALFONSO','RODRÍGUEZ','DELGADO','','poncsiux@hotmail.com','','4499068800','','','','','','','','0','LUZ MARÍA','RÍOS','PEREZ','','luzma_rios14@hotmail.com','','4491266331','','','','','','','','0','','','');
INSERT INTO familia VALUES('38','1','','DOCTER RANGEL','','','Jardín de los Cerezos 117 ','','','Fracc. Jardines del Parque ','','','','9170516','','','2017-03-01','','Mark Steven Fenn','','','','mdocter77@hotmail.com','','4491784969','','','','','','','','0','Laura Eugenia Rangel Morán','','','','dormle@hotmail.com','','4492241764','','','','','','','','0','','','');
INSERT INTO familia VALUES('39','1','','SUAREZ GUTIERREZ','1','1','ALMACIGOS','111','','FRACC. VALLE DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9143147','','','2017-03-01','2017-03-09 11:51:41','MARCOS','RODRÍGUEZ','RODRÍGUEZ','','msuarez@sabro.com.mx','','4499074882','','','','','','','','0','ANA MARÍA','GUTIÉRREZ','ALVAREZ','','ana.maria.gutierrez@hotmail.com','','4495526573','','','','','','','','0','','','');
INSERT INTO familia VALUES('40','1','','ARMENDARIZ BARRON','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('41','1','','RANGEL MUÑOZ','','','Paseo de la Alameda 123}','','','Fracc. Misión Alameda ','','','','','','','2017-03-01','','Jaime F.Rangel Jiménez','','','','dr_jrangel@hotmail.com','','4499113570','','','','','','','','0','Karina Ivette Muñoz Popoca','','','','karinapopoca@hotmail.com','','4491558934','','','','','','','','0','','','');
INSERT INTO familia VALUES('42','1','','MALDONADO MUÑOZ','2','','CERRO DE LA BUFA','405','','LA CONCEPCION','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531633','','','2017-03-01','2017-03-09 09:36:25','JUAN JOSE','MALDONADO','RODRÍGUEZ','','accesorioselamigo@gmail.com','','4491916896','','','','','','','','0','NYDIA FERNANDA','MUÑOZ','SERNA','','fermunoz28@gmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('43','1','','SALADO ALONSO ','1','','JUAN PABLO II','1003','63','FRACC. EUCALIPTOS I','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:53:03','GILBERTO RAFAEL','SALADO','MARTÍNEZ','','cadu_gsalado@hotmail.com','','4499500687','','','','','','','','0','ANA VICTORIA','ALONSO','GONZÁLEZ','','victoria.alonso@katun.com','','4494159554','','','','','','','','0','','','');
INSERT INTO familia VALUES('44','1','','CISNEROS SANTANA','','','Artes Plásticas 126','','','Entorno Alameda','','','','','','','2017-03-01','','Alberto Cisneros Villaseñor','','','','cigabanonos@hotmail.com','','4499116465','','','','','','','','0','Patricia Santana Sanchez','','','','pattysantana2009ahotmail.com','','4492653619','','','','','','','','0','','','');
INSERT INTO familia VALUES('45','1','','BUJDUD FUENTES','1','1','JUAN PABLO II','1003','','FRACC. EUCALIPTOS I','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9761510','','','2017-03-01','2017-03-09 09:57:21','JUAN MANUEL','BUJDUD','PÉREZ','','neon70mx@yahoo.com.mx.','','4491973961','','','','','','','','0','ALMA BEATRZ','FUENTES','VELÁZQUEZ','','almafuentes2201@hotmail.com','','4498062349','','','','','','','','0','','','');
INSERT INTO familia VALUES('46','1','','GUZMÁN REYES','','2','ARROYO EL CAJÓN','21','','FRACC. TRES ARROYOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9142294','','','2017-03-01','2017-03-09 11:29:51','DAMIÁN ALBERTO','GUZMÁN','COLIS','','dagc666@hotmail.com','','4498905270','','','','','','','','0','YESSICA','REYES','GALLEGOS','','yessicareyesgallegos@gmail.com','','4499309621','','','','','','','','0','','','');
INSERT INTO familia VALUES('47','1','','FEMAT BARTZIK','','','Privada Calicantos # 1','','','Fracc. Residencial Calicantos','','','','9736406','','','2017-03-01','','Humberto Femat Fuentes','','','','humberto.femat@gff.com.mx','','5530206940','','','','','','','','0','Elizabeth Bartzik Robert','','','','liz.bartzik@gmail.com','','4497693902','','','','','','','','0','','','');
INSERT INTO familia VALUES('48','1','','RODRIGUEZ ALBA','2','1','JARDIN DE CHOLULA','208','','JARDINES DE LAS FUENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1711508','','','2017-03-01','2017-03-09 12:13:20','JORGE ALBERTO','RODRÍGUEZ','ORTEGA','','alberto_rdz_ort@hotmail.com','','4498906274','','','','','','','','0','ZENYAZE JACQUELINE','ALBA','FIGUEROA','','jacqueline_sstar16@htomail.com','','449 324 59 80','','','','','','','','0','','','');
INSERT INTO familia VALUES('49','1','','MARES ESPARZA','','1','LOYOLA ESCOBEDO','204','','FRACC. VISTAS DEL SOL. III','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9705755','','','2017-03-01','2017-03-09 10:31:20','DANIEL','MARES','HERNÁNDEZ','','danielmares@gmail.com','','4491236175','','','','','','','','0','RITA JAQUELINE','ESPARZA','SOLIS','','jaquelinesparza@hotmail.com','','4492043636','','','','','','','','0','','','');
INSERT INTO familia VALUES('50','1','','ALONSO DIAZ DE LEON','1','1','MIER Y PESADO','106','','FRACC. EL ENCINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9941810','','','2017-03-01','2017-03-09 13:33:52','','','','','','','','','','','','','','','0','MATHA PATRICIA','ALONSO','DÍAZ DE LEÓN','','mpaddl@gmail.com','','4491971629','','','','','','','','0','','','');
INSERT INTO familia VALUES('51','1','','VILLAGOMEZ MEDINA','','1','LA BISBAL','115','','FRACC. VILLAS DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2937967','','','2017-03-01','2017-03-09 13:27:33','MARCO ANTONIO','VILLAGÓMEZ','HERNANDEZ','','marvimex@gmail.com','','4492270615','','','','','','','','0','SAHIRA MARIEL','MEDINA','HEREDIA','','marvimex@gmail.com','','4491917494','','','','','','','','0','','','');
INSERT INTO familia VALUES('52','1','','GRUEST MIRANDA','1','2','SIERRA NEVADA','405','','FRACC. BOSQUES DEL PRADO NTE.','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 09:28:02','ROBERTO EDGARD','GRUEST','ELLIOT','','rge@grupo-gst.com','','4491961728','','','','','','','','0','CONCEPCIÓN','MIRANDA','PATIÑO','','cmiranda@miraplastek.com.mx','','4491066773','','','','','','','','0','','','');
INSERT INTO familia VALUES('53','1','','DE LA TORRE DE LUNA','','3','PASEO DE LOS SAUCES','114','','FRACC. BOSQUES DEL PRADO ORIENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9721765','','','2017-03-01','2017-03-09 11:49:23','GILBERTO','DE LA TORRE','GONZALEZ','','interpec63@hotmail.com','','4491125117','','','','','','','','0','MA. LETICIA','DE LUNA','MARTÍNEZ','','no tiene','','4493657305','','','','','','','','0','','','');
INSERT INTO familia VALUES('54','1','','BERNAL GONZÁLEZ','','4','PASEO DE ALCATRACES','101','','FRACC. JARDÍNES DEL LAGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9181310','','','2017-03-01','2017-03-09 13:53:37','HÉCTOR ÁNGEL','BERNAL','RUBALCAVA','','pipobr77@hotmail.com','','4494487058','','','','','','','','0','MIRIAM','GONZÁLEZ','LÓPEZ','','miriamgl78@hotmail.com','','4491554259','','','','','','','','0','','','');
INSERT INTO familia VALUES('55','1','','LEOS LOPEZ','1','3','GAZPAR LÓPEZ','601','','FRACC. JARDINES DE LAS FUENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9134034','','','2017-03-01','2017-03-09 12:42:11','ISRAEL','LEOS','AGUIRRE','','ileosa@hotmail.com','','4491234761','','','','','','','','0','KARLA TERESA','LÓPEZ','ALVAREZ','','karlalopezalvarez76@gmail.com','','4491950603','','','','','','','','0','','','');
INSERT INTO familia VALUES('56','1','','MACIAS GUTIERREZ','','1','SEGURO SOCIAL','311','','FRACC. DEL TRABAJO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9751462','','','2017-03-01','2017-03-09 12:46:32','JOSÉ ANTONIO','MACÍAS','CÓRDOVA','','jamacias@live.com.mx','','4499064165','','','','','','','','0','ROSA ADRIANA','GUTIÉRREZ','VELOZ','','rosy.gtz@live.com.mx','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('57','1','','ALARCON LOZADA','','1','VIVERO DE LA LOMA','202','','FRACC. CASA BLANCA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9774824','','','2017-03-01','2017-03-09 12:17:04','OSCAR','BARRERA','BARRERA','','duikersports@hotmail.com','','4499907432','','','','','','','','0','ERIKA','LOZADA','VERA','','erika.lozada@hotmail.com','','4491669801','','','','','','','','0','','','');
INSERT INTO familia VALUES('58','1','','ARREOLA REYNOSO','','','Paseos del Campestre #127','','','Fracc. Q Campestre','','','','2381150','','','2017-03-01','','Jose Manuel Arreola Guerra','','','','dr.jmag@gmail.com','','4494632049','','','','','','','','0','Yessica Reynoso Cruz','','','','rc.yessi@hotmail.com','','3314093667','','','','','','','','0','','','');
INSERT INTO familia VALUES('59','1','','CASILLAS TORRES','','1','SIERRA DE LAS PALOMAS','318','','FRACC. BOSQUES DEL PRADO SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9141963','','','2017-03-01','2017-03-09 12:08:56','JOSE DE JESUS','CASILLAS','RAYGOZA','','no tiene','','4494122172','','','','','','','','0','MARÍA DEL CARMNE','TORRES','RAYGOZA','','macarmentorres@hotmail.com','','4491111174','','','','','','','','0','','','');
INSERT INTO familia VALUES('60','1','','ALBA LOPEZ','1','2','CIRCUITO PASEO ALAMEDA','219','','FRACC. MISIÓN ALAMEDA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1453860','','','2017-03-01','2017-03-09 11:45:48','JUAN CARLOS','ALBA','HUERTA','','juan-carlos.alba@schneider-electric.com','','4491553927','','','','','','','','0','REBECA','LÓPEZ','PÉREZ','','rebelp2000@yahoo.com.mx','','4494946788','','','','','','','','0','','','');
INSERT INTO familia VALUES('61','1','','VALDIVIA LOPEZ','1','1','BOGOTÁ','301','13','FRACC. LA FUENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','3184832','','','2017-03-01','2017-03-09 13:12:30','JOSÉ ANTONIO','VALDIVIA','VELASCO','','construlapurisima@gmail.com','','4491869173','','','','','','','','0','ALEJANDRA','LÓPEZ','OBREGÓN','','alopezobregon@gmial.com','','4491869179','','','','','','','','0','','','');
INSERT INTO familia VALUES('62','1','','MARTINEZ GALLEGOS','','1','EL TULE','231','','FRACC. RESIDENCIAL DEL PARQUE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1408439','','','2017-03-01','2017-03-09 13:07:29','','','','','','','','','','','','','','','0','MARTHA ELENA','GALLEGOS','ORTEGA','','dramarthagallegos@hotmail.com','','4492096813','','','','','','','','0','','','');
INSERT INTO familia VALUES('63','1','','REYES DIAZ DE LEON','','1','ALMERIA','201','A','FRACC. ESPAÑA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9010344','','','2017-03-01','2017-03-09 13:19:49','JUAN VICENTE','REYES','RANGEL','','vireyesmx@hotmail.com','','1220780','','','','','','','','0','GABRIELA','DÍAZ DE LEÓN','ESQUIVEL','','ofinex1@yahoo.com.mx','','4491554068','','','','','','','','0','','','');
INSERT INTO familia VALUES('64','1','','SANCHEZ SILVA','','1','REP. URUGUAY','1805','','FRACC. AGRICULTURA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9789020','','','2017-03-01','2017-03-09 09:23:31','RAMIRO','SÁNCHEZ','GUTIÉRREZ','','dr.ramiro71@hotmail.com','','4491423158','','','','','','','','0','TANIA','SILVA','SANTILLÁN','','sansiltan@hotmail.com','','4491738911','','','','','','','','0','','','');
INSERT INTO familia VALUES('65','1','','MARTINEZ GUERRA','1','3','PASEO DEL MOLINO','613','','FRACC. COTO SAN NICOLAS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9762470','','','2017-03-01','2017-03-09 09:52:20','AUSTREBERTO','MARTINEZ','RUIZ','','austreberto.m@gmail.com','','4498041233','','','','','','','','0','LILIA GRACIELA','GUERRA','JIMÉNEZ','','gguerra72@hotmail.com','','4498043643','','','','','','','','0','','','');
INSERT INTO familia VALUES('66','1','','ZEGBEL MEDEL','2','1','AV. VALLES','702','','FRACC. RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9940525','','','2017-03-01','2017-03-09 10:34:40','OMAR','ZEGBEL','DOMÍNGUEZ','','o_zegbel@yahoo.com.mx','','4499066160','','','','','','','','0','MIRIAM CECILIA','MEDEL','ROJERO','','miriam.medelrojero@yahoo.com.mx','','4491838369','','','','','','','','0','','','');
INSERT INTO familia VALUES('67','1','','DÍAZ HERNÁNDEZ','','','Versalles 1023','','','Fracc. Del Valle II ','','','','','','','2017-03-01','','Victor Manuel Díaz Macías','','','','victormanuel.diaz1@pmi.com','','4491559778','','','','','','','','0','Ana Luisa Hernández Martínez','','','','annylost@hotmail.com','','4494606341','','','','','','','','0','','','');
INSERT INTO familia VALUES('68','1','','CAMPOS PADILLA','','2','ALFONSO ESPARZA OTEO','207','','FRACC. SAN MARCOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9169660','','','2017-03-01','2017-03-09 13:11:03','RAÚL','CAMPOS','DE ANDA','','rcdeanda@hotmail.com','','4499112634','','','','','','','','0','SILVIA','PADILLA','PÉREZ','','sylviapape5@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('69','1','','LOPEZ GONZALEZ ','1','3','CDA. 2A.VALLE DE GUADALUPE','205','11','FRACC. FÁTIMA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531716','','','2017-03-01','2017-03-09 09:26:08','LUIS NORBERTO','LÓPEZ','LÓPEZ','','lunololo_2000@yahoo.com','','4499111778','','','','','','','','0','MARÍA DE FÁTIMA','GONZÁLEZ','RODRÍGUEZ','','fagonzal2001@yahoo.com','','4491575013','','','','','','','','0','','','');
INSERT INTO familia VALUES('70','1','','CISNEROS HERNANDEZ GOMEZ','','','Novelistas 129 ','','','Fracc. José Vasconcelos ','','','','9760121','','','2017-03-01','','Victor Cisneros Castillo','','','','vcisnerosc@yahoo.com.mx','','4491874935','','','','','','','','0','Lilia Hernández Gómez Palomino','','','','lilyahegopa@hayoo.com.mx','','4491874664','','','','','','','','0','','','');
INSERT INTO familia VALUES('71','1','','CALVILLO ROJAS','','2','CAPUCHINAS','436','','FRACC. VILLA TERESA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9965679','','','2017-03-01','2017-03-09 12:44:05','JORGE','CALVILLO','FEMAT','','no tiene','','4499805230','','','','','','','','0','NORMA PATRICIA','ROJAS','PADILLA','','patyrojas.ags@hotmail.com','','4494489798','','','','','','','','0','','','');
INSERT INTO familia VALUES('72','1','','RAMIREZ MADRIGAL ','','2','LAS CARRETAS','55','','FRACC. TROJES DE KRYSTAL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9736806','','','2017-03-01','2017-03-10 13:27:11','JUAN CARLOS','RAMÍREZ','DÍAZ TORRE','','jcramirez@summitincmexico.com ','','4499600124','','','','','','','','0','ANA LORENA','MADRIGAL','PEÑA','','analorena.5@hotmail.com ','','4491111222','','','','','','','','0','','','');
INSERT INTO familia VALUES('73','1','','DE LUNA RÍOS','','1','VICENTE RIVA PALACIO','120','','FRACC. MODERNO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9162260','','','2017-03-01','2017-03-09 12:15:07','EVERARDO','DE LUNA','MÁRQUEZ','','lunade19@hotmail.com','','4491113591','','','','','','','','0','MA. DE LOS DOLORES','RÍOS','MARQUEZ','','riosl_89@hotmail.com','','4491552138','','','','','','','','0','','','');
INSERT INTO familia VALUES('74','1','','SÁNCHEZ MORENO','','2','RINCÓN ANDALÚZ','438','','FRACC.  RINCÓN ANDALUZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2380800','','','2017-03-01','2017-03-10 10:26:45','J. MANUEL','SÁNCHEZ','RUVALCABA','','manuel.sanchez@live.com.mx','','4499200670','','','','','','','','0','RUTH BEGOÑA','MORENO','ASCENCIO','','ruthmorenoascencio@gmail.com','','4499200670','','','','','','','','0','','','');
INSERT INTO familia VALUES('75','1','','RAMIREZ CAMARILLO','','1','CIR. EL HUAMUCHIL','149','','FRACC. RESIDENCIAL DEL PARQUE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9782712','','','2017-03-01','2017-03-09 13:40:47','JOSÉ ALFREDO','RAMÍREZ','PEREZMALDONADO','','cydsa05@hotmail.com','','','','','','','','','','0','LAURA PATRICIA','SEGOVIA','SEGOVIA','','no tiene','','4492267597','','','','','','','','0','','','');
INSERT INTO familia VALUES('76','1','','RAMIREZ CARREON','1','1','FRAY ANTONIO RAMÍREZ DE LIRA','147','','FRACC. VILLA JARDÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6889321','','','2017-03-01','2017-03-09 12:07:03','JUAN CARLOS','RAMÍREZ','DE LIRA','','nova_impresos@hotmail.com','','4493634989','','','','','','','','0','NANCY','ORTÍZ','ORTÍZ','','no tiene','','4491974746','','','','','','','','0','','','');
INSERT INTO familia VALUES('77','1','','REYES ESCALANTE','2','1','PASEO DE LA PRESA','202','','FRACC. CAMPESTRE SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9964570','','','2017-03-01','2017-03-09 11:54:36','MIGUEL','REYES','GONZÁLEZ','','mireygo3@yahoo.com.mx','','4498968000','','','','','','','','0','LUCÍA','ESCALANTE','JIMÉNEZ','','luci.escalante@yahoo.com.mx','','4499111508','','','','','','','','0','','','');
INSERT INTO familia VALUES('78','1','','DE LA GARZA CRUZ','1','1','AV. LA QUERENCIA','304','27','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:31:51','GERARDO','DE LA GARZA','MARTÍNEZ','','ggarma@gamil.com','','4491112319','','','','','','','','0','FÁTIMA ALEJANDRA','CRUZ','TOPETE','','fatimacruz6@hotmail.com','','4491732885','','','','','','','','0','','','');
INSERT INTO familia VALUES('79','1','','TRUJILLO LOPEZ','1','2','SAN JUAN DE LOS LAGOS','401','','BOSQUES DEL PRADO SUR','AGUASCALIENTES','AGUASCALIENTES','','9147727','','','2017-03-01','2017-03-10 13:56:17','JOSE LUIS','TRUJILLO','ALCALÁ','','gigimajose@hotmail.com','','4499079541','','','','','','','','0','GUILLERMINA','LOPEZ','GONZÁLEZ','','gigimajose@hogtmail.com','','4491556799','','','','','','','','0','','','');
INSERT INTO familia VALUES('80','1','','LEON MORA','','','Alfonso Avalos de Saavedra 606 ','','','Fracc. Jardines de la Luz ','','','','9780457','','','2017-03-01','','Sergio León Jazzo','','','','leonjazzosergio@gmail.com','','4491981076','','','','','','','','0','Cecilia Mora López','','','','ml_cecilia@hotmail.com','','4492271980','','','','','','','','0','','','');
INSERT INTO familia VALUES('81','1','','DELGADO GUTIERREZ ','1','','AVELLANOS','102','','FRACC. ARBORADA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6883356','','','2017-03-01','2017-03-09 10:44:56','OSCAR EDUARDO','DELGADO','MACÍAS','','gtecomercial.ags@torrescorzonissan.com','','4492772415','','','','','','','','0','CLAUDIA MAGDALENA','GUTIÉRREZ','MUÑOZ','','','','4493534285','','','','','','','','0','','','');
INSERT INTO familia VALUES('82','1','','MEDA LLAMAS','','','Artes Plásticas 143','','','Fracc. Residencial La Alameda ','','','','9754996','','','2017-03-01','','Jorge Armando Meda Arreygue','','','','jmeda@vianney.com.mx','','4492250456','','','','','','','','0','Minerva Llamas Martínez','','','','minellamas@hotmail.com ','','4498047398','','','','','','','','0','','','');
INSERT INTO familia VALUES('83','1','','ESPINOZA NAME','','1','CASTELA','104','','FRACC. PUERTA GRANDE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1582812','','','2017-03-01','2017-03-09 10:27:11','GABRIEL DE JESÚS','ESPINOZA','CASARÍN','','gabriel .espinosa.casarin@gamil.com','','4499190381','','','','','','','','0','ELISA','NAME','CASILLAS','','ename_17@hotmail.com','','4491119916','','','','','','','','0','','','');
INSERT INTO familia VALUES('84','1','','GONZALEZ ARRIAGA','','','Campo Verde 111','','','Fracc. Villas Bonaterra II','','','','9188537','','','2017-03-01','','Luis Antonio González RamÍrez','','','','gorlaeb@yahoo,com.mx','','4491659764','','','','','','','','0','Ma.de los Angeles Arriaga Moreno','','','','gelyjolie7@gmaill.com','','4491569497','','','','','','','','0','','','');
INSERT INTO familia VALUES('85','1','','FLORES OCHOA ','','1','PROLONGACIÓN ZARAGOZA','601','408','FRACC. SAN TELMO. ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 12:05:09','ARTURO','FLORES','ROJAS','','el_arthur@hotmail.com ','','4491270687','','','','','','','','0','MARTHA CECILIA','OCHOA','VALLEJO','','cecy.19ov@gmail.com ','','4498905114','','','','','','','','0','','','');
INSERT INTO familia VALUES('86','1','','CERDAN MORENO','2','1','VALLE DEL MEZQUITAL','219','','FRACC. RÍO SN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9182951','','','2017-03-01','2017-03-09 13:22:47','JORGE EDUARDO','CERDÁN','URIBE','','jecuags@hotmail.com','','4492017564','','','','','','','','0','ANA BEATRÍZ','MORENO','RAMÍREZ','','ana.morenor@inegi.org.mx','','4491113035','','','','','','','','0','','','');
INSERT INTO familia VALUES('87','1','','MARQUEZ VAZQUEZ','','3','CEDRO','503','','FRACC. INDEPENDENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9969798','','','2017-03-01','2017-03-09 11:37:14','JOSE GPE.','MARQUEZ','RUIZ VELASCO','','j-marquez2@sensata.com','','4494487329','','','','','','','','0','JACQUELINE ADRIANA','VAZQUEZ','ORENDAY','','jacquevazore@gmail.com','','4491560584','','','','','','','','0','','','');
INSERT INTO familia VALUES('88','1','','ROMO PIMENTEL','','','Juan B. Orozco 106 ','','','Fracc. Jardines de la Asunción ','','','','9138249','','','2017-03-01','','J.Refugio Romo Barba','','','','aktrojes@hotmail.com','','4494960206','','','','','','','','0','Ana Elena Pimentel Hdz. Duque','','','','anaelena_pimentel@hotmail.com','','4495559494','','','','','','','','0','','','');
INSERT INTO familia VALUES('89','1','','CAMPOS FLORES','1','','LA QUERENCIA','302','9','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9184019','','','2017-03-01','2017-03-09 09:34:35','LUIS ARMANDO','CAMPOS','DE ANDA','','','','','','','','','','','','0','BERTHA VIOLETA','FLORES','DE LUNA','','violeta.flores1@hotmail.com','','4492046055','','','','','','','','0','','','');
INSERT INTO familia VALUES('90','1','','FRANCO CHAVEZ ','1','1','PASEO DE LAS MARAVILLAS','12014','9','FRACC. CORRAL DE BARRANCOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:17:43','FEDERICO','FRANCO','VELOZ','','hfrancog@yahoo.com.mx','','4491780044','','','','','','','','0','ILIANA DEL CARMEN','CHÁVEZ','RAMOS','','ilianachhr@hotmail.com ','','4491791559','','','','','','','','0','','','');
INSERT INTO familia VALUES('91','1','','OLAVARRIETA GARZA','1','2','PROLOG. COLON','1511','','FRACC. JARDINES DE LA ASUNCIÓN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9785222','','','2017-03-01','2017-03-09 13:43:04','VÍCTOR MANUEL','OLAVARRIETA','GUERRA','','arqolavarrieta@prodigy.net.mx','','4498905251','','','','','','','','0','LORENA','GARZA','PERALES','','olavarrietalorena@hotmail.com','','4492205661','','','','','','','','0','','','');
INSERT INTO familia VALUES('92','1','','ORNELAS MORENO','1','2','PUENTE DE PIEDRA','116','','FRACC. RINCÓN DEL PILAR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 12:02:32','JUAN ATONIO','ORNELAS','DÍAZ','','ornelasjuan@hotmail.com','','4491100524','','','','','','','','0','ESPERANZA','MORENO','VELAZQUEZ','','peraags@yahoo.com.mx','','4491668473','','','','','','','','0','','','');
INSERT INTO familia VALUES('93','1','','VAZQUEZ AVALOS','1','1','POTREROS','625','','FRACC. VALLE DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9966418','','','2017-03-01','2017-03-10 10:02:20','ALEJANDRO','VAZQUEZ','HERNADNEZ','','chobi40@hotmail.com','','4492240728','','','','','','','','0','ARCELIA JULIANA','AVALOS','HERNANDEZ','','avalosa06@yahoo.com.mx','','4492064808','','','','','','','','0','','','');
INSERT INTO familia VALUES('94','1','','REYES ALVARADO','','1','ARTICULO','123','103','FRACC. LOMA BONITA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 13:33:36','PEDRO ANTONIO','REYES','HUERTA','','pdamian@live.com.mx','','4495576413','','','','','','','','0','MARTA GORETY','ALVARADO','MUÑOZ','','coordinacion@procell.mx','','4499191293','','','','','','','','0','','','');
INSERT INTO familia VALUES('95','1','','QUIJANO SANCHEZ','1','2','PASEO DEL MAPLE','154','','FRACC. BOSQUES DEL PRADO ORIENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1750811','','','2017-03-01','2017-03-09 13:28:57','JOSE EDUARDO','QUIJANO','DIEZ','','eqddiez@hotmail.com','','4491447826','','','','','','','','0','CLAUDIA','SÁNCHEZ','FLORES','','clausanflo12@gmail.com','','4491227822','','','','','','','','0','','','');
INSERT INTO familia VALUES('96','1','','MURILLO GUTIERREZ ','2','1','CERRO DEL LAUREL','137','','FRACC. LOMAS DEL CAMPESTRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1944218','','','2017-03-01','2017-03-09 12:11:17','RAFAEL','MURILLO','GONZÁLEZ','','suamex@live.com.mx','','4498908602','','','','','','','','0','NORMA ANGÉLICA','GUTIÉRREZ','GONZÁLEZ','','norma_gtz_glez@hotmail.com','','4498042731','','','','','','','','0','','','');
INSERT INTO familia VALUES('97','1','','MORELEON PEREZ','','','Av. Parque vía pte. 172 ','','','Fracc. Sta. Anita ','','','','9750191','','','2017-03-01','','Alfonso Moreleón García','','','','alfonsomoreleongarcia@yahoo.com.mx','','4498941594','','','','','','','','0','Blanca Esthela Pérez Espionoza','','','','alfonsomoreloengarcia@yahoo.com.mx','','4491952618','','','','','','','','0','','','');
INSERT INTO familia VALUES('98','1','','HERNANDEZ OTTALENGO','','1','CIRCUITO LONDRES','21','','FRACC. REAL ECUESTRE, CAÑADA HONDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 12:33:51','CARLOS JAVIER','HERNÁNDEZ','CARRANZA','','cjhc13@gmail.com','','4499010022','','','','','','','','0','JULIANA','OTTALENGO','JIMÉNEZ','','julianaottjim@gmail.com','','4499500045','','','','','','','','0','','','');
INSERT INTO familia VALUES('99','1','','CARDONA GONZALEZ','','3','MISIÓN DE SANTO TOMÁS','304','','FRACC. MISIÓN DEL CAMPANARIO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9122254','','','2017-03-01','2017-03-09 13:06:01','RUBÉN','CARDONA','RIVERA','','rubencardonar@live.com','','4495458800','','','','','','','','0','MYRNA DEL CARMEN','GONZALEZ','LÓPEZ','','myrnadelcarmeng7@gmail.com','','4492171520','','','','','','','','0','','','');
INSERT INTO familia VALUES('100','1','','NUÑEZ GARCIA','','3','PASEO DE LA SOLEDAD','218','','FRACC. MISIÓN DEL CAMPANARIO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9736300','','','2017-03-01','2017-03-09 12:26:10','ENRIQUE','NUÑEZ','VEGA','','envega64@gmail.com','','4499280444','','','','','','','','0','ANA JULIETA','GARCÍA','REPETTO','','anajulietagr@gmail.com','','4491049322','','','','','','','','0','','','');
INSERT INTO familia VALUES('101','1','','CORNEJO ONTIVEROS','','','Loyola Escobedo 328','','','Fracc. Vista del Sol III','','','','9708939','','','2017-03-01','','Armando Cornejo Campos','','','','armando.cornejo.campos@live.com.mx','','4492550803','','','','','','','','0','Maribel Ontiveros Amaya','','','','armando.cornejo.campos@live.com.mx','','4491558548','','','','','','','','0','','','');
INSERT INTO familia VALUES('102','1','','REYNA GALINDO','1','1','CERRADA SAN GABRIEL ARCÁNGEL','111','','FRACC. CANTERAS DE SAN AGUSTÍN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9963059','','','2017-03-01','2017-03-10 13:54:49','JOÉL','REYNA','CASTILLO','','jreyn@alumnni.ipade.mx','','4494019101','','','','','','','','0','LIZZETH','GALINDO','DÍAZ','','liz_z@life.com.mx','','4491150939','','','','','','','','0','','','');
INSERT INTO familia VALUES('103','1','','ROQUEÑI CLAISSE','','4','AV. EUGENIO GARZA SADA','21','53','FRACC.  LA PLAZUELA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531820','','','2017-03-01','2017-03-09 13:24:22','ALVARO','ROQUEÑI','RELLO','','alvaro@rocosa.com.mx','','4499193802','','','','','','','','0','MÓNICA','CALISSE','MADRIGAL','','monicaclaisse@hotmail.com','','4498940170','','','','','','','','0','','','');
INSERT INTO familia VALUES('104','1','','GONZALEZ TORRADO','','','1a. Cda. Nayarit 107 ','','','Fracc. Misión del Campanario','','','','2390668','','','2017-03-01','','Joel Gonzalez Dueñez','','','','joelgonzalezduenez@gmail.com','','4491819639','','','','','','','','0','Ana MonserratTorrado Rodríguez','','','','montse.torrado@hotmail.es','','4492063692','','','','','','','','0','','','');
INSERT INTO familia VALUES('105','1','','ANDRADE RUIZ CAPETILLO','','1','CARLOS SAGREDO','2755','','FRACC. RESIDENCIAL FUNDICIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1461531','','','2017-03-01','2017-03-09 13:21:19','RAFAEL','DELGADO','DELGADO','','racfast@life.com.mx','','4491165162','','','','','','','','0','DULCE MARÍA RUIZ','CAPETILLO','DOMÍNGUEZ','','capetillodd@hotmail.com','','4491285438','','','','','','','','0','','','');
INSERT INTO familia VALUES('106','1','','HIDALGO RODRIGUEZ','1','1','PRIV. SAN JUAN BAUTISTA','110','','FRACC. CANTERAS DE SAN AGUSTIN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9789246','','','2017-03-01','2017-03-09 09:26:45','HARIM','HIDALGO','SALADO','','harim.hidalgo@softtek.com','','4491472401','','','','','','','','0','YENITH','RODRÍGUEZ','VILLAVICENCIO','','yenedithrodriguez@yahoo.com.mx','','4491794040','','','','','','','','0','','','');
INSERT INTO familia VALUES('107','1','','BARBA GARZA ','1','1','NAVARRETE','910','','FRACC. SAN MARCOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 10:04:11','CAMILO','BARBA','SEGOVIA','','cbarbas@hotmail.com ','','4492205757','','','','','','','','0','MARTHA BEATRIZ','GARZA','PERALES','','marthitagarzap@hotmail.com ','','4492205667','','','','','','','','0','','','');
INSERT INTO familia VALUES('108','1','','SALCEDA GARCÍA','','1','AV. LA QUERENCIA','302','71','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2939659','','','2017-03-01','2017-03-10 10:00:01','JUAN MARIANO','SALCEDA','REYES','','direccion@uniformeshercules.com','','4492777751','','','','','','','','0','PATRICIA','GARCÍA','HURTADO','','patyghurtdo@hotmail.com','','4491527267','','','','','','','','0','','','');
INSERT INTO familia VALUES('109','1','','ROCHA LOPEZ ','','2','PROLONG. ADORATRICES','1127','','FRACC. LOS ENCINOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 13:30:48','ANGEL','ROCHA','ORTIZ','','','','','','','','','','','','0','JUANA MARÍA','LÓPEZ','AGUILAR','','juanitalopezag@hotmail.com ','','4494941115','','','','','','','','0','','','');
INSERT INTO familia VALUES('110','1','','SOTO PEREZ ','','','Fray Junipero Serra 503','','','Fracc. Jardines de la Asunción ','','','','9171301','','','2017-03-01','','Abel Soto Macías ','','','','abesomac@hotmaill.com ','','4639527595','','','','','','','','0','Ma. del Rocío Pérez Sánchez ','','','','Rocío.ps@hotmail.com ','','4921025656','','','','','','','','0','','','');
INSERT INTO familia VALUES('111','1','','ANIGWE CUEVAS','2','','FLOR DE NOCHEBUENA','100','117','FRACC. VILLA SUR ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 11:47:30','COLOMBUS O.','ANIGWE','','','scexports200@hotmail.com ','','','','','','','','','','0','ADA A.','CUEVAS','LINARES','','arisbethcuevas@hotmail.com ','','4492906028','','','','','','','','0','','','');
INSERT INTO familia VALUES('112','1','','TINAJERA OLGUIN ','','3','CAMPO VERDE','109','','FRACC. VILLAS BONATERRA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9713143','','','2017-03-01','2017-03-10 10:43:56','JUAN RODRIGO','TINAJERA','ESQUIVEL','','jrtinajera@gmail.com ','','449102150','','','','','','','','0','HILDA YOLANDA','OLGUIN','RODRIGUEZ','','hilda_olguin@hotmail.com ','','4491855192','','','','','','','','0','','','');
INSERT INTO familia VALUES('113','1','','GONZALEZ DE ALBA ','','','Jaripeo 207 ','','','Fracc. Vista Alegre ','','','','9711039','','','2017-03-01','','Jorge Gonzalez Medina ','','','','gonzalezmedina9@hotmail.com ','','4498907170','','','','','','','','0','Brenda Esthela De Alba de Alba ','','','','alealedealba@hotmail.com ','','4491553234','','','','','','','','0','','','');
INSERT INTO familia VALUES('114','1','','CARSTENS TAPIA ','','1','CIRCUITO DEL PEDREGAL','126','','FRACC. TROJES DEL PEDREGAL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9735900','','','2017-03-01','2017-03-09 12:35:44','EUGENIO','CARSTENS','MADERO','','eugenio@tec-quest.com','','4499087444','','','','','','','','0','GUADALUPE','TAPIA','GUDIÑO','','guadalupe@tec-quest.com','','4499115400','','','','','','','','0','','','');
INSERT INTO familia VALUES('115','1','','SOLIS DELGADO ','','1','PROLONG. MISIÓN DE SANTIAGO','','703','FRACC. VALLE DEL CAPANARIO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9933343','','','2017-03-01','2017-03-09 10:33:19','FRANCISCO JAVIER','SOLIS','GUERRERO','','frjaso@gmail.com ','','4498041590','','','','','','','','0','MARÍA CONCEPCIÓN','DELGADO','MARTÍN DEL CAMPO','','conny_delgado@yahoo.com. ','','4491964045','','','','','','','','0','','','');
INSERT INTO familia VALUES('116','1','','FRANCO GUTIÉRREZ','1','1','SOLANDRA','143','','FRACC. YALTA CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9157145','','','2017-03-01','2017-03-10 10:08:12','SALVADOR ALFREDO','FRANCO','LÓPEZ','','safrancol@hotmmail.com','','4499049286','','','','','','','','0','MARÍA TERESA','GUTIÉRREZ','PADILLA','','tgutierrezp94@gmail.com','','4491924250','','','','','','','','0','','','');
INSERT INTO familia VALUES('117','1','','RUIZ ESPARZA GARCIA ','2','2','PASEO DE LOS CHOPOS','240','','FRACC. PULGAS PANDAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2514125','','','2017-03-01','2017-03-10 13:31:35','JORGE RUÍZ','ESPARZA','MACÍAS','','jorgeruizespan@hotmail.com ','','4498971186','','','','','','','','0','ANGÉLICA MARÍA','GARCÍA','HURTADO','','gelyhurtado@hotmail.com ','','4492135863','','','','','','','','0','','','');
INSERT INTO familia VALUES('118','1','','GONZALEZ ALVARADO ','','','Cricuito La Estancia No 524','','','Fracc. Los Encinos ','','','','','','','2017-03-01','','Jorge González Jiménez ','','','','iiccsadecv@prodigy.net.mx','','4491869053','','','','','','','','0','Marcela  Alvarado Soto ','','','','arq_nasoto@hotmail.com ','','4491869236','','','','','','','','0','','','');
INSERT INTO familia VALUES('119','1','','MARTINEZ ORTEGA','','2','PASEO DE LA ARBOLEDA','107','','FRACC. CAMPESTRE CLUB DE GOLF SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 13:46:30','JUAN PABLO','MARTÍNEZ','MOREIRA','','juan.moreira@msn.com','','1225811','','','','','','','','0','REBECA ALEJANDRA','ORTEGA','RANGEL','','aleorgegarangel@hotmail.com','','1221543','','','','','','','','0','','','');
INSERT INTO familia VALUES('120','1','','MUÑOZ RAMOS ','','','Torcazas 103 ','','','Fracc. La Paloma ','','','','9152825','','','2017-03-01','','Sergio Javier Muñoz Díaz ','','','','','','2427506','','','','','','','','0','Ana Imelda Ramos Cárdenas ','','','','imeldaramos@hotmail.com ','','242-7072','','','','','','','','0','','','');
INSERT INTO familia VALUES('121','1','','TORRES YUGTINGPING ','2','1','MANGANA','304','','FRACC. VISTA ALEGRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9712530','','','2017-03-01','2017-03-10 12:07:35','MIGUEL ANGEL','TORRES','FLORES','','tofm2367@gmail.com','','4498043574','','','','','','','','0','CLAUDIA','YUNGTINPIGPING','ATILANO','','clau.yung@hotmail.com','','4491931358','','','','','','','','0','','','');
INSERT INTO familia VALUES('122','1','','PÉREZ MARTÍNEZ','1','1','AV. SANTA MÓNICA','201','87','FRACC. PROVIDENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 09:08:29','JOSÉ DE JESÚS','PÉREZ','GONZÁLEZ','','alpecontable@hotmail.com','','4494489906','','','','','','','','0','ALMA LILIA','MARTÍNEZ','OLIVARES','','lilialpego@yahoo.com.mx','','4498041321','','','','','','','','0','','','');
INSERT INTO familia VALUES('123','1','','MALDONADO SABAS ','','2','HDA. EL SAUCILLO','114','','FRACC. HACIENDAS DE AGS. ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9701423','','','2017-03-01','2017-03-10 10:36:09','OSCAR EDUARDO','MALDONADO','TRANCOSO','','','','4499208980','','','','','','','','0','FÁTIMA','SABÁS','GONZÁLEZ','','fatima458@live.com.mx','','4491134516','','','','','','','','0','','','');
INSERT INTO familia VALUES('124','1','','NORIEGA OROPEZA ','','','Defensa Nacional No. 108','','','Fracc. Héroes de Ags. ','','','','','','','2017-03-01','','Adrian Noriega González ','','','','adrian.noriega@vianey.mx','','4491556416','','','','','','','','0','Bertha Alicia Oropeza Martínez ','','','','bety_oropeza@hotmail.com ','','4491651032','','','','','','','','0','','','');
INSERT INTO familia VALUES('125','1','','MUÑOZ ORTIZ','1','1','CAMPECHE','309','','FRACC. DEL VALLE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2517266','','','2017-03-01','2017-03-10 13:49:58','GERARDO BENJAMÍN','MUÑOZ','DÍAZ','','benmuz@yahoo.com','','4497691191','','','','','','','','0','LILIANA PAULINA','ORTIZ','LOZANO','','lilisortiz@hotmail.com','','4494063114','','','','','','','','0','','','');
INSERT INTO familia VALUES('126','1','','MARTINEZ ALCALA ','2','1','PASEO DE SAN GERARDO','216','23','FRACC. SAN GERARDO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6882153','','','2017-03-01','2017-03-10 10:45:28','ALFONSO PIERE','MARTÍNEZ','ARROYO','','AMARTINEZ3129@HOTMAIl.com ','','4499500454','','','','','','','','0','CARMEN DEYANIRA','ALCALÁ','REYES','','deyaalcalayahoo.com ','','4499200880','','','','','','','','0','','','');
INSERT INTO familia VALUES('127','1','','MARTINEZ MARTINEZ ','','','Manantial de Cabañuelas 204 ','','','Fracc. Cedros ','','','','1582430','','','2017-03-01','','Miguel Angel Martínez Berumen ','','','','ags@bindermexico.com','','4492127436','','','','','','','','0','Tania Margarita Martínez León ','','','','cotecito06@gmail.com ','','4491112109','','','','','','','','0','','','');
INSERT INTO familia VALUES('128','1','','GARCÍA NAME','2','5','UNIVERSIDAD','2602','25','TROJES KRISTAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2412121','','','2017-03-01','2017-03-10 13:37:35','CARLOS A.','GARCÍA','VILLANUEVA','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','MA. CATALINA','NAME','','','catalin_name@yahoo.com.mx','','4492412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('129','1','','GARCÍA NAME','','','Sierra Fría 243','','','Fracc. Bosques del Prado Nte.','','','','2356035','','','2017-03-01','','Carlos A. García Villanueva','','','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','Ma. Catalina Name C.','','','','catalin_name@yahoo.com.mx','','2412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('130','1','','GARCÍA NAME','','','Sierra Fría 243','','','Fracc. Bosques del Prado Nte.','','','','2356035','','','2017-03-01','','Carlos A. García Villanueva','','','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','Ma. Catalina Name C.','','','','catalin_name@yahoo.com.mx','','2412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('131','1','','NIETO RODRÍGUEZ','2','1','AV. LOMAS ALTAS','226','','FRACC. VILLAS DE LA CANTERA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9762964','','','2017-03-01','2017-03-09 13:32:28','CUAUHTEMOC','NIETO','SILVA','','remos@cio.mx','','4499286177','','','','','','','','0','CELIA MARISA','RODRÍGUEZ','RUBIO','','cmarisrr@hotmail.com','','4494611103','','','','','','','','0','','','');
INSERT INTO familia VALUES('132','1','','JUAREZ GUZMAN','','1','JARDÍN DEL ENCINO','506','','FRACC. JARDINES DE LAS FUENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2500271','','','2017-03-01','2017-03-10 10:55:52','LUIS','JUÁREZ','SALDAÑA','','impypintjuarez@yahoo.com','','4499609217','','','','','','','','0','NATALIA','GUZMÁN','GUERRERO','','natyguz65@gmail.com','','4491885845','','','','','','','','0','','','');
INSERT INTO familia VALUES('133','1','','LOPEZ ROMO','1','2','LA RONDA','102','','FRACC. VILLAS DE SAN NICOLAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9124695','','','2017-03-01','2017-03-09 12:53:11','GUSTAVO','LÓPEZ','LAMAS','','gerente@campestreags.com','','4499114159','','','','','','','','0','SANDRA CRISTINA','ROMO','CALVILLO','','cromocalvillo@yahoo.com','','4498908397','','','','','','','','0','','','');
INSERT INTO familia VALUES('134','1','','LÓPEZ NEGRETE GUEL','','','Circuito Rincón Andalúz 109 suroeste','','','Fracc. Rincón Andalúz','','','','','','','2017-03-01','','Alejandro López Negrete Chávez','','','','electropintur@hotmail.com','','4491552334','','','','','','','','0','Fanny Guel Lomelí','','','','miss_fanny78@hotmail.com','','4491552337','','','','','','','','0','','','');
INSERT INTO familia VALUES('135','1','','DE LOERA JIMENEZ ','','','Av. Independencia 402 ','','','Fracc. Paso Blanco ','','','','9966248','','','2017-03-01','','Jose de Jesus de Loera Macías','','','','tecnoplastik94@hotmail.com ','','4492051453','','','','','','','','0','Martha Lizzeth Jiménez Loza ','','','','lizjmz@hotmail.com ','','4491789452','','','','','','','','0','','','');
INSERT INTO familia VALUES('136','1','','VARELA GUTIERREZ ','','1','J. de san Marcos ','610','','JARDINES DE LA ASUNCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1405448','','','2017-03-01','2017-03-10 10:25:25','SALVADOR','VARELA','ESCOBEDO','','camisascanadian@hotmail.com ','','4492065915','','','','','','','','0','ISABEL CRISTINA','GUTIERREZ','LOZA','','isabelgutierrez_LOZA@hotmail.com ','','4492065940','','','','','','','','0','','','');
INSERT INTO familia VALUES('137','1','','MARTINEZ SALAS','1','2','NAPOLES','819','','FRACC. DEL VALLE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9625410','','','2017-03-01','2017-03-10 13:29:23','EDGAR RICARDO','MARTÍNEZ','LÓPEZ','','ricardo.martinez@vianney.com.mx','','4491551460','','','','','','','','0','NOHEMI','SALAS','DIAZ','','nohemi_salas@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('138','1','','LÓPEZ TORRES','','','Manantial de Cabañuela 213','','','Fracc. Residencial Cedros','','','','1580498','','','2017-03-01','','Gerardo López López','','','','gerardo_108@hotmail.com','','4497697539','','','','','','','','0','María José Torres Ávila','','','','majose90@hotmail.com','','4497695994','','','','','','','','0','','','');
INSERT INTO familia VALUES('139','1','','GONZÁLEZ DEL VALLE','','','Av. El Molino 301-121','','','Fracc. Real del Molino','','','','9930318','','','2017-03-01','','Ramiro de Jesús González Quezada','','','','rg_sportg8@hotmail.com','','4494673760','','','','','','','','0','María Lourdes del Valle González','','','','rg_sportg8@hotmail.com','','4494658638','','','','','','','','0','','','');
INSERT INTO familia VALUES('140','1','','LÓPEZ AGUILERA','1','2','CALZ. SANTO DOMINGO','212','','FRACC. RESIDENCIAL SANTO DOMINGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9141613','','','2017-03-01','2017-03-09 09:38:10','SERGIO ERNESTO','LÓPEZ','LÓPEZ','','guisorico10@yahoo.com.mx','','4495574933','','','','','','','','0','LAURA','AGUILERA','MAYORAL','','mayoralal@yahoo.com','','4495579212','','','','','','','','0','','','');
INSERT INTO familia VALUES('141','1','','MOSQUEDA BECERRA ','','','Antigua Alameda No. 101 ','','','Fracc. Misión Alameda ','','','','97036-44','','','2017-03-01','','Mauricio Mosqueda Davalos ','','','','maumosq@live. com ','','','','','','','','','','0','Marcela Becerra Sierra','','','','licmbs@hotmail.com ','','4499049107','','','','','','','','0','','','');
INSERT INTO familia VALUES('142','1','','GONZALEZ MARTINEZ ','1','2','CDA. DE LAS AGUSTINAS','116','','FRACC. CANTERAS DE SAN AGUSTÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1947759','','','2017-03-01','2017-03-09 13:26:08','GUILLERMO','GONZÁLEZ','VALDEZ','','memogonzalezv@yahoo.com','','4498908377','','','','','','','','0','LUCÍA','MARTÍNEZ','LÓPEZ','','luciamartinezlpz@gmail.com ','','4491286928','','','','','','','','0','','','');
INSERT INTO familia VALUES('143','1','','MONCIVAIS CRUZ ','1','1','DIEGO FERNÁNDEZ VILLA','110','15','FRACC. PRADOS DEL SUR ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9713816','','','2017-03-01','2017-03-09 13:04:08','SERGIO VICENTE','MONCIVAIS','LÓPEZ','','svml_regio@hotmail.com ','','4491953463','','','','','','','','0','MARTHA JANETTE','CRUZ','ARMENDARIZ','','janette.cruz.armendariz@gmail.com ','','4491559853','','','','','','','','0','','','');
INSERT INTO familia VALUES('144','1','','DE LA ROSA CRUZ','1','2','DEL POZO','208','','FRACC. VILLAS DE LA CANTERA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9726645','','','2017-03-01','2017-03-10 10:21:05','ENRIQUE','DE LA ROSA','GONZÁLEZ','','nerique.delarosa@inegi.org.mx','','4491827268','','','','','','','','0','MARCELA','CRUZ','LUÉVANO','','marce.cruz@gmail.com','','4491112922','','','','','','','','0','','','');
INSERT INTO familia VALUES('145','1','','MEDINA MUÑOZ','','','Del Volcán 138','','','Fracc. Villas de la Cantera','','','','','','','2017-03-01','','Héctor Medina López','','','','hcomda@gmail.com','','4494139970','','','','','','','','0','Elvia Muñoz López','','','','elviamulop@gmail.com','','4491556909','','','','','','','','0','','','');
INSERT INTO familia VALUES('146','1','','DELGADO LOPEZ','','','Carr. Calvillo Km 11','','','Fracc.Rancho El Picacho','','','','','','','2017-03-01','','Antonio Delgado Gtz.','','','','elpicachocharolais@hotmail.com','','4494412880','','','','','','','','0','Norma Leticia Lopez A.','','','','famdelopez@hotmail.com','','4491068492','','','','','','','','0','','','');
INSERT INTO familia VALUES('147','1','','DIAZ RODRIGUEZ ','','','Trojes de Betulia No. 2023-3','','','Fracc Trojes de Oriente ','','','','9966435','','','2017-03-01','','Juan Manuel Díaz de Cerda ','','','','jdiaz9999@msn.com ','','4944897-78','','','','','','','','0','Rebeca Inés Rdgz. Beltrán ','','','','reberdzb@gmail.com','','4492205072','','','','','','','','0','','','');
INSERT INTO familia VALUES('148','1','','MARQUEZ CHIMES ','1','2','ALASKA','305','','FRACC. EL DORADO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 13:59:59','JUAN FRANCISCO','MARQUEZ','MARTÍNEZ','','pacomarquez24@hotmail.com','','4412327','','','','','','','','0','MARISA','CHIMES','OBREGÓN','','marachimes@hotmail.com ','','4494412342','','','','','','','','0','','','');
INSERT INTO familia VALUES('149','1','','GONZALEZ DEL BOSQUE','','','Paseos del Bosque #204','','','Fracc. Los Olivos','','','','9735383','','','2017-03-01','','Ricardo Gonzalez Salazar','','','','rgonzalez@isavanzados.com.mx','','4491553901','','','','','','','','0','Marcela Aileen Del Bosque Frank','','','','delbosqueaileen@hotmail.com','','4491068978','','','','','','','','0','','','');
INSERT INTO familia VALUES('150','1','','NORIEGA COLLADO ','','','Tulipanes No. 108 ','','','Fracc. La Enramada ','','','','9962377','','','2017-03-01','','Cesar Arturo Noriega Olivares','','','','oscardelavegamartinez@yahoo.com.mx','','4491873824','','','','','','','','0','María Guadalupe Collado Paz','','','','maria.gp@ive.com','','4491873859','','','','','','','','0','','','');
INSERT INTO familia VALUES('151','1','','DE LA TORRE SALAZAR ','','2','MAIZALES','227','','FRACC. VALLE DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1396584','','','2017-03-01','2017-03-10 12:09:33','OCTAVIANO R.','DE LA TORRE','GONZALEZ','','octaviano.rdltg5@prodigy.net.mx','','4491173575','','','','','','','','0','GLORIA LETICIA','SALAZAR','VARELA','','salazar_letty@hotmail.com ','','4491053067','','','','','','','','0','','','');
INSERT INTO familia VALUES('152','1','','ZARAGOZA ZAMORA','','1','JARDÍN DE ZARAGOZA SUR','304','','FRACC. JARDÍNES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9780232','','','2017-03-01','2017-03-09 11:34:56','GERARDO','ZARAGOZA','ROJAS','','gzr33@hotmail.com','','4491114191','','','','','','','','0','NORMA LOURDES','ZAMORA','GONZÁLEZ','','','','4491123454','','','','','','','','0','','','');
INSERT INTO familia VALUES('153','1','','RODRIGUEZ MEDINA ','','','San Clemente 306 ','','','Fracc.San Cayetano ','','','','9144097','','','2017-03-01','','Javier Rodríguez González ','','','','javier.rodriguez@live.com.mx ','','4491802592','','','','','','','','0','Martha Medina Ibarra ','','','','mmedinai@hotmail.com ','','4495575422','','','','','','','','0','','','');
INSERT INTO familia VALUES('154','1','','RICAUD HEALY','','','Paseo del Parque 115 ','','','Fracc. Q Campestre','','','','2383997','','','2017-03-01','','Eduardo Ricaud Velazco','','','','edracaud@yahoo.com.mx','','4498042811','','','','','','','','0','Erika Healy Wehlen','','','','erika.healy@yahoo.com.mx','','4491067806','','','','','','','','0','','','');
INSERT INTO familia VALUES('155','1','','OBREGON BECERRIL','','','Paseos de los Cisnes #206','','','Fracc.Jardines del Parque','','','','9170072','','','2017-03-01','','Carlos Roberto Obregón Salado','','','','elefante.inbox@gmail.com','','4499119861','','','','','','','','0','Rosario Celine Becerril Alba','','','','rosariobecerril@gmail.com','','4491648530','','','','','','','','0','','','');
INSERT INTO familia VALUES('156','1','','SALGADO AGUIRRE','','','Guadalupe Gonzalez #2206','','','Fracc.San Ignacio','','','','','','','2017-03-01','','Juan Carlos Salgado Flores','','','','jc_sf66@hotmail.com','','2740029','','','','','','','','0','Elena María Ines Aguirre Gonzalez','','','','isf.male@hotmail.com','','2740027','','','','','','','','0','','','');
INSERT INTO familia VALUES('157','1','','GALLARDO ACEVES','2','1','BARRAGAN','101','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','4152181','','','2017-03-01','2017-03-09 12:56:14','FLAVIO','GALLARDO','ANGULO','','','','4491063354','','','','','','','','0','CARMEN','ACEVES','','','','','4491523854','','','','','','','','0','','','');
INSERT INTO familia VALUES('158','1','','GONZALEZ GUTIERREZ','','','Rep. De Ecuador #905','','','Fracc.Santa Elena','','','','','','','2017-03-01','','Juan Pablo González Valdéz','','','','jp.g@live.com.mx','','4492745169','','','','','','','','0','Laura Marcela Gutiérrez de Luna','','','','lmarcegtz@hotmail.com','','4492722619','','','','','','','','0','','','');
INSERT INTO familia VALUES('159','1','','MARQUEZ DE LA CRUZ ','','','Jose Ma. Velasco 244 ','','','Fracc.Fracc. Lomas de Santa Anita. ','','','','','','','2017-03-01','','Abraham Alejandro Márquez Palencia ','','','','','','4498947054','','','','','','','','0','Janet de la Cruz Martínez ','','','','janetmour33@hotmail.com ','','4499996048','','','','','','','','0','','','');
INSERT INTO familia VALUES('160','1','','REVILLA NUÑEZ ','','','Cto. Bonaterra No. 585','','','Fracc. Villas Bonaterra ','','','','9711048','','','2017-03-01','','Mauricio Revilla Campos ','','','','mrevillac60@gmail.com.mx ','','4495481931','','','','','','','','0','Susana Jessica Maritza Nuñez Puigvert','','','','','','4493273757','','','','','','','','0','','','');
INSERT INTO familia VALUES('161','1','','CARDENAS VALENZUELA','','','4° Cerrada La Higuera #107','','','Fracc.La Higuera, Residencial del Parque','','','','9714379','','','2017-03-01','','Francisco Fidel Cárdenas Denham','','','','fidelcardenas@hotmail.com','','4491023279','','','','','','','','0','Claudia Adriana Valenzuela Esparza','','','','clausvalenz@gmail.com','','4491389537','','','','','','','','0','','','');
INSERT INTO familia VALUES('162','1','','CISNEROS  VALADEZ','','1','REPÚBLICA DE URUGUAY','506','','FRACC.LAS AMERICAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1220432','','','2017-03-01','2017-03-09 10:37:12','ALBERTO JOSÉ','CISNEROS','GONZÁLEZ','','betocis@hotmail.com','','4491220432','','','','','','','','0','DULCE MA. DE JESÚS','VALADEZ','SAUCEDO','','dulce.valadez@transportesvladez.cpm.mx','','4492712961','','','','','','','','0','','','');
INSERT INTO familia VALUES('163','1','','BARBA DELGADO ','','','Cto. Estancia No. 531','','','Fracc. Villas Nta. Sra. Asunción sector Encinos ','','','','1627071','','','2017-03-01','','Ricardo Barba Segovia ','','','','ricardobarbas@hotmail.com ','','4494159878','','','','','','','','0','Raquel Andrea Delgado Cárdenas ','','','','raquelandreadc@hotmail.com','','4492050904','','','','','','','','0','','','');
INSERT INTO familia VALUES('164','2','','CONTRERAS TORRES','1','','PRIVADA AGUSTÍN R GONZÁLEZ','114','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9152753','','','2017-03-01','2017-03-10 10:59:54','J GUADALUPE','CONTRERAS','MARTÍNEZ','','jose.contreras@ aguascalientes.gob.mx','','4494641875','','','','','','','','0','CINTYA NATALIA','TORRES','FAUSTO','','cinatof@yahoo.com.mx','','4491049926','','','','','','','','0','','','');
INSERT INTO familia VALUES('165','2','','LOPEZ SOLIS','1','','SANTA PAULA','130','','FRACC. SAN SEBASTIÁN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-06 11:02:41','HÉCTOR MANUEL','LÓPEZ','BADILLO','','hmbadillo@hotmail.com','','4491970335','','','','','','','','0','ROCIÓ KARINA','SOLÍS','HURTADO','','rocio.solis@aguascalientes.gob.mx','','4499995756','','','','','','','','0','','','');
INSERT INTO familia VALUES('166','2','','CARBONELL TAGLE ','1','','CANAL INTERCEPTOR','712','','FRACC. BOSQUES DE LA ALAMEDA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1460555','','','2017-03-01','2017-03-07 12:12:29','JOSE ANTONIO','CARBONELL','LÓPEZ','','jacarbonelll@hotmail.com ','','4491204999','','','','','','','','0','CRISTINA DEL PILAR','TAGLE','JIMÉNEZ','','cristtagle@hotmail.com ','','4495437678','','','','','','','','0','','','');
INSERT INTO familia VALUES('167','2','','LIMON JIMENEZ','2','','MONSERRAT','140','','JARDINES DE CASA NUEVA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9772913','','','2017-03-01','2017-03-07 10:54:25','MARCO ANTONIO','LIMÓN','ALBA','','tony_mf@hotmail.com','','4491503435','','','','','','','','0','CARLA VIRIDIANA','JIMÉNEZ','JIMÉNEZ','','barbie_angel17@hotmail.com','','4491142006','','','','','','','','0','','','');
INSERT INTO familia VALUES('168','2','','REYES CHOG','1','','UXMAL','117','','FRACC. PIRAMIDES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1406026','','','2017-03-01','2017-03-06 11:53:06','ALEJANDRO','REYES','CASAS','','alexreye@yahoo.com.mx','','4498052374','','','','','','','','0','LUZ MA','CHONG','RAMÍREZ','','luzmachong@yahoo.com.mx','','449 105 41 63','','','','','','','','0','','','');
INSERT INTO familia VALUES('169','2','','RODRÍGUEZ PONCE','2','1','AV. CAMINO DE SANTIAGO','101','','FRACC. LA RIOJA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9188036','','','2017-03-01','2017-03-06 13:35:49','OSCAR','RODRÍGUEZ','RANGEL','','orrmilenium@hotmail.com','','4491204988','','','','','','','','0','VERÓNICA','PONCE','CHÁVEZ','','veroponce28@hotmail.com','','4492104048','','','','','','','','0','','','');
INSERT INTO familia VALUES('170','2','','LLAMAS ALEMAN','2','1','REPUBLICA DE PERÚ','709','','FRACC. JARDINES DE SANTA ELENA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9705072','','','2017-03-01','2017-03-06 12:05:05','CARLOS DANIEL','LLAMAS','HERNÁNDEZ','','daniel_llamas@yahoo.com','','4491112739','','','','','','','','0','MARÍA ELENA','ALEMÁN','VALDIVIA','','maleman@sabro.com.mx','','4491294555','','','','','','','','0','','','');
INSERT INTO familia VALUES('171','2','','PATIÑO PIÑA','','','Sierra Fría 105','','','Fracc. Bosques del Prado Nte.','','','','9123032','','','2017-03-01','','Alejandro Patiño Esquivel','','','','a-patino@ti.com','','1866110','','','','','','','','0','Raquel Piña Casasola','','','','rackelpc68@gmail.com','','3456677','','','','','','','','0','','','');
INSERT INTO familia VALUES('172','2','','ESCOBEDO ORTIZ','1','','CANAL INTERCEPTOR','502','151','FRACC. PUERTA NAVARRA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1530238','','','2017-03-01','2017-03-06 11:05:08','','','','','','','','','','','','','','','0','MARÍA MAYTILDE','ESCOBEDO','ORTIZ','','matiy@hotmail.com','','4499111182','','','','','','','','0','','','');
INSERT INTO familia VALUES('173','2','','ORTEGA RENDON','2','','ARROYO EL CEDAZO','113','','FRACC. JARDINES DEL SOL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 12:34:20','PEDRO ANTONIO','ORTEGA','LOZANO','','pedroortega_lozano@hotmail.com','','4491389488','','','','','','','','0','DALIA FERNANDA','RENDÓN','GONZÁLEZ','','dalia_rendon@msn.com','','4492066610','','','','','','','','0','','','');
INSERT INTO familia VALUES('174','2','','GUZMAN LOPEZ','1','','PASEOS DE LA ASUNCIÓN NORTE','303','','FRACC. JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9627350','','','2017-03-01','2017-03-06 11:11:23','LEONARDO','GUZMAN','HERNANDEZ','','leonardo-guzmanhdz@hotmail.com','','4499117950','','','','','','','','0','BEATRIZ','LOPEZ','ATILANO','','betylopeza@hotmail.com','','4491791323','','','','','','','','0','','','');
INSERT INTO familia VALUES('175','2','','CUADRO MORENO RODRÍGUEZ','3','2','ARROYO EL MOLINO','301','172','EL LLANO','JESUS MARIA','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 11:14:47','ANDRÉS ESTEBAN','CUADRO','MORENO','','aecuamo@gmail.com','','4491119383','','','','','','','','0','MARIANA CECILIA','RODRIGUEZ','.','','rodriguezmariana@yahoo.com','','4491119397','','','','','','','','0','','','');
INSERT INTO familia VALUES('176','2','','SANCHEZ SILVA','1','1','REP. URUGUAY','1805','12','FRACC. AGRICULTURA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9789020','','','2017-03-01','2017-03-07 09:11:29','RAMIRO','SÁNCHEZ','GUTIÉRREZ','','dr.ramiro71@hotmail.com','','4491423158','','','','','','','','0','TANIA','SILVA','SANTILLÁN','','sansiltan@hotmail.com','','4491738911','','','','','','','','0','','','');
INSERT INTO familia VALUES('177','2','','NAVA MERCADER','2','','RIO AZUL','101','','FRACC.  SAN NICOLÁS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-06 11:08:09','ROMEO','NAVA','COVARRUBIAS','','romacova@hotmail.com','','4491660589','','','','','','','','0','MILAGROS','MERCADER','TANGASSI','','milymercader@hotmil.com','','4491867010','','','','','','','','0','','','');
INSERT INTO familia VALUES('178','2','','CASTAÑEDA GARCÍA','2','','PASEO DE LAS MARAVILLAS','405','14','FRACC.  BUGAMBILIAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1626008','','','2017-03-01','2017-03-08 10:31:33','ADRIAN','CASTAÑEDA','GARCÍA','','adrian_mexico@hotmail.com','','4498043836','','','','','','','','0','ARLETTE','GARCÍA','DÍAZ','','arlette.garcia@cfe.gob.mx','','4499113053','','','','','','','','0','','','');
INSERT INTO familia VALUES('179','2','','ESCOBEDO DAVILA','','','Jardín del Geranio 108','','','Fracc. Jardínes del Campestre','','','','9735561','','','2017-03-01','','','','','','','','','','','','','','','','0','Sharon Daniela Escobedo Dávila','','','','sharon.davila22194@gmail.com','','4497691302','','','','','','','','0','','','');
INSERT INTO familia VALUES('180','2','','GRUEST MIRANDA','1','2','SIERRA NEVADA','405','','FRACC. BOSQUES DEL PRADO NTE.','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 12:02:22','ROBERTO EDGARD','GRUEST','ELLIOT','','rge@grupo-gst.com','','4491961735','','','','','','','','0','CONCEPCIÓN','MIRANDA','PATIÑO','','cmiranda@miraplastek.com.mx','','449106677','','','','','','','','0','','','');
INSERT INTO familia VALUES('181','2','','GUERRERO FRANCO','1','','MITLA','101','','FRACC. PIRAMIDES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9781091','','','2017-03-01','2017-03-07 13:33:35','HERNAN EDUARDO','GUERRERO','DAVILA','','hguerreroda@outlook.com','','266 78 13','','','','','','','','0','TERESA DEL SOCORRO','FRANCO','LÓPEZ','','tfrancol@outlook.com','','4498944605','','','','','','','','0','','','');
INSERT INTO familia VALUES('182','2','','FLORES LOPEZ','1','','GRANIZO','114','','FRACC. VILLAS DE LA CANTERA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9742434','','','2017-03-01','2017-03-08 12:15:47','RAYMUNDO','FLORES','VAZQUEZ','','ray_flores_2123@yahoo.com.mx','','4495522530','','','','','','','','0','KARLA','LOPEZ','BALTAZAR','','klbaltazar@hotmail.com','','4491828999','','','','','','','','0','','','');
INSERT INTO familia VALUES('183','2','','ESCUDERO ACEVES','1','1','JARDÍN DEL NARDO','104','','FRACC. JARDINES DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9735593','','','2017-03-01','2017-03-09 09:52:56','J. JESÚS','ESCUDERO','GONZÁLEZ','','jesgo7@hotmail.com','','1227081','','','','','','','','0','MÓNICA DE JESÚS','ACEVES','GIACINTI','','monica68@live.com.mx','','4491170292','','','','','','','','0','','','');
INSERT INTO familia VALUES('184','2','','AVELAR GONZALEZ','2','','FUENTE DE LOS CIBELES','204','','FRACC. JARDINES DE LAS FUENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9173245','','','2017-03-01','2017-03-07 12:40:40','MOISES','AVELAR','GONZALEZ','','moises_avelar@hotmail.com','','','','','','','','','','0','GPE. ALEJANDRINA','GONZALEZ','CÓRDOVA','','aleja_glez@hotmail.com','','4491640398','','','','','','','','0','','','');
INSERT INTO familia VALUES('185','2','','VARGAS DE LUNA','1','','SIERRA NEVADA','111','','FRACC. BOSQUES DEL PRADO NTE.','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9121287','','','2017-03-01','2017-03-07 13:17:03','ALEJANDRO','VARGAS','HERNÁNDEZ','','hilosriva@yahoo.com.mx','','4492300819','','','','','','','','0','LILIANA CAROLINA','DE LUNA','REYES','','lilianadeluna@yahoo.com','','4499116540','','','','','','','','0','','','');
INSERT INTO familia VALUES('186','2','','COLLAZO CARMONA','','','Cerr. Miguel Alemán 102-15','','','Fracc. El llano','','','','','','','2017-03-01','','José Emmanuel Collazo Román','','','','eltitis81@live.com.mx','','4492109144','','','','','','','','0','Andrea Carmona Valzdés','','','','andy_60@hotmail.com','','4492109702','','','','','','','','0','','','');
INSERT INTO familia VALUES('187','2','','MALACARA RODRIGUEZ','3','','REPUBLICA DE COLOMBIA','803','','FRACC. SANTA ELENA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9785994','','','2017-03-01','2017-03-06 11:42:33','VÍCTOR','MALACARA','MUCIÑO','','vicbadface@hotmaail.com','','4499047100','','','','','','','','0','ANGÉLICA CAROLINA','RODRÍGUEZ','MUÑOZ','','carolito.rdz@gmail.com','','4499047065','','','','','','','','0','','','');
INSERT INTO familia VALUES('188','2','','ESCARCEGA OSORNIO','','','Calz. Navarra 506-6','','','Fracc. Alcázar','','','','','','','2017-03-01','','Alejandro Escarcega Tavares','','','','escarcega11@hotmail.com','','','','','','','','','','0','Clara Graciela Osornio Guzmán','','','','claraosornio@gmail.com','','449911978','','','','','','','','0','','','');
INSERT INTO familia VALUES('189','2','','SANTILLAN AMADOR','1','','AVENIDA SAN ANTONIO','105','99','RANCHO SANTA MONICA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','930 95 45','','','2017-03-01','2017-03-07 09:23:12','JOSÉ MANUEL','SANTILLÁN','ZERMEÑO','','arqsantillan@hotmail.com','','449 363 91 95','','','','','','','','0','ANA CRISTINA','AMADOR','LUJAN','','crisamador l@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('190','2','','SÁNCHEZ LÓPEZ','1','1','PASEO DE LOS CHOPOS','119','','FRACC. PULGAS PANDAS SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9965473','','','2017-03-01','2017-03-07 11:38:52','FILEMÓN','SÁNCHEZ','CHAVEZ','','filesch@yahoo.com','','4491177340','','','','','','','','0','SILVIA YOLANDA','LÓPEZ','GONZÁLEZ','','silviayolandalopez@yahoo.com.mx','','4491552450','','','','','','','','0','','','');
INSERT INTO familia VALUES('191','2','','OLIVEIRA GONZALEZ','1','','MURALISMO','118','20','LA ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9755659','','','2017-03-01','2017-03-07 13:53:32','MIGUEL ÁNGEL','OLIVEIRA','IRIARTE','','oliveira.iriarte@gmail.com','','449 165 35 67','','','','','','','','0','MARÍA MARCOS','GONZÁLEZ','BUENO','','marubueno@yahoo.com','','4491907978','','','','','','','','0','','','');
INSERT INTO familia VALUES('192','2','','GARCÍA NAME','3','5','UNIVERSIDAD','2602','25','TROJES DE KRISTAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 13:19:10','CARLOS A.','GARCÍA','VILLANUEVA','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','MA. CATALINA','NAME','CASILLAS','','catalin_name@yahoo.com.mx','','2412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('193','2','','GARCÍA NAME','','','Sierra Fría 243','','','Fracc. Bosques del Prado Nte.','','','','2356035','','','2017-03-01','','Carlos A. García Villanueva','','','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','Ma. Catalina Name C.','','','','catalin_name@yahoo.com.mx','','2412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('194','2','','GARCÍA NAME','','','Sierra Fría 243','','','Fracc. Bosques del Prado Nte.','','','','2356035','','','2017-03-01','','Carlos A. García Villanueva','','','','bordamexicana@hotmail.com','','2412631','','','','','','','','0','Ma. Catalina Name C.','','','','catalin_name@yahoo.com.mx','','2412121','','','','','','','','0','','','');
INSERT INTO familia VALUES('195','2','','DIAZ LOZA','2','','JOSEFA ORTIZ DE DOMÍNGUEZ','119','B','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9157314','','','2017-03-01','2017-03-07 11:40:59','SILVERIO','DÍAZ','LÓPEZ','','silverio.diaz@ arcacontal.com','','4498952115','','','','','','','','0','CLAUDIA','LOZA','GUTIÉRREZ','','c-lozagu@hotmail.com','','4495485002','','','','','','','','0','','','');
INSERT INTO familia VALUES('196','2','','GALLARDO ACEVES','2','1','BARRAGÁN','101','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','4152181','','','2017-03-01','2017-03-07 13:13:20','FLAVIO','GALLARDO','ANGULO','','flaviogallardo@gmail.com','','4491063354','','','','','','','','0','CARMEN ALICIA','ACEVES','GIACINTI','','carmenaceves6@hotmail.com','','4491523854','','','','','','','','0','','','');
INSERT INTO familia VALUES('197','2','','CALDERON MUÑIZ','1','','PALENQUE','108','','FRACC. PIRAMIDES ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9170484','','','2017-03-01','2017-03-08 11:53:11','HÉCTO MANUEL','CALDERÓN','TORRES','','h-calderon@ti.com','','4491866222','','','','','','','','0','MA. DE LOS ANGELES','MUÑIZ','JÁUREGUI','','angymi82@gmail.com','','4491515680','','','','','','','','0','','','');
INSERT INTO familia VALUES('198','2','','LEON LOPEZ','1','','MONTORO','240','','OJO CALIENTE 1','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9700417','','','2017-03-01','2017-03-13 12:03:57','CARLOS ALBERTO','LEÓN','BLAS','','cleonblas@gmail.com','','4491986960','','','','','','','','0','KARINA','LÓPEZ','REYES','','carinalopezreyes1975@gmail.com','','4492111233','','','','','','','','0','','','');
INSERT INTO familia VALUES('199','2','','HERNÁNDEZ RIVERA','1','','AV. EUGENIO GARZA SADA','628','217','FRACC. RINCONADA BUGAMBILIAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 09:40:12','JUAN OTHONIEL','HERNÁNDEZ','VILLALOBOS','','juanothoniel.hv@gmail.com','','449 189 55 61','','','','','','','','0','HAYDEE CRISTINA','TRIVERA','PAYAN','','hcriverap@gmail.com','','4491047365','','','','','','','','0','','','');
INSERT INTO familia VALUES('200','2','','GÓMEZ GARCÍA','1','','AV. INDEPENDENCIA','1508','13','FRACC. VILLAS DEL VERGEL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1530420','','','2017-03-01','2017-03-07 11:46:41','JOSÉ MIGUEL','GÓMEZ','FAISAL','','locovalles@hotmail.com','','4811073348','','','','','','','','0','CLAUDIA CECILIA','GARCÍA','HURTADO','','yiyogh@hotmail.com','','4491933821','','','','','','','','0','','','');
INSERT INTO familia VALUES('201','2','','MUÑOZ GOMEZ','1','1','AVE. SAN ANTONIO','302','59','FRACC. STA. MÓNICA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 11:04:47','JESÚS GUSTAVO','MÚÑOZ','ALTAMIRANO','','familiamunozgomez@yahoo.com.mx','','4499111161','','','','','','','','0','ANA MÓNICA','GÓMEZ','MARTINEZ','','anacomerciantes@yahoo.com.mx','','4494487511','','','','','','','','0','','','');
INSERT INTO familia VALUES('202','2','','ARIAS  HERNANDEZ','2','','ALAMEDA','213','','MISIÓN ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9702115','','','2017-03-01','2017-03-07 11:10:41','JAVIER OMAR','ARIAS','RAMÍREZ','','jaomar20@hotmail.com','','4491253231','','','','','','','','0','VERÓNICA SELENE','HERNÁNDEZ','MURO','','vselene11@hotmail.com','','4491159635','','','','','','','','0','','','');
INSERT INTO familia VALUES('203','2','','RODRIGUEZ LEAL VILLALOBOS','1','','DIEGO IBARRA','317','','FRACC. JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9783719','','','2017-03-01','2017-03-13 12:05:20','MIGUEL DE J.','RDGZ. LEAL','GUZMÁN','','mirolegu@msn.com','','4499064939','','','','','','','','0','ELIZABETH','VILLALOBOS','ZAPATA','','elivirod@msn.com','','4494679497','','','','','','','','0','','','');
INSERT INTO familia VALUES('204','2','','LOMELI GARDUÑO','1','1','PASEO DE LOS ALAMOS','123','5','FRACC. PULGAS PANDAS NORTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531066','','','2017-03-01','2017-03-06 11:20:01','JORGE','LOMELI','CHAVEZ','','jorgelomelich@gmail.com','','4498906682','','','','','','','','0','VERONICA','GARDUÑO','PEREDA','','verolomeli@hotmail.com','','4498043026','','','','','','','','0','','','');
INSERT INTO familia VALUES('205','2','','HERRERA POUCET','1','','HUEJUCAR','204','','CANTERAS DE SAN JOSE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9760042','','','2017-03-01','2017-03-06 13:24:12','MANUEL HERRERA','LÓPEZ','OLIVERO','','manuel.herrera@nissan.com.mx','','4491837441','','','','','','','','0','VICTORIA EUGENIA','POUCET','ALVAREZ','','petit0708@yahoo.com.mx','','4491110548','','','','','','','','0','','','');
INSERT INTO familia VALUES('206','2','','GONZALEZ LUNA ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('207','2','','GUILLÉN CERVANTES','1','','AV. LA QUERENCIA','112','','FRACC. PUNTA CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2380822','','','2017-03-01','2017-03-07 13:40:31','JORGE','GUILLÉN','MUÑOZ','','jguillen8@yahoo.com.mx','','222 128 01 26','','','','','','','','0','CRISTINA','CERVANTES','CAMARENA','','cervantesccris@gmail.com','','4491866884','','','','','','','','0','','','');
INSERT INTO familia VALUES('208','2','','CISNEROS SANTANA','1','1','ARTES PLÁSTICAS','126','','ENTORNO ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-06 12:36:43','ALBERTO','CISNEROS','VILLASEÑOR','','cigabanonos@hotmail.com','','4499116465','','','','','','','','0','PATRICIA','SANTANA','SANCHEZ','','pattysantana2009ahotmail.com','','4492653619','','','','','','','','0','','','');
INSERT INTO familia VALUES('209','2','','LEOS LOPEZ','3','1','GASPAR LÓPEZ','601','','JARDINES DE LA LUZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9134034','','','2017-03-01','2017-03-07 12:42:18','ISRAEL','LEOS','AGUIRRE','','ileosa@hotmail.com','','4491234761','','','','','','','','0','KARLA TERESA','LÓPEZ','ALVAREZ','','karlalopezalvarez76@gmail.com','','4491950603','','','','','','','','0','','','');
INSERT INTO familia VALUES('210','2','','FRANCO HERRERA','1','','RETORNO MOLINO DE VIENTO','103','1','FRACC. VILLAS DEL MOLINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','915 92 97','','','2017-03-01','2017-03-06 12:41:52','LUIS GUILLERMO','FRANCO','LÓPEZ','','lgfrancol@prodigy.net','','4491519050','','','','','','','','0','ESTHER ISELA','HERRERA','HERNÁNDEZ','','es_iherrera@hotmail.com','','4498978001','','','','','','','','0','','','');
INSERT INTO familia VALUES('211','2','','RIOJA GARCÍA','1','1','CLARISAS','106','','FRACC. VILLA TERESA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9723000','','','2017-03-01','2017-03-10 10:56:23','GUSTAVO','RIOJA','GUTIÉRREZ','','gustavorioja@gmail.com','','4491117311','','','','','','','','0','BERTHA LILIA','GARCÍA','DELGADO','','lilianbety000@hotmail.com','','4491072466','','','','','','','','0','','','');
INSERT INTO familia VALUES('212','2','','CONTRERAS FLORES','2','','AV. LA QUERENCIA','302','21','LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2395492','','','2017-03-01','2017-03-06 12:20:13','NORBERTO OCTAVIO','CONTRERAS','VILLANUEVA','','tavocon@me.com','','4491118889','','','','','','','','0','LUCERO','FLORES','DE LUNA','','luceroflores@hotmail.com','','4492245057','','','','','','','','0','','','');
INSERT INTO familia VALUES('213','2','','ROMERO MACIAS','2','1','PASEO DE LOS PIRULES','126','','RESIDENCIAL NUEVA ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 13:18:30','CESAR ALEJANDRO','ROMERO','PINEDA','','cesar_romero@ck-mail.com','','4499110536','','','','','','','','0','CLAUDIA ELIZABETH','MACÍAS','SANTILLÁN','','claumacsan@hotmail.com','','4491077002','','','','','','','','0','','','');
INSERT INTO familia VALUES('214','2','','DELGADO LOPEZ','2','','Carr. Calvillo Km 11','','','FRACC. RANCHO EL PICACHO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 11:51:46','ANTONIO','DELGADO','GUTIERREZ','','elpicachocharolais@hotmail.com','','449 406 07 31','','','','','','','','0','NORMA LETICIA','LOPEZ','ALVAREZ','','famdelopez@hotmail.com','','4491068492','','','','','','','','0','','','');
INSERT INTO familia VALUES('215','2','','RAMOS MARTIN','1','','ARROYO EL MOLINO','603','12','FRACC. CERRADA EL MOLINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9741166','','','2017-03-01','2017-03-06 12:03:10','FERNANDO','RAMOS','GOURCY','','framosgou@yahoo.com.mx','','449 896 97 75','','','','','','','','0','MA. LUCILA','MARTIN','PARGA','','rramosgou@yahoo.com.mx','','4499193407','','','','','','','','0','','','');
INSERT INTO familia VALUES('216','2','','VILLEGAS VEGA','','','Paseo del Olivar Norte 515','','','Nueva Alameda','','','','975 1681','','','2017-03-01','','José Antonio Villegas Moctezuma','','','','dr_villegas@hotmail.com','','4491117466','','','','','','','','0','Yesica Fabiola Vega Castillo','','','','dra_yfve@hotmail.com','','4491180019','','','','','','','','0','','','');
INSERT INTO familia VALUES('217','2','','SOLIS LOPEZ','2','1','SAN JOSÉ DE LOS REYNOSO','320','','FRACC. BOSQUES DEL PRADO SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 10:45:40','CARLOS','SOLÍS','LÓPEZ','','csolis@fvcautomatizacion.com.mx','','4491557770','','','','','','','','0','HORTENCIA','LÓPEZ','LÓPEZ','','horcano@gmail.com','','4491557775','','','','','','','','0','','','');
INSERT INTO familia VALUES('218','2','','BARRIOS RODRÍGUEZ','','','Oro 218-3','','','Fracc. Fundición','','','','','','','2017-03-01','','José Daniel Barrios Díaz','','','','drdanybarrios@gamil.com','','4491116352','','','','','','','','0','Ana María Rodríguez Olalde','','','','anna11@life.com.mx','','4497691383','','','','','','','','0','','','');
INSERT INTO familia VALUES('219','2','','CORNEJO MARMOLEJO','','','Paseo de los Cisnes 275','','','Fracc. Jardines del Parque ','','','','9131124','','','2017-03-01','','Enrique Cornejo López','','','','ecl@jobar.com.mx','','4491114513','','','','','','','','0','Claudia Marmolejo Guzmán','','','','claudiaguzman48@hotmail.com','','4491960115','','','','','','','','0','','','');
INSERT INTO familia VALUES('220','2','','LUEVANO GUTIERREZ','1','1','MISIONES DE SAN JOSÉ','221','','FRACC. CORRAL DE BARRRANCOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9933481','','','2017-03-01','2017-03-09 12:09:31','CARLOS GERARDO','LUEVANO','REYES','','cgluevano@recesa.com.mx','','4498907030','','','','','','','','0','ALEJANDRA','GUTIÉRREZ','ATILANO','','cinthia_g@hotmail.com','','44999117372','','','','','','','','0','','','');
INSERT INTO familia VALUES('221','2','','HERNANDEZ DE LUNA','1','','SIERRA NEVADA','231','','FRACC. BOSQUES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9140132','','','2017-03-01','2017-03-07 13:15:17','EDUARDO','HERNANDEZ','TOVAR','','eduardohdeto@hotmai.com','','4499111296','','','','','','','','0','ALMA GABRIELA','DE LUNA','REYES','','delunag@yahoo.com','','4491922599','','','','','','','','0','','','');
INSERT INTO familia VALUES('222','2','','MONTIEL PEDROZA','1','','MONTES HIMALAYA','712','','FRACC. JARDINES DE LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 10:50:35','JOSE AGUSTÍN','MONTIEL','PINTOS','','j.montielbajio@gmail.com','','4499308709','','','','','','','','0','MA. DEL CARMEN','PEDROZA','GONZALEZ','','carmenallegra@hotmail.com','','4491880558','','','','','','','','0','','','');
INSERT INTO familia VALUES('223','2','','GONZALEZ MACIAS','1','','CERRO DEL LAUREL','195','','FRACC. JARDINES DE LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9932705','','','2017-03-01','2017-03-09 12:27:09','CARLOS FERNANDO','GONZÁLEZ','GONZÁLEZ','','gtecarga@eurocentrocamionero.com','','449 441 78 85','','','','','','','','0','MARÍA DOLORES','MACIAS','PASILLAS','','lola_maciasp@yahoo.com.mx','','4491800795','','','','','','','','0','','','');
INSERT INTO familia VALUES('224','2','','JIMENEZ LOMELI','1','','AV. DE LAS MISIONES','211','','FRACC. RESIDENCIAL LA PALOMA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1947751','','','2017-03-01','2017-03-07 12:02:51','JORGE ERNESTO','JIMÉNEZ','ROMO','','no tiene','','449 890 79 90','','','','','','','','0','KARLA EDITH','LOMELÍ','MARTIN','','karla-lomeli@hotmail.com','','449 196 11 95','','','','','','','','0','','','');
INSERT INTO familia VALUES('225','2','','ZAPATA ESTRADA','2','2','JARDIN DE ZARAGOZA','440','','FRACC. JARDINES DE AGUASCALIENTESJARDINES DE AGS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9719305','','','2017-03-01','2017-03-13 13:12:17','MANUEL','ZAPATA','MÉNDEZ','','maza.me@hotmail.com','','4491063551','','','','','','','','0','EZLI','ESTRADA','RODRÍGUEZ','','ezli_estrada@yahoo.com','','4498906433','','','','','','','','0','','','');
INSERT INTO familia VALUES('226','2','','GONZALEZ GUERRA','','','Paseo del Molino 135 ','','','Fracc. Coto San Nicolás','','','','9762858','','','2017-03-01','','Jaime González De León','','','','jaimegonzalezdeleon@yahoo.com.mx','','4491559625','','','','','','','','0','Mónica A.Guerra Jiménez','','','','maleguerra1174@hormailcom','','4491559630','','','','','','','','0','','','');
INSERT INTO familia VALUES('227','2','','TISCAREÑO SANTANA','1','','RIO PIRULES','109','','SAN PABLO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9187402','','','2017-03-01','2017-03-07 10:52:45','n/a','','','','','','','','','','','','','','0','MARÍA TERESA','TISCARENO','SANTANA','','mayteyan@yahoo.com.mx','','4491954642','','','','','','','','0','','','');
INSERT INTO familia VALUES('228','2','','MURO GARDUÑO','1','1','PASEO DE LOS ALAMOS','1','10','FRACC. PULGAS PANDAS NORTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9126699','','','2017-03-01','2017-03-07 13:46:17','FRANCISCO ALEJANDRO','MURO','ALCALA','','paco_muro@gmail.com','','4494064955','','','','','','','','0','ADRIANA','GARDUÑO','PEREDA','','adrianagardunopereda@hotmail.com','','4491245555','','','','','','','','0','','','');
INSERT INTO familia VALUES('229','2','','PEREZ JIMENEZ','1','1','ANDES APENINOS','404','','FRACC. BOSQUES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9120007','','','2017-03-01','2017-03-10 09:57:47','JORGE ALEJANDRO','PÉREZ','VALDEZ','','alex.nutricionpractica@gmail.com','','4491480140','','','','','','','','0','MARÍA DEL PILAR','JIMÉNEZ','MARTÍN DEL CAMPO','','pilar_jimenez1@hotmail.com','','4491480911','','','','','','','','0','','','');
INSERT INTO familia VALUES('230','2','','SUAREZ GUTIERREZ','1','1','ALMACIGOS','111','','FRACC. VALLE DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9143147','','','2017-03-01','2017-03-07 10:58:36','MARCOS','SUAREZ','RODRÍGUEZ','','msuarez@sabro.com.mx','','4499074882','','','','','','','','0','ANA MARÍA','GUTIÉRREZ','ALVAREZ','','ana.maria.gutierrez@hotmail.com','','4495526573','','','','','','','','0','','','');
INSERT INTO familia VALUES('231','2','','PEDROZA GUTIERREZ','','','Paseo del Molino 337 ','','','Fracc. Coto San Nicolás','','','','9135804','','','2017-03-01','','Carlos Silvano Pedroza García','','','','capedroza@hotmail.com','','4491836652','','','','','','','','0','Kathya Margarita Gutiérrez Jasso','','','','katia.gtzc21@gmail.com','','4492123769','','','','','','','','0','','','');
INSERT INTO familia VALUES('232','2','','GONZALEZ SANTACRUZ','1','1','JUAN PABLO II','1003','16','FRACC. LOS EUCALIPTOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','4544176','','','2017-03-01','2017-03-07 13:42:30','ALVARO JACOBO','GONZÁLEZ','RODRIGUEZ','','circulodigital@msn.com','','4491523113','','','','','','','','0','KARLA EDITH','SANTACRUZ','IZQUIERDO','','dithsi@hotmail.com','','4491567595','','','','','','','','0','','','');
INSERT INTO familia VALUES('233','2','','PONCE DE LEON PENNA','2','','MONTEBLANCO','307','','FRACC. LOMAS DEL CAMPESTRE II','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 09:41:49','OCTAVIO ALBERTO','PONCE DE LEON','ARROYO','','arqopla@hotmail.com','','4491553815','','','','','','','','0','KARLA ARLETTE','PENNA','CHAROLET','','karlapenna@hotmail.com','','4491553814','','','','','','','','0','','','');
INSERT INTO familia VALUES('234','2','','ESPARZA FLORES','1','1','SANTUERI','117','','FRACC. VILLA CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9774233','','','2017-03-01','2017-03-06 11:26:12','VICTOR ABEL','ESPARZA','JIMÉNEZ','','avel_caroltex@hotmail.com.mx','','4498071639','','','','','','','','0','JUANA DORIANA','FLORES','TERRONES','','doriana1977@hotmail.com','','4491144687','','','','','','','','0','','','');
INSERT INTO familia VALUES('235','2','','LOPEZ YUNGTINGPING','1','1','JINETEO','311','','FRACC. VISTA ALEGRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9295031','','','2017-03-01','2017-03-13 13:17:50','JOSÉ RAFAEL','LÓPEZ','RIVERA','','raflex22.lopez@gmail.com','','4491557630','','','','','','','','0','GABRIELA','YUNGTINGPING','ATILANO','','gab_yung@hotmail.com','','4491095323','','','','','','','','0','','','');
INSERT INTO familia VALUES('236','2','','MUÑOZ MACÍAS','1','1','VALLE DE MÉXICO','118','','FRACC. RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9179713','','','2017-03-01','2017-03-07 13:11:53','GUILLERMO','MUÑOZ','GALVÁN','','mmggmg@hotmail.com','','4499112515','','','','','','','','0','MARÍA CATALINA','MACÍAS','LUÉVANO','','katyml@hotmail.com','','4491559198','','','','','','','','0','','','');
INSERT INTO familia VALUES('237','2','','COMTE TORRES','2','','PASEO DE LAS GOLONDRINAS','111','','FRACC. JARDINES DEL LAGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9761172','','','2017-03-01','2017-03-07 12:04:27','ALEJANDRO','COMTE','VILLALOBOS','','drcomte@hotmail.com','','4498908466','','','','','','','','0','MARÍA MAGDALENA','TORRES','ROMO','','maguistr@hotmail.com','','4491656252','','','','','','','','0','','','');
INSERT INTO familia VALUES('238','2','','PEDROZA GUTIERREZ','2','','PASEO DE LOS EUCALIPTOS','133','','FRACC.BOSQUES DEL PRADO ORIENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9144098','','','2017-03-01','2017-03-07 10:10:33','ERIK GUSTAVO','PEDROZA','TREJO','','felixpredropz@yahoo.com.mx','','4491115659','','','','','','','','0','BEATRIZ','GUTIÉRREZ','GALLO','','betygtzgallo@yahoo.com.mx','','4491115648','','','','','','','','0','','','');
INSERT INTO familia VALUES('239','2','','GONZALEZ  AYALA','2','','JARDIN DE LA ALAMEDA','304','','FRACC. JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1407171','','','2017-03-01','2017-03-07 12:14:06','LUIS FERNANDO','GONZÁLEZ','LÓPEZ','','luisfernandogonzalez@hotmail.com','','449 273 52 90','','','','','','','','0','GABRIELA','AYALA','ACEVEDO','','no tiene','','4492272415','','','','','','','','0','','','');
INSERT INTO familia VALUES('240','2','','RANGEL MUÑOZ','1','1','PASEO LA ALAMEDA','123','','FRACC. MISIÓN ALAMEDA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-06 12:44:50','JAIME F.','RANGEL','JIMÉNEZ','','dr_jrangel@hotmail.com','','4499113570','','','','','','','','0','KARINA IVETTE','MUÑOZ','POPOCA','','karinapopoca@hotmail.com','','4491558934','','','','','','','','0','','','');
INSERT INTO familia VALUES('241','2','','GONZALEZ GIL','','','MOLINO DEL REY','116','','REAL DEL MOLINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:02:09','EDUARDO','GONZÁLEZ','CAMPOS','','edu_qco@hotmail.com','','4491956065','','','','','','','','0','VIRIDIANA','GIL','LOERA','','viri.gil.loeagmail.com','','4497693052','','','','','','','','0','','','');
INSERT INTO familia VALUES('242','2','','MARTINEZ JIMENEZ','2','1','CORDILLERA DE LOS ALPES PTE.','135','','FRACC. LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9120904','','','2017-03-01','2017-03-07 12:51:24','RUBEN','MARTÍNEZ','LÓPEZ','','rubenmtzlopez@hotmailcom','','449 769 00 94','','','','','','','','0','HILDA','JIMENEZ','JIMENEZ','','hilda_jmz76@icloud.com','','4497699969','','','','','','','','0','','','');
INSERT INTO familia VALUES('243','2','','ROLDAN VALADEZ','1','','JARDIN DE LOS CEREZOS','140','','FRACC. JARDINES DEL PARQUE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9782898','','','2017-03-01','2017-03-06 13:49:00','JULIÁN','ROLDÁN','CERDA','','medicaval@yahoo.com.mx','','4498905743','','','','','','','','0','MARTHA ESTELA','VALADEZ','OLMOS','','marthavaladez1@hotmail.com','','4498042280','','','','','','','','0','','','');
INSERT INTO familia VALUES('244','2','','HIDALGO RODRIGUEZ','1','1','PRIV. SAN JUAN BAUTISTA','110','','FRACC. CANTERAS DE SN. AGUSTÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9789246','','','2017-03-01','2017-03-06 12:23:48','HARIM','HIDALGO','SALADO','','harim.hidalgo@softtek.com','','4491472401','','','','','','','','0','YENITH','RODRÍGUEZ','VILLAVICENCIO','','yenedithrodriguez@yahoo.com.mx','','4491794040','','','','','','','','0','','','');
INSERT INTO familia VALUES('245','2','','HERNÁNDEZ VILLALOBOS','2','','VALLE DE ATEMAJAC','104','','FRACC. VALLE DE RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9165050','','','2017-03-01','2017-03-07 11:37:30','VICTOR MANUEL','HERNÁNDEZ','GONZÁLEZ','','vic@vic.com.mx','','449 804 22 15','','','','','','','','0','MA. GUADALUPE','VILLALOBOS','GONZÁLEZ','','lvillal@vic.com.mx','','4491112390','','','','','','','','0','','','');
INSERT INTO familia VALUES('246','2','','GARCIA MARTINEZ','3','','MIGUE DE LA MADRID','2602','','FRACC. TROJES DE KRISTAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189595','','','2017-03-01','2017-03-07 13:44:49','JUAN CARLOS','GARCÍA','DE LA CAMPA','','garciadelacampa@hotmail.com','','4491559901','','','','','','','','0','OSBELIA','MARTÍNEZ','GUDIÑO','','osbe01@hotmail.com','','4491961956','','','','','','','','0','','','');
INSERT INTO familia VALUES('247','2','','REYES ESCALANTE','','','Paseo de la Presa 202','','','Fracc. Campestre Sur','','','','9964570','','','2017-03-01','','Miguel Reyes González','','','','mireygo3@yahoo.com.mx','','4498968000','','','','','','','','0','Lucía Escalante Jiménez','','','','luci.escalante@yahoo.com.mx','','4499111508','','','','','','','','0','','','');
INSERT INTO familia VALUES('248','2','','TRUJILLO LOPEZ','','','San Juan de los Lagos #401-A','','','Fracc. Bosques del Prado Nte.','','','','9147727','','','2017-03-01','','Jose Luis Trujillo Alcalá','','','','gigimajose@hotmail.com','','4499079541','','','','','','','','0','Guillermina Lopez González','','','','gigimajose@hogtmail.com','','4491556799','','','','','','','','0','','','');
INSERT INTO familia VALUES('249','2','','MACIAS GUZMAN','1','','PASEO DE LOS SABINOS','133','','FRACC. COTO SN. NICOLAS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2383000','','','2017-03-01','2017-03-13 12:08:34','JOSÉ LUIS','MACÍAS','VÁZQUEZ','','maguz@telmexmail.com','','4491554327','','','','','','','','0','JOSEFINA','GUZMÁN','GUERRERO','','fina_guzman@hotmail.com','','4491904254','','','','','','','','0','','','');
INSERT INTO familia VALUES('250','2','','ALATORRE DE LA TORRE','2','','RÍO MARCINIQUE','124','','FRACC. VIÑA ANTIGUA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9963952','','','2017-03-01','2017-03-08 11:57:12','SERGIO','ALATORRE','PÉREZ','','cmfalatorre@gmail.com','','4499500628','','','','','','','','0','KATHIA CRISTINA','DE LA TORRE','INFANTE','','kathya29@yahoo.com','','4498945157','','','','','','','','0','','','');
INSERT INTO familia VALUES('251','2','','HERNANDEZ VELAZQUEZ','3','','CALZADA DE LAS AMERICAS','403','A','FRACC. VERGELES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9930554','','','2017-03-01','2017-03-07 09:50:46','DAVID','HERNÁNDEZ','DURÁN','','david@dhdarquitectos.net','','4491213661','','','','','','','','0','VERÓNICA','VELÁZQUEZ','DE LA ROSA','','davidyvero@icloud.com','','4491446246','','','','','','','','0','','','');
INSERT INTO familia VALUES('252','2','','MIRANDA MOCTEZUMA','2','','JESUS MARÍA','408','1','FRACC. SAN JOSE DEL ARENAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1532785','','','2017-03-01','2017-03-07 09:31:11','JUAN CARLOS','MIRANDA','MORÁN','','juancarlos@arquitectura3.com','','4499117076','','','','','','','','0','CECILIA','MOCTEZUMA','ANAYA','','cecimocte@hotmail.com','','4491102414','','','','','','','','0','','','');
INSERT INTO familia VALUES('253','2','','JAUREGUI RAMIREZ','','','22 de diciembre ','','','Morelos','','','','9773165','','','2017-03-01','','','','','','','','','','','','','','','','0','María del Lourdes Ramírez de la Rosa','','','','lourdesroro1973ahotmail.com','','4492191938','','','','','','','','0','','','');
INSERT INTO familia VALUES('254','2','','BUJDUD FUENTES','1','1','AV. JUAN PABLO II','1003','80',' FRACC. LOS EUCALIPTOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9761510','','','2017-03-01','2017-03-06 13:21:32','JUAN MANUEL','BUJDUD','PÉREZ','','neon70mx@yahoo.com.mx.','','4491973961','','','','','','','','0','ALMA BEATRZ','FUENTES','VELÁZQUEZ','','almafuentes2201@hotmail.com','','4498062349','','','','','','','','0','','','');
INSERT INTO familia VALUES('255','2','','RIOS CORRAL','','','Calzada de las Américas #510','','','Fracc. Vergeles','','','','9128131','','','2017-03-01','','Jorge Rios Díaz','','','','jorge22_rios@hotmai.com','','4492841101','','','','','','','','0','Olivia Corral Olaguez','','','','yambal0418@yahoo.com.mx','','4491551045','','','','','','','','0','','','');
INSERT INTO familia VALUES('256','2','','VENTURA CUEVAS','2','','NEVADO DE COLIMA','211','','FRACC. PRADOS DEL SUR  ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 13:37:08','NETZAHUALCÓYOTL','VENTURA','ANAYA','','netzaventura@hotmail.com','','4494489608','','','','','','','','0','LORENA CECILIA','CUEVAS','MARTÍNEZ','','lorexcuevas@hotmail.com','','4491737407','','','','','','','','0','','','');
INSERT INTO familia VALUES('257','2','','MUÑOZ RODRIGUEZ','2','','PASEO DEL OLIVAR SUR','317','','NUEVA ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9707506','','','2017-03-01','2017-03-07 11:49:40','EFRÉN ALEJANDRO','MUÑOZ','VILLANUEVA','','alejandromovi@yahoo.com.mx','','449 123 46 81','','','','','','','','0','ROSAMARÍA','RODRÍGUEZ','SALAS','','romarosa2000@yahoo.com','','4491576816','','','','','','','','0','','','');
INSERT INTO familia VALUES('258','2','','GUTIERREZ RUVALCABA','3','','JESUS MARÍA','408','2','FRACC. SAN JOSÉ DEL ARENAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9144798','','','2017-03-01','2017-03-07 10:15:42','JUAN JOSÉ','GUTIERREZ','RAMIREZ','','juanjosgtzrmz@hotmail.com','','4499115335','','','','','','','','0','GABRIELA','RUBALCAVA','SALCEDO','','gabrielarubalcava@hotmail.com','','4491073544','','','','','','','','0','','','');
INSERT INTO familia VALUES('259','2','','ALONSO DIAZ DE LEON','1','1','MIER Y PESADO','106','','FRACC. EL ENCINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9941810','','','2017-03-01','2017-03-08 10:39:11','','','','','','','','','','','','','','','0','MATHA PATRICIA','ALONSO','DÍAZ DE LEÓN','','mpaddl@gmail.com','','4491471629','','','','','','','','0','','','');
INSERT INTO familia VALUES('260','2','','ARREOLA REYNOSO','','','Paseos del Campestre #127','','','Fracc. Q Campestre','','','','2381150','','','2017-03-01','','Jose Manuel Arreola Guerra','','','','dr.jmag@gmail.com','','4494632049','','','','','','','','0','Yessica Reynoso Cruz','','','','rc.yessi@hotmail.com','','3314093667','','','','','','','','0','','','');
INSERT INTO familia VALUES('261','2','','OROPEZA RAMIREZ','1','','PASEO DE LOS SABINOS','124','','FRACC. COTO SAN NICOLAS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1590139','','','2017-03-01','2017-03-07 12:38:18','ALEJANDRO','OROPEZA','PADILLA','','choforo_kich@hayoo.com','','4498909421','','','','','','','','0','KARLA MARIANA','RAMÍREZ','GONZÁLEZ','','kmrgych@hotmail.com','','4491116202','','','','','','','','0','','','');
INSERT INTO familia VALUES('262','2','','MARTINEZ LOZANO','','','Av. Santa Monica #201-62','','','Villa Capri - Rancho Santa Mónica','','','','9761404','','','2017-03-01','','Mauricio Martínez Burillo','','','','mmburillo@gmail.com','','4499193545','','','','','','','','0','María del Carmen de Jesús Lozano Diez','','','','camelilozano@yahoo.com.mx','','4494630683','','','','','','','','0','','','');
INSERT INTO familia VALUES('263','2','','VALDIVIA LOPEZ','1','1','BOGOTA','301','13','FRACC. LA FUENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','318 48 32','','','2017-03-01','2017-03-07 13:35:48','JOSÉ ANTONIO','VALDIVIA','VELASCO','','construlapurisima@gmail.com','','4491869173','','','','','','','','0','ALEJANDRA','LÓPEZ','OBREGÓN','','alopezobregon@gmial.com','','4491869179','','','','','','','','0','','','');
INSERT INTO familia VALUES('264','2','','ACEVES CHAVEZ ','1','','LA QUERENCIA','302','51','FRACC. LA QUERENCIA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2380808','','','2017-03-01','2017-03-07 13:26:01','MANUEL','ACEVES','RUBIO','','manuel.acevesr@live.com.mx','','4499192101','','','','','','','','0','ROSALINDA','CHÁVEZ','LÓPEZ','','','','4497698266','','','','','','','','0','','','');
INSERT INTO familia VALUES('265','2','','COMPEAN SANCHEZ','1','','JARDÍN DE LOS CEREZOS','118','','FRACC.  JARDINES DEL PARQUE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1406990','','','2017-03-01','2017-03-08 11:46:42','LORENZO','COMPEAN','MARTÍNEZ','','otorrinodrcompean@hotmail.com','','4499116664','','','','','','','','0','MARÍA ERNESTINA','SÁNCHEZ','SOLÍS','','ernessansol@hotmail.com','','4494159138','','','','','','','','0','','','');
INSERT INTO familia VALUES('266','2','','LAPUENTE RAMIREZ','2','','FRAY SERVANDO DE SEGOVIA','313','','JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 12:32:54','RICARDO','LAPUENTE','ESCALANTE','','nova_impresos@hotmail.com','','4416817','','','','','','','','0','ADRIANA','RAMÍREZ','MORALES','','puntodeencuentrarm@hotmail.com','','4494489405','','','','','','','','0','','','');
INSERT INTO familia VALUES('267','2','','SEDANO VALENZUELA','2','1','PASEO DEL RIO AZUL','124','','FRACC. COTO SAN NICOLAS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9761446','','','2017-03-01','2017-03-13 12:52:22','JAVIER','SEDANO','CANDELA','','javiersedano@hotmail.com','','4491068469','','','','','','','','0','CIRENIA ALEJANDRA','VALENZUELA','LÓPEZ','','alevalenzuela77@hotmail.com','','4499112692','','','','','','','','0','','','');
INSERT INTO familia VALUES('268','2','','FRANCO MARTINEZ','','','Sierra del Laurel #322','','','Fracc. Bosques del Prado Norte','','','','9143778','','','2017-03-01','','Jorge Armando Franco Quezada','','','','franqueza21julio@hotmail.com','','4491363901','','','','','','','','0','Olga Martínez Romero','','','','olgamtz6@hotmail.com','','4498908276','','','','','','','','0','','','');
INSERT INTO familia VALUES('269','2','','KIMURA CORDOVA','2','','CERRADA DEL ROSARIO','105','','CANTERAS DE SAN AGUSTIN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','976 09 51','','','2017-03-01','2017-03-08 09:16:02','HIROSHI GABRIEL','KIMURA','HIRATA','','hiroshikimura@prodigy.net.mx','','4498042058','','','','','','','','0','NATALIA','CÓRDOVA','PAREDES','','nathaliacordova@hotmail.com','','4499119100','','','','','','','','0','','','');
INSERT INTO familia VALUES('270','2','','DELGADO SALAS','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('271','2','','VARGAS LOPEZ','1','1','CORDILLERA DE LOS ALPES SUR','224','','FRACC. JARDINES DE LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9965507','','','2017-03-01','2017-03-07 13:38:58','JESUS','VARGAS','HERNÁNDEZ','','jesusvargashz@hotmail.com','','464 51 24','','','','','','','','0','GUILLERMINA DE LOS ANGELES','LOPEZ','AMEZCUA','','gala13-02@hotmail.com','','4491235833','','','','','','','','0','','','');
INSERT INTO familia VALUES('272','2','','ESPARZA ESTRADA','','','Bugambilias 113 ','','','Fracc. Jardines de las Bugambilias. ','','','','1405358','','','2017-03-01','','Mario Alberto Esparza de Luna','','','','mesparza@cumbresaguascalientes.com','','4491093665','','','','','','','','0','María de Lourdes Estrada Ramírez','','','','lulyestrada@prodigy.net.mx','','4491233025','','','','','','','','0','','','');
INSERT INTO familia VALUES('273','2','','LEON MORA','','','Alfonso Avalos Saavedra 606','','','Fracc. Jardines de la Luz ','','','','9780457','','','2017-03-01','','Sergio León Jazzo','','','','leonjazzosergio@gmail.com','','4491981076','','','','','','','','0','Cecilia Mora López','','','','ml_cecilia@hotmail.com','','4492271980','','','','','','','','0','','','');
INSERT INTO familia VALUES('274','2','','GOMEZ MINCHACA','1','','XOCHICALCO','144','','FRACC. PIRÁMIDES ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9789917','','','2017-03-01','2017-03-06 13:33:28','FRACISCO JAVIER','GÓMEZ','','','fgomezg827@gmail.com','','449 220 72 60','','','','','','','','0','GABRIELA DE LOS DOLORES','MINCHACA','ESTRADA','','gminchaca@calidra.com.mx','','4491119817','','','','','','','','0','','','');
INSERT INTO familia VALUES('275','2','','NAJERA MARTINEZ','1','','AV. SAN ANTONIO','201','58','FRACC. RANCHO STA. MÓNICA. ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2504087','','','2017-03-01','2017-03-13 13:14:57','ARLIN JHONATAN','NÁJERA','MARTÍNEZ','','najera.arlin@gmail.com','','4494610310','','','','','','','','0','REYNA ISABEL','MARTINEZ','NOLASCO','','reyna.martinez.n@gmail.com','','4491115034','','','','','','','','0','','','');
INSERT INTO familia VALUES('276','2','','MARIN HERNANDEZ','1','','PRIVADA IBIZA','2','','FRACC. RESIDENCIAL EL MOLINO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1580425','','','2017-03-01','2017-03-07 12:55:36','ALEJANDRO','MARIN','BOSQUE','','dr_alejandro_marin@hotmail.com','','4491111102','','','','','','','','0','MARTHA A.','HERNÁNDEZ','CEDILLO','','malecmarinc@hotmail.com','','4498073624','','','','','','','','0','','','');
INSERT INTO familia VALUES('277','2','','RIVERA LEON LARA','1','','MIGUEL CALDERA','708','','JARDINES DE LAS FUENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','913 51 60','','','2017-03-01','2017-03-06 11:23:30','MIGUEL A.','RIVERA','LEDESMA','','','','449 178 35 66','','','','','','','','0','MARISOL','LEON LARA','LOPEZ','','','','449 179 95 21','','','','','','','','0','','','');
INSERT INTO familia VALUES('278','2','','HERNANDEZ GOMEZ LOPEZ','','','Educadores 107','','','Fracc. Jose Vasconcelos C. ','','','','9761505','','','2017-03-01','','Arnoldo Hernández Gómez Palomino','','','','ahernandezgomezpalomino@yahoo.com.mx','','4492128465','','','','','','','','0','María Antoneta López Medina','','','','marijo_arnol@hotmail.com','','4491434343','','','','','','','','0','','','');
INSERT INTO familia VALUES('279','2','','LAPUENTE AYLUARDO','1','','HACIENDA CALTENGO','123','','REAL DE HACIENDAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9174108','','','2017-03-01','2017-03-08 12:10:03','RODRIGO','LAPUENTE','ÁVILA','','lerrylapuente@yahoo.com','','4494948214','','','','','','','','0','FABIOLA','AYLUARDO','RIVERA','','fabi_ayluardo@hotmail.com','','4491378419','','','','','','','','0','','','');
INSERT INTO familia VALUES('280','2','','GUERRA VILLAMAR','2','','Carr. A Colonia Nueva Km 1.1','','','GRANJAS SAN CARLOS','','','','465 9584143','','','2017-03-01','2017-03-13 12:51:06','ISMAEL','GUERRA','GONZALEZ','','iguerra@alestra.com.mx','','4497697530','','','','','','','','0','EMILIA DEL C.','VILLAMAR','ROMO DE VIVAR','','mily_villamar@yahoo.com','','449 890 97 00','','','','','','','','0','','','');
INSERT INTO familia VALUES('281','2','','VALDES ROMO','','','Fuente de las Cibeles  506','','','Fracc. Fuentes de la Asunción ','','','','9172303','','','2017-03-01','','Fernando Valdes SantaCruz','','','','valfer99@hotmail.com','','4498941120','','','','','','','','0','Irma Romo Rangel','','','','irmar0211@hotmail.com','','4497692536','','','','','','','','0','','','');
INSERT INTO familia VALUES('282','2','','VALDEZ CORNEJO','','','Priv. La Roca 131','','','Fracc. La Piedra','','','','','','','2017-03-01','','Christian Javier Valdez Leal','','','','chris.valdez@hotmail.com','','4494155997','','','','','','','','0','Wendy Pamela Cornejo Sotelo','','','','wendy.cornejo@inegi.org.mx','','4492592869','','','','','','','','0','','','');
INSERT INTO familia VALUES('283','2','','RAMIREZ CARREON','1','1','FRAY ANTONIO DE SEGOVIA','147','','FRACC. VILLA JARDÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','688 93 21','','','2017-03-01','2017-03-07 11:07:11','JUAN CARLOS','RAMÍREZ','DE LIRA','','nova_impresos@hotmail.com','','449 363 49 89','','','','','','','','0','NANCY','CARREÓN','ORTÍZ','','no tiene','','4491974746','','','','','','','','0','','','');
INSERT INTO familia VALUES('284','2','','TOLEDO NAVARRO','3','','SIERRA HERMOSA','224','','FRACC. BOSQUES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-06 13:16:43','JOSÉ ANTONIO','TOLEDO','NOVI','','novi@pcsmart.com,mx','','4498047020','','','','','','','','0','MARIAMAR','NAVARRO','DE TOLEDO','','mariamardetoledo@gmail.com','','4498909039','','','','','','','','0','','','');
INSERT INTO familia VALUES('285','2','','BISOGNO CAL Y MAYOR','2','','CALZADA NAVARRA','506','47','FRACC. ALCAZAR ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2392250','','','2017-03-01','2017-03-13 12:09:55','JOSE MANUEL','BISOGNO','CARRILLO','','jmbisogno@hotmail.com','','4491102900','','','','','','','','0','MYRNA CAL','Y MAYOR','PEÑA','','mcalymayorp@hotmail.com','','4499609786','','','','','','','','0','','','');
INSERT INTO familia VALUES('286','2','','CURIEL NUÑEZ','2','','JOSÉ MARÍA VELASCO','249','','LOMAS DE SANTA ANITA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','975 25 02','','','2017-03-01','2017-03-07 11:54:39','RICARDO IVÁN','CURIEL','GARCÍA','','rivancuriel@gmail.com','','4494944042','','','','','','','','0','ANA LILIA','NÚÑEZ','GARCÍA','','nugaalive.com','','4491976225','','','','','','','','0','','','');
INSERT INTO familia VALUES('287','2','','MURILLO GUTIERREZ ','2','1','CERRO DEL LAUREL','137','','FRACC. LOMAS DEL CAMPESTRE ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1944218','','','2017-03-01','2017-03-08 11:33:37','RAFAEL','MURILLO','GONZÁLEZ','','suamex@live.com.mx','','4498908602','','','','','','','','0','NORMA ANGÉLICA','GUTIÉRREZ','GONZÁLEZ','','norma_gtz_glez@hotmail.com','','4498042731','','','','','','','','0','','','');
INSERT INTO familia VALUES('288','2','','RUEDAS SUAREZ','1','','CIRCUITO BONATERRA','309','','FRACC. VILLAS BONATERRA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9711756','','','2017-03-01','2017-03-08 11:54:25','','','','','','','','','','','','','','','0','KARLA CONSUELO','SUÁREZ','GUTIÉRREZ','','karla.suare@hotmail.com','','4492108169','','','','','','','','0','','','');
INSERT INTO familia VALUES('289','2','','RAMIREZ VILLAMAR','1','','MONTURA','214','','FRACC. VISTA ALEGRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9295489','','','2017-03-01','2017-03-13 12:44:04','ALFREDO','RAMÍREZ','MORALES','','alfrramirez@hotmail.com','','4492131257','','','','','','','','0','LILIANA','MILLAR','ROMO DE VIVAR','','livillamar@hotmail.com','','4491172726','','','','','','','','0','','','');
INSERT INTO familia VALUES('290','2','','ASPIROZ LOERA','','','Cordillera de los Andes #203','','','Fracc. La Concepción','','','','9932982','','','2017-03-01','','Luis Aspiroz Gonzalez','','','','luisazgo@gmail.com','','4499194865','','','','','','','','0','Silvia Loera Ruiz','','','','silvia6421@hotmail.es','','4498943001','','','','','','','','0','','','');
INSERT INTO familia VALUES('291','2','','ROMO REYES','','','Av. Eugenio Garza Sada 21-9','','','Fracc. La Plazuela','','','','2381191','','','2017-03-01','','J. Jesús Romo Barba','','','','jeroba_06@hotmail.com','','4494487751','','','','','','','','0','Norma Lucía Reyes Palomino','','','','nlucyr@hotmail.com','','4491377936','','','','','','','','0','','','');
INSERT INTO familia VALUES('292','2','','FRANCO GUTIÉRREZ','1','1','SOLANDRA','143','','FRACC. YALTA CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9157145','','','2017-03-01','2017-03-08 09:20:38','SALVADOR ALFREDO','FRANCO','LÓPEZ','','safrancol@hotmmail.com','','4499049286','','','','','','','','0','MARÍA TERESA','GUTIÉRREZ','PADILLA','','tgutierrezp94@gmail.com','','4491924250','','','','','','','','0','','','');
INSERT INTO familia VALUES('293','2','','REYNOSO GALLO','1','','ARIAS BERNAL','112','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9152880','','','2017-03-01','2017-03-13 13:06:45','CARLOS EDUARDO','REYNOSO','RUVALCABA','','','','449 262 89 57','','','','','','','','0','LORENA','GALLO','GALLEGOS','','gallo.90@hotmail.com','','4491062793','','','','','','','','0','','','');
INSERT INTO familia VALUES('294','2','','ZEGBE MEDEL','2','1','AV. VALLES','702','','FRACC. RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9940525','','','2017-03-01','2017-03-06 13:41:06','OMAR','ZEGBE','DOMÍNGUEZ','','o_zegbel@yahoo.com.mx','','4499066160','','','','','','','','0','MIRIAM CECILIA','MEDEL','ROJERO','','miriam.medelrojero@yahoo.com.mx','','4491838369','','','','','','','','0','','','');
INSERT INTO familia VALUES('295','2','','LOPEZ GALARZA','3','','JARDÍN DEL ENCINO','401','','FRACC. JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1459472','','','2017-03-01','2017-03-07 12:31:22','JOSÉ DE JESÚS','LÓPEZ','HERNÁNDEZ','','jjlh76@hotmail.com','','4498909472','','','','','','','','0','LIDIA NANCY','GALARZA','RAMÍREZ','','lngr77@hotmail.com','','4491705907','','','','','','','','0','','','');
INSERT INTO familia VALUES('296','2','','REVILLA RUIZ DE CHAVEZ','1','','JARDÍN DE SAN MARCOS','112','','FRACC. JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1405936','','','2017-03-01','2017-03-07 09:35:26','JOSE LUIS','REVILLA','OLAVARRIETA','','jose.revilla@multiva.com.mx','','4492053163','','','','','','','','0','LAURA PATRICIA','RUIZ DE CHÁVEZ','PASILLAS','','patyderevilla@hayoo.com.mx','','4491095828','','','','','','','','0','','','');
INSERT INTO familia VALUES('297','2','','CASTAÑEDA ALONSO','2','1','CIRCUITO RINCÓN ANDALUZ','302','','FRACC. RINCÓN ANDALUZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189639','','','2017-03-01','2017-03-07 11:18:01','EFREN','CASTAÑEDA','CASTORENA','','ecastañeda74@hotmail.com','','4498909471','','','','','','','','0','MA. DE LOS ANGELES','ALONSO','IBARRA','','angelesalonsoi@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('298','2','','RODRIGUEZ MARTINEZ','1','','PODER LEGISLATIVO SUR','304','','GÁMEZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9150438','','','2017-03-01','2017-03-13 13:11:05','ULISES','RODRIGUEZ','GUERRA','','','','','','','','','','','','0','VICTORIA EUGENIA','MARTÍNEZ','MARTÍNEZ','','vieumama761004@hotmail.com','','449 448 97 16','','','','','','','','0','','','');
INSERT INTO familia VALUES('299','2','','MARTINEZ GUERRA','1','3','PASEO DEL MOLINO','613','','FRACC. COTO SAN NICOLÁS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9762470','','','2017-03-01','2017-03-06 12:14:07','AUSTREBERTO','MARTINEZ','RUIZ','','austreberto.m@gmail.com','','4498041233','','','','','','','','0','LILIA GRACIELA','GUERRA','JIMÉNEZ','','gguerra72@hotmail.com','','4498043643','','','','','','','','0','','','');
INSERT INTO familia VALUES('300','2','','GONZALEZ TORRADO','','','1ªCda. Nayarit  107','','','Fracc. Rinconada el Cedazo','','','','2390668','','','2017-03-01','','Joel González Dueñez','','','','joelgonzalezduenez@gmail.com','','4491819639','','','','','','','','0','Ana MonserratTorrado Rodríguez','','','','montse.torrado@hotmail.es','','4492063692','','','','','','','','0','','','');
INSERT INTO familia VALUES('301','2','','PEDROZA GRANIEL','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('302','2','','REYES ORTIZ','','','Hortalizas 141 ','','','Fracc. Villa de Nuestra Sra de la Asuncion','','','','9939432','','','2017-03-01','','Luis Fernando Reyes Aguilar','','','','ferreyes78@hotmail.com','','4492771671','','','','','','','','0','Sandra Ortiz Gámez','','','','palafox-78Qhotmail.com','','4491961659','','','','','','','','0','','','');
INSERT INTO familia VALUES('303','2','','MENESES LOPEZ','3','','GRANEROS','305','','FRACC. GRANJAS CAMPESTRE','AGUASCALIETNES','AGUASCALIETNES','AGUASCALIETNES','1533722','','','2017-03-01','2017-03-07 12:22:48','RICARDO','MENESES','ROMO','','ricardomenesesromo@gmail.com','','4491114541','','','','','','','','0','ADRIANA','LÓPEZ','GONZALEZ','','lopez_adr@prodigy.mx','','4495493876','','','','','','','','0','','','');
INSERT INTO familia VALUES('304','2','','VAZQUEZ AVALOS','1','1','POTREROS','625','','FRACC. VALLE DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9966418','','','2017-03-01','2017-03-07 13:23:54','ALEJANDRO','VAZQUEZ','HERNANDEZ','','chobi40@hotmail.com','','4492240728','','','','','','','','0','ARCELIA JULIANA','AVALOS','HERNANDEZ','','avalosa06@yahoo.com.mx','','4492064808','','','','','','','','0','','','');
INSERT INTO familia VALUES('305','2','','MEDA LLAMAS','3','1','ARTES PLÁSTICAS','143','','SANTA ANITA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9754996','','','2017-03-01','2017-03-08 11:31:27','JORGE ARMANDO','MEDA','ARREYGUE','','jmeda@vianney.com.mx','','4492250456','','','','','','','','0','MINERVA','LLAMAS','MARTÍNEZ','','minellamas@hotmail.com ','','4498047398','','','','','','','','0','','','');
INSERT INTO familia VALUES('306','2','','DELADO GUTIERREZ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('307','2','','OCHOA TISCAREÑO','2','','CORDILLERA DE LOS ANDES','113','','FRACC. LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2514881','','','2017-03-01','2017-03-07 12:09:24','JORGE ELMAR','OCHOA','SETZER','','jorgeochiasetzer@hotmail.com','','4491114430','','','','','','','','0','LOURDES ANABEL','TISCAREÑO','LOPEZ','','tiscarenoanabel@hotmail.com','','4491114059','','','','','','','','0','','','');
INSERT INTO familia VALUES('308','2','','GONZÁLEZ MARTÍNEZ','2','','AV. LA QUERENCIA','304','40','FRACC. RESIDENCIAL LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','293 96 31','','','2017-03-01','2017-03-07 10:24:54','RICARDO','GONZÁLEZ','SERNA','','elrikar46@hotmail.com','','4491293327','','','','','','','','0','PAULINA GUADALUPE','MARTÍNEZ','HERNÁNDEZ','','la_pau48@hotmai.com','','4491792769','','','','','','','','0','','','');
INSERT INTO familia VALUES('309','2','','SERVIN TRUEBA','2','','ANTIGUO CAMINO A SAN IGNACIO','220','3A','FRACC. LOS OLIVOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9779080','','','2017-03-01','2017-03-08 11:26:04','LUIS GERARDO','SERVIN','LÓPEZ','','lgservin@yahoo.com','','4494487092','','','','','','','','0','MÓNICA','TRUEBA','RÍOS','','monica_trueba@yahoo.com','','4491960490','','','','','','','','0','','','');
INSERT INTO familia VALUES('310','2','','DIAZ SERNA','','','Valle del Oro 108','','','Fracc. Río San Pedro','','','','9150341','','','2017-03-01','','','','','','','','','','','','','','','','0','Laura Olivia Serna Morales','','','','lauraser@hotmail.com','','4491902993','','','','','','','','0','','','');
INSERT INTO familia VALUES('311','2','','GUTIERREZ GUZMAN','2','','EMILIANO ZAPATA','118','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9155799','','','2017-03-01','2017-03-07 12:47:46','RODRIGO','GUTIÉRREZ','ÁLVAREZ','','rodrich46@hotmail.com','','4492111900','','','','','','','','0','MARÍA EUGENIA','GUZMÁN','FERNÁNDEZ','','geny38@hotmail.com','','4492105699','','','','','','','','0','','','');
INSERT INTO familia VALUES('312','2','','REYES RODRIGUEZ','1','','FRAY ANTONIO DE SEGOVIA','906','','JARDINES DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9173481','','','2017-03-01','2017-03-13 13:13:37','JUAN ANTONIO','REYES','PALOMINO','','jareyes1@hotmail.com','','4491521655','','','','','','','','0','CECILIA','RODRÍGUEZ','BELTRÁN','','jareyes1@hotmail.com','','4499117143','','','','','','','','0','','','');
INSERT INTO familia VALUES('313','2','','GONZALEZ RAMIREZ','4','','PASEO DEL LAGO','133','','JARDINES DEL LAGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','916 87 58','','','2017-03-01','2017-03-13 12:11:59','GUILLERMO JOSÉ','GONZÁLEZ','ÁLVAREZ','','guillermo.gonzalez@gontex.com','','4499110359','','','','','','','','0','CLAUDIA VERÓNICA','RAMÍREZ','HERRERA','','claudiahr2010@yahoo.com.mx','','4491517833','','','','','','','','0','','','');
INSERT INTO familia VALUES('314','2','','ALBARRAN RODRIGUEZ','1','','CHARREADA','101','','FRACC. VISTA ALEGRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9295543','','','2017-03-01','2017-03-13 12:49:20','ARMANDO','ALBARRÁN','CASTAÑEDA','','arqalbarran@hotmail.com','','449 806 76 17','','','','','','','','0','MARTHA ELBA','RODRÍGUEZ','PEDROZA','','marthaelba_48@yahoo.com.mx','','449 128 06 69','','','','','','','','0','','','');
INSERT INTO familia VALUES('315','2','','GONZALEZ BEHERENDT','1','','ÁLVARO OBREGÓN','423','A','FRACC. CENTRO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9155684','','','2017-03-01','2017-03-08 12:12:21','RAFAEL','GONZÁLEZ','GUTIÉRREZ','','gogurafael@hotmail.com','','4499280979','','','','','','','','0','ROSA ALICIA','BEHERENDT','BOSQUE','','rositabosque@hotmil.com','','4491143264','','','','','','','','0','','','');
INSERT INTO familia VALUES('316','2','','SANCHEZ MARTINEZ','1','','AV. SAN ANTONIO','201','29','FRACC. RANCHO STA. MONICA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 13:49:57','JULIO ANDRÉS','SÁNCHEZ','ROMO','','julio.sanchez@ge.com','','449 241 45 45','','','','','','','','0','ANGÉLICA','MARTÍNEZ','TEJEDA','','angelica.martinez@ge.com','','449 241 98 04','','','','','','','','0','','','');
INSERT INTO familia VALUES('317','2','','VARGAS BEJAR','','','Circuito la Aurora 308','','','Nuestra Señora de la Asunción','','','','9938286','','','2017-03-01','','Antonio Vargas Gómez','','','','antonio.vargas.g@gmail.com','','4491909396','','','','','','','','0','Gabriel Béjar Sanabria','','','','mevly25@gmail.com','','4492599683','','','','','','','','0','','','');
INSERT INTO familia VALUES('318','2','','DURAN LOERA','2','1','PICO DE ORIZABA','135','','FRACC. LA CONCEPCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1758767','','','2017-03-01','2017-03-10 10:00:42','LUIS GERARDO','DURAN','MADRIGAL','','luisgerardoduma@live.com.mx','','4491647478','','','','','','','','0','ADRIANA','LOERA','RUIZ','','alr701@hotmail.com','','4499049597','','','','','','','','0','','','');
INSERT INTO familia VALUES('319','2','','CERDAN MORENO','2','1','VALLE DEL MEZQUITAL','219','','FRACC. RÍO SN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9182951','','','2017-03-01','2017-03-13 12:13:13','JORGE EDUARDO','CERDÁN','URIBE','','jecuags@hotmail.com','','4492017564','','','','','','','','0','ANA BEATRÍZ','MORENO','RAMÍREZ','','ana.morenor@inegi.org.mx','','4491113035','','','','','','','','0','','','');
INSERT INTO familia VALUES('320','2','','VALADEZ DIAZ','2','','MADERO','217','','FRACC. CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','915 67 37','','','2017-03-01','2017-03-13 13:31:15','JOSÉ DE JESÚS','VALADEZ','GONZÁLEZ','','','','4492739899','','','','','','','','0','SUSANA','DÍAZ','VALDEZ','','susana@diaz220Qhotmail.com','','4492301694','','','','','','','','0','','','');
INSERT INTO familia VALUES('321','2','','TISCAREÑO PLASCENCIA','2','','POTREROS','701','','FRACC. VILLAS DE SAN NICOLAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9967910','','','2017-03-01','2017-03-08 12:19:14','JUAN SALVADOR','TISCAREÑO','GARCÍA','','chavatisca@hotmail.com','','4499114500','','','','','','','','0','CINTHYA ILEANA','PLASCENCIA','SILVA','','cintyplas@hotmail.com','','4491936263','','','','','','','','0','','','');
INSERT INTO familia VALUES('322','2','','GIL DELGADO','2','','ASUNCION','201','A','FRACC. SAN MARCOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9754894','','','2017-03-01','2017-03-13 12:47:58','JOSÉ RODOLFO','GIL','AGUILAR','','','','4499117695','','','','','','','','0','KAREN HELEN','DELGADO','MARTÍNEZ','','kar_hen_mar@hotmail.com','','4491961011','','','','','','','','0','','','');
INSERT INTO familia VALUES('323','2','','CISNEROS HERNANDEZ GOMEZ','','','Novelistas 129','','','Fracc. José Vasconcelos ','','','','9760121','','','2017-03-01','','Victor Cisneros Castillo','','','','vcisnerosc@yahoo.com.mx','','4491874935','','','','','','','','0','Lilia Hernández Gómez Palomino','','','','lilyahegopa@hayoo.com.mx','','4491874664','','','','','','','','0','','','');
INSERT INTO familia VALUES('324','2','','TALAMANTES LEDESMA','','','Jardin de San Marcos 119','','','Fracc. Jardines de Aguascalientes','','','','2811794','','','2017-03-01','','Ruben Narcirso Talamantes del Cojo','','','','rtalamantesdc@hotmail.com','','3321119446','','','','','','','','0','Ma.Eugenia Ledesma de la Torre','','','','no tiene','','4491965316','','','','','','','','0','','','');
INSERT INTO familia VALUES('325','2','','GUTIERREZ DE LA RIVA ','2','','SAN MIGUEL DEL ALTO','132','109','FRACC. NUEVA RINCONADA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9147136','','','2017-03-01','2017-03-06 13:01:13','OMAR','GUTIERREZ','GUTIERREZ','','no tiene ','','122 88 69','','','','','','','','0','ROSA ISELA','DE LA RIVA','VITAR','','rosyvitar@hotmail.com ','','4491086744','','','','','','','','0','','','');
INSERT INTO familia VALUES('326','2','','BARBA GARZA ','1','1','NAVARRETE','910','','FRACC.  SAN MARCOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 13:02:19','CAMILO','BARBA','SEGOVIA','','cbarbas@hotmail.com ','','4492205757','','','','','','','','0','MARTHA BEATRIZ','GARZA','PERALES','','marthitagarzap@hotmail.com ','','4492205667','','','','','','','','0','','','');
INSERT INTO familia VALUES('327','2','','MARTINEZ NUÑEZ','','','Hernán Caballero 214','','','Lomas de Santa Anita','','','','9752800','','','2017-03-01','','José Ismael Martínez Ríos','','','','joseismaelmartinez@hotmail.com','','5555220220','','','','','','','','0','Verónica Medina García','','','','verong5@hotmai..com','','4491872353','','','','','','','','0','','','');
INSERT INTO familia VALUES('328','2','','LOPEZ TISCAREÑO','1','1','2DA CERRADA MURALISMO','107','8','ENTORNO LA ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 13:46:41','JUAN JOSÉ','LÓPEZ','GÓMEZ','','juanjoselpz@hotmail.com','','4491116375','','','','','','','','0','ARACELI DEL ROCIO','TISAREÑO','RUBALCAVA','','aracelitisragmail.com','','4491116376','','','','','','','','0','','','');
INSERT INTO familia VALUES('329','2','','OLAVARRIETA GARZA','1','2','PROLONG. COLÓN','1511','','FRACC. JARDINES DE LA ASUNCIÓN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9785222','','','2017-03-01','2017-03-08 10:34:10','VÍCTOR MANUEL','OLAVARRIETA','GUERRA','','arqolavarrieta@prodigy.net.mx','','4498905251','','','','','','','','0','LORENA','GARZA','PERALES','','olavarrietalorena@hotmail.com','','4492205661','','','','','','','','0','','','');
INSERT INTO familia VALUES('330','2','','ORNELAS MORENO','1','2','PUENTE DE PIEDRA','116','','FRACC. RINCÓN DEL PILAR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','688 52 21','','','2017-03-01','2017-03-07 11:42:48','JUAN ATONIO','','DÍAZ','','ornelasjuan@hotmail.com','','4491100524','','','','','','','','0','ESPERANZA','MORENO','VELAZQUEZ','','peraags@yahoo.com.mx','','4491668173','','','','','','','','0','','','');
INSERT INTO familia VALUES('331','2','','RAMIREZ GIL','1','','JARDÍN DE LA ESTACIÓN','605','','FRACC. JARDINES DE LA ASUNCIÓN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9175179','','','2017-03-01','2017-03-08 10:02:19','CARLOS','RAMÍREZ','DÁVILA','','no tiene','','449 895 30 26','','','','','','','','0','CARMEN','LARA','GIL','','caramelo.gil@live.com.mx','','4497690119','','','','','','','','0','','','');
INSERT INTO familia VALUES('332','2','','NAME CASILLAS','1','','LIQUIDÁMBAR','32','1','FRACC. PULGA PANDAS NORTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','912 45 95','','','2017-03-01','2017-03-07 11:09:09','EMILIO JOSÉ','NAME','ORTEGA','','castoresnc@yahoo.com','','4491951710','','','','','','','','0','CATALINA','CASILLAS','GUTIÉRREZ','','kittycasillas@yahoo.com.mx','','4491931004','','','','','','','','0','','','');
INSERT INTO familia VALUES('333','2','','GONZALEZ ARRIAGA','1','','CAMPO VERDE','111','','FRACC. VILLAS BONATERRA COTO 2 VILLAS BONATERRA, COTO2','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9188537','','','2017-03-01','2017-03-07 12:24:20','LUIS ANTONIO','GONZÁLEZ','RAMÍREZ','','gorlaeb@yahoo,com.mx','','4491659764','','','','','','','','0','MA.DE LOS ANGELES','ARRIAGA','MORENO','','gelyjolie7@gmaill.com','','4491569497','','','','','','','','0','','','');
INSERT INTO familia VALUES('334','2','','QUIJANO SANCHEZ','1','2','PASEO DEL MAPLE','154','','FRACC. BOSQUES DEL PRADO ORIENTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1750811','','','2017-03-01','2017-03-08 09:47:15','JOSE EDUARDO','QUIJANO','DIEZ','','eqddiez@hotmail.com','','4491447826','','','','','','','','0','CLAUDIA','SÁNCHEZ','FLORES','','clausanflo12@gmail.com','','449 122 78 22','','','','','','','','0','','','');
INSERT INTO familia VALUES('335','2','','REYNOSO REYES','2','','PEÑUELAS','605','','FRACC. OJO CALIENTE I','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 09:18:42','JOSÉ ERNESTO','REYNOSO','MACÍAS','','ernesto.reynoso@sinonutricion.com','','','','','','','','','','0','BRÍGIDA CITLALLI','REYES','VILLEGAS','','tali_yeya@hotamil.com','','4491211732','','','','','','','','0','','','');
INSERT INTO familia VALUES('336','2','','JIMENEZ DIAZ ','1','','MIGUEL CALDERA','101','','LINDAVISTA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','293 90 13','','','2017-03-01','2017-03-07 10:21:06','LUIS OCTAVIO','JIMÉNEZ','GARCÍA','','octuavioluis@msn.com','','4491800031','','','','','','','','0','ALMA GEORGINA','DÍAZ','VELOZ','','diaz.georgina@hotmail.com','','4491986063','','','','','','','','0','','','');
INSERT INTO familia VALUES('337','2','','GARCIA NAJERA','3','','CORDILLERA DE LOS ALPES','108','','JARDINES DE LA CONCEPCION','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2516545','','','2017-03-01','2017-03-13 13:16:27','FRANCISCO JAVIER','GARCÍA','ARMERÍA','','pacoarmeria@hotmail.com','','4498943612','','','','','','','','0','MARIANELI DE FATIMA','NAJERA','NUÑEZ','','nelinajera@hotmail.com','','4498043527','','','','','','','','0','','','');
INSERT INTO familia VALUES('338','2','','LOPEZ GOMEZ','2','','LOMAS','107','','FRACC. LOMAS DEL CAMPESTRE II','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 13:25:40','FRANCISCO JAVIER','LÓPEZ','RIVERA','','frsko01@yahoo.com.mx','','4498041795','','','','','','','','0','MARTHA ALEJANDRA','GOMEZ','REYNOSO','','alegore27@hotmail.com','','4498041793','','','','','','','','0','','','');
INSERT INTO familia VALUES('339','2','','GRAGEDA MENESES','','','Graneros 800-53','','','Fracc. Puerto Las Hadas','','','','9966843','','','2017-03-01','','Francisco Javier Grageda Marmolejo','','','','franciscog@att.net.mx','','4498943203','','','','','','','','0','Paulina Meneses Romo','','','','paulina0128@hotmail.com','','4491721469','','','','','','','','0','','','');
INSERT INTO familia VALUES('340','2','','MOLINA SANCHEZ','2','','CLARISAS','323','','FRACC. VILLATERESA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','915 72 83','','','2017-03-01','2017-03-13 13:09:00','OMAR GABRIEL','MOLINA','HERNÁNDEZ','','omar.molina@mx.bosch,com','','449 399 89 09','','','','','','','','0','MARÍA OLIVA','SÁNCHEZ','TISCAREÑO','','maolsati74@gmail.com','','4491811258','','','','','','','','0','','','');
INSERT INTO familia VALUES('341','2','','AMADOR AGUAYO','2','','AV. EUGENIO GARZA SADA','628','202','FRACC. RINCONADA BUGAMBILIAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9637863','','','2017-03-01','2017-03-13 13:21:35','ALEJANDRO','AMADOR','LUJÁN','','alex.amador@gmail.com','','4491972205','','','','','','','','0','MARÍA FERNANDA','AGUAYO','HERRERA','','fernandaah_20@hotmail.cim','','4491046541','','','','','','','','0','','','');
INSERT INTO familia VALUES('342','2','','HERNANDEZ OTTALENGO','','','Circuito Londres 21','','','Fracc. Real Ecuestre, Cañada Honda','','','','','','','2017-03-01','','Carlos Javier Hernández Carranza','','','','cjhc13@gmail.com','','4499010022','','','','','','','','0','Juliana Ottalengo Jiménez','','','','julianaottjim@gmail.com','','4499500045','','','','','','','','0','','','');
INSERT INTO familia VALUES('343','2','','MORELEON PEREZ','','','Av. Parque Via pte.712','','','Fracc. Sta. Anita ','','','','9750191','','','2017-03-01','','Alfonso Moreleón García','','','','alfonsomoreleongarcia@yahoo.com.mx','','4498941594','','','','','','','','0','Blanca Esthela Pérez Espionoza','','','','alfonsomoreloengarcia@yahoo.com.mx','','4491952618','','','','','','','','0','','','');
INSERT INTO familia VALUES('344','2','','VILLALOBOS CASTORENA','1','','REPUBLICA DE NICARAGUA','603','','FRACC. STA. ELENA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 11:35:14','LUIS FELIPE','VILLALOBOS','ROMERO','','ingvillalobosmx@yahoo.com','','4498949812','','','','','','','','0','ADRIANA CECILIA','CASTONERNA','IZQUIERDO','','cecicastorena@hayoo,com','','4491896250','','','','','','','','0','','','');
INSERT INTO familia VALUES('345','2','','GOCHEZ RODRIGUEZ','1','','CANOAS','102','','FRACC. VILLA DE NUESTRA SRA. DE LA ASUNCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 11:44:55','','','','','','','','','','','','','','','0','YENI CARINA','RODRÍGUEZ','MARTÍNEZ','','workworkjen@gmail.com','','4499111397','','','','','','','','0','','','');
INSERT INTO familia VALUES('346','2','','DE LUNA BACA ','2','','AV. TECNOLOGICO','115','5','LA HACIENDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','916 25 05','','','2017-03-01','2017-03-13 13:36:15','CARLOS GUILLERMO','DE LUNA','ARCE','','carlosdeluna@mktintegral.com','','449 911 98 10','','','','','','','','0','IVONNE','BACA','DÍAZ','','','','449 999 12 74','','','','','','','','0','','','');
INSERT INTO familia VALUES('347','2','','REYNA GALINDO','','','Cerrada San Gabriel Arcángel 111','','','Fracc. Canteras de San Agustín','','','','9963059','','','2017-03-01','','Joél Reyna Castillo','','','','jreyn@alumnni.ipade.mx','','4491971776','','','','','','','','0','Lizzeth Galindo Díaz','','','','liz_z@life.com.mx','','4491150939','','','','','','','','0','','','');
INSERT INTO familia VALUES('348','2','','LLAMAS ACERO','','','Jardín de Cholula 207','','','Fracc. Jardines de la fuentes','','','','1759975','','','2017-03-01','','Alfonso Llamas González','','','','ponch2004@gmail.com','','4494489452','','','','','','','','0','Ana Iris Acero Padilla','','','','irisacero@gmail.com','','44990355500','','','','','','','','0','','','');
INSERT INTO familia VALUES('349','2','','DE LA ROSA CRUZ','','','Del Pozo 208 ','','','Fracc. Villas de la Cantera','','','','9726645','','','2017-03-01','','Enrique de la Rosa González','','','','nerique.delarosa@inegi.org.mx','','4491827268','','','','','','','','0','Marcela Cruz Luévano','','','','marce.cruz@gmail.com','','4491112922','','','','','','','','0','','','');
INSERT INTO familia VALUES('350','2','','DE LIRA MACÍAS','5','','TLAXCALA','715','','FRACC. MODERNO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9183590','','','2017-03-01','2017-03-07 09:48:25','LUIS ENRIQUE','DE LIRA','PONCE','','lenrique_delira@hotmail.com','','4491569326','','','','','','','','0','MIRIAM DEL ROSARIO','MACÍAS','ALONSO','','miriam_macias_alonso@hotmail.com','','4491373276','','','','','','','','0','','','');
INSERT INTO familia VALUES('351','2','','ACOSTA CASTRO','','','Jesús Reyes Heroles 255','','','Fracc. Versalles IVERSALLES I SEC.','','','','','','','2017-03-01','','Adrian A. Acosta Reyes','','','','arq.adrian.acosta@gmail.com','','4494062974','','','','','','','','0','Miriam A. Castro Figueroa','','','','arq.miriam.castro@gmail.com','','4491721185','','','','','','','','0','','','');
INSERT INTO familia VALUES('352','2','','MARTINEZ SALAS','1','2','NAPOLES','819','','FRACC. DEL VALLE II','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9625410','','','2017-03-01','2017-03-13 13:02:50','EDGAR RICARDO','MARTÍNEZ','LÓPEZ','','ricardo.martinez@vianney.com.mx','','4491551460','','','','','','','','0','NOHEMI','SALAS','DIAZ','','nohemi_salas@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('353','2','','GONZALEZ ROGERO','1','','AVENIDA PALMERAL','122','','NUEVA  ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','975 21 02','','','2017-03-01','2017-03-07 11:52:50','FABIÁN','GONZÁLEZ','JAILE','','fabienglez07ahotmail.com','','4494487349','','','','','','','','0','MARÍA OLGA NOHEMÍ','ROGERO','GAONA','','noemi.rogero=07ahotmail.com','','4491852563','','','','','','','','0','','','');
INSERT INTO familia VALUES('354','2','','RODRIGUEZ RAMIREZ','1','','AV. CANAL INTERCEPTOR','712','121','BOSQUES DE LA ALAMEDA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','361 38 34','','','2017-03-01','2017-03-13 12:58:38','CARLOS ALBERTO','RODRÍGUEZ','CHÁVEZ','','oficinaaarqmedIA@estudio.com','','2710644','','','','','','','','0','RAQUEL ALEGRÍA','RAMÍREZ','DÁVILA','','raquel.alegria@hotmail.com','','2429745','','','','','','','','0','','','');
INSERT INTO familia VALUES('355','2','','RODRIGUEZ MARTINEZ','2','','ULTRAVIOLETA','114','','FRACC. JARDINES DEL SOL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 11:50:01','PEDRO','RODRÍGUEZ','TAFOLLA','','','','','','','','','','','','0','VERÓNICA','MARTÍNEZ','PÉREZ','','vero-martinez@outlook.com','','4492562619','','','','','','','','0','','','');
INSERT INTO familia VALUES('356','2','','SANCHEZ GUTIERREZ','1','','2DA. CERRADA DE LA CAÑADA','102','','FRACC. CAMPESTRE CLUB GOLF NORTE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 12:36:18','FRANCISCO JAVIER','SÁNCHEZ','BRIBIESCA','','mifra4@hotmail.com','','4491533788','','','','','','','','0','GABRIELA','GUTIERREZ','DE LA PEZA','','gabygupe1960@hotmail.com','','4492091677','','','','','','','','0','','','');
INSERT INTO familia VALUES('357','2','','MARTINEZ ALCALA ','2','1','PASEO DE SAN GERARDO','216','23','FRACC.  SAN GERARDO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6882153','','','2017-03-01','2017-03-13 12:16:52','ALFONSO PIERE','MARTÍNEZ','ARROYO','','AMARTINEZ3129@HOTMAIl.com ','','4499500545','','','','','','','','0','CARMEN DEYANIRA','ALCALÁ','REYES','','deyaalcalayahoo.com ','','449 920 08 80','','','','','','','','0','','','');
INSERT INTO familia VALUES('358','2','','MURO SOLIS','1','','MAR CASPIO','104','A','FRACC. LAS BRISAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9120079','','','2017-03-01','2017-03-08 12:02:39','FERNANDO','MURO','MUÑOZ','','fernandomurom@yahoo.com.mx','','4491868340','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('359','2','','CASTILLO FRIAS','1','','SISTEMA SOLAR','104','','FRACC. JARDINES DEL SOL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9705768','','','2017-03-01','2017-03-13 13:22:36','JORGE LUIS','CATILLO','CERVANTES','','jcastillo@sabro.com.mx','','4492630040','','','','','','','','0','VERÓNICA M.','FRÍAS','SALINAS','','moramayfrias@gmail.com','','4499996328','','','','','','','','0','','','');
INSERT INTO familia VALUES('360','2','','MORALES PEREZ','1','','CIRCUITO HUAMÚCHIL','206','','FRACC. RESIDENCIAL DEL PARQUE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2937116','','','2017-03-01','2017-03-13 12:57:02','JOSÉ LUIS','MORALES','PÉREZ','','jmorales@keyquimica.com','','4498906666','','','','','','','','0','ANDREA','PÉREZ','SÁNCHEZ','','vigia062000@yahoo.com','','4491291774','','','','','','','','0','','','');
INSERT INTO familia VALUES('361','2','','RODRIGUEZ GARCIA','1','1','AV.EUGENIO GARZA SADA','21','64','FRACC. LA PLAZUELA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189679','','','2017-03-01','2017-03-06 13:45:06','MARIO','RODRÍGUEZ','ACEVEDO','','servidom@hotmail.com','','4492053157','','','','','','','','0','CAROLINA','GARCÍA','VILLANUEVA','','c_aramis@hotmail.com','','4492585032','','','','','','','','0','','','');
INSERT INTO familia VALUES('362','2','','GONZALEZ DE ALBA ','','','Jaripeo 207 ','','','Fracc. Vista Alegre ','','','','9711039','','','2017-03-01','','Jorge Gonzalez Medina ','','','','gonzalezmedina9@hotmail.com ','','4498907170','','','','','','','','0','Brenda Esthela De Alba de Alba ','','','','alealedealba@hotmail.com ','','4491553234','','','','','','','','0','','','');
INSERT INTO familia VALUES('363','2','','VALDES SANCHEZ','','','Apeninos 411','','','Fracc. Bosques Del Prado ','','','','9141488','','','2017-03-01','','Ricardo Alberto Valdés Rincón Gallardo','','','','ricardovaldes2485@live.com','','4498040289','','','','','','','','0','María Eugenia Sánchez Ávila','','','','','','4491552235','','','','','','','','0','','','');
INSERT INTO familia VALUES('364','2','','MARTINEZ DE ALVA GONZALEZ','','','Paseos del chopo 29','','','Fracc. Pulga Pandas Sur','','','','2516372','','','2017-03-01','','Mario Martínez De Alva Escalona','','','','mamsmart@yahoo.es','','4498942540','','','','','','','','0','Alejandra González Jiménez','','','','aleglez2001@yahoo.com','','4499049140','','','','','','','','0','','','');
INSERT INTO familia VALUES('365','2','','ANIGWE CUEVAS ','','','Flor de Nochebuena No. 100 int.117','','','Fracc. Villa Sur ','','','','','','','2017-03-01','','Colombus obaore aNIGWE ','','','','scexports200@hotmail.com ','','4492107066','','','','','','','','0','Ada Arisbeth Cuevas Linares ','','','','arisbethcuevas@hotmail.com ','','4497698049','','','','','','','','0','','','');
INSERT INTO familia VALUES('366','2','','AGUIRRE PAREDES','','','Ignacio Allende 251 ','','','Fracc.  Centro ','','','','4416891','','','2017-03-01','','Jorge Aguirre Herrada. ','','','','elnortbocts16@hotmail.com ','','4499010448','','','','','','','','0','Kalyope Paredes Milonas ','','','','elnortboots@yahoo.com.mx','','4494416891','','','','','','','','0','','','');
INSERT INTO familia VALUES('367','2','','ARGUELLES DIAZ','1','1','AV. SN. ANTONIO','201','38','FRACC. RANCHO STA. MÓNICA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 12:55:59','MARCO TULIO','ARGUELLES','TAPIA','','marguellest@gmail.com','','4491554577','','','','','','','','0','MIRTA OLIVIA','DÍAZ','MORENO','','mirtaolivia09@yahoo.com','','4491113700','','','','','','','','0','','','');
INSERT INTO familia VALUES('368','2','','GONZALEZ DEL BOSQUE','','','Paseos del Bosque #204','','','Fracc. Los Olivos','','','','9735383','','','2017-03-01','','Ricardo Gonzalez Salazar','','','','rgonzalez@isavanzados.com.mx','','4491553901','','','','','','','','0','Marcela Aileen Del Bosque Frank','','','','delbosqueaileen@hotmail.com','','4491068978','','','','','','','','0','','','');
INSERT INTO familia VALUES('369','2','','VEERMAN QUEZADA','','','Río Bravo 505','','','Fracc. Colinas del Río','','','','1532162','','','2017-03-01','','Andries Veerman Van Spronsen','','','','andriesveerman@yahoo.com','','','','','','','','','','0','María Teresa Quezada León','','','','maytequezada@hotmail.com','','4491519250','','','','','','','','0','','','');
INSERT INTO familia VALUES('370','2','','JIMENEZ LOPEZ','2','','PROL. ZARAGOZA','210','9','FRACC. FÁTIMA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9125842','','','2017-03-01','2017-03-08 11:43:07','HÉCTOR ENRIQUE','JIMENEZ','JIMENEZ','','no tiene','','4493662534','','','','','','','','0','MÓNICA YARETH','LÓPEZ','SÁNCHEZ','','yareth@yahoo.com','','4497693088','','','','','','','','0','','','');
INSERT INTO familia VALUES('371','2','','CARSTENS TAPIA ','','','Circuito del Pedregal No. 126','','','Fracc. Trojes del Pedregal ','','','','9735900','','','2017-03-01','','Eugenio Carstens Madero ','','','','eugenio@tec-quest.com','','4499115400','','','','','','','','0','Guadalupe Tapia Gudiño ','','','','guadalupe@tec-quest.com','','4499087444','','','','','','','','0','','','');
INSERT INTO familia VALUES('372','2','','ZAMORA LIMÓN','2','','SOR JUANA INÉS DE LA CRUZ','232','','FRACC. MODERNO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9166475','','','2017-03-01','2017-03-13 13:39:37','FABRICIO','ZAMORA','VIRAMONTES','','atencion@soporteprofesional.mx','','4491252427','','','','','','','','0','VIRGINIA','LIMÓN','ANDRADE','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('373','2','','OBREGON FRANCO','1','1','REP. BRASIL','306','',' FRACC. LAS AMPERICAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9139564','','','2017-03-01','2017-03-13 13:31:50','GUSTAVO','OBREGÓN','SALADO','','obregonguustavo@hotmail.com','','4499110255','','','','','','','','0','KARLA BEATRIZ','FRANCO','GUZMÁN','','karlamusic@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('374','2','','ROQUEÑI SALADO','','','Av. Eugenio Garza Sada 21-26','','','Fracc.  La Plazuela','','','','','','','2017-03-01','','Francisco Javier Roqueñi Rello','','','','roqueñipaco@hotmail.com','','4491654210','','','','','','','','0','Griselda Salado López','','','','paco.gris@hotmail.com','','4491278484','','','','','','','','0','','','');
INSERT INTO familia VALUES('375','2','','GONZALEZ MUÑOZ','','','Artes Plasticas 146','','','Fracc. La Alameda','','','','9755003','','','2017-03-01','','Juan González Macías','','','','jugo66@yahoo.com.mx','','4491818299','','','','','','','','0','Graciela del Socorro Muñoz López','','','','chelyandy19702000@hotmail.com','','4491235996','','','','','','','','0','','','');
INSERT INTO familia VALUES('376','2','','LÓPEZ NEGRETE GUEL','1','1','CIRCUITO RINCÓN ANDALÚZ','109','','FRACC. RINCÓN ANDALÚZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 12:42:54','ALEJANDRO','LÓPEZ NEGRETE','CHÁVEZ','','electropintur@hotmail.com','','4491552334','','','','','','','','0','FANNY','GUEL','LOMELÍ','','miss_fanny78@hotmail.com','','4491552334','','','','','','','','0','','','');
INSERT INTO familia VALUES('377','2','','COBOURNE ACOSTA','1','','AV. CONVENCIÓN OTE.','201','A','FRACC. JARDINES DE LA CRUZ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9709458','','','2017-03-01','2017-03-13 13:33:00','ANDREW','COBOURNE','','','calvo25@hotmail.com','','4499060708','','','','','','','','0','CLAUDIA DEL S.','ACOSTA','MENDOZA','','cacostamcob@gmail.com','','4494144050','','','','','','','','0','','','');
INSERT INTO familia VALUES('378','2','','RUIZ ESPARZA GARCIA ','2','2','PASEO DE LOS CHOPOS','240','','FRACC. PULGAS PANDAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2515125','','','2017-03-01','2017-03-08 09:51:38','JORGE RUÍZ','ESPARZA','MACÍAS','','jorgeruizespan@hotmail.com ','','4498971196','','','','','','','','0','ANGÉLICA MARÍA','GARCÍA','HURTADO','','gelyhurtado@hotmail.com ','','4492135863','','','','','','','','0','','','');
INSERT INTO familia VALUES('379','2','','LÓPEZ SANTAMARÍA','2','','RIVERO Y GUTIERREZ','326','','CENTRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2939408','','','2017-03-01','2017-03-13 12:59:44','CUITLAHUAC','LÓPEZ','FLORES','','','','449 940 80 39','','','','','','','','0','SONIA','SANTAMARÍA','OROZCO','','sonia-so@outlook.es','','4491116642','','','','','','','','0','','','');
INSERT INTO familia VALUES('380','2','','TORRES YUGTINGPING ','2','1','MANGANA','304','','FRACC. VISTA ALEGRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9712530','','','2017-03-01','2017-03-13 12:41:27','MIGUEL ANGEL','TORRES','FLORES','','tofm2367@gmail.com','','4498043574','','','','','','','','0','CLAUDIA','YUNGTINPIGPING','ATILANO','','clau.yung@hotmail.com','','4491931358','','','','','','','','0','','','');
INSERT INTO familia VALUES('381','2','','GALINDO ARAUJO','','','La Peña 120','','','Fracc. Trojes','','','','2515517','','','2017-03-01','','Ismael Galindo Avelar','','','','divacdsventa@hotmail.com','','4498940064','','','','','','','','0','Elsa Esperanza Araujo Loaiza','','','','peraraujo@hotmail.com','','4492654052','','','','','','','','0','','','');
INSERT INTO familia VALUES('382','2','','PÉREZ MARTÍNEZ','1','1','AV. SANTA MÓNICA','201','87','FRACC. PROVIDENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-07 09:10:33','JOSÉ DE JESÚS','PÉREZ','GONZÁLEZ','','alpecontable@hotmail.com','','4494489906','','','','','','','','0','ALMA LILIA','MARTÍNEZ','OLIVARES','','lilialpego@yahoo.com.mx','','4498041321','','','','','','','','0','','','');
INSERT INTO familia VALUES('383','2','','NORIEGA OROPEZA ','','','Defensa Nacional No. 108','','','Fracc. Héroes de Ags. ','','','','','','','2017-03-01','','Adrian Noriega González ','','','','adrian.noriega@vianey.mx','','4491556416','','','','','','','','0','Bertha Alicia Oropeza Martínez ','','','','bety_oropeza@hotmail.com ','','4491651032','','','','','','','','0','','','');
INSERT INTO familia VALUES('384','2','','ALEMÁN LÓPEZ','1','','CURICAVERY','203','','FRACC. PUESTA DEL SOL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9628775','','','2017-03-01','2017-03-08 11:48:17','SANDRO CALEB','ALEMÁN','ACOSTA','','sandro_caleb@hotmail.com','','4494484282','','','','','','','','0','PATRICIA','LÓPEZ','RUVALCABA','','paty_loru@hotmail.com','','4491839469','','','','','','','','0','','','');
INSERT INTO familia VALUES('385','2','','MENDIOLA ALEJANDRE','','','Palma Plateada 139','','','Fracc. Bajio de las Palmas','','','','2933406','','','2017-03-01','','Víctor Ditell Mendiola Álvarez','','','','dittelma@hotmail.com','','1223992','','','','','','','','0','Dora Luz Alejandre Rosas','','','','doraluzar@hotmail.com','','1223994','','','','','','','','0','','','');
INSERT INTO familia VALUES('386','2','','MUÑOZ ORTIZ','1','1','CAMPECHE','309','','FRACC. DEL VALLE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2517266','','','2017-03-01','2017-03-13 13:20:20','GERARDO BENJAMÍN','MUÑOZ','DÍAZ','','benmuz@yahoo.com','','4497691161','','','','','','','','0','LILIANA PAULINA','ORTIZ','LOZANO','','lilisortiz@hotmail.com','','4494063114','','','','','','','','0','','','');
INSERT INTO familia VALUES('387','2','','DE LIRA AVELAR','1','','DIEGO IBARRA','804','','FRACC. JARDINES DE LA ASUCION','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9785196','','','2017-03-01','2017-03-07 12:26:25','SERGIO','DE LIRA','GUTIÉRREZ','','','','','','','','','','','','0','SARALI','AVELAR','RIVERA','','avelarsarali@yahoo.com.mx','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('388','2','','ALEMAN AGUILERA','1','','CALZADA NAVARRA','506','5','RESIDENCIAL ALCAZAR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','978 27 54','','','2017-03-01','2017-03-08 12:01:36','RICARDO','ALEMAN','MONCAYO','','','','','','','','','','','','0','MA ERNESTINA','AGUILERA','MAYORAL','','nety.aguilera76@gmailcom','','449 844 12 35','','','','','','','','0','','','');
INSERT INTO familia VALUES('389','2','','NIETO RODRÍGUEZ','2','1','AV. LOMAS ALTAS','226','','FRACC. VILLAS DE LA CANTERA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9762964','','','2017-03-01','2017-03-08 09:59:54','CUAUHTEMOC','NIETO','SILVA','','remos@cio.mx','','449 928 61 77','','','','','','','','0','CELIA MARISA','RODRÍGUEZ','RUBIO','','cmarisrr@hotmail.com','','449 461 11 03','','','','','','','','0','','','');
INSERT INTO familia VALUES('390','2','','LOPEZ ROMO','2','1','LA RONDA','102','','FRACC. VILLAS DE SAN NICOLAS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9124695','','','2017-03-01','2017-03-07 13:05:39','GUSTAVO','LÓPEZ','LAMAS','','gerente@campestreags.com','','4499114159','','','','','','','','0','SANDRA CRISTINA','ROMO','CALVILLO','','cromocalvillo@yahoo.com','','4498908397','','','','','','','','0','','','');
INSERT INTO familia VALUES('391','2','','DE LOERA JIMENEZ ','1','1','AV. INDEPENDENCIA','402','','GRANJAS MIRAVALLE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9966248','','','2017-03-01','2017-03-07 11:00:39','JOSE DE JESUS','DE LOERA','MACÍAS','','tecnoplastik94@hotmail.com ','','4492051453','','','','','','','','0','MARTHA LIZZETH','JIMÉNEZ','LOZA','','lizjmz@hotmail.com ','','4491789452','','','','','','','','0','','','');
INSERT INTO familia VALUES('392','2','','LOPEZ CORNEJO','1','','CAPITÁN DIEGO FERNÁNDEZ VILLA','119','','FRACC. PRADOS DEL SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9626283','','','2017-03-01','2017-03-13 12:39:05','CESAR ALBERTO','LÓPEZ','MARTIN','','cesarfelino@hotmail.com','','4491248284','','','','','','','','0','CAROLINA','CORNEJO','CAMPOS','','carolcc9@hotmail.com','','4498952849','','','','','','','','0','','','');
INSERT INTO familia VALUES('393','2','','FLORES RODRIGUEZ','','','Circuito del Tule 137','','','Fracc. Residencial del Parque','','','','','','','2017-03-01','','Filiberto Flores Arellano','','','','filiberto.floresa59@gmail.com','','4495495004','','','','','','','','0','Mirian Rodríguez Rivas','','','','miriam-ramirez@gmail.com','','4491216172','','','','','','','','0','','','');
INSERT INTO familia VALUES('394','2','','RODRIGUEZ JAIME','1','','CERRO DEL CUBILETE','21','','FRACC. JARDINES DE LA CONCEPCIÓN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9146280','','','2017-03-01','2017-03-13 12:53:20','MARIO ALBERTO','RODRÍGUEZ','DURÓN','','mrodriguez@caducancun.com ','','','','','','','','','','0','LIDIA ELBA','JAIME','TISCAREÑO','','liyjaime1@hotmail.com ','','4491551581','','','','','','','','0','','','');
INSERT INTO familia VALUES('395','2','','COVARRUBIAS MACIAS','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('396','2','','SILVA VALADEZ','','','Paseo de la Cañada 121','','','Fracc. Campestre Club de Golf Nte.','','','','9189102','','','2017-03-01','','Rafael Silva Roldán','','','','r.silvaroldan@gmail.com','','4497690777','','','','','','','','0','María  Guadalupe Valadéz Martínez','','','','m.valadez@shopsara.com.mx','','4492426322','','','','','','','','0','','','');
INSERT INTO familia VALUES('397','2','','ROBLEDO BARRERA ','1','','TROJE CHICHIMECO','102','','FRACC. RESERVA SAN CRISTOBAL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9963361','','','2017-03-01','2017-03-08 11:27:52','ARTURO','ROBLEDO','REYNOSO','','arobledoreynoso@hotmail.com','','4499112851','','','','','','','','0','ADRIANA','BARRERA','GÓMEZ','','adybarreragomez@hotmail.com ','','449 105 05 85','','','','','','','','0','','','');
INSERT INTO familia VALUES('398','2','','MUÑOZ RAMOS ','','','Torcazas 103 ','','','Fracc. La Paloma ','','','','915225','','','2017-03-01','','Sergio Javier Muñoz Díaz ','','','','','','2427506','','','','','','','','0','Ana Imelda Ramos Cárdenas ','','','','imeldaramos@hotmail.com ','','2427072','','','','','','','','0','','','');
INSERT INTO familia VALUES('399','2','','ZAVALA LAMBRETÓN','2','','AV. EUGENIO GARZA SADA','21','39','FRACC. LA PLAZUELA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','6882578','','','2017-03-01','2017-03-13 13:37:37','GASPAR M.','ZAVALA','TAYLOR','','gmztae@gmail.com','','449 415 78 68','','','','','','','','0','CLAUDIA JESSICA','LAMBRETÓN','','','cjessicalz@hotmail.com','','4491033284','','','','','','','','0','','','');
INSERT INTO familia VALUES('400','2','','MARQUEZ CHIMES ','1','2','ALASKA','305','','FRACC. EL DORADO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 13:26:59','JUAN FRANCISCO','MARQUEZ','MARTÍNEZ','','pacomarquez24@hotmail.com','','441 23 27','','','','','','','','0','MARISA','CHIMES','OBREGÓN','','marachimes@hotmail.com ','','441 23 42','','','','','','','','0','','','');
INSERT INTO familia VALUES('401','2','','LÓPEZ AGUILERA','1','2','CALZ. SANTO DOMINGO','212','','FRACC. RESIDENCIAL SANTO DOMINGO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9141513','','','2017-03-01','2017-03-06 12:58:57','SERGIO ERNESTO','LÓPEZ','LÓPEZ','','guisorico10@yahoo.com.mx','','4495574933','','','','','','','','0','LAURA','AGUILERA','MAYORAL','','mayoralal@yahoo.com','','4495579212','','','','','','','','0','','','');
INSERT INTO familia VALUES('402','2','','JIMÉNEZ LÓPEZ','1','1','TIERRA DE CARNEROS','3','','FRACC. LA RIOJA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1717418','','','2017-03-01','2017-03-02 12:03:15','LUIS OCTAVIO','JIMÉNEZ','DURÁN','','lojds1@yahoo.com','','4491960385','','','','','','','','0','MA. ALEJANDRA','LÓPEZ','VERBER Y VARGAS','','malover26@hotmail.com','','4491555605','','','','','','','','0','','','');
INSERT INTO familia VALUES('403','2','','DE LA CRUZ VALDEZ','1','','VALLE DEL MEZQUITAL','309','','FRACC. VALLE DEL RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 09:54:29','GUILLERMO ARMANDO','DE LA CRUZ','SÁNCHEZ','','armando.cruz@inegi.ag.mx','','5527506285','','','','','','','','0','MARISELA','VALDES','AMARO','','','','4491822079','','','','','','','','0','','','');
INSERT INTO familia VALUES('404','2','','BARRERA GUTIERREZ ','','','Paseo de los Sabinos 137 ','','','Fracc. San Nicolas ','','','','1590117','','','2017-03-01','','Gabriel Alejandro Barrera Gutiérrez ','','','','cdgconstrucciones@gmail.com ','','4493295343','','','','','','','','0','Adriana Gutiérrez López ','','','','adri2414@yahoo.com','','4493295345','','','','','','','','0','','','');
INSERT INTO familia VALUES('405','2','','MARTÍNEZ OCEJO','2','','MIGUEL DE LA MADRID','2602','50','FRACC. TROJES DE KRISTAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9146434','','','2017-03-01','2017-03-08 11:24:17','SERGIO ARTURO','MARTÍNEZ','ROMO','','sergiomtz30@hotmail.com','','4492051106','','','','','','','','0','MARÍA JOSÉ','OCEJO','GONZÁLEZ','','mariajoseocejo@hotmail.com','','4492051102','','','','','','','','0','','','');
INSERT INTO familia VALUES('406','2','','FRANCO SANCHEZ ','','','Diego Rivera 329 ','','','Fracc. Lomas de Santa Anita ','','','','','','','2017-03-01','','Alejandro Franco Díaz ','','','','N/A','','4492244820','','','','','','','','0','Norma Sánchez Flores','','','','','','4492874711','','','','','','','','0','','','');
INSERT INTO familia VALUES('407','2','','GONZALEZ MARTINEZ ','1','2','CDA. DE LAS AGUSTINAS','116','','FRACC. CANTERAS DE SAN AGUSTÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1947759','','','2017-03-01','2017-03-08 10:21:55','GUILLERMO','GONZÁLEZ','VALDEZ','','memogonzalezv@yahoo.com','','4498908377','','','','','','','','0','LUCÍA','MARTÍNEZ','LÓPEZ','','luciamartinezlpz@gmail.com ','','4491286928','','','','','','','','0','','','');
INSERT INTO familia VALUES('408','2','','MORÁN LOZA','','','Circuito Pirineos 205','','','Puerta Navarra','','','','','','','2017-03-01','','Enrique Morán Bosque','','','','enriquemoranbosque@hotmail.com','','4491559375','','','','','','','','0','Olga del Carmen Loza Muñoz','','','','olga.71@life.com.mx','','4495494793','','','','','','','','0','','','');
INSERT INTO familia VALUES('409','2','','MEDINA MUÑOZ','','','Del Volcán 138','','','Fracc. Villas de la Cantera','','','','','','','2017-03-01','','Héctor Medina López','','','','hcomda@gmail.com','','4494139970','','','','','','','','0','Elvia Muñoz López','','','','elviamulop@gmail.com','','4491556909','','','','','','','','0','','','');
INSERT INTO familia VALUES('410','2','','DE LA VEGA VALADEZ ','','','Monte Blanco 730','','','Fracc. Trojes de Oriente ','','','','9146576','','','2017-03-01','','Oscar de la Vega Martínez ','','','','oscardelavegamartinez@yahoo.com.mx','','4491966680','','','','','','','','0','Irma Angélica Valadez Martínez ','','','','irma05_3071@yahoo.com.mx ','','4499501181','','','','','','','','0','','','');
INSERT INTO familia VALUES('411','2','','NORIEGA COLLADO ','','','Tulipanes No. 108 ','','','Fracc. La Enramada ','','','','9962377','','','2017-03-01','','Cesar Arturo Noriega Olivares','','','','oscardelavegamartinez@yahoo.com.mx','','4491873824','','','','','','','','0','María Guadalupe Collado Paz','','','','maria.gp@ive.com','','4491873859','','','','','','','','0','','','');
INSERT INTO familia VALUES('412','2','','PADILLA PLASCENCIA','3','','EUGENIO GARZA SADA','122','91','FRACC. CAMPESTRE SANTA MARÍA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9941867','','','2017-03-01','2017-03-13 13:34:18','CARLOS FRANCISCO','PADILLA','GONZALEZ','','ingfo@dormireal.com','','4491220255','','','','','','','','0','ANA LAURA','PLASCENCIA','GONZALEZ','','naranjaja@hotmail.com','','4491220254','','','','','','','','0','','','');
INSERT INTO familia VALUES('413','2','','NAVARRO HAGHENBECK','','','Sauco 113','','','Fracc. Yalta','','','','','','','2017-03-01','','Rodrigo Navarro Obregón','','','','ronobregon@gmail.com','','4497694058','','','','','','','','0','Regina Haghenbeck Félix','','','','felixhregina@gmail.com','','4499508707','','','','','','','','0','','','');
INSERT INTO familia VALUES('414','2','','PEREZ MARTIN','','','República de Panamá 405','','','Fracc. Las Américas','','','','','','','2017-03-01','','Javier Arturo Pérez de Loera','','','','perezdeloerajavier@gmail.com,','','4491872475','','','','','','','','0','Magaly Guadalupe Martín López','','','','martinlopezmagaly@gmail.com','','4491965367','','','','','','','','0','','','');
INSERT INTO familia VALUES('415','2','','ROMO TISCAREÑO','2','','SIERRA MADRE OCCIDENTAL','113','','FRACC. BOSQUES DEL PRADO NTE.','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 13:28:21','RAMÓN FERNANDO','ROMO','FONSECA','','hamm_romo@hotmail.com','','4927950089','','','','','','','','0','MA. DE LOURDES','PISCAREÑO','RUBALCAVA','','luty68@hotmail.com','','4498949717','','','','','','','','0','','','');
INSERT INTO familia VALUES('416','2','','GARCIA LUNA POLO ','','','Ojocaliente No. 219- 33','','','Fracc. Ex Ejido Ojocaliente','','','','','','','2017-03-01','','Héctor García Luna Chaires ','','','','','','','','','','','','','','0','Maria Gabriela Polo Bengoa ','','','','gabipolo77@gmail.com ','','4491854529','','','','','','','','0','','','');
INSERT INTO familia VALUES('417','2','','GONZALEZ ROMO','','','Jacarandas 102','','','Fracc. Jardines de la Cruz','','','','9706118','','','2017-03-01','','','','','','','','','','','','','','','','0','Adriana Romo Alvarado','','','','adyromo2812@hotmail.com','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('418','2','','RESENDIZ GONZALEZ','','','Caudillos 147','','','Fracc. Casa Blanca','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','Andrea González Piña','','','','cenit-2006@hotmail.com','','4499282568','','','','','','','','0','','','');
INSERT INTO familia VALUES('419','2','','RAMIREZ DAVILA ','','','Federico de Ozanam 118','','','Fracc. Canteraas de San Agustin ','','','','9760222','','','2017-03-01','','Ricardo Ramirez Chavez ','','','','ricardo.ramirez@sincoconstruye.com ','','4498043508','','','','','','','','0','Marcela Alicia Davila Gómez ','','','','march_228@hotmail.com ','','4491908152','','','','','','','','0','','','');
INSERT INTO familia VALUES('420','2','','RODRIGUEZ MEDINA ','','','San Clemente 306 ','','','Fracc.San Cayetano ','','','','9144097','','','2017-03-01','','Javier Rodríguez González ','','','','javier.rodriguez@live.com.mx ','','4491802592','','','','','','','','0','Martha Medina Ibarra ','','','','mmedinai@hotmail.com ','','4495575422','','','','','','','','0','','','');
INSERT INTO familia VALUES('421','2','','GAYTAN VALENCIANO','','','Oceanía 215','','','Fracc. Buenos Aires','','','','2395700','','','2017-03-01','','Jesús Gaytán Ruiz','','','','','','4494632205','','','','','','','','0','Mercedes Valenciano Prado','','','','valnecianopmqyahoo.com','','4497690281','','','','','','','','0','','','');
INSERT INTO familia VALUES('422','2','','RICAUD HEALY','','','Paseo del Parque 115 ','','','Fracc. Q Campestre','','','','2383997','','','2017-03-01','','Eduardo Ricaud Velazco','','','','edracaud@yahoo.com.mx','','4498042811','','','','','','','','0','Erika Healy Wehlen','','','','erika.healy@yahoo.com.mx','','4491067806','','','','','','','','0','','','');
INSERT INTO familia VALUES('423','2','','JIMENEZ DELGADO','','','Eugenio Garza Sada 122-71','','','Fracc. Torre Campestre Santa María','','','','2384381','','','2017-03-01','','Salvador Jiménez Rodríguez','','','','salvador-jr@cibercable.net.mx','','4491087950','','','','','','','','0','Leticia Delgado Macías','','','','letydelmac@hotmail.com','','4492038538','','','','','','','','0','','','');
INSERT INTO familia VALUES('424','2','','TALAMANTES CHAVEZ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('425','2','','SANCHEZ BERNAL ','','','PASEO DEL PRADO','332','','FRACC. Q CÁMPESTRE,','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1533069','','','2017-03-01','2017-03-13 11:52:36','EDUARDO','SÁNCHEZ','MACÍAS','','eduardo_sanmac@hotamil.com ','','4491231724','','','','','','','','0','MAYRA','BERNAL','LAZALDE','','mayrabl_2@hotmail.com ','','4494605837','','','','','','','','0','','','');
INSERT INTO familia VALUES('426','2','','SOSA ROMO ','','','Vicente Riva Palacio 218','','','Fracc. Moderno ','','','','9941775','','','2017-03-01','','Fernando Sosa Pérez ','','','','fersop2002@yahoo.com','','4492137119','','','','','','','','0','Miriam Janete Romo Hdz.','','','','fersop2002@yahoo.com ','','4492051386','','','','','','','','0','','','');
INSERT INTO familia VALUES('427','2','','GUIZAR TELLEZ','','','Andrea 215','','','Fracc. Los Ángeles','','','','9734900','','','2017-03-01','','Alejandro Guizar Tejeda','','','','','','4491960703','','','','','','','','0','Yasmín Alicia Téllez Paredes','','','','ytellezpqgmail.com','','4491054912','','','','','','','','0','','','');
INSERT INTO familia VALUES('428','2','','OCHOA ETCHEAGARAY','','','PUERTA NORTE','138','','CORRAL DE BARRANCOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:25:20','MIGUEL A','OCHOA','ZERTUCHE','','','','449 9500392','','','','','','','','0','ANA PAOLA','ETCHEGARAY','HERNANDEZ','','','','449 7693583','','','','','','','','0','','','');
INSERT INTO familia VALUES('429','2','','OBREGON BECERRIL','','','Paseos de los Cisnes #206','','','Jardines del Parque','','','','9170072','','','2017-03-01','','Carlos Roberto Obregón Salado','','','','elefante.inbox@gmail.com','','4499119861','','','','','','','','0','Rosario Celine Becerril Alba','','','','rosariobecerril@gmail.com','','4491648530','','','','','','','','0','','','');
INSERT INTO familia VALUES('430','2','','HIGUERAS GONZALEZ','2','','FLORENCIA','404','','DEL VALLE 2° SECCIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9157770','','','2017-03-01','2017-03-06 13:31:20','JAVIER','HIGUERAS','SOLER','','javier@higueras.com','','4491116543','','','','','','','','0','GABRIELA ALEJANDRA','GONZÁLEZ','IBARRA','','biga_glez@yahoo.com','','4491116442','','','','','','','','0','','','');
INSERT INTO familia VALUES('431','2','','GONZALEZ GUTIERREZ','','','Rep. De Ecuador #905','','','Santa Elena','','','','no hay','','','2017-03-01','','Juan Pablo González Valdéz','','','','jp.g@live.com.mx','','4492745169','','','','','','','','0','Laura Marcela Gutiérrez de Luna','','','','lmarcegtz@hotmail.com','','4492722619','','','','','','','','0','','','');
INSERT INTO familia VALUES('432','2','','LOPEZ SUCAR','1','1','TOJES','129','11','TROJES DE ALONSO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 14:03:01','RAUL','LOPEZ','ACOSTA','','raul75up@yahoo.com','','4498042981','','','','','','','','0','LISSETTE','SUCAR','ROMERO','','sucarliz@yahoo.com','','4491166310','','','','','','','','0','','','');
INSERT INTO familia VALUES('433','2','','HERNÁNDEZ PADILLA','','','Vicente Rivapalacio 251','','','Fracc. Moderno','','','','2396291','','','2017-03-01','','José Carlos Hernández López de Lara','','','','josecarlos.hll@gmail.com','','4491259098','','','','','','','','0','Alejandra Padilla Acosta','','','','alle_padilla@ahoo.com.mx','','4491068893','','','','','','','','0','','','');
INSERT INTO familia VALUES('434','2','','MORENO ALVARADO ','','','Paseo de los Lirios 106','','','Fracc. Jardines del Lago ','','','','9762577','','','2017-03-01','','Gabriel Alberto Moreno Zárate','','','','gmoreno@inhaus.mx','','449 5579898','','','','','','','','0','Alicia Alvarado Thompson','','','','alicia_alth@hotmail.com','','449 463 4 51','','','','','','','','0','','','');
INSERT INTO familia VALUES('435','2','','BARBA DELGADO ','','','Cto. Estancia No. 531','','','Fracc. Villas Nta. Sra. Asunción sector Encinos ','','','','162-70-71','','','2017-03-01','','Ricardo Barba Segovia ','','','','ricardobarbas@hotmail.com ','','4494159878','','','','','','','','0','Raquel Andrea Delgado Cárdenas ','','','','raquelandreadc@hotmail.com','','4492050904','','','','','','','','0','','','');
INSERT INTO familia VALUES('436','2','','ROMO CAMPOS ','','','Av. San Antonio No.203 -49','','','Fracc. Rancho Sta. Mónica ','','','','250-43-59','','','2017-03-01','','Luis Fernando Romo Salazar ','','','','luisromosalazar@yahoo.com.mx','','4491558050','','','','','','','','0','Daniela Yazmin Campos Herrera  ','','','','danielacampos17@yahoo.com.mx','','4498953744','','','','','','','','0','','','');
INSERT INTO familia VALUES('437','2','','SERRANO MEDRANO ','','','Cda. Rufino Tamayo No. 267-136 ','','','Fracc. Lomas de Sta. Anita. ','','','','N/A','','','2017-03-01','','Ricardo Alfredo Serrano Rangel ','','','','mdsricardoserrano@hotmail.com ','','4401259962','','','','','','','','0','Carolina Medrano Pérez ','','','','cmedranop@triana.mx ','','449-111-53-48','','','','','','','','0','','','');
INSERT INTO familia VALUES('438','2','','SERRANO MEDRANO ','','','Cda. Rufino Tamayo No. 267-136 ','','','Fracc. Lomas de Sta. Anita. ','','','','N/A','','','2017-03-01','','Ricardo Alfredo Serrano Rangel ','','','','mdsricardoserrano@hotmail.com ','','4401259962','','','','','','','','0','Carolina Medrano Pérez ','','','','cmedranop@triana.mx ','','449-111-53-48','','','','','','','','0','','','');
INSERT INTO familia VALUES('439','3','','HERNANDEZ MUÑOZ','','','PASEO DE TALPA','251','','FRACC. CANTERAS SAN JAVIER','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:27:09','JOSÉ ELÍAS','HERNÁNDEZ','MARQUEZ','','mainse_je@hotmail.com','','4491558367','','','','','','','','0','ANA CECILIA','MUÑOZ','PADILLA','','cecilia14_mp@hotmail.com','','4491505730','','','','','','','','0','','','');
INSERT INTO familia VALUES('440','3','','GALVEZ GUTIÉRREZ','','','Av. Eugenio Garza Sada 122-61','','','Fracc. Campestre Santa María','','','','2380889','','','2017-03-01','','José Rubén Galvez Aguayo','','','','ruben.galveaguayo@gmail.com','','4497696192','','','','','','','','0','Jaqueline Gutiérrez Jiménez','','','','jaxgtz@hotmail.com','','4491063760','','','','','','','','0','','','');
INSERT INTO familia VALUES('441','3','','BARBA LOPEZ ','1','','CDA. TULIPANES','118','','FRACC. ENRAMADA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 10:54:46','RODRIGO','BARBA','DELGADO','','barba.rodrigo@gmail.com','','4492092569','','','','','','','','0','NANCY','LÓPEZ','SÁNCHEZ','','nancylopez6@gmail.com','','4497693092','','','','','','','','0','','','');
INSERT INTO familia VALUES('442','3','','SUAREZ DEL REAL SALAZAR','2','1','BARILOCHE','7','','FRACC. QUINTAS DE MONTICELLO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','251 76 15','','','2017-03-01','2017-03-09 09:30:32','EDUARDO','SUAREZ DEL REAL','GONZALEZ','','9930257','','449 114 34 12','','','','','','','','0','BLANCA LIZBETH','SALAZAR','MARTINEZ','','Comericalizadora/Si','','449 220 75 14','','','','','','','','0','','','');
INSERT INTO familia VALUES('443','3','','PRESA DURAN ','1','','TROJE SAN IGNACIO','213','','FRACC. TORJES SAN CRISTOBAL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 12:41:59','','','','','','','','','','','','','','','0','CLAUDIA GRACIELA','DURÁN','PADILLA','','dclauqueretaro@gmail.com ','','4491997893','','','','','','','','0','','','');
INSERT INTO familia VALUES('444','3','','DÁVALOS CUADRA','1','1','AV. LA QUERENCIA','302','117','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189578','','','2017-03-01','2017-03-07 09:09:38','ALFONSO ROBERTO','DÁVALOS','DÁVALOS','','addarq78@gmail.com','','4491553615','','','','','','','','0','LUZ ELVIRA','CUADRA','ARÉCHIGA','','elviracu@yahoo.com','','4491117980','','','','','','','','0','','','');
INSERT INTO familia VALUES('445','3','','VILLEGAS RAMIREZ','','','Bogotá 302','','','La Fuente','','','','9155126','','','2017-03-01','','Elías Villegas Mayoral','','','','elias.vime@gmail.com','','4492647984','','','','','','','','0','Imelda Lizette Ramírez Centeno','','','','lizette.race@gmail.com','','4491066371','','','','','','','','0','','','');
INSERT INTO familia VALUES('446','3','','DELGADO FLORES','2','1','AV. LA QUERANCIA','302','15','FRACC. LA QUERENCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9189519','','','2017-03-01','2017-03-08 12:21:32','JUAN ANTONIO','DELGADO','ENRÍQUEZ','','juandelgadoenriquez@hotmail.com','','4491289215','','','','','','','','0','GABRIELA','FLORES','DE LUNA','','gabyfdl@hotmail.com','','4494159788','','','','','','','','0','','','');
INSERT INTO familia VALUES('447','3','','BORREGO CRUZ','1','2','HERNÁN CORTÉS','99','','FRACC. VERGELES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9930257','','','2017-03-01','2017-03-07 09:27:17','FRANCISCO','BORREGO','ACEVEDO','','el_centenario@prodigy.net.mx','','4499193335','','','','','','','','0','SOFÍA AURORA','CRUZ','TOPETE','','sact@hotmail.com','','4492033089','','','','','','','','0','','','');
INSERT INTO familia VALUES('448','3','','ADAME PAREDES','2','','PASEO DEL BOSQUE','258','','FRACC. RESIDENCIAL Q CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2000834','','','2017-03-01','2017-03-07 13:27:28','EVER NOEL','ADAME','CASTAÑEDA','','everadaca@gmail.com','','4491111702','','','','','','','','0','BRIANDA','PAREDES','REYNOSO','','brianda13@hotmail','','4499062394','','','','','','','','0','','','');
INSERT INTO familia VALUES('449','3','','CONTRERAS VALLEJO','2','1','ACEQUIA','552','','FRACC. RANCHO SAN MIGUEL ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2512031','','','2017-03-01','2017-03-08 12:31:57','CARLOS FABIÁN','CONTRERAS','MADRID','','drcfcm@hotmail.com','','4494489476','','','','','','','','0','MARISSA','VALLEJO','EUCEDA','','marissa_vallejo@hotmail.com','','4491552786','','','','','','','','0','','','');
INSERT INTO familia VALUES('450','3','','DIAZ DE LEON CAMARERO ','2','','MONTES HIMALAYA','129','','FRACC. LOMAS DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2515083','','','2017-03-01','2017-03-02 12:11:22','JOEL','DÍAZ DE LEÓN','MARTÍNEZ','','joel_dlm@hotmail.com','','4448284535','','','','','','','','0','ANA MARCELA','CAMARERO','VARGAS','','amarcelacv@gmail.com','','4445808998','','','','','','','','0','','','');
INSERT INTO familia VALUES('451','3','','GUZMÁN REYES','','','Arroyo el Cajón 21','','','Fracc. Tres Arroyos','','','','9142294','','','2017-03-01','','Damián Alberto Guzmán Colis','','','','dagc666@hotmail.com','','4498905270','','','','','','','','0','Yessica Reyes Gallegos','','','','yessicareyesgallegos@gmail.com','','4499309621','','','','','','','','0','','','');
INSERT INTO familia VALUES('452','3','','GUTIÉRREZ ARELLANO','2','','PLATA','120','','FRACC. FUNDICIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','3183283','','','2017-03-01','2017-03-13 13:24:00','DANIEL ABRAHAM','GUTIÉRREZ','IBARRA','','dabgutierrez@gmail.com','','4491786898','','','','','','','','0','ANA LILIA','ARELLANO','VARGAS','','ana.arv02@gmail.com','','4491289969','','','','','','','','0','','','');
INSERT INTO familia VALUES('453','3','','MEDINA ARENAS','','','VENTURA','112','','PUERTA GRANDE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1532850','','','2017-03-01','2017-03-13 10:49:59','JAIME HUMBERTO','MEDINA','GUZMÁN','','jaime.medina@lahuerta.com.mx','','4491110753','','','','','','','','0','ALMA CAROLINA','ARENAS','LICEAGA','','carolaarenas@icloud.com','','4491791712','','','','','','','','0','','','');
INSERT INTO familia VALUES('454','3','','OROPEZA FRACO','','','Paseo de la punta 413','','','Paseos de Aguascalientes','','','','1581210','','','2017-03-01','','Ernesto Oropeza Martínez','','','','calmehouston@hotmail.com','','4491423541','','','','','','','','0','Gabriela Franco García','','','','elgranrey2012@hotamil.com','','1088491','','','','','','','','0','','','');
INSERT INTO familia VALUES('455','3','','PRIETO TORRES','','','Bosques 306','','','Bosques Del Prado','','','','1583149','','','2017-03-01','','José Manuel Prieto López','','','','donrafaab@prodigy.net.mx','','4498909247','','','','','','','','0','Lucia Magdalena Torres Quiñones','','','','luciat@gmail.com','','4491386086','','','','','','','','0','','','');
INSERT INTO familia VALUES('456','3','','BARAJAS SANCHEZ ','','','MISIÓN DE SAN JOSÉ','205','','FRACC. CORRAL DE BARRANCOS ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:50:47','RODRIGO MIGUEL','BARAJAS','EDID','','rodbae@gamil.com','','4492103726','','','','','','','','0','LUCRECIA','SÁNCHEZ','ÁVILA','','luca_sa1@hotmail.com','','4491552202','','','','','','','','0','','','');
INSERT INTO familia VALUES('457','3','','NIETO HERRERA','1','','VILLA PLATA','333','','ALCÁZAR','JESÚS MARÍA','AGUASCALIENTES','AGUASCALIENTES','9736347','','','2017-03-01','2017-03-08 12:48:03','JESÚS ALFREDO','NIETO','ESTÉBANEZ','','nieto_estabanez81@yahoo.com.mx','','4491255791','','','','','','','','0','HILDA LILIANA','HERRERA','PÉREZ','','liliana.herrera93@yahoo.com','','4491258722','','','','','','','','0','','','');
INSERT INTO familia VALUES('458','3','','MENCHACA DE ANDA','','','1A Cerrada del Campestre 101','','','Fracc. Campestre Club de Golf Nte.','','','','2384376','','','2017-03-01','','Julio César Menchaca Páramo','','','','julio.mench@hotmail.com','','4491548074','','','','','','','','0','María del Refugio De Anda Márquez','','','','qkiss05@hotmail.com','','4491473594','','','','','','','','0','','','');
INSERT INTO familia VALUES('459','3','','GARCÍA GONZÁLEZ','2','','BARRANCA DEL COBRE','115','','FRACC. RESIDENCIAL RÍO SAN PEDRO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9160807','','','2017-03-01','2017-03-08 12:36:25','JUAN CARLOS','GARCÍA','SALDAÑA','','garsal_16@hotmail.com','','4491114959','','','','','','','','0','BLANCA ADRIANA','GONZÁLEZ','MENDOZA','','','','4491068259','','','','','','','','0','','','');
INSERT INTO familia VALUES('460','3','','HERRERA LEÓN','1','','CUENCA','219','','FRACC. RIOJA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','4549380','','','2017-03-01','2017-03-13 10:51:45','JUAN JOSÉ','HERRERA','DE LA GARZA','','juanjose.herrera@outlook.com','','4491059476','','','','','','','','0','OLLIN IXCHEL','LEÓN','LUNA','','ixchel.leon@gmail.com','','4491232981','','','','','','','','0','','','');
INSERT INTO familia VALUES('461','3','','BARBA ORTIZ','','','Jesuitas 108','','','Viña Antigua','','','','9933894','','','2017-03-01','','Eugenio Barba Segovia','','','','eugeniobarba@hotmail.com','','4491066954','','','','','','','','0','Patricia Ivette Ortiz Álvarez','','','','ivis108@yahoo.com','','4494659339','','','','','','','','0','','','');
INSERT INTO familia VALUES('462','3','','DE LUNA ROMERO','1','1','CALZADA VILLA PLATA','515','4','ALCÁZAR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9157659','','','2017-03-01','2017-03-08 12:30:21','FRANCISCO JOSÉ','DE LUNA','ARCE','','franciscodeluna1@gmail.com','','4498940271','','','','','','','','0','MARTHA','ROMERO','GONZÁLEZ','','marteirot@hotmail.com','','4498940272','','','','','','','','0','','','');
INSERT INTO familia VALUES('463','3','','GONZÁLEZ GARCÍA','','','RÍO JORDÁN','115','','FRACC. COLINAS DEL RÍO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:55:10','JORGE EDUARDO','GONZÁLEZ','ROQUE','','eduardo.glz.sim@gmail.com','','4499192762','','','','','','','','0','DANIELA LORENA','GARCÍA','DIOSDADO','','daniela_garcia456@hotmail.com','','4497694775','','','','','','','','0','','','');
INSERT INTO familia VALUES('464','3','','CUELLAR ZETINA','2','','CDA. STA. MÓNICA','111','','FRACC.  CANTERAS SN. AGUSTÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1944874','','','2017-03-01','2017-03-08 10:46:33','KENNETT','CUELLAR','TORRES','','kc_pip8@hotmail.com','','4493248519','','','','','','','','0','LIZETTE','ZETINA','MORALES','','no tiene','','4491703939','','','','','','','','0','','','');
INSERT INTO familia VALUES('465','3','','ÁLVAREZ LÓPEZ','1','','EUGENIO GARZA SADA','122','93','FRACC. CAMPESTRE SANTA MARÍA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2380621','','','2017-03-01','2017-03-13 11:49:26','ELÍAS','ÁLVAREZ','ESPARZA','','elias_aee@hotmail.com','','4498043094','','','','','','','','0','ELIZABETH','LÓPEZ','REYNOSO','','liz_hormiga@hotmail.com','','4491805601','','','','','','','','0','','','');
INSERT INTO familia VALUES('466','3','','PADILLA PEREDO','1','','TAL AVANTE','123','','PUERTA GRANDE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2004014','','','2017-03-01','2017-03-13 11:45:54','RAÚL','PADILLA','ÁVILA','','raul.padilla@mx.mahle.com','','2274237','','','','','','','','0','NADINE','PEREDO','RODRÍGUEZ','','nadineperero01@hotmail.com','','4491557730','','','','','','','','0','','','');
INSERT INTO familia VALUES('467','3','','NAVARRO DE ANDA','1','','AV. EUGENIO GARZA SADA','21','30','FRACC.  LA PLAZUELA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2380774','','','2017-03-01','2017-03-13 10:56:43','RICARDO','NAVARRO','EVERTSZ','','ricardone@gamil.com','','4494060244','','','','','','','','0','FABIOLA','DE ANDA','ÁLVAREZ','','fabioladeanda@gmail.com','','4494060240','','','','','','','','0','','','');
INSERT INTO familia VALUES('468','3','','REYNEL GONZÁLEZ','','','Av. La Querencia 304-105','','','Fracc. Residencial La Querencia','','','','1757571','','','2017-03-01','','Alberto Alejandro Reynel Franco','','','','a_reynel@hotmail.com','','4499114039','','','','','','','','0','Laura Elena González Sánchez','','','','lauragonzalez23@hotmail.com','','4491066118','','','','','','','','0','','','');
INSERT INTO familia VALUES('469','3','','FLORES OCHOA ','','','Circuito San Telmo 408 ','','','Fracc. San Telmo. ','','','','','','','2017-03-01','','Arturo Flores Rojas ','','','','el_arthur@hotmail.com ','','4491270687','','','','','','','','0','Martha C. Ochoa Vallejo','','','','cecy.19ov@gmail.com ','','4498905114','','','','','','','','0','','','');
INSERT INTO familia VALUES('470','3','','LLAMAS GARCIA','','','Privada la Herradura #315','','','Fracc. Antiguo Country','','','','2512957','','','2017-03-01','','Luis Fernando Llamas Lomeli','','','','lfll_09@hotmail.com','','4492564144','','','','','','','','0','Lizeth Gabriela Garcia Meraz','','','','liz.garmer@gmail.com','','4491731387','','','','','','','','0','','','');
INSERT INTO familia VALUES('471','3','','LOPEZ GONZALEZ ','','1','CDA. 2A.VALLE DE GUADALUPE','205','11','FRACC.  FÁTIMA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1531716','','','2017-03-01','2017-03-08 13:33:25','LUIS NORBERTO','LÓPEZ','LÓPEZ','','lunololo_2000@yahoo.com','','449 9111778','','','','','','','','0','MARÍA DE FÁTIMA','GONZÁLEZ','RODRÍGUEZ','','fagonzal2001@yahoo.com','','4491575013','','','','','','','','0','','','');
INSERT INTO familia VALUES('472','3','','MANCILLA CASTRO','','','AV. GUADALUPE GONZÁLEZ','1113','93','FRACC. LOS FRESNOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9967562','','','2017-03-01','2017-03-13 11:07:02','FERNANDO','MACILLA','PRIETO','','fermancilla@hotmail.co','','4491113909','','','','','','','','0','CELINA VIRIDIANA','CASTRO','ARRIAGA','','celina_ac@hotmail.com','','4491964238','','','','','','','','0','','','');
INSERT INTO familia VALUES('473','3','','VARGAS ALONSO','','','Av. La Querencia 304-76','','','Fracc. Residencial La Querencia','','','','3180080','','','2017-03-01','','Julio Benjamín Vargas Aguilar','','','','juiovar@hotmail.com','','4499031953','','','','','','','','0','Karen Monserrat Alonso Gasca','','','','karenalonsogasca@gmail.com','','4499500663','','','','','','','','0','','','');
INSERT INTO familia VALUES('474','3','','CHAVEZ LOPEZ','2','','AV. GUADALUPE GONZALEZ','1115','54','TERRANZA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-02 11:35:55','IGNACIO MISAEL','CHÁVEZ','MARTÍNEZ','','mchavezm@gmail.com','','4491075804','','','','','','','','0','MARTHA FABIOLA','LÓPEZ','PÉREZ','','fabylopezp@gmail.com','','4491867329','','','','','','','','0','','','');
INSERT INTO familia VALUES('475','3','','FERNÁNDEZ LÓPEZ','','','EUGENIO GARZA SADA','122','81','FRACC. RESIDENCIAL CAMPESTRE SANTA MARÍA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:35:22','ALAN ADAIR','FERNÁNDEZ','PÉREZ','','alan.fernandez@medestore.mx','','449 1111657','','','','','','','','0','LIZBETH','LÓPEZ','PÉREZ','','lizbeth_lopez25@hotmail.com.mx','','449 1464353','','','','','','','','0','','','');
INSERT INTO familia VALUES('476','3','','ANDRADE ORTIZ','1','','PIRULERO','203','','FRACC. PIRULES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9164205','','','2017-03-01','2017-03-13 11:56:22','LUIS FERNANDO','ANDREDE','MORENO','','el_cuervo025@hotmail.com','','449 1061371','','','','','','','','0','KARLA EUGENIA','ORTÍZ','GONZÁLEZ','','karla.ortizglez@gmail.com','','4498940162','','','','','','','','0','','','');
INSERT INTO familia VALUES('477','3','','PADILLA MARTINEZ ','','','Circ. San Telmo No. 631','','','Fracc. San Telmo ','','','','1584082','','','2017-03-01','','Luis Xavier Padilla González ','','','','xavierpg@hotmail.com','','4492333238','','','','','','','','0','Cecilia Martínez Loera ','','','','cecym1991@hotmail.com ','','4492305470','','','','','','','','0','','','');
INSERT INTO familia VALUES('478','3','','DE LA GARZA CRUZ','','','Av. La Querencia 304-27','','','Fracc. Residencial La Querencia','','','','2931150','','','2017-03-01','','Gerardo de la Garza Martínez','','','','ggarma@gamil.com','','4491112319','','','','','','','','0','Fátima Alejandra Cruz Topete','','','','fatimacruz6@hotmail.com','','4491732885','','','','','','','','0','','','');
INSERT INTO familia VALUES('479','3','','LEDEZMA ORTEGA','1','1','ARROYO DEL CAJON','23','','TRES ARROYOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1627916','','','2017-03-01','2017-03-02 11:44:21','JAIRO ALEJANDRO','LEDESMA','PARGA','','jairoledezma@hotmail.com','','4491830228','','','','','','','','0','ROCIO','ORTEGA','GONZÁLEZ','','newchio-403@hotmail.com','','4492052771','','','','','','','','0','','','');
INSERT INTO familia VALUES('480','3','','MEDINA JIMENEZ','','','Paseo del campestre 250','','','Fracc. Q Campestre','','','','','','','2017-03-01','','Luis Ignacio Medina Aguilar','','','','nacho_beer@hotmail.com','','4499196596','','','','','','','','0','Karla María Jiménez Girón','','','','karlangas_giron@hotmail.com','','4499196599','','','','','','','','0','','','');
INSERT INTO familia VALUES('481','3','','FRANCO CHAVEZ ','1','1','PASEO DE LAS MARAVILLAS','12014','9','FRACC. CORRAL DE BARRANCOS ','JESUS MARIA','AGUASCALIENTES','AGUASCALIENTES','9933506','','','2017-03-01','2017-03-07 11:20:05','FEDERICO','FRANCO','VELOZ','','hfrancog@yahoo.com.mx','','4491780044','','','','','','','','0','ILIANA DEL CARMEN','CHÁVEZ','RAMOS','','ilianachhr@hotmail.com ','','4491791559','','','','','','','','0','','','');
INSERT INTO familia VALUES('482','3','','SERNA MUÑOZ','1','','MANCHESTER','436','','CAMPESTRE INGLÉS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9628372','','','2017-03-01','2017-03-13 10:53:11','CESAR','SERNA','FAJARDO','','drxsern@gmail.com','','4494487107','','','','','','','','0','SONIA','MUÑOZ','MARTÍNEZ','','ainos52@hotmail.com','','4491927783','','','','','','','','0','','','');
INSERT INTO familia VALUES('483','3','','LOPEZ AGUILERA','','','Av. La Querencia 302-63','','','Fracc. La Querencia','','','','2380629','','','2017-03-01','','Juan Manuel López Pérez','','','','juanmanuel@toskamx.com','','4491116819','','','','','','','','0','Melissa Aguilera Lazo','','','','melissa.al24@hotmail.com','','4491094005','','','','','','','','0','','','');
INSERT INTO familia VALUES('484','3','','MARTNEZ MORONES','1','1','ZENITH','104','','FRACC. RESIDENCIAL ALTARIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-09 13:50:20','LEOPOLDO','MORENES','FONSECA','','polmorones@gmail.com','','492 544 49 99','','','','','','','','0','IVETTE LUCIA','MARTÍNEZ','DE LEÓN','','iveette.lucia@gmail.com','','4491557298','','','','','','','','0','','','');
INSERT INTO familia VALUES('485','3','','IDEGAMI','','','La Querencia 302 -75','','','Fracc. La Querencia','','','','','','','2017-03-01','','Mitsuo Idegami','','','','','','','','','','','','','','0','Hisami Idegami','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('486','3','','RODRIGUEZ VILLAREAL','1','','PASEOS DEL CUERVERO','122','','FRACC. PASEOS DE AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9734999','','','2017-03-01','2017-03-07 09:17:54','JUAN CARLOS','RODRÍGUEZ','ALONSO','','jcarlosr@prodigy.net.mx','','4491117479','','','','','','','','0','MA ISABEL','VILLARREAL','ORTA','','isabelitavillarreal2010@gmail.com','','4492248281','','','','','','','','0','','','');
INSERT INTO familia VALUES('487','3','','RUIZ VELASCO GONZALEZ','','','PADRE PIO','124','','LOMAS DE SN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','3614180','','','2017-03-01','2017-03-13 11:47:32','CARLOS ENRIQUE','RUÍZ VELASCO','RAMÍREZ','','carlos.rouzvel@prodygy .net.mx','','4491112244','','','','','','','','0','ANA ROSA','GONZÁLEZ','POZO','','anarosa_glez@hotmail.com','','4491185874','','','','','','','','0','','','');
INSERT INTO familia VALUES('488','3','','RENOVATO MORA','1','','EUGENIO GARZA SADA','122','45','FRACC. CAMPESTRE SANTAMARÍA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','928 94 95','','','2017-03-01','2017-03-08 12:17:21','OMAR ADRIÁN','RENOVATO','JAUREGUI','','arenovatoj@hotmail.com','','4499118333','','','','','','','','0','NORMA ALICIA','MORA','PÉREZ','','normamora@hotmail.com','','4491731718','','','','','','','','0','','','');
INSERT INTO familia VALUES('489','3','','RAMIREZ ESTRADA','1','','AV. DE LAS MISIONES','219','','FRACC. LA PALOMA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2514271','','','2017-03-01','2017-03-13 11:57:53','FERNANDO','RAMÍREZ','HERNÁNDEZ','','ramirezh.fernando@gmail.com','','449 8941351','','','','','','','','0','E. MA. DEL LOURDES','ESTRADA','GONZALEZ','','lourdes.estrada.gzlz@gmail.com','','4498941343','','','','','','','','0','','','');
INSERT INTO familia VALUES('490','3','','GONZALEZ GONZALEZ','','','Paseo del Champagne 114','','','Fracc. Las Cavas','','','','','','','2017-03-01','','Marco Antonio González Martínez','','','','ojo_zarco@hotmail.com','','4498907358','','','','','','','','0','Mercedes González Garza','','','','mercedesbosques@yahoo.com','','4491113135','','','','','','','','0','','','');
INSERT INTO familia VALUES('491','3','','RODRIGUEZ MENDOZA','1','','ALBACETE','209','','LA RIOJA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 12:34:40','JOSÉ ISRAEL','RODRÍGUEZ','GARCÍA','','joseisraelrodga@gmail.com','','449 5578988','','','','','','','','0','LUSCIOLA SAREL','MENDOZA','DÍAZ','','','','4491811532','','','','','','','','0','','','');
INSERT INTO familia VALUES('492','3','','GONZALEZ BARBERENA','','','CUENCA','209','','FRACC. PRIVADA LA MANCHA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:58:53','FEDERICO','GONZÁLEZ','IÑIGUEZ','','fegoin@yahoo.com.mx','','4491553274','','','','','','','','0','MAGALY','BARBERENA','GONZÁLEZ','','magy_bg09@hotmail.com','','4491961259','','','','','','','','0','','','');
INSERT INTO familia VALUES('493','3','','DE LA FUENTE BARBA ','','','Frontera No. 121 ','','','Fracc. Campestre ','','','','9735170','','','2017-03-01','','Flavio S. de la Fuente Zamora ','','','','sdelafuentez@gmail.com ','','449-155-86-51','','','','','','','','0','Paola Barba Barreda ','','','','paolab99@hotmail.com ','','4492250614','','','','','','','','0','','','');
INSERT INTO familia VALUES('494','3','','MARTINEZ JIMENEZ','','','Troje San Ignacio 102','','','Fracc. Trojes San Cristóbal','','','','1580506','','','2017-03-01','','Adolfo Martínez Imperial','','','','adoimperialq.hotmail.com','','4499115771','','','','','','','','0','Karla Inés Jiménez Toledo','','','','karlajitqyahoo.com.mx','','4491114003','','','','','','','','0','','','');
INSERT INTO familia VALUES('495','3','','ROMAN SANCHEZ','','','Guadalupe 431','','','Fracc. Centro','','','','2529686','','','2017-03-01','','Manuel A. Román Gtz.','','','','lic.alejandro.roman@gmail.com','','4491023618','','','','','','','','0','Paloma Patricia Sánchez Ramírez','','','','palomasanchezramirez@gmail.com','','4491558948','','','','','','','','0','','','');
INSERT INTO familia VALUES('496','3','','DIAZ DE LEON SANCHEZ','','','Sauco 116','','','Fracc. Yalta','','','','','','','2017-03-01','','Carlos Enrique Díaz de León Alonso','','','','charly=h45qhotmail.com','','4491732494','','','','','','','','0','María del Lourdes Sánchez Macías','','','','lu11abyqhotmail.com','','4491117862','','','','','','','','0','','','');
INSERT INTO familia VALUES('497','3','','MONCIVAIS CRUZ ','','2','DIEGO FERNÁNDEZ VILLA','110','15','FRACC. PRADOS DEL SUR ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 10:59:55','SERGIO VICENTE','MONCIVAIS','LÓPEZ','','svml_regio@hotmail.com ','','449-195-34-63','','','','','','','','0','MARTHA JANETTE','CRUZ','ARMENDARIZ','','janette.cruz.armendariz@gmail.com ','','4491559853','','','','','','','','0','','','');
INSERT INTO familia VALUES('498','3','','LÓPEZ TORRES','1','2','MANATIAL DE CABAÑUELA','213','','FRACC. RESIDENCIAL CEDROS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-10 14:01:42','GERARDO','LÓPEZ','LÓPEZ','','gerardo_108@hotmail.com','','4497695994','','','','','','','','0','MARÍA JOSÉ','TORRES','ÁVILA','','majose90@hotmail.com','','4497695994','','','','','','','','0','','','');
INSERT INTO familia VALUES('499','3','','ANAYA WAGNER','','','Av. Guadalupe González 1113-89','','','Condominio Los Fresnos','','','','','','','2017-03-01','','Dagoberto Anaya Treviño','','','','dagoanay@hotmail.com','','4491572731','','','','','','','','0','Diana Lorena Wagner Raygoza','','','','diana.wagner83@hotmail.com','','4499301189','','','','','','','','0','','','');
INSERT INTO familia VALUES('500','4','','RODARTE ARROYO','','','Arroyo el Molino 301-145','','','Fracc. Real del Molino','','','','','','','2017-03-01','','Carlos Eric Rodarte Durom','','','','eric.rodarte@outlook.com','','5518500968','','','','','','','','0','María Gabriela Arroyo de la Cruz','','','','gabyacr@hotmal.com','','4491116397','','','','','','','','0','','','');
INSERT INTO familia VALUES('501','4','','ORTIZ MEDRANO','1','1','FEDERICO GARCÍA LORCA','734','','EL MODERNO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9940179','','','2017-03-01','2017-03-09 10:35:24','JOSÉ GUADALUPE','ORTIZ','ORPINEDA','','ortiz-horacio@ksmex.com.mx','','4491962662','','','','','','','','0','BLANCA IBETH','MEDRANO','MUÑOZ','','medrano-blanca@hotmail.com','','4491106185','','','','','','','','0','','','');
INSERT INTO familia VALUES('502','4','','ZUÑIGA DOMINGUEZ','','','Melquiades Moreno #2005','','','Fracc. El Plateado','','','','9961959','','','2017-03-01','','Sergio Armando Zuñiga Robles','','','','serarm68@hotmail.com','','4492426065','','','','','','','','0','Desiree Leticia Dominguez Lopez','','','','desidl72@hotmail.com','','4492104857','','','','','','','','0','','','');
INSERT INTO familia VALUES('503','4','','VELASZQUEZ FLORIANO ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('504','4','','ALCALA ARELLANO','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('505','4','','OROZCO GARCIA','2','1','CDA. GRECIA','501','','FRACC. XENIA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9150055','','','2017-03-01','2017-03-06 13:19:50','ALFONSO','OROZCO','LÓPEZ','','gnsorozco@yahoo.com','','449 441 37 58','','','','','','','','0','MARÍA VERÓNICA','GARCÍA','HURTADO','','veroghu@yahoo.com.mx','','4491506984','','','','','','','','0','','','');
INSERT INTO familia VALUES('506','4','','ROMAN MACIAS','','','Rosa de los vientos 415','','','Fracc. Rancho San Miguel','','','','','','','2017-03-01','','Daniel Alejandro Román Cuellar','','','','','','4498907760','','','','','','','','0','Marcela Macías Soto','','','','marcelaamaciass@hotmail.com','','4491042012','','','','','','','','0','','','');
INSERT INTO familia VALUES('507','4','','ROBLEDO BAEZ','1','','PASEO DEL SR. DEL ENCINO  SUR','101','23','FRACC. SAN SEBASTIÁN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2503252','','','2017-03-01','2017-03-06 12:53:01','GERÓNIMO','ROBLEDO','GONZÁLEZ','','geronimo.robledo@gamil.com','','4491819819','','','','','','','','0','CHLORELLA DEYATHREZ','BAEZ','RODRÍGUEZ','','chorella.baez@hotmail.com','','4495533185','','','','','','','','0','','','');
INSERT INTO familia VALUES('508','4','','MUÑOZ REYNOSO ','','','Circuito del Valle No. 116 -9','','','Fracc. Valle del Campanario ','','','','2516126','','','2017-03-01','','Eduardo Roberto Muñoz Díaz Torre','','','','erobertomdt@hotmail.com ','','4498942400','','','','','','','','0','Verónica Reynoso Gómez ','','','','veroreynoso_9@hotmail.com','','4997691846','','','','','','','','0','','','');
INSERT INTO familia VALUES('509','4','','BEJARANO PALACIOS','','','Bernardo Hernández  116','','','Fracc. Ojo Caliente III','','','','','','','2017-03-01','','Víctor Hugo Bejarano González','','','','vicbej9@hotmal.com','','4491787297','','','','','','','','0','Alma Sofía Palacios Figueroa','','','','sofiafiguer@gmail.com','','4499401537','','','','','','','','0','','','');
INSERT INTO familia VALUES('510','4','','DURAN AVILA ','1','','FRAY JUNIPERO SERRA','110','','FRACC. VILLA JARDÍN ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','140-63-93','','','2017-03-01','2017-03-06 13:03:22','ALBERTO','DURAN','VALVERDE','','lic:albert@live.com.mx ','','4495545185','','','','','','','','0','AIDA','MARISOL','AVILA','','marichula8@hotmail.com ','','4491927208','','','','','','','','0','','','');
INSERT INTO familia VALUES('511','4','','LOPEZ RODRIGUEZ ','','','Villistas 245-29 ','','','Fracc. Montebello della Stanza ','','','','','','','2017-03-01','','Jorge Humberto López Domínguez ','','','','laejorgelopez@hotmail.com ','','4491555380','','','','','','','','0','Patricia de la Asunción Rodríguez Becerril ','','','','pr_dl@hotmail.com ','','4499061470','','','','','','','','0','','','');
INSERT INTO familia VALUES('512','4','','PEDROZA CONTRERAS ','','','Alamo 204 ','','','Fracc. El Sol. ','','','','918-96-50','','','2017-03-01','','Olegario Pedroza Saucedo','','','','','','4491449254','','','','','','','','0','Perla del Rocío Contreras Cárdenas ','','','','prc_443@yahoo.com.mx','','4491036714','','','','','','','','0','','','');
INSERT INTO familia VALUES('513','4','','ALBA LOPEZ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('514','4','','RIVERA MACÍAS','','','Calle 9-4 321','','','Jardínes de Casa Nueva','','','','','','','2017-03-01','','Fernando Rivera Esquivel','','','','fernando.riverae@icloud.com','','4499193820','','','','','','','','0','Mónica Teresa Macías Muñoz','','','','mtmm04@gmail.com','','4494654784','','','','','','','','0','','','');
INSERT INTO familia VALUES('515','4','','RUIZ HERNÁNDEZ','1','','AV. HÉROE DE NACOZARI  PRIV. RINCÓN DEL PARQUE','607','128','BARRIO DE LA ESTACIÓN','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9164690','','','2017-03-01','2017-03-13 13:01:21','DIEGO ARMANDO','RUÍZ','MÉNDEZ','','diego.ruiz01@cfe.gdo.mx','','47331224889','','','','','','','','0','DEISY','HERNÁNDEZ','BRIONES','','briones_387@hotmail.com','','4731084647','','','','','','','','0','','','');
INSERT INTO familia VALUES('516','4','','PEREZ PADILLA','1','','SIERRA DE LAS PALOMAS','215','','BOSQUES DEL PRADO SUR','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9129659','','','2017-03-01','2017-03-13 12:55:22','Luis Genaro Pérez Barba','','','','','','4491040278','','','','','','','','0','NELLY KARINA','PADILLA','PADILLA','','karinapadillapp@hotmail.com','','449 156 76 67','','','','','','','','0','','','');
INSERT INTO familia VALUES('517','4','','CHAVEZ GUTIERREZ','2','','CERRADA NAVIDAD','148','','VILLANATY','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','929 94 54','','','2017-03-01','2017-03-13 13:04:11','CESAR ALEJANDRO','CHAVEZ','MEZA','','','','122 86 45','','','','','','','','0','ERIKA','GUTIERREZ','VELOZ','','','','449 329 18 74','','','','','','','','0','','','');
INSERT INTO familia VALUES('518','4','','VELASCO RODRIGUEZ ','','','Colibri 112 ','','','Fracc. Jardines del Lago ','','','','976-09-31','','','2017-03-01','','Carlos Velasco Velasco ','','','','carlosyyazminvelasco@gmail.com ','','4491874374','','','','','','','','0','Yazmin Sarida Rodríguez Quezada ','','','','carlosyyazminvelasco@gmail.com ','','4494631857','','','','','','','','0','','','');
INSERT INTO familia VALUES('519','4','','MARMOLEJO DELGADO ','3','','ROBLE','110','','ARBOLEDAS DE PASO BLANCO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','158 22 13','','','2017-03-01','2017-03-07 12:29:00','JOSE LUIS','MARMOLEJO','CERVANTES','','','','449 911 44 03','','','','','','','','0','MARIA DE LOS ANGELES','DELGADO','ESQUEDA','','','','449 262 77 81','','','','','','','','0','','','');
INSERT INTO familia VALUES('520','4','','SERRANO NIETO','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('521','3','','RODARTE ARROYO','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('522','3','','ORTIZ MEDRANO','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('523','3','','ZUÑIGA DOMINGUEZ','','','Melquiades Moreno #2005','','','Fracc. El Plateado','','','','9961959','','','2017-03-01','','Sergio Armando Zuñiga Robles','','','','serarm68@hotmail.com','','4492426065','','','','','','','','0','Desiree Leticia Dominguez Lopez','','','','desidl72@hotmail.com','','4492104857','','','','','','','','0','','','');
INSERT INTO familia VALUES('524','3','','VELASCO FLORIANO','1','','SOLEADO','123','','FRACC. VISTAS DEL SOL II','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','377 53 54','','','2017-03-01','2017-03-07 12:59:50','SERGIO','VELASCO','QUEZADA','','admon_pollo@htmail.com','','4499113530','','','','','','','','0','GABRIELA','FLORIANO','RENTERÍA','','terrany66gmail.com','','4499115687','','','','','','','','0','','','');
INSERT INTO familia VALUES('525','3','','ALCALA ARELLANO','1','','NADIR','522','','FRACC. VISTAS DEL SOL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9709971','','','2017-03-01','2017-03-06 11:51:06','CARLOS JAVIER','ALCALÁ','GALLARDO','','carlos.alcalabg@gmodelo.com.mx','','4491157794','','','','','','','','0','ANGÉLICA','ARELLANO','RIVAS','','aarellano207@gmail.com','','4491798224','','','','','','','','0','','','');
INSERT INTO familia VALUES('526','3','','OROZCO GARCIA','','','Cda. Grecia 501 ','','','Fracc. Xenia ','','','','9150055','','','2017-03-01','','Alfonso Orozco López','','','','gnsorozco@yahoo.com','','4499030444','','','','','','','','0','María Verónica García Hurtado','','','','veroghu@yahoo.com.mx','','4491506984','','','','','','','','0','','','');
INSERT INTO familia VALUES('527','3','','ROMAN MACIAS','','','ROSA DE LOS VIENTOS','415','','RANCHO SAN MIGUEL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 11:29:56','DANIEL ALEJANDRO','ROMAN','CUELLAR','','','','449 8907760','','','','','','','','0','MARCELA','MACIAS','SOTO','','','','449 1042012','','','','','','','','0','','','');
INSERT INTO familia VALUES('528','3','','ROBLEDO BAEZ','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('529','3','','MUÑOZ REYNOSO ','2','','CIRCUITO DEL VALLE','116','9','FRACC. VALLE DEL CAMPANARIO ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2516126','','','2017-03-01','2017-03-08 12:38:56','EDUARDO ROBERTO','MUÑOZ','DÍAZ TORRE','','erobertomdt@hotmail.com ','','4498942400','','','','','','','','0','VERÓNICA','REYNOSO','GÓMEZ','','veroreynoso_9@hotmail.com','','4997691846','','','','','','','','0','','','');
INSERT INTO familia VALUES('530','3','','BEJARANO PALACIOS','','','Bernardo Hernández  116','','','Fracc. Ojo Caliente III','','','','','','','2017-03-01','','Víctor Hugo Bejarano González','','','','vicbej9@hotmal.com','','4491787297','','','','','','','','0','Alma Sofía Palacios Figueroa','','','','sofiafiguer@gmail.com','','4499401537','','','','','','','','0','','','');
INSERT INTO familia VALUES('531','3','','DURAN AVILA ','','','Fray Junipero Serra 110 ','','','Fracc. Villa Jardín ','','','','140-63-93','','','2017-03-01','','Alberto Duran Valverde ','','','','lic:albert@live.com.mx ','','4495545185','','','','','','','','0','Aida Marisol Avila ','','','','marichula8@hotmail.com ','','4491927208','','','','','','','','0','','','');
INSERT INTO familia VALUES('532','3','','LOPEZ RODRIGUEZ ','','','Villistas 245-29 ','','','Fracc. Montebello della Stanza ','','','','','','','2017-03-01','','Jorge Humberto López Domínguez ','','','','laejorgelopez@hotmail.com ','','4491555380','','','','','','','','0','Patricia de la Asunción Rodríguez Becerril ','','','','pr_dl@hotmail.com ','','4499061470','','','','','','','','0','','','');
INSERT INTO familia VALUES('533','3','','PEDROZA CONTRERAS ','','','Alamo 204 ','','','Fracc. El Sol. ','','','','918-96-50','','','2017-03-01','','Olegario Pedroza Saucedo','','','','','','4491449254','','','','','','','','0','Perla del Rocío Contreras Cárdenas ','','','','prc_443@yahoo.com.mx','','4491036714','','','','','','','','0','','','');
INSERT INTO familia VALUES('534','3','','ALBA LOPEZ','1','2','CIRCUITO PASEO ALAMEDA','219','','FRACC. MISIÓN ALAMEDA ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1453860','','','2017-03-01','2017-03-07 11:12:48','JUAN CARLOS','ALBA','HUERTA','','juan-carlos.alba@schneider-electric.com','','4491553927','','','','','','','','0','REBECA','LÓPEZ','PÉREZ','','rebelp2000@yahoo.com.mx','','4494946788','','','','','','','','0','','','');
INSERT INTO familia VALUES('535','3','','RIVERA MACÍAS','','','Calle 9-4 321','','','Jardínes de Casa Nueva','','','','','','','2017-03-01','','Fernando Rivera Esquivel','','','','fernando.riverae@icloud.com','','4499193820','','','','','','','','0','Mónica Teresa Macías Muñoz','','','','mtmm04@gmail.com','','4494654784','','','','','','','','0','','','');
INSERT INTO familia VALUES('536','3','','RUIZ HERNÁNDEZ','','','Av. Héroe de Nacozari 607-128 Priv. Rincón del Parque','','','Barrio de la estación','','','','9164690','','','2017-03-01','','Diego Armando Ruíz Méndez','','','','diego.ruiz01@cfe.gdo.mx','','47331224884','','','','','','','','0','Deisi Hernández Briones','','','','briones_387@hotmail.com','','4731084647','','','','','','','','0','','','');
INSERT INTO familia VALUES('537','3','','PEREZ PADILLA','','','Sierra de las Palomas 215','','','Bosques del Prado Sur','','','','9129659','','','2017-03-01','','Luis Genaro Pérez Barba','','','','','','4491040278','','','','','','','','0','Nelly Karina Padilla Padilla','','','','karinapadillapp@hotmail.com','','4491567667','','','','','','','','0','','','');
INSERT INTO familia VALUES('538','3','','CHAVEZ GUTIERREZ','','','Cerrada Navidad #148','','','Villatany','','','','no hay','','','2017-03-01','','César Alberto Chávez Meza','','','','cchm70@yahoo.com.mx','','4491228645','','','','','','','','0','Erika Josefina Gutiérrez Veloz','','','','erikagtzvel@gmail.com','','4493291874','','','','','','','','0','','','');
INSERT INTO familia VALUES('539','3','','VELASCO RODRIGUEZ ','','','Colibri 112 ','','','Fracc. Jardines del Lago ','','','','976-09-31','','','2017-03-01','','Carlos Velasco Velasco ','','','','carlosyyazminvelasco@gmail.com ','','4491874374','','','','','','','','0','Yazmin Sarida Rodríguez Quezada ','','','','carlosyyazminvelasco@gmail.com ','','4494631857','','','','','','','','0','','','');
INSERT INTO familia VALUES('540','3','','MARMOLEJO DELGADO','','','Circuito el Roble #110','','','Arboledas de Paso Blanco','','','','158223','','','2017-03-01','','José Luis Marmolejo Cervantes','','','','jlm.ags.mx@gmail.com','','4499114403','','','','','','','','0','María de los Angeles Delgado Esqueda','','','','angidel77@gmail.com','','4492627781','','','','','','','','0','','','');
INSERT INTO familia VALUES('541','3','','SERRANO NIETO','','','Cerrada de Monserrate NO. 105','','','Fracc. Canteras de San Agustín ','','','','2514087','','','2017-03-01','','Diego Serrano Hernández','','','','irc9@rocketmail.com','','4492617471','','','','','','','','0','Carla Nieto González','','','','carlanietog@gmail.com','','4499600487','','','','','','','','0','','','');
INSERT INTO familia VALUES('542','3','','CHAVEZ DELGADILLO','','','POTREROS','510','','FRACC. VILLAS DEL CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2517234','','','2017-03-01','2017-03-13 11:33:15','JUAN DE DIOS','CHAVEZ','SILVA','','juandedioschavezsilva@gmail.com','','4495539288','','','','','','','','0','BEATRIZ EUGENIA','DELGADILO','RODRIGUEZ','','genny.eltexano@hotmail.com','','4499306409','','','','','','','','0','','','');
INSERT INTO familia VALUES('543','3','','ARAIZA JIMENEZ','1','','AV. VILLAPLATA','339','','FRACC. ALCAZAR ','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','9725086','','','2017-03-01','2017-03-08 13:40:07','GERARDO','ARAIZA','GARAYGORDOBIL','','garaizag@gmail.com','','4495488861','','','','','','','','0','ERIKA DEL CARMEN','JIMENEZ','JIMENEZ','','erikadelcarmenjj@gmail.com','','4499997061','','','','','','','','0','','','');
INSERT INTO familia VALUES('544','3','','GRANIEL ANGEL','1','','TALAVANTE','108','','FRACC. PUERTA GRANDE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2382235','','','2017-03-01','2017-03-08 12:28:36','RODRIGO','GRANIEL','PALACIOS','','rodrigo_graniel@hotmail.com','','4494659065','','','','','','','','0','EDITH','ANGEL','CARDENAS','','edithangelcardenas@hotmail.com','','4494659066','','','','','','','','0','','','');
INSERT INTO familia VALUES('545','3','','DELGADO SOLEDAD','3','','HUMAHUACA','24','','FRACC. QUINTAS DE MONTICELLO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2516114','','','2017-03-01','2017-03-08 13:35:01','FRANCISCO JAVIER','DELGADO','MARTINEZ','','ing.delgado@gmail.com','','449 1066626','','','','','','','','0','LAURA DENISSE','SOLEDAD','PEREZ','','denisse.soledad@gmail.com','','4491962260','','','','','','','','0','','','');
INSERT INTO familia VALUES('546','3','','GOMEZ JUNCO','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('547','3','','RAMIREZ CERVANTES ','','','Jardín de las Gardenias 110 A ','','','Fracc. Jardines del Campestre ','','','','','','','2017-03-01','','Victor Manuel Ramírez Ontiveros ','','','','vrontiveros@gmail.com ','','3339688678','','','','','','','','0','Lizh Janette Cervantes Ocampo ','','','','jnt_co@hotmail.com','','4494647969','','','','','','','','0','','','');
INSERT INTO familia VALUES('548','3','','RAMÍREZ DE ARELLANO PONCE','1','1','ARROYO BUENAVISTA','5','','TRES ARROYOS','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','1945560','','','2017-03-01','2017-03-13 11:27:49','SEBASTIAN','RAMÍREZ DE ARELLANO','AGUILAR','','promotorabajio@gmail.com','','4498941817','','','','','','','','0','ALEJANDRA','PONCE','HERNÁNDEZ','','aleponce74@hotmail.com','','4498961584','','','','','','','','0','','','');
INSERT INTO familia VALUES('549','3','','MAGALLANES JIMENEZ','1','','AV. PASEO DEL CAMPESTRE','119','','Q CAMPESTRE','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-08 13:38:40','LUIS','MAGALLANES','REIMERS','','luis_magallanes74@hotmail.com','','4491118397','','','','','','','','0','LUZ DEL CARMEN','JIMENEZ','GONZÁLEZ','','chapinga_4@hotmail.com','','4498943780','','','','','','','','0','','','');
INSERT INTO familia VALUES('550','3','','RAMIREZ BARBA','1','','CIRCUITO BOREALIS','167','','LA AURORA I','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-02 11:49:12','LUIS ARTURO','RAMIREZ','ARELLANO','','jack13bc@hotmail.com','','4931310516','','','','','','','','0','MARÍA ELENA','BARBA','LÓPEZ','','maryelbl@hotmail.cvom','','4931202247','','','','','','','','0','','','');
INSERT INTO familia VALUES('551','3','','ORTIZ DE ALBA','2','','AV DE LAS MISIONES','207','','LA PALOMA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','3942817','','','2017-03-01','2017-03-08 13:37:11','ARTURO','ORTIZ','TELLO','','arturotello31@gmail.com','','4498942817','','','','','','','','0','PAOLA','DE ALBA','CÁRDENAS','','paoladac23@gmail.com','','449 4062199','','','','','','','','0','','','');
INSERT INTO familia VALUES('552','3','','MARTÍNEZ VELÁZQUEZ','3','','LA TROJE','129','','FRACC. VIÑA ANTIGUA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','242 69 33','','','2017-03-01','2017-03-08 11:59:12','JOSÉ ANGEL','MARTÍNEZ','CRUZ','','jach_82@hotmail.com','','2423314','','','','','','','','0','PAOLA','VELÁZQUEZ','BENARD','','pvbenard@hotmail.com','','2426933','','','','','','','','0','','','');
INSERT INTO familia VALUES('553','3','','GONZALEZ MACIAS','','','Margil de Jesus #1704','','','Fracc. Arboledas','','','','9122082','','','2017-03-01','','Manuel Alejandro González Martínez','','','','manuel.gonzalez@agroin.com.mx','','4498042472','','','','','','','','0','Norma Angélica Macías Alonso','','','','n.a.macias@hotmail.com','','4494159304','','','','','','','','0','','','');
INSERT INTO familia VALUES('554','3','','','','','','','','','','','','','','','2017-03-01','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('555','3','','LOPEZ RENDON','','','Circuito del Valle #116-3','','','Cerrada el Campanario, Valle del Campanario','','','','2512944','','','2017-03-01','','José Manuel López Martínez','','','','manuel_lm@hotmail.com','','4492018087','','','','','','','','0','Pamela Rendón Romo','','','','pamela_rendon@hotail.com','','4491424639','','','','','','','','0','','','');
INSERT INTO familia VALUES('556','0','','VAZQUEZ ORTEGA','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','','');
INSERT INTO familia VALUES('557','3','','VAZQUEZ ORTEGA','1','','ARROYO YERBABUENA','6','31','RUSCELLO','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','','','','2017-03-01','2017-03-13 12:14:23','EDSON DIEGO','VAZQUEZ','ROMERO','','','','449 178 98 44','','','','','','','','0','ESTEFANIA','ORTEGA','BARBA','','','','449 898 12 37','','','','','','','','0','','','');
INSERT INTO familia VALUES('558','3','','HERNANDEZ MORENO ','1','','SAN JULIO ALVAREZ MENDOZA','143','','MISION SANTA LUCIA','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','977 10 89','','','2017-03-01','2017-03-07 09:07:42','IRVING A.','HERNANDEZ','CASTAÑON','','','','449 897 86 69','','','','','','','','0','BLANCA JANETT','MORENO','BECERRA','','','','449 155 24 35','','','','','','','','0','','','');
INSERT INTO familia VALUES('559','3','','PACHECO MORENO','','','Av. Santoral 117-112','','','Fracc. Hacienda San Marcos','','','','2416227','','','2017-03-01','','Salvador Pacheco Tiscareño','','','','salvador.pacheco@bva.com','','4492740858','','','','','','','','0','Ñora Itzel Moreno Martínez','','','','ninl33@hotmail.com','','4492416227','','','','','','','','0','','','');
INSERT INTO familia VALUES('560','3','','DIOSDADO DAVILA','','','MANATIAL DE LA MEDIA LUNA','415','','FRACC. CEDROS RESIDENCIAL','AGUASCALIENTES','AGUASCALIENTES','AGUASCALIENTES','2512107','','','2017-03-01','2017-03-13 11:31:18','GUILLERMO ARTURO','DIOSDADO','BRECEDA','','gdiosdado@hotmail.com','','4491557974','','','','','','','','0','MARTHA ROSA','DÁVILA','CALZADA','','marthardc80@hotmail.com','','4491961078','','','','','','','','0','','','');
INSERT INTO familia VALUES('561','3','','DIOSDADO DAVILA','','','Manatial de la Media Luna #415','','','Fracc. Cedros Residencial','','','','2512107','','','2017-03-01','','Guillermo Arturo Diosdado Breceda','','','','gdiosdado@hotmail.com','','4491557974','','','','','','','','0','Martha Rosa Dávila Calzada','','','','marthardc80@hotmail.com','','4491961078','','','','','','','','0','','','');



DROP TABLE IF EXISTS hijo_familia;

CREATE TABLE `hijo_familia` (
  `id_hijo_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` int(11) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `nivel_grado_cursar` varchar(255) DEFAULT NULL,
  `institucion` varchar(255) DEFAULT NULL,
  `colegiatura_pasado` decimal(50,2) DEFAULT NULL,
  `colegiatura_actual` decimal(50,2) DEFAULT NULL,
  `beca_actual` varchar(255) DEFAULT NULL,
  `fuente_apoyo` varchar(255) DEFAULT '0.00',
  `apoyo_solicitado` decimal(50,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comentarios` text,
  `otras_colegiaturas` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_hijo_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO hijo_familia VALUES('1','450','7','2017-KP-7','JORGE','DIAZ DE LEON','CAMARERO','2','','','KINDER I','KP','4200.00','2720.00','20','KP','3360.00','R','Los papás desean que sus hijos continúen en la institución, sin embargo es difícil cubrir el total de las colegiaturas.','0','');
INSERT INTO hijo_familia VALUES('2','450','7','2017-KP-7','JOEL','DIAZ DE LEON','CAMARERO','6','','','6° PRIMARIA','CEE','5980.00','3192.00','20','CEE','4784.00','R','LOS PAPÁS DESEAN QUE SUS HIJOS CONTINÚEN EN ÉSTA INSTITUCIÓN, SIN EMBARGO ES DIFÍCIL CUBRIR EL TOTAL DE LAS COLEGIATURAS.','0','');
INSERT INTO hijo_familia VALUES('3','1','1','2017-CEE-1','REGINA','','','14','','regina@gmail.com','2° SECUNDARIA','CET','6500.00','1000.00','0','-','2500.23','OK','COM','0','');
INSERT INTO hijo_familia VALUES('4','1','1','2017-CEE-1','ANDRES','','','4','','andres@gmail.com','KINDER II','','0.00','1600.00','0','-','0.00','-','','0','');
INSERT INTO hijo_familia VALUES('5','1','1','2017-CEE-1','RICARDO','','','13','','','1° SECUNDARIA','CEE','6500.00','5350.00','0','-','2000.00','-','com','0','');
INSERT INTO hijo_familia VALUES('6','1','1','2017-CEE-1','BARNANDO','','','9','','','4° PRIMARIA','CEE','5650.00','5650.00','0','-','2000.00','-','-','0','');



DROP TABLE IF EXISTS ingresos_familia;

CREATE TABLE `ingresos_familia` (
  `id_ingreso_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `num_personas_aportan` int(255) DEFAULT NULL,
  `consecutivo_ingreso` varchar(255) DEFAULT NULL,
  `sueldo_papa` decimal(60,2) DEFAULT NULL,
  `sueldo_mama` decimal(60,2) DEFAULT NULL,
  `ingreso_otros_miembros` decimal(60,2) DEFAULT NULL,
  `ingreso_renta` decimal(60,2) DEFAULT NULL,
  `ingreso_honorarios` decimal(60,2) DEFAULT NULL,
  `ingreso_inversiones` decimal(60,2) DEFAULT NULL,
  `ingreso_pensiones` decimal(60,2) DEFAULT NULL,
  `ingreso_ventas` decimal(60,2) DEFAULT NULL,
  `otros_ingresos` decimal(60,2) DEFAULT NULL,
  `total_otros_ingresos` decimal(60,2) DEFAULT NULL,
  `total_ingresos` decimal(60,2) DEFAULT NULL,
  `ingreso_percapita` decimal(60,2) DEFAULT NULL,
  `clasificacion` varchar(255) DEFAULT NULL,
  `otros_comentario` text,
  PRIMARY KEY (`id_ingreso_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO ingresos_familia VALUES('1','450','7','2017-KP-7','1','','32000.00','0.00','0.00','3500.00','0.00','0.00','0.00','0.00','0.00','3500.00','35500.00','8875.00','B','');
INSERT INTO ingresos_familia VALUES('2','1','1','2017-CEE-1','2','','27484.00','12401.00','0.00','0.00','0.00','0.00','0.00','0.00','10000.00','10000.00','49885.00','8314.17','B','del abuelo');



DROP TABLE IF EXISTS institucion;

CREATE TABLE `institucion` (
  `id_institucion` int(11) NOT NULL AUTO_INCREMENT,
  `clave_institucion` varchar(255) NOT NULL,
  `nombre_institucion` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_institucion`,`clave_institucion`),
  KEY `id_institucion` (`id_institucion`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO institucion VALUES('1','CEE','Institucion CEE','2017-03-01 22:29:42','');
INSERT INTO institucion VALUES('4','NICET','Institucion NICET','2017-03-01 22:29:42','');
INSERT INTO institucion VALUES('2','CET','Institucion CET','2017-03-01 22:29:42','');
INSERT INTO institucion VALUES('3','KP','Institucion KP','2017-03-01 22:29:42','');



DROP TABLE IF EXISTS motivo_familia;

CREATE TABLE `motivo_familia` (
  `id_motivo` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` int(11) DEFAULT NULL,
  `id_estudio` int(11) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `tipo_motivo` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_motivo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO motivo_familia VALUES('1','450','7','2017-KP-7','II','Los niños cambiarán de grado y el costo de la colegiatura se elevará considerablemente, por lo que sería muy difícil cubrir el total de las colegiaturas.');



DROP TABLE IF EXISTS padre_familia;

CREATE TABLE `padre_familia` (
  `id_padre_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` int(11) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `profesion` varchar(255) DEFAULT NULL,
  `ocupacion` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `giro` varchar(255) DEFAULT NULL,
  `dueno` varchar(255) DEFAULT NULL,
  `antiguedad` varchar(255) DEFAULT NULL,
  `sueldo_neto` decimal(65,2) DEFAULT NULL,
  `tipo_persona` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_padre_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO padre_familia VALUES('2','450','7','JOEL','DÍAZ DE LEÓN','MARTÍNEZ','','','joel_dlm@hotmail.com','','4448284535','ING.  MECATRÓNICA','EMPLEADO','GRUPO SAN PEDRO','ADMINISTRADOR GRAL.','AGRARIO','NO','3 AÑOS','32000.00','PAPA');
INSERT INTO padre_familia VALUES('3','450','7','ANA MARCELA','CAMARERO','VARGAS','34','','amarcelacv@gmail.com','','4445808998','LIC. COMERCIO INTERNACIONAL','AMA DE CASA','','','','','','0.00','MAMA');
INSERT INTO padre_familia VALUES('4','1','1','ALEJANDRO','VALDEZ','SANTACRUZ','','','cano6666@yahoo.com ','','4499048599','','','Bomboaoisdiahsiduhaidshaiuhds','ADMINISTRADOR','','SI','','27484.00','PAPA');
INSERT INTO padre_familia VALUES('5','1','1','MA. ISABEL','CASILLAS','PELLAT','','','isacasillas_4@hotmail.com ','','4498946773','','','Pamap','AMA DE CASA','','','','12401.00','MAMA');



DROP TABLE IF EXISTS propiedad_familia;

CREATE TABLE `propiedad_familia` (
  `id_propiedad_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tiempo_habitar` varchar(255) DEFAULT NULL,
  `superficie_terreno` varchar(255) DEFAULT NULL,
  `superficie_construccion` varchar(255) DEFAULT NULL,
  `monto_renta` varchar(255) DEFAULT NULL,
  `valor_comercial_actual` varchar(255) DEFAULT NULL,
  `cantidad_adeuda` varchar(255) DEFAULT NULL,
  `tiempo_resta_deuda` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_propiedad_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO propiedad_familia VALUES('1','450','7','2017-KP-7','Prestada','3 años','160','200','','1,430,000','','');



DROP TABLE IF EXISTS usuario;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO usuario VALUES('1','admin','d033e22ae348aeb5660fc2140aec35850c4da997','admin','admin','admin','','1');
INSERT INTO usuario VALUES('2','rosy','287ec2506bda290a1c090edfb4079b06963d43cf','rosy','Rosy','','','1');
INSERT INTO usuario VALUES('4','oscar','2dff4fc90e2973f54d62e257480de234bc59e2c4','oscar','Oscar','','','1');
INSERT INTO usuario VALUES('5','nora','56e60e1f1e4644a9f9eaa17f9c5b338e27853a7f','nora','Nora','','','2');
INSERT INTO usuario VALUES('3','gaby','263a5b07b4ab80f18c831193c7f85249548cb9f9','gaby','Gaby','','','2');
INSERT INTO usuario VALUES('6','claudia','568095ee7b98b0afceb32540a1ca5540eaa72666','','Claudia','','','2');
INSERT INTO usuario VALUES('7','perla','26f2c0b48c6b479a99edd55ffd481e778741d81f','','Perla','','','2');
INSERT INTO usuario VALUES('8','paty','6f1f8bd9bb2c4d807cccb8995cd712afa6c497a1','','Paty','','','2');
INSERT INTO usuario VALUES('9','july','aa0002a70cd09a99d3cce5ebda67fcea21a638e4','','July','','','2');
INSERT INTO usuario VALUES('10','adry','b729ceb7cca196117d92d663b882e6be86d8bca1','','Adry','','','2');
INSERT INTO usuario VALUES('11','karen','55107e193e648a27778fa98736b2e8e24b3cd6e1','','Karen','','','2');
INSERT INTO usuario VALUES('12','vero','74e1914d2411413ff9ed0b525e5ee3cb88901bba','','Vero','','','2');



DROP TABLE IF EXISTS usuario_institucion;

CREATE TABLE `usuario_institucion` (
  `id_usuario_institucion` int(11) NOT NULL AUTO_INCREMENT,
  `id_institucion` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_institucion`),
  KEY `fk_institucion_1` (`id_institucion`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO usuario_institucion VALUES('1','2','cet','bb8c918137d6783be2127ba0792a89db186fb271','cet','cet','cet','cet','1');
INSERT INTO usuario_institucion VALUES('2','3','kp','513c04e7aebf88939f3d070f28b1c5fbbba443de','kp','kp','kp','kp','1');
INSERT INTO usuario_institucion VALUES('3','4','nicet','b67893e0e8296e1063af3a1e159cf349ebad86a4','nicet','nicet','nicet','nicet','1');
INSERT INTO usuario_institucion VALUES('6','1','cee','0ffefe9d887a2216346f4c38237205bdbbc685df','cee','cee','cee','cee','1');



DROP TABLE IF EXISTS vehiculo_familia;

CREATE TABLE `vehiculo_familia` (
  `id_vehiculo_familia` int(11) NOT NULL AUTO_INCREMENT,
  `id_familia` varchar(255) DEFAULT NULL,
  `id_estudio` varchar(255) DEFAULT NULL,
  `folio_estudio` varchar(255) DEFAULT NULL,
  `propietario` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `anio` varchar(255) DEFAULT NULL,
  `valor_comercial_actual` varchar(255) DEFAULT NULL,
  `cantidad_adeuda` varchar(255) DEFAULT NULL,
  `pago_mensual` varchar(255) DEFAULT NULL,
  `pago_mensual_credito` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo_familia`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO vehiculo_familia VALUES('1','450','7','2017-KP-7','MADRE','','Fit','2007','85,000','0','0','');
INSERT INTO vehiculo_familia VALUES('2','450','7','2017-KP-7','PADRE','Toyota','Rav4','2005','95,000','0','0','');



