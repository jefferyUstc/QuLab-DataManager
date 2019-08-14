/*
 Navicat Premium Data Transfer

 Source Server         : galaxy_mysql_for_datasearch
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : galaxy.ustc.edu.cn:15007
 Source Schema         : datamanager

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/08/2019 21:36:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (1, 'manager');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (2, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (1, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 40);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add article', 7, 'add_article');
INSERT INTO `auth_permission` VALUES (26, 'Can change article', 7, 'change_article');
INSERT INTO `auth_permission` VALUES (27, 'Can delete article', 7, 'delete_article');
INSERT INTO `auth_permission` VALUES (28, 'Can view article', 7, 'view_article');
INSERT INTO `auth_permission` VALUES (29, 'Can add data', 8, 'add_data');
INSERT INTO `auth_permission` VALUES (30, 'Can change data', 8, 'change_data');
INSERT INTO `auth_permission` VALUES (31, 'Can delete data', 8, 'delete_data');
INSERT INTO `auth_permission` VALUES (32, 'Can view data', 8, 'view_data');
INSERT INTO `auth_permission` VALUES (33, 'Can add cell type', 9, 'add_celltype');
INSERT INTO `auth_permission` VALUES (34, 'Can change cell type', 9, 'change_celltype');
INSERT INTO `auth_permission` VALUES (35, 'Can delete cell type', 9, 'delete_celltype');
INSERT INTO `auth_permission` VALUES (36, 'Can view cell type', 9, 'view_celltype');
INSERT INTO `auth_permission` VALUES (37, 'Can add metadata', 10, 'add_metadata');
INSERT INTO `auth_permission` VALUES (38, 'Can change metadata', 10, 'change_metadata');
INSERT INTO `auth_permission` VALUES (39, 'Can delete metadata', 10, 'delete_metadata');
INSERT INTO `auth_permission` VALUES (40, 'Can view metadata', 10, 'view_metadata');
INSERT INTO `auth_permission` VALUES (41, 'Can add annotation', 11, 'add_annotation');
INSERT INTO `auth_permission` VALUES (42, 'Can change annotation', 11, 'change_annotation');
INSERT INTO `auth_permission` VALUES (43, 'Can delete annotation', 11, 'delete_annotation');
INSERT INTO `auth_permission` VALUES (44, 'Can view annotation', 11, 'view_annotation');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_groups` VALUES (1, 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for datasearch_annotation
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_annotation`;
CREATE TABLE `datasearch_annotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `control` tinyint(1) NOT NULL,
  `sample` tinyint(1) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `age` tinyint(1) NOT NULL,
  `clinical` tinyint(1) NOT NULL,
  `summary` longtext,
  `article_id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`),
  CONSTRAINT `datasearch_annotatio_article_id_4ef79406_fk_datasearc` FOREIGN KEY (`article_id`) REFERENCES `datasearch_article` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_annotation
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_annotation` VALUES (2, 0, 1, 1, 1, 1, 'The authors described a single cell transcriptome of 15 embryos of 9.5 days, 11 embryos of 10.5 days, 13 embryos of 11.5 days, 10 embryos of 12.5 days, and 12 embryos of 13.5 days by sci-RNA-seq3. All data were from the same experimental batch with a total of 2 million cells.', '30787437');
COMMIT;

-- ----------------------------
-- Table structure for datasearch_article
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_article`;
CREATE TABLE `datasearch_article` (
  `p_id` varchar(15) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `journal` varchar(255) NOT NULL,
  `pub_time` date NOT NULL,
  `up_user` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_article
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_article` VALUES ('30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 'Nature', '2019-02-20', 'ccp1997');
COMMIT;

-- ----------------------------
-- Table structure for datasearch_celltype
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_celltype`;
CREATE TABLE `datasearch_celltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datasearch_celltype_type_33c261c6_uniq` (`type`),
  KEY `datasearch_celltype_parent_id_baa58d07_fk_datasearch_celltype_id` (`parent_id`),
  CONSTRAINT `datasearch_celltype_parent_id_baa58d07_fk_datasearch_celltype_id` FOREIGN KEY (`parent_id`) REFERENCES `datasearch_celltype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_celltype
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_celltype` VALUES (9, 'All', NULL);
INSERT INTO `datasearch_celltype` VALUES (11, 'Whole cell', 9);
INSERT INTO `datasearch_celltype` VALUES (12, 'Acinar cell', 9);
INSERT INTO `datasearch_celltype` VALUES (13, 'Adipogenic stem and precursor cell', 9);
INSERT INTO `datasearch_celltype` VALUES (14, 'Allantois cell', 9);
INSERT INTO `datasearch_celltype` VALUES (15, 'Alpha cell', 9);
INSERT INTO `datasearch_celltype` VALUES (16, 'Alveolar cell', 9);
INSERT INTO `datasearch_celltype` VALUES (17, 'Arterial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (18, 'Astrocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (19, 'B cell', 9);
INSERT INTO `datasearch_celltype` VALUES (20, 'Basal cell', 9);
INSERT INTO `datasearch_celltype` VALUES (21, 'Bergmann glial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (23, 'Beta cell', 9);
INSERT INTO `datasearch_celltype` VALUES (24, 'Brush cell (Tuft cell)', 9);
INSERT INTO `datasearch_celltype` VALUES (25, 'Cajal-Retzius cell', 9);
INSERT INTO `datasearch_celltype` VALUES (26, 'Cancer cell', 9);
INSERT INTO `datasearch_celltype` VALUES (27, 'Cancer stem cell', 9);
INSERT INTO `datasearch_celltype` VALUES (28, 'Cardiomyocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (29, 'Ciliated cell', 9);
INSERT INTO `datasearch_celltype` VALUES (30, 'Clara cell', 9);
INSERT INTO `datasearch_celltype` VALUES (31, 'Collecting duct cell', 9);
INSERT INTO `datasearch_celltype` VALUES (32, 'Cortical cell', 9);
INSERT INTO `datasearch_celltype` VALUES (33, 'Decidual cell', 9);
INSERT INTO `datasearch_celltype` VALUES (34, 'Delta cell', 9);
INSERT INTO `datasearch_celltype` VALUES (35, 'Dendritic cell', 9);
INSERT INTO `datasearch_celltype` VALUES (36, 'Distal tubule cell', 9);
INSERT INTO `datasearch_celltype` VALUES (37, 'Ductal cell', 9);
INSERT INTO `datasearch_celltype` VALUES (38, 'Ectoderm cell', 9);
INSERT INTO `datasearch_celltype` VALUES (39, 'Embryonic cell', 9);
INSERT INTO `datasearch_celltype` VALUES (40, 'Endocardial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (41, 'Endoderm cell', 9);
INSERT INTO `datasearch_celltype` VALUES (42, 'Endothelial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (43, 'Enterocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (44, 'Enteroendocrine cell', 9);
INSERT INTO `datasearch_celltype` VALUES (45, 'Ependymal cell', 9);
INSERT INTO `datasearch_celltype` VALUES (46, 'Epiblast cell', 9);
INSERT INTO `datasearch_celltype` VALUES (47, 'Epithelial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (48, 'Erythroblast', 9);
INSERT INTO `datasearch_celltype` VALUES (49, 'Erythroid cell', 9);
INSERT INTO `datasearch_celltype` VALUES (50, 'Extraembryonic cell', 9);
INSERT INTO `datasearch_celltype` VALUES (51, 'Fibroblast', 9);
INSERT INTO `datasearch_celltype` VALUES (52, 'Germ cell', 9);
INSERT INTO `datasearch_celltype` VALUES (53, 'Glial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (54, 'Glomus cell', 9);
INSERT INTO `datasearch_celltype` VALUES (55, 'Goblet cell', 9);
INSERT INTO `datasearch_celltype` VALUES (56, 'Granulocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (57, 'Granulosa cell', 9);
INSERT INTO `datasearch_celltype` VALUES (58, 'Hematopoietic cell', 9);
INSERT INTO `datasearch_celltype` VALUES (59, 'Hepatocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (60, 'Immune cell', 9);
INSERT INTO `datasearch_celltype` VALUES (61, 'Ionocyte cell', 9);
INSERT INTO `datasearch_celltype` VALUES (62, 'Kupffer cell', 9);
INSERT INTO `datasearch_celltype` VALUES (63, 'Leydig cell', 9);
INSERT INTO `datasearch_celltype` VALUES (64, 'Lipofibroblast', 9);
INSERT INTO `datasearch_celltype` VALUES (65, 'Lymphocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (66, 'Macrophage', 9);
INSERT INTO `datasearch_celltype` VALUES (67, 'Medullary cell', 9);
INSERT INTO `datasearch_celltype` VALUES (68, 'Megakaryocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (69, 'Mesangial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (70, 'Mesenchymal cell', 9);
INSERT INTO `datasearch_celltype` VALUES (71, 'Mesoderm cell', 9);
INSERT INTO `datasearch_celltype` VALUES (72, 'Mesothelial cell', 9);
INSERT INTO `datasearch_celltype` VALUES (73, 'Monocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (74, 'Mural cell', 9);
INSERT INTO `datasearch_celltype` VALUES (75, 'Muscle cell', 9);
INSERT INTO `datasearch_celltype` VALUES (76, 'Myeloid cell', 9);
INSERT INTO `datasearch_celltype` VALUES (77, 'Myoblast', 9);
INSERT INTO `datasearch_celltype` VALUES (78, 'Myofibroblast', 9);
INSERT INTO `datasearch_celltype` VALUES (79, 'Myotube', 9);
INSERT INTO `datasearch_celltype` VALUES (80, 'Natural killer cell', 9);
INSERT INTO `datasearch_celltype` VALUES (81, 'Neural cell', 9);
INSERT INTO `datasearch_celltype` VALUES (82, 'Neuroblast', 9);
INSERT INTO `datasearch_celltype` VALUES (83, 'Neuroendocrine cell', 9);
INSERT INTO `datasearch_celltype` VALUES (84, 'Neuron', 9);
INSERT INTO `datasearch_celltype` VALUES (85, 'O cell', 9);
INSERT INTO `datasearch_celltype` VALUES (86, 'Oligodendrocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (87, 'Pancreatic polypeptide cell', 9);
INSERT INTO `datasearch_celltype` VALUES (88, 'Paneth cell', 9);
INSERT INTO `datasearch_celltype` VALUES (89, 'Pericyte', 9);
INSERT INTO `datasearch_celltype` VALUES (90, 'Pit cell', 9);
INSERT INTO `datasearch_celltype` VALUES (91, 'Podocyte', 9);
INSERT INTO `datasearch_celltype` VALUES (92, 'PP cell', 9);
INSERT INTO `datasearch_celltype` VALUES (93, 'Pre-haematopoietic stem cell', 9);
INSERT INTO `datasearch_celltype` VALUES (94, 'Pre-megakaryocyte-erythroid progenitor cell', 9);
INSERT INTO `datasearch_celltype` VALUES (95, 'Primitive erythroid cell', 9);
INSERT INTO `datasearch_celltype` VALUES (96, 'Primitive streak cell', 9);
INSERT INTO `datasearch_celltype` VALUES (97, 'Primitive vesicle cell', 9);
INSERT INTO `datasearch_celltype` VALUES (98, 'Progenitor cell', 9);
INSERT INTO `datasearch_celltype` VALUES (99, 'Proximal tubule cell', 9);
INSERT INTO `datasearch_celltype` VALUES (100, 'Red blood cell (erythrocyte)', 9);
INSERT INTO `datasearch_celltype` VALUES (101, 'Retinal ganglion cell', 9);
INSERT INTO `datasearch_celltype` VALUES (102, 'Secretory cell', 9);
INSERT INTO `datasearch_celltype` VALUES (103, 'Sertoli cell', 9);
INSERT INTO `datasearch_celltype` VALUES (104, 'Smooth muscle cell', 9);
INSERT INTO `datasearch_celltype` VALUES (105, 'Stem cell', 9);
INSERT INTO `datasearch_celltype` VALUES (106, 'Stromal cell', 9);
INSERT INTO `datasearch_celltype` VALUES (107, 'T cell', 9);
INSERT INTO `datasearch_celltype` VALUES (108, 'Transit amplifying (TA) cell', 9);
INSERT INTO `datasearch_celltype` VALUES (109, 'Trophoblast cell', 9);
INSERT INTO `datasearch_celltype` VALUES (110, 'Ureteric bud cell', 9);
INSERT INTO `datasearch_celltype` VALUES (111, 'Venous cell', 9);
INSERT INTO `datasearch_celltype` VALUES (112, 'Germinal center B cell', 19);
INSERT INTO `datasearch_celltype` VALUES (113, 'Plasma cell', 19);
INSERT INTO `datasearch_celltype` VALUES (114, 'Cycling basal cell', 20);
INSERT INTO `datasearch_celltype` VALUES (115, 'Procr+ basal cell', 20);
INSERT INTO `datasearch_celltype` VALUES (116, 'Fetal germ cell', 52);
INSERT INTO `datasearch_celltype` VALUES (117, 'Oocyte', 52);
INSERT INTO `datasearch_celltype` VALUES (118, 'Spermatogonium', 52);
INSERT INTO `datasearch_celltype` VALUES (119, 'Microglial cell', 53);
INSERT INTO `datasearch_celltype` VALUES (120, 'Olfactory ensheathing glia', 53);
INSERT INTO `datasearch_celltype` VALUES (121, 'Basophil', 56);
INSERT INTO `datasearch_celltype` VALUES (122, 'Eosinophil', 57);
INSERT INTO `datasearch_celltype` VALUES (123, 'Mast cell', 56);
INSERT INTO `datasearch_celltype` VALUES (124, 'Neutrophil', 56);
INSERT INTO `datasearch_celltype` VALUES (125, 'CD4+ T cell', 107);
INSERT INTO `datasearch_celltype` VALUES (126, 'CD8+ T cell', 107);
INSERT INTO `datasearch_celltype` VALUES (127, 'Regulatory T (Treg) cell', 107);
INSERT INTO `datasearch_celltype` VALUES (128, 'Natural killer T (NKT) cell', 107);
COMMIT;

-- ----------------------------
-- Table structure for datasearch_data
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_data`;
CREATE TABLE `datasearch_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` varchar(15) NOT NULL,
  `ani_model` varchar(2) NOT NULL,
  `data_format` varchar(20) NOT NULL,
  `data_type` varchar(6) NOT NULL,
  `data_class` varchar(3) NOT NULL,
  `disease_organ` varchar(100) NOT NULL,
  `n_samples` varchar(50) DEFAULT NULL,
  `seq_platform` varchar(100) DEFAULT NULL,
  `species` varchar(50) NOT NULL,
  `tech_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datasearch_data_article_id_4cc979ec_fk_datasearch_article_p_id` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_data
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_data` VALUES (1, '30787437', 'DM', 'fastq', 'scRNA', 'TCD', 'Normal embryo', '2 millions', 'Illumina NovaSeq 600', 'Mouse', 'sci-RNA-seq3');
COMMIT;

-- ----------------------------
-- Table structure for datasearch_data_cell_type
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_data_cell_type`;
CREATE TABLE `datasearch_data_cell_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_id` int(11) NOT NULL,
  `celltype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datasearch_data_cell_type_data_id_celltype_id_7ff892b6_uniq` (`data_id`,`celltype_id`),
  KEY `datasearch_data_cell_celltype_id_65b7b6f6_fk_datasearc` (`celltype_id`),
  CONSTRAINT `datasearch_data_cell_celltype_id_65b7b6f6_fk_datasearc` FOREIGN KEY (`celltype_id`) REFERENCES `datasearch_celltype` (`id`),
  CONSTRAINT `datasearch_data_cell_type_data_id_83ebbab4_fk_datasearch_data_id` FOREIGN KEY (`data_id`) REFERENCES `datasearch_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_data_cell_type
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_data_cell_type` VALUES (2, 1, 11);
COMMIT;

-- ----------------------------
-- Table structure for datasearch_metadata
-- ----------------------------
DROP TABLE IF EXISTS `datasearch_metadata`;
CREATE TABLE `datasearch_metadata` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_summary` longtext,
  `article_id` varchar(15) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `datasearch_metadata_article_id_fd758147_fk_datasearc` (`article_id`),
  CONSTRAINT `datasearch_metadata_article_id_fd758147_fk_datasearc` FOREIGN KEY (`article_id`) REFERENCES `datasearch_article` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasearch_metadata
-- ----------------------------
BEGIN;
INSERT INTO `datasearch_metadata` VALUES (1, 'We can get the information which cell belongs to each embryo and the development time and the gender of each embryo.', '30787437');
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2019-08-02 13:25:09.862193', '1', 'Mouse embryo scRNA-seq data.fastq', 2, '[{\"changed\": {\"fields\": [\"up_time\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-08-02 13:49:24.889297', 'sdfsdfs', 'sdfsdfsd', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-08-02 13:49:46.687971', 'sdfsdfs', 'sdfsdfsd', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-08-02 13:55:07.156808', '1', 'manager', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-08-05 12:21:57.093589', '1', 'Metadata object (1)', 2, '[{\"changed\": {\"fields\": [\"s_summary\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-08-05 12:55:10.779475', '1', 'Whole cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-08-05 12:57:27.495956', '1', 'Mouse embryo development scRNA data.fastq', 2, '[{\"changed\": {\"fields\": [\"file_name\", \"up_user\", \"dataclass\", \"species\", \"ani_model\", \"disease_organ\", \"cell_type\", \"data_type\", \"tech_type\", \"seq_platform\", \"n_samples\", \"data_format\", \"ann_status\", \"summary\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-08-05 13:03:02.213505', '1', 'manager', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-08-05 13:04:16.194250', '2', 'T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-08-05 13:04:23.522235', '3', 'B cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-08-05 13:05:28.183036', '30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[{\"changed\": {\"fields\": [\"DOI\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-08-06 01:22:27.824223', '2', 'xuhao', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (13, '2019-08-06 01:23:55.650462', '2', 'xuhao', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (14, '2019-08-06 07:16:58.190133', '30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[{\"added\": {\"name\": \"annotation\", \"object\": \"The single-cell transcriptional landscape of mammalian organogenesis\"}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2019-08-06 07:17:33.969790', '30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2019-08-06 08:20:47.393785', '2', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[]', 11, 1);
INSERT INTO `django_admin_log` VALUES (17, '2019-08-06 08:33:22.232649', '1', 'manager', 2, '[]', 3, 1);
INSERT INTO `django_admin_log` VALUES (18, '2019-08-06 08:36:15.847833', '1', 'manager', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (19, '2019-08-07 01:17:37.400558', '30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (20, '2019-08-09 10:18:27.348879', '4', 'All', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (21, '2019-08-09 10:18:37.672976', '3', 'B cell', 2, '[{\"changed\": {\"fields\": [\"parent\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (22, '2019-08-09 10:18:42.755346', '2', 'T cell', 2, '[{\"changed\": {\"fields\": [\"parent\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (23, '2019-08-09 10:18:51.792528', '1', 'Whole cell', 2, '[{\"changed\": {\"fields\": [\"parent\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (24, '2019-08-09 10:19:49.463344', '5', 'CD4+ T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (25, '2019-08-09 10:20:10.907786', '6', 'CD8+ T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (26, '2019-08-09 10:21:43.032903', '7', 'Natural killer cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (27, '2019-08-10 08:59:10.069392', '8', 'Acinar cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (28, '2019-08-10 09:00:15.031609', '8', 'Acinar cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (29, '2019-08-10 09:00:15.092103', '7', 'Natural killer cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (30, '2019-08-10 09:00:15.110453', '6', 'CD8+ T cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (31, '2019-08-10 09:00:15.218590', '5', 'CD4+ T cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (32, '2019-08-10 09:00:15.263743', '4', 'All', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (33, '2019-08-10 09:00:15.366389', '3', 'B cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (34, '2019-08-10 09:00:15.413607', '2', 'T cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (35, '2019-08-10 09:00:15.455867', '1', 'Whole cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (36, '2019-08-10 09:00:24.714329', '9', 'All', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (37, '2019-08-10 09:00:31.090768', '10', 'Whole cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (38, '2019-08-10 09:00:42.782630', '10', 'Whole cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (39, '2019-08-10 09:00:53.807926', '11', 'Whole cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (40, '2019-08-10 09:05:22.229156', '30787437', 'The single-cell transcriptional landscape of mammalian organogenesis', 2, '[{\"changed\": {\"name\": \"data\", \"object\": \"The single-cell transcriptional landscape of mammalian organogenesis\", \"fields\": [\"cell_type\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (41, '2019-08-10 09:05:57.203497', '12', 'Acinar cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (42, '2019-08-10 09:11:32.815465', '13', 'Adipogenic stem and precursor cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (43, '2019-08-10 09:11:39.989360', '13', 'Adipogenic stem and precursor cell', 2, '[{\"changed\": {\"fields\": [\"parent\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (44, '2019-08-10 09:11:59.283667', '14', 'Allantois cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (45, '2019-08-10 09:12:10.346500', '15', 'Alpha cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (46, '2019-08-10 09:12:48.347769', '16', 'Alveolar cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (47, '2019-08-10 09:13:21.224691', '17', 'Arterial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (48, '2019-08-10 09:13:26.680103', '18', 'Astrocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (49, '2019-08-10 09:13:34.033675', '19', 'B cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (50, '2019-08-10 09:13:50.082436', '20', 'Basal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (51, '2019-08-10 09:14:14.629706', '21', 'Bergmann glial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (52, '2019-08-10 09:14:23.782913', '22', 'Bergmann glial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (53, '2019-08-10 09:14:34.548313', '22', 'Bergmann glial cell', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (54, '2019-08-10 09:20:51.927646', '23', 'Beta cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (55, '2019-08-10 09:21:03.382888', '24', 'Brush cell (Tuft cell)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (56, '2019-08-10 09:21:16.185780', '25', 'Cajal-Retzius cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (57, '2019-08-10 09:21:24.024817', '26', 'Cancer cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (58, '2019-08-10 09:21:31.741911', '27', 'Cancer stem cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (59, '2019-08-10 09:21:40.534517', '28', 'Cardiomyocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (60, '2019-08-10 09:21:47.383874', '29', 'Ciliated cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (61, '2019-08-10 09:21:53.592494', '30', 'Clara cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (62, '2019-08-10 09:22:00.898137', '31', 'Collecting duct cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (63, '2019-08-10 09:22:08.051602', '32', 'Cortical cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (64, '2019-08-12 02:36:11.312295', '33', 'Decidual cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (65, '2019-08-12 02:36:44.719424', '34', 'Delta cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (66, '2019-08-12 02:36:56.769871', '35', 'Dendritic cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (67, '2019-08-12 02:37:16.648165', '36', 'Distal tubule cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (68, '2019-08-12 02:37:22.178429', '37', 'Ductal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (69, '2019-08-12 02:37:29.597507', '38', 'Ectoderm cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (70, '2019-08-12 02:38:01.994644', '39', 'Embryonic cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (71, '2019-08-12 02:38:09.184243', '40', 'Endocardial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (72, '2019-08-12 02:38:24.483039', '41', 'Endoderm cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (73, '2019-08-12 02:38:32.722285', '42', 'Endothelial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (74, '2019-08-12 02:38:40.186143', '43', 'Enterocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (75, '2019-08-12 02:38:46.921507', '44', 'Enteroendocrine cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (76, '2019-08-12 02:38:55.145736', '45', 'Ependymal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (77, '2019-08-12 02:39:00.883197', '46', 'Epiblast cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (78, '2019-08-12 02:39:09.167762', '47', 'Epithelial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (79, '2019-08-12 02:39:16.426490', '48', 'Erythroblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (80, '2019-08-12 02:39:22.500023', '49', 'Erythroid cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (81, '2019-08-12 02:39:31.383439', '50', 'Extraembryonic cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (82, '2019-08-12 02:39:37.663892', '51', 'Fibroblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (83, '2019-08-12 02:39:48.153956', '52', 'Germ cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (84, '2019-08-12 02:39:57.825185', '53', 'Glial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (85, '2019-08-12 02:40:03.377270', '54', 'Glomus cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (86, '2019-08-12 02:40:09.363462', '55', 'Goblet cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (87, '2019-08-12 02:40:15.977566', '56', 'Granulocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (88, '2019-08-12 02:40:21.190772', '57', 'Granulosa cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (89, '2019-08-12 02:40:27.208023', '58', 'Hematopoietic cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (90, '2019-08-12 02:40:31.994855', '59', 'Hepatocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (91, '2019-08-12 02:40:36.693330', '60', 'Immune cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (92, '2019-08-12 02:40:42.678910', '61', 'Ionocyte cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (93, '2019-08-12 02:40:48.142272', '62', 'Kupffer cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (94, '2019-08-12 02:40:52.760417', '63', 'Leydig cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (95, '2019-08-12 02:40:58.150610', '64', 'Lipofibroblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (96, '2019-08-12 02:41:04.129474', '65', 'Lymphocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (97, '2019-08-12 02:41:09.080621', '66', 'Macrophage', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (98, '2019-08-12 02:41:14.029335', '67', 'Medullary cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (99, '2019-08-12 02:41:19.655873', '68', 'Megakaryocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (100, '2019-08-12 02:41:24.752762', '69', 'Mesangial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (101, '2019-08-12 02:41:30.416273', '70', 'Mesenchymal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (102, '2019-08-12 02:41:34.985302', '71', 'Mesoderm cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (103, '2019-08-12 02:41:40.432633', '72', 'Mesothelial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (104, '2019-08-12 02:41:46.974337', '73', 'Monocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (105, '2019-08-12 02:41:51.941634', '74', 'Mural cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (106, '2019-08-12 02:41:55.895644', '75', 'Muscle cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (107, '2019-08-12 02:42:01.224403', '76', 'Myeloid cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (108, '2019-08-12 02:42:11.730448', '77', 'Myoblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (109, '2019-08-12 02:42:19.676065', '78', 'Myofibroblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (110, '2019-08-12 02:42:26.126105', '79', 'Myotube', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (111, '2019-08-12 02:42:30.925379', '80', 'Natural killer cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (112, '2019-08-12 02:42:36.473853', '81', 'Neural cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (113, '2019-08-12 02:42:41.544403', '82', 'Neuroblast', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (114, '2019-08-12 02:42:49.178287', '83', 'Neuroendocrine cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (115, '2019-08-12 02:43:00.033007', '84', 'Neuron', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (116, '2019-08-12 02:43:08.748828', '85', 'O cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (117, '2019-08-12 02:43:13.988747', '86', 'Oligodendrocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (118, '2019-08-12 02:43:22.185017', '87', 'Pancreatic polypeptide cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (119, '2019-08-12 02:43:28.405775', '88', 'Paneth cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (120, '2019-08-12 02:43:34.198212', '89', 'Pericyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (121, '2019-08-12 02:43:43.570086', '90', 'Pit cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (122, '2019-08-12 02:43:52.183453', '91', 'Podocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (123, '2019-08-12 02:43:59.115444', '92', 'PP cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (124, '2019-08-12 02:44:04.446416', '93', 'Pre-haematopoietic stem cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (125, '2019-08-12 02:44:23.922575', '94', 'Pre-megakaryocyte-erythroid progenitor cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (126, '2019-08-12 02:44:28.946884', '95', 'Primitive erythroid cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (127, '2019-08-12 02:44:34.003647', '96', 'Primitive streak cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (128, '2019-08-12 02:44:38.468150', '97', 'Primitive vesicle cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (129, '2019-08-12 02:44:51.561198', '98', 'Progenitor cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (130, '2019-08-12 02:44:58.598173', '99', 'Proximal tubule cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (131, '2019-08-12 02:45:39.967921', '100', 'Red blood cell (erythrocyte)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (132, '2019-08-12 02:45:51.279232', '101', 'Retinal ganglion cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (133, '2019-08-12 02:45:57.248995', '102', 'Secretory cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (134, '2019-08-12 02:46:02.640415', '103', 'Sertoli cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (135, '2019-08-12 02:46:08.052444', '104', 'Smooth muscle cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (136, '2019-08-12 02:46:16.642876', '105', 'Stem cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (137, '2019-08-12 02:46:23.502786', '106', 'Stromal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (138, '2019-08-12 02:46:36.062239', '107', 'T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (139, '2019-08-12 02:46:43.649232', '108', 'Transit amplifying (TA) cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (140, '2019-08-12 02:46:56.110419', '109', 'Trophoblast cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (141, '2019-08-12 02:47:03.183517', '110', 'Ureteric bud cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (142, '2019-08-12 02:47:08.663878', '111', 'Venous cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (143, '2019-08-12 02:55:26.600686', '112', 'Germinal center B cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (144, '2019-08-12 02:55:33.526963', '112', 'Germinal center B cell', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (145, '2019-08-12 02:55:49.677229', '113', 'Plasma cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (146, '2019-08-12 02:56:08.021021', '114', 'Cycling basal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (147, '2019-08-12 02:56:19.535015', '115', 'Procr+ basal cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (148, '2019-08-12 02:57:23.772071', '116', 'Fetal germ cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (149, '2019-08-12 02:57:59.856036', '117', 'Oocyte', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (150, '2019-08-12 02:58:16.605553', '118', 'Spermatogonium', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (151, '2019-08-12 02:58:31.734170', '119', 'Microglial cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (152, '2019-08-12 02:58:46.263006', '120', 'Olfactory ensheathing glia', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (153, '2019-08-12 02:59:15.900129', '121', 'Basophil', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (154, '2019-08-12 02:59:25.618822', '122', 'Eosinophil', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (155, '2019-08-12 02:59:37.248112', '123', 'Mast cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (156, '2019-08-12 02:59:47.278443', '124', 'Neutrophil', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (157, '2019-08-12 03:00:07.748531', '125', 'CD4+ T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (158, '2019-08-12 03:00:15.915952', '126', 'CD8+ T cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (159, '2019-08-12 03:00:48.459423', '127', 'Regulatory T (Treg) cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (160, '2019-08-12 03:01:25.949117', '128', 'Natural killer T (NKT) cell', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (161, '2019-08-12 09:16:36.335771', '3', 'liuke', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (162, '2019-08-12 09:17:05.865838', '4', 'longfeili', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (163, '2019-08-12 09:17:33.577720', '5', 'shenzhuoqiao', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (164, '2019-08-12 09:18:02.206888', '6', 'wangjunyu', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (165, '2019-08-12 09:18:53.069826', '3', 'liuke', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (166, '2019-08-12 09:19:02.330492', '4', 'longfeili', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (167, '2019-08-12 09:19:08.871337', '5', 'shenzhuoqiao', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (168, '2019-08-12 09:19:14.950953', '6', 'wangjunyu', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (169, '2019-08-12 09:19:56.200404', '7', 'lingtianze', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (170, '2019-08-12 09:20:00.782381', '7', 'lingtianze', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'datasearch', 'annotation');
INSERT INTO `django_content_type` VALUES (7, 'datasearch', 'article');
INSERT INTO `django_content_type` VALUES (9, 'datasearch', 'celltype');
INSERT INTO `django_content_type` VALUES (8, 'datasearch', 'data');
INSERT INTO `django_content_type` VALUES (10, 'datasearch', 'metadata');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-08-02 06:51:37.367135');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-08-02 06:51:38.897925');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-08-02 06:51:44.156884');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-08-02 06:51:45.169439');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-08-02 06:51:45.202176');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-08-02 06:51:46.092363');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-08-02 06:51:46.785851');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-08-02 06:51:47.419575');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-08-02 06:51:47.450844');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-08-02 06:51:47.929600');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-08-02 06:51:47.952892');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-08-02 06:51:47.977711');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-08-02 06:51:48.452381');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-08-02 06:51:48.970749');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-08-02 06:51:49.527681');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-08-02 06:51:49.553970');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2019-08-02 06:51:49.797411');
INSERT INTO `django_migrations` VALUES (18, 'datasearch', '0001_initial', '2019-08-02 11:46:58.477202');
INSERT INTO `django_migrations` VALUES (19, 'datasearch', '0002_auto_20190802_1945', '2019-08-02 11:47:04.887431');
INSERT INTO `django_migrations` VALUES (20, 'datasearch', '0003_auto_20190802_2122', '2019-08-02 13:23:08.048127');
INSERT INTO `django_migrations` VALUES (21, 'datasearch', '0004_auto_20190805_2010', '2019-08-05 12:10:56.610571');
INSERT INTO `django_migrations` VALUES (22, 'datasearch', '0005_auto_20190805_2051', '2019-08-05 12:52:02.809141');
INSERT INTO `django_migrations` VALUES (23, 'datasearch', '0006_auto_20190806_1513', '2019-08-06 07:13:33.850850');
INSERT INTO `django_migrations` VALUES (24, 'datasearch', '0007_auto_20190806_1845', '2019-08-06 10:51:04.124227');
INSERT INTO `django_migrations` VALUES (25, 'datasearch', '0008_auto_20190809_1528', '2019-08-09 07:31:10.884403');
INSERT INTO `django_migrations` VALUES (26, 'datasearch', '0009_auto_20190809_1536', '2019-08-09 07:37:18.449914');
INSERT INTO `django_migrations` VALUES (27, 'datasearch', '0002_celltype_parent', '2019-08-09 10:14:53.935791');
INSERT INTO `django_migrations` VALUES (28, 'datasearch', '0003_auto_20190810_1710', '2019-08-10 09:10:31.681495');
INSERT INTO `django_migrations` VALUES (29, 'datasearch', '0004_auto_20190810_1720', '2019-08-10 09:20:21.248344');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('8xfgwqc9yu15o8c06eamgibnv5g6iaq2', 'MTU4Y2FmNzA0NGQyYmZmZGY5MjExYzFmMjg3NmUxNjhhZWVjNDJjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODQyYWRmYTIxYmRiYjhjM2RjNDA3MjViZGUxM2JhNzM4ZmE2YWYwIn0=', '2019-08-26 12:38:10.414159');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
