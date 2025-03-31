-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31 مارس 2025 الساعة 12:07
-- إصدار الخادم: 11.4.3-MariaDB
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
DROP DATABASE IF EXISTS `school_management_system`;
CREATE DATABASE IF NOT EXISTS `school_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school_management_system`;

-- --------------------------------------------------------

--
-- بنية الجدول `academics_academiclevel`
--

CREATE TABLE `academics_academiclevel` (
  `id` bigint(20) NOT NULL,
  `level_name` varchar(55) NOT NULL,
  `level_order` int(11) NOT NULL,
  `academic_year_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_academiclevel`
--

INSERT INTO `academics_academiclevel` (`id`, `level_name`, `level_order`, `academic_year_id`) VALUES
(1, 'الصف السادس', 6, 1),
(2, 'الصف الاول', 1, 1),
(3, 'الصف الثاني', 2, 1),
(4, 'الصف الثالث', 3, 1),
(5, 'الصف الرابع', 4, 1),
(6, 'الصف الخامس', 5, 1),
(7, 'الصف السابع', 7, 1),
(8, 'الصف الثامن', 8, 1),
(9, 'الصف التاسع', 9, 1),
(10, 'الصف الاول ثانوي', 10, 1),
(11, 'الصف الثاني ثانوي', 11, 1),
(12, 'الصف الثالث ثانوي', 12, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `academics_academicyear`
--

CREATE TABLE `academics_academicyear` (
  `id` bigint(20) NOT NULL,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_academicyear`
--

INSERT INTO `academics_academicyear` (`id`, `start_year`, `end_year`) VALUES
(1, '2025-03-29', '2026-03-29'),
(2, '2024-03-30', '2025-03-30');

-- --------------------------------------------------------

--
-- بنية الجدول `academics_class`
--

CREATE TABLE `academics_class` (
  `id` bigint(20) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `joining_date` date NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `academics_section`
--

CREATE TABLE `academics_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `academic_level_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_section`
--

INSERT INTO `academics_section` (`id`, `name`, `description`, `academic_level_id`) VALUES
(1, 'الشعبة (أ)', 'الصف السادس الشعبة (أ)', 1),
(2, 'الشعبة (أ)', 'الصف الأول الشعبة (أ)', 2),
(3, 'الشعبة (أ)', 'الصف الثاني الشعبة (أ)', 3),
(4, 'الشعبة (ب)', 'الصف الأول الشعبة (ب)', 2),
(5, 'الشعبة (ب)', 'الصف الثاني الشعبة (ب)', 3),
(6, 'الشعبة (أ)', 'الصف الثالث الشعبة (أ)', 4),
(7, 'الشعبة (ب)', 'الصف الثالث الشعبة (ب)', 4),
(8, 'الشعبة (أ)', 'الصف الرابع الشعبة (أ)', 5),
(9, 'الشعبة (ب)', 'الصف الرابع الشعبة (ب)', 5),
(10, 'الشعبة (أ)', 'الصف الخامس الشعبة (أ)', 6),
(11, 'الشعبة (ب)', 'الصف الخامس الشعبة (ب)', 6),
(12, 'الشعبة (ب)', 'الصف السادس الشعبة (ب)', 1),
(13, 'الشعبة (أ)', 'الصف السابع الشعبة (أ)', 7),
(14, 'الشعبة (ب)', 'الصف السابع الشعبة (ب)', 7),
(15, 'الشعبة (أ)', 'الصف الثامن الشعبة (أ)', 8),
(16, 'الشعبة (ب)', 'الصف الثامن الشعبة (ب)', 8),
(17, 'الشعبة (أ)', 'الصف التاسع الشعبة (أ)', 9),
(18, 'الشعبة (ب)', 'الصف التاسع الشعبة (ب)', 9),
(19, 'الشعبة (أ)', 'الصف الاول الثانوي الشعبة (أ)', 10),
(20, 'الشعبة (ب)', 'الصف الاول الثانوي الشعبة (ب)', 10),
(21, 'الشعبة (أ)', 'الصف الثاني الثانوي الشعبة (أ)', 11),
(22, 'الشعبة (ب)', 'الصف الثاني الثانوي الشعبة (ب)', 11),
(23, 'الشعبة (أ)', 'الصف الثالث الثانوي الشعبة (أ)', 12),
(24, 'الشعبة (ب)', 'الصف الثالث الثانوي الشعبة (ب)', 12);

-- --------------------------------------------------------

--
-- بنية الجدول `academics_subject`
--

CREATE TABLE `academics_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `academics_term`
--

CREATE TABLE `academics_term` (
  `id` bigint(20) NOT NULL,
  `term_number` int(11) NOT NULL,
  `start_term` date NOT NULL,
  `end_term` date NOT NULL,
  `academic_levels_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_customuser`
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
  `email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `phone_number`, `user_type`, `full_name`, `birthday`, `gender`, `address`, `is_active`, `is_staff`, `date_joined`, `email`) VALUES
(4, 'pbkdf2_sha256$870000$er3nRqdrY0ngK9y0ZGmcZK$YHWAeXNbrujeaIsbwGHti3NuHn+3NKw8+NYTqQZL1jM=', '2025-03-29 07:42:35.844512', 1, '770489242', 'student', 'صالح محمد صالح الجبري', '2004-02-11', 'M', 'شارع العدين', 1, 1, '2025-03-29 07:42:18.306036', 's96557867@gmail.com'),
(5, 'pbkdf2_sha256$870000$cZbYHQsGKYygUCpujEW7kE$AH7VLrXxUDeO2+tTgk3d1PXUGSwFrRR7Cpqy6BuuGk0=', NULL, 0, '777111247', 'teacher', 'محمد صالح عبدالله الجبري', '2025-03-29', 'M', 'شارع العدين', 1, 0, '2025-03-29 08:19:58.644186', 'abnalyemen166@gmail.com'),
(7, 'pbkdf2_sha256$870000$3InvwNvg5qfFUnNC3Taecp$BQe8vniF+FHQHrOcr9LtuncCn8obCIGkWzaoX+4IOaM=', NULL, 0, '777686999', 'teacher', 'حسين محمد علي الجبري', '2025-03-29', 'M', '2 Rue du Château de l\'Eraudière', 1, 0, '2025-03-29 08:33:29.532086', 'abnalyemsen166@gmail.com');

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_customuser_groups`
--

CREATE TABLE `accounts_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_customuser_user_permissions`
--

CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_customuser_user_permissions`
--

INSERT INTO `accounts_customuser_user_permissions` (`id`, `customuser_id`, `permission_id`) VALUES
(1, 4, 21);

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_guardianprofile`
--

CREATE TABLE `accounts_guardianprofile` (
  `id` bigint(20) NOT NULL,
  `guardian_type` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_studentguardian`
--

CREATE TABLE `accounts_studentguardian` (
  `id` bigint(20) NOT NULL,
  `guardian_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_studentprofile`
--

CREATE TABLE `accounts_studentprofile` (
  `id` bigint(20) NOT NULL,
  `date_joining_sections` datetime(6) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_studentprofile`
--

INSERT INTO `accounts_studentprofile` (`id`, `date_joining_sections`, `section_id`, `user_id`) VALUES
(1, '2025-03-29 07:55:36.000000', 1, 4);

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_teacherprofile`
--

CREATE TABLE `accounts_teacherprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_teacherprofile`
--

INSERT INTO `accounts_teacherprofile` (`id`, `user_id`) VALUES
(1, 5),
(2, 7);

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_permission`
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
(76, 'Can view academic year', 6, 'view_academicyear');

-- --------------------------------------------------------

--
-- بنية الجدول `django_admin_log`
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
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
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
(64, '2025-03-30 07:39:14.636118', '2', 'ملف المعلم: حسين محمد علي الجبري', 1, '[{\"added\": {}}]', 12, 4);

-- --------------------------------------------------------

--
-- بنية الجدول `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'academics', 'academiclevel'),
(6, 'academics', 'academicyear'),
(16, 'academics', 'class'),
(14, 'academics', 'month'),
(8, 'academics', 'section'),
(17, 'academics', 'subject'),
(15, 'academics', 'term'),
(9, 'accounts', 'customuser'),
(13, 'accounts', 'guardianprofile'),
(11, 'accounts', 'studentguardian'),
(10, 'accounts', 'studentprofile'),
(12, 'accounts', 'teacherprofile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- بنية الجدول `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_migrations`
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
(28, 'academics', '0005_rename_academic_levels_section_academic_level', '2025-03-30 07:11:34.582476');

-- --------------------------------------------------------

--
-- بنية الجدول `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xr88x0nh6j19a8iikqxa22feyo8mnxk8', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tyRQR:Of9AcL63sT2pVXMQhHON6IOsT2Nj2JY1VFnUUH6Y07I', '2025-04-12 08:20:19.544074');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_academicle_academic_year_id_0394d774_fk_academics` (`academic_year_id`);

--
-- Indexes for table `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academics_class`
--
ALTER TABLE `academics_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_class_section_id_a2f19082_fk_academics_section_id` (`section_id`),
  ADD KEY `academics_class_teacher_id_990928e1_fk_accounts_` (`teacher_id`),
  ADD KEY `academics_class_subject_id_58ca8d68_fk_academics_subject_id` (`subject_id`);

--
-- Indexes for table `academics_section`
--
ALTER TABLE `academics_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_section_academic_level_id_b7e16171_fk_academics` (`academic_level_id`);

--
-- Indexes for table `academics_subject`
--
ALTER TABLE `academics_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academics_term`
--
ALTER TABLE `academics_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academics_term_academic_levels_id_6ebc9e7b_fk_academics` (`academic_levels_id`);

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
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  ADD KEY `accounts_studentprof_section_id_8f0a06eb_fk_academics` (`section_id`);

--
-- Indexes for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  ADD CONSTRAINT `academics_academicle_academic_year_id_0394d774_fk_academics` FOREIGN KEY (`academic_year_id`) REFERENCES `academics_academicyear` (`id`);

--
-- قيود الجداول `academics_class`
--
ALTER TABLE `academics_class`
  ADD CONSTRAINT `academics_class_section_id_a2f19082_fk_academics_section_id` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `academics_class_subject_id_58ca8d68_fk_academics_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `academics_subject` (`id`),
  ADD CONSTRAINT `academics_class_teacher_id_990928e1_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacherprofile` (`id`);

--
-- قيود الجداول `academics_section`
--
ALTER TABLE `academics_section`
  ADD CONSTRAINT `academics_section_academic_level_id_b7e16171_fk_academics` FOREIGN KEY (`academic_level_id`) REFERENCES `academics_academiclevel` (`id`);

--
-- قيود الجداول `academics_term`
--
ALTER TABLE `academics_term`
  ADD CONSTRAINT `academics_term_academic_levels_id_6ebc9e7b_fk_academics` FOREIGN KEY (`academic_levels_id`) REFERENCES `academics_academiclevel` (`id`);

--
-- قيود الجداول `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- قيود الجداول `accounts_guardianprofile`
--
ALTER TABLE `accounts_guardianprofile`
  ADD CONSTRAINT `accounts_guardianpro_user_id_5b77227a_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- قيود الجداول `accounts_studentguardian`
--
ALTER TABLE `accounts_studentguardian`
  ADD CONSTRAINT `accounts_studentguar_guardian_id_53dcc458_fk_accounts_` FOREIGN KEY (`guardian_id`) REFERENCES `accounts_guardianprofile` (`id`),
  ADD CONSTRAINT `accounts_studentguar_student_id_daf1c672_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_studentprofile` (`id`);

--
-- قيود الجداول `accounts_studentprofile`
--
ALTER TABLE `accounts_studentprofile`
  ADD CONSTRAINT `accounts_studentprof_section_id_8f0a06eb_fk_academics` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `accounts_studentprof_user_id_04a48d2e_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- قيود الجداول `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD CONSTRAINT `accounts_teacherprof_user_id_9582b3e8_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- قيود الجداول `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
