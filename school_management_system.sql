-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 10:17 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `academics_academiclevel`
--

CREATE TABLE `academics_academiclevel` (
  `id` bigint(20) NOT NULL,
  `level_name` varchar(55) NOT NULL,
  `level_order` int(11) NOT NULL,
  `academic_year_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `academics_academicyear` (
  `id` bigint(20) NOT NULL,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `academics_class` (
  `id` bigint(20) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `joining_date` date NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics_section`
--

CREATE TABLE `academics_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `academic_level_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `academics_students_academic_levels` (
  `id` bigint(20) NOT NULL,
  `registration_date` datetime(6) NOT NULL,
  `academic_levels_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `is_current` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `academics_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics_term`
--

CREATE TABLE `academics_term` (
  `id` bigint(20) NOT NULL,
  `term_number` int(11) NOT NULL,
  `start_term` date NOT NULL,
  `end_term` date NOT NULL,
  `academic_levels_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser`
--

CREATE TABLE `accounts_customuser` (
  `id` bigint(20) NOT NULL,
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
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `phone_number`, `user_type`, `full_name`, `birthday`, `gender`, `address`, `is_active`, `is_staff`, `date_joined`, `email`, `image`) VALUES
(4, 'pbkdf2_sha256$870000$KZrWJLRIXK0D6I3fkfbYpA$dL3JRdizdTdyGu9snG+Y7DElQcTzQQAq291p6ltl0cA=', '2025-04-25 20:13:02.088324', 1, '770489242', 'supervisor', 'صالح محمد صالح الجبري', '2004-02-11', 'M', 'شارع العدين', 1, 1, '2025-03-29 07:42:18.306036', 's96557867@gmail.com', 'images/25/04/03/lacoste_1.png'),
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

CREATE TABLE `accounts_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_user_permissions`
--

CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_guardianprofile`
--

CREATE TABLE `accounts_guardianprofile` (
  `id` bigint(20) NOT NULL,
  `guardian_type` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_studentguardian`
--

CREATE TABLE `accounts_studentguardian` (
  `id` bigint(20) NOT NULL,
  `guardian_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_studentprofile`
--

CREATE TABLE `accounts_studentprofile` (
  `id` bigint(20) NOT NULL,
  `date_joining_sections` datetime(6) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `accounts_supervisorprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `accounts_teacherprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments_assignment`
--

CREATE TABLE `assignments_assignment` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `assignment_type` varchar(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `due_date` datetime(6) NOT NULL,
  `max_grade` decimal(5,2) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments_studentassignment`
--

CREATE TABLE `assignments_studentassignment` (
  `id` bigint(20) NOT NULL,
  `submission_date` datetime(6) DEFAULT NULL,
  `submission_status` varchar(20) NOT NULL,
  `grade` decimal(5,2) DEFAULT NULL,
  `teacher_feedback` longtext DEFAULT NULL,
  `student_work` varchar(100) DEFAULT NULL,
  `assignment_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(21, 'Can add academic years', 6, 'add_academicyears'),
(22, 'Can change academic years', 6, 'change_academicyears'),
(23, 'Can delete academic years', 6, 'delete_academicyears'),
(24, 'Can view academic years', 6, 'view_academicyears'),
(25, 'Can add academic levels', 7, 'add_academiclevels'),
(26, 'Can change academic levels', 7, 'change_academiclevels'),
(27, 'Can delete academic levels', 7, 'delete_academiclevels'),
(28, 'Can view academic levels', 7, 'view_academiclevels'),
(29, 'Can add section', 8, 'add_section'),
(30, 'Can change section', 8, 'change_section'),
(31, 'Can delete section', 8, 'delete_section'),
(32, 'Can view section', 8, 'view_section'),
(33, 'Can add custom user', 9, 'add_customuser'),
(34, 'Can change custom user', 9, 'change_customuser'),
(35, 'Can delete custom user', 9, 'delete_customuser'),
(36, 'Can view custom user', 9, 'view_customuser'),
(37, 'Can add student profile', 10, 'add_studentprofile'),
(38, 'Can change student profile', 10, 'change_studentprofile'),
(39, 'Can delete student profile', 10, 'delete_studentprofile'),
(40, 'Can view student profile', 10, 'view_studentprofile'),
(41, 'Can add student guardian', 11, 'add_studentguardian'),
(42, 'Can change student guardian', 11, 'change_studentguardian'),
(43, 'Can delete student guardian', 11, 'delete_studentguardian'),
(44, 'Can view student guardian', 11, 'view_studentguardian'),
(45, 'Can add guardian profile', 13, 'add_guardianprofile'),
(46, 'Can change guardian profile', 13, 'change_guardianprofile'),
(47, 'Can delete guardian profile', 13, 'delete_guardianprofile'),
(48, 'Can view guardian profile', 13, 'view_guardianprofile'),
(49, 'Can add teacher profile', 12, 'add_teacherprofile'),
(50, 'Can change teacher profile', 12, 'change_teacherprofile'),
(51, 'Can delete teacher profile', 12, 'delete_teacherprofile'),
(52, 'Can view teacher profile', 12, 'view_teacherprofile'),
(53, 'Can add month', 14, 'add_month'),
(54, 'Can change month', 14, 'change_month'),
(55, 'Can delete month', 14, 'delete_month'),
(56, 'Can view month', 14, 'view_month'),
(57, 'Can add term', 15, 'add_term'),
(58, 'Can change term', 15, 'change_term'),
(59, 'Can delete term', 15, 'delete_term'),
(60, 'Can view term', 15, 'view_term'),
(61, 'Can add class', 16, 'add_class'),
(62, 'Can change class', 16, 'change_class'),
(63, 'Can delete class', 16, 'delete_class'),
(64, 'Can view class', 16, 'view_class'),
(65, 'Can add subject', 17, 'add_subject'),
(66, 'Can change subject', 17, 'change_subject'),
(67, 'Can delete subject', 17, 'delete_subject'),
(68, 'Can view subject', 17, 'view_subject'),
(69, 'Can add academic level', 7, 'add_academiclevel'),
(70, 'Can change academic level', 7, 'change_academiclevel'),
(71, 'Can delete academic level', 7, 'delete_academiclevel'),
(72, 'Can view academic level', 7, 'view_academiclevel'),
(73, 'Can add academic year', 6, 'add_academicyear'),
(74, 'Can change academic year', 6, 'change_academicyear'),
(75, 'Can delete academic year', 6, 'delete_academicyear'),
(76, 'Can view academic year', 6, 'view_academicyear'),
(77, 'Can add supervisor profile', 18, 'add_supervisorprofile'),
(78, 'Can change supervisor profile', 18, 'change_supervisorprofile'),
(79, 'Can delete supervisor profile', 18, 'delete_supervisorprofile'),
(80, 'Can view supervisor profile', 18, 'view_supervisorprofile'),
(81, 'Can add students_ academic_ levels', 19, 'add_students_academic_levels'),
(82, 'Can change students_ academic_ levels', 19, 'change_students_academic_levels'),
(83, 'Can delete students_ academic_ levels', 19, 'delete_students_academic_levels'),
(84, 'Can view students_ academic_ levels', 19, 'view_students_academic_levels'),
(85, 'Can add واجب', 20, 'add_assignment'),
(86, 'Can change واجب', 20, 'change_assignment'),
(87, 'Can delete واجب', 20, 'delete_assignment'),
(88, 'Can view واجب', 20, 'view_assignment'),
(89, 'Can add تسليم الطالب', 21, 'add_studentassignment'),
(90, 'Can change تسليم الطالب', 21, 'change_studentassignment'),
(91, 'Can delete تسليم الطالب', 21, 'delete_studentassignment'),
(92, 'Can view تسليم الطالب', 21, 'view_studentassignment'),
(93, 'Can add المستوى الأكاديمي', 22, 'add_academiclevel'),
(94, 'Can change المستوى الأكاديمي', 22, 'change_academiclevel'),
(95, 'Can delete المستوى الأكاديمي', 22, 'delete_academiclevel'),
(96, 'Can view المستوى الأكاديمي', 22, 'view_academiclevel'),
(97, 'Can add السنة الأكاديمية', 23, 'add_academicyear'),
(98, 'Can change السنة الأكاديمية', 23, 'change_academicyear'),
(99, 'Can delete السنة الأكاديمية', 23, 'delete_academicyear'),
(100, 'Can view السنة الأكاديمية', 23, 'view_academicyear'),
(101, 'Can add شهر', 24, 'add_month'),
(102, 'Can change شهر', 24, 'change_month'),
(103, 'Can delete شهر', 24, 'delete_month'),
(104, 'Can view شهر', 24, 'view_month'),
(105, 'Can add ربط المادة بالمستوى', 25, 'add_academiclevelsubject'),
(106, 'Can change ربط المادة بالمستوى', 25, 'change_academiclevelsubject'),
(107, 'Can delete ربط المادة بالمستوى', 25, 'delete_academiclevelsubject'),
(108, 'Can view ربط المادة بالمستوى', 25, 'view_academiclevelsubject'),
(109, 'Can add الفصل الدراسي', 26, 'add_section'),
(110, 'Can change الفصل الدراسي', 26, 'change_section'),
(111, 'Can delete الفصل الدراسي', 26, 'delete_section'),
(112, 'Can view الفصل الدراسي', 26, 'view_section'),
(113, 'Can add المادة الدراسية', 27, 'add_subject'),
(114, 'Can change المادة الدراسية', 27, 'change_subject'),
(115, 'Can delete المادة الدراسية', 27, 'delete_subject'),
(116, 'Can view المادة الدراسية', 27, 'view_subject'),
(117, 'Can add الترم الدراسي', 28, 'add_term'),
(118, 'Can change الترم الدراسي', 28, 'change_term'),
(119, 'Can delete الترم الدراسي', 28, 'delete_term'),
(120, 'Can view الترم الدراسي', 28, 'view_term'),
(121, 'Can add الدرجة الشهرية', 29, 'add_monthlygrade'),
(122, 'Can change الدرجة الشهرية', 29, 'change_monthlygrade'),
(123, 'Can delete الدرجة الشهرية', 29, 'delete_monthlygrade'),
(124, 'Can view الدرجة الشهرية', 29, 'view_monthlygrade'),
(125, 'Can add درجة الترم', 30, 'add_termgrade'),
(126, 'Can change درجة الترم', 30, 'change_termgrade'),
(127, 'Can delete درجة الترم', 30, 'delete_termgrade'),
(128, 'Can view درجة الترم', 30, 'view_termgrade');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(4, '2025-03-29 07:48:13.020046', '4', 'saleh', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 9, 4),
(5, '2025-03-29 07:50:55.307032', '4', 'saleh', 2, '[{\"changed\": {\"fields\": [\"Gender\", \"Address\", \"Email\", \"User permissions\"]}}]', 9, 4),
(6, '2025-03-29 07:51:21.018765', '1', 'AcademicYears object (1)', 1, '[{\"added\": {}}]', 6, 4),
(7, '2025-03-29 07:53:40.591627', '1', '2025/2026', 2, '[]', 6, 4),
(8, '2025-03-29 07:53:59.170551', '1', 'AcademicLevels object (1)', 1, '[{\"added\": {}}]', 7, 4),
(9, '2025-03-29 07:55:07.414104', '1', 'Section object (1)', 1, '[{\"added\": {}}]', 8, 4),
(10, '2025-03-29 07:55:38.852429', '1', 'ملف الطالب: saleh', 1, '[{\"added\": {}}]', 10, 4),
(11, '2025-03-29 07:58:28.433453', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Full name\", \"Birthday\"]}}]', 9, 4),
(12, '2025-03-29 08:19:58.646207', '5', 'محمد صالح عبدالله الجبري', 1, '[{\"added\": {}}]', 9, 4),
(13, '2025-03-29 08:20:19.531094', '5', 'محمد صالح عبدالله الجبري', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 9, 4),
(14, '2025-03-29 08:21:38.538347', '5', 'محمد صالح عبدالله الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\"]}}]', 9, 4),
(15, '2025-03-29 08:32:02.429082', '6', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 9, 4),
(16, '2025-03-29 08:32:19.589631', '6', 'حسين محمد علي الجبري', 3, '', 9, 4),
(17, '2025-03-29 08:33:29.534085', '7', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 9, 4),
(18, '2025-03-29 08:34:31.636185', '7', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\"]}}]', 9, 4),
(19, '2025-03-30 06:35:32.512994', '2', 'الصف الاول', 1, '[{\"added\": {}}]', 7, 4),
(20, '2025-03-30 06:35:42.767917', '3', 'الصف الثاني', 1, '[{\"added\": {}}]', 7, 4),
(21, '2025-03-30 06:35:52.409448', '4', 'الصف الثالث', 1, '[{\"added\": {}}]', 7, 4),
(22, '2025-03-30 06:36:05.957900', '5', 'الصف الرابع', 1, '[{\"added\": {}}]', 7, 4),
(23, '2025-03-30 06:36:15.025285', '6', 'الصف الخامس', 1, '[{\"added\": {}}]', 7, 4),
(24, '2025-03-30 06:47:34.613486', '7', 'الصف السابع', 1, '[{\"added\": {}}]', 7, 4),
(25, '2025-03-30 06:47:45.770712', '8', 'الصف الثامن', 1, '[{\"added\": {}}]', 7, 4),
(26, '2025-03-30 06:48:01.666293', '9', 'الصف التاسع', 1, '[{\"added\": {}}]', 7, 4),
(27, '2025-03-30 06:48:18.107199', '10', 'الصف الاول ثانوي', 1, '[{\"added\": {}}]', 7, 4),
(28, '2025-03-30 06:48:35.389129', '11', 'الصف الثاني ثانوي', 1, '[{\"added\": {}}]', 7, 4),
(29, '2025-03-30 06:49:01.578832', '12', 'الصف الثالث ثانوي', 1, '[{\"added\": {}}]', 7, 4),
(30, '2025-03-30 06:51:03.552957', '1', 'الصف السادس   الشعبة أ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 4),
(31, '2025-03-30 06:53:14.560704', '1', 'الصف السادس   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 4),
(32, '2025-03-30 06:53:29.742715', '2', 'الصف الاول   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(33, '2025-03-30 06:53:50.762027', '3', 'الصف الثاني   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(34, '2025-03-30 07:01:24.369848', '1', 'الصف السادس   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(35, '2025-03-30 07:17:48.842679', '2', 'الصف الاول   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]', 8, 4),
(36, '2025-03-30 07:22:12.642133', '4', 'الصف الاول   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(37, '2025-03-30 07:23:14.567419', '5', 'الصف الثاني   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(38, '2025-03-30 07:23:24.609396', '6', 'الصف الثالث   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(39, '2025-03-30 07:23:41.186675', '7', 'الصف الثالث   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(40, '2025-03-30 07:24:12.943980', '8', 'الصف الرابع   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(41, '2025-03-30 07:24:23.206046', '9', 'الصف الرابع   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(42, '2025-03-30 07:24:35.201491', '10', 'الصف الخامس   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(43, '2025-03-30 07:24:44.849089', '11', 'الصف الخامس   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(44, '2025-03-30 07:25:03.035004', '1', 'الصف السادس   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(45, '2025-03-30 07:25:14.311391', '12', 'الصف السادس   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(46, '2025-03-30 07:26:19.016809', '13', 'الصف السابع   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(47, '2025-03-30 07:26:38.510433', '14', 'الصف السابع   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(48, '2025-03-30 07:26:46.430546', '15', 'الصف الثامن   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(49, '2025-03-30 07:26:55.140647', '16', 'الصف الثامن   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(50, '2025-03-30 07:27:20.798362', '17', 'الصف التاسع   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(51, '2025-03-30 07:27:33.280365', '18', 'الصف التاسع   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(52, '2025-03-30 07:27:43.820891', '19', 'الصف الاول ثانوي   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(53, '2025-03-30 07:28:24.713385', '19', 'الصف الاول ثانوي   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(54, '2025-03-30 07:28:41.953257', '20', 'الصف الاول ثانوي   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(55, '2025-03-30 07:29:01.162365', '21', 'الصف الثاني ثانوي   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(56, '2025-03-30 07:29:50.146906', '22', 'الصف الثاني ثانوي   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(57, '2025-03-30 07:30:05.741813', '23', 'الصف الثالث ثانوي   الشعبة (أ)', 1, '[{\"added\": {}}]', 8, 4),
(58, '2025-03-30 07:30:18.436782', '24', 'الصف الثالث ثانوي   الشعبة (ب)', 1, '[{\"added\": {}}]', 8, 4),
(59, '2025-03-30 07:30:45.885978', '23', 'الصف الثالث ثانوي   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(60, '2025-03-30 07:30:57.458321', '20', 'الصف الاول ثانوي   الشعبة (ب)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(61, '2025-03-30 07:31:08.322653', '21', 'الصف الثاني ثانوي   الشعبة (أ)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 4),
(62, '2025-03-30 07:33:56.577428', '2', '2024/2025', 1, '[{\"added\": {}}]', 6, 4),
(63, '2025-03-30 07:39:08.660724', '1', 'ملف المعلم: محمد صالح عبدالله الجبري', 1, '[{\"added\": {}}]', 12, 4),
(64, '2025-03-30 07:39:14.636118', '2', 'ملف المعلم: حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 12, 4),
(65, '2025-03-31 10:26:02.806363', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(66, '2025-03-31 10:40:59.487950', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(67, '2025-03-31 10:41:08.366903', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(68, '2025-03-31 10:48:34.075008', '4', 'صالح محمد صالح الجبري', 2, '[]', 9, 4),
(69, '2025-03-31 10:49:16.916956', '5', 'محمد صالح عبدالله الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(70, '2025-03-31 10:49:30.237943', '7', 'حسين محمد علي الجبري', 2, '[]', 9, 4),
(71, '2025-03-31 10:49:34.787220', '5', 'محمد صالح عبدالله الجبري', 2, '[]', 9, 4),
(72, '2025-03-31 10:57:43.392771', '7', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(73, '2025-03-31 12:20:51.007303', '5', 'محمد صالح عبدالله الجبري', 3, '', 9, 4),
(74, '2025-03-31 12:20:51.007303', '7', 'حسين محمد علي الجبري', 3, '', 9, 4),
(75, '2025-03-31 12:23:03.769295', '8', 'محمد صالح عبدالله الجبري', 3, '', 9, 4),
(76, '2025-03-31 12:26:05.119090', '9', 'محمد', 3, '', 9, 4),
(77, '2025-03-31 12:29:40.627427', '10', 'محمد', 3, '', 9, 4),
(78, '2025-03-31 12:34:56.736285', '11', '‪SALEH ALGABRI‬‏', 3, '', 9, 4),
(79, '2025-04-01 04:20:37.004593', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"User type\"]}}]', 9, 4),
(80, '2025-04-01 04:20:42.727229', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 9, 4),
(81, '2025-04-02 04:54:59.868062', '1', 'صالح محمد صالح الجبري', 1, '[{\"added\": {}}]', 18, 4),
(82, '2025-04-02 10:45:50.121041', '12', '‪SALEH ALGABRI‬‏', 3, '', 9, 4),
(83, '2025-04-02 10:45:50.121041', '13', 'حسين محمد علي الجبري', 3, '', 9, 4),
(84, '2025-04-02 11:28:34.768803', '14', 'محمد صالح الجبري', 3, '', 9, 4),
(85, '2025-04-02 11:35:37.275943', '15', 'محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 9, 4),
(86, '2025-04-02 11:35:41.720250', '15', 'محمد صالح الجبري', 2, '[]', 9, 4),
(87, '2025-04-02 11:35:58.360044', '15', 'محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 4),
(88, '2025-04-02 11:37:01.895535', '15', 'محمد صالح الجبري', 3, '', 9, 4),
(89, '2025-04-02 11:45:16.338202', '16', 'صالح محمد صالح الجبري', 3, '', 9, 4),
(90, '2025-04-02 12:00:34.703647', '17', 'صالح محمد صالح الجبري', 3, '', 9, 4),
(91, '2025-04-02 12:05:39.316313', '18', 'صالح محمد صالح الجبري', 3, '', 9, 4),
(92, '2025-04-03 06:28:43.644464', '21', 'صالح محمد صالح الجبري', 1, '[{\"added\": {}}]', 9, 4),
(93, '2025-04-03 06:29:52.458431', '21', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\"]}}]', 9, 4),
(94, '2025-04-03 06:39:28.495394', '21', 'صالح محمد صالح الجبري', 3, '', 9, 4),
(95, '2025-04-03 06:49:43.042494', '22', 'محمد صالح عبدالله الجبري', 3, '', 9, 4),
(96, '2025-04-05 09:23:21.177211', '25', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 9, 4),
(97, '2025-04-05 09:24:16.268307', '25', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\", \"Image\"]}}]', 9, 4),
(98, '2025-04-05 09:24:36.902987', '1', 'صالح محمد صالح الجبري', 3, '', 10, 4),
(99, '2025-04-05 09:24:53.353023', '3', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 10, 4),
(100, '2025-04-05 09:46:52.594219', '1', 'Students_Academic_Levels object (1)', 1, '[{\"added\": {}}]', 19, 4),
(101, '2025-04-05 09:53:33.223951', '3', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(102, '2025-04-05 10:23:44.497348', '3', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(103, '2025-04-05 10:23:51.427374', '3', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(104, '2025-04-05 10:24:03.857059', '3', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(105, '2025-04-05 10:31:54.166107', '26', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 9, 4),
(106, '2025-04-05 10:35:20.805175', '26', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\", \"Image\"]}}]', 9, 4),
(107, '2025-04-05 10:35:41.872164', '4', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 10, 4),
(108, '2025-04-05 10:37:33.589145', '27', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 9, 4),
(109, '2025-04-05 10:37:53.521957', '27', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Birthday\", \"Gender\", \"Address\", \"Email\", \"Image\"]}}]', 9, 4),
(110, '2025-04-05 10:38:25.117267', '5', 'حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 10, 4),
(111, '2025-04-05 10:38:36.299470', '2', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 1, '[{\"added\": {}}]', 19, 4),
(112, '2025-04-05 10:39:13.589254', '5', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 10, 4),
(113, '2025-04-05 10:42:17.102653', '5', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 10, 4),
(114, '2025-04-05 11:32:25.425443', '3', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 1, '[{\"added\": {}}]', 19, 4),
(115, '2025-04-05 11:32:56.138637', '3', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 2, '[]', 19, 4),
(116, '2025-04-05 11:33:07.468390', '3', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 2, '[]', 19, 4),
(117, '2025-04-05 11:38:08.612083', '3', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 3, '', 19, 4),
(118, '2025-04-05 11:38:08.613049', '2', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 3, '', 19, 4),
(119, '2025-04-05 11:38:24.054923', '4', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (ب) ', 1, '[{\"added\": {}}]', 19, 4),
(120, '2025-04-05 12:05:31.460100', '5', 'حسين محمد علي الجبري', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 10, 4),
(121, '2025-04-05 12:05:46.341022', '4', 'حسين محمد علي الجبري /الصف الثالث الشعبة (ب) ', 2, '[{\"changed\": {\"fields\": [\"Academic levels\"]}}]', 19, 4),
(122, '2025-04-05 12:06:14.771529', '5', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(123, '2025-04-05 12:07:12.815231', '5', 'حسين محمد علي الجبري', 2, '[]', 10, 4),
(124, '2025-04-05 12:07:43.644517', '4', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (أ) ', 2, '[]', 19, 4),
(125, '2025-04-05 12:08:30.848975', '4', 'حسين محمد علي الجبري /الصف الثالث ثانوي الشعبة (أ) ', 2, '[]', 19, 4),
(126, '2025-04-06 12:19:35.853350', '31', 'علي نشوان الشاوؤش', 3, '', 9, 4),
(127, '2025-04-06 12:22:43.582110', '32', 'علي نشوان الشاوؤش', 3, '', 9, 4),
(128, '2025-04-06 12:25:42.060934', '10', 'علي نشوان الشاوؤش', 2, '[]', 10, 4),
(129, '2025-04-06 12:29:43.648500', '6', 'بيانات غير مكتملة', 2, '[]', 19, 4),
(130, '2025-04-06 12:31:12.854376', '10', 'علي نشوان الشاوؤش', 2, '[]', 10, 4),
(131, '2025-04-06 12:31:18.167961', '10', 'علي نشوان الشاوؤش', 2, '[]', 10, 4),
(132, '2025-04-06 12:54:27.034298', '6', 'علي نشوان الشاوؤش / الصف الثالث ثانوي ', 2, '[]', 19, 4),
(133, '2025-04-07 11:07:17.491952', '6', 'علي نشوان الشاوؤش / الصف الثالث ثانوي ', 2, '[]', 19, 4),
(134, '2025-04-07 11:07:23.299113', '6', 'علي نشوان الشاوؤش / الصف الثالث ثانوي ', 2, '[]', 19, 4),
(135, '2025-04-07 11:07:33.577236', '10', 'علي نشوان الشاوؤش', 2, '[]', 10, 4),
(136, '2025-04-07 11:21:32.810958', '10', 'علي نشوان الشاوؤش', 2, '[]', 10, 4),
(137, '2025-04-07 11:29:49.487009', '13', 'الصف التاسع', 1, '[{\"added\": {}}]', 7, 4),
(138, '2025-04-07 11:32:22.834372', '9', 'علي نشوان الشاوؤش / الصف التاسع\\2024/2025 ', 1, '[{\"added\": {}}]', 19, 4),
(139, '2025-04-07 11:33:53.766556', '10', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2025/2026 ', 1, '[{\"added\": {}}]', 19, 4),
(140, '2025-04-07 11:48:46.570435', '3', '2026/2027', 1, '[{\"added\": {}}]', 6, 4),
(141, '2025-04-07 11:49:45.104870', '14', 'الصف الثالث الثانوي-2026/2027', 1, '[{\"added\": {}}]', 7, 4),
(142, '2025-04-07 11:50:30.823179', '10', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 2, '[{\"changed\": {\"fields\": [\"Academic levels\", \"Registration date\"]}}]', 19, 4),
(143, '2025-04-07 11:51:26.715365', '10', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 2, '[]', 19, 4),
(144, '2025-04-07 11:51:37.382471', '3', '2026/2027', 2, '[]', 6, 4),
(145, '2025-04-07 11:53:36.461002', '10', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 3, '', 19, 4),
(146, '2025-04-07 11:53:36.461002', '9', 'علي نشوان الشاوؤش / الصف التاسع-2024/2025 ', 3, '', 19, 4),
(147, '2025-04-07 11:53:36.461983', '6', 'علي نشوان الشاوؤش / الصف الاول ثانوي-2025/2026 ', 3, '', 19, 4),
(148, '2025-04-07 12:35:47.742401', '15', 'الصف الثاني ثانوي-2024/2025', 1, '[{\"added\": {}}]', 7, 4),
(149, '2025-04-07 12:36:02.582748', '11', 'علي نشوان الشاوؤش / الصف الثاني ثانوي-2024/2025 ', 1, '[{\"added\": {}}]', 19, 4),
(150, '2025-04-07 12:36:12.841079', '12', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2025/2026 ', 1, '[{\"added\": {}}]', 19, 4),
(151, '2025-04-07 12:36:21.576240', '13', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 1, '[{\"added\": {}}]', 19, 4),
(152, '2025-04-07 12:36:50.825600', '4', '2027/2028', 1, '[{\"added\": {}}]', 6, 4),
(153, '2025-04-07 12:37:04.348554', '16', 'الصف الثاني ثانوي-2027/2028', 1, '[{\"added\": {}}]', 7, 4),
(154, '2025-04-07 12:37:15.308826', '14', 'علي نشوان الشاوؤش / الصف الثاني ثانوي-2027/2028 ', 1, '[{\"added\": {}}]', 19, 4),
(155, '2025-04-07 12:37:41.031434', '16', 'الصف الثالث ثانوي-2027/2028', 2, '[{\"changed\": {\"fields\": [\"Level name\"]}}]', 7, 4),
(156, '2025-04-07 12:37:47.222560', '14', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2027/2028 ', 2, '[]', 19, 4),
(157, '2025-04-07 12:38:52.911299', '17', 'الصف التاسع-2024/2025', 1, '[{\"added\": {}}]', 7, 4),
(158, '2025-04-07 12:39:47.160971', '15', 'علي نشوان الشاوؤش / الصف التاسع-2024/2025 ', 1, '[{\"added\": {}}]', 19, 4),
(159, '2025-04-07 12:49:31.023642', '14', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2027/2028 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(160, '2025-04-07 12:51:15.396627', '14', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2027/2028 ', 2, '[]', 19, 4),
(161, '2025-04-07 13:35:03.561135', '7', 'حسين محمد علي الجبري / الصف الثالث ثانوي-2025/2026 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(162, '2025-04-07 14:04:30.423105', '37', 'احمد المهاجري', 3, '', 9, 4),
(163, '2025-04-10 12:10:46.517330', '38', 'احمد المهاجري', 3, '', 9, 4),
(164, '2025-04-10 12:18:13.116834', '8', 'فادي محمد صالح الوجية / الصف الاول-2025/2026 ', 2, '[]', 19, 4),
(165, '2025-04-10 12:18:27.143883', '8', 'فادي محمد صالح الوجية / الصف الاول-2025/2026 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(166, '2025-04-10 12:21:00.631324', '40', 'عبدالكريم محمد صالح الجبري', 3, '', 9, 4),
(167, '2025-04-10 15:15:22.322821', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"User type\"]}}]', 9, 4),
(168, '2025-04-10 15:15:58.714553', '4', 'صالح محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"User type\"]}}]', 9, 4),
(169, '2025-04-19 01:29:57.413388', '15', 'علي نشوان الشاوؤش / الصف التاسع-2024/2025 ', 3, '', 19, 4),
(170, '2025-04-19 01:38:43.111376', '17', 'عبدالكريم محمد صالح الجبري', 2, '[{\"changed\": {\"fields\": [\"Add by\"]}}]', 10, 4),
(171, '2025-04-19 22:32:33.923866', '18', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2027/2028 ', 1, '[{\"added\": {}}]', 19, 4),
(172, '2025-04-19 22:34:09.640944', '19', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2027/2028 ', 1, '[{\"added\": {}}]', 19, 4),
(173, '2025-04-19 22:35:45.530114', '5', '2028/2029', 1, '[{\"added\": {}}]', 6, 4),
(174, '2025-04-19 22:36:04.724300', '18', 'الصف الثالث ثانوي-2028/2029', 1, '[{\"added\": {}}]', 7, 4),
(175, '2025-04-19 22:36:46.679660', '20', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2028/2029 ', 1, '[{\"added\": {}}]', 19, 4),
(176, '2025-04-19 22:37:04.393618', '20', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2028/2029 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(177, '2025-04-19 22:37:07.469787', '20', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2028/2029 ', 2, '[]', 19, 4),
(178, '2025-04-19 22:37:11.465725', '13', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(179, '2025-04-19 22:37:29.682288', '12', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2025/2026 ', 2, '[]', 19, 4),
(180, '2025-04-19 22:37:33.586852', '13', 'علي نشوان الشاوؤش / الصف الثالث الثانوي-2026/2027 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(181, '2025-04-19 22:37:36.801238', '20', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2028/2029 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(182, '2025-04-19 22:39:07.634944', '21', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2028/2029 ', 1, '[{\"added\": {}}]', 19, 4),
(183, '2025-04-19 23:24:43.731415', '12', 'علي نشوان الشاوؤش / الصف الثالث ثانوي-2025/2026 ', 2, '[{\"changed\": {\"fields\": [\"Is current\"]}}]', 19, 4),
(184, '2025-04-20 20:11:27.709430', '22', 'نوفل / الصف الثالث ثانوي-2025/2026 ', 1, '[{\"added\": {}}]', 19, 4),
(185, '2025-04-20 22:19:12.642099', '46', 'اسامة سعيد', 3, '', 9, 44);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'academics', 'academiclevel'),
(6, 'academics', 'academicyear'),
(16, 'academics', 'class'),
(14, 'academics', 'month'),
(8, 'academics', 'section'),
(19, 'academics', 'students_academic_levels'),
(17, 'academics', 'subject'),
(15, 'academics', 'term'),
(9, 'accounts', 'customuser'),
(13, 'accounts', 'guardianprofile'),
(11, 'accounts', 'studentguardian'),
(10, 'accounts', 'studentprofile'),
(18, 'accounts', 'supervisorprofile'),
(12, 'accounts', 'teacherprofile'),
(1, 'admin', 'logentry'),
(20, 'assignments', 'assignment'),
(21, 'assignments', 'studentassignment'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(22, 'grades', 'academiclevel'),
(25, 'grades', 'academiclevelsubject'),
(23, 'grades', 'academicyear'),
(24, 'grades', 'month'),
(29, 'grades', 'monthlygrade'),
(26, 'grades', 'section'),
(27, 'grades', 'subject'),
(28, 'grades', 'term'),
(30, 'grades', 'termgrade'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'academics', '0001_initial', '2025-03-29 07:26:00.331574'),
(2, 'contenttypes', '0001_initial', '2025-03-29 07:26:00.353504'),
(3, 'contenttypes', '0002_remove_content_type_name', '2025-03-29 07:26:00.383444'),
(4, 'auth', '0001_initial', '2025-03-29 07:26:00.467199'),
(5, 'auth', '0002_alter_permission_name_max_length', '2025-03-29 07:26:00.483159'),
(6, 'auth', '0003_alter_user_email_max_length', '2025-03-29 07:26:00.491137'),
(7, 'auth', '0004_alter_user_username_opts', '2025-03-29 07:26:00.498118'),
(8, 'auth', '0005_alter_user_last_login_null', '2025-03-29 07:26:00.506127'),
(9, 'auth', '0006_require_contenttypes_0002', '2025-03-29 07:26:00.510085'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2025-03-29 07:26:00.530031'),
(11, 'auth', '0008_alter_user_username_max_length', '2025-03-29 07:26:00.538011'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2025-03-29 07:26:00.545026'),
(13, 'auth', '0010_alter_group_name_max_length', '2025-03-29 07:26:00.559011'),
(14, 'auth', '0011_update_proxy_permissions', '2025-03-29 07:26:00.569944'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2025-03-29 07:26:00.576938'),
(16, 'accounts', '0001_initial', '2025-03-29 07:26:00.693594'),
(17, 'admin', '0001_initial', '2025-03-29 07:26:00.738474'),
(18, 'admin', '0002_logentry_remove_auto_add', '2025-03-29 07:26:00.751441'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-29 07:26:00.762446'),
(20, 'sessions', '0001_initial', '2025-03-29 07:26:00.779367'),
(21, 'accounts', '0002_customuser_date_joined_customuser_email', '2025-03-29 07:41:04.834607'),
(22, 'accounts', '0003_guardianprofile_studentguardian_teacherprofile', '2025-03-29 08:31:10.159849'),
(23, 'accounts', '0004_alter_customuser_options', '2025-03-29 08:32:53.078100'),
(24, 'accounts', '0005_alter_customuser_options_and_more', '2025-03-29 08:35:29.531009'),
(25, 'academics', '0002_month_subject_class_term', '2025-03-30 06:31:31.068194'),
(26, 'academics', '0003_delete_month', '2025-03-30 06:34:37.562369'),
(27, 'academics', '0004_rename_academiclevels_academiclevel_and_more', '2025-03-30 06:46:46.457818'),
(28, 'academics', '0005_rename_academic_levels_section_academic_level', '2025-03-30 07:11:34.582476'),
(29, 'accounts', '0006_customuser_image', '2025-03-31 10:23:34.473030'),
(30, 'accounts', '0007_alter_customuser_user_type_supervisorprofile_and_more', '2025-04-01 04:16:19.588163'),
(31, 'academics', '0006_academiclevel_add_by_academicyear_add_by_and_more', '2025-04-01 04:16:19.883164'),
(32, 'academics', '0007_students_academic_levels', '2025-04-05 09:43:33.371242'),
(33, 'accounts', '0008_alter_customuser_gender', '2025-04-05 09:46:34.410216'),
(34, 'academics', '0008_alter_students_academic_levels_student', '2025-04-05 09:46:34.482118'),
(35, 'academics', '0009_alter_students_academic_levels_academic_levels_and_more', '2025-04-05 11:51:34.590108'),
(36, 'accounts', '0009_alter_supervisorprofile_user', '2025-04-06 11:35:51.088083'),
(37, 'academics', '0010_students_academic_levels_is_current_and_more', '2025-04-07 12:49:09.893715'),
(38, 'grades', '0001_initial', '2025-04-10 14:54:47.898314'),
(39, 'assignments', '0001_initial', '2025-04-10 14:54:47.993099'),
(40, 'academics', '0011_alter_students_academic_levels_options', '2025-04-20 14:48:59.891609'),
(41, 'accounts', '0010_alter_studentprofile_user', '2025-04-20 14:48:59.917051'),
(42, 'accounts', '0011_alter_supervisorprofile_user', '2025-04-21 00:53:48.648032');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ie9ons9ys1ty9augb8vigq9902gckgx', 'e30:1u6dGg:q24p2g-8k_y1k4pgZK_KTGilJsbM3Q7fVHRsvQdAAxA', '2025-05-04 22:36:06.623830'),
('cqzlun81nmvgj9gukdu7hc1vzpr2cahx', 'e30:1tzsY6:UQPP3FvO9H5ar2pmu5W51XUp85CAPEER6eVvTQi8FDs', '2025-04-16 07:30:10.341267'),
('ds6m3gz51yj0xspn9rt1x9dpa3js2n01', 'e30:1u6EQG:rTpRUd6PDOiWneT7yS2TrKAR5139zH5qYfB5NaNqRlk', '2025-05-03 20:04:20.579173'),
('dvunkplva86waki7tk60wuiszwfepowt', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tztTp:OvmglwqAXjfWC2WAofMFYZJ0C26Y4DNQUeGC1eKR9-8', '2025-04-16 08:29:49.554958'),
('knjeope7bmiiqqe08sc3rrh2nz6cksb1', '.eJxVjEEOwiAQRe_C2hChUAaX7j0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVSzqnD75iRHlI3wnest6ap1WWest4UvdOuL43led7dv4OCvXxriCNGIiCLLgtSGIglZBECb68sbEYZImRmYGIbAKMxwUXjPR6tJ_X-AEtROTo:1u6EUv:cwElKvanFz942WqcZHFzsnBmCrmwpd6LlJDj8-rNvrQ', '2025-05-03 20:09:09.777420'),
('o5ka2ie1uday0fkkbn26np4vxd091voa', '.eJxVjEEOwiAQRe_C2hAYpjC4dO8ZCAxUqoYmpV0Z765NutDtf-_9lwhxW2vYelnClMVZoDj9binyo7Qd5Htst1ny3NZlSnJX5EG7vM65PC-H-3dQY6_fmtiwTs4T-pFRYdLgrGU_sFEu5wgeEhiVyCAQoQa06Kg4O7qBwGbx_gC-nzZs:1u8PPy:CNiVOjTiEkV7erjD4duOds0Dswn0HSOyTZ1LaJkDoQc', '2025-05-09 20:13:02.094241'),
('zunbt7sty72rkir26h9kfog2b3zkzdu8', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tzE9s:6FaBvg1zEouA7O10_OjGCpXDr3G6erLRu-esrftzHXQ', '2025-04-14 12:22:28.204370');

-- --------------------------------------------------------

--
-- Table structure for table `grades_academiclevel`
--

CREATE TABLE `grades_academiclevel` (
  `id` bigint(20) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `level_order` smallint(5) UNSIGNED NOT NULL CHECK (`level_order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `academic_year_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_academiclevelsubject`
--

CREATE TABLE `grades_academiclevelsubject` (
  `id` bigint(20) NOT NULL,
  `academic_level_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_academicyear`
--

CREATE TABLE `grades_academicyear` (
  `id` bigint(20) NOT NULL,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_month`
--

CREATE TABLE `grades_month` (
  `id` bigint(20) NOT NULL,
  `month_name` varchar(20) NOT NULL,
  `month_order` smallint(5) UNSIGNED NOT NULL CHECK (`month_order` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_monthlygrade`
--

CREATE TABLE `grades_monthlygrade` (
  `id` bigint(20) NOT NULL,
  `assignments` decimal(5,2) NOT NULL,
  `attendance` decimal(5,2) NOT NULL,
  `oral` decimal(5,2) NOT NULL,
  `written` decimal(5,2) NOT NULL,
  `start_date` date NOT NULL,
  `month_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_section`
--

CREATE TABLE `grades_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `academic_level_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_subject`
--

CREATE TABLE `grades_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_term`
--

CREATE TABLE `grades_term` (
  `id` bigint(20) NOT NULL,
  `term_number` smallint(5) UNSIGNED NOT NULL CHECK (`term_number` >= 0),
  `start_term` date NOT NULL,
  `end_term` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `academic_level_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades_termgrade`
--

CREATE TABLE `grades_termgrade` (
  `id` bigint(20) NOT NULL,
  `score` decimal(5,2) NOT NULL,
  `exam` decimal(5,2) NOT NULL,
  `start_date` date NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_academicle_academic_year_id_0394d774_fk_academics` (`academic_year_id`),
  ADD KEY `academics_academicle_add_by_id_09611589_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_academicye_add_by_id_5873199d_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `academics_class`
--
ALTER TABLE `academics_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_class_section_id_a2f19082_fk_academics_section_id` (`section_id`),
  ADD KEY `academics_class_teacher_id_990928e1_fk_accounts_` (`teacher_id`),
  ADD KEY `academics_class_subject_id_58ca8d68_fk_academics_subject_id` (`subject_id`),
  ADD KEY `academics_class_add_by_id_dcd5f7d0_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `academics_section`
--
ALTER TABLE `academics_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_section_academic_level_id_b7e16171_fk_academics` (`academic_level_id`),
  ADD KEY `academics_section_add_by_id_30a5f19a_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `academics_students_academic_levels`
--
ALTER TABLE `academics_students_academic_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_students_a_academic_levels_id_a1bfec1e_fk_academics` (`academic_levels_id`),
  ADD KEY `academics_students_a_student_id_1f08a2bc_fk_accounts_` (`student_id`);

--
-- Indexes for table `academics_subject`
--
ALTER TABLE `academics_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_subject_add_by_id_394d4559_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `academics_term`
--
ALTER TABLE `academics_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_term_academic_levels_id_6ebc9e7b_fk_academics` (`academic_levels_id`),
  ADD KEY `academics_term_add_by_id_9f9a62b9_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  ADD KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `accounts_guardianprofile`
--
ALTER TABLE `accounts_guardianprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_guardianpro_add_by_id_abccd73c_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `accounts_studentguardian`
--
ALTER TABLE `accounts_studentguardian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_studentguar_guardian_id_53dcc458_fk_accounts_` (`guardian_id`),
  ADD KEY `accounts_studentguar_student_id_daf1c672_fk_accounts_` (`student_id`);

--
-- Indexes for table `accounts_studentprofile`
--
ALTER TABLE `accounts_studentprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_studentprof_section_id_8f0a06eb_fk_academics` (`section_id`),
  ADD KEY `accounts_studentprof_add_by_id_ca8260ab_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `accounts_supervisorprofile`
--
ALTER TABLE `accounts_supervisorprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_supervisorprofile_user_id_40a9b879_uniq` (`user_id`);

--
-- Indexes for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_teacherprof_add_by_id_13ef36d7_fk_accounts_` (`add_by_id`);

--
-- Indexes for table `assignments_assignment`
--
ALTER TABLE `assignments_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_assignment_section_id_7b8751d1_fk_grades_section_id` (`section_id`),
  ADD KEY `assignments_assignment_subject_id_e5f926a7_fk_grades_subject_id` (`subject_id`),
  ADD KEY `assignments_assignme_teacher_id_4c47b114_fk_accounts_` (`teacher_id`);

--
-- Indexes for table `assignments_studentassignment`
--
ALTER TABLE `assignments_studentassignment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignments_studentassig_student_id_assignment_id_ffa4d9c6_uniq` (`student_id`,`assignment_id`),
  ADD KEY `assignments_studenta_assignment_id_5feb1272_fk_assignmen` (`assignment_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `grades_academiclevel`
--
ALTER TABLE `grades_academiclevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_academiclevel_academic_year_id_02879e0f_fk_grades_ac` (`academic_year_id`);

--
-- Indexes for table `grades_academiclevelsubject`
--
ALTER TABLE `grades_academiclevelsubject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_academiclevelsubj_academic_level_id_subjec_7de95f11_uniq` (`academic_level_id`,`subject_id`),
  ADD KEY `grades_academiclevel_subject_id_d3f2c97e_fk_grades_su` (`subject_id`);

--
-- Indexes for table `grades_academicyear`
--
ALTER TABLE `grades_academicyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades_month`
--
ALTER TABLE `grades_month`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `month_order` (`month_order`);

--
-- Indexes for table `grades_monthlygrade`
--
ALTER TABLE `grades_monthlygrade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_monthlygrade_student_id_subject_id_te_1f9ed895_uniq` (`student_id`,`subject_id`,`term_id`,`month_id`),
  ADD KEY `grades_monthlygrade_month_id_27b80604_fk_grades_month_id` (`month_id`),
  ADD KEY `grades_monthlygrade_subject_id_62870554_fk_grades_subject_id` (`subject_id`),
  ADD KEY `grades_monthlygrade_term_id_4c9567ff_fk_grades_term_id` (`term_id`);

--
-- Indexes for table `grades_section`
--
ALTER TABLE `grades_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_section_academic_level_id_a8774988_fk_grades_ac` (`academic_level_id`),
  ADD KEY `grades_section_teacher_id_23e46352_fk_accounts_customuser_id` (`teacher_id`);

--
-- Indexes for table `grades_subject`
--
ALTER TABLE `grades_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades_term`
--
ALTER TABLE `grades_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_term_academic_level_id_98960e51_fk_grades_ac` (`academic_level_id`);

--
-- Indexes for table `grades_termgrade`
--
ALTER TABLE `grades_termgrade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_termgrade_student_id_subject_id_term_id_515eb78a_uniq` (`student_id`,`subject_id`,`term_id`),
  ADD KEY `grades_termgrade_subject_id_4bef224e_fk_grades_subject_id` (`subject_id`),
  ADD KEY `grades_termgrade_term_id_82a05043_fk_grades_term_id` (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academics_class`
--
ALTER TABLE `academics_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academics_section`
--
ALTER TABLE `academics_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `academics_students_academic_levels`
--
ALTER TABLE `academics_students_academic_levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `academics_subject`
--
ALTER TABLE `academics_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academics_term`
--
ALTER TABLE `academics_term`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_guardianprofile`
--
ALTER TABLE `accounts_guardianprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_studentguardian`
--
ALTER TABLE `accounts_studentguardian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_studentprofile`
--
ALTER TABLE `accounts_studentprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `accounts_supervisorprofile`
--
ALTER TABLE `accounts_supervisorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assignments_assignment`
--
ALTER TABLE `assignments_assignment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments_studentassignment`
--
ALTER TABLE `assignments_studentassignment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `grades_academiclevel`
--
ALTER TABLE `grades_academiclevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_academiclevelsubject`
--
ALTER TABLE `grades_academiclevelsubject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_academicyear`
--
ALTER TABLE `grades_academicyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_month`
--
ALTER TABLE `grades_month`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_monthlygrade`
--
ALTER TABLE `grades_monthlygrade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_section`
--
ALTER TABLE `grades_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_subject`
--
ALTER TABLE `grades_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_term`
--
ALTER TABLE `grades_term`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades_termgrade`
--
ALTER TABLE `grades_termgrade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `assignments_assignment`
--
ALTER TABLE `assignments_assignment`
  ADD CONSTRAINT `assignments_assignme_teacher_id_4c47b114_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `assignments_assignment_section_id_7b8751d1_fk_grades_section_id` FOREIGN KEY (`section_id`) REFERENCES `grades_section` (`id`),
  ADD CONSTRAINT `assignments_assignment_subject_id_e5f926a7_fk_grades_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `grades_subject` (`id`);

--
-- Constraints for table `assignments_studentassignment`
--
ALTER TABLE `assignments_studentassignment`
  ADD CONSTRAINT `assignments_studenta_assignment_id_5feb1272_fk_assignmen` FOREIGN KEY (`assignment_id`) REFERENCES `assignments_assignment` (`id`),
  ADD CONSTRAINT `assignments_studenta_student_id_b25db2e8_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_customuser` (`id`);

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
-- Constraints for table `grades_academiclevel`
--
ALTER TABLE `grades_academiclevel`
  ADD CONSTRAINT `grades_academiclevel_academic_year_id_02879e0f_fk_grades_ac` FOREIGN KEY (`academic_year_id`) REFERENCES `grades_academicyear` (`id`);

--
-- Constraints for table `grades_academiclevelsubject`
--
ALTER TABLE `grades_academiclevelsubject`
  ADD CONSTRAINT `grades_academiclevel_academic_level_id_4a637847_fk_grades_ac` FOREIGN KEY (`academic_level_id`) REFERENCES `grades_academiclevel` (`id`),
  ADD CONSTRAINT `grades_academiclevel_subject_id_d3f2c97e_fk_grades_su` FOREIGN KEY (`subject_id`) REFERENCES `grades_subject` (`id`);

--
-- Constraints for table `grades_monthlygrade`
--
ALTER TABLE `grades_monthlygrade`
  ADD CONSTRAINT `grades_monthlygrade_month_id_27b80604_fk_grades_month_id` FOREIGN KEY (`month_id`) REFERENCES `grades_month` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_student_id_fb2aa217_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_subject_id_62870554_fk_grades_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `grades_subject` (`id`),
  ADD CONSTRAINT `grades_monthlygrade_term_id_4c9567ff_fk_grades_term_id` FOREIGN KEY (`term_id`) REFERENCES `grades_term` (`id`);

--
-- Constraints for table `grades_section`
--
ALTER TABLE `grades_section`
  ADD CONSTRAINT `grades_section_academic_level_id_a8774988_fk_grades_ac` FOREIGN KEY (`academic_level_id`) REFERENCES `grades_academiclevel` (`id`),
  ADD CONSTRAINT `grades_section_teacher_id_23e46352_fk_accounts_customuser_id` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `grades_term`
--
ALTER TABLE `grades_term`
  ADD CONSTRAINT `grades_term_academic_level_id_98960e51_fk_grades_ac` FOREIGN KEY (`academic_level_id`) REFERENCES `grades_academiclevel` (`id`);

--
-- Constraints for table `grades_termgrade`
--
ALTER TABLE `grades_termgrade`
  ADD CONSTRAINT `grades_termgrade_student_id_0248f653_fk_accounts_customuser_id` FOREIGN KEY (`student_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `grades_termgrade_subject_id_4bef224e_fk_grades_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `grades_subject` (`id`),
  ADD CONSTRAINT `grades_termgrade_term_id_82a05043_fk_grades_term_id` FOREIGN KEY (`term_id`) REFERENCES `grades_term` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
