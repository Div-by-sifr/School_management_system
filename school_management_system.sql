-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 03:26 AM
-- Server version: 11.4.3-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_system`
--
CREATE DATABASE IF NOT EXISTS `school_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `academics_academiclevel`
--

DROP TABLE IF EXISTS `academics_academiclevel`;
CREATE TABLE IF NOT EXISTS `academics_academiclevel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(55) NOT NULL,
  `level_order` int(11) NOT NULL,
  `academic_year_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_academicle_academic_year_id_0394d774_fk_academics` (`academic_year_id`),
  KEY `academics_academicle_add_by_id_09611589_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academics_academiclevel`
--

INSERT INTO `academics_academiclevel` (`id`, `level_name`, `level_order`, `academic_year_id`, `add_by_id`) VALUES
(1, 'الصف السادس', 6, 1, NULL),
(2, 'الصف الاول', 1, 1, NULL),
(3, 'الصف الثاني', 2, 1, NULL),
(4, 'الصف الثالث', 3, 1, NULL),
(5, 'الصف الرابع', 4, 1, NULL),
(6, 'الصف الخامس', 5, 1, NULL),
(7, 'الصف السابع', 7, 1, NULL),
(8, 'الصف الثامن', 8, 1, NULL),
(9, 'الصف التاسع', 9, 1, NULL),
(10, 'الصف الاول ثانوي', 10, 1, NULL),
(11, 'الصف الثاني ثانوي', 11, 1, NULL),
(12, 'الصف الثالث ثانوي', 12, 1, NULL),
(13, 'الصف التاسع', 9, 2, 1),
(14, 'الصف الثالث الثانوي', 12, 3, 1),
(15, 'الصف الثاني ثانوي', 11, 2, 1),
(16, 'الصف الثالث ثانوي', 12, 4, 1),
(17, 'الصف التاسع', 9, 2, 1),
(18, 'الصف الثالث ثانوي', 12, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_academicyear`
--

DROP TABLE IF EXISTS `academics_academicyear`;
CREATE TABLE IF NOT EXISTS `academics_academicyear` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_academicye_add_by_id_5873199d_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academics_academicyear`
--

INSERT INTO `academics_academicyear` (`id`, `start_year`, `end_year`, `add_by_id`) VALUES
(1, '2025-03-29', '2026-03-29', NULL),
(2, '2024-03-30', '2025-03-30', NULL),
(3, '2026-04-07', '2027-04-07', 1),
(4, '2027-04-07', '2028-04-07', 1),
(5, '2028-04-19', '2029-04-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_class`
--

DROP TABLE IF EXISTS `academics_class`;
CREATE TABLE IF NOT EXISTS `academics_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `joining_date` date NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_class_section_id_a2f19082_fk_academics_section_id` (`section_id`),
  KEY `academics_class_teacher_id_990928e1_fk_accounts_` (`teacher_id`),
  KEY `academics_class_subject_id_58ca8d68_fk_academics_subject_id` (`subject_id`),
  KEY `academics_class_add_by_id_dcd5f7d0_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics_section`
--

