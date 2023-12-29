-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django_shop
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_tools_stats_cachedvalue`
--

DROP TABLE IF EXISTS admin_tools_stats_cachedvalue;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE admin_tools_stats_cachedvalue (
  id bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  time_scale varchar(90) NOT NULL,
  operation varchar(90) DEFAULT NULL,
  operation_field_name varchar(90) DEFAULT NULL,
  filtered_value varchar(512) DEFAULT NULL,
  `value` double DEFAULT NULL,
  dynamic_choices json NOT NULL,
  multiple_series_choice_id bigint DEFAULT NULL,
  stats_id bigint NOT NULL,
  is_final tinyint(1) NOT NULL,
  `order` int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY admin_tools_stats_cachedvalue_stats_id_952da855_fk (stats_id),
  KEY admin_tools_stats_cachedv_multiple_series_choice_id_f68b8312_fk (multiple_series_choice_id),
  CONSTRAINT admin_tools_stats_cachedv_multiple_series_choice_id_f68b8312_fk FOREIGN KEY (multiple_series_choice_id) REFERENCES dash_stats_criteria (id),
  CONSTRAINT admin_tools_stats_cachedvalue_stats_id_952da855_fk FOREIGN KEY (stats_id) REFERENCES dashboard_stats (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tools_stats_cachedvalue`
--


--
-- Table structure for table `admin_tools_stats_criteriatostatsm2m`
--

