-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django_shop
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--


--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--


--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` VALUES (4,'Can view log entry',1,'view_logentry');
INSERT INTO `auth_permission` VALUES (5,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` VALUES (6,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` VALUES (7,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` VALUES (8,'Can view permission',2,'view_permission');
INSERT INTO `auth_permission` VALUES (9,'Can add group',3,'add_group');
INSERT INTO `auth_permission` VALUES (10,'Can change group',3,'change_group');
INSERT INTO `auth_permission` VALUES (11,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` VALUES (12,'Can view group',3,'view_group');
INSERT INTO `auth_permission` VALUES (13,'Can add user',4,'add_user');
INSERT INTO `auth_permission` VALUES (14,'Can change user',4,'change_user');
INSERT INTO `auth_permission` VALUES (15,'Can delete user',4,'delete_user');
INSERT INTO `auth_permission` VALUES (16,'Can view user',4,'view_user');
INSERT INTO `auth_permission` VALUES (17,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` VALUES (18,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` VALUES (19,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20,'Can view content type',5,'view_contenttype');
INSERT INTO `auth_permission` VALUES (21,'Can add session',6,'add_session');
INSERT INTO `auth_permission` VALUES (22,'Can change session',6,'change_session');
INSERT INTO `auth_permission` VALUES (23,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` VALUES (24,'Can view session',6,'view_session');
INSERT INTO `auth_permission` VALUES (25,'Can add loai thong tin',7,'add_loaithongtin');
INSERT INTO `auth_permission` VALUES (26,'Can change loai thong tin',7,'change_loaithongtin');
INSERT INTO `auth_permission` VALUES (27,'Can delete loai thong tin',7,'delete_loaithongtin');
INSERT INTO `auth_permission` VALUES (28,'Can view loai thong tin',7,'view_loaithongtin');
INSERT INTO `auth_permission` VALUES (29,'Can add Nhà Tài Trợ',8,'add_nhataitro');
INSERT INTO `auth_permission` VALUES (30,'Can change Nhà Tài Trợ',8,'change_nhataitro');
INSERT INTO `auth_permission` VALUES (31,'Can delete Nhà Tài Trợ',8,'delete_nhataitro');
INSERT INTO `auth_permission` VALUES (32,'Can view Nhà Tài Trợ',8,'view_nhataitro');
INSERT INTO `auth_permission` VALUES (33,'Can add Cấu Hình',9,'add_thongtin');
INSERT INTO `auth_permission` VALUES (34,'Can change Cấu Hình',9,'change_thongtin');
INSERT INTO `auth_permission` VALUES (35,'Can delete Cấu Hình',9,'delete_thongtin');
INSERT INTO `auth_permission` VALUES (36,'Can view Cấu Hình',9,'view_thongtin');
INSERT INTO `auth_permission` VALUES (37,'Can add slide',10,'add_slide');
INSERT INTO `auth_permission` VALUES (38,'Can change slide',10,'change_slide');
INSERT INTO `auth_permission` VALUES (39,'Can delete slide',10,'delete_slide');
INSERT INTO `auth_permission` VALUES (40,'Can view slide',10,'view_slide');
INSERT INTO `auth_permission` VALUES (41,'Can add banner top',11,'add_bannertop');
INSERT INTO `auth_permission` VALUES (42,'Can change banner top',11,'change_bannertop');
INSERT INTO `auth_permission` VALUES (43,'Can delete banner top',11,'delete_bannertop');
INSERT INTO `auth_permission` VALUES (44,'Can view banner top',11,'view_bannertop');
INSERT INTO `auth_permission` VALUES (45,'Can add banner mid',12,'add_bannermid');
INSERT INTO `auth_permission` VALUES (46,'Can change banner mid',12,'change_bannermid');
INSERT INTO `auth_permission` VALUES (47,'Can delete banner mid',12,'delete_bannermid');
INSERT INTO `auth_permission` VALUES (48,'Can view banner mid',12,'view_bannermid');
INSERT INTO `auth_permission` VALUES (49,'Can add banner bottom',13,'add_bannerbottom');
INSERT INTO `auth_permission` VALUES (50,'Can change banner bottom',13,'change_bannerbottom');
INSERT INTO `auth_permission` VALUES (51,'Can delete banner bottom',13,'delete_bannerbottom');
INSERT INTO `auth_permission` VALUES (52,'Can view banner bottom',13,'view_bannerbottom');
INSERT INTO `auth_permission` VALUES (53,'Can add Chuyên Mục',14,'add_chuyenmuc');
INSERT INTO `auth_permission` VALUES (54,'Can change Chuyên Mục',14,'change_chuyenmuc');
INSERT INTO `auth_permission` VALUES (55,'Can delete Chuyên Mục',14,'delete_chuyenmuc');
INSERT INTO `auth_permission` VALUES (56,'Can view Chuyên Mục',14,'view_chuyenmuc');
INSERT INTO `auth_permission` VALUES (57,'Can add Sản Phẩm',15,'add_sanpham');
INSERT INTO `auth_permission` VALUES (58,'Can change Sản Phẩm',15,'change_sanpham');
INSERT INTO `auth_permission` VALUES (59,'Can delete Sản Phẩm',15,'delete_sanpham');
INSERT INTO `auth_permission` VALUES (60,'Can view Sản Phẩm',15,'view_sanpham');
INSERT INTO `auth_permission` VALUES (61,'Can add Bài Viết',16,'add_tintuc');
INSERT INTO `auth_permission` VALUES (62,'Can change Bài Viết',16,'change_tintuc');
INSERT INTO `auth_permission` VALUES (63,'Can delete Bài Viết',16,'delete_tintuc');
INSERT INTO `auth_permission` VALUES (64,'Can view Bài Viết',16,'view_tintuc');
INSERT INTO `auth_permission` VALUES (65,'Can add Khách Hàng',17,'add_khachhang');
INSERT INTO `auth_permission` VALUES (66,'Can change Khách Hàng',17,'change_khachhang');
INSERT INTO `auth_permission` VALUES (67,'Can delete Khách Hàng',17,'delete_khachhang');
INSERT INTO `auth_permission` VALUES (68,'Can view Khách Hàng',17,'view_khachhang');
INSERT INTO `auth_permission` VALUES (69,'Can add Liên Hệ',18,'add_lienhe');
INSERT INTO `auth_permission` VALUES (70,'Can change Liên Hệ',18,'change_lienhe');
INSERT INTO `auth_permission` VALUES (71,'Can delete Liên Hệ',18,'delete_lienhe');
INSERT INTO `auth_permission` VALUES (72,'Can view Liên Hệ',18,'view_lienhe');
INSERT INTO `auth_permission` VALUES (73,'Can add Giỏ Hàng',19,'add_giohang');
INSERT INTO `auth_permission` VALUES (74,'Can change Giỏ Hàng',19,'change_giohang');
INSERT INTO `auth_permission` VALUES (75,'Can delete Giỏ Hàng',19,'delete_giohang');
INSERT INTO `auth_permission` VALUES (76,'Can view Giỏ Hàng',19,'view_giohang');
INSERT INTO `auth_permission` VALUES (77,'Can add Đơn Hàng',20,'add_donhang');
INSERT INTO `auth_permission` VALUES (78,'Can change Đơn Hàng',20,'change_donhang');
INSERT INTO `auth_permission` VALUES (79,'Can delete Đơn Hàng',20,'delete_donhang');
INSERT INTO `auth_permission` VALUES (80,'Can view Đơn Hàng',20,'view_donhang');
INSERT INTO `auth_permission` VALUES (81,'Can add Chi Tiết Đơn Hàng',21,'add_chitietdonhang');
INSERT INTO `auth_permission` VALUES (82,'Can change Chi Tiết Đơn Hàng',21,'change_chitietdonhang');
INSERT INTO `auth_permission` VALUES (83,'Can delete Chi Tiết Đơn Hàng',21,'delete_chitietdonhang');
INSERT INTO `auth_permission` VALUES (84,'Can view Chi Tiết Đơn Hàng',21,'view_chitietdonhang');

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$PvbxoAK6qzAqPnf0I1dILq$CYLlulBACneiFPF/dgnHncbZJRjj9j++tdOrd+3qJ9k=','2023-12-13 14:33:03.885282',1,'admin','','','admin@gmail.com',1,1,'2023-11-09 10:05:53.000000');
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$600000$uHqtoHAFAWibPfCzSvy3WG$rBFixelmeAhQw46uHJiwyBlS4B1WCNo8MyjUpF2CUXk=','2023-12-12 19:43:06.627076',0,'leone','Nghia','Luong','',0,1,'2023-11-21 08:35:24.938145');
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$600000$oPIJFjTWpJYYyYRsI1WEvl$NoLS6kDNJtHRKfnjXqP2AYmbLUi57G8daBS8FjW0l84=','2023-12-12 19:55:09.619147',0,'nghia','Nghia','Luong','nigrumdiaster@gmail.com',0,1,'2023-12-12 19:55:02.244201');
INSERT INTO `auth_user` VALUES (4,'pbkdf2_sha256$600000$8XsEWVwiDWtmMA5D9RLHiy$rE9kKR7ON6GWm/KuW9qbjWIu3A1xL9V1S6Sf5HNj0H8=','2023-12-13 14:27:51.113601',0,'nghia1','Nghia','Luong','',0,1,'2023-12-13 11:13:56.232425');

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--


--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--


--
-- Table structure for table `cart_giohang`
--

DROP TABLE IF EXISTS `cart_giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_giohang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(255) DEFAULT NULL,
  `MoTaNgan` longtext,
  `GiaBan` int DEFAULT NULL,
  `SoLuong` int NOT NULL,
  `KhachHang_id` bigint NOT NULL,
  `SanPham_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id` (`KhachHang_id`),
  KEY `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` (`SanPham_id`),
  CONSTRAINT `cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`),
  CONSTRAINT `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_giohang`
--

INSERT INTO `cart_giohang` VALUES (1,'Chà Bông Phô Mai','Chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.',69000,1,1,6);
INSERT INTO `cart_giohang` VALUES (2,'Mousse Red Velvet','Bánh nhiều lớp được phủ lớp kem bên trên bằng Cream cheese.',45000,1,1,5);
INSERT INTO `cart_giohang` VALUES (3,'Hi Tea Vải','Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.',49000,1,1,3);
INSERT INTO `cart_giohang` VALUES (11,'Hi Tea Vải','Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.',49000,1,2,3);

--
-- Table structure for table `contact_lienhe`
--

DROP TABLE IF EXISTS `contact_lienhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_lienhe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenKhachHang` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_lienhe`
--


--
-- Table structure for table `customer_khachhang`
--

DROP TABLE IF EXISTS `customer_khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_khachhang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `SoDienThoai` varchar(11) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `User_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_id` (`User_id`),
  KEY `customer_khachhang_DuongDan_69604dd5` (`DuongDan`),
  CONSTRAINT `customer_khachhang_User_id_7e78d39d_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_khachhang`
--

INSERT INTO `customer_khachhang` VALUES (1,NULL,NULL,'','nghia-luong-2',2);
INSERT INTO `customer_khachhang` VALUES (2,'None','Saigon Gateway, XLHN','','nghia-luong-3',3);
INSERT INTO `customer_khachhang` VALUES (3,NULL,NULL,'','nghia-luong-4',4);

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` VALUES (1,'2023-11-09 10:19:41.310124','1','Giá điện tăng 4,5% lên hơn 2.000 đồng/kWh từ hôm nay',1,'[{\"added\": {}}]',16,1);
INSERT INTO `django_admin_log` VALUES (2,'2023-11-11 10:13:01.933182','1','SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI',2,'[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"NoiDung\", \"DuongDan\"]}}]',16,1);
INSERT INTO `django_admin_log` VALUES (3,'2023-11-11 10:20:31.203502','2','NGHỆ THUẬT ĂN THỊT NƯỚNG KIỂU HÀN VÀ NGƯỜI ĂN CHÍNH LÀ MỘT NGHỆ NHÂN',1,'[{\"added\": {}}]',16,1);
INSERT INTO `django_admin_log` VALUES (4,'2023-11-11 10:36:04.366277','3','NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI',1,'[{\"added\": {}}]',16,1);
INSERT INTO `django_admin_log` VALUES (5,'2023-11-11 10:38:39.981201','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',1,'[{\"added\": {}}]',16,1);
INSERT INTO `django_admin_log` VALUES (6,'2023-11-11 10:40:58.393196','5','UỐNG TRÀ HIBISCUS CÓ BỊ MẤT NGỦ HAY KHÔNG?',1,'[{\"added\": {}}]',16,1);
INSERT INTO `django_admin_log` VALUES (7,'2023-11-14 01:25:41.122964','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',2,'[]',16,1);
INSERT INTO `django_admin_log` VALUES (8,'2023-11-14 01:29:28.766547','4','“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY',2,'[]',16,1);
INSERT INTO `django_admin_log` VALUES (9,'2023-11-14 01:37:37.976481','1','Bánh mặn',1,'[{\"added\": {}}]',14,1);
INSERT INTO `django_admin_log` VALUES (10,'2023-11-14 01:39:00.815479','1','Bánh mì thịt nguội',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (11,'2023-11-14 01:42:52.815736','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"AnhChinh\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (12,'2023-11-14 01:44:52.382668','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\", \"PhanTramGiam\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (13,'2023-11-14 01:45:17.172838','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"GiaKhuyenMai\", \"PhanTramGiam\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (14,'2023-11-14 01:46:16.211282','1','Bánh mì thịt nguội',2,'[]',15,1);
INSERT INTO `django_admin_log` VALUES (15,'2023-11-14 01:47:38.405822','1','Bánh mì thịt nguội',2,'[]',15,1);
INSERT INTO `django_admin_log` VALUES (16,'2023-11-14 01:51:28.052807','1','Bánh mì thịt nguội',2,'[{\"changed\": {\"fields\": [\"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (17,'2023-11-14 01:57:30.644642','2','Trà trái cây',1,'[{\"added\": {}}]',14,1);
INSERT INTO `django_admin_log` VALUES (18,'2023-11-14 02:04:43.538304','2','Trà Long Nhãn Hạt Sen',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (19,'2023-11-14 02:05:58.009041','2','Trà Long Nhãn Hạt Sen',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (20,'2023-11-14 02:25:14.257857','2','Trà Long Nhãn Hạt Sen',2,'[{\"changed\": {\"fields\": [\"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (21,'2023-11-14 02:32:02.453312','3','Hi Tea Vải',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (22,'2023-11-14 02:33:16.083561','3','Hi Tea Vải',2,'[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]',15,1);
INSERT INTO `django_admin_log` VALUES (23,'2023-11-18 12:24:20.528567','3','Bánh ngọt',1,'[{\"added\": {}}]',14,1);
INSERT INTO `django_admin_log` VALUES (24,'2023-11-18 12:24:34.573024','4','Mousse Gấu Chocolate',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (25,'2023-11-18 12:43:16.801203','5','Mousse Red Velvet',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (26,'2023-11-18 12:45:15.156894','6','Chà Bông Phô Mai',1,'[{\"added\": {}}]',15,1);
INSERT INTO `django_admin_log` VALUES (27,'2023-11-18 14:53:28.876825','6','Chà Bông Phô Mai',2,'[]',15,1);
INSERT INTO `django_admin_log` VALUES (28,'2023-11-18 15:12:09.521698','6','Chà Bông Phô Mai',2,'[]',15,1);
INSERT INTO `django_admin_log` VALUES (29,'2023-11-18 16:23:09.312008','4','Mousse Gấu Chocolate',3,'',15,1);
INSERT INTO `django_admin_log` VALUES (30,'2023-12-13 11:16:38.089537','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1);
INSERT INTO `django_admin_log` VALUES (31,'2023-12-13 11:20:34.217488','1','GYOZA',1,'[{\"added\": {}}]',10,1);
INSERT INTO `django_admin_log` VALUES (32,'2023-12-13 12:07:08.799846','2','Asian Food',1,'[{\"added\": {}}]',10,1);
INSERT INTO `django_admin_log` VALUES (33,'2023-12-13 12:08:55.824943','3','Mã Đơn Hàng: 3 - Khách Hàng: Nghia Luong - Tổng Tiền: 130200 - Thời Gian: 2023-12-13 12:08:01',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,1);
INSERT INTO `django_admin_log` VALUES (34,'2023-12-13 12:09:09.714771','3','Mã Đơn Hàng: 3 - Khách Hàng: Nghia Luong - Tổng Tiền: 130200 - Thời Gian: 2023-12-13 12:08:01',2,'[{\"changed\": {\"fields\": [\"TrangThai\"]}}]',20,1);
INSERT INTO `django_admin_log` VALUES (35,'2023-12-13 14:16:24.810427','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',13,1);
INSERT INTO `django_admin_log` VALUES (36,'2023-12-13 14:22:04.318400','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',11,1);
INSERT INTO `django_admin_log` VALUES (37,'2023-12-13 14:24:58.298242','2','Banner Chuyên Mục: Bánh ngọt',1,'[{\"added\": {}}]',11,1);
INSERT INTO `django_admin_log` VALUES (38,'2023-12-13 14:26:01.134688','3','Banner Chuyên Mục: Trà trái cây',1,'[{\"added\": {}}]',11,1);
INSERT INTO `django_admin_log` VALUES (39,'2023-12-13 14:32:13.222316','1','Banner Chuyên Mục: Bánh mặn',2,'[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]',13,1);
INSERT INTO `django_admin_log` VALUES (40,'2023-12-13 14:35:38.821568','1','Banner Chuyên Mục: Bánh mặn',1,'[{\"added\": {}}]',12,1);
INSERT INTO `django_admin_log` VALUES (41,'2023-12-13 14:35:51.579736','2','Banner Chuyên Mục: Bánh ngọt',1,'[{\"added\": {}}]',12,1);
INSERT INTO `django_admin_log` VALUES (42,'2023-12-13 14:37:04.558810','3','Banner Chuyên Mục: Trà trái cây',1,'[{\"added\": {}}]',12,1);
INSERT INTO `django_admin_log` VALUES (43,'2023-12-13 14:37:21.599876','3','Banner Chuyên Mục: Trà trái cây',3,'',12,1);

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (19,'cart','giohang');
INSERT INTO `django_content_type` VALUES (18,'contact','lienhe');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (17,'customer','khachhang');
INSERT INTO `django_content_type` VALUES (16,'news','tintuc');
INSERT INTO `django_content_type` VALUES (21,'order','chitietdonhang');
INSERT INTO `django_content_type` VALUES (20,'order','donhang');
INSERT INTO `django_content_type` VALUES (14,'product','chuyenmuc');
INSERT INTO `django_content_type` VALUES (15,'product','sanpham');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (13,'website','bannerbottom');
INSERT INTO `django_content_type` VALUES (12,'website','bannermid');
INSERT INTO `django_content_type` VALUES (11,'website','bannertop');
INSERT INTO `django_content_type` VALUES (7,'website','loaithongtin');
INSERT INTO `django_content_type` VALUES (8,'website','nhataitro');
INSERT INTO `django_content_type` VALUES (10,'website','slide');
INSERT INTO `django_content_type` VALUES (9,'website','thongtin');

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-09 10:04:06.633478');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2023-11-09 10:04:07.509831');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2023-11-09 10:04:07.689932');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2023-11-09 10:04:07.700681');
INSERT INTO `django_migrations` VALUES (5,'admin','0003_logentry_add_action_flag_choices','2023-11-09 10:04:07.714482');
INSERT INTO `django_migrations` VALUES (6,'contenttypes','0002_remove_content_type_name','2023-11-09 10:04:07.823070');
INSERT INTO `django_migrations` VALUES (7,'auth','0002_alter_permission_name_max_length','2023-11-09 10:04:07.897650');
INSERT INTO `django_migrations` VALUES (8,'auth','0003_alter_user_email_max_length','2023-11-09 10:04:07.934430');
INSERT INTO `django_migrations` VALUES (9,'auth','0004_alter_user_username_opts','2023-11-09 10:04:07.947395');
INSERT INTO `django_migrations` VALUES (10,'auth','0005_alter_user_last_login_null','2023-11-09 10:04:08.026662');
INSERT INTO `django_migrations` VALUES (11,'auth','0006_require_contenttypes_0002','2023-11-09 10:04:08.033645');
INSERT INTO `django_migrations` VALUES (12,'auth','0007_alter_validators_add_error_messages','2023-11-09 10:04:08.045611');
INSERT INTO `django_migrations` VALUES (13,'auth','0008_alter_user_username_max_length','2023-11-09 10:04:08.133023');
INSERT INTO `django_migrations` VALUES (14,'auth','0009_alter_user_last_name_max_length','2023-11-09 10:04:08.223894');
INSERT INTO `django_migrations` VALUES (15,'auth','0010_alter_group_name_max_length','2023-11-09 10:04:08.253635');
INSERT INTO `django_migrations` VALUES (16,'auth','0011_update_proxy_permissions','2023-11-09 10:04:08.266600');
INSERT INTO `django_migrations` VALUES (17,'auth','0012_alter_user_first_name_max_length','2023-11-09 10:04:08.366448');
INSERT INTO `django_migrations` VALUES (18,'product','0001_initial','2023-11-09 10:04:08.535803');
INSERT INTO `django_migrations` VALUES (19,'customer','0001_initial','2023-11-09 10:04:08.654622');
INSERT INTO `django_migrations` VALUES (20,'cart','0001_initial','2023-11-09 10:04:08.820650');
INSERT INTO `django_migrations` VALUES (21,'contact','0001_initial','2023-11-09 10:04:08.853665');
INSERT INTO `django_migrations` VALUES (22,'news','0001_initial','2023-11-09 10:04:08.910690');
INSERT INTO `django_migrations` VALUES (23,'order','0001_initial','2023-11-09 10:04:09.190544');
INSERT INTO `django_migrations` VALUES (24,'sessions','0001_initial','2023-11-09 10:04:09.233510');
INSERT INTO `django_migrations` VALUES (25,'website','0001_initial','2023-11-09 10:04:09.745771');

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` VALUES ('0v2oalg8a7ld4pevuwuha95nhiw1v740','.eJxVjDsOwjAQBe_iGln4l7Up6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIirDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5rsB4HduZchlygKO-s1qAgECajvLeYQLMlcpl9JiBnFBTIwQRHaEi8P9jMN_A:1rDNTb:GLB9tHPpja76ZhQUMrPgEgQIznD_lXcOsBx__HuK8ug','2023-12-27 11:32:31.155825');
INSERT INTO `django_session` VALUES ('30ayi36r662utsn4oc5cwnv90gdij13q','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDPva:w4n3RFkdtpW3gzpMQbPbWUomnRa4dK62y_NKN0VNpgI','2023-12-27 14:09:34.322043');
INSERT INTO `django_session` VALUES ('g8mjbuiaig3qbm5hn6nzw560c7t50afw','.eJxVjDsOwjAQBe_iGln4l7Up6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIirDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5rsB4HduZchlygKO-s1qAgECajvLeYQLMlcpl9JiBnFBTIwQRHaEi8P9jMN_A:1rDQDH:ky4HwA56NB2YJZH8AxYa89em-170ugdglor57_z6fnk','2023-12-27 14:27:51.123574');
INSERT INTO `django_session` VALUES ('j7gewwj4nrimd2hjmnbiso8khdsl6dq6','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDNDe:-Yy_72gMykRcl4HatF6PKwiUjtRfpvDyVKVeZnbmzLc','2023-12-27 11:16:02.400751');
INSERT INTO `django_session` VALUES ('smiswsj27us7kphra58i0m8eaezxrit0','.eJxVjMsOwiAQRf-FtSFYHmVcuu83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhYXocXpd4tIj1R3wHestyap1XWZo9wVedAup8bpeT3cv4OCvXxrdOQ5QrbJZFZIgDQYDeysiU4xD6jAw5n86Kz2EUflLHvrtTI6E2Tx_gD88zfq:1rD8qT:K7GkRJG_bejVSGd9uU9uT-GQh3Old72JyWrkj5wj2zA','2023-12-26 19:55:09.629301');
INSERT INTO `django_session` VALUES ('td7c8ag5txa806j1m245z5i7s50tvzcm','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDNFQ:CwfEwfbKHsT0-4enIH94txH5COwsPo6O5FHzFoZJaOk','2023-12-27 11:17:52.233050');
INSERT INTO `django_session` VALUES ('ufkq0xk59e5gzdbutczwgxyipc24aowi','.eJxVjDsOwjAQBe_iGlnRkrUdSnrOEO3HxgFkS3FSRdwdIqWA9s3M28xI65LHtcV5nNRcDJjT78Ykz1h2oA8q92qllmWe2O6KPWizt6rxdT3cv4NMLX9rwSQ9CvVAGJynQdgzgzrFFLwToCTASlEdDp0X8T3G0LEHUOrOaN4fEBY4wA:1r5MEL:PlL-qwUEuDdVLlsfcx9i1SiwM_bh1iHZbEwzy0pIVKk','2023-12-05 08:35:37.418035');
INSERT INTO `django_session` VALUES ('yntzn2w64nz9cs6wfhmn3ikehsmo9t98','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDQIJ:RSHX0LkJrqXEN4Sq6r9KZ0Cy1edGwy00w9DLx4lX4Bg','2023-12-27 14:33:03.895266');
INSERT INTO `django_session` VALUES ('ysc5yl08oppuztactcjnx5497qwhc3tb','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1rDQ0X:VoghnqBZo2boaJX1R_RJhJCmFtmtGa5dR5HC89GOiUg','2023-12-27 14:14:41.169322');
INSERT INTO `django_session` VALUES ('zjl6zny2o5qdlmglf845h3pi2m4rt52h','.eJxVjDkOwjAUBe_iGlnxhjElPWew_uKPA8iR4qRC3B0ipYD2zcx7qQzrUvPay5xHVmdl1OF3Q6BHaRvgO7TbpGlqyzyi3hS9066vE5fnZXf_Dir0-q09pCFYERORDBAMxMiMNjAco5yKdyX4aDyKQ3ZOMMVkyDoPhhAkqfcHDxQ5DQ:1r11vt:yAgS9gBJb4pEjgcSgmBJPLLQpE56RZPYfTus_7ST7WM','2023-11-23 10:06:41.263817');

--
-- Table structure for table `news_tintuc`
--

DROP TABLE IF EXISTS `news_tintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_tintuc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(500) NOT NULL,
  `AnhChinh` varchar(100) NOT NULL,
  `The` varchar(255) NOT NULL,
  `NoiDung` longtext NOT NULL,
  `DuongDan` varchar(550) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_tintuc_DuongDan_91dc3f60` (`DuongDan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_tintuc`
--

INSERT INTO `news_tintuc` VALUES (1,'SIGNATURE - BIỂU TƯỢNG VĂN HOÁ CÀ PHÊ CỦA THE COFFEE HOUSE ĐÃ QUAY TRỞ LẠI','uploads/img1.jpg','kinh doanh','<p><strong>Mới đ&acirc;y, c&aacute;c &quot;t&iacute;n đồ&quot; c&agrave; ph&ecirc; đang b&agrave;n t&aacute;n x&ocirc;n xao về SIGNATURE - Biểu tượng văn h&oacute;a c&agrave; ph&ecirc; của The Coffee House đ&atilde; quay trở lại.</strong></p>\r\n\r\n<h2><strong>Một lời hẹn l&agrave;m bao người xao xuyến</strong></h2>\r\n\r\n<p>Vừa qua, Fanpage Nh&agrave; đ&atilde; h&eacute; mở những th&ocirc;ng tin đầu ti&ecirc;n về &quot;SIGNATURE by The Coffee House&quot; k&egrave;m lời hẹn &quot;H&ocirc;m nay bạn c&oacute; hẹn chưa? M&igrave;nh c&agrave; ph&ecirc; nh&eacute;!&quot;.</p>\r\n\r\n<p>Theo đ&oacute;, SIGNATURE by The Coffee House sẽ gửi đến c&aacute;c th&agrave;nh vi&ecirc;n của Nh&agrave; những Cuộc hẹn tr&ograve;n đầy với 3 trải nghiệm: T&aacute;ch c&agrave; ph&ecirc; đặc sản với những mẻ rang mới mỗi ng&agrave;y, chiều l&ograve;ng mọi t&acirc;m hồn y&ecirc;u c&agrave; ph&ecirc; hay những ai đang t&ograve; m&ograve; về loại tr&aacute;i c&acirc;y đặc biệt n&agrave;y; M&oacute;n ăn đa bản sắc, mang phong vị giao thoa từ nhiều nơi cho cuộc hẹn d&agrave;i hơn, r&ocirc;m rả hơn; Một kh&ocirc;ng gian đầy cảm hứng, nơi hạt c&agrave; ph&ecirc; kể về h&agrave;nh tr&igrave;nh tuyệt vời của m&igrave;nh theo c&aacute;ch gần gũi nhất. Bạn sẽ c&oacute; cơ hội thưởng thức c&agrave; ph&ecirc; bằng đủ những gi&aacute;c quan - ngửi hương, lắng nghe, ngắm nh&igrave;n v&agrave; nếm vị.</p>\r\n\r\n<p>Kh&ocirc;ng gian rộng mở, được thiết kế như một xưởng rang c&agrave; ph&ecirc; nhưng vẫn tạo cảm gi&aacute;c th&acirc;n thuộc, gần gũi với nhiều c&acirc;y xanh v&agrave; hai t&ocirc;ng m&agrave;u cam n&acirc;u ấm &aacute;p v&agrave; trắng x&aacute;m tinh tế. Trong đ&oacute;, nổi bật nhất phải kể đến hệ thống c&aacute;c si l&ocirc; c&agrave; ph&ecirc; v&agrave; một m&aacute;y rang lớn đặt ở sảnh tầng 1, c&ugrave;ng hệ thống c&aacute;c ống đồng chứa c&agrave; ph&ecirc; rang, khu vực quầy bar trải nghiệm. Khoảng 1 giờ, qu&aacute;n sẽ rang 1 mẻ nhỏ, tạo n&ecirc;n tiếng c&agrave; ph&ecirc; chạy trong c&aacute;c ống đồng rất vui tai, như 1 bản nhạc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/1/10/photo-2-16733167329771189768547.png\" style=\"height:416px; width:624px\" /></p>\r\n\r\n<p>Kh&ocirc;ng chỉ được thưởng thức những ly c&agrave; ph&ecirc; đặc sản thơm ngon, đậm vị, đến với SIGNATURE by The Coffee House, bạn c&ograve;n c&oacute; thể thưởng thức nhiều m&oacute;n ăn mới lạ kết hợp &Aacute; - &Acirc;u, th&iacute;ch hợp cho mọi cuộn hẹn.</p>\r\n\r\n<p>Ngay khi vừa xuất hiện, SIGNATURE by The Coffee House đ&atilde; nhận được sự hưởng ứng, chia sẻ nhiệt t&igrave;nh của giới trẻ. B&ecirc;n dưới b&agrave;i đăng l&agrave; h&agrave;ng loạt những b&igrave;nh luận khen ngợi về kh&ocirc;ng gian cửa h&agrave;ng, thức uống, đồ ăn v&agrave; &quot;rủ r&ecirc;&quot; bạn b&egrave; tới kh&aacute;m ph&aacute; v&agrave; trải nghiệm.</p>','signature-bieu-tuong-van-hoa-ca-phe-cua-the-coffee-house-a-quay-tro-lai','2023-11-09 10:19:41.307918','2023-11-11 10:13:01.903483');
INSERT INTO `news_tintuc` VALUES (2,'NGHỆ THUẬT ĂN THỊT NƯỚNG KIỂU HÀN VÀ NGƯỜI ĂN CHÍNH LÀ MỘT NGHỆ NHÂN','uploads/img2.png','Blog ăn uống','<p><strong>Thịt nướng, m&oacute;n ăn qu&aacute; đỗi th&ocirc;ng thường m&agrave; dĩ nhi&ecirc;n ở quốc gia n&agrave;o cũng c&oacute; c&aacute;ch ăn v&agrave; một phi&ecirc;n bản ri&ecirc;ng. Nhưng nhắc đến thịt nướng H&agrave;n Quốc, ấn tượng về những miếng thịt tươi được nướng x&egrave;o x&egrave;o tr&ecirc;n những chiếc vỉ n&oacute;ng hổi, xung quanh l&agrave; cơ ngơi c&aacute;c loại panchan c&ugrave;ng c&aacute;ch ăn thật ri&ecirc;ng biệt hẳn đ&atilde; kh&ocirc;ng c&ograve;n xa lạ v&agrave; trở th&agrave;nh m&oacute;n kho&aacute;i khẩu cho những ai đam m&ecirc; ẩm thực H&agrave;n. M&agrave; để ăn miếng thịt nướng ngon, ch&uacute;ng ta c&oacute; h&agrave;ng t&aacute; điều cần biết để c&oacute; ngay phần thịt nướng n&oacute;ng hổi ngon miệng nhất. C&ugrave;ng BAEMIN t&igrave;m hiểu ngay th&ocirc;i!</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>ĂN UỐNG CŨNG PHẢI C&Oacute; THỨ TỰ</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Tưởng đ&acirc;u cứ l&ecirc;n b&agrave;n ăn l&agrave; sẽ ăn ngay m&oacute;n m&igrave;nh th&iacute;ch rồi ư, hừm, kh&ocirc;ng hẳn l&agrave; thế đ&acirc;u bởi trong m&oacute;n thịt nướng H&agrave;n Quốc, bạn sẽ phải ưu ti&ecirc;n cho m&oacute;n thịt kh&ocirc;ng ướp được l&ecirc;n trước ti&ecirc;n, thỏa thu&ecirc; rồi mới đến thịt ướp gia vị. Mỗi loại thịt lại được nướng tr&ecirc;n một chiếc vỉ đặc th&ugrave; ri&ecirc;ng gi&uacute;p miếng thịt được tiếp x&uacute;c nhiệt một c&aacute;ch hợp l&yacute; để đạt độ ch&iacute;n ho&agrave;n hảo nhất v&agrave; hơn hết tr&aacute;nh bị lẫn vị của c&aacute;c loại thịt với nhau.<br />\r\n<br />\r\nKhi nướng thịt kh&ocirc;ng ướp, người ta thường d&ugrave;ng vỉ nướng chống d&iacute;nh đậy k&iacute;n mặt bếp. Chiếc vỉ n&agrave;y sẽ gi&uacute;p miếng thịt tươi được &aacute;p chảo ch&iacute;n đều ở 2 mặt, phần thịt xen kẽ mỡ khi tiếp x&uacute;c nhiệt sẽ săn lại, tạo độ gi&ograve;n thơm m&ecirc; người v&agrave; sự b&oacute;ng bẩy quyến rũ k&iacute;ch th&iacute;ch người ăn hơn. Với phần thịt ướp gia vị, c&aacute;c nh&agrave; h&agrave;ng chuy&ecirc;n nghiệp hay người ăn sẽ đổi sang chiếc vỉ mỏng nhiều rỗ để tr&aacute;nh nước sốt ướp thịt đọng lại tr&ecirc;n vỉ g&acirc;y ch&aacute;y kh&eacute;t, ảnh hưởng tới hương vị thịt. Điều n&agrave;y cũng gi&uacute;p việc nướng c&aacute;c loại thịt kh&ocirc;ng bị trộn lẫn m&ugrave;i vị, gi&uacute;p người ăn thưởng thức một c&aacute;ch trọn vị hơn. Tất cả m&ugrave;i hương, gia vị được tỏa ra kết hợp c&ugrave;ng h&igrave;nh ảnh miếng thịt đang ch&iacute;n tới, &acirc;m thanh &ldquo;x&egrave;o x&egrave;o&rdquo; vang b&ecirc;n tai như k&iacute;ch th&iacute;ch chiếc bao tử đang đ&oacute;i dữ tợn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://website-cdn.baemin.vn/uploads/IMG_0758_435ca431a8.jpg\" style=\"height:807px; width:691px\" /></p>\r\n\r\n<p>Khi đ&atilde; ch&agrave;o s&acirc;n c&ugrave;ng v&agrave;i miếng thịt nướng thơm ngon, bạn c&oacute; thể ăn tiếp với m&igrave; lạnh. Cặp b&agrave;i tr&ugrave;ng n&agrave;y kh&aacute; quen thuộc trong ẩm thực H&agrave;n bởi sự kết hợp nghe tưởng lạ l&ugrave;ng của &ldquo;thịt nướng - m&igrave; lạnh&rdquo; đ&atilde; tạo n&ecirc;n sự tương phản n&oacute;ng - lạnh cực kỳ cuốn h&uacute;t. Thưởng thức miếng m&igrave; lạnh trong t&ocirc; m&igrave; ngập đ&aacute;, đi k&egrave;m l&agrave; miếng thịt nướng thơm phức n&oacute;ng hổi m&agrave; phải xu&yacute;t xoa kh&ocirc;ng th&ocirc;i. Cuối c&ugrave;ng, bạn sẽ được chi&ecirc;u đ&atilde;i m&oacute;n cơm chi&ecirc;n được đảo c&ugrave;ng panchan, thịt nướng c&ograve;n s&oacute;t lại tr&ecirc;n b&agrave;n để lấp nốt chiếc bao tử c&ograve;n đang th&egrave;m thuồng của m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ĂN NGON CŨNG PHẢI C&Oacute; NGHỆ THUẬT</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Nướng thịt ch&iacute;n dĩ nhi&ecirc;n chẳng kh&oacute;, nhưng nướng thịt ngon bảo đảm kh&ocirc;ng dễ như bạn thường nghĩ m&agrave; đều cần c&oacute; những lưu &yacute; ri&ecirc;ng. Một trong những nguy&ecirc;n tắc cần nhớ khi ăn thịt nướng d&ugrave; bất kể loại thịt n&agrave;o với người H&agrave;n Quốc l&agrave; kh&ocirc;ng được lật thịt qu&aacute; ba lần. V&igrave; khi lật mặt nhiều lần hơn, người H&agrave;n cho rằng vị ngọt tự nhi&ecirc;n của miếng thịt cũng sẽ bị bốc hơi theo, chưa kể thời gian tiếp x&uacute;c nhiệt cho từng mặt qu&aacute; nhanh cũng khiến thịt mau kh&ocirc; v&agrave; k&eacute;m ngon đi hơn hẳn. Th&ocirc;ng thường, d&acirc;n s&agrave;nh ăn sẽ nướng một miếng thịt khoảng 3 ph&uacute;t mỗi mặt cho tới khi bề mặt bắt đầu chuyển sang m&agrave;u n&acirc;u, tiết ra dầu mỡ rồi mới lật lại. T&ugrave;y v&agrave;o nhiệt độ v&agrave; độ d&agrave;y của miếng thịt m&agrave; sẽ c&oacute; thời gian nướng kh&aacute;c nhau.<br />\r\n<br />\r\nC&aacute;c loại panchan thường gặp như l&aacute; vừng, kimchi, tỏi cũng được kết hợp rất nhiều trong bữa ăn để gia tăng hương vị cho thịt nướng. Khi ăn bạn phải ăn cả trong một lần cắn bởi phải như vậy, bạn mới c&oacute; thể thưởng trọn vị của sự kết hợp n&agrave;y. Vị chua cay của kimchi, hăng nhẹ của l&aacute; vừng v&agrave; tỏi nướng vừa tăng hương vị lại giảm đi phần n&agrave;o độ b&eacute;o v&agrave; dầu mỡ của m&oacute;n thịt, đ&acirc;y cũng l&agrave; c&aacute;ch ăn ngon gi&uacute;p bao tử của c&aacute;c thực thần ăn ngon v&agrave; khỏe hơn m&agrave; chẳng hề mau ng&aacute;n.</p>','nghe-thuat-an-thit-nuong-kieu-han-va-nguoi-an-chinh-la-mot-nghe-nhan','2023-11-11 10:20:31.195522','2023-11-11 10:20:31.195522');
INSERT INTO `news_tintuc` VALUES (3,'NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI','uploads/img3.jpg','trà đạo','<p><strong>Những dải ruộng bậc thang, c&aacute;c c&ocirc; g&aacute;i Th&aacute;i với điệu m&uacute;a x&ograve;e hoa, mu&ocirc;n cung đường ngợp m&ugrave;a hoa&hellip; đ&oacute; l&agrave; rẻo cao T&acirc;y Bắc lu&ocirc;n l&agrave;m say l&ograve;ng lữ kh&aacute;ch miền xu&ocirc;i. V&agrave; n&eacute;p m&igrave;nh b&ecirc;n dưới n&uacute;i non h&ugrave;ng vĩ ấy c&ograve;n c&oacute; m&oacute;n qu&agrave; g&oacute;i trọn vị thi&ecirc;n nhi&ecirc;n: tr&agrave; xanh T&acirc;y Bắc.</strong></p>\r\n\r\n<p><strong>G&oacute;i trọn hương vị của n&uacute;i rừng</strong></p>\r\n\r\n<p>Ở chốn &ldquo;Ng&agrave;n thước l&ecirc;n cao, ng&agrave;n thước xuống&rdquo;, T&acirc;y Bắc chứa đựng nhiều kh&oacute; khăn nhưng cũng g&oacute;i gh&eacute;m những ngọt l&agrave;nh chẳng ở đ&acirc;u c&oacute;. Địa h&igrave;nh hiểm trở v&agrave; thổ nhưỡng nơi đ&acirc;y tạo n&ecirc;n những đặc sản nức tiếng: m&oacute;n Ch&eacute;o người Th&aacute;i, m&oacute;n thắng cố người M&ocirc;ng, m&oacute;n r&ecirc;u đ&aacute; nướng... Mỗi m&oacute;n đều khiến thực kh&aacute;ch e ngại l&uacute;c mới bắt đầu, nhưng lại c&oacute; hương vị kh&oacute; qu&ecirc;n khi kết th&uacute;c. Bởi thế, mỗi thứ đồ ăn v&agrave; thức uống từ v&ugrave;ng đất n&agrave;y đều khiến người ta nhớ m&atilde;i.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c thức qu&agrave; ấy, T&acirc;y Bắc c&ograve;n l&agrave; nguồn cung ứng nguy&ecirc;n liệu l&agrave;m n&ecirc;n m&oacute;n uống quen thuộc của người Việt: tr&agrave; xanh. Với những nương ch&egrave; trải khắp tr&ecirc;n c&aacute;c sườn đồi, tr&agrave; xanh nơi đ&acirc;y đều được canh t&aacute;c trồng trọt v&agrave; thu hoạch ho&agrave;n to&agrave;n thủ c&ocirc;ng theo phương ph&aacute;p truyền thống của đồng b&agrave;o d&acirc;n tộc. Ch&iacute;nh v&igrave; vậy, tr&agrave; xanh T&acirc;y Bắc giữ vị xanh sạch tự nhi&ecirc;n nhẹ nh&agrave;ng, thuần khiết. Phải uống tr&agrave; xanh T&acirc;y Bắc mới nếm được c&aacute;i đậm hương của sương n&uacute;i, vị mộc của rừng gi&agrave;, để nhớ m&atilde;i về một chốn &ldquo;nơi n&agrave;o qua m&agrave; l&ograve;ng chẳng y&ecirc;u thương&rdquo;.</p>\r\n\r\n<p>Hơn một thức uống, tr&agrave; được v&iacute; như &ldquo;ti&ecirc;n dược&rdquo; nguy&ecirc;n nh&acirc;n c&oacute; lẽ ở trong c&aacute;ch n&oacute; được dung dưỡng lớn l&ecirc;n. Tr&agrave; ph&aacute;t triển tốt nhất v&agrave; cho chất lượng ngon nhất ở những nơi kh&iacute; hậu ẩm, lạnh, quanh năm c&oacute; sương m&ugrave;. Những loại tr&agrave; nổi tiếng đều gắn với c&aacute;c địa danh hiểm trở như Suối Gi&agrave;ng, T&agrave; X&ugrave;a, Mộc Ch&acirc;u... Việc dung h&ograve;a với những điều kiện kh&oacute; khăn để ph&aacute;t triển, tự tr&agrave; xanh chứa đựng những gi&aacute; trị dưỡng sinh m&agrave; kh&oacute; c&oacute; lo&agrave;i thảo mộc n&agrave;o s&aacute;nh bằng.&nbsp;&nbsp;</p>\r\n\r\n<p>V&igrave; thế, kh&ocirc;ng lạ khi c&aacute;c nh&agrave; nghi&ecirc;n cứu chỉ ra, tr&agrave; xanh T&acirc;y Bắc sau khi nghiền mịn gi&agrave;u chất xơ v&agrave; c&aacute;c vitamin C, B, E v&agrave; chứa h&agrave;m lượng chất chống oxy h&oacute;a cao gấp 3 lần tr&agrave; xanh nguy&ecirc;n l&aacute; th&ocirc;ng thường. Tr&agrave; xanh T&acirc;y Bắc cũng c&oacute; hương vị ri&ecirc;ng kh&oacute; trộn lẫn với bất cứ v&ugrave;ng miền n&agrave;o, với vị mộc thấm đẫm hơi thở n&uacute;i rừng, ch&aacute;t nhẹ nhưng hậu vị thanh ngọt. Ủ m&igrave;nh trong sương sớm v&agrave; m&acirc;y trời quanh năm, n&ecirc;n tr&agrave; c&oacute; hương thơm thanh tao, tạo cảm gi&aacute;c khoan kho&aacute;i khi thưởng thức. Đặc biệt, tr&agrave; xanh T&acirc;y Bắc được phủ r&acirc;m v&agrave;i tuần trước khi thu hoạch, nhằm giữ lại tối đa dưỡng chất, trong đ&oacute; c&oacute; amino acid L-Theanine, gi&uacute;p giải tỏa căng thẳng một c&aacute;ch nhẹ nh&agrave;ng.&nbsp;</p>\r\n\r\n<p><strong>Tr&agrave; Xanh T&acirc;y Bắc - Vị mộc từ Nh&agrave;, chờ kh&aacute;ch miền xu&ocirc;i</strong></p>\r\n\r\n<p>Với mong muốn mang hương vị của v&ugrave;ng cao về với thị th&agrave;nh, The Coffee House tr&igrave;nh l&agrave;ng 4 thức uống từ tr&agrave; xanh T&acirc;y Bắc: Tr&agrave; Xanh Latte, Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết, Đ&aacute; Xay Frosty Tr&agrave; Xanh, v&agrave; Tr&agrave; Xanh Đường Đen.&nbsp;</p>\r\n\r\n<p>D&agrave;nh cho những ai cần tỉnh t&aacute;o nhưng lại sợ cảm gi&aacute;c say, kh&oacute; chịu, đau đầu, Tr&agrave; Xanh Latte sẽ l&agrave; một trải nghiệm vị gi&aacute;c ph&ugrave; hợp. Hương vị chủ đạo tr&agrave; xanh T&acirc;y Bắc ch&aacute;t nhẹ kết hợp c&ugrave;ng sữa tươi nguy&ecirc;n kem ngọt dịu sẽ khiến bạn đủ tỉnh t&aacute;o một c&aacute;ch &ecirc;m mượt, xoa dịu những căng thẳng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.hstatic.net/1000075078/file/thecoffeehouse_traxanhtaybac_7_164329cf39ba457cbd1e07adb8aed538_grande.jpg\" style=\"height:600px; width:480px\" /></p>\r\n\r\n<p>Đối với team hảo ngọt, ưa th&iacute;ch sự chiều chuộng vị gi&aacute;c với m&oacute;n đồ uống s&aacute;nh mịn v&agrave; đậm vị chắc chắn kh&ocirc;ng thể bỏ qua Đ&aacute; Xay Frosty Tr&agrave; Xanh. Sự h&ograve;a quyện s&aacute;ng tạo giữa hương vị tr&agrave; nguy&ecirc;n bản c&ugrave;ng kem sữa ngọt ng&agrave;o sẽ đ&aacute;nh thức mọi gi&aacute;c quan một c&aacute;ch đầy bất ngờ. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; m&oacute;n đồ giải kh&aacute;t bật mood m&agrave; c&ograve;n cực tốt cho sức khoẻ nhờ th&agrave;nh phần gi&agrave;u vitamin v&agrave; c&aacute;c chất chống oxy h&oacute;a c&oacute; trong tr&agrave; xanh T&acirc;y Bắc.</p>\r\n\r\n<p>Kh&ocirc;ng qu&ecirc;n những kh&aacute;ch h&agrave;ng lu&ocirc;n t&igrave;m kiếm thức uống mang hương vị tr&aacute;i c&acirc;y mới lạ, Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết l&agrave; sự kết hợp ph&aacute; c&aacute;ch của The Coffee House. Nhấp mỗi ngụm Tr&agrave; Xanh Xo&agrave;i Đ&aacute; Tuyết, bạn như đang đắm m&igrave;nh giữa sự trong trẻo, m&aacute;t l&agrave;nh của sương sớm v&ugrave;ng cao gi&uacute;p giải nhiệt tức th&igrave; khi tiết trời oi ả.</p>\r\n\r\n<p>Trong khi đ&oacute;, Tr&agrave; Xanh Đường Đen với hiệu ứng ph&acirc;n tầng đẹp mắt, như ph&aacute;c hoạ n&uacute;i đồi T&acirc;y Bắc bảng lảng giữa sương m&acirc;y, thấp tho&aacute;ng những nương ch&egrave; xanh ng&aacute;t. Vị đường đen ngọt nhẹ c&agrave;ng l&agrave;m tăng th&ecirc;m sự đậm đ&agrave; từ tr&agrave; xanh, kết hợp c&ugrave;ng sữa tươi thơm b&eacute;o khiến m&oacute;n đồ uống th&ecirc;m phần hấp dẫn.</p>','nguoc-len-tay-bac-goi-vi-moc-ve-xuoi','2023-11-11 10:36:04.352727','2023-11-11 10:36:04.352727');
INSERT INTO `news_tintuc` VALUES (4,'“KHUẤY ĐỂ THẤY TRĂNG\" - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ LỠ MÙA TRUNG THU NÀY','uploads/img4.jpg','Blog ăn uống','<p><em><strong>Năm 2022 l&agrave; năm đề cao sức khỏe tinh thần n&ecirc;n giới trẻ muốn tận hưởng một Trung thu với nhiều trải nghiệm mới mẻ, r&ocirc;m rả c&ugrave;ng bạn b&egrave; v&agrave; người th&acirc;n. V&agrave; trải nghiệm độc đ&aacute;o &ldquo;Khuấy để thấy trăng&rdquo; của The Coffee House như khuấy l&ecirc;n niềm hạnh ph&uacute;c, nao nức về một trung thu đầy th&uacute; vị m&agrave; kh&ocirc;ng người trẻ n&agrave;o muốn bỏ lỡ.</strong></em></p>\r\n\r\n<h2><strong>Tết Trung thu đặc biệt với những điều giản đơn</strong></h2>\r\n\r\n<p>Cứ đến th&aacute;ng 8 &acirc;m lịch, đường phố Việt Nam lại rộn r&agrave;ng trống l&acirc;n v&agrave; lồng đ&egrave;n trưng kệ. Nhưng năm ngo&aacute;i, nhiều người bỗng &quot;đ&oacute;n trăng&quot; kiểu kh&aacute;c, với c&aacute;c hoạt động thưởng trăng rước đ&egrave;n diễn ra c&oacute; phần hạn chế v&agrave; y&ecirc;n ắng hơn. Đ&oacute;n Trung thu tại nh&agrave;, gia đ&igrave;nh đo&agrave;n vi&ecirc;n từ xa th&ocirc;ng qua m&agrave;n h&igrave;nh điện thoại hay ngắm trăng online... đ&oacute; l&agrave; những k&yacute; ức kh&oacute; qu&ecirc;n của người Việt về một tết Đo&agrave;n vi&ecirc;n đặc biệt.</p>\r\n\r\n<p>&quot;Sau khi chứng kiến c&aacute;i thế giới m&agrave; ở đấy mỗi c&aacute;i nắm tay cũng l&agrave; điều xa xỉ, người ta liền rục rịch định nghĩa lại về hạnh ph&uacute;c&quot;, tạp ch&iacute; Vogue viết. Hạnh ph&uacute;c giờ đ&acirc;y chỉ g&oacute;i gọn trong những điều giản đơn. Được x&aacute;ch vali bước l&ecirc;n chuyến bay hồi hương, được nh&igrave;n thấy nhau, được tỉ t&ecirc; kể nhau nghe chuyện to chuyện nhỏ. Đ&oacute; mới l&agrave; điều hạnh ph&uacute;c nhất sau khoảng thời gian lạ l&ugrave;ng vừa qua.</p>\r\n\r\n<p>Cho đến thời điểm n&agrave;y, c&aacute;ch nghĩ đ&oacute; về hạnh ph&uacute;c dần trở th&agrave;nh một ti&ecirc;u chuẩn &quot;b&igrave;nh thường mới&quot;. Ti&ecirc;u chuẩn n&agrave;y phần n&agrave;o dự đo&aacute;n c&aacute;ch m&agrave; người trẻ Việt ch&agrave;o đ&oacute;n Trung thu năm nay. Trải qua một năm bị chia c&aacute;ch bất đắc dĩ, giới trẻ giờ đ&acirc;y th&ecirc;m tr&acirc;n qu&yacute; những ph&uacute;t gi&acirc;y được sum vầy b&ecirc;n người th&acirc;n, bạn b&egrave; v&agrave; người thương. Hơn nữa, 2022 cũng l&agrave; năm đề cao sức khỏe tinh thần, n&ecirc;n sẽ chẳng lạ nếu người trẻ muốn tận hưởng một Trung thu với nhiều trải nghiệm mới mẻ.</p>\r\n\r\n<h2><strong>Khuấy để thấy trăng - Khuấy l&ecirc;n hạnh ph&uacute;c</strong></h2>\r\n\r\n<p>L&agrave; chuỗi c&agrave; ph&ecirc; lu&ocirc;n mang đến những bất ngờ cho người trẻ, The Coffee House kh&ocirc;ng chỉ s&aacute;ng tạo thức uống ri&ecirc;ng cho m&ugrave;a Trung thu m&agrave; c&ograve;n mang đến trải nghiệm cực kỳ mới mẻ. Với bộ sưu tập Hi-Tea Bling Bling, bạn chỉ cần khuấy l&ecirc;n sẽ thấy v&ograve;ng xo&aacute;y nước l&oacute;ng l&aacute;nh sắc v&agrave;ng chuyển động tựa &aacute;nh trăng cực đẹp mắt. Hiệu ứng bling bling lần đầu ti&ecirc;n xuất hiện trong thức uống của Nh&agrave;, khiến việc thưởng tr&agrave; trở n&ecirc;n th&uacute; vị hơn đối với người trẻ.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh5.googleusercontent.com/ntwQqTeaVDh-viZ6yLFPb9NgOy4KP9y6Vk7Zbyw1C5J63k8_y9SYAr0IHzpI_mMPKFp7yw-SGXGFxq8hGmnxYMH2OPKId0rxyChTjDppNfKscLxuuzsLxeS3HJ5Q4ovL37s2wZSCnm3S\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p>Về hương vị, Hi-Tea Ph&uacute;c Bồn Tử Bling Bling thi&ecirc;n về vị chua chua ngọt ngọt nhờ sự kết hợp của tr&agrave; hoa Hibiscus v&agrave; ph&uacute;c bồn tử 100% tự nhi&ecirc;n, k&egrave;m topping qu&yacute;t mọng nước mang đến cảm gi&aacute;c sảng kho&aacute;i tức th&igrave;. C&ograve;n Hi-Tea Xo&agrave;i Bling Bling c&oacute; vị ngọt nổi bật hơn với xo&agrave;i ch&iacute;n mọng, v&agrave;ng ươm tr&ecirc;n nền tr&agrave; hoa Hibiscus chua nhẹ.</p>\r\n\r\n<p>Trung thu đ&atilde; c&oacute; tr&agrave;, kh&ocirc;ng thể thiếu b&aacute;nh. D&ugrave; thuộc team Thập cẩm hay Đậu xanh, bạn đều c&oacute; thể t&igrave;m thấy vị y&ecirc;u th&iacute;ch tại The Coffee House. Ngo&agrave;i ra, Nh&agrave; c&ograve;n c&oacute; nhiều vị b&aacute;nh đ&aacute;ng thử cho m&ugrave;a trăng năm nay như Hạt sen trứng muối, Thập cẩm g&agrave; quay trứng muối.<img alt=\"\" src=\"https://lh3.googleusercontent.com/0_zubsrHjlc9jkJfoySn-NpMyxjD0CpPtqGVmLnZxfzPWT5tV7ZZUczlUsyDTcBD7RmHpQKPMw2yRtP4AQVkCJfvc7W4He5I4QlrPARiJ0Wqtt1ccfNMZRmaNgd8-2Ne8H3OzYZ4Rps9\" style=\"height:1600px; width:1600px\" /></p>\r\n\r\n<p>Đặc biệt, nh&acirc;n c&agrave; ph&ecirc; trứng muối l&agrave; &ldquo;signature&rdquo; - được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất 3 năm qua vẫn được The Coffee House giữ trọn hương vị. V&agrave; Mứt tắc hạt dưa với sự kết hợp mới mẻ của đậu xanh mềm mịn c&ugrave;ng mứt tắc (quất) cay nhẹ v&agrave; hạt dưa gi&ograve;n b&ugrave;i, hứa hẹn l&agrave; &ldquo;best-seller&rdquo; năm nay.</p>\r\n\r\n<p>Hơn hết, The Coffee House muốn tạo c&aacute;i cớ hẹn h&ograve; cho người trẻ, khi tr&igrave;nh l&agrave;ng combo &quot;Trăng Nh&agrave; Kết Nối&quot; - tặng một b&aacute;nh trung thu khi mua 2 ly Hi-Tea Bling Bling. Trung thu n&agrave;y, h&atilde;y &ldquo;giả vờ&rdquo; qu&ecirc;n những bận rộn, để rủ r&ecirc; bạn b&egrave; v&agrave; người th&acirc;n c&ugrave;ng tạo n&ecirc;n những kỉ niệm đ&aacute;ng nhớ. Gh&eacute; Nh&agrave; chuyện tr&ograve;, thưởng tr&agrave;, ăn b&aacute;nh hay c&ugrave;ng nhau trải nghiệm &ldquo;khuấy để thấy trăng&rdquo; để thấy hạnh ph&uacute;c chưa bao giờ giản đơn như thế.</p>','khuay-e-thay-trang-khuay-len-niem-hanh-phuc-trai-nghiem-khong-the-bo-lo-mua-trung-thu-nay','2023-11-11 10:38:39.973762','2023-11-14 01:29:28.761591');
INSERT INTO `news_tintuc` VALUES (5,'UỐNG TRÀ HIBISCUS CÓ BỊ MẤT NGỦ HAY KHÔNG?','uploads/img5.jpg','trà đạo','<p><strong>Tr&agrave; hoa Hibiscus lu&ocirc;n nằm trong top những loại tr&agrave; healthy được nhiều người ưa chuộng bởi sở hữu nhiều dược t&iacute;nh tốt cho sức khỏe v&agrave; sắc đẹp. Tuy thế, nhiều người vẫn băn khoăn kh&ocirc;ng biết Hibiscus c&oacute; chứa caffeine, g&acirc;y mất ngủ hay kh&ocirc;ng?</strong></p>\r\n\r\n<p><strong>H&agrave;m lượng caffeine trong Hibiscus</strong></p>\r\n\r\n<p>Tr&agrave; hoa Hibiscus (hay c&ograve;n gọi l&agrave; Atiso đỏ, Lạc thần, Hồng đ&agrave;i...) được chế biến từ những đ&agrave;i hoa sấy kh&ocirc;. V&agrave; theo c&aacute;c nghi&ecirc;n cứu, trong những đ&agrave;i hoa đỏ n&agrave;y kh&ocirc;ng chứa caffeine. Vậy n&ecirc;n, hiển nhi&ecirc;n trong tr&agrave; Hibiscus cũng sẽ kh&ocirc;ng c&oacute; th&agrave;nh phần caffeine như nhiều người vẫn nghĩ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/C2qwtsRI0bdhYu2T74hzocmGxZSjlv-otKMmh4clvs2b5aEcze44Uzd_VSpZn22O244D2mxuDmzdk6NIlKNb8e-Hsv7gAo1ekX11K4xIbf-R3CVad890-jonDw0NmZqDZ6p0Uw\" style=\"height:920px; width:1380px\" /></p>\r\n\r\n<p>Như thế, khi sử dụng tr&agrave; chiết xuất từ hoa Hibiscus sẽ kh&ocirc;ng g&acirc;y mất ngủ hay&nbsp;khiến cơ thể gặp những triệu chứng như n&ocirc;n nao, bồn chồn, x&oacute;t ruột&hellip; Ngược lại, khi sử dụng tr&agrave; hoa Hibiscus&nbsp;&nbsp;c&ograve;n gi&uacute;p bạn thư gi&atilde;n đầu &oacute;c v&agrave; tinh thần, cơ thể thư th&aacute;i, dễ chịu, c&oacute; thể ngủ s&acirc;u v&agrave;&nbsp;ngủ ngon hơn.&nbsp;</p>\r\n\r\n<p>Đặc biệt, trong đ&agrave;i hoa Hibiscus c&oacute; chứa rất nhiều chất chống oxy h&oacute;a, nổi bật nhất phải kể đến Flavonoid.&nbsp;H&agrave;m lượng Flavonoid trong đ&agrave;i hoa Hibiscus l&ecirc;n đến 12% v&agrave; trong l&aacute; chiếm khoảng 5 - 6%. Nhờ th&agrave;nh phần n&agrave;y n&ecirc;n khi uống tr&agrave; Hibiscus thường xuy&ecirc;n sẽ gi&uacute;p bạn ngăn chặn qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể, gi&uacute;p l&agrave;n da khỏe đẹp, trẻ trung v&agrave; rạng rỡ.&nbsp;<img alt=\"\" src=\"https://lh4.googleusercontent.com/E3SQPXh7gFyidPcKUhFsPNjemXPyqHnLkaKn91zxD_g8Wtsr4cO936hhIVg0ZrPDouWwk7UxkJHBN6PRCmyDr6KSBIvUxo14Mvu_55-y7x23lg9rQpkxI5W86wCsVlZA3zk-AA\" style=\"height:920px; width:1380px\" /></p>\r\n\r\n<p><strong>Thưởng thức Hibiscus ngon v&agrave; đ&uacute;ng c&aacute;ch&nbsp;</strong></p>\r\n\r\n<p>D&ugrave; tr&agrave; Hibiscus c&oacute; nhiều lợi &iacute;ch cho sức khỏe, tinh thần v&agrave; sắc đẹp, tuy nhi&ecirc;n bất cứ sản phẩm n&agrave;o cũng vậy, bạn kh&ocirc;ng n&ecirc;n lạm dụng ch&uacute;ng. Mỗi ng&agrave;y bạn chỉ n&ecirc;n d&ugrave;ng khoảng 2-3 ly tr&agrave; hoa Hibiscus để gi&uacute;p cơ thể hấp thụ tối đa v&agrave; mang lại những t&aacute;c dụng hiệu quả nhất. Qua đ&oacute; gi&uacute;p cơ thể bổ sung vitamin, tăng sức đề kh&aacute;ng, da dẻ mịn m&agrave;ng, tinh thần thoải m&aacute;i, tim mạch khỏe mạnh...&nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/t36RskU_YR-FMxrPIPjq4UCvie6QPCDMs4yhZsKzC4faBwQbIvk8V-s1xnk3tpZ_SM-QixOUPvrD3Szpa4CuGLcgyuowgCPIbsEz0NdurckwSPkD_ZbnGXpEPa9nT9cFcez02w\" style=\"height:853px; width:1280px\" /></p>\r\n\r\n<p>Hibiscus thường được phơi kh&ocirc; sử dụng l&agrave;m tr&agrave;, khi pha chế d&ugrave; l&agrave; n&oacute;ng hay lạnh đều cho ra hương vị thơm ngon v&agrave; thanh m&aacute;t. Thức uống n&agrave;y c&oacute; thể kết hợp với rất nhiều nguy&ecirc;n liệu kh&aacute;c như: quế, đinh hương, gừng, mật ong, đường, xi-r&ocirc; c&acirc;y phong, vani v&agrave; c&aacute;c loại tr&aacute;i c&acirc;y&hellip; để tăng th&ecirc;m hương vị mới lạ.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ l&agrave;m tr&agrave;, Hibiscus c&ograve;n c&oacute; thể d&ugrave;ng l&agrave;m mứt, thạch, tương ớt v&agrave; thậm ch&iacute; cả rượu vang. Với m&agrave;u đỏ tự nhi&ecirc;n đẹp mắt, bạn ho&agrave;n to&agrave;n c&oacute; thể &eacute;p nước Hibiscus c&ocirc; đặc để tạo m&agrave;u cho c&aacute;c loại thực phẩm kh&aacute;c như bột b&aacute;nh, rau c&acirc;u, sợi m&igrave;&hellip;&nbsp;</p>','uong-tra-hibiscus-co-bi-mat-ngu-hay-khong','2023-11-11 10:40:58.386051','2023-11-11 10:40:58.386051');

--
-- Table structure for table `order_chitietdonhang`
--

DROP TABLE IF EXISTS `order_chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_chitietdonhang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `GiaBan` int DEFAULT NULL,
  `SoLuong` int NOT NULL,
  `TongTien` int DEFAULT NULL,
  `DonHang_id` bigint NOT NULL,
  `SanPham_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` (`DonHang_id`),
  KEY `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` (`SanPham_id`),
  CONSTRAINT `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` FOREIGN KEY (`DonHang_id`) REFERENCES `order_donhang` (`id`),
  CONSTRAINT `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_chitietdonhang`
--

INSERT INTO `order_chitietdonhang` VALUES (1,45000,1,45000,1,5);
INSERT INTO `order_chitietdonhang` VALUES (2,49000,2,98000,1,3);
INSERT INTO `order_chitietdonhang` VALUES (3,69000,2,138000,1,6);
INSERT INTO `order_chitietdonhang` VALUES (4,69000,1,69000,2,6);
INSERT INTO `order_chitietdonhang` VALUES (5,45000,1,45000,2,5);
INSERT INTO `order_chitietdonhang` VALUES (6,49000,1,49000,2,3);
INSERT INTO `order_chitietdonhang` VALUES (7,30000,1,30000,2,1);
INSERT INTO `order_chitietdonhang` VALUES (8,45000,1,45000,3,5);
INSERT INTO `order_chitietdonhang` VALUES (9,49000,1,49000,3,3);
INSERT INTO `order_chitietdonhang` VALUES (10,45000,1,45000,4,5);
INSERT INTO `order_chitietdonhang` VALUES (11,49000,1,49000,4,3);
INSERT INTO `order_chitietdonhang` VALUES (12,69000,1,69000,4,6);
INSERT INTO `order_chitietdonhang` VALUES (13,30000,1,30000,4,1);

--
-- Table structure for table `order_donhang`
--

DROP TABLE IF EXISTS `order_donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_donhang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` longtext NOT NULL,
  `TongTien` int NOT NULL,
  `GhiChu` varchar(150) DEFAULT NULL,
  `ThoiGian` datetime(6) NOT NULL,
  `TrangThai` varchar(25) NOT NULL,
  `KhachHang_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` (`KhachHang_id`),
  CONSTRAINT `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_donhang`
--

INSERT INTO `order_donhang` VALUES (1,'0954092123','Saigon',326550,'','2023-12-13 09:45:50.877940','cxl',2);
INSERT INTO `order_donhang` VALUES (2,'0954092123','Saigon Gateway, XLHN',234150,'','2023-12-13 09:48:19.386849','cxl',2);
INSERT INTO `order_donhang` VALUES (3,'0954092123','2131',130200,'','2023-12-13 12:08:01.522856','khh',3);
INSERT INTO `order_donhang` VALUES (4,'0954092123','None',234150,'','2023-12-13 13:02:45.167670','cxl',3);

--
-- Table structure for table `product_chuyenmuc`
--

DROP TABLE IF EXISTS `product_chuyenmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_chuyenmuc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenChuyenMuc` varchar(255) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_chuyenmuc_DuongDan_e77170d5` (`DuongDan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_chuyenmuc`
--

INSERT INTO `product_chuyenmuc` VALUES (1,'Bánh mặn','banh-man','uploads/banhmi1.jpg','2023-11-14 01:37:37.972491','2023-11-14 01:37:37.972491');
INSERT INTO `product_chuyenmuc` VALUES (2,'Trà trái cây','tra-trai-cay','uploads/img5_dtmdUb7.jpg','2023-11-14 01:57:30.642647','2023-11-14 01:57:30.642647');
INSERT INTO `product_chuyenmuc` VALUES (3,'Bánh ngọt','banh-ngot','uploads/mousegau1.jpg','2023-11-18 12:24:20.509801','2023-11-18 12:24:20.509801');

--
-- Table structure for table `product_sanpham`
--

DROP TABLE IF EXISTS `product_sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sanpham` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(255) NOT NULL,
  `GiaKhuyenMai` int NOT NULL,
  `GiaBan` int NOT NULL,
  `PhanTramGiam` int DEFAULT NULL,
  `MoTaNgan` longtext NOT NULL,
  `MoTaDai` longtext NOT NULL,
  `The` varchar(255) NOT NULL,
  `AnhChinh` varchar(100) DEFAULT NULL,
  `AnhPhu1` varchar(100) DEFAULT NULL,
  `AnhPhu2` varchar(100) DEFAULT NULL,
  `AnhPhu3` varchar(100) DEFAULT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ChuyenMuc_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TenSanPham` (`TenSanPham`),
  KEY `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  KEY `product_sanpham_DuongDan_8974332b` (`DuongDan`),
  CONSTRAINT `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sanpham`
--

INSERT INTO `product_sanpham` VALUES (1,'Bánh mì thịt nguội',35000,30000,14,'Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng.','<p>B&aacute;nh m&igrave;</p>','Blog ăn uống','uploads/banhmi1_cgb8N6C.jpg','uploads/banhmi2.jpeg','uploads/banhmi3.jpeg','uploads/img4_693ihJE.jpg','banh-mi-thit-nguoi',1,'2023-11-14 01:39:00.812514','2023-11-14 01:51:28.047813',1);
INSERT INTO `product_sanpham` VALUES (2,'Trà Long Nhãn Hạt Sen',59000,49000,16,'Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.','<p>Thức uống mang hương vị của nh&atilde;n, của sen, của tr&agrave; Oolong đầy thanh m&aacute;t cho tất cả c&aacute;c th&agrave;nh vi&ecirc;n trong dịp Tết n&agrave;y. An l&agrave;nh, thư th&aacute;i v&agrave; đậm đ&agrave; ch&iacute;nh l&agrave; những g&igrave; The Coffee House mong muốn gửi trao đến bạn v&agrave; gia đ&igrave;nh.</p>','trà đạo','uploads/tra1.jpg','uploads/tra2.jpg','uploads/tra1_IqIXWhD.jpg','uploads/tra2_bENSsmz.jpg','tra-long-nhan-hat-sen',0,'2023-11-14 02:04:43.535305','2023-11-14 02:25:14.254855',2);
INSERT INTO `product_sanpham` VALUES (3,'Hi Tea Vải',69000,49000,28,'Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.','<p>Ch&uacute;t ngọt ng&agrave;o của Vải, mix c&ugrave;ng vị chua thanh tao từ tr&agrave; hoa Hibiscus, mang đến cho bạn thức uống đ&uacute;ng chuẩn vừa ngon, vừa healthy.</p>','trà đạo','uploads/hitea1.jpg','uploads/hitea3.jpg','uploads/hitea2.jpg','uploads/hitea1_BIvEoyd.jpg','hi-tea-vai',1,'2023-11-14 02:32:02.451304','2023-11-14 02:33:16.081567',2);
INSERT INTO `product_sanpham` VALUES (5,'Mousse Red Velvet',55000,45000,18,'Bánh nhiều lớp được phủ lớp kem bên trên bằng Cream cheese.','<p>B&aacute;nh nhiều lớp được phủ lớp kem b&ecirc;n tr&ecirc;n bằng Cream cheese.</p>','Blog ăn uống','uploads/tiramisu1.jpg','uploads/tiramisu2.jpg','uploads/tiramisu3.jpg','uploads/tiramisu2_HJq8qLj.jpg','mousse-red-velvet',1,'2023-11-18 12:43:16.795759','2023-11-18 12:43:16.795759',3);
INSERT INTO `product_sanpham` VALUES (6,'Chà Bông Phô Mai',79000,69000,12,'Chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.','<p>Chiếc b&aacute;nh với lớp ph&ocirc; mai v&agrave;ng s&aacute;nh mịn b&ecirc;n trong, được bọc ngo&agrave;i lớp vỏ xốp mềm thơm lừng. Th&ecirc;m lớp ch&agrave; b&ocirc;ng mằn mặn hấp dẫn b&ecirc;n tr&ecirc;n.</p>','Blog ăn uống','uploads/chabong1.png','uploads/chabong2.png','uploads/chabong3.png','uploads/chabong2_2PadUTK.png','cha-bong-pho-mai',1,'2023-11-18 12:45:15.153006','2023-11-18 15:12:09.519740',1);

--
-- Table structure for table `website_bannerbottom`
--

DROP TABLE IF EXISTS `website_bannerbottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_bannerbottom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` (`ChuyenMuc_id`),
  CONSTRAINT `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannerbottom`
--

INSERT INTO `website_bannerbottom` VALUES (1,'uploads/food-drink-banner.jpg',1,1);

--
-- Table structure for table `website_bannermid`
--

DROP TABLE IF EXISTS `website_bannermid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_bannermid` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  CONSTRAINT `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannermid`
--

INSERT INTO `website_bannermid` VALUES (1,'uploads/banhman2.jpg',1,1);
INSERT INTO `website_bannermid` VALUES (2,'uploads/banhngot2.jpg',1,3);

--
-- Table structure for table `website_bannertop`
--

DROP TABLE IF EXISTS `website_bannertop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_bannertop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  CONSTRAINT `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_bannertop`
--

INSERT INTO `website_bannertop` VALUES (1,'uploads/banhman.png',1,1);
INSERT INTO `website_bannertop` VALUES (2,'uploads/banhngot.png',1,3);
INSERT INTO `website_bannertop` VALUES (3,'uploads/thucuong.png',1,2);

--
-- Table structure for table `website_loaithongtin`
--

DROP TABLE IF EXISTS `website_loaithongtin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_loaithongtin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `MaLoai` varchar(255) DEFAULT NULL,
  `TenLoai` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_loaithongtin`
--

INSERT INTO `website_loaithongtin` VALUES (1,'tieudeweb','Tiêu Đề Website');
INSERT INTO `website_loaithongtin` VALUES (2,'sodienthoai','Số Điện Thoại');
INSERT INTO `website_loaithongtin` VALUES (3,'diachi','Địa Chỉ');
INSERT INTO `website_loaithongtin` VALUES (4,'email','Email');
INSERT INTO `website_loaithongtin` VALUES (5,'gioithieu','Giới Thiệu');
INSERT INTO `website_loaithongtin` VALUES (6,'favicon','Favicon');
INSERT INTO `website_loaithongtin` VALUES (7,'logo','Logo');
INSERT INTO `website_loaithongtin` VALUES (8,'phiship','Phí Ship');
INSERT INTO `website_loaithongtin` VALUES (9,'phivat','Phí VAT');

--
-- Table structure for table `website_nhataitro`
--

DROP TABLE IF EXISTS `website_nhataitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_nhataitro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenNhaTaiTro` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_nhataitro`
--


--
-- Table structure for table `website_slide`
--

DROP TABLE IF EXISTS `website_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_slide` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(255) NOT NULL,
  `MoTaNgan` varchar(255) NOT NULL,
  `MoTaDai` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  CONSTRAINT `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_slide`
--

INSERT INTO `website_slide` VALUES (1,'GYOZA','Đặc sản Nhật Bản tinh tế đang chờ đón bạn! Gyoza','Bạn đã sẵn sàng trải nghiệm hương vị tinh tế và cảm nhận sự kết hợp tuyệt vời giữa nhân thơm ngon và lớp bột giòn tại DjangoShop?','uploads/slide1.png',1,1);
INSERT INTO `website_slide` VALUES (2,'Asian Food','Savor the exquisite flavors of Asia!','Embark on a gastronomic adventure with our Asian Food Festival! Immerse yourself in a world of culinary delights that capture the essence of the diverse and vibrant cuisines from across Asia.','uploads/slide2.png',1,3);

--
-- Table structure for table `website_thongtin`
--

DROP TABLE IF EXISTS `website_thongtin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_thongtin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `GiaTri` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `LoaiThongTin_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LoaiThongTin_id` (`LoaiThongTin_id`),
  CONSTRAINT `website_thongtin_LoaiThongTin_id_d8d175d7_fk_website_l` FOREIGN KEY (`LoaiThongTin_id`) REFERENCES `website_loaithongtin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_thongtin`
--

INSERT INTO `website_thongtin` VALUES (1,'djangoshop.com','',1);
INSERT INTO `website_thongtin` VALUES (2,'0999.0000.999','',2);
INSERT INTO `website_thongtin` VALUES (3,'1 Võ Văn Ngân, Phường Linh Chiểu, Thành phố Thủ Đức, TP. Hồ Chí Minh','',3);
INSERT INTO `website_thongtin` VALUES (4,'lienhe@djangoshop.com','',4);
INSERT INTO `website_thongtin` VALUES (5,'djangoshop.com - Chuyên cung cấp các loại đồ ăn, thức uống tại TP. Hồ Chí Minh','',5);
INSERT INTO `website_thongtin` VALUES (6,NULL,'uploads/favicon-32x32.png',6);
INSERT INTO `website_thongtin` VALUES (8,NULL,'uploads/logo.png',7);
INSERT INTO `website_thongtin` VALUES (10,'5','',9);
INSERT INTO `website_thongtin` VALUES (11,'30000','',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