DROP TABLE IF EXISTS `academics_section`;
CREATE TABLE IF NOT EXISTS `academics_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `academic_level_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_section_academic_level_id_b7e16171_fk_academics` (`academic_level_id`),
  KEY `academics_section_add_by_id_30a5f19a_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academics_section`
--

INSERT INTO `academics_section` (`id`, `name`, `description`, `academic_level_id`, `add_by_id`) VALUES
(1, 'الشعبة (أ)', 'الصف السادس الشعبة (أ)', 1, NULL),
(2, 'الشعبة (أ)', 'الصف الأول الشعبة (أ)', 2, NULL),
(3, 'الشعبة (أ)', 'الصف الثاني الشعبة (أ)', 3, NULL),
(4, 'الشعبة (ب)', 'الصف الأول الشعبة (ب)', 2, NULL),
(5, 'الشعبة (ب)', 'الصف الثاني الشعبة (ب)', 3, NULL),
(6, 'الشعبة (أ)', 'الصف الثالث الشعبة (أ)', 4, NULL),
(7, 'الشعبة (ب)', 'الصف الثالث الشعبة (ب)', 4, NULL),
(8, 'الشعبة (أ)', 'الصف الرابع الشعبة (أ)', 5, NULL),
(9, 'الشعبة (ب)', 'الصف الرابع الشعبة (ب)', 5, NULL),
(10, 'الشعبة (أ)', 'الصف الخامس الشعبة (أ)', 6, NULL),
(11, 'الشعبة (ب)', 'الصف الخامس الشعبة (ب)', 6, NULL),
(12, 'الشعبة (ب)', 'الصف السادس الشعبة (ب)', 1, NULL),
(13, 'الشعبة (أ)', 'الصف السابع الشعبة (أ)', 7, NULL),
(14, 'الشعبة (ب)', 'الصف السابع الشعبة (ب)', 7, NULL),
(15, 'الشعبة (أ)', 'الصف الثامن الشعبة (أ)', 8, NULL),
(16, 'الشعبة (ب)', 'الصف الثامن الشعبة (ب)', 8, NULL),
(17, 'الشعبة (أ)', 'الصف التاسع الشعبة (أ)', 9, NULL),
(18, 'الشعبة (ب)', 'الصف التاسع الشعبة (ب)', 9, NULL),
(19, 'الشعبة (أ)', 'الصف الاول الثانوي الشعبة (أ)', 10, NULL),
(20, 'الشعبة (ب)', 'الصف الاول الثانوي الشعبة (ب)', 10, NULL),
(21, 'الشعبة (أ)', 'الصف الثاني الثانوي الشعبة (أ)', 11, NULL),
(22, 'الشعبة (ب)', 'الصف الثاني الثانوي الشعبة (ب)', 11, NULL),
(23, 'الشعبة (أ)', 'الصف الثالث الثانوي الشعبة (أ)', 12, NULL),
(24, 'الشعبة (ب)', 'الصف الثالث الثانوي الشعبة (ب)', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academics_students_academic_levels`
--

DROP TABLE IF EXISTS `academics_students_academic_levels`;
CREATE TABLE IF NOT EXISTS `academics_students_academic_levels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `registration_date` datetime(6) NOT NULL,
  `academic_levels_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_students_a_academic_levels_id_a1bfec1e_fk_academics` (`academic_levels_id`),
  KEY `academics_students_a_student_id_1f08a2bc_fk_accounts_` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academics_students_academic_levels`
--

