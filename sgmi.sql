/*
 Navicat Premium Data Transfer

 Source Server         : Skynet
 Source Server Type    : MySQL
 Source Server Version : 100144
 Source Host           : 172.19.216.12:3306
 Source Schema         : sgmi

 Target Server Type    : MySQL
 Target Server Version : 100144
 File Encoding         : 65001

 Date: 03/05/2021 14:52:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for averias
-- ----------------------------
DROP TABLE IF EXISTS `averias`;
CREATE TABLE `averias`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nm_averia_id` bigint(20) UNSIGNED NOT NULL,
  `nm_departamento_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` int(11) NOT NULL DEFAULT 1,
  `num_reporte_etecsa` bigint(20) NULL DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `solucion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `solucion_user` int(11) NULL DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `averias_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `averias_nm_averia_id_foreign`(`nm_averia_id`) USING BTREE,
  INDEX `averias_nm_departamento_id_foreign`(`nm_departamento_id`) USING BTREE,
  CONSTRAINT `averias_nm_averia_id_foreign` FOREIGN KEY (`nm_averia_id`) REFERENCES `nm_averias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `averias_nm_departamento_id_foreign` FOREIGN KEY (`nm_departamento_id`) REFERENCES `nm_departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `averias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of averias
-- ----------------------------
INSERT INTO `averias` VALUES (1, 3, 9, 20, 'PC-225442', 1, NULL, 3, 'Pc con problema en la tarjeta de red', 'Se remplazo la tarjeta de red que estaba defectuosa.', 3, 1, '2020-11-11 19:59:07', '2020-11-12 08:17:49');
INSERT INTO `averias` VALUES (2, 3, 9, 29, 'PC CON INV 130837', 1, NULL, 3, 'Pc con problema en la tarjeta de red', 'Se puso una tarjeta de red', 3, 1, '2020-11-11 20:00:38', '2020-11-12 09:23:22');
INSERT INTO `averias` VALUES (4, 3, 12, 24, 'PC CON INV 213006', 1, NULL, 3, 'PC con board obsoleta la cual no soporta el sistema operativo w10 para trabajar en la red', 'PC propuesta para baja por motherboard obsoleta', 6, 1, '2020-11-13 10:45:22', '2020-11-16 16:01:26');
INSERT INTO `averias` VALUES (5, 6, 10, 33, 'SERVIDOR SIGECO', 1, NULL, 2, 'La PC no enciende, o enciende y aleatroriamente se apaga', NULL, NULL, 1, '2020-11-16 09:33:51', '2021-02-15 07:39:17');
INSERT INTO `averias` VALUES (6, 1, 10, 38, 'KENIA FERNáNDEZ', 1, NULL, 3, 'PC con sistema operativo dañado', 'se limpió la ram', 8, 1, '2020-11-17 10:21:29', '2020-11-18 12:01:58');
INSERT INTO `averias` VALUES (7, 3, 5, 22, 'MOUSE CON INV 225519', 1, NULL, 3, 'inestabilidad en la precision del mouse', 'dar baja al mouse y reponer con otro nuevo', 6, 1, '2020-11-19 08:31:20', '2020-11-19 12:31:19');
INSERT INTO `averias` VALUES (8, 8, 19, 39, 'ONURE', 1, NULL, 3, 'MODERNIZAR SISTEMA OPERATIVO', 'Se reinstaló la pc con W10.', 8, 1, '2020-11-19 09:12:28', '2020-11-19 12:45:36');
INSERT INTO `averias` VALUES (9, 8, 19, 38, 'ATENCION AL CLIENTE', 1, NULL, 3, 'sistema operativo dañado', 'se reinstaló nuevamente la pc', 8, 1, '2020-11-20 10:34:52', '2020-11-20 10:35:40');
INSERT INTO `averias` VALUES (10, 3, 11, 30, 'RUSKY', 1, NULL, 3, 'Laptop  con inv 231754 fuera del dominio de la red eleccmg', 'Se unio al dominio eleccmg', 3, 1, '2020-11-24 09:48:51', '2021-02-15 07:37:36');
INSERT INTO `averias` VALUES (11, 3, 10, 30, 'RUSKY', 1, NULL, 3, 'Pc con inv 213788 con problema en el espacio de la particion de so', 'Se reparticiono la particion del so para que tuviera mas espacio', 3, 1, '2020-11-24 10:04:44', '2020-11-24 13:23:16');
INSERT INTO `averias` VALUES (12, 2, 19, 13, 'ISIS', 1, NULL, 2, 'instalacion de sistema operativo', NULL, NULL, 1, '2020-11-24 10:07:45', '2021-02-15 07:39:32');
INSERT INTO `averias` VALUES (13, 8, 19, 38, 'ATENCION AL CLIENTE', 1, NULL, 3, 'LOGS LLENO', 'SE VACIARON LOS LOGS', 8, 1, '2020-11-24 13:48:33', '2020-11-24 13:49:20');
INSERT INTO `averias` VALUES (14, 8, 19, 38, 'ATENCION AL CLIENTE', 1, NULL, 3, 'PANTALLA AZUL', 'REINSTALACION DE LA PC', 8, 1, '2020-11-24 13:49:52', '2020-11-24 13:50:21');
INSERT INTO `averias` VALUES (15, 3, 10, 28, 'COMERCIAL STA CRUZ', 1, NULL, 2, 'PC con inv 219724 enciende pero no da video', NULL, NULL, 1, '2020-11-24 14:59:48', '2021-02-15 07:39:40');
INSERT INTO `averias` VALUES (16, 2, 10, 17, 'HECATE', 1, NULL, 3, 'tarjeta de red y board defectuosa', 'Se le cambio la motherboard', 6, 1, '2020-11-27 10:04:37', '2020-11-30 15:53:46');
INSERT INTO `averias` VALUES (17, 2, 10, 31, 'SPACE', 1, NULL, 2, 'pc con problemas de sistema operativo', NULL, NULL, 1, '2020-12-03 09:09:41', '2021-02-15 07:40:02');
INSERT INTO `averias` VALUES (18, 2, 6, 33, 'DEPORTIVO', 1, NULL, 2, 'pc con problemas de video', NULL, NULL, 1, '2020-12-03 09:16:40', '2021-02-15 07:40:09');
INSERT INTO `averias` VALUES (19, 3, 10, 15, 'OBE MUNICIPAL', 1, NULL, 3, 'PC con inv 111236 que presenta sintomas de ram sucia', 'Se limpio la ram y funciona correctamente', 3, 1, '2020-12-07 14:06:43', '2020-12-07 14:07:13');
INSERT INTO `averias` VALUES (20, 3, 11, 24, 'LIUSBER', 1, NULL, 3, 'Pc con inv 213820 que estaba en el dominio antiguo del  municipio', 'Se unio al dominio y se le mejoro la memoria ram', 3, 1, '2020-12-10 16:11:27', '2020-12-10 16:14:44');
INSERT INTO `averias` VALUES (21, 3, 19, 14, 'DISMAR', 1, NULL, 3, 'Laptop con inv 224564 con SO obsoleto', 'Se reinstalo la pc a windows 10', 3, 1, '2020-12-10 16:12:43', '2020-12-10 16:15:54');
INSERT INTO `averias` VALUES (22, 3, 11, 36, 'RUSKI', 1, NULL, 3, 'Laptop con inv 230174 con el dominio antiguo de su municipio', 'Se le asigno una direccion ip y se unio al dominio eleccmg', 3, 1, '2020-12-10 16:13:34', '2020-12-11 11:15:20');
INSERT INTO `averias` VALUES (23, 3, 10, 23, 'OLGA', 1, NULL, 3, 'Pc coon inv 215261 con problema de ram sucio', 'Se limpio la memoria RAM', 3, 1, '2020-12-11 11:16:58', '2021-02-15 07:40:47');
INSERT INTO `averias` VALUES (24, 3, 19, 23, 'OLGA', 1, NULL, 3, 'Pc con inv 1048874 con windows 7', 'Se reinstalo la pc con w10', 3, 1, '2020-12-11 11:18:45', '2021-02-15 07:41:21');
INSERT INTO `averias` VALUES (25, 3, 13, 16, 'KATIA', 1, NULL, 3, 'Pc con problema en el Office', 'La pc con inv 130735 se reintalo el so a la ultima version de w10', 3, 1, '2020-12-17 12:56:39', '2020-12-17 12:57:44');
INSERT INTO `averias` VALUES (26, 3, 13, 30, 'RUSKY', 1, NULL, 3, 'Laptop con inv 230178 traida para intalar el autocad', 'Se le intalo el autocad 2019', 3, 1, '2020-12-17 12:59:27', '2020-12-17 12:59:51');
INSERT INTO `averias` VALUES (27, 3, 19, 17, 'MARIENNE', 1, NULL, 3, 'Pc con problemas al levantar el so debido al estado del HDD', 'Se cambio el HDD y se reintalo la PC a la ultima version de w10', 3, 1, '2020-12-21 12:17:25', '2020-12-22 10:56:23');
INSERT INTO `averias` VALUES (28, 3, 19, 14, 'ARIEL', 1, NULL, 3, 'Pc con inv 212071 con problema en el so', 'Se reinstalo la pc', 3, 1, '2020-12-21 16:18:31', '2021-02-15 07:41:45');
INSERT INTO `averias` VALUES (29, 3, 19, 14, 'JOSE FERNANDEZ', 1, NULL, 3, 'Pc con inv 231598 con problema en el so', 'Se reinstalo la pc', 3, 1, '2020-12-21 16:19:41', '2021-02-15 07:42:04');
INSERT INTO `averias` VALUES (30, 3, 10, 23, 'DARIEL BASULTO', 1, NULL, 3, 'PC con inv 229162 con la ram sucia', 'Se le limpio la ram', 3, 1, '2020-12-22 10:55:27', '2020-12-22 10:55:49');
INSERT INTO `averias` VALUES (31, 3, 19, 40, 'CESAR', 1, NULL, 3, 'Pc con inv 41884 con problema en reconocer el HDD', 'Se cambio el HDD el cual estaba defectuoso', 3, 1, '2020-12-22 12:22:36', '2021-02-15 07:42:39');
INSERT INTO `averias` VALUES (32, 3, 19, 14, 'MIGUEL', 1, NULL, 3, 'Pc con inv 213546 con el disco de sistema lleno', 'Se le limpio los logs de la pc', 3, 1, '2020-12-24 08:55:14', '2020-12-24 08:55:51');
INSERT INTO `averias` VALUES (33, 3, 10, 14, 'ORLANDO', 1, NULL, 3, 'Pc con inv 213793 para reintalar el SO', 'Se reinstalo la pc con w10', 3, 1, '2020-12-24 08:57:29', '2021-02-15 07:42:59');
INSERT INTO `averias` VALUES (34, 3, 19, 4, 'ARIEL', 1, NULL, 3, 'Pc con inv 231380 con problema al cargar el so', 'Se reinstalo la pc a la ultima version de w10', 3, 1, '2020-12-24 11:16:31', '2020-12-24 11:17:10');
INSERT INTO `averias` VALUES (35, 4, 10, 23, 'DARIEL BASULTO', 1, NULL, 2, 'se cambia la fuente interna', NULL, NULL, 1, '2020-12-28 12:19:02', '2021-01-05 14:49:45');
INSERT INTO `averias` VALUES (36, 3, 10, 23, 'DARIEL BASULTO', 1, NULL, 3, 'Pc con inv 229391 que presenta problemas en el SO y problemas al encender', 'Se le cambio la fuente y funciona correctamente', 3, 1, '2021-01-04 15:33:01', '2021-01-06 15:59:07');
INSERT INTO `averias` VALUES (37, 3, 19, 39, 'ONURE', 1, NULL, 3, 'Pc con inv 18020 con windows obsoleto', 'Se reinstalo la pc a la ultima version de w10', 3, 1, '2021-01-04 15:35:50', '2021-01-05 14:49:11');
INSERT INTO `averias` VALUES (38, 3, 10, 6, 'YUDENIS', 1, NULL, 2, 'Pc con inv 232863 que no enciende', NULL, NULL, 1, '2021-01-05 14:53:29', '2021-02-15 07:43:01');
INSERT INTO `averias` VALUES (39, 3, 10, 33, 'ROBERTO', 1, NULL, 2, 'Pc con inv 211638 con problema en el HDD', NULL, NULL, 1, '2021-01-18 12:42:12', '2021-02-15 07:43:10');
INSERT INTO `averias` VALUES (40, 3, 19, 33, 'ROBERTO', 1, NULL, 3, 'Pc de inv 210902 con problema en el SO', 'Se reinstalo la pc', 3, 1, '2021-01-18 12:43:14', '2021-01-18 12:43:35');
INSERT INTO `averias` VALUES (41, 3, 10, 29, 'ROGER', 1, NULL, 3, 'Pc con inv 225423 con problema el los puetos usb', 'Se cambio la board', 3, 1, '2021-01-21 07:41:47', '2021-02-15 07:43:55');
INSERT INTO `averias` VALUES (42, 3, 19, 41, 'YOAN', 1, NULL, 3, 'Laptop Dell para instalar el SO', 'Se instalo la laptop', 3, 1, '2021-02-01 08:33:08', '2021-02-04 08:54:02');
INSERT INTO `averias` VALUES (43, 4, 19, 14, 'ROMULO', 2, NULL, 2, 'reinstalación de sistema operativo', NULL, NULL, 1, '2021-02-04 14:29:06', '2021-02-04 14:55:19');
INSERT INTO `averias` VALUES (44, 4, 19, 14, 'GUAIMARO', 2, NULL, 2, 'reinstalación de sistema operativo', NULL, NULL, 1, '2021-02-04 14:43:38', '2021-02-04 14:56:08');
INSERT INTO `averias` VALUES (45, 4, 10, 13, 'OBE JIMAGUAYU', 1, NULL, 2, 'se le realizó mantenimiento', NULL, NULL, 1, '2021-02-04 14:48:17', '2021-02-15 07:43:58');
INSERT INTO `averias` VALUES (46, 4, 19, 19, 'KONKA', 1, NULL, 2, 'se reinstaló sistema operativo', NULL, NULL, 1, '2021-02-04 14:50:09', '2021-02-09 11:52:55');
INSERT INTO `averias` VALUES (47, 10, 19, 2, 'OCTAVIUS', 1, NULL, 2, 'A la PC con inventario 226978 perteneciente a la UEB de Informática y Comunicaciones, le fue cambiado el disco duro e instalado el SO.', NULL, NULL, 1, '2021-02-05 10:06:46', '2021-02-10 10:34:30');
INSERT INTO `averias` VALUES (48, 10, 20, 42, 'ANFIELD', 1, NULL, 3, 'Registros de seguridad llenos', 'Se salvaron y vaciaron los registros del sistema.', 10, 1, '2021-02-09 11:46:16', '2021-02-09 11:54:31');
INSERT INTO `averias` VALUES (49, 10, 21, 42, 'BOOK', 1, NULL, 2, 'Se instala el NetTime para sincronizar hora del sistema con el servidor NTP', NULL, NULL, 1, '2021-02-09 11:48:08', '2021-02-15 07:44:16');
INSERT INTO `averias` VALUES (50, 3, 19, 25, 'ONEIDA', 1, NULL, 3, 'Pc con inv 160745 con problema en el SO', 'Se reinstalo la pc', 3, 1, '2021-02-10 16:36:11', '2021-02-15 09:33:07');
INSERT INTO `averias` VALUES (51, 4, 10, 14, 'UEB SIBANICU', 1, NULL, 3, 'pc no enciende', 'se le da mantenimiento a la pc, quedando operativa nuevamente', 4, 1, '2021-02-16 07:55:02', '2021-02-16 07:56:20');
INSERT INTO `averias` VALUES (52, 3, 22, 39, 'AMERICA', 1, NULL, 3, 'Pc con problema con el Office', 'Se cambio el Office instalado', 3, 1, '2021-02-19 10:09:16', '2021-02-19 10:17:45');
INSERT INTO `averias` VALUES (53, 6, 9, 30, 'MUNICIPIO SIN RED', 1, 76730, 2, 'Reportado desde las 9 Am del 24/02/2021', NULL, NULL, 1, '2021-02-25 11:45:06', '2021-04-01 08:36:42');
INSERT INTO `averias` VALUES (54, 6, 9, 31, 'MUNICIPIO SIN RED', 1, 6727, 2, 'Reportado desde el municipio 24/02/2021 a las 9 AM, se reporto el enlace el 25 a las8 AM', NULL, NULL, 1, '2021-02-25 11:46:08', '2021-03-03 12:52:25');
INSERT INTO `averias` VALUES (55, 6, 9, 20, 'MUNICIPIO SIN RED', 1, 76522, 2, 'Reportado desde el municipio a las 9 AM del 24/02/2021 se reporta por la empresa el 25/02 a las 8 AM', NULL, NULL, 1, '2021-02-25 11:48:20', '2021-03-31 10:58:19');
INSERT INTO `averias` VALUES (56, 10, 9, 31, 'REPORTE A ETECSA DEL ENLACE DE JIMAGUAYU', 1, 6727, 1, 'Se reporta a ETECSA el enlace de datos de Jimaguayu.', NULL, NULL, 1, '2021-02-26 10:13:26', '2021-02-26 10:13:26');
INSERT INTO `averias` VALUES (57, 10, 9, 30, 'REPORTE A ETECSA DE ENLACE DE DATOS DE SIBANICU', 1, 76730, 1, 'Se reporta a ETECSA el enlace de datos de la OBE de Sibanicu.', NULL, NULL, 1, '2021-02-26 10:14:29', '2021-02-26 10:14:29');
INSERT INTO `averias` VALUES (58, 10, 9, 20, 'REPORTE A ETECSA DEL ENLACE DE CESPEDES', 1, 76522, 1, 'Se reportó a ETECSA el enlace de datos de la OBE de Cespedes.', NULL, NULL, 1, '2021-02-26 10:15:33', '2021-02-26 10:15:33');
INSERT INTO `averias` VALUES (59, 3, 20, 25, 'WILFREDO LANG', 1, NULL, 3, 'Pc de inv 229292 con problema para cargar el inicio de seccion del usuario por tener el registro de seguridad lleno', 'Se guardaron y limpiaron los log del sistema', 3, 1, '2021-03-02 08:01:47', '2021-03-02 08:03:02');
INSERT INTO `averias` VALUES (60, 3, 10, 24, 'RAMAYO', 1, NULL, 2, 'Pc de inv 211697 que no carga el SO porque no detecta el HDD', NULL, NULL, 1, '2021-03-02 09:33:56', '2021-04-16 11:30:29');
INSERT INTO `averias` VALUES (61, 11, 9, 28, 'PERDIDA DE CONEXION', 1, NULL, 1, 'A las 8:00 am llama el director de la OBE Santa Cruz reportando perdida de conectividad. Se le indica reiniciar el router de ETECSA y posteriormente él mismo se comunica con el personal de ETECSA quin va la OBE y resuelve la avria producto a un problema de el mismo ETECSA.', NULL, NULL, 1, '2021-03-09 13:54:38', '2021-03-09 13:54:38');
INSERT INTO `averias` VALUES (62, 11, 9, 10, 'PERDIDA DE CONEXION', 1, NULL, 1, 'Se pierde conectividad con la Suc La Jagua. Se indica reiniciar el router y porsteriormente cambiar el cable de red de puerto UTP en el router y se restablece la conexion con la OBE provincial.', NULL, NULL, 1, '2021-03-09 13:55:59', '2021-03-09 13:55:59');
INSERT INTO `averias` VALUES (63, 3, 10, 27, 'ANIE VEGA', 1, NULL, 2, 'Pc de inv 225417 enviada por la fundamentacion de que no da video', NULL, NULL, 1, '2021-03-19 07:59:52', '2021-04-16 11:30:56');
INSERT INTO `averias` VALUES (64, 3, 19, 22, 'IFRAIN', 1, NULL, 2, 'Pc de inv 213098 con problama en el SO', NULL, NULL, 1, '2021-03-19 13:15:48', '2021-04-16 11:22:14');
INSERT INTO `averias` VALUES (65, 3, 19, 22, 'IFRAIN', 1, NULL, 2, 'Pc con inv 225426 con problema en el HDD', NULL, NULL, 1, '2021-03-24 09:36:27', '2021-04-16 11:31:08');
INSERT INTO `averias` VALUES (66, 3, 19, 30, 'YOANDRY', 1, NULL, 3, 'Inv de PC Manus 130742, Office sin licencia', 'Se activo el Office', 3, 1, '2021-03-30 08:52:00', '2021-03-30 08:58:03');
INSERT INTO `averias` VALUES (67, 3, 21, 30, 'YOANDRY', 1, NULL, 3, 'Inv de Pc Prometeus 225441, Office sin licencia', 'Se activo el Office', 3, 1, '2021-03-30 08:57:08', '2021-03-30 08:58:13');
INSERT INTO `averias` VALUES (68, 4, 19, 20, 'GARA', 1, NULL, 3, 'no se deja activar el sistema operativo ni el paquete de office', 'se reinstaló el sistema operativo, office y demás software', 4, 1, '2021-04-01 13:31:20', '2021-04-01 13:33:56');
INSERT INTO `averias` VALUES (69, 4, 19, 20, 'EDISNI', 1, NULL, 3, 'no se deja activar el sistema operativo ni el el paquete de office', 'se reinstaló el sistema operativo, office y demás software', 4, 1, '2021-04-01 13:32:13', '2021-04-01 13:34:12');
INSERT INTO `averias` VALUES (70, 3, 10, 23, 'DARIEL BASULTO', 1, NULL, 2, 'Pc de inv 212274 con problema al encender', NULL, NULL, 1, '2021-04-16 11:30:18', '2021-04-16 11:54:57');
INSERT INTO `averias` VALUES (71, 4, 23, 25, 'YIO', 1, NULL, 3, 'laptop con sistema operativo windows 7', 'se reinstala el sistema operativo y demas software', 4, 1, '2021-04-16 11:47:55', '2021-04-16 11:54:20');
INSERT INTO `averias` VALUES (72, 4, 10, 23, 'DARIEL BASULTO', 1, NULL, 2, 'la fuente interna no sirve', NULL, NULL, 1, '2021-04-16 11:52:46', '2021-04-16 11:54:41');
INSERT INTO `averias` VALUES (73, 3, 19, 16, 'SANDRA', 1, NULL, 3, 'Pc con problema en el SO', 'Se reinstalo la Pc con la ultima version de W10', 3, 1, '2021-04-20 14:07:42', '2021-04-20 14:11:08');
INSERT INTO `averias` VALUES (74, 3, 19, 48, 'ILUESMA', 1, NULL, 1, 'Pc de inv 111867 con problema en el SO', NULL, NULL, 1, '2021-04-20 14:10:40', '2021-04-20 14:10:40');
INSERT INTO `averias` VALUES (75, 5, 10, 30, 'RUSKI', 1, NULL, 1, 'LA pc no enciende , no arranca , segun la defectacion es el board roto\r\ninventario 217421  s', NULL, NULL, 1, '2021-04-23 08:11:22', '2021-04-23 08:11:22');
INSERT INTO `averias` VALUES (76, 5, 22, 30, 'RUSKI', 1, NULL, 1, 'La computadora tenia problemas en el OS Inv : 217421', NULL, NULL, 1, '2021-04-23 08:12:37', '2021-04-23 08:12:37');
INSERT INTO `averias` VALUES (77, 3, 23, 55, 'ANDRES', 1, NULL, 1, 'Pc de inv 160750 con w7', NULL, NULL, 1, '2021-04-26 09:14:27', '2021-04-26 09:14:27');

-- ----------------------------
-- Table structure for backups
-- ----------------------------
DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_potencia_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `backups_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `backups_nm_potencia_id_foreign`(`nm_potencia_id`) USING BTREE,
  INDEX `backups_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `backups_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `backups_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `backups_nm_potencia_id_foreign` FOREIGN KEY (`nm_potencia_id`) REFERENCES `nm_potencias` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of backups
-- ----------------------------
INSERT INTO `backups` VALUES (1, 'SN', 'SM', '231485', 16, 4, 8, '1', '2020-09-03 18:03:36', '2020-09-03 18:03:36');
INSERT INTO `backups` VALUES (2, '020161102342', 'TS-650VA', '232410', 22, 4, 9, '1', '2020-09-03 19:59:55', '2020-09-03 20:00:16');
INSERT INTO `backups` VALUES (3, 'SN', 'BACK UPS 650', '22495', 16, 4, 10, '1', '2020-09-04 15:12:46', '2020-09-04 15:12:46');
INSERT INTO `backups` VALUES (4, 'SN', 'TS-650VA', '232377', 22, 8, 11, '1', '2020-09-04 15:47:49', '2020-09-04 15:48:29');
INSERT INTO `backups` VALUES (5, '070224523EDM1L00', 'UPS-650', 'sn', 16, 8, 12, '1', '2020-09-04 15:55:05', '2020-09-04 15:55:05');
INSERT INTO `backups` VALUES (6, 'SN', 'TS-650VA', '232329', 22, 8, 13, '1', '2020-09-04 17:58:25', '2020-09-04 17:58:25');
INSERT INTO `backups` VALUES (7, '4B1203P07349', 'BE550', '224875', 16, 7, 14, '1', '2020-09-04 18:28:02', '2020-09-04 18:28:02');
INSERT INTO `backups` VALUES (8, '02016110050', 'TS-650', '234224', 22, 8, 15, '1', '2020-09-07 11:55:55', '2020-09-07 11:55:55');
INSERT INTO `backups` VALUES (9, '4B1203P07376', 'BE550G', '224907', 16, 9, 17, '1', '2020-09-07 12:49:38', '2020-09-07 12:49:38');
INSERT INTO `backups` VALUES (10, 'SN', 'TS-650', '222476', 22, 8, 19, '1', '2020-09-07 14:11:15', '2020-09-07 14:11:15');
INSERT INTO `backups` VALUES (11, 'SN', 'TS-650', '232495', 22, 8, 20, '1', '2020-09-07 14:36:10', '2020-09-07 14:36:10');
INSERT INTO `backups` VALUES (12, 'SN', 'BACK-UPS-ES550', '219694', 16, 9, 22, '1', '2020-09-07 14:56:26', '2020-09-07 14:56:26');
INSERT INTO `backups` VALUES (13, 'SN', 'TS-650', '232366', 22, 8, 23, '1', '2020-09-07 15:43:22', '2020-09-07 15:43:22');
INSERT INTO `backups` VALUES (14, 'SN', 'TS-65O', '232367', 22, 8, 24, '1', '2020-09-07 16:18:31', '2020-09-07 16:18:31');
INSERT INTO `backups` VALUES (15, 'SN', 'ECO-650LCD', '207004', 46, 11, 34, '1', '2020-09-08 15:38:42', '2020-09-08 15:40:14');
INSERT INTO `backups` VALUES (16, '4314084003169', 'SD1000C', '229578', 48, 12, 40, '1', '2020-09-08 16:19:24', '2020-09-08 16:19:24');
INSERT INTO `backups` VALUES (17, 'SN', 'TS-650VA', '232368', 21, 12, 39, '1', '2020-09-08 17:00:18', '2020-09-08 17:00:18');
INSERT INTO `backups` VALUES (18, 'BE550R', 'BACK-UPS-ES-550', '215312', 16, 12, 38, '1', '2020-09-09 16:42:56', '2020-09-09 16:42:56');
INSERT INTO `backups` VALUES (19, '4B1518B12520', 'UPS-650', '231486', 16, 12, 37, '1', '2020-09-10 14:16:43', '2020-09-10 14:16:43');
INSERT INTO `backups` VALUES (20, '020161102583', 'TS-650VA', '232363', 22, 12, 33, '1', '2020-09-10 16:14:12', '2020-09-10 16:14:12');
INSERT INTO `backups` VALUES (21, '020161102562', 'TS-650VA', '232364', 22, 12, 32, '1', '2020-09-11 14:58:14', '2020-09-11 14:58:14');
INSERT INTO `backups` VALUES (22, '234FY0BC794100076', 'NRD-2531', '650va1325w', 40, 12, 31, '1', '2020-09-14 13:33:49', '2020-09-14 13:33:49');
INSERT INTO `backups` VALUES (23, '020161102565', '020161102565', '232362', 22, 12, 30, '1', '2020-09-23 12:20:55', '2020-09-23 12:20:55');
INSERT INTO `backups` VALUES (24, 'S/N', 'BACK UPS 550', '215317', 16, 9, 54, '1', '2020-09-23 12:25:20', '2020-09-23 12:25:20');
INSERT INTO `backups` VALUES (25, 'N-S', 'RS-1500', '216555', 21, 12, 29, '1', '2020-09-23 13:02:17', '2020-09-23 13:02:17');
INSERT INTO `backups` VALUES (26, 'N/S', 'UPS-650', '212061', 22, 12, 28, '1', '2020-09-23 14:54:29', '2020-09-23 14:54:29');
INSERT INTO `backups` VALUES (27, '4B1148P59283', 'UPS-650', '224513', 16, 11, 26, '1', '2020-09-23 15:44:01', '2020-09-23 15:44:01');
INSERT INTO `backups` VALUES (28, 'N/S', '5VPS500A-110V', '231317', 53, 12, 25, '1', '2020-09-23 15:53:33', '2020-09-23 15:53:33');
INSERT INTO `backups` VALUES (29, '020161102398', '31000447724', '232370', 21, 12, 27, '1', '2020-09-23 16:03:29', '2020-09-23 16:03:29');
INSERT INTO `backups` VALUES (30, 'N/S', 'UPS-650', '232369', 22, 12, 35, '1', '2020-09-23 16:13:08', '2020-09-23 16:13:08');
INSERT INTO `backups` VALUES (31, 'S/N', 'BACK UPS-650', '224890', 16, 9, 55, '1', '2020-09-24 12:00:45', '2020-09-24 12:00:45');
INSERT INTO `backups` VALUES (32, 'BB0742013303', 'BRI500', '215347', 16, 14, 59, '1', '2020-09-24 13:04:22', '2020-09-24 13:05:15');
INSERT INTO `backups` VALUES (33, '3B0751X24754', 'BE550R', '215326', 16, 15, 60, '1', '2020-09-24 14:12:25', '2020-09-24 14:12:51');
INSERT INTO `backups` VALUES (34, '3B1040X21161', 'ES-550', '224514', 16, 12, 57, '1', '2020-09-24 14:35:19', '2020-09-24 14:35:19');
INSERT INTO `backups` VALUES (35, '020161101279', 'TS650VA', '232332', 22, 8, 62, '1', '2020-09-25 14:18:50', '2020-09-25 14:18:50');
INSERT INTO `backups` VALUES (36, '4B1203P07286', 'BE550G', '224872', 16, 9, 63, '1', '2020-09-25 15:28:10', '2020-09-25 15:28:10');
INSERT INTO `backups` VALUES (37, 'N/S', 'UPS-650', '231480', 16, 12, 48, '1', '2020-09-28 13:08:04', '2020-09-28 13:08:04');
INSERT INTO `backups` VALUES (38, 'N/S', 'E-VPR500', '210845', 16, 12, 45, '1', '2020-09-28 14:05:10', '2020-09-28 14:05:10');
INSERT INTO `backups` VALUES (39, 'N/S', 'UPS-650', '232327', 22, 16, 44, '1', '2020-09-29 15:14:37', '2020-09-29 15:14:46');
INSERT INTO `backups` VALUES (40, 'N/S', 'N/S', '224492', 16, 16, 43, '1', '2020-09-30 12:46:48', '2020-09-30 12:46:48');
INSERT INTO `backups` VALUES (41, 'N/S', 'V-500', '232328', 22, 8, 42, '1', '2020-09-30 13:08:31', '2020-09-30 13:08:31');
INSERT INTO `backups` VALUES (42, 'N/S', 'BACK-UPS-ES-550', '215324', 16, 16, 66, '1', '2020-09-30 14:22:14', '2020-09-30 14:22:14');
INSERT INTO `backups` VALUES (43, 'SN', 'BACK-UPS 650', '231481', 16, 4, 67, '1', '2020-09-30 15:17:04', '2020-09-30 15:17:04');
INSERT INTO `backups` VALUES (44, 'SN', 'KN-625A', '213000', 64, 16, 68, '1', '2020-10-01 12:14:56', '2020-10-01 12:15:56');
INSERT INTO `backups` VALUES (45, '48P58954', 'BE650G1', '224497', 16, 4, 69, '1', '2020-10-02 16:01:59', '2020-10-02 16:01:59');
INSERT INTO `backups` VALUES (46, 'SIN #', 'BACK UPS 550', '213540', 16, 9, 74, '1', '2020-11-10 19:13:34', '2020-11-10 19:13:34');
INSERT INTO `backups` VALUES (47, '3B1040X21161', 'ES-550', '219693', 16, 15, 75, '1', '2020-11-10 21:20:36', '2020-11-10 21:20:36');
INSERT INTO `backups` VALUES (48, 'SN', 'SN', '232372', 22, 16, 76, '1', '2020-11-11 13:25:16', '2020-11-11 13:25:16');
INSERT INTO `backups` VALUES (49, 'SIN #', 'TS-650 VA', '232360', 22, 4, 77, '1', '2020-11-11 13:37:02', '2020-11-11 13:37:02');
INSERT INTO `backups` VALUES (50, '4510549314', '1000C', '224736', 68, 15, 78, '1', '2020-11-11 13:59:54', '2020-11-11 13:59:54');
INSERT INTO `backups` VALUES (51, 'SIN #', 'TS-650 VA', '232361', 22, 4, 80, '1', '2020-11-11 14:01:56', '2020-11-11 14:01:56');
INSERT INTO `backups` VALUES (52, 'SIN #', 'BACK UPS 650', '224498', 16, 9, 84, '1', '2020-11-11 14:28:58', '2020-11-11 14:28:58');
INSERT INTO `backups` VALUES (53, 'SN', 'UPS-650VA', '224500', 16, 4, 85, '1', '2020-11-11 14:34:46', '2020-11-11 14:34:46');
INSERT INTO `backups` VALUES (54, 'SN', 'TS-650', '224511', 22, 8, 83, '1', '2020-11-11 14:47:21', '2020-11-11 14:47:21');
INSERT INTO `backups` VALUES (55, 'SIN #', 'UPS-550', '224886', 16, 9, 86, '1', '2020-11-11 15:04:18', '2020-11-11 15:04:18');
INSERT INTO `backups` VALUES (56, '4B1023P45765', 'BE550G', '219680', 16, 9, 88, '1', '2020-11-11 15:27:05', '2020-11-11 15:27:05');
INSERT INTO `backups` VALUES (57, 'S/N', 'UPS-250', '224881', 16, 15, 82, '1', '2020-11-11 15:36:53', '2020-11-11 15:36:53');
INSERT INTO `backups` VALUES (58, 'N/S', 'UPS BK PLUS 525', '214075', 56, 3, 71, '1', '2020-11-11 15:54:35', '2020-11-11 15:54:35');
INSERT INTO `backups` VALUES (59, '3B0820X44202', '550', '219686', 16, 9, 90, '1', '2020-11-11 16:21:29', '2020-11-11 16:21:29');
INSERT INTO `backups` VALUES (60, 'SIN #', 'UPS-ES-550', '219688', 16, 9, 89, '1', '2020-11-11 16:25:21', '2020-11-11 16:25:21');
INSERT INTO `backups` VALUES (61, 'SN', 'PRO 1300 BACK-UPS', '228262', 16, 16, 94, '1', '2020-11-11 19:22:53', '2020-11-11 19:22:53');
INSERT INTO `backups` VALUES (62, 'SIN #', 'UPS-550', '224885', 16, 9, 92, '1', '2020-11-11 20:11:05', '2020-11-11 20:11:05');
INSERT INTO `backups` VALUES (63, 'AGSM500VSBKJR6', 'INTOFFICE 500', '211624', 46, 17, 95, '1', '2020-11-12 10:04:40', '2020-11-12 10:05:17');
INSERT INTO `backups` VALUES (64, '4B1149P00021', 'BE650G1', '224520', 16, 4, 100, '1', '2020-11-12 14:16:35', '2020-11-12 14:16:35');
INSERT INTO `backups` VALUES (65, '2428AVHBC879C00455', 'ECO650LCD', '229577', 46, 4, 101, '1', '2020-11-12 16:03:23', '2020-11-12 16:03:23');
INSERT INTO `backups` VALUES (66, 'SN', 'TS-650VA', '232373', 22, 8, 104, '1', '2020-11-13 09:05:43', '2020-11-13 09:05:43');
INSERT INTO `backups` VALUES (67, '4510249362', 'UPS-1000C', '224733', 68, 18, 106, '1', '2020-11-13 09:51:53', '2020-11-13 09:52:34');
INSERT INTO `backups` VALUES (68, 'SIN #', '---', '219688', 16, 9, 108, '1', '2020-11-13 10:08:21', '2020-11-13 10:08:21');
INSERT INTO `backups` VALUES (69, 'S/N', 'TS650VA', '232339', 22, 8, 107, '1', '2020-11-13 10:19:23', '2020-11-13 10:19:23');
INSERT INTO `backups` VALUES (70, 'PB9741924498', 'BACK UPS 400', '103385', 16, 6, 110, '1', '2020-11-13 10:51:15', '2020-11-13 10:51:15');
INSERT INTO `backups` VALUES (71, '4B1148', 'UPS-650', '224453', 16, 4, 112, '1', '2020-11-13 11:00:11', '2020-11-13 11:00:11');
INSERT INTO `backups` VALUES (72, '06201611', 'TS-650', 'SN', 22, 4, 114, '1', '2020-11-13 11:15:24', '2020-11-13 11:15:24');
INSERT INTO `backups` VALUES (73, '020161', 'TS-650', '232428', 22, 4, 116, '1', '2020-11-13 11:29:34', '2020-11-13 11:29:34');
INSERT INTO `backups` VALUES (74, 'S/N', 'TS-650VA', '232333', 22, 8, 115, '1', '2020-11-13 11:34:08', '2020-11-13 11:34:08');
INSERT INTO `backups` VALUES (75, 'SIN #', 'SIN MODELO', 'sin #', 16, 15, 117, '1', '2020-11-13 11:42:29', '2020-11-13 11:42:29');
INSERT INTO `backups` VALUES (76, '0562811', 'UPS-650', '212068', 22, 4, 118, '1', '2020-11-13 11:46:37', '2020-11-13 11:46:37');
INSERT INTO `backups` VALUES (77, '020161', 'TS-650', '232438', 22, 4, 119, '1', '2020-11-13 11:49:49', '2020-11-13 11:49:49');
INSERT INTO `backups` VALUES (78, '020161101658', 'TS-650VA', '232482', 22, 18, 93, '1', '2020-11-13 11:57:37', '2020-11-13 11:57:37');
INSERT INTO `backups` VALUES (79, '4510209320', 'UPS-1000C', '224729', 68, 18, 121, '1', '2020-11-13 12:00:46', '2020-11-13 12:00:46');
INSERT INTO `backups` VALUES (80, 'S/N', 'TS-650VA', '232337', 22, 8, 120, '1', '2020-11-13 12:10:43', '2020-11-13 12:10:43');
INSERT INTO `backups` VALUES (81, '1102515', 'TS-650VA', '232491', 22, 8, 123, '1', '2020-11-13 13:12:57', '2020-11-13 13:12:57');
INSERT INTO `backups` VALUES (82, 'S/N', 'TS-650VA', '232338', 22, 8, 126, '1', '2020-11-13 13:20:19', '2020-11-13 13:20:19');
INSERT INTO `backups` VALUES (83, 'V020161102611', 'TS-650VA', '232348', 22, 8, 122, '1', '2020-11-13 13:23:43', '2020-11-13 13:23:43');
INSERT INTO `backups` VALUES (84, '020161102513', 'TS-650VA', '232489', 21, 8, 127, '1', '2020-11-13 13:45:53', '2020-11-13 13:45:53');
INSERT INTO `backups` VALUES (85, '300751X24755', 'BE550R', '215315', 16, 15, 129, '1', '2020-11-13 14:09:51', '2020-11-13 14:09:51');
INSERT INTO `backups` VALUES (86, '4B1149P00304', 'UPS-650', '224487', 16, 8, 131, '1', '2020-11-13 14:31:26', '2020-11-13 14:31:26');
INSERT INTO `backups` VALUES (87, '4B1149P03852', 'BE650G1', '224577', 16, 8, 132, '1', '2020-11-13 14:36:44', '2020-11-13 14:36:44');
INSERT INTO `backups` VALUES (88, '4B1203P07288', 'BE550G', '224488', 16, 9, 125, '1', '2020-11-13 14:47:09', '2020-11-13 14:47:09');
INSERT INTO `backups` VALUES (89, '431408403146', 'SD1000C', '229342', 48, 18, 135, '1', '2020-11-13 15:29:15', '2020-11-13 15:29:15');
INSERT INTO `backups` VALUES (90, '020161101667', 'TS-650VA', '232356', 22, 8, 138, '1', '2020-11-16 09:15:21', '2020-11-16 09:15:21');
INSERT INTO `backups` VALUES (91, '9241AI0BC466000454', 'OFFICE 500', '103383', 46, 21, 136, '1', '2020-11-16 09:33:23', '2020-11-16 09:34:29');
INSERT INTO `backups` VALUES (92, '020161101666', 'TS-650VA', '232357', 22, 8, 139, '1', '2020-11-16 09:36:17', '2020-11-16 09:36:17');
INSERT INTO `backups` VALUES (93, '2007050673', 'VPS BU PLUS S2S', '214071', 21, 3, 140, '1', '2020-11-16 10:02:04', '2020-11-16 10:02:04');
INSERT INTO `backups` VALUES (94, 'SN', 'BACK-VPS 650', '231479', 16, 4, 141, '1', '2020-11-16 10:16:00', '2020-11-16 10:16:00');
INSERT INTO `backups` VALUES (95, '2007030483', 'UPS BK PLUS 525', 'n/s', 56, 18, 51, '1', '2020-11-16 11:26:05', '2020-11-16 11:26:05');
INSERT INTO `backups` VALUES (96, 'SN', 'KN625A', '212982', 64, 22, 143, '1', '2020-11-16 11:49:27', '2020-11-16 11:49:27');
INSERT INTO `backups` VALUES (97, 'N/S', 'BACK-UPS-ES-650', '224502', 16, 4, 53, '1', '2020-11-16 11:59:48', '2020-11-16 11:59:48');
INSERT INTO `backups` VALUES (98, '3B0752X05206', 'UPS ES 550', '215323', 16, 15, 151, '1', '2020-11-16 14:01:15', '2020-11-16 14:01:15');
INSERT INTO `backups` VALUES (99, '02161102504', 'TS-650VA', '232425', 22, 8, 152, '1', '2020-11-16 14:41:38', '2020-11-16 14:41:38');
INSERT INTO `backups` VALUES (100, 'SN', 'TS-650VA', '232342', 22, 8, 153, '1', '2020-11-18 08:52:56', '2020-11-18 08:52:56');
INSERT INTO `backups` VALUES (101, '020161102664', 'TS650VA', '232341', 22, 8, 154, '1', '2020-11-18 09:05:25', '2020-11-18 09:05:25');
INSERT INTO `backups` VALUES (102, '020161102659', 'TS650VA', '232043', 22, 8, 155, '1', '2020-11-18 09:31:33', '2020-11-18 09:31:33');
INSERT INTO `backups` VALUES (103, '020161102069', 'TS-650VA', '232344', 22, 8, 156, '1', '2020-11-18 10:19:17', '2020-11-18 10:19:17');
INSERT INTO `backups` VALUES (104, 'N/S', 'TS-650VA', '232483', 22, 8, 150, '1', '2020-11-18 15:22:56', '2020-11-18 15:22:56');
INSERT INTO `backups` VALUES (105, 'N/S', 'TS-650VA', '232443', 22, 8, 149, '1', '2020-11-18 15:40:11', '2020-11-18 15:40:11');
INSERT INTO `backups` VALUES (106, '4B1518P12322', 'BE550G', '231483', 16, 9, 158, '1', '2020-11-19 09:05:27', '2020-11-19 09:05:27');
INSERT INTO `backups` VALUES (107, 'SN', 'TS-650VA', '232353', 22, 8, 159, '1', '2020-11-19 11:39:46', '2020-11-19 11:40:09');
INSERT INTO `backups` VALUES (108, '4B1203', 'BE550G', '231482', 16, 9, 160, '1', '2020-11-19 15:31:49', '2020-11-19 15:31:49');
INSERT INTO `backups` VALUES (109, '4B1518P12304', 'BE550G', '231482', 16, 9, 161, '1', '2020-11-19 16:02:15', '2020-11-19 16:02:15');
INSERT INTO `backups` VALUES (110, '020161102523', 'TS-650VA', '232355', 22, 8, 162, '1', '2020-11-19 16:14:05', '2020-11-19 16:14:05');
INSERT INTO `backups` VALUES (111, '431408403139', 'SD100C', '229347', 48, 8, 147, '1', '2020-11-20 10:12:23', '2020-11-20 10:12:23');
INSERT INTO `backups` VALUES (112, '481203P15328', 'B550G', '224888', 16, 18, 146, '1', '2020-11-20 11:24:19', '2020-11-20 11:24:19');
INSERT INTO `backups` VALUES (113, '020611001668', 'TS-650VA', '232359', 22, 8, 166, '1', '2020-11-20 11:30:19', '2020-11-20 11:30:19');
INSERT INTO `backups` VALUES (114, '020161102612', 'TS-650VA', '232349', 22, 8, 167, '1', '2020-11-20 11:40:26', '2020-11-20 11:40:26');
INSERT INTO `backups` VALUES (115, 'N/S', 'UPS-650', '224518', 16, 15, 144, '1', '2020-11-20 11:56:55', '2020-11-20 11:56:55');
INSERT INTO `backups` VALUES (116, 'N/S', 'TS-650VA', '-', 22, 8, 145, '1', '2020-11-20 12:12:10', '2020-11-20 12:12:10');
INSERT INTO `backups` VALUES (117, '3B1040X21157', 'BE550G', '219687', 16, 9, 168, '1', '2020-11-20 14:07:06', '2020-11-20 14:07:06');
INSERT INTO `backups` VALUES (118, 'SN', 'SN', '02016110', 22, 4, 171, '1', '2020-11-24 14:13:47', '2020-11-24 14:13:47');
INSERT INTO `backups` VALUES (119, '020161', 'TPS-650', '232345', 21, 4, 172, '1', '2020-11-24 14:27:25', '2020-11-24 14:27:25');
INSERT INTO `backups` VALUES (120, 'SN', 'ES550', '219696', 16, 15, 173, '1', '2020-11-24 14:40:02', '2020-11-24 14:40:02');
INSERT INTO `backups` VALUES (121, '3B0751X33420', 'BE550E', '215318', 16, 15, 175, '1', '2020-11-24 15:10:27', '2020-11-24 15:10:27');
INSERT INTO `backups` VALUES (122, '020161', 'TP-650', '224858', 22, 4, 174, '1', '2020-11-24 15:11:18', '2020-11-24 15:11:18');
INSERT INTO `backups` VALUES (123, 'SN', 'RS1500', 'sn', 16, 18, 176, '1', '2020-11-30 08:31:20', '2020-11-30 08:31:20');
INSERT INTO `backups` VALUES (124, '020161102663', 'TS650V', '232340', 22, 8, 177, '1', '2020-11-30 15:20:33', '2020-11-30 15:20:33');

-- ----------------------------
-- Table structure for computadoras
-- ----------------------------
DROP TABLE IF EXISTS `computadoras`;
CREATE TABLE `computadoras`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mac` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nm_ueb_id` bigint(20) UNSIGNED NOT NULL,
  `nm_departamento_id` bigint(20) UNSIGNED NOT NULL,
  `nm_sistema_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `computadoras_nombre_unique`(`nombre`) USING BTREE,
  INDEX `computadoras_nm_ueb_id_foreign`(`nm_ueb_id`) USING BTREE,
  INDEX `computadoras_nm_departamento_id_foreign`(`nm_departamento_id`) USING BTREE,
  INDEX `computadoras_nm_sistema_id_foreign`(`nm_sistema_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `computadoras_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `computadoras_nm_departamento_id_foreign` FOREIGN KEY (`nm_departamento_id`) REFERENCES `nm_departamentos` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `computadoras_nm_sistema_id_foreign` FOREIGN KEY (`nm_sistema_id`) REFERENCES `nm_sistemas` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `computadoras_nm_ueb_id_foreign` FOREIGN KEY (`nm_ueb_id`) REFERENCES `nm_uebs` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of computadoras
-- ----------------------------
INSERT INTO `computadoras` VALUES (8, 'WARLORD', '231591', '172.19.221.162', 'FC-AA-14-D9-35-C9', 4, 5, 4, 1, '2020-09-03 16:08:53', '2020-09-03 16:08:53');
INSERT INTO `computadoras` VALUES (9, 'KINGPOWER', '232869', '172.19.221.220', 'FC-AA-14-B7-D1-AC', 6, 6, 3, 1, '2020-09-03 18:12:15', '2020-09-03 18:12:15');
INSERT INTO `computadoras` VALUES (10, 'SURINAME', '229160', '172.19.221.218', 'C0-3F-D5-B8-36-C6', 6, 6, 4, 1, '2020-09-04 12:19:29', '2020-09-04 12:19:29');
INSERT INTO `computadoras` VALUES (11, 'ANUBIS', '219719', '172.19.221.186', '6C-62-6D-6E-66-22', 5, 7, 3, 1, '2020-09-04 15:18:06', '2020-09-04 15:18:06');
INSERT INTO `computadoras` VALUES (12, 'PALAK', 's/n', '172.19.221.111', 'C0-3F-D5-BA-D7-2C', 7, 8, 4, 1, '2020-09-04 15:25:22', '2020-09-04 15:25:22');
INSERT INTO `computadoras` VALUES (13, 'ASLAM', '231976', '172.19.221.154', 'C0-3F-D5-BA-D6-F1', 6, 9, 4, 1, '2020-09-04 15:52:20', '2020-09-04 15:52:20');
INSERT INTO `computadoras` VALUES (14, 'COLEREN', '211652', '172.19.221.174', 'FC-AA-14-09-41-F6', 4, 10, 4, 1, '2020-09-04 16:15:50', '2020-09-04 16:15:50');
INSERT INTO `computadoras` VALUES (15, 'KONG', '229916', '172.19.219.183', 'FC-AA-14-B7-D1-AA', 7, 11, 3, 1, '2020-09-07 11:43:37', '2020-09-07 11:43:37');
INSERT INTO `computadoras` VALUES (16, 'PITAGORAS', '217104', '172.19.223.116', 'FC-AA-14-09-40-6D', 5, 12, 3, 1, '2020-09-07 11:59:57', '2020-09-07 12:00:31');
INSERT INTO `computadoras` VALUES (17, 'CATALYST', '224839', '172.19.223.115', 'D0-27-88-AC-FF-AF', 5, 12, 3, 1, '2020-09-07 12:14:37', '2020-09-07 12:14:37');
INSERT INTO `computadoras` VALUES (18, 'SLITHICE', '224816', '172.19.219.146', 'D0-24-88-AD-00-49', 7, 11, 3, 1, '2020-09-07 12:59:58', '2020-09-07 12:59:58');
INSERT INTO `computadoras` VALUES (19, 'RYLAI', '224817', '172.19.219.136', 'D0-27-88-AD-00-0C', 7, 11, 3, 1, '2020-09-07 13:22:48', '2020-09-07 13:22:48');
INSERT INTO `computadoras` VALUES (20, 'CINOS', '210903', '172.19.219.139', '74-D4-35-B9-EC-B9', 7, 11, 3, 1, '2020-09-07 14:14:06', '2020-09-07 14:14:06');
INSERT INTO `computadoras` VALUES (21, 'HEZEL', '224687', '172.19.228.108', 'D4-BE-D9-D8-EE-95', 8, 13, 3, 1, '2020-09-07 14:39:24', '2020-09-07 14:39:24');
INSERT INTO `computadoras` VALUES (22, 'KAN', '219727', '172.19.221.210', '6C-62-6D-4C-BE-B8', 7, 8, 3, 1, '2020-09-07 14:40:29', '2020-09-07 14:40:29');
INSERT INTO `computadoras` VALUES (23, 'SHAMAN', '224817', '172.19.221.173', 'D0-27-88-AD-00-44', 4, 10, 3, 1, '2020-09-07 15:26:35', '2020-09-07 15:26:35');
INSERT INTO `computadoras` VALUES (24, 'PENATES', '219715', '172.19.221.171', '6C-62-6D-6E-61-44', 4, 10, 3, 1, '2020-09-07 16:06:41', '2020-09-07 16:06:41');
INSERT INTO `computadoras` VALUES (25, 'HISTORIA', '213003', '172.19.219.201', '00-16-76-43-AA-E5', 4, 16, 3, 1, '2020-09-08 13:03:57', '2020-09-08 13:03:57');
INSERT INTO `computadoras` VALUES (26, 'FRES', '224419', '172.19.219.212', '1C-1B-0D-57-A2-99', 4, 14, 4, 1, '2020-09-08 13:08:09', '2020-09-08 13:08:09');
INSERT INTO `computadoras` VALUES (27, 'GUNK', '226977', '172.19.219.202', '50-46-5D-B2-1D-A5', 4, 13, 4, 1, '2020-09-08 13:18:04', '2020-09-08 13:18:04');
INSERT INTO `computadoras` VALUES (28, 'SCREWDRIVER', '212076', '172.19.218.218', 'FC-AA-14-09-42-0D', 4, 14, 4, 1, '2020-09-08 13:25:41', '2020-09-08 13:25:41');
INSERT INTO `computadoras` VALUES (29, 'CLI', '212932', '172.19.218.222', '00-16-76-43-AC-D6', 4, 17, 3, 1, '2020-09-08 13:37:40', '2020-09-08 13:37:40');
INSERT INTO `computadoras` VALUES (30, 'KENYA', '211649', '172.19.219.214', '00-71-C2-2A-54-09', 4, 18, 4, 1, '2020-09-08 13:43:11', '2020-09-08 13:43:11');
INSERT INTO `computadoras` VALUES (31, 'TIGER', '224809', '172.19.219.204', '00-27-88-AD-01-0A', 4, 19, 3, 1, '2020-09-08 13:48:18', '2020-09-08 13:48:18');
INSERT INTO `computadoras` VALUES (32, 'KIMERA', '229295', '172.19.219.209', '74-27-EA-BC-1B-73', 4, 13, 4, 1, '2020-09-08 13:53:48', '2020-09-08 13:53:48');
INSERT INTO `computadoras` VALUES (33, 'LEMURIA', '219714', '172.19.221.207', '6C-62-6D-4C-BE-79', 4, 13, 3, 1, '2020-09-08 13:59:05', '2020-09-08 13:59:05');
INSERT INTO `computadoras` VALUES (34, 'TRINI', '224850', '172.19.221.155', '74-D4-35-B8-DE-2F', 6, 9, 3, 1, '2020-09-08 14:16:32', '2020-09-08 14:16:32');
INSERT INTO `computadoras` VALUES (35, 'SVK', '215826', '172.19.219.221', 'FC-AA-14-09-3E-C6', 4, 15, 4, 1, '2020-09-08 14:48:23', '2020-09-08 14:48:23');
INSERT INTO `computadoras` VALUES (36, 'LOCK', '215812', '172.19.219.203', '74-D4-35-B9-ED-55', 4, 15, 3, 1, '2020-09-08 14:51:47', '2020-09-08 14:51:47');
INSERT INTO `computadoras` VALUES (37, 'DACARYS', '231382', '172.19.219.220', 'C0-3F-D5-BA-D7-FD', 4, 13, 4, 1, '2020-09-08 14:54:29', '2020-09-08 14:54:29');
INSERT INTO `computadoras` VALUES (38, 'RAK', '214017', '172.19.219.215', '74-D4-35-B9-EC-A8', 4, 15, 3, 1, '2020-09-08 14:55:54', '2020-09-08 14:55:54');
INSERT INTO `computadoras` VALUES (39, 'DEMENTRE', '224682', '172.19.219.218', 'D4-BE-D9-D8-31-58', 4, 13, 3, 1, '2020-09-08 14:58:06', '2020-09-08 14:58:06');
INSERT INTO `computadoras` VALUES (40, 'YIO', '228318', '172.19.219.211', '44-8A-5B-CA-B3-47', 4, 13, 3, 1, '2020-09-08 14:59:44', '2020-09-08 14:59:44');
INSERT INTO `computadoras` VALUES (41, 'ATEN', '217079', '10.10.21.13', '74-D4-35-B9-EC-08', 6, 16, 3, 1, '2020-09-08 15:03:08', '2020-09-08 15:03:08');
INSERT INTO `computadoras` VALUES (42, 'RUSIA', '210618', '10.10.21.19', 'FC-AA-14-09-3A-BC', 6, 15, 3, 1, '2020-09-08 15:05:28', '2020-09-08 15:05:28');
INSERT INTO `computadoras` VALUES (43, 'VESTA', '2244799', '10.10.21.10', 'D0-27-88-AD-01-23', 6, 13, 3, 1, '2020-09-08 15:07:16', '2020-09-08 15:07:16');
INSERT INTO `computadoras` VALUES (44, 'MIN', '210889', '10.10.21.28', 'FC-AA-14-09-42-7B', 6, 19, 3, 1, '2020-09-08 15:08:35', '2020-09-08 15:08:35');
INSERT INTO `computadoras` VALUES (45, 'BELENUS', '224798', '10.10.21.29', 'D0-27-88-AD-00-6E', 6, 13, 3, 1, '2020-09-08 15:10:25', '2020-09-08 15:10:25');
INSERT INTO `computadoras` VALUES (46, 'BRAND', '212070', '169.254.153.18', 'FC-AA-14-B7-D0-4F', 6, 15, 3, 1, '2020-09-08 15:13:53', '2020-09-08 15:13:53');
INSERT INTO `computadoras` VALUES (47, 'TECH', '231590', '10.10.21.15', 'F0-AA-14-09-3F-88', 6, 13, 4, 1, '2020-09-08 15:15:25', '2020-09-08 15:15:25');
INSERT INTO `computadoras` VALUES (48, 'MINER', '225437', '10.10.21.12', '10-78-D2-28-56-A8', 6, 14, 3, 1, '2020-09-08 15:17:05', '2020-09-08 15:17:05');
INSERT INTO `computadoras` VALUES (49, 'CAMALEON', '225445', '10.10.21.18', '7C-05-07-34-B6-1F', 6, 17, 4, 1, '2020-09-08 15:18:36', '2020-09-08 15:18:36');
INSERT INTO `computadoras` VALUES (50, 'TAILER', '213823', '10.10.21.14', '74-D4-35-B9-ED-52', 6, 16, 3, 1, '2020-09-08 15:20:51', '2020-09-08 15:20:51');
INSERT INTO `computadoras` VALUES (51, 'HEMEN', '224835', '10.0.3.28', 'D0-27-88-AC-FD-F6', 13, 13, 3, 1, '2020-09-08 15:22:47', '2020-11-13 12:11:04');
INSERT INTO `computadoras` VALUES (52, 'LIVANO', '228438', '10.0.3.12', '44-34-E6-CE-AA-F5', 13, 13, 3, 1, '2020-09-08 15:24:02', '2020-11-13 12:10:06');
INSERT INTO `computadoras` VALUES (53, 'ELITE', '225443', '10.0.3.17', '10-78-D2-28-AC-D8', 13, 2, 3, 1, '2020-09-08 15:26:24', '2020-11-16 11:28:08');
INSERT INTO `computadoras` VALUES (54, 'PATIN', '110633', '10.0.8.21', 'FC-AA-14-09-43-28', 10, 13, 4, 1, '2020-09-23 12:02:50', '2020-09-23 12:02:50');
INSERT INTO `computadoras` VALUES (55, 'CORE', '232872', '10.0.8.36', 'FC-AA-14-B7-CD-D9', 10, 13, 4, 1, '2020-09-23 12:38:32', '2020-09-23 12:38:32');
INSERT INTO `computadoras` VALUES (56, 'MOROCCO', '225339', '10.0.7.19', '1C-1B-0D-57-A2-97', 11, 17, 3, 1, '2020-09-24 11:47:22', '2020-11-18 10:41:32');
INSERT INTO `computadoras` VALUES (57, 'NEWCASTLE', '225417', '10.0.8.14', '10-78-D2-34-DC-11', 10, 16, 3, 1, '2020-09-24 12:03:05', '2020-09-24 12:03:05');
INSERT INTO `computadoras` VALUES (58, 'EZALOR', '224841', '10.0.7.14', 'D02788AD012F', 11, 16, 3, 1, '2020-09-24 12:06:25', '2020-09-24 12:06:25');
INSERT INTO `computadoras` VALUES (59, 'NUVE', '112618', '172.19.220.141', '74-D4-35-B9-EC-B8', 12, 15, 4, 1, '2020-09-24 12:40:42', '2020-09-24 12:40:42');
INSERT INTO `computadoras` VALUES (60, 'SOL', '219092', '172.19.220.140', 'FC-AA-14-09-3A-62', 12, 15, 4, 1, '2020-09-24 13:18:29', '2020-09-24 13:18:29');
INSERT INTO `computadoras` VALUES (61, 'CIO', '217422', '172.19.220.142', 'FC-AA-14-B7-D1-73', 12, 13, 3, 1, '2020-09-24 14:17:33', '2020-09-24 14:17:33');
INSERT INTO `computadoras` VALUES (62, 'OLI', '224837', '10.0.8.15', 'D0-27-88-AD-01-1C', 10, 13, 3, 1, '2020-09-24 14:58:26', '2020-09-24 14:58:26');
INSERT INTO `computadoras` VALUES (63, 'RESTE', '224808', '172.19.220.134', 'D0-27-88-AC-FFF-A2', 12, 13, 3, 1, '2020-09-25 13:39:25', '2020-09-25 13:39:25');
INSERT INTO `computadoras` VALUES (64, 'LOGAN', '2140250', '172.19.220.143', 'C8-9C-DC-FA-79-B4', 12, 13, 4, 1, '2020-09-25 15:38:45', '2020-09-25 15:38:45');
INSERT INTO `computadoras` VALUES (65, 'AUCTUS', '2140250', '172.19.220.135', '00-08-74-D4-C4-8B', 12, 13, 3, 1, '2020-09-29 13:03:08', '2020-09-29 13:03:08');
INSERT INTO `computadoras` VALUES (66, 'MERCEDES', 'n/s', '10.10.21.16', '74-D4-35-B9-ED-3F', 4, 15, 4, 1, '2020-09-30 14:00:22', '2020-09-30 14:00:22');
INSERT INTO `computadoras` VALUES (67, 'SORIANO', '231377', '172.19.220.144', 'C0-3F-D5-BA-D7-72', 12, 13, 4, 1, '2020-09-30 15:03:26', '2020-09-30 15:03:26');
INSERT INTO `computadoras` VALUES (68, 'LERET', '213822', '172.19.220.138', 'FC-AA-14-09-36-CF', 12, 14, 3, 1, '2020-10-01 12:03:46', '2020-10-01 12:03:46');
INSERT INTO `computadoras` VALUES (69, 'JIOT', '225444', '1.1.1.1', '10-78-D2-28-98-D1', 12, 14, 3, 1, '2020-10-01 12:24:59', '2020-10-01 12:24:59');
INSERT INTO `computadoras` VALUES (70, 'OCTAVIUS', '226978', '172.19.218.72', '10-78-D2-28-98-D2', 2, 17, 4, 1, '2020-10-02 16:07:01', '2020-10-02 16:07:01');
INSERT INTO `computadoras` VALUES (71, 'ALVARITO', '214024', '10.0.3.22', 'FC-AA-14-09-43-07', 13, 19, 4, 1, '2020-11-10 14:08:36', '2020-11-10 14:08:36');
INSERT INTO `computadoras` VALUES (72, 'ARTHUR', '103555', '10.0.8.37', 'FC-AA-14-09-27-49', 10, 13, 3, 1, '2020-11-10 14:34:41', '2020-11-10 14:34:41');
INSERT INTO `computadoras` VALUES (73, 'AGRADA', '214020', '172.19.228.107', '74-D4-35-BB-12-C0', 8, 13, 3, 1, '2020-11-10 15:39:37', '2020-11-10 15:39:37');
INSERT INTO `computadoras` VALUES (74, 'NIVEA', '225442', '172.19.228.106', '00-3D-4F-4C-5D-FE', 8, 14, 3, 1, '2020-11-10 16:28:42', '2020-11-10 16:28:42');
INSERT INTO `computadoras` VALUES (75, 'REMO', '219726', '10.0.8.35', 'FC-AA-14-09-42-A5', 10, 13, 3, 1, '2020-11-10 18:15:38', '2020-11-10 18:15:38');
INSERT INTO `computadoras` VALUES (76, 'CEF', '231592', '1.1.1.2', 'FC-AA-14-09-43-F5', 5, 13, 4, 1, '2020-11-11 13:12:36', '2020-11-11 13:12:36');
INSERT INTO `computadoras` VALUES (77, 'GARA', '213813', '172.19.228.112', '74-D4-35-BB-11-CC', 8, 15, 3, 1, '2020-11-11 13:21:48', '2020-11-11 13:21:48');
INSERT INTO `computadoras` VALUES (78, 'CONSUS', '224688', '172.19.220.139', 'D4-BE-D9-DF-8B-28', 12, 13, 3, 1, '2020-11-11 13:30:09', '2020-11-11 13:30:09');
INSERT INTO `computadoras` VALUES (79, 'RESAL', '224680', '10.0.8.17', 'D4-BE-D9-DD-AE-68', 10, 13, 3, 1, '2020-11-11 13:31:30', '2020-11-11 13:31:30');
INSERT INTO `computadoras` VALUES (80, 'EDISNI', '217424', '172.19.228.111', 'D0-27-88-ED-05-43', 8, 15, 3, 1, '2020-11-11 13:41:50', '2020-11-11 13:41:50');
INSERT INTO `computadoras` VALUES (81, 'MANUS', '130742', '172.19.228.43', '74-D4-35-B9-EC-86', 11, 14, 3, 1, '2020-11-11 14:00:06', '2020-11-11 14:00:06');
INSERT INTO `computadoras` VALUES (82, 'PORTUGAL', '217109', '10.0.8.12', 'FC-AA-14-09-36-20', 10, 13, 4, 1, '2020-11-11 14:09:27', '2020-11-11 14:09:27');
INSERT INTO `computadoras` VALUES (83, 'VALENCIA', '225414', '172.19.220.145', '10-78-D2-28-97-C3', 12, 15, 3, 1, '2020-11-11 14:12:04', '2020-11-11 14:12:04');
INSERT INTO `computadoras` VALUES (84, 'OSUS', '217103', '172.19.228.104', 'FC-AA-14-09-3D-5C', 8, 17, 3, 1, '2020-11-11 14:12:29', '2020-11-11 14:12:29');
INSERT INTO `computadoras` VALUES (85, 'LACTANCIO', '224684', '172.19.228.41', 'DA-BE-D9-D1-8C-06', 11, 13, 4, 1, '2020-11-11 14:29:30', '2020-11-11 14:29:30');
INSERT INTO `computadoras` VALUES (86, 'SPIDER', '224833', '172.19.228.110', 'D0-27-88-AC-FE-74', 8, 13, 3, 1, '2020-11-11 14:36:13', '2020-11-11 14:36:13');
INSERT INTO `computadoras` VALUES (87, 'VRIO', '213788', '172.19.228.38', 'D0-27-88-DB-20-79', 11, 15, 3, 1, '2020-11-11 14:59:39', '2020-11-11 14:59:39');
INSERT INTO `computadoras` VALUES (88, 'MOORE', '219713', '172.19.220.137', '6C-62-6D-6E-66-8D', 12, 13, 3, 1, '2020-11-11 15:00:36', '2020-11-11 15:00:36');
INSERT INTO `computadoras` VALUES (89, 'LIR', '231371', '10.10.20.22', 'C03FD5B5EB50', 8, 13, 4, 1, '2020-11-11 15:22:31', '2020-11-11 15:22:31');
INSERT INTO `computadoras` VALUES (90, 'ARIES', '210893', '172.19.219.121', '74-D4-35-B9-EC-B1', 5, 13, 3, 1, '2020-11-11 15:47:58', '2020-11-11 15:47:58');
INSERT INTO `computadoras` VALUES (91, 'SUN', '229293', '10.0.8.23', '1F-98-4C-75-44-8A-58', 10, 13, 3, 1, '2020-11-11 15:48:35', '2020-11-11 15:48:35');
INSERT INTO `computadoras` VALUES (92, 'ASTRO', '229379', '172.19.219.103', 'C0-3F-D5-B9-C5-25', 8, 13, 4, 1, '2020-11-11 16:46:55', '2020-11-11 16:46:55');
INSERT INTO `computadoras` VALUES (93, 'HATOR', 'n/s', '10.0.3.8', '1C-1B-0D-57-B6-5E', 13, 13, 4, 1, '2020-11-11 17:16:11', '2020-11-11 17:16:11');
INSERT INTO `computadoras` VALUES (94, 'BER', '231593', '172.19.219.118', 'FC-AA-14-09-35-CA', 5, 17, 4, 1, '2020-11-11 19:04:54', '2020-11-11 19:05:17');
INSERT INTO `computadoras` VALUES (95, 'MACABI', '130837', '172.19.229.76', 'E8-DE-27-06-F8-E4', 5, 14, 4, 1, '2020-11-12 09:40:20', '2020-11-12 09:40:20');
INSERT INTO `computadoras` VALUES (96, 'LYON', '224832', '172.19.228.101', 'D0-27-88-AC-FE-09', 8, 13, 3, 1, '2020-11-12 09:54:21', '2020-11-12 09:55:10');
INSERT INTO `computadoras` VALUES (97, 'CHATA', '210619', '172.19.218.82', 'E8-40-F2-09-30-28', 9, 14, 3, 1, '2020-11-12 10:34:13', '2020-11-12 10:34:13');
INSERT INTO `computadoras` VALUES (98, 'XIAN', '228760', '172.19.219.115', 'C4-8E-8F-39-E7-75', 5, 17, 4, 1, '2020-11-12 10:52:34', '2020-11-13 09:14:22');
INSERT INTO `computadoras` VALUES (99, 'RENEW', '225446', '172.19.219.114', 'FC-AA-14-B7-D1-5A', 5, 14, 3, 1, '2020-11-12 10:54:26', '2020-11-12 10:54:26');
INSERT INTO `computadoras` VALUES (100, 'CHROME', '225423', '172.19.219.112', 'FC-AA-14-09-41-F4', 5, 16, 4, 1, '2020-11-12 13:45:02', '2020-11-12 13:45:02');
INSERT INTO `computadoras` VALUES (101, 'NIOP', '229394', '172.19.219.111', 'C0-3F-D5-B9-C7-02', 5, 13, 4, 1, '2020-11-12 15:16:23', '2020-11-12 15:16:23');
INSERT INTO `computadoras` VALUES (102, 'PICHON', '217420', '172.19.228.167', '90-2B-34-10-70-86', 9, 26, 4, 1, '2020-11-13 08:08:27', '2020-11-13 08:08:27');
INSERT INTO `computadoras` VALUES (103, 'CHAPIE', '229298', '172.19.228.162', 'FC-AA-14-B1-F2-38', 9, 17, 4, 1, '2020-11-13 08:31:47', '2020-11-13 08:31:47');
INSERT INTO `computadoras` VALUES (104, 'SAPPHIRE', '224840', '172.19.219.109', 'D0-27-88-AD-01-40', 5, 13, 4, 1, '2020-11-13 08:37:11', '2020-11-13 08:37:11');
INSERT INTO `computadoras` VALUES (105, 'TALENT', '226976', '10.0.1.7', '50-46-5D-B2-1B-C4', 9, 13, 3, 1, '2020-11-13 08:54:45', '2020-11-13 08:54:45');
INSERT INTO `computadoras` VALUES (106, 'ENEAS', '224685', '172.19.219.108', 'D4-BE-D9-DF-7D-ED', 5, 13, 3, 1, '2020-11-13 09:24:15', '2020-11-13 09:24:15');
INSERT INTO `computadoras` VALUES (107, 'HOGAR', '211647', '10.0.8.10', 'FC-AA-14-09-2B-8B', 10, 14, 4, 1, '2020-11-13 09:37:39', '2020-11-13 10:27:46');
INSERT INTO `computadoras` VALUES (108, 'NEIR', '215828', '172.19.228.170', 'FC-AA-14-09-3E-8A', 9, 15, 4, 1, '2020-11-13 09:51:31', '2020-11-13 09:51:31');
INSERT INTO `computadoras` VALUES (109, 'MER', '215827', '172.19.219.113', 'FC-AA-14-09-3F-AE', 5, 15, 3, 1, '2020-11-13 10:21:29', '2020-11-13 10:21:29');
INSERT INTO `computadoras` VALUES (110, 'PLIT', '213814', '172.19.228.173', 'FC-AA-14-09-42-11', 9, 15, 4, 1, '2020-11-13 10:24:19', '2020-11-13 10:24:19');
INSERT INTO `computadoras` VALUES (111, 'RAGNAR', '2160910', '10.0.8.29', '00-21-9B-0C-5B-98', 10, 16, 3, 1, '2020-11-13 10:27:16', '2020-11-13 10:29:14');
INSERT INTO `computadoras` VALUES (112, 'CROWLEY', 'NO', '172.19.219.148', 'E0-D5-5E-BF-79-A0', 7, 14, 4, 1, '2020-11-13 10:40:49', '2020-11-13 10:40:49');
INSERT INTO `computadoras` VALUES (113, 'COD', '2000505', '172.19.228.168', '74-D4-35-B9-EC-1B', 9, 15, 3, 1, '2020-11-13 10:59:28', '2020-11-13 10:59:28');
INSERT INTO `computadoras` VALUES (114, 'TULLUS', '214021', '172.19.219.158', 'FC-AA-14-B7-D1-83', 7, 14, 3, 1, '2020-11-13 11:03:05', '2020-11-13 11:03:05');
INSERT INTO `computadoras` VALUES (115, 'PITSO', '231595', '10.0.8.34', 'FC-AA-14-09-44-A2', 10, 19, 4, 1, '2020-11-13 11:08:47', '2020-11-13 11:08:47');
INSERT INTO `computadoras` VALUES (116, 'ROMULO', '212075', '172.19.219.137', '74-D4-35-BB-12-34', 7, 14, 3, 1, '2020-11-13 11:18:38', '2020-11-13 11:18:38');
INSERT INTO `computadoras` VALUES (117, 'VOLSUNGA', '219720', '172.19.228.172', '6C-62-6D-6E-67-AB', 9, 13, 3, 2, '2020-11-13 11:24:41', '2020-11-13 11:24:41');
INSERT INTO `computadoras` VALUES (118, 'TOYOTA', '217090', '10.0.4.18', '74-D4-35-B9-EA-9A', 14, 17, 3, 3, '2020-11-13 11:33:45', '2020-11-13 11:33:45');
INSERT INTO `computadoras` VALUES (119, 'PANORAMIX', '211697', '172.19.228.239', 'FC-AA-14-09-43-3E', 7, 15, 3, 8, '2020-11-13 11:34:01', '2020-11-13 11:34:01');
INSERT INTO `computadoras` VALUES (120, 'TINIMA', '215829', '10.0.8.24', 'FC-AA-14-09-43-DE', 10, 15, 3, 4, '2020-11-13 11:36:54', '2020-11-13 11:36:54');
INSERT INTO `computadoras` VALUES (121, 'ESUS', '224681', '172.19.228.177', 'D4-BE-D9-D8-F2-A7', 9, 13, 3, 2, '2020-11-13 11:46:39', '2020-11-13 11:46:39');
INSERT INTO `computadoras` VALUES (122, 'SERVICON', '217416', '10.0.4.8', 'FC-AA-14-B1-F9-62', 14, 15, 3, 3, '2020-11-13 11:52:17', '2020-11-13 11:52:17');
INSERT INTO `computadoras` VALUES (123, 'SANYO', '215824', '172.19.219.150', 'FC-AB-14-09-43-15', 7, 15, 3, 8, '2020-11-13 11:52:51', '2020-11-13 11:52:51');
INSERT INTO `computadoras` VALUES (124, 'YELOW', '224815', '10.0.1.12', 'D0-27-88-AD-00-F4', 9, 13, 4, 2, '2020-11-13 12:03:57', '2020-11-13 12:03:57');
INSERT INTO `computadoras` VALUES (125, 'TARANIS', '224417', '172.19.228.179', 'C8-06-00-86-7E-6E', 9, 14, 3, 2, '2020-11-13 12:21:02', '2020-11-13 12:21:02');
INSERT INTO `computadoras` VALUES (126, 'MYRI', '213799', '10.0.8.20', 'FC-AA-14-09-41-F8', 10, 15, 3, 4, '2020-11-13 13:03:24', '2020-11-13 13:03:24');
INSERT INTO `computadoras` VALUES (127, 'RASTAF', '103484', '172.19.219.130', '74-D4-35-90-12-C3', 7, 15, 3, 8, '2020-11-13 13:16:17', '2020-11-13 13:16:17');
INSERT INTO `computadoras` VALUES (128, 'HATIBONICO', '2000506', '10.0.8.22', '74-D4-35-B9-ED-53', 10, 15, 3, 4, '2020-11-13 13:32:11', '2020-11-13 13:32:11');
INSERT INTO `computadoras` VALUES (129, 'INPUD', '2000504', '172.19.219.151', '74-D4-35-9B-1E-3D', 7, 15, 3, 8, '2020-11-13 13:53:07', '2020-11-13 13:53:07');
INSERT INTO `computadoras` VALUES (130, 'GOTHAM', '231585', '172.19.219.142', 'FC-AA-14-09-3B-73', 7, 16, 4, 8, '2020-11-13 14:12:29', '2020-11-13 14:12:29');
INSERT INTO `computadoras` VALUES (131, 'ONCOH', '112031', '10.0.8.19', 'FC-AA-14-09-36-01', 10, 14, 3, 4, '2020-11-13 14:17:22', '2020-11-13 14:17:22');
INSERT INTO `computadoras` VALUES (132, 'LION', '225420', '10.0.4.15', 'D0-27-88-E9-3E-72', 14, 16, 3, 3, '2020-11-13 14:28:32', '2020-11-13 14:28:32');
INSERT INTO `computadoras` VALUES (133, 'MASTER', '224416', '10.0.8.30', '54-04-A6-CF-C6-D1', 10, 14, 3, 4, '2020-11-13 14:41:18', '2020-11-13 14:41:18');
INSERT INTO `computadoras` VALUES (134, 'LAYO', '160745', '10.0.4.13', '74-D4-35-B9-EC-EF', 14, 16, 3, 3, '2020-11-13 14:41:18', '2020-11-13 14:41:18');
INSERT INTO `computadoras` VALUES (135, 'MON', '229292', '10.0.4.1', '44-8A-5B-C3-96-E2', 14, 15, 4, 3, '2020-11-13 14:50:33', '2020-11-13 14:50:33');
INSERT INTO `computadoras` VALUES (136, 'CAMPI', '214070', '172.19.228.178', 'FC-AA-14-09-3A-AC', 9, 14, 4, 2, '2020-11-13 14:51:35', '2020-11-13 14:51:35');
INSERT INTO `computadoras` VALUES (137, 'ACTIVE', '210880', '10.0.8.39', '00-1D-09-95-62-16', 10, 35, 3, 4, '2020-11-13 15:08:06', '2020-11-13 15:08:06');
INSERT INTO `computadoras` VALUES (138, 'ELIER', '226974', '10.0.4.20', '50-46-5D-B2-11-03', 14, 13, 4, 3, '2020-11-16 08:37:19', '2020-11-16 08:37:19');
INSERT INTO `computadoras` VALUES (139, 'KRO', '213293', '10.0.4.16', 'FC-AA-14-09-3F-D5', 14, 14, 3, 3, '2020-11-16 09:18:52', '2020-11-16 09:18:52');
INSERT INTO `computadoras` VALUES (140, 'DEIROS', '213006', '172.19.219.155', '00-16-76-41-47-F6', 7, 17, 3, 8, '2020-11-16 09:41:41', '2020-11-16 09:41:41');
INSERT INTO `computadoras` VALUES (141, 'SIL', '231375', '172.19.219.140', 'C0-3F-D5-BA-AC-36', 7, 17, 3, 8, '2020-11-16 10:04:23', '2020-11-16 10:04:23');
INSERT INTO `computadoras` VALUES (142, 'NORWICH', '224519', '172.19.219.144', '10-78-D2-34-B5-12', 7, 16, 4, 8, '2020-11-16 10:21:15', '2020-11-16 10:21:15');
INSERT INTO `computadoras` VALUES (143, 'NORWAY', '210888', '10.0.4.11', 'FC-AA-14-09-3A-B6', 14, 14, 4, 3, '2020-11-16 11:43:05', '2020-11-16 11:43:05');
INSERT INTO `computadoras` VALUES (144, 'DEPORTIVO', '225421', '10.0.3.13', '10-78-D2-34-8E-A7', 13, 16, 3, 5, '2020-11-16 13:38:07', '2020-11-16 13:38:07');
INSERT INTO `computadoras` VALUES (145, 'UBUN', '224686', '10.0.3.29', 'D4-BE-D9-D8-D6-35', 13, 13, 3, 5, '2020-11-16 13:39:11', '2020-11-16 13:39:11');
INSERT INTO `computadoras` VALUES (146, 'HEKA', '224834', '10.0.3.30', 'E8-DE-27-06-F9-0D', 13, 13, 3, 5, '2020-11-16 13:42:34', '2020-11-16 13:42:34');
INSERT INTO `computadoras` VALUES (147, 'TERMICA', '229297', '10.0.3.9', '44-8A-5B-C1-B3-71', 13, 13, 4, 5, '2020-11-16 13:43:44', '2020-11-16 13:43:44');
INSERT INTO `computadoras` VALUES (148, 'TELENOL', '266941', '10.0.3.25', 'FC-AA-14-B7-CB-0E', 13, 15, 3, 5, '2020-11-16 13:44:52', '2020-11-16 13:44:52');
INSERT INTO `computadoras` VALUES (149, 'BRUJO', '210902', '10.0.3.19', 'FC-AA-14-09-43-1F', 13, 14, 4, 5, '2020-11-16 13:45:55', '2020-11-16 13:45:55');
INSERT INTO `computadoras` VALUES (150, 'TECNICA', '211638', '10.0.3.24', '74-D4-35-B9-ED-75', 13, 14, 3, 5, '2020-11-16 13:47:09', '2020-11-16 13:47:09');
INSERT INTO `computadoras` VALUES (151, 'TAIWAN', '213796', '10.0.3.10', 'FC-AA-14-09-36-A0', 13, 15, 3, 5, '2020-11-16 13:49:45', '2020-11-16 13:49:45');
INSERT INTO `computadoras` VALUES (152, 'OGMIOS', '229325', '172.19.219.143', 'D4-BE-D9-DF-8B-85', 7, 19, 3, 8, '2020-11-16 14:23:01', '2020-11-16 14:23:01');
INSERT INTO `computadoras` VALUES (153, 'TIAMAT', '224683', '172.19.219.252', 'D4-BE-D9-D8-EE-83', 15, 13, 3, 8, '2020-11-18 08:42:24', '2020-11-18 08:42:24');
INSERT INTO `computadoras` VALUES (154, 'JORDAN', '214081', '172.19.219.240', 'FC-AA-14-09-44-6F', 15, 13, 3, 8, '2020-11-18 08:55:28', '2020-11-18 08:55:28');
INSERT INTO `computadoras` VALUES (155, 'CATANIA', '219729', '172.19.219.235', 'FC-AA-14-09-43-1B', 15, 13, 3, 8, '2020-11-18 09:07:06', '2020-11-18 09:07:06');
INSERT INTO `computadoras` VALUES (156, 'LAZAR', '211650', '172.19.219.236', '74-D4-35-BB-12-2B', 15, 15, 3, 8, '2020-11-18 09:36:29', '2020-11-18 09:36:29');
INSERT INTO `computadoras` VALUES (157, 'ASTRID', '200315', '10.0.4.4', '74-D4-35-B9-EC-3C', 14, 37, 3, 3, '2020-11-19 07:58:18', '2020-11-19 07:58:18');
INSERT INTO `computadoras` VALUES (158, 'POTTER', '151189', '10.0.4.3', 'FC-AA-14-09-3A-AF', 14, 37, 4, 3, '2020-11-19 08:57:06', '2020-11-19 08:57:06');
INSERT INTO `computadoras` VALUES (159, 'CUSTO', '211637', '10.0.4.2', 'FC-AA-14-09-3A-63', 14, 37, 4, 3, '2020-11-19 11:00:45', '2020-11-19 11:00:45');
INSERT INTO `computadoras` VALUES (160, 'NICO', '219722', '10.0.4.7', '6C-62-6D-6E-67-55', 14, 13, 3, 3, '2020-11-19 15:00:10', '2020-11-19 15:00:10');
INSERT INTO `computadoras` VALUES (161, 'SHENDELZARE', '224818', '10.0.4.6', 'D0-27-88-AD-00-C6', 14, 13, 3, 3, '2020-11-19 15:35:56', '2020-11-19 15:35:56');
INSERT INTO `computadoras` VALUES (162, 'AQUI', '200314', '10.0.4.5', '74-D4-35-B9-EC-B6', 14, 13, 3, 3, '2020-11-19 16:06:28', '2020-11-19 16:06:28');
INSERT INTO `computadoras` VALUES (163, 'LER', '213807', '10.0.4.12', 'FC-AA-14-09-44-86', 14, 14, 3, 3, '2020-11-20 08:18:39', '2020-11-20 08:18:39');
INSERT INTO `computadoras` VALUES (164, 'ECONOMIA2-FDA', '213811', '1.1.1.3', '00-08-74-AF-98-AB', 14, 15, 3, 3, '2020-11-20 08:33:52', '2020-11-20 08:33:52');
INSERT INTO `computadoras` VALUES (165, 'JOCKSER', '211643', '1.1.1.4', 'FC-AA-14-09-3E-61', 14, 36, 3, 3, '2020-11-20 09:10:09', '2020-11-20 09:10:09');
INSERT INTO `computadoras` VALUES (166, 'ESCILA', '224415', '10.0.4.10', 'E8-DE-27-A7-13-A1', 14, 14, 3, 3, '2020-11-20 10:14:36', '2020-11-20 10:14:36');
INSERT INTO `computadoras` VALUES (167, 'JUNO', '112032', '10.0.4.25', '74-D4-35-B9-EC-6F', 14, 15, 3, 3, '2020-11-20 11:34:26', '2020-11-20 11:34:26');
INSERT INTO `computadoras` VALUES (168, 'TREND', '23139', '10.0.4.26', '50-3E-AA-03-06-3D', 14, 13, 4, 3, '2020-11-20 13:37:01', '2020-11-20 13:37:01');
INSERT INTO `computadoras` VALUES (169, 'NOTE', '213811', '10.0.4.9', 'FC-AA-14-B7-D5-4B', 14, 15, 3, 3, '2020-11-24 08:28:03', '2020-11-24 08:28:03');
INSERT INTO `computadoras` VALUES (170, 'MAW', '224679', '10.0.4.121', 'D4-BE-D9-D8-F0-FB', 14, 13, 3, 3, '2020-11-24 08:41:09', '2020-11-24 08:41:09');
INSERT INTO `computadoras` VALUES (171, 'MONOTO', 'NS', '172.19.219.254', 'C0-3F-D5-B9-BF-A8', 15, 13, 4, 8, '2020-11-24 13:56:12', '2020-11-24 13:56:12');
INSERT INTO `computadoras` VALUES (172, 'OKIN', '225438', '172.19.219.237', '10-78-D2-28-97-A9', 15, 14, 3, 8, '2020-11-24 14:16:39', '2020-11-24 14:16:39');
INSERT INTO `computadoras` VALUES (173, 'SASHI', '214491', '172.19.219.246', '6C-62-6D-4C-BC-8C', 15, 13, 3, 8, '2020-11-24 14:30:40', '2020-11-24 14:30:40');
INSERT INTO `computadoras` VALUES (174, 'LUGO', '224688', '172.19.219.247', 'D0-27-80-AD-00-60', 15, 13, 4, 8, '2020-11-24 14:52:51', '2020-11-24 14:52:51');
INSERT INTO `computadoras` VALUES (175, 'CAMILA', '215823', '10.0.4.21', '74-D4-35-B9-ED-78', 14, 15, 3, 3, '2020-11-24 15:04:57', '2020-11-24 15:04:57');
INSERT INTO `computadoras` VALUES (176, 'MALAGA', '217414', '172.19.229.6', 'FC-AA-14-B7-CC-FE', 15, 16, 3, 8, '2020-11-30 07:39:22', '2020-11-30 07:39:22');
INSERT INTO `computadoras` VALUES (177, 'AMERCEDES', '213821', '172.19.219.248', '74-D4-35-BB-12-24', 15, 15, 3, 8, '2020-11-30 15:14:47', '2020-11-30 15:14:47');

-- ----------------------------
-- Table structure for displays
-- ----------------------------
DROP TABLE IF EXISTS `displays`;
CREATE TABLE `displays`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_monitor_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `displays_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `displays_nm_monitor_id_foreign`(`nm_monitor_id`) USING BTREE,
  INDEX `displays_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `displays_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `displays_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `displays_nm_monitor_id_foreign` FOREIGN KEY (`nm_monitor_id`) REFERENCES `nm_monitors` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of displays
-- ----------------------------
INSERT INTO `displays` VALUES (1, '1565AAACT6CTV1H033', 'VIH033D', '226998', 13, 1, 8, '1', '2020-09-03 17:01:53', '2020-09-03 17:02:56');
INSERT INTO `displays` VALUES (2, '7002FD81B903603220F', 'HN7002FD', '230272', 20, 1, 9, '1', '2020-09-03 19:55:58', '2020-09-03 19:56:22');
INSERT INTO `displays` VALUES (3, 'SN', 'V173', '224948', 15, 2, 10, '1', '2020-09-04 15:09:25', '2020-09-04 15:09:25');
INSERT INTO `displays` VALUES (4, 'M9C67A22801', '7VLR', '210836', 29, 1, 11, '1', '2020-09-04 15:43:38', '2020-09-04 15:44:11');
INSERT INTO `displays` VALUES (5, 'MNL7FAD002532', 'V176L', 'sn', 15, 2, 12, '1', '2020-09-04 15:50:13', '2020-09-04 15:50:13');
INSERT INTO `displays` VALUES (6, 'MMLZFAA002512073118500', 'V17GL', '231102', 15, 2, 13, '1', '2020-09-04 17:53:17', '2020-09-04 17:53:17');
INSERT INTO `displays` VALUES (7, 'ETLELOD0039410111B8544', 'X183HB', '231103', 15, 2, 14, '1', '2020-09-04 18:12:03', '2020-09-04 18:12:03');
INSERT INTO `displays` VALUES (8, '51305265582', 'V264HL', 'sn', 15, 2, 15, '1', '2020-09-07 11:53:18', '2020-09-07 11:53:18');
INSERT INTO `displays` VALUES (9, 'JC07W0E0100JG7C71960', '1772EH', '218193', 41, 1, 16, '1', '2020-09-07 12:08:58', '2020-09-07 12:08:58');
INSERT INTO `displays` VALUES (10, 'ETLKMOW090215045D44344', 'V173', '224960', 15, 2, 17, '1', '2020-09-07 12:24:12', '2020-09-07 12:24:52');
INSERT INTO `displays` VALUES (11, 'ETLKMOW090215046D04344', 'V173', '224936', 15, 2, 18, '1', '2020-09-07 13:12:15', '2020-09-07 13:12:15');
INSERT INTO `displays` VALUES (12, 'ETLKM0W090215046E14344', 'V173', '224937', 15, 2, 19, '1', '2020-09-07 14:07:57', '2020-09-07 14:07:57');
INSERT INTO `displays` VALUES (13, 'SN', 'SM', 'SI', 15, 1, 20, '1', '2020-09-07 14:33:34', '2020-09-07 14:33:44');
INSERT INTO `displays` VALUES (14, 'OMR1P6-74445-245-545L', 'E211-HT', '224772', 3, 2, 22, '1', '2020-09-07 14:52:35', '2020-09-07 14:52:35');
INSERT INTO `displays` VALUES (15, '48200814642', 'V20BHQL', '229195', 15, 2, 21, '1', '2020-09-07 14:57:53', '2020-09-07 14:57:53');
INSERT INTO `displays` VALUES (16, 'ETLKM0W0902150045C84349', 'V173', '224929', 15, 2, 23, '1', '2020-09-07 15:40:28', '2020-09-07 15:40:28');
INSERT INTO `displays` VALUES (17, 'MMLY0EE007529128478501', 'V196HQL', '1048892', 15, 2, 24, '1', '2020-09-07 16:14:23', '2020-09-07 16:14:23');
INSERT INTO `displays` VALUES (18, 'ETLFF0C0730420E97B40C3', 'V203H', '919746', 15, 2, 34, '1', '2020-09-08 15:34:46', '2020-09-08 15:34:46');
INSERT INTO `displays` VALUES (19, '83200100785', 'V176L', '231460', 15, 1, 40, '1', '2020-09-08 16:13:36', '2020-09-08 16:13:36');
INSERT INTO `displays` VALUES (20, 'J200F3E0W00JRD9D5006', 'HL-185BW2', 'j200f3e0w00jrd9d5006', 41, 2, 39, '1', '2020-09-08 16:57:02', '2020-09-08 16:57:02');
INSERT INTO `displays` VALUES (21, 'MMLY0EE0075291284B8501', 'V196HQL', '232117', 15, 2, 38, '1', '2020-09-09 16:12:59', '2020-09-09 16:12:59');
INSERT INTO `displays` VALUES (22, 'MMLY0EE007529128518501', 'V196HQL', '232118', 15, 2, 36, '1', '2020-09-10 15:24:25', '2020-09-10 15:24:25');
INSERT INTO `displays` VALUES (23, 'ETLFF0C073042DEB3240C3', 'V203H', '219744', 15, 2, 33, '1', '2020-09-10 16:09:54', '2020-09-10 16:09:54');
INSERT INTO `displays` VALUES (24, 'ETLKM0W01021504DC4344', 'V173', '224927', 15, 2, 32, '1', '2020-09-11 14:55:11', '2020-09-11 14:55:11');
INSERT INTO `displays` VALUES (25, 'MMLXBAA002310012382401', '6196HQL', '229324', 15, 2, 31, '1', '2020-09-14 13:19:11', '2020-09-14 13:19:11');
INSERT INTO `displays` VALUES (26, 'J200F3E0WWJRDAD6007', 'HL-185BW2', 'hl-185bw2', 21, 1, 30, '1', '2020-09-23 12:15:24', '2020-09-23 12:15:24');
INSERT INTO `displays` VALUES (27, '0C00639-72872-625-9Y4L', 'E176FM', '213204', 3, 2, 54, '1', '2020-09-23 12:19:11', '2020-09-23 12:19:11');
INSERT INTO `displays` VALUES (28, 'CN-ACC638-72872-625-60R', 'E176FPM', 'e176fpm', 3, 2, 29, '1', '2020-09-23 12:57:40', '2020-09-23 12:57:40');
INSERT INTO `displays` VALUES (29, 'ETLKM0W0902150461D4344', 'V173', '224958', 15, 2, 55, '1', '2020-09-23 13:24:04', '2020-09-23 13:24:04');
INSERT INTO `displays` VALUES (30, 'MMLXKAA00343201FB34207', 'V206HQL', '229178', 15, 2, 28, '1', '2020-09-23 14:41:00', '2020-09-23 14:41:00');
INSERT INTO `displays` VALUES (31, '712196625047', 'V196HQL', '232115', 21, 2, 26, '1', '2020-09-23 15:41:58', '2020-09-23 15:41:58');
INSERT INTO `displays` VALUES (32, 'MMLXXEE0055130CCCF8520', 'V246HL', '231123', 15, 2, 25, '1', '2020-09-23 15:51:04', '2020-09-23 15:51:04');
INSERT INTO `displays` VALUES (33, '3100044724', '6196-HQL', '3100447724', 15, 2, 27, '1', '2020-09-23 16:01:44', '2020-09-23 16:01:44');
INSERT INTO `displays` VALUES (34, 'J200F3E0W00JRD9D5699', 'HL-185BW2', '230249', 41, 2, 35, '1', '2020-09-23 16:11:30', '2020-09-23 16:11:30');
INSERT INTO `displays` VALUES (35, 'CN-0CC639-72872-625-522L', 'E1912HF', '213206', 3, 2, 56, '1', '2020-09-24 11:52:57', '2020-09-24 11:52:57');
INSERT INTO `displays` VALUES (36, '5080903695', 'S555', '217430', 56, 1, 59, '1', '2020-09-24 12:58:20', '2020-09-24 13:00:34');
INSERT INTO `displays` VALUES (37, 'MA5080903833', 'S555', '217436', 56, 1, 60, '1', '2020-09-24 14:13:56', '2020-09-24 14:13:56');
INSERT INTO `displays` VALUES (38, '4712196625047', 'V196HQL', '232108', 15, 2, 57, '1', '2020-09-24 14:31:49', '2020-09-24 14:31:49');
INSERT INTO `displays` VALUES (39, '1119785', 'MH7090911158', '218226', 41, 1, 61, '1', '2020-09-24 15:29:02', '2020-09-24 15:29:02');
INSERT INTO `displays` VALUES (40, 'N/S', 'N/S', 'n/s', 21, 2, 50, '1', '2020-09-25 13:24:42', '2020-09-25 13:24:42');
INSERT INTO `displays` VALUES (41, 'N/S', 'FLATROM L192WS92WS', '214525', 5, 2, 49, '1', '2020-09-25 13:57:44', '2020-09-25 13:57:44');
INSERT INTO `displays` VALUES (42, '21501716943', 'V173', '224957', 15, 2, 62, '1', '2020-09-25 14:08:51', '2020-09-25 14:08:51');
INSERT INTO `displays` VALUES (43, '0X6MQJ-72872-21E-DV35', 'E1912HF', 'n/s', 3, 2, 48, '1', '2020-09-25 15:26:45', '2020-09-25 15:26:45');
INSERT INTO `displays` VALUES (44, '21501813443', 'V73', '224826', 15, 2, 63, '1', '2020-09-25 15:28:51', '2020-09-25 15:28:51');
INSERT INTO `displays` VALUES (45, '07VR50-64180-246-4VCL', 'E170SC', '226307', 3, 2, 64, '1', '2020-09-25 16:20:42', '2020-09-25 16:20:42');
INSERT INTO `displays` VALUES (46, 'ETLKM0W090215045E44344', 'V173', '224918', 15, 1, 45, '1', '2020-09-28 13:55:17', '2020-09-28 13:55:17');
INSERT INTO `displays` VALUES (47, '7002FD10-83B101902852F', '7002FD10', '2152990', 49, 1, 65, '1', '2020-09-29 13:14:57', '2020-09-29 13:14:57');
INSERT INTO `displays` VALUES (48, 'N/S', '6196-HQL', '224932', 15, 2, 44, '1', '2020-09-29 15:08:42', '2020-09-29 15:08:42');
INSERT INTO `displays` VALUES (49, 'J200F3E0W00JRDAD0035', 'HC-185BW2', '218223', 41, 1, 43, '1', '2020-09-30 12:42:35', '2020-09-30 12:44:38');
INSERT INTO `displays` VALUES (50, 'MMLY0EE007529126970', 'V196HQL', '232133', 15, 2, 42, '1', '2020-09-30 13:06:33', '2020-09-30 13:06:33');
INSERT INTO `displays` VALUES (51, 'MV87064B41000916', '1772EH', '213855', 14, 1, 66, '1', '2020-09-30 14:19:59', '2020-09-30 14:19:59');
INSERT INTO `displays` VALUES (52, 'MML7FAA002512073AB500', 'V176L', '231455', 15, 2, 67, '1', '2020-09-30 15:18:16', '2020-09-30 15:18:16');
INSERT INTO `displays` VALUES (53, 'DCC639-72872-625-SIWL', 'E176FPF', '213211', 3, 2, 68, '1', '2020-10-01 12:16:52', '2020-10-01 12:16:52');
INSERT INTO `displays` VALUES (54, 'CN0X6M0J728722DCEYS', 'REV-A03', '224472', 3, 2, 69, '1', '2020-10-02 16:02:49', '2020-10-02 16:02:49');
INSERT INTO `displays` VALUES (55, '042059877440', 'V 203H', '219751', 15, 2, 73, '1', '2020-11-10 15:47:24', '2020-11-10 15:47:24');
INSERT INTO `displays` VALUES (56, '7002FD81B10360000944', 'HN7002FD', '213316', 20, 1, 72, '1', '2020-11-10 16:33:44', '2020-11-10 16:33:44');
INSERT INTO `displays` VALUES (57, 'W-OX6M03-72827-210-00MS', 'E1912HF', '224463', 3, 2, 74, '1', '2020-11-10 19:09:26', '2020-11-10 19:09:26');
INSERT INTO `displays` VALUES (58, 'ETLJ20W0380380A8494324', 'V203H', '219756', 15, 2, 75, '1', '2020-11-10 21:11:10', '2020-11-10 21:11:10');
INSERT INTO `displays` VALUES (59, 'MMLXXEE0055130CCC38520', 'V246HL', '231106', 15, 2, 76, '1', '2020-11-11 13:22:00', '2020-11-11 13:22:00');
INSERT INTO `displays` VALUES (60, '52907586185', 'V196HQL', '232137', 15, 2, 77, '1', '2020-11-11 13:33:42', '2020-11-11 13:33:42');
INSERT INTO `displays` VALUES (61, '520907583885', 'V196 HQL', '1048890', 15, 2, 80, '1', '2020-11-11 13:58:11', '2020-11-11 13:58:11');
INSERT INTO `displays` VALUES (62, 'MMLXXEE0055130CDAA8520', 'V24BHL', '231109', 15, 2, 79, '1', '2020-11-11 14:00:31', '2020-11-11 14:00:31');
INSERT INTO `displays` VALUES (63, 'CN-0MR1P6-74445-245-AZPL', 'E2011HT', '224782', 3, 2, 78, '1', '2020-11-11 14:07:01', '2020-11-11 14:07:01');
INSERT INTO `displays` VALUES (64, 'OX6M03-72872-21E-CA85', 'E1912HF', '224470', 3, 2, 84, '1', '2020-11-11 14:24:52', '2020-11-11 14:24:52');
INSERT INTO `displays` VALUES (65, 'MMLY0EE075291', '96HQL', '232140', 15, 2, 81, '1', '2020-11-11 14:26:30', '2020-11-11 14:26:30');
INSERT INTO `displays` VALUES (66, 'CM-OMR1P6-74445', 'E1912HF', '224778', 3, 2, 85, '1', '2020-11-11 14:36:48', '2020-11-11 14:36:48');
INSERT INTO `displays` VALUES (67, 'CN0X6M0J7287221EE925', 'E1912HF', '224453', 3, 2, 83, '1', '2020-11-11 14:54:33', '2020-11-11 14:54:33');
INSERT INTO `displays` VALUES (68, 'ETLKM0W09215046DD4344', 'V173', '224952', 15, 2, 86, '1', '2020-11-11 15:00:46', '2020-11-11 15:00:46');
INSERT INTO `displays` VALUES (69, 'ETLFF0C073040E9CE40C3', 'V203H', '219473', 15, 2, 88, '1', '2020-11-11 15:30:25', '2020-11-11 15:30:25');
INSERT INTO `displays` VALUES (70, 'J200F3E0W00JRDAD0313', 'HL-185BW2', '230234', 56, 2, 82, '1', '2020-11-11 15:33:53', '2020-11-11 15:33:53');
INSERT INTO `displays` VALUES (71, 'MS1120008814300CC9K701', 'LS2023MC', '228426', 15, 2, 71, '1', '2020-11-11 15:40:42', '2020-11-11 15:40:42');
INSERT INTO `displays` VALUES (72, '52907539385', 'V196 HQL', '231449', 15, 2, 89, '1', '2020-11-11 16:22:04', '2020-11-11 16:22:04');
INSERT INTO `displays` VALUES (73, '04205987740', 'V203H', '219479', 15, 2, 90, '1', '2020-11-11 16:22:42', '2020-11-11 16:22:42');
INSERT INTO `displays` VALUES (74, 'MMLXXEE0055130CCD08852', 'V246HL', '231107', 15, 2, 94, '1', '2020-11-11 19:21:49', '2020-11-11 19:21:49');
INSERT INTO `displays` VALUES (75, '1S65AAACT6CTV1H033DR', 'V1H033DR', '229322', 13, 2, 91, '1', '2020-11-11 19:26:41', '2020-11-11 19:26:41');
INSERT INTO `displays` VALUES (76, 'J200F3E0W00JRDAD5728', 'HL-185BW2', '230241', 56, 2, 92, '1', '2020-11-11 20:07:32', '2020-11-11 20:07:32');
INSERT INTO `displays` VALUES (77, '21501814843', 'V173', '224951', 15, 2, 96, '1', '2020-11-12 10:10:05', '2020-11-12 10:10:05');
INSERT INTO `displays` VALUES (78, 'M9C67A218355', '7VCR', '213018', 29, 1, 97, '1', '2020-11-12 10:49:41', '2020-11-12 10:49:41');
INSERT INTO `displays` VALUES (79, 'JC07W0E0100JG7C71902', '1772EH', '218203', 21, 1, 99, '1', '2020-11-12 13:42:35', '2020-11-12 13:42:35');
INSERT INTO `displays` VALUES (80, 'CN0X6M0J7287221ECVRS', 'REVA03', '224440', 3, 2, 100, '1', '2020-11-12 14:18:30', '2020-11-12 14:18:30');
INSERT INTO `displays` VALUES (81, 'MMLX8AA00242302F6E2402', 'G196HQL', '229415', 15, 2, 101, '1', '2020-11-12 16:09:41', '2020-11-12 16:09:41');
INSERT INTO `displays` VALUES (82, 'MV87064B4100214', '1772EH', '213840', 14, 1, 102, '1', '2020-11-13 08:20:16', '2020-11-13 08:20:16');
INSERT INTO `displays` VALUES (83, '1S65AAACT6CTU1H02YOB', 'U1H02YOB', '229327', 13, 2, 103, '1', '2020-11-13 08:47:36', '2020-11-13 08:47:36');
INSERT INTO `displays` VALUES (84, 'ETLKM0W090215046124344', 'V173', '224959', 15, 2, 104, '1', '2020-11-13 09:08:30', '2020-11-13 09:08:30');
INSERT INTO `displays` VALUES (85, 'MMLX8AA0023100123F2401', 'G196HQL', '226990', 15, 2, 105, '1', '2020-11-13 09:25:28', '2020-11-13 09:25:28');
INSERT INTO `displays` VALUES (86, 'CN0MR1P674445245544L', 'E2011HT', '224779', 3, 2, 106, '1', '2020-11-13 09:56:45', '2020-11-13 09:56:45');
INSERT INTO `displays` VALUES (87, 'SIN#', 'SIN MODELO', '215283', 75, 1, 108, '1', '2020-11-13 10:04:09', '2020-11-13 10:04:52');
INSERT INTO `displays` VALUES (88, '52907585985', 'V196HQL', '232134', 15, 2, 107, '1', '2020-11-13 10:13:58', '2020-11-13 10:13:58');
INSERT INTO `displays` VALUES (89, 'SIN #', 'SIN MODELO', '213205', 15, 2, 110, '1', '2020-11-13 10:43:05', '2020-11-13 10:43:05');
INSERT INTO `displays` VALUES (90, '4712196625047', 'V196HQL', '232113', 15, 2, 111, '1', '2020-11-13 10:54:32', '2020-11-13 10:54:32');
INSERT INTO `displays` VALUES (91, '7002FD10-83B1020-00761', '7002FD10', '215290', 75, 1, 109, '1', '2020-11-13 10:55:12', '2020-11-13 10:55:12');
INSERT INTO `displays` VALUES (92, '7287221E', 'E152', 'sn', 3, 2, 112, '1', '2020-11-13 10:57:39', '2020-11-13 10:57:39');
INSERT INTO `displays` VALUES (93, 'MV87084B412292', '172EH', '214221', 14, 2, 114, '1', '2020-11-13 11:12:50', '2020-11-13 11:12:50');
INSERT INTO `displays` VALUES (94, 'SIN #', 'SIN MODELO', '232121', 15, 2, 113, '1', '2020-11-13 11:17:57', '2020-11-13 11:17:57');
INSERT INTO `displays` VALUES (95, 'MH712050942', '172EH', '225241', 41, 1, 116, '1', '2020-11-13 11:26:49', '2020-11-13 11:26:49');
INSERT INTO `displays` VALUES (96, 'OMRIP6-74445-245-BY9L', 'E201HT', 'S/N', 3, 2, 115, '1', '2020-11-13 11:28:36', '2020-11-13 11:28:36');
INSERT INTO `displays` VALUES (97, 'ETLFF0C0730420E9C640C3', 'V203H', '219750', 15, 2, 117, '1', '2020-11-13 11:38:44', '2020-11-13 11:38:44');
INSERT INTO `displays` VALUES (98, 'UV87094134121244', '1772EH', 'sn', 14, 1, 119, '1', '2020-11-13 11:45:28', '2020-11-13 11:46:58');
INSERT INTO `displays` VALUES (99, 'ZT15H9NBA05741N', 'S19A10N', '223755', 38, 2, 118, '1', '2020-11-13 11:47:43', '2020-11-13 11:47:43');
INSERT INTO `displays` VALUES (100, 'ETLKMOWO90215045A4344', 'V173', '224954', 15, 2, 93, '1', '2020-11-13 11:55:17', '2020-11-13 11:55:17');
INSERT INTO `displays` VALUES (101, '83B1D20-D14535', '7002FDIV', '215284', 75, 1, 120, '1', '2020-11-13 11:55:26', '2020-11-13 11:55:26');
INSERT INTO `displays` VALUES (102, 'CONMR1P67445245BYZL', 'E2011HT', '224775', 3, 2, 121, '1', '2020-11-13 11:57:39', '2020-11-13 11:57:39');
INSERT INTO `displays` VALUES (103, '21501815243', 'V173', '224935', 15, 2, 124, '1', '2020-11-13 12:14:26', '2020-11-13 12:14:26');
INSERT INTO `displays` VALUES (104, 'MMLYOEEOO75291267C8501', 'V196HQL', '648885', 15, 2, 123, '1', '2020-11-13 13:09:51', '2020-11-13 13:09:51');
INSERT INTO `displays` VALUES (105, '52907541185', 'V196HQL', '232148', 15, 2, 126, '1', '2020-11-13 13:14:42', '2020-11-13 13:14:42');
INSERT INTO `displays` VALUES (106, 'U40C7DS-615-8A', '7VLR', '213101', 29, 1, 122, '1', '2020-11-13 13:24:43', '2020-11-13 13:24:43');
INSERT INTO `displays` VALUES (107, '6921958635196', '7002FDLO', '215282', 21, 2, 127, '1', '2020-11-13 13:42:43', '2020-11-13 13:42:43');
INSERT INTO `displays` VALUES (108, 'J200F3EOW00JAD9D6206', 'HL-1853W2', '2302430', 56, 2, 129, '1', '2020-11-13 14:07:08', '2020-11-13 14:07:08');
INSERT INTO `displays` VALUES (109, 'MV87094B4122688', '1772EH', '213859', 14, 1, 128, '1', '2020-11-13 14:10:16', '2020-11-13 14:10:16');
INSERT INTO `displays` VALUES (110, 'MMLXXE0055BOCD18520', 'V246HL', '231093', 15, 1, 130, '1', '2020-11-13 14:22:07', '2020-11-13 14:22:07');
INSERT INTO `displays` VALUES (111, 'T2014SA', '60E6', '232534', 78, 2, 131, '1', '2020-11-13 14:25:58', '2020-11-13 14:26:59');
INSERT INTO `displays` VALUES (112, 'CN0X6M0J7287221EE6PS', 'E1912HF', '224459', 3, 2, 132, '1', '2020-11-13 14:37:59', '2020-11-13 14:37:59');
INSERT INTO `displays` VALUES (113, 'CN0X6M0J7287221EE47S', 'REVA03', '224427', 3, 1, 125, '1', '2020-11-13 14:42:22', '2020-11-13 14:44:55');
INSERT INTO `displays` VALUES (114, 'JC07W0E0100JG7C71485', '1772EH', '218249', 41, 1, 134, '1', '2020-11-13 14:48:51', '2020-11-13 14:48:51');
INSERT INTO `displays` VALUES (115, 'JC07W0E0100JG7C71438', '1772EH', '218237', 41, 1, 133, '1', '2020-11-13 15:00:50', '2020-11-13 15:00:50');
INSERT INTO `displays` VALUES (116, '4712196625047', 'V196HQL', '232110', 15, 2, 137, '1', '2020-11-13 15:18:22', '2020-11-13 15:18:22');
INSERT INTO `displays` VALUES (117, '1S65AAACT6CT', 'U1H033F6', '229321', 13, 2, 135, '1', '2020-11-13 15:30:11', '2020-11-13 15:30:11');
INSERT INTO `displays` VALUES (118, 'MMLX8AA0023100124C2401', 'G196HQL', '226986', 15, 2, 138, '1', '2020-11-16 09:16:38', '2020-11-16 09:16:38');
INSERT INTO `displays` VALUES (119, 'MV87074B4111074', '17772EH', '214212', 14, 1, 136, '1', '2020-11-16 09:28:13', '2020-11-16 09:28:13');
INSERT INTO `displays` VALUES (120, 'JC07W0E0100JG7CA0911', '1772EH', '218247', 41, 1, 139, '1', '2020-11-16 09:37:29', '2020-11-16 09:37:29');
INSERT INTO `displays` VALUES (121, 'OCC639-72872-625-4MNL', 'E176FP1', 'sn', 3, 2, 140, '1', '2020-11-16 09:57:28', '2020-11-16 09:57:28');
INSERT INTO `displays` VALUES (122, 'SN', 'SN', 'sn', 15, 2, 141, '1', '2020-11-16 10:13:21', '2020-11-16 10:13:21');
INSERT INTO `displays` VALUES (123, 'OXGMOJ-72872-21D-DF35', 'E1912HF', '224458', 3, 2, 142, '1', '2020-11-16 11:06:09', '2020-11-16 11:06:09');
INSERT INTO `displays` VALUES (124, '2150ETLKM090215046184', 'VIT3', '224953', 15, 2, 51, '1', '2020-11-16 11:14:03', '2020-11-16 11:14:03');
INSERT INTO `displays` VALUES (125, '52907585385', 'V196HQL', '232131', 15, 2, 143, '1', '2020-11-16 11:50:07', '2020-11-16 11:50:07');
INSERT INTO `displays` VALUES (126, 'N/S', 'E1191-2HF', '224471', 21, 1, 53, '1', '2020-11-16 11:56:58', '2020-11-16 11:56:58');
INSERT INTO `displays` VALUES (127, 'J200F3E0W00JRDA6018', 'HL/185BW2', '230247', 41, 2, 151, '1', '2020-11-16 13:59:36', '2020-11-16 13:59:36');
INSERT INTO `displays` VALUES (128, '1565AAACT6CTUIH02X74', 'UIH02XZH', '229325', 13, 2, 152, '1', '2020-11-16 14:35:16', '2020-11-16 14:35:16');
INSERT INTO `displays` VALUES (129, 'MMLXBAA0024250552E2402', 'G196-HQL', '2294020', 15, 2, 153, '1', '2020-11-18 08:50:55', '2020-11-18 08:50:55');
INSERT INTO `displays` VALUES (130, 'CN-OMR1PG-74445-245-BYKL', 'REU-A02', '224777', 3, 2, 154, '1', '2020-11-18 09:02:16', '2020-11-18 09:02:43');
INSERT INTO `displays` VALUES (131, 'JC07WOE0100JG7A80971', 'HV-705', '218696', 41, 1, 155, '1', '2020-11-18 09:27:27', '2020-11-18 09:27:27');
INSERT INTO `displays` VALUES (132, '52907539685', 'V19GHQL', '232132', 15, 2, 156, '1', '2020-11-18 10:17:09', '2020-11-18 10:17:09');
INSERT INTO `displays` VALUES (133, 'J200F3E0W00JRDAD0', 'HL-185BW2', '230252', 56, 2, 150, '1', '2020-11-18 15:20:39', '2020-11-18 15:20:39');
INSERT INTO `displays` VALUES (134, 'MV87094B4141787', '1772EH', '213102', 14, 1, 149, '1', '2020-11-18 15:34:02', '2020-11-18 15:34:02');
INSERT INTO `displays` VALUES (135, '692158635196', '7002FD10', '215307', 75, 1, 157, '1', '2020-11-19 08:07:25', '2020-11-19 08:07:25');
INSERT INTO `displays` VALUES (136, 'CX000504729177', '107E61', '212269', 80, 2, 158, '1', '2020-11-19 09:07:52', '2020-11-19 09:07:52');
INSERT INTO `displays` VALUES (137, '9171602008', '7254E', '218824', 15, 1, 159, '1', '2020-11-19 11:45:06', '2020-11-19 11:45:06');
INSERT INTO `displays` VALUES (138, '887899106439', 'V176L', '231457', 15, 2, 160, '1', '2020-11-19 15:33:34', '2020-11-19 15:33:34');
INSERT INTO `displays` VALUES (139, 'ETLKM0W090215046C64344', 'V173', '224956', 15, 2, 161, '1', '2020-11-19 16:03:40', '2020-11-19 16:03:40');
INSERT INTO `displays` VALUES (140, 'J200F3E0W00JRDAD5997', 'HL-185BW2', '230232', 56, 2, 162, '1', '2020-11-19 16:15:09', '2020-11-19 16:15:09');
INSERT INTO `displays` VALUES (141, 'MV87064B4100924', '1772EH', '213849', 14, 1, 163, '1', '2020-11-20 08:29:01', '2020-11-20 08:29:01');
INSERT INTO `displays` VALUES (142, '303D158075', 'GB553H-AL', '210915', 5, 1, 164, '1', '2020-11-20 09:06:44', '2020-11-20 09:06:44');
INSERT INTO `displays` VALUES (143, '7002FD10-83B1019-02', '7002FD10', '215287', 75, 1, 148, '1', '2020-11-20 09:33:30', '2020-11-20 09:33:30');
INSERT INTO `displays` VALUES (144, '1565AACT6CTY1', 'L52014WD', '229326', 13, 2, 147, '1', '2020-11-20 09:58:17', '2020-11-20 09:58:17');
INSERT INTO `displays` VALUES (145, 'JC07W0E0100JG7CA0321', '1772EH', '218248', 41, 1, 165, '1', '2020-11-20 10:12:06', '2020-11-20 10:12:06');
INSERT INTO `displays` VALUES (146, 'RTLKM0W090215046D34', 'V173', '224955', 15, 2, 146, '1', '2020-11-20 11:04:28', '2020-11-20 11:04:28');
INSERT INTO `displays` VALUES (147, 'OX6M0J7287221EE6RS', 'REVA03', '224425', 3, 2, 166, '1', '2020-11-20 11:31:56', '2020-11-20 11:31:56');
INSERT INTO `displays` VALUES (148, 'J200F3E0W00JRD9D6242', 'HL-185BW2', '230445', 56, 2, 167, '1', '2020-11-20 11:42:19', '2020-11-20 11:42:19');
INSERT INTO `displays` VALUES (149, 'CN-0X6M0J7287221EC33S', 'E1912HF', '224460', 3, 2, 144, '1', '2020-11-20 11:53:11', '2020-11-20 11:53:11');
INSERT INTO `displays` VALUES (150, 'CN-0MR1P6-74445-245-A7EL', 'E2011HT', '224780', 3, 2, 145, '1', '2020-11-20 12:05:54', '2020-11-20 12:05:54');
INSERT INTO `displays` VALUES (151, '04205988340', 'V203H', '219752', 15, 2, 168, '1', '2020-11-20 14:08:01', '2020-11-20 14:08:01');
INSERT INTO `displays` VALUES (152, 'CN0MR1P674445245560L', 'REVA02', '224773', 3, 2, 170, '1', '2020-11-24 13:40:37', '2020-11-24 13:40:37');
INSERT INTO `displays` VALUES (153, 'JCO7W0E0100JG', '1772EH', '219759', 54, 1, 171, '1', '2020-11-24 14:11:15', '2020-11-24 14:11:15');
INSERT INTO `displays` VALUES (154, 'SN', 'SN', 'SN', 21, 1, 172, '1', '2020-11-24 14:24:41', '2020-11-24 14:24:41');
INSERT INTO `displays` VALUES (155, '04205989440', 'U203H', 'SN', 15, 2, 173, '1', '2020-11-24 14:36:20', '2020-11-24 14:36:20');
INSERT INTO `displays` VALUES (156, '21501787743', 'V137', 'SN', 15, 2, 174, '1', '2020-11-24 15:03:26', '2020-11-24 15:03:26');
INSERT INTO `displays` VALUES (157, '52907539985', 'V19HQL', '232127', 15, 2, 175, '1', '2020-11-24 15:11:14', '2020-11-24 15:11:14');
INSERT INTO `displays` VALUES (158, 'G40C70C', '7VIR', 'sn', 21, 1, 176, '1', '2020-11-30 08:26:54', '2020-11-30 08:26:54');
INSERT INTO `displays` VALUES (159, 'MU87064B4100219', '177EH', '213861', 84, 1, 177, '1', '2020-11-30 15:18:26', '2020-11-30 15:18:26');

-- ----------------------------
-- Table structure for entrada_medios
-- ----------------------------
DROP TABLE IF EXISTS `entrada_medios`;
CREATE TABLE `entrada_medios`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `medio` int(11) NOT NULL,
  `nm_ueb_id` bigint(20) UNSIGNED NOT NULL,
  `nm_departamento_id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `entrada_medios_nm_ueb_id_foreign`(`nm_ueb_id`) USING BTREE,
  INDEX `entrada_medios_nm_departamento_id_foreign`(`nm_departamento_id`) USING BTREE,
  CONSTRAINT `entrada_medios_nm_departamento_id_foreign` FOREIGN KEY (`nm_departamento_id`) REFERENCES `nm_departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `entrada_medios_nm_ueb_id_foreign` FOREIGN KEY (`nm_ueb_id`) REFERENCES `nm_uebs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of entrada_medios
-- ----------------------------
INSERT INTO `entrada_medios` VALUES (1, 4, 17, 43, 'DIsco Seagate 1Tb con MODELO ST1000DM010 con SERIE ZN176L4R para PC 225330', '2021-02-23 11:25:51', '2021-02-23 11:30:47');
INSERT INTO `entrada_medios` VALUES (2, 5, 17, 43, 'MARCA HyperX HX426C15FBK2 4GB 1911-0000000B334539-P000242 para PC 225330', '2021-02-23 11:28:36', '2021-02-23 11:30:40');
INSERT INTO `entrada_medios` VALUES (3, 2, 17, 43, 'CPU Core i5-9400 2.9GHz 9MB LGA 1151 con SERIE U92W1S2800092 para PC 225330', '2021-02-23 11:33:02', '2021-02-23 11:33:02');
INSERT INTO `entrada_medios` VALUES (4, 3, 17, 43, 'FUENTE EPOWER 500W con MODELO EP-500PM con  SERIE EW20190101623 para PC 225330', '2021-02-23 11:33:57', '2021-02-23 11:33:57');
INSERT INTO `entrada_medios` VALUES (5, 1, 17, 43, 'MB B360M-D3H-GSM  con SOCKET 1151 con SERIE 1846650025952 para PC 225330', '2021-02-23 11:35:02', '2021-02-23 11:35:02');
INSERT INTO `entrada_medios` VALUES (6, 6, 17, 43, 'Lector DVD/RW LG Super Multi DVD Writer con MODELO GH24NSCO con SERIE 705HFYS096402 para PC 225330', '2021-02-23 13:08:15', '2021-02-23 13:08:15');
INSERT INTO `entrada_medios` VALUES (7, 3, 18, 45, 'MARCA Seasonic con MODELO SSP-350ST con POTENCIA 350 watts para PC 225331', '2021-03-01 12:02:51', '2021-03-01 12:02:51');
INSERT INTO `entrada_medios` VALUES (8, 5, 18, 45, 'MARCA HyperX con CAPACIDAD 4GB con FRECUENCIA 2400MHz con SERIE 00000008334539-P000264 para PC 225331', '2021-03-01 12:04:08', '2021-03-01 12:04:08');
INSERT INTO `entrada_medios` VALUES (10, 2, 18, 45, 'CPU Core i5-9400 2.9GHz 9MB LGA 1151 con SERIE U9F461Q001306 para PC 225331', '2021-03-01 12:06:51', '2021-03-01 12:06:51');
INSERT INTO `entrada_medios` VALUES (11, 1, 18, 45, 'MB B360M-D3H-GSM con SOCKET 1151 con SERIE 184650025951 para PC 225331', '2021-03-01 12:07:31', '2021-03-01 12:07:31');
INSERT INTO `entrada_medios` VALUES (12, 9, 2, 2, 'Puertos USB 3.0 para PC 228295', '2021-03-01 12:49:50', '2021-03-01 12:49:50');
INSERT INTO `entrada_medios` VALUES (13, 9, 2, 2, 'Puertos USB 3.0 para PC 212928', '2021-03-01 12:50:17', '2021-03-01 12:50:17');
INSERT INTO `entrada_medios` VALUES (14, 9, 2, 2, 'Puertos USB 3.0 para PC 226978', '2021-03-01 12:50:38', '2021-03-01 12:50:38');
INSERT INTO `entrada_medios` VALUES (15, 9, 2, 2, 'Puertos USB 3.0 para PC 210892', '2021-03-01 12:51:25', '2021-03-01 12:51:25');
INSERT INTO `entrada_medios` VALUES (16, 9, 2, 2, 'Puertos USB 3.0 para PC 213010', '2021-03-01 12:51:42', '2021-03-01 12:51:42');
INSERT INTO `entrada_medios` VALUES (17, 9, 2, 2, 'Puertos USB 3.0 para PC 232896', '2021-03-01 12:52:01', '2021-03-01 12:52:01');
INSERT INTO `entrada_medios` VALUES (18, 9, 2, 2, 'Puertos USB 3.0 para PC 215004', '2021-03-01 12:52:21', '2021-03-01 12:52:21');
INSERT INTO `entrada_medios` VALUES (19, 9, 2, 2, 'Puertos USB 3.0 para PC 213804', '2021-03-01 12:53:08', '2021-03-01 12:53:08');
INSERT INTO `entrada_medios` VALUES (20, 9, 20, 46, 'Puertos USB 3.0 para PC 225325', '2021-03-01 12:54:09', '2021-03-01 12:54:09');
INSERT INTO `entrada_medios` VALUES (21, 9, 21, 47, 'Puertos USB 3.0 para PC 225333', '2021-03-01 12:54:56', '2021-03-01 12:54:56');
INSERT INTO `entrada_medios` VALUES (22, 9, 17, 43, 'Puertos USB 3.0 para PC 225330', '2021-03-01 12:55:15', '2021-03-01 12:55:15');
INSERT INTO `entrada_medios` VALUES (23, 9, 18, 45, 'Puertos USB 3.0 para PC 225331', '2021-03-01 12:56:00', '2021-03-01 12:56:00');
INSERT INTO `entrada_medios` VALUES (24, 8, 2, 2, 'Bateria para UPS 222777', '2021-03-03 10:57:23', '2021-03-03 10:57:23');
INSERT INTO `entrada_medios` VALUES (25, 8, 2, 2, 'Bateria para UPS 222777', '2021-03-03 10:57:32', '2021-03-03 10:57:32');
INSERT INTO `entrada_medios` VALUES (26, 8, 23, 48, 'Bateria para UPS 232513', '2021-03-03 10:57:48', '2021-03-03 10:57:48');
INSERT INTO `entrada_medios` VALUES (27, 8, 22, 39, 'Bateria para UPS 18054', '2021-03-03 10:58:10', '2021-03-03 10:58:10');
INSERT INTO `entrada_medios` VALUES (28, 12, 21, 49, 'Teclado por servicio 229498', '2021-03-03 10:59:51', '2021-03-03 10:59:51');
INSERT INTO `entrada_medios` VALUES (29, 12, 21, 49, 'Teclado por servicio 232600', '2021-03-03 11:00:03', '2021-03-03 11:00:03');
INSERT INTO `entrada_medios` VALUES (30, 12, 21, 49, 'Teclado por servicio 228563', '2021-03-03 11:00:20', '2021-03-03 11:00:20');
INSERT INTO `entrada_medios` VALUES (31, 12, 24, 40, 'Teclado por servicio 418920', '2021-03-03 11:43:21', '2021-03-03 11:43:21');
INSERT INTO `entrada_medios` VALUES (32, 12, 2, 2, 'Teclado por servicio 219039', '2021-03-03 11:43:40', '2021-03-03 11:43:40');
INSERT INTO `entrada_medios` VALUES (33, 12, 2, 2, 'Teclado por servicio 228386', '2021-03-03 11:43:53', '2021-03-03 11:43:53');
INSERT INTO `entrada_medios` VALUES (34, 12, 19, 42, 'Teclado por servicio 231147', '2021-03-03 11:44:09', '2021-03-03 11:44:09');
INSERT INTO `entrada_medios` VALUES (35, 12, 2, 2, 'Teclado por servicio 228572', '2021-03-03 11:44:47', '2021-03-03 11:44:47');
INSERT INTO `entrada_medios` VALUES (36, 12, 5, 29, 'Teclado por servicio 219779', '2021-03-03 11:45:13', '2021-03-03 11:45:13');
INSERT INTO `entrada_medios` VALUES (37, 13, 24, 40, 'Mouse por servicio 219316', '2021-03-03 11:45:52', '2021-03-03 11:45:52');
INSERT INTO `entrada_medios` VALUES (38, 13, 2, 17, 'Mouse por servicio 231196', '2021-03-03 12:01:16', '2021-03-03 12:01:16');
INSERT INTO `entrada_medios` VALUES (39, 13, 19, 50, 'Mouse por servicio 229447', '2021-03-03 12:02:53', '2021-03-03 12:02:53');
INSERT INTO `entrada_medios` VALUES (40, 13, 19, 50, 'Mouse por servicio 219493', '2021-03-03 12:03:10', '2021-03-03 12:03:10');
INSERT INTO `entrada_medios` VALUES (41, 13, 25, 51, 'Mouse por servicio 225508', '2021-03-03 12:04:05', '2021-03-03 12:04:05');
INSERT INTO `entrada_medios` VALUES (42, 13, 25, 51, 'Mouse por servicio 225507', '2021-03-03 12:04:18', '2021-03-03 12:04:18');
INSERT INTO `entrada_medios` VALUES (43, 13, 25, 51, 'Mouse por servicio 232066', '2021-03-03 12:04:42', '2021-03-03 12:04:42');
INSERT INTO `entrada_medios` VALUES (44, 13, 11, 30, 'Mouse por servicio 219106', '2021-03-03 12:05:06', '2021-03-03 12:05:06');
INSERT INTO `entrada_medios` VALUES (45, 13, 5, 29, 'Mouse por servicio 230334', '2021-03-03 12:05:22', '2021-03-03 12:05:22');
INSERT INTO `entrada_medios` VALUES (46, 13, 26, 52, 'Mouse por servicio 232681', '2021-03-03 12:06:07', '2021-03-03 12:06:07');
INSERT INTO `entrada_medios` VALUES (47, 12, 7, 24, 'Teclado por servico 228595', '2021-03-03 12:12:36', '2021-03-03 12:12:36');
INSERT INTO `entrada_medios` VALUES (48, 12, 7, 24, 'Teclado por servico 219480', '2021-03-03 12:12:58', '2021-03-03 12:12:58');
INSERT INTO `entrada_medios` VALUES (49, 1, 26, 53, 'MB B360M-D3H-GSM con SOCKET 1151 con SERIE 184550025960 para PC 229395', '2021-03-09 10:19:29', '2021-03-09 10:19:29');
INSERT INTO `entrada_medios` VALUES (50, 1, 27, 54, 'MB B360M-D3H-GSM con SOCKET 1151 con SERIE 184650025957 para PC 226972', '2021-03-09 10:20:47', '2021-03-09 10:20:47');
INSERT INTO `entrada_medios` VALUES (51, 2, 26, 53, 'CPU Core i5-9400 2.9GHz 9MB LGA 1151 con SERIE U9LP754301718 para PC 229395', '2021-03-09 10:21:49', '2021-03-09 10:21:49');
INSERT INTO `entrada_medios` VALUES (52, 2, 27, 54, 'CPU Core i5-9400 2.9GHz 9MB LGA 1151 con SERIE U9J85V`901945 para PC 226972', '2021-03-09 10:22:23', '2021-03-09 10:22:23');
INSERT INTO `entrada_medios` VALUES (53, 3, 26, 53, 'FUENTE SEASONIC 350W con MODELO SSP-350ST con SERIE CY04A21820266 para PC 229395', '2021-03-09 10:23:58', '2021-03-09 10:23:58');
INSERT INTO `entrada_medios` VALUES (54, 3, 27, 54, 'FUENTE SEASONIC 350W con MODELO SSP-350ST con SERIE CY04A21820267 para PC 226972', '2021-03-09 10:25:03', '2021-03-09 10:25:03');
INSERT INTO `entrada_medios` VALUES (55, 5, 26, 53, 'MARCA HyperX HX426C15FBK2 4GB 1911-0000000B334539-P000236 para PC 229395', '2021-03-09 10:26:12', '2021-03-09 10:26:12');
INSERT INTO `entrada_medios` VALUES (56, 5, 27, 54, 'MARCA HyperX HX426C15FBK2 4GB 1911-0000000B334539-P000239 para PC 226972', '2021-03-09 10:26:36', '2021-03-09 10:26:36');

-- ----------------------------
-- Table structure for fuentes
-- ----------------------------
DROP TABLE IF EXISTS `fuentes`;
CREATE TABLE `fuentes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_potencia_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fuentes_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `fuentes_nm_potencia_id_foreign`(`nm_potencia_id`) USING BTREE,
  INDEX `fuentes_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `fuentes_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fuentes_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fuentes_nm_potencia_id_foreign` FOREIGN KEY (`nm_potencia_id`) REFERENCES `nm_potencias` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuentes
-- ----------------------------
INSERT INTO `fuentes` VALUES (2, '1153501747', 'TM-500-PSSR-M3', 10, 3, 8, '1', '2020-09-03 16:17:22', '2020-09-03 16:17:22');
INSERT INTO `fuentes` VALUES (3, 'A136140PS02492', 'SDGR-500BX', 18, 3, 9, '1', '2020-09-03 19:50:47', '2020-09-03 19:51:25');
INSERT INTO `fuentes` VALUES (4, 'SN', 'FSP300-40AABA', 23, 5, 10, '1', '2020-09-04 15:02:26', '2020-09-04 15:02:30');
INSERT INTO `fuentes` VALUES (5, 'SN', 'HK350-415P', 26, 6, 11, '1', '2020-09-04 15:31:33', '2020-09-04 15:31:41');
INSERT INTO `fuentes` VALUES (6, 'SN', 'FSP-220', 23, 7, 12, '1', '2020-09-04 15:39:35', '2020-09-04 15:39:45');
INSERT INTO `fuentes` VALUES (7, '9PA2202500', 'FSP220-30FABA', 23, 7, 13, '1', '2020-09-04 16:02:26', '2020-09-04 16:02:26');
INSERT INTO `fuentes` VALUES (8, 'SY040313004093', 'V500', 32, 3, 14, '1', '2020-09-04 18:04:04', '2020-09-04 18:04:38');
INSERT INTO `fuentes` VALUES (9, '18176', 'EP-500', 37, 3, 15, '1', '2020-09-07 11:48:14', '2020-09-07 11:49:44');
INSERT INTO `fuentes` VALUES (10, 'YL080614000607', 'V-500', 32, 3, 16, '1', '2020-09-07 12:03:56', '2020-09-07 12:03:56');
INSERT INTO `fuentes` VALUES (11, '00332521', 'PS5221', 40, 7, 17, '1', '2020-09-07 12:18:36', '2020-09-07 12:18:36');
INSERT INTO `fuentes` VALUES (12, 'PY220B0091H60177FP803', 'PS-5221-06', 40, 7, 18, '1', '2020-09-07 13:04:07', '2020-09-07 13:04:07');
INSERT INTO `fuentes` VALUES (13, 'PY220B00914602098P803', 'PS-5221-06', 40, 7, 19, '1', '2020-09-07 13:29:45', '2020-09-07 13:29:45');
INSERT INTO `fuentes` VALUES (14, 'XL800514000256', 'V-500', 32, 9, 20, '1', '2020-09-07 14:30:15', '2020-09-07 14:30:15');
INSERT INTO `fuentes` VALUES (15, 'PY300C00B014063P901', 'HP-D3008E0', 43, 10, 22, '1', '2020-09-07 14:43:56', '2020-09-07 14:44:37');
INSERT INTO `fuentes` VALUES (16, 'CN06V47947890', 'H265AM', 3, 2, 21, '1', '2020-09-07 14:46:06', '2020-09-07 14:46:06');
INSERT INTO `fuentes` VALUES (17, '00331072', 'PS-5221-06', 40, 7, 23, '1', '2020-09-07 15:35:16', '2020-09-07 15:35:16');
INSERT INTO `fuentes` VALUES (18, 'PY300C00301400158P901', 'HP-D3008E0', 43, 5, 24, '1', '2020-09-07 16:09:48', '2020-09-07 16:09:48');
INSERT INTO `fuentes` VALUES (19, 'YL080517000751', 'V500', 32, 3, 34, '1', '2020-09-08 14:20:57', '2020-09-08 14:20:57');
INSERT INTO `fuentes` VALUES (20, 'SN', 'PCB037', 47, 12, 40, '1', '2020-09-08 15:59:56', '2020-09-08 15:59:56');
INSERT INTO `fuentes` VALUES (21, 'HUNTKEY', 'ST500DM002', 11, 8, 39, '1', '2020-09-08 16:33:07', '2020-09-08 16:33:07');
INSERT INTO `fuentes` VALUES (22, '4L080514000772', 'V500', 32, 3, 38, '1', '2020-09-09 15:36:40', '2020-09-09 15:36:40');
INSERT INTO `fuentes` VALUES (23, 'PC2201800242900234P412', 'FSP220', 23, 7, 37, '1', '2020-09-10 14:03:43', '2020-09-10 14:03:43');
INSERT INTO `fuentes` VALUES (24, 'YL081213002419', 'V500', 32, 3, 36, '1', '2020-09-10 15:17:23', '2020-09-10 15:17:23');
INSERT INTO `fuentes` VALUES (25, '2505001573', 'HK350-4ISP', 26, 6, 33, '1', '2020-09-10 15:57:16', '2020-09-10 15:57:16');
INSERT INTO `fuentes` VALUES (26, 'PY3000902133100BA0P205', 'DSP-300AB-57A', 15, 5, 32, '1', '2020-09-11 13:42:17', '2020-09-11 13:42:17');
INSERT INTO `fuentes` VALUES (27, 'PY2200B009146018E1P803', 'PS-5221-06', 40, 7, 31, '1', '2020-09-14 13:13:01', '2020-09-14 13:13:01');
INSERT INTO `fuentes` VALUES (28, 'YLUSU514000836', 'N/S', 32, 3, 30, '1', '2020-09-23 11:45:53', '2020-09-23 11:45:53');
INSERT INTO `fuentes` VALUES (29, 'YL080614000S01', 'V-500', 32, 3, 54, '1', '2020-09-23 12:11:17', '2020-09-23 12:11:17');
INSERT INTO `fuentes` VALUES (30, '00517197', 'L230N00', 3, 7, 29, '1', '2020-09-23 12:55:07', '2020-09-23 12:55:07');
INSERT INTO `fuentes` VALUES (31, 'A1361405P501641', '5DGR-500BX', 18, 3, 55, '1', '2020-09-23 13:18:25', '2020-09-23 13:18:25');
INSERT INTO `fuentes` VALUES (32, 'YL080614000372', 'N/S', 32, 3, 28, '1', '2020-09-23 14:33:30', '2020-09-23 14:33:30');
INSERT INTO `fuentes` VALUES (33, 'RS500PSARI31120301382', 'RS-500-PSAR-13', 32, 12, 26, '1', '2020-09-23 15:14:15', '2020-09-23 15:14:15');
INSERT INTO `fuentes` VALUES (34, '00520814', 'L230N-00', 3, 10, 25, '1', '2020-09-23 15:47:23', '2020-09-23 15:47:23');
INSERT INTO `fuentes` VALUES (35, 'IMJ7Y6013012800472', 'ATX3035-450', 36, 3, 27, '1', '2020-09-23 15:58:42', '2020-09-23 15:58:42');
INSERT INTO `fuentes` VALUES (36, 'YL080614000879', 'V500', 32, 3, 35, '1', '2020-09-23 16:07:43', '2020-09-23 16:07:43');
INSERT INTO `fuentes` VALUES (37, 'SN', 'EP-500PM', 37, 3, 56, '1', '2020-09-24 11:50:16', '2020-09-24 11:50:16');
INSERT INTO `fuentes` VALUES (38, '00333836', 'P5-5221-06', 40, 7, 58, '1', '2020-09-24 12:08:48', '2020-09-24 12:08:48');
INSERT INTO `fuentes` VALUES (39, '878294014747', 'PSIM45W', 36, 13, 57, '1', '2020-09-24 12:45:47', '2020-09-24 12:47:15');
INSERT INTO `fuentes` VALUES (40, 'YL08051400039', 'V-500', 32, 3, 59, '1', '2020-09-24 12:45:50', '2020-09-24 12:45:50');
INSERT INTO `fuentes` VALUES (41, 'YL050516000831', 'V-500', 32, 3, 60, '1', '2020-09-24 13:44:50', '2020-09-24 13:44:50');
INSERT INTO `fuentes` VALUES (42, 'A1391405PS02497', 'SDGR-500BX', 18, 3, 61, '1', '2020-09-24 15:09:52', '2020-09-24 15:09:52');
INSERT INTO `fuentes` VALUES (43, 'YL080514000253', 'V-500', 32, 3, 50, '1', '2020-09-25 13:16:40', '2020-09-25 13:16:40');
INSERT INTO `fuentes` VALUES (44, '949003066326', 'AF-B500E', 58, 3, 49, '1', '2020-09-25 13:41:13', '2020-09-25 13:41:13');
INSERT INTO `fuentes` VALUES (45, '00334104', 'JPT50E', 40, 7, 62, '1', '2020-09-25 14:02:47', '2020-09-25 14:02:47');
INSERT INTO `fuentes` VALUES (46, 'IMJ76012041300385', 'PS-IM450W', 22, 13, 48, '1', '2020-09-25 15:01:35', '2020-09-25 15:01:35');
INSERT INTO `fuentes` VALUES (47, '00332531', 'PS-5221-06', 40, 10, 63, '1', '2020-09-25 15:25:07', '2020-09-25 15:25:07');
INSERT INTO `fuentes` VALUES (48, 'PY220DF00620401267P901', 'CPB09-D220E', 43, 7, 64, '1', '2020-09-25 16:18:40', '2020-09-25 16:18:40');
INSERT INTO `fuentes` VALUES (49, 'A1361405PS02509', 'SD6R-500BX', 18, 3, 46, '1', '2020-09-28 13:17:27', '2020-09-28 13:17:27');
INSERT INTO `fuentes` VALUES (50, 'PY2200B009146018E1P803', 'PS-5221-06', 40, 7, 45, '1', '2020-09-28 13:23:56', '2020-09-28 13:23:56');
INSERT INTO `fuentes` VALUES (51, '01755445', 'PS-5161-1D1', 3, 16, 65, '1', '2020-09-29 13:10:43', '2020-09-29 13:11:49');
INSERT INTO `fuentes` VALUES (52, 'YL080514000184', 'ST500DM002', 32, 3, 44, '1', '2020-09-29 14:19:58', '2020-09-29 14:19:58');
INSERT INTO `fuentes` VALUES (53, '00320442', 'PS-5221-06A2', 40, 7, 43, '1', '2020-09-29 15:20:07', '2020-09-29 15:20:07');
INSERT INTO `fuentes` VALUES (54, 'YL050514000838', 'V500', 32, 3, 42, '1', '2020-09-30 13:02:54', '2020-09-30 13:02:54');
INSERT INTO `fuentes` VALUES (55, 'YL080514000258', 'V500', 32, 14, 66, '1', '2020-09-30 14:15:41', '2020-09-30 14:16:09');
INSERT INTO `fuentes` VALUES (56, '9PA22025DD', 'PSP220-3DF-ABA', 23, 7, 67, '1', '2020-09-30 15:13:59', '2020-09-30 15:13:59');
INSERT INTO `fuentes` VALUES (57, 'SN', 'TDP-650 PM', 63, 4, 68, '1', '2020-10-01 12:10:33', '2020-10-01 12:12:40');
INSERT INTO `fuentes` VALUES (58, '878294014147', 'PS-IM450W', 36, 13, 69, '1', '2020-10-02 15:59:18', '2020-10-02 15:59:18');
INSERT INTO `fuentes` VALUES (59, 'A1361405PS00329', 'SDGR-500BX', 18, 3, 70, '1', '2020-10-02 16:31:50', '2020-10-02 16:31:50');
INSERT INTO `fuentes` VALUES (60, 'YL050510000819', 'V-500', 32, 3, 72, '1', '2020-11-10 14:39:20', '2020-11-10 14:39:20');
INSERT INTO `fuentes` VALUES (61, '4L080514000003', 'V-500', 32, 3, 73, '1', '2020-11-10 15:42:55', '2020-11-10 15:42:55');
INSERT INTO `fuentes` VALUES (62, 'YL080614000502', 'V-500', 32, 3, 75, '1', '2020-11-10 18:38:45', '2020-11-10 18:38:45');
INSERT INTO `fuentes` VALUES (63, 'IMJZR6012041300758', 'PS-IM450W', 36, 13, 74, '1', '2020-11-10 18:48:27', '2020-11-10 18:48:27');
INSERT INTO `fuentes` VALUES (64, 'TM500PSSRM3115353501547', 'TM500PSSRM3', 10, 3, 76, '1', '2020-11-11 13:17:25', '2020-11-11 13:17:25');
INSERT INTO `fuentes` VALUES (65, 'YL08051400008', 'V-500', 32, 3, 77, '1', '2020-11-11 13:27:33', '2020-11-11 13:27:33');
INSERT INTO `fuentes` VALUES (66, 'E181356', 'HK560-18FP', 26, 13, 79, '1', '2020-11-11 13:41:51', '2020-11-11 13:41:51');
INSERT INTO `fuentes` VALUES (67, '0201500411', 'GT-150WIFX', 18, 16, 78, '1', '2020-11-11 13:42:39', '2020-11-11 13:42:39');
INSERT INTO `fuentes` VALUES (68, 'YL050514000812', 'V-500', 32, 3, 80, '1', '2020-11-11 13:50:38', '2020-11-11 13:50:38');
INSERT INTO `fuentes` VALUES (69, 'XL-085004000326', 'V-500', 32, 3, 81, '1', '2020-11-11 14:05:12', '2020-11-11 14:05:27');
INSERT INTO `fuentes` VALUES (70, 'YLD5D14000811', 'V-500', 32, 3, 84, '1', '2020-11-11 14:19:47', '2020-11-11 14:19:47');
INSERT INTO `fuentes` VALUES (71, 'YL050514000839', 'V-500', 32, 3, 82, '1', '2020-11-11 14:20:21', '2020-11-11 14:20:21');
INSERT INTO `fuentes` VALUES (72, 'E13084', 'EP-500W', 37, 3, 85, '1', '2020-11-11 14:32:24', '2020-11-11 14:32:24');
INSERT INTO `fuentes` VALUES (73, 'IMJZYG012041300618', 'PSIM450W', 36, 13, 83, '1', '2020-11-11 14:35:29', '2020-11-11 14:35:29');
INSERT INTO `fuentes` VALUES (74, '0201500421', 'GT-150WIFX', 21, 16, 86, '1', '2020-11-11 14:46:11', '2020-11-11 14:46:11');
INSERT INTO `fuentes` VALUES (75, 'YL0806140003745', 'V-500', 32, 3, 71, '1', '2020-11-11 15:18:07', '2020-11-11 15:18:07');
INSERT INTO `fuentes` VALUES (76, 'PY3000C00301801F4AP901', 'HP-D3008E0', 43, 5, 88, '1', '2020-11-11 15:18:48', '2020-11-11 15:18:48');
INSERT INTO `fuentes` VALUES (77, '9PA2202500', 'FSP22030FABA', 23, 7, 89, '1', '2020-11-11 16:15:12', '2020-11-11 16:15:12');
INSERT INTO `fuentes` VALUES (78, 'YL080514000325', 'V-500', 32, 3, 90, '1', '2020-11-11 16:16:53', '2020-11-11 16:16:53');
INSERT INTO `fuentes` VALUES (79, 'SN', 'TOP-650PM', 63, 4, 87, '1', '2020-11-11 17:18:59', '2020-11-11 17:18:59');
INSERT INTO `fuentes` VALUES (80, '115350054B', 'TM500PSSRM3', 10, 3, 94, '1', '2020-11-11 19:14:32', '2020-11-11 19:14:32');
INSERT INTO `fuentes` VALUES (81, '11S36200430W0DE47A3CE', 'PCB037', 47, 10, 91, '1', '2020-11-11 19:19:48', '2020-11-11 19:19:48');
INSERT INTO `fuentes` VALUES (82, '9PA300DZ00', 'FSP300-40AABA', 23, 5, 92, '1', '2020-11-11 20:00:12', '2020-11-11 20:00:12');
INSERT INTO `fuentes` VALUES (83, 'YL080614000875', 'V-500', 32, 3, 95, '1', '2020-11-12 10:00:19', '2020-11-12 10:00:19');
INSERT INTO `fuentes` VALUES (84, 'SIN #', 'SIN MODELO', 21, 16, 96, '1', '2020-11-12 10:03:24', '2020-11-12 10:03:24');
INSERT INTO `fuentes` VALUES (85, '0803052902', 'LL8360BTX', 71, 17, 97, '1', '2020-11-12 10:40:14', '2020-11-12 10:40:54');
INSERT INTO `fuentes` VALUES (86, 'YL080514000025', 'V-500', 32, 3, 99, '1', '2020-11-12 11:18:50', '2020-11-12 11:18:50');
INSERT INTO `fuentes` VALUES (87, 'YL080614000374', 'V-500', 32, 3, 100, '1', '2020-11-12 14:14:16', '2020-11-12 14:14:16');
INSERT INTO `fuentes` VALUES (88, 'DC300190014310081CP201', 'DPS-300AB-82', 72, 5, 101, '1', '2020-11-12 15:53:42', '2020-11-12 15:53:42');
INSERT INTO `fuentes` VALUES (89, 'A1361405PS00325', 'SDGR-500BX', 18, 3, 102, '1', '2020-11-13 08:14:28', '2020-11-13 08:14:28');
INSERT INTO `fuentes` VALUES (90, 'YL080614000507', 'V-500', 32, 3, 103, '1', '2020-11-13 08:39:25', '2020-11-13 08:39:25');
INSERT INTO `fuentes` VALUES (91, 'PY2200B009146016E0P803', 'PS-522103A2', 40, 7, 104, '1', '2020-11-13 08:52:00', '2020-11-13 08:52:00');
INSERT INTO `fuentes` VALUES (92, 'IMJY6013012800246', 'PS-IM450W', 36, 13, 105, '1', '2020-11-13 09:03:44', '2020-11-13 09:03:44');
INSERT INTO `fuentes` VALUES (93, '0201500426', 'GT-150WIFX', 74, 16, 106, '1', '2020-11-13 09:41:18', '2020-11-13 09:41:56');
INSERT INTO `fuentes` VALUES (94, 'YL0505140008220', 'V-500', 32, 3, 107, '1', '2020-11-13 09:48:29', '2020-11-13 09:48:29');
INSERT INTO `fuentes` VALUES (95, 'YL080514000845', 'V-500', 32, 3, 108, '1', '2020-11-13 09:58:06', '2020-11-13 09:58:06');
INSERT INTO `fuentes` VALUES (96, 'YL080614000610', 'V-500', 32, 3, 109, '1', '2020-11-13 10:30:47', '2020-11-13 10:30:47');
INSERT INTO `fuentes` VALUES (97, 'YL0806140003', 'V-500', 32, 3, 110, '1', '2020-11-13 10:32:40', '2020-11-13 10:32:40');
INSERT INTO `fuentes` VALUES (98, '080600414931', 'REV-A00', 77, 6, 111, '1', '2020-11-13 10:42:03', '2020-11-13 10:43:10');
INSERT INTO `fuentes` VALUES (99, '130843', 'TOP-650', 63, 4, 112, '1', '2020-11-13 10:51:22', '2020-11-13 10:51:22');
INSERT INTO `fuentes` VALUES (100, 'S/N', 'EP-500PM', 37, 19, 93, '1', '2020-11-13 10:53:33', '2020-11-13 10:53:33');
INSERT INTO `fuentes` VALUES (101, 'YL080514000331', 'V-500', 32, 3, 113, '1', '2020-11-13 11:06:52', '2020-11-13 11:06:52');
INSERT INTO `fuentes` VALUES (102, 'A1361405P501', 'SDGR-500BX', 18, 3, 114, '1', '2020-11-13 11:08:36', '2020-11-13 11:08:36');
INSERT INTO `fuentes` VALUES (103, '11535000870', 'TM-500-PSSR-M3', 10, 3, 115, '1', '2020-11-13 11:14:50', '2020-11-13 11:14:50');
INSERT INTO `fuentes` VALUES (104, 'YL08051400', 'V-500', 32, 3, 116, '1', '2020-11-13 11:22:04', '2020-11-13 11:22:04');
INSERT INTO `fuentes` VALUES (105, 'PY3000C00301801F90P901', 'HP-D3008E0', 43, 5, 117, '1', '2020-11-13 11:33:13', '2020-11-13 11:33:13');
INSERT INTO `fuentes` VALUES (106, 'YLO8051400185', 'V-500', 32, 3, 119, '1', '2020-11-13 11:36:44', '2020-11-13 11:36:44');
INSERT INTO `fuentes` VALUES (107, 'YL080614000254', 'V-500', 32, 3, 118, '1', '2020-11-13 11:42:36', '2020-11-13 11:42:36');
INSERT INTO `fuentes` VALUES (108, 'YL080514000183', 'V-500', 32, 3, 120, '1', '2020-11-13 11:45:03', '2020-11-13 11:45:03');
INSERT INTO `fuentes` VALUES (109, 'SIN3', 'HKS6D-18FP', 26, 13, 121, '1', '2020-11-13 11:51:22', '2020-11-13 11:51:22');
INSERT INTO `fuentes` VALUES (110, 'DY2200B00914601698P803', 'PS-S221-D6A2', 40, 7, 124, '1', '2020-11-13 12:08:53', '2020-11-13 12:08:53');
INSERT INTO `fuentes` VALUES (111, 'PY2200B009146016BBP803', 'PS-5221-06', 40, 7, 51, '1', '2020-11-13 12:57:10', '2020-11-13 12:57:10');
INSERT INTO `fuentes` VALUES (112, 'YL08051400000186', 'V-500 JD-550-V-500', 32, 3, 123, '1', '2020-11-13 13:04:36', '2020-11-13 13:04:36');
INSERT INTO `fuentes` VALUES (113, 'YL080614000376', 'V-500', 32, 3, 126, '1', '2020-11-13 13:07:54', '2020-11-13 13:07:54');
INSERT INTO `fuentes` VALUES (114, 'A1361405PS01575', 'SDGR-500BX', 18, 3, 122, '1', '2020-11-13 13:18:29', '2020-11-13 13:18:29');
INSERT INTO `fuentes` VALUES (115, 'YLO8051-4000001', 'V-500 JD-550-V-500', 32, 3, 127, '1', '2020-11-13 13:22:09', '2020-11-13 13:22:09');
INSERT INTO `fuentes` VALUES (116, 'YLO80514000002', 'V-500 JD-550-V-500', 32, 3, 129, '1', '2020-11-13 13:59:23', '2020-11-13 13:59:23');
INSERT INTO `fuentes` VALUES (117, 'YL080514000252', 'V-500', 32, 3, 128, '1', '2020-11-13 14:02:35', '2020-11-13 14:02:35');
INSERT INTO `fuentes` VALUES (118, 'TCIOLKKR500CA11537009N', 'TM500PSSRM31153500762', 21, 3, 130, '1', '2020-11-13 14:18:10', '2020-11-13 14:18:10');
INSERT INTO `fuentes` VALUES (119, 'YR050514000813', 'V-500', 32, 3, 131, '1', '2020-11-13 14:21:48', '2020-11-13 14:21:48');
INSERT INTO `fuentes` VALUES (120, 'IMJZY6012041300035', 'PS-IM450W', 36, 13, 132, '1', '2020-11-13 14:34:43', '2020-11-13 14:34:43');
INSERT INTO `fuentes` VALUES (121, 'RS500PSARI31120301389', 'RS-500-PSAR-13', 79, 20, 125, '1', '2020-11-13 14:35:30', '2020-11-13 14:36:59');
INSERT INTO `fuentes` VALUES (122, 'YL080514000016', 'V-500', 32, 3, 134, '1', '2020-11-13 14:45:44', '2020-11-13 14:45:44');
INSERT INTO `fuentes` VALUES (123, '1120301429', 'RS-500-PSAR-13', 79, 3, 133, '1', '2020-11-13 14:55:36', '2020-11-13 14:55:36');
INSERT INTO `fuentes` VALUES (124, '11S3620043W000E47A3CF', 'PCB037', 47, 12, 135, '1', '2020-11-13 15:11:47', '2020-11-13 15:11:47');
INSERT INTO `fuentes` VALUES (125, '080600415005', 'TFX0250D5W', 77, 6, 137, '1', '2020-11-13 15:14:56', '2020-11-13 15:14:56');
INSERT INTO `fuentes` VALUES (126, '878294014047', 'PS-IM450W', 36, 13, 138, '1', '2020-11-16 09:00:30', '2020-11-16 09:00:30');
INSERT INTO `fuentes` VALUES (127, 'YL050514000834', 'V-500', 32, 3, 136, '1', '2020-11-16 09:15:41', '2020-11-16 09:15:41');
INSERT INTO `fuentes` VALUES (128, 'YL080614000602', 'V-500', 32, 3, 139, '1', '2020-11-16 09:29:00', '2020-11-16 09:29:00');
INSERT INTO `fuentes` VALUES (129, 'OMCG33-71615-6311-0246', 'L230NL00', 3, 7, 140, '1', '2020-11-16 09:49:59', '2020-11-16 09:49:59');
INSERT INTO `fuentes` VALUES (130, 'DC2201800242900243P412', 'FSP220-30FABA', 21, 7, 141, '1', '2020-11-16 10:08:42', '2020-11-16 10:08:42');
INSERT INTO `fuentes` VALUES (131, 'JMJZYG012041300150', 'PS-JM450W', 36, 13, 142, '1', '2020-11-16 10:24:13', '2020-11-16 10:24:13');
INSERT INTO `fuentes` VALUES (132, 'YL05051400837', 'V-500', 32, 3, 143, '1', '2020-11-16 11:47:09', '2020-11-16 11:47:09');
INSERT INTO `fuentes` VALUES (133, 'JMJZY6012041300151', 'PS-IM450W', 36, 13, 53, '1', '2020-11-16 11:47:27', '2020-11-16 11:47:27');
INSERT INTO `fuentes` VALUES (134, 'N/S', 'TOP-650PM', 63, 4, 151, '1', '2020-11-16 13:56:43', '2020-11-16 13:56:43');
INSERT INTO `fuentes` VALUES (135, 'SY040613002824', 'V-500', 32, 3, 152, '1', '2020-11-16 14:30:47', '2020-11-16 14:30:47');
INSERT INTO `fuentes` VALUES (136, 'SN', 'HKS60-18FP', 26, 13, 153, '1', '2020-11-18 08:47:36', '2020-11-18 08:47:36');
INSERT INTO `fuentes` VALUES (137, 'SN', 'TOPB50PM', 63, 4, 154, '1', '2020-11-18 08:57:54', '2020-11-18 08:57:54');
INSERT INTO `fuentes` VALUES (138, 'YL08514000182', 'V-500', 32, 3, 155, '1', '2020-11-18 09:17:27', '2020-11-18 09:17:27');
INSERT INTO `fuentes` VALUES (139, 'YL80514000063', 'V-500', 32, 3, 156, '1', '2020-11-18 09:38:21', '2020-11-18 09:38:21');
INSERT INTO `fuentes` VALUES (140, 'YL081213002420', 'V500', 32, 3, 150, '1', '2020-11-18 15:13:28', '2020-11-18 15:13:28');
INSERT INTO `fuentes` VALUES (141, 'YL08061400508', 'V500', 32, 3, 149, '1', '2020-11-18 15:27:13', '2020-11-18 15:27:13');
INSERT INTO `fuentes` VALUES (142, 'YL05051400111', 'V-500', 32, 3, 157, '1', '2020-11-19 08:03:07', '2020-11-19 08:03:07');
INSERT INTO `fuentes` VALUES (143, 'YL050514000835', 'V-500', 32, 3, 158, '1', '2020-11-19 09:02:12', '2020-11-19 09:02:12');
INSERT INTO `fuentes` VALUES (144, 'YL050514000840', 'V-500', 32, 3, 159, '1', '2020-11-19 11:36:25', '2020-11-19 11:36:25');
INSERT INTO `fuentes` VALUES (145, 'PY3000C00301401677P901', 'HP-D3008E0', 43, 5, 160, '1', '2020-11-19 15:28:51', '2020-11-19 15:28:51');
INSERT INTO `fuentes` VALUES (146, '00333885', 'PS-5521-06', 40, 7, 161, '1', '2020-11-19 15:56:01', '2020-11-19 15:56:01');
INSERT INTO `fuentes` VALUES (147, 'YL080514000756', 'V-500', 32, 3, 162, '1', '2020-11-19 16:11:33', '2020-11-19 16:11:33');
INSERT INTO `fuentes` VALUES (148, 'H12110407', 'TOP650PM', 63, 4, 163, '1', '2020-11-20 08:24:00', '2020-11-20 08:24:00');
INSERT INTO `fuentes` VALUES (149, '0165468', 'PS-5161-1D1', 3, 16, 164, '1', '2020-11-20 08:46:16', '2020-11-20 08:46:16');
INSERT INTO `fuentes` VALUES (150, 'A1361405P502502', 'SDGR-500BX', 18, 3, 148, '1', '2020-11-20 09:18:40', '2020-11-20 09:18:40');
INSERT INTO `fuentes` VALUES (151, 'YL080614000601', 'V-500', 32, 3, 165, '1', '2020-11-20 09:47:09', '2020-11-20 09:47:09');
INSERT INTO `fuentes` VALUES (152, '115336200430T000F47NCOC', 'PCB037', 47, 12, 147, '1', '2020-11-20 09:49:17', '2020-11-20 09:49:17');
INSERT INTO `fuentes` VALUES (153, '00821474', 'PS522106A2', 40, 7, 146, '1', '2020-11-20 10:56:45', '2020-11-20 10:56:45');
INSERT INTO `fuentes` VALUES (154, '350KKR5001120700535', 'RS-500', 79, 3, 166, '1', '2020-11-20 11:22:01', '2020-11-20 11:22:01');
INSERT INTO `fuentes` VALUES (155, 'YL080514000777', 'V-500', 32, 3, 167, '1', '2020-11-20 11:38:09', '2020-11-20 11:38:09');
INSERT INTO `fuentes` VALUES (156, 'A1361405P500175', 'SDGR-500BX', 18, 3, 144, '1', '2020-11-20 11:41:39', '2020-11-20 11:41:39');
INSERT INTO `fuentes` VALUES (157, '-', 'HK560-18FP', 26, 18, 145, '1', '2020-11-20 12:01:11', '2020-11-20 12:01:11');
INSERT INTO `fuentes` VALUES (158, '9PA2202500', 'FSP220-30FABA', 23, 7, 168, '1', '2020-11-20 13:43:47', '2020-11-20 13:43:47');
INSERT INTO `fuentes` VALUES (159, 'A13814D5PS01848', 'SDGR-500BX', 18, 3, 169, '1', '2020-11-24 08:34:49', '2020-11-24 08:34:49');
INSERT INTO `fuentes` VALUES (160, 'CN-06V47947890', 'H265AM', 3, 10, 170, '1', '2020-11-24 13:39:00', '2020-11-24 13:39:00');
INSERT INTO `fuentes` VALUES (161, '9PA300Z00', 'FSD-300', 23, 5, 171, '1', '2020-11-24 14:05:12', '2020-11-24 14:05:12');
INSERT INTO `fuentes` VALUES (162, 'G0120413', 'PSIMA50', 36, 13, 172, '1', '2020-11-24 14:20:04', '2020-11-24 14:20:04');
INSERT INTO `fuentes` VALUES (163, '25050015', 'HK350', 26, 17, 173, '1', '2020-11-24 14:33:30', '2020-11-24 14:33:30');
INSERT INTO `fuentes` VALUES (164, '00332594', 'PS-5221', 40, 7, 174, '1', '2020-11-24 14:55:20', '2020-11-24 14:55:20');
INSERT INTO `fuentes` VALUES (165, 'YL080514000255', 'V-500', 32, 9, 175, '1', '2020-11-24 15:08:39', '2020-11-24 15:08:39');
INSERT INTO `fuentes` VALUES (166, 'A1361405P', 'SDGR-500', 18, 3, 176, '1', '2020-11-30 08:20:29', '2020-11-30 08:20:29');

-- ----------------------------
-- Table structure for hdds
-- ----------------------------
DROP TABLE IF EXISTS `hdds`;
CREATE TABLE `hdds`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_capacidad_hdd_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hdds_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `hdds_nm_capacidad_hdd_id_foreign`(`nm_capacidad_hdd_id`) USING BTREE,
  INDEX `hdds_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `hdds_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `hdds_nm_capacidad_hdd_id_foreign` FOREIGN KEY (`nm_capacidad_hdd_id`) REFERENCES `nm_capacidad_hdds` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `hdds_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 166 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hdds
-- ----------------------------
INSERT INTO `hdds` VALUES (1, '74Y6T9F3', 'ST1000DM003', 11, 2, 8, '1', '2020-09-03 16:49:23', '2020-09-03 16:49:23');
INSERT INTO `hdds` VALUES (2, 'Z6EE76N7', 'ST500DM002', 11, 1, 9, '1', '2020-09-03 19:52:25', '2020-09-03 19:52:25');
INSERT INTO `hdds` VALUES (3, 'WCC2EDZUSNK2', 'WD500AAKX-22ERMAO', 24, 1, 10, '1', '2020-09-04 15:04:31', '2020-09-04 15:04:31');
INSERT INTO `hdds` VALUES (4, '9VMMTRASV', 'ST3320418AS', 11, 4, 11, '1', '2020-09-04 15:33:52', '2020-09-04 15:34:20');
INSERT INTO `hdds` VALUES (5, 'WCC2E0LNF10P', 'WESTERN DIGITAL', 24, 1, 12, '1', '2020-09-04 15:41:22', '2020-09-04 15:41:22');
INSERT INTO `hdds` VALUES (6, 'WCC2E4JU21VG', 'WD500AAKX-22ERMAU', 24, 1, 13, '1', '2020-09-04 16:03:37', '2020-09-04 16:03:37');
INSERT INTO `hdds` VALUES (7, 'W1D4BPH9', 'ST1000DM003', 11, 2, 14, '1', '2020-09-04 18:05:32', '2020-09-04 18:05:32');
INSERT INTO `hdds` VALUES (8, 'WCC2EEL7DF8A', 'WD500AAKX', 24, 1, 15, '1', '2020-09-07 11:50:30', '2020-09-07 11:50:30');
INSERT INTO `hdds` VALUES (9, 'W1D4BVQG', 'ST1000DM003', 11, 2, 16, '1', '2020-09-07 12:04:41', '2020-09-07 12:04:41');
INSERT INTO `hdds` VALUES (10, 'JE3KTLKK', 'H3D5001672S', 30, 1, 17, '1', '2020-09-07 12:19:28', '2020-09-07 12:19:28');
INSERT INTO `hdds` VALUES (11, 'JE3UM4JK', 'OF15629', 30, 1, 18, '1', '2020-09-07 13:05:04', '2020-09-07 13:05:04');
INSERT INTO `hdds` VALUES (12, 'Z6E174WB', 'ST500DM002', 11, 1, 19, '1', '2020-09-07 13:30:45', '2020-09-07 13:30:45');
INSERT INTO `hdds` VALUES (13, 'W1D440ZR', 'ST1000DM003', 11, 2, 20, '1', '2020-09-07 14:31:43', '2020-09-07 14:31:43');
INSERT INTO `hdds` VALUES (14, 'SVMPT47C', 'ST500DM002', 11, 1, 22, '1', '2020-09-07 14:45:22', '2020-09-07 14:45:22');
INSERT INTO `hdds` VALUES (15, 'Z2AS3510', 'ST500DM002', 11, 1, 21, '1', '2020-09-07 14:47:24', '2020-09-07 14:47:24');
INSERT INTO `hdds` VALUES (16, 'JE3UR75K', 'JPT50E', 40, 1, 23, '1', '2020-09-07 15:36:18', '2020-09-07 15:36:18');
INSERT INTO `hdds` VALUES (17, '9VMTEFVA', 'ST3320418AS', 11, 4, 24, '1', '2020-09-07 16:10:47', '2020-09-07 16:10:47');
INSERT INTO `hdds` VALUES (18, 'W1D4AFZ500', 'ST1000DM003', 11, 2, 34, '1', '2020-09-08 14:21:39', '2020-09-08 14:21:39');
INSERT INTO `hdds` VALUES (19, 'WCC2ER15X4J1', 'WD5000AAKX-08V6AA0', 24, 5, 40, '1', '2020-09-08 16:01:36', '2020-09-08 16:01:47');
INSERT INTO `hdds` VALUES (20, '72A54M65', 'ST500DM002', 11, 1, 39, '1', '2020-09-08 16:34:49', '2020-09-08 16:34:49');
INSERT INTO `hdds` VALUES (21, 'W1D4AXQE', 'ST1000DM003', 11, 2, 38, '1', '2020-09-09 15:37:32', '2020-09-09 15:37:32');
INSERT INTO `hdds` VALUES (22, 'WCC2E7ZFY0YE', 'WD5000AAKX-22ERMAG', 24, 1, 37, '1', '2020-09-10 14:04:40', '2020-09-10 14:04:40');
INSERT INTO `hdds` VALUES (23, 'W1D49Q6F', 'ST1000DM003', 11, 2, 36, '1', '2020-09-10 15:20:18', '2020-09-10 15:20:18');
INSERT INTO `hdds` VALUES (24, '9UMT4WCO', 'ST33201418AS', 11, 4, 33, '1', '2020-09-10 16:00:10', '2020-09-10 16:00:10');
INSERT INTO `hdds` VALUES (25, 'Z1D5H105', 'ST1000DM003', 11, 2, 32, '1', '2020-09-11 13:43:56', '2020-09-11 13:43:56');
INSERT INTO `hdds` VALUES (26, '0F15629', 'JPT50E', 40, 1, 31, '1', '2020-09-14 13:14:03', '2020-09-14 13:14:03');
INSERT INTO `hdds` VALUES (27, 'WID48PTF', 'ST1000DM003', 11, 2, 30, '1', '2020-09-23 11:46:38', '2020-09-23 11:46:38');
INSERT INTO `hdds` VALUES (28, 'W1D4C5M5', 'ST100018MDD3', 11, 2, 54, '1', '2020-09-23 12:12:35', '2020-09-23 12:12:35');
INSERT INTO `hdds` VALUES (29, '9VR9WKY7', 'ST3160318AS', 21, 4, 29, '1', '2020-09-23 12:56:04', '2020-09-23 12:56:04');
INSERT INTO `hdds` VALUES (30, 'JE3TPY5K', 'JPT50E', 30, 1, 55, '1', '2020-09-23 13:19:39', '2020-09-23 13:19:39');
INSERT INTO `hdds` VALUES (31, 'W1D48W00', '6A-797-HD3', 11, 2, 28, '1', '2020-09-23 14:36:35', '2020-09-23 14:36:35');
INSERT INTO `hdds` VALUES (32, 'WMAYUT799756', 'WD5000AAKX-001CAO', 24, 2, 26, '1', '2020-09-23 15:35:12', '2020-09-23 15:35:12');
INSERT INTO `hdds` VALUES (33, 'WCC2E6AJL66K', 'WD5000AAKX-22ERMAG', 24, 2, 25, '1', '2020-09-23 15:48:25', '2020-09-23 15:48:25');
INSERT INTO `hdds` VALUES (34, 'W2A06DSL', 'ST500DM002', 11, 1, 27, '1', '2020-09-23 15:59:39', '2020-09-23 15:59:39');
INSERT INTO `hdds` VALUES (35, 'W1D4BM9T', 'ST1000DM003', 11, 2, 35, '1', '2020-09-23 16:08:30', '2020-09-23 16:08:30');
INSERT INTO `hdds` VALUES (36, 'ZN10RWXG', 'ST1000DM010', 11, 2, 56, '1', '2020-09-24 11:51:36', '2020-09-24 11:51:36');
INSERT INTO `hdds` VALUES (37, 'JE3T090K', '0F15629', 30, 1, 58, '1', '2020-09-24 12:09:22', '2020-09-24 12:09:22');
INSERT INTO `hdds` VALUES (38, 'W/D4ACD3', 'ST1000DM003', 11, 2, 59, '1', '2020-09-24 12:46:52', '2020-09-24 12:46:52');
INSERT INTO `hdds` VALUES (39, 'WMAYVD553473', 'WD5000AAKX', 24, 1, 57, '1', '2020-09-24 12:48:43', '2020-09-24 12:48:43');
INSERT INTO `hdds` VALUES (40, 'S1D8PS6A', 'ST1000DM003', 11, 2, 60, '1', '2020-09-24 13:30:38', '2020-09-24 13:30:38');
INSERT INTO `hdds` VALUES (41, 'Z6E16VXP', 'ST500DM002', 11, 1, 61, '1', '2020-09-24 14:21:23', '2020-09-24 14:21:23');
INSERT INTO `hdds` VALUES (42, 'W1D49W7H', 'ST1000DM003', 11, 2, 50, '1', '2020-09-25 13:17:25', '2020-09-25 13:17:25');
INSERT INTO `hdds` VALUES (43, '73THN38V', 'ST500DM002', 11, 1, 49, '1', '2020-09-25 13:46:36', '2020-09-25 13:46:36');
INSERT INTO `hdds` VALUES (44, 'JE3V57NK', 'HD350016725', 30, 1, 63, '1', '2020-09-25 13:51:37', '2020-09-25 13:51:37');
INSERT INTO `hdds` VALUES (45, 'JE3T45KK', 'JPT50E', 30, 1, 62, '1', '2020-09-25 14:04:48', '2020-09-25 14:04:48');
INSERT INTO `hdds` VALUES (46, '9UMTP8K7', 'ST500DM002', 11, 1, 48, '1', '2020-09-25 15:08:29', '2020-09-25 15:08:29');
INSERT INTO `hdds` VALUES (47, '72AQC2XA', 'ST500DM002', 11, 1, 64, '1', '2020-09-25 15:43:25', '2020-09-25 15:43:25');
INSERT INTO `hdds` VALUES (48, '76EE77K4', 'ST500DM002', 11, 2, 46, '1', '2020-09-28 13:18:25', '2020-09-28 13:18:25');
INSERT INTO `hdds` VALUES (49, '76E124S2', 'ST500DM002', 11, 1, 45, '1', '2020-09-28 13:26:27', '2020-09-28 13:26:27');
INSERT INTO `hdds` VALUES (50, '9QZ05ZMM', 'ST380215A', 11, 7, 65, '1', '2020-09-29 13:06:49', '2020-09-29 13:07:24');
INSERT INTO `hdds` VALUES (51, '76E18715', 'ST500DM002', 11, 1, 44, '1', '2020-09-29 14:20:36', '2020-09-29 14:20:36');
INSERT INTO `hdds` VALUES (52, 'JE3UTT2H', 'E183115CN', 30, 1, 43, '1', '2020-09-29 15:21:30', '2020-09-29 15:21:30');
INSERT INTO `hdds` VALUES (53, 'W1D4BP4A', 'ST1000DM003', 11, 2, 42, '1', '2020-09-30 13:03:57', '2020-09-30 13:03:57');
INSERT INTO `hdds` VALUES (54, 'W1D4E3M7', 'ST1000DM003', 11, 2, 66, '1', '2020-09-30 14:16:30', '2020-09-30 14:16:30');
INSERT INTO `hdds` VALUES (55, 'WCC2E1EV9A5K', 'WD5000AAKX', 24, 1, 67, '1', '2020-09-30 15:09:20', '2020-09-30 15:09:20');
INSERT INTO `hdds` VALUES (56, 'Z6E1782E', 'ST500DM002', 11, 1, 68, '1', '2020-10-01 12:06:53', '2020-10-01 12:06:53');
INSERT INTO `hdds` VALUES (57, 'VVMAYUD261282', 'WD5000AAKX', 24, 1, 69, '1', '2020-10-02 12:35:51', '2020-10-02 12:35:51');
INSERT INTO `hdds` VALUES (58, 'W1D4BMR3', 'ST1000DM003', 11, 2, 70, '1', '2020-10-02 16:34:47', '2020-10-02 16:34:47');
INSERT INTO `hdds` VALUES (59, 'W1D4C429', 'ST1000DM003', 11, 2, 72, '1', '2020-11-10 14:40:45', '2020-11-10 14:40:45');
INSERT INTO `hdds` VALUES (60, 'W1D4AXKS', 'ST1000DM003', 11, 2, 73, '1', '2020-11-10 15:43:47', '2020-11-10 15:43:47');
INSERT INTO `hdds` VALUES (61, 'W1D4C4T6', 'ST1000DM003', 11, 2, 75, '1', '2020-11-10 18:40:11', '2020-11-10 18:40:11');
INSERT INTO `hdds` VALUES (62, 'W2AB86ZW', 'ST500DM002', 11, 1, 74, '1', '2020-11-10 18:51:00', '2020-11-10 18:51:00');
INSERT INTO `hdds` VALUES (63, 'Z4Y6D435', 'ST1000DM003', 11, 2, 76, '1', '2020-11-11 13:18:07', '2020-11-11 13:18:07');
INSERT INTO `hdds` VALUES (64, 'WID4ASXQ', 'SM00DAM003', 11, 2, 77, '1', '2020-11-11 13:28:47', '2020-11-11 13:28:47');
INSERT INTO `hdds` VALUES (65, 'S2AMG99Q', 'ST500DM002', 11, 1, 78, '1', '2020-11-11 13:36:26', '2020-11-11 13:36:26');
INSERT INTO `hdds` VALUES (66, 'Z2ARZEKF', 'ST500DM002', 11, 1, 79, '1', '2020-11-11 13:45:02', '2020-11-11 13:45:02');
INSERT INTO `hdds` VALUES (67, 'WID4C8P4', 'ST1000DM003', 11, 2, 80, '1', '2020-11-11 13:51:46', '2020-11-11 13:51:46');
INSERT INTO `hdds` VALUES (68, 'WIDYRAX', 'ST1000MD003', 11, 2, 81, '1', '2020-11-11 14:03:28', '2020-11-11 14:03:28');
INSERT INTO `hdds` VALUES (69, 'WID4C6DX', 'ST1000DM003', 11, 2, 84, '1', '2020-11-11 14:17:36', '2020-11-11 14:17:36');
INSERT INTO `hdds` VALUES (70, 'W1D48RW8', 'ST1000M003', 11, 2, 82, '1', '2020-11-11 14:21:30', '2020-11-11 14:21:30');
INSERT INTO `hdds` VALUES (71, 'WMAYUD787841', 'WD500AAKX', 24, 1, 83, '1', '2020-11-11 14:30:39', '2020-11-11 14:30:39');
INSERT INTO `hdds` VALUES (72, 'ZZAS22UC', 'ST500MD002', 11, 1, 85, '1', '2020-11-11 14:31:32', '2020-11-11 14:31:32');
INSERT INTO `hdds` VALUES (73, 'JE3R5N8K', 'JPT50E', 30, 1, 86, '1', '2020-11-11 14:55:53', '2020-11-11 14:55:53');
INSERT INTO `hdds` VALUES (74, '9VMTWXHB', '3320418AS', 11, 4, 88, '1', '2020-11-11 15:05:10', '2020-11-11 15:05:10');
INSERT INTO `hdds` VALUES (75, 'WID48MKY', 'ST100DBM0037S', 11, 2, 71, '1', '2020-11-11 15:22:42', '2020-11-11 15:22:42');
INSERT INTO `hdds` VALUES (76, 'W1D4B3KC', 'ST1000DM003', 11, 2, 90, '1', '2020-11-11 16:06:43', '2020-11-11 16:06:43');
INSERT INTO `hdds` VALUES (77, 'WCC2E35T4419', 'WD5000AAKX', 24, 1, 89, '1', '2020-11-11 16:16:47', '2020-11-11 16:16:47');
INSERT INTO `hdds` VALUES (78, '9RA3LPO2', 'ST3160815AS', 11, 8, 87, '1', '2020-11-11 17:19:34', '2020-11-11 17:22:22');
INSERT INTO `hdds` VALUES (79, '7446V0LJ', 'ST1000DM003', 11, 2, 94, '1', '2020-11-11 19:10:19', '2020-11-11 19:10:19');
INSERT INTO `hdds` VALUES (80, 'CHSH20A38371', 'WD5000AAKX', 24, 1, 91, '1', '2020-11-11 19:21:01', '2020-11-11 19:21:01');
INSERT INTO `hdds` VALUES (81, 'WCC2EEEJSAK0', 'WD5000AAKX', 24, 1, 92, '1', '2020-11-11 20:01:39', '2020-11-11 20:01:39');
INSERT INTO `hdds` VALUES (82, 'Z6E181MR', 'ST500DM002', 11, 1, 95, '1', '2020-11-12 09:47:51', '2020-11-12 09:47:51');
INSERT INTO `hdds` VALUES (83, '5VMQ5GKZ', 'ST3500413AS', 11, 1, 97, '1', '2020-11-12 10:42:13', '2020-11-12 10:42:13');
INSERT INTO `hdds` VALUES (84, 'W1D49S7Y', 'ST1000DM003', 11, 2, 99, '1', '2020-11-12 11:03:18', '2020-11-12 11:03:18');
INSERT INTO `hdds` VALUES (85, 'WMAIUD826048', 'WD500AAKX', 24, 1, 100, '1', '2020-11-12 14:12:04', '2020-11-12 14:12:04');
INSERT INTO `hdds` VALUES (86, 'WCC2EHZVS6RY', 'WD500AAKX', 24, 1, 101, '1', '2020-11-12 15:41:33', '2020-11-12 15:41:33');
INSERT INTO `hdds` VALUES (87, 'WCC2ER1SXRYY', 'WD5000AKX', 24, 1, 103, '1', '2020-11-13 08:40:27', '2020-11-13 08:40:27');
INSERT INTO `hdds` VALUES (88, 'JE3KTHPK', 'H3D5001672S', 30, 1, 104, '1', '2020-11-13 08:41:27', '2020-11-13 08:41:27');
INSERT INTO `hdds` VALUES (89, 'W2AQEM87', 'ST500DM002', 11, 1, 105, '1', '2020-11-13 09:13:18', '2020-11-13 09:13:18');
INSERT INTO `hdds` VALUES (90, '15TDW3Q3T', 'MQ01ABF050', 45, 1, 98, '1', '2020-11-13 09:19:35', '2020-11-13 09:19:35');
INSERT INTO `hdds` VALUES (91, 'Z2AS21AP', 'ST500DM002', 11, 1, 106, '1', '2020-11-13 09:34:39', '2020-11-13 09:34:39');
INSERT INTO `hdds` VALUES (92, 'W104C6RK', 'ST1000M003', 11, 2, 107, '1', '2020-11-13 09:50:33', '2020-11-13 09:50:33');
INSERT INTO `hdds` VALUES (93, 'W1D4ARRW', 'ST1000DM003', 11, 2, 108, '1', '2020-11-13 09:59:14', '2020-11-13 09:59:14');
INSERT INTO `hdds` VALUES (94, 'W1D4C3V4', 'ST1000DM003', 11, 2, 109, '1', '2020-11-13 10:26:53', '2020-11-13 10:26:53');
INSERT INTO `hdds` VALUES (95, 'W1D4BPJ9', 'ST1000DM003', 11, 2, 110, '1', '2020-11-13 10:34:18', '2020-11-13 10:34:18');
INSERT INTO `hdds` VALUES (96, 'Z6E187SP', 'ST500DM002', 11, 1, 111, '1', '2020-11-13 10:48:00', '2020-11-13 10:48:00');
INSERT INTO `hdds` VALUES (97, '7N10TXP6', 'ST100DM002', 11, 2, 112, '1', '2020-11-13 10:52:36', '2020-11-13 10:52:36');
INSERT INTO `hdds` VALUES (98, '0F1529', 'E182115', 30, 1, 93, '1', '2020-11-13 10:54:46', '2020-11-13 10:54:46');
INSERT INTO `hdds` VALUES (99, 'W1D48VT', 'ST1000DM003', 11, 2, 113, '1', '2020-11-13 11:07:57', '2020-11-13 11:07:57');
INSERT INTO `hdds` VALUES (100, 'ZGE16X13', 'ST500DM002', 11, 1, 114, '1', '2020-11-13 11:09:29', '2020-11-13 11:09:29');
INSERT INTO `hdds` VALUES (101, 'Z4Y6B5AA', 'ST1000DM003', 11, 2, 115, '1', '2020-11-13 11:18:07', '2020-11-13 11:18:07');
INSERT INTO `hdds` VALUES (102, 'WA104AR06', 'ST100MD002', 11, 2, 116, '1', '2020-11-13 11:23:17', '2020-11-13 11:23:17');
INSERT INTO `hdds` VALUES (103, '9VMTWM13', 'ST33200418AS', 11, 4, 117, '1', '2020-11-13 11:34:57', '2020-11-13 11:34:57');
INSERT INTO `hdds` VALUES (104, '7EE1837C', 'ST500DMOOL', 11, 1, 119, '1', '2020-11-13 11:37:37', '2020-11-13 11:37:37');
INSERT INTO `hdds` VALUES (105, 'W1D49R2A', 'ST1000DM003', 11, 2, 118, '1', '2020-11-13 11:40:05', '2020-11-13 11:40:05');
INSERT INTO `hdds` VALUES (106, 'Z6E17230', 'ST500DM002', 11, 1, 120, '1', '2020-11-13 11:46:29', '2020-11-13 11:46:29');
INSERT INTO `hdds` VALUES (107, 'Z2AS236G', 'ST500DM002', 11, 1, 121, '1', '2020-11-13 11:52:15', '2020-11-13 11:52:15');
INSERT INTO `hdds` VALUES (108, '0F15629JPTSDEDCIB', 'HDST21050CLABB2', 30, 1, 124, '1', '2020-11-13 12:10:17', '2020-11-13 12:10:17');
INSERT INTO `hdds` VALUES (109, 'Z6E17QRX', 'ST500M002', 11, 1, 123, '1', '2020-11-13 13:05:57', '2020-11-13 13:05:57');
INSERT INTO `hdds` VALUES (110, 'WID4BLPA', 'ST1000DM003', 11, 2, 126, '1', '2020-11-13 13:09:00', '2020-11-13 13:09:00');
INSERT INTO `hdds` VALUES (111, 'Z6E169JT', 'ST500DM002', 11, 1, 122, '1', '2020-11-13 13:15:48', '2020-11-13 13:15:48');
INSERT INTO `hdds` VALUES (112, 'W1N4ARFM', 'ST1000DM003', 11, 2, 127, '1', '2020-11-13 13:23:43', '2020-11-13 13:23:43');
INSERT INTO `hdds` VALUES (113, 'W104AQVH', 'ST1000DM003', 11, 2, 129, '1', '2020-11-13 14:00:21', '2020-11-13 14:00:21');
INSERT INTO `hdds` VALUES (114, 'WID4AR03', 'ST1000DM003', 11, 2, 128, '1', '2020-11-13 14:05:05', '2020-11-13 14:05:05');
INSERT INTO `hdds` VALUES (115, 'Z446DKWS', 'ST1000DM003', 11, 2, 130, '1', '2020-11-13 14:19:00', '2020-11-13 14:19:00');
INSERT INTO `hdds` VALUES (116, 'WID4C6F8', 'ST1000M003', 11, 2, 131, '1', '2020-11-13 14:23:03', '2020-11-13 14:23:03');
INSERT INTO `hdds` VALUES (117, 'WMAYUD643861', 'WD500AAKX', 24, 1, 132, '1', '2020-11-13 14:31:46', '2020-11-13 14:31:46');
INSERT INTO `hdds` VALUES (118, 'WMAYUN462431', 'WD5000AAKX', 24, 1, 125, '1', '2020-11-13 14:38:03', '2020-11-13 14:38:03');
INSERT INTO `hdds` VALUES (119, 'W1D4ASS2', 'ST1000DM003', 11, 2, 134, '1', '2020-11-13 14:43:42', '2020-11-13 14:43:42');
INSERT INTO `hdds` VALUES (120, 'WMAYVJ802576', 'WD5000AAKX-001CA', 24, 1, 133, '1', '2020-11-13 14:57:22', '2020-11-13 14:57:22');
INSERT INTO `hdds` VALUES (121, 'WCCZEN9PXN52', 'WD500AAKX', 24, 1, 135, '1', '2020-11-13 15:08:40', '2020-11-13 15:08:40');
INSERT INTO `hdds` VALUES (122, 'Z6E39ZM7', 'ST500M002', 11, 1, 137, '1', '2020-11-13 15:16:13', '2020-11-13 15:16:13');
INSERT INTO `hdds` VALUES (123, 'W2AQCLKJ', 'ST500DM002', 11, 1, 138, '1', '2020-11-16 08:42:51', '2020-11-16 08:42:51');
INSERT INTO `hdds` VALUES (124, 'W1DYATFN', 'ST1000DM003', 11, 2, 136, '1', '2020-11-16 09:21:23', '2020-11-16 09:21:23');
INSERT INTO `hdds` VALUES (125, 'W1D4BNT2', 'ST1000DM003', 11, 2, 139, '1', '2020-11-16 09:26:11', '2020-11-16 09:26:11');
INSERT INTO `hdds` VALUES (126, '9VY9VY4K', 'ST316018AS', 11, 8, 140, '1', '2020-11-16 09:51:15', '2020-11-16 09:51:15');
INSERT INTO `hdds` VALUES (127, 'WC2ELEZHESS', 'WD500GAAKX', 24, 1, 141, '1', '2020-11-16 10:09:55', '2020-11-16 10:09:55');
INSERT INTO `hdds` VALUES (128, 'WMAYUD785535', 'WD5000AAKX', 24, 9, 142, '1', '2020-11-16 10:34:55', '2020-11-16 10:34:55');
INSERT INTO `hdds` VALUES (129, 'JE379YVK', 'JPT50E', 30, 1, 51, '1', '2020-11-16 10:44:49', '2020-11-16 10:44:49');
INSERT INTO `hdds` VALUES (130, 'W1D4BQVK', 'ST1000DM003', 11, 2, 143, '1', '2020-11-16 11:45:11', '2020-11-16 11:45:11');
INSERT INTO `hdds` VALUES (131, 'WMAYUD643916', 'WD500AAKX-0DIA0', 24, 1, 53, '1', '2020-11-16 11:48:56', '2020-11-16 11:48:56');
INSERT INTO `hdds` VALUES (132, 'N/S', 'N/S', 21, 7, 151, '1', '2020-11-16 13:57:04', '2020-11-16 13:57:04');
INSERT INTO `hdds` VALUES (133, 'Z2AS45W6', 'ST500DM002', 11, 1, 152, '1', '2020-11-16 14:31:57', '2020-11-16 14:31:57');
INSERT INTO `hdds` VALUES (134, 'Z2AS4A2X', 'ST500DM002', 11, 1, 153, '1', '2020-11-18 08:48:34', '2020-11-18 08:48:34');
INSERT INTO `hdds` VALUES (135, 'ZGE17DKC', 'ST500DM002', 11, 1, 154, '1', '2020-11-18 08:58:46', '2020-11-18 08:58:46');
INSERT INTO `hdds` VALUES (136, 'ZGE177XM', 'ST500M002', 11, 1, 155, '1', '2020-11-18 09:18:10', '2020-11-18 09:18:10');
INSERT INTO `hdds` VALUES (137, 'W1D49LTR', 'ST1000M003', 11, 2, 156, '1', '2020-11-18 09:39:35', '2020-11-18 09:39:35');
INSERT INTO `hdds` VALUES (138, 'W1D4B3TA', 'ST1000DM003', 11, 2, 150, '1', '2020-11-18 15:14:10', '2020-11-18 15:14:10');
INSERT INTO `hdds` VALUES (139, 'W1D4C50W', 'ST10', 11, 2, 149, '1', '2020-11-18 15:27:48', '2020-11-18 15:27:48');
INSERT INTO `hdds` VALUES (140, 'W1D4AYJ3', 'ST1000DM003', 11, 2, 157, '1', '2020-11-19 08:00:35', '2020-11-19 08:00:35');
INSERT INTO `hdds` VALUES (141, 'W1D4AXF', 'ST1000DM003', 11, 2, 158, '1', '2020-11-19 08:59:30', '2020-11-19 08:59:30');
INSERT INTO `hdds` VALUES (142, 'W1D48P9W', 'ST1000DM003', 11, 2, 159, '1', '2020-11-19 11:18:12', '2020-11-19 11:18:12');
INSERT INTO `hdds` VALUES (143, '9VMTVYMY', 'ST3320418AS', 11, 4, 160, '1', '2020-11-19 15:04:24', '2020-11-19 15:04:24');
INSERT INTO `hdds` VALUES (144, 'JE30XZWH', 'DS7SAC500', 30, 9, 161, '1', '2020-11-19 15:42:15', '2020-11-19 15:42:15');
INSERT INTO `hdds` VALUES (145, 'W1D4438N', 'ST1000DM003', 11, 2, 162, '1', '2020-11-19 16:09:46', '2020-11-19 16:09:46');
INSERT INTO `hdds` VALUES (146, 'Z6E173M9', 'ST500DM002', 11, 1, 163, '1', '2020-11-20 08:21:20', '2020-11-20 08:21:20');
INSERT INTO `hdds` VALUES (147, 'S1SD4W3N', 'HDS728040PLAT20', 30, 7, 164, '1', '2020-11-20 08:38:03', '2020-11-20 08:38:03');
INSERT INTO `hdds` VALUES (148, '76EE4BTX', 'ST500DDM002', 11, 9, 148, '1', '2020-11-20 09:19:24', '2020-11-20 09:19:24');
INSERT INTO `hdds` VALUES (149, 'W1D4BP1Z', 'ST1000DM003', 11, 2, 165, '1', '2020-11-20 09:31:00', '2020-11-20 09:31:00');
INSERT INTO `hdds` VALUES (150, 'WCC2EH49365E', 'WD5000AAKX', 24, 9, 147, '1', '2020-11-20 09:53:16', '2020-11-20 09:53:16');
INSERT INTO `hdds` VALUES (151, 'JE3VKZ2K', 'E182115CN', 30, 1, 146, '1', '2020-11-20 10:57:29', '2020-11-20 10:57:29');
INSERT INTO `hdds` VALUES (152, 'WMAYVN553762', 'WD500AAKX', 24, 1, 166, '1', '2020-11-20 11:13:10', '2020-11-20 11:13:10');
INSERT INTO `hdds` VALUES (153, 'W1D4ARDT', 'ST1000DM003', 11, 2, 167, '1', '2020-11-20 11:36:35', '2020-11-20 11:36:35');
INSERT INTO `hdds` VALUES (154, 'WMAYUD699742', 'WD500AAKX', 24, 9, 144, '1', '2020-11-20 11:42:54', '2020-11-20 11:42:54');
INSERT INTO `hdds` VALUES (155, '72A5213X', 'ABD142-500', 11, 1, 145, '1', '2020-11-20 12:02:55', '2020-11-20 12:02:55');
INSERT INTO `hdds` VALUES (156, 'WCC2EIEZHL3F', 'WD500AAKX', 24, 1, 168, '1', '2020-11-20 13:40:43', '2020-11-20 13:40:43');
INSERT INTO `hdds` VALUES (157, '26EE77CC', 'ST500DM002', 11, 1, 169, '1', '2020-11-24 08:31:22', '2020-11-24 08:31:22');
INSERT INTO `hdds` VALUES (158, 'Z2AS20RD3', 'ST500DM002', 11, 1, 170, '1', '2020-11-24 13:35:32', '2020-11-24 13:35:32');
INSERT INTO `hdds` VALUES (159, 'WCC2EXZEC024', 'WD5000AAKX', 24, 1, 171, '1', '2020-11-24 14:06:14', '2020-11-24 14:06:14');
INSERT INTO `hdds` VALUES (160, 'ZGE1338F', 'ST500D7002', 11, 9, 172, '1', '2020-11-24 14:21:16', '2020-11-24 14:21:16');
INSERT INTO `hdds` VALUES (161, '9UMTRATX', 'ST3320418AS', 11, 4, 173, '1', '2020-11-24 14:34:17', '2020-11-24 14:34:17');
INSERT INTO `hdds` VALUES (162, 'JE3VKHMK', 'HDS721050', 30, 1, 174, '1', '2020-11-24 14:56:47', '2020-11-24 14:56:47');
INSERT INTO `hdds` VALUES (163, 'W1D4ATDA', 'ST1000DM003', 11, 2, 175, '1', '2020-11-24 15:06:41', '2020-11-24 15:06:41');
INSERT INTO `hdds` VALUES (164, 'ZGEE76H1', 'ST500DM200', 11, 9, 176, '1', '2020-11-30 08:23:30', '2020-11-30 08:23:30');
INSERT INTO `hdds` VALUES (165, 'WD4AQRW', 'ST1000M003', 11, 2, 177, '1', '2020-11-30 15:16:45', '2020-11-30 15:16:45');

-- ----------------------------
-- Table structure for lectorcds
-- ----------------------------
DROP TABLE IF EXISTS `lectorcds`;
CREATE TABLE `lectorcds`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lectorcds_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `lectorcds_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `lectorcds_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `lectorcds_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lectorcds
-- ----------------------------
INSERT INTO `lectorcds` VALUES (1, '506HFVJ094591', 'GH24NSD1', 5, 8, '1', '2020-09-03 16:54:45', '2020-09-03 16:54:45');
INSERT INTO `lectorcds` VALUES (2, 'SN', 'SM', 5, 9, '1', '2020-09-03 19:54:47', '2020-09-03 19:54:47');
INSERT INTO `lectorcds` VALUES (3, 'K00160D005-43102182D200', '6HB0N', 5, 10, '1', '2020-09-04 15:08:43', '2020-09-04 15:08:43');
INSERT INTO `lectorcds` VALUES (4, 'KU9160D0520320ADADD300', 'GH60N', 28, 11, '1', '2020-09-04 15:42:19', '2020-09-04 15:42:19');
INSERT INTO `lectorcds` VALUES (5, 'K00160D008', 'GHCON', 30, 12, '1', '2020-09-04 15:44:25', '2020-09-04 15:47:20');
INSERT INTO `lectorcds` VALUES (6, 'K00160D005811042EDD200', '6HCON', 5, 13, '1', '2020-09-04 17:51:18', '2020-09-04 17:51:18');
INSERT INTO `lectorcds` VALUES (7, '3743524703', 'SM', 34, 14, '1', '2020-09-04 18:10:06', '2020-09-04 18:10:06');
INSERT INTO `lectorcds` VALUES (8, 'OB55867', 'DL1607SH', 5, 15, '1', '2020-09-07 11:52:28', '2020-09-07 11:52:28');
INSERT INTO `lectorcds` VALUES (9, '2B8430513367', 'HAS124', 40, 16, '1', '2020-09-07 12:07:11', '2020-09-07 12:07:37');
INSERT INTO `lectorcds` VALUES (10, 'KU0160D0551444114D8200', 'GH7N', 28, 17, '1', '2020-09-07 12:22:50', '2020-09-07 12:22:50');
INSERT INTO `lectorcds` VALUES (11, 'KV0160D055144DA0CBD200', '6H70N', 30, 18, '1', '2020-09-07 13:08:41', '2020-09-07 13:08:41');
INSERT INTO `lectorcds` VALUES (12, 'KV0160D055144OA19BD200', 'GH70N', 30, 19, '1', '2020-09-07 14:06:25', '2020-09-07 14:06:25');
INSERT INTO `lectorcds` VALUES (13, '2P8420500284', 'HA5124', 5, 20, '1', '2020-09-07 14:33:05', '2020-09-07 14:33:05');
INSERT INTO `lectorcds` VALUES (14, 'KV0160D0520320C347D300', '6H60N', 30, 22, '1', '2020-09-07 14:51:22', '2020-09-07 14:51:22');
INSERT INTO `lectorcds` VALUES (15, 'R60668BC400X3V', 'TS-H353CDEBHF', 45, 21, '1', '2020-09-07 14:56:02', '2020-09-07 14:56:02');
INSERT INTO `lectorcds` VALUES (16, 'KV0160D0551440AUDFD200', 'GH70N', 30, 23, '1', '2020-09-07 15:39:11', '2020-09-07 15:39:11');
INSERT INTO `lectorcds` VALUES (17, 'KV0160D0520320C395D300', '6H60N', 30, 24, '1', '2020-09-07 16:12:51', '2020-09-07 16:12:51');
INSERT INTO `lectorcds` VALUES (18, '2A84205002083743524703', 'SHAS124-17EUV', 40, 34, '1', '2020-09-08 15:33:29', '2020-09-08 15:33:29');
INSERT INTO `lectorcds` VALUES (19, '1150B55867ZVJ8DP00A0KP', 'S/N', 34, 40, '1', '2020-09-08 16:09:18', '2020-09-08 16:09:18');
INSERT INTO `lectorcds` VALUES (20, 'R60668BC400X39', 'N/S', 38, 39, '1', '2020-09-08 16:42:54', '2020-09-08 16:42:54');
INSERT INTO `lectorcds` VALUES (21, '2A84205002373743524703', 'N/S', 34, 38, '1', '2020-09-09 15:51:38', '2020-09-09 15:51:38');
INSERT INTO `lectorcds` VALUES (22, 'K00160D008', 'N/S', 30, 37, '1', '2020-09-10 14:08:07', '2020-09-10 14:08:07');
INSERT INTO `lectorcds` VALUES (23, '2A84205000103743524703', 'N/S', 34, 36, '1', '2020-09-10 15:22:26', '2020-09-10 15:22:26');
INSERT INTO `lectorcds` VALUES (24, 'KUD160D050203204C58D300', 'N/S', 30, 33, '1', '2020-09-10 16:01:47', '2020-09-10 16:01:47');
INSERT INTO `lectorcds` VALUES (25, 'K001605001327008E2E501', 'DVR-220RS', 34, 32, '1', '2020-09-11 13:50:04', '2020-09-11 13:50:04');
INSERT INTO `lectorcds` VALUES (26, 'KV0160D05514409FE6D200', '6H70N', 30, 31, '1', '2020-09-14 13:18:12', '2020-09-14 13:18:12');
INSERT INTO `lectorcds` VALUES (27, '2B8431500036374524703', 'N/S', 40, 30, '1', '2020-09-23 11:51:08', '2020-09-23 11:51:08');
INSERT INTO `lectorcds` VALUES (28, '2B84315000671374524703', 'IHAS124-14EVV', 40, 54, '1', '2020-09-23 12:17:22', '2020-09-23 12:17:22');
INSERT INTO `lectorcds` VALUES (29, '411H8EXD70612', 'GH24NSCD', 5, 55, '1', '2020-09-23 13:21:48', '2020-09-23 13:21:48');
INSERT INTO `lectorcds` VALUES (30, '2B84305233323743524703', 'HAS124-14', 40, 28, '1', '2020-09-23 14:39:53', '2020-09-23 14:39:53');
INSERT INTO `lectorcds` VALUES (31, '2521458L122', 'N/S', 51, 26, '1', '2020-09-23 15:41:19', '2020-09-23 15:41:19');
INSERT INTO `lectorcds` VALUES (32, 'CN0TF1725508164G40K1', 'N/S', 51, 25, '1', '2020-09-23 15:50:04', '2020-09-23 15:50:04');
INSERT INTO `lectorcds` VALUES (33, '304HADBV96658', '6H24NS75', 5, 27, '1', '2020-09-23 16:00:49', '2020-09-23 16:00:49');
INSERT INTO `lectorcds` VALUES (34, '2B81315007693743524703', 'N/S', 34, 35, '1', '2020-09-23 16:09:53', '2020-09-23 16:09:53');
INSERT INTO `lectorcds` VALUES (35, '410HBNW175987', 'GH24NSCO', 5, 56, '1', '2020-09-24 11:52:12', '2020-09-24 11:52:12');
INSERT INTO `lectorcds` VALUES (36, 'KU0160D055K409F1AD200', 'GH7OL', 28, 58, '1', '2020-09-24 12:11:01', '2020-09-24 12:11:01');
INSERT INTO `lectorcds` VALUES (37, '718390028165', 'IHAS124', 40, 59, '1', '2020-09-24 12:56:31', '2020-09-24 12:56:31');
INSERT INTO `lectorcds` VALUES (38, '2B8431500731', 'IHAS124', 40, 60, '1', '2020-09-24 13:20:53', '2020-09-24 13:20:53');
INSERT INTO `lectorcds` VALUES (39, '411H8EX069796', 'GH24NSCO', 5, 61, '1', '2020-09-24 14:20:25', '2020-09-24 14:20:25');
INSERT INTO `lectorcds` VALUES (40, '30669180', 'ADT2805', 51, 57, '1', '2020-09-24 14:29:17', '2020-09-24 14:29:17');
INSERT INTO `lectorcds` VALUES (41, '2A8420500003743524703', '1AA52414', 40, 50, '1', '2020-09-25 13:22:23', '2020-09-25 13:22:23');
INSERT INTO `lectorcds` VALUES (42, 'KV01600055144', 'GH70N', 60, 63, '1', '2020-09-25 13:50:03', '2020-09-25 13:50:49');
INSERT INTO `lectorcds` VALUES (43, 'KV0160D055144A079D00', 'GH70L', 60, 62, '1', '2020-09-25 14:07:47', '2020-09-25 14:07:47');
INSERT INTO `lectorcds` VALUES (44, '260359L122', 'N/S', 51, 48, '1', '2020-09-25 15:10:20', '2020-09-25 15:10:20');
INSERT INTO `lectorcds` VALUES (45, 'KV0160FD112100208FF301', 'DH-16ABSH', 21, 64, '1', '2020-09-25 15:42:34', '2020-09-25 15:42:34');
INSERT INTO `lectorcds` VALUES (46, '410HBFR175515', 'GH24NSC0', 5, 46, '1', '2020-09-28 13:19:52', '2020-09-28 13:19:52');
INSERT INTO `lectorcds` VALUES (47, 'KV0160D0514409F10A200', '6H70N', 30, 45, '1', '2020-09-28 13:53:43', '2020-09-28 13:53:43');
INSERT INTO `lectorcds` VALUES (48, 'ID08P7844760832H01T5', 'SN-124', 38, 65, '1', '2020-09-29 13:05:48', '2020-09-29 13:05:48');
INSERT INTO `lectorcds` VALUES (49, '2B84305133743743743524703', 'IHAS124-14', 40, 44, '1', '2020-09-29 15:06:40', '2020-09-29 15:06:40');
INSERT INTO `lectorcds` VALUES (50, '2484205002283743524703', 'IHAS124-14', 40, 43, '1', '2020-09-30 12:41:43', '2020-09-30 12:41:43');
INSERT INTO `lectorcds` VALUES (51, '2B8431500738374354703', 'IHAS124-14EUV', 40, 42, '1', '2020-09-30 13:05:48', '2020-09-30 13:05:48');
INSERT INTO `lectorcds` VALUES (52, '2A842050083743524703', 'IHAS124-14EUV', 40, 66, '1', '2020-09-30 14:18:42', '2020-09-30 14:18:42');
INSERT INTO `lectorcds` VALUES (53, 'K00160D008511042EBD200', 'CEHCON', 30, 67, '1', '2020-09-30 15:08:17', '2020-09-30 15:08:17');
INSERT INTO `lectorcds` VALUES (54, 'SN', 'IHAS124', 40, 68, '1', '2020-10-01 12:06:14', '2020-10-01 12:06:14');
INSERT INTO `lectorcds` VALUES (55, '306691802603101L122', 'AD-7280S', 51, 69, '1', '2020-10-02 12:34:28', '2020-10-02 12:34:28');
INSERT INTO `lectorcds` VALUES (56, '304HAHY096673', 'GH24NS95', 5, 70, '1', '2020-10-02 16:37:46', '2020-10-02 16:37:46');
INSERT INTO `lectorcds` VALUES (57, '2B84315006693743524703', 'IHAS124-14EVV', 40, 72, '1', '2020-11-10 14:44:17', '2020-11-10 14:44:17');
INSERT INTO `lectorcds` VALUES (58, '2A84205003523743524703', 'IHAS24', 40, 73, '1', '2020-11-10 15:46:22', '2020-11-10 15:46:22');
INSERT INTO `lectorcds` VALUES (59, '718390028165', 'IHAS124-14EVV', 40, 75, '1', '2020-11-10 18:45:32', '2020-11-10 18:45:32');
INSERT INTO `lectorcds` VALUES (60, 'SIN #', 'AD-72805', 51, 74, '1', '2020-11-10 19:01:35', '2020-11-10 19:01:35');
INSERT INTO `lectorcds` VALUES (61, '503HBEX172746', 'GH24NS', 5, 76, '1', '2020-11-11 13:20:57', '2020-11-11 13:20:57');
INSERT INTO `lectorcds` VALUES (62, '2A84205003513743524703', 'IHAS24', 40, 77, '1', '2020-11-11 13:32:23', '2020-11-11 13:32:23');
INSERT INTO `lectorcds` VALUES (63, 'R60668BC400SHJ', 'TSH353C', 45, 78, '1', '2020-11-11 13:34:59', '2020-11-11 13:34:59');
INSERT INTO `lectorcds` VALUES (64, '2B84315006623743524703', 'IHAS124-14', 40, 80, '1', '2020-11-11 13:56:40', '2020-11-11 13:56:40');
INSERT INTO `lectorcds` VALUES (65, 'TS5TSH353B', 'TCH353', 21, 79, '1', '2020-11-11 13:58:45', '2020-11-11 13:58:45');
INSERT INTO `lectorcds` VALUES (66, '2A842050009374', 'HS124', 40, 81, '1', '2020-11-11 14:04:06', '2020-11-11 14:04:06');
INSERT INTO `lectorcds` VALUES (67, '2B8431500661374352703', 'IHAS124-14', 40, 84, '1', '2020-11-11 14:23:24', '2020-11-11 14:23:24');
INSERT INTO `lectorcds` VALUES (68, '718390028163', 'IHAS124-14EVV', 40, 82, '1', '2020-11-11 14:25:40', '2020-11-11 14:25:40');
INSERT INTO `lectorcds` VALUES (69, '2603039L122', 'AD7280S', 51, 83, '1', '2020-11-11 14:27:27', '2020-11-11 14:27:27');
INSERT INTO `lectorcds` VALUES (70, '080U27', 'AB-7280S', 51, 85, '1', '2020-11-11 14:30:56', '2020-11-11 14:30:56');
INSERT INTO `lectorcds` VALUES (71, 'KV0160D0551440A07AD200', 'GH7N', 30, 86, '1', '2020-11-11 14:59:02', '2020-11-11 14:59:02');
INSERT INTO `lectorcds` VALUES (72, 'KU0160D0520320E04DD300', 'GH60N', 28, 88, '1', '2020-11-11 15:04:34', '2020-11-11 15:04:34');
INSERT INTO `lectorcds` VALUES (73, '718390028163', 'IHHS124-14', 40, 71, '1', '2020-11-11 15:38:36', '2020-11-11 15:38:36');
INSERT INTO `lectorcds` VALUES (74, '2A8420500011', 'HAS 124', 40, 90, '1', '2020-11-11 16:05:55', '2020-11-11 16:05:55');
INSERT INTO `lectorcds` VALUES (75, 'MEE64812514', 'GHCON', 30, 89, '1', '2020-11-11 16:20:14', '2020-11-11 16:20:14');
INSERT INTO `lectorcds` VALUES (76, 'R6146GAB102733', 'SH-S223', 38, 87, '1', '2020-11-11 17:17:57', '2020-11-11 17:17:57');
INSERT INTO `lectorcds` VALUES (77, 'S06H7LE007696', 'GH24NS', 5, 94, '1', '2020-11-11 19:09:32', '2020-11-11 19:09:32');
INSERT INTO `lectorcds` VALUES (78, 'S/N', 'TCH353', 21, 91, '1', '2020-11-11 19:24:53', '2020-11-11 19:24:53');
INSERT INTO `lectorcds` VALUES (79, 'K00160D00543402E60D200', 'GHB0N', 30, 92, '1', '2020-11-11 20:05:29', '2020-11-11 20:05:29');
INSERT INTO `lectorcds` VALUES (80, '2B8420500012', 'HAS 124', 40, 95, '1', '2020-11-12 09:45:50', '2020-11-12 09:45:50');
INSERT INTO `lectorcds` VALUES (81, 'QV0160D05513905EP5D200', 'GH70N', 30, 96, '1', '2020-11-12 10:07:42', '2020-11-12 10:07:42');
INSERT INTO `lectorcds` VALUES (82, 'R6146GAB101661', 'SH-S223', 45, 97, '1', '2020-11-12 10:46:25', '2020-11-12 10:46:25');
INSERT INTO `lectorcds` VALUES (83, '2603025L122', 'AD7280S', 51, 99, '1', '2020-11-12 11:02:49', '2020-11-12 11:02:49');
INSERT INTO `lectorcds` VALUES (84, '2B8430513334', 'HAS 124', 40, 100, '1', '2020-11-12 14:11:19', '2020-11-12 14:11:19');
INSERT INTO `lectorcds` VALUES (85, '43402D8CD200', 'GHBON', 28, 101, '1', '2020-11-12 15:40:41', '2020-11-12 15:40:41');
INSERT INTO `lectorcds` VALUES (86, '410HBTE175817', 'GH24NSCO', 5, 102, '1', '2020-11-13 08:19:04', '2020-11-13 08:19:04');
INSERT INTO `lectorcds` VALUES (87, 'KU0160D0551440A078D200', 'GH70N', 28, 104, '1', '2020-11-13 08:40:33', '2020-11-13 08:40:33');
INSERT INTO `lectorcds` VALUES (88, '11SOB55867ZV18DP00X249', 'DH-16D75H', 40, 103, '1', '2020-11-13 08:45:47', '2020-11-13 08:45:47');
INSERT INTO `lectorcds` VALUES (89, '4B6509906895', 'DU8A6SH', 7, 98, '1', '2020-11-13 09:18:37', '2020-11-13 09:18:37');
INSERT INTO `lectorcds` VALUES (90, '304HADB1099762', 'GHNS95', 5, 105, '1', '2020-11-13 09:20:13', '2020-11-13 09:20:13');
INSERT INTO `lectorcds` VALUES (91, 'R60668BC400SHC', 'TSH353C', 38, 106, '1', '2020-11-13 09:33:26', '2020-11-13 09:33:26');
INSERT INTO `lectorcds` VALUES (92, 'SIN #', 'IHAS124-14', 40, 108, '1', '2020-11-13 10:02:53', '2020-11-13 10:02:53');
INSERT INTO `lectorcds` VALUES (93, '718390028175', 'IHAS124-14EVV', 40, 107, '1', '2020-11-13 10:05:04', '2020-11-13 10:05:04');
INSERT INTO `lectorcds` VALUES (94, '2B8430511370', 'HAS 124', 40, 109, '1', '2020-11-13 10:26:00', '2020-11-13 10:26:00');
INSERT INTO `lectorcds` VALUES (95, '2B8430513335', 'IHAS24', 40, 110, '1', '2020-11-13 10:41:51', '2020-11-13 10:41:51');
INSERT INTO `lectorcds` VALUES (96, '2602845L122', 'AD7280S', 51, 112, '1', '2020-11-13 10:56:08', '2020-11-13 10:56:08');
INSERT INTO `lectorcds` VALUES (97, '2A84205002133743524703', 'IHAS124', 40, 93, '1', '2020-11-13 11:03:01', '2020-11-13 11:03:01');
INSERT INTO `lectorcds` VALUES (98, '350', 'HA124', 5, 114, '1', '2020-11-13 11:11:24', '2020-11-13 11:11:24');
INSERT INTO `lectorcds` VALUES (99, '2A84205000153743524703', 'IHAS124-14', 40, 113, '1', '2020-11-13 11:17:08', '2020-11-13 11:17:08');
INSERT INTO `lectorcds` VALUES (100, '503HBK172797', 'GHZ4NSCO', 5, 115, '1', '2020-11-13 11:23:12', '2020-11-13 11:23:12');
INSERT INTO `lectorcds` VALUES (101, '2A842500255', 'HAS124', 5, 116, '1', '2020-11-13 11:25:27', '2020-11-13 11:25:27');
INSERT INTO `lectorcds` VALUES (102, 'KV0160D055203204CC1D300', 'GH60N', 28, 117, '1', '2020-11-13 11:37:05', '2020-11-13 11:37:05');
INSERT INTO `lectorcds` VALUES (103, '71239DD27165', 'HAS 124', 40, 118, '1', '2020-11-13 11:39:24', '2020-11-13 11:39:24');
INSERT INTO `lectorcds` VALUES (104, '28H32350', 'HA124', 5, 119, '1', '2020-11-13 11:39:43', '2020-11-13 11:39:43');
INSERT INTO `lectorcds` VALUES (105, '2B843NS133733743524703', 'IHAS124-14EVV', 40, 120, '1', '2020-11-13 11:52:28', '2020-11-13 11:52:28');
INSERT INTO `lectorcds` VALUES (106, 'R60668BC400G1G', 'TS-H353C', 45, 121, '1', '2020-11-13 11:55:46', '2020-11-13 11:55:46');
INSERT INTO `lectorcds` VALUES (107, 'KV016D0551440A06FD200', 'GH70N', 30, 124, '1', '2020-11-13 12:13:18', '2020-11-13 12:13:18');
INSERT INTO `lectorcds` VALUES (108, '2B843051337637435224703', 'HAS124', 40, 123, '1', '2020-11-13 13:07:52', '2020-11-13 13:07:52');
INSERT INTO `lectorcds` VALUES (109, '2B84305133363743524703', 'IHAS124-14EVV', 40, 126, '1', '2020-11-13 13:12:30', '2020-11-13 13:12:30');
INSERT INTO `lectorcds` VALUES (110, '411H8AH069800', 'GH24NS', 5, 122, '1', '2020-11-13 13:15:14', '2020-11-13 13:15:14');
INSERT INTO `lectorcds` VALUES (111, '2A84205003563743524703', 'HAS124', 40, 127, '1', '2020-11-13 13:40:43', '2020-11-13 13:40:43');
INSERT INTO `lectorcds` VALUES (112, '214842050035737435244703', 'HAS124', 40, 129, '1', '2020-11-13 14:05:13', '2020-11-13 14:05:13');
INSERT INTO `lectorcds` VALUES (113, '2AS420500002B743524703', 'IHAS124-14EVV', 40, 128, '1', '2020-11-13 14:08:29', '2020-11-13 14:08:29');
INSERT INTO `lectorcds` VALUES (114, '503HBWW172999', 'GH24NSCD', 5, 130, '1', '2020-11-13 14:20:40', '2020-11-13 14:20:40');
INSERT INTO `lectorcds` VALUES (115, '718390028165', 'IHAS124-14EVV', 40, 131, '1', '2020-11-13 14:24:49', '2020-11-13 14:24:49');
INSERT INTO `lectorcds` VALUES (116, '2603236L122', 'AD7280S', 51, 132, '1', '2020-11-13 14:31:03', '2020-11-13 14:31:03');
INSERT INTO `lectorcds` VALUES (117, '1892583L121', 'AD-7280S', 51, 125, '1', '2020-11-13 14:40:18', '2020-11-13 14:40:18');
INSERT INTO `lectorcds` VALUES (118, '2A8420500225', 'HAS 124', 40, 134, '1', '2020-11-13 14:43:19', '2020-11-13 14:43:19');
INSERT INTO `lectorcds` VALUES (119, '201202207', 'AD-72-805', 51, 133, '1', '2020-11-13 14:59:38', '2020-11-13 14:59:38');
INSERT INTO `lectorcds` VALUES (120, '11S0B55867ZVJ8DP00AOLN', 'DH-16D7SH', 40, 135, '1', '2020-11-13 15:07:45', '2020-11-13 15:07:45');
INSERT INTO `lectorcds` VALUES (121, '304HARD209942', 'GH24NS', 5, 138, '1', '2020-11-16 08:42:20', '2020-11-16 08:42:20');
INSERT INTO `lectorcds` VALUES (122, '3743524703', 'IHAS24', 40, 136, '1', '2020-11-16 09:25:30', '2020-11-16 09:25:30');
INSERT INTO `lectorcds` VALUES (123, '2B8430513362', 'HAS 124', 40, 139, '1', '2020-11-16 09:25:40', '2020-11-16 09:25:40');
INSERT INTO `lectorcds` VALUES (124, 'SN', 'SN', 21, 140, '1', '2020-11-16 09:56:02', '2020-11-16 09:56:02');
INSERT INTO `lectorcds` VALUES (125, 'K00160D008S11042F3D200', 'GHCON', 30, 141, '1', '2020-11-16 10:12:36', '2020-11-16 10:12:36');
INSERT INTO `lectorcds` VALUES (126, '25030142122', 'AD-A2805', 51, 142, '1', '2020-11-16 10:37:31', '2020-11-16 10:37:31');
INSERT INTO `lectorcds` VALUES (127, 'KV0160A0551440A050D200', 'HITACHI-L6 DATA', 21, 51, '1', '2020-11-16 11:03:17', '2020-11-16 11:03:17');
INSERT INTO `lectorcds` VALUES (128, '2B8431500737', 'HAS 124', 40, 143, '1', '2020-11-16 11:44:36', '2020-11-16 11:44:36');
INSERT INTO `lectorcds` VALUES (129, '306891867280305BL-122', 'AD72805', 51, 53, '1', '2020-11-16 11:56:02', '2020-11-16 11:56:02');
INSERT INTO `lectorcds` VALUES (130, '2B84295862063743524703', 'IHAS124-14EUV', 40, 151, '1', '2020-11-16 13:58:23', '2020-11-16 13:58:23');
INSERT INTO `lectorcds` VALUES (131, 'R60668BC400SHH', 'TSH753C/DEBHP', 45, 152, '1', '2020-11-16 14:33:45', '2020-11-16 14:33:45');
INSERT INTO `lectorcds` VALUES (132, '718390028165', '1HAS124', 40, 154, '1', '2020-11-18 09:01:03', '2020-11-18 09:01:03');
INSERT INTO `lectorcds` VALUES (133, '71839008165', '1HAS124', 40, 155, '1', '2020-11-18 09:20:11', '2020-11-18 09:20:11');
INSERT INTO `lectorcds` VALUES (134, '718390028165', 'JHAS124', 40, 156, '1', '2020-11-18 10:16:09', '2020-11-18 10:16:09');
INSERT INTO `lectorcds` VALUES (135, '2A8420500063743524703', 'IHAS124-14EUV', 34, 150, '1', '2020-11-18 15:18:53', '2020-11-18 15:18:53');
INSERT INTO `lectorcds` VALUES (136, '2B84315006783743524703', 'IHAS124', 34, 149, '1', '2020-11-18 15:32:06', '2020-11-18 15:32:06');
INSERT INTO `lectorcds` VALUES (137, '2A8420500230', 'HAS 124', 40, 157, '1', '2020-11-19 08:00:01', '2020-11-19 08:00:01');
INSERT INTO `lectorcds` VALUES (138, '2B8431500735', 'HAS 124', 40, 158, '1', '2020-11-19 08:59:07', '2020-11-19 08:59:07');
INSERT INTO `lectorcds` VALUES (139, '2B8431500740', 'HAS 124', 40, 159, '1', '2020-11-19 11:17:43', '2020-11-19 11:17:43');
INSERT INTO `lectorcds` VALUES (140, '1200160D5203204CCB9B3A', 'GH60N', 60, 160, '1', '2020-11-19 15:03:17', '2020-11-19 15:03:17');
INSERT INTO `lectorcds` VALUES (141, 'KU0160D0551440A1', 'GH70N', 28, 161, '1', '2020-11-19 15:39:53', '2020-11-19 15:39:53');
INSERT INTO `lectorcds` VALUES (142, '2B84500215', 'HAS 124', 40, 162, '1', '2020-11-19 16:07:53', '2020-11-19 16:08:05');
INSERT INTO `lectorcds` VALUES (143, '2B8429586204', 'HAS 124', 40, 163, '1', '2020-11-20 08:20:42', '2020-11-20 08:20:42');
INSERT INTO `lectorcds` VALUES (144, '3529377', 'C66', 81, 164, '1', '2020-11-20 08:36:55', '2020-11-20 08:36:55');
INSERT INTO `lectorcds` VALUES (145, '2B8430513361', 'HAS 124', 40, 165, '1', '2020-11-20 09:30:28', '2020-11-20 09:30:28');
INSERT INTO `lectorcds` VALUES (146, '411H8CT070723', 'MEZ64812609', 5, 148, '1', '2020-11-20 09:32:37', '2020-11-20 09:32:37');
INSERT INTO `lectorcds` VALUES (147, '1I50B558677VJ8DP00A0KN', 'DH-16D75H', 34, 147, '1', '2020-11-20 09:57:10', '2020-11-20 09:57:10');
INSERT INTO `lectorcds` VALUES (148, 'KV0160D0551440A042D200', 'GH70N', 28, 146, '1', '2020-11-20 11:02:31', '2020-11-20 11:02:31');
INSERT INTO `lectorcds` VALUES (149, '30669', 'AD7280S', 51, 166, '1', '2020-11-20 11:12:28', '2020-11-20 11:12:28');
INSERT INTO `lectorcds` VALUES (150, '718390028165', 'HAS 124', 40, 167, '1', '2020-11-20 11:36:08', '2020-11-20 11:36:08');
INSERT INTO `lectorcds` VALUES (151, '306691802602851L122', 'AD72805', 51, 144, '1', '2020-11-20 11:52:23', '2020-11-20 11:52:23');
INSERT INTO `lectorcds` VALUES (152, 'R60668BC400TPX', 'TS-H353C', 38, 145, '1', '2020-11-20 12:05:03', '2020-11-20 12:05:03');
INSERT INTO `lectorcds` VALUES (153, 'K00160D008', 'GH60N', 28, 168, '1', '2020-11-20 13:39:57', '2020-11-20 13:39:57');
INSERT INTO `lectorcds` VALUES (154, '411H8BJ070717', 'GH24NS', 5, 169, '1', '2020-11-24 08:30:44', '2020-11-24 08:30:44');
INSERT INTO `lectorcds` VALUES (155, 'R60668BC40060W', 'TSH353C', 5, 170, '1', '2020-11-24 13:34:48', '2020-11-24 13:34:48');
INSERT INTO `lectorcds` VALUES (156, 'GH24USBO', 'GHBO4', 5, 171, '1', '2020-11-24 14:08:22', '2020-11-24 14:08:22');
INSERT INTO `lectorcds` VALUES (157, '2603223', 'A0780S', 51, 172, '1', '2020-11-24 14:23:32', '2020-11-24 14:23:32');
INSERT INTO `lectorcds` VALUES (158, '110290055', 'GH70W', 5, 173, '1', '2020-11-24 14:35:19', '2020-11-24 14:35:19');
INSERT INTO `lectorcds` VALUES (159, 'KU0160005514', 'GH70W', 5, 174, '1', '2020-11-24 14:58:20', '2020-11-24 14:58:20');
INSERT INTO `lectorcds` VALUES (160, '718390028165', 'HAS 124', 40, 175, '1', '2020-11-24 15:06:12', '2020-11-24 15:06:12');
INSERT INTO `lectorcds` VALUES (161, '410HBCT17', 'GH24N', 5, 176, '1', '2020-11-30 08:25:21', '2020-11-30 08:25:21');
INSERT INTO `lectorcds` VALUES (162, '718390028165', 'HAS124', 40, 177, '1', '2020-11-30 15:17:39', '2020-11-30 15:17:39');

-- ----------------------------
-- Table structure for microprocesadors
-- ----------------------------
DROP TABLE IF EXISTS `microprocesadors`;
CREATE TABLE `microprocesadors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `velocidad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_procesador_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `microprocesadors_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `microprocesadors_nm_procesador_id_foreign`(`nm_procesador_id`) USING BTREE,
  INDEX `microprocesadors_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `microprocesadors_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `microprocesadors_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `microprocesadors_nm_procesador_id_foreign` FOREIGN KEY (`nm_procesador_id`) REFERENCES `nm_procesadors` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of microprocesadors
-- ----------------------------
INSERT INTO `microprocesadors` VALUES (1, 'SN', '3.2', 9, 3, 8, '1', '2020-09-03 16:14:13', '2020-09-03 16:14:13');
INSERT INTO `microprocesadors` VALUES (2, '3179', '2.8', 9, 1, 9, '1', '2020-09-03 19:49:21', '2020-09-03 19:49:21');
INSERT INTO `microprocesadors` VALUES (3, '306C3', '3.5', 9, 2, 10, '1', '2020-09-04 15:00:21', '2020-09-04 15:00:21');
INSERT INTO `microprocesadors` VALUES (4, '2069', '3.2', 9, 5, 11, '1', '2020-09-04 15:28:45', '2020-09-04 15:29:26');
INSERT INTO `microprocesadors` VALUES (5, 'S/N', '3.2', 9, 3, 12, '1', '2020-09-04 15:34:19', '2020-09-04 15:34:19');
INSERT INTO `microprocesadors` VALUES (6, 'SN', '3.2', 9, 3, 13, '1', '2020-09-04 16:01:01', '2020-09-04 16:01:01');
INSERT INTO `microprocesadors` VALUES (7, 'L420B481', '2.70', 9, 1, 14, '1', '2020-09-04 16:25:43', '2020-09-04 16:25:43');
INSERT INTO `microprocesadors` VALUES (8, 'SN', '2.8', 9, 1, 15, '1', '2020-09-07 11:47:24', '2020-09-07 11:47:24');
INSERT INTO `microprocesadors` VALUES (9, '5222', '2.7', 9, 1, 16, '1', '2020-09-07 12:02:44', '2020-09-07 12:02:44');
INSERT INTO `microprocesadors` VALUES (10, '3806', '3.06', 9, 6, 17, '1', '2020-09-07 12:17:02', '2020-09-07 12:17:38');
INSERT INTO `microprocesadors` VALUES (11, 'SN', '3.07', 9, 5, 18, '1', '2020-09-07 13:03:02', '2020-11-13 10:10:12');
INSERT INTO `microprocesadors` VALUES (12, 'SN', '3.07', 9, 5, 19, '1', '2020-09-07 13:27:58', '2020-09-07 13:27:58');
INSERT INTO `microprocesadors` VALUES (13, 'SN', '2.8', 9, 1, 20, '1', '2020-09-07 14:23:19', '2020-09-07 14:23:19');
INSERT INTO `microprocesadors` VALUES (14, 'SN', '3.2', 9, 5, 22, '1', '2020-09-07 14:42:41', '2020-09-07 14:42:41');
INSERT INTO `microprocesadors` VALUES (15, '3206B952', '3.30', 9, 2, 21, '1', '2020-09-07 14:44:11', '2020-09-07 14:44:11');
INSERT INTO `microprocesadors` VALUES (16, '3146A951', '3.06', 9, 6, 23, '1', '2020-09-07 15:33:08', '2020-09-07 15:33:08');
INSERT INTO `microprocesadors` VALUES (17, '3028A966', '3.2', 9, 6, 24, '1', '2020-09-07 16:08:45', '2020-09-07 16:08:45');
INSERT INTO `microprocesadors` VALUES (18, 'SN', '2.8', 9, 1, 34, '1', '2020-09-08 14:20:07', '2020-09-08 14:20:07');
INSERT INTO `microprocesadors` VALUES (19, '34178767', '3.10', 9, 1, 40, '1', '2020-09-08 15:55:51', '2020-11-13 10:10:51');
INSERT INTO `microprocesadors` VALUES (20, '3206B952', '3.30', 9, 2, 39, '1', '2020-09-08 16:31:38', '2020-09-08 16:31:38');
INSERT INTO `microprocesadors` VALUES (21, '3332C100', '2.80', 9, 1, 38, '1', '2020-09-09 15:29:12', '2020-09-09 15:29:12');
INSERT INTO `microprocesadors` VALUES (22, 'X503A933', '3.20', 9, 1, 37, '1', '2020-09-10 12:57:35', '2020-11-13 10:11:00');
INSERT INTO `microprocesadors` VALUES (23, '3332C100', '2.80', 9, 1, 36, '1', '2020-09-10 15:16:46', '2020-09-10 15:16:46');
INSERT INTO `microprocesadors` VALUES (24, '3028A966', '3.20', 9, 6, 33, '1', '2020-09-10 15:56:14', '2020-09-10 15:56:14');
INSERT INTO `microprocesadors` VALUES (25, '3328A638', '3.0', 9, 3, 32, '1', '2020-09-11 12:58:31', '2020-09-11 12:58:31');
INSERT INTO `microprocesadors` VALUES (26, 'N/S', '3.06', 9, 6, 31, '1', '2020-09-11 16:20:08', '2020-09-11 16:20:08');
INSERT INTO `microprocesadors` VALUES (27, 'L420B481', '2.70', 9, 1, 30, '1', '2020-09-23 11:41:39', '2020-09-23 11:41:39');
INSERT INTO `microprocesadors` VALUES (28, 'S/N', '2.7', 9, 1, 54, '1', '2020-09-23 12:10:01', '2020-09-23 12:10:01');
INSERT INTO `microprocesadors` VALUES (29, 'N/S', '2.79', 9, 5, 29, '1', '2020-09-23 12:52:59', '2020-09-23 12:52:59');
INSERT INTO `microprocesadors` VALUES (30, 'S/N', '3.20', 9, 3, 55, '1', '2020-09-23 13:16:26', '2020-09-23 13:16:26');
INSERT INTO `microprocesadors` VALUES (31, 'L420B481', '2.70', 9, 1, 28, '1', '2020-09-23 14:32:39', '2020-09-23 14:32:39');
INSERT INTO `microprocesadors` VALUES (32, 'X622C783', '3.30', 9, 6, 26, '1', '2020-09-23 15:12:03', '2020-09-23 15:12:03');
INSERT INTO `microprocesadors` VALUES (33, 'L611A795', '2.80', 9, 6, 25, '1', '2020-09-23 15:46:38', '2020-09-23 15:46:38');
INSERT INTO `microprocesadors` VALUES (34, '3241F774', '3.10', 9, 2, 27, '1', '2020-09-23 15:57:33', '2020-09-23 15:57:40');
INSERT INTO `microprocesadors` VALUES (35, 'L420B481', '2.70', 9, 1, 35, '1', '2020-09-23 16:07:09', '2020-09-23 16:07:09');
INSERT INTO `microprocesadors` VALUES (36, 'SN', '3.3', 9, 1, 56, '1', '2020-09-24 11:49:49', '2020-11-13 10:11:12');
INSERT INTO `microprocesadors` VALUES (37, 'SN', '3.06', 9, 5, 58, '1', '2020-09-24 12:08:03', '2020-09-24 12:08:03');
INSERT INTO `microprocesadors` VALUES (38, 'S/N', '2.60', 9, 1, 57, '1', '2020-09-24 12:44:13', '2020-09-24 12:44:13');
INSERT INTO `microprocesadors` VALUES (39, 'SN', '2.80', 9, 1, 59, '1', '2020-09-24 12:44:49', '2020-09-24 12:44:49');
INSERT INTO `microprocesadors` VALUES (40, '2026', '2.70', 9, 1, 60, '1', '2020-09-24 13:31:48', '2020-09-24 13:31:48');
INSERT INTO `microprocesadors` VALUES (41, 'SN', '3.60', 9, 2, 61, '1', '2020-09-24 15:07:30', '2020-09-24 15:07:30');
INSERT INTO `microprocesadors` VALUES (42, 'S/N', '2.80', 9, 1, 50, '1', '2020-09-25 13:10:34', '2020-09-25 13:10:34');
INSERT INTO `microprocesadors` VALUES (43, 'N/S', '3.40', 9, 2, 49, '1', '2020-09-25 13:39:12', '2020-09-25 13:39:12');
INSERT INTO `microprocesadors` VALUES (44, 'SN', '3.07', 9, 5, 63, '1', '2020-09-25 13:52:42', '2020-09-25 13:52:42');
INSERT INTO `microprocesadors` VALUES (46, 'S/N', '3.06', 9, 5, 62, '1', '2020-09-25 14:01:38', '2020-09-25 14:01:38');
INSERT INTO `microprocesadors` VALUES (47, 'S/N', '2.59', 9, 1, 48, '1', '2020-09-25 14:53:14', '2020-09-25 14:53:14');
INSERT INTO `microprocesadors` VALUES (48, 'SN', '3.07', 9, 2, 64, '1', '2020-09-25 15:44:12', '2020-09-25 15:44:12');
INSERT INTO `microprocesadors` VALUES (49, 'S/N', '2.80', 9, 1, 46, '1', '2020-09-28 13:16:21', '2020-09-28 13:16:21');
INSERT INTO `microprocesadors` VALUES (50, 'S/N', '3.07', 9, 5, 45, '1', '2020-09-28 13:23:17', '2020-09-28 13:23:17');
INSERT INTO `microprocesadors` VALUES (51, 'SN', '2.00', 9, 6, 65, '1', '2020-09-29 13:08:10', '2020-09-29 13:08:10');
INSERT INTO `microprocesadors` VALUES (52, 'N/S', '2.70', 9, 1, 44, '1', '2020-09-29 14:18:42', '2020-09-29 14:18:42');
INSERT INTO `microprocesadors` VALUES (53, 'N/S', '2.70', 9, 1, 42, '1', '2020-09-30 13:01:33', '2020-09-30 13:01:33');
INSERT INTO `microprocesadors` VALUES (54, 'SN', '3.20', 9, 3, 67, '1', '2020-09-30 15:09:57', '2020-09-30 15:09:57');
INSERT INTO `microprocesadors` VALUES (55, 'SN', '3.10', 9, 3, 68, '1', '2020-10-01 12:07:22', '2020-10-01 12:07:22');
INSERT INTO `microprocesadors` VALUES (56, '4747', '2.60', 9, 1, 69, '1', '2020-10-02 12:40:38', '2020-10-02 12:40:38');
INSERT INTO `microprocesadors` VALUES (57, 'SN', '3.60', 9, 2, 70, '1', '2020-10-02 16:13:59', '2020-10-02 16:13:59');
INSERT INTO `microprocesadors` VALUES (58, 'N/S', '2.70', 9, 1, 71, '1', '2020-11-10 14:18:30', '2020-11-10 14:18:30');
INSERT INTO `microprocesadors` VALUES (59, 'SN', '2.70', 9, 1, 72, '1', '2020-11-10 14:38:04', '2020-11-10 14:38:04');
INSERT INTO `microprocesadors` VALUES (60, '1840', '2.80', 9, 1, 73, '1', '2020-11-10 15:41:51', '2020-11-10 15:41:51');
INSERT INTO `microprocesadors` VALUES (61, 'S/N', '2.70', 9, 1, 75, '1', '2020-11-10 18:28:51', '2020-11-10 18:28:51');
INSERT INTO `microprocesadors` VALUES (62, 'E3400', '2.60', 9, 1, 74, '1', '2020-11-10 18:44:45', '2020-11-10 18:44:45');
INSERT INTO `microprocesadors` VALUES (63, 'S/N', '2.70', 9, 1, 75, '1', '2020-11-10 21:07:49', '2020-11-10 21:07:49');
INSERT INTO `microprocesadors` VALUES (64, 'SN', '3.20', 9, 3, 76, '1', '2020-11-11 13:15:54', '2020-11-11 13:15:54');
INSERT INTO `microprocesadors` VALUES (65, '61840', '2.80', 9, 1, 77, '1', '2020-11-11 13:25:56', '2020-11-11 13:25:56');
INSERT INTO `microprocesadors` VALUES (66, '0628', '3.30', 9, 2, 78, '1', '2020-11-11 13:36:55', '2020-11-11 13:36:55');
INSERT INTO `microprocesadors` VALUES (67, 'S/N', '3.30', 9, 2, 79, '1', '2020-11-11 13:37:16', '2020-11-11 13:37:16');
INSERT INTO `microprocesadors` VALUES (68, 'SIN#', '2.60', 9, 1, 80, '1', '2020-11-11 13:49:39', '2020-11-11 13:49:39');
INSERT INTO `microprocesadors` VALUES (69, 'SN', '2.80', 9, 1, 81, '1', '2020-11-11 14:02:48', '2020-11-13 10:11:26');
INSERT INTO `microprocesadors` VALUES (70, 'S/N', '2.70', 9, 1, 82, '1', '2020-11-11 14:17:18', '2020-11-11 14:17:18');
INSERT INTO `microprocesadors` VALUES (71, '2699', '2.60', 9, 1, 83, '1', '2020-11-11 14:31:10', '2020-11-11 14:31:10');
INSERT INTO `microprocesadors` VALUES (72, 'SIN #', '3.07', 9, 5, 86, '1', '2020-11-11 14:45:00', '2020-11-11 14:45:00');
INSERT INTO `microprocesadors` VALUES (73, '2689', '3.20', 9, 5, 88, '1', '2020-11-11 15:07:02', '2020-11-11 15:07:02');
INSERT INTO `microprocesadors` VALUES (74, '1293', '2.80', 9, 1, 90, '1', '2020-11-11 16:07:08', '2020-11-11 16:07:08');
INSERT INTO `microprocesadors` VALUES (75, 'SIN #', '3.20', 9, 3, 89, '1', '2020-11-11 16:13:00', '2020-11-11 16:13:00');
INSERT INTO `microprocesadors` VALUES (76, 'SN', '3.20', 9, 3, 94, '1', '2020-11-11 19:10:45', '2020-11-11 19:10:45');
INSERT INTO `microprocesadors` VALUES (77, 'S/N', '3.10', 9, 6, 91, '1', '2020-11-11 19:17:15', '2020-11-11 19:17:15');
INSERT INTO `microprocesadors` VALUES (78, 'SIN #', '3.50', 9, 2, 92, '1', '2020-11-11 19:58:12', '2020-11-11 19:58:12');
INSERT INTO `microprocesadors` VALUES (79, 'SN', '3.20', 9, 3, 95, '1', '2020-11-12 09:50:55', '2020-11-12 09:50:55');
INSERT INTO `microprocesadors` VALUES (80, 'SIN #', '3.07', 9, 6, 96, '1', '2020-11-12 10:01:48', '2020-11-12 10:01:48');
INSERT INTO `microprocesadors` VALUES (81, '2317', '2.40', 9, 5, 97, '1', '2020-11-12 10:37:43', '2020-11-12 10:37:43');
INSERT INTO `microprocesadors` VALUES (82, '0702', '2.80', 9, 1, 99, '1', '2020-11-12 11:03:45', '2020-11-12 11:03:45');
INSERT INTO `microprocesadors` VALUES (83, '0879', '2.70', 9, 1, 100, '1', '2020-11-12 14:12:25', '2020-11-12 14:12:25');
INSERT INTO `microprocesadors` VALUES (84, '0303', '3.50', 9, 2, 101, '1', '2020-11-12 15:42:01', '2020-11-12 15:42:01');
INSERT INTO `microprocesadors` VALUES (85, '1665', '2.9', 9, 1, 102, '1', '2020-11-13 08:12:58', '2020-11-13 08:12:58');
INSERT INTO `microprocesadors` VALUES (86, '0294', '3.10', 9, 6, 103, '1', '2020-11-13 08:37:04', '2020-11-13 08:37:04');
INSERT INTO `microprocesadors` VALUES (87, 'SN', '3.06', 9, 5, 104, '1', '2020-11-13 08:41:55', '2020-11-13 08:41:55');
INSERT INTO `microprocesadors` VALUES (88, '2335', '3.10', 9, 2, 105, '1', '2020-11-13 09:01:21', '2020-11-13 09:01:21');
INSERT INTO `microprocesadors` VALUES (89, 'SN', '2.16', 9, 6, 98, '1', '2020-11-13 09:20:12', '2020-11-13 09:20:12');
INSERT INTO `microprocesadors` VALUES (90, '2917', '3.30', 9, 2, 106, '1', '2020-11-13 09:37:10', '2020-11-13 09:37:10');
INSERT INTO `microprocesadors` VALUES (91, 'S/N', '2.70', 9, 1, 107, '1', '2020-11-13 09:46:14', '2020-11-13 09:46:14');
INSERT INTO `microprocesadors` VALUES (92, 'SIN #', '2.70', 9, 1, 108, '1', '2020-11-13 09:57:10', '2020-11-13 09:57:10');
INSERT INTO `microprocesadors` VALUES (93, '2305', '2.70', 9, 1, 109, '1', '2020-11-13 10:27:40', '2020-11-13 10:27:40');
INSERT INTO `microprocesadors` VALUES (94, '2783', '2.70', 9, 1, 110, '1', '2020-11-13 10:30:15', '2020-11-13 10:30:15');
INSERT INTO `microprocesadors` VALUES (95, 'S/N', '2.00', 9, 6, 111, '1', '2020-11-13 10:39:15', '2020-11-13 10:39:15');
INSERT INTO `microprocesadors` VALUES (96, 'SN', '3.10', 9, 1, 112, '1', '2020-11-13 10:49:34', '2020-11-13 10:49:34');
INSERT INTO `microprocesadors` VALUES (97, 'INTEL', '2.90', 9, 1, 93, '1', '2020-11-13 10:51:35', '2020-11-13 10:51:35');
INSERT INTO `microprocesadors` VALUES (98, 'SIN #', '2.80', 9, 1, 113, '1', '2020-11-13 11:03:28', '2020-11-13 11:03:28');
INSERT INTO `microprocesadors` VALUES (99, 'SN', '3.6', 9, 4, 114, '1', '2020-11-13 11:07:09', '2020-11-13 11:07:09');
INSERT INTO `microprocesadors` VALUES (100, 'S/N', '3.20', 9, 3, 115, '1', '2020-11-13 11:12:27', '2020-11-13 11:12:27');
INSERT INTO `microprocesadors` VALUES (101, 'SN', '2.8', 9, 1, 116, '1', '2020-11-13 11:21:00', '2020-11-13 11:21:00');
INSERT INTO `microprocesadors` VALUES (102, '2588', '3.20', 9, 5, 117, '1', '2020-11-13 11:30:35', '2020-11-13 11:30:35');
INSERT INTO `microprocesadors` VALUES (103, 'NS', '2.8', 9, 1, 119, '1', '2020-11-13 11:35:44', '2020-11-13 11:35:44');
INSERT INTO `microprocesadors` VALUES (104, 'SN', '2.80', 9, 1, 118, '1', '2020-11-13 11:40:34', '2020-11-13 11:40:34');
INSERT INTO `microprocesadors` VALUES (105, 'S/N', '2.70', 9, 1, 120, '1', '2020-11-13 11:42:06', '2020-11-13 11:42:06');
INSERT INTO `microprocesadors` VALUES (106, '5333', '3.0', 9, 2, 121, '1', '2020-11-13 11:50:15', '2020-11-13 11:50:15');
INSERT INTO `microprocesadors` VALUES (107, 'SIN#', '3.06', 9, 5, 124, '1', '2020-11-13 12:07:14', '2020-11-13 12:07:14');
INSERT INTO `microprocesadors` VALUES (108, 'S/N', '3.06', 9, 1, 51, '1', '2020-11-13 12:53:18', '2020-11-13 12:53:18');
INSERT INTO `microprocesadors` VALUES (109, 'SN', '2.70', 9, 1, 123, '1', '2020-11-13 13:03:10', '2020-11-13 13:03:10');
INSERT INTO `microprocesadors` VALUES (110, 'S/N', '2.70', 9, 1, 126, '1', '2020-11-13 13:06:46', '2020-11-13 13:06:46');
INSERT INTO `microprocesadors` VALUES (111, '0950', '3.6', 9, 2, 122, '1', '2020-11-13 13:16:15', '2020-11-13 13:16:15');
INSERT INTO `microprocesadors` VALUES (112, 'SN', '2.80', 9, 1, 127, '1', '2020-11-13 13:18:13', '2020-11-13 13:18:13');
INSERT INTO `microprocesadors` VALUES (113, 'SN', '2.80', 9, 1, 129, '1', '2020-11-13 13:57:58', '2020-11-13 13:57:58');
INSERT INTO `microprocesadors` VALUES (114, 'S/N', '2.80', 9, 1, 128, '1', '2020-11-13 14:00:10', '2020-11-13 14:00:10');
INSERT INTO `microprocesadors` VALUES (115, 'SN', '3.20', 9, 3, 130, '1', '2020-11-13 14:14:42', '2020-11-13 14:14:42');
INSERT INTO `microprocesadors` VALUES (116, 'S/N', '2.70', 9, 1, 131, '1', '2020-11-13 14:20:37', '2020-11-13 14:20:37');
INSERT INTO `microprocesadors` VALUES (117, '2977', '2.60', 9, 1, 132, '1', '2020-11-13 14:32:14', '2020-11-13 14:32:14');
INSERT INTO `microprocesadors` VALUES (118, '4600', '3.06', 9, 5, 125, '1', '2020-11-13 14:32:58', '2020-11-13 14:32:58');
INSERT INTO `microprocesadors` VALUES (119, '1768', '2.80', 9, 1, 134, '1', '2020-11-13 14:44:10', '2020-11-13 14:44:10');
INSERT INTO `microprocesadors` VALUES (120, 'S/N', '3.06', 9, 6, 133, '1', '2020-11-13 14:54:36', '2020-11-13 14:54:36');
INSERT INTO `microprocesadors` VALUES (121, '0982', '3.09', 9, 6, 135, '1', '2020-11-13 15:09:09', '2020-11-13 15:09:09');
INSERT INTO `microprocesadors` VALUES (122, 'S/N', '3.06', 9, 5, 137, '1', '2020-11-13 15:13:23', '2020-11-13 15:13:23');
INSERT INTO `microprocesadors` VALUES (123, '2426', '3.10', 9, 2, 138, '1', '2020-11-16 08:43:13', '2020-11-16 08:43:13');
INSERT INTO `microprocesadors` VALUES (124, '1222', '2.70', 9, 1, 136, '1', '2020-11-16 09:14:24', '2020-11-16 09:14:24');
INSERT INTO `microprocesadors` VALUES (125, '0523', '2.70', 9, 1, 139, '1', '2020-11-16 09:26:49', '2020-11-16 09:26:49');
INSERT INTO `microprocesadors` VALUES (126, 'SN', '280', 9, 6, 140, '1', '2020-11-16 09:47:18', '2020-11-16 09:47:18');
INSERT INTO `microprocesadors` VALUES (127, 'SN', '3.20', 9, 3, 141, '1', '2020-11-16 10:06:48', '2020-11-16 10:06:48');
INSERT INTO `microprocesadors` VALUES (128, 'SN', '2.60', 9, 1, 142, '1', '2020-11-16 10:22:56', '2020-11-16 10:22:56');
INSERT INTO `microprocesadors` VALUES (129, 'N/S', '2.60', 9, 1, 53, '1', '2020-11-16 11:43:23', '2020-11-16 11:43:23');
INSERT INTO `microprocesadors` VALUES (130, '0676', '2.70', 9, 1, 143, '1', '2020-11-16 11:45:31', '2020-11-16 11:45:31');
INSERT INTO `microprocesadors` VALUES (131, 'N/S', '3.10', 9, 3, 151, '1', '2020-11-16 13:56:03', '2020-11-16 13:56:03');
INSERT INTO `microprocesadors` VALUES (132, 'SN', '3.30', 9, 2, 152, '1', '2020-11-16 14:30:01', '2020-11-16 14:30:01');
INSERT INTO `microprocesadors` VALUES (133, 'SN', '3.30', 9, 2, 153, '1', '2020-11-18 08:46:45', '2020-11-18 08:46:45');
INSERT INTO `microprocesadors` VALUES (134, 'SN', '3.50', 9, 2, 154, '1', '2020-11-18 08:56:58', '2020-11-18 08:56:58');
INSERT INTO `microprocesadors` VALUES (135, 'SN', '2.70', 9, 1, 155, '1', '2020-11-18 09:12:58', '2020-11-18 09:12:58');
INSERT INTO `microprocesadors` VALUES (136, 'SN', '2.80', 9, 1, 156, '1', '2020-11-18 09:37:40', '2020-11-18 09:37:40');
INSERT INTO `microprocesadors` VALUES (137, 'N/S', '2.80', 9, 6, 150, '1', '2020-11-18 15:12:33', '2020-11-18 15:12:33');
INSERT INTO `microprocesadors` VALUES (138, 'N/S', '2.70', 9, 1, 149, '1', '2020-11-18 15:24:58', '2020-11-18 15:24:58');
INSERT INTO `microprocesadors` VALUES (139, '2505', '2.80', 9, 1, 157, '1', '2020-11-19 08:01:03', '2020-11-19 08:01:03');
INSERT INTO `microprocesadors` VALUES (140, '0388', '2.70', 9, 1, 158, '1', '2020-11-19 08:59:59', '2020-11-19 08:59:59');
INSERT INTO `microprocesadors` VALUES (141, '0306', '2.70', 9, 1, 159, '1', '2020-11-19 11:18:35', '2020-11-19 11:18:35');
INSERT INTO `microprocesadors` VALUES (142, '2937', '3.20', 9, 5, 160, '1', '2020-11-19 15:04:57', '2020-11-19 15:04:57');
INSERT INTO `microprocesadors` VALUES (143, '0144', '3.06', 9, 5, 161, '1', '2020-11-19 15:42:43', '2020-11-19 15:42:43');
INSERT INTO `microprocesadors` VALUES (144, '0214', '2.80', 9, 1, 162, '1', '2020-11-19 16:10:07', '2020-11-19 16:10:07');
INSERT INTO `microprocesadors` VALUES (145, '2292', '3.10', 9, 3, 163, '1', '2020-11-20 08:21:34', '2020-11-20 08:21:50');
INSERT INTO `microprocesadors` VALUES (146, 'SN', '2.66', 9, 6, 164, '1', '2020-11-20 08:38:46', '2020-11-20 08:38:46');
INSERT INTO `microprocesadors` VALUES (147, 'S/N', '2.80', 9, 1, 148, '1', '2020-11-20 09:13:11', '2020-11-20 09:13:11');
INSERT INTO `microprocesadors` VALUES (148, '5143', '2.70', 9, 1, 165, '1', '2020-11-20 09:31:41', '2020-11-20 09:31:41');
INSERT INTO `microprocesadors` VALUES (149, 'N/S', '3.10', 9, 6, 147, '1', '2020-11-20 09:46:57', '2020-11-20 09:46:57');
INSERT INTO `microprocesadors` VALUES (150, 'N/S', '3.07', 9, 5, 146, '1', '2020-11-20 10:55:51', '2020-11-20 10:55:51');
INSERT INTO `microprocesadors` VALUES (151, 'SN', '3.06', 9, 5, 166, '1', '2020-11-20 11:13:48', '2020-11-20 11:13:48');
INSERT INTO `microprocesadors` VALUES (152, 'N/S', '2.60', 9, 1, 144, '1', '2020-11-20 11:35:28', '2020-11-20 11:35:28');
INSERT INTO `microprocesadors` VALUES (153, 'SN', '2.80', 9, 1, 167, '1', '2020-11-20 11:36:56', '2020-11-20 11:36:56');
INSERT INTO `microprocesadors` VALUES (154, 'N/S', '3.30', 9, 2, 145, '1', '2020-11-20 12:00:52', '2020-11-20 12:00:52');
INSERT INTO `microprocesadors` VALUES (155, 'SN', '3.20', 9, 3, 168, '1', '2020-11-20 13:41:04', '2020-11-20 13:41:04');
INSERT INTO `microprocesadors` VALUES (156, 'SN', '3.30', 9, 2, 170, '1', '2020-11-24 13:37:14', '2020-11-24 13:37:14');
INSERT INTO `microprocesadors` VALUES (157, 'SN', '3.5', 9, 2, 171, '1', '2020-11-24 14:01:35', '2020-11-24 14:01:35');
INSERT INTO `microprocesadors` VALUES (158, 'SN', '2.66', 9, 1, 172, '1', '2020-11-24 14:19:00', '2020-11-24 14:19:00');
INSERT INTO `microprocesadors` VALUES (159, 'SN', '3.19', 9, 5, 173, '1', '2020-11-24 14:32:42', '2020-11-24 14:32:42');
INSERT INTO `microprocesadors` VALUES (160, 'SN', '3.07', 9, 5, 174, '1', '2020-11-24 14:54:47', '2020-11-24 14:54:47');
INSERT INTO `microprocesadors` VALUES (161, 'SN', '2.80', 9, 1, 175, '1', '2020-11-24 15:07:01', '2020-11-24 15:07:01');
INSERT INTO `microprocesadors` VALUES (162, 'SN', '2.8', 9, 1, 176, '1', '2020-11-30 08:18:26', '2020-11-30 08:18:26');
INSERT INTO `microprocesadors` VALUES (163, 'SN', '2.80', 9, 1, 177, '1', '2020-11-30 15:16:09', '2020-11-30 15:16:09');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_09_15_175228_create_nm_uebs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_09_15_175255_create_nm_departamentos_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_09_15_175405_create_nm_sistemas_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_09_15_175658_create_computadoras_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_09_15_175659_create_sellos_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_12_12_140150_create_nm_fabricantes_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_12_155342_create_nm_potencias_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_12_12_164843_create_nm_capacidad_hdds_table', 1);
INSERT INTO `migrations` VALUES (11, '2019_12_12_171227_create_nm_conectors_table', 1);
INSERT INTO `migrations` VALUES (12, '2019_12_12_173400_create_nm_monitors_table', 1);
INSERT INTO `migrations` VALUES (13, '2019_12_12_175500_create_nm_printers_table', 1);
INSERT INTO `migrations` VALUES (14, '2019_12_12_183333_create_nm_voltajes_table', 1);
INSERT INTO `migrations` VALUES (15, '2019_12_12_183334_create_nm_velocidad_rams_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_12_12_193710_create_nm_rams_table', 1);
INSERT INTO `migrations` VALUES (17, '2020_03_05_143854_create_lectorcds_table', 1);
INSERT INTO `migrations` VALUES (18, '2020_03_05_144602_create_hdds_table', 1);
INSERT INTO `migrations` VALUES (19, '2020_06_07_221310_create_rams_table', 1);
INSERT INTO `migrations` VALUES (20, '2020_06_08_143151_create_fuentes_table', 1);
INSERT INTO `migrations` VALUES (21, '2020_06_08_154802_create_teclados_table', 1);
INSERT INTO `migrations` VALUES (22, '2020_06_08_172326_create_ratons_table', 1);
INSERT INTO `migrations` VALUES (23, '2020_06_08_174329_create_backups_table', 1);
INSERT INTO `migrations` VALUES (24, '2020_06_10_123448_create_displays_table', 1);
INSERT INTO `migrations` VALUES (25, '2020_06_10_135543_create_printers_table', 1);
INSERT INTO `migrations` VALUES (26, '2020_06_11_131956_create_nm_generacions_table', 1);
INSERT INTO `migrations` VALUES (27, '2020_06_11_131957_create_motherboards_table', 1);
INSERT INTO `migrations` VALUES (28, '2020_06_11_133847_create_nm_procesadors_table', 1);
INSERT INTO `migrations` VALUES (29, '2020_06_11_133848_create_microprocesadors_table', 1);
INSERT INTO `migrations` VALUES (31, '2020_10_20_180606_create_nm_averias_table', 2);
INSERT INTO `migrations` VALUES (33, '2020_10_21_142101_create_reportes_table', 3);
INSERT INTO `migrations` VALUES (35, '2020_10_23_131338_add_dpto_to_users', 4);
INSERT INTO `migrations` VALUES (37, '2020_10_23_141402_create_averias_table', 5);
INSERT INTO `migrations` VALUES (39, '2020_10_29_143405_add_solucion_column_to_averias', 6);

-- ----------------------------
-- Table structure for motherboards
-- ----------------------------
DROP TABLE IF EXISTS `motherboards`;
CREATE TABLE `motherboards`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket` int(11) NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_generacion_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `motherboards_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `motherboards_nm_generacion_id_foreign`(`nm_generacion_id`) USING BTREE,
  INDEX `motherboards_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `motherboards_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `motherboards_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `motherboards_nm_generacion_id_foreign` FOREIGN KEY (`nm_generacion_id`) REFERENCES `nm_generacions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of motherboards
-- ----------------------------
INSERT INTO `motherboards` VALUES (1, '41D1E7A110-00959', 'GA-Z97-HD3', 1151, 4, 4, 8, '1', '2020-09-03 16:10:45', '2020-09-03 16:10:45');
INSERT INTO `motherboards` VALUES (2, '1611600658112', 'H97-D3H', 1150, 4, 5, 9, '1', '2020-09-03 19:48:57', '2020-09-03 19:48:57');
INSERT INTO `motherboards` VALUES (3, 'C03F05B836C6', 'B85H3-AM', 1151, 15, 4, 10, '1', '2020-09-04 12:26:34', '2020-09-04 12:26:34');
INSERT INTO `motherboards` VALUES (4, 'A816512053', 'MG43M', 775, 15, 3, 11, '1', '2020-09-04 15:27:36', '2020-09-04 15:27:36');
INSERT INTO `motherboards` VALUES (5, 'S/N', 'B85H3', 1155, 15, 4, 12, '1', '2020-09-04 15:31:28', '2020-09-04 15:31:28');
INSERT INTO `motherboards` VALUES (6, 'C03FD5BAD6F1', 'B85H3-AD2', 1155, 15, 4, 13, '1', '2020-09-04 16:00:27', '2020-09-04 16:00:27');
INSERT INTO `motherboards` VALUES (7, 'E7A11004445', 'GA-Z97-HD3', 1150, 4, 4, 14, '1', '2020-09-04 16:24:34', '2020-09-04 16:24:34');
INSERT INTO `motherboards` VALUES (8, '161160065884', 'GA-H97M-D3H', 1150, 4, 4, 15, '1', '2020-09-07 11:45:26', '2020-09-07 11:45:26');
INSERT INTO `motherboards` VALUES (9, '143440029127', 'Z97-HD3', 1150, 4, 4, 16, '1', '2020-09-07 12:02:17', '2020-09-07 12:02:17');
INSERT INTO `motherboards` VALUES (10, 'U01U114800453', 'S480G', 775, 15, 1, 17, '1', '2020-09-07 12:16:02', '2020-09-07 12:16:02');
INSERT INTO `motherboards` VALUES (11, 'MBVAM090011480016BEK03', '641D01', 775, 15, 1, 18, '1', '2020-09-07 13:01:21', '2020-09-07 13:01:21');
INSERT INTO `motherboards` VALUES (12, 'MBVAM090011480019DEK03', '641D01', 775, 15, 1, 19, '1', '2020-09-07 13:26:40', '2020-09-07 13:26:40');
INSERT INTO `motherboards` VALUES (13, '1424400R42300', 'GA-Z97-HD3', 1150, 4, 4, 20, '1', '2020-09-07 14:18:11', '2020-09-07 14:18:11');
INSERT INTO `motherboards` VALUES (14, 'A616053591', 'M643M', 775, 15, 1, 22, '1', '2020-09-07 14:41:24', '2020-09-07 14:41:24');
INSERT INTO `motherboards` VALUES (15, 'CN0M5DCD7016323N08BZA00', 'MS0520', 1155, 3, 3, 21, '1', '2020-09-07 14:42:06', '2020-09-07 14:42:06');
INSERT INTO `motherboards` VALUES (16, 'MBVAM0900114800167EK03', 'N15235', 775, 15, 1, 23, '1', '2020-09-07 15:29:34', '2020-09-07 15:31:03');
INSERT INTO `motherboards` VALUES (17, 'A816513476', 'M643M', 775, 15, 1, 24, '1', '2020-09-07 16:07:53', '2020-09-07 16:07:53');
INSERT INTO `motherboards` VALUES (18, '4/E/E4A20900996', 'GA-Z97', 1150, 4, 4, 34, '1', '2020-09-08 14:19:22', '2020-09-08 14:19:22');
INSERT INTO `motherboards` VALUES (19, '855D20F760855257464151U406', 'IH81M', 1150, 13, 1, 40, '1', '2020-09-08 15:54:49', '2020-09-08 15:54:49');
INSERT INTO `motherboards` VALUES (20, 'CNOM5DCD-70163234234019YA00', 'OPTIPLEX-390', 1150, 3, 2, 39, '1', '2020-09-08 16:29:05', '2020-09-08 16:29:05');
INSERT INTO `motherboards` VALUES (21, '4A37000601', 'GYGABITE', 1150, 4, 4, 38, '1', '2020-09-09 15:26:18', '2020-09-09 15:26:18');
INSERT INTO `motherboards` VALUES (22, 'C03FD5BAD7FD', 'B85H3-AD2', 1150, 15, 4, 37, '1', '2020-09-09 16:50:05', '2020-09-09 16:50:05');
INSERT INTO `motherboards` VALUES (23, 'E4A37003027', 'GIGABYTE', 1150, 4, 4, 36, '1', '2020-09-10 15:15:57', '2020-09-10 15:15:57');
INSERT INTO `motherboards` VALUES (24, 'A616053547', 'M643M', 775, 15, 1, 33, '1', '2020-09-10 15:55:18', '2020-09-10 15:55:18');
INSERT INTO `motherboards` VALUES (25, 'DBVFF1101334003F68100', 'H61H2-AM3', 1150, 15, 4, 32, '1', '2020-09-11 12:57:01', '2020-09-11 12:57:01');
INSERT INTO `motherboards` VALUES (26, 'MBVAM090011748000A2EK030', 'N15235', 775, 15, 1, 31, '1', '2020-09-11 16:18:41', '2020-09-11 16:18:41');
INSERT INTO `motherboards` VALUES (27, 'P021-AP0M', 'H81M1', 1150, 21, 2, 30, '1', '2020-09-23 11:40:57', '2020-09-23 11:40:57');
INSERT INTO `motherboards` VALUES (28, '41D1E7A110-03383', 'GA-797-HD3', 1150, 4, 5, 54, '1', '2020-09-23 12:07:28', '2020-11-13 10:05:18');
INSERT INTO `motherboards` VALUES (29, 'CN05C474-7082163A0367', 'E210882', 775, 3, 1, 29, '1', '2020-09-23 12:47:56', '2020-09-23 12:47:56');
INSERT INTO `motherboards` VALUES (30, '21A1F1A250-01219', 'GA-H97M-D3H', 1150, 4, 4, 55, '1', '2020-09-23 13:15:09', '2020-09-23 13:15:09');
INSERT INTO `motherboards` VALUES (31, '41D1E7A110-04103', 'WID48W00', 1150, 4, 4, 28, '1', '2020-09-23 14:31:59', '2020-09-23 14:31:59');
INSERT INTO `motherboards` VALUES (32, 'H3AV1300353', 'GAH170MD3HGSM', 1151, 9, 2, 26, '1', '2020-09-23 15:10:35', '2020-09-23 15:10:35');
INSERT INTO `motherboards` VALUES (33, 'AAC89703402', 'N/S', 775, 21, 2, 25, '1', '2020-09-23 15:46:04', '2020-09-23 15:46:04');
INSERT INTO `motherboards` VALUES (34, '0297003857MB0C20', 'P8H61MLX+', 1150, 2, 3, 27, '1', '2020-09-23 15:57:02', '2020-09-23 15:57:02');
INSERT INTO `motherboards` VALUES (35, 'E7A11004068', 'ST1000DM003', 1150, 4, 4, 35, '1', '2020-09-23 16:06:40', '2020-09-23 16:06:40');
INSERT INTO `motherboards` VALUES (36, '21D1H3AU13003337', 'GA-H170M-D3H-GSM', 1155, 4, 4, 56, '1', '2020-09-24 11:48:49', '2020-09-24 11:48:49');
INSERT INTO `motherboards` VALUES (37, '15R60011000', 'G41T-M7', 775, 9, 1, 57, '1', '2020-09-24 12:05:36', '2020-09-24 12:05:36');
INSERT INTO `motherboards` VALUES (38, 'MBVAM0900114800081EK03', 'N15235', 775, 9, 1, 58, '1', '2020-09-24 12:07:20', '2020-09-24 12:07:20');
INSERT INTO `motherboards` VALUES (39, '142440012430', 'Z97-HD3', 1150, 4, 3, 59, '1', '2020-09-24 12:43:52', '2020-09-24 12:43:52');
INSERT INTO `motherboards` VALUES (40, '143340011951', 'Z97-HD3', 1150, 4, 3, 60, '1', '2020-09-24 13:19:59', '2020-09-24 13:19:59');
INSERT INTO `motherboards` VALUES (41, '1611566932', 'H97M-D3H', 1150, 4, 3, 61, '1', '2020-09-24 14:19:11', '2020-09-24 14:19:11');
INSERT INTO `motherboards` VALUES (42, '4IEIE4A370-03317', '6A-797-HD3', 1155, 4, 4, 50, '1', '2020-09-25 13:09:32', '2020-09-25 13:09:32');
INSERT INTO `motherboards` VALUES (43, 'S/N', 'IPMSB-VH11', 775, 21, 2, 49, '1', '2020-09-25 13:35:09', '2020-09-25 13:35:09');
INSERT INTO `motherboards` VALUES (44, 'V011V114800449', 'N15235', 775, 15, 1, 63, '1', '2020-09-25 13:40:25', '2020-09-25 13:40:25');
INSERT INTO `motherboards` VALUES (45, 'MBVAM090011480008FIK03', 'D01V114800096', 775, 15, 2, 62, '1', '2020-09-25 13:52:23', '2020-09-25 13:52:23');
INSERT INTO `motherboards` VALUES (46, '1078022856AB', '6417M7', 1150, 62, 4, 48, '1', '2020-09-25 14:48:29', '2020-09-25 14:48:29');
INSERT INTO `motherboards` VALUES (47, 'R2911D5V', 'H57H-AD', 1155, 15, 2, 64, '1', '2020-09-25 15:40:26', '2020-09-25 15:46:51');
INSERT INTO `motherboards` VALUES (48, '2AF9A25802950', 'GA-A97MD3H', 1150, 4, 4, 46, '1', '2020-09-28 13:11:51', '2020-09-28 13:11:51');
INSERT INTO `motherboards` VALUES (49, 'CN0016066986131Q372D', 'OPTIPLEX GX-260', 775, 3, 1, 65, '1', '2020-09-29 13:04:25', '2020-09-29 13:04:25');
INSERT INTO `motherboards` VALUES (50, '4/D/E7A110-04335', '6A799-HD3', 1150, 9, 4, 44, '1', '2020-09-29 14:17:15', '2020-09-29 14:17:15');
INSERT INTO `motherboards` VALUES (51, 'U01U114800084', 'MBVAM090011480008DEK03', 1150, 15, 1, 43, '1', '2020-09-29 15:19:14', '2020-09-29 15:19:14');
INSERT INTO `motherboards` VALUES (52, 'SN/', 'GA-797', 1150, 4, 4, 42, '1', '2020-09-30 13:01:12', '2020-09-30 13:01:12');
INSERT INTO `motherboards` VALUES (53, '41E1E4A37003334', 'GA-797-AD3', 1150, 4, 4, 66, '1', '2020-09-30 14:14:03', '2020-09-30 14:14:03');
INSERT INTO `motherboards` VALUES (54, 'C03FD5BAD772', 'B85H3-AD2', 1150, 15, 4, 67, '1', '2020-09-30 15:06:44', '2020-09-30 15:06:44');
INSERT INTO `motherboards` VALUES (55, 'SN', 'GH-Z97-HD3', 1150, 4, 4, 68, '1', '2020-10-01 12:05:26', '2020-10-01 12:05:26');
INSERT INTO `motherboards` VALUES (56, '1078D22898D1', 'G41T-M7', 775, 62, 1, 69, '1', '2020-10-01 12:26:43', '2020-10-01 12:26:43');
INSERT INTO `motherboards` VALUES (57, '496703-01342-MB0Z20-C14', 'H310M-E R2.0', 1151, 2, 7, 70, '1', '2020-10-02 16:10:35', '2020-10-02 16:10:35');
INSERT INTO `motherboards` VALUES (58, '41D1E7A110-03021', '6A-797-HD3', 1155, 4, 4, 71, '1', '2020-11-10 14:17:52', '2020-11-10 14:17:52');
INSERT INTO `motherboards` VALUES (59, '143440029469', 'Z97-HD3', 1150, 4, 2, 72, '1', '2020-11-10 14:36:37', '2020-11-10 14:36:37');
INSERT INTO `motherboards` VALUES (60, 'ESA08900786', 'Z97HD3', 1150, 4, 4, 73, '1', '2020-11-10 15:40:50', '2020-11-10 15:40:50');
INSERT INTO `motherboards` VALUES (61, '1434A0029382', 'Z97-HD3', 1150, 4, 2, 75, '1', '2020-11-10 18:27:26', '2020-11-10 18:27:26');
INSERT INTO `motherboards` VALUES (62, '1078D228983B', '641-M7', 775, 62, 1, 74, '1', '2020-11-10 18:43:32', '2020-11-10 18:43:32');
INSERT INTO `motherboards` VALUES (63, '4DE7A11004327', 'Z97-HD3', 1155, 4, 4, 76, '1', '2020-11-11 13:15:19', '2020-11-11 13:15:19');
INSERT INTO `motherboards` VALUES (64, '4/E/ESA089-02878', 'GA-797-HD3', 1155, 4, 4, 77, '1', '2020-11-11 13:24:54', '2020-11-11 13:24:54');
INSERT INTO `motherboards` VALUES (65, 'CN-0M5DCD7016324702R1-A00', 'OPTIPLEX 390', 1155, 3, 2, 78, '1', '2020-11-11 13:33:42', '2020-11-11 13:33:42');
INSERT INTO `motherboards` VALUES (66, 'CN0M5DCD7016324506HT-A00', '0M5DCD', 1150, 3, 2, 79, '1', '2020-11-11 13:36:11', '2020-11-11 13:36:11');
INSERT INTO `motherboards` VALUES (67, 'MPBF11N0200-0W', 'NIS230', 1155, 66, 4, 80, '1', '2020-11-11 13:48:26', '2020-11-11 13:48:26');
INSERT INTO `motherboards` VALUES (68, '142440015531', 'GA-Z97-HD3', 1155, 4, 4, 81, '1', '2020-11-11 14:01:17', '2020-11-11 14:01:17');
INSERT INTO `motherboards` VALUES (69, '1078D22897C3', 'G41T-M7', 775, 9, 1, 83, '1', '2020-11-11 14:15:55', '2020-11-11 14:15:55');
INSERT INTO `motherboards` VALUES (70, '143340011959', 'Z97HD3', 1150, 4, 4, 82, '1', '2020-11-11 14:15:57', '2020-11-13 10:08:52');
INSERT INTO `motherboards` VALUES (71, '4/D/E7A110-02074', 'GA-797-HD3', 1155, 4, 4, 84, '1', '2020-11-11 14:16:04', '2020-11-13 10:06:45');
INSERT INTO `motherboards` VALUES (72, '24702X7A00', 'MI-H61R', 1150, 3, 2, 85, '1', '2020-11-11 14:30:23', '2020-11-11 14:30:23');
INSERT INTO `motherboards` VALUES (73, 'U01U114800910', 'NI5235', 775, 15, 1, 86, '1', '2020-11-11 14:43:07', '2020-11-11 14:43:07');
INSERT INTO `motherboards` VALUES (74, 'A816511919', 'VERITON', 775, 15, 1, 88, '1', '2020-11-11 15:03:08', '2020-11-11 15:03:08');
INSERT INTO `motherboards` VALUES (75, 'MPBF11N0200-OU', 'H61M-XV', 1155, 69, 4, 87, '1', '2020-11-11 15:12:37', '2020-11-11 15:13:30');
INSERT INTO `motherboards` VALUES (76, '14240012540', 'Z97-HD3', 1150, 4, 2, 90, '1', '2020-11-11 16:01:45', '2020-11-11 16:01:45');
INSERT INTO `motherboards` VALUES (77, 'CO3FD5B5EB50', 'B85H3AD2', 1151, 15, 4, 89, '1', '2020-11-11 16:12:22', '2020-11-11 16:12:22');
INSERT INTO `motherboards` VALUES (78, 'C03FD5BB9C525', 'B85H3-AM', 1151, 15, 4, 92, '1', '2020-11-11 16:49:47', '2020-11-11 16:49:47');
INSERT INTO `motherboards` VALUES (79, '4/D/E7A110-01058', 'Z97-HD3', 1150, 4, 4, 94, '1', '2020-11-11 19:06:40', '2020-11-11 19:06:40');
INSERT INTO `motherboards` VALUES (80, '85SB20F76085525746V13M5', 'N1996', 1150, 13, 3, 91, '1', '2020-11-11 19:14:18', '2020-11-11 19:14:18');
INSERT INTO `motherboards` VALUES (81, '4/D/E7A110-04965', 'Z97-HD3', 1155, 4, 4, 95, '1', '2020-11-12 09:43:57', '2020-11-12 09:43:57');
INSERT INTO `motherboards` VALUES (82, 'V01V114800865', 'L15235', 775, 15, 1, 96, '1', '2020-11-12 09:59:48', '2020-11-12 09:59:48');
INSERT INTO `motherboards` VALUES (83, 'BTWV2120062F', 'DG41WV', 775, 9, 1, 97, '1', '2020-11-12 10:36:53', '2020-11-12 10:36:53');
INSERT INTO `motherboards` VALUES (84, '1141150065938', 'H97M-D3H', 1150, 4, 2, 99, '1', '2020-11-12 10:55:47', '2020-11-12 10:55:47');
INSERT INTO `motherboards` VALUES (85, '143440029354', 'Z97-HD3', 1150, 4, 4, 100, '1', '2020-11-12 14:07:30', '2020-11-12 14:07:30');
INSERT INTO `motherboards` VALUES (86, 'DBVHH11002432009EA9100', 'B85H5-AM', 1150, 15, 4, 101, '1', '2020-11-12 15:38:48', '2020-11-12 15:38:48');
INSERT INTO `motherboards` VALUES (87, '172450129269', 'ST500DM002', 1155, 4, 4, 102, '1', '2020-11-13 08:11:23', '2020-11-13 08:11:23');
INSERT INTO `motherboards` VALUES (88, '151150065117', 'GA-H97M-D3H', 1150, 4, 4, 103, '1', '2020-11-13 08:35:57', '2020-11-13 08:35:57');
INSERT INTO `motherboards` VALUES (89, 'V01U114800352', 'MBVAM09001148000RBEK03', 1155, 15, 2, 104, '1', '2020-11-13 08:39:14', '2020-11-13 08:39:14');
INSERT INTO `motherboards` VALUES (90, '029070-05620-MB0C20-B06', 'P8HG1-MLX PLUS', 1155, 2, 2, 105, '1', '2020-11-13 08:58:37', '2020-11-13 08:58:37');
INSERT INTO `motherboards` VALUES (91, 'PERVNF41U8G2CN', '250 G3', 1155, 73, 2, 98, '1', '2020-11-13 09:15:40', '2020-11-13 09:17:15');
INSERT INTO `motherboards` VALUES (92, 'CN0M5DCD70163247004YA00', 'MIH61R10097-1483EQ011', 1156, 3, 8, 106, '1', '2020-11-13 09:27:54', '2020-11-13 09:32:10');
INSERT INTO `motherboards` VALUES (93, '1434440029470', 'Z97-HD3', 1150, 4, 4, 107, '1', '2020-11-13 09:44:46', '2020-11-13 09:44:46');
INSERT INTO `motherboards` VALUES (94, '4/E/E7A110-03274', 'Z97-HDD3', 1150, 4, 4, 108, '1', '2020-11-13 09:55:29', '2020-11-13 09:55:29');
INSERT INTO `motherboards` VALUES (95, '143440029130', 'Z97-HD3', 1150, 4, 2, 109, '1', '2020-11-13 10:22:45', '2020-11-13 10:22:45');
INSERT INTO `motherboards` VALUES (96, '143440029355', 'Z97-HD3', 1150, 11, 4, 110, '1', '2020-11-13 10:28:58', '2020-11-13 10:28:58');
INSERT INTO `motherboards` VALUES (97, 'CN0CU40973604875013V', 'G33M02', 750, 3, 1, 111, '1', '2020-11-13 10:37:46', '2020-11-13 10:37:46');
INSERT INTO `motherboards` VALUES (98, '182860011562', 'B360', 1151, 9, 5, 112, '1', '2020-11-13 10:44:27', '2020-11-13 10:44:27');
INSERT INTO `motherboards` VALUES (99, 'H3AU1300915', 'GA-H170M-D3H-GSM', 1151, 4, 4, 93, '1', '2020-11-13 10:48:48', '2020-11-13 10:48:48');
INSERT INTO `motherboards` VALUES (100, '4/E/E4A370-00108', 'Z97-HD3', 1150, 4, 4, 113, '1', '2020-11-13 11:02:36', '2020-11-13 11:02:36');
INSERT INTO `motherboards` VALUES (101, '1511608656', 'GA-H97M-D2H', 1150, 4, 4, 114, '1', '2020-11-13 11:06:22', '2020-11-13 11:06:22');
INSERT INTO `motherboards` VALUES (102, '41D1E7A110-04647', 'GA-797-HD3', 1155, 4, 4, 115, '1', '2020-11-13 11:11:43', '2020-11-13 11:11:43');
INSERT INTO `motherboards` VALUES (103, '142440012505', 'GA 797-HD3', 1155, 4, 8, 116, '1', '2020-11-13 11:20:25', '2020-11-13 11:20:25');
INSERT INTO `motherboards` VALUES (104, 'MBV7605007034013113EE00', 'MG43M', 775, 15, 1, 117, '1', '2020-11-13 11:29:07', '2020-11-13 11:29:07');
INSERT INTO `motherboards` VALUES (105, '1434440029335', 'GA-797-HD3', 1150, 4, 8, 119, '1', '2020-11-13 11:35:18', '2020-11-13 11:35:18');
INSERT INTO `motherboards` VALUES (106, '142440012527', 'Z97-HD3', 1151, 4, 4, 118, '1', '2020-11-13 11:38:21', '2020-11-13 11:38:21');
INSERT INTO `motherboards` VALUES (107, '41D1E7A110-04276', 'GA-Z97-HD3', 1155, 4, 4, 120, '1', '2020-11-13 11:39:21', '2020-11-13 11:39:21');
INSERT INTO `motherboards` VALUES (108, 'CNOM5DCD7016323N094XA', 'OPTIPLEX 390', 1155, 3, 2, 121, '1', '2020-11-13 11:49:29', '2020-11-13 11:49:29');
INSERT INTO `motherboards` VALUES (109, '151150065124', 'H97M-D3H', 1150, 4, 4, 122, '1', '2020-11-13 11:55:16', '2020-11-13 11:57:11');
INSERT INTO `motherboards` VALUES (110, 'V01V14800036', '641DD1', 775, 15, 1, 124, '1', '2020-11-13 12:05:18', '2020-11-13 12:05:18');
INSERT INTO `motherboards` VALUES (111, 'MBVAMO9001148003BAEK03', 'N15235', 775, 15, 1, 51, '1', '2020-11-13 12:15:11', '2020-11-13 12:15:11');
INSERT INTO `motherboards` VALUES (112, '4LELE517089 04025', 'GA-Z97-HD3', 1820, 4, 8, 123, '1', '2020-11-13 12:58:51', '2020-11-13 12:58:51');
INSERT INTO `motherboards` VALUES (113, 'A1D1E7A110-04162', 'GA-Z97-HD3', 1155, 4, 4, 126, '1', '2020-11-13 13:06:01', '2020-11-13 13:06:01');
INSERT INTO `motherboards` VALUES (114, '41E1E5A08900780', 'GA-Z97-HD3', 1840, 4, 8, 127, '1', '2020-11-13 13:17:42', '2020-11-13 13:17:42');
INSERT INTO `motherboards` VALUES (115, '41E1E4A370-03323', 'GA-Z97-HD3', 1150, 4, 4, 128, '1', '2020-11-13 13:34:59', '2020-11-13 13:34:59');
INSERT INTO `motherboards` VALUES (116, '91E1E5A08902281', 'GA-Z97-HD3', 1840, 4, 8, 129, '1', '2020-11-13 13:56:19', '2020-11-13 13:56:19');
INSERT INTO `motherboards` VALUES (117, '41D1EB7N001829', 'GA-Z97-HD3', 4460, 4, 3, 130, '1', '2020-11-13 14:14:15', '2020-11-13 14:14:15');
INSERT INTO `motherboards` VALUES (118, '143440029463', 'Z97-HD3', 1150, 4, 4, 131, '1', '2020-11-13 14:19:32', '2020-11-13 14:19:32');
INSERT INTO `motherboards` VALUES (119, '021013302635MB00700', 'P5G41T-MLXPLUS', 775, 2, 1, 125, '1', '2020-11-13 14:19:37', '2020-11-13 14:19:37');
INSERT INTO `motherboards` VALUES (120, 'UH81318040950', 'H61MXV', 775, 66, 1, 132, '1', '2020-11-13 14:29:32', '2020-11-13 14:29:32');
INSERT INTO `motherboards` VALUES (121, '142440012465', 'Z97-HD3', 1150, 4, 4, 134, '1', '2020-11-13 14:42:12', '2020-11-13 14:42:12');
INSERT INTO `motherboards` VALUES (122, '01B0268-03823-MB0070-B02', 'P5G41T-M-LX', 775, 2, 5, 133, '1', '2020-11-13 14:49:35', '2020-11-13 14:49:35');
INSERT INTO `motherboards` VALUES (123, '8SSB20F76085S2SZ455V1504', 'SM', 1150, 21, 8, 135, '1', '2020-11-13 14:52:00', '2020-11-13 14:52:00');
INSERT INTO `motherboards` VALUES (124, 'CN0CU4097360483F042N', 'G33M02', 775, 3, 1, 137, '1', '2020-11-13 15:11:48', '2020-11-13 15:11:48');
INSERT INTO `motherboards` VALUES (125, '02907002821MB0C20B050702', 'P8H61', 1150, 2, 4, 138, '1', '2020-11-16 08:38:33', '2020-11-16 08:38:33');
INSERT INTO `motherboards` VALUES (126, '143340011954', 'Z97-HD3', 1150, 4, 4, 136, '1', '2020-11-16 09:12:27', '2020-11-16 09:12:27');
INSERT INTO `motherboards` VALUES (127, '143440029122', 'Z97-HD3', 1150, 4, 4, 139, '1', '2020-11-16 09:19:25', '2020-11-16 09:19:25');
INSERT INTO `motherboards` VALUES (128, 'OJC474-70821-639-OODF', 'DV051', 775, 3, 9, 140, '1', '2020-11-16 09:45:50', '2020-11-16 09:46:14');
INSERT INTO `motherboards` VALUES (129, 'C03FD5BAAC36', 'B85H5-AD2', 1155, 15, 4, 141, '1', '2020-11-16 10:05:57', '2020-11-16 10:05:57');
INSERT INTO `motherboards` VALUES (130, 'SN', '64IT-M7', 775, 62, 3, 142, '1', '2020-11-16 10:22:23', '2020-11-16 10:22:23');
INSERT INTO `motherboards` VALUES (131, '1078A228ACD8', '6417M7', 775, 21, 8, 53, '1', '2020-11-16 11:41:01', '2020-11-16 11:41:01');
INSERT INTO `motherboards` VALUES (132, '1433400119557', 'Z97-HD3', 1150, 4, 4, 143, '1', '2020-11-16 11:43:55', '2020-11-16 11:43:55');
INSERT INTO `motherboards` VALUES (133, 'E7A11001109', '6A797HD3', 1150, 4, 4, 151, '1', '2020-11-16 13:55:02', '2020-11-16 13:55:02');
INSERT INTO `motherboards` VALUES (134, 'CNOM5DCD7016324702TMAOO', 'MS0520', 2120, 3, 3, 152, '1', '2020-11-16 14:29:29', '2020-11-16 14:29:29');
INSERT INTO `motherboards` VALUES (135, '04SDCD-70163-23N-088HA00', 'M1H61R', 1155, 3, 3, 153, '1', '2020-11-18 08:45:46', '2020-11-18 08:45:46');
INSERT INTO `motherboards` VALUES (136, '143740028909', '297-HD3', 1150, 4, 3, 154, '1', '2020-11-18 08:56:28', '2020-11-18 08:56:28');
INSERT INTO `motherboards` VALUES (137, '143440029332', 'Z97HD3', 1150, 4, 8, 155, '1', '2020-11-18 09:12:28', '2020-11-18 09:12:28');
INSERT INTO `motherboards` VALUES (138, '142440012447', 'Z97-HD3', 1150, 4, 8, 156, '1', '2020-11-18 09:37:18', '2020-11-18 09:37:18');
INSERT INTO `motherboards` VALUES (139, 'E4A37000355', 'GAZ97-HDS', 1150, 4, 1, 150, '1', '2020-11-18 15:11:34', '2020-11-18 15:11:34');
INSERT INTO `motherboards` VALUES (140, 'E7A11003427', '6AZ97HD3', 1150, 4, 4, 149, '1', '2020-11-18 15:24:30', '2020-11-18 15:24:30');
INSERT INTO `motherboards` VALUES (141, '142440012470', 'Z97-HD3', 1150, 4, 4, 157, '1', '2020-11-19 07:59:20', '2020-11-19 07:59:20');
INSERT INTO `motherboards` VALUES (142, '143340011955', 'Z97-HD3', 1150, 4, 4, 158, '1', '2020-11-19 08:58:03', '2020-11-19 08:58:03');
INSERT INTO `motherboards` VALUES (143, '143340011960', 'Z97-HD3', 1150, 4, 4, 159, '1', '2020-11-19 11:01:31', '2020-11-19 11:01:31');
INSERT INTO `motherboards` VALUES (144, 'A816514215', 'VERITON', 775, 15, 9, 160, '1', '2020-11-19 15:02:05', '2020-11-19 15:02:05');
INSERT INTO `motherboards` VALUES (145, 'U01U114800023', 'G41D01', 775, 15, 1, 161, '1', '2020-11-19 15:39:04', '2020-11-19 15:39:04');
INSERT INTO `motherboards` VALUES (146, '142440012425', 'Z97-HD3', 1150, 4, 4, 162, '1', '2020-11-19 16:07:12', '2020-11-19 16:07:12');
INSERT INTO `motherboards` VALUES (147, '143740028904', 'Z97-HD3', 1150, 4, 4, 163, '1', '2020-11-20 08:19:28', '2020-11-20 08:19:28');
INSERT INTO `motherboards` VALUES (148, 'CN-02X378-13740-2CS-03UF', 'OPTIPLEX GX260', 775, 3, 1, 164, '1', '2020-11-20 08:35:42', '2020-11-20 08:35:42');
INSERT INTO `motherboards` VALUES (149, 'F1A25802436', '6AH97MDSH', 1150, 4, 7, 148, '1', '2020-11-20 08:41:55', '2020-11-20 08:41:55');
INSERT INTO `motherboards` VALUES (150, '143440029121', 'Z97-HD3', 1150, 4, 4, 165, '1', '2020-11-20 09:10:54', '2020-11-20 09:10:54');
INSERT INTO `motherboards` VALUES (151, '448A5BC1B371', '1H81M', 1150, 13, 3, 147, '1', '2020-11-20 09:46:30', '2020-11-20 09:46:30');
INSERT INTO `motherboards` VALUES (152, '026385', 'PS641T-M', 775, 2, 1, 166, '1', '2020-11-20 10:16:08', '2020-11-20 10:16:08');
INSERT INTO `motherboards` VALUES (153, 'N95235', 'G41D01-10-6K5H', 1150, 15, 4, 146, '1', '2020-11-20 10:55:07', '2020-11-20 10:55:07');
INSERT INTO `motherboards` VALUES (154, '1078D2348EA7', '641D-M7', 775, 62, 1, 144, '1', '2020-11-20 11:34:16', '2020-11-20 11:34:16');
INSERT INTO `motherboards` VALUES (155, '142440012597', 'Z97-HD3', 1150, 4, 4, 167, '1', '2020-11-20 11:35:25', '2020-11-20 11:35:25');
INSERT INTO `motherboards` VALUES (156, '0M5DCDCN-0M5DCD-70163-23N-00FJ-A00', 'MIH69R', 1150, 21, 8, 145, '1', '2020-11-20 12:00:35', '2020-11-20 12:00:35');
INSERT INTO `motherboards` VALUES (157, 'C03FD5BAD64A', 'B85H3-AD2', 1150, 15, 4, 168, '1', '2020-11-20 13:38:22', '2020-11-20 13:38:22');
INSERT INTO `motherboards` VALUES (158, '115150065587', 'H97M-D3H', 1155, 4, 4, 169, '1', '2020-11-24 08:29:10', '2020-11-24 08:29:10');
INSERT INTO `motherboards` VALUES (159, '483E0010N', 'MIH61R10097-1483EQ011', 775, 3, 1, 170, '1', '2020-11-24 08:42:06', '2020-11-24 08:42:06');
INSERT INTO `motherboards` VALUES (160, 'C03FDJB9BFA8', 'B85H3', 1150, 15, 8, 171, '1', '2020-11-24 13:58:55', '2020-11-24 13:58:55');
INSERT INTO `motherboards` VALUES (161, '107802897A', 'G41T-M7', 1150, 9, 8, 172, '1', '2020-11-24 14:18:24', '2020-11-24 14:18:24');
INSERT INTO `motherboards` VALUES (162, 'A610052804', 'M643M', 775, 21, 8, 173, '1', '2020-11-24 14:32:01', '2020-11-24 14:32:01');
INSERT INTO `motherboards` VALUES (163, 'VAM09001148', 'VERITON M275', 775, 15, 8, 174, '1', '2020-11-24 14:54:05', '2020-11-24 14:54:05');
INSERT INTO `motherboards` VALUES (164, '42440012528', 'Z97-HD3', 1150, 4, 4, 175, '1', '2020-11-24 15:05:35', '2020-11-24 15:05:35');
INSERT INTO `motherboards` VALUES (165, '1511150065854', 'H97M', 1150, 4, 8, 176, '1', '2020-11-30 08:17:06', '2020-11-30 08:17:06');
INSERT INTO `motherboards` VALUES (166, '142440012448', 'Z97-HD3', 1150, 4, 8, 177, '1', '2020-11-30 15:15:46', '2020-11-30 15:15:46');

-- ----------------------------
-- Table structure for nm_averias
-- ----------------------------
DROP TABLE IF EXISTS `nm_averias`;
CREATE TABLE `nm_averias`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpto` int(255) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_printers_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_averias
-- ----------------------------
INSERT INTO `nm_averias` VALUES (4, 'Teclado defectuoso', 1, '2020-10-29 19:36:06', '2020-11-11 12:32:00');
INSERT INTO `nm_averias` VALUES (5, 'Mouse defectuoso', 1, '2020-11-11 12:32:07', '2020-11-11 12:32:07');
INSERT INTO `nm_averias` VALUES (6, 'Impresora defectuosa', 1, '2020-11-11 12:32:15', '2020-11-11 12:32:15');
INSERT INTO `nm_averias` VALUES (7, 'Monitor defectuoso', 1, '2020-11-11 12:34:09', '2020-11-11 12:34:09');
INSERT INTO `nm_averias` VALUES (8, 'UPS defectuosa', 1, '2020-11-11 12:34:16', '2020-11-11 12:34:16');
INSERT INTO `nm_averias` VALUES (9, 'Sin servicio de red', 1, '2020-11-11 12:34:33', '2020-11-11 12:34:33');
INSERT INTO `nm_averias` VALUES (10, 'PC defectuosa', 1, '2020-11-11 12:36:49', '2020-11-11 12:36:49');
INSERT INTO `nm_averias` VALUES (11, 'PC sin conexión', 1, '2020-11-11 12:37:00', '2020-11-11 12:37:00');
INSERT INTO `nm_averias` VALUES (12, 'PC para baja (obsoleta)', 1, '2020-11-13 10:45:05', '2020-11-13 10:45:05');
INSERT INTO `nm_averias` VALUES (13, 'Otro tipo', 1, '2020-11-13 10:55:41', '2020-11-13 10:55:41');
INSERT INTO `nm_averias` VALUES (14, 'Impresora para baja', 1, '2020-11-13 11:00:06', '2020-11-13 11:00:06');
INSERT INTO `nm_averias` VALUES (15, 'Monitor para baja', 1, '2020-11-13 11:00:26', '2020-11-13 11:00:26');
INSERT INTO `nm_averias` VALUES (16, 'Mouse para baja', 1, '2020-11-13 11:00:37', '2020-11-13 11:00:37');
INSERT INTO `nm_averias` VALUES (17, 'Teclado para baja', 1, '2020-11-13 11:00:54', '2020-11-13 11:00:54');
INSERT INTO `nm_averias` VALUES (18, 'UPS para baja', 1, '2020-11-13 11:01:06', '2020-11-13 11:01:06');
INSERT INTO `nm_averias` VALUES (19, 'SO defectuoso', 1, '2020-11-19 09:08:47', '2020-11-19 09:08:47');
INSERT INTO `nm_averias` VALUES (20, 'Registros de seguridad llenos', 1, '2021-02-09 11:45:18', '2021-02-09 11:45:18');
INSERT INTO `nm_averias` VALUES (21, 'Hora del sistema', 1, '2021-02-09 11:47:11', '2021-02-09 11:47:11');
INSERT INTO `nm_averias` VALUES (22, 'Software defectuoso', 1, '2021-02-19 10:08:00', '2021-02-19 10:08:00');
INSERT INTO `nm_averias` VALUES (23, 'SO Obsoleto', 1, '2021-04-16 11:45:21', '2021-04-16 11:45:21');

-- ----------------------------
-- Table structure for nm_capacidad_hdds
-- ----------------------------
DROP TABLE IF EXISTS `nm_capacidad_hdds`;
CREATE TABLE `nm_capacidad_hdds`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_capacidad_hdds_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_capacidad_hdds
-- ----------------------------
INSERT INTO `nm_capacidad_hdds` VALUES (1, '500 GB', '2020-09-01 16:12:21', '2020-09-01 16:12:30');
INSERT INTO `nm_capacidad_hdds` VALUES (2, '1 TB', '2020-09-01 16:12:36', '2020-09-01 16:12:36');
INSERT INTO `nm_capacidad_hdds` VALUES (3, '750 GB', '2020-09-01 16:12:47', '2020-09-01 16:12:47');
INSERT INTO `nm_capacidad_hdds` VALUES (4, '320 GB', '2020-09-04 15:34:06', '2020-09-04 15:34:13');
INSERT INTO `nm_capacidad_hdds` VALUES (5, '800 GB', '2020-09-08 16:01:28', '2020-09-24 11:33:48');
INSERT INTO `nm_capacidad_hdds` VALUES (6, '2 TB', '2020-09-24 11:33:40', '2020-09-24 11:33:40');
INSERT INTO `nm_capacidad_hdds` VALUES (7, '80 GB', '2020-09-29 13:07:08', '2020-09-29 13:07:08');
INSERT INTO `nm_capacidad_hdds` VALUES (8, '160 GB', '2020-11-11 17:22:06', '2020-11-11 17:22:06');
INSERT INTO `nm_capacidad_hdds` VALUES (9, '500GB', '2020-11-16 10:25:59', '2020-11-16 10:25:59');

-- ----------------------------
-- Table structure for nm_conectors
-- ----------------------------
DROP TABLE IF EXISTS `nm_conectors`;
CREATE TABLE `nm_conectors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_conectors_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_conectors
-- ----------------------------
INSERT INTO `nm_conectors` VALUES (1, 'USB', '2020-09-01 16:46:56', '2020-09-01 16:47:02');
INSERT INTO `nm_conectors` VALUES (2, 'PS2', '2020-09-01 16:51:14', '2020-09-01 16:51:14');

-- ----------------------------
-- Table structure for nm_departamentos
-- ----------------------------
DROP TABLE IF EXISTS `nm_departamentos`;
CREATE TABLE `nm_departamentos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_departamentos_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_departamentos
-- ----------------------------
INSERT INTO `nm_departamentos` VALUES (2, 'INFORMATICA', '2020-09-01 16:14:51', '2020-09-01 16:51:58');
INSERT INTO `nm_departamentos` VALUES (3, 'COMUNICACIONES', '2020-09-01 16:14:57', '2020-09-01 16:51:55');
INSERT INTO `nm_departamentos` VALUES (4, 'SUCURSAL CANDIDO', '2020-09-03 16:03:11', '2020-09-03 16:03:11');
INSERT INTO `nm_departamentos` VALUES (5, 'SUCURSAL HAITI', '2020-09-03 16:03:22', '2020-09-03 16:03:22');
INSERT INTO `nm_departamentos` VALUES (6, 'SUCURSAL ALTAGRACIA', '2020-09-03 16:03:33', '2020-09-03 16:03:33');
INSERT INTO `nm_departamentos` VALUES (7, 'SUCURSAL SAN MIGUEL', '2020-09-03 16:04:12', '2020-09-03 16:04:12');
INSERT INTO `nm_departamentos` VALUES (8, 'SUCURSAL CASCORRO', '2020-09-03 16:04:28', '2020-09-03 16:04:28');
INSERT INTO `nm_departamentos` VALUES (9, 'SUCURSAL LUGAREñO', '2020-09-04 15:50:16', '2020-09-04 15:50:16');
INSERT INTO `nm_departamentos` VALUES (10, 'SUCURSAL LA JAGUA', '2020-09-04 16:12:14', '2020-09-04 16:12:14');
INSERT INTO `nm_departamentos` VALUES (11, 'SUCURSAL GUAIMARO', '2020-09-04 18:00:46', '2020-09-04 18:00:46');
INSERT INTO `nm_departamentos` VALUES (12, 'SUCURSAL CAMALOTE', '2020-09-07 12:00:16', '2020-09-07 12:00:16');
INSERT INTO `nm_departamentos` VALUES (13, 'COMERCIAL', '2020-09-07 14:25:45', '2020-09-07 14:25:45');
INSERT INTO `nm_departamentos` VALUES (14, 'OPERACIONES', '2020-09-07 14:25:52', '2020-09-07 14:25:52');
INSERT INTO `nm_departamentos` VALUES (15, 'ECONOMIA', '2020-09-07 14:26:06', '2020-09-07 14:26:06');
INSERT INTO `nm_departamentos` VALUES (16, 'REC HUMANOS', '2020-09-08 12:59:30', '2020-09-08 12:59:30');
INSERT INTO `nm_departamentos` VALUES (17, 'DIRECCION', '2020-09-08 13:36:34', '2020-09-08 13:36:34');
INSERT INTO `nm_departamentos` VALUES (18, 'ATE POBLACION', '2020-09-08 13:42:52', '2020-09-08 13:42:52');
INSERT INTO `nm_departamentos` VALUES (19, 'VENTANILLA', '2020-09-08 13:47:58', '2020-09-08 13:47:58');
INSERT INTO `nm_departamentos` VALUES (20, 'OBE CESPEDES', '2020-11-11 12:39:02', '2020-11-11 12:39:02');
INSERT INTO `nm_departamentos` VALUES (21, 'OBE MINAS', '2020-11-11 12:39:15', '2020-11-11 12:39:15');
INSERT INTO `nm_departamentos` VALUES (22, 'OBE NAJASA', '2020-11-11 12:39:23', '2020-11-11 12:39:23');
INSERT INTO `nm_departamentos` VALUES (23, 'ATM', '2020-11-11 12:39:31', '2020-11-11 12:39:31');
INSERT INTO `nm_departamentos` VALUES (24, 'OBE GUAIMARO', '2020-11-11 12:39:40', '2020-11-11 12:39:40');
INSERT INTO `nm_departamentos` VALUES (25, 'OBE FLORIDA', '2020-11-11 12:39:44', '2020-11-11 12:39:44');
INSERT INTO `nm_departamentos` VALUES (26, 'OBE VERTIENTES', '2020-11-11 12:39:55', '2020-11-11 12:39:55');
INSERT INTO `nm_departamentos` VALUES (27, 'OBE NUEVITAS', '2020-11-11 12:40:02', '2020-11-11 12:40:02');
INSERT INTO `nm_departamentos` VALUES (28, 'OBE SANTA CRUZ', '2020-11-11 12:40:10', '2020-11-11 12:40:10');
INSERT INTO `nm_departamentos` VALUES (29, 'OBE SANTA LUCIA', '2020-11-11 12:40:17', '2020-11-11 12:40:17');
INSERT INTO `nm_departamentos` VALUES (30, 'OBE SIBANICU', '2020-11-11 12:40:28', '2020-11-11 12:40:28');
INSERT INTO `nm_departamentos` VALUES (31, 'OBE JIMAGUAYU', '2020-11-11 12:40:39', '2020-11-11 12:40:39');
INSERT INTO `nm_departamentos` VALUES (32, 'OBE SOLA', '2020-11-11 12:40:47', '2020-11-11 12:40:47');
INSERT INTO `nm_departamentos` VALUES (33, 'OBE ESMERALDA', '2020-11-11 12:40:55', '2020-11-11 12:40:55');
INSERT INTO `nm_departamentos` VALUES (34, 'OBE CAYO CRUZ', '2020-11-11 12:41:03', '2020-11-11 12:41:03');
INSERT INTO `nm_departamentos` VALUES (35, 'SEGURIDAD DEL TRABAJO', '2020-11-13 15:05:52', '2020-11-13 15:05:52');
INSERT INTO `nm_departamentos` VALUES (36, 'ALMACEN', '2020-11-13 15:29:13', '2020-11-13 15:29:13');
INSERT INTO `nm_departamentos` VALUES (37, 'SUCURSAL FLORIDA', '2020-11-16 16:16:45', '2020-11-16 16:16:45');
INSERT INTO `nm_departamentos` VALUES (38, 'CIAC', '2020-11-17 10:18:35', '2020-11-17 10:18:35');
INSERT INTO `nm_departamentos` VALUES (39, 'ONURE', '2020-11-19 09:11:28', '2020-11-19 09:11:28');
INSERT INTO `nm_departamentos` VALUES (40, 'GENERACION DE EMERGENCIA', '2020-12-22 12:19:00', '2020-12-22 12:19:00');
INSERT INTO `nm_departamentos` VALUES (41, 'FUENTE RENOVABLE DE ENERGIA', '2021-02-01 08:32:25', '2021-02-01 08:32:25');
INSERT INTO `nm_departamentos` VALUES (42, 'SUCURSAL MELLA', '2021-02-09 11:43:54', '2021-02-09 11:43:54');
INSERT INTO `nm_departamentos` VALUES (43, 'TEATRO', '2021-02-23 11:23:46', '2021-02-23 11:23:46');
INSERT INTO `nm_departamentos` VALUES (44, '18888', '2021-02-23 11:23:51', '2021-02-23 11:23:51');
INSERT INTO `nm_departamentos` VALUES (45, 'SALON DE REUNIONES', '2021-03-01 12:01:51', '2021-03-01 12:01:51');
INSERT INTO `nm_departamentos` VALUES (46, 'ORGANIZACION Y SISTEMAS', '2021-03-01 12:53:52', '2021-03-01 12:53:52');
INSERT INTO `nm_departamentos` VALUES (47, 'SALA DE EQUIPOS', '2021-03-01 12:54:39', '2021-03-01 12:54:39');
INSERT INTO `nm_departamentos` VALUES (48, 'TALLER', '2021-03-03 10:56:58', '2021-03-03 10:56:58');
INSERT INTO `nm_departamentos` VALUES (49, 'DESPACHO', '2021-03-03 10:59:00', '2021-03-03 10:59:00');
INSERT INTO `nm_departamentos` VALUES (50, 'UEB CAMAGüEY', '2021-03-03 12:01:58', '2021-03-03 12:01:58');
INSERT INTO `nm_departamentos` VALUES (51, 'RECURSOS HUMANOS', '2021-03-03 12:03:41', '2021-03-03 12:03:41');
INSERT INTO `nm_departamentos` VALUES (52, 'CONSUMIDORES ESTATALES', '2021-03-03 12:05:51', '2021-03-03 12:05:51');
INSERT INTO `nm_departamentos` VALUES (53, 'FACTURACION', '2021-03-09 10:18:37', '2021-03-09 10:18:37');
INSERT INTO `nm_departamentos` VALUES (54, 'DIRECCION TECNICA', '2021-03-09 10:20:02', '2021-03-09 10:20:02');
INSERT INTO `nm_departamentos` VALUES (55, 'INVERSIONES', '2021-04-26 09:13:36', '2021-04-26 09:13:36');

-- ----------------------------
-- Table structure for nm_fabricantes
-- ----------------------------
DROP TABLE IF EXISTS `nm_fabricantes`;
CREATE TABLE `nm_fabricantes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_fabricantes_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_fabricantes
-- ----------------------------
INSERT INTO `nm_fabricantes` VALUES (2, 'ASUS', '2020-09-01 16:10:58', '2020-09-01 16:10:58');
INSERT INTO `nm_fabricantes` VALUES (3, 'DELL', '2020-09-01 16:11:03', '2020-09-01 16:11:03');
INSERT INTO `nm_fabricantes` VALUES (4, 'GIGABYTE', '2020-09-01 16:11:19', '2020-09-01 16:11:19');
INSERT INTO `nm_fabricantes` VALUES (5, 'LG', '2020-09-01 16:11:32', '2020-09-01 16:11:32');
INSERT INTO `nm_fabricantes` VALUES (6, 'PEGATRON', '2020-09-01 16:11:53', '2020-09-01 16:11:53');
INSERT INTO `nm_fabricantes` VALUES (7, 'HP', '2020-09-01 16:11:57', '2020-09-01 16:11:57');
INSERT INTO `nm_fabricantes` VALUES (8, 'LOGITECH', '2020-09-01 16:12:09', '2020-09-01 16:12:09');
INSERT INTO `nm_fabricantes` VALUES (9, 'INTEL', '2020-09-03 16:13:36', '2020-09-03 16:13:36');
INSERT INTO `nm_fabricantes` VALUES (10, 'THERMAL MASTER', '2020-09-03 16:15:14', '2020-09-03 16:15:14');
INSERT INTO `nm_fabricantes` VALUES (11, 'SEAGATE', '2020-09-03 16:48:18', '2020-09-03 16:48:18');
INSERT INTO `nm_fabricantes` VALUES (12, 'TRAMSUN', '2020-09-03 16:51:35', '2020-09-03 16:51:35');
INSERT INTO `nm_fabricantes` VALUES (13, 'LENOVO', '2020-09-03 17:02:12', '2020-11-11 19:15:37');
INSERT INTO `nm_fabricantes` VALUES (14, 'THTF', '2020-09-03 17:03:52', '2020-09-03 17:03:52');
INSERT INTO `nm_fabricantes` VALUES (15, 'ACER', '2020-09-03 17:06:17', '2020-09-03 17:06:17');
INSERT INTO `nm_fabricantes` VALUES (16, 'APC', '2020-09-03 18:02:17', '2020-09-03 18:02:17');
INSERT INTO `nm_fabricantes` VALUES (17, 'EPSON', '2020-09-03 18:07:53', '2020-09-03 18:07:53');
INSERT INTO `nm_fabricantes` VALUES (18, 'SOLID GEAR', '2020-09-03 19:51:09', '2020-09-03 19:51:09');
INSERT INTO `nm_fabricantes` VALUES (19, 'KINGSTON', '2020-09-03 19:52:59', '2020-09-03 19:52:59');
INSERT INTO `nm_fabricantes` VALUES (20, 'HANEL', '2020-09-03 19:56:09', '2020-09-03 19:56:09');
INSERT INTO `nm_fabricantes` VALUES (21, '-- SIN FABRICANTE --', '2020-09-03 19:58:18', '2020-09-07 12:10:24');
INSERT INTO `nm_fabricantes` VALUES (22, 'NUMEN', '2020-09-03 20:00:02', '2020-09-03 20:00:02');
INSERT INTO `nm_fabricantes` VALUES (23, 'FSP GROUP INC', '2020-09-04 15:01:19', '2020-09-04 15:37:31');
INSERT INTO `nm_fabricantes` VALUES (24, 'WESTERN DIGITAL', '2020-09-04 15:03:20', '2020-09-04 15:03:20');
INSERT INTO `nm_fabricantes` VALUES (25, 'HYNIX', '2020-09-04 15:05:00', '2020-09-04 15:05:00');
INSERT INTO `nm_fabricantes` VALUES (26, 'HUNTKEY', '2020-09-04 15:30:21', '2020-09-04 15:30:21');
INSERT INTO `nm_fabricantes` VALUES (27, 'UNIFOSA', '2020-09-04 15:36:00', '2020-09-04 15:36:00');
INSERT INTO `nm_fabricantes` VALUES (28, 'HL', '2020-09-04 15:41:31', '2020-09-04 15:41:31');
INSERT INTO `nm_fabricantes` VALUES (29, 'AOC', '2020-09-04 15:43:49', '2020-09-04 15:43:49');
INSERT INTO `nm_fabricantes` VALUES (30, 'HITACHI', '2020-09-04 15:45:19', '2020-09-04 15:45:19');
INSERT INTO `nm_fabricantes` VALUES (31, 'GENIUS', '2020-09-04 15:45:57', '2020-09-04 15:45:57');
INSERT INTO `nm_fabricantes` VALUES (32, 'COOLMAX', '2020-09-04 18:04:22', '2020-09-04 18:04:22');
INSERT INTO `nm_fabricantes` VALUES (33, 'HYPER', '2020-09-04 18:07:12', '2020-09-04 18:07:12');
INSERT INTO `nm_fabricantes` VALUES (34, 'PHLIPS LITE ON', '2020-09-04 18:08:50', '2020-09-04 18:08:50');
INSERT INTO `nm_fabricantes` VALUES (35, 'AOPEN', '2020-09-04 18:12:30', '2020-09-04 18:12:30');
INSERT INTO `nm_fabricantes` VALUES (36, 'IMICRO', '2020-09-04 18:16:14', '2020-09-04 18:16:14');
INSERT INTO `nm_fabricantes` VALUES (37, 'EPOWER', '2020-09-07 11:49:21', '2020-09-07 11:49:21');
INSERT INTO `nm_fabricantes` VALUES (38, 'SAMSUNG', '2020-09-07 11:50:59', '2020-09-07 11:50:59');
INSERT INTO `nm_fabricantes` VALUES (39, 'SKYCOOL', '2020-09-07 11:53:48', '2020-09-07 11:53:48');
INSERT INTO `nm_fabricantes` VALUES (40, 'LITE-ON', '2020-09-07 12:07:27', '2020-09-07 12:07:27');
INSERT INTO `nm_fabricantes` VALUES (41, 'HAIER', '2020-09-07 12:07:51', '2020-09-07 12:07:51');
INSERT INTO `nm_fabricantes` VALUES (42, 'ELPIDE', '2020-09-07 13:07:06', '2020-09-07 13:07:06');
INSERT INTO `nm_fabricantes` VALUES (43, 'CHICONY', '2020-09-07 14:44:25', '2020-09-07 14:44:25');
INSERT INTO `nm_fabricantes` VALUES (44, 'MEMOREX', '2020-09-07 14:49:34', '2020-09-07 14:49:34');
INSERT INTO `nm_fabricantes` VALUES (45, 'TOSHIBA', '2020-09-07 14:53:54', '2020-09-07 14:53:54');
INSERT INTO `nm_fabricantes` VALUES (46, 'TRIPP-LITE', '2020-09-08 15:39:59', '2020-09-08 15:39:59');
INSERT INTO `nm_fabricantes` VALUES (47, 'ACBEL', '2020-09-08 15:59:01', '2020-09-08 15:59:01');
INSERT INTO `nm_fabricantes` VALUES (48, 'SHANDUN', '2020-09-08 16:18:18', '2020-09-08 16:18:18');
INSERT INTO `nm_fabricantes` VALUES (49, 'MAXELL', '2020-09-09 16:29:18', '2020-09-09 16:29:18');
INSERT INTO `nm_fabricantes` VALUES (50, 'KENYA', '2020-09-23 11:38:52', '2020-09-23 11:38:52');
INSERT INTO `nm_fabricantes` VALUES (51, 'SONY', '2020-09-23 15:40:49', '2020-09-23 15:40:49');
INSERT INTO `nm_fabricantes` VALUES (52, 'ADATA', '2020-09-23 15:48:51', '2020-09-23 15:48:51');
INSERT INTO `nm_fabricantes` VALUES (53, 'KEHVATECH', '2020-09-23 15:52:31', '2020-09-23 15:52:31');
INSERT INTO `nm_fabricantes` VALUES (54, 'CANON', '2020-09-23 16:13:43', '2020-09-23 16:13:43');
INSERT INTO `nm_fabricantes` VALUES (55, 'CRUCIAL', '2020-09-24 11:50:45', '2020-09-24 11:50:45');
INSERT INTO `nm_fabricantes` VALUES (56, 'ATEC', '2020-09-24 12:58:36', '2020-09-24 12:58:36');
INSERT INTO `nm_fabricantes` VALUES (57, 'HIPER X', '2020-09-24 13:43:34', '2020-09-24 13:43:34');
INSERT INTO `nm_fabricantes` VALUES (58, 'BLAZAR', '2020-09-25 13:40:46', '2020-09-25 13:40:46');
INSERT INTO `nm_fabricantes` VALUES (59, 'CHC', '2020-09-25 13:48:45', '2020-09-25 13:48:45');
INSERT INTO `nm_fabricantes` VALUES (60, 'DATA STORAGE', '2020-09-25 13:50:35', '2020-09-25 13:50:35');
INSERT INTO `nm_fabricantes` VALUES (61, 'GS', '2020-09-25 14:14:17', '2020-09-25 14:14:17');
INSERT INTO `nm_fabricantes` VALUES (62, 'ECS', '2020-09-25 14:47:51', '2020-09-25 14:47:51');
INSERT INTO `nm_fabricantes` VALUES (63, 'TOP POWER', '2020-10-01 12:10:58', '2020-10-01 12:10:58');
INSERT INTO `nm_fabricantes` VALUES (64, 'CENTELA', '2020-10-01 12:15:42', '2020-10-01 12:15:42');
INSERT INTO `nm_fabricantes` VALUES (65, 'TRANSCEND', '2020-11-11 13:19:37', '2020-11-11 13:19:37');
INSERT INTO `nm_fabricantes` VALUES (66, 'FOXCONN', '2020-11-11 13:44:54', '2020-11-11 13:44:54');
INSERT INTO `nm_fabricantes` VALUES (67, 'NANYA', '2020-11-11 13:47:59', '2020-11-11 13:47:59');
INSERT INTO `nm_fabricantes` VALUES (68, 'SENDON', '2020-11-11 13:59:35', '2020-11-11 13:59:35');
INSERT INTO `nm_fabricantes` VALUES (69, 'ROHS FOXCONN', '2020-11-11 15:13:04', '2020-11-11 15:13:04');
INSERT INTO `nm_fabricantes` VALUES (70, 'LABTEC', '2020-11-11 16:18:56', '2020-11-11 16:18:56');
INSERT INTO `nm_fabricantes` VALUES (71, 'APPEX', '2020-11-12 10:40:31', '2020-11-12 10:40:31');
INSERT INTO `nm_fabricantes` VALUES (72, 'DELTA', '2020-11-12 15:53:27', '2020-11-12 15:53:27');
INSERT INTO `nm_fabricantes` VALUES (73, 'HEWLETT-PACKARD', '2020-11-13 09:17:01', '2020-11-13 09:17:01');
INSERT INTO `nm_fabricantes` VALUES (74, 'SWITCHING', '2020-11-13 09:41:45', '2020-11-13 09:41:45');
INSERT INTO `nm_fabricantes` VALUES (75, 'QTECH', '2020-11-13 10:04:24', '2020-11-13 10:04:24');
INSERT INTO `nm_fabricantes` VALUES (76, 'SAITEK', '2020-11-13 10:17:32', '2020-11-13 10:17:32');
INSERT INTO `nm_fabricantes` VALUES (77, 'BESTEC', '2020-11-13 10:42:18', '2020-11-13 10:42:18');
INSERT INTO `nm_fabricantes` VALUES (78, 'THINKVISION', '2020-11-13 14:26:13', '2020-11-13 14:26:13');
INSERT INTO `nm_fabricantes` VALUES (79, 'COOLER MASTER', '2020-11-13 14:36:08', '2020-11-13 14:36:08');
INSERT INTO `nm_fabricantes` VALUES (80, 'PHILIPS', '2020-11-19 09:07:36', '2020-11-19 09:07:36');
INSERT INTO `nm_fabricantes` VALUES (81, 'TEAC', '2020-11-20 08:36:45', '2020-11-20 08:36:45');
INSERT INTO `nm_fabricantes` VALUES (82, 'IBM', '2020-11-20 09:01:58', '2020-11-20 09:01:58');
INSERT INTO `nm_fabricantes` VALUES (83, 'PRIMAX', '2020-11-20 11:22:04', '2020-11-20 11:22:04');
INSERT INTO `nm_fabricantes` VALUES (84, 'LTEL', '2020-11-30 08:28:51', '2020-11-30 08:28:51');

-- ----------------------------
-- Table structure for nm_generacions
-- ----------------------------
DROP TABLE IF EXISTS `nm_generacions`;
CREATE TABLE `nm_generacions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_generacions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_generacions
-- ----------------------------
INSERT INTO `nm_generacions` VALUES (1, 'P5', '2020-09-01 19:53:48', '2020-09-01 19:53:48');
INSERT INTO `nm_generacions` VALUES (2, '2DA', '2020-09-01 19:54:15', '2020-09-01 19:54:15');
INSERT INTO `nm_generacions` VALUES (3, '3RA', '2020-09-01 19:54:22', '2020-09-01 19:54:22');
INSERT INTO `nm_generacions` VALUES (4, '4TA', '2020-09-01 19:54:30', '2020-09-01 19:54:30');
INSERT INTO `nm_generacions` VALUES (5, '6TA', '2020-09-01 19:54:36', '2020-09-01 19:54:36');
INSERT INTO `nm_generacions` VALUES (6, '8VA', '2020-09-01 19:54:40', '2020-09-01 19:54:40');
INSERT INTO `nm_generacions` VALUES (7, '9NA', '2020-09-01 19:54:45', '2020-09-01 19:54:45');
INSERT INTO `nm_generacions` VALUES (8, '1ERA', '2020-11-13 09:31:58', '2020-11-13 09:31:58');
INSERT INTO `nm_generacions` VALUES (9, 'P4', '2020-11-16 09:45:56', '2020-11-16 09:45:56');

-- ----------------------------
-- Table structure for nm_monitors
-- ----------------------------
DROP TABLE IF EXISTS `nm_monitors`;
CREATE TABLE `nm_monitors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_monitors_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_monitors
-- ----------------------------
INSERT INTO `nm_monitors` VALUES (1, 'CRT', '2020-09-03 16:57:15', '2020-09-04 15:44:30');
INSERT INTO `nm_monitors` VALUES (2, 'LCD', '2020-09-03 16:57:20', '2020-09-03 16:57:20');

-- ----------------------------
-- Table structure for nm_potencias
-- ----------------------------
DROP TABLE IF EXISTS `nm_potencias`;
CREATE TABLE `nm_potencias`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_potencias_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_potencias
-- ----------------------------
INSERT INTO `nm_potencias` VALUES (2, '265W', '2020-09-01 16:56:25', '2020-09-01 16:56:25');
INSERT INTO `nm_potencias` VALUES (3, '500W', '2020-09-03 16:16:49', '2020-09-03 16:16:49');
INSERT INTO `nm_potencias` VALUES (4, '650W', '2020-09-03 18:02:33', '2020-09-03 18:02:33');
INSERT INTO `nm_potencias` VALUES (5, '300W', '2020-09-04 15:01:56', '2020-09-04 15:01:56');
INSERT INTO `nm_potencias` VALUES (6, '250W', '2020-09-04 15:30:47', '2020-09-04 15:30:47');
INSERT INTO `nm_potencias` VALUES (7, '220W', '2020-09-04 15:39:12', '2020-09-04 15:39:12');
INSERT INTO `nm_potencias` VALUES (8, '390W', '2020-09-04 15:48:11', '2020-09-04 15:48:11');
INSERT INTO `nm_potencias` VALUES (9, '550W', '2020-09-04 18:26:19', '2020-09-04 18:26:19');
INSERT INTO `nm_potencias` VALUES (10, '240W', '2020-09-07 14:44:08', '2020-09-07 14:44:08');
INSERT INTO `nm_potencias` VALUES (11, '325W', '2020-09-08 15:39:10', '2020-09-08 15:39:10');
INSERT INTO `nm_potencias` VALUES (12, '180W', '2020-09-08 15:59:29', '2020-09-08 15:59:29');
INSERT INTO `nm_potencias` VALUES (13, '450W', '2020-09-24 12:46:05', '2020-09-24 12:46:05');
INSERT INTO `nm_potencias` VALUES (14, '600W', '2020-09-24 13:04:47', '2020-09-24 13:04:47');
INSERT INTO `nm_potencias` VALUES (15, '330W', '2020-09-24 14:12:40', '2020-09-24 14:12:40');
INSERT INTO `nm_potencias` VALUES (16, '160W', '2020-09-29 13:11:20', '2020-09-29 13:11:28');
INSERT INTO `nm_potencias` VALUES (17, '350W', '2020-11-12 10:05:04', '2020-11-12 10:05:04');
INSERT INTO `nm_potencias` VALUES (18, '1000W', '2020-11-13 09:52:22', '2020-11-13 09:52:22');
INSERT INTO `nm_potencias` VALUES (19, '680W', '2020-11-13 10:53:22', '2020-11-13 10:53:22');
INSERT INTO `nm_potencias` VALUES (20, '360W', '2020-11-13 14:35:51', '2020-11-13 14:35:51');
INSERT INTO `nm_potencias` VALUES (21, '280W', '2020-11-16 09:33:40', '2020-11-16 09:33:40');
INSERT INTO `nm_potencias` VALUES (22, '375W', '2020-11-16 11:49:16', '2020-11-16 11:49:16');
INSERT INTO `nm_potencias` VALUES (23, '15000 W', '2020-11-30 08:31:53', '2020-11-30 08:31:53');

-- ----------------------------
-- Table structure for nm_printers
-- ----------------------------
DROP TABLE IF EXISTS `nm_printers`;
CREATE TABLE `nm_printers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_printers_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_printers
-- ----------------------------
INSERT INTO `nm_printers` VALUES (1, 'MATRICIAL', '2020-09-03 18:08:25', '2020-09-03 18:08:25');
INSERT INTO `nm_printers` VALUES (2, 'LASER', '2020-09-03 18:08:31', '2020-09-24 14:37:17');
INSERT INTO `nm_printers` VALUES (3, 'MULTI-FUNCIONAL', '2020-09-03 18:08:38', '2020-09-03 18:08:38');

-- ----------------------------
-- Table structure for nm_procesadors
-- ----------------------------
DROP TABLE IF EXISTS `nm_procesadors`;
CREATE TABLE `nm_procesadors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_procesadors_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_procesadors
-- ----------------------------
INSERT INTO `nm_procesadors` VALUES (1, 'CELERON', '2020-09-01 19:52:54', '2020-09-02 12:14:18');
INSERT INTO `nm_procesadors` VALUES (2, 'CORE-I3', '2020-09-01 19:53:13', '2020-09-01 19:53:13');
INSERT INTO `nm_procesadors` VALUES (3, 'CORE-I5', '2020-09-01 19:53:25', '2020-09-01 19:53:25');
INSERT INTO `nm_procesadors` VALUES (4, 'CORE-I7', '2020-09-01 19:53:34', '2020-09-01 19:53:34');
INSERT INTO `nm_procesadors` VALUES (5, 'PENTIUM DUAL CORE', '2020-09-04 15:29:12', '2020-09-24 11:34:36');
INSERT INTO `nm_procesadors` VALUES (6, 'PENTIUM', '2020-09-07 12:17:22', '2020-09-24 11:34:31');

-- ----------------------------
-- Table structure for nm_rams
-- ----------------------------
DROP TABLE IF EXISTS `nm_rams`;
CREATE TABLE `nm_rams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_rams_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_rams
-- ----------------------------
INSERT INTO `nm_rams` VALUES (1, 'DDR3', '2020-09-01 16:13:21', '2020-09-01 16:13:21');
INSERT INTO `nm_rams` VALUES (2, 'DDR4', '2020-09-01 16:13:25', '2020-09-01 16:13:31');
INSERT INTO `nm_rams` VALUES (3, 'DDR2', '2020-09-01 16:13:36', '2020-09-01 16:13:36');
INSERT INTO `nm_rams` VALUES (4, 'DDR1', '2020-09-29 13:09:36', '2020-09-29 13:09:36');

-- ----------------------------
-- Table structure for nm_sistemas
-- ----------------------------
DROP TABLE IF EXISTS `nm_sistemas`;
CREATE TABLE `nm_sistemas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_sistemas_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_sistemas
-- ----------------------------
INSERT INTO `nm_sistemas` VALUES (3, 'WINDOWS10 32BITS', '2020-09-01 16:10:29', '2020-09-01 16:51:30');
INSERT INTO `nm_sistemas` VALUES (4, 'WINDOWS10 64BITS', '2020-09-01 16:10:47', '2020-09-01 16:51:33');

-- ----------------------------
-- Table structure for nm_uebs
-- ----------------------------
DROP TABLE IF EXISTS `nm_uebs`;
CREATE TABLE `nm_uebs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_uebs_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_uebs
-- ----------------------------
INSERT INTO `nm_uebs` VALUES (2, 'INFORMATICA Y COMUNICACIONES', '2020-09-01 16:09:26', '2020-09-01 16:52:05');
INSERT INTO `nm_uebs` VALUES (3, 'INVERSIONES', '2020-09-01 16:09:48', '2020-09-01 16:52:09');
INSERT INTO `nm_uebs` VALUES (4, 'UEB SANTA CRUZ DEL SUR', '2020-09-03 14:28:29', '2020-09-03 14:28:29');
INSERT INTO `nm_uebs` VALUES (5, 'UEB SANTA LUCíA', '2020-09-03 14:28:59', '2020-09-03 14:28:59');
INSERT INTO `nm_uebs` VALUES (6, 'UEB MINAS', '2020-09-03 18:10:37', '2020-09-03 18:10:37');
INSERT INTO `nm_uebs` VALUES (7, 'UEB GUAIMARO', '2020-09-04 15:24:31', '2020-09-04 15:24:31');
INSERT INTO `nm_uebs` VALUES (8, 'UEB CESPEDES', '2020-09-07 14:24:10', '2020-09-07 14:24:10');
INSERT INTO `nm_uebs` VALUES (9, 'UEB VERTIENTES', '2020-09-07 14:26:48', '2020-09-07 14:26:48');
INSERT INTO `nm_uebs` VALUES (10, 'UEB NUEVITAS', '2020-09-23 12:00:31', '2020-09-23 12:00:31');
INSERT INTO `nm_uebs` VALUES (11, 'UEB SIBANICU', '2020-09-24 11:46:28', '2020-09-24 11:46:28');
INSERT INTO `nm_uebs` VALUES (12, 'UEB SOLA', '2020-09-24 12:39:33', '2020-09-24 12:39:33');
INSERT INTO `nm_uebs` VALUES (13, 'ESMERALDA', '2020-11-10 14:07:34', '2020-11-10 14:07:34');
INSERT INTO `nm_uebs` VALUES (14, 'UEB FLORIDA', '2020-11-13 11:33:35', '2020-11-13 11:33:35');
INSERT INTO `nm_uebs` VALUES (15, 'UEB JIMAGUAYU', '2020-11-18 08:40:23', '2020-11-18 08:40:23');
INSERT INTO `nm_uebs` VALUES (17, 'CIAC', '2021-02-23 11:23:28', '2021-02-23 11:23:28');
INSERT INTO `nm_uebs` VALUES (18, 'DIRECCION GENERAL', '2021-03-01 12:01:41', '2021-03-01 12:01:41');
INSERT INTO `nm_uebs` VALUES (19, 'UEB CAMAGüEY', '2021-03-01 12:52:49', '2021-03-01 12:52:49');
INSERT INTO `nm_uebs` VALUES (20, 'ORGANIZACION Y SISTEMAS', '2021-03-01 12:53:31', '2021-03-01 12:53:31');
INSERT INTO `nm_uebs` VALUES (21, 'UEB DESPACHO', '2021-03-01 12:54:32', '2021-03-01 12:54:32');
INSERT INTO `nm_uebs` VALUES (22, 'ONURE', '2021-03-03 10:56:35', '2021-03-03 10:56:35');
INSERT INTO `nm_uebs` VALUES (23, 'TALLER', '2021-03-03 10:56:39', '2021-03-03 10:56:39');
INSERT INTO `nm_uebs` VALUES (24, 'UEB GENERACION EMERGENCIA', '2021-03-03 11:41:41', '2021-03-03 11:41:41');
INSERT INTO `nm_uebs` VALUES (25, 'UEB CAPITAL HUMANO', '2021-03-03 12:03:32', '2021-03-03 12:03:32');
INSERT INTO `nm_uebs` VALUES (26, 'UEB SERVICIOS COMERCIALES', '2021-03-03 12:05:41', '2021-03-03 12:05:41');
INSERT INTO `nm_uebs` VALUES (27, 'DIRECCION TECNICA', '2021-03-09 10:19:46', '2021-03-09 10:19:46');

-- ----------------------------
-- Table structure for nm_velocidad_rams
-- ----------------------------
DROP TABLE IF EXISTS `nm_velocidad_rams`;
CREATE TABLE `nm_velocidad_rams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_velocidad_rams_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_velocidad_rams
-- ----------------------------
INSERT INTO `nm_velocidad_rams` VALUES (1, '2GB', '2020-09-02 19:46:16', '2020-09-02 19:46:16');
INSERT INTO `nm_velocidad_rams` VALUES (2, '4GB', '2020-09-02 19:46:22', '2020-09-02 19:46:22');
INSERT INTO `nm_velocidad_rams` VALUES (3, '1GB', '2020-09-04 15:39:44', '2020-09-04 15:39:44');
INSERT INTO `nm_velocidad_rams` VALUES (4, '256 MB', '2020-09-29 13:09:19', '2020-09-29 13:09:19');
INSERT INTO `nm_velocidad_rams` VALUES (5, '800 MHZ', '2020-11-16 09:52:49', '2020-11-16 09:52:49');

-- ----------------------------
-- Table structure for nm_voltajes
-- ----------------------------
DROP TABLE IF EXISTS `nm_voltajes`;
CREATE TABLE `nm_voltajes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nm_voltajes_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nm_voltajes
-- ----------------------------
INSERT INTO `nm_voltajes` VALUES (1, '110', '2020-09-01 16:50:05', '2020-09-01 16:50:05');
INSERT INTO `nm_voltajes` VALUES (2, '220', '2020-09-01 16:50:15', '2020-09-01 16:50:15');
INSERT INTO `nm_voltajes` VALUES (3, '110/220', '2020-09-01 16:50:21', '2020-09-01 16:50:21');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for printers
-- ----------------------------
DROP TABLE IF EXISTS `printers`;
CREATE TABLE `printers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_printer_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `printers_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `printers_nm_printer_id_foreign`(`nm_printer_id`) USING BTREE,
  INDEX `printers_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `printers_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `printers_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `printers_nm_printer_id_foreign` FOREIGN KEY (`nm_printer_id`) REFERENCES `nm_printers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of printers
-- ----------------------------
INSERT INTO `printers` VALUES (1, 'NV64078696', 'LX-300+II', '224539', 15, 1, 8, '1', '2020-09-03 18:09:14', '2020-09-03 18:09:14');
INSERT INTO `printers` VALUES (2, 'Q754066907', 'LX-300', '229558', 17, 1, 10, '1', '2020-09-04 15:13:49', '2020-09-04 15:13:49');
INSERT INTO `printers` VALUES (3, 'SN', 'LX-300+II', '224556', 17, 1, 11, '1', '2020-09-04 15:49:21', '2020-09-04 15:49:21');
INSERT INTO `printers` VALUES (4, 'N6VY091071', 'LX-300+II', 'sn', 17, 1, 12, '1', '2020-09-04 15:56:27', '2020-09-04 15:56:27');
INSERT INTO `printers` VALUES (5, 'U754069419', 'LX-350', '231513', 17, 1, 14, '1', '2020-09-04 18:29:36', '2020-09-04 18:29:36');
INSERT INTO `printers` VALUES (6, 'SN', 'LASERJET PRO 400', 'sn', 7, 2, 15, '1', '2020-09-07 11:56:48', '2020-09-07 11:56:48');
INSERT INTO `printers` VALUES (7, 'NUGY078682', 'LX-300+ II', '224557', 17, 1, 17, '1', '2020-09-07 12:50:42', '2020-09-07 12:50:42');
INSERT INTO `printers` VALUES (8, 'SN', 'FX-2190', '212117', 17, 1, 18, '1', '2020-09-07 13:20:40', '2020-09-07 13:20:40');
INSERT INTO `printers` VALUES (9, 'Q75Y108468', 'LX-300', '231455', 17, 1, 20, '1', '2020-09-07 14:37:17', '2020-09-07 14:37:17');
INSERT INTO `printers` VALUES (10, 'NU64030288', 'LX-300+II', '222133', 17, 1, 34, '1', '2020-09-08 15:51:24', '2020-09-08 15:51:24');
INSERT INTO `printers` VALUES (11, 'CNC3526457', 'LASERJETP2055D', '224790', 7, 2, 40, '1', '2020-09-08 16:20:46', '2020-09-08 16:20:46');
INSERT INTO `printers` VALUES (12, 'PHCL70', 'LASERJETPROM403D', '232544', 7, 2, 39, '1', '2020-09-08 17:02:47', '2020-09-08 17:02:47');
INSERT INTO `printers` VALUES (13, 'QF5Y066898', 'LX350', '229562', 17, 2, 32, '1', '2020-09-11 14:59:19', '2020-09-11 14:59:19');
INSERT INTO `printers` VALUES (15, '21DSK01612', 'IMEGE RUNNER 1025', '229500', 32, 2, 29, '1', '2020-09-23 13:03:22', '2020-09-23 13:03:22');
INSERT INTO `printers` VALUES (16, 'VNB3F42221', 'M201-DW', 'm201-dw', 7, 2, 26, '1', '2020-09-23 15:44:46', '2020-09-23 15:44:46');
INSERT INTO `printers` VALUES (17, 'PH6FC66652', 'LASER JET PRO 40V', '229352', 7, 2, 27, '1', '2020-09-23 16:04:30', '2020-09-23 16:04:30');
INSERT INTO `printers` VALUES (18, 'NCSA304160', 'LPB6030W', '229753', 54, 2, 35, '1', '2020-09-23 16:14:06', '2020-09-23 16:14:06');
INSERT INTO `printers` VALUES (19, 'NCSA117271', 'LBP6030W', '229768', 54, 2, 59, '1', '2020-09-24 13:06:19', '2020-09-24 13:06:19');
INSERT INTO `printers` VALUES (20, 'MTCA119122', 'LBP6000', '228946', 54, 2, 57, '1', '2020-09-24 14:37:01', '2020-09-24 14:37:01');
INSERT INTO `printers` VALUES (21, 'N/S', 'LASER JET PRO M403D', '231357', 7, 2, 49, '1', '2020-09-25 14:05:18', '2020-09-25 14:05:18');
INSERT INTO `printers` VALUES (22, '078695', 'LX-300+II', '224555', 17, 1, 62, '1', '2020-09-25 14:19:51', '2020-09-25 14:19:51');
INSERT INTO `printers` VALUES (23, 'N/S', 'IMAGE RUNNER 1025', '229509', 54, 2, 48, '1', '2020-09-25 15:47:03', '2020-09-25 15:47:03');
INSERT INTO `printers` VALUES (24, 'EPSON', 'LX-350', '231488', 17, 2, 45, '1', '2020-09-28 14:13:24', '2020-09-28 14:13:24');
INSERT INTO `printers` VALUES (25, 'N/S', 'LX-300 +II', '224534', 17, 1, 44, '1', '2020-09-29 15:15:38', '2020-09-29 15:15:38');
INSERT INTO `printers` VALUES (26, 'NV64079730', 'P170B', '224533', 17, 1, 43, '1', '2020-09-30 12:59:31', '2020-09-30 12:59:31');
INSERT INTO `printers` VALUES (27, 'NCSA117258', 'LPB6030W', '229775', 54, 2, 66, '1', '2020-09-30 14:21:48', '2020-09-30 14:21:48');
INSERT INTO `printers` VALUES (28, 'SN', 'LJ PRO 400 M401 DW', '230895', 7, 2, 68, '1', '2020-10-01 12:17:45', '2020-10-01 12:17:45');
INSERT INTO `printers` VALUES (29, '17-X6X-132-06-3606-8342', 'LASER JET PRO M201DW', 'sin #', 21, 2, 74, '1', '2020-11-10 19:15:39', '2020-11-10 19:15:39');
INSERT INTO `printers` VALUES (30, 'Q754108469', 'PA71A', '231491', 17, 1, 75, '1', '2020-11-10 21:21:56', '2020-11-10 21:21:56');
INSERT INTO `printers` VALUES (31, 'CNC3C28471', 'LASER JET P2055D', '224752', 7, 2, 78, '1', '2020-11-11 14:09:56', '2020-11-11 14:09:56');
INSERT INTO `printers` VALUES (32, 'PHGGB07489', 'LASER JET PTO 400', '230896', 7, 2, 81, '1', '2020-11-11 14:27:17', '2020-11-11 14:27:17');
INSERT INTO `printers` VALUES (33, 'CNC3628472', 'LASER JET P2055D', '224748', 7, 2, 85, '1', '2020-11-11 14:37:33', '2020-11-11 14:37:33');
INSERT INTO `printers` VALUES (34, 'DSK01620', '1025', 'sn', 54, 3, 83, '1', '2020-11-11 14:55:33', '2020-11-11 14:55:33');
INSERT INTO `printers` VALUES (35, 'NV64030305', 'P170B', '222137', 17, 1, 86, '1', '2020-11-11 15:05:36', '2020-11-11 15:05:36');
INSERT INTO `printers` VALUES (36, 'CNC3838692', 'BOISB-0801-00', '224744', 7, 2, 82, '1', '2020-11-11 15:40:53', '2020-11-11 15:40:53');
INSERT INTO `printers` VALUES (37, 'NUGY078643', 'LX-300 II', '224556', 17, 1, 90, '1', '2020-11-11 16:23:37', '2020-11-11 16:23:37');
INSERT INTO `printers` VALUES (38, 'CNC3520923', 'BOISB-0801-00', '224751', 7, 2, 89, '1', '2020-11-11 16:27:22', '2020-11-11 16:27:22');
INSERT INTO `printers` VALUES (39, 'VNH4133192', 'CF274A', '229350', 7, 2, 91, '1', '2020-11-11 19:30:08', '2020-11-11 19:30:08');
INSERT INTO `printers` VALUES (40, 'Q754108471', 'LX-350', '231489', 17, 1, 92, '1', '2020-11-11 20:12:54', '2020-11-11 20:12:54');
INSERT INTO `printers` VALUES (41, 'NCSA117255', 'F166400', '229779', 54, 2, 95, '1', '2020-11-12 10:06:14', '2020-11-12 10:06:14');
INSERT INTO `printers` VALUES (42, 'FCTY098284', 'FX-2190', '214002', 17, 1, 100, '1', '2020-11-12 14:19:15', '2020-11-12 14:19:15');
INSERT INTO `printers` VALUES (43, 'VND3R14852', 'HPLJP3015', '229550', 7, 2, 104, '1', '2020-11-13 09:11:48', '2020-11-13 09:11:48');
INSERT INTO `printers` VALUES (44, 'VNH4133432', 'S-120', '229355', 7, 2, 105, '1', '2020-11-13 09:31:05', '2020-11-13 09:31:05');
INSERT INTO `printers` VALUES (45, 'CNC3521099', 'LJ P2055D', '224749', 7, 2, 106, '1', '2020-11-13 09:57:41', '2020-11-13 09:57:41');
INSERT INTO `printers` VALUES (46, 'SIN #', 'FX-890', '222221', 17, 2, 108, '1', '2020-11-13 10:10:22', '2020-11-13 10:10:22');
INSERT INTO `printers` VALUES (47, 'VNB3C71337', 'CF456A', '231060', 7, 2, 107, '1', '2020-11-13 10:21:15', '2020-11-13 10:21:15');
INSERT INTO `printers` VALUES (48, 'NCSA117260', 'LBP6030W', '229767', 54, 2, 110, '1', '2020-11-13 10:53:01', '2020-11-13 10:53:01');
INSERT INTO `printers` VALUES (49, 'NCSA117255', 'F166400', '229779', 54, 2, 109, '1', '2020-11-13 10:56:38', '2020-11-13 10:56:38');
INSERT INTO `printers` VALUES (50, 'G8DY471593', 'LX-300+II', '222140', 17, 1, 111, '1', '2020-11-13 11:04:36', '2020-11-13 11:04:36');
INSERT INTO `printers` VALUES (51, 'UNB3C63078', 'LASER PRO M201DW', '231055', 7, 2, 116, '1', '2020-11-13 11:30:48', '2020-11-13 11:30:48');
INSERT INTO `printers` VALUES (52, 'DSK01579', '1025', '229505', 21, 2, 118, '1', '2020-11-13 11:50:20', '2020-11-13 11:50:20');
INSERT INTO `printers` VALUES (53, 'N064078647', 'LX-300+LL', '224354', 17, 1, 93, '1', '2020-11-13 11:58:55', '2020-11-13 11:58:55');
INSERT INTO `printers` VALUES (54, 'CNC3623170', 'LJ P2055D', '224745', 7, 2, 121, '1', '2020-11-13 12:01:49', '2020-11-13 12:01:49');
INSERT INTO `printers` VALUES (55, 'PHGFC66664', 'LASER JET PRO 400', '231512', 7, 2, 124, '1', '2020-11-13 12:17:25', '2020-11-13 12:17:25');
INSERT INTO `printers` VALUES (56, 'WCSA117256', 'F166400', '229759', 54, 1, 123, '1', '2020-11-13 13:13:56', '2020-11-13 13:13:56');
INSERT INTO `printers` VALUES (57, 'S/N', 'FX-2190', '213288', 17, 1, 126, '1', '2020-11-13 13:22:12', '2020-11-13 13:22:12');
INSERT INTO `printers` VALUES (58, 'FCTY079933', 'FX-2190', '213285', 17, 1, 122, '1', '2020-11-13 13:25:24', '2020-11-13 13:25:24');
INSERT INTO `printers` VALUES (59, 'FCTY079590', 'FX-2190', '213287', 17, 1, 129, '1', '2020-11-13 14:10:42', '2020-11-13 14:10:42');
INSERT INTO `printers` VALUES (60, '68D4524961', 'LX 300+II P170B', '226374', 17, 1, 131, '1', '2020-11-13 14:34:59', '2020-11-13 14:34:59');
INSERT INTO `printers` VALUES (61, 'PHGGF04272', 'LASER JET PRO 400 M401DW', '230894', 7, 2, 132, '1', '2020-11-13 14:38:57', '2020-11-13 14:38:57');
INSERT INTO `printers` VALUES (62, 'VNH4117945', 'LASER JET PRO 400 M401D', '229349', 7, 2, 135, '1', '2020-11-13 15:31:11', '2020-11-13 15:31:11');
INSERT INTO `printers` VALUES (63, 'VNB3C71313', 'LASER JET PRO M201DW', '231064', 7, 2, 136, '1', '2020-11-16 09:35:22', '2020-11-16 09:35:22');
INSERT INTO `printers` VALUES (64, 'SN', 'LX-350', '231497', 17, 1, 140, '1', '2020-11-16 10:02:46', '2020-11-16 10:02:46');
INSERT INTO `printers` VALUES (65, 'SN', 'IMAGE RUNNER 1025', '229506', 54, 3, 141, '1', '2020-11-16 10:17:02', '2020-11-16 10:17:02');
INSERT INTO `printers` VALUES (66, '68DYS24707', 'LX-300+II', '226389', 17, 2, 142, '1', '2020-11-16 11:13:17', '2020-11-16 11:13:17');
INSERT INTO `printers` VALUES (67, 'Q75Y069606', 'LX-350', '231494', 17, 1, 51, '1', '2020-11-16 11:26:51', '2020-11-16 11:26:51');
INSERT INTO `printers` VALUES (68, 'N/S', 'FX-1180', '210953', 17, 1, 53, '1', '2020-11-16 12:18:55', '2020-11-16 12:18:55');
INSERT INTO `printers` VALUES (69, 'NCSA117267', 'TL7-NM383', '229769', 54, 2, 151, '1', '2020-11-16 14:02:01', '2020-11-16 14:02:01');
INSERT INTO `printers` VALUES (70, 'NUGY078629', 'LX-300+II P1708', '224542', 17, 1, 152, '1', '2020-11-16 14:42:43', '2020-11-16 14:42:43');
INSERT INTO `printers` VALUES (71, 'SN', 'IMAGE CLASS LBP 6000', '224747', 54, 2, 153, '1', '2020-11-18 08:53:46', '2020-11-18 08:53:46');
INSERT INTO `printers` VALUES (72, 'VNB3C63091', 'SHN6C-1301-01', '231062', 7, 2, 149, '1', '2020-11-18 15:41:07', '2020-11-18 15:41:07');
INSERT INTO `printers` VALUES (73, 'G8DY524995', 'LX-300 II', '226985', 17, 1, 157, '1', '2020-11-19 08:08:30', '2020-11-19 08:08:30');
INSERT INTO `printers` VALUES (74, 'Q75Y069391', 'LX-350', '229560', 17, 1, 158, '1', '2020-11-19 09:09:26', '2020-11-19 09:09:26');
INSERT INTO `printers` VALUES (75, 'NUGY079717', 'LX-300 II', '224545', 17, 1, 161, '1', '2020-11-19 16:04:41', '2020-11-19 16:04:41');
INSERT INTO `printers` VALUES (76, 'VNB3F49988', 'LASER JET PRO 400 M401DW', '231049', 7, 2, 163, '1', '2020-11-20 08:30:32', '2020-11-20 08:30:32');
INSERT INTO `printers` VALUES (77, 'VNH4117915', 'LASERJETPROM403D', '229354', 7, 2, 147, '1', '2020-11-20 10:15:46', '2020-11-20 10:15:46');
INSERT INTO `printers` VALUES (78, 'N7BY004185', '222223', 'fx-890(p361a)', 17, 2, 146, '1', '2020-11-20 11:25:52', '2020-11-20 11:25:52');
INSERT INTO `printers` VALUES (79, 'VNB3F49988', 'LASER JET PRO M201DW', '231049', 7, 2, 166, '1', '2020-11-20 11:33:16', '2020-11-20 11:33:16');
INSERT INTO `printers` VALUES (80, 'NCSA117257', 'LBP6030W', '229778', 54, 2, 167, '1', '2020-11-20 11:43:20', '2020-11-20 11:43:20');
INSERT INTO `printers` VALUES (81, 'NV6Y079716', 'N/S', '224561', 17, 2, 144, '1', '2020-11-20 11:57:55', '2020-11-20 11:57:55');
INSERT INTO `printers` VALUES (82, 'CNC3621096', 'B0ISB-081-00', '224750', 7, 2, 145, '1', '2020-11-20 12:12:54', '2020-11-20 12:12:54');
INSERT INTO `printers` VALUES (83, '0220091130', 'LASER JET PRO 400 M401DW', '230892', 7, 2, 168, '1', '2020-11-20 14:09:02', '2020-11-20 14:09:02');
INSERT INTO `printers` VALUES (84, 'CNC3628260', 'LASER JET P2055D', '224743', 7, 2, 170, '1', '2020-11-24 13:42:21', '2020-11-24 13:42:21');
INSERT INTO `printers` VALUES (85, 'UMB3FG9987', 'LASER JET M201', 'SN', 7, 2, 172, '1', '2020-11-24 14:28:36', '2020-11-24 14:28:36');
INSERT INTO `printers` VALUES (86, 'GDB45248', 'LX-300+II', '226344', 17, 1, 176, '1', '2020-11-30 08:33:22', '2020-11-30 08:33:22');

-- ----------------------------
-- Table structure for rams
-- ----------------------------
DROP TABLE IF EXISTS `rams`;
CREATE TABLE `rams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_velocidad_ram_id` bigint(20) UNSIGNED NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_ram_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rams_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `rams_nm_ram_id_foreign`(`nm_ram_id`) USING BTREE,
  INDEX `rams_nm_velocidad_ram_id_foreign`(`nm_velocidad_ram_id`) USING BTREE,
  INDEX `rams_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `rams_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `rams_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `rams_nm_ram_id_foreign` FOREIGN KEY (`nm_ram_id`) REFERENCES `nm_rams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `rams_nm_velocidad_ram_id_foreign` FOREIGN KEY (`nm_velocidad_ram_id`) REFERENCES `nm_velocidad_rams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rams
-- ----------------------------
INSERT INTO `rams` VALUES (1, '696762-2300', 2, 12, 1, 8, '1', '2020-09-03 16:52:43', '2020-09-03 16:53:26');
INSERT INTO `rams` VALUES (2, '696762-2300', 2, 12, 1, 8, '1', '2020-09-03 16:53:04', '2020-09-03 16:53:04');
INSERT INTO `rams` VALUES (3, 'HXLLB-Q9VPV9-WWMV6', 1, 15, 1, 9, '1', '2020-09-03 19:53:55', '2020-09-03 19:53:55');
INSERT INTO `rams` VALUES (4, 'HMT451U6BFR8A-PBN0AA', 2, 25, 1, 10, '1', '2020-09-04 15:06:23', '2020-09-04 15:06:46');
INSERT INTO `rams` VALUES (5, 'HMT451U6BFR8A-PBN0AA', 2, 25, 1, 10, '1', '2020-09-04 15:07:04', '2020-09-04 15:07:04');
INSERT INTO `rams` VALUES (6, 'GU502203EP0201', 3, 27, 3, 11, '1', '2020-09-04 15:40:35', '2020-09-04 15:40:58');
INSERT INTO `rams` VALUES (7, '070224523EDM2100', 2, 19, 1, 12, '1', '2020-09-04 15:42:28', '2020-09-04 15:42:28');
INSERT INTO `rams` VALUES (8, 'KN46B0702245235B88ML00', 1, 19, 1, 13, '1', '2020-09-04 17:49:52', '2020-09-04 17:49:52');
INSERT INTO `rams` VALUES (9, 'KN46B0702245235B88ML00', 1, 19, 2, 13, '1', '2020-09-04 17:50:07', '2020-09-04 17:50:07');
INSERT INTO `rams` VALUES (10, 'HX313C9F', 2, 33, 1, 14, '1', '2020-09-04 18:06:50', '2020-09-04 18:07:44');
INSERT INTO `rams` VALUES (11, 'M378B577', 1, 38, 1, 15, '1', '2020-09-07 11:51:44', '2020-09-07 11:51:44');
INSERT INTO `rams` VALUES (12, '5JL1V-096PJU-DWPPB', 1, 19, 1, 16, '1', '2020-09-07 12:05:35', '2020-09-07 12:05:35');
INSERT INTO `rams` VALUES (13, 'KN26BDH0091446FFDFM800', 1, 27, 1, 17, '1', '2020-09-07 12:21:34', '2020-09-07 12:21:34');
INSERT INTO `rams` VALUES (14, 'KN26BDH0091446FFDFM800', 1, 27, 1, 17, '1', '2020-09-07 12:21:50', '2020-09-07 12:21:50');
INSERT INTO `rams` VALUES (15, 'KN26B0H0091467F1C7M800', 1, 42, 1, 18, '1', '2020-09-07 13:06:24', '2020-09-07 13:07:19');
INSERT INTO `rams` VALUES (17, 'KN2GB0H009114579445M800', 1, 42, 1, 19, '1', '2020-09-07 14:04:42', '2020-09-07 14:04:42');
INSERT INTO `rams` VALUES (18, 'VDJP4-F96M39', 1, 19, 1, 20, '1', '2020-09-07 14:32:19', '2020-09-07 14:32:19');
INSERT INTO `rams` VALUES (19, '6V502203EP0201', 1, 42, 1, 22, '1', '2020-09-07 14:46:32', '2020-09-07 14:47:00');
INSERT INTO `rams` VALUES (20, 'MT8JTF25664AZAG4M1', 1, 44, 1, 21, '1', '2020-09-07 14:50:53', '2020-09-07 14:50:53');
INSERT INTO `rams` VALUES (21, 'KN2GB0H0091500720C9200', 1, 42, 1, 23, '1', '2020-09-07 15:37:56', '2020-09-07 15:37:56');
INSERT INTO `rams` VALUES (22, 'KN2GB0H009150072759200', 1, 42, 1, 24, '1', '2020-09-07 16:11:48', '2020-09-07 16:11:48');
INSERT INTO `rams` VALUES (23, 'D0LG2-H9EPF2-4WBEB', 1, 19, 1, 34, '1', '2020-09-08 15:30:42', '2020-09-08 15:30:42');
INSERT INTO `rams` VALUES (24, '11511009D8MCD472914482', 1, 38, 1, 40, '1', '2020-09-08 16:06:42', '2020-09-08 16:06:42');
INSERT INTO `rams` VALUES (25, 'MT8JTF25664AZ-164M1', 1, 44, 1, 39, '1', '2020-09-08 16:38:11', '2020-09-08 16:38:11');
INSERT INTO `rams` VALUES (26, 'KVR13N956', 1, 19, 1, 38, '1', '2020-09-09 15:48:02', '2020-09-09 15:48:02');
INSERT INTO `rams` VALUES (27, 'C26ML00', 2, 19, 1, 37, '1', '2020-09-10 14:06:27', '2020-09-10 14:06:27');
INSERT INTO `rams` VALUES (28, 'A27ML00', 2, 19, 1, 37, '1', '2020-09-10 14:06:49', '2020-09-10 14:06:49');
INSERT INTO `rams` VALUES (29, 'TALUX890P61RW4KB', 1, 19, 1, 36, '1', '2020-09-10 15:21:12', '2020-09-10 15:21:12');
INSERT INTO `rams` VALUES (30, '6U502203EP0201', 3, 42, 1, 33, '1', '2020-09-10 16:01:00', '2020-09-10 16:01:00');
INSERT INTO `rams` VALUES (31, 'RN46B070063280043MN00', 2, 19, 1, 32, '1', '2020-09-11 13:45:40', '2020-09-11 13:45:40');
INSERT INTO `rams` VALUES (32, 'KN26BH009150072C88200', 1, 42, 1, 31, '1', '2020-09-14 13:16:09', '2020-09-14 13:16:09');
INSERT INTO `rams` VALUES (33, 'M378B5173EBD-CK0', 2, 38, 1, 30, '1', '2020-09-23 11:47:33', '2020-09-23 11:47:33');
INSERT INTO `rams` VALUES (34, 'CPMH0881472', 2, 33, 1, 54, '1', '2020-09-23 12:14:45', '2020-09-23 12:14:45');
INSERT INTO `rams` VALUES (35, '91217', 3, 43, 3, 29, '1', '2020-09-23 12:56:30', '2020-09-23 12:56:30');
INSERT INTO `rams` VALUES (36, 'KVR13N956', 1, 19, 1, 55, '1', '2020-09-23 13:20:36', '2020-09-23 13:20:36');
INSERT INTO `rams` VALUES (37, 'CPMM0891401', 2, 19, 1, 28, '1', '2020-09-23 14:37:48', '2020-09-23 14:37:48');
INSERT INTO `rams` VALUES (38, 'CT464DF58213', 3, 19, 2, 26, '1', '2020-09-23 15:35:45', '2020-09-23 15:35:45');
INSERT INTO `rams` VALUES (39, '61200437307', 1, 52, 3, 25, '1', '2020-09-23 15:49:33', '2020-09-23 15:49:33');
INSERT INTO `rams` VALUES (40, '9931711-005-A006', 2, 19, 1, 27, '1', '2020-09-23 16:00:20', '2020-09-23 16:00:20');
INSERT INTO `rams` VALUES (41, 'PFLCB128WVVW1VB', 2, 33, 1, 35, '1', '2020-09-23 16:09:12', '2020-09-23 16:09:12');
INSERT INTO `rams` VALUES (42, 'SN', 2, 55, 1, 56, '1', '2020-09-24 11:51:02', '2020-09-24 11:51:02');
INSERT INTO `rams` VALUES (43, 'KW2GB0H0091498A23M800', 1, 27, 1, 58, '1', '2020-09-24 12:10:09', '2020-09-24 12:10:09');
INSERT INTO `rams` VALUES (44, '9905474012A00LF', 1, 19, 1, 57, '1', '2020-09-24 12:49:42', '2020-09-24 12:49:42');
INSERT INTO `rams` VALUES (45, 'WWLK6-099QT-8WQQ8', 1, 19, 1, 59, '1', '2020-09-24 12:55:32', '2020-09-24 12:55:32');
INSERT INTO `rams` VALUES (46, '6JLJR-X9UPQQ-JWCWF', 2, 57, 1, 60, '1', '2020-09-24 13:43:05', '2020-09-24 13:44:00');
INSERT INTO `rams` VALUES (47, '64LIO-K9AMHW-XWW46', 1, 19, 1, 61, '1', '2020-09-24 15:08:58', '2020-09-24 15:08:58');
INSERT INTO `rams` VALUES (48, 'PALNS-L92P18-7WXF6', 1, 40, 1, 50, '1', '2020-09-25 13:18:09', '2020-09-25 13:18:09');
INSERT INTO `rams` VALUES (49, 'B0606', 1, 59, 3, 49, '1', '2020-09-25 13:49:03', '2020-09-25 13:49:03');
INSERT INTO `rams` VALUES (50, 'KN2GBDH00914987981M800', 1, 27, 1, 62, '1', '2020-09-25 14:05:58', '2020-09-25 14:05:58');
INSERT INTO `rams` VALUES (51, 'BKLQQ-Q92MKD-MW5K6', 1, 19, 1, 48, '1', '2020-09-25 15:09:31', '2020-09-25 15:09:31');
INSERT INTO `rams` VALUES (52, 'GU512303EP0202', 1, 27, 1, 63, '1', '2020-09-25 15:24:28', '2020-09-25 15:24:28');
INSERT INTO `rams` VALUES (53, 'KN26B0H01220364479M800', 1, 27, 1, 64, '1', '2020-09-25 15:48:23', '2020-09-25 15:48:23');
INSERT INTO `rams` VALUES (54, 'KN26B0H01220363175M800', 1, 27, 1, 64, '1', '2020-09-25 15:49:27', '2020-09-25 15:49:27');
INSERT INTO `rams` VALUES (55, 'WNLFN-V98PW3-1W16', 1, 19, 1, 46, '1', '2020-09-28 13:19:06', '2020-09-28 13:19:06');
INSERT INTO `rams` VALUES (56, 'KN26B0H00914983E43M806', 1, 42, 3, 45, '1', '2020-09-28 13:52:59', '2020-09-28 13:52:59');
INSERT INTO `rams` VALUES (57, '305957', 4, 7, 4, 65, '1', '2020-09-29 13:08:45', '2020-09-29 13:09:59');
INSERT INTO `rams` VALUES (58, 'E4L0A-49RPT6-BWJAF', 1, 19, 1, 44, '1', '2020-09-29 14:24:55', '2020-09-29 14:24:55');
INSERT INTO `rams` VALUES (59, 'KN2GB0H00914984D2CM800', 1, 27, 1, 43, '1', '2020-09-29 15:22:37', '2020-09-29 15:22:37');
INSERT INTO `rams` VALUES (60, 'JDLDQ-V9LPIE-FMDTB', 2, 33, 1, 42, '1', '2020-09-30 13:04:54', '2020-09-30 13:04:54');
INSERT INTO `rams` VALUES (61, 'A4LD6-094PC5-4WLIF', 1, 19, 1, 66, '1', '2020-09-30 14:17:48', '2020-09-30 14:17:48');
INSERT INTO `rams` VALUES (62, 'KN46B0702245235BF2ML00', 2, 19, 1, 67, '1', '2020-09-30 15:10:51', '2020-09-30 15:11:18');
INSERT INTO `rams` VALUES (63, 'KN46B0702245235BF8ML00', 2, 19, 1, 67, '1', '2020-09-30 15:12:12', '2020-09-30 15:12:30');
INSERT INTO `rams` VALUES (64, 'N9LB7-J9DP30-1WLV6', 1, 19, 1, 68, '1', '2020-10-01 12:08:53', '2020-10-01 12:08:53');
INSERT INTO `rams` VALUES (65, 'XALQA-19MMJ4-AWPRB', 1, 19, 1, 69, '1', '2020-10-02 15:58:31', '2020-10-02 15:58:31');
INSERT INTO `rams` VALUES (66, 'P001036', 2, 19, 2, 70, '1', '2020-10-02 16:27:29', '2020-10-02 16:30:04');
INSERT INTO `rams` VALUES (67, 'PNJOR09FME9DY90X', 1, 19, 1, 72, '1', '2020-11-10 14:41:54', '2020-11-10 14:41:54');
INSERT INTO `rams` VALUES (68, 'A7L5RYAMPRVCW5CF', 1, 19, 1, 73, '1', '2020-11-10 15:44:51', '2020-11-10 15:44:51');
INSERT INTO `rams` VALUES (69, '05JK0C90PVA8V9K8', 1, 19, 1, 75, '1', '2020-11-10 18:44:19', '2020-11-10 18:44:19');
INSERT INTO `rams` VALUES (70, 'JHLL1-C95MEW-6WDHB', 1, 19, 1, 74, '1', '2020-11-10 18:53:26', '2020-11-10 18:53:26');
INSERT INTO `rams` VALUES (71, '696762-2820', 2, 65, 1, 76, '1', '2020-11-11 13:20:01', '2020-11-11 13:20:01');
INSERT INTO `rams` VALUES (72, 'X4LSX-19QPD2-8WR9B', 1, 19, 1, 77, '1', '2020-11-11 13:30:14', '2020-11-11 13:30:14');
INSERT INTO `rams` VALUES (73, 'DPABCZ4008', 1, 44, 1, 78, '1', '2020-11-11 13:40:58', '2020-11-11 13:40:58');
INSERT INTO `rams` VALUES (74, 'NT0GC64B88G09F-CG', 1, 67, 1, 79, '1', '2020-11-11 13:47:40', '2020-11-11 13:48:57');
INSERT INTO `rams` VALUES (75, 'MXJ7L-447MKT-JV9KW', 1, 19, 1, 80, '1', '2020-11-11 13:55:21', '2020-11-11 13:55:21');
INSERT INTO `rams` VALUES (76, 'OKL5I-C9UPSF', 1, 19, 1, 81, '1', '2020-11-11 14:04:45', '2020-11-11 14:04:45');
INSERT INTO `rams` VALUES (77, 'MJL26-L9JMFF-4WABF', 1, 19, 1, 84, '1', '2020-11-11 14:20:58', '2020-11-11 14:20:58');
INSERT INTO `rams` VALUES (78, '53LX4R9DP23TW9AB', 2, 33, 1, 82, '1', '2020-11-11 14:24:26', '2020-11-11 14:24:26');
INSERT INTO `rams` VALUES (79, 'DPABC74008', 1, 19, 1, 85, '1', '2020-11-11 14:31:56', '2020-11-11 14:31:56');
INSERT INTO `rams` VALUES (80, '5ULN1-C9EMYD-7W56F', 1, 19, 1, 83, '1', '2020-11-11 14:34:10', '2020-11-11 14:34:10');
INSERT INTO `rams` VALUES (81, 'MT8JF256', 1, 19, 1, 85, '1', '2020-11-11 14:34:17', '2020-11-11 14:34:17');
INSERT INTO `rams` VALUES (82, 'KN2GB0H00914983PC7M800', 1, 27, 1, 86, '1', '2020-11-11 14:58:01', '2020-11-11 14:58:01');
INSERT INTO `rams` VALUES (83, 'SN', 3, 27, 1, 88, '1', '2020-11-11 15:09:02', '2020-11-11 15:09:02');
INSERT INTO `rams` VALUES (84, 'SN', 3, 27, 1, 88, '1', '2020-11-11 15:35:35', '2020-11-11 15:35:35');
INSERT INTO `rams` VALUES (85, '6IYL77-L97PYF-EWM46', 3, 33, 1, 71, '1', '2020-11-11 15:36:35', '2020-11-11 15:36:35');
INSERT INTO `rams` VALUES (86, 'QVLCA-59KPTQ-0WQ66', 1, 19, 1, 90, '1', '2020-11-11 16:15:13', '2020-11-11 16:15:13');
INSERT INTO `rams` VALUES (87, 'KN46B0702245235BFML00', 2, 19, 1, 89, '1', '2020-11-11 16:18:51', '2020-11-11 16:18:51');
INSERT INTO `rams` VALUES (88, '9U508-C9HPXE-HV991', 1, 19, 1, 87, '1', '2020-11-11 17:18:34', '2020-11-11 17:18:34');
INSERT INTO `rams` VALUES (89, '696762-1939', 2, 12, 1, 94, '1', '2020-11-11 19:13:04', '2020-11-11 19:13:04');
INSERT INTO `rams` VALUES (90, 'M378B5773QBOCKD', 1, 38, 1, 91, '1', '2020-11-11 19:22:25', '2020-11-11 19:22:25');
INSERT INTO `rams` VALUES (91, 'HMT451V6PFR8A', 2, 39, 1, 92, '1', '2020-11-11 20:03:11', '2020-11-11 20:03:11');
INSERT INTO `rams` VALUES (92, '9905402-666-A00LF', 2, 57, 1, 95, '1', '2020-11-12 09:57:34', '2020-11-12 09:57:34');
INSERT INTO `rams` VALUES (93, 'KN2GB0400914987278M800', 1, 27, 1, 96, '1', '2020-11-12 10:05:51', '2020-11-12 10:05:51');
INSERT INTO `rams` VALUES (94, '0H00914987267M800', 1, 27, 1, 97, '1', '2020-11-12 10:43:10', '2020-11-12 10:43:10');
INSERT INTO `rams` VALUES (95, 'F4LPW-V93M4H-BWILB', 1, 19, 1, 99, '1', '2020-11-12 11:17:57', '2020-11-12 11:17:57');
INSERT INTO `rams` VALUES (96, '4PJE9-W9ADM0-TV9MF', 3, 57, 1, 100, '1', '2020-11-12 14:13:24', '2020-11-12 14:13:24');
INSERT INTO `rams` VALUES (97, 'HMT451V6BFR8A', 2, 25, 1, 101, '1', '2020-11-12 15:44:07', '2020-11-12 15:44:07');
INSERT INTO `rams` VALUES (98, '4058D58A', 2, 25, 1, 101, '1', '2020-11-12 15:44:47', '2020-11-12 15:44:47');
INSERT INTO `rams` VALUES (99, '330927', 2, 55, 1, 102, '1', '2020-11-13 08:18:04', '2020-11-13 08:18:04');
INSERT INTO `rams` VALUES (100, '11S111009008MCD472916012', 1, 38, 1, 103, '1', '2020-11-13 08:42:58', '2020-11-13 08:42:58');
INSERT INTO `rams` VALUES (101, '11S11100908MCD4472917645', 1, 38, 1, 103, '1', '2020-11-13 08:44:16', '2020-11-13 08:44:16');
INSERT INTO `rams` VALUES (102, 'KN26B0H009145797E', 1, 27, 1, 104, '1', '2020-11-13 08:46:01', '2020-11-13 08:46:01');
INSERT INTO `rams` VALUES (103, '0H009145797E1', 1, 19, 1, 104, '1', '2020-11-13 08:46:49', '2020-11-13 08:46:49');
INSERT INTO `rams` VALUES (104, 'WYL4P-1P6CAW-HX4AB', 1, 19, 1, 105, '1', '2020-11-13 09:15:20', '2020-11-13 09:15:20');
INSERT INTO `rams` VALUES (105, '30321919', 2, 25, 1, 98, '1', '2020-11-13 09:21:17', '2020-11-13 09:21:17');
INSERT INTO `rams` VALUES (106, 'MT8JTF25664AZ-164M1', 1, 44, 1, 106, '1', '2020-11-13 09:39:39', '2020-11-13 09:39:39');
INSERT INTO `rams` VALUES (107, '52LNWP9WPENCWXCD', 2, 57, 1, 107, '1', '2020-11-13 09:58:28', '2020-11-13 09:58:28');
INSERT INTO `rams` VALUES (108, 'PVLB6-490P0C-WW4FT', 2, 57, 1, 108, '1', '2020-11-13 10:00:12', '2020-11-13 10:00:12');
INSERT INTO `rams` VALUES (109, 'VULRY-J9KPOW-1WV56', 1, 19, 1, 109, '1', '2020-11-13 10:28:55', '2020-11-13 10:28:55');
INSERT INTO `rams` VALUES (110, 'P2L4-D9JPDQ-EWU96', 2, 57, 1, 110, '1', '2020-11-13 10:37:31', '2020-11-13 10:37:31');
INSERT INTO `rams` VALUES (111, '1A5002540294', 1, 52, 3, 111, '1', '2020-11-13 10:50:20', '2020-11-13 10:50:20');
INSERT INTO `rams` VALUES (112, 'KRV24417SS6', 2, 19, 1, 112, '1', '2020-11-13 10:54:01', '2020-11-13 10:54:01');
INSERT INTO `rams` VALUES (113, 'CT464DF58213C8FBD2', 2, 55, 1, 93, '1', '2020-11-13 10:56:48', '2020-11-13 10:56:48');
INSERT INTO `rams` VALUES (114, 'KVR13NS56/2', 1, 19, 1, 114, '1', '2020-11-13 11:10:30', '2020-11-13 11:10:30');
INSERT INTO `rams` VALUES (115, '4MLH-T9RP24-QWTHF', 1, 21, 1, 113, '1', '2020-11-13 11:15:10', '2020-11-13 11:15:10');
INSERT INTO `rams` VALUES (116, '696762-1941', 2, 65, 1, 115, '1', '2020-11-13 11:19:47', '2020-11-13 11:19:47');
INSERT INTO `rams` VALUES (117, '2QLRB-H9QPQV', 1, 19, 4, 116, '1', '2020-11-13 11:24:19', '2020-11-13 11:24:19');
INSERT INTO `rams` VALUES (118, 'GU502203EP0201-1', 3, 27, 1, 117, '1', '2020-11-13 11:35:51', '2020-11-13 11:35:51');
INSERT INTO `rams` VALUES (119, '3THLQ-M90POW', 1, 19, 1, 119, '1', '2020-11-13 11:38:37', '2020-11-13 11:38:37');
INSERT INTO `rams` VALUES (120, '26L55498P894WMHD', 1, 19, 1, 118, '1', '2020-11-13 11:41:59', '2020-11-13 11:41:59');
INSERT INTO `rams` VALUES (121, 'GU502203EP0201-2', 3, 27, 1, 117, '1', '2020-11-13 11:44:03', '2020-11-13 11:44:03');
INSERT INTO `rams` VALUES (122, 'KVR13N956/V6J56-99YP0A-P001271', 1, 19, 1, 120, '1', '2020-11-13 11:49:15', '2020-11-13 11:49:15');
INSERT INTO `rams` VALUES (123, 'MT8JTF25664AZ', 1, 44, 1, 121, '1', '2020-11-13 11:54:40', '2020-11-13 11:54:40');
INSERT INTO `rams` VALUES (124, 'KNZ6B0H0091457A22FM800', 2, 27, 1, 124, '1', '2020-11-13 12:12:15', '2020-11-13 12:12:15');
INSERT INTO `rams` VALUES (125, 'P001016', 1, 19, 1, 123, '1', '2020-11-13 13:06:49', '2020-11-13 13:06:49');
INSERT INTO `rams` VALUES (126, 'LH02-C9XPTN-IW5PF', 3, 57, 1, 126, '1', '2020-11-13 13:10:49', '2020-11-13 13:10:49');
INSERT INTO `rams` VALUES (127, '3QJWU-09MMRY-CV9NQ', 1, 19, 1, 122, '1', '2020-11-13 13:17:15', '2020-11-13 13:17:15');
INSERT INTO `rams` VALUES (128, 'P000620', 1, 19, 4, 127, '1', '2020-11-13 13:39:22', '2020-11-13 13:39:22');
INSERT INTO `rams` VALUES (129, 'P00684', 1, 19, 4, 129, '1', '2020-11-13 14:00:50', '2020-11-13 14:00:50');
INSERT INTO `rams` VALUES (130, 'KVR13NP56', 1, 19, 1, 128, '1', '2020-11-13 14:06:45', '2020-11-13 14:06:45');
INSERT INTO `rams` VALUES (131, '696762-1988', 2, 65, 2, 130, '1', '2020-11-13 14:19:44', '2020-11-13 14:19:44');
INSERT INTO `rams` VALUES (132, 'VBJN939MDRW9AC', 1, 19, 1, 131, '1', '2020-11-13 14:24:01', '2020-11-13 14:24:01');
INSERT INTO `rams` VALUES (133, '4D25M-N9UCX6-XWN3F', 1, 19, 1, 132, '1', '2020-11-13 14:33:37', '2020-11-13 14:33:37');
INSERT INTO `rams` VALUES (134, 'FFJLM-998MKK-VV9YW', 1, 19, 1, 125, '1', '2020-11-13 14:39:01', '2020-11-13 14:39:01');
INSERT INTO `rams` VALUES (135, 'MMCPY-E9DPM-AWXVB', 1, 19, 1, 134, '1', '2020-11-13 14:44:59', '2020-11-13 14:44:59');
INSERT INTO `rams` VALUES (136, 'E9LPJ-39APBB-XWPBB', 1, 19, 1, 133, '1', '2020-11-13 14:58:21', '2020-11-13 14:58:21');
INSERT INTO `rams` VALUES (137, 'YKJ7X-490P8A-AV9LL', 2, 19, 1, 135, '1', '2020-11-13 15:10:54', '2020-11-13 15:10:54');
INSERT INTO `rams` VALUES (138, 'KVR667D2N5', 1, 19, 3, 137, '1', '2020-11-13 15:17:19', '2020-11-13 15:17:19');
INSERT INTO `rams` VALUES (139, 'H0J4N-FPXC4Q-7XV10', 1, 19, 1, 138, '1', '2020-11-16 08:58:44', '2020-11-16 08:58:44');
INSERT INTO `rams` VALUES (140, 'ORLHM-TP6C7J-EXLTF', 1, 19, 1, 138, '1', '2020-11-16 08:59:51', '2020-11-16 08:59:51');
INSERT INTO `rams` VALUES (141, 'TBL7C-79PP36-YWEQF', 2, 57, 1, 136, '1', '2020-11-16 09:22:27', '2020-11-16 09:22:27');
INSERT INTO `rams` VALUES (142, 'M7L9N-J9WPFE-JWJ2B', 1, 19, 1, 139, '1', '2020-11-16 09:28:02', '2020-11-16 09:30:26');
INSERT INTO `rams` VALUES (143, '61200260906', 1, 52, 3, 140, '1', '2020-11-16 09:55:09', '2020-11-18 10:45:10');
INSERT INTO `rams` VALUES (144, 'KN46B0702245235629ML00', 1, 19, 1, 141, '1', '2020-11-16 10:11:19', '2020-11-16 10:11:19');
INSERT INTO `rams` VALUES (145, 'YLLBJ-E96C14-3WR3F', 1, 19, 1, 142, '1', '2020-11-16 10:36:34', '2020-11-16 10:36:34');
INSERT INTO `rams` VALUES (146, 'KN26B0H0091500075CE9200', 1, 42, 1, 51, '1', '2020-11-16 10:46:02', '2020-11-16 10:46:02');
INSERT INTO `rams` VALUES (147, '6TLHV-09XPHU-LWPM6', 2, 19, 1, 143, '1', '2020-11-16 11:46:32', '2020-11-16 11:46:32');
INSERT INTO `rams` VALUES (148, 'KRJK4Y94CVY-1V9X0', 1, 19, 1, 53, '1', '2020-11-16 11:55:14', '2020-11-16 11:55:14');
INSERT INTO `rams` VALUES (149, 'LELWYP98PNNHWFL2', 1, 19, 1, 151, '1', '2020-11-16 13:57:45', '2020-11-16 13:57:45');
INSERT INTO `rams` VALUES (150, 'DPABCZ4008', 1, 19, 1, 152, '1', '2020-11-16 14:32:28', '2020-11-16 14:32:28');
INSERT INTO `rams` VALUES (151, 'XXLMH-A93PBU-UWYE6', 1, 19, 1, 153, '1', '2020-11-18 08:49:31', '2020-11-18 08:49:31');
INSERT INTO `rams` VALUES (152, 'DPABC25020', 1, 44, 1, 154, '1', '2020-11-18 08:59:55', '2020-11-18 08:59:55');
INSERT INTO `rams` VALUES (153, 'GQLON-K94PXM-4W99B', 1, 19, 1, 155, '1', '2020-11-18 09:19:01', '2020-11-18 09:19:01');
INSERT INTO `rams` VALUES (154, '80J9D-A9WPPT-UV9WT', 1, 19, 1, 156, '1', '2020-11-18 10:15:03', '2020-11-18 10:15:03');
INSERT INTO `rams` VALUES (155, 'XPLAFH99PM75WDJ6', 1, 19, 3, 150, '1', '2020-11-18 15:17:03', '2020-11-18 15:17:03');
INSERT INTO `rams` VALUES (156, 'YJLUHC9JPCNPWP76', 2, 33, 1, 149, '1', '2020-11-18 15:31:16', '2020-11-18 15:31:16');
INSERT INTO `rams` VALUES (157, 'BULHF-99NVB-9WBAF', 1, 19, 1, 157, '1', '2020-11-19 08:02:21', '2020-11-19 08:02:21');
INSERT INTO `rams` VALUES (158, '9HLKF-J95PU66-QW3KB', 2, 33, 1, 158, '1', '2020-11-19 09:01:23', '2020-11-19 09:01:23');
INSERT INTO `rams` VALUES (159, '7JJN7-691PKT-CV995', 2, 57, 1, 159, '1', '2020-11-19 11:35:42', '2020-11-19 11:35:42');
INSERT INTO `rams` VALUES (160, 'SN', 3, 27, 3, 160, '1', '2020-11-19 15:05:18', '2020-11-19 15:05:18');
INSERT INTO `rams` VALUES (161, 'KN26GB0H00915007499200', 1, 27, 3, 161, '1', '2020-11-19 15:54:45', '2020-11-19 15:54:45');
INSERT INTO `rams` VALUES (162, 'ACJX5-N90PNA-RV98Q', 1, 19, 1, 162, '1', '2020-11-19 16:10:57', '2020-11-19 16:10:57');
INSERT INTO `rams` VALUES (163, '3NLT6-89EP85-NW77M', 1, 19, 1, 163, '1', '2020-11-20 08:22:42', '2020-11-20 08:22:42');
INSERT INTO `rams` VALUES (164, 'MT16VDDT3264A6', 4, 44, 3, 164, '1', '2020-11-20 08:44:47', '2020-11-20 08:44:47');
INSERT INTO `rams` VALUES (165, 'CPLJ4N9WPLN0WX4F', 1, 19, 1, 148, '1', '2020-11-20 09:20:04', '2020-11-20 09:20:04');
INSERT INTO `rams` VALUES (166, '2PLQY-F9NP9L-9WMBF', 1, 19, 1, 165, '1', '2020-11-20 09:46:16', '2020-11-20 09:46:16');
INSERT INTO `rams` VALUES (167, 'ETJMTV9RMQ4UV9VH', 2, 19, 1, 147, '1', '2020-11-20 09:54:24', '2020-11-20 09:54:24');
INSERT INTO `rams` VALUES (168, 'KN2GB0H009149880E4M800', 1, 27, 1, 146, '1', '2020-11-20 11:00:19', '2020-11-20 11:00:19');
INSERT INTO `rams` VALUES (169, 'YKLVDJ92PDCUW37B', 1, 19, 1, 166, '1', '2020-11-20 11:16:43', '2020-11-20 11:16:43');
INSERT INTO `rams` VALUES (170, 'DNL22591P9YKW1W8', 1, 19, 1, 167, '1', '2020-11-20 11:37:34', '2020-11-20 11:37:34');
INSERT INTO `rams` VALUES (171, 'W3TT9-19VM4C-LV9VN', 1, 19, 1, 144, '1', '2020-11-20 11:43:31', '2020-11-20 11:43:31');
INSERT INTO `rams` VALUES (172, 'MT8JF25664AZ-964M1', 1, 44, 1, 145, '1', '2020-11-20 12:03:28', '2020-11-20 12:03:28');
INSERT INTO `rams` VALUES (173, 'KN4GB0702245235BF7', 2, 19, 1, 168, '1', '2020-11-20 13:42:20', '2020-11-20 13:42:20');
INSERT INTO `rams` VALUES (174, 'L8Y0L93P6WKLTB', 1, 19, 1, 169, '1', '2020-11-24 08:33:49', '2020-11-24 08:33:49');
INSERT INTO `rams` VALUES (175, 'DPABCZ5020', 1, 44, 1, 170, '1', '2020-11-24 13:37:55', '2020-11-24 13:37:55');
INSERT INTO `rams` VALUES (176, 'HMT451U6BTR8A', 2, 19, 1, 171, '1', '2020-11-24 14:07:44', '2020-11-24 14:07:44');
INSERT INTO `rams` VALUES (177, 'GVR333N9', 1, 19, 3, 172, '1', '2020-11-24 14:22:30', '2020-11-24 14:22:30');
INSERT INTO `rams` VALUES (178, 'GU502203EP', 1, 27, 1, 173, '1', '2020-11-24 14:34:46', '2020-11-24 14:34:46');
INSERT INTO `rams` VALUES (179, '0H00914984E25480', 2, 19, 1, 174, '1', '2020-11-24 14:57:36', '2020-11-24 14:57:36');
INSERT INTO `rams` VALUES (180, 'KBAJEV9XPN2XV9VF', 1, 19, 1, 175, '1', '2020-11-24 15:08:00', '2020-11-24 15:08:00');
INSERT INTO `rams` VALUES (181, 'KM26BOH0091418', 1, 19, 1, 176, '1', '2020-11-30 08:24:16', '2020-11-30 08:24:16');
INSERT INTO `rams` VALUES (182, 'SN', 3, 21, 4, 177, '1', '2020-11-30 15:17:00', '2020-11-30 15:17:00');

-- ----------------------------
-- Table structure for ratons
-- ----------------------------
DROP TABLE IF EXISTS `ratons`;
CREATE TABLE `ratons`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_conector_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ratons_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `ratons_nm_conector_id_foreign`(`nm_conector_id`) USING BTREE,
  INDEX `ratons_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `ratons_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ratons_nm_conector_id_foreign` FOREIGN KEY (`nm_conector_id`) REFERENCES `nm_conectors` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ratons_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ratons
-- ----------------------------
INSERT INTO `ratons` VALUES (1, 'MS112000881430035K701', '224188', 15, 1, 8, '1', '2020-09-03 17:06:04', '2020-09-03 17:06:29');
INSERT INTO `ratons` VALUES (2, 'SN', '228722', 21, 1, 9, '1', '2020-09-03 19:57:59', '2020-09-03 19:58:31');
INSERT INTO `ratons` VALUES (3, 'SN', '225016', 15, 1, 10, '1', '2020-09-04 15:11:40', '2020-09-04 15:11:40');
INSERT INTO `ratons` VALUES (4, 'LZ033HR0657', '228190', 15, 1, 11, '1', '2020-09-04 15:46:33', '2020-09-04 15:46:33');
INSERT INTO `ratons` VALUES (5, 'SN', '231400', 15, 1, 12, '1', '2020-09-04 15:52:39', '2020-09-04 15:52:39');
INSERT INTO `ratons` VALUES (6, '44903438K701', '231171', 15, 1, 13, '1', '2020-09-04 17:55:23', '2020-09-04 17:55:23');
INSERT INTO `ratons` VALUES (7, 'IMBT094111406110', '231184', 36, 1, 14, '1', '2020-09-04 18:23:53', '2020-09-04 18:24:14');
INSERT INTO `ratons` VALUES (8, '44754', 'sn', 3, 1, 15, '1', '2020-09-07 11:54:54', '2020-09-07 11:54:54');
INSERT INTO `ratons` VALUES (9, 'MS1120008814300BCCK701', '225019', 15, 1, 16, '1', '2020-09-07 12:12:34', '2020-09-07 12:12:34');
INSERT INTO `ratons` VALUES (10, 'HS829120HEZ', '218927', 8, 2, 17, '1', '2020-09-07 12:48:14', '2020-09-07 12:48:14');
INSERT INTO `ratons` VALUES (11, 'MS1120008814300D75K701', '224996', 15, 1, 18, '1', '2020-09-07 13:19:42', '2020-09-07 13:19:42');
INSERT INTO `ratons` VALUES (12, 'MS1120008814300CBCK701', '224997', 15, 1, 19, '1', '2020-09-07 14:10:23', '2020-09-07 14:10:23');
INSERT INTO `ratons` VALUES (13, '633023', '219467', 35, 1, 20, '1', '2020-09-07 14:35:11', '2020-09-07 14:35:11');
INSERT INTO `ratons` VALUES (14, 'LZ033HR066B', '222188', 15, 1, 22, '1', '2020-09-07 14:54:41', '2020-09-07 14:54:41');
INSERT INTO `ratons` VALUES (15, 'HS727HB', 'sn', 8, 1, 21, '1', '2020-09-07 15:04:54', '2020-09-07 15:04:54');
INSERT INTO `ratons` VALUES (16, 'SN', '222154', 15, 1, 23, '1', '2020-09-07 15:41:52', '2020-09-07 15:41:52');
INSERT INTO `ratons` VALUES (17, '810-022182', '104809', 8, 1, 24, '1', '2020-09-07 16:17:28', '2020-09-07 16:17:28');
INSERT INTO `ratons` VALUES (18, 'MS11200088143015DDK701', 'sn', 21, 1, 34, '1', '2020-09-08 15:36:42', '2020-09-08 15:36:42');
INSERT INTO `ratons` VALUES (19, '012503', '228341', 13, 1, 40, '1', '2020-09-08 16:16:21', '2020-09-08 16:16:21');
INSERT INTO `ratons` VALUES (20, 'CN09RRC74475123E', '224698', 3, 1, 39, '1', '2020-09-08 16:59:11', '2020-09-08 16:59:11');
INSERT INTO `ratons` VALUES (21, '021236060AC00252', '222327', 49, 1, 38, '1', '2020-09-09 16:29:37', '2020-09-09 16:29:37');
INSERT INTO `ratons` VALUES (22, 'DC1121100933400422H502', '229338', 15, 1, 37, '1', '2020-09-10 14:11:12', '2020-09-10 14:11:12');
INSERT INTO `ratons` VALUES (23, '02236060AC01904', '222359', 49, 1, 36, '1', '2020-09-10 15:30:34', '2020-09-10 15:30:34');
INSERT INTO `ratons` VALUES (24, 'LZ033HR00W8', '224988', 15, 1, 33, '1', '2020-09-10 16:12:03', '2020-09-10 16:12:03');
INSERT INTO `ratons` VALUES (25, 'MS1120008814300BBBK701', 'n/s', 15, 1, 32, '1', '2020-09-11 14:57:18', '2020-09-11 14:57:18');
INSERT INTO `ratons` VALUES (26, '44935ADK701', '231408', 15, 1, 31, '1', '2020-09-14 13:28:07', '2020-09-14 13:28:07');
INSERT INTO `ratons` VALUES (27, 'N/S', '2222861', 8, 2, 30, '1', '2020-09-23 12:19:49', '2020-09-23 12:19:49');
INSERT INTO `ratons` VALUES (28, 'S/N', 's/inv', 8, 2, 54, '1', '2020-09-23 12:23:28', '2020-09-23 12:23:28');
INSERT INTO `ratons` VALUES (29, 'JMBT014111406126', '231186', 36, 1, 29, '1', '2020-09-23 13:01:35', '2020-09-23 13:01:35');
INSERT INTO `ratons` VALUES (30, 'S/N', '1048120', 8, 1, 55, '1', '2020-09-23 13:32:55', '2020-09-23 13:32:55');
INSERT INTO `ratons` VALUES (31, 'N/S', '225496', 31, 2, 28, '1', '2020-09-23 14:49:46', '2020-09-23 14:49:46');
INSERT INTO `ratons` VALUES (32, '201210', '228747', 39, 1, 26, '1', '2020-09-23 15:42:59', '2020-09-23 15:42:59');
INSERT INTO `ratons` VALUES (33, '1506HS02M138', '230313', 8, 1, 35, '1', '2020-09-23 16:12:25', '2020-09-23 16:12:25');
INSERT INTO `ratons` VALUES (34, '021236060AC13506', '222349', 49, 1, 56, '1', '2020-09-24 11:54:15', '2020-09-24 11:54:15');
INSERT INTO `ratons` VALUES (35, 'HS646HB', '1048090', 8, 1, 59, '1', '2020-09-24 13:03:04', '2020-09-24 13:03:04');
INSERT INTO `ratons` VALUES (36, '2008010128862', '219434', 21, 1, 60, '1', '2020-09-24 13:46:36', '2020-09-24 13:46:36');
INSERT INTO `ratons` VALUES (37, '810002182', '1047691', 8, 1, 57, '1', '2020-09-24 14:33:46', '2020-09-24 14:33:46');
INSERT INTO `ratons` VALUES (38, 'HC7350304MA', 'SN', 8, 1, 61, '1', '2020-09-24 15:28:09', '2020-09-24 15:28:09');
INSERT INTO `ratons` VALUES (39, '810-002182', '225516', 8, 1, 50, '1', '2020-09-25 13:29:41', '2020-09-25 13:29:41');
INSERT INTO `ratons` VALUES (40, 'S/N', '228702', 39, 1, 49, '1', '2020-09-25 14:04:31', '2020-09-25 14:04:31');
INSERT INTO `ratons` VALUES (41, 'MSII20008814B00C5FK701', '230311', 61, 1, 62, '1', '2020-09-25 14:17:35', '2020-09-25 14:17:35');
INSERT INTO `ratons` VALUES (42, 'MS1120008814300BC7K701', '224980', 21, 1, 63, '1', '2020-09-25 15:27:03', '2020-09-25 15:27:03');
INSERT INTO `ratons` VALUES (44, 'N/S', '230156', 8, 1, 48, '1', '2020-09-25 15:46:21', '2020-09-25 15:46:21');
INSERT INTO `ratons` VALUES (45, '021236060AC1908', '222353', 49, 1, 64, '1', '2020-09-25 16:19:42', '2020-09-25 16:19:42');
INSERT INTO `ratons` VALUES (46, 'N/S', '224991', 31, 2, 45, '1', '2020-09-28 14:04:15', '2020-09-28 14:04:15');
INSERT INTO `ratons` VALUES (47, '021236060AC01908', '222353', 49, 1, 65, '1', '2020-09-29 13:15:27', '2020-09-29 13:15:27');
INSERT INTO `ratons` VALUES (48, 'N/S', '219400', 15, 2, 44, '1', '2020-09-29 15:14:16', '2020-09-29 15:14:16');
INSERT INTO `ratons` VALUES (49, '201210', '225525', 39, 1, 43, '1', '2020-09-30 12:46:07', '2020-09-30 12:46:21');
INSERT INTO `ratons` VALUES (50, 'H5430H13', '228660', 8, 1, 42, '1', '2020-09-30 13:07:57', '2020-09-30 13:07:57');
INSERT INTO `ratons` VALUES (51, 'H5646HB', '1048098', 8, 1, 66, '1', '2020-09-30 14:20:54', '2020-09-30 14:20:54');
INSERT INTO `ratons` VALUES (52, '44D95ABU701', '231403', 15, 1, 67, '1', '2020-09-30 15:15:47', '2020-09-30 15:15:47');
INSERT INTO `ratons` VALUES (53, 'HS728HB', 'SN', 8, 1, 68, '1', '2020-10-01 12:13:47', '2020-10-01 12:13:47');
INSERT INTO `ratons` VALUES (54, 'HS829120D64', '219433', 8, 2, 69, '1', '2020-10-02 16:00:34', '2020-10-02 16:00:34');
INSERT INTO `ratons` VALUES (55, 'HS717HB', '1048112', 8, 1, 73, '1', '2020-11-10 15:49:00', '2020-11-10 15:49:00');
INSERT INTO `ratons` VALUES (56, 'F0E030UI', '225018', 3, 1, 72, '1', '2020-11-10 16:35:37', '2020-11-10 16:35:37');
INSERT INTO `ratons` VALUES (57, 'SIN #', '231069', 8, 1, 74, '1', '2020-11-10 19:12:37', '2020-11-10 19:12:37');
INSERT INTO `ratons` VALUES (58, 'LZ033HHR0677', '5046', 21, 1, 75, '1', '2020-11-10 21:19:17', '2020-11-10 21:19:17');
INSERT INTO `ratons` VALUES (59, 'SN', '232048', 21, 1, 76, '1', '2020-11-11 13:24:18', '2020-11-11 13:24:18');
INSERT INTO `ratons` VALUES (60, '810-002182', '1048096', 8, 1, 77, '1', '2020-11-11 13:35:53', '2020-11-11 13:35:53');
INSERT INTO `ratons` VALUES (61, 'CN-09RRC7-44751-23C-0HQV', '224706', 3, 1, 78, '1', '2020-11-11 13:50:58', '2020-11-11 13:50:58');
INSERT INTO `ratons` VALUES (62, 'SIN #', 'sin #', 8, 1, 80, '1', '2020-11-11 13:59:59', '2020-11-11 13:59:59');
INSERT INTO `ratons` VALUES (63, '44751-23C-0HQJ', '224696', 3, 1, 79, '1', '2020-11-11 14:02:27', '2020-11-11 14:02:27');
INSERT INTO `ratons` VALUES (64, 'SN', '227814', 3, 1, 81, '1', '2020-11-11 14:08:05', '2020-11-11 14:08:05');
INSERT INTO `ratons` VALUES (65, '810-002182', '1048097', 8, 1, 84, '1', '2020-11-11 14:27:46', '2020-11-11 14:27:46');
INSERT INTO `ratons` VALUES (66, 'SN', '224700', 3, 1, 85, '1', '2020-11-11 14:33:16', '2020-11-11 14:33:16');
INSERT INTO `ratons` VALUES (67, 'X77205302305', '225454', 31, 2, 83, '1', '2020-11-11 14:42:26', '2020-11-11 14:42:26');
INSERT INTO `ratons` VALUES (68, 'MS1120008814300BD6K701', '225522', 21, 1, 86, '1', '2020-11-11 15:03:25', '2020-11-11 15:03:25');
INSERT INTO `ratons` VALUES (69, 'LZ033HR00WJ', '222180', 15, 1, 88, '1', '2020-11-11 15:25:25', '2020-11-11 15:25:25');
INSERT INTO `ratons` VALUES (70, '810001861', '225017', 8, 1, 82, '1', '2020-11-11 15:35:41', '2020-11-11 15:35:41');
INSERT INTO `ratons` VALUES (71, 'MS1120008814300CC9K701', '228426', 15, 1, 71, '1', '2020-11-11 15:53:32', '2020-11-11 15:53:32');
INSERT INTO `ratons` VALUES (72, 'SN', '219780', 8, 1, 90, '1', '2020-11-11 16:20:34', '2020-11-11 16:20:34');
INSERT INTO `ratons` VALUES (73, 'DC11211007', '231397', 15, 1, 89, '1', '2020-11-11 16:23:59', '2020-11-11 16:23:59');
INSERT INTO `ratons` VALUES (74, '810-001861', '231174', 8, 1, 94, '1', '2020-11-11 19:20:35', '2020-11-11 19:20:35');
INSERT INTO `ratons` VALUES (75, '04443', '229336', 13, 1, 91, '1', '2020-11-11 19:28:35', '2020-11-11 19:28:35');
INSERT INTO `ratons` VALUES (76, '001211907', 'sin #', 15, 1, 92, '1', '2020-11-11 20:10:04', '2020-11-11 20:10:04');
INSERT INTO `ratons` VALUES (77, 'ICES-003', '225515', 21, 1, 96, '1', '2020-11-12 10:16:00', '2020-11-12 10:16:00');
INSERT INTO `ratons` VALUES (78, 'SIN #', '219003', 8, 2, 97, '1', '2020-11-12 11:02:10', '2020-11-12 11:02:10');
INSERT INTO `ratons` VALUES (79, 'LZ8260L0FC6', '219788', 3, 2, 99, '1', '2020-11-12 13:41:32', '2020-11-12 13:41:32');
INSERT INTO `ratons` VALUES (80, 'X77205302380', '225503', 31, 1, 100, '1', '2020-11-12 14:15:32', '2020-11-12 14:15:32');
INSERT INTO `ratons` VALUES (81, '4320392DK701', '229453', 15, 1, 101, '1', '2020-11-12 16:01:00', '2020-11-12 16:01:00');
INSERT INTO `ratons` VALUES (82, 'SIN #', '218286', 21, 2, 102, '1', '2020-11-13 08:24:46', '2020-11-13 08:24:46');
INSERT INTO `ratons` VALUES (83, '018303', '229341', 13, 1, 103, '1', '2020-11-13 08:51:01', '2020-11-13 08:51:01');
INSERT INTO `ratons` VALUES (84, 'MS11200008814300CCKF701', '225020', 15, 1, 104, '1', '2020-11-13 09:04:48', '2020-11-13 09:04:48');
INSERT INTO `ratons` VALUES (85, 'SIN #', '219138', 35, 2, 105, '1', '2020-11-13 09:29:18', '2020-11-13 09:29:18');
INSERT INTO `ratons` VALUES (86, 'CN09RRC74475123FOXH3', '224701', 3, 1, 106, '1', '2020-11-13 09:44:00', '2020-11-13 09:44:00');
INSERT INTO `ratons` VALUES (87, 'F0C020A', '219140', 3, 1, 108, '1', '2020-11-13 10:07:31', '2020-11-13 10:07:31');
INSERT INTO `ratons` VALUES (88, '060804299', '230164', 76, 1, 107, '1', '2020-11-13 10:16:53', '2020-11-13 10:18:07');
INSERT INTO `ratons` VALUES (89, '0212360660AC01945', 'sin #', 49, 1, 110, '1', '2020-11-13 10:48:59', '2020-11-13 10:48:59');
INSERT INTO `ratons` VALUES (90, 'X77205302321', '225526', 31, 1, 109, '1', '2020-11-13 10:50:35', '2020-11-13 10:50:35');
INSERT INTO `ratons` VALUES (91, '7887227E', '212442', 8, 1, 112, '1', '2020-11-13 10:58:58', '2020-11-13 10:58:58');
INSERT INTO `ratons` VALUES (92, 'MO-1008B', '2302073', 21, 1, 111, '1', '2020-11-13 10:59:50', '2020-11-13 10:59:50');
INSERT INTO `ratons` VALUES (93, '810-001861', 'SN', 8, 1, 114, '1', '2020-11-13 11:14:31', '2020-11-13 11:14:31');
INSERT INTO `ratons` VALUES (94, '810-002182', '1048078', 8, 1, 113, '1', '2020-11-13 11:20:05', '2020-11-13 11:20:05');
INSERT INTO `ratons` VALUES (95, '63616042', '219460', 35, 1, 116, '1', '2020-11-13 11:28:40', '2020-11-13 11:28:40');
INSERT INTO `ratons` VALUES (96, '021236060AC13517', '222338', 49, 1, 115, '1', '2020-11-13 11:32:29', '2020-11-13 11:32:29');
INSERT INTO `ratons` VALUES (97, 'SIN#', '222198', 15, 1, 117, '1', '2020-11-13 11:41:16', '2020-11-13 11:41:16');
INSERT INTO `ratons` VALUES (98, 'SN', '228934', 39, 1, 118, '1', '2020-11-13 11:45:55', '2020-11-13 11:45:55');
INSERT INTO `ratons` VALUES (99, 'SN', 'sn', 21, 2, 119, '1', '2020-11-13 11:48:45', '2020-11-13 11:48:45');
INSERT INTO `ratons` VALUES (100, '1120008814300E82K701', '336003', 21, 1, 93, '1', '2020-11-13 11:56:39', '2020-11-13 11:56:39');
INSERT INTO `ratons` VALUES (101, 'SIN #', '219138', 21, 2, 121, '1', '2020-11-13 11:59:43', '2020-11-13 11:59:43');
INSERT INTO `ratons` VALUES (102, 'S/N', '5049', 15, 1, 120, '1', '2020-11-13 12:09:41', '2020-11-13 12:09:41');
INSERT INTO `ratons` VALUES (103, 'SIN #', '224994', 21, 1, 124, '1', '2020-11-13 12:16:00', '2020-11-13 12:16:00');
INSERT INTO `ratons` VALUES (104, 'HS646HB', '1048087', 8, 1, 123, '1', '2020-11-13 13:11:25', '2020-11-13 13:11:25');
INSERT INTO `ratons` VALUES (105, 'S/N', '5050', 8, 1, 126, '1', '2020-11-13 13:18:10', '2020-11-13 13:18:10');
INSERT INTO `ratons` VALUES (106, 'LZ936ACD7ZK', '218946', 8, 1, 122, '1', '2020-11-13 13:20:16', '2020-11-13 13:20:16');
INSERT INTO `ratons` VALUES (107, 'HS644HB', '1048102', 8, 1, 127, '1', '2020-11-13 13:44:17', '2020-11-13 13:44:17');
INSERT INTO `ratons` VALUES (108, 'HS647HB', '104801', 8, 1, 129, '1', '2020-11-13 14:08:58', '2020-11-13 14:08:58');
INSERT INTO `ratons` VALUES (109, 'S/N', '218991', 35, 1, 128, '1', '2020-11-13 14:14:10', '2020-11-13 14:14:10');
INSERT INTO `ratons` VALUES (110, '810002182', '1047664', 8, 1, 130, '1', '2020-11-13 14:23:33', '2020-11-13 14:23:33');
INSERT INTO `ratons` VALUES (111, 'HS429HB', '230125', 8, 1, 132, '1', '2020-11-13 14:35:54', '2020-11-13 14:35:54');
INSERT INTO `ratons` VALUES (112, 'LZ203HU', '224427', 8, 1, 125, '1', '2020-11-13 14:46:00', '2020-11-13 14:46:00');
INSERT INTO `ratons` VALUES (113, '8380608RF', '218558', 8, 1, 134, '1', '2020-11-13 14:47:39', '2020-11-13 14:47:39');
INSERT INTO `ratons` VALUES (114, 'S/N', '232036', 49, 1, 137, '1', '2020-11-13 15:19:52', '2020-11-13 15:19:52');
INSERT INTO `ratons` VALUES (115, '044479', '229335', 13, 1, 135, '1', '2020-11-13 15:27:58', '2020-11-13 15:27:58');
INSERT INTO `ratons` VALUES (116, '810002182', '222698', 8, 1, 138, '1', '2020-11-16 09:14:27', '2020-11-16 09:14:27');
INSERT INTO `ratons` VALUES (117, 'SIN #', 'sin #', 8, 1, 136, '1', '2020-11-16 09:31:10', '2020-11-16 09:31:10');
INSERT INTO `ratons` VALUES (118, 'HS430HB', '230150', 8, 1, 139, '1', '2020-11-16 09:32:07', '2020-11-16 09:32:07');
INSERT INTO `ratons` VALUES (119, 'HS646HB', '1048081', 8, 1, 140, '1', '2020-11-16 09:59:39', '2020-11-16 09:59:39');
INSERT INTO `ratons` VALUES (120, '449035AAK701', '23401', 15, 1, 141, '1', '2020-11-16 10:14:52', '2020-11-16 10:14:52');
INSERT INTO `ratons` VALUES (121, '1506H502MDF8', '2303180', 8, 1, 142, '1', '2020-11-16 11:12:14', '2020-11-16 11:12:14');
INSERT INTO `ratons` VALUES (122, 'IMBT014111417657', 'n/s', 36, 1, 51, '1', '2020-11-16 11:24:57', '2020-11-16 11:24:57');
INSERT INTO `ratons` VALUES (123, 'HS4430HB', '218969', 8, 1, 143, '1', '2020-11-16 11:48:17', '2020-11-16 11:48:17');
INSERT INTO `ratons` VALUES (124, 'X77205302336', '225323', 31, 1, 53, '1', '2020-11-16 11:58:41', '2020-11-16 11:58:41');
INSERT INTO `ratons` VALUES (125, '160914001', '219466', 21, 1, 152, '1', '2020-11-16 14:40:34', '2020-11-16 14:40:34');
INSERT INTO `ratons` VALUES (126, 'SN', 'sn', 21, 2, 153, '1', '2020-11-18 08:52:11', '2020-11-18 08:52:11');
INSERT INTO `ratons` VALUES (127, 'CN-09RRC7-44751-23E-OK3T', '224699', 3, 1, 154, '1', '2020-11-18 09:04:22', '2020-11-18 09:04:22');
INSERT INTO `ratons` VALUES (128, 'SN', '219013', 21, 1, 155, '1', '2020-11-18 09:30:51', '2020-11-18 09:30:51');
INSERT INTO `ratons` VALUES (129, '8100-002182', '2305110', 8, 1, 156, '1', '2020-11-18 10:18:32', '2020-11-18 10:18:32');
INSERT INTO `ratons` VALUES (130, 'N/S', '232068', 21, 1, 150, '1', '2020-11-18 15:22:10', '2020-11-18 15:22:10');
INSERT INTO `ratons` VALUES (131, 'F0C02DE9', '219101', 3, 1, 149, '1', '2020-11-18 15:37:05', '2020-11-18 15:37:05');
INSERT INTO `ratons` VALUES (132, '8380608QX', '218956', 8, 1, 157, '1', '2020-11-19 08:04:44', '2020-11-19 08:04:44');
INSERT INTO `ratons` VALUES (133, 'HS429HB', '230124', 8, 1, 158, '1', '2020-11-19 09:04:23', '2020-11-19 09:04:23');
INSERT INTO `ratons` VALUES (134, 'HS441HB', '230131', 8, 1, 159, '1', '2020-11-19 11:39:22', '2020-11-19 11:39:22');
INSERT INTO `ratons` VALUES (135, 'LZ033HR00WN', '230315', 8, 1, 160, '1', '2020-11-19 15:30:26', '2020-11-19 15:30:26');
INSERT INTO `ratons` VALUES (136, 'HS429HB', '230130', 8, 1, 162, '1', '2020-11-19 16:13:12', '2020-11-19 16:13:12');
INSERT INTO `ratons` VALUES (137, '021236060AC13507', '222341', 49, 1, 163, '1', '2020-11-20 08:27:43', '2020-11-20 08:27:43');
INSERT INTO `ratons` VALUES (138, '201210', '228720', 39, 1, 164, '1', '2020-11-20 09:02:59', '2020-11-20 09:02:59');
INSERT INTO `ratons` VALUES (139, 'IMJS011032201239', '225385', 21, 1, 148, '1', '2020-11-20 09:34:39', '2020-11-20 09:34:39');
INSERT INTO `ratons` VALUES (140, 'DC11211007', '230127', 15, 1, 165, '1', '2020-11-20 09:49:50', '2020-11-20 09:49:50');
INSERT INTO `ratons` VALUES (141, '406012518', '229340', 13, 1, 147, '1', '2020-11-20 10:10:16', '2020-11-20 10:10:16');
INSERT INTO `ratons` VALUES (142, 'MS1120008814300BCAK701', '225001', 83, 1, 146, '1', '2020-11-20 11:22:19', '2020-11-20 11:22:19');
INSERT INTO `ratons` VALUES (143, 'SN', 'sn inv', 8, 1, 166, '1', '2020-11-20 11:29:35', '2020-11-20 11:29:35');
INSERT INTO `ratons` VALUES (144, '201210', '218961', 39, 1, 167, '1', '2020-11-20 11:39:42', '2020-11-20 11:39:42');
INSERT INTO `ratons` VALUES (145, '810-002182', '224460', 8, 1, 144, '1', '2020-11-20 11:55:01', '2020-11-20 11:55:01');
INSERT INTO `ratons` VALUES (146, '09RRCT-44751-23E-0RWT', '224702', 3, 1, 145, '1', '2020-11-20 12:11:24', '2020-11-20 12:11:24');
INSERT INTO `ratons` VALUES (147, '4490358FK701', '231404', 15, 1, 168, '1', '2020-11-20 14:04:36', '2020-11-20 14:04:36');
INSERT INTO `ratons` VALUES (148, '810002182', '1d48110', 8, 1, 169, '1', '2020-11-24 08:39:02', '2020-11-24 08:39:02');
INSERT INTO `ratons` VALUES (149, '810002186', '1050029', 8, 1, 170, '1', '2020-11-24 13:39:27', '2020-11-24 13:39:27');
INSERT INTO `ratons` VALUES (150, 'SN', '221430', 15, 1, 171, '1', '2020-11-24 14:13:01', '2020-11-24 14:13:01');
INSERT INTO `ratons` VALUES (151, 'SN', 'SN', 21, 2, 172, '1', '2020-11-24 14:25:37', '2020-11-24 14:25:37');
INSERT INTO `ratons` VALUES (152, 'SN', '227196', 47, 1, 173, '1', '2020-11-24 14:39:01', '2020-11-24 14:39:01');
INSERT INTO `ratons` VALUES (153, '053735', 'SN', 8, 1, 174, '1', '2020-11-24 15:05:20', '2020-11-24 15:05:20');
INSERT INTO `ratons` VALUES (154, '201210', '228721', 39, 1, 175, '1', '2020-11-24 15:09:42', '2020-11-24 15:09:42');
INSERT INTO `ratons` VALUES (155, 'SN', '228748', 21, 1, 176, '1', '2020-11-30 08:30:18', '2020-11-30 08:30:18');
INSERT INTO `ratons` VALUES (156, 'ECO11-05-3795B', '219165', 8, 1, 177, '1', '2020-11-30 15:19:48', '2020-11-30 15:19:48');

-- ----------------------------
-- Table structure for sellos
-- ----------------------------
DROP TABLE IF EXISTS `sellos`;
CREATE TABLE `sellos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sellos_number_unique`(`number`) USING BTREE,
  INDEX `sellos_computadora_id_foreign`(`computadora_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `sellos_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sellos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sellos
-- ----------------------------
INSERT INTO `sellos` VALUES (9, 'RP0715044', 8, 1, '2020-09-03 16:08:53', '2020-09-03 16:08:53');
INSERT INTO `sellos` VALUES (10, 'RP0715046', 9, 1, '2020-09-03 18:12:15', '2020-09-03 18:12:15');
INSERT INTO `sellos` VALUES (11, 'RP0715047', 10, 1, '2020-09-04 12:19:29', '2020-09-04 12:19:29');
INSERT INTO `sellos` VALUES (12, 'RP0715305', 11, 1, '2020-09-04 15:18:06', '2020-09-04 15:18:06');
INSERT INTO `sellos` VALUES (13, 'PR0715228', 12, 1, '2020-09-04 15:25:22', '2020-09-04 15:25:22');
INSERT INTO `sellos` VALUES (14, 'RP0715128', 13, 1, '2020-09-04 15:52:20', '2020-09-04 15:52:20');
INSERT INTO `sellos` VALUES (15, 'RP0715020', 14, 1, '2020-09-04 16:15:50', '2020-09-04 16:15:50');
INSERT INTO `sellos` VALUES (16, 'RP0715231', 15, 1, '2020-09-07 11:43:37', '2020-09-07 11:43:37');
INSERT INTO `sellos` VALUES (17, 'RP0715307', 16, 1, '2020-09-07 11:59:57', '2020-09-07 11:59:57');
INSERT INTO `sellos` VALUES (18, 'RP0715306', 17, 1, '2020-09-07 12:14:37', '2020-09-07 12:14:37');
INSERT INTO `sellos` VALUES (19, 'RP0715246', 18, 1, '2020-09-07 12:59:58', '2020-09-07 12:59:58');
INSERT INTO `sellos` VALUES (20, 'RP0715245', 19, 1, '2020-09-07 13:22:48', '2020-09-07 13:22:48');
INSERT INTO `sellos` VALUES (21, 'RP0715229', 20, 1, '2020-09-07 14:14:06', '2020-09-07 14:14:06');
INSERT INTO `sellos` VALUES (22, 'RP0715085', 21, 1, '2020-09-07 14:39:24', '2020-09-07 14:39:24');
INSERT INTO `sellos` VALUES (23, 'RP0715247', 22, 1, '2020-09-07 14:40:29', '2020-09-07 14:40:29');
INSERT INTO `sellos` VALUES (24, 'RP0715010', 23, 1, '2020-09-07 15:26:35', '2020-09-07 15:26:35');
INSERT INTO `sellos` VALUES (25, 'RP0715019', 24, 1, '2020-09-07 16:06:41', '2020-09-07 16:06:41');
INSERT INTO `sellos` VALUES (26, 'RP0715041', 25, 1, '2020-09-08 13:03:57', '2020-09-08 13:03:57');
INSERT INTO `sellos` VALUES (27, 'RP0715040', 26, 1, '2020-09-08 13:08:09', '2020-09-08 13:08:09');
INSERT INTO `sellos` VALUES (28, 'RP0715034', 27, 1, '2020-09-08 13:18:04', '2020-09-08 13:18:04');
INSERT INTO `sellos` VALUES (29, 'RP0715030', 28, 1, '2020-09-08 13:25:41', '2020-09-08 13:25:41');
INSERT INTO `sellos` VALUES (30, 'RP0715083', 29, 1, '2020-09-08 13:37:40', '2020-09-08 13:37:40');
INSERT INTO `sellos` VALUES (31, 'RP0715022', 30, 1, '2020-09-08 13:43:11', '2020-09-08 13:43:11');
INSERT INTO `sellos` VALUES (32, 'RP0715023', 31, 1, '2020-09-08 13:48:18', '2020-09-08 13:48:18');
INSERT INTO `sellos` VALUES (33, 'RP0715025', 32, 1, '2020-09-08 13:53:48', '2020-09-08 13:53:48');
INSERT INTO `sellos` VALUES (34, 'RP0715027', 33, 1, '2020-09-08 13:59:05', '2020-09-08 13:59:05');
INSERT INTO `sellos` VALUES (35, 'RP0715132', 34, 1, '2020-09-08 14:16:32', '2020-09-08 14:16:32');
INSERT INTO `sellos` VALUES (36, 'RP0715012', 35, 1, '2020-09-08 14:48:23', '2020-09-08 14:48:23');
INSERT INTO `sellos` VALUES (37, 'RP0715013', 36, 1, '2020-09-08 14:51:47', '2020-09-08 14:51:47');
INSERT INTO `sellos` VALUES (38, 'RP0715015', 37, 1, '2020-09-08 14:54:29', '2020-09-08 14:54:29');
INSERT INTO `sellos` VALUES (39, 'RP0715014', 38, 1, '2020-09-08 14:55:54', '2020-09-08 14:55:54');
INSERT INTO `sellos` VALUES (40, 'RP0715017', 39, 1, '2020-09-08 14:58:06', '2020-09-08 14:58:06');
INSERT INTO `sellos` VALUES (41, 'RP0715016', 40, 1, '2020-09-08 14:59:44', '2020-09-08 14:59:44');
INSERT INTO `sellos` VALUES (42, 'RP0715131', 41, 1, '2020-09-08 15:03:08', '2020-09-08 15:03:08');
INSERT INTO `sellos` VALUES (43, 'RP0715130', 42, 1, '2020-09-08 15:05:28', '2020-09-08 15:05:28');
INSERT INTO `sellos` VALUES (44, 'RP0715123', 43, 1, '2020-09-08 15:07:16', '2020-09-08 15:07:16');
INSERT INTO `sellos` VALUES (45, 'RP0715148', 44, 1, '2020-09-08 15:08:35', '2020-09-08 15:08:35');
INSERT INTO `sellos` VALUES (46, 'RP0715147', 45, 1, '2020-09-08 15:10:25', '2020-09-08 15:10:25');
INSERT INTO `sellos` VALUES (47, 'RP0715125', 46, 1, '2020-09-08 15:13:53', '2020-09-08 15:13:53');
INSERT INTO `sellos` VALUES (48, 'RP0715122', 47, 1, '2020-09-08 15:15:25', '2020-09-08 15:15:25');
INSERT INTO `sellos` VALUES (49, 'RP0715385', 48, 1, '2020-09-08 15:17:05', '2020-09-08 15:17:05');
INSERT INTO `sellos` VALUES (50, 'RP0715386', 49, 1, '2020-09-08 15:18:36', '2020-09-08 15:18:36');
INSERT INTO `sellos` VALUES (51, 'RP0715124', 50, 1, '2020-09-08 15:20:51', '2020-09-08 15:20:51');
INSERT INTO `sellos` VALUES (52, 'RP0715048', 51, 1, '2020-09-08 15:22:47', '2020-09-08 15:22:47');
INSERT INTO `sellos` VALUES (53, 'RP0715051', 52, 1, '2020-09-08 15:24:02', '2020-09-08 15:24:02');
INSERT INTO `sellos` VALUES (54, 'RP0715050', 53, 1, '2020-09-08 15:26:24', '2020-09-08 15:26:24');
INSERT INTO `sellos` VALUES (55, 'RP0715067', 54, 1, '2020-09-23 12:02:50', '2020-09-23 12:02:50');
INSERT INTO `sellos` VALUES (56, 'RP0715066', 55, 1, '2020-09-23 12:38:32', '2020-09-23 12:38:32');
INSERT INTO `sellos` VALUES (57, 'RP0715223', 56, 1, '2020-09-24 11:47:22', '2020-09-24 11:47:22');
INSERT INTO `sellos` VALUES (58, 'RP0715057', 57, 1, '2020-09-24 12:03:05', '2020-09-24 12:03:05');
INSERT INTO `sellos` VALUES (59, 'RP0715250', 58, 1, '2020-09-24 12:06:25', '2020-09-24 12:06:25');
INSERT INTO `sellos` VALUES (60, 'RP0715321', 59, 1, '2020-09-24 12:40:42', '2020-09-24 12:40:42');
INSERT INTO `sellos` VALUES (61, 'RP0715323', 60, 1, '2020-09-24 13:18:29', '2020-09-24 13:18:29');
INSERT INTO `sellos` VALUES (62, 'RP0715328', 61, 1, '2020-09-24 14:17:33', '2020-09-24 14:17:33');
INSERT INTO `sellos` VALUES (63, 'RP0715065', 62, 1, '2020-09-24 14:58:26', '2020-09-24 14:58:26');
INSERT INTO `sellos` VALUES (64, 'RP0715322', 63, 1, '2020-09-25 13:39:25', '2020-09-25 13:39:25');
INSERT INTO `sellos` VALUES (65, 'RP0715327', 64, 1, '2020-09-25 15:38:45', '2020-09-25 15:38:45');
INSERT INTO `sellos` VALUES (66, '0618122', 65, 1, '2020-09-29 13:03:08', '2020-09-29 13:03:08');
INSERT INTO `sellos` VALUES (67, 'RP0715129', 66, 1, '2020-09-30 14:00:22', '2020-09-30 14:00:22');
INSERT INTO `sellos` VALUES (68, 'RP0715324', 67, 1, '2020-09-30 15:03:26', '2020-09-30 15:03:26');
INSERT INTO `sellos` VALUES (69, 'RP0715325', 68, 1, '2020-10-01 12:03:46', '2020-10-01 12:03:46');
INSERT INTO `sellos` VALUES (70, '0618105', 69, 1, '2020-10-01 12:24:59', '2020-10-01 12:24:59');
INSERT INTO `sellos` VALUES (71, 'SN', 70, 1, '2020-10-02 16:07:01', '2020-10-02 16:07:01');
INSERT INTO `sellos` VALUES (72, 'RP0715099', 71, 1, '2020-11-10 14:08:36', '2020-11-10 14:08:36');
INSERT INTO `sellos` VALUES (73, 'RP0715064', 72, 1, '2020-11-10 14:34:41', '2020-11-10 14:34:41');
INSERT INTO `sellos` VALUES (74, 'SIN #', 73, 1, '2020-11-10 15:39:37', '2020-11-10 15:39:37');
INSERT INTO `sellos` VALUES (75, 'RP0715101', 74, 1, '2020-11-10 16:28:42', '2020-11-10 16:28:42');
INSERT INTO `sellos` VALUES (76, 'RP0715063', 75, 1, '2020-11-10 18:15:38', '2020-11-10 18:15:38');
INSERT INTO `sellos` VALUES (77, 'RP0715309', 76, 1, '2020-11-11 13:12:36', '2020-11-11 13:12:36');
INSERT INTO `sellos` VALUES (78, 'RP0715104', 77, 1, '2020-11-11 13:21:48', '2020-11-11 13:21:48');
INSERT INTO `sellos` VALUES (79, 'RP0715320', 78, 1, '2020-11-11 13:30:09', '2020-11-11 13:30:09');
INSERT INTO `sellos` VALUES (80, 'RP0715062', 79, 1, '2020-11-11 13:31:30', '2020-11-11 13:31:30');
INSERT INTO `sellos` VALUES (81, 'RP0715105', 80, 1, '2020-11-11 13:41:50', '2020-11-11 13:41:50');
INSERT INTO `sellos` VALUES (82, 'RP015254', 81, 1, '2020-11-11 14:00:06', '2020-11-11 14:00:06');
INSERT INTO `sellos` VALUES (83, 'RP0715060', 82, 1, '2020-11-11 14:09:27', '2020-11-11 14:09:27');
INSERT INTO `sellos` VALUES (84, 'RP0715317', 83, 1, '2020-11-11 14:12:04', '2020-11-11 14:12:04');
INSERT INTO `sellos` VALUES (85, 'RP0715106', 84, 1, '2020-11-11 14:12:29', '2020-11-11 14:12:29');
INSERT INTO `sellos` VALUES (86, 'RP015225', 85, 1, '2020-11-11 14:29:30', '2020-11-11 14:29:30');
INSERT INTO `sellos` VALUES (87, 'RP0715081', 86, 1, '2020-11-11 14:36:13', '2020-11-11 14:36:13');
INSERT INTO `sellos` VALUES (88, 'RP0715249', 87, 1, '2020-11-11 14:59:39', '2020-11-11 14:59:39');
INSERT INTO `sellos` VALUES (89, '0616703', 88, 1, '2020-11-11 15:00:36', '2020-11-11 15:00:36');
INSERT INTO `sellos` VALUES (90, 'RP0715086', 89, 1, '2020-11-11 15:22:31', '2020-11-11 15:22:31');
INSERT INTO `sellos` VALUES (91, 'RP0715311', 90, 1, '2020-11-11 15:47:58', '2020-11-11 15:47:58');
INSERT INTO `sellos` VALUES (92, 'RP0715061', 91, 1, '2020-11-11 15:48:35', '2020-11-11 15:48:35');
INSERT INTO `sellos` VALUES (93, 'RP0715087', 92, 1, '2020-11-11 16:46:55', '2020-11-11 16:46:55');
INSERT INTO `sellos` VALUES (94, 'RP0715097', 93, 1, '2020-11-11 17:16:11', '2020-11-11 17:16:11');
INSERT INTO `sellos` VALUES (95, 'RP0715384', 94, 1, '2020-11-11 19:04:54', '2020-11-11 19:04:54');
INSERT INTO `sellos` VALUES (96, 'RP0709487', 95, 1, '2020-11-12 09:40:20', '2020-11-12 09:40:20');
INSERT INTO `sellos` VALUES (97, 'RP07150', 96, 1, '2020-11-12 09:54:21', '2020-11-12 09:54:21');
INSERT INTO `sellos` VALUES (98, '0617904', 97, 1, '2020-11-12 10:34:13', '2020-11-12 10:34:13');
INSERT INTO `sellos` VALUES (99, 'SNP', 98, 1, '2020-11-12 10:52:34', '2020-11-12 10:52:34');
INSERT INTO `sellos` VALUES (100, '0686011', 99, 1, '2020-11-12 10:54:26', '2020-11-12 10:54:26');
INSERT INTO `sellos` VALUES (101, '0833618', 100, 1, '2020-11-12 13:45:02', '2020-11-12 13:45:02');
INSERT INTO `sellos` VALUES (102, 'RP0715308', 101, 1, '2020-11-12 15:16:23', '2020-11-12 15:16:23');
INSERT INTO `sellos` VALUES (103, '06122764', 102, 1, '2020-11-13 08:08:27', '2020-11-13 08:08:27');
INSERT INTO `sellos` VALUES (104, 'RP0715374', 103, 1, '2020-11-13 08:31:47', '2020-11-13 08:31:47');
INSERT INTO `sellos` VALUES (105, 'RP0715310', 104, 1, '2020-11-13 08:37:11', '2020-11-13 08:37:11');
INSERT INTO `sellos` VALUES (106, '0612797', 105, 1, '2020-11-13 08:54:45', '2020-11-13 08:54:45');
INSERT INTO `sellos` VALUES (107, 'RP0715312', 106, 1, '2020-11-13 09:24:15', '2020-11-13 09:24:15');
INSERT INTO `sellos` VALUES (108, 'RP0715059', 107, 1, '2020-11-13 09:37:39', '2020-11-13 09:37:39');
INSERT INTO `sellos` VALUES (109, 'RP07155375', 108, 1, '2020-11-13 09:51:31', '2020-11-13 09:51:31');
INSERT INTO `sellos` VALUES (110, 'RP0715314', 109, 1, '2020-11-13 10:21:29', '2020-11-13 10:21:29');
INSERT INTO `sellos` VALUES (111, 'RP015376', 110, 1, '2020-11-13 10:24:19', '2020-11-13 10:24:19');
INSERT INTO `sellos` VALUES (112, 'RP0715058', 111, 1, '2020-11-13 10:27:16', '2020-11-13 10:27:16');
INSERT INTO `sellos` VALUES (113, 'RP0715233', 112, 1, '2020-11-13 10:40:49', '2020-11-13 10:40:49');
INSERT INTO `sellos` VALUES (114, 'RPD715369', 113, 1, '2020-11-13 10:59:28', '2020-11-13 10:59:28');
INSERT INTO `sellos` VALUES (115, 'RP0715236', 114, 1, '2020-11-13 11:03:05', '2020-11-13 11:03:05');
INSERT INTO `sellos` VALUES (116, 'RP0715075', 115, 1, '2020-11-13 11:08:47', '2020-11-13 11:08:47');
INSERT INTO `sellos` VALUES (117, 'RP0715234', 116, 1, '2020-11-13 11:18:38', '2020-11-13 11:18:38');
INSERT INTO `sellos` VALUES (118, 'RP0715377', 117, 1, '2020-11-13 11:24:41', '2020-11-13 11:24:41');
INSERT INTO `sellos` VALUES (119, 'RP0715268', 118, 1, '2020-11-13 11:33:45', '2020-11-13 11:33:45');
INSERT INTO `sellos` VALUES (120, 'RP0715232', 119, 1, '2020-11-13 11:34:01', '2020-11-13 11:34:01');
INSERT INTO `sellos` VALUES (121, 'RP0715073', 120, 1, '2020-11-13 11:36:54', '2020-11-13 11:36:54');
INSERT INTO `sellos` VALUES (122, 'RP0715378', 121, 1, '2020-11-13 11:46:39', '2020-11-13 11:46:39');
INSERT INTO `sellos` VALUES (123, 'RP0715269', 122, 1, '2020-11-13 11:52:17', '2020-11-13 11:52:17');
INSERT INTO `sellos` VALUES (124, 'RP0715242', 123, 1, '2020-11-13 11:52:51', '2020-11-13 11:52:51');
INSERT INTO `sellos` VALUES (125, 'RP0715329', 124, 1, '2020-11-13 12:03:57', '2020-11-13 12:03:57');
INSERT INTO `sellos` VALUES (126, 'RP07153624', 125, 1, '2020-11-13 12:21:02', '2020-11-13 12:21:02');
INSERT INTO `sellos` VALUES (127, 'RP0715072', 126, 1, '2020-11-13 13:03:24', '2020-11-13 13:03:24');
INSERT INTO `sellos` VALUES (128, 'RP0715240', 127, 1, '2020-11-13 13:16:17', '2020-11-13 13:16:17');
INSERT INTO `sellos` VALUES (129, 'RP0715071', 128, 1, '2020-11-13 13:32:11', '2020-11-13 13:32:11');
INSERT INTO `sellos` VALUES (130, 'RP0715241', 129, 1, '2020-11-13 13:53:07', '2020-11-13 13:53:07');
INSERT INTO `sellos` VALUES (131, 'RP0715238', 130, 1, '2020-11-13 14:12:29', '2020-11-13 14:12:29');
INSERT INTO `sellos` VALUES (132, 'RP0715053', 131, 1, '2020-11-13 14:17:22', '2020-11-13 14:17:22');
INSERT INTO `sellos` VALUES (133, 'RP0715271', 132, 1, '2020-11-13 14:28:32', '2020-11-13 14:28:32');
INSERT INTO `sellos` VALUES (134, 'RP0715052', 133, 1, '2020-11-13 14:41:18', '2020-11-13 14:41:18');
INSERT INTO `sellos` VALUES (135, 'RP0715272', 134, 1, '2020-11-13 14:41:18', '2020-11-13 14:41:18');
INSERT INTO `sellos` VALUES (136, 'RP0715275', 135, 1, '2020-11-13 14:50:33', '2020-11-13 14:50:33');
INSERT INTO `sellos` VALUES (137, 'RP0715365', 136, 1, '2020-11-13 14:51:35', '2020-11-13 14:51:35');
INSERT INTO `sellos` VALUES (138, 'RP0715055', 137, 1, '2020-11-13 15:08:06', '2020-11-13 15:08:06');
INSERT INTO `sellos` VALUES (139, 'RP0715276', 138, 1, '2020-11-16 08:37:19', '2020-11-16 08:37:19');
INSERT INTO `sellos` VALUES (140, 'RP0715277', 139, 1, '2020-11-16 09:18:52', '2020-11-16 09:18:52');
INSERT INTO `sellos` VALUES (141, 'RP0715239', 140, 1, '2020-11-16 09:41:41', '2020-11-16 09:41:41');
INSERT INTO `sellos` VALUES (142, 'RP0715257', 141, 1, '2020-11-16 10:04:23', '2020-11-16 10:04:23');
INSERT INTO `sellos` VALUES (143, 'RP0715237', 142, 1, '2020-11-16 10:21:15', '2020-11-16 10:21:15');
INSERT INTO `sellos` VALUES (144, 'RP0715279', 143, 1, '2020-11-16 11:43:05', '2020-11-16 11:43:05');
INSERT INTO `sellos` VALUES (145, 'RP0715089', 144, 1, '2020-11-16 13:38:07', '2020-11-16 13:38:07');
INSERT INTO `sellos` VALUES (146, 'RP0715094', 145, 1, '2020-11-16 13:39:11', '2020-11-16 13:39:11');
INSERT INTO `sellos` VALUES (147, 'RP0715096', 146, 1, '2020-11-16 13:42:34', '2020-11-16 13:42:34');
INSERT INTO `sellos` VALUES (148, 'RP0715095', 147, 1, '2020-11-16 13:43:44', '2020-11-16 13:43:44');
INSERT INTO `sellos` VALUES (149, 'RP0715090', 148, 1, '2020-11-16 13:44:52', '2020-11-16 13:44:52');
INSERT INTO `sellos` VALUES (150, 'RP0715093', 149, 1, '2020-11-16 13:45:55', '2020-11-16 13:45:55');
INSERT INTO `sellos` VALUES (151, 'RP0715092', 150, 1, '2020-11-16 13:47:09', '2020-11-16 13:47:09');
INSERT INTO `sellos` VALUES (152, 'RP0715091', 151, 1, '2020-11-16 13:49:45', '2020-11-16 13:49:45');
INSERT INTO `sellos` VALUES (153, 'RP0715230', 152, 1, '2020-11-16 14:23:01', '2020-11-16 14:23:01');
INSERT INTO `sellos` VALUES (154, 'RP0715133', 153, 1, '2020-11-18 08:42:24', '2020-11-18 08:42:24');
INSERT INTO `sellos` VALUES (155, 'RP0715137', 154, 1, '2020-11-18 08:55:28', '2020-11-18 08:55:28');
INSERT INTO `sellos` VALUES (156, 'RP0715140', 155, 1, '2020-11-18 09:07:06', '2020-11-18 09:07:06');
INSERT INTO `sellos` VALUES (157, 'RP0715139', 156, 1, '2020-11-18 09:36:29', '2020-11-18 09:36:29');
INSERT INTO `sellos` VALUES (161, 'RP0715265', 157, 3, '2020-11-19 07:58:18', '2020-11-19 07:58:18');
INSERT INTO `sellos` VALUES (162, 'RP0715266', 158, 3, '2020-11-19 08:57:06', '2020-11-19 08:57:06');
INSERT INTO `sellos` VALUES (163, 'RP0715267', 159, 3, '2020-11-19 11:00:45', '2020-11-19 11:00:45');
INSERT INTO `sellos` VALUES (164, 'RP0715263', 160, 3, '2020-11-19 15:00:10', '2020-11-19 15:00:10');
INSERT INTO `sellos` VALUES (165, 'RP0715262', 161, 3, '2020-11-19 15:35:56', '2020-11-19 15:35:56');
INSERT INTO `sellos` VALUES (166, 'RP0715261', 162, 3, '2020-11-19 16:06:28', '2020-11-19 16:06:28');
INSERT INTO `sellos` VALUES (167, 'RP0715318', 163, 3, '2020-11-20 08:18:39', '2020-11-20 08:18:39');
INSERT INTO `sellos` VALUES (168, 'RP0614118', 164, 3, '2020-11-20 08:33:52', '2020-11-20 08:33:52');
INSERT INTO `sellos` VALUES (169, 'RP0614102', 165, 3, '2020-11-20 09:10:09', '2020-11-20 09:10:09');
INSERT INTO `sellos` VALUES (170, 'RP0715281', 166, 3, '2020-11-20 10:14:36', '2020-11-20 10:14:36');
INSERT INTO `sellos` VALUES (171, 'RP0715282', 167, 3, '2020-11-20 11:34:26', '2020-11-20 11:34:26');
INSERT INTO `sellos` VALUES (172, 'RP0715264', 168, 3, '2020-11-20 13:37:01', '2020-11-20 13:37:01');
INSERT INTO `sellos` VALUES (173, 'RP0715270', 169, 3, '2020-11-24 08:28:03', '2020-11-24 08:28:03');
INSERT INTO `sellos` VALUES (174, 'RP0715273', 170, 3, '2020-11-24 08:41:09', '2020-11-24 08:41:09');
INSERT INTO `sellos` VALUES (175, 'RP0715135', 171, 8, '2020-11-24 13:56:12', '2020-11-24 13:56:12');
INSERT INTO `sellos` VALUES (176, 'SN-', 172, 8, '2020-11-24 14:16:39', '2020-11-24 14:16:39');
INSERT INTO `sellos` VALUES (177, 'PR0715126', 173, 8, '2020-11-24 14:30:40', '2020-11-24 14:30:40');
INSERT INTO `sellos` VALUES (178, 'RP0715136', 174, 8, '2020-11-24 14:52:51', '2020-11-24 14:52:51');
INSERT INTO `sellos` VALUES (179, 'RP0715280', 175, 3, '2020-11-24 15:04:57', '2020-11-24 15:04:57');
INSERT INTO `sellos` VALUES (180, 'PR0715127', 176, 8, '2020-11-30 07:39:22', '2020-11-30 07:39:22');
INSERT INTO `sellos` VALUES (181, 'RP0715138', 177, 8, '2020-11-30 15:14:47', '2020-11-30 15:14:47');

-- ----------------------------
-- Table structure for speakers
-- ----------------------------
DROP TABLE IF EXISTS `speakers`;
CREATE TABLE `speakers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `speakers_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `speakers_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `speakers_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `speakers_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of speakers
-- ----------------------------
INSERT INTO `speakers` VALUES (3, 'ZF233B02479', 'SP-S110', '225556', 31, 177, '1', '2020-11-30 15:21:28', '2020-11-30 15:21:28');

-- ----------------------------
-- Table structure for teclados
-- ----------------------------
DROP TABLE IF EXISTS `teclados`;
CREATE TABLE `teclados`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_conector_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teclados_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `teclados_nm_conector_id_foreign`(`nm_conector_id`) USING BTREE,
  INDEX `teclados_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `teclados_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `teclados_nm_conector_id_foreign` FOREIGN KEY (`nm_conector_id`) REFERENCES `nm_conectors` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `teclados_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teclados
-- ----------------------------
INSERT INTO `teclados` VALUES (1, 'IBMT014111402066', '231135', 14, 1, 8, '1', '2020-09-03 17:05:16', '2020-09-03 17:05:16');
INSERT INTO `teclados` VALUES (2, 'E145614LR86682', '222066', 3, 1, 9, '1', '2020-09-03 19:57:18', '2020-09-03 19:57:18');
INSERT INTO `teclados` VALUES (3, '1444M600FV98', '230062', 8, 1, 10, '1', '2020-09-04 15:10:52', '2020-09-04 15:10:52');
INSERT INTO `teclados` VALUES (4, '03192029003440E00', '228189', 15, 1, 11, '1', '2020-09-04 15:45:31', '2020-09-04 15:45:31');
INSERT INTO `teclados` VALUES (5, '51400AOK', '231426', 15, 1, 12, '1', '2020-09-04 15:51:40', '2020-09-04 15:51:40');
INSERT INTO `teclados` VALUES (6, '51400AG1K701', '231134', 15, 1, 13, '1', '2020-09-04 17:54:25', '2020-09-04 17:54:25');
INSERT INTO `teclados` VALUES (7, '63239159', '222286', 35, 2, 14, '1', '2020-09-04 18:13:11', '2020-09-04 18:13:11');
INSERT INTO `teclados` VALUES (8, '201303', '228595', 39, 1, 15, '1', '2020-09-07 11:54:20', '2020-09-07 11:54:20');
INSERT INTO `teclados` VALUES (9, 'IMJS00090903739', '218403', 21, 2, 16, '1', '2020-09-07 12:10:03', '2020-09-07 12:10:03');
INSERT INTO `teclados` VALUES (10, 'KBUSBOP2591480098K701', '225073', 15, 1, 17, '1', '2020-09-07 12:44:22', '2020-09-07 12:44:22');
INSERT INTO `teclados` VALUES (11, 'KBUSBOP2591470075FK701', '225050', 15, 1, 18, '1', '2020-09-07 13:18:15', '2020-09-07 13:18:15');
INSERT INTO `teclados` VALUES (12, 'KBUSBOP2591470075K701', '225051', 15, 1, 19, '1', '2020-09-07 14:09:12', '2020-09-07 14:09:12');
INSERT INTO `teclados` VALUES (13, 'IMT0141114096', '231965', 31, 1, 20, '1', '2020-09-07 14:34:36', '2020-09-07 14:34:36');
INSERT INTO `teclados` VALUES (14, 'KBUSB03192029001020E00', '222187', 15, 1, 22, '1', '2020-09-07 14:53:41', '2020-09-07 14:53:41');
INSERT INTO `teclados` VALUES (15, 'IMBT014111409637', '231423', 21, 1, 21, '1', '2020-09-07 15:03:43', '2020-09-07 15:03:43');
INSERT INTO `teclados` VALUES (16, '00758K701', '222152', 15, 1, 23, '1', '2020-09-07 15:41:17', '2020-09-07 15:41:17');
INSERT INTO `teclados` VALUES (17, 'KBUSB03192029002780E00', '222152', 15, 1, 24, '1', '2020-09-07 16:15:52', '2020-09-07 16:15:52');
INSERT INTO `teclados` VALUES (18, 'E1347802655', '222155', 15, 1, 34, '1', '2020-09-08 15:35:44', '2020-09-08 15:35:44');
INSERT INTO `teclados` VALUES (19, 'DKVSB1P02D', '211434', 15, 1, 40, '1', '2020-09-08 16:15:50', '2020-09-08 16:15:50');
INSERT INTO `teclados` VALUES (20, '40762050', '224698', 13, 1, 39, '1', '2020-09-08 16:57:43', '2020-09-08 16:57:43');
INSERT INTO `teclados` VALUES (21, '04N454371723BE-0859', '218289', 3, 2, 38, '1', '2020-09-09 16:19:28', '2020-09-09 16:19:28');
INSERT INTO `teclados` VALUES (22, 'CN0L6KPN7161623', '224717', 3, 1, 37, '1', '2020-09-10 14:10:15', '2020-09-10 14:10:15');
INSERT INTO `teclados` VALUES (23, 'TH-04N45437171379B276', '219271', 3, 2, 36, '1', '2020-09-10 15:27:26', '2020-09-10 15:27:26');
INSERT INTO `teclados` VALUES (24, 'KBUSB03192028001680E00', '225409', 15, 1, 33, '1', '2020-09-10 16:10:48', '2020-09-10 16:10:48');
INSERT INTO `teclados` VALUES (25, 'SY-745UK', '225041', 8, 2, 32, '1', '2020-09-11 14:56:17', '2020-09-11 14:56:17');
INSERT INTO `teclados` VALUES (26, 'DKUSB1PD2D33400D9AK701', '229331', 15, 1, 31, '1', '2020-09-14 13:27:17', '2020-09-14 13:27:17');
INSERT INTO `teclados` VALUES (27, '868026-0403', '222284', 8, 1, 30, '1', '2020-09-23 12:16:44', '2020-09-23 12:16:44');
INSERT INTO `teclados` VALUES (28, 'OW7658-37172-5B7-DB35', '5043', 3, 1, 54, '1', '2020-09-23 12:21:16', '2020-09-23 12:21:16');
INSERT INTO `teclados` VALUES (29, 'CN-054287161644OHVO', '222543', 3, 1, 29, '1', '2020-09-23 12:58:27', '2020-09-23 12:58:27');
INSERT INTO `teclados` VALUES (30, 'KBVSBOP25914800953K701', '225072', 15, 1, 55, '1', '2020-09-23 13:31:37', '2020-09-23 13:31:37');
INSERT INTO `teclados` VALUES (31, '52308501-TC-E1', '219268', 35, 2, 28, '1', '2020-09-23 14:44:19', '2020-09-23 14:44:19');
INSERT INTO `teclados` VALUES (32, 'KB-110X', '224631', 31, 1, 26, '1', '2020-09-23 15:42:31', '2020-09-23 15:42:31');
INSERT INTO `teclados` VALUES (33, 'KBUSBOPS259480072DK701', '225409', 15, 1, 25, '1', '2020-09-23 15:51:45', '2020-09-23 15:51:45');
INSERT INTO `teclados` VALUES (34, '1439M600HA18', '226877', 8, 1, 27, '1', '2020-09-23 16:02:20', '2020-09-23 16:02:20');
INSERT INTO `teclados` VALUES (35, 'BT744D6D843', '222541', 8, 2, 35, '1', '2020-09-23 16:11:52', '2020-09-23 16:11:52');
INSERT INTO `teclados` VALUES (36, 'CN-054628-71616-644-0HTP', '219119', 3, 1, 56, '1', '2020-09-24 11:53:36', '2020-09-24 11:53:36');
INSERT INTO `teclados` VALUES (37, '07N242-7161-515-0469', '219431', 3, 1, 59, '1', '2020-09-24 13:02:17', '2020-09-24 13:02:17');
INSERT INTO `teclados` VALUES (38, '8B15902011B', '219432', 14, 2, 60, '1', '2020-09-24 13:45:35', '2020-09-24 13:45:35');
INSERT INTO `teclados` VALUES (39, '8680260403', '218363', 21, 2, 57, '1', '2020-09-24 14:32:48', '2020-09-24 14:32:48');
INSERT INTO `teclados` VALUES (40, '60505193066', '219441', 2, 2, 61, '1', '2020-09-24 15:27:28', '2020-09-24 15:27:28');
INSERT INTO `teclados` VALUES (41, 'TH-04N454-37171-287-7755', '219391', 3, 2, 50, '1', '2020-09-25 13:25:29', '2020-09-25 13:25:29');
INSERT INTO `teclados` VALUES (42, 'S/N', '2192333', 2, 2, 49, '1', '2020-09-25 14:03:27', '2020-09-25 14:03:27');
INSERT INTO `teclados` VALUES (43, 'E1347802G55', '225071', 15, 1, 62, '1', '2020-09-25 14:10:32', '2020-09-25 14:10:32');
INSERT INTO `teclados` VALUES (44, 'E1347802G55', '225040', 15, 2, 63, '1', '2020-09-25 15:26:10', '2020-09-25 15:26:10');
INSERT INTO `teclados` VALUES (45, 'N/S', '225475', 31, 1, 48, '1', '2020-09-25 15:28:03', '2020-09-25 15:28:03');
INSERT INTO `teclados` VALUES (46, 'SN', '222004', 3, 1, 64, '1', '2020-09-25 16:19:04', '2020-09-25 16:19:04');
INSERT INTO `teclados` VALUES (47, 'CO52830', '219390', 2, 2, 46, '1', '2020-09-28 13:20:46', '2020-09-28 13:20:46');
INSERT INTO `teclados` VALUES (48, 'KBUSB0319202900', '219394', 15, 2, 45, '1', '2020-09-28 13:56:58', '2020-09-28 13:56:58');
INSERT INTO `teclados` VALUES (49, 'CN0DJ415716168140N221', '222064', 3, 1, 65, '1', '2020-09-29 13:12:52', '2020-09-29 13:12:52');
INSERT INTO `teclados` VALUES (50, 'N/S', '219393', 2, 2, 44, '1', '2020-09-29 15:13:46', '2020-09-29 15:13:46');
INSERT INTO `teclados` VALUES (51, 'SC028CZ', '219210', 8, 1, 43, '1', '2020-09-30 12:44:04', '2020-09-30 12:44:52');
INSERT INTO `teclados` VALUES (52, 'BT743D6R388', '219389', 8, 1, 42, '1', '2020-09-30 13:07:01', '2020-09-30 13:07:01');
INSERT INTO `teclados` VALUES (53, '6K-100011', '225482', 31, 1, 66, '1', '2020-09-30 14:20:28', '2020-09-30 14:20:28');
INSERT INTO `teclados` VALUES (54, 'DKUSBIPO2D51400A12K701', '231429', 15, 1, 67, '1', '2020-09-30 15:15:15', '2020-09-30 15:15:15');
INSERT INTO `teclados` VALUES (55, 'SN', '225483', 31, 1, 68, '1', '2020-10-01 12:13:08', '2020-10-01 12:13:08');
INSERT INTO `teclados` VALUES (56, 'TH04N453717126K1040', '219436', 3, 2, 69, '1', '2020-10-02 16:00:05', '2020-10-02 16:00:05');
INSERT INTO `teclados` VALUES (57, 'KV-0760', '222122', 15, 1, 73, '1', '2020-11-10 15:48:13', '2020-11-10 15:48:13');
INSERT INTO `teclados` VALUES (58, 'IMBT014111402080', '231139', 21, 1, 72, '1', '2020-11-10 16:34:44', '2020-11-10 16:34:44');
INSERT INTO `teclados` VALUES (59, 'SIN #', '225481', 31, 1, 74, '1', '2020-11-10 19:11:50', '2020-11-10 19:11:50');
INSERT INTO `teclados` VALUES (60, 'KBVSB03192029002360E00', '217098', 15, 1, 75, '1', '2020-11-10 21:16:10', '2020-11-10 21:16:10');
INSERT INTO `teclados` VALUES (61, 'IMBT014111402071', '231136', 21, 1, 76, '1', '2020-11-11 13:23:35', '2020-11-11 13:23:35');
INSERT INTO `teclados` VALUES (62, 'SIN #', '219154', 3, 2, 77, '1', '2020-11-11 13:34:30', '2020-11-11 13:34:30');
INSERT INTO `teclados` VALUES (63, 'CN-0K6KPN-71616-23T-024Q-A00', '224720', 3, 1, 78, '1', '2020-11-11 13:47:15', '2020-11-11 13:47:15');
INSERT INTO `teclados` VALUES (64, 'SIN#', '232361', 8, 1, 80, '1', '2020-11-11 13:59:15', '2020-11-11 14:00:35');
INSERT INTO `teclados` VALUES (65, '23T-026G-A00', '224712', 21, 1, 79, '1', '2020-11-11 14:01:14', '2020-11-11 14:01:14');
INSERT INTO `teclados` VALUES (66, '820001110', '225403', 8, 1, 81, '1', '2020-11-11 14:07:43', '2020-11-11 14:07:43');
INSERT INTO `teclados` VALUES (67, 'SIN #', '228557', 39, 1, 84, '1', '2020-11-11 14:26:15', '2020-11-11 14:26:15');
INSERT INTO `teclados` VALUES (68, 'CK-OKGKPN', '224716', 3, 1, 85, '1', '2020-11-11 14:33:00', '2020-11-11 14:33:00');
INSERT INTO `teclados` VALUES (69, 'KB110X', '225453', 31, 1, 83, '1', '2020-11-11 14:39:35', '2020-11-11 14:39:35');
INSERT INTO `teclados` VALUES (70, 'KBUSB0P25914700722K701', '225066', 15, 1, 86, '1', '2020-11-11 15:02:13', '2020-11-11 15:02:13');
INSERT INTO `teclados` VALUES (71, 'KBUSB03192029000440E00', '222179', 15, 1, 88, '1', '2020-11-11 15:20:46', '2020-11-11 15:20:46');
INSERT INTO `teclados` VALUES (72, 'BT746D65943', '5047', 8, 1, 82, '1', '2020-11-11 15:34:47', '2020-11-11 15:34:47');
INSERT INTO `teclados` VALUES (73, '6054477', '2190921', 35, 2, 71, '1', '2020-11-11 15:44:00', '2020-11-11 15:44:00');
INSERT INTO `teclados` VALUES (74, 'SY836UK', '219779', 70, 2, 90, '1', '2020-11-11 16:19:09', '2020-11-11 16:19:09');
INSERT INTO `teclados` VALUES (75, '23N-09TB-A00', '224719', 3, 1, 89, '1', '2020-11-11 16:23:05', '2020-11-11 16:23:05');
INSERT INTO `teclados` VALUES (76, '0DJ415-71616-814-0MWZ', '219783', 3, 1, 94, '1', '2020-11-11 19:15:43', '2020-11-11 19:15:43');
INSERT INTO `teclados` VALUES (77, '40762133', '229329', 13, 1, 91, '1', '2020-11-11 19:27:47', '2020-11-11 19:27:47');
INSERT INTO `teclados` VALUES (78, 'E1347802655', '219146', 15, 1, 92, '1', '2020-11-11 20:08:49', '2020-11-11 20:08:49');
INSERT INTO `teclados` VALUES (79, '54410448', '211624', 35, 2, 95, '1', '2020-11-12 10:02:51', '2020-11-12 10:02:51');
INSERT INTO `teclados` VALUES (80, 'E1347802G55', '225065', 15, 1, 96, '1', '2020-11-12 10:15:05', '2020-11-12 10:15:05');
INSERT INTO `teclados` VALUES (81, '1K01701582B', '37015010', 7, 1, 97, '1', '2020-11-12 10:58:29', '2020-11-12 10:58:29');
INSERT INTO `teclados` VALUES (82, '04925716', '222301', 35, 2, 99, '1', '2020-11-12 13:40:49', '2020-11-12 13:40:49');
INSERT INTO `teclados` VALUES (83, 'GK100011', '225462', 31, 1, 100, '1', '2020-11-12 14:14:49', '2020-11-12 14:14:49');
INSERT INTO `teclados` VALUES (84, '43302236K701', '229471', 15, 1, 101, '1', '2020-11-12 15:58:20', '2020-11-12 15:58:20');
INSERT INTO `teclados` VALUES (85, 'CN06W610716164111C31', '218283', 3, 1, 102, '1', '2020-11-13 08:21:13', '2020-11-13 08:21:13');
INSERT INTO `teclados` VALUES (86, '40760663', '229334', 13, 1, 103, '1', '2020-11-13 08:49:07', '2020-11-13 08:49:07');
INSERT INTO `teclados` VALUES (87, '0P259147007D6K701', '225074', 15, 1, 104, '1', '2020-11-13 09:02:12', '2020-11-13 09:02:12');
INSERT INTO `teclados` VALUES (88, 'SIN #', '226977', 13, 1, 105, '1', '2020-11-13 09:28:14', '2020-11-13 09:28:14');
INSERT INTO `teclados` VALUES (89, 'CN0K6KPN7169623T03CWA00', '224717', 3, 1, 106, '1', '2020-11-13 09:43:04', '2020-11-13 09:43:04');
INSERT INTO `teclados` VALUES (90, 'SIN #', '1050564', 8, 1, 108, '1', '2020-11-13 10:06:24', '2020-11-13 10:06:24');
INSERT INTO `teclados` VALUES (91, '1444MGDFVA8', '230067', 8, 1, 107, '1', '2020-11-13 10:15:16', '2020-11-13 10:15:16');
INSERT INTO `teclados` VALUES (92, 'BT744D6D604', '222227', 8, 1, 109, '1', '2020-11-13 10:37:05', '2020-11-13 10:37:05');
INSERT INTO `teclados` VALUES (93, 'IMBT0141006D5185', '231140', 21, 1, 110, '1', '2020-11-13 10:44:36', '2020-11-13 10:44:36');
INSERT INTO `teclados` VALUES (94, '201303', '228606', 39, 1, 111, '1', '2020-11-13 10:56:25', '2020-11-13 10:58:36');
INSERT INTO `teclados` VALUES (95, 'SN', '225479', 31, 1, 112, '1', '2020-11-13 10:58:14', '2020-11-13 10:58:14');
INSERT INTO `teclados` VALUES (96, '820-001082', '219775', 70, 2, 114, '1', '2020-11-13 11:13:55', '2020-11-13 11:13:55');
INSERT INTO `teclados` VALUES (97, 'IMBT01411407058', '231991', 21, 1, 113, '1', '2020-11-13 11:19:16', '2020-11-13 11:19:16');
INSERT INTO `teclados` VALUES (98, '52308614', '219476', 35, 1, 116, '1', '2020-11-13 11:27:31', '2020-11-13 11:27:31');
INSERT INTO `teclados` VALUES (99, '820-003288', '219242', 8, 1, 115, '1', '2020-11-13 11:30:36', '2020-11-13 11:30:36');
INSERT INTO `teclados` VALUES (100, '03192029003390E00', '222197', 15, 1, 117, '1', '2020-11-13 11:40:40', '2020-11-13 11:40:40');
INSERT INTO `teclados` VALUES (101, 'OJ46287161664409N8', '218965', 3, 1, 118, '1', '2020-11-13 11:45:13', '2020-11-13 11:45:13');
INSERT INTO `teclados` VALUES (102, 'IMBT01411', '231968', 31, 1, 119, '1', '2020-11-13 11:48:00', '2020-11-13 11:48:00');
INSERT INTO `teclados` VALUES (103, 'E1347802655', '225067', 15, 1, 93, '1', '2020-11-13 11:55:49', '2020-11-13 11:55:49');
INSERT INTO `teclados` VALUES (104, 'CNOK6KPN7161623N02GUA00', '224713', 3, 1, 121, '1', '2020-11-13 11:58:40', '2020-11-13 11:58:40');
INSERT INTO `teclados` VALUES (105, '8B159022017B', '5052', 14, 2, 120, '1', '2020-11-13 12:08:41', '2020-11-13 12:08:41');
INSERT INTO `teclados` VALUES (106, 'KBUSB0P25919800955K701', '225048', 15, 1, 124, '1', '2020-11-13 12:15:26', '2020-11-13 12:15:26');
INSERT INTO `teclados` VALUES (107, 'IMBT014111403591', '231967', 21, 1, 123, '1', '2020-11-13 13:10:33', '2020-11-13 13:10:33');
INSERT INTO `teclados` VALUES (108, '07N242-71616-C3OPFI', '5053', 3, 2, 126, '1', '2020-11-13 13:16:08', '2020-11-13 13:16:08');
INSERT INTO `teclados` VALUES (109, '04720630', '218277', 35, 2, 122, '1', '2020-11-13 13:19:06', '2020-11-13 13:19:06');
INSERT INTO `teclados` VALUES (110, '90-PC70KB100', '219477', 2, 2, 127, '1', '2020-11-13 13:43:29', '2020-11-13 13:43:29');
INSERT INTO `teclados` VALUES (111, 'SN', '218392', 8, 2, 129, '1', '2020-11-13 14:08:08', '2020-11-13 14:08:08');
INSERT INTO `teclados` VALUES (112, '868026-0403', '5054', 8, 1, 128, '1', '2020-11-13 14:12:36', '2020-11-13 14:12:36');
INSERT INTO `teclados` VALUES (113, 'IMBT014111402062', '231130', 21, 1, 130, '1', '2020-11-13 14:22:55', '2020-11-13 14:22:55');
INSERT INTO `teclados` VALUES (114, '820003292', '224628', 8, 1, 131, '1', '2020-11-13 14:28:47', '2020-11-13 14:28:47');
INSERT INTO `teclados` VALUES (115, 'SN', '225459', 31, 1, 132, '1', '2020-11-13 14:35:21', '2020-11-13 14:35:21');
INSERT INTO `teclados` VALUES (116, 'LZ204', '224629', 8, 1, 125, '1', '2020-11-13 14:44:32', '2020-11-13 14:44:32');
INSERT INTO `teclados` VALUES (117, 'IMDT014100605196', '231152', 39, 1, 134, '1', '2020-11-13 14:46:51', '2020-11-13 14:46:51');
INSERT INTO `teclados` VALUES (118, '201303', '228607', 39, 1, 137, '1', '2020-11-13 15:19:14', '2020-11-13 15:19:14');
INSERT INTO `teclados` VALUES (119, '1605SC5051P8', '232674', 8, 1, 135, '1', '2020-11-13 15:27:29', '2020-11-13 15:27:29');
INSERT INTO `teclados` VALUES (120, '1314MG021928', '228152', 8, 1, 138, '1', '2020-11-16 09:13:53', '2020-11-16 09:13:53');
INSERT INTO `teclados` VALUES (121, 'CN-09F506-38842-31H0634', 'dell', 3, 1, 136, '1', '2020-11-16 09:30:03', '2020-11-16 09:30:03');
INSERT INTO `teclados` VALUES (122, 'CN0DJ41571616814ON12', '218957', 3, 1, 139, '1', '2020-11-16 09:31:28', '2020-11-16 09:31:28');
INSERT INTO `teclados` VALUES (123, 'DKUSB1P02D514OOA01K701', '231427', 15, 1, 140, '1', '2020-11-16 09:58:50', '2020-11-16 09:58:50');
INSERT INTO `teclados` VALUES (124, '06W610-71616-3BH-BE93', '214980', 3, 2, 141, '1', '2020-11-16 10:14:13', '2020-11-16 10:14:13');
INSERT INTO `teclados` VALUES (125, 'SN', '225458', 31, 1, 142, '1', '2020-11-16 11:11:02', '2020-11-16 11:11:02');
INSERT INTO `teclados` VALUES (126, 'KBUSB0P259140068AK701', '225069', 15, 1, 51, '1', '2020-11-16 11:19:21', '2020-11-16 11:19:21');
INSERT INTO `teclados` VALUES (127, '30704649', '218972', 35, 2, 143, '1', '2020-11-16 11:47:40', '2020-11-16 11:47:40');
INSERT INTO `teclados` VALUES (128, 'N/S', '225490', 31, 1, 53, '1', '2020-11-16 11:58:03', '2020-11-16 11:58:03');
INSERT INTO `teclados` VALUES (129, '40762078', '229332', 13, 1, 152, '1', '2020-11-16 14:36:28', '2020-11-16 14:36:28');
INSERT INTO `teclados` VALUES (130, '17195C50RCG8', 'sn', 8, 1, 153, '1', '2020-11-18 08:51:54', '2020-11-18 08:51:54');
INSERT INTO `teclados` VALUES (131, '1730SC50WKA8', '1050001', 8, 1, 154, '1', '2020-11-18 09:03:22', '2020-11-18 09:03:22');
INSERT INTO `teclados` VALUES (132, 'IMBT014111407056', '231978', 21, 1, 155, '1', '2020-11-18 09:30:10', '2020-11-18 09:30:10');
INSERT INTO `teclados` VALUES (133, 'G3239032TCE1', '219159', 35, 2, 156, '1', '2020-11-18 10:18:00', '2020-11-18 10:18:00');
INSERT INTO `teclados` VALUES (134, '280001110', '225401', 8, 2, 150, '1', '2020-11-18 15:21:43', '2020-11-18 15:21:43');
INSERT INTO `teclados` VALUES (135, '30705175', '219094', 35, 2, 149, '1', '2020-11-18 15:36:18', '2020-11-18 15:36:18');
INSERT INTO `teclados` VALUES (136, '1444MG00G6N8', '230068', 35, 2, 157, '1', '2020-11-19 08:04:03', '2020-11-19 08:04:03');
INSERT INTO `teclados` VALUES (137, '1444MG00G788', '230069', 8, 1, 158, '1', '2020-11-19 09:03:29', '2020-11-19 09:03:29');
INSERT INTO `teclados` VALUES (138, 'IMBT014100605182', '231153', 35, 1, 159, '1', '2020-11-19 11:37:22', '2020-11-19 11:37:22');
INSERT INTO `teclados` VALUES (139, 'DK05B11A', '231431', 15, 1, 160, '1', '2020-11-19 15:29:34', '2020-11-19 15:29:34');
INSERT INTO `teclados` VALUES (140, '1431MGO21TQ8', '230065', 8, 1, 162, '1', '2020-11-19 16:12:40', '2020-11-19 16:12:40');
INSERT INTO `teclados` VALUES (141, 'CN07N242716164BB0369', '218970', 3, 1, 163, '1', '2020-11-20 08:25:15', '2020-11-20 08:25:15');
INSERT INTO `teclados` VALUES (142, '0757987', '218964', 82, 2, 164, '1', '2020-11-20 09:02:10', '2020-11-20 09:02:10');
INSERT INTO `teclados` VALUES (143, 'N/S', '219096', 8, 2, 148, '1', '2020-11-20 09:33:51', '2020-11-20 09:33:51');
INSERT INTO `teclados` VALUES (144, 'BT822DG0874', '218959', 8, 2, 165, '1', '2020-11-20 09:49:11', '2020-11-20 09:49:11');
INSERT INTO `teclados` VALUES (145, '40761921', '229333', 13, 1, 147, '1', '2020-11-20 10:07:42', '2020-11-20 10:07:42');
INSERT INTO `teclados` VALUES (146, 'KBUSBOP25914800969K', '225068', 15, 1, 146, '1', '2020-11-20 11:07:50', '2020-11-20 11:07:50');
INSERT INTO `teclados` VALUES (147, '820003292', '224627', 8, 1, 166, '1', '2020-11-20 11:28:03', '2020-11-20 11:28:03');
INSERT INTO `teclados` VALUES (148, '9129800114B', '218390', 14, 1, 167, '1', '2020-11-20 11:39:08', '2020-11-20 11:39:08');
INSERT INTO `teclados` VALUES (149, '1B5851883', '225460', 31, 1, 144, '1', '2020-11-20 11:54:21', '2020-11-20 11:54:21');
INSERT INTO `teclados` VALUES (150, '0K6KKPN-71616-23N-04JYA00', '224718', 3, 1, 145, '1', '2020-11-20 12:08:54', '2020-11-20 12:08:54');
INSERT INTO `teclados` VALUES (151, 'KBVCB0319202900031', '222183', 15, 1, 168, '1', '2020-11-20 14:04:03', '2020-11-20 14:04:03');
INSERT INTO `teclados` VALUES (152, 'IMBT01411103436', '231998', 14, 1, 169, '1', '2020-11-24 08:38:15', '2020-11-24 08:38:15');
INSERT INTO `teclados` VALUES (153, '201303', '228578', 39, 1, 171, '1', '2020-11-24 14:12:21', '2020-11-24 14:12:21');
INSERT INTO `teclados` VALUES (154, '82001082', '219185', 70, 1, 172, '1', '2020-11-24 14:25:23', '2020-11-24 14:25:23');
INSERT INTO `teclados` VALUES (155, '031920290034', '222155', 15, 1, 173, '1', '2020-11-24 14:37:26', '2020-11-24 14:37:26');
INSERT INTO `teclados` VALUES (156, '2591480091', '225026', 15, 1, 174, '1', '2020-11-24 15:04:42', '2020-11-24 15:04:42');
INSERT INTO `teclados` VALUES (157, '868026-0403', '218985', 8, 1, 175, '1', '2020-11-24 15:09:13', '2020-11-24 15:09:13');
INSERT INTO `teclados` VALUES (158, '8B159026', '219021', 84, 2, 176, '1', '2020-11-30 08:28:27', '2020-11-30 08:29:26');
INSERT INTO `teclados` VALUES (159, '06W610-71616-3AN-8001', '219160', 3, 1, 177, '1', '2020-11-30 15:19:10', '2020-11-30 15:19:10');

-- ----------------------------
-- Table structure for tvideos
-- ----------------------------
DROP TABLE IF EXISTS `tvideos`;
CREATE TABLE `tvideos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_fabricante_id` bigint(20) UNSIGNED NOT NULL,
  `nm_velocidad_ram_id` bigint(20) UNSIGNED NOT NULL,
  `computadora_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tvideos_nm_fabricante_id_foreign`(`nm_fabricante_id`) USING BTREE,
  INDEX `tvideos_nm_velocidad_ram_id_foreign`(`nm_velocidad_ram_id`) USING BTREE,
  INDEX `tvideos_computadora_id_foreign`(`computadora_id`) USING BTREE,
  CONSTRAINT `tvideos_computadora_id_foreign` FOREIGN KEY (`computadora_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tvideos_nm_fabricante_id_foreign` FOREIGN KEY (`nm_fabricante_id`) REFERENCES `nm_fabricantes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tvideos_nm_velocidad_ram_id_foreign` FOREIGN KEY (`nm_velocidad_ram_id`) REFERENCES `nm_velocidad_rams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `admin` int(255) NULL DEFAULT 0,
  `dpto` int(255) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Reyvi Bilbao Betancourt', 'reyvi@eleccmg.une.cu', NULL, '$2y$10$Gp2HQTtQyMKoJ1Ge9eoW/evMNRp0vnLEOmI81Lseq1.aN0pYeQbhW', 'fUeLi9JtPnbkldVUaRY19OZOr5SNQuAjaVhyxO3tUjiBkzBFKxOy0asepAlk', 1, 1, '2020-06-30 15:17:34', '2020-11-12 10:52:47');
INSERT INTO `users` VALUES (2, 'Erick Yorki Olivera', 'eriyorkis@eleccmg.une.cu', NULL, '$2y$10$vWSOKVQzutbdMR4Z9w7ELeau3DtHutE62otXvPGC/DTnrzbJURXay', NULL, 0, 1, '2020-06-30 15:19:27', '2020-10-16 15:21:47');
INSERT INTO `users` VALUES (3, 'Dariel La Rosa Pacheco', 'jdariel@eleccmg.une.cu', NULL, '$2y$10$AFjVN3rVIKDHr3tLZJSlbeGLq3D4osYZHOSQfZf27jgOcxeYhnbPu', '3wGKSQpAhvNytAtJD4KupYZ9oyNImVLAN2v3gFZ5MNGryiK874TYhQMfzqEK', 0, 1, '2020-09-01 16:07:33', '2020-09-03 20:01:59');
INSERT INTO `users` VALUES (4, 'Javier Fernández Marrero', 'javier@eleccmg.une.cu', NULL, '$2y$10$7SaBFaT4CvsSN9R45j98v.CQay70Iy7Pw4PI.LyOZO6Siuei8zaRa', NULL, 0, 1, '2020-09-03 20:01:37', '2020-09-03 20:01:51');
INSERT INTO `users` VALUES (5, 'Marcos Ferreira Reyes', 'marcosfr@eleccmg.une.cu', NULL, '$2y$10$gZjqv.hzq7UcOFSEiIXDKOQSjmrk2H0noWEA3tNKZhWJKOupeMd0e', NULL, 0, 1, '2020-09-07 14:21:56', '2021-04-23 07:51:27');
INSERT INTO `users` VALUES (6, 'Erduin Luis Ramirez', 'erduin@eleccmg.une.cu', NULL, '$2y$10$/EkDdDlxBK9cYNqgQG4eoeSHf/8JjOiS011.oDDx1J7/PP3y9aUDO', NULL, 1, 1, '2020-09-24 12:05:04', '2020-10-29 19:45:51');
INSERT INTO `users` VALUES (8, 'Karine Miniet Marín', 'karine@eleccmg.une.cu', NULL, '$2y$10$pMyntH1QVn0kQsgPc7KUn.bU76HqHwEP.glrdps/QGyX5ZyGy4eeC', 'qGpPbZQSTMK79vDn3JENzUs1Wvrre5QazIPHHVJDHbp75DaxZuj9w3bND6wq', 0, 1, '2020-11-13 09:43:41', '2020-11-13 09:43:41');
INSERT INTO `users` VALUES (9, 'Ricardo Vega Gonzalez', 'richard@eleccmg.une.cu', NULL, '$2y$10$cqhalowU1FrFINY220b2tev4wo8JOeSx5l7BkS8z1f0pp4Q/dgSFW', NULL, 0, 1, '2020-11-16 14:41:02', '2021-04-01 08:24:09');
INSERT INTO `users` VALUES (10, 'Reinier Rodríguez Valdés', 'reinier@eleccmg.une.cu', NULL, '$2y$10$Q8Umn715ReQh3Cl0V4qEUOocbzPOzx3To0kmol8nV7Z.z5i1EsuL2', 'm8OapsQIQYptxRaX26lWug4Nk9opWSXCYIOfm6hfo2gNvkfEHLtFTMFk2LWO', 0, 1, '2021-02-05 09:12:35', '2021-02-05 10:01:25');
INSERT INTO `users` VALUES (11, 'Alejandro Aparicio Kalernicov', 'alejandro@eleccmg.une.cu', NULL, '$2y$10$dA1uaUazrYPhjYp6meHXxunOyA8bf5A.2cKvBtSYbCRBXwnUzLDpW', NULL, 0, 1, '2021-03-09 13:50:25', '2021-03-09 13:50:25');
INSERT INTO `users` VALUES (12, 'Octavio Martin Loforte', 'octaviom@eleccmg.une.cu', NULL, '$2y$10$7Q0ZFwNDCLWgXzm9NE2.EOVJ.uDXjIUrCBwvBh0WATecDLw03QkQi', 'Lv1hPFmR8aTqLQi6cNUHFKoJ4WhqRrQgayzPWzNe0mxVbOpI9e8L89gEe2IU', 0, 1, '2021-04-01 08:25:38', '2021-04-01 08:25:38');

-- ----------------------------
-- View structure for pcs
-- ----------------------------
DROP VIEW IF EXISTS `pcs`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `pcs` AS select `c`.`id` AS `id`,`c`.`nombre` AS `nombre`,`c`.`numero_inventario` AS `numero_inventario`,`c`.`ip` AS `ip`,`c`.`mac` AS `mac`,`ueb`.`name` AS `UEB`,`s`.`name` AS `SO`,`d`.`name` AS `Dpto` from (((`computadoras` `c` join `nm_uebs` `ueb` on((`c`.`nm_ueb_id` = `ueb`.`id`))) join `nm_sistemas` `s` on((`c`.`nm_sistema_id` = `s`.`id`))) join `nm_departamentos` `d` on((`c`.`nm_departamento_id` = `d`.`id`)));

-- ----------------------------
-- View structure for view_averias
-- ----------------------------
DROP VIEW IF EXISTS `view_averias`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_averias` AS select `av`.`id` AS `id`,`nma`.`name` AS `Averia`,`nmd`.`name` AS `Departamento`,`av`.`nombre` AS `nombre`,(case when (`av`.`lugar` = 1) then 'Corporativa' when (`av`.`lugar` = 2) then 'Operativa' end) AS `Lugar`,`av`.`num_reporte_etecsa` AS `num_reporte_etecsa`,(case when (`av`.`estado` = 1) then 'Abierto' when (`av`.`estado` = 2) then 'En Proceso' when (`av`.`estado` = 3) then 'Cerrado' end) AS `Estado`,`av`.`estado` AS `num_estado`,`av`.`description` AS `description`,`av`.`flag` AS `flag`,`av`.`created_at` AS `Fecha` from ((`averias` `av` join `nm_averias` `nma` on((`av`.`nm_averia_id` = `nma`.`id`))) join `nm_departamentos` `nmd` on((`av`.`nm_departamento_id` = `nmd`.`id`)));

-- ----------------------------
-- View structure for view_backups
-- ----------------------------
DROP VIEW IF EXISTS `view_backups`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_backups` AS select `bck`.`id` AS `id`,`bck`.`sn` AS `sn`,`bck`.`model` AS `model`,`bck`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`nmp`.`name` AS `Potencia`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`bck`.`state` AS `state` from ((((`backups` `bck` join `nm_fabricantes` `nmf` on((`bck`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_potencias` `nmp` on((`bck`.`nm_potencia_id` = `nmp`.`id`))) join `computadoras` `pcs` on((`bck`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_displays
-- ----------------------------
DROP VIEW IF EXISTS `view_displays`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_displays` AS select `dsp`.`id` AS `id`,`dsp`.`sn` AS `sn`,`dsp`.`model` AS `model`,`dsp`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`nmm`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`dsp`.`state` AS `state` from ((((`displays` `dsp` join `nm_fabricantes` `nmf` on((`dsp`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_monitors` `nmm` on((`dsp`.`nm_monitor_id` = `nmm`.`id`))) join `computadoras` `pcs` on((`dsp`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_fuentes
-- ----------------------------
DROP VIEW IF EXISTS `view_fuentes`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_fuentes` AS select `fnt`.`id` AS `id`,`fnt`.`sn` AS `sn`,`fnt`.`model` AS `model`,`nmf`.`name` AS `Fabricante`,`nmp`.`name` AS `Potencia`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`fnt`.`state` AS `state` from ((((`fuentes` `fnt` join `nm_fabricantes` `nmf` on((`fnt`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_potencias` `nmp` on((`fnt`.`nm_potencia_id` = `nmp`.`id`))) join `computadoras` `pcs` on((`fnt`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_hdds
-- ----------------------------
DROP VIEW IF EXISTS `view_hdds`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_hdds` AS select `hdd`.`id` AS `id`,`hdd`.`sn` AS `sn`,`hdd`.`model` AS `model`,`nmf`.`name` AS `Fabricante`,`nmc`.`name` AS `Capacidad`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`hdd`.`state` AS `state` from ((((`hdds` `hdd` join `nm_fabricantes` `nmf` on((`hdd`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_capacidad_hdds` `nmc` on((`hdd`.`nm_capacidad_hdd_id` = `nmc`.`id`))) join `computadoras` `pcs` on((`hdd`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_lectorcds
-- ----------------------------
DROP VIEW IF EXISTS `view_lectorcds`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_lectorcds` AS select `lcd`.`id` AS `id`,`lcd`.`sn` AS `sn`,`lcd`.`model` AS `model`,`nmf`.`name` AS `Fabricante`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`lcd`.`state` AS `state` from (((`lectorcds` `lcd` join `nm_fabricantes` `nmf` on((`lcd`.`nm_fabricante_id` = `nmf`.`id`))) join `computadoras` `pcs` on((`lcd`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_microprocesadors
-- ----------------------------
DROP VIEW IF EXISTS `view_microprocesadors`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_microprocesadors` AS select `mcp`.`id` AS `id`,`mcp`.`sn` AS `sn`,`mcp`.`velocidad` AS `velocidad`,`nmf`.`name` AS `Fabricante`,`nmp`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`mcp`.`state` AS `state` from ((((`microprocesadors` `mcp` join `nm_fabricantes` `nmf` on((`mcp`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_procesadors` `nmp` on((`mcp`.`nm_procesador_id` = `nmp`.`id`))) join `computadoras` `pcs` on((`mcp`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_motherboards
-- ----------------------------
DROP VIEW IF EXISTS `view_motherboards`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_motherboards` AS select `mth`.`id` AS `id`,`mth`.`sn` AS `sn`,`mth`.`model` AS `model`,`mth`.`socket` AS `socket`,`nmf`.`name` AS `Fabricante`,`nmg`.`name` AS `Generacion`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`mth`.`state` AS `state` from ((((`motherboards` `mth` join `nm_fabricantes` `nmf` on((`mth`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_generacions` `nmg` on((`mth`.`nm_generacion_id` = `nmg`.`id`))) join `computadoras` `pcs` on((`mth`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_printers
-- ----------------------------
DROP VIEW IF EXISTS `view_printers`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_printers` AS select `prt`.`id` AS `id`,`prt`.`sn` AS `sn`,`prt`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`nmp`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`prt`.`state` AS `state` from ((((`printers` `prt` join `nm_fabricantes` `nmf` on((`prt`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_printers` `nmp` on((`prt`.`nm_printer_id` = `nmp`.`id`))) join `computadoras` `pcs` on((`prt`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_rams
-- ----------------------------
DROP VIEW IF EXISTS `view_rams`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_rams` AS select `rm`.`id` AS `id`,`rm`.`sn` AS `sn`,`nmf`.`name` AS `Fabricante`,`nvr`.`name` AS `Velocidad`,`nr`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`rm`.`state` AS `state` from (((((`rams` `rm` join `nm_fabricantes` `nmf` on((`rm`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_velocidad_rams` `nvr` on((`rm`.`nm_velocidad_ram_id` = `nvr`.`id`))) join `nm_rams` `nr` on((`rm`.`nm_ram_id` = `nr`.`id`))) join `computadoras` `pcs` on((`rm`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_ratons
-- ----------------------------
DROP VIEW IF EXISTS `view_ratons`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_ratons` AS select `tcl`.`id` AS `id`,`tcl`.`sn` AS `sn`,`tcl`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`nmc`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`tcl`.`state` AS `state` from ((((`ratons` `tcl` join `nm_fabricantes` `nmf` on((`tcl`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_conectors` `nmc` on((`tcl`.`nm_conector_id` = `nmc`.`id`))) join `computadoras` `pcs` on((`tcl`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_speakers
-- ----------------------------
DROP VIEW IF EXISTS `view_speakers`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_speakers` AS select `dsp`.`id` AS `id`,`dsp`.`sn` AS `sn`,`dsp`.`model` AS `model`,`dsp`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`dsp`.`state` AS `state` from (((`speakers` `dsp` join `nm_fabricantes` `nmf` on((`dsp`.`nm_fabricante_id` = `nmf`.`id`))) join `computadoras` `pcs` on((`dsp`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_statisc_averias
-- ----------------------------
DROP VIEW IF EXISTS `view_statisc_averias`;
CREATE ALGORITHM = UNDEFINED DEFINER = `reyvi`@`%` SQL SECURITY DEFINER VIEW `view_statisc_averias` AS select month(`averias`.`created_at`) AS `mes`,year(`averias`.`created_at`) AS `anno`,count((case when (`averias`.`estado` = 1) then `averias`.`estado` end)) AS `abierto`,count((case when (`averias`.`estado` = 2) then `averias`.`estado` end)) AS `proceso`,count((case when (`averias`.`estado` = 3) then `averias`.`estado` end)) AS `cerrado`,count(`averias`.`estado`) AS `total` from `averias` group by month(`averias`.`created_at`) order by month(`averias`.`created_at`);

-- ----------------------------
-- View structure for view_teclados
-- ----------------------------
DROP VIEW IF EXISTS `view_teclados`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_teclados` AS select `tcl`.`id` AS `id`,`tcl`.`sn` AS `sn`,`tcl`.`inventario` AS `inventario`,`nmf`.`name` AS `Fabricante`,`nmc`.`name` AS `Tipo`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`tcl`.`state` AS `state` from ((((`teclados` `tcl` join `nm_fabricantes` `nmf` on((`tcl`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_conectors` `nmc` on((`tcl`.`nm_conector_id` = `nmc`.`id`))) join `computadoras` `pcs` on((`tcl`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

-- ----------------------------
-- View structure for view_tvideos
-- ----------------------------
DROP VIEW IF EXISTS `view_tvideos`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_tvideos` AS select `fnt`.`id` AS `id`,`fnt`.`sn` AS `sn`,`fnt`.`model` AS `model`,`nmf`.`name` AS `Fabricante`,`nmp`.`name` AS `Capacidad`,`pcs`.`nombre` AS `Computadora`,`pcs`.`id` AS `IdPC`,`ueb`.`name` AS `UEB`,`fnt`.`state` AS `state` from ((((`tvideos` `fnt` join `nm_fabricantes` `nmf` on((`fnt`.`nm_fabricante_id` = `nmf`.`id`))) join `nm_velocidad_rams` `nmp` on((`fnt`.`nm_velocidad_ram_id` = `nmp`.`id`))) join `computadoras` `pcs` on((`fnt`.`computadora_id` = `pcs`.`id`))) join `nm_uebs` `ueb` on((`pcs`.`nm_ueb_id` = `ueb`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