DROP TABLE IF EXISTS admin_tools_stats_criteriatostatsm2m;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE admin_tools_stats_criteriatostatsm2m (
  id bigint NOT NULL AUTO_INCREMENT,
  `order` int unsigned DEFAULT NULL,
  prefix varchar(255) NOT NULL,
  use_as varchar(90) NOT NULL,
  criteria_id bigint NOT NULL,
  stats_id bigint NOT NULL,
  default_option varchar(255) NOT NULL,
  choices_based_on_time_range tinyint(1) NOT NULL,
  count_limit int unsigned DEFAULT NULL,
  recalculate tinyint(1) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY `order` (`order`),
  KEY admin_tools_stats_criteriatostatsm2m_stats_id_10bd79ea_fk (stats_id),
  KEY admin_tools_stats_criteriatostatsm2m_criteria_id_bfe67f05_fk (criteria_id),
  CONSTRAINT admin_tools_stats_criteriatostatsm2m_criteria_id_bfe67f05_fk FOREIGN KEY (criteria_id) REFERENCES dash_stats_criteria (id),
  CONSTRAINT admin_tools_stats_criteriatostatsm2m_stats_id_10bd79ea_fk FOREIGN KEY (stats_id) REFERENCES dashboard_stats (id),
  CONSTRAINT admin_tools_stats_criteriatostatsm2m_chk_1 CHECK ((`order` >= 0)),
  CONSTRAINT admin_tools_stats_criteriatostatsm2m_chk_2 CHECK ((`count_limit` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tools_stats_criteriatostatsm2m`
--


--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS auth_group;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_group (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

INSERT INTO auth_group VALUES (1,'Quản lý liên hệ');
INSERT INTO auth_group VALUES (2,'Shipper');

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS auth_group_permissions;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_group_permissions (
  id bigint NOT NULL AUTO_INCREMENT,
  group_id int NOT NULL,
  permission_id int NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY auth_group_permissions_group_id_permission_id_0cd325b0_uniq (group_id,permission_id),
  KEY auth_group_permissio_permission_id_84c5c92e_fk_auth_perm (permission_id),
  CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission (id),
  CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group (id)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO auth_group_permissions VALUES (2,1,69);
INSERT INTO auth_group_permissions VALUES (3,1,70);
INSERT INTO auth_group_permissions VALUES (4,1,71);
INSERT INTO auth_group_permissions VALUES (1,1,72);
INSERT INTO auth_group_permissions VALUES (6,2,78);
INSERT INTO auth_group_permissions VALUES (5,2,80);
INSERT INTO auth_group_permissions VALUES (7,2,84);

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS auth_permission;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_permission (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  content_type_id int NOT NULL,
  codename varchar(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY auth_permission_content_type_id_codename_01ab375a_uniq (content_type_id,codename),
  CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type (id)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO auth_permission VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO auth_permission VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO auth_permission VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO auth_permission VALUES (4,'Can view log entry',1,'view_logentry');
INSERT INTO auth_permission VALUES (5,'Can add permission',2,'add_permission');
INSERT INTO auth_permission VALUES (6,'Can change permission',2,'change_permission');
INSERT INTO auth_permission VALUES (7,'Can delete permission',2,'delete_permission');
INSERT INTO auth_permission VALUES (8,'Can view permission',2,'view_permission');
INSERT INTO auth_permission VALUES (9,'Can add group',3,'add_group');
INSERT INTO auth_permission VALUES (10,'Can change group',3,'change_group');
INSERT INTO auth_permission VALUES (11,'Can delete group',3,'delete_group');
INSERT INTO auth_permission VALUES (12,'Can view group',3,'view_group');
INSERT INTO auth_permission VALUES (13,'Can add user',4,'add_user');
INSERT INTO auth_permission VALUES (14,'Can change user',4,'change_user');
INSERT INTO auth_permission VALUES (15,'Can delete user',4,'delete_user');
INSERT INTO auth_permission VALUES (16,'Can view user',4,'view_user');
INSERT INTO auth_permission VALUES (17,'Can add content type',5,'add_contenttype');
INSERT INTO auth_permission VALUES (18,'Can change content type',5,'change_contenttype');
INSERT INTO auth_permission VALUES (19,'Can delete content type',5,'delete_contenttype');
INSERT INTO auth_permission VALUES (20,'Can view content type',5,'view_contenttype');
INSERT INTO auth_permission VALUES (21,'Can add session',6,'add_session');
INSERT INTO auth_permission VALUES (22,'Can change session',6,'change_session');
INSERT INTO auth_permission VALUES (23,'Can delete session',6,'delete_session');
INSERT INTO auth_permission VALUES (24,'Can view session',6,'view_session');
INSERT INTO auth_permission VALUES (25,'Can add loai thong tin',7,'add_loaithongtin');
INSERT INTO auth_permission VALUES (26,'Can change loai thong tin',7,'change_loaithongtin');
INSERT INTO auth_permission VALUES (27,'Can delete loai thong tin',7,'delete_loaithongtin');
INSERT INTO auth_permission VALUES (28,'Can view loai thong tin',7,'view_loaithongtin');
INSERT INTO auth_permission VALUES (29,'Can add Nhà Tài Trợ',8,'add_nhataitro');
INSERT INTO auth_permission VALUES (30,'Can change Nhà Tài Trợ',8,'change_nhataitro');
INSERT INTO auth_permission VALUES (31,'Can delete Nhà Tài Trợ',8,'delete_nhataitro');
INSERT INTO auth_permission VALUES (32,'Can view Nhà Tài Trợ',8,'view_nhataitro');
INSERT INTO auth_permission VALUES (33,'Can add Cấu Hình',9,'add_thongtin');
INSERT INTO auth_permission VALUES (34,'Can change Cấu Hình',9,'change_thongtin');
INSERT INTO auth_permission VALUES (35,'Can delete Cấu Hình',9,'delete_thongtin');
INSERT INTO auth_permission VALUES (36,'Can view Cấu Hình',9,'view_thongtin');
INSERT INTO auth_permission VALUES (37,'Can add slide',10,'add_slide');
INSERT INTO auth_permission VALUES (38,'Can change slide',10,'change_slide');
INSERT INTO auth_permission VALUES (39,'Can delete slide',10,'delete_slide');
INSERT INTO auth_permission VALUES (40,'Can view slide',10,'view_slide');
INSERT INTO auth_permission VALUES (41,'Can add banner top',11,'add_bannertop');
INSERT INTO auth_permission VALUES (42,'Can change banner top',11,'change_bannertop');
INSERT INTO auth_permission VALUES (43,'Can delete banner top',11,'delete_bannertop');
INSERT INTO auth_permission VALUES (44,'Can view banner top',11,'view_bannertop');
INSERT INTO auth_permission VALUES (45,'Can add banner mid',12,'add_bannermid');
INSERT INTO auth_permission VALUES (46,'Can change banner mid',12,'change_bannermid');
INSERT INTO auth_permission VALUES (47,'Can delete banner mid',12,'delete_bannermid');
INSERT INTO auth_permission VALUES (48,'Can view banner mid',12,'view_bannermid');
INSERT INTO auth_permission VALUES (49,'Can add banner bottom',13,'add_bannerbottom');
INSERT INTO auth_permission VALUES (50,'Can change banner bottom',13,'change_bannerbottom');
INSERT INTO auth_permission VALUES (51,'Can delete banner bottom',13,'delete_bannerbottom');
INSERT INTO auth_permission VALUES (52,'Can view banner bottom',13,'view_bannerbottom');
INSERT INTO auth_permission VALUES (53,'Can add Chuyên Mục',14,'add_chuyenmuc');
INSERT INTO auth_permission VALUES (54,'Can change Chuyên Mục',14,'change_chuyenmuc');
INSERT INTO auth_permission VALUES (55,'Can delete Chuyên Mục',14,'delete_chuyenmuc');
INSERT INTO auth_permission VALUES (56,'Can view Chuyên Mục',14,'view_chuyenmuc');
INSERT INTO auth_permission VALUES (57,'Can add Sản Phẩm',15,'add_sanpham');
INSERT INTO auth_permission VALUES (58,'Can change Sản Phẩm',15,'change_sanpham');
INSERT INTO auth_permission VALUES (59,'Can delete Sản Phẩm',15,'delete_sanpham');
INSERT INTO auth_permission VALUES (60,'Can view Sản Phẩm',15,'view_sanpham');
INSERT INTO auth_permission VALUES (61,'Can add Bài Viết',16,'add_tintuc');
INSERT INTO auth_permission VALUES (62,'Can change Bài Viết',16,'change_tintuc');
INSERT INTO auth_permission VALUES (63,'Can delete Bài Viết',16,'delete_tintuc');
INSERT INTO auth_permission VALUES (64,'Can view Bài Viết',16,'view_tintuc');
INSERT INTO auth_permission VALUES (65,'Can add Khách Hàng',17,'add_khachhang');
INSERT INTO auth_permission VALUES (66,'Can change Khách Hàng',17,'change_khachhang');
INSERT INTO auth_permission VALUES (67,'Can delete Khách Hàng',17,'delete_khachhang');
INSERT INTO auth_permission VALUES (68,'Can view Khách Hàng',17,'view_khachhang');
INSERT INTO auth_permission VALUES (69,'Can add Liên Hệ',18,'add_lienhe');
INSERT INTO auth_permission VALUES (70,'Can change Liên Hệ',18,'change_lienhe');
INSERT INTO auth_permission VALUES (71,'Can delete Liên Hệ',18,'delete_lienhe');
INSERT INTO auth_permission VALUES (72,'Can view Liên Hệ',18,'view_lienhe');
INSERT INTO auth_permission VALUES (73,'Can add Giỏ Hàng',19,'add_giohang');
INSERT INTO auth_permission VALUES (74,'Can change Giỏ Hàng',19,'change_giohang');
INSERT INTO auth_permission VALUES (75,'Can delete Giỏ Hàng',19,'delete_giohang');
INSERT INTO auth_permission VALUES (76,'Can view Giỏ Hàng',19,'view_giohang');
INSERT INTO auth_permission VALUES (77,'Can add Đơn Hàng',20,'add_donhang');
INSERT INTO auth_permission VALUES (78,'Can change Đơn Hàng',20,'change_donhang');
INSERT INTO auth_permission VALUES (79,'Can delete Đơn Hàng',20,'delete_donhang');
INSERT INTO auth_permission VALUES (80,'Can view Đơn Hàng',20,'view_donhang');
INSERT INTO auth_permission VALUES (81,'Can add Chi Tiết Đơn Hàng',21,'add_chitietdonhang');
INSERT INTO auth_permission VALUES (82,'Can change Chi Tiết Đơn Hàng',21,'change_chitietdonhang');
INSERT INTO auth_permission VALUES (83,'Can delete Chi Tiết Đơn Hàng',21,'delete_chitietdonhang');
INSERT INTO auth_permission VALUES (84,'Can view Chi Tiết Đơn Hàng',21,'view_chitietdonhang');
INSERT INTO auth_permission VALUES (85,'Can add dashboard stats',22,'add_dashboardstats');
INSERT INTO auth_permission VALUES (86,'Can change dashboard stats',22,'change_dashboardstats');
INSERT INTO auth_permission VALUES (87,'Can delete dashboard stats',22,'delete_dashboardstats');
INSERT INTO auth_permission VALUES (88,'Can view dashboard stats',22,'view_dashboardstats');
INSERT INTO auth_permission VALUES (89,'Can add dashboard stats criteria',23,'add_dashboardstatscriteria');
INSERT INTO auth_permission VALUES (90,'Can change dashboard stats criteria',23,'change_dashboardstatscriteria');
INSERT INTO auth_permission VALUES (91,'Can delete dashboard stats criteria',23,'delete_dashboardstatscriteria');
INSERT INTO auth_permission VALUES (92,'Can view dashboard stats criteria',23,'view_dashboardstatscriteria');
INSERT INTO auth_permission VALUES (93,'Can add criteria to stats m2m',24,'add_criteriatostatsm2m');
INSERT INTO auth_permission VALUES (94,'Can change criteria to stats m2m',24,'change_criteriatostatsm2m');
INSERT INTO auth_permission VALUES (95,'Can delete criteria to stats m2m',24,'delete_criteriatostatsm2m');
INSERT INTO auth_permission VALUES (96,'Can view criteria to stats m2m',24,'view_criteriatostatsm2m');
INSERT INTO auth_permission VALUES (97,'Can add cached value',25,'add_cachedvalue');
INSERT INTO auth_permission VALUES (98,'Can change cached value',25,'change_cachedvalue');
INSERT INTO auth_permission VALUES (99,'Can delete cached value',25,'delete_cachedvalue');
INSERT INTO auth_permission VALUES (100,'Can view cached value',25,'view_cachedvalue');

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS auth_user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_user (
  id int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  last_login datetime(6) DEFAULT NULL,
  is_superuser tinyint(1) NOT NULL,
  username varchar(150) NOT NULL,
  first_name varchar(150) NOT NULL,
  last_name varchar(150) NOT NULL,
  email varchar(254) NOT NULL,
  is_staff tinyint(1) NOT NULL,
  is_active tinyint(1) NOT NULL,
  date_joined datetime(6) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

INSERT INTO auth_user VALUES (1,'pbkdf2_sha256$600000$PvbxoAK6qzAqPnf0I1dILq$CYLlulBACneiFPF/dgnHncbZJRjj9j++tdOrd+3qJ9k=','2023-12-27 16:51:27.441349',1,'admin','','','admin@gmail.com',1,1,'2023-11-09 10:05:53.000000');
INSERT INTO auth_user VALUES (2,'pbkdf2_sha256$600000$uHqtoHAFAWibPfCzSvy3WG$rBFixelmeAhQw46uHJiwyBlS4B1WCNo8MyjUpF2CUXk=','2023-12-17 20:23:58.320487',0,'leone','Nghia','Luong','',0,1,'2023-11-21 08:35:24.938145');
INSERT INTO auth_user VALUES (3,'pbkdf2_sha256$600000$oPIJFjTWpJYYyYRsI1WEvl$NoLS6kDNJtHRKfnjXqP2AYmbLUi57G8daBS8FjW0l84=','2023-12-12 19:55:09.619147',0,'nghia','Nghia','Luong','nigrumdiaster@gmail.com',0,1,'2023-12-12 19:55:02.244201');
INSERT INTO auth_user VALUES (4,'pbkdf2_sha256$600000$8XsEWVwiDWtmMA5D9RLHiy$rE9kKR7ON6GWm/KuW9qbjWIu3A1xL9V1S6Sf5HNj0H8=','2023-12-20 07:56:36.631392',0,'nghia1','Nghia','Luong','',0,1,'2023-12-13 11:13:56.232425');
INSERT INTO auth_user VALUES (5,'pbkdf2_sha256$600000$45YbafFwB6QBnlDybG9fnW$kEXUHI/ljG8IA0OvNV2Wu2TZAuX4pyfUYAexG2eKbvY=','2023-12-27 20:52:59.244888',0,'nghia5','Luong','Nghia','nghia5@gmail.com',1,1,'2023-12-19 01:27:14.000000');
INSERT INTO auth_user VALUES (6,'pbkdf2_sha256$600000$hSrKbaIovV6F2nOHeUtIR8$5iG72S70RjacVOt6EenTaaaWUyNGmSRqKZ2aMy1sYPY=','2023-12-24 08:54:18.887219',0,'nghia6','Luong','Nghia6','',1,1,'2023-12-19 02:06:22.000000');
INSERT INTO auth_user VALUES (7,'pbkdf2_sha256$600000$VE2d2YSlUpDT2lwFCPKx4q$6zr0eM3K8IoGMliRJXRIYdyI8y82B4VXsuZQ2+lxb1o=','2023-12-23 12:24:09.918377',0,'nghia10','Luong','Nghia10','nghia10@gmail.com',0,1,'2023-12-23 01:52:16.789282');
INSERT INTO auth_user VALUES (8,'pbkdf2_sha256$600000$oFTPemeF5gZB6Y0xGej9Zs$S/Y+1Fgokl7evneEgp+2yixUCVnf0e361p18JfOkGHQ=','2023-12-23 12:25:16.683936',0,'nghi1','phan','nghi1','',0,1,'2023-12-23 12:25:07.478622');

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS auth_user_groups;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_user_groups (
  id bigint NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  group_id int NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY auth_user_groups_user_id_group_id_94350c0c_uniq (user_id,group_id),
  KEY auth_user_groups_group_id_97559544_fk_auth_group_id (group_id),
  CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group (id),
  CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO auth_user_groups VALUES (1,5,1);
INSERT INTO auth_user_groups VALUES (2,6,2);

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS auth_user_user_permissions;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auth_user_user_permissions (
  id bigint NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  permission_id int NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY auth_user_user_permissions_user_id_permission_id_14a6b632_uniq (user_id,permission_id),
  KEY auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm (permission_id),
  CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission (id),
  CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO auth_user_user_permissions VALUES (1,5,80);

--
-- Table structure for table `cart_giohang`
--

DROP TABLE IF EXISTS cart_giohang;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cart_giohang (
  id bigint NOT NULL AUTO_INCREMENT,
  TenSanPham varchar(255) DEFAULT NULL,
  MoTaNgan longtext,
  GiaBan int DEFAULT NULL,
  SoLuong int NOT NULL,
  KhachHang_id bigint NOT NULL,
  SanPham_id bigint DEFAULT NULL,
  PRIMARY KEY (id),
  KEY cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id (KhachHang_id),
  KEY cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id (SanPham_id),
  CONSTRAINT cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id FOREIGN KEY (KhachHang_id) REFERENCES customer_khachhang (id),
  CONSTRAINT cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id FOREIGN KEY (SanPham_id) REFERENCES product_sanpham (id)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_giohang`
--

INSERT INTO cart_giohang VALUES (11,'Hi Tea Vải','Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.',49000,1,2,3);
INSERT INTO cart_giohang VALUES (37,'Bánh mì thịt nguội','Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng.',30000,1,1,1);
INSERT INTO cart_giohang VALUES (38,'Trà Long Nhãn Hạt Sen','Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.',49000,1,1,2);
INSERT INTO cart_giohang VALUES (39,'Hi Tea Vải','Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.',49000,1,1,3);
INSERT INTO cart_giohang VALUES (73,'CloudTea Oolong Berry','CloudTea Oolong Berry',47000,3,6,27);
INSERT INTO cart_giohang VALUES (74,'CloudTea Trà Xanh Tây Bắc','CloudTea Trà Xanh Tây Bắc',67000,1,6,26);
INSERT INTO cart_giohang VALUES (75,'Frosty Bánh Kem Dâu','Frosty Bánh Kem Dâu',50000,1,6,37);
INSERT INTO cart_giohang VALUES (76,'Frosty Choco Chip','Frosty Choco Chip',55000,1,7,38);
INSERT INTO cart_giohang VALUES (98,'Bánh mì thịt nguội','Bánh mì nhân thịt nguội',30000,1,5,1);
INSERT INTO cart_giohang VALUES (99,'Frosty Caramel Arabica','Frosty Caramel Arabica',45000,1,7,36);
INSERT INTO cart_giohang VALUES (100,'Frosty Bánh Kem Dâu','Frosty Bánh Kem Dâu',50000,1,7,37);

--
-- Table structure for table `contact_lienhe`
--

DROP TABLE IF EXISTS contact_lienhe;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contact_lienhe (
  id bigint NOT NULL AUTO_INCREMENT,
  TenKhachHang varchar(255) NOT NULL,
  Email varchar(255) NOT NULL,
  SoDienThoai varchar(11) NOT NULL,
  TieuDe varchar(500) NOT NULL,
  NoiDung longtext NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_lienhe`
--


--
-- Table structure for table `customer_khachhang`
--

DROP TABLE IF EXISTS customer_khachhang;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE customer_khachhang (
  id bigint NOT NULL AUTO_INCREMENT,
  SoDienThoai varchar(11) DEFAULT NULL,
  DiaChi varchar(500) DEFAULT NULL,
  GioiTinh varchar(10) NOT NULL,
  DuongDan varchar(50) DEFAULT NULL,
  User_id int NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY User_id (User_id),
  KEY customer_khachhang_DuongDan_69604dd5 (DuongDan),
  CONSTRAINT customer_khachhang_User_id_7e78d39d_fk_auth_user_id FOREIGN KEY (User_id) REFERENCES auth_user (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_khachhang`
--

INSERT INTO customer_khachhang VALUES (1,NULL,NULL,'','nghia-luong-2',2);
INSERT INTO customer_khachhang VALUES (2,'None','Saigon Gateway, XLHN','','nghia-luong-3',3);
INSERT INTO customer_khachhang VALUES (3,NULL,NULL,'','nghia-luong-4',4);
INSERT INTO customer_khachhang VALUES (4,'0380000802','HCM','','luong-nghia-5',5);
INSERT INTO customer_khachhang VALUES (5,NULL,NULL,'','luong-nghia6-6',6);
INSERT INTO customer_khachhang VALUES (6,'0945000000','HCM','','luong-nghia10-7',7);
INSERT INTO customer_khachhang VALUES (7,NULL,NULL,'','1',1);
INSERT INTO customer_khachhang VALUES (8,NULL,NULL,'','phan-nghi1-8',8);

--
-- Table structure for table `dash_stats_criteria`
--

DROP TABLE IF EXISTS dash_stats_criteria;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE dash_stats_criteria (
  id bigint NOT NULL AUTO_INCREMENT,
  criteria_name varchar(90) NOT NULL,
  criteria_fix_mapping json DEFAULT NULL,
  dynamic_criteria_field_name varchar(90) DEFAULT NULL,
  criteria_dynamic_mapping json DEFAULT NULL,
  created_date datetime(6) NOT NULL,
  updated_date datetime(6) NOT NULL,
  PRIMARY KEY (id),
  KEY dash_stats_criteria_criteria_name_7fe7ae1e (criteria_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dash_stats_criteria`
--


--
-- Table structure for table `dashboard_stats`
--

DROP TABLE IF EXISTS dashboard_stats;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE dashboard_stats (
  id bigint NOT NULL AUTO_INCREMENT,
  graph_key varchar(90) NOT NULL,
  graph_title varchar(90) NOT NULL,
  model_app_name varchar(90) NOT NULL,
  model_name varchar(90) NOT NULL,
  date_field_name varchar(90) NOT NULL,
  operation_field_name varchar(90) DEFAULT NULL,
  type_operation_field_name varchar(90) DEFAULT NULL,
  is_visible tinyint(1) NOT NULL,
  created_date datetime(6) NOT NULL,
  updated_date datetime(6) NOT NULL,
  user_field_name varchar(90) DEFAULT NULL,
  default_chart_type varchar(90) NOT NULL,
  default_time_period int unsigned NOT NULL,
  default_time_scale varchar(90) NOT NULL,
  y_axis_format varchar(90) DEFAULT NULL,
  `distinct` tinyint(1) NOT NULL,
  default_multiseries_criteria_id bigint DEFAULT NULL,
  show_to_users tinyint(1) NOT NULL,
  allowed_chart_types varchar(1000) DEFAULT NULL,
  allowed_time_scales varchar(1000) NOT NULL,
  allowed_type_operation_field_name varchar(1000) DEFAULT NULL,
  cache_values tinyint(1) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY graph_key (graph_key),
  KEY dashboard_stats_graph_title_99e6d271 (graph_title),
  KEY dashboard_stats_default_multiseries_criteria_id_1c00740c_fk (default_multiseries_criteria_id),
  CONSTRAINT dashboard_stats_default_multiseries_criteria_id_1c00740c_fk FOREIGN KEY (default_multiseries_criteria_id) REFERENCES admin_tools_stats_criteriatostatsm2m (id),
  CONSTRAINT dashboard_stats_chk_1 CHECK ((`default_time_period` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_stats`
--

INSERT INTO dashboard_stats VALUES (1,'mygraph1','Tổng người dùng','auth','User','date_joined','username','Count',1,'2023-12-20 04:10:23.428832','2023-12-27 15:56:19.744332',NULL,'discreteBarChart',31,'days',NULL,0,NULL,0,'discreteBarChart,lineChart','hours,days,weeks,months,quarters,years','Count',0);
INSERT INTO dashboard_stats VALUES (2,'mygraph2','Tổng đơn hàng','order','donhang','ThoiGian','TongTien','Count',1,'2023-12-20 04:18:49.392529','2023-12-27 15:56:01.164320',NULL,'discreteBarChart',31,'days',NULL,0,NULL,0,'discreteBarChart,lineChart','hours,days,weeks,months,quarters,years','Count',0);

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS django_admin_log;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE django_admin_log (
  id int NOT NULL AUTO_INCREMENT,
  action_time datetime(6) NOT NULL,
  object_id longtext,
  object_repr varchar(200) NOT NULL,
  action_flag smallint unsigned NOT NULL,
  change_message longtext NOT NULL,
  content_type_id int DEFAULT NULL,
  user_id int NOT NULL,
  PRIMARY KEY (id),
  KEY django_admin_log_content_type_id_c4bce8eb_fk_django_co (content_type_id),
  KEY django_admin_log_user_id_c564eba6_fk_auth_user_id (user_id),
  CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type (id),
  CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user (id),
  CONSTRAINT django_admin_log_chk_1 CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO django_admin_log VALUES (1,'2023-11-09 10:19:41.310124','1','Giá điện tăng 4,5% lên hơn 2.000 đồng/kWh từ hôm nay',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (2,'2023-11-11 10:13:01.933182','1','SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI',2,'[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"NoiDung\", \"DuongDan\"]}}]',16,1);
INSERT INTO django_admin_log VALUES (3,'2023-11-11 10:20:31.203502','2','NGHỆ THUẬT ĂN THỊT NƯỚNG KIỂU HÀN VÀ NGƯỜI ĂN CHÍNH LÀ MỘT NGHỆ NHÂN',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (4,'2023-11-11 10:36:04.366277','3','NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (5,'2023-11-11 10:38:39.981201','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (6,'2023-11-11 10:40:58.393196','5','UỐNG TRÀ HIBISCUS CÓ BỊ MẤT NGỦ HAY KHÔNG?',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (7,'2023-11-14 01:25:41.122964','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',2,'[]',16,1);
INSERT INTO django_admin_log VALUES (8,'2023-11-14 01:29:28.766547','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',2,'[]',16,1);
INSERT INTO django_admin_log VALUES (9,'2023-11-14 01:37:37.976481','1','Bánh mặn',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (10,'2023-11-14 01:39:00.815479','1','Bánh mì thịt nguội',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (11,'2023-11-14 01:42:52.815736','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"AnhChinh\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (12,'2023-11-14 01:44:52.382668','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\", \"PhanTramGiam\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (13,'2023-11-14 01:45:17.172838','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\", \"PhanTramGiam\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (14,'2023-11-14 01:46:16.211282','1','Bánh mì thịt nguội',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (15,'2023-11-14 01:47:38.405822','1','Bánh mì thịt nguội',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (16,'2023-11-14 01:51:28.052807','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (17,'2023-11-14 01:57:30.644642','2','Trà trái cây',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (18,'2023-11-14 02:04:43.538304','2','Trà Long Nhãn Hạt Sen',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (19,'2023-11-14 02:05:58.009041','2','Trà Long Nhãn Hạt Sen',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (20,'2023-11-14 02:25:14.257857','2','Trà Long Nhãn Hạt Sen',2,'[{\"changed\": {\"fields\": [\"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (21,'2023-11-14 02:32:02.453312','3','Hi Tea Vải',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (22,'2023-11-14 02:33:16.083561','3','Hi Tea Vải',2,'[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (23,'2023-11-18 12:24:20.528567','3','Bánh ngọt',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (24,'2023-11-18 12:24:34.573024','4','Mousse Gấu Chocolate',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (25,'2023-11-18 12:43:16.801203','5','Mousse Red Velvet',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (26,'2023-11-18 12:45:15.156894','6','Chà Bông Phô Mai',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (27,'2023-11-18 14:53:28.876825','6','Chà Bông Phô Mai',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (28,'2023-11-18 15:12:09.521698','6','Chà Bông Phô Mai',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (29,'2023-11-18 16:23:09.312008','4','Mousse Gấu Chocolate',3,'',15,1);
INSERT INTO django_admin_log VALUES (30,'2023-12-13 11:16:38.089537','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1);
INSERT INTO django_admin_log VALUES (31,'2023-12-13 11:20:34.217488','1','GYOZA',1,'[{\"added\": {}}]',10,1);
INSERT INTO django_admin_log VALUES (32,'2023-12-13 12:07:08.799846','2','Asian Food',1,'[{\"added\": {}}]',10,1);
INSERT INTO django_admin_log VALUES (33,'2023-12-13 12:08:55.824943','3','Mã Đơn Hàng: 3 - Khách Hàng: Nghia Luong - Tổng Tiền: 130200 - Thời Gian: 2023-12-13 12:08:01',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,1);
INSERT INTO django_admin_log VALUES (34,'2023-12-13 12:09:09.714771','3','Mã Đơn Hàng: 3 - Khách Hàng: Nghia Luong - Tổng Tiền: 130200 - Thời Gian: 2023-12-13 12:08:01',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,1);
INSERT INTO django_admin_log VALUES (35,'2023-12-13 14:16:24.810427','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',13,1);
INSERT INTO django_admin_log VALUES (36,'2023-12-13 14:22:04.318400','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',11,1);
INSERT INTO django_admin_log VALUES (37,'2023-12-13 14:24:58.298242','2','Banner Chuyên Mục: Bánh ngọt',1,'[{\"added\": {}}]',11,1);
INSERT INTO django_admin_log VALUES (38,'2023-12-13 14:26:01.134688','3','Banner Chuyên Mục: Trà trái cây',1,'[{\"added\": {}}]',11,1);
INSERT INTO django_admin_log VALUES (39,'2023-12-13 14:32:13.222316','1','Banner Chuyên Mục: Bánh mặn',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',13,1);
INSERT INTO django_admin_log VALUES (40,'2023-12-13 14:35:38.821568','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',12,1);
INSERT INTO django_admin_log VALUES (41,'2023-12-13 14:35:51.579736','2','Banner Chuyên Mục: Bánh ngọt',1,'[{\"added\": {}}]',12,1);
INSERT INTO django_admin_log VALUES (42,'2023-12-13 14:37:04.558810','3','Banner Chuyên Mục: Trà trái cây',1,'[{\"added\": {}}]',12,1);
INSERT INTO django_admin_log VALUES (43,'2023-12-13 14:37:21.599876','3','Banner Chuyên Mục: Trà trái cây',3,'',12,1);
INSERT INTO django_admin_log VALUES (44,'2023-12-19 01:55:42.977651','1','Quản lý liên hệ',1,'[{\"added\": {}}]',3,1);
INSERT INTO django_admin_log VALUES (45,'2023-12-19 01:56:19.367008','5','nghia5',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,1);
INSERT INTO django_admin_log VALUES (46,'2023-12-19 01:58:57.481697','5','nghia5',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1);
INSERT INTO django_admin_log VALUES (47,'2023-12-19 02:04:33.416416','2','Shipper',1,'[{\"added\": {}}]',3,1);
INSERT INTO django_admin_log VALUES (48,'2023-12-19 02:06:53.142983','6','nghia6',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1);
INSERT INTO django_admin_log VALUES (49,'2023-12-19 02:07:20.851512','6','nghia6',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
INSERT INTO django_admin_log VALUES (50,'2023-12-19 02:08:26.368626','6','Mã Đơn Hàng: 6 - Khách Hàng: Luong Nghia5 - Tổng Tiền: 161700 - Thời Gian: 2023-12-19 01:32:17',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,6);
INSERT INTO django_admin_log VALUES (51,'2023-12-19 02:10:56.324794','2','Shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1);
INSERT INTO django_admin_log VALUES (52,'2023-12-20 02:56:05.329659','6','Mã Đơn Hàng: 6 - Khách Hàng: Luong Nghia5 - Tổng Tiền: 161700 - Thời Gian: 2023-12-19 01:32:17',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,1);
INSERT INTO django_admin_log VALUES (53,'2023-12-20 04:10:23.431823','1','mygraph1',1,'[{\"added\": {}}]',22,1);
INSERT INTO django_admin_log VALUES (54,'2023-12-20 04:18:49.395537','2','mygraph2',1,'[{\"added\": {}}]',22,1);
INSERT INTO django_admin_log VALUES (55,'2023-12-20 04:20:10.730969','2','mygraph2',2,'[{\"changed\": {\"fields\": [\"Allowed chart types\"]}}]',22,1);
INSERT INTO django_admin_log VALUES (56,'2023-12-20 23:40:50.327655','4','Cloud',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (57,'2023-12-20 23:43:14.280753','5','Đá xay Frosty',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (58,'2023-12-20 23:44:07.217901','5','Đá xay Frosty',2,'[{\"changed\": {\"fields\": [\"DuongDan\"]}}]',14,1);
INSERT INTO django_admin_log VALUES (59,'2023-12-20 23:45:06.732710','6','Cà phê',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (60,'2023-12-20 23:47:01.097472','7','Bánh Pastry',1,'[{\"added\": {}}]',14,1);
INSERT INTO django_admin_log VALUES (61,'2023-12-20 23:48:38.612878','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"MoTaNgan\", \"MoTaDai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (62,'2023-12-20 23:49:35.201691','2','Trà Long Nhãn Hạt Sen',2,'[{\"changed\": {\"fields\": [\"MoTaNgan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (63,'2023-12-20 23:49:46.866348','3','Hi Tea Vải',2,'[{\"changed\": {\"fields\": [\"MoTaNgan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (64,'2023-12-20 23:53:15.800981','7','Bánh Mì Gậy Gà Kim Quất',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (65,'2023-12-20 23:54:51.422991','8','Bánh Mì Gậy Cá Ngừ Mayo',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (66,'2023-12-20 23:56:43.776011','9','Bánh Mì Que Pate',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (67,'2023-12-20 23:58:43.756002','10','Bánh Mì Que Pate Cay',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (68,'2023-12-20 23:59:03.536001','10','Bánh Mì Que Pate Cay',2,'[{\"changed\": {\"fields\": [\"GiaBan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (69,'2023-12-21 00:01:12.488114','11','Croissant trứng muối',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (70,'2023-12-21 00:03:37.223626','12','Mochi Kem Phúc Bồn Tử',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (71,'2023-12-21 00:04:54.599680','12','Mochi Kem Phúc Bồn Tử',2,'[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (72,'2023-12-21 00:06:48.077430','13','Mochi Kem Việt Quất',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (73,'2023-12-21 00:09:06.731694','14','Mochi Kem Dừa Dứa',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (74,'2023-12-21 00:10:32.563510','15','Mousse Gấu Chocolate',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (75,'2023-12-21 00:13:44.659394','16','Mousse Tiramisu',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (76,'2023-12-21 00:16:14.604109','17','Butter Croissant',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (77,'2023-12-21 00:19:32.328980','18','Choco Croffle',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (78,'2023-12-21 00:21:55.192687','19','Pate Chaud',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (79,'2023-12-21 00:24:33.310061','20','Phin Sữa Tươi Bánh Flan',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (80,'2023-12-21 00:25:50.512046','21','Trà Xanh Espresso Marble',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (81,'2023-12-21 00:55:33.430325','22','Cold Brew Phúc Bồn Tử',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (82,'2023-12-21 01:00:47.906056','23','Cold Brew Sữa Tươi',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (83,'2023-12-21 01:02:38.100652','24','Đường Đen Marble Latte',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (84,'2023-12-21 01:05:57.069817','25','Americano Đá',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (85,'2023-12-21 01:10:36.157451','26','CloudTea Trà Xanh Tây Bắc',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (86,'2023-12-21 01:17:12.100751','27','CloudTea Oolong Berry',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (87,'2023-12-21 01:18:21.024955','28','CloudTea Oolong Nướng Kem Dừa',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (88,'2023-12-21 01:24:08.350003','29','sad',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (89,'2023-12-21 01:25:39.197413','29','sad',2,'[{\"changed\": {\"fields\": [\"AnhChinh\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (90,'2023-12-21 01:26:09.239536','29','sad',3,'',15,1);
INSERT INTO django_admin_log VALUES (91,'2023-12-21 01:29:16.185852','30','CloudTea Oolong Nướng Kem Cheese',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (92,'2023-12-21 01:31:49.046728','31','CloudFee Hạnh Nhân Nướng',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (93,'2023-12-21 01:33:22.564202','32','CloudFee Caramel',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (94,'2023-12-21 01:35:14.015383','33','CloudFee Hà Nội',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (95,'2023-12-21 01:38:32.315075','34','Frosty Phin Gato',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (96,'2023-12-21 01:40:02.153595','35','Frosty Cà Phê Đường Đen',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (97,'2023-12-21 01:41:37.300835','36','Frosty Caramel Arabica',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (98,'2023-12-21 01:43:14.476595','37','Frosty Bánh Kem Dâu',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (99,'2023-12-21 01:44:26.471521','38','Frosty Choco Chip',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (100,'2023-12-21 01:49:39.266454','4','Banner Chuyên Mục: Cloud',1,'[{\"added\": {}}]',11,1);
INSERT INTO django_admin_log VALUES (101,'2023-12-21 01:53:05.416378','4','Banner Chuyên Mục: Cloud',3,'',11,1);
INSERT INTO django_admin_log VALUES (102,'2023-12-21 01:53:18.066753','5','Banner Chuyên Mục: Cloud',1,'[{\"added\": {}}]',11,1);
INSERT INTO django_admin_log VALUES (103,'2023-12-21 01:53:52.136444','5','Banner Chuyên Mục: Cloud',3,'',11,1);
INSERT INTO django_admin_log VALUES (104,'2023-12-21 01:55:53.156071','1','The coffee house',1,'[{\"added\": {}}]',8,1);
INSERT INTO django_admin_log VALUES (105,'2023-12-21 01:56:45.408076','2','Baemin',1,'[{\"added\": {}}]',8,1);
INSERT INTO django_admin_log VALUES (106,'2023-12-21 01:57:46.346244','3','Shopee Food',1,'[{\"added\": {}}]',8,1);
INSERT INTO django_admin_log VALUES (107,'2023-12-21 01:58:56.919420','3','Shopee Food',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',8,1);
INSERT INTO django_admin_log VALUES (108,'2023-12-21 02:00:06.465211','4','Grabfood',1,'[{\"added\": {}}]',8,1);
INSERT INTO django_admin_log VALUES (109,'2023-12-21 02:00:58.274085','4','Grabfood',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',8,1);
INSERT INTO django_admin_log VALUES (110,'2023-12-23 04:18:23.137999','2','NGHỆ THUẬT ĂN THỊT NƯỚNG KIỂU HÀN VÀ NGƯỜI ĂN CHÍNH LÀ MỘT NGHỆ NHÂN',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',16,1);
INSERT INTO django_admin_log VALUES (111,'2023-12-23 04:36:52.884627','6','BẠN CÓ ĐANG NHẦM LẪN GIỮA ATISO ĐỎ VÀ ATISO XANH?',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (112,'2023-12-23 04:37:50.318995','6','BẠN CÓ ĐANG NHẦM LẪN GIỮA ATISO ĐỎ VÀ ATISO XANH?',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',16,1);
INSERT INTO django_admin_log VALUES (113,'2023-12-23 04:39:21.497831','7','BỘ SƯU TẬP CẦU TOÀN KÈO THƠM: \"VÍA\" MAY MẮN KHÔNG THỂ BỎ LỠ TẾT NÀY',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (114,'2023-12-23 04:40:24.547188','8','10 LỢI ÍCH KHÔNG NGỜ CỦA TRÀ HOA HIBISCUS',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (115,'2023-12-23 04:41:31.429319','9','BẮT GẶP SÀI GÒN XƯA TRONG MÓN UỐNG HIỆN ĐẠI CỦA GIỚI TRẺ',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (116,'2023-12-23 04:42:36.121139','10','SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (117,'2023-12-23 04:45:41.136743','11','CÁCH NHẬN BIẾT HƯƠNG VỊ CÀ PHÊ ROBUSTA NGUYÊN CHẤT DỄ DÀNG NHẤT',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (118,'2023-12-23 04:46:31.512030','12','BẬT MÍ NHIỆT ĐỘ LÝ TƯỞNG ĐỂ PHA CÀ PHÊ NGON, ĐẬM ĐÀ HƯƠNG VỊ',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (119,'2023-12-23 04:47:27.800560','13','TẠI SAO CÀ PHÊ CÓ VỊ CHUA?',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (120,'2023-12-23 04:48:32.675535','14','NGHỆ THUẬT THỬ VÀ NẾM CÀ PHÊ',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (121,'2023-12-23 04:49:21.890701','15','THƯỞNG THỨC CÀ PHÊ THEO PHONG CÁCH MỸ',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (122,'2023-12-23 04:50:53.784187','16','MÊ MẨN CÁC MÓN ĂN TỪ TRÀ XANH',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (123,'2023-12-23 04:52:19.941268','17','5 MÓN ĂN CỰC NGON ĐƯỢC CHẾ BIẾN ĐƠN GIẢN TỪ CÀ PHÊ',1,'[{\"added\": {}}]',16,1);
INSERT INTO django_admin_log VALUES (124,'2023-12-23 04:54:23.384776','2','Asian Food',2,'[{\"changed\": {\"fields\": [\"ChuyenMuc\"]}}]',10,1);
INSERT INTO django_admin_log VALUES (125,'2023-12-23 04:55:54.971537','3','COFFEE',1,'[{\"added\": {}}]',10,1);
INSERT INTO django_admin_log VALUES (126,'2023-12-23 04:56:27.889042','3','COFFEE',2,'[{\"changed\": {\"fields\": [\"MoTaDai\"]}}]',10,1);
INSERT INTO django_admin_log VALUES (127,'2023-12-23 04:58:23.984275','3','COFFEE',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',10,1);
INSERT INTO django_admin_log VALUES (128,'2023-12-23 05:04:40.942536','4','PASTRY',1,'[{\"added\": {}}]',10,1);
INSERT INTO django_admin_log VALUES (129,'2023-12-23 05:06:51.848636','4','PASTRY',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',10,1);
INSERT INTO django_admin_log VALUES (130,'2023-12-23 05:10:48.207032','5','Đá Xay Frosty',1,'[{\"added\": {}}]',10,1);
INSERT INTO django_admin_log VALUES (131,'2023-12-23 12:33:59.290435','9','Mã Đơn Hàng: 9 - Khách Hàng: Luong Nghia6 - Tổng Tiền: 31500 - Thời Gian: 2023-12-23 11:04:32',3,'',20,1);
INSERT INTO django_admin_log VALUES (132,'2023-12-24 08:50:23.256555','3','mygraph3',1,'[{\"added\": {}}]',22,1);
INSERT INTO django_admin_log VALUES (133,'2023-12-24 08:51:01.634922','24','Mã Đơn Hàng: 24 - Khách Hàng: Luong Nghia - Tổng Tiền: 134400 - Thời Gian: 2023-12-24 14:40:48',3,'',20,1);
INSERT INTO django_admin_log VALUES (134,'2023-12-24 08:51:01.648887','23','Mã Đơn Hàng: 23 - Khách Hàng: Luong Nghia - Tổng Tiền: 131250 - Thời Gian: 2023-12-24 14:39:54',3,'',20,1);
INSERT INTO django_admin_log VALUES (135,'2023-12-24 08:51:01.659857','22','Mã Đơn Hàng: 22 - Khách Hàng: Luong Nghia - Tổng Tiền: 63000 - Thời Gian: 2023-12-23 23:25:47',3,'',20,1);
INSERT INTO django_admin_log VALUES (136,'2023-12-24 08:51:01.668296','21','Mã Đơn Hàng: 21 - Khách Hàng: Luong Nghia - Tổng Tiền: 82950 - Thời Gian: 2023-12-23 23:20:23',3,'',20,1);
INSERT INTO django_admin_log VALUES (137,'2023-12-24 08:51:01.686803','20','Mã Đơn Hàng: 20 - Khách Hàng: Luong Nghia - Tổng Tiền: 183750 - Thời Gian: 2023-12-23 23:09:42',3,'',20,1);
INSERT INTO django_admin_log VALUES (138,'2023-12-24 08:51:01.698768','19','Mã Đơn Hàng: 19 - Khách Hàng: Luong Nghia - Tổng Tiền: 63000 - Thời Gian: 2023-12-23 20:53:44',3,'',20,1);
INSERT INTO django_admin_log VALUES (139,'2023-12-24 08:51:01.718222','18','Mã Đơn Hàng: 18 - Khách Hàng: Luong Nghia - Tổng Tiền: 134400 - Thời Gian: 2023-12-23 20:49:37',3,'',20,1);
INSERT INTO django_admin_log VALUES (140,'2023-12-24 08:51:01.732197','17','Mã Đơn Hàng: 17 - Khách Hàng: Luong Nghia - Tổng Tiền: 63000 - Thời Gian: 2023-12-23 20:47:02',3,'',20,1);
INSERT INTO django_admin_log VALUES (141,'2023-12-24 08:51:01.746156','16','Mã Đơn Hàng: 16 - Khách Hàng: Luong Nghia - Tổng Tiền: 63000 - Thời Gian: 2023-12-23 20:40:26',3,'',20,1);
INSERT INTO django_admin_log VALUES (142,'2023-12-24 08:51:01.758127','15','Mã Đơn Hàng: 15 - Khách Hàng: Luong Nghia - Tổng Tiền: 82950 - Thời Gian: 2023-12-23 20:31:08',3,'',20,1);
INSERT INTO django_admin_log VALUES (143,'2023-12-25 14:32:04.090944','39','abc',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (144,'2023-12-25 14:32:27.354920','39','abc',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\", \"GiaBan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (145,'2023-12-25 14:32:35.201679','39','abc',3,'',15,1);
INSERT INTO django_admin_log VALUES (146,'2023-12-25 14:35:49.974547','40','sad',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (147,'2023-12-25 14:42:46.542574','40','sad',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (148,'2023-12-25 14:43:01.401826','40','sad',3,'',15,1);
INSERT INTO django_admin_log VALUES (149,'2023-12-25 14:43:25.158243','None','sax',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (150,'2023-12-25 14:46:58.595116','None','sad',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (151,'2023-12-25 14:52:33.552113','41','sad',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (152,'2023-12-25 14:58:27.363538','41','sad',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (153,'2023-12-25 15:00:22.779381','41','sad',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (154,'2023-12-25 15:00:27.213108','41','sad',3,'',15,1);
INSERT INTO django_admin_log VALUES (155,'2023-12-25 15:00:47.435040','42','abc',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (156,'2023-12-25 15:00:57.631422','42','abc',2,'[{\"changed\": {\"fields\": [\"GiaBan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (157,'2023-12-25 15:04:21.496417','42','abc',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (158,'2023-12-25 15:05:20.268225','42','abc',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (159,'2023-12-25 15:06:22.240551','42','abc',2,'[]',15,1);
INSERT INTO django_admin_log VALUES (160,'2023-12-25 15:06:30.631478','42','abc',3,'',15,1);
INSERT INTO django_admin_log VALUES (161,'2023-12-25 15:06:52.668360','None','12',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (162,'2023-12-25 15:07:55.145149','43','111',1,'[{\"added\": {}}]',15,1);
INSERT INTO django_admin_log VALUES (163,'2023-12-25 15:10:21.122263','38','Frosty Choco Chip',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (164,'2023-12-25 15:14:39.061805','38','Frosty Choco Chip',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (165,'2023-12-25 15:18:40.807148','43','111',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (166,'2023-12-25 15:18:51.737701','43','111',2,'[{\"changed\": {\"fields\": [\"GiaBan\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (167,'2023-12-25 15:19:15.506258','43','111',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (168,'2023-12-25 15:20:29.200737','43','111',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO django_admin_log VALUES (169,'2023-12-27 15:53:18.485631','3','mygraph3',3,'',22,1);
INSERT INTO django_admin_log VALUES (170,'2023-12-27 15:56:01.173299','2','mygraph2',2,'[{\"changed\": {\"fields\": [\"Graph title\"]}}]',22,1);
INSERT INTO django_admin_log VALUES (171,'2023-12-27 15:56:19.748551','1','mygraph1',2,'[{\"changed\": {\"fields\": [\"Graph title\"]}}]',22,1);

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS django_content_type;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE django_content_type (
  id int NOT NULL AUTO_INCREMENT,
  app_label varchar(100) NOT NULL,
  model varchar(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY django_content_type_app_label_model_76bd3d3b_uniq (app_label,model)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO django_content_type VALUES (1,'admin','logentry');
INSERT INTO django_content_type VALUES (25,'admin_tools_stats','cachedvalue');
INSERT INTO django_content_type VALUES (24,'admin_tools_stats','criteriatostatsm2m');
INSERT INTO django_content_type VALUES (22,'admin_tools_stats','dashboardstats');
INSERT INTO django_content_type VALUES (23,'admin_tools_stats','dashboardstatscriteria');
INSERT INTO django_content_type VALUES (3,'auth','group');
INSERT INTO django_content_type VALUES (2,'auth','permission');
INSERT INTO django_content_type VALUES (4,'auth','user');
INSERT INTO django_content_type VALUES (19,'cart','giohang');
INSERT INTO django_content_type VALUES (18,'contact','lienhe');
INSERT INTO django_content_type VALUES (5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES (17,'customer','khachhang');
INSERT INTO django_content_type VALUES (16,'news','tintuc');
INSERT INTO django_content_type VALUES (21,'order','chitietdonhang');
INSERT INTO django_content_type VALUES (20,'order','donhang');
INSERT INTO django_content_type VALUES (14,'product','chuyenmuc');
INSERT INTO django_content_type VALUES (15,'product','sanpham');
INSERT INTO django_content_type VALUES (6,'sessions','session');
INSERT INTO django_content_type VALUES (13,'website','bannerbottom');
INSERT INTO django_content_type VALUES (12,'website','bannermid');
INSERT INTO django_content_type VALUES (11,'website','bannertop');
INSERT INTO django_content_type VALUES (7,'website','loaithongtin');
INSERT INTO django_content_type VALUES (8,'website','nhataitro');
INSERT INTO django_content_type VALUES (10,'website','slide');
INSERT INTO django_content_type VALUES (9,'website','thongtin');

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS django_migrations;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE django_migrations (
  id bigint NOT NULL AUTO_INCREMENT,
  app varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  applied datetime(6) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO django_migrations VALUES (1,'contenttypes','0001_initial','2023-11-09 10:04:06.633478');
INSERT INTO django_migrations VALUES (2,'auth','0001_initial','2023-11-09 10:04:07.509831');
INSERT INTO django_migrations VALUES (3,'admin','0001_initial','2023-11-09 10:04:07.689932');
INSERT INTO django_migrations VALUES (4,'admin','0002_logentry_remove_auto_add','2023-11-09 10:04:07.700681');
INSERT INTO django_migrations VALUES (5,'admin','0003_logentry_add_action_flag_choices','2023-11-09 10:04:07.714482');
INSERT INTO django_migrations VALUES (6,'contenttypes','0002_remove_content_type_name','2023-11-09 10:04:07.823070');
INSERT INTO django_migrations VALUES (7,'auth','0002_alter_permission_name_max_length','2023-11-09 10:04:07.897650');
INSERT INTO django_migrations VALUES (8,'auth','0003_alter_user_email_max_length','2023-11-09 10:04:07.934430');
INSERT INTO django_migrations VALUES (9,'auth','0004_alter_user_username_opts','2023-11-09 10:04:07.947395');
INSERT INTO django_migrations VALUES (10,'auth','0005_alter_user_last_login_null','2023-11-09 10:04:08.026662');
INSERT INTO django_migrations VALUES (11,'auth','0006_require_contenttypes_0002','2023-11-09 10:04:08.033645');
INSERT INTO django_migrations VALUES (12,'auth','0007_alter_validators_add_error_messages','2023-11-09 10:04:08.045611');
INSERT INTO django_migrations VALUES (13,'auth','0008_alter_user_username_max_length','2023-11-09 10:04:08.133023');
INSERT INTO django_migrations VALUES (14,'auth','0009_alter_user_last_name_max_length','2023-11-09 10:04:08.223894');
INSERT INTO django_migrations VALUES (15,'auth','0010_alter_group_name_max_length','2023-11-09 10:04:08.253635');
INSERT INTO django_migrations VALUES (16,'auth','0011_update_proxy_permissions','2023-11-09 10:04:08.266600');
INSERT INTO django_migrations VALUES (17,'auth','0012_alter_user_first_name_max_length','2023-11-09 10:04:08.366448');
INSERT INTO django_migrations VALUES (18,'product','0001_initial','2023-11-09 10:04:08.535803');
INSERT INTO django_migrations VALUES (19,'customer','0001_initial','2023-11-09 10:04:08.654622');
INSERT INTO django_migrations VALUES (20,'cart','0001_initial','2023-11-09 10:04:08.820650');
INSERT INTO django_migrations VALUES (21,'contact','0001_initial','2023-11-09 10:04:08.853665');
INSERT INTO django_migrations VALUES (22,'news','0001_initial','2023-11-09 10:04:08.910690');
INSERT INTO django_migrations VALUES (23,'order','0001_initial','2023-11-09 10:04:09.190544');
INSERT INTO django_migrations VALUES (24,'sessions','0001_initial','2023-11-09 10:04:09.233510');
INSERT INTO django_migrations VALUES (25,'website','0001_initial','2023-11-09 10:04:09.745771');
INSERT INTO django_migrations VALUES (26,'admin_tools_stats','0001_initial','2023-12-20 04:00:02.760633');
INSERT INTO django_migrations VALUES (27,'admin_tools_stats','0002_auto_20190920_1058','2023-12-20 04:00:02.846199');
INSERT INTO django_migrations VALUES (28,'admin_tools_stats','0003_auto_20191007_0950','2023-12-20 04:00:03.482421');
INSERT INTO django_migrations VALUES (29,'admin_tools_stats','0004_dashboardstats_y_tick_format','2023-12-20 04:00:03.555608');
INSERT INTO django_migrations VALUES (30,'admin_tools_stats','0005_auto_20200203_1537','2023-12-20 04:00:03.714168');
INSERT INTO django_migrations VALUES (31,'admin_tools_stats','0006_auto_20200205_0944','2023-12-20 04:00:04.256532');
INSERT INTO django_migrations VALUES (32,'admin_tools_stats','0007_auto_20200205_1054','2023-12-20 04:00:04.411480');
INSERT INTO django_migrations VALUES (33,'admin_tools_stats','0008_auto_20200911_1400','2023-12-20 04:00:04.724095');
INSERT INTO django_migrations VALUES (34,'admin_tools_stats','0009_auto_20200928_1003','2023-12-20 04:00:04.999416');
INSERT INTO django_migrations VALUES (35,'admin_tools_stats','0010_dashboardstats_show_to_users','2023-12-20 04:00:05.103290');
INSERT INTO django_migrations VALUES (36,'admin_tools_stats','0011_auto_20210204_1206','2023-12-20 04:00:05.347726');
INSERT INTO django_migrations VALUES (37,'admin_tools_stats','0012_auto_20210207_0859','2023-12-20 04:00:05.457791');
INSERT INTO django_migrations VALUES (38,'admin_tools_stats','0013_auto_20210221_1247','2023-12-20 04:00:05.476707');
INSERT INTO django_migrations VALUES (39,'admin_tools_stats','0014_auto_20211122_1511','2023-12-20 04:00:05.854734');
INSERT INTO django_migrations VALUES (40,'admin_tools_stats','0015_auto_20211209_0822','2023-12-20 04:00:05.941029');
INSERT INTO django_migrations VALUES (41,'admin_tools_stats','0016_dashboardstats_cache_values','2023-12-20 04:00:06.038580');
INSERT INTO django_migrations VALUES (42,'admin_tools_stats','0017_alter_dashboardstats_options_and_more','2023-12-20 04:00:06.060494');
INSERT INTO django_migrations VALUES (43,'admin_tools_stats','0018_alter_dashboardstats_options','2023-12-20 04:00:06.126317');
INSERT INTO django_migrations VALUES (44,'admin_tools_stats','0019_criteriatostatsm2m_recalculate','2023-12-20 04:00:06.228795');
INSERT INTO django_migrations VALUES (45,'admin_tools_stats','0020_alter_dashboardstats_graph_key','2023-12-20 04:00:06.246764');
INSERT INTO django_migrations VALUES (46,'admin_tools_stats','0021_auto_20230210_1102','2023-12-20 04:00:09.418096');
INSERT INTO django_migrations VALUES (47,'news','0002_alter_tintuc_anhchinh','2023-12-23 12:27:12.598926');
INSERT INTO django_migrations VALUES (48,'order','0002_alter_donhang_trangthai','2023-12-23 12:27:12.616878');
INSERT INTO django_migrations VALUES (49,'product','0002_alter_sanpham_anhchinh_alter_sanpham_anhphu1_and_more','2023-12-23 12:27:12.680707');
INSERT INTO django_migrations VALUES (50,'website','0002_alter_bannerbottom_hinhanh_alter_bannermid_hinhanh_and_more','2023-12-23 12:27:12.728579');
INSERT INTO django_migrations VALUES (51,'order','0002_donhang_phuongthuc_alter_donhang_trangthai','2023-12-27 20:39:18.894564');

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS django_session;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE django_session (
  session_key varchar(40) NOT NULL,
  session_data longtext NOT NULL,
  expire_date datetime(6) NOT NULL,
  PRIMARY KEY (session_key),
  KEY django_session_expire_date_a5c62663 (expire_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

INSERT INTO django_session VALUES ('0v2oalg8a7ld4pevuwuha95nhiw1v740','.eJxVjDsOwjAQBe_iGln4l7Up6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIirDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5rsB4HduZchlygKO-s1qAgECajvLeYQLMlcpl9JiBnFBTIwQRHaEi8P9jMN_A:1rDNTb:GLB9tHPpja76ZhQUMrPgEgQIznD_lXcOsBx__HuK8ug','2023-12-27 11:32:31.155825');
INSERT INTO django_session VALUES ('2d4ybpuck8kn80xqldi34avdjwrydro5','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rFmkL:kDmca5gzJMftpUD3OhWhRj1zKKqOAsHH9hZI-SRSL1c','2024-01-03 02:55:45.995739');
INSERT INTO django_session VALUES ('30ayi36r662utsn4oc5cwnv90gdij13q','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDPva:w4n3RFkdtpW3gzpMQbPbWUomnRa4dK62y_NKN0VNpgI','2023-12-27 14:09:34.322043');
INSERT INTO django_session VALUES ('5e5h4t38mnl7drg58g6cqa97nt7hqqo4','.eJxVjDsOwjAQBe_iGlnRkrUdSnrOEO3HxgFkS3FSRdwdIqWA9s3M28xI65LHtcV5nNRcDJjT78Ykz1h2oA8q92qllmWe2O6KPWizt6rxdT3cv4NMLX9rwSQ9CvVAGJynQdgzgzrFFLwToCTASlEdDp0X8T3G0LEHUOrOaN4fEBY4wA:1rEvvm:TL3n8-SHvMX3m89nfn0hfrjqFIip7LZeMRvxQ9LkR_s','2023-12-31 18:32:02.896615');
INSERT INTO django_session VALUES ('a7nlo0shmbptwzbpjp789mdzg3rwzp7y','.eJxVjDsOwjAQBe_iGlnx-hdT0nMGy7te4wBypDipEHeHSCmgfTPzXiKmba1x67zEKYuzsOL0u2GiB7cd5Htqt1nS3NZlQrkr8qBdXufMz8vh_h3U1Ou3NsSMKtigHGcoZE026ItXXgPloTijSQEOdgRgoDHp4IETOygGHWrx_gDu9jgA:1rGpjh:BIjW8_TMIfvZuKqm6h7fPQTvXQ62Zgd8tZir35GvdcI','2024-01-06 00:19:25.987094');
INSERT INTO django_session VALUES ('g8mjbuiaig3qbm5hn6nzw560c7t50afw','.eJxVjDsOwjAQBe_iGln4l7Up6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIirDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5rsB4HduZchlygKO-s1qAgECajvLeYQLMlcpl9JiBnFBTIwQRHaEi8P9jMN_A:1rDQDH:ky4HwA56NB2YJZH8AxYa89em-170ugdglor57_z6fnk','2023-12-27 14:27:51.123574');
INSERT INTO django_session VALUES ('h2g22hdgj5j53veb3na7rmmkcz2djvhw','.eJxVjDsOwjAQBe_iGlnRkrUdSnrOEO3HxgFkS3FSRdwdIqWA9s3M28xI65LHtcV5nNRcDJjT78Ykz1h2oA8q92qllmWe2O6KPWizt6rxdT3cv4NMLX9rwSQ9CvVAGJynQdgzgzrFFLwToCTASlEdDp0X8T3G0LEHUOrOaN4fEBY4wA:1rExPU:2Cab00wg_atKsyAr9a0Oi8EWoOrsAOwN3VBp1EJZUr0','2023-12-31 20:06:48.958018');
INSERT INTO django_session VALUES ('j7gewwj4nrimd2hjmnbiso8khdsl6dq6','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDNDe:-Yy_72gMykRcl4HatF6PKwiUjtRfpvDyVKVeZnbmzLc','2023-12-27 11:16:02.400751');
INSERT INTO django_session VALUES ('jbs7197eirp5zzuxhttn2o1lcq6onso0','.eJxVjDsOwyAQBe9CHaEVf1KmzxnQwkJwEoFk7MrK3WNLLpL2zczbWMB1qWEdeQ4TsSsz7PK7RUyv3A5AT2yPzlNvyzxFfij8pIPfO-X37XT_DiqOutfgEMAIQqPICZAaRJRC2VQiqix2ip4KOZcNJWuFVxqhSHJZR618YZ8v07Y30g:1rHDh4:HsfmQmJ4HJ8rzZbyZw_ZDm5_J3_gKzy4XXjU2PijUzc','2024-01-07 08:54:18.899217');
INSERT INTO django_session VALUES ('jzc9dzrmnhpj52423of6adcr71060625','.eJxVjDsOwjAQBe_iGlnx4g-hpM8Zol3vGgeQLcVJhbg7iZQC2jcz761GXJc8rk3mcWJ1VU6dfjfC-JSyA35guVcda1nmifSu6IM2PVSW1-1w_w4ytrzVCVL00fZWMLDhBE7OF4vUe0-EhrxASBYgdYgS0DhBNmCClw13zqnPFw9zON8:1rIULD:aTTDFUjOcffAirL2Rt9GXTURXFJkKOZRQTzyo45ZcwQ','2024-01-10 20:52:59.255756');
INSERT INTO django_session VALUES ('r48r0uv60d5p39pfnwfhe3bg92s6hynz','.eJxVjDsOwjAQBe_iGlnx-hdT0nMGy7te4wBypDipEHeHSCmgfTPzXiKmba1x67zEKYuzsOL0u2GiB7cd5Htqt1nS3NZlQrkr8qBdXufMz8vh_h3U1Ou3NsSMKtigHGcoZE026ItXXgPloTijSQEOdgRgoDHp4IETOygGHWrx_gDu9jgA:1rGrZJ:FTT-MUOQxGcPL2lOrLJvJDdS9LG6oaFAZa6rzPZi2nM','2024-01-06 02:16:49.541822');
INSERT INTO django_session VALUES ('smiswsj27us7kphra58i0m8eaezxrit0','.eJxVjMsOwiAQRf-FtSFYHmVcuu83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhYXocXpd4tIj1R3wHestyap1XWZo9wVedAup8bpeT3cv4OCvXxrdOQ5QrbJZFZIgDQYDeysiU4xD6jAw5n86Kz2EUflLHvrtTI6E2Tx_gD88zfq:1rD8qT:K7GkRJG_bejVSGd9uU9uT-GQh3Old72JyWrkj5wj2zA','2023-12-26 19:55:09.629301');
INSERT INTO django_session VALUES ('td7c8ag5txa806j1m245z5i7s50tvzcm','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDNFQ:CwfEwfbKHsT0-4enIH94txH5COwsPo6O5FHzFoZJaOk','2023-12-27 11:17:52.233050');
INSERT INTO django_session VALUES ('ufkq0xk59e5gzdbutczwgxyipc24aowi','.eJxVjDsOwjAQBe_iGlnRkrUdSnrOEO3HxgFkS3FSRdwdIqWA9s3M28xI65LHtcV5nNRcDJjT78Ykz1h2oA8q92qllmWe2O6KPWizt6rxdT3cv4NMLX9rwSQ9CvVAGJynQdgzgzrFFLwToCTASlEdDp0X8T3G0LEHUOrOaN4fEBY4wA:1r5MEL:PlL-qwUEuDdVLlsfcx9i1SiwM_bh1iHZbEwzy0pIVKk','2023-12-05 08:35:37.418035');
INSERT INTO django_session VALUES ('ysc5yl08oppuztactcjnx5497qwhc3tb','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDQ0X:VoghnqBZo2boaJX1R_RJhJCmFtmtGa5dR5HC89GOiUg','2023-12-27 14:14:41.169322');
INSERT INTO django_session VALUES ('zjl6zny2o5qdlmglf845h3pi2m4rt52h','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1r11vt:yAgS9gBJb4pEjgcSgmBJPLLQpE56RZPYfTus_7ST7WM','2023-11-23 10:06:41.263817');

--
-- Table structure for table `news_tintuc`
--

DROP TABLE IF EXISTS news_tintuc;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE news_tintuc (
  id bigint NOT NULL AUTO_INCREMENT,
  TieuDe varchar(500) NOT NULL,
  AnhChinh varchar(100) NOT NULL,
  The varchar(255) NOT NULL,
  NoiDung longtext NOT NULL,
  DuongDan varchar(550) DEFAULT NULL,
  created_at datetime(6) NOT NULL,
  updated_at datetime(6) NOT NULL,
  PRIMARY KEY (id),
  KEY news_tintuc_DuongDan_91dc3f60 (DuongDan)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_tintuc`
--

INSERT INTO news_tintuc VALUES (1,'SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI','uploads/img1.jpg','kinh doanh','<p><strong>Mới đ&acirc;y, c&aacute;c &quot;t&iacute;n đồ&quot; c&agrave; ph&ecirc; đang b&agrave;n t&aacute;n x&ocirc;n xao về SIGNATURE - Biểu tượng văn h&oacute;a c&agrave; ph&ecirc; của The Coffee House đ&atilde; quay trở lại.</strong></p>\r\n\r\n<h2><strong>Một lời hẹn l&agrave;m bao người xao xuyến</strong></h2>\r\n\r\n<p>Vừa qua, Fanpage Nh&agrave; đ&atilde; h&eacute; mở những th&ocirc;ng tin đầu ti&ecirc;n về &quot;SIGNATURE by The Coffee House&quot; k&egrave;m lời hẹn &quot;H&ocirc;m nay bạn c&oacute; hẹn chưa? M&igrave;nh c&agrave; ph&ecirc; nh&eacute;!&quot;.</p>\r\n\r\n<p>Theo đ&oacute;, SIGNATURE by The Coffee House sẽ gửi đến c&aacute;c th&agrave;nh vi&ecirc;n của Nh&agrave; những Cuộc hẹn tr&ograve;n đầy với 3 trải nghiệm: T&aacute;ch c&agrave; ph&ecirc; đặc sản với những mẻ rang mới mỗi ng&agrave;y, chiều l&ograve;ng mọi t&acirc;m hồn y&ecirc;u c&agrave; ph&ecirc; hay những ai đang t&ograve; m&ograve; về loại tr&aacute;i c&acirc;y đặc biệt n&agrave;y; M&oacute;n ăn đa bản sắc, mang phong vị giao thoa từ nhiều nơi cho cuộc hẹn d&agrave;i hơn, r&ocirc;m rả hơn; Một kh&ocirc;ng gian đầy cảm hứng, nơi hạt c&agrave; ph&ecirc; kể về h&agrave;nh tr&igrave;nh tuyệt vời của m&igrave;nh theo c&aacute;ch gần gũi nhất. Bạn sẽ c&oacute; cơ hội thưởng thức c&agrave; ph&ecirc; bằng đủ những gi&aacute;c quan - ngửi hương, lắng nghe, ngắm nh&igrave;n v&agrave; nếm vị.</p>\r\n\r\n<p>Kh&ocirc;ng gian rộng mở, được thiết kế như một xưởng rang c&agrave; ph&ecirc; nhưng vẫn tạo cảm gi&aacute;c th&acirc;n thuộc, gần gũi với nhiều c&acirc;y xanh v&agrave; hai t&ocirc;ng m&agrave;u cam n&acirc;u ấm &aacute;p v&agrave; trắng x&aacute;m tinh tế. Trong đ&oacute;, nổi bật nhất phải kể đến hệ thống c&aacute;c si l&ocirc; c&agrave; ph&ecirc; v&agrave; một m&aacute;y rang lớn đặt ở sảnh tầng 1, c&ugrave;ng hệ thống c&aacute;c ống đồng chứa c&agrave; ph&ecirc; rang, khu vực quầy bar trải nghiệm. Khoảng 1 giờ, qu&aacute;n sẽ rang 1 mẻ nhỏ, tạo n&ecirc;n tiếng c&agrave; ph&ecirc; chạy trong c&aacute;c ống đồng rất vui tai, như 1 bản nhạc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-2-16733167329771189768547.png\" style=\"height:416px; width:624px\" /></p>\r\n\r\n<p>Kh&ocirc;ng chỉ được thưởng thức những ly c&agrave; ph&ecirc; đặc sản thơm ngon, đậm vị, đến với SIGNATURE by The Coffee House, bạn c&ograve;n c&oacute; thể thưởng thức nhiều m&oacute;n ăn mới lạ kết hợp &Aacute; - &Acirc;u, th&iacute;ch hợp cho mọi cuộn hẹn.</p>\r\n\r\n<p>Ngay khi vừa xuất hiện, SIGNATURE by The Coffee House đ&atilde; nhận được sự hưởng ứng, chia sẻ nhiệt t&igrave;nh của giới trẻ. B&ecirc;n dưới b&agrave;i đăng l&agrave; h&agrave;ng loạt những b&igrave;nh luận khen ngợi về kh&ocirc;ng gian cửa h&agrave;ng, thức uống, đồ ăn v&agrave; &quot;rủ r&ecirc;&quot; bạn b&egrave; tới kh&aacute;m ph&aacute; v&agrave; trải nghiệm.</p>','signature-bieu-tuong-van-hoa-ca-phe-cua-the-coffee-house-a-quay-tro-lai','2023-11-09 10:19:41.307918','2023-11-11 10:13:01.903483');
INSERT INTO news_tintuc VALUES (2,'NGHỆ THUẬT ĂN THỊT NƯỚNG KIỂU HÀN VÀ NGƯỜI ĂN CHÍNH LÀ MỘT NGHỆ NHÂN','uploads/img2.png','Blog ăn uống','<p><strong>Thịt nướng, m&oacute;n ăn qu&aacute; đỗi th&ocirc;ng thường m&agrave; dĩ nhi&ecirc;n ở quốc gia n&agrave;o cũng c&oacute; c&aacute;ch ăn v&agrave; một phi&ecirc;n bản ri&ecirc;ng. Nhưng nhắc đến thịt nướng H&agrave;n Quốc, ấn tượng về những miếng thịt tươi được nướng x&egrave;o x&egrave;o tr&ecirc;n những chiếc vỉ n&oacute;ng hổi, xung quanh l&agrave; cơ ngơi c&aacute;c loại panchan c&ugrave;ng c&aacute;ch ăn thật ri&ecirc;ng biệt hẳn đ&atilde; kh&ocirc;ng c&ograve;n xa lạ v&agrave; trở th&agrave;nh m&oacute;n kho&aacute;i khẩu cho những ai đam m&ecirc; ẩm thực H&agrave;n. M&agrave; để ăn miếng thịt nướng ngon, ch&uacute;ng ta c&oacute; h&agrave;ng t&aacute; điều cần biết để c&oacute; ngay phần thịt nướng n&oacute;ng hổi ngon miệng nhất. C&ugrave;ng BAEMIN t&igrave;m hiểu ngay th&ocirc;i!</strong><br />\r\n<img alt=\"Top 30 Quán Nướng Hàn Quốc Ngon, Nổi Tiếng, Gần Đây | Vincom | Vincom\" src=\"https://statics.vincom.com.vn/xu-huong/chi_tiet_xu_huong/tong-hop-10-quan-do-nuong-han-quoc-noi-tieng-o-sai-gon-ma-ban-can-phai-biet-202108281532058402.jpeg\" /></p>\r\n\r\n<p><strong>ĂN UỐNG CŨNG PHẢI C&Oacute; THỨ TỰ</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Tưởng đ&acirc;u cứ l&ecirc;n b&agrave;n ăn l&agrave; sẽ ăn ngay m&oacute;n m&igrave;nh th&iacute;ch rồi ư, hừm, kh&ocirc;ng hẳn l&agrave; thế đ&acirc;u bởi trong m&oacute;n thịt nướng H&agrave;n Quốc, bạn sẽ phải ưu ti&ecirc;n cho m&oacute;n thịt kh&ocirc;ng ướp được l&ecirc;n trước ti&ecirc;n, thỏa thu&ecirc; rồi mới đến thịt ướp gia vị. Mỗi loại thịt lại được nướng tr&ecirc;n một chiếc vỉ đặc th&ugrave; ri&ecirc;ng gi&uacute;p miếng thịt được tiếp x&uacute;c nhiệt một c&aacute;ch hợp l&yacute; để đạt độ ch&iacute;n ho&agrave;n hảo nhất v&agrave; hơn hết tr&aacute;nh bị lẫn vị của c&aacute;c loại thịt với nhau.<br />\r\n<br />\r\nKhi nướng thịt kh&ocirc;ng ướp, người ta thường d&ugrave;ng vỉ nướng chống d&iacute;nh đậy k&iacute;n mặt bếp. Chiếc vỉ n&agrave;y sẽ gi&uacute;p miếng thịt tươi được &aacute;p chảo ch&iacute;n đều ở 2 mặt, phần thịt xen kẽ mỡ khi tiếp x&uacute;c nhiệt sẽ săn lại, tạo độ gi&ograve;n thơm m&ecirc; người v&agrave; sự b&oacute;ng bẩy quyến rũ k&iacute;ch th&iacute;ch người ăn hơn. Với phần thịt ướp gia vị, c&aacute;c nh&agrave; h&agrave;ng chuy&ecirc;n nghiệp hay người ăn sẽ đổi sang chiếc vỉ mỏng nhiều rỗ để tr&aacute;nh nước sốt ướp thịt đọng lại tr&ecirc;n vỉ g&acirc;y ch&aacute;y kh&eacute;t, ảnh hưởng tới hương vị thịt. Điều n&agrave;y cũng gi&uacute;p việc nướng c&aacute;c loại thịt kh&ocirc;ng bị trộn lẫn m&ugrave;i vị, gi&uacute;p người ăn thưởng thức một c&aacute;ch trọn vị hơn. Tất cả m&ugrave;i hương, gia vị được tỏa ra kết hợp c&ugrave;ng h&igrave;nh ảnh miếng thịt đang ch&iacute;n tới, &acirc;m thanh &ldquo;x&egrave;o x&egrave;o&rdquo; vang b&ecirc;n tai như k&iacute;ch th&iacute;ch chiếc bao tử đang đ&oacute;i dữ tợn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi đ&atilde; ch&agrave;o s&acirc;n c&ugrave;ng v&agrave;i miếng thịt nướng thơm ngon, bạn c&oacute; thể ăn tiếp với m&igrave; lạnh. Cặp b&agrave;i tr&ugrave;ng n&agrave;y kh&aacute; quen thuộc trong ẩm thực H&agrave;n bởi sự kết hợp nghe tưởng lạ l&ugrave;ng của &ldquo;thịt nướng - m&igrave; lạnh&rdquo; đ&atilde; tạo n&ecirc;n sự tương phản n&oacute;ng - lạnh cực kỳ cuốn h&uacute;t. Thưởng thức miếng m&igrave; lạnh trong t&ocirc; m&igrave; ngập đ&aacute;, đi k&egrave;m l&agrave; miếng thịt nướng thơm phức n&oacute;ng hổi m&agrave; phải xu&yacute;t xoa kh&ocirc;ng th&ocirc;i. Cuối c&ugrave;ng, bạn sẽ được chi&ecirc;u đ&atilde;i m&oacute;n cơm chi&ecirc;n được đảo c&ugrave;ng panchan, thịt nướng c&ograve;n s&oacute;t lại tr&ecirc;n b&agrave;n để lấp nốt chiếc bao tử c&ograve;n đang th&egrave;m thuồng của m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ĂN NGON CŨNG PHẢI C&Oacute; NGHỆ THUẬT</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Nướng thịt ch&iacute;n dĩ nhi&ecirc;n chẳng kh&oacute;, nhưng nướng thịt ngon bảo đảm kh&ocirc;ng dễ như bạn thường nghĩ m&agrave; đều cần c&oacute; những lưu &yacute; ri&ecirc;ng. Một trong những nguy&ecirc;n tắc cần nhớ khi ăn thịt nướng d&ugrave; bất kể loại thịt n&agrave;o với người H&agrave;n Quốc l&agrave; kh&ocirc;ng được lật thịt qu&aacute; ba lần. V&igrave; khi lật mặt nhiều lần hơn, người H&agrave;n cho rằng vị ngọt tự nhi&ecirc;n của miếng thịt cũng sẽ bị bốc hơi theo, chưa kể thời gian tiếp x&uacute;c nhiệt cho từng mặt qu&aacute; nhanh cũng khiến thịt mau kh&ocirc; v&agrave; k&eacute;m ngon đi hơn hẳn. Th&ocirc;ng thường, d&acirc;n s&agrave;nh ăn sẽ nướng một miếng thịt khoảng 3 ph&uacute;t mỗi mặt cho tới khi bề mặt bắt đầu chuyển sang m&agrave;u n&acirc;u, tiết ra dầu mỡ rồi mới lật lại. T&ugrave;y v&agrave;o nhiệt độ v&agrave; độ d&agrave;y của miếng thịt m&agrave; sẽ c&oacute; thời gian nướng kh&aacute;c nhau.<br />\r\n<br />\r\nC&aacute;c loại panchan thường gặp như l&aacute; vừng, kimchi, tỏi cũng được kết hợp rất nhiều trong bữa ăn để gia tăng hương vị cho thịt nướng. Khi ăn bạn phải ăn cả trong một lần cắn bởi phải như vậy, bạn mới c&oacute; thể thưởng trọn vị của sự kết hợp n&agrave;y. Vị chua cay của kimchi, hăng nhẹ của l&aacute; vừng v&agrave; tỏi nướng vừa tăng hương vị lại giảm đi phần n&agrave;o độ b&eacute;o v&agrave; dầu mỡ của m&oacute;n thịt, đ&acirc;y cũng l&agrave; c&aacute;ch ăn ngon gi&uacute;p bao tử của c&aacute;c thực thần ăn ngon v&agrave; khỏe hơn m&agrave; chẳng hề mau ng&aacute;n.</p>','nghe-thuat-an-thit-nuong-kieu-han-va-nguoi-an-chinh-la-mot-nghe-nhan','2023-11-11 10:20:31.195522','2023-12-23 04:18:23.136039');
INSERT INTO news_tintuc VALUES (3,'NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI','uploads/img3.jpg','trà đạo','<p><strong>Những dải ruộng bậc thang, c&aacute;c c&ocirc; g&aacute;i Th&aacute;i với điệu m&uacute;a x&ograve;e hoa, mu&ocirc;n cung đường ngợp m&ugrave;a hoa&hellip; đ&oacute; l&agrave; rẻo cao T&acirc;y Bắc lu&ocirc;n l&agrave;m say l&ograve;ng lữ kh&aacute;ch miền xu&ocirc;i. V&agrave; n&eacute;p m&igrave;nh b&ecirc;n dưới n&uacute;i non h&ugrave;ng vĩ ấy c&ograve;n c&oacute; m&oacute;n qu&agrave; g&oacute;i trọn vị thi&ecirc;n nhi&ecirc;n: tr&agrave; xanh T&acirc;y Bắc.</strong></p>\r\n\r\n<p><strong>G&oacute;i trọn hương vị của n&uacute;i rừng</strong></p>\r\n\r\n<p>Ở chốn &ldquo;Ng&agrave;n thước l&ecirc;n cao, ng&agrave;n thước xuống&rdquo;, T&acirc;y Bắc chứa đựng nhiều kh&oacute; khăn nhưng cũng g&oacute;i gh&eacute;m những ngọt l&agrave;nh chẳng ở đ&acirc;u c&oacute;. Địa h&igrave;nh hiểm trở v&agrave; thổ nhưỡng nơi đ&acirc;y tạo n&ecirc;n những đặc sản nức tiếng: m&oacute;n Ch&eacute;o người Th&aacute;i, m&oacute;n thắng cố người M&ocirc;ng, m&oacute;n r&ecirc;u đ&aacute; nướng... Mỗi m&oacute;n đều khiến thực kh&aacute;ch e ngại l&uacute;c mới bắt đầu, nhưng lại c&oacute; hương vị kh&oacute; qu&ecirc;n khi kết th&uacute;c. Bởi thế, mỗi thứ đồ ăn v&agrave; thức uống từ v&ugrave;ng đất n&agrave;y đều khiến người ta nhớ m&atilde;i.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c thức qu&agrave; ấy, T&acirc;y Bắc c&ograve;n l&agrave; nguồn cung ứng nguy&ecirc;n liệu l&agrave;m n&ecirc;n m&oacute;n uống quen thuộc của người Việt: tr&agrave; xanh. Với những nương ch&egrave; trải khắp tr&ecirc;n c&aacute;c sườn đồi, tr&agrave; xanh nơi đ&acirc;y đều được canh t&aacute;c trồng trọt v&agrave; thu hoạch ho&agrave;n to&agrave;n thủ c&ocirc;ng theo phương ph&aacute;p truyền thống của đồng b&agrave;o d&acirc;n tộc. Ch&iacute;nh v&igrave; vậy, tr&agrave; xanh T&acirc;y Bắc giữ vị xanh sạch tự nhi&ecirc;n nhẹ nh&agrave;ng, thuần khiết. Phải uống tr&agrave; xanh T&acirc;y Bắc mới nếm được c&aacute;i đậm hương của sương n&uacute;i, vị mộc của rừng gi&agrave;, để nhớ m&atilde;i về một chốn &ldquo;nơi n&agrave;o qua m&agrave; l&ograve;ng chẳng y&ecirc;u thương&rdquo;.</p>\r\n\r\n<p>Hơn một thức uống, tr&agrave; được v&iacute; như &ldquo;ti&ecirc;n dược&rdquo; nguy&ecirc;n nh&acirc;n c&oacute; lẽ ở trong c&aacute;ch n&oacute; được dung dưỡng lớn l&ecirc;n. Tr&agrave; ph&aacute;t triển tốt nhất v&agrave; cho chất lượng ngon nhất ở những nơi kh&iacute; hậu ẩm, lạnh, quanh năm c&oacute; sương m&ugrave;. Những loại tr&agrave; nổi tiếng đều gắn với c&aacute;c địa danh hiểm trở như Suối Gi&agrave;ng, T&agrave; X&ugrave;a, Mộc Ch&acirc;u... Việc dung h&ograve;a với những điều kiện kh&oacute; khăn để ph&aacute;t triển, tự tr&agrave; xanh chứa đựng những gi&aacute; trị dưỡng sinh m&agrave; kh&oacute; c&oacute; lo&agrave;i thảo mộc n&agrave;o s&aacute;nh bằng.&nbsp;&nbsp;</p>\r\n\r\n<p>V&igrave; thế, kh&ocirc;ng lạ khi c&aacute;c nh&agrave; nghi&ecirc;n cứu chỉ ra, tr&agrave; xanh T&acirc;y Bắc sau khi nghiền mịn gi&agrave;u chất xơ v&agrave; c&aacute;c vitamin C, B, E v&agrave; chứa h&agrave;m lượng chất chống oxy h&oacute;a cao gấp 3 lần tr&agrave; xanh nguy&ecirc;n l&aacute; th&ocirc;ng thường. Tr&agrave; xanh T&acirc;y Bắc cũng c&oacute; hương vị ri&ecirc;ng kh&oacute; trộn lẫn với bất cứ v&ugrave;ng miền n&agrave;o, với vị mộc thấm đẫm hơi thở n&uacute;i rừng, ch&aacute;t nhẹ nhưng hậu vị thanh ngọt. Ủ m&igrave;nh trong sương sớm v&agrave; m&acirc;y trời quanh năm, n&ecirc;n tr&agrave; c&oacute; hương thơm thanh tao, tạo cảm gi&aacute;c khoan kho&aacute;i khi thưởng thức. Đặc biệt, tr&agrave; xanh T&acirc;y Bắc được phủ r&acirc;m v&agrave;i tuần trước khi thu hoạch, nhằm giữ lại tối đa dưỡng chất, trong đ&oacute; c&oacute; amino acid L-Theanine, gi&uacute;p giải tỏa căng thẳng một c&aacute;ch nhẹ nh&agrave;ng.&nbsp;</p>\r\n\r\n<p><strong>Tr&agrave; Xanh T&acirc;y Bắc - Vị mộc từ Nh&agrave;, chờ kh&aacute;ch miền xu&ocirc;i</strong></p>\r\n\r\n<p>Với mong muốn mang hương vị của v&ugrave;ng cao về với thị th&agrave;nh, The Coffee House tr&igrave;nh l&agrave;ng 4 thức uống từ tr&agrave; xanh T&acirc;y Bắc: Tr&agrave; Xanh Latte, Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết, Đ&aacute; Xay Frosty Tr&agrave; Xanh, v&agrave; Tr&agrave; Xanh Đường Đen.&nbsp;</p>\r\n\r\n<p>D&agrave;nh cho những ai cần tỉnh t&aacute;o nhưng lại sợ cảm gi&aacute;c say, kh&oacute; chịu, đau đầu, Tr&agrave; Xanh Latte sẽ l&agrave; một trải nghiệm vị gi&aacute;c ph&ugrave; hợp. Hương vị chủ đạo tr&agrave; xanh T&acirc;y Bắc ch&aacute;t nhẹ kết hợp c&ugrave;ng sữa tươi nguy&ecirc;n kem ngọt dịu sẽ khiến bạn đủ tỉnh t&aacute;o một c&aacute;ch &ecirc;m mượt, xoa dịu những căng thẳng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_traxanhtaybac_7_164329cf39ba457cbd1e07adb8aed538_grande.jpg\" style=\"height:600px; width:480px\" /></p>\r\n\r\n<p>Đối với team hảo ngọt, ưa th&iacute;ch sự chiều chuộng vị gi&aacute;c với m&oacute;n đồ uống s&aacute;nh mịn v&agrave; đậm vị chắc chắn kh&ocirc;ng thể bỏ qua Đ&aacute; Xay Frosty Tr&agrave; Xanh. Sự h&ograve;a quyện s&aacute;ng tạo giữa hương vị tr&agrave; nguy&ecirc;n bản c&ugrave;ng kem sữa ngọt ng&agrave;o sẽ đ&aacute;nh thức mọi gi&aacute;c quan một c&aacute;ch đầy bất ngờ. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; m&oacute;n đồ giải kh&aacute;t bật mood m&agrave; c&ograve;n cực tốt cho sức khoẻ nhờ th&agrave;nh phần gi&agrave;u vitamin v&agrave; c&aacute;c chất chống oxy h&oacute;a c&oacute; trong tr&agrave; xanh T&acirc;y Bắc.</p>\r\n\r\n<p>Kh&ocirc;ng qu&ecirc;n những kh&aacute;ch h&agrave;ng lu&ocirc;n t&igrave;m kiếm thức uống mang hương vị tr&aacute;i c&acirc;y mới lạ, Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết l&agrave; sự kết hợp ph&aacute; c&aacute;ch của The Coffee House. Nhấp mỗi ngụm Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết, bạn như đang đắm m&igrave;nh giữa sự trong trẻo, m&aacute;t l&agrave;nh của sương sớm v&ugrave;ng cao gi&uacute;p giải nhiệt tức th&igrave; khi tiết trời oi ả.</p>\r\n\r\n<p>Trong khi đ&oacute;, Tr&agrave; Xanh Đường Đen với hiệu ứng ph&acirc;n tầng đẹp mắt, như ph&aacute;c hoạ n&uacute;i đồi T&acirc;y Bắc bảng lảng giữa sương m&acirc;y, thấp tho&aacute;ng những nương ch&egrave; xanh ng&aacute;t. Vị đường đen ngọt nhẹ c&agrave;ng l&agrave;m tăng th&ecirc;m sự đậm đ&agrave; từ tr&agrave; xanh, kết hợp c&ugrave;ng sữa tươi thơm b&eacute;o khiến m&oacute;n đồ uống th&ecirc;m phần hấp dẫn.</p>','nguoc-len-tay-bac-goi-vi-moc-ve-xuoi','2023-11-11 10:36:04.352727','2023-11-11 10:36:04.352727');
INSERT INTO news_tintuc VALUES (4,'“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY','uploads/img4.jpg','Blog ăn uống','<p><em><strong>Năm 2022 l&agrave; năm đề cao sức khỏe tinh thần n&ecirc;n giới trẻ muốn tận hưởng một Trung thu với nhiều trải nghiệm mới mẻ, r&ocirc;m rả c&ugrave;ng bạn b&egrave; v&agrave; người th&acirc;n. V&agrave; trải nghiệm độc đ&aacute;o &ldquo;Khuấy để thấy trăng&rdquo; của The Coffee House như khuấy l&ecirc;n niềm hạnh ph&uacute;c, nao nức về một trung thu đầy th&uacute; vị m&agrave; kh&ocirc;ng người trẻ n&agrave;o muốn bỏ lỡ.</strong></em></p>\r\n\r\n<h2><strong>Tết Trung thu đặc biệt với những điều giản đơn</strong></h2>\r\n\r\n<p>Cứ đến th&aacute;ng 8 &acirc;m lịch, đường phố Việt Nam lại rộn r&agrave;ng trống l&acirc;n v&agrave; lồng đ&egrave;n trưng kệ. Nhưng năm ngo&aacute;i, nhiều người bỗng &quot;đ&oacute;n trăng&quot; kiểu kh&aacute;c, với c&aacute;c hoạt động thưởng trăng rước đ&egrave;n diễn ra c&oacute; phần hạn chế v&agrave; y&ecirc;n ắng hơn. Đ&oacute;n Trung thu tại nh&agrave;, gia đ&igrave;nh đo&agrave;n vi&ecirc;n từ xa th&ocirc;ng qua m&agrave;n h&igrave;nh điện thoại hay ngắm trăng online... đ&oacute; l&agrave; những k&yacute; ức kh&oacute; qu&ecirc;n của người Việt về một tết Đo&agrave;n vi&ecirc;n đặc biệt.</p>\r\n\r\n<p>&quot;Sau khi chứng kiến c&aacute;i thế giới m&agrave; ở đấy mỗi c&aacute;i nắm tay cũng l&agrave; điều xa xỉ, người ta liền rục rịch định nghĩa lại về hạnh ph&uacute;c&quot;, tạp ch&iacute; Vogue viết. Hạnh ph&uacute;c giờ đ&acirc;y chỉ g&oacute;i gọn trong những điều giản đơn. Được x&aacute;ch vali bước l&ecirc;n chuyến bay hồi hương, được nh&igrave;n thấy nhau, được tỉ t&ecirc; kể nhau nghe chuyện to chuyện nhỏ. Đ&oacute; mới l&agrave; điều hạnh ph&uacute;c nhất sau khoảng thời gian lạ l&ugrave;ng vừa qua.</p>\r\n\r\n<p>Cho đến thời điểm n&agrave;y, c&aacute;ch nghĩ đ&oacute; về hạnh ph&uacute;c dần trở th&agrave;nh một ti&ecirc;u chuẩn &quot;b&igrave;nh thường mới&quot;. Ti&ecirc;u chuẩn n&agrave;y phần n&agrave;o dự đo&aacute;n c&aacute;ch m&agrave; người trẻ Việt ch&agrave;o đ&oacute;n Trung thu năm nay. Trải qua một năm bị chia c&aacute;ch bất đắc dĩ, giới trẻ giờ đ&acirc;y th&ecirc;m tr&acirc;n qu&yacute; những ph&uacute;t gi&acirc;y được sum vầy b&ecirc;n người th&acirc;n, bạn b&egrave; v&agrave; người thương. Hơn nữa, 2022 cũng l&agrave; năm đề cao sức khỏe tinh thần, n&ecirc;n sẽ chẳng lạ nếu người trẻ muốn tận hưởng một Trung thu với nhiều trải nghiệm mới mẻ.</p>\r\n\r\n<h2><strong>Khuấy để thấy trăng - Khuấy l&ecirc;n hạnh ph&uacute;c</strong></h2>\r\n\r\n<p>L&agrave; chuỗi c&agrave; ph&ecirc; lu&ocirc;n mang đến những bất ngờ cho người trẻ, The Coffee House kh&ocirc;ng chỉ s&aacute;ng tạo thức uống ri&ecirc;ng cho m&ugrave;a Trung thu m&agrave; c&ograve;n mang đến trải nghiệm cực kỳ mới mẻ. Với bộ sưu tập Hi-Tea Bling Bling, bạn chỉ cần khuấy l&ecirc;n sẽ thấy v&ograve;ng xo&aacute;y nước l&oacute;ng l&aacute;nh sắc v&agrave;ng chuyển động tựa &aacute;nh trăng cực đẹp mắt. Hiệu ứng bling bling lần đầu ti&ecirc;n xuất hiện trong thức uống của Nh&agrave;, khiến việc thưởng tr&agrave; trở n&ecirc;n th&uacute; vị hơn đối với người trẻ.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh5.googleusercontent.com/ntwQqTeaVDh-viZ6yLFPb9NgOy4KP9y6Vk7Zbyw1C5J63k8_y9SYAr0IHzpI_mMPKFp7yw-SGXGFxq8hGmnxYMH2OPKId0rxyChTjDppNfKscLxuuzsLxeS3HJ5Q4ovL37s2wZSCnm3S\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p>Về hương vị, Hi-Tea Ph&uacute;c Bồn Tử Bling Bling thi&ecirc;n về vị chua chua ngọt ngọt nhờ sự kết hợp của tr&agrave; hoa Hibiscus v&agrave; ph&uacute;c bồn tử 100% tự nhi&ecirc;n, k&egrave;m topping qu&yacute;t mọng nước mang đến cảm gi&aacute;c sảng kho&aacute;i tức th&igrave;. C&ograve;n Hi-Tea Xo&agrave;i Bling Bling c&oacute; vị ngọt nổi bật hơn với xo&agrave;i ch&iacute;n mọng, v&agrave;ng ươm tr&ecirc;n nền tr&agrave; hoa Hibiscus chua nhẹ.</p>\r\n\r\n<p>Trung thu đ&atilde; c&oacute; tr&agrave;, kh&ocirc;ng thể thiếu b&aacute;nh. D&ugrave; thuộc team Thập cẩm hay Đậu xanh, bạn đều c&oacute; thể t&igrave;m thấy vị y&ecirc;u th&iacute;ch tại The Coffee House. Ngo&agrave;i ra, Nh&agrave; c&ograve;n c&oacute; nhiều vị b&aacute;nh đ&aacute;ng thử cho m&ugrave;a trăng năm nay như Hạt sen trứng muối, Thập cẩm g&agrave; quay trứng muối.<img alt=\"\" src=\"https://lh3.googleusercontent.com/0_zubsrHjlc9jkJfoySn-NpMyxjD0CpPtqGVmLnZxfzPWT5tV7ZZUczlUsyDTcBD7RmHpQKPMw2yRtP4AQVkCJfvc7W4He5I4QlrPARiJ0Wqtt1ccfNMZRmaNgd8-2Ne8H3OzYZ4Rps9\" style=\"height:1600px; width:1600px\" /></p>\r\n\r\n<p>Đặc biệt, nh&acirc;n c&agrave; ph&ecirc; trứng muối l&agrave; &ldquo;signature&rdquo; - được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất 3 năm qua vẫn được The Coffee House giữ trọn hương vị. V&agrave; Mứt tắc hạt dưa với sự kết hợp mới mẻ của đậu xanh mềm mịn c&ugrave;ng mứt tắc (quất) cay nhẹ v&agrave; hạt dưa gi&ograve;n b&ugrave;i, hứa hẹn l&agrave; &ldquo;best-seller&rdquo; năm nay.</p>\r\n\r\n<p>Hơn hết, The Coffee House muốn tạo c&aacute;i cớ hẹn h&ograve; cho người trẻ, khi tr&igrave;nh l&agrave;ng combo &quot;Trăng Nh&agrave; Kết Nối&quot; - tặng một b&aacute;nh trung thu khi mua 2 ly Hi-Tea Bling Bling. Trung thu n&agrave;y, h&atilde;y &ldquo;giả vờ&rdquo; qu&ecirc;n những bận rộn, để rủ r&ecirc; bạn b&egrave; v&agrave; người th&acirc;n c&ugrave;ng tạo n&ecirc;n những kỉ niệm đ&aacute;ng nhớ. Gh&eacute; Nh&agrave; chuyện tr&ograve;, thưởng tr&agrave;, ăn b&aacute;nh hay c&ugrave;ng nhau trải nghiệm &ldquo;khuấy để thấy trăng&rdquo; để thấy hạnh ph&uacute;c chưa bao giờ giản đơn như thế.</p>','khuay-e-thay-trang-khuay-len-niem-hanh-phuc-trai-nghiem-khong-the-bo-lo-mua-trung-thu-nay','2023-11-11 10:38:39.973762','2023-11-14 01:29:28.761591');
INSERT INTO news_tintuc VALUES (5,'UỐNG TRÀ HIBISCUS CÓ BỊ MẤT NGỦ HAY KHÔNG?','uploads/img5.jpg','trà đạo','<p><strong>Tr&agrave; hoa Hibiscus lu&ocirc;n nằm trong top những loại tr&agrave; healthy được nhiều người ưa chuộng bởi sở hữu nhiều dược t&iacute;nh tốt cho sức khỏe v&agrave; sắc đẹp. Tuy thế, nhiều người vẫn băn khoăn kh&ocirc;ng biết Hibiscus c&oacute; chứa caffeine, g&acirc;y mất ngủ hay kh&ocirc;ng?</strong></p>\r\n\r\n<p><strong>H&agrave;m lượng caffeine trong Hibiscus</strong></p>\r\n\r\n<p>Tr&agrave; hoa Hibiscus (hay c&ograve;n gọi l&agrave; Atiso đỏ, Lạc thần, Hồng đ&agrave;i...) được chế biến từ những đ&agrave;i hoa sấy kh&ocirc;. V&agrave; theo c&aacute;c nghi&ecirc;n cứu, trong những đ&agrave;i hoa đỏ n&agrave;y kh&ocirc;ng chứa caffeine. Vậy n&ecirc;n, hiển nhi&ecirc;n trong tr&agrave; Hibiscus cũng sẽ kh&ocirc;ng c&oacute; th&agrave;nh phần caffeine như nhiều người vẫn nghĩ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/C2qwtsRI0bdhYu2T74hzocmGxZSjlv-otKMmh4clvs2b5aEcze44Uzd_VSpZn22O244D2mxuDmzdk6NIlKNb8e-Hsv7gAo1ekX11K4xIbf-R3CVad890-jonDw0NmZqDZ6p0Uw\" style=\"height:920px; width:1380px\" /></p>\r\n\r\n<p>Như thế, khi sử dụng tr&agrave; chiết xuất từ hoa Hibiscus sẽ kh&ocirc;ng g&acirc;y mất ngủ hay&nbsp;khiến cơ thể gặp những triệu chứng như n&ocirc;n nao, bồn chồn, x&oacute;t ruột&hellip; Ngược lại, khi sử dụng tr&agrave; hoa Hibiscus&nbsp;&nbsp;c&ograve;n gi&uacute;p bạn thư gi&atilde;n đầu &oacute;c v&agrave; tinh thần, cơ thể thư th&aacute;i, dễ chịu, c&oacute; thể ngủ s&acirc;u v&agrave;&nbsp;ngủ ngon hơn.&nbsp;</p>\r\n\r\n<p>Đặc biệt, trong đ&agrave;i hoa Hibiscus c&oacute; chứa rất nhiều chất chống oxy h&oacute;a, nổi bật nhất phải kể đến Flavonoid.&nbsp;H&agrave;m lượng Flavonoid trong đ&agrave;i hoa Hibiscus l&ecirc;n đến 12% v&agrave; trong l&aacute; chiếm khoảng 5 - 6%. Nhờ th&agrave;nh phần n&agrave;y n&ecirc;n khi uống tr&agrave; Hibiscus thường xuy&ecirc;n sẽ gi&uacute;p bạn ngăn chặn qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể, gi&uacute;p l&agrave;n da khỏe đẹp, trẻ trung v&agrave; rạng rỡ.&nbsp;<img alt=\"\" src=\"https://lh4.googleusercontent.com/E3SQPXh7gFyidPcKUhFsPNjemXPyqHnLkaKn91zxD_g8Wtsr4cO936hhIVg0ZrPDouWwk7UxkJHBN6PRCmyDr6KSBIvUxo14Mvu_55-y7x23lg9rQpkxI5W86wCsVlZA3zk-AA\" style=\"height:920px; width:1380px\" /></p>\r\n\r\n<p><strong>Thưởng thức Hibiscus ngon v&agrave; đ&uacute;ng c&aacute;ch&nbsp;</strong></p>\r\n\r\n<p>D&ugrave; tr&agrave; Hibiscus c&oacute; nhiều lợi &iacute;ch cho sức khỏe, tinh thần v&agrave; sắc đẹp, tuy nhi&ecirc;n bất cứ sản phẩm n&agrave;o cũng vậy, bạn kh&ocirc;ng n&ecirc;n lạm dụng ch&uacute;ng. Mỗi ng&agrave;y bạn chỉ n&ecirc;n d&ugrave;ng khoảng 2-3 ly tr&agrave; hoa Hibiscus để gi&uacute;p cơ thể hấp thụ tối đa v&agrave; mang lại những t&aacute;c dụng hiệu quả nhất. Qua đ&oacute; gi&uacute;p cơ thể bổ sung vitamin, tăng sức đề kh&aacute;ng, da dẻ mịn m&agrave;ng, tinh thần thoải m&aacute;i, tim mạch khỏe mạnh...&nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/t36RskU_YR-FMxrPIPjq4UCvie6QPCDMs4yhZsKzC4faBwQbIvk8V-s1xnk3tpZ_SM-QixOUPvrD3Szpa4CuGLcgyuowgCPIbsEz0NdurckwSPkD_ZbnGXpEPa9nT9cFcez02w\" style=\"height:853px; width:1280px\" /></p>\r\n\r\n<p>Hibiscus thường được phơi kh&ocirc; sử dụng l&agrave;m tr&agrave;, khi pha chế d&ugrave; l&agrave; n&oacute;ng hay lạnh đều cho ra hương vị thơm ngon v&agrave; thanh m&aacute;t. Thức uống n&agrave;y c&oacute; thể kết hợp với rất nhiều nguy&ecirc;n liệu kh&aacute;c như: quế, đinh hương, gừng, mật ong, đường, xi-r&ocirc; c&acirc;y phong, vani v&agrave; c&aacute;c loại tr&aacute;i c&acirc;y&hellip; để tăng th&ecirc;m hương vị mới lạ.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ l&agrave;m tr&agrave;, Hibiscus c&ograve;n c&oacute; thể d&ugrave;ng l&agrave;m mứt, thạch, tương ớt v&agrave; thậm ch&iacute; cả rượu vang. Với m&agrave;u đỏ tự nhi&ecirc;n đẹp mắt, bạn ho&agrave;n to&agrave;n c&oacute; thể &eacute;p nước Hibiscus c&ocirc; đặc để tạo m&agrave;u cho c&aacute;c loại thực phẩm kh&aacute;c như bột b&aacute;nh, rau c&acirc;u, sợi m&igrave;&hellip;&nbsp;</p>','uong-tra-hibiscus-co-bi-mat-ngu-hay-khong','2023-11-11 10:40:58.386051','2023-11-11 10:40:58.386051');
INSERT INTO news_tintuc VALUES (6,'BẠN CÓ ĐANG NHẦM LẪN GIỮA ATISO ĐỎ VÀ ATISO XANH?','uploads/nguongochibiscus_5.jpg','Teaholic','<div class=\"article_content\">\r\n<p><strong>Tr&agrave; Atiso vốn l&agrave; thức uống phổ biến tại Việt Nam v&agrave; được biết đến với 2 loại: Atiso đỏ (Hibiscus) v&agrave; Atiso xanh. Thế nhưng, hai loại n&agrave;y lại c&oacute; nhiều sự kh&aacute;c biệt cả về đặc điểm lẫn c&ocirc;ng dụng d&agrave;nh cho sức khỏe.</strong></p>\r\n\r\n<h4><strong>Atiso đỏ v&agrave; Atiso xanh c&oacute; phải l&agrave; &ldquo;họ h&agrave;ng&rdquo;?&nbsp;</strong></h4>\r\n\r\n<p>C&ugrave;ng c&oacute; t&ecirc;n gọi l&agrave; Atiso n&ecirc;n kh&ocirc;ng &iacute;t người khi nghe đến sẽ nghĩ rằng Atiso đỏ v&agrave; Atiso xanh l&agrave; hai loại c&acirc;y c&ugrave;ng họ chỉ kh&aacute;c nhau về sắc m&agrave;u. Tuy nhi&ecirc;n, thực tế hai giống c&acirc;y n&agrave;y ho&agrave;n to&agrave;n kh&aacute;c nhau. Atiso đỏ l&agrave; c&acirc;y thuộc họ Cẩm quỳ (Malvaceace), c&oacute; t&ecirc;n khoa học đầy đủ l&agrave; Hibiscus Sabdariffla Linn hay c&ograve;n được gọi với nhiều t&ecirc;n gọi kh&aacute;c như Bụp giấm, Lạc thần, Hồng đ&agrave;i &hellip;&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/NTVR3KHF_j_dSXDtGAFwr1b8kJV8p0a2FIlAgnzDTprYX-nG_LaPE1Rkvvqb01OH1z1k8tRBfIjuYZlXEGk-nseftNZ-5tHZ24aJID9vH478pv6WNXYszk9WZ4iNtjDpjCJn_Xg\" style=\"height:439px; width:624px\" /></p>\r\n\r\n<p><em>Atiso đỏ&nbsp;c&oacute; t&ecirc;n khoa học đầy đủ l&agrave; Hibiscus Sabdariffla Linn</em></p>\r\n\r\n<p>Mặt kh&aacute;c, Atiso xanh lại thuộc họ C&uacute;c (Asteraceae) v&agrave; c&oacute; t&ecirc;n khoa học l&agrave; Cynara Scolymus. Vậy n&ecirc;n, ngo&agrave;i m&agrave;u sắc, hai loại c&acirc;y n&agrave;y c&oacute; rất nhiều điểm kh&aacute;c biệt về đặc điểm, nguồn gốc, c&ocirc;ng dụng của từng loại đối với cơ thể.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/8vg_xJn79SKfs2SgVrI7pE65U7aqohtjH8tbbv9iv05ztHtbv342CilILTas1Il0KMcQO1Ec1WQWx8119_bewU5OEo4el4gDT9cagzk0pmgJExIsIRrfIHWTPq1HNpxr5EEYNgk\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p><em>Atiso xanh lại thuộc họ C&uacute;c (Asteraceae) v&agrave; c&oacute; t&ecirc;n khoa học l&agrave; Cynara Scolymus</em></p>\r\n\r\n<h4><strong>Nguồn gốc của Atiso đỏ v&agrave; Atiso xanh&nbsp;</strong></h4>\r\n\r\n<h2>D&ugrave; cả Atiso đỏ v&agrave; Atiso xanh đều được trồng v&agrave; ng&agrave;y c&agrave;ng phổ biến tr&ecirc;n mảnh đất h&igrave;nh chữ S. Thế nhưng, ch&uacute;ng đều kh&ocirc;ng phải l&agrave; giống c&acirc;y c&oacute; nguồn gốc tại Việt Nam. Cả hai đều l&agrave; giống c&acirc;y du nhập, nhờ hương vị tươi m&aacute;t v&agrave; nhiều lợi &iacute;ch cho sức khỏe, ch&uacute;ng ng&agrave;y c&agrave;ng trở th&agrave;nh giống c&acirc;y được ưa chuộng, dần dần được nghi&ecirc;n cứu v&agrave; trồng rộng r&atilde;i tại Việt Nam.&nbsp;</h2>\r\n\r\n<p>Atiso đỏ được biết đến đầu ti&ecirc;n tại một số v&ugrave;ng thuộc Ch&acirc;u Phi, v&agrave; l&agrave; niềm tự h&agrave;o của người d&acirc;n bản địa. Sau đ&oacute;, hoạt động mua b&aacute;n n&ocirc; lệ qua Th&aacute;i B&igrave;nh Dương ở những thế kỷ trước ch&iacute;nh l&agrave; con đường đ&atilde; đưa Atiso đỏ đến c&aacute;c khu vực nhiệt đới v&agrave; cận nhiệt đới ở Trung Mỹ, Brazil, Mexico v&agrave; T&acirc;y Ấn. Sau đ&oacute; được du nhập v&agrave;o Việt Nam khoảng đầu thế kỷ 20, v&agrave; được trồng nhiều ở một số tỉnh như H&agrave; T&acirc;y, Th&aacute;i Nguy&ecirc;n, Sơn La, L&acirc;m Đồng,...</p>\r\n\r\n<p>C&ograve;n Atiso xanh vốn được xem l&agrave; đặc sản của Đ&agrave; Lạt nước ta. Tuy nhi&ecirc;n, Atiso xanh l&agrave; loại c&acirc;y l&aacute; gai c&oacute; nguồn gốc từ miền Nam ch&acirc;u &Acirc;u (quanh Địa Trung Hải) v&agrave; đ&atilde; được người Cổ Hy Lạp v&agrave; Cổ La M&atilde; sử dụng như một loại rau.&nbsp;</p>\r\n\r\n<h4><strong>Sự kh&aacute;c nhau về đặc điểm b&ecirc;n ngo&agrave;i của Atiso đỏ v&agrave; Atiso xanh&nbsp;</strong></h4>\r\n\r\n<p>C&acirc;y Atiso đỏ l&agrave; loại c&acirc;y sống một năm, th&acirc;n thảo v&agrave; cao khoảng 1.5 &ndash; 2m. L&aacute; c&acirc;y c&oacute; dạng h&igrave;nh trứng, c&oacute; răng cưa quanh m&eacute;p. Hoa m&agrave;u đỏ mọc đơn ở n&aacute;ch, c&oacute; cuống rất ngắn v&agrave; c&oacute; l&ocirc;ng th&ocirc; bao quanh b&ecirc;n ngo&agrave;i. Tr&agrave; Atiso đỏ được phơi sấy từ c&aacute;c những b&ocirc;ng hoa v&agrave; đ&agrave;i hoa m&agrave;u đỏ n&agrave;y.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/zyZJ-yiDy_8XRE53soI4BkcThrlXD2A8C80S-BYoFDr3raTkNvn_u2NqQb9HkJ8tcVFj5UgXmLc0JBkNklUm-mfKhq6HTFRszee3hTdbvtfRL7Sdl-HYT-LFEiKlXTUbi0RQekc\" style=\"height:396px; width:624px\" /></p>\r\n\r\n<p>Atiso xanh cũng l&agrave; giống c&acirc;y th&acirc;n thảo, c&oacute; chiều cao khoảng hơn 1m &ndash; 2m v&agrave; rất cứng, c&oacute; phủ l&ocirc;ng trắng b&ecirc;n ngo&agrave;i. L&aacute; của Atiso xanh to, d&agrave;i v&agrave; mọc so le, ở mặt dưới c&oacute; l&ocirc;ng, mặt tr&ecirc;n c&oacute; m&agrave;u xanh lục. Kh&aacute;c với Atiso đỏ, hoa của c&acirc;y Atiso xanh c&oacute; h&igrave;nh dạng to, chỉ mọc ở đầu ngọn c&acirc;y, c&oacute; nhiều c&aacute;nh nhỏ b&ecirc;n ngo&agrave;i mọc so le nhau (được gọi l&agrave; l&aacute; b&aacute;c với đặc điểm kh&aacute; to, d&agrave;y, ngọn, cứng) v&agrave; tạo th&agrave;nh b&uacute;p hoa. B&uacute;p hoa Atiso xanh c&oacute; m&agrave;u xanh lục, xen lẫn m&agrave;u tim t&iacute;m, tr&ecirc;n bề mặt b&uacute;p hoa c&oacute; l&ocirc;ng to mềm.&nbsp;</p>\r\n\r\n<p>Atiso xanh l&agrave; giống c&acirc;y ph&ugrave; hợp với kh&iacute; hậu &ocirc;n đới m&aacute;t mẻ. C&ograve;n Atiso đỏ ph&ugrave; hợp với kh&iacute; hậu nhiệt đới v&agrave; cận nhiệt đới. Đ&agrave; Lạt l&agrave; v&ugrave;ng trồng được cả hai giống c&acirc;y n&agrave;y. Sở hữu những n&ocirc;ng trường lớn nhất, cho ra đời những sản phẩm chất lượng nức tiếng v&agrave; đưa ch&uacute;ng trở th&agrave;nh đặc sản của xứ sở ng&agrave;n hoa. Ngo&agrave;i ra, Sapa cũng ng&agrave;y c&agrave;ng được biết đến trồng nhiều hai loại c&acirc;y n&agrave;y.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/Kph7ITjoZrPwUI0Qh5EOOGVFjQJa-wmFUWuRvpQHumu68rIruxFeL1tkrK1rn2i_XP3hhG7euYFrcX_UFfq80nznpIXUPjsurw0PqW0nAPCE3rcP_BppKBo4EVp_7eGHiDbV1hw\" style=\"height:403px; width:624px\" /></p>\r\n\r\n<p><em>Atiso xanh giống c&acirc;y th&acirc;n thảo, c&oacute; chiều cao khoảng hơn 1m &ndash; 2m v&agrave; rất cứng, c&oacute; phủ l&ocirc;ng trắng b&ecirc;n ngo&agrave;i</em></p>\r\n\r\n<h4><strong>C&ocirc;ng dụng của tr&agrave; Atiso đỏ v&agrave; tr&agrave; Atiso xanh</strong></h4>\r\n\r\n<p>Hiện nay, Atiso đỏ v&agrave; Atiso xanh được sử dụng nhiều trong việc chế biến th&agrave;nh dược phẩm, thực phẩm hoặc được pha chế thức uống. Trong đ&oacute;, tr&agrave; Atiso đỏ v&agrave; Atiso xanh được sử dụng phổ biết, nhờ c&oacute; vị dễ chịu c&ugrave;ng nhiều c&ocirc;ng dụng tốt cho sức khỏe.&nbsp;</p>\r\n\r\n<p>Nhiều nghi&ecirc;n cứu đ&atilde; chỉ ra rằng Atiso đỏ hiệu quả trong việc hỗ trợ hạ huyết &aacute;p, giảm cholesterol trong m&aacute;u. Đặc biệt, trong Atiso đỏ chứa nhiều vitamin (vitamin A, C, D, E&hellip;) v&agrave; gi&agrave;u c&aacute;c chất chống oxy h&oacute;a nhờ đ&oacute; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o ho&aacute; v&agrave; gi&uacute;p l&agrave;n da s&aacute;ng mịn hơn.&nbsp;</p>\r\n\r\n<p>Nếu bạn sử dụng tr&agrave; Atiso đỏ thường xuy&ecirc;n sẽ hỗ trợ giảm c&acirc;n, giải tỏa stress, tăng cường tr&iacute; nhớ, tăng khả năng tập trung. Ngo&agrave;i hỗ trợ ti&ecirc;u h&oacute;a, nhuận tr&agrave;ng, lợi tiểu, chống t&aacute;o b&oacute;n, uống tr&agrave; Atiso c&ograve;n l&agrave;m giảm nguy cơ mắc c&aacute;c bệnh về tim mạch, gan, thận v&agrave; cả ung thư&hellip;&nbsp;</p>\r\n\r\n<p>C&ograve;n Atiso xanh th&igrave; gi&uacute;p tăng chức năng gan, gi&uacute;p gan đ&agrave;o thải chất độc tốt hơn, ph&ograve;ng chống c&aacute;c loại bệnh như: gan nhiễm mỡ, xơ gan, ung thư gan&hellip; Tr&agrave; Atiso xanh v&agrave; c&aacute;c sản phẩm chế biến từ giống c&acirc;y n&agrave;y sẽ gi&uacute;p k&iacute;ch th&iacute;ch sự điều tiết, lưu th&ocirc;ng tuyến mật, cơ thể dễ d&agrave;ng hấp thu c&aacute;c chất dinh dưỡng từ thức ăn. Atiso xanh cũng sẽ l&agrave;m giảm h&agrave;m lượng cholesterol xấu, ngăn chặn qu&aacute; tr&igrave;nh xơ vữa động mạch v&agrave; giảm khả năng mắc c&aacute;c bệnh li&ecirc;n quan tới tim mạch&hellip;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/wiimt4I0gDVqc2QQctahR3Yb_pzp4gQRSVav0nzT-qJYrnZvyUIhcce54h98v1SFp0uoN2R3KQCcyCR9Yj5Xv6UgckTvDqcRXsdLsCIDrIgTe43-w_nPHuGy7MTZ3HtwzYR-jwk\" style=\"height:416px; width:624px\" /></p>\r\n\r\n<p><em>Tr&agrave; Atiso xanh c&oacute; nhiều c&ocirc;ng dụng tốt cho sức khoẻ&nbsp;</em></p>\r\n\r\n<h4><strong>Hương vị của tr&agrave; Atiso đỏ v&agrave; tr&agrave; Atiso xanh&nbsp;</strong></h4>\r\n\r\n<p>Nếu tr&agrave; Atiso khi pha chế c&oacute; sắc đỏ đẹp mắt th&igrave; Atiso xanh lại c&oacute; m&agrave;u v&agrave;ng xanh đặc trưng. B&ecirc;n cạnh đ&oacute;, hương vị của 2 loại tr&agrave; n&agrave;y cũng ho&agrave;n to&agrave;n kh&aacute;c nhau. Tr&agrave; Astio xanh c&oacute; vị ngọt tự nhi&ecirc;n, ph&ugrave; hợp với khẩu vị của nhiều người. Ri&ecirc;ng tr&agrave; Astio đỏ thi&ecirc;n về vị chua thanh, ngon hơn khi kết hợp c&ugrave;ng c&aacute;c chất tạo ngọt như đường, mật ong, syrup&hellip;Để thưởng thức tr&agrave; Atiso xanh, bạn c&oacute; thể chọn tr&agrave; t&uacute;i lọc, hoặc phơi kh&ocirc; hoa để d&ugrave;ng dần.</p>\r\n\r\n<p>Đối với tr&agrave; Atiso đỏ, bạn pha chế từ tr&agrave; t&uacute;i lọc hoặc nấu tr&agrave; từ đ&agrave;i hoa phơi kh&ocirc;. Ngo&agrave;i ra, bạn c&oacute; thể gh&eacute; cửa h&agrave;ng của The Coffee House tr&ecirc;n to&agrave;n quốc để tận hưởng hương vị mới mẻ của tr&agrave; Atiso đỏ. Tại The Coffee House, loại tr&agrave; hoa n&agrave;y được gọi với c&aacute;i t&ecirc;n Hibiscus, l&agrave; th&agrave;nh phần ch&iacute;nh của bộ sưu tập thức uống Hi-Tea Healthy.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/untitled__5__76f454442673460eae886c6d5f75924c_grande.png\" /></p>\r\n\r\n<p><em>Bộ sưu tập Hi-Tea Healthy c&oacute;&nbsp;7&nbsp;hương vị độc với th&agrave;nh phần ch&iacute;nh l&agrave; tr&agrave; hoa Hibiscus</em></p>\r\n\r\n<p><strong>BST Hi-Tea Healthy c&oacute; th&agrave;nh phần ch&iacute;nh l&agrave; tr&agrave; 100% hoa Hibiscus tự nhi&ecirc;n</strong></p>\r\n\r\n<p>4 sản phẩm tr&agrave; gồm Hi-Tea Xo&agrave;i Aloe Vera, Hi-Tea Đ&agrave;o v&agrave; Hi-Tea Yuzu Tr&acirc;n Ch&acirc;u Trắng (qu&yacute;t Nhật) ph&ugrave; hợp với những ai th&iacute;ch vị chua nhẹ đặc trưng của tr&agrave; hoa Hibiscus,&nbsp;nhưng được điều chỉnh dễ uống bởi sự h&agrave;i h&ograve;a với vị ngọt của topping tr&aacute;i c&acirc;y nhiệt đới,&nbsp;nha đam, tr&acirc;n ch&acirc;u trắng.&nbsp;</p>\r\n\r\n<p>Ri&ecirc;ng 3&nbsp;sản phẩm Đ&aacute; tuyết gồm Hi-Tea Đ&aacute; Tuyết Yuzu Aloe Vera, Hi-Tea Đ&aacute; Tuyết Mận Muối Aloe Vera, Hi-Tea Đ&aacute; Tuyết Xo&agrave;i Đ&agrave;o&nbsp;d&agrave;nh cho những ai muốn trải nghiệm sự mới mẻ. Bởi Đ&aacute; tuyết l&agrave; sự kết hợp độc đ&aacute;o giữa tr&agrave; hoa Hibiscus, đ&aacute; xay c&ugrave;ng Mận muối&nbsp;hoặc vỏ Yuzu, ăn k&egrave;m topping tr&acirc;n ch&acirc;u trắng&nbsp;hoặc Aloe Vera.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn ảnh:</strong>&nbsp;<em>The Coffee House, Shutterstock</em></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>','ban-co-ang-nham-lan-giua-atiso-o-va-atiso-xanh','2023-12-23 04:36:52.860689','2023-12-23 04:37:50.297054');
INSERT INTO news_tintuc VALUES (7,'BỘ SƯU TẬP CẦU TOÀN KÈO THƠM: \"VÍA\" MAY MẮN KHÔNG THỂ BỎ LỠ TẾT NÀY','uploads/THTM0927.jpg','Teaholic','<p><strong>Tết nay vẫn giống Tết xưa, kh&ocirc;ng hề mai một n&eacute;t văn ho&aacute; truyền thống m&agrave; c&ograve;n th&ecirc;m v&agrave;o những hoạt động &ldquo;xin v&iacute;a&rdquo; hiện đại, trẻ trung. V&iacute; như giới trẻ đang l&ecirc;n lịch gh&eacute; The Coffee House - &ldquo;địa điểm xin v&iacute;a mới nổi&rdquo; để vừa thưởng thức bộ sưu tập thức uống d&agrave;nh ri&ecirc;ng cho Tết vừa mong năm mới Cầu To&agrave;n K&egrave;o Thơm.</strong></p>\r\n\r\n<p>&ldquo;Xin v&iacute;a&rdquo; - cụm từ quen thuộc được giới trẻ sử dụng như một c&acirc;u n&oacute;i cửa miệng trong giao tiếp h&agrave;ng ng&agrave;y lại thể hiện n&eacute;t văn ho&aacute; đặc trưng của người Việt mỗi dịp Tết đến, Xu&acirc;n về. Gh&eacute; thăm những địa điểm may mắn, thưởng thức những m&oacute;n ăn mang &yacute; nghĩa tốt l&agrave;nh hay gặp gỡ người &ldquo;hợp tuổi&rdquo; l&agrave; điều ai cũng muốn l&agrave;m trong năm mới. Thấu hiểu t&acirc;m l&yacute; đ&oacute;n Tết với &ldquo;tất tần tật&rdquo; điều may từ ẩm thực đến đi lại của mọi người, The Coffee House đ&atilde; ra mắt BST Tết Qu&yacute; M&atilde;o 2023 mang t&ecirc;n Cầu To&agrave;n K&egrave;o Thơm.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/TSjhyn_aOZB8K1BlgpQV3BQYQ37Z54B74_stQSXeN2mSoC1hEgz_nWmr6NXf8D-Ik8dCoJaq2-xdxDRoXw4sRa7-vBpkxlNXpetF3lqBzGa_fBmZ3VW1mn4T8fL7KjJrrnHSbABchvAwF-qu0q_9rxuUPOp8psVG2FEgbXt-Dv8c3w9jHAW8H-GTtfh-bw\" style=\"height:601px; width:602px\" /></p>\r\n\r\n<p>BST Cầu To&agrave;n K&egrave;o Thơm được xem l&agrave; thức uống mang &ldquo;v&iacute;a&rdquo; may mắn cho những ng&agrave;y đầu năm mới</p>\r\n\r\n<p><strong>C&ograve;n g&igrave; l&yacute; tưởng hơn khi&hellip; vừa healthy, vừa mang v&iacute;a may mắn cho năm mới</strong></p>\r\n\r\n<p>Củng cố niềm tin v&agrave;o những điều tốt đẹp sẽ đến trong năm mới, mỗi sản phẩm trong BST Cầu To&agrave;n K&egrave;o Thơm được xem l&agrave;&nbsp; một &ldquo;v&iacute;a&rdquo; may mắn, để bất kỳ kh&aacute;ch h&agrave;ng n&agrave;o cũng dễ d&agrave;ng &ldquo;xin v&iacute;a&rdquo; khi gh&eacute; chơi Nh&agrave;. Tất cả c&aacute;c thức uống trong Cầu To&agrave;n K&egrave;o Thơm đều mang sắc đỏ - v&agrave;ng chủ đạo, đ&acirc;y cũng l&agrave; m&agrave;u sắc chủ đạo mỗi dịp lễ tết. Đồng thời, mỗi ly nước c&ograve;n đầy ắp loạt topping chất lượng tượng trưng sự sung t&uacute;c v&agrave; đủ đầy.</p>\r\n\r\n<p>Đặc biệt, The Coffee House c&ograve;n d&agrave;y c&ocirc;ng lựa chọn cả hương vị ch&iacute;nh l&agrave; từ thơm v&agrave; m&atilde;ng cầu &ndash; hai loại tr&aacute;i c&acirc;y quen thuộc trong m&acirc;m ngũ quả ng&agrave;y Tết. Vị chua ngọt từ m&atilde;ng cầu, thơm cực hợp gơ cho m&ugrave;a Tết, gi&uacute;p giải ngấy v&agrave; thanh lọc cơ thể sau c&aacute;c buổi tiệc linh đ&igrave;nh. Hơn thế nữa, The Coffee House vẫn giữ vững t&ocirc;n chỉ &ldquo;đẹp da - khỏe d&aacute;ng&rdquo; đ&atilde; từng chinh phục th&agrave;nh c&ocirc;ng nhiều kh&aacute;ch h&agrave;ng trong c&aacute;c BST thức uống healthy trước đ&acirc;y, với nền tr&agrave; tốt cho sức khỏe, thanh lọc cơ thể trong Cầu To&agrave;n K&egrave;o Thơm.</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/TEexIN9nQ0e8D0EBbOscFdqlt11eNMjyEAs6QHM5ZV_qR9U2DjylGnq1hR6o2A6Zcr6JgN2A_d6b6Yo_ML9C6vQPf0bhvhdq9tv5Xoq6TEiRJs6unAaNwkzsc5t_Wsrp0v_ILEkq1_6pAzFYYxPsO4xrFLSHG6Cueoy1XUhPZ11VvylmzevHW5T0IVvPYw\" style=\"height:601px; width:602px\" /></p>\r\n\r\n<p><em>D&ograve;ng Tr&agrave; Hi-Tea, Tr&agrave; tr&aacute;i c&acirc;y hứa hẹn l&agrave; best-seller của The Coffee House bởi&nbsp; vị chua ngọt dễ uống, gi&uacute;p giải ngấy m&ugrave;a Tết hiệu quả.</em></p>\r\n\r\n<p>Với hương vị chua ngọt từ thơm, The Coffee House đ&atilde; s&aacute;ng tạo n&ecirc;n 4 thức uống kh&aacute;c nhau. Tr&agrave; L&agrave;i Thơm m&aacute;t rượi v&agrave; vui miệng với topping hạt chia, nha đam dai gi&ograve;n v&agrave; thạch tr&agrave; Hibiscus mềm mịn. Ấn tượng với t&ocirc;ng đỏ rực rỡ của tr&agrave; Hibiscus tự nhi&ecirc;n, Hi-Tea Thơm điểm th&ecirc;m sắc v&agrave;ng từ thơm để l&agrave;m n&ecirc;n ly tr&agrave; healthy cho bất kỳ ai.&nbsp;</p>\r\n\r\n<p>Những fan của tr&agrave; sữa c&oacute; thể lựa chọn CloudTea Thơm Dừa Đ&aacute; Xay - sự kết hợp ngọt ng&agrave;o tan chảy giữa đ&aacute; xay dừa beo b&eacute;o c&ugrave;ng tr&agrave; l&agrave;i chua ngọt v&agrave; mứt thơm &ldquo;g&acirc;y nghiện&rdquo;. Xứng danh điểm đến cho cả gia đ&igrave;nh trong dịp Tết, The Coffee House c&ograve;n chuẩn bị Tr&agrave; Oolong Thơm N&oacute;ng tr&ecirc;n nền tr&agrave; oolong nướng quen thuộc, th&ecirc;m v&agrave;o những l&aacute;t thơm th&aacute;i nhỏ để vừa nh&acirc;m nhi, vừa tận hưởng tiết trời se lạnh ng&agrave;y đầu xu&acirc;n.</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/T8CXMI6AkmtYEsiH_JMVBRufJhD3Ftqn2Dow5Cw5EqhCUMY35HV2K7RCgmFFQDUepb4sUI-2p638o2zfXRNyk4Dw9MKsxMF51cUZ9v63zFv5ArSjKcbcGt5wIjogzpa5pCJIdUhjILAJQu4HwG7jnPvoLcHF3ulzDBncQpGbTg-jzKcgWq9Pvhu7Y1ufJQ\" style=\"height:401px; width:602px\" /></p>\r\n\r\n<p><em>D&ugrave; l&agrave; fan tr&agrave; tr&aacute;i c&acirc;y hay tr&agrave; sữa, bạn đều c&oacute; thể t&igrave;m thấy thức uống y&ecirc;u th&iacute;ch trong BST Cầu To&agrave;n K&egrave;o Thơm.</em></p>\r\n\r\n<p>Nếu muốn &ldquo;cầu được ước thấy&rdquo;, những kh&aacute;ch h&agrave;ng gh&eacute; chơi &ldquo;Nh&agrave;&rdquo; c&oacute; thể thử ngay hai thức uống từ m&atilde;ng cầu. Đ&oacute; l&agrave; Tr&agrave; L&agrave;i M&atilde;ng Cầu v&agrave; Hi-Tea M&atilde;ng Cầu được biến tấu si&ecirc;u ngon với ch&uacute;t ngọt thanh, chua nhẹ của m&atilde;ng cầu, nhưng topping vẫn đầy ắp từ hạt chia, nha đam đến thạch tr&agrave; Hibiscus lấp l&aacute;nh &aacute;nh v&agrave;ng.</p>\r\n\r\n<p>Đ&uacute;ng như t&ecirc;n gọi, BST Cầu To&agrave;n K&egrave;o Thơm của The Coffee House ch&iacute;nh l&agrave; &ldquo;k&egrave;o thơm&rdquo; Tết n&agrave;y cho mọi người, mọi nh&agrave;. Với đồ uống đa dạng từ tr&agrave; Hi-Tea, tr&agrave; sữa, tr&agrave; tr&aacute;i c&acirc;y cho đến h&igrave;nh thức đ&aacute; vi&ecirc;n, đ&aacute; xay, n&oacute;ng chiều l&ograve;ng mọi thế hệ.</p>\r\n\r\n<p><strong>&ldquo;Xin v&iacute;a&rdquo; chưa đủ, nhanh tay &ldquo;nh&acirc;n đ&ocirc;i&rdquo; điềm l&agrave;nh với ly M&egrave;o May Mắn&nbsp;</strong></p>\r\n\r\n<p>C&oacute; BST thức uống cho dịp Tết th&igrave; cũng phải c&oacute; ly đựng xứng tầm &ldquo;k&egrave;o thơm&rdquo;, The Coffee House đ&atilde; ra mắt ly M&egrave;o May Mắn với tạo h&igrave;nh hết sức đ&aacute;ng y&ecirc;u. Trong năm Qu&yacute; M&atilde;o, c&ograve;n điều g&igrave; hấp dẫn v&agrave; &ldquo;trendy&rdquo; hơn một chiếc ly mang sắc đỏ, v&agrave;ng rực rỡ c&ugrave;ng h&igrave;nh ảnh ch&uacute; m&egrave;o đội mascot l&acirc;n - biểu tượng của sự ph&aacute;t đạt, điềm l&agrave;nh. Đ&uacute;ng chuẩn vừa nh&igrave;n đ&atilde; y&ecirc;u, ly M&egrave;o May Mắn của The Coffee House nối tiếp &ldquo;người tiền nhiệm&rdquo; - chiếc ly đổi m&agrave;u &ldquo;g&acirc;y b&atilde;o&rdquo; m&ugrave;a Noel vừa qua, tiếp tục khiến giới trẻ nhiệt t&igrave;nh săn l&ugrave;ng v&agrave; check in lia lịa.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/t9tMQF0P2Ygg7UG-I_HS423kb_Frf-TubVuXyrlk4Dz40HS-OXmO4hxwa7k__IXokZ4AuzBy-0DyhuBv9BErNu5E0Uqn43_Exp-IqMHtE9fMAJbFjaEejeX4zGUmNBeUbi6W4fHtzi4wINrwMsQPj4jyL-hU-8fYjHKYu88hO4ria5-UkOHMfaekOsOZWw\" style=\"height:401px; width:602px\" /></p>\r\n\r\n<p><em>Ly M&egrave;o May Mắn trở th&agrave;nh phụ kiện độc đ&aacute;o cho c&aacute;c t&iacute;n đồ m&ecirc; chụp ảnh</em></p>\r\n\r\n<p>Ly M&egrave;o May Mắn c&ograve;n được sản xuất từ nhựa PP5, c&oacute; thể t&aacute;i sử dụng nhiều lần, đựng được nước từ -10 độ C đến 120 độ C. Muốn sở hữu chiếc ly của năm 2023 cũng kh&ocirc;ng hề kh&oacute; khăn, chỉ cần mua ngay thức uống bất kỳ trong BST Cầu To&agrave;n K&egrave;o Thơm. Đ&acirc;y cũng l&agrave; một m&oacute;n qu&agrave; &yacute; nghĩa cho bạn b&egrave;, người th&acirc;n, được The Coffee House b&aacute;n ri&ecirc;ng với gi&aacute; 49.000 đồng/ 1 ly hoặc 39.000 đồng/1 ly khi mua 2 ly M&egrave;o May Mắn trở l&ecirc;n.</p>\r\n\r\n<p>May mắn, sung t&uacute;c cả năm lại đong đầy &yacute; nghĩa, Cầu To&agrave;n K&egrave;o Thơm c&ugrave;ng ly M&egrave;o May Mắn ch&iacute;nh l&agrave; &ldquo;k&egrave;o thơm&rdquo; trọn vẹn d&agrave;nh cho tất cả mọi người. Từ h&ocirc;m nay, h&atilde;y &ldquo;l&ecirc;n k&egrave;o&rdquo; gh&eacute; ngay The Coffee House gần nhất để thưởng thức hương vị Tết vừa truyền thống, vừa hiện đại n&agrave;y.&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-5px; position:absolute; top:3315.44px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>','bo-suu-tap-cau-toan-keo-thom-via-may-man-khong-the-bo-lo-tet-nay','2023-12-23 04:39:21.494835','2023-12-23 04:39:21.494835');
INSERT INTO news_tintuc VALUES (8,'10 LỢI ÍCH KHÔNG NGỜ CỦA TRÀ HOA HIBISCUS','uploads/capture_7365c7af657c4120a8041474753cad55_grande.webp','Teaholic','<p><strong>Với rất nhiều lợi &iacute;ch vượt trội, tr&agrave; hoa Hibiscus được nhiều chị em ưu ti&ecirc;n chọn lựa để tăng cường sức khỏe, cải thiện sắc đẹp v&agrave; gi&uacute;p tinh thần th&ecirc;m hứng khởi.</strong></p>\r\n\r\n<p>Những năm gần đ&acirc;y, người ti&ecirc;u d&ugrave;ng Việt quan t&acirc;m nhiều hơn đến c&aacute;c sản phẩm c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n, nhất l&agrave; thức uống từ thảo mộc tốt cho sức khỏe. Trong đ&oacute;, tr&agrave; hoa Hibiscus nổi l&ecirc;n như th&agrave;nh phần quen thuộc trong rất nhiều c&aacute;c loại thức uống. Loại hoa n&agrave;y c&oacute; c&ocirc;ng dụng g&igrave; m&agrave; lại được ưa chuộng đến vậy?</p>\r\n\r\n<h3><strong>Bổ sung vitamin C, tăng cường miễn dịch</strong></h3>\r\n\r\n<p>Hibiscus được biết đến l&agrave; c&oacute; h&agrave;m lượng lớn vitamin (A, C, D, E&hellip;) v&agrave; kho&aacute;ng chất dồi d&agrave;o. Vậy n&ecirc;n v&agrave;o những ng&agrave;y thời tiết oi bức, thưởng thức một ly nước chiết xuất từ hoa Hibiscus sẽ gi&uacute;p giải nhiệt, thanh m&aacute;t cơ thể, cảm thấy tươi mới v&agrave; giảm đi những căng thẳng, mệt mỏi. Đặc biệt, nguồn vitamin C cao trong tr&agrave; Atiso đỏ (t&ecirc;n gọi kh&aacute;c của Hibiscus) gi&uacute;p bạn tăng cường sức đề kh&aacute;ng, bảo vệ hệ miễn dịch, n&acirc;ng cao sức khỏe trong tiết trời m&ugrave;a h&egrave; nắng gắt, n&oacute;ng nực.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/pr_06_bbeb9c0f3b7a4571a79c6000ccc90513_grande.jpg\" /></p>\r\n\r\n<p><em>Sở hữu nhiều c&ocirc;ng dụng tốt cho sức khỏe, hoa Hibiscus l&agrave; th&agrave;nh phần được ưa chuộng trong c&aacute;c loại tr&agrave;</em></p>\r\n\r\n<h3><strong>Trẻ ho&aacute; cơ thể, cho l&agrave;n da s&aacute;ng mịn&nbsp;</strong></h3>\r\n\r\n<p>Hibiscus gi&agrave;u c&aacute;c chất chống oxy h&oacute;a, nhờ đ&oacute; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da. Đặc biệt, Hibiscus chứa Flavonoid - một loại chất chống oxy h&oacute;a rất hiếm, gi&uacute;p cơ thể trẻ khỏe đẹp hơn. Kết hợp với đ&oacute;, nguồn vitamin C trong tr&agrave; hoa Hibiscus sẽ gi&uacute;p qu&aacute; tr&igrave;nh tổng hợp collagen thuận lợi, mang lại l&agrave;n da mịn m&agrave;ng, s&aacute;ng khỏe. Với c&ocirc;ng dụng tuyệt vời n&agrave;y, thức uống chiết xuất từ tr&agrave; hoa n&agrave;y sẽ l&agrave; lựa chọn l&yacute; tưởng của hội chị em muốn sở hữu thần th&aacute;i rạng ngời, tươi trẻ mỗi ng&agrave;y.&nbsp;</p>\r\n\r\n<h3><strong>Giảm c&acirc;n hiệu quả, đẹp d&aacute;ng</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng cho l&agrave;n da, v&oacute;c d&aacute;ng của bạn cũng sẽ săn chắc, thon gọn hơn khi sử dụng những loại thức uống chiết xuất từ hoa Hibiscus. V&igrave; trong th&agrave;nh phần của tr&agrave; hoa n&agrave;y c&oacute; chứa chất k&iacute;ch th&iacute;ch cơ thể sản sinh amylase - một enzyme gi&uacute;p ph&acirc;n hủy tinh bột đường, tr&aacute;nh t&iacute;ch tụ calo thừa trong cơ thể. Thưởng thức một ly tr&agrave; hoa Hibiscus sau bữa ăn sẽ đẩy nhanh qu&aacute; tr&igrave;nh trao đổi chất, đốt ch&aacute;y lượng chất b&eacute;o, giảm hấp thụ carbohydrate. Qua đ&oacute; hỗ trợ giảm c&acirc;n một c&aacute;ch hiệu quả v&agrave; an to&agrave;n.</p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/symu-w60Ze2bKgw3WULUH22bBoRPGOwA2AAf6epq7v2IpbFTkmIyKosYbnw7j9wG0sX_eqywjhZo658lwaQRjDPC8UH7UOna5UOCxcHAKjlr0Lmuo7R6aaC_ocwbn2iA1obx26M\" style=\"height:552px; width:367px\" /></strong></p>\r\n\r\n<p><em>Tr&agrave; hoa Hibiscus gi&uacute;p giảm c&acirc;n, thon d&aacute;ng, đẹp da</em></p>\r\n\r\n<h3><strong>Tốt cho hệ ti&ecirc;u ho&aacute;</strong></h3>\r\n\r\n<p>L&agrave; nguồn cung cấp phong ph&uacute; c&aacute;c vitamin, folate, magie, sắt, photpho, kali, kẽm, natri,&hellip; tr&agrave; hoa Hibiscus c&oacute; khả năng cải thiện sức khỏe to&agrave;n diện v&ocirc; c&ugrave;ng hiệu quả. Mỗi ng&agrave;y một ly tr&agrave; hoa Hibiscus sẽ gi&uacute;p bạn tăng cường chức năng hệ ti&ecirc;u h&oacute;a, nhuận tr&agrave;ng, lợi tiểu, hỗ trợ điều trị t&igrave;nh trạng đầy hơi, kh&oacute; ti&ecirc;u, chống t&aacute;o b&oacute;n&hellip;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/capture_7365c7af657c4120a8041474753cad55_grande.jpg\" /></p>\r\n\r\n<p><em>Tại The Coffee House, bạn c&oacute; đến 4&nbsp;hương vị để lựa chọn khi muốn uống tr&agrave; hoa Hibiscus&nbsp;</em></p>\r\n\r\n<h3><strong>Tăng cường chức năng gan&nbsp;</strong></h3>\r\n\r\n<p>T&iacute;nh chất chống oxy h&oacute;a của tr&agrave; hoa Hibiscus l&agrave;m trung h&ograve;a c&aacute;c gốc tự do c&oacute; trong m&ocirc; v&agrave; tế b&agrave;o của cơ thể. Ngo&agrave;i ra, với khả năng thanh nhiệt, giải độc, loại tr&agrave; hoa n&agrave;y c&ograve;n gi&uacute;p tăng cường chức năng gan, hạn chế v&agrave; tr&aacute;nh được c&aacute;c bệnh như xơ gan, gan nhiễm mỡ hay ung thư gan...</p>\r\n\r\n<h3><strong>Giảm huyết &aacute;p</strong></h3>\r\n\r\n<p>Khả năng l&agrave;m giảm huyết &aacute;p l&agrave; một trong những t&aacute;c dụng tuyệt vời của Hibiscus khiến loại tr&agrave; thảo mộc n&agrave;y được nhiều người ưa chuộng. Theo một nghi&ecirc;n cứu tại Boston - Hoa Kỳ, việc uống tr&agrave; Hibiscus mỗi ng&agrave;y gi&uacute;p hạ huyết &aacute;p v&agrave; tăng cường sức khỏe tim mạch. Vậy n&ecirc;n, đối với những người c&oacute; nguy cơ cao huyết &aacute;p hoặc bị cao huyết &aacute;p nhẹ c&oacute; thể an t&acirc;m sử dụng thức uống từ loại tr&agrave; hoa đặc biệt n&agrave;y.</p>\r\n\r\n<h3><strong>Giảm cholesterol v&agrave; mỡ trong m&aacute;u</strong></h3>\r\n\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng uống tr&agrave; Hibiscus l&agrave;m giảm cholesterol LDL xấu v&agrave; tăng lượng cholesterol HDL tốt cho cơ thể. Lượng cholesterol trong cơ thể được c&acirc;n bằng v&agrave; c&aacute;c th&agrave;nh mạch được bảo vệ tốt hơn. Đồng thời, nhờ khả năng giảm cholesterol xấu sẽ c&oacute; t&aacute;c dụng hạ mỡ m&aacute;u. Để những t&aacute;c dụng n&agrave;y được thể hiện một c&aacute;ch r&otilde; rệt, bạn cần sử dụng sản phẩm tr&agrave; Hibiscus thường xuy&ecirc;n.</p>\r\n\r\n<h3><strong>Ngăn ngừa xơ vữa động mạch v&agrave; tai biến&nbsp;</strong></h3>\r\n\r\n<p>Chất Flavonoid trong tr&agrave; Atiso đỏ c&ograve;n c&oacute; khả năng tạo phức với c&aacute;c ion kim loại n&ecirc;n c&oacute; t&aacute;c dụng như những chất x&uacute;c t&aacute;c ngăn cản c&aacute;c phản ứng oxy ho&aacute;. Do đ&oacute;, uống tr&agrave; hoa Hibiscus sẽ hỗ trợ ngăn ngừa xơ vữa động mạch, tai biến, tổn thương do bức xạ&hellip;</p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/1uwohumOs0Ci22QNntZ5frf3LVu63DDvOKg7P-e0TxEDB2lIOj6jZEnA5uYlQ-PYFg-5iNNL8N2jmnTJeexjT-zTZ9xm0d__1F_8kgtGX04ZvSS7LKB7MxuF4Unxti18YQKBuN4\" style=\"height:624px; width:624px\" /></strong></p>\r\n\r\n<p><em>Đặc biệt trong phi&ecirc;n bản Hi-Tea Healthy: Nữ ho&agrave;ng Beauty c&ograve;n c&oacute; th&ecirc;m topping nha đam ngon ngất ng&acirc;y&nbsp;</em></p>\r\n\r\n<h3><strong>Giảm khả năng mắc bệnh tim mạch, đột quỵ&nbsp;</strong></h3>\r\n\r\n<p>H&agrave;m lượng chất chống oxy trong tr&agrave; Hibiscus c&oacute; t&aacute;c dụng khống chế h&agrave;m lượng cholesterol trong m&aacute;u, ổn định c&aacute;c chỉ số huyết &aacute;p đồng thời giảm thiểu nguy cơ mắc c&aacute;c bệnh về tim mạch, chống co thắt hay gi&atilde;n cơ trơn, đột quỵ&hellip;&nbsp;</p>\r\n\r\n<h3><strong>Ức chế v&agrave; ngăn ngừa ung thư</strong></h3>\r\n\r\n<p>Đặc biệt, những căn bệnh ung thư nguy hiểm cũng sẽ được hạn chế khi bạn thường xuy&ecirc;n sử dụng tr&agrave; Hibiscus. Qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh khối u ung thư sẽ được ngăn chặn, bảo vệ cơ thể của bạn lu&ocirc;n khỏe mạnh v&agrave; đầy năng lượng.&nbsp;</p>\r\n\r\n<p>Với v&ocirc; v&agrave;n lợi &iacute;ch tuyệt vời tốt cho sức khỏe v&agrave; cả l&agrave;n da, Hibiscus l&agrave; loại tr&agrave; hoa được ưa chuộng sử dụng trong những thức uống. Đặc biệt l&agrave; BST Hi-Tea Healthy của The Coffee House. Được chiết xuất từ 100% hoa Hibiscus tự nhi&ecirc;n, kết hợp c&ugrave;ng nhiều hương vị thơm ngon, lạ miệng, topping độc đ&aacute;o, BST Hi-Tea Healthy l&agrave; lựa chọn l&yacute; tưởng trong h&egrave; n&agrave;y, nhất l&agrave; d&agrave;nh cho ph&aacute;i đẹp. Sức h&uacute;t của collection thức uống đậm chất healthy n&agrave;y c&agrave;ng th&ecirc;m mạnh mẽ khi mới đ&acirc;y, The Coffee House đ&atilde; bổ sung th&ecirc;m những hương vị mới với topping nha đam tươi m&aacute;t gi&ograve;n sần sật, hỗ trợ cho l&agrave;n da th&ecirc;m căng tr&agrave;n sức sống.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn ảnh:</strong>&nbsp;<em>The Coffee House, Shutterstock</em></p>','10-loi-ich-khong-ngo-cua-tra-hoa-hibiscus','2023-12-23 04:40:24.537214','2023-12-23 04:40:24.537214');
INSERT INTO news_tintuc VALUES (9,'BẮT GẶP SÀI GÒN XƯA TRONG MÓN UỐNG HIỆN ĐẠI CỦA GIỚI TRẺ','uploads/pasted_image_0.png','Coffeeholic','<p><strong>Dẫu qua bao nhi&ecirc;u lớp s&oacute;ng thời gian, người ta vẫn c&oacute; thể t&igrave;m lại những dấu ấn thăng trầm của một S&agrave;i G&ograve;n xưa cũ. Tr&ecirc;n những g&oacute;c phố, trong c&aacute;c bức ảnh, trong v&ocirc; số t&aacute;c phẩm văn chương... v&agrave; dĩ nhi&ecirc;n trong cả thi&ecirc;n đường ẩm thực phong ph&uacute;. M&oacute;n ăn đường phố S&agrave;i G&ograve;n nức tiếng qua bao nhi&ecirc;u thế hệ, trong đ&oacute; c&oacute; một m&oacute;n tưởng b&igrave;nh dị nhưng lại l&agrave; &ldquo;kho b&aacute;u&rdquo; của tuổi thơ, v&agrave; l&agrave; cảm hứng cho c&aacute;c t&iacute;n đồ ăn uống.</strong></p>\r\n\r\n<p><strong>Thức qu&agrave; vặt bất hủ của tuổi thơ&nbsp;</strong></p>\r\n\r\n<p>Trong năm gi&acirc;y, bạn c&oacute; thể liệt k&ecirc; bao nhi&ecirc;u m&oacute;n ăn gắn liền với tuổi thơ của m&igrave;nh? Bắt đầu nh&eacute;!&nbsp;</p>\r\n\r\n<p>Chắc chắn ph&eacute;p thử n&agrave;y đ&atilde; cho bạn năm gi&acirc;y qu&yacute; b&aacute;u được sống lại k&yacute; ức thơ ấu: từ những m&oacute;n chỉ t&igrave;m thấy tr&ecirc;n m&acirc;m cơm mẹ nấu, cho đến v&ocirc; v&agrave;n thức qu&agrave; vặt trong tiếng leng keng xe đẩy, tiếng rao lảnh l&oacute;t của những g&aacute;nh h&agrave;ng rong...</p>\r\n\r\n<p>C&aacute;c đ&ocirc; thị lớn tại Việt Nam ng&agrave;y nay kh&ocirc;ng thiếu những nh&agrave; h&agrave;ng xa hoa sang trọng, đủ phong c&aacute;ch ẩm thực từ Đ&ocirc;ng sang T&acirc;y, nhưng dấu ấn của những m&oacute;n ăn vặt tr&ecirc;n g&oacute;c phố &ldquo;vang b&oacute;ng một thời&rdquo; l&agrave; kh&ocirc;ng thể x&oacute;a bỏ. V&agrave; S&agrave;i G&ograve;n l&agrave; một minh chứng như thế.&nbsp;&nbsp;</p>\r\n\r\n<p>Người ta đến S&agrave;i G&ograve;n phần nhiều v&igrave; muốn thưởng thức thi&ecirc;n đường ẩm thực đường phố nơi đ&acirc;y. Từ những g&aacute;nh t&agrave;u hủ n&oacute;ng, xe b&ograve; b&iacute;a, b&aacute;nh m&igrave; thịt, hay những ch&eacute;n ph&aacute; lấu vỉa h&egrave;... đ&acirc;u đ&acirc;u cũng đ&ocirc;ng nghịt người mua v&agrave; tấm tắc khen ngợi.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh7-us.googleusercontent.com/0I8c8IgPCF_4ZNhNj-IKhdkShKbMDXnD4rqd9zWzLuWqHhd9tfHERupxX-BmxJXWXcGAxa3ZzWpAgoNG3YTxPmK6w3E5LnyTPHBON1lFdrfvEOnTjmoRibKBW0zdxgt_dpD97rImu8IV3CCSqqLVRpM\" style=\"height:785px; width:624px\" /></p>\r\n\r\n<p><em>Ẩm thực đường phố S&agrave;i G&ograve;n gắn liền với k&yacute; ức bao thế hệ. Một trong số đ&oacute; l&agrave; m&oacute;n b&aacute;nh flan c&agrave; ph&ecirc; đ&aacute; b&agrave;o giải kh&aacute;t những ng&agrave;y h&egrave; nắng n&oacute;ng. (Nguồn ảnh: Internet)</em></p>\r\n\r\n<p>Trong số những &ldquo;m&oacute;n ruột&rdquo; nhất định phải thử ấy, b&aacute;nh flan c&agrave; ph&ecirc; đ&aacute; b&agrave;o được xem l&agrave; hương vị ngọt ng&agrave;o bất hủ của nhiều thế hệ. B&aacute;nh flan mềm mịn, ăn c&ugrave;ng đ&aacute; được b&agrave;o nhuyễn, rưới th&ecirc;m c&agrave; ph&ecirc; thơm đậm đ&agrave; l&agrave; thức qu&agrave; vặt dễ ăn, dễ m&ecirc;, cũng dễ bắt gặp tr&ecirc;n mọi con phố. D&ugrave; ảnh hưởng từ m&oacute;n tr&aacute;ng miệng Cr&egrave;me Brul&eacute;e lừng danh của Ph&aacute;p, nhưng người S&agrave;i G&ograve;n xưa đ&atilde; nhanh ch&oacute;ng biến b&aacute;nh flan th&agrave;nh &ldquo;đặc sản&rdquo; của ri&ecirc;ng m&igrave;nh. Nếu c&oacute; dịp xem lại những thước phim cũ về S&agrave;i G&ograve;n, người ta sẽ thấy long lanh giữa trưa h&egrave; n&oacute;ng nực l&agrave; &aacute;nh mắt hồ hởi của mấy đứa trẻ con đ&oacute;n lấy đĩa b&aacute;nh flan c&agrave; ph&ecirc; v&agrave; thưởng thức trong niềm vui sướng. Một m&oacute;n ăn b&igrave;nh dị, nhưng l&agrave; cả một bầu trời lấp l&aacute;nh niềm vui sướng hồn nhi&ecirc;n.</p>\r\n\r\n<p><strong>T&igrave;m lại dấu ấn ẩm thực tuổi thơ trong thức uống hiện đại</strong></p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh t&igrave;m kiếm điểm nhấn mới lạ cho menu c&agrave; ph&ecirc; c&oacute; đến 20 m&oacute;n, The Coffee House đ&atilde; lấy cảm hứng từ niềm hạnh ph&uacute;c trẻ thơ ấy để s&aacute;ng tạo ra thức uống c&oacute; kết nối với văn ho&aacute; của S&agrave;i G&ograve;n, đồng thời cũng rất &ldquo;hợp trend&rdquo;: Phin Sữa Tươi B&aacute;nh Flan.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh7-us.googleusercontent.com/7oBftuDSiAZHIOSHM4fiAe1r0uSZxLEc1NgZ3UvUio4dF69M3MCMKsyutSWC7SbQexVcRdBgCWbgyG2XRZJSKidYnAcFK7g66f8AgS_YPwF-3oXf50YXDrwFtcnVWWGUvVQ5v9oHzp00IBRChYLKMPg\" style=\"height:684px; width:624px\" /></p>\r\n\r\n<p><em>Phin Sữa Tươi B&aacute;nh Flan - thức uống mới mang nhiều kỷ niệm tuổi thơ v&agrave; k&yacute; ức về S&agrave;i G&ograve;n xa xưa.</em></p>\r\n\r\n<p>Vẫn l&agrave; hương vị c&agrave; ph&ecirc; Robusta hảo hạng, được pha phin đậm đ&agrave; c&ugrave;ng caramel thơm lừng, thức uống mới của The Coffee House kết hợp với sữa tươi thay v&igrave; sữa đặc th&ocirc;ng thường để tr&aacute;nh ngọt ngấy. Điểm nhấn hấp dẫn của m&oacute;n n&agrave;y ch&iacute;nh l&agrave; topping b&aacute;nh flan mềm mịn, n&uacute;ng n&iacute;nh. Vừa l&agrave; thức uống quen thuộc, vừa l&agrave; m&oacute;n ăn vặt kho&aacute;i khẩu, sự kết hợp hai thứ tưởng chừng quen thuộc lại mang đến hương vị b&ugrave;ng nổ bất ngờ. The Coffee House đ&atilde; tạo n&ecirc;n m&oacute;n uống mới ph&ugrave; hợp với sở th&iacute;ch đương đại, ch&uacute; trọng đến sự đậm đ&agrave; cần c&oacute; của thức uống hằng ng&agrave;y, nhưng cũng kh&ocirc;ng qu&ecirc;n nu&ocirc;ng chiều vị gi&aacute;c.</p>\r\n\r\n<p><img src=\"https://lh7-us.googleusercontent.com/Pta_Up9Hie8QEiMAVfh0Cn0A2GeYPigk5TFXpW8C_GuIg2rHu2OjcZV4DZcHJd71Rrz0lt70ST5bxZPkbEvBc4klYhnpSI37qV7qqVApVE20tC6JFtUbxYS4oc00UbhTK85hVy0ZztE3I7C5tSN4s6I\" style=\"height:776px; width:624px\" /></p>\r\n\r\n<p><em>Thưởng thức hương vị ngọt ng&agrave;o của tuổi thơ trong m&oacute;n uống mới mẻ từ The Coffee House.</em>&nbsp;</p>\r\n\r\n<p>Mỗi ng&agrave;y, ch&uacute;ng ta c&oacute; thể dung nạp khoảng 300 mg caffeine, tương đương 2 - 3 t&aacute;ch c&agrave; ph&ecirc;. V&igrave; vậy, Phin Sữa Tươi B&aacute;nh Flan kh&ocirc;ng chỉ l&agrave; nguồn năng lượng tỉnh t&aacute;o buổi s&aacute;ng, m&agrave; c&ograve;n l&agrave; lựa chọn ho&agrave;n hảo cho ly c&agrave; ph&ecirc; thứ hai trong ng&agrave;y. Kh&ocirc;ng đơn thuần chỉ l&agrave; một m&oacute;n uống đậm đắng vồ v&atilde;, The Coffee House mong muốn kh&aacute;ch h&agrave;ng được thưởng thức một ly c&agrave; ph&ecirc; ngon đ&uacute;ng nghĩa: tỉnh t&aacute;o, đậm đ&agrave;, ngọt dịu h&agrave;i h&ograve;a, th&ecirc;m ch&uacute;t y&ecirc;u chiều, tận hưởng với topping hấp dẫn.</p>\r\n\r\n<p>V&agrave; đặc biệt nhất, chỉ cần cắn một miếng flan, mềm tan trong miệng, bao nhi&ecirc;u khung trời k&yacute; ức bỗng nhi&ecirc;n &ugrave;a về. Thời thơ ấu chạy t&igrave;m những h&agrave;ng b&aacute;nh flan vỉa h&egrave; để giải kh&aacute;t giữa trời n&oacute;ng. Hay tuổi trẻ c&ugrave;ng đ&aacute;m bạn ngồi vỉa h&egrave; chia nhau từng đĩa b&aacute;nh nhỏ thơm m&ugrave;i c&agrave; ph&ecirc;. B&aacute;nh flan c&agrave; ph&ecirc; đ&aacute; b&agrave;o g&oacute;i gh&eacute;m bao nhi&ecirc;u c&acirc;u chuyện, cũng như hiển hiện d&aacute;ng dấp của một S&agrave;i G&ograve;n qua bao thăng trầm. V&agrave; nay, Phin Sữa Tươi B&aacute;nh Flan từ The Coffee House dường như l&agrave; sự &ldquo;tiếp nối&quot; văn h&oacute;a ẩm thực ấy. Từ những cuộc tụm năm tụm ba vỉa h&egrave;, đến những cuộc qu&acirc;y quần trong kh&ocirc;ng gian ấm c&uacute;ng, đẹp đẽ. Người trẻ ng&agrave;y nay lu&ocirc;n sẵn s&agrave;ng đi khắp nơi, đến văn ph&ograve;ng, dạo phố, đạp xe, rong ruổi khắp mọi ng&oacute;c ng&aacute;ch th&agrave;nh phố,... chỉ cần tr&ecirc;n tay c&oacute; một ly c&agrave; ph&ecirc; đ&uacute;ng gu, tiện lợi. M&oacute;n uống mới từ Nh&agrave;, cũng v&igrave; thế, đang c&ugrave;ng thế hệ năng động ng&agrave;y nay, ngắm nh&igrave;n S&agrave;i G&ograve;n từng ng&agrave;y ph&aacute;t triển.&nbsp;</p>\r\n\r\n<p><strong>Kh&aacute;m ph&aacute; nhịp sống mới qua thức uống ph&aacute; c&aacute;ch, s&aacute;ng tạo&nbsp;</strong></p>\r\n\r\n<p>Phin Sữa Tươi B&aacute;nh Flan c&ugrave;ng Tr&agrave; Xanh Espresso Marble l&agrave; Bộ đ&ocirc;i C&agrave; Ph&ecirc; Highlight mới vừa được The Coffee House tr&igrave;nh l&agrave;ng. Với sứ mệnh l&agrave;m những người y&ecirc;u (hoặc su&yacute;t y&ecirc;u) c&agrave; ph&ecirc; phải&hellip; ồ l&ecirc;n, sản phẩm mới từ Nh&agrave; C&agrave; Ph&ecirc; mang đến hương vị ph&aacute; c&aacute;ch ai cũng n&ecirc;n thử. Bởi, vẫn từ những hạt Robusta, Arabica quen thuộc, barista Nh&agrave; đ&atilde; khiến thức uống trở l&ecirc;n lạ miệng v&agrave; th&uacute; vị hơn nhiều lần.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh Phin Sữa Tươi B&aacute;nh Flan, nếu ưa th&iacute;ch cảm gi&aacute;c tươi, tỉnh, &ecirc;m, mượt, đừng bỏ qua Tr&agrave; Xanh Espresso Marble. Đ&acirc;y l&agrave; sự kết hợp bất ngờ giữa Tr&agrave; Xanh T&acirc;y Bắc được y&ecirc;u th&iacute;ch suốt thời gian qua tại Nh&agrave; v&agrave; c&agrave; ph&ecirc; Arabica Đ&agrave; Lạt thơm ngon hảo hạng.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh7-us.googleusercontent.com/_eUl-7eYQlwGlm-xejp_4H4k5rrf8jwL_G7Df6Numz0jAzi17axvE1eld9ILTGQYmxP8bT34MjnLRYIkyxNhKa0vN4j3GxSgYHmByBKInKU3dCeZpd8cqHHU0ACRN8Zum7FoeOK_9geDB2XYBnGjrM0\" style=\"height:837px; width:624px\" /></p>\r\n\r\n<p><em>C&ugrave;ng với Phin Sữa Tươi B&aacute;nh Flan, thức uống Tr&agrave; Xanh Espresso Marble l&agrave; sự s&aacute;ng tạo th&uacute; vị The Coffee House gửi đến kh&aacute;ch h&agrave;ng.</em></p>\r\n\r\n<p>Tr&agrave; xanh T&acirc;y Bắc m&agrave; The Coffee House sử dụng l&agrave; bột l&aacute; tr&agrave; xanh nghiền mịn để giữ được m&agrave;u xanh đẹp mắt. Thức uống mới với ngoại h&igrave;nh ph&acirc;n tầng, xen lẫn sắc xanh v&agrave; trắng khiến ta li&ecirc;n tưởng tới những thửa ruộng bậc thang m&ugrave;a l&uacute;a c&ograve;n xanh của thi&ecirc;n nhi&ecirc;n T&acirc;y Bắc. Khi thưởng thức c&ugrave;ng c&agrave; ph&ecirc; Arabica Đ&agrave; Lạt, h&igrave;nh ảnh n&uacute;i đồi trập tr&ugrave;ng ẩn hiện trong sương m&acirc;y như đang r&otilde; r&agrave;ng trước mắt. Sự tinh t&uacute;y được chắt chiu từ hai v&ugrave;ng đất tuyệt đẹp của đất nước g&oacute;i trọn trong một ly c&agrave; ph&ecirc;, kh&ocirc;ng chỉ mang đến sự phấn chấn hứng khởi mỗi ng&agrave;y, m&agrave; c&ograve;n l&agrave; ch&uacute;t tự h&agrave;o về nguồn n&ocirc;ng sản qu&yacute; gi&aacute; của Việt Nam.&nbsp;</p>\r\n\r\n<p><img src=\"https://lh7-us.googleusercontent.com/UrLBse5AqYeh7LIDQ2eZI7-1WUEJqg5ulPv6GpyE6VN7I9psj0S8taSNXQ8mTdEDKf_FCXUA32RGNotASWgqjXH-3bw_TojDdfAh5jOu93e-IdhyHSMiBsF9RYJNdJbzoYf7ceZIWBUWwCkg-AzmzTc\" style=\"height:412px; width:624px\" /></p>\r\n\r\n<p><em>&nbsp;H&ocirc;m nay, h&atilde;y highlight cho cuộc sống từ những việc đơn giản nhất, khi bạn đứng trước quầy c&agrave; ph&ecirc; v&agrave; mạnh dạn chọn một đồ uống mới mẻ, ph&aacute; c&aacute;ch.</em></p>\r\n\r\n<p>Bộ đ&ocirc;i C&agrave; Ph&ecirc; Highlight ch&iacute;nh l&agrave; điểm nhấn cho mỗi ng&agrave;y đều tươi mới, th&uacute; vị. B&ecirc;n cạnh thức uống quen thuộc, h&ocirc;m nay h&atilde;y mạnh dạn t&ocirc; điểm cho ng&agrave;y th&ecirc;m rạng rỡ, cho m&igrave;nh th&ecirc;m vui tươi bằng một ly Tr&agrave; Xanh Espresso Marble - thả m&igrave;nh l&ecirc;n T&acirc;y Bắc,&nbsp;hoặc trở về với những th&aacute;ng ng&agrave;y hồn nhi&ecirc;n với Phin Sữa Tươi B&aacute;nh Flan bạn nh&eacute;!</p>','bat-gap-sai-gon-xua-trong-mon-uong-hien-ai-cua-gioi-tre','2023-12-23 04:41:31.420792','2023-12-23 04:41:31.420792');
INSERT INTO news_tintuc VALUES (10,'SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI','uploads/photo-2-16733167329771189768547.png','Coffeeholic','<h1>SIGNATURE - BIỂU TƯỢNG VĂN HO&Aacute; C&Agrave; PH&Ecirc; CỦA THE COFFEE HOUSE Đ&Atilde; QUAY TRỞ LẠI</h1>\r\n\r\n<p><strong>Mới đ&acirc;y, c&aacute;c &quot;t&iacute;n đồ&quot; c&agrave; ph&ecirc; đang b&agrave;n t&aacute;n x&ocirc;n xao về SIGNATURE - Biểu tượng văn h&oacute;a c&agrave; ph&ecirc; của The Coffee House đ&atilde; quay trở lại.</strong></p>\r\n\r\n<h2><strong>Một lời hẹn l&agrave;m bao người xao xuyến</strong></h2>\r\n\r\n<p>Vừa qua, Fanpage Nh&agrave; đ&atilde; h&eacute; mở những th&ocirc;ng tin đầu ti&ecirc;n về &quot;SIGNATURE by The Coffee House&quot; k&egrave;m lời hẹn &quot;H&ocirc;m nay bạn c&oacute; hẹn chưa? M&igrave;nh c&agrave; ph&ecirc; nh&eacute;!&quot;.</p>\r\n\r\n<p>Theo đ&oacute;, SIGNATURE by The Coffee House sẽ gửi đến c&aacute;c th&agrave;nh vi&ecirc;n của Nh&agrave; những Cuộc hẹn tr&ograve;n đầy với 3 trải nghiệm: T&aacute;ch c&agrave; ph&ecirc; đặc sản với những mẻ rang mới mỗi ng&agrave;y, chiều l&ograve;ng mọi t&acirc;m hồn y&ecirc;u c&agrave; ph&ecirc; hay những ai đang t&ograve; m&ograve; về loại tr&aacute;i c&acirc;y đặc biệt n&agrave;y; M&oacute;n ăn đa bản sắc, mang phong vị giao thoa từ nhiều nơi cho cuộc hẹn d&agrave;i hơn, r&ocirc;m rả hơn; Một kh&ocirc;ng gian đầy cảm hứng, nơi hạt c&agrave; ph&ecirc; kể về h&agrave;nh tr&igrave;nh tuyệt vời của m&igrave;nh theo c&aacute;ch gần gũi nhất. Bạn sẽ c&oacute; cơ hội thưởng thức c&agrave; ph&ecirc; bằng đủ những gi&aacute;c quan - ngửi hương, lắng nghe, ngắm nh&igrave;n v&agrave; nếm vị.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_dsc2358_820aba0fa2c146578565ead25a3c05ec_grande.jpg\" /></p>\r\n\r\n<p><em>Sự trở lại của m&ocirc; h&igrave;nh Signature với c&aacute;i t&ecirc;n mới SIGNATURE by The Coffee House</em></p>\r\n\r\n<p>Kh&ocirc;ng gian rộng mở, được thiết kế như một xưởng rang c&agrave; ph&ecirc; nhưng vẫn tạo cảm gi&aacute;c th&acirc;n thuộc, gần gũi với nhiều c&acirc;y xanh v&agrave; hai t&ocirc;ng m&agrave;u cam n&acirc;u ấm &aacute;p v&agrave; trắng x&aacute;m tinh tế. Trong đ&oacute;, nổi bật nhất phải kể đến hệ thống c&aacute;c si l&ocirc; c&agrave; ph&ecirc; v&agrave; một m&aacute;y rang lớn đặt ở sảnh tầng 1, c&ugrave;ng hệ thống c&aacute;c ống đồng chứa c&agrave; ph&ecirc; rang, khu vực quầy bar trải nghiệm. Khoảng 1 giờ, qu&aacute;n sẽ rang 1 mẻ nhỏ, tạo n&ecirc;n tiếng c&agrave; ph&ecirc; chạy trong c&aacute;c ống đồng rất vui tai, như 1 bản nhạc.</p>\r\n\r\n<p><img alt=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-2-16733167329771189768547.png\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-2-16733167329771189768547.png\" /></p>\r\n\r\n<p><em>&quot;S&acirc;n khấu tr&igrave;nh diễn&quot; h&agrave;nh tr&igrave;nh của hạt c&agrave; ph&ecirc; từ lo rang, qua những ống đồng, tới m&aacute;y pha v&agrave; t&aacute;ch c&agrave; ph&ecirc; tại b&agrave;n.</em></p>\r\n\r\n<p>Kh&ocirc;ng chỉ được thưởng thức những ly c&agrave; ph&ecirc; đặc sản thơm ngon, đậm vị, đến với SIGNATURE by The Coffee House, bạn c&ograve;n c&oacute; thể thưởng thức nhiều m&oacute;n ăn mới lạ kết hợp &Aacute; - &Acirc;u, th&iacute;ch hợp cho mọi cuộn hẹn.</p>\r\n\r\n<p>Ngay khi vừa xuất hiện, SIGNATURE by The Coffee House đ&atilde; nhận được sự hưởng ứng, chia sẻ nhiệt t&igrave;nh của giới trẻ. B&ecirc;n dưới b&agrave;i đăng l&agrave; h&agrave;ng loạt những b&igrave;nh luận khen ngợi về kh&ocirc;ng gian cửa h&agrave;ng, thức uống, đồ ăn v&agrave; &quot;rủ r&ecirc;&quot; bạn b&egrave; tới kh&aacute;m ph&aacute; v&agrave; trải nghiệm.</p>\r\n\r\n<p><img alt=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-4-16733167320151863927482.png\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-4-16733167320151863927482.png\" /></p>\r\n\r\n<p>Bạn Lan Anh, một &quot;fan cứng&quot; của The Coffee House Signature Phạm Ngọc Thạch đ&atilde; tỏ ra rất h&agrave;o hứng khi nghe tin bạn cũ sắp quay lại: &quot;Lần đầu được trải nghiệm The Coffee House Signature từ mấy năm trước, m&igrave;nh đ&atilde; m&ecirc; như điếu đổ rồi. C&agrave; ph&ecirc; v&agrave; kh&ocirc;ng gian đều rất hợp gu m&igrave;nh. Chớm hay tin bạn cũ đ&atilde; quay trở lại tại Crescent Mall từ &quot;cạ cứng&quot; c&agrave; ph&ecirc;, ch&uacute;ng m&igrave;nh l&ecirc;n lịch gh&eacute; qua thăm liền, bạn vẫn ngon vậy m&agrave; c&ograve;n hấp dẫn hơn xưa nữa&quot;.</p>\r\n\r\n<p><img alt=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-3-16733167324971109841045.png\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-3-16733167324971109841045.png\" /></p>\r\n\r\n<h2><strong>The Coffee House Signature - Dấu ấn đặc trưng của Nh&agrave; c&agrave; ph&ecirc;</strong></h2>\r\n\r\n<p>V&agrave;o năm 2018, The Coffee House đ&atilde; ra mắt The Coffee House Signature lần đầu ti&ecirc;n, l&agrave; một địa chỉ c&agrave; ph&ecirc; &quot;sang &ndash; xịn &ndash; mịn &ndash; thơm&quot; nổi bật, từng khiến bạn m&ecirc; mẩn ngay từ khi ra mắt.</p>\r\n\r\n<p>The Coffee House Signature Phạm Ngọc Thạch từng l&agrave; một phi&ecirc;n bản chắt lọc những gi&aacute; trị đặc trưng nhất của Nh&agrave; c&agrave; ph&ecirc;. Những gi&aacute; trị ấy được kho&aacute;c l&ecirc;n m&igrave;nh một h&igrave;nh h&agrave;i mới bởi sự tận tụy, sự tỉ mỉ v&agrave; đam m&ecirc; của h&agrave;ng trăm con người l&agrave;m việc tại đ&acirc;y, với hy vọng để lại một dấu ấn n&agrave;o đ&oacute; từ những điều nhỏ nhặt nhất, bắt đầu từ những hạt c&agrave; ph&ecirc;.</p>\r\n\r\n<p>Sự chia tay The Coffee House Signature Phạm Ngọc Thạch khiến nhiều bạn kh&ocirc;ng khỏi tiếc nuối v&agrave; chờ mong ng&agrave;y &quot;t&aacute;i ngộ&quot;.</p>\r\n\r\n<p>Bạn Thu Phương, một cạ cứng của qu&aacute;n chia sẻ, tuy kh&ocirc;ng muốn tin v&agrave;o &quot;sự thực phũ ph&agrave;ng&quot; nhưng vẫn đ&agrave;nh chấp nhận v&agrave; mong ng&oacute;ng đến ng&agrave;y m&ocirc; h&igrave;nh n&agrave;y mở cửa trở lại. Phương chia sẻ: &quot;H&ocirc;m đ&oacute; được đứa bạn th&acirc;n gửi cho tin tr&ecirc;n b&aacute;o, m&igrave;nh c&ograve;n nghĩ tin l&aacute; cải th&ocirc;i. Qu&aacute;n to, đồ ngon vậy sao n&oacute;i đ&oacute;ng l&agrave; đ&oacute;ng được. Thế m&agrave; qu&aacute;n đ&oacute;ng thật. L&uacute;c ấy chỉ mong dịch bệnh qua đi th&igrave; qu&aacute;n sẽ mở cửa trở lại, m&igrave;nh sẽ l&agrave; những kh&aacute;ch h&agrave;ng đầu ti&ecirc;n đến để ch&uacute;c mừng th&ocirc;i ấy&quot;.</p>\r\n\r\n<p>Kh&ocirc;ng phụ sự chờ đợi của Lan Anh hay Thu Phương v&agrave; nhiều t&iacute;n đồ c&agrave; ph&ecirc; kh&aacute;c của Nh&agrave;, SIGNATURE by The Coffee House đ&atilde; t&aacute;i xuất với một m&ocirc; h&igrave;nh ho&agrave;n to&agrave;n mới đ&aacute;p ứng những nhu cầu mới, hứa hẹn mang đến những trải nghiệm mới mẻ cho cuộc hẹn của bạn th&ecirc;m tr&ograve;n đầy. Bạn đ&atilde; sẵn s&agrave;ng c&agrave; ph&ecirc; c&ugrave;ng SIGNATURE by The Coffee House rồi chứ? M&igrave;nh c&agrave; ph&ecirc; nh&eacute;!</p>','signature-bieu-tuong-van-hoa-ca-phe-cua-the-coffee-house-a-quay-tro-lai','2023-12-23 04:42:36.116152','2023-12-23 04:42:36.116152');
INSERT INTO news_tintuc VALUES (11,'CÁCH NHẬN BIẾT HƯƠNG VỊ CÀ PHÊ ROBUSTA NGUYÊN CHẤT DỄ DÀNG NHẤT','uploads/Screenshot_1.png','Coffeeholic','<h1>C&Aacute;CH NHẬN BIẾT HƯƠNG VỊ C&Agrave; PH&Ecirc; ROBUSTA NGUY&Ecirc;N CHẤT DỄ D&Agrave;NG NHẤT</h1>\r\n\r\n<p><strong>C&ugrave;ng Arabica, Robusta cũng l&agrave; loại c&agrave; ph&ecirc; nổi tiếng được sử dụng phổ biến ở Việt Nam v&agrave; nhiều nước kh&aacute;c tr&ecirc;n thế giới. Với nhiều đặc điểm&nbsp;ri&ecirc;ng, kh&ocirc;ng qu&aacute; kh&oacute; để c&oacute; thể nhận ra hương vị của loại c&agrave; ph&ecirc; trứ danh n&agrave;y.</strong></p>\r\n\r\n<p><strong>Đặc điểm c&agrave; ph&ecirc; Robusta&nbsp;</strong></p>\r\n\r\n<p>Về h&igrave;nh dạng, hạt c&agrave; ph&ecirc; Robusta c&oacute; h&igrave;nh tr&ograve;n, đường k&iacute;nh khoảng 10 &ndash; 13 mm. Hạt Robusta c&oacute; m&agrave;u n&acirc;u đậm v&agrave; h&agrave;m lượng caffeine từ 3 - 4%, trong khi đ&oacute; Arabica chỉ chiếm từ 1 - 2%.&nbsp;</p>\r\n\r\n<p>Về điều kiện trồng, c&agrave; ph&ecirc; Robusta sinh trưởng tốt trong v&ugrave;ng c&oacute; mưa nhiều v&agrave; nhiều &aacute;nh nắng mặt trời. Nhiệt độ th&iacute;ch hợp ở mức 24 - 29 độ C, ưa sống ở những v&ugrave;ng c&oacute; độ cao dưới 1000 m&eacute;t, phổ biến ở 850 &ndash; 900 m&eacute;t v&agrave; ở những v&ugrave;ng c&oacute; đất đỏ bazan m&agrave;u mỡ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_ca_phe_robusta_04_77eebbf64f264751945dd2db61050c4b_grande.jpg\" /></p>\r\n\r\n<p><em>Ở Việt Nam, Robusta c&ograve;n được gọi với c&aacute;i t&ecirc;n quen thuộc l&agrave; c&agrave; ph&ecirc; Vối</em></p>\r\n\r\n<p>Ở Việt Nam c&oacute; rất nhiều v&ugrave;ng ph&ugrave; hợp để trồng giống Robusta, đặc biệt l&agrave;&nbsp;Bu&ocirc;n Ma Thuột, Đắk Lắk, L&acirc;m Đồng, Gia Lai, Đắk N&ocirc;ng,&hellip; Đ&acirc;y l&agrave; những v&ugrave;ng đất mang đến hương vị c&agrave; ph&ecirc; Robusta nguy&ecirc;n chất ngon v&agrave; nổi tiếng. Tuy nhi&ecirc;n, do sự kh&aacute;c biệt về thổ nhưỡng m&agrave; hương vị Robusta ở c&aacute;c v&ugrave;ng cũng c&oacute; sự kh&aacute;c biệt tương đối. Những người s&agrave;nh c&agrave; ph&ecirc;, c&oacute; gu thưởng thức tinh tế sẽ dễ d&agrave;ng cảm nhận được sự kh&aacute;c biệt ấn tượng m&agrave; đầy th&uacute; vị n&agrave;y.&nbsp;</p>\r\n\r\n<p><strong>Hương vị c&agrave; ph&ecirc; Robusta nguy&ecirc;n chất&nbsp;</strong></p>\r\n\r\n<p>C&agrave; ph&ecirc; Robusta nguy&ecirc;n chất được l&ograve;ng nhiều người bởi vị đậm đ&agrave; v&agrave; m&ugrave;i thơm đặc trưng. Nh&igrave;n chung, Robusta nguy&ecirc;n chất thường c&oacute; vị ch&aacute;t v&agrave; đắng hơn nhiều so với Arabica.&nbsp;Một trong những nguy&ecirc;n nh&acirc;n dẫn đến t&iacute;nh chất n&agrave;y l&agrave; do Robusta&nbsp;thường được &aacute;p dụng phương ph&aacute;p chế biến kh&ocirc;.</p>\r\n\r\n<p>Ngo&agrave;i ra, hạt c&agrave; ph&ecirc; Robusta nguy&ecirc;n chất chứa nhiều h&agrave;m lượng Chlorogenic Acid (CGA). Tuy được gọi l&agrave; Acid nhưng Chlorogenic Acid kh&ocirc;ng đặc trưng bởi &ldquo;vị chua&rdquo; m&agrave; l&agrave; &ldquo;vị đắng&rdquo;. Trong qu&aacute; tr&igrave;nh rang hạt c&agrave; ph&ecirc;, CGA sẽ ph&acirc;n hủy để tạo th&agrave;nh&nbsp;axit caffeic&nbsp;v&agrave;&nbsp;axit quinic, những chất n&agrave;y khi kết hợp c&ugrave;ng caffeine sẽ tạo n&ecirc;n vị đắng đặc trưng thường thấy ở Robusta. Vậy n&ecirc;n d&ugrave; Robusta c&oacute; lượng axit gấp đ&ocirc;i Arabica nhưng thực sự n&oacute; kh&ocirc;ng hề chua, m&agrave; đắng hơn Arabica.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_ca_phe_robusta_03_f41cdb27feb44fe7bffb77ac03aefbad_grande.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với h&agrave;m lượng caffeine trung b&igrave;nh cao gấp đ&ocirc;i so với Arabica n&ecirc;n khi kết hợp hai loại c&agrave; ph&ecirc; n&agrave;y lại cho ra&nbsp;sản phẩm h&agrave;i h&ograve;a&nbsp;được nhiều người y&ecirc;u th&iacute;ch. V&igrave; vậy m&agrave; tr&ecirc;n thị trường nhiều loại c&agrave; ph&ecirc; &Yacute; (Espresso) lu&ocirc;n c&oacute; 10 - 15% c&agrave; ph&ecirc; Robusta để l&agrave;m dậy hương vị v&agrave; tạo lớp crema hấp dẫn hơn.</p>\r\n\r\n<p><strong>Chọn c&agrave; ph&ecirc; Robusta nguy&ecirc;n chất&nbsp;</strong></p>\r\n\r\n<p>T&ugrave;y theo sở th&iacute;ch ri&ecirc;ng của mỗi người, họ sẽ c&oacute; &ldquo;gu&rdquo; c&agrave; ph&ecirc; ri&ecirc;ng cho m&igrave;nh. Tuy nhi&ecirc;n, những loại c&agrave; ph&ecirc; nguy&ecirc;n chất, c&agrave; ph&ecirc; sạch kh&ocirc;ng pha trộn c&aacute;c loại tạp chất lu&ocirc;n l&agrave; ti&ecirc;u ch&iacute; lựa chọn h&agrave;ng đầu của những ai y&ecirc;u&nbsp;c&agrave; ph&ecirc;.&nbsp;</p>\r\n\r\n<p>Thấu hiểu sự đam m&ecirc; v&agrave; những cảm x&uacute;c kỳ diệu của c&aacute;c t&iacute;n đồ c&agrave; ph&ecirc; khi được nh&acirc;m nhi những t&aacute;ch c&agrave; ph&ecirc; nguy&ecirc;n chất, đậm vị, The Coffee House đ&atilde; cho ra đời&nbsp;c&agrave; ph&ecirc; Original 1. Sản phẩm c&oacute;&nbsp;100% th&agrave;nh phần l&agrave;&nbsp;c&agrave; ph&ecirc; Robusta Đắk Lắk, v&ugrave;ng trồng c&agrave; ph&ecirc; ngon nhất Việt Nam. Bằng c&aacute;ch &aacute;p dụng kỹ thuật rang xay hiện đại, C&agrave; ph&ecirc; Original 1 mang đến trải nghiệm tuyệt vời khi uống c&agrave; ph&ecirc; tại nh&agrave; với hương vị đậm đ&agrave; truyền thống.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_ca_phe_rang_xay_01_1d5dc412941442dcbdccfdcd117ebbb3_grande.jpg\" /></p>\r\n\r\n<p><em>C&agrave; ph&ecirc; Original 1 của The Coffee House với 100% th&agrave;nh phần c&agrave; ph&ecirc; Robusta Đăk Lăk, v&ugrave;ng trồng c&agrave; ph&ecirc; ngon nhất Việt Nam.&nbsp;</em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, d&ograve;ng c&agrave; ph&ecirc; Rich Finish của The Coffee House sở hữu c&ocirc;ng thức rang xay chuy&ecirc;n biệt v&agrave; được phối trộn tỷ lệ ho&agrave;n hảo giữa hạt Robusta v&agrave; Arabica. Đối với Rich Finish, ngay từ c&aacute;i chạm m&ocirc;i đầu ti&ecirc;n sẽ cảm nhận được r&otilde; vị đậm đ&agrave; v&agrave; hậu vị vấn vương. Rich Finish cho bạn khởi đầu đầy năng lượng, tỉnh t&aacute;o v&agrave; kết th&uacute;c một ng&agrave;y với những cảm x&uacute;c rộn r&agrave;ng.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, những hạt c&agrave; ph&ecirc; Robusta Đắk N&ocirc;ng v&agrave; hạt c&agrave; ph&ecirc; Arabica Cầu Đất nổi tiếng của Việt Nam c&ograve;n được The Coffee House g&oacute;i trọn v&agrave; tạo th&agrave;nh một hương vị mới mẻ đầy l&ocirc;i cuốn trong d&ograve;ng sản phẩm Peak Flavor. Được rang với nhiệt độ v&agrave;ng, c&agrave; ph&ecirc; Peak Flavor l&agrave; sự h&ograve;a trộn của nhiều cung bậc, c&aacute;c tầng lớp của hương v&agrave; vị sẽ mang đến cho người d&ugrave;ng một ng&agrave;y mới tr&agrave;n đầy cảm hứng.</p>','cach-nhan-biet-huong-vi-ca-phe-robusta-nguyen-chat-de-dang-nhat','2023-12-23 04:45:41.135746','2023-12-23 04:45:41.135746');
INSERT INTO news_tintuc VALUES (12,'BẬT MÍ NHIỆT ĐỘ LÝ TƯỞNG ĐỂ PHA CÀ PHÊ NGON, ĐẬM ĐÀ HƯƠNG VỊ','uploads/Screenshot_2.png','Coffeeholic','<h1><strong>Nhiệt độ nước l&agrave; một yếu tố quan trọng để c&oacute; thể tạo n&ecirc;n những t&aacute;ch c&agrave; ph&ecirc; thơm ngon. Bạn đ&atilde; biết nhiệt độ nước l&yacute; tưởng để pha c&agrave; ph&ecirc; đ&uacute;ng chuẩn?&nbsp;</strong></h1>\r\n\r\n<p><strong>V&igrave; sao phải lưu &yacute; nhiệt độ nước khi pha c&agrave; ph&ecirc;?</strong></p>\r\n\r\n<p>Nhiều người vẫn thường nghĩ chỉ cần đun nước cho s&ocirc;i, sau đ&oacute; đổ v&agrave;o phin pha chế v&agrave; chờ khoảng 5 ph&uacute;t cho c&agrave; ph&ecirc; nhiễu xuống l&agrave; c&oacute; được ly c&agrave; ph&ecirc; để uống. Tuy nhi&ecirc;n, điều n&agrave;y kh&ocirc;ng hẳn đ&uacute;ng v&igrave; bạn sẽ kh&ocirc;ng được thưởng thức c&agrave; ph&ecirc; với hương vị tốt nhất. Đặc biệt l&agrave; đối với c&aacute;c loại c&agrave; ph&ecirc; c&oacute; đặc trưng pha chế ri&ecirc;ng. Việc ch&uacute; &yacute; đến nhiệt độ nước ph&ugrave; hợp sẽ gi&uacute;p bạn cảm nhận v&agrave; say đắm trong hương vị nồng n&agrave;n, trọn vẹn của những loại c&agrave; ph&ecirc; hảo hạng.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_caphe_12_ab986d8cb94d48b08ab7d5b7597cbbd9_grande.jpg\" /></p>\r\n\r\n<p>Bạn biết kh&ocirc;ng, nếu khi sử dụng nhiệt độ nước thấp, một số hợp chất ch&iacute;nh trong c&agrave; ph&ecirc; sẽ kh&ocirc;ng được chiết xuất hiệu quả, dẫn đến c&agrave; ph&ecirc; c&oacute; thể c&oacute; vị mỏng, nhạt v&agrave; c&oacute; cường độ hương vị thấp. Khi nhiệt độ cao hơn, c&aacute;c ph&acirc;n tử h&ograve;a tan tăng cường hoạt động, sẽ th&uacute;c đẩy chiết xuất c&aacute;c chất kh&oacute; tan gi&uacute;p c&agrave; ph&ecirc; c&oacute; hương vị r&otilde; r&agrave;ng, phong ph&uacute; v&agrave; tinh tế hơn. Thế nhưng, mỗi loại c&agrave; ph&ecirc; sẽ c&oacute; một mức nhiệt l&yacute; tưởng ri&ecirc;ng khi pha chế. Nắm được điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; thể pha chế những t&aacute;ch c&agrave; ph&ecirc; với hương vị r&otilde; r&agrave;ng, chuẩn nhất v&agrave; thưởng thức ch&uacute;ng một c&aacute;ch ưng &yacute; nhất.&nbsp;</p>\r\n\r\n<p><strong>Nhiệt độ nước l&yacute; tưởng cho từng loại c&agrave; ph&ecirc; ngon</strong></p>\r\n\r\n<p>Theo&nbsp;nghi&ecirc;n cứu,&nbsp;nhiệt độ nước l&yacute; tưởng để pha c&agrave; ph&ecirc; dao động từ&nbsp;khoảng 90 đến 96&deg;C. Tuy nhi&ecirc;n, đối với từng loại c&agrave; ph&ecirc;, sẽ c&oacute; một nhiệt độ tối ưu để&nbsp;c&aacute;c hợp chất được giải ph&oacute;ng một c&aacute;ch c&acirc;n bằng v&agrave; tạo n&ecirc;n hương vị tuyệt vời. Chẳng hạn như đối với Espresso v&agrave; c&agrave; ph&ecirc; phin truyền thống, bạn c&oacute; thể sử dụng ở mức nhiệt độ từ&nbsp; 90 đến 96&deg;C. Tuy nhi&ecirc;n đối với cold brew th&igrave; mức nhiệt độ l&yacute; tưởng đ&oacute; ch&iacute;nh l&agrave; 25&deg;C, c&ograve;n d&ugrave;ng cho c&aacute;c phương ph&aacute;p pha pour over (V60,&hellip;) th&igrave; mức nhiệt độ tối ưu l&agrave; 80 đến 90&deg;C.&nbsp;Vậy n&ecirc;n, bạn cần lưu &yacute; tuỳ theo loại c&agrave; ph&ecirc; m&agrave; đang pha chế, m&agrave; chọn loại nước cho ph&ugrave; hợp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_caphe_13_efe9c0fc2c324ecf8cbf936a53566208_grande.jpg\" /></p>\r\n\r\n<p><strong>Những lưu &yacute; li&ecirc;n quan đến nhiệt độ nước khi pha c&agrave; ph&ecirc;</strong></p>\r\n\r\n<p>Bạn&nbsp;cần lưu &yacute; một số điểm để c&oacute; thể đảm bảo rằng nhiệt độ nước pha c&agrave; ph&ecirc; hay kỹ thuật pha c&agrave; ph&ecirc; bạn đang &aacute;p dụng l&agrave; chuẩn nhất:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nhiệt từ nước sẽ bị hao hụt trong qu&aacute; tr&igrave;nh chiết xuất do dẫn nhiệt qua c&agrave; ph&ecirc;, dụng cụ pha chế, m&ocirc;i trường,.. V&igrave; vậy,&nbsp;trong c&aacute;c điều kiện pha chế kh&aacute;c nhau cần điều chỉnh nhiệt độ nước tương th&iacute;ch.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ugrave;ng một loại c&agrave; ph&ecirc; nhưng nếu được xay với k&iacute;ch thước kh&aacute;c nhau th&igrave; cần điều chỉnh nhiệt độ nước pha ph&ugrave; hợp. Nếu xay th&ocirc; hơn ở mức thường th&igrave; cần tăng nhiệt độ nước, c&ograve;n xay nhuyễn hơn th&igrave; giảm nhiệt độ nước. V&agrave; mức tăng giảm chỉ n&ecirc;n giao động trong khoảng 2 - 3 độ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cần phải l&agrave;m n&oacute;ng, tr&aacute;ng qua c&aacute;c dụng cụ pha chế để tr&aacute;nh l&agrave;m giảm nhiệt nhanh ch&oacute;ng khi pha c&agrave; ph&ecirc;. Cũng như phải ủ c&agrave; ph&ecirc; trước khi pha để tăng tỉ lệ chiết xuất của c&agrave; ph&ecirc; v&agrave; thời gian ủ thường khoảng 1- 2 ph&uacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh d&ugrave;ng nước được đun bằng củi, than đ&aacute; sẽ g&acirc;y &aacute;m kh&oacute;i ảnh hưởng lớn đến hương vị c&agrave; ph&ecirc; khi thưởng thức.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Chỉ cần nhớ những lưu &yacute; tr&ecirc;n, bạn&nbsp;c&oacute; thể tự tin&nbsp;pha những ly c&agrave; ph&ecirc; chuẩn chỉnh, thơm ngon nhất. V&agrave; nếu như kh&ocirc;ng c&oacute; thời gian, Nh&agrave; vẫn lu&ocirc;n sẵn s&agrave;ng đ&oacute;n bạn v&agrave; tiếp đ&atilde;i bằng những ly c&agrave; ph&ecirc; sữa, c&agrave; ph&ecirc; đen, hay c&aacute;c loại c&agrave; ph&ecirc; m&aacute;y như espresso, latte, macchiato, mocha&hellip; đậm đ&agrave;, thơm ngon kh&oacute; cưỡng.</p>','bat-mi-nhiet-o-ly-tuong-e-pha-ca-phe-ngon-am-a-huong-vi','2023-12-23 04:46:31.505048','2023-12-23 04:46:31.505048');
INSERT INTO news_tintuc VALUES (13,'TẠI SAO CÀ PHÊ CÓ VỊ CHUA?','uploads/1b6ae182f58d17_grande.jpg','Coffeeholic','<p>Nhiều người khi uống c&agrave; ph&ecirc; cảm thấy c&oacute; vị chua thường e ngại rằng c&agrave; ph&ecirc; hỏng, k&eacute;m chất lượng hay gặp c&aacute;c vấn đề trong qu&aacute; tr&igrave;nh pha chế v&agrave; bảo quản. Tuy nhi&ecirc;n, điều n&agrave;y chưa ch&iacute;nh x&aacute;c. Cả hương vị của Arabica hay Robusta nguy&ecirc;n chất, trải qua qu&aacute; tr&igrave;nh chế biến, rang xay đều c&oacute; vị chua nhẹ. Vậy n&ecirc;n, c&agrave; ph&ecirc; c&oacute; vị chua chua, vẫn giữ được hương thơm đặc trưng vốn c&oacute; của n&oacute; th&igrave; bạn c&oacute; thể y&ecirc;n t&acirc;m đ&oacute; kh&ocirc;ng phải l&agrave; c&agrave; ph&ecirc; hỏng. The Coffee House sẽ chỉ ra những l&yacute; do khiến c&agrave; ph&ecirc; c&oacute; vị chua tự nhi&ecirc;n.&nbsp;</p>\r\n\r\n<p><strong>Vị chua từ quy tr&igrave;nh sơ chế</strong></p>\r\n\r\n<p>Trong mỗi loại c&agrave; ph&ecirc; đều c&oacute; độ chua (pH), v&agrave; độ chua n&agrave;y kh&aacute;c nhau t&ugrave;y loại. Ở nước ta, đối với hạt c&agrave; ph&ecirc; Arabica thường được sơ chế ướt (fully washed) nhằm đảm bảo tối đa hương vị v&agrave; chất lượng thượng hạng của giống c&agrave; ph&ecirc; n&agrave;y. V&agrave; đặc trưng của phương ph&aacute;p sơ chế ướt sẽ cho vị chua hơn l&agrave; phương ph&aacute;p sơ chế kh&ocirc;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d4b003d7a_90e0757ec93a433e8e7812165271c7a2_grande.jpg\" /></p>\r\n\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n\r\n<p>L&yacute; do l&agrave; trong quy tr&igrave;nh sơ chế ướt, những tr&aacute;i c&agrave; ph&ecirc; được đem đi xay x&aacute;t, cho qua bồn nước để lọc lớp vỏ nhớt b&ecirc;n ngo&agrave;i, sau đ&oacute; đem c&agrave; ph&ecirc; đi ủ l&ecirc;n men trong khoảng 12 &ndash; 36 tiếng. Ch&iacute;nh lượng axit c&ograve;n lại tr&ecirc;n hạt c&agrave; ph&ecirc; sau khi rửa sẽ mang lại vị chua. Tuy nhi&ecirc;n, đ&acirc;y l&agrave; phương ph&aacute;p sơ chế l&yacute; tưởng nhất đối với hạt Arabica n&ecirc;n n&oacute; c&oacute; vị chua thanh một c&aacute;ch th&uacute; vị, chứ kh&ocirc;ng chua nhiều.&nbsp;</p>\r\n\r\n<p>Đối với hạt Robusta khi sử dụng phương ph&aacute;p sơ chế ướt cũng sẽ tạo n&ecirc;n vị chua rất gắt, v&igrave; hạt Robusta c&oacute; h&agrave;m lượng axit cao hơn so với hạt Arabica. Vậy n&ecirc;n, để l&agrave;m giảm độ chua của c&agrave; ph&ecirc; Robusta, người ta sẽ ưu ti&ecirc;n chọn phương ph&aacute;p sơ chế kh&ocirc;. L&uacute;c n&agrave;y vị của hạt Robusta cũng c&oacute; vị chua nhưng nhẹ hơn nhiều.</p>\r\n\r\n<p><strong>Vị chua từ qu&aacute; tr&igrave;nh rang</strong></p>\r\n\r\n<p>Ngo&agrave;i việc sơ chế sẽ l&agrave;m thay đổi đến độ chua của c&agrave; ph&ecirc; th&igrave; qu&aacute; tr&igrave;nh rang cũng sẽ c&oacute; sự t&aacute;c động. V&igrave; khi rang sẽ l&agrave;m thay đổi th&agrave;nh phần axit trong hạt c&agrave; ph&ecirc;.&nbsp;</p>\r\n\r\n<p>Khi uống c&agrave; ph&ecirc; 100% Arabica rang nhạt (light roast hay medium roast), bạn sẽ cảm nhận vị chua nhiều. Tuy nhi&ecirc;n, nếu hạt Arabica n&agrave;y rang đậm (medium dark ro hay dark roast) bạn sẽ cảm nhận độ chua giảm dần.&nbsp;</p>\r\n\r\n<p>Đối với hạt Robusta cũng vậy, m&agrave;u c&agrave; ph&ecirc; rang nhạt sẽ cho vị chua nhiều hơn nếu rang đậm. Nhiều người Việt thường kh&ocirc;ng th&iacute;ch vị chua của c&agrave; ph&ecirc;, vậy n&ecirc;n nếu dựa theo sở th&iacute;ch của kh&aacute;ch h&agrave;ng, hạt Robusta rang ở mức vừa đậm hoặc đậm hơn th&igrave; sẽ tạo ra vị đắng nhiều hơn v&agrave; kh&ocirc;ng c&oacute; vị chua.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d5a3a5d26_8dcd9f076bc047bfb61b6ae182f58d17_grande.jpg\" /></p>\r\n\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n\r\n<p>Như vậy, tr&ecirc;n thực tế c&agrave; ph&ecirc; nguy&ecirc;n chất, c&agrave; ph&ecirc; ngon được rang mộc thường c&oacute; một ch&uacute;t vị chua. B&ecirc;n cạnh vị chua thanh tinh tế l&agrave; vị đắng dịu nhẹ, m&ugrave;i thơm nồng n&agrave;n quyến rũ, kh&aacute;c với vị đắng gắt v&agrave; m&ugrave;i hăng hắc của c&aacute;c loại c&agrave; ph&ecirc; pha tạp bởi đậu n&agrave;nh hay bắp rang ch&aacute;y.&nbsp;</p>\r\n\r\n<p>Với những chia sẻ của The Coffee House chắc hẳn bạn đ&atilde; bớt bỡ ngỡ v&igrave; c&agrave; ph&ecirc; lại c&oacute; vị chua. Đ&oacute; l&agrave; vị chua tự nhi&ecirc;n của c&agrave; ph&ecirc;, ngo&agrave;i ra, vị chua từ việc thu hoạch nhiều tr&aacute;i xanh, chua do qu&aacute; tr&igrave;nh pha chế hay c&agrave; ph&ecirc; để l&acirc;u l&agrave;m giảm chất lượng của c&agrave; ph&ecirc; l&agrave; một c&acirc;u chuyện kh&aacute;c. Vậy n&ecirc;n để thưởng thức c&agrave; ph&ecirc; l&agrave; cả một nghệ thuật. Từ khi bạn cảm nhận được vị đắng dịu, vị chua thanh, hương thơm đặc trưng, đến hậu vị ngọt nơi cổ họng v&agrave; cả những cung bậc cảm x&uacute;c để lại. V&agrave; đấy l&agrave; khi bạn cảm nhận trọn vẹn hương vị c&agrave; ph&ecirc; bằng cả sự tinh tế của c&aacute;c gi&aacute;c quan.&nbsp;</p>\r\n\r\n<p><em>Để thưởng thức những hương vị c&agrave; ph&ecirc; nguy&ecirc;n chất, hảo hạng, g&oacute;i trọn đầy đủ vị chua, đắng, ngọt v&agrave; cả hương thơm kh&aacute;c biệt đầy hấp dẫn ấy, mời bạn c&ugrave;ng đến với The Coffee House.</em></p>','tai-sao-ca-phe-co-vi-chua','2023-12-23 04:47:27.796568','2023-12-23 04:47:27.796568');
INSERT INTO news_tintuc VALUES (14,'NGHỆ THUẬT THỬ VÀ NẾM CÀ PHÊ','uploads/the_coffee_house_original01731.webp','Coffeeholic','<p>Thử v&agrave; nếm c&agrave; ph&ecirc;, hay c&ograve;n gọi l&agrave; cupping l&agrave; một c&ocirc;ng đoạn được thực hiện bởi những chuy&ecirc;n gia d&agrave;y kinh nghiệm trong nghề nhằm đ&aacute;nh gi&aacute; chất lượng của hạt c&agrave; ph&ecirc;. Từ qu&aacute; tr&igrave;nh kiểm tra mẫu c&agrave; ph&ecirc;, qua đ&oacute; sẽ xem x&eacute;t về m&ugrave;i thơm, độ chua, độ mịn v&agrave; vị đậm đ&agrave;&hellip; của loại c&agrave; ph&ecirc; đ&oacute;.&nbsp;</p>\r\n\r\n<p>Để ph&aacute;t hiện v&agrave; t&igrave;m ra hầu hết những m&ugrave;i vị trong c&agrave; ph&ecirc; th&igrave; c&ocirc;ng việc thử v&agrave; nếm phải thực hiện theo một quy tr&igrave;nh chuẩn. Mỗi loại c&agrave; ph&ecirc; được pha th&agrave;nh nhiều mẫu thử bằng một c&aacute;ch giống nhau để m&ugrave;i vị giữa c&aacute;c t&aacute;ch kh&ocirc;ng vượt xa nhau, c&oacute; thể so s&aacute;nh nhằm đảm bảo chất lượng v&agrave; m&ugrave;i vị đồng nhất.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/img_2894_787e4454e5b743a9a5cadcc4036682e3_grande.jpg\" /></p>\r\n\r\n<p><strong>Phương ph&aacute;p thử v&agrave; nếm c&agrave; ph&ecirc;</strong></p>\r\n\r\n<p>Bước 1: Chọn loại hạt c&agrave; ph&ecirc; cần thử, xay một &iacute;t c&agrave; ph&ecirc; với độ mịn ph&ugrave; hợp.</p>\r\n\r\n<p>Bước 2: Pha một t&aacute;ch Espresso hay Regular Coffee. Nước pha c&agrave; ph&ecirc; rất quan trọng, v&igrave; n&oacute; sẽ ảnh hưởng đến vị chua đặc trưng của c&agrave; ph&ecirc;. Tốt nhất n&ecirc;n sử dụng nước tinh khiết hay nước lọc qua m&aacute;y để c&oacute; được những m&ugrave;i vị tốt nhất.</p>\r\n\r\n<p>Bước 3: Khuấy một v&agrave;i v&ograve;ng t&aacute;ch c&agrave; ph&ecirc; v&agrave; đưa mũi gần x&aacute;t v&agrave;o t&aacute;ch để ngửi.</p>\r\n\r\n<p>Bước 4: Đưa nửa muỗng c&agrave; ph&ecirc;&nbsp; v&agrave;o miệng, ch&eacute;p miệng tạo th&agrave;nh tiếng động nhiều lần để h&ograve;a trộn c&agrave; ph&ecirc; với kh&ocirc;ng kh&iacute;, nước bọt&hellip; l&uacute;c n&agrave;y lưỡi sẽ dễ cảm nhận được vị của c&agrave; ph&ecirc; hơn.</p>\r\n\r\n<p><strong>Cảm nhận của gi&aacute;c quan</strong></p>\r\n\r\n<p>Khi nếm v&agrave; thử c&agrave; ph&ecirc;, lưỡi c&oacute; thể ph&acirc;n biệt được rất nhiều m&ugrave;i vị phảng phất trong c&agrave; ph&ecirc;. Tuy nhi&ecirc;n, hạt c&agrave; ph&ecirc; đ&atilde; rang c&oacute; khoảng 800 m&ugrave;i vị kh&aacute;c nhau, trong khi c&aacute;c gi&aacute;c quan của con người chỉ nhận biết được một số m&ugrave;i vị.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/the_coffee_house_original01731_7b1408c26e0146708dbd19bca08220c4_grande.png\" /></p>\r\n\r\n<p>Để c&oacute; thể cảm nhận đầy đủ c&aacute;c hương vị từ c&agrave; ph&ecirc; đ&ograve;i hỏi phải c&oacute; một gi&aacute;c quan nhạy b&eacute;n vượt qua khỏi ngưỡng chỉ l&agrave; thưởng thức c&agrave; ph&ecirc; thuần t&uacute;y, c&ugrave;ng kinh nghiệm thử nếm nhất định. Những chuy&ecirc;n gia thử nếm c&agrave; ph&ecirc; nổi tiếng tr&ecirc;n thế giới c&oacute; một điểm chung l&agrave; họ đều l&agrave; những người đam m&ecirc; c&agrave; ph&ecirc; tột đỉnh, nếm v&agrave; thử những ly c&agrave; ph&ecirc; bằng tất cả niềm đam m&ecirc; của m&igrave;nh.</p>\r\n\r\n<p>Những phần kh&aacute;c nhau của lưỡi sẽ ph&aacute;t hiện ra những m&ugrave;i vị kh&aacute;c nhau: phần tr&ecirc;n v&agrave; trong c&ugrave;ng của lưỡi sẽ cảm nhận vị đắng nhất; mặt b&ecirc;n của lưỡi sẽ cảm nhận vị kh&ocirc;ng tốt (&ocirc;i, thiu, mốc&hellip;); phần đầu lưỡi sẽ cảm nhận được m&ugrave;i vị cụ thể nhất&hellip;</p>\r\n\r\n<p><strong>Diễn tả m&ugrave;i vị c&agrave; ph&ecirc;&nbsp;</strong></p>\r\n\r\n<p>Sau khi thử v&agrave; nếm xong, điều quan trọng nhất l&agrave; phải biết diễn tả m&ugrave;i vị của c&agrave; ph&ecirc;. Những thuật ngữ dưới đ&acirc;y sẽ gi&uacute;p diễn tả những đặc t&iacute;nh của c&agrave; ph&ecirc; một c&aacute;ch r&otilde; r&agrave;ng hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/the_coffee_house05141_71d9989d9fa042d09d130e672b360214_grande.png\" /></p>\r\n\r\n<p>Aroma:&nbsp;M&ugrave;i hương toả ra từ t&aacute;ch c&agrave; ph&ecirc; được pha với nước n&oacute;ng</p>\r\n\r\n<p>Fragrance:&nbsp;M&ugrave;i thơm của c&agrave; ph&ecirc; bột sau khi được xay.</p>\r\n\r\n<p>Balance:&nbsp;Chỉ sự c&acirc;n bằng c&oacute; trong một t&aacute;ch c&agrave; ph&ecirc;, từ hương thơm đến m&ugrave;i vị với sự c&acirc;n bằng tuyệt đối.</p>\r\n\r\n<p>Complexity:&nbsp;Mi&ecirc;u tả loại c&agrave; ph&ecirc; mang đến cảm gi&aacute;c c&oacute; nhiều lớp hương vị, v&agrave; hương vị c&oacute; sự thay đổi, lu&acirc;n chuyển, đồng thời mang đến cảm nhận về chiều s&acirc;u cũng như t&iacute;nh cộng hưởng.</p>\r\n\r\n<p>Body:&nbsp;Vị c&agrave; ph&ecirc; ở trong miệng. Điều n&agrave;y cảm nhận được độ đậm đ&agrave;, thanh, hay vị dịu của c&agrave; ph&ecirc;</p>\r\n\r\n<p>Rich:&nbsp;Từ n&agrave;y diễn đạt khi m&ugrave;i của c&agrave; ph&ecirc; rất thơm, rất dịu, thanh, đậm đ&agrave; hơn b&igrave;nh thường.</p>\r\n\r\n<p>Mellow:&nbsp;D&ugrave;ng để m&ocirc; tả vị ngọt của c&agrave; ph&ecirc; kh&ocirc;ng ch&aacute;t, đắng.</p>\r\n\r\n<p>Acidity:&nbsp;L&agrave; vị chua của c&agrave; ph&ecirc;. Hạt c&agrave; ph&ecirc; Arabica l&agrave; một loại hạt c&oacute; vị chua đặc trưng v&agrave; rất ngon</p>\r\n\r\n<p>Finish:&nbsp;L&agrave; cảm nhận về hương vị cuối của c&agrave; ph&ecirc; khi nuốt v&agrave;o.&nbsp;</p>\r\n\r\n<p>Mild:&nbsp;L&agrave; thuật ngữ thương mại d&ugrave;ng để chỉ loại c&agrave; ph&ecirc; Arabica c&oacute; chất lượng cao. Ngược với n&oacute; l&agrave; hard (cứng) hay inferior (k&eacute;m).</p>\r\n\r\n<p><em>Để thưởng thức những hương vị c&agrave; ph&ecirc; tinh t&uacute;y, kh&ocirc;ng chỉ được tạo n&ecirc;n từ qu&aacute; tr&igrave;nh nếm v&agrave; thử bởi đội ngũ chuy&ecirc;n gia, m&agrave; c&ograve;n từ quy tr&igrave;nh trồng trọt, chế biến, rang xay v&agrave; cả pha chế, mời bạn c&ugrave;ng gh&eacute; The Coffee House nh&eacute;!&nbsp;</em></p>','nghe-thuat-thu-va-nem-ca-phe','2023-12-23 04:48:32.670550','2023-12-23 04:48:32.670550');
INSERT INTO news_tintuc VALUES (15,'THƯỞNG THỨC CÀ PHÊ THEO PHONG CÁCH MỸ','uploads/2_370abd422deb446c9b9781b09b955810_grande.webp','Coffeeholic','<p>Ở Mỹ, c&agrave; ph&ecirc; được xuất hiện từ những năm 1600 tại New Amsterdam - th&agrave;nh phố New York nổi tiếng ng&agrave;y nay. Từ đ&oacute; c&agrave; ph&ecirc; dần được sử dụng v&agrave; gần gũi hơn. Tuy nhi&ecirc;n, phong c&aacute;ch c&agrave; ph&ecirc; hiện đại của Mỹ như hiện nay được cho rằng bắt nguồn từ &Yacute; v&agrave; ph&aacute;t triển mạnh mẽ trong khoảng 20 năm trở lại đ&acirc;y.</p>\r\n\r\n<p>D&ugrave; chịu ảnh hưởng bởi văn h&oacute;a c&agrave; ph&ecirc; du nhập từ &Yacute; với lối pha d&ugrave;ng m&aacute;y Barista nhanh ch&oacute;ng phổ biến, tuy nhi&ecirc;n lại c&oacute; sự kh&aacute;c biệt r&otilde; rệt giữa hai nền văn ho&aacute; c&agrave; ph&ecirc; của &Yacute; v&agrave; Mỹ. Đến với &Yacute; bạn sẽ thấy sự chờ đợi một c&aacute;ch chậm r&atilde;i, nhẹ nh&agrave;ng v&agrave; s&agrave;nh điệu. C&ograve;n với người Mỹ th&igrave; lu&ocirc;n trong t&acirc;m th&aacute;i nhanh gọn, tranh thủ thời gian. Điều n&agrave;y ho&agrave;n to&agrave;n dễ hiểu khi Mỹ l&agrave; một quốc gia l&agrave;m việc với cường độ cao, con người rất qu&yacute; trọng thời gian v&agrave; y&ecirc;u cầu sự gọn lẹ.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/1_3f3c6d40508d4a6aba9fa9e5aad7708a_grande.jpg\" /></p>\r\n\r\n<p>L&agrave; quốc gia trẻ v&agrave; đầy sức sống, con người ở Mỹ chuộng lối sống tự do, tất cả đều theo sở th&iacute;ch c&aacute; nh&acirc;n v&agrave; văn h&oacute;a c&agrave; ph&ecirc; cũng kh&ocirc;ng ngoại lệ. Người Mỹ sử dụng c&agrave; ph&ecirc; ho&agrave;n to&agrave;n theo &yacute; th&iacute;ch, kh&ocirc;ng s&agrave;nh điệu như người ch&acirc;u &Acirc;u, cũng kh&ocirc;ng cầu k&igrave; như người Ả Rập, m&agrave; đề cao t&iacute;nh thoải m&aacute;i.</p>\r\n\r\n<p>C&agrave; ph&ecirc; Việt th&igrave; lu&ocirc;n đậm đ&agrave;, c&ograve;n c&agrave; ph&ecirc; của người Mỹ được cho l&agrave; nhạt từ m&agrave;u sắc đến cả hương vị. C&agrave; ph&ecirc; Mỹ l&agrave; chất nước lo&atilde;ng m&agrave;u n&acirc;u nhạt, c&oacute; vị hơi kh&eacute;t, vậy n&ecirc;n người ta thường bảo cho th&ecirc;m hai, thậm ch&iacute; ba g&oacute;i đường v&agrave; nửa ly sữa cũng kh&ocirc;ng l&agrave;m chất nước ấy ngọt v&agrave; thơm hơn.</p>\r\n\r\n<p>Người Mỹ uống c&agrave; ph&ecirc; mọi l&uacute;c mọi nơi v&agrave; nhiều lần trong ng&agrave;y. C&agrave; ph&ecirc; đối với họ l&agrave; thức uống gi&uacute;p tập trung đầu &oacute;c, tỉnh t&aacute;o, chống buồn ngủ. M&oacute;n Americano, một thức uống được biến tấu nhẹ nh&agrave;ng từ m&oacute;n Espresso của người &Yacute; được xem l&agrave; thức uống truyền thống của người Mỹ. Ngo&agrave;i ra, ở đất nước n&agrave;y phổ biến với Iced Coffee &ndash; c&agrave; ph&ecirc; đặc, n&oacute;ng, th&ecirc;m đường được r&oacute;t v&agrave;o một ly đựng đ&aacute;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/2_370abd422deb446c9b9781b09b955810_grande.jpg\" /></p>\r\n\r\n<p>V&agrave;o qu&aacute;n c&agrave; ph&ecirc;, người Mỹ kh&ocirc;ng chỉ đơn thuần l&agrave; t&aacute;n gẫu. Đ&ocirc;i l&uacute;c họ l&agrave;m việc trong qu&aacute;n c&agrave; ph&ecirc;. Đ&acirc;y vừa l&agrave; c&aacute;ch tận dụng thời gian, hoặc thay đổi kh&ocirc;ng gian l&agrave;m việc để đầu &oacute;c tự do hơn l&agrave; ngồi trong văn ph&ograve;ng nh&agrave;m ch&aacute;n. Hơn thế nữa, người ta c&ograve;n v&agrave;o c&agrave; ph&ecirc; để b&agrave;n bạc c&ocirc;ng việc, thảo luận, trao đổi v&agrave; dĩ nhi&ecirc;n l&agrave; c&oacute; cả hẹn h&ograve;! V&agrave; những điều n&agrave;y th&igrave; ch&uacute;ng ta cũng thấy th&acirc;n thuộc đối với người Việt v&agrave; phong c&aacute;ch đi c&agrave; ph&ecirc; hiện nay.&nbsp;</p>\r\n\r\n<p>Cũng giống khi bước v&agrave;o kh&ocirc;ng gian của The Coffee House, bạn sẽ bắt gặp h&igrave;nh ảnh quen thuộc của những đ&ocirc;i bạn trẻ tr&ograve; chuyện b&ecirc;n t&aacute;ch c&agrave; ph&ecirc;, ai đ&oacute; l&agrave;m việc hăng say hay ch&uacute; t&acirc;m đọc s&aacute;ch bất kể những &acirc;m thanh r&igrave; r&agrave;o b&ecirc;n cạnh, cũng như những cuộc gặp gỡ niềm nở giữa đối t&aacute;c v&agrave; kh&aacute;ch h&agrave;ng, hay những người bạn l&acirc;u ng&agrave;y mới gặp lại nhưng rất đỗi th&acirc;n t&igrave;nh...&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/3-min_70635a18e73249d5b3d1f5468c29c6fe_grande.png\" /></p>\r\n\r\n<p>Đối với The Coffee House đ&oacute; l&agrave; một niềm thật hạnh ph&uacute;c. Hạnh ph&uacute;c khi lu&ocirc;n được đồng h&agrave;nh v&agrave; gắn liền trong những c&acirc;u chuyện, những lần gặp gỡ đong đầy t&igrave;nh cảm. G&oacute;p mặt trong h&agrave;nh tr&igrave;nh sống của mỗi người v&agrave; l&agrave; nơi lưu giữ những kỷ niệm. The Coffee House tự h&agrave;o mang đến những trải nghiệm kh&aacute;c biệt, thoải m&aacute;i, những hương vị tinh tế v&agrave; quyến rũ cho kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u, đặc biệt biệt l&agrave; g&oacute;p phần kiến tạo n&ecirc;n phong c&aacute;ch v&agrave; văn h&oacute;a thưởng thức c&agrave; ph&ecirc; của người Việt.&nbsp;</p>','thuong-thuc-ca-phe-theo-phong-cach-my','2023-12-23 04:49:21.889704','2023-12-23 04:49:21.889704');
INSERT INTO news_tintuc VALUES (16,'MÊ MẨN CÁC MÓN ĂN TỪ TRÀ XANH','uploads/blog_f041c8bd760b40c0bce50fcc7b09bf03_grande.jpg','Blog','<p>B&ecirc;n cạnh những thức uống từ tr&agrave; xanh được y&ecirc;u th&iacute;ch như Matcha đ&aacute; xay, Matcha Latte, Tr&agrave; sữa Matcha th&igrave; c&ograve;n rất nhiều m&oacute;n ăn từ tr&agrave; xanh kh&aacute;c cực kỳ hấp dẫn v&agrave; được rất nhiều người y&ecirc;u th&iacute;ch. Hương thơm dễ chịu, vị đắng ngọt nhẹ nh&agrave;ng, m&agrave;u sắc bắt mắt v&agrave; tươi m&aacute;t l&agrave; những đặc trưng cuốn h&uacute;t rất ri&ecirc;ng của c&aacute;c m&oacute;n ăn được chế biến từ tr&agrave; xanh matcha. Những m&oacute;n dưới đ&acirc;y đ&atilde; khiến rất nhiều người say đắm, nếu chưa từng thưởng thức th&igrave; thử ngay bạn nh&eacute;.&nbsp;</p>\r\n\r\n<p><strong>Kem tr&agrave; xanh</strong></p>\r\n\r\n<p>Chắc chắn kem tr&agrave; xanh l&agrave; gu của rất nhiều người. Một cảm gi&aacute;c thật đ&atilde; khi đưa v&agrave;o miệng từng muỗng kem m&aacute;t lạnh, mềm mịn, thơm thoảng, kh&ocirc;ng qu&aacute; ngọt b&eacute;o m&agrave; lại thanh thanh, đăng đắng dịu nhẹ của vị tr&agrave; xanh. Những ng&agrave;y n&oacute;ng bức, thưởng thức một chiếc kem tr&agrave; xanh tươi m&aacute;t, đậm đ&agrave; sẽ xua tan ngay c&aacute;i oi bức v&agrave; kh&oacute; chịu trong người.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/blog_f041c8bd760b40c0bce50fcc7b09bf03_grande.jpg\" /></p>\r\n\r\n<p><strong>B&aacute;nh tr&agrave; xanh</strong></p>\r\n\r\n<p>D&ugrave; bạn l&agrave; t&iacute;n đồ ăn vặt th&igrave; nhắc đến c&aacute;c loại b&aacute;nh từ tr&agrave; xanh &ldquo;sang - xịn - mịn&rdquo; bạn kể cả ng&agrave;y cũng kh&ocirc;ng hết. B&aacute;nh flan tr&agrave; xanh, b&aacute;nh cookie tr&agrave; xanh, tiramisu tr&agrave; xanh, b&aacute;nh trung thu tr&agrave; xanh, choux kem tr&agrave; xanh, b&aacute;nh mochi tr&agrave; xanh, mousse tr&agrave; xanh, b&aacute;nh kem tươi tr&agrave; xanh, crepe ng&agrave;n lớp tr&agrave; xanh&hellip; tất cả đều khiến bất kỳ ai cũng m&ecirc; như điếu đổ.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61c2e3e3784e2_97c306db7f3e4030a8f0cd6d8d3eaa4f_grande.jpg\" /></p>\r\n\r\n<p>Hương vị tr&agrave; xanh đ&atilde; l&agrave;m ẩm thực th&ecirc;m phong ph&uacute; v&agrave; &ldquo;gợi cảm&rdquo;. Nh&igrave;n m&agrave;u sắc đ&atilde; đủ y&ecirc;u rồi, đến khi vị khẽ chạm đến đầu lưỡi th&igrave; c&agrave;ng m&ecirc; mệt. Về cơ bản, c&aacute;ch l&agrave;m&nbsp;c&aacute;c m&oacute;n b&aacute;nh từ tr&agrave; xanh&nbsp;cũng được thực hiện như c&aacute;ch truyền thống, chỉ th&ecirc;m v&agrave;o nguy&ecirc;n liệu bột tr&agrave; xanh. Vậy n&ecirc;n, bạn c&oacute; thể tự tay l&agrave;m v&agrave; thử n&oacute;.&nbsp;</p>\r\n\r\n<p><strong>Sữa chua dẻo tr&agrave; xanh</strong></p>\r\n\r\n<p>Bạn đ&atilde; thưởng thức sữa chua dẻo tr&agrave; xanh? Một m&oacute;n ăn xuất sắc đốn gục cả những người s&agrave;nh ăn. V&agrave; bằng c&aacute;ch n&agrave;o đ&oacute;, bạn cũng sẽ bị chinh phục bởi m&oacute;n sữa chua dẻo tr&agrave; xanh n&agrave;y. Từng miếng sữa chua dẻo v&agrave; mềm mịn ho&agrave; c&ugrave;ng hương thơm d&igrave;u dịu thanh m&aacute;t tan chảy trong miệng thật sự rất th&uacute; vị v&agrave; ấn tượng.&nbsp;</p>\r\n\r\n<p><strong>Socola tr&agrave; xanh</strong></p>\r\n\r\n<p>Socola tươi (Nama Chocolate) c&oacute; vị tr&agrave; xanh l&agrave; một trong&nbsp;c&aacute;c m&oacute;n ăn từ tr&agrave; xanh&nbsp;nổi tiếng của Nhật Bản m&agrave; rất nhiều người y&ecirc;u th&iacute;ch. Socola Nama tr&agrave; xanh sẽ c&oacute; m&agrave;u xanh nổi bật, đặc trưng tự nhi&ecirc;n của matcha. Khi thưởng thức một vi&ecirc;n socola tươi bạn sẽ cảm nhận được m&ugrave;i thơm tr&agrave; xanh thoang thoảng, dễ chịu. Vị thanh m&aacute;t, ch&aacute;t nhẹ, ngọt dịu tan dần trong miệng thật kh&oacute; c&oacute; thể khiến bạn qu&ecirc;n được m&oacute;n ăn vặt tuyệt vời n&agrave;y.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61c2e4e35a807_38f353386ec64c158144c71a617517de_grande.jpg\" /></p>\r\n\r\n<p><strong>Bingsu tr&agrave; xanh</strong></p>\r\n\r\n<p>Nhắc đến m&oacute;n ngon từ tr&agrave; xanh kh&ocirc;ng thể kh&ocirc;ng nhắc đến bingsu tr&agrave; xanh. Bingsu tr&agrave; xanh sở hữu một vẻ ngo&agrave;i hấp dẫn v&agrave; bắt mắt cực kỳ. Hương tr&agrave; xanh thơm thoang thoảng, vị tr&agrave; xanh thắm quyện trong khu&ocirc;n miệng, cảm gi&aacute;c m&aacute;t lạnh ngọt ng&agrave;o khi kết hợp c&ugrave;ng c&aacute;c nguy&ecirc;n liệu như sữa, kem, chocolate, tr&aacute;i c&acirc;y, b&aacute;nh cookie&hellip; đ&atilde; khiến bingsu tr&agrave; xanh đặc sắc v&agrave;&nbsp; tuyệt vời hơn bao giờ hết.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61c2e5469a115_71e39184d0ce4528b103b13ce02e9f58_grande.jpg\" /></p>\r\n\r\n<p><strong>M&igrave; Soba tr&agrave; xanh</strong></p>\r\n\r\n<p>M&igrave; Soba l&agrave; một trong những m&oacute;n m&igrave; truyền thống của Nhật Bản v&agrave; được y&ecirc;u th&iacute;ch tr&ecirc;n thế giới. Được tạo n&ecirc;n khi kết hợp với bột tr&agrave; xanh nguy&ecirc;n chất, từng sợi m&igrave; dai mềm của Soba tr&agrave; xanh đ&atilde; chinh phục c&aacute;c thực kh&aacute;ch khắp mọi nơi d&ugrave; kh&aacute;c biệt về văn h&oacute;a v&agrave; gu ẩm thực. Tất cả đến từ sự tinh tế, h&agrave;i h&ograve;a, đặc sắc bởi hương vị v&agrave; sự đẹp mắt của n&oacute;. Th&ecirc;m nữa, bạn c&oacute; thể thưởng thức m&igrave; Soba n&oacute;ng hay lạnh t&ugrave;y sở th&iacute;ch, thật sự rất tuyệt!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61c2e5bc8d5b1_d5594fa6e6c34faa97ea5ab046149144_grande.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng chỉ ngon từ vị, thơm từ hương, tươi m&aacute;t bởi m&agrave;u sắc m&agrave; Tr&agrave; xanh Matcha c&ograve;n c&oacute; rất nhiều lợi &iacute;ch cho sức khỏe. Trong Matcha chứa chất chống oxy h&oacute;a gi&uacute;p đẩy l&ugrave;i c&aacute;c t&aacute;c nh&acirc;n g&acirc;y ung thư, khi thưởng thức tr&agrave; xanh c&ograve;n gi&uacute;p cho bạn tỉnh t&aacute;o, giảm căng thẳng v&agrave; mệt mỏi v&igrave; trong tr&agrave; xanh c&oacute; chứa caffeine. Bột tr&agrave; xanh c&ograve;n chứa h&agrave;m lượng polyphenol gi&uacute;p ngăn ngừa l&atilde;o h&oacute;a, l&agrave;m đẹp da, s&aacute;ng da, trị mụn, cũng như gi&uacute;p cơ thể đ&agrave;o thải được độc tố, thanh nhiệt.</p>\r\n\r\n<p>Tuyệt vời như vậy l&agrave;m sao c&oacute; thể bỏ qua c&aacute;c m&oacute;n ăn v&agrave; thức uống đầy m&ecirc; hoặc từ tr&agrave; xanh đ&uacute;ng kh&ocirc;ng n&agrave;o.&nbsp;</p>','me-man-cac-mon-an-tu-tra-xanh','2023-12-23 04:50:53.779200','2023-12-23 04:50:53.779200');
INSERT INTO news_tintuc VALUES (17,'5 MÓN ĂN CỰC NGON ĐƯỢC CHẾ BIẾN ĐƠN GIẢN TỪ CÀ PHÊ','uploads/_downloader.webp','Coffeeholic','<p>Hương c&agrave; ph&ecirc; thơm đặc trưng, vị đắng nhẹ v&agrave; ngọt ng&agrave;o khi kết hợp c&ugrave;ng đường, sữa v&agrave; c&aacute;c nguy&ecirc;n liệu kh&aacute;c đ&atilde; l&agrave;m n&ecirc;n những m&oacute;n ăn hấp dẫn m&agrave; nhiều người y&ecirc;u th&iacute;ch. Những m&oacute;n dưới đ&acirc;y thường được những bạn trẻ v&agrave; c&aacute;c &ldquo;mẹ đảm&rdquo; l&agrave;m v&igrave; cực ngon v&agrave; kh&aacute; dễ, c&ugrave;ng l&agrave;m thử tay nghề v&agrave; thưởng thức với cả nh&agrave; nh&eacute;.</p>\r\n\r\n<p><strong>Rau c&acirc;u c&agrave; ph&ecirc; sữa</strong>: m&oacute;n ăn quen thuộc nhưng lại lu&ocirc;n hấp dẫn v&igrave; độ ngon v&agrave; m&aacute;t của n&oacute;. C&ocirc;ng thức đơn giản, nguy&ecirc;n liệu dễ kiếm, c&ugrave;ng thực hiện như sau:</p>\r\n\r\n<p>Chuẩn bị nguy&ecirc;n liệu: Bột rau c&acirc;u dẻo (12gr), đường (200gr), c&agrave; ph&ecirc; ho&agrave; tan (10gr), sữa đặc, nước lọc&hellip;</p>\r\n\r\n<p><strong>Bước 1</strong>: Trộn đều bột rau c&acirc;u với 200gr đường&nbsp;</p>\r\n\r\n<p><strong>Bước 2</strong>: Đun s&ocirc;i 2 l&iacute;t nước lọc (hoặc theo tỉ lệ ghi tr&ecirc;n bao b&igrave; rau c&acirc;u), cho hỗn hợp bột rau c&acirc;u v&agrave; đường v&agrave;o khuấy đều, đun lửa nhỏ khoảng 5 ph&uacute;t.</p>\r\n\r\n<p><strong>Bước 3</strong>: Ho&agrave; tan 10gr bột c&agrave; ph&ecirc; với 100ml nước n&oacute;ng. Cho th&ecirc;m lượng sữa đặc theo nhu cầu v&agrave; tiếp tục khuấy đều.</p>\r\n\r\n<p><strong>Bước 4</strong>: Đổ hỗn hợp c&agrave; ph&ecirc; v&agrave; sữa đặc v&agrave;o nồi bột rau c&acirc;u đang đun v&agrave; khuấy đều th&ecirc;m khoảng 2 ph&uacute;t.</p>\r\n\r\n<p><strong>Bước 5</strong>: Cho hỗn hợp rau c&acirc;u ra khay chờ nguội. Sau đ&oacute; để tủ lạnh khoảng 1-2 tiếng v&agrave; lấy ra thưởng thức.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/1_527f66557ec04a2d9ae6143f6228bd2a_grande.jpg\" /></p>\r\n\r\n<p><strong>B&aacute;nh flan</strong>: Qu&aacute; quen thuộc n&ecirc;n chắc hẳn kh&ocirc;ng cần n&oacute;i nhiều, c&ugrave;ng bắt tay v&agrave;o l&agrave;m để thưởng thức b&aacute;nh flan với vị đậm đ&agrave; v&agrave; b&eacute;o b&ugrave;i của trứng, thoang thoảng vị c&agrave; ph&ecirc; thơm ngon tuyệt vời n&agrave;y nh&eacute;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61ca8d47bf6ba_aad597402e9d4eefbe8ffb7dbd763dbd_grande.jpg\" /></p>\r\n\r\n<p>Nguy&ecirc;n liệu: 20g c&agrave; ph&ecirc; rang xay, 3 quả trứng g&agrave;, 100g sữa đặc c&oacute; đường, 400ml sữa tươi, 150g đường trắng, 1 ống vani.&nbsp;</p>\r\n\r\n<p><strong>Bước 1</strong>: Pha chế c&agrave; ph&ecirc; để lấy khoảng 50ml&nbsp;</p>\r\n\r\n<p><strong>Bước 2</strong>: Đun lượng c&agrave; ph&ecirc; với 100g đường trắng để l&agrave;m caramel. Khi hỗn hợp s&aacute;nh đặc lại, h&atilde;y đổ ra khu&ocirc;n với lớp vừa v&agrave; mỏng.</p>\r\n\r\n<p><strong>Bước 3</strong>: Lấy 3 quả trứng g&agrave;, 50g đường trắng, 100g sữa đặc, 400ml sữa tươi v&agrave; 1 ống vani v&agrave; đ&aacute;nh đều hỗn hợp n&agrave;y l&ecirc;n. Đ&aacute;nh xong lấy r&acirc;y lọc lại để hỗn hợp mịn hơn.</p>\r\n\r\n<p><strong>Bước 4</strong>: Lấy hỗn hợp vừa l&agrave;m xong đổ l&ecirc;n ph&iacute;a tr&ecirc;n bề mặt của caramel đ&atilde; tạo v&agrave; hấp b&aacute;nh trong 40 ph&uacute;t.&nbsp;</p>\r\n\r\n<p><strong>Bước 5</strong>: Lấy b&aacute;nh ra để nguội rồi cho v&agrave;o trong ngăn m&aacute;t tủ lạnh, sau đ&oacute; thưởng thức tuỳ th&iacute;ch.</p>\r\n\r\n<p><strong>Kem c&agrave; ph&ecirc; sữa</strong>: kết hợp với whipping cream c&oacute; độ mịn mềm mại v&ocirc; c&ugrave;ng hấp dẫn, ngon miệng, vị ngọt b&eacute;o vừa phải h&ograve;a c&ugrave;ng vị đắng nhẹ của c&agrave; ph&ecirc;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61ca8ea1c1b14_b51d9361b3144598b2369a312da35148_grande.jpg\" /></p>\r\n\r\n<p>Nguy&ecirc;n liệu chuẩn bị: Bột c&agrave; ph&ecirc; h&ograve;a tan&nbsp;(20 gr),&nbsp;whipping cream&nbsp;(200ml), sữa đặc&nbsp;(40 gr), nước lọc&nbsp;(50 ml).</p>\r\n\r\n<p><strong>Bước 1</strong>: Khuấy đều lượng c&agrave; ph&ecirc; ho&agrave; tan v&agrave;o 50ml nước lọc. Đổ tiếp 40gr sữa đặc v&agrave;o khuấy đều đến khi h&ograve;a tan ho&agrave;n to&agrave;n.</p>\r\n\r\n<p><strong>Bước 2</strong>: D&ugrave;ng m&aacute;y đ&aacute;nh b&ocirc;ng phần kem whipping cream, cho hỗn hợp c&agrave; ph&ecirc; v&agrave; sữa v&agrave;o v&agrave; đ&aacute;nh đều đến khi h&ograve;a quyện v&agrave;o nhau.</p>\r\n\r\n<p><strong>Bước 3</strong>: Cho hỗn hợp tr&ecirc;n v&agrave;o hộp hoặc khu&ocirc;n rồi để v&agrave;o ngăn đ&ocirc;ng tủ lạnh&nbsp;&nbsp;trong 2 giờ.</p>\r\n\r\n<p><strong>Bước 4</strong>: Lấy kem ra ngo&agrave;i, d&ugrave;ng muỗng trộn đều rồi tiếp tục cho v&agrave;o ngăn đ&aacute; tủ lạnh th&ecirc;m 2 giờ. Tiếp tục l&agrave;m như vậy khoảng 3 - 4 lần để kem được dẻo mịn v&agrave; kh&ocirc;ng bị dăm đ&aacute;.&nbsp;</p>\r\n\r\n<p><strong>B&aacute;nh Cupcake</strong>: hương vị thơm ngon, mềm mịn, Cupcake được nhiều người y&ecirc;u th&iacute;ch, đặc biệt l&agrave; trẻ nhỏ, b&aacute;nh d&ugrave;ng ăn s&aacute;ng hay ăn nhẹ đều rất tuyệt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61ca8f211427a_151efddc233b46dfa77751d2678de846_grande.jpg\" /></p>\r\n\r\n<p>Nguy&ecirc;n liệu phần cupcake: 170g bột m&igrave;, một &iacute;t bột nở, muối, 5g c&agrave; ph&ecirc; bột h&ograve;a tan, 90g c&agrave; ph&ecirc; đen đậm để nguội, 30ml sữa, 115g bơ nhạt, 200g đường, 2 quả trứng lớn</p>\r\n\r\n<p>Nguy&ecirc;n liệu phần kem trang tr&iacute;: 55g bơ nhạt, 20g bột ca cao, 125-185g đường xay, 5g bột c&agrave; ph&ecirc; h&ograve;a tan với 15ml nước n&oacute;ng, 15ml rượu c&agrave; ph&ecirc; hoặc sữa</p>\r\n\r\n<p><strong>Bước 1</strong>: Cho bột m&igrave;, bột nở, muối v&agrave; bột c&agrave; ph&ecirc; ho&agrave; tan v&agrave;o b&aacute;t, trộn đều.&nbsp;</p>\r\n\r\n<p><strong>Bước 2</strong>: L&agrave;m mềm bơ ở nhiệt độ ph&ograve;ng, cho đường v&agrave;o, đ&aacute;nh đến khi bơ chuyển m&agrave;u v&agrave;ng nhạt. Sau đ&oacute; cho từng quả trứng v&agrave;o v&agrave; đ&aacute;nh đều. Tiếp tục cho hỗn hợp bột ở bước 1 v&agrave;o chung, trộn đều tất cả.</p>\r\n\r\n<p><strong>Bước 3</strong>: Tiếp theo, cho c&agrave; ph&ecirc; đen đậm v&agrave;o, trộn đều để c&oacute; một hỗn hợp bột đồng nhất.</p>\r\n\r\n<p><strong>Bước 4</strong>: Đổ hỗn hợp bột v&agrave;o khoảng 3/4 độ cao của khu&ocirc;n, l&agrave;m n&oacute;ng l&ograve; nướng trước ở nhiệt độ 175 độ C, cho b&aacute;nh v&agrave;o nướng 20-25 ph&uacute;t.</p>\r\n\r\n<p><strong>Bước 5</strong>: Chế biến phần kem trang tr&iacute;: cho tất cả nguy&ecirc;n liệu đ&atilde; chuẩn bị v&agrave;o b&aacute;t, trộn đều cho đến khi hỗn hợp kem trở n&ecirc;n b&ocirc;ng nhẹ.</p>\r\n\r\n<p><strong>Bước 6</strong>: Cho kem v&agrave;o t&uacute;i bắt b&ocirc;ng kem rồi trang tr&iacute; l&ecirc;n tr&ecirc;n bề mặt b&aacute;nh đ&atilde; ch&iacute;n. Cuối c&ugrave;ng cho v&agrave;o tủ lạnh v&agrave;i giờ đồng hồ trước khi ăn.</p>\r\n\r\n<p><strong>Mousse Tiramisu</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại b&aacute;nh ngọt xuất ph&aacute;t từ &Yacute; v&agrave; ăn rất ghiền khi kết hợp bởi ch&uacute;t đắng nhẹ của c&agrave; ph&ecirc;, lớp kem trứng b&eacute;o ngọt dịu hấp dẫn. Bằng chứng l&agrave; c&aacute;c c&ocirc; n&agrave;ng th&iacute;ch b&aacute;nh ngọt đến với The Coffee House m&ecirc; mệt với loại b&aacute;nh n&agrave;y. V&agrave; nếu c&oacute; thời gian, cộng với một ch&uacute;t kh&eacute;o l&eacute;o bạn vẫn c&oacute; thể l&agrave;m tại nh&agrave;.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, Mousse Tiramisu c&oacute; vẻ l&agrave; m&oacute;n kh&oacute; nhất trong danh s&aacute;ch được The Coffee House giới thiệu n&agrave;y. Bạn cần phải tạo hỗn hợp kem Tiramisu, phần rượu c&agrave; ph&ecirc; v&agrave; cốt b&aacute;nh Tiramisu. Vậy n&ecirc;n, nếu kh&ocirc;ng c&oacute; nhiều thời gian, kh&ocirc;ng muốn chuẩn bị nhiều bước m&agrave; vẫn muốn nếm thử hương vị đặc sắc quyến rũ của Mousse Tiramisu th&igrave; mời bạn đến với The Coffee House nh&eacute;, c&aacute;c cửa h&agrave;ng lu&ocirc;n sẵn s&agrave;ng phục vụ bạn m&oacute;n b&aacute;nh hấp dẫn n&agrave;y.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/mousse_tiramisu_lifestyle_f876695db2394d1fb8b619f8637c9df3_grande.jpg\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, để s&aacute;ng tạo nhiều m&oacute;n ngon cho gia đ&igrave;nh được chế biến từ c&agrave; ph&ecirc; với hương thơm đặc trưng v&agrave; vị tinh t&uacute;y nhất, The Coffee House mời bạn d&ugrave;ng thử c&agrave; ph&ecirc; sữa đ&aacute; ho&agrave; tan hoặc c&aacute;c loại c&agrave; ph&ecirc; rang xay mới của The Coffee House nh&eacute;. Với chất lượng c&agrave; ph&ecirc; hảo hạng chắc chắn sẽ c&ugrave;ng bạn tạo n&ecirc;n những m&oacute;n ăn đậm vị c&agrave; ph&ecirc; v&agrave; cực kỳ tốt cho sức khỏe. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng v&agrave; thật ngon miệng với c&aacute;c m&oacute;n ăn tr&ecirc;n.&nbsp;</p>','5-mon-an-cuc-ngon-uoc-che-bien-on-gian-tu-ca-phe','2023-12-23 04:52:19.934280','2023-12-23 04:52:19.934280');

--
-- Table structure for table `order_chitietdonhang`
--

DROP TABLE IF EXISTS order_chitietdonhang;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE order_chitietdonhang (
  id bigint NOT NULL AUTO_INCREMENT,
  GiaBan int DEFAULT NULL,
  SoLuong int NOT NULL,
  TongTien int DEFAULT NULL,
  DonHang_id bigint NOT NULL,
  SanPham_id bigint NOT NULL,
  PRIMARY KEY (id),
  KEY order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id (DonHang_id),
  KEY order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id (SanPham_id),
  CONSTRAINT order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id FOREIGN KEY (DonHang_id) REFERENCES order_donhang (id),
  CONSTRAINT order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id FOREIGN KEY (SanPham_id) REFERENCES product_sanpham (id)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_chitietdonhang`
--

INSERT INTO order_chitietdonhang VALUES (1,45000,1,45000,1,5);
INSERT INTO order_chitietdonhang VALUES (2,49000,2,98000,1,3);
INSERT INTO order_chitietdonhang VALUES (3,69000,2,138000,1,6);
INSERT INTO order_chitietdonhang VALUES (4,69000,1,69000,2,6);
INSERT INTO order_chitietdonhang VALUES (5,45000,1,45000,2,5);
INSERT INTO order_chitietdonhang VALUES (6,49000,1,49000,2,3);
INSERT INTO order_chitietdonhang VALUES (7,30000,1,30000,2,1);
INSERT INTO order_chitietdonhang VALUES (8,45000,1,45000,3,5);
INSERT INTO order_chitietdonhang VALUES (9,49000,1,49000,3,3);
INSERT INTO order_chitietdonhang VALUES (10,45000,1,45000,4,5);
INSERT INTO order_chitietdonhang VALUES (11,49000,1,49000,4,3);
INSERT INTO order_chitietdonhang VALUES (12,69000,1,69000,4,6);
INSERT INTO order_chitietdonhang VALUES (13,30000,1,30000,4,1);
INSERT INTO order_chitietdonhang VALUES (14,69000,3,207000,5,6);
INSERT INTO order_chitietdonhang VALUES (15,45000,2,90000,5,5);
INSERT INTO order_chitietdonhang VALUES (16,49000,1,49000,5,3);
INSERT INTO order_chitietdonhang VALUES (17,45000,1,45000,6,5);
INSERT INTO order_chitietdonhang VALUES (18,49000,1,49000,6,3);
INSERT INTO order_chitietdonhang VALUES (19,30000,1,30000,6,1);
INSERT INTO order_chitietdonhang VALUES (20,55000,1,55000,7,38);
INSERT INTO order_chitietdonhang VALUES (21,45000,1,45000,7,36);
INSERT INTO order_chitietdonhang VALUES (22,50000,1,50000,8,37);
INSERT INTO order_chitietdonhang VALUES (23,45000,1,45000,8,36);
INSERT INTO order_chitietdonhang VALUES (24,30000,9,270000,10,1);
INSERT INTO order_chitietdonhang VALUES (25,69000,2,138000,10,6);
INSERT INTO order_chitietdonhang VALUES (26,34000,1,34000,10,11);
INSERT INTO order_chitietdonhang VALUES (27,60000,2,120000,10,21);
INSERT INTO order_chitietdonhang VALUES (28,50000,1,50000,10,37);
INSERT INTO order_chitietdonhang VALUES (29,55000,1,55000,10,38);
INSERT INTO order_chitietdonhang VALUES (30,45000,1,45000,11,36);
INSERT INTO order_chitietdonhang VALUES (31,43000,1,43000,11,35);
INSERT INTO order_chitietdonhang VALUES (32,49000,1,49000,12,3);
INSERT INTO order_chitietdonhang VALUES (33,49000,1,49000,13,2);
INSERT INTO order_chitietdonhang VALUES (34,49000,1,49000,14,2);
INSERT INTO order_chitietdonhang VALUES (49,50000,1,50000,25,37);
INSERT INTO order_chitietdonhang VALUES (50,45000,1,45000,25,36);
INSERT INTO order_chitietdonhang VALUES (51,43000,1,43000,25,35);
INSERT INTO order_chitietdonhang VALUES (52,30000,1,30000,26,1);
INSERT INTO order_chitietdonhang VALUES (53,49000,1,49000,26,3);
INSERT INTO order_chitietdonhang VALUES (54,55000,1,55000,27,38);
INSERT INTO order_chitietdonhang VALUES (55,50000,1,50000,27,37);

--
-- Table structure for table `order_donhang`
--

DROP TABLE IF EXISTS order_donhang;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE order_donhang (
  id bigint NOT NULL AUTO_INCREMENT,
  SoDienThoai varchar(11) NOT NULL,
  DiaChi longtext NOT NULL,
  TongTien int NOT NULL,
  GhiChu varchar(150) DEFAULT NULL,
  ThoiGian datetime(6) NOT NULL,
  TrangThai varchar(25) NOT NULL,
  KhachHang_id bigint NOT NULL,
  PhuongThuc varchar(25) NOT NULL,
  PRIMARY KEY (id),
  KEY order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id (KhachHang_id),
  CONSTRAINT order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id FOREIGN KEY (KhachHang_id) REFERENCES customer_khachhang (id)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_donhang`
--

INSERT INTO order_donhang VALUES (1,'0954092123','Saigon',326550,'','2023-12-13 09:45:50.877940','cxl',2,'cod');
INSERT INTO order_donhang VALUES (2,'0954092123','Saigon Gateway, XLHN',234150,'','2023-12-13 09:48:19.386849','cxl',2,'cod');
INSERT INTO order_donhang VALUES (3,'0954092123','2131',130200,'','2023-12-13 12:08:01.522856','khh',3,'cod');
INSERT INTO order_donhang VALUES (4,'0954092123','None',234150,'','2023-12-13 13:02:45.167670','cxl',3,'cod');
INSERT INTO order_donhang VALUES (5,'0954092123','HCM2',394800,'','2023-12-19 00:59:28.691227','cxl',1,'cod');
INSERT INTO order_donhang VALUES (6,'0954092123','Saigon',161700,'','2023-12-19 01:32:17.845777','dghh',4,'cod');
INSERT INTO order_donhang VALUES (7,'0954092123','HCM2',136500,'','2023-12-23 06:18:58.888374','cxl',6,'cod');
INSERT INTO order_donhang VALUES (8,'0954092123','hcm',131250,'','2023-12-23 11:03:55.085111','cxl',5,'cod');
INSERT INTO order_donhang VALUES (10,'0954092123','hcm',731850,'','2023-12-23 12:45:34.598116','dtt',4,'cod');
INSERT INTO order_donhang VALUES (11,'0380000802','HCM',123900,'','2023-12-23 12:46:35.552013','cxl',4,'cod');
INSERT INTO order_donhang VALUES (12,'0380000802','HCM',82950,'','2023-12-23 13:19:08.488012','cxl',4,'cod');
INSERT INTO order_donhang VALUES (13,'0380000802','HCM',82950,'','2023-12-23 13:22:27.502382','cxl',4,'cod');
INSERT INTO order_donhang VALUES (14,'0380000802','HCM',82950,'','2023-12-23 13:23:06.351770','cxl',4,'cod');
INSERT INTO order_donhang VALUES (25,'0380000802','HCM',176400,'','2023-12-27 20:53:52.679867','cxl',4,'cod');
INSERT INTO order_donhang VALUES (26,'0380000802','HCM',114450,'','2023-12-27 21:13:49.699308','cxl',4,'cod');
INSERT INTO order_donhang VALUES (27,'0380000802','HCM',141750,'','2023-12-27 21:14:53.812227','dtt',4,'ppl');

--
-- Table structure for table `product_chuyenmuc`
--

DROP TABLE IF EXISTS product_chuyenmuc;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE product_chuyenmuc (
  id bigint NOT NULL AUTO_INCREMENT,
  TenChuyenMuc varchar(255) NOT NULL,
  DuongDan varchar(50) DEFAULT NULL,
  HinhAnh varchar(100) DEFAULT NULL,
  created_at datetime(6) NOT NULL,
  updated_at datetime(6) NOT NULL,
  PRIMARY KEY (id),
  KEY product_chuyenmuc_DuongDan_e77170d5 (DuongDan)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_chuyenmuc`
--

INSERT INTO product_chuyenmuc VALUES (1,'Bánh mặn','banh-man','uploads/banhmi1.jpg','2023-11-14 01:37:37.972491','2023-11-14 01:37:37.972491');
INSERT INTO product_chuyenmuc VALUES (2,'Trà trái cây','tra-trai-cay','uploads/img5_dtmdUb7.jpg','2023-11-14 01:57:30.642647','2023-11-14 01:57:30.642647');
INSERT INTO product_chuyenmuc VALUES (3,'Bánh ngọt','banh-ngot','uploads/mousegau1.jpg','2023-11-18 12:24:20.509801','2023-11-18 12:24:20.509801');
INSERT INTO product_chuyenmuc VALUES (4,'Cloud','cloud','uploads/Cloud.webp','2023-12-20 23:40:50.323707','2023-12-20 23:40:50.323707');
INSERT INTO product_chuyenmuc VALUES (5,'Đá xay Frosty','a-xay-frosty','uploads/frosty.png','2023-12-20 23:43:14.278774','2023-12-20 23:44:07.214909');
INSERT INTO product_chuyenmuc VALUES (6,'Cà phê','ca-phe','uploads/caphe.jpg','2023-12-20 23:45:06.731719','2023-12-20 23:45:06.731719');
INSERT INTO product_chuyenmuc VALUES (7,'Bánh Pastry','banh-pastry','uploads/banhpastry.jpg','2023-12-20 23:47:01.095482','2023-12-20 23:47:01.095482');

--
-- Table structure for table `product_sanpham`
--

DROP TABLE IF EXISTS product_sanpham;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE product_sanpham (
  id bigint NOT NULL AUTO_INCREMENT,
  TenSanPham varchar(255) NOT NULL,
  GiaKhuyenMai int NOT NULL,
  GiaBan int NOT NULL,
  PhanTramGiam int DEFAULT NULL,
  MoTaNgan longtext NOT NULL,
  MoTaDai longtext NOT NULL,
  The varchar(255) NOT NULL,
  AnhChinh varchar(100) DEFAULT NULL,
  AnhPhu1 varchar(100) DEFAULT NULL,
  AnhPhu2 varchar(100) DEFAULT NULL,
  AnhPhu3 varchar(100) DEFAULT NULL,
  DuongDan varchar(50) DEFAULT NULL,
  TrangThai tinyint(1) NOT NULL,
  created_at datetime(6) NOT NULL,
  updated_at datetime(6) NOT NULL,
  ChuyenMuc_id bigint NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY TenSanPham (TenSanPham),
  KEY product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id (ChuyenMuc_id),
  KEY product_sanpham_DuongDan_8974332b (DuongDan),
  CONSTRAINT product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id FOREIGN KEY (ChuyenMuc_id) REFERENCES product_chuyenmuc (id)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sanpham`
--

INSERT INTO product_sanpham VALUES (1,'Bánh mì thịt nguội',35000,30000,14,'Bánh mì nhân thịt nguội','<p>G&oacute;i gọn trong ổ b&aacute;nh m&igrave; Việt Nam l&agrave; từng lớp chả, từng lớp jambon h&ograve;a quyện c&ugrave;ng bơ v&agrave; pate thơm lừng, th&ecirc;m dưa rau cho bữa s&aacute;ng đầy năng lượng.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-61px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>','Blog ăn uống','uploads/banhmi1_cgb8N6C.jpg','uploads/banhmi2.jpeg','uploads/banhmi3.jpeg','uploads/img4_693ihJE.jpg','banh-mi-thit-nguoi',1,'2023-11-14 01:39:00.812514','2023-12-20 23:48:38.609887',1);
INSERT INTO product_sanpham VALUES (2,'Trà Long Nhãn Hạt Sen',59000,49000,16,'Trà Long Nhãn Hạt Sen','<p>Thức uống mang hương vị của nh&atilde;n, của sen, của tr&agrave; Oolong đầy thanh m&aacute;t cho tất cả c&aacute;c th&agrave;nh vi&ecirc;n trong dịp Tết n&agrave;y. An l&agrave;nh, thư th&aacute;i v&agrave; đậm đ&agrave; ch&iacute;nh l&agrave; những g&igrave; The Coffee House mong muốn gửi trao đến bạn v&agrave; gia đ&igrave;nh.</p>','trà đạo','uploads/tra1.jpg','uploads/tra2.jpg','uploads/tra1_IqIXWhD.jpg','uploads/tra2_bENSsmz.jpg','tra-long-nhan-hat-sen',0,'2023-11-14 02:04:43.535305','2023-12-20 23:49:35.200523',2);
INSERT INTO product_sanpham VALUES (3,'Hi Tea Vải',69000,49000,28,'Hi Tea hương Vải','<p>Ch&uacute;t ngọt ng&agrave;o của Vải, mix c&ugrave;ng vị chua thanh tao từ tr&agrave; hoa Hibiscus, mang đến cho bạn thức uống đ&uacute;ng chuẩn vừa ngon, vừa healthy.</p>','trà đạo','uploads/hitea1.jpg','uploads/hitea3.jpg','uploads/hitea2.jpg','uploads/hitea1_BIvEoyd.jpg','hi-tea-vai',1,'2023-11-14 02:32:02.451304','2023-12-20 23:49:46.865316',2);
INSERT INTO product_sanpham VALUES (5,'Mousse Red Velvet',55000,45000,18,'Bánh nhiều lớp được phủ lớp kem bên trên bằng Cream cheese.','<p>B&aacute;nh nhiều lớp được phủ lớp kem b&ecirc;n tr&ecirc;n bằng Cream cheese.</p>','Blog ăn uống','uploads/tiramisu1.jpg','uploads/tiramisu2.jpg','uploads/tiramisu3.jpg','uploads/tiramisu2_HJq8qLj.jpg','mousse-red-velvet',1,'2023-11-18 12:43:16.795759','2023-11-18 12:43:16.795759',3);
INSERT INTO product_sanpham VALUES (6,'Chà Bông Phô Mai',79000,69000,12,'Chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.','<p>Chiếc b&aacute;nh với lớp ph&ocirc; mai v&agrave;ng s&aacute;nh mịn b&ecirc;n trong, được bọc ngo&agrave;i lớp vỏ xốp mềm thơm lừng. Th&ecirc;m lớp ch&agrave; b&ocirc;ng mằn mặn hấp dẫn b&ecirc;n tr&ecirc;n.</p>','Blog ăn uống','uploads/chabong1.png','uploads/chabong2.png','uploads/chabong3.png','uploads/chabong2_2PadUTK.png','cha-bong-pho-mai',1,'2023-11-18 12:45:15.153006','2023-11-18 15:12:09.519740',1);
INSERT INTO product_sanpham VALUES (7,'Bánh Mì Gậy Gà Kim Quất',25000,21000,16,'Bánh Mì Gậy Gà Kim Quất','<p>Phi&ecirc;n bản n&acirc;ng cấp với trọng lượng tăng 80% so với b&aacute;nh m&igrave; que th&ocirc;ng thường, đem đến cho bạn bữa ăn nhanh gọn m&agrave; vẫn đầy đủ dinh dưỡng. Cắn một miếng l&agrave; m&ecirc; mẩn bởi vỏ b&aacute;nh nướng gi&ograve;n rụm, nh&acirc;n đậm vị với từng miếng thịt g&agrave; mềm, ướp sốt kim quất chua ngọt, thơm nức đặc trưng. C&agrave;ng &quot;đ&uacute;ng b&agrave;i&quot; hơn khi thưởng thức k&egrave;m C&agrave; ph&ecirc; đượm vị hoặc tr&agrave; Hi-Tea thanh m&aacute;t.</p>','Bánh mì','uploads/banhmigayga.webp','uploads/banhmigayga_pqQX0Dh.webp','uploads/banhmigayga_RDBp3RK.webp','uploads/banhmigayga_fRDECyh.webp','banh-mi-gay-ga-kim-quat',1,'2023-12-20 23:53:15.798987','2023-12-20 23:53:15.798987',1);
INSERT INTO product_sanpham VALUES (8,'Bánh Mì Gậy Cá Ngừ Mayo',25000,21000,16,'Bánh Mì Gậy Cá Ngừ Mayo','<p>Trọng lượng tăng 70% so với b&aacute;nh m&igrave; que th&ocirc;ng thường, th&ecirc;m nhiều dinh dưỡng, th&iacute;ch hợp cho cả bữa ăn nhẹ lẫn ăn no. Ngon hết chỗ ch&ecirc; từ vỏ b&aacute;nh nướng n&oacute;ng gi&ograve;n, c&aacute; ngừ đậm đ&agrave; quyện lẫn sốt mayo thơm b&eacute;o đến từng hạt bắp ngọt b&ugrave;i hấp dẫn. Nh&acirc;m nhi b&aacute;nh c&ugrave;ng ly C&agrave; ph&ecirc; thơm nồng hay Hi-Tea tươi m&aacute;t th&igrave; đ&uacute;ng chuẩn &quot;điểm mười&quot;.</p>','Bánh mì','uploads/banhmituna.webp','uploads/banhmituna_XBHyd48.webp','uploads/banhmituna_ee5Ob1M.webp','uploads/banhmituna_zY1yTSW.webp','banh-mi-gay-ca-ngu-mayo',1,'2023-12-20 23:54:51.420998','2023-12-20 23:54:51.420998',1);
INSERT INTO product_sanpham VALUES (9,'Bánh Mì Que Pate',15000,12000,20,'Bánh Mì Que Pate','<p>Vỏ b&aacute;nh m&igrave; gi&ograve;n tan, kết hợp với lớp nh&acirc;n pate b&eacute;o b&eacute;o đậm đ&agrave; sẽ l&agrave; lựa chọn l&yacute; tưởng nhẹ nh&agrave;ng để lấp đầy chiếc bụng đ&oacute;i , cho 1 bữa s&aacute;ng - trưa - chiều - tối của bạn th&ecirc;m phần th&uacute; vị.</p>','Bánh mì','uploads/quepate1.webp','uploads/quepate2.webp','uploads/quepate3.webp','uploads/quepate1_25CGice.webp','banh-mi-que-pate',1,'2023-12-20 23:56:43.772022','2023-12-20 23:56:43.772022',1);
INSERT INTO product_sanpham VALUES (10,'Bánh Mì Que Pate Cay',15000,14000,6,'Bánh Mì Que Pate Cay','<p>Vỏ b&aacute;nh m&igrave; gi&ograve;n tan, kết hợp với lớp nh&acirc;n pate b&eacute;o b&eacute;o đậm đ&agrave; v&agrave; 1 ch&uacute;t cay cay sẽ l&agrave; lựa chọn l&yacute; tưởng nhẹ nh&agrave;ng để lấp đầy chiếc bụng đ&oacute;i , cho 1 bữa s&aacute;ng - trưa - chiều - tối của bạn th&ecirc;m phần th&uacute; vị.</p>','Bánh mì','uploads/quepate4.webp','uploads/quepate1_dQD6YYw.webp','uploads/quepate3_jHDCBpi.webp','uploads/quepate2_f5yZb9w.webp','banh-mi-que-pate-cay',1,'2023-12-20 23:58:43.754009','2023-12-20 23:59:03.531015',1);
INSERT INTO product_sanpham VALUES (11,'Croissant trứng muối',40000,34000,15,'Croissant trứng muối','<p>Croissant trứng muối thơm lừng, b&ecirc;n ngo&agrave;i vỏ b&aacute;nh gi&ograve;n hấp dẫn b&ecirc;n trong trứng muối vị ngon kh&oacute; cưỡng.</p>','Croissant','uploads/Croissanttrungmuoi1.webp','uploads/Croissanttrungmuoi2.webp','uploads/Croissanttrungmuoi1_qdEsDCf.webp','uploads/Croissanttrungmuoi2_Rl7rpaN.webp','croissant-trung-muoi',1,'2023-12-21 00:01:12.487124','2023-12-21 00:01:12.487124',1);
INSERT INTO product_sanpham VALUES (12,'Mochi Kem Phúc Bồn Tử',25000,19000,24,'Mochi Kem Phúc Bồn Tử','<p>Bao bọc bởi lớp vỏ Mochi dẻo thơm, b&ecirc;n trong l&agrave; lớp kem lạnh c&ugrave;ng nh&acirc;n ph&uacute;c bồn tử ngọt ng&agrave;o. Gọi 1 chiếc Mochi cho ng&agrave;y thật tươi m&aacute;t. Sản phẩm phải bảo qu&aacute;n m&aacute;t v&agrave; d&ugrave;ng ngon nhất trong 2h sau khi nhận h&agrave;ng.</p>','Mochi','uploads/Mochipbt1.webp','uploads/mochipbt2.webp','uploads/Mochipbt1_I3y75r6.webp','uploads/mochipbt2_flmOv8f.webp','mochi-kem-phuc-bon-tu',1,'2023-12-21 00:03:37.222629','2023-12-21 00:04:54.597688',3);
INSERT INTO product_sanpham VALUES (13,'Mochi Kem Việt Quất',21000,17000,19,'Mochi Kem Việt Quất','<p>Bao bọc bởi lớp vỏ Mochi dẻo thơm, b&ecirc;n trong l&agrave; lớp kem lạnh c&ugrave;ng nh&acirc;n việt quất đặc trưng thơm thơm, ngọt dịu. Gọi 1 chiếc Mochi cho ng&agrave;y thật tươi m&aacute;t. Sản phẩm phải bảo qu&aacute;n m&aacute;t v&agrave; d&ugrave;ng ngon nhất trong 2h sau khi nhận h&agrave;ng.</p>','Mochi','uploads/mochivquat1.webp','uploads/mochivquat2.webp','uploads/mochivquat1_ue3s4La.webp','uploads/mochivquat2_HCBdxYz.webp','mochi-kem-viet-quat',1,'2023-12-21 00:06:48.075435','2023-12-21 00:06:48.075435',3);
INSERT INTO product_sanpham VALUES (14,'Mochi Kem Dừa Dứa',21000,19000,9,'Mochi Kem Dừa Dứa','<p>Bao bọc bởi lớp vỏ Mochi dẻo thơm, b&ecirc;n trong l&agrave; lớp kem lạnh c&ugrave;ng nh&acirc;n dừa dứa thơm lừng lạ miệng. Gọi 1 chiếc Mochi cho ng&agrave;y thật tươi m&aacute;t. Sản phẩm phải bảo qu&aacute;n m&aacute;t v&agrave; d&ugrave;ng ngon nhất trong 2h sau khi nhận h&agrave;ng.</p>','Mochi','uploads/mochikemdd1.webp','uploads/mochikemdd2.webp','uploads/mochikemdd1_eANG0K9.webp','uploads/mochikemdd2_nl5403C.webp','mochi-kem-dua-dua',1,'2023-12-21 00:09:06.729700','2023-12-21 00:09:06.729700',3);
INSERT INTO product_sanpham VALUES (15,'Mousse Gấu Chocolate',40000,34000,15,'Mousse Gấu Chocolate','<p>Với vẻ ngo&agrave;i đ&aacute;ng y&ecirc;u v&agrave; hương vị ngọt ng&agrave;o, thơm b&eacute;o nhất định bạn phải thử &iacute;t nhất 1 lần.</p>','Mouse','uploads/mousebear.webp','uploads/mousebear1.webp','uploads/mousebear2.webp','uploads/mousebear_wqa3JoD.webp','mousse-gau-chocolate',1,'2023-12-21 00:10:32.561514','2023-12-21 00:10:32.562511',3);
INSERT INTO product_sanpham VALUES (16,'Mousse Tiramisu',27000,20000,25,'Mousse Tiramisu','<p>Hương vị dễ ghiền được tạo n&ecirc;n bởi ch&uacute;t đắng nhẹ của c&agrave; ph&ecirc;, lớp kem trứng b&eacute;o ngọt dịu hấp dẫn</p>','Tiramisu','uploads/tiramisu1.webp','uploads/tiramisu2.webp','uploads/tiramisu3_gnDFmWJ.jpg','uploads/tiramisu1_VS9K7dA.webp','mousse-tiramisu',1,'2023-12-21 00:13:44.657398','2023-12-21 00:13:44.657398',3);
INSERT INTO product_sanpham VALUES (17,'Butter Croissant',29000,19000,34,'Butter Croissant','<p>Cắn một miếng, vỏ b&aacute;nh ng&agrave;n lớp gi&ograve;n thơm bơ b&eacute;o, rồi mịn tan trong miệng. Cực d&iacute;nh khi nh&acirc;m nhi Butter Croissant với c&agrave; ph&ecirc; hoặc chấm c&ugrave;ng c&aacute;c m&oacute;n nước c&oacute; foam trứng của Nh&agrave;</p>','Croissant','uploads/ButterCroissant1.webp','uploads/ButterCroissant2.jpg','uploads/ButterCroissant3.jpg','uploads/ButterCroissant1_851nPJ7.webp','butter-croissant',1,'2023-12-21 00:16:14.602113','2023-12-21 00:16:14.602113',7);
INSERT INTO product_sanpham VALUES (18,'Choco Croffle',39000,29000,25,'Choco Croffle','<p>Lạ mắt, bắt vị với chiếc b&aacute;nh Croffle được l&agrave;m từ cốt b&aacute;nh Croissant nướng trong khu&ocirc;n Waffle tổ ong. Trong mềm mịn, ngo&agrave;i gi&ograve;n thơm, th&ecirc;m topping s&ocirc; c&ocirc; la tan chảy, ăn l&agrave; y&ecirc;u!</p>','Croffle','uploads/ChocoCroffle1.webp','uploads/ChocoCroffle2.jpeg','uploads/ChocoCroffle3.jpg','uploads/ChocoCroffle4.png','choco-croffle',1,'2023-12-21 00:19:32.327983','2023-12-21 00:19:32.327983',7);
INSERT INTO product_sanpham VALUES (19,'Pate Chaud',46000,40000,13,'Pate Chaud','<p>Ngon nức l&ograve;ng c&ugrave;ng nh&acirc;n pat&ecirc; v&agrave; thịt heo cuộn m&igrave;nh trong vỏ b&aacute;nh ng&agrave;n lớp thơm bơ, gi&ograve;n rụm.</p>','Pate Chaud','uploads/PateChaud.webp','uploads/PateChaud1.jpg','uploads/PateChaud2.jpg','uploads/PateChaud3.jpg','pate-chaud',1,'2023-12-21 00:21:55.191689','2023-12-21 00:21:55.191689',7);
INSERT INTO product_sanpham VALUES (20,'Phin Sữa Tươi Bánh Flan',45000,40000,11,'Phin Sữa Tươi Bánh Flan','<p>Tỉnh tức th&igrave; c&ugrave;ng c&agrave; ph&ecirc; Robusta pha phin đậm đ&agrave; v&agrave; b&aacute;nh flan n&uacute;ng n&iacute;nh. Uống l&agrave; tỉnh, ăn l&agrave; d&iacute;nh, xứng đ&aacute;ng l&agrave; highlight trong ng&agrave;y của bạn.</p>','Cà Phê Highlight','uploads/phinsuatuoiflan.webp','uploads/phinsuatuoiflan_QwYsPw2.webp','uploads/phinsuatuoiflan_OoldjSh.webp','uploads/phinsuatuoiflan_Q88s4mF.webp','phin-sua-tuoi-banh-flan',1,'2023-12-21 00:24:33.308066','2023-12-21 00:24:33.308066',6);
INSERT INTO product_sanpham VALUES (21,'Trà Xanh Espresso Marble',64000,60000,6,'Trà Xanh Espresso Marble','<p>Cho ng&agrave;y th&ecirc;m tươi, tỉnh, &ecirc;m, mượt với Tr&agrave; Xanh Espresso Marble. Đ&acirc;y l&agrave; sự mai mối bất ngờ giữa tr&agrave; xanh T&acirc;y Bắc vị mộc v&agrave; c&agrave; ph&ecirc; Arabica Đ&agrave; Lạt. Muốn ng&agrave;y th&ecirc;m ch&uacute;t highlight, nhớ t&igrave;m đến sự bất ngờ n&agrave;y bạn nh&eacute;!</p>','Cà Phê Highlight','uploads/tra-xanh-espresso-marble1.webp','uploads/tra-xanh-espresso-marble1_XlZ2Bsw.webp','uploads/tra-xanh-espresso-marble1_y8Yr2Yb.webp','uploads/tra-xanh-espresso-marble1_oie3BOt.webp','tra-xanh-espresso-marble',1,'2023-12-21 00:25:50.511014','2023-12-21 00:25:50.511014',6);
INSERT INTO product_sanpham VALUES (22,'Cold Brew Phúc Bồn Tử',54000,50000,7,'Cold Brew Phúc Bồn Tử','<p>Vị chua ngọt của tr&aacute;i ph&uacute;c bồn tử, l&agrave;m dậy l&ecirc;n hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n vốn sẵn c&oacute; trong hạt c&agrave; ph&ecirc;, h&ograve;a quyện th&ecirc;m vị đăng đắng, ngọt dịu nhẹ nh&agrave;ng của Cold Brew 100% hạt Arabica Cầu Đất để mang đến một c&aacute;ch thưởng thức c&agrave; ph&ecirc; ho&agrave;n to&agrave;n mới, vừa thơm lừng hương c&agrave; ph&ecirc; quen thuộc, vừa nhẹ nh&agrave;ng v&agrave; thanh m&aacute;t bởi hương tr&aacute;i c&acirc;y đầy th&uacute; vị.</p>','Cold Brew','uploads/ColdBrewPBT.jpg','uploads/ColdBrewPBT1.jpg','uploads/ColdBrewPBT2.jpg','uploads/ColdBrewPBT3.jpg','cold-brew-phuc-bon-tu',1,'2023-12-21 00:55:33.429331','2023-12-21 00:55:33.429331',6);
INSERT INTO product_sanpham VALUES (23,'Cold Brew Sữa Tươi',45000,40000,11,'Cold Brew Sữa Tươi','<p>Thanh m&aacute;t v&agrave; c&acirc;n bằng với hương vị c&agrave; ph&ecirc; nguy&ecirc;n bản 100% Arabica Cầu Đất c&ugrave;ng sữa tươi thơm b&eacute;o cho từng ngụm tr&ograve;n vị, hấp dẫn.</p>','Cold Brew','uploads/ColdBrewmilk.webp','uploads/ColdBrewmilk1.webp','uploads/ColdBrewmilk2.webp','uploads/ColdBrewmilk2_Pc9D2M3.webp','cold-brew-sua-tuoi',1,'2023-12-21 01:00:47.904061','2023-12-21 01:00:47.904061',6);
INSERT INTO product_sanpham VALUES (24,'Đường Đen Marble Latte',46000,40000,13,'Đường Đen Marble Latte','<p>Đường Đen Marble Latte &ecirc;m dịu cực hấp dẫn bởi vị c&agrave; ph&ecirc; đắng nhẹ ho&agrave; quyện c&ugrave;ng vị đường đen ngọt thơm v&agrave; sữa tươi b&eacute;o mịn. Sự kết hợp đầy mới mẻ của c&agrave; ph&ecirc; v&agrave; đường đen cũng tạo n&ecirc;n diện mạo ph&acirc;n tầng đẹp mắt. Đ&acirc;y l&agrave; lựa chọn đ&aacute;ng thử để bạn khởi đầu ng&agrave;y mới đầy hứng khởi. - Khuấy đều trước khi sử dụng</p>','Cà Phê Máy','uploads/ddlatte1.webp','uploads/ColdBrewmilk1_SyiQEzY.webp','uploads/ColdBrewmilk2_0herg3J.webp','uploads/ColdBrewmilk1_SbccjUn.webp','uong-en-marble-latte',1,'2023-12-21 01:02:38.099268','2023-12-21 01:02:38.099268',6);
INSERT INTO product_sanpham VALUES (25,'Americano Đá',45000,40000,11,'Americano Đá','<p>Americano được pha chế bằng c&aacute;ch pha th&ecirc;m nước với tỷ lệ nhất định v&agrave;o t&aacute;ch c&agrave; ph&ecirc; Espresso, từ đ&oacute; mang lại hương vị nhẹ nh&agrave;ng v&agrave; giữ trọn được m&ugrave;i hương c&agrave; ph&ecirc; đặc trưng.</p>','Cà Phê Máy','uploads/americanoda.webp','uploads/americanoda1.webp','uploads/americanoda2.webp','uploads/americanoda3.webp','americano-a',1,'2023-12-21 01:05:57.067821','2023-12-21 01:05:57.067821',6);
INSERT INTO product_sanpham VALUES (26,'CloudTea Trà Xanh Tây Bắc',70000,67000,4,'CloudTea Trà Xanh Tây Bắc','<p>Kh&ocirc;ng thể rời m&ocirc;i với Mochi Kem Matcha dẻo mịn, n&uacute;ng n&iacute;nh. Tr&agrave; Xanh T&acirc;y Bắc vị mộc ho&agrave; quyện sữa tươi, foam ph&ocirc; mai beo b&eacute;o v&agrave; vụn b&aacute;nh quy gi&ograve;n tan, l&agrave; lựa chọn đậm kh&ocirc;ng kh&iacute; lễ hội. M&oacute;n kh&ocirc;ng thể thiếu đ&aacute;, để ngoại h&igrave;nh v&agrave; chất lượng được đảm bảo.</p>','CloudTea','uploads/cloudteatraxanhtb.jpg','uploads/cloudteatraxanhtb1.webp','uploads/cloudteatraxanhtb2.jpg','uploads/cloudteatraxanhtb_45AYerX.jpg','cloudtea-tra-xanh-tay-bac',1,'2023-12-21 01:10:36.155456','2023-12-21 01:10:36.155456',4);
INSERT INTO product_sanpham VALUES (27,'CloudTea Oolong Berry',54000,47000,12,'CloudTea Oolong Berry','<p>Cắn một c&aacute;i, chua chua ngọt ngọt ngon đến từng tế b&agrave;o với chiếc Mochi Kem Ph&uacute;c Bồn Tử! H&uacute;t một ngụm, m&ecirc; lu&ocirc;n Tr&agrave; Oolong Sữa dịu &ecirc;m quyện vị d&acirc;u, c&ugrave;ng lớp foam ph&ocirc; mai phủ vụn b&aacute;nh quy ph&ocirc; mai mằn mặn. M&oacute;n kh&ocirc;ng thể thiếu đ&aacute;, để ngoại h&igrave;nh v&agrave; chất lượng được đảm bảo.</p>','CloudTea','uploads/CloudTeaOolongBerry.jpg','uploads/CloudTeaOolongBerry1.jpg','uploads/CloudTea_Oolong_Berry2.jpg','uploads/CloudTeaOolongBerry_g6giWI1.jpg','cloudtea-oolong-berry',1,'2023-12-21 01:17:12.087786','2023-12-21 01:17:12.087786',4);
INSERT INTO product_sanpham VALUES (28,'CloudTea Oolong Nướng Kem Dừa',55000,50000,9,'CloudTea Oolong Nướng Kem Dừa','<p>Vừa chạm m&ocirc;i l&agrave; m&ecirc; mẩn ngay lớp kem dừa beo b&eacute;o, k&egrave;m vụn b&aacute;nh quy ph&ocirc; mai gi&ograve;n tan trong miệng. Đặc biệt, tr&agrave; Oolong nướng đậm đ&agrave;, h&ograve;a c&ugrave;ng sữa dừa ngọt dịu. Hương vị th&ecirc;m b&ugrave;ng nổ nhờ c&oacute; thạch Oolong nướng nguy&ecirc;n chất, gi&ograve;n dai.</p>','CloudTea','uploads/cloudtea-oolong-nuong-kem-dua.webp','uploads/cloudtea-oolong-nuong-kem-dua_uv5map3.webp','uploads/cloudtea-oolong-nuong-kem-dua_ZT7GFLH.webp','uploads/cloudtea-oolong-nuong-kem-dua_qKAP0NA.webp','cloudtea-oolong-nuong-kem-dua',1,'2023-12-21 01:18:21.022958','2023-12-21 01:18:21.022958',4);
INSERT INTO product_sanpham VALUES (30,'CloudTea Oolong Nướng Kem Cheese',55000,50000,9,'CloudTea Oolong Nướng Kem Cheese','<p>Hội m&ecirc; cheese sao c&oacute; thể bỏ lỡ chiếc tr&agrave; sữa si&ecirc;u mlem n&agrave;y. M&oacute;n đậm vị Oolong nướng - nền tr&agrave; được y&ecirc;u th&iacute;ch nhất hiện nay, quyện th&ecirc;m kem sữa thơm b&eacute;o. Đặc biệt, chinh phục ngay fan ghiền cheese bởi lớp foam ph&ocirc; mai mềm tan mằn mặn. C&agrave;ng ngon cực với thạch Oolong nướng nguy&ecirc;n chất gi&ograve;n dai nhai si&ecirc;u th&iacute;ch.</p>','CloudTea','uploads/CloudTeanuongcheese.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','cloudtea-oolong-nuong-kem-cheese',1,'2023-12-21 01:29:16.183857','2023-12-21 01:29:16.183857',4);
INSERT INTO product_sanpham VALUES (31,'CloudFee Hạnh Nhân Nướng',49000,39000,20,'CloudFee Hạnh Nhân Nướng','<p>Vị đắng nhẹ từ c&agrave; ph&ecirc; phin truyền thống kết hợp Espresso &Yacute;, lẫn ch&uacute;t ngọt ngào của kem sữa và lớp foam trứng cacao, nhấn th&ecirc;m hạnh nh&acirc;n nướng thơm b&ugrave;i, k&egrave;m topping thạch c&agrave; ph&ecirc; dai gi&ograve;n m&ecirc; ly. Tất cả c&ugrave;ng quyện ho&agrave; trong một thức uống l&agrave;m vị gi&aacute;c &quot;thức giấc&quot;, thơm ngon hết nấc.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-334px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>','CloudFee','uploads/CloudFeehanhnhannuong.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','cloudfee-hanh-nhan-nuong',1,'2023-12-21 01:31:49.045730','2023-12-21 01:31:49.045730',4);
INSERT INTO product_sanpham VALUES (32,'CloudFee Caramel',76000,70000,7,'CloudFee Caramel','<p>Ngon kh&oacute; cưỡng bởi x&iacute;u đắng nhẹ từ c&agrave; ph&ecirc; phin truyền thống pha tr&ocirc;̣n với Espresso lừng danh nước &Yacute;, quyện vị kem sữa v&agrave; caramel ngọt ngọt, th&ecirc;m lớp foam trứng cacao bồng bềnh b&eacute;o mịn, k&egrave;m topping thạch c&agrave; ph&ecirc; dai gi&ograve;n nhai cực cuốn. Một thức uống &quot;điểm mười&quot; cho cả ng&agrave;y tươi kh&ocirc;ng cần tưới.</p>','CloudFee','uploads/CloudFeecaramel.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','cloudfee-caramel',1,'2023-12-21 01:33:22.562207','2023-12-21 01:33:22.562207',4);
INSERT INTO product_sanpham VALUES (33,'CloudFee Hà Nội',49000,45000,8,'CloudFee Hà Nội','<p>Khiến bạn m&ecirc; mẩn ngay ngụm đầu ti&ecirc;n bởi vị đắng nhẹ của c&agrave; ph&ecirc; phin truyền thống kết hợp Espresso &Yacute;, quy&ecirc;̣n hòa cùng ch&uacute;t ngọt ng&agrave;o của kem sữa, và thơm b&eacute;o từ foam trứng cacao. Nhấp một ngụm rồi nhai c&ugrave;ng thạch c&agrave; ph&ecirc; dai dai gi&ograve;n gi&ograve;n, đ&uacute;ng chuẩn &quot;ngon qu&ecirc;n lối về&quot;. CloudFee Classic l&agrave; m&oacute;n đậm vị c&agrave; ph&ecirc; nhất trong bộ sưu tập nhưng kh&ocirc;ng qu&aacute; đắng, ngậy nhưng kh&ocirc;ng hề ngấy.</p>','CloudFee','uploads/CloudFeehanoi.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','cloudfee-ha-noi',1,'2023-12-21 01:35:14.013399','2023-12-21 01:35:14.013399',4);
INSERT INTO product_sanpham VALUES (34,'Frosty Phin Gato',55000,50000,9,'Frosty Phin Gato','<p>Đ&aacute; Xay Frosty Phin-Gato l&agrave; lựa chọn kh&ocirc;ng thể bỏ lỡ cho t&iacute;n đồ c&agrave; ph&ecirc;. C&agrave; ph&ecirc; nguy&ecirc;n chất pha phin truyền thống, thơm đậm đ&agrave;, đắng mượt m&agrave;, quyện c&ugrave;ng kem sữa b&eacute;o ngậy v&agrave; đ&aacute; xay m&aacute;t lạnh. Nh&acirc;n đ&ocirc;i vị c&agrave; ph&ecirc; nhờ c&oacute; th&ecirc;m thạch c&agrave; ph&ecirc; đậm đ&agrave;, gi&ograve;n dai. Thức uống khơi ngay sự tỉnh t&aacute;o tức th&igrave;. Lưu &yacute;: Khuấy đều phần đ&aacute; xay trước khi d&ugrave;ng</p>','Frosty','uploads/frostyphingato.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','frosty-phin-gato',1,'2023-12-21 01:38:32.313055','2023-12-21 01:38:32.314052',5);
INSERT INTO product_sanpham VALUES (35,'Frosty Cà Phê Đường Đen',50000,43000,14,'Frosty Cà Phê Đường Đen','<p>Đ&aacute; Xay Frosty C&agrave; Ph&ecirc; Đường Đen m&aacute;t lạnh, sảng kho&aacute;i ngay từ ngụm đầu ti&ecirc;n nhờ sự kết hợp vượt chuẩn vị quen giữa Espresso đậm đ&agrave; v&agrave; Đường Đen ngọt thơm. Đặc biệt, whipping cream beo b&eacute;o c&ugrave;ng thạch c&agrave; ph&ecirc; gi&ograve;n dai, đậm vị nh&acirc;n đ&ocirc;i sự hấp dẫn, khơi bừng sự hứng khởi trong t&iacute;ch tắc.</p>','Frosty','uploads/frosty-ca-phe-duong-den.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','frosty-ca-phe-uong-en',1,'2023-12-21 01:40:02.152597','2023-12-21 01:40:02.152597',5);
INSERT INTO product_sanpham VALUES (36,'Frosty Caramel Arabica',50000,45000,10,'Frosty Caramel Arabica','<p>Caramel ngọt thơm quyện c&ugrave;ng c&agrave; ph&ecirc; Arabica Cầu Đất đượm hương gỗ th&ocirc;ng, hạt dẻ v&agrave; nốt s&ocirc; c&ocirc; la đặc trưng tạo n&ecirc;n Đ&aacute; Xay Frosty Caramel Arabica độc đ&aacute;o chỉ c&oacute; tại Nh&agrave;. Cực cuốn với lớp whipping cream b&eacute;o mịn, th&ecirc;m thạch c&agrave; ph&ecirc; gi&ograve;n ngon bắt miệng.</p>','Frosty','uploads/frosty_caramel-arabica.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','frosty-caramel-arabica',1,'2023-12-21 01:41:37.299839','2023-12-21 01:41:37.299839',5);
INSERT INTO product_sanpham VALUES (37,'Frosty Bánh Kem Dâu',60000,50000,16,'Frosty Bánh Kem Dâu','<p>Bồng bềnh như một đ&aacute;m m&acirc;y, Đ&aacute; Xay Frosty B&aacute;nh Kem D&acirc;u vừa ngon mắt vừa chiều vị gi&aacute;c bằng sự ngọt ng&agrave;o. Bắt đầu bằng c&aacute;i chạm m&ocirc;i với lớp kem whipping cream, cảm nhận ngay vị beo b&eacute;o lẫn sốt d&acirc;u thơm lừng. Sau đ&oacute;, h&uacute;t một ngụm l&agrave; cuốn kh&oacute; cưỡng bởi đ&aacute; xay m&aacute;t lạnh quyện c&ugrave;ng sốt d&acirc;u ngọt dịu. Lưu &yacute;: Khuấy đều phần đ&aacute; xay trước khi d&ugrave;ng.</p>','Frosty','uploads/frosty_banh-kem-dau.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','frosty-banh-kem-dau',1,'2023-12-21 01:43:14.471580','2023-12-21 01:43:14.471580',5);
INSERT INTO product_sanpham VALUES (38,'Frosty Choco Chip',60000,55000,8,'Frosty Choco Chip','<p>Đ&aacute; Xay Frosty Choco Chip, thử l&agrave; đ&atilde;! Lớp whipping cream bồng bềnh, beo b&eacute;o lại c&oacute; th&ecirc;m bột s&ocirc; c&ocirc; la v&agrave; s&ocirc; c&ocirc; la chip tr&ecirc;n c&ugrave;ng. Gấp đ&ocirc;i vị ngon với s&ocirc; c&ocirc; la thật xay với đ&aacute; s&aacute;nh mịn, đậm đ&agrave; đến tận ngụm cuối c&ugrave;ng.</p>','Frosty','uploads/frosty_choco-chip.webp','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','frosty-choco-chip',1,'2023-12-21 01:44:26.470524','2023-12-25 15:14:39.059809',5);
INSERT INTO product_sanpham VALUES (43,'111',11,10,9,'s','<p>1</p>','Mochi','uploads/noimage.jpg','uploads/default_image.jpg','uploads/default_image.jpg','uploads/default_image.jpg','111',0,'2023-12-25 15:07:55.144161','2023-12-25 15:20:29.199741',1);

--
-- Table structure for table `website_bannerbottom`
--

DROP TABLE IF EXISTS website_bannerbottom;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_bannerbottom (
  id bigint NOT NULL AUTO_INCREMENT,
  HinhAnh varchar(100) DEFAULT NULL,
  HienThi tinyint(1) NOT NULL,
  ChuyenMuc_id bigint NOT NULL,
  PRIMARY KEY (id),
  KEY website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c (ChuyenMuc_id),
  CONSTRAINT website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c FOREIGN KEY (ChuyenMuc_id) REFERENCES product_chuyenmuc (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannerbottom`
--

INSERT INTO website_bannerbottom VALUES (1,'uploads/food-drink-banner.jpg',1,1);

--
-- Table structure for table `website_bannermid`
--

DROP TABLE IF EXISTS website_bannermid;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_bannermid (
  id bigint NOT NULL AUTO_INCREMENT,
  HinhAnh varchar(100) DEFAULT NULL,
  HienThi tinyint(1) NOT NULL,
  ChuyenMuc_id bigint NOT NULL,
  PRIMARY KEY (id),
  KEY website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id (ChuyenMuc_id),
  CONSTRAINT website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id FOREIGN KEY (ChuyenMuc_id) REFERENCES product_chuyenmuc (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannermid`
--

INSERT INTO website_bannermid VALUES (1,'uploads/banhman2.jpg',1,1);
INSERT INTO website_bannermid VALUES (2,'uploads/banhngot2.jpg',1,3);

--
-- Table structure for table `website_bannertop`
--

DROP TABLE IF EXISTS website_bannertop;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_bannertop (
  id bigint NOT NULL AUTO_INCREMENT,
  HinhAnh varchar(100) DEFAULT NULL,
  HienThi tinyint(1) NOT NULL,
  ChuyenMuc_id bigint NOT NULL,
  PRIMARY KEY (id),
  KEY website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id (ChuyenMuc_id),
  CONSTRAINT website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id FOREIGN KEY (ChuyenMuc_id) REFERENCES product_chuyenmuc (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannertop`
--

INSERT INTO website_bannertop VALUES (1,'uploads/banhman.png',1,1);
INSERT INTO website_bannertop VALUES (2,'uploads/banhngot.png',1,3);
INSERT INTO website_bannertop VALUES (3,'uploads/thucuong.png',1,2);

--
-- Table structure for table `website_loaithongtin`
--

DROP TABLE IF EXISTS website_loaithongtin;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_loaithongtin (
  id bigint NOT NULL AUTO_INCREMENT,
  MaLoai varchar(255) DEFAULT NULL,
  TenLoai varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_loaithongtin`
--

INSERT INTO website_loaithongtin VALUES (1,'tieudeweb','Tiêu Đề Website');
INSERT INTO website_loaithongtin VALUES (2,'sodienthoai','Số Điện Thoại');
INSERT INTO website_loaithongtin VALUES (3,'diachi','Địa Chỉ');
INSERT INTO website_loaithongtin VALUES (4,'email','Email');
INSERT INTO website_loaithongtin VALUES (5,'gioithieu','Giới Thiệu');
INSERT INTO website_loaithongtin VALUES (6,'favicon','Favicon');
INSERT INTO website_loaithongtin VALUES (7,'logo','Logo');
INSERT INTO website_loaithongtin VALUES (8,'phiship','Phí Ship');
INSERT INTO website_loaithongtin VALUES (9,'phivat','Phí VAT');

--
-- Table structure for table `website_nhataitro`
--

DROP TABLE IF EXISTS website_nhataitro;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_nhataitro (
  id bigint NOT NULL AUTO_INCREMENT,
  TenNhaTaiTro varchar(255) NOT NULL,
  HinhAnh varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_nhataitro`
--

INSERT INTO website_nhataitro VALUES (1,'The coffee house','uploads/thecoffeehouse.png');
INSERT INTO website_nhataitro VALUES (2,'Baemin','uploads/baemin.png');
INSERT INTO website_nhataitro VALUES (3,'Shopee Food','uploads/shoppefood_ZWWuj5k.png');
INSERT INTO website_nhataitro VALUES (4,'Grabfood','uploads/grabfood.png');

--
-- Table structure for table `website_slide`
--

DROP TABLE IF EXISTS website_slide;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_slide (
  id bigint NOT NULL AUTO_INCREMENT,
  TieuDe varchar(255) NOT NULL,
  MoTaNgan varchar(255) NOT NULL,
  MoTaDai varchar(255) NOT NULL,
  HinhAnh varchar(100) DEFAULT NULL,
  HienThi tinyint(1) NOT NULL,
  ChuyenMuc_id bigint NOT NULL,
  PRIMARY KEY (id),
  KEY website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id (ChuyenMuc_id),
  CONSTRAINT website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id FOREIGN KEY (ChuyenMuc_id) REFERENCES product_chuyenmuc (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_slide`
--

INSERT INTO website_slide VALUES (1,'GYOZA','Đặc sản Nhật Bản tinh tế đang chờ đón bạn! Gyoza','Bạn đã sẵn sàng trải nghiệm hương vị tinh tế và cảm nhận sự kết hợp tuyệt vời giữa nhân thơm ngon và lớp bột giòn tại DjangoShop?','uploads/slide1.png',1,1);
INSERT INTO website_slide VALUES (2,'Asian Food','Savor the exquisite flavors of Asia!','Embark on a gastronomic adventure with our Asian Food Festival! Immerse yourself in a world of culinary delights that capture the essence of the diverse and vibrant cuisines from across Asia.','uploads/slide2.png',1,1);
INSERT INTO website_slide VALUES (3,'COFFEE','Khám phá thế giới hương vị tinh tế','Trải nghiệm hương vị hoàn hảo cùng với cà phê tinh tế từ chúng tôi. Chọn lựa độc đáo của chất lượng cao và nguồn gốc cà phê chăm sóc. Hãy thưởng thức mỗi giọt cà phê như một hành trình qua thế giới hương thơm độc đáo.','uploads/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg',1,6);
INSERT INTO website_slide VALUES (4,'PASTRY','Nơi thăng hoa vị ngọt!','Khám phá thế giới của hương vị tinh tế và sự sang trọng tại Pastry Paradise! Chúng tôi tự hào giới thiệu bộ sưu tập đặc sản bánh ngọt độc đáo','uploads/wepik-hand-drawn-bakery-webinar-blog-banner-20231223050313LLAW.png',1,7);
INSERT INTO website_slide VALUES (5,'Đá Xay Frosty','Lạnh lùng và ngon miệng!','Hãy đắm chìm trong sự hòa quyện của hương thơm tinh tế và vị đá béo ngậy. Frosty - nơi biến mỗi giọt thành trải nghiệm đáng nhớ!','uploads/daxayfrosty.png',1,5);

--
-- Table structure for table `website_thongtin`
--

DROP TABLE IF EXISTS website_thongtin;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE website_thongtin (
  id bigint NOT NULL AUTO_INCREMENT,
  GiaTri varchar(255) DEFAULT NULL,
  HinhAnh varchar(100) DEFAULT NULL,
  LoaiThongTin_id bigint NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY LoaiThongTin_id (LoaiThongTin_id),
  CONSTRAINT website_thongtin_LoaiThongTin_id_d8d175d7_fk_website_l FOREIGN KEY (LoaiThongTin_id) REFERENCES website_loaithongtin (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_thongtin`
--

INSERT INTO website_thongtin VALUES (1,'djangoshop.com','',1);
INSERT INTO website_thongtin VALUES (2,'0999.0000.999','',2);
INSERT INTO website_thongtin VALUES (3,'1 Võ Văn Ngân, Phường Linh Chiểu, Thành phố Thủ Đức, TP. Hồ Chí Minh','',3);
INSERT INTO website_thongtin VALUES (4,'lienhe@djangoshop.com','',4);
INSERT INTO website_thongtin VALUES (5,'djangoshop.com - Chuyên cung cấp các loại đồ ăn, thức uống tại TP. Hồ Chí Minh','',5);
INSERT INTO website_thongtin VALUES (6,NULL,'uploads/favicon-32x32.png',6);
INSERT INTO website_thongtin VALUES (8,NULL,'uploads/logo.png',7);
INSERT INTO website_thongtin VALUES (10,'5','',9);
INSERT INTO website_thongtin VALUES (11,'30000','',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