INSERT INTO `academics_students_academic_levels` (`id`, `registration_date`, `academic_levels_id`, `student_id`, `is_current`) VALUES
(7, '2025-04-07 12:16:00.000000', 12, 11, 1),
(8, '2025-04-07 13:25:00.000000', 2, 12, 1),
(12, '2025-04-20 20:37:11.000000', 18, 10, 0),
(22, '2025-04-20 20:11:26.000000', 12, 19, 1),
(24, '2025-04-21 03:23:00.000000', 2, 10, 1),
(25, '2025-04-21 03:35:00.000000', 4, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `academics_subject`
--

DROP TABLE IF EXISTS `academics_subject`;
CREATE TABLE IF NOT EXISTS `academics_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_subject_add_by_id_394d4559_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics_term`
--

DROP TABLE IF EXISTS `academics_term`;
CREATE TABLE IF NOT EXISTS `academics_term` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `term_number` int(11) NOT NULL,
  `start_term` date NOT NULL,
  `end_term` date NOT NULL,
  `academic_levels_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academics_term_academic_levels_id_6ebc9e7b_fk_academics` (`academic_levels_id`),
  KEY `academics_term_add_by_id_9f9a62b9_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser`
--

DROP TABLE IF EXISTS `accounts_customuser`;
CREATE TABLE IF NOT EXISTS `accounts_customuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `address` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `phone_number`, `user_type`, `full_name`, `birthday`, `gender`, `address`, `is_active`, `is_staff`, `date_joined`, `email`, `image`) VALUES
(4, 'pbkdf2_sha256$1000000$OePMYs7SlNZ97JWmglgxu2$Fl5QiSKeXb+0tXIIn87FI/VYCvJ7tfj1maxS2Ja5fM4=', '2025-04-27 01:20:51.630030', 1, '770489242', 'supervisor', 'صالح محمد صالح الجبري', '2004-02-11', 'M', 'شارع العدين', 1, 1, '2025-03-29 07:42:18.306036', 's96557867@gmail.com', 'images/25/04/03/lacoste_1.png'),
(24, 'pbkdf2_sha256$870000$0CNsiZFJZ7mL8W3JBJ9KXE$T7CY3Mde1XDBw7AyqcI21ZQBkXYMsJseAEEEycpCDrI=', NULL, 1, '85486451', 'supervisor', 'محمد صالح عبدالله الجبري', '1963-02-11', 'M', 'Al-Udayn Street', 1, 1, '2025-04-03 07:13:59.869469', 'abnalyemen166@gmail.com', 'images/25/04/03/polo_2.jpg'),
(34, 'pbkdf2_sha256$870000$KvzRTVTyjgFhoTjNo14iQH$mTd2HtTprj55ZamB0Qytqni+/aPtpL3gr8Z8e8dl51I=', NULL, 0, '0096777498986', 'student', 'علي نشوان الشاوؤش', '2004-03-11', 'M', 'شارع العدين', 1, 0, '2025-04-06 12:25:19.981037', 'alinashwan@gmail.com', 'images/25/04/07/Screenshot_2025-04-06_132129.png'),
(35, 'pbkdf2_sha256$870000$XgP9cOoH4kCsHMTh99bslW$dmCzjrOfNo/+zNFvdec7QHUB1rWaipJ0FqMXClkJtpU=', NULL, 0, '777686999', 'student', 'حسين محمد علي الجبري', '2004-03-11', 'M', 'مستشفى الثوره', 1, 0, '2025-04-07 10:16:32.781509', 'hosean@gmail.com', 'images/25/04/07/adidas_4.jpg'),
(36, 'pbkdf2_sha256$870000$9nPJ2TxGl4uO1XNAPtXtRY$kJdYnoklrGTr43kxThfQyT6f+NawTX5BRZ4f8tk0PvQ=', NULL, 0, '0096777682676', 'student', 'فادي محمد صالح الوجية', '2002-05-11', 'M', 'شارع العدين', 1, 0, '2025-04-07 11:25:45.412688', 'fadimohammed@gmail.com', 'images/25/04/07/Screenshot_2025-04-07_132524.png'),
(41, 'pbkdf2_sha256$870000$WFMaRlQWBrEdlQSf5f05ah$D577tc1t8cecCm6K0JcUYaLEhde/KhMFnomI0wnVov0=', NULL, 0, '0096777171386', 'student', 'عبدالكريم محمد صالح الجبري', '1999-03-11', 'M', 'شارع الثورة', 1, 0, '2025-04-10 12:23:30.787498', 'abd1999@gmail.com', 'images/25/04/10/Screenshot_2025-04-10_142016.png'),
(44, 'pbkdf2_sha256$870000$0ta3JduPu17W5fyyKs44L7$bRAU8qTYU6FIPrjcP5bs6b6JEPeldAcnEoXumJZxvT0=', '2025-04-20 22:17:56.847888', 1, '0777534724', 'supervisor', 'احمد المهاجري', '2002-11-02', 'M', 'اب-صهبان', 1, 1, '2025-04-19 20:09:09.688304', 'almohagriahmed@gmail.com', 'images/25/04/19/Picsart_25-03-18_06-09-20-034.jpg'),
(47, 'pbkdf2_sha256$870000$zQ9EvYGSLOQSEMfkhioYqT$lZXuBgddoGeMww7EU5tHt0YVeJw/YD/XFoaSe7KVnIQ=', NULL, 0, '28467426', 'student', 'نوفل', '2004-04-20', 'M', 'تعز', 1, 0, '2025-04-20 20:08:31.617429', 'nofal@gmail.com', 'images/25/04/20/tshirt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_groups`
--

DROP TABLE IF EXISTS `accounts_customuser_groups`;
CREATE TABLE IF NOT EXISTS `accounts_customuser_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_customuser_user_permissions`;
CREATE TABLE IF NOT EXISTS `accounts_customuser_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_guardianprofile`
--

DROP TABLE IF EXISTS `accounts_guardianprofile`;
CREATE TABLE IF NOT EXISTS `accounts_guardianprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guardian_type` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `accounts_guardianpro_add_by_id_abccd73c_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_studentguardian`
--

DROP TABLE IF EXISTS `accounts_studentguardian`;
CREATE TABLE IF NOT EXISTS `accounts_studentguardian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guardian_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_studentguar_guardian_id_53dcc458_fk_accounts_` (`guardian_id`),
  KEY `accounts_studentguar_student_id_daf1c672_fk_accounts_` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_studentprofile`
--

DROP TABLE IF EXISTS `accounts_studentprofile`;
CREATE TABLE IF NOT EXISTS `accounts_studentprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_joining_sections` datetime(6) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `accounts_studentprof_section_id_8f0a06eb_fk_academics` (`section_id`),
  KEY `accounts_studentprof_add_by_id_ca8260ab_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_studentprofile`
--

INSERT INTO `accounts_studentprofile` (`id`, `date_joining_sections`, `section_id`, `user_id`, `add_by_id`) VALUES
(10, '2025-04-07 13:15:00.000000', 19, 34, 14),
(11, '2025-04-07 12:16:00.000000', 24, 35, 1),
(12, '2025-04-07 13:25:00.000000', 2, 36, 1),
(17, NULL, NULL, 41, 1),
(19, '2025-04-20 23:10:00.000000', 24, 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_supervisorprofile`
--

DROP TABLE IF EXISTS `accounts_supervisorprofile`;
CREATE TABLE IF NOT EXISTS `accounts_supervisorprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_supervisorprofile_user_id_40a9b879_uniq` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_supervisorprofile`
--

INSERT INTO `accounts_supervisorprofile` (`id`, `user_id`) VALUES
(1, 4),
(11, 24),
(14, 44);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_teacherprofile`
--

DROP TABLE IF EXISTS `accounts_teacherprofile`;
CREATE TABLE IF NOT EXISTS `accounts_teacherprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `accounts_teacherprof_add_by_id_13ef36d7_fk_accounts_` (`add_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add section', 6, 'add_section'),
(22, 'Can change section', 6, 'change_section'),
(23, 'Can delete section', 6, 'delete_section'),
(24, 'Can view section', 6, 'view_section'),
(25, 'Can add subject', 7, 'add_subject'),
(26, 'Can change subject', 7, 'change_subject'),
(27, 'Can delete subject', 7, 'delete_subject'),
(28, 'Can view subject', 7, 'view_subject'),
(29, 'Can add class', 8, 'add_class'),
(30, 'Can change class', 8, 'change_class'),
(31, 'Can delete class', 8, 'delete_class'),
(32, 'Can view class', 8, 'view_class'),
(33, 'Can add term', 9, 'add_term'),
(34, 'Can change term', 9, 'change_term'),
(35, 'Can delete term', 9, 'delete_term'),
(36, 'Can view term', 9, 'view_term'),
(37, 'Can add academic level', 10, 'add_academiclevel'),
(38, 'Can change academic level', 10, 'change_academiclevel'),
(39, 'Can delete academic level', 10, 'delete_academiclevel'),
(40, 'Can view academic level', 10, 'view_academiclevel'),
(41, 'Can add academic year', 11, 'add_academicyear'),
(42, 'Can change academic year', 11, 'change_academicyear'),
(43, 'Can delete academic year', 11, 'delete_academicyear'),
(44, 'Can view academic year', 11, 'view_academicyear'),
(45, 'Can add students_ academic_ levels', 12, 'add_students_academic_levels'),
(46, 'Can change students_ academic_ levels', 12, 'change_students_academic_levels'),
(47, 'Can delete students_ academic_ levels', 12, 'delete_students_academic_levels'),
(48, 'Can view students_ academic_ levels', 12, 'view_students_academic_levels'),
(49, 'Can add custom user', 13, 'add_customuser'),
(50, 'Can change custom user', 13, 'change_customuser'),
(51, 'Can delete custom user', 13, 'delete_customuser'),
(52, 'Can view custom user', 13, 'view_customuser'),
(53, 'Can add student profile', 14, 'add_studentprofile'),
(54, 'Can change student profile', 14, 'change_studentprofile'),
(55, 'Can delete student profile', 14, 'delete_studentprofile'),
(56, 'Can view student profile', 14, 'view_studentprofile'),
(57, 'Can add guardian profile', 15, 'add_guardianprofile'),
(58, 'Can change guardian profile', 15, 'change_guardianprofile'),
(59, 'Can delete guardian profile', 15, 'delete_guardianprofile'),
(60, 'Can view guardian profile', 15, 'view_guardianprofile'),
(61, 'Can add student guardian', 16, 'add_studentguardian'),
(62, 'Can change student guardian', 16, 'change_studentguardian'),
(63, 'Can delete student guardian', 16, 'delete_studentguardian'),
(64, 'Can view student guardian', 16, 'view_studentguardian'),
(65, 'Can add teacher profile', 17, 'add_teacherprofile'),
(66, 'Can change teacher profile', 17, 'change_teacherprofile'),
(67, 'Can delete teacher profile', 17, 'delete_teacherprofile'),
(68, 'Can view teacher profile', 17, 'view_teacherprofile'),
(69, 'Can add supervisor profile', 18, 'add_supervisorprofile'),
(70, 'Can change supervisor profile', 18, 'change_supervisorprofile'),
(71, 'Can delete supervisor profile', 18, 'delete_supervisorprofile'),
(72, 'Can view supervisor profile', 18, 'view_supervisorprofile'),
(73, 'Can add month', 19, 'add_month'),
(74, 'Can change month', 19, 'change_month'),
(75, 'Can delete month', 19, 'delete_month'),
(76, 'Can view month', 19, 'view_month'),
(77, 'Can add monthly grade', 20, 'add_monthlygrade'),
(78, 'Can change monthly grade', 20, 'change_monthlygrade'),
(79, 'Can delete monthly grade', 20, 'delete_monthlygrade'),
(80, 'Can view monthly grade', 20, 'view_monthlygrade'),
(81, 'Can add term grade', 21, 'add_termgrade'),
(82, 'Can change term grade', 21, 'change_termgrade'),
(83, 'Can delete term grade', 21, 'delete_termgrade'),
(84, 'Can view term grade', 21, 'view_termgrade');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'academics', 'academiclevel'),
(11, 'academics', 'academicyear'),
(8, 'academics', 'class'),
(6, 'academics', 'section'),
(12, 'academics', 'students_academic_levels'),
(7, 'academics', 'subject'),
(9, 'academics', 'term'),
(13, 'accounts', 'customuser'),
(15, 'accounts', 'guardianprofile'),
(16, 'accounts', 'studentguardian'),
(14, 'accounts', 'studentprofile'),
(18, 'accounts', 'supervisorprofile'),
(17, 'accounts', 'teacherprofile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(19, 'grades', 'month'),
(20, 'grades', 'monthlygrade'),
(21, 'grades', 'termgrade'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-27 01:07:04.978699'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-04-27 01:07:05.001217'),
(3, 'auth', '0001_initial', '2025-04-27 01:07:05.068213'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-04-27 01:07:05.083212'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-04-27 01:07:05.089212'),
(6, 'auth', '0004_alter_user_username_opts', '2025-04-27 01:07:05.096218'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-04-27 01:07:05.102250'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-04-27 01:07:05.105232'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-04-27 01:07:05.111216'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-04-27 01:07:05.118251'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-04-27 01:07:05.124248'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-04-27 01:07:05.137215'),
(13, 'auth', '0011_update_proxy_permissions', '2025-04-27 01:07:05.144248'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-04-27 01:07:05.152231'),
(15, 'academics', '0001_initial', '2025-04-27 01:07:05.201230'),
(16, 'accounts', '0001_initial', '2025-04-27 01:07:05.305258'),
(17, 'accounts', '0002_customuser_date_joined_customuser_email', '2025-04-27 01:07:05.342309'),
(18, 'accounts', '0003_guardianprofile_studentguardian_teacherprofile', '2025-04-27 01:07:05.420367'),
(19, 'accounts', '0004_alter_customuser_options', '2025-04-27 01:07:05.431375'),
(20, 'accounts', '0005_alter_customuser_options_and_more', '2025-04-27 01:07:05.445396'),
(21, 'accounts', '0006_customuser_image', '2025-04-27 01:07:05.463369'),
(22, 'accounts', '0007_alter_customuser_user_type_supervisorprofile_and_more', '2025-04-27 01:07:05.580565'),
(23, 'accounts', '0008_alter_customuser_gender', '2025-04-27 01:07:05.590551'),
(24, 'accounts', '0009_alter_supervisorprofile_user', '2025-04-27 01:07:05.706604'),
(25, 'academics', '0002_month_subject_class_term', '2025-04-27 01:07:05.795549'),
(26, 'academics', '0003_delete_month', '2025-04-27 01:07:05.803550'),
(27, 'academics', '0004_rename_academiclevels_academiclevel_and_more', '2025-04-27 01:07:05.995066'),
(28, 'academics', '0005_rename_academic_levels_section_academic_level', '2025-04-27 01:07:06.075582'),
(29, 'academics', '0006_academiclevel_add_by_academicyear_add_by_and_more', '2025-04-27 01:07:06.233582'),
(30, 'academics', '0007_students_academic_levels', '2025-04-27 01:07:06.271549'),
(31, 'academics', '0008_alter_students_academic_levels_student', '2025-04-27 01:07:06.333549'),
(32, 'academics', '0009_alter_students_academic_levels_academic_levels_and_more', '2025-04-27 01:07:06.400551'),
(33, 'academics', '0010_students_academic_levels_is_current_and_more', '2025-04-27 01:07:06.450576'),
(34, 'academics', '0011_alter_students_academic_levels_options', '2025-04-27 01:07:06.462577'),
(35, 'accounts', '0010_alter_studentprofile_user', '2025-04-27 01:07:06.479552'),
(36, 'accounts', '0011_alter_supervisorprofile_user', '2025-04-27 01:07:06.493552'),
(37, 'accounts', '0012_alter_customuser_phone_number', '2025-04-27 01:07:06.504584'),
(38, 'admin', '0001_initial', '2025-04-27 01:07:06.546550'),
(39, 'admin', '0002_logentry_remove_auto_add', '2025-04-27 01:07:06.558553'),
(40, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-27 01:07:06.571553'),
(41, 'grades', '0001_initial', '2025-04-27 01:07:06.728549'),
(42, 'sessions', '0001_initial', '2025-04-27 01:07:06.744761');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rzyimnb3uoxdvzno4o0kyejf9ulr25da', '.eJxVjMsOwiAQRf-FtSE8hg64dO83EGCmUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxJnAeL0u-VUHtx2QPfUbrMsc1uXKctdkQft8joTPy-H-3dQU6_f2kNQRAZY26GEoJEQFKhsguWCLnurNQ7oRvIwslLBO1JsCckgA3jx_gC4wTbO:1u8qhP:6HcFfoOhRC61Agh8xhb0D64ZSZ-Nlyp-C4_du6_yOzk', '2025-05-11 01:20:51.633019');

-- --------------------------------------------------------

--
-- Table structure for table `grades_month`
--

DROP TABLE IF EXISTS `grades_month`;
CREATE TABLE IF NOT EXISTS `grades_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `month_name` varchar(10) NOT NULL,
  `month_order` smallint(5) UNSIGNED NOT NULL CHECK (`month_order` >= 0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `month_name` (`month_name`),
  UNIQUE KEY `month_order` (`month_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_monthlygrade`
--

DROP TABLE IF EXISTS `grades_monthlygrade`;
CREATE TABLE IF NOT EXISTS `grades_monthlygrade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assignments` decimal(20,2) NOT NULL,
  `attendance` decimal(20,2) NOT NULL,
  `oral` decimal(20,2) NOT NULL,
  `written` decimal(40,2) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `month_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grades_monthlygrade_month_id_27b80604_fk_grades_month_id` (`month_id`),
  KEY `grades_monthlygrade_student_id_fb2aa217_fk_accounts_` (`student_id`),
  KEY `grades_monthlygrade_subject_id_62870554_fk_academics_subject_id` (`subject_id`),
  KEY `grades_monthlygrade_teacher_id_fd3d3785_fk_accounts_` (`teacher_id`),
  KEY `grades_monthlygrade_term_id_4c9567ff_fk_academics_term_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_termgrade`
--

DROP TABLE IF EXISTS `grades_termgrade`;
CREATE TABLE IF NOT EXISTS `grades_termgrade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `score` decimal(20,2) NOT NULL,
  `exam` decimal(30,2) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grades_termgrade_student_id_0248f653_fk_accounts_` (`student_id`),
  KEY `grades_termgrade_subject_id_4bef224e_fk_academics_subject_id` (`subject_id`),
  KEY `grades_termgrade_teacher_id_f7e2bce6_fk_accounts_` (`teacher_id`),
  KEY `grades_termgrade_term_id_82a05043_fk_academics_term_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  ADD CONSTRAINT `academics_academicle_academic_year_id_0394d774_fk_academics` FOREIGN KEY (`academic_year_id`) REFERENCES `academics_academicyear` (`id`),
  ADD CONSTRAINT `academics_academicle_add_by_id_09611589_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- Constraints for table `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  ADD CONSTRAINT `academics_academicye_add_by_id_5873199d_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- Constraints for table `academics_class`
--
ALTER TABLE `academics_class`
  ADD CONSTRAINT `academics_class_add_by_id_dcd5f7d0_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `academics_class_section_id_a2f19082_fk_academics_section_id` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `academics_class_subject_id_58ca8d68_fk_academics_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `academics_subject` (`id`),
  ADD CONSTRAINT `academics_class_teacher_id_990928e1_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacherprofile` (`id`);

--
-- Constraints for table `academics_section`
--
ALTER TABLE `academics_section`
  ADD CONSTRAINT `academics_section_academic_level_id_b7e16171_fk_academics` FOREIGN KEY (`academic_level_id`) REFERENCES `academics_academiclevel` (`id`),
  ADD CONSTRAINT `academics_section_add_by_id_30a5f19a_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- Constraints for table `academics_students_academic_levels`
--
ALTER TABLE `academics_students_academic_levels`
  ADD CONSTRAINT `academics_students_a_academic_levels_id_a1bfec1e_fk_academics` FOREIGN KEY (`academic_levels_id`) REFERENCES `academics_academiclevel` (`id`),
  ADD CONSTRAINT `academics_students_a_student_id_1f08a2bc_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_studentprofile` (`id`);

--
-- Constraints for table `academics_subject`
--
ALTER TABLE `academics_subject`
  ADD CONSTRAINT `academics_subject_add_by_id_394d4559_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- Constraints for table `academics_term`
--
ALTER TABLE `academics_term`
  ADD CONSTRAINT `academics_term_academic_levels_id_6ebc9e7b_fk_academics` FOREIGN KEY (`academic_levels_id`) REFERENCES `academics_academiclevel` (`id`),
  ADD CONSTRAINT `academics_term_add_by_id_9f9a62b9_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- Constraints for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `accounts_guardianprofile`
--
ALTER TABLE `accounts_guardianprofile`
  ADD CONSTRAINT `accounts_guardianpro_add_by_id_abccd73c_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `accounts_guardianpro_user_id_5b77227a_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `accounts_studentguardian`
--
ALTER TABLE `accounts_studentguardian`
  ADD CONSTRAINT `accounts_studentguar_guardian_id_53dcc458_fk_accounts_` FOREIGN KEY (`guardian_id`) REFERENCES `accounts_guardianprofile` (`id`),
  ADD CONSTRAINT `accounts_studentguar_student_id_daf1c672_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_studentprofile` (`id`);

--
-- Constraints for table `accounts_studentprofile`
--
ALTER TABLE `accounts_studentprofile`
  ADD CONSTRAINT `accounts_studentprof_add_by_id_ca8260ab_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `accounts_studentprof_section_id_8f0a06eb_fk_academics` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `accounts_studentprof_user_id_04a48d2e_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `accounts_supervisorprofile`
--
ALTER TABLE `accounts_supervisorprofile`
  ADD CONSTRAINT `accounts_supervisorp_user_id_40a9b879_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD CONSTRAINT `accounts_teacherprof_add_by_id_13ef36d7_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `accounts_teacherprof_user_id_9582b3e8_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `grades_monthlygrade`
--
ALTER TABLE `grades_monthlygrade`
  ADD CONSTRAINT `grades_monthlygrade_month_id_27b80604_fk_grades_month_id` FOREIGN KEY (`month_id`) REFERENCES `grades_month` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_student_id_fb2aa217_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_studentprofile` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_subject_id_62870554_fk_academics_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `academics_subject` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_teacher_id_fd3d3785_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacherprofile` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_term_id_4c9567ff_fk_academics_term_id` FOREIGN KEY (`term_id`) REFERENCES `academics_term` (`id`);

--
-- Constraints for table `grades_termgrade`
--
ALTER TABLE `grades_termgrade`
  ADD CONSTRAINT `grades_termgrade_student_id_0248f653_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_studentprofile` (`id`),
  ADD CONSTRAINT `grades_termgrade_subject_id_4bef224e_fk_academics_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `academics_subject` (`id`),
  ADD CONSTRAINT `grades_termgrade_teacher_id_f7e2bce6_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacherprofile` (`id`),
  ADD CONSTRAINT `grades_termgrade_term_id_82a05043_fk_academics_term_id` FOREIGN KEY (`term_id`) REFERENCES `academics_term` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
