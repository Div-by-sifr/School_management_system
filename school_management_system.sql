-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 أبريل 2025 الساعة 14:38
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
-- Database: `boards_django`
--
DROP DATABASE IF EXISTS `boards_django`;
CREATE DATABASE IF NOT EXISTS `boards_django` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `boards_django`;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add board', 8, 'add_board'),
(30, 'Can change board', 8, 'change_board'),
(31, 'Can delete board', 8, 'delete_board'),
(32, 'Can view board', 8, 'view_board'),
(33, 'Can add topic', 9, 'add_topic'),
(34, 'Can change topic', 9, 'change_topic'),
(35, 'Can delete topic', 9, 'delete_topic'),
(36, 'Can view topic', 9, 'view_topic');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$vxwegGqnaKPMRaWnqfpyYa$Yc+/XNLwTMVcWLYnFiN1mlNm/XrDYgLEDguvLbPyz6c=', '2025-03-22 06:10:41.369536', 1, 'saleh', 'saleh', 'algabri', 's96557867@gmail.com', 1, 1, '2024-10-17 17:30:25.000000'),
(13, 'pbkdf2_sha256$870000$NYPX4dDju3UNTPek2SZCa7$GZW6hjIp7LclNuZjPOzzu9SCRFkfg+he25Ne5K1/1uE=', '2024-10-31 23:01:43.339133', 0, 'ahmed', '', '', 's96557867@gmail.com', 0, 1, '2024-10-31 20:16:56.348349'),
(14, 'pbkdf2_sha256$870000$gHnkJG1TTNReN69mbKusNT$V/tPejPSOZPxB7RGLjtRHxzcr5RT1z57UZy5ed+F2Rw=', '2025-03-22 06:07:29.491398', 1, 'mohammed', '', '', '', 1, 1, '2025-03-22 06:07:08.879321');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `boards_board`
--

CREATE TABLE `boards_board` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `boards_board`
--

INSERT INTO `boards_board` (`id`, `name`, `description`) VALUES
(1, 'Web Programming', 'This board Will speak about all Web Language'),
(2, 'Desktop Application', 'This board Will speak about all Desktop Application'),
(3, 'Mobile Applications', 'This Board will discuss the tools about Mobile Applications'),
(5, 'Ai', 'sdadasd');

-- --------------------------------------------------------

--
-- بنية الجدول `boards_post`
--

CREATE TABLE `boards_post` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `created_dt` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `updated_dt` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `boards_post`
--

INSERT INTO `boards_post` (`id`, `message`, `created_dt`, `created_by_id`, `topic_id`, `updated_by_id`, `updated_dt`) VALUES
(1, 'i want to konw to user python in web application', '2024-10-17 21:02:07.130764', 1, 1, NULL, NULL),
(2, 'i want to use php to develop web application', '2024-10-17 21:07:15.102923', 1, 2, NULL, NULL),
(5, 'add message', '2024-10-17 22:18:08.625872', 1, 5, NULL, NULL),
(6, 'How To use Java servlet for web 11111111111111', '2024-10-31 20:12:22.069480', 1, 6, 1, '2024-11-04 23:07:48.077644'),
(7, 'welcome', '2024-10-31 20:17:16.919139', 13, 7, NULL, NULL),
(8, 'test reply', '2024-10-31 22:59:55.008597', 1, 1, NULL, NULL),
(9, 'test user ahmed', '2024-10-31 23:01:58.001158', 13, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `boards_topic`
--

CREATE TABLE `boards_topic` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `created_dt` datetime(6) NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `boards_topic`
--

INSERT INTO `boards_topic` (`id`, `subject`, `created_dt`, `board_id`, `created_by_id`, `views`) VALUES
(1, 'python for web', '2024-10-17 21:02:07.124780', 1, 1, 0),
(2, 'php is good for web siteis', '2024-10-17 21:07:15.099939', 1, 1, 0),
(5, 'test', '2024-10-17 22:18:08.622849', 1, 1, 1),
(6, 'Hi, Test and New Topic', '2024-10-31 20:12:22.066488', 1, 1, 3),
(7, 'test for ahmed', '2024-10-31 20:17:16.917145', 1, 13, 6);

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-17 17:33:25.705076', '1', 'saleh', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(2, '2024-10-17 17:44:45.042998', '3', 'Mobile Applications', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-10-17 21:21:46.720256', '3', '', 3, '', 7, 1),
(4, '2024-10-17 21:21:58.430010', '3', '', 3, '', 9, 1),
(5, '2024-10-17 21:22:09.590851', '4', '', 3, '', 9, 1),
(6, '2024-10-18 20:22:13.869134', '2', 'ahmed', 3, '', 4, 1),
(7, '2024-10-18 20:23:11.765734', '3', 'ahmed', 3, '', 4, 1),
(8, '2024-10-18 20:24:09.377997', '4', 'ahmed', 3, '', 4, 1),
(9, '2024-10-18 20:25:37.416081', '5', 'ahmed', 3, '', 4, 1),
(10, '2024-10-18 20:25:53.029729', '6', 'ahmed', 3, '', 4, 1),
(11, '2024-10-18 20:28:13.555590', '7', 'ahmed', 3, '', 4, 1),
(12, '2024-10-18 23:23:30.389143', '8', 'ahmed', 3, '', 4, 1),
(13, '2024-10-18 23:23:30.389143', '9', 'ail', 3, '', 4, 1),
(14, '2024-10-18 23:23:30.389143', '10', 'guest', 3, '', 4, 1),
(15, '2024-10-18 23:23:30.389143', '11', 'smsalj2002', 3, '', 4, 1),
(16, '2024-10-31 20:16:26.143081', '12', 'ahmed', 3, '', 4, 1),
(17, '2024-11-16 20:21:42.222646', '4', 'AI', 3, '', 8, 1),
(18, '2025-03-22 06:08:27.051169', '1', 'saleh', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 14);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'boards', 'board'),
(7, 'boards', 'post'),
(9, 'boards', 'topic'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-10-16 14:40:18.558807'),
(2, 'auth', '0001_initial', '2024-10-16 14:40:18.689217'),
(3, 'admin', '0001_initial', '2024-10-16 14:40:18.733100'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-16 14:40:18.740081'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-16 14:40:18.749059'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-16 14:40:18.796447'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-16 14:40:18.819381'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-16 14:40:18.835336'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-16 14:40:18.843340'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-16 14:40:18.862326'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-16 14:40:18.866314'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-16 14:40:18.875290'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-16 14:40:18.890250'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-16 14:40:18.906208'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-16 14:40:18.924160'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-16 14:40:18.934133'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-16 14:40:18.951089'),
(18, 'sessions', '0001_initial', '2024-10-16 14:40:18.974026'),
(19, 'boards', '0001_initial', '2024-10-16 19:23:10.456228'),
(20, 'boards', '0002_topic_views', '2024-11-04 22:08:47.231280'),
(21, 'boards', '0003_post_updated_by_post_updated_dt', '2024-11-04 22:41:15.567917');

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
('1gvk4d3tpke9xfjfic1ba8r4l8ehgkar', '.eJxVjMEOwiAQRP-FsyGWpbB69N5vICwLUjWQlPZk_Hdp0oNe5jDvzbyF89ua3dbi4mYWVzGAOP2W5MMzlp3ww5d7laGWdZlJ7oo8aJNT5fi6He7fQfYt93VQxmitzkrDxY5aQzKK2TIaRT715IFsAkQIlgijYohoLY6doSYSny_cdjdo:1t6eAh:JV2NEBqPcE_8MU-rL3aLuOmrk90F85val_xxtQi2hLM', '2024-11-14 23:01:43.343123'),
('9a6ts9nupowryp3jly5gtgaq72g075np', '.eJxVjEEOwiAQRe_C2pCBAgWX7j0DmWGoVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnEWSpx-N8L0yHUHfMd6azK1ui4zyV2RB-3y2jg_L4f7d1Cwl289asdKOx3c6L0eJm2BTGZQ7MAGDEjWWQJkSGB4Im3QcHaeTBhAZRTvD7lpN10:1t6X0o:1TuoybKnAzgo_b96-YbK97HaT5b2g-M4XNrE2jDvyL8', '2024-11-14 15:23:02.470645'),
('cx5sxlbt9a8994gusez1vf47gz762aec', '.eJxVjMsOwiAQRf-FtSEwPBxcuu83kBmgUjU0Ke3K-O_apAvd3nPOfYlI21rj1ssSpywuQovT78aUHqXtIN-p3WaZ5rYuE8tdkQftcphzeV4P9--gUq_f2jIoBFTnHDQUE4DAQXLIyTinCIrPow7JjAoSIrL2yrIJaKzx1mUQ7w-0bzZ6:1tvs49:yRjU_-MTMPDi6jbv5CLKM95e788ezOEpsBvEo97ZOhM', '2025-04-05 06:10:41.372525'),
('iwwefy9otw7qolahvjuklaegowl14fd7', '.eJxVjMEOwiAQRP-FsyFlobj16N1vIMsulaqBpLQn47_bJj3obTLvzbxVoHXJYW1pDpOoizLq9NtF4mcqO5AHlXvVXMsyT1Hvij5o07cq6XU93L-DTC1va0geqbPiYMSzB2Dpuy2Y0fXEgsYkZBLx6J0BxwlhINPbiJaFIA7q8wXQyTeh:1t7jPt:ET8_qoPdDSN5vJQ5CUfojfgRNXUgoen_er3KAzhMYA4', '2024-11-17 22:49:53.553976'),
('lzh9ujzijzefz53fu1eemwue884a43bu', '.eJxVjMEOwiAQRP-FsyFlobj16N1vIMsulaqBpLQn47_bJj3obTLvzbxVoHXJYW1pDpOoizLq9NtF4mcqO5AHlXvVXMsyT1Hvij5o07cq6XU93L-DTC1va0geqbPiYMSzB2Dpuy2Y0fXEgsYkZBLx6J0BxwlhINPbiJaFIA7q8wXQyTeh:1tCOre:suZfUddhQNV0yDrrJYT87oWMBI8oiYYBQeJM8HauStU', '2024-11-30 19:53:50.170330'),
('nk8rhn8myj4rhnioplqt0xvgaewrfewq', '.eJxVjMEOwiAQRP-FsyFlobj16N1vIMsulaqBpLQn47_bJj3obTLvzbxVoHXJYW1pDpOoizLq9NtF4mcqO5AHlXvVXMsyT1Hvij5o07cq6XU93L-DTC1va0geqbPiYMSzB2Dpuy2Y0fXEgsYkZBLx6J0BxwlhINPbiJaFIA7q8wXQyTeh:1t86Gl:3Qmd6YSvrW41lBv0q7mLgBik2fC3O3tQOe8MVTnels8', '2024-11-18 23:13:59.784584'),
('uclz6lu56a3y9j2flyp136ff5mtfljya', '.eJxVjEEOwiAQRe_C2hBmoEBduvcMZBhAqqYkpV0Z765NutDtf-_9lwi0rTVsPS9hSuIswIjT7xiJH3neSbrTfGuS27wuU5S7Ig_a5bWl_Lwc7t9BpV6_tSUuxAyDAo-aRm2K8RrBRedZA0SbIKPHopR2AyaXIiNYBIKRRkvi_QH2LjdW:1tvs1z:qnrdfI-4jfYBIltACi3SxyphbAgtDOqdytHwr1FlPOM', '2025-04-05 06:08:27.070120'),
('x15i4vlwbkyeh12lpxl6s4l362e5puez', '.eJxVjMsOwiAQRf-FtSHA8BCX7vsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZhkp1-t4jpkdsO6I7t1nnqbV3myHeFH3TwqVN-Xg_376DiqN8apLYAFom8lcaICEqX5JWzWqdYknUF49nlbLQWSAiOBAglgZRCozx7fwDHsTcu:1t6X6k:gUUkjYGg7_g5WF4_64SUwZTmTJ-fw35b75Ny6vcidL4', '2024-11-14 15:29:10.265911'),
('zqk9u04xwo6c1u2xwpzsbl7adqi1czr8', '.eJxVjE0OwiAYBe_C2hCgEMCle89A-H6QqoGktCvj3bVJF7p9M_NeIuVtrWkbvKSZxFlocfrdIOOD2w7ontutS-xtXWaQuyIPOuS1Ez8vh_t3UPOo35ptMNYrjNGjcoG5IGsIKvPkitWedOECZIoqwSGQig6sMSZMxlGeQLw_8404YA:1t6X2r:ufQgcF_gXselyA_jTd1yOXnrknX6szFUVX4dWzh7pCw', '2024-11-14 15:25:09.765356');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `boards_board`
--
ALTER TABLE `boards_board`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `boards_post`
--
ALTER TABLE `boards_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_post_created_by_id_0b841038_fk_auth_user_id` (`created_by_id`),
  ADD KEY `boards_post_topic_id_f477c024_fk_boards_topic_id` (`topic_id`),
  ADD KEY `boards_post_updated_by_id_76d3c48f_fk_auth_user_id` (`updated_by_id`);

--
-- Indexes for table `boards_topic`
--
ALTER TABLE `boards_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_topic_board_id_4462fe82_fk_boards_board_id` (`board_id`),
  ADD KEY `boards_topic_created_by_id_f43f963f_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boards_board`
--
ALTER TABLE `boards_board`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `boards_post`
--
ALTER TABLE `boards_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `boards_topic`
--
ALTER TABLE `boards_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- قيود الجداول المُلقاة.
--

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
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `boards_post`
--
ALTER TABLE `boards_post`
  ADD CONSTRAINT `boards_post_created_by_id_0b841038_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `boards_post_topic_id_f477c024_fk_boards_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `boards_topic` (`id`),
  ADD CONSTRAINT `boards_post_updated_by_id_76d3c48f_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `boards_topic`
--
ALTER TABLE `boards_topic`
  ADD CONSTRAINT `boards_topic_board_id_4462fe82_fk_boards_board_id` FOREIGN KEY (`board_id`) REFERENCES `boards_board` (`id`),
  ADD CONSTRAINT `boards_topic_created_by_id_f43f963f_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `custom_user`
--
DROP DATABASE IF EXISTS `custom_user`;
CREATE DATABASE IF NOT EXISTS `custom_user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `custom_user`;

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
(21, 'Can add student', 6, 'add_student'),
(22, 'Can change student', 6, 'change_student'),
(23, 'Can delete student', 6, 'delete_student'),
(24, 'Can view student', 6, 'view_student');

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'student', 'student');

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
(1, 'contenttypes', '0001_initial', '2025-03-23 13:34:34.029335'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-03-23 13:34:34.049282'),
(3, 'auth', '0001_initial', '2025-03-23 13:34:34.122085'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-03-23 13:34:34.138070'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-03-23 13:34:34.145025'),
(6, 'auth', '0004_alter_user_username_opts', '2025-03-23 13:34:34.166966'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-03-23 13:34:34.172950'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-03-23 13:34:34.175942'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-03-23 13:34:34.182922'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-03-23 13:34:34.189934'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-03-23 13:34:34.196887'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-03-23 13:34:34.208854'),
(13, 'auth', '0011_update_proxy_permissions', '2025-03-23 13:34:34.215847'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-03-23 13:34:34.222817'),
(15, 'student', '0001_initial', '2025-03-23 13:34:34.292630'),
(16, 'admin', '0001_initial', '2025-03-23 13:34:34.334517'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-03-23 13:34:34.341531'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-23 13:34:34.352470'),
(19, 'sessions', '0001_initial', '2025-03-23 13:34:34.368452');

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
('w7xi0kqha2lsu2g9u1tpc88zkxzcxxi6', '.eJxVjMsOwiAQRf-FtSG8mbp07zeQYQCpGkhKuzL-uzbpQrf3nHNfLOC21rCNvIQ5sTOT7PS7RaRHbjtId2y3zqm3dZkj3xV-0MGvPeXn5XD_DiqO-q2VEqRFESi8lsmhi2AJrcspkTWa_AQIxhYQYKSSVHJB7cFE8nKSitj7A9XDN5Y:1twLxz:1LWtU0D4csDGNb8vnjCV29f_fGYFt-z5odBelMzafFs', '2025-04-06 14:06:19.415235');

-- --------------------------------------------------------

--
-- بنية الجدول `student_student`
--

CREATE TABLE `student_student` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `gender` varchar(1) NOT NULL,
  `birthday` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `student_student`
--

INSERT INTO `student_student` (`id`, `password`, `last_login`, `is_superuser`, `user_name`, `full_name`, `email`, `phone_number`, `address`, `gender`, `birthday`, `is_active`, `is_staff`) VALUES
(1, 'pbkdf2_sha256$870000$IoloIPTMPePaMISHRBaLOi$4A3jK1Eafqkpk/b+jd9r04A1eZkAAU1CtyyBcJp5qJs=', '2025-03-23 14:06:19.412210', 0, 'saleh', 'SALEH MOHAMED SALEH ABDULLAH ALGABRI', 's96557867@gmail.com', '+967 770489242', 'Haraj Street\r\nNext to Saif Al-Yaman Hotel - in front of Haraj Al-Shuja - B', 'M', '2004-02-11', 1, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `student_student_groups`
--

CREATE TABLE `student_student_groups` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `student_student_user_permissions`
--

CREATE TABLE `student_student_user_permissions` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_student_student_id` (`user_id`);

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
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `student_student_groups`
--
ALTER TABLE `student_student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_student_groups_student_id_group_id_4485f917_uniq` (`student_id`,`group_id`),
  ADD KEY `student_student_groups_group_id_42ccbd60_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `student_student_user_permissions`
--
ALTER TABLE `student_student_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_student_user_per_student_id_permission_id_b747c039_uniq` (`student_id`,`permission_id`),
  ADD KEY `student_student_user_permission_id_2bdb5544_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_student`
--
ALTER TABLE `student_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_student_groups`
--
ALTER TABLE `student_student_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_student_user_permissions`
--
ALTER TABLE `student_student_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المُلقاة.
--

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_student_student_id` FOREIGN KEY (`user_id`) REFERENCES `student_student` (`id`);

--
-- قيود الجداول `student_student_groups`
--
ALTER TABLE `student_student_groups`
  ADD CONSTRAINT `student_student_groups_group_id_42ccbd60_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `student_student_groups_student_id_d81aec21_fk_student_student_id` FOREIGN KEY (`student_id`) REFERENCES `student_student` (`id`);

--
-- قيود الجداول `student_student_user_permissions`
--
ALTER TABLE `student_student_user_permissions`
  ADD CONSTRAINT `student_student_user_permission_id_2bdb5544_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `student_student_user_student_id_b61f7775_fk_student_s` FOREIGN KEY (`student_id`) REFERENCES `student_student` (`id`);
--
-- Database: `image_enhancer`
--
DROP DATABASE IF EXISTS `image_enhancer`;
CREATE DATABASE IF NOT EXISTS `image_enhancer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `image_enhancer`;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add image enhancement', 7, 'add_imageenhancement'),
(26, 'Can change image enhancement', 7, 'change_imageenhancement'),
(27, 'Can delete image enhancement', 7, 'delete_imageenhancement'),
(28, 'Can view image enhancement', 7, 'view_imageenhancement');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$jD4n1qT8NxLnHQlh1JTmB3$36NpBnGUsIMp6rcl9/KESige11MEqOmuaOG5eGtTxMM=', NULL, 1, 'saleh', '', '', '', 1, 1, '2024-11-21 21:24:32.768738'),
(2, 'pbkdf2_sha256$870000$uWtk07Se2ipIcFgMQwSlpG$uMbbP5da3ONg7lsEplClkRKgCNsGSt2u5LQvoTHcHko=', '2024-11-21 21:39:39.719833', 1, 'ahmed', '', '', '', 1, 1, '2024-11-21 21:39:19.850324');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-11-21 21:40:25.311117', '1', 'saleh', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(2, '2024-11-21 21:41:06.733529', '1', 'Image: images/2024/11/22/d1_YBi6pKe.jpg, Algorithm: Algorithm 3', 3, '', 7, 2),
(3, '2024-11-21 21:51:01.944270', '14', 'Image: images/2024/11/22/samy_wuLmrbZ.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(4, '2024-11-21 21:51:01.944270', '13', 'Image: images/2024/11/22/samy_oF4FNQA.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(5, '2024-11-21 21:51:01.944270', '12', 'Image: images/2024/11/22/samy_Xpm4OIr.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(6, '2024-11-21 21:51:01.944270', '11', 'Image: images/2024/11/22/samy_FJn9IzH.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(7, '2024-11-21 21:51:01.944270', '10', 'Image: images/2024/11/22/samy_JjmPJVm.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(8, '2024-11-21 21:51:01.944270', '9', 'Image: images/2024/11/22/samy_6rTJHS1.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(9, '2024-11-21 21:51:01.944270', '8', 'Image: images/2024/11/22/samy_QyyBVTe.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(10, '2024-11-21 21:51:01.944270', '7', 'Image: images/2024/11/22/samy_1ECzueB.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(11, '2024-11-21 21:51:01.944270', '6', 'Image: images/2024/11/22/samy_tDtGwQK.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(12, '2024-11-21 21:51:01.944270', '5', 'Image: images/2024/11/22/samy_3Cy6iZk.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(13, '2024-11-21 21:51:01.944270', '4', 'Image: images/2024/11/22/samy_evX9Kh9.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(14, '2024-11-21 21:51:01.944270', '3', 'Image: images/2024/11/22/samy.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(15, '2024-11-21 21:51:01.945267', '2', 'Image: images/2024/11/22/d1.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(16, '2024-11-21 22:21:24.362631', '16', 'Image: images/2024/11/22/d1.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(17, '2024-11-21 22:21:24.362631', '15', 'Image: images/2024/11/22/samy.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(18, '2024-11-22 16:31:04.008739', '22', 'Image: images/2024/11/22/d2.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(19, '2024-11-22 16:31:04.008739', '21', 'Image: images/2024/11/22/d1_DuFauFI.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(20, '2024-11-22 16:31:04.008739', '20', 'Image: images/2024/11/22/d1_dTtaBtU.jpg, Algorithm: Algorithm 4', 3, '', 7, 2),
(21, '2024-11-22 16:31:04.008739', '19', 'Image: images/2024/11/22/d1_uoEP8XM.jpg, Algorithm: Algorithm 4', 3, '', 7, 2),
(22, '2024-11-22 16:31:04.008739', '18', 'Image: images/2024/11/22/d1.jpg, Algorithm: Algorithm 3', 3, '', 7, 2),
(23, '2024-11-22 16:31:04.008739', '17', 'Image: images/2024/11/22/samy.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(24, '2024-11-22 17:26:14.785312', '24', 'Image: images/2024/11/22/d1_AXyLVAo.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(25, '2024-11-22 17:26:14.785312', '23', 'Image: images/2024/11/22/d2_MaXY4Oi.jpg, Algorithm: Algorithm 1', 3, '', 7, 2),
(26, '2024-11-22 17:48:55.194606', '25', 'Image: images/2024/11/22/d1.jpg, Algorithm: Algorithm 3', 3, '', 7, 2),
(27, '2024-11-22 17:57:03.714014', '26', 'Image: images/2024/11/22/d1.jpg, Algorithm: Algorithm 3', 3, '', 7, 2);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'imageEnhancer', 'imageenhancement'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-11-21 21:22:57.188096'),
(2, 'auth', '0001_initial', '2024-11-21 21:22:57.315754'),
(3, 'admin', '0001_initial', '2024-11-21 21:22:57.381371'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-21 21:22:57.389351'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-21 21:22:57.398351'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-21 21:22:57.430241'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-21 21:22:57.449190'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-21 21:22:57.466147'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-21 21:22:57.474129'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-21 21:22:57.497066'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-21 21:22:57.500067'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-21 21:22:57.508048'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-21 21:22:57.521999'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-21 21:22:57.535961'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-21 21:22:57.552928'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-21 21:22:57.562906'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-21 21:22:57.583837'),
(18, 'imageEnhancer', '0001_initial', '2024-11-21 21:22:57.591838'),
(19, 'sessions', '0001_initial', '2024-11-21 21:22:57.606773'),
(20, 'imageEnhancer', '0002_imageenhancement_processed_image', '2024-11-21 21:37:36.068193'),
(21, 'imageEnhancer', '0003_alter_imageenhancement_processed_image', '2024-11-21 21:41:50.591126'),
(22, 'imageEnhancer', '0004_alter_imageenhancement_enhancement_algorithm', '2024-11-22 15:29:48.286140'),
(23, 'imageEnhancer', '0005_alter_imageenhancement_enhancement_algorithm', '2024-11-22 15:31:08.573064'),
(24, 'imageEnhancer', '0006_remove_imageenhancement_processed_image_and_more', '2024-11-22 15:35:21.678865'),
(25, 'imageEnhancer', '0007_alter_imageenhancement_enhancement_algorithm', '2024-11-22 15:58:06.782282'),
(26, 'imageEnhancer', '0008_imageenhancement_processed_image', '2024-11-22 16:30:47.365226');

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
('qgr8we0hzk2w9n7qf8d0g63q7l3qcifx', '.eJxVjEEOwiAQRe_C2hBKy8zUpXvPQAYYpGpoUtqV8e7apAvd_vfefynP21r81mTxU1JnZdXpdwscH1J3kO5cb7OOc12XKehd0Qdt-joneV4O9--gcCvfGgMKdsAk1EXoR6LRocFshxQtSc_gAlo7GKJsEgPkANlwxCQg1jj1_gDLojeM:1tEEuX:6j2D3l3JCepiY_Cuvpkq9EEQbgxRa0OYSdSmm573GEM', '2024-12-05 21:40:25.324076');

-- --------------------------------------------------------

--
-- بنية الجدول `imageenhancer_imageenhancement`
--

CREATE TABLE `imageenhancer_imageenhancement` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `enhancement_algorithm` varchar(50) NOT NULL,
  `processed_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `imageenhancer_imageenhancement`
--
ALTER TABLE `imageenhancer_imageenhancement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `imageenhancer_imageenhancement`
--
ALTER TABLE `imageenhancer_imageenhancement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- قيود الجداول المُلقاة.
--

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
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `lab3`
--
DROP DATABASE IF EXISTS `lab3`;
CREATE DATABASE IF NOT EXISTS `lab3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab3`;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add students', 7, 'add_students'),
(26, 'Can change students', 7, 'change_students'),
(27, 'Can delete students', 7, 'delete_students'),
(28, 'Can view students', 7, 'view_students');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$n3sfnB4GkF8nZXF7Qz3D98$iaClN15Gwx7+TW8WmkelpIBfzA4/V2O0j6ZnD+a4EF0=', '2024-10-20 00:40:59.208370', 1, 'saleh', '', '', 's96557867@gmail.com', 1, 1, '2024-10-06 01:14:47.854237');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-06 01:17:50.064219', '1', 'Students object (1)', 1, '[{\"added\": {}}]', 7, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Students', 'students');

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
(1, 'contenttypes', '0001_initial', '2024-10-06 01:01:21.514930'),
(2, 'auth', '0001_initial', '2024-10-06 01:01:21.643575'),
(3, 'admin', '0001_initial', '2024-10-06 01:01:21.677486'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-06 01:01:21.686492'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-06 01:01:21.695437'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-06 01:01:21.740317'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-06 01:01:21.757289'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-06 01:01:21.774226'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-06 01:01:21.783227'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-06 01:01:21.801154'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-06 01:01:21.804145'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-06 01:01:21.813170'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-06 01:01:21.827096'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-06 01:01:21.843043'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-06 01:01:21.860996'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-06 01:01:21.869970'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-06 01:01:21.883932'),
(18, 'sessions', '0001_initial', '2024-10-06 01:01:21.901626'),
(19, 'Students', '0001_initial', '2024-10-06 01:09:12.129895');

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
('7pio3ra4vl7m6w5ebbpkd5kqo6mqgw7v', '.eJxVjMEOwiAQBf-FsyFAYQGP3v0Gwi4gVQNJaU_Gf9cmPej1zcx7sRC3tYZt5CXMiZ2ZZKffDSM9cttBusd265x6W5cZ-a7wgw5-7Sk_L4f7d1DjqN8agZzTaHVBAihTBsrGiIzFa68VeAUknDG2gLAGCJKkSakUsUhUOrL3B-d_N98:1t2K0B:EqsCwfj6e3mrz0a_oHJtuAnZgYUbxrQHr7PCslPE8CY', '2024-11-03 00:40:59.213389'),
('eaawr66jkrj8uazmrj27re5gc7vo2p7w', '.eJxVjMEOwiAQBf-FsyFAYQGP3v0Gwi4gVQNJaU_Gf9cmPej1zcx7sRC3tYZt5CXMiZ2ZZKffDSM9cttBusd265x6W5cZ-a7wgw5-7Sk_L4f7d1DjqN8agZzTaHVBAihTBsrGiIzFa68VeAUknDG2gLAGCJKkSakUsUhUOrL3B-d_N98:1sxFs9:9m3KWL9McGESc0CmHFE3dPIt26l5kBHpj4C9fltXnSM', '2024-10-20 01:15:45.087534'),
('twqp56zd4hlebkvj5ssxmb9a9qag485f', '.eJxVjMEOwiAQBf-FsyFAYQGP3v0Gwi4gVQNJaU_Gf9cmPej1zcx7sRC3tYZt5CXMiZ2ZZKffDSM9cttBusd265x6W5cZ-a7wgw5-7Sk_L4f7d1DjqN8agZzTaHVBAihTBsrGiIzFa68VeAUknDG2gLAGCJKkSakUsUhUOrL3B-d_N98:1sxK5k:3gR9nmsrAo1VvRdfLH0EjCBvBKs86HD2MwslfxwUdkc', '2024-10-20 05:46:04.106081');

-- --------------------------------------------------------

--
-- بنية الجدول `students_students`
--

CREATE TABLE `students_students` (
  `id` bigint(20) NOT NULL,
  `f_name` varchar(10) NOT NULL,
  `l_name` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `gpa` decimal(4,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reporet` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `students_students`
--

INSERT INTO `students_students` (`id`, `f_name`, `l_name`, `age`, `level`, `gpa`, `status`, `reporet`) VALUES
(1, 'Saleh', 'ALGABRI', 20, '4', 9.00, 0, 'ss'),
(4, 'Mohammed', 'Alhosany', 22, '4', 9.90, 0, 'ss'),
(5, 'Ali', 'ALGABRI', 22, '4', 8.00, 0, 'ss');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `students_students`
--
ALTER TABLE `students_students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `students_students`
--
ALTER TABLE `students_students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- قيود الجداول المُلقاة.
--

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
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `patients`
--
DROP DATABASE IF EXISTS `patients`;
CREATE DATABASE IF NOT EXISTS `patients` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `patients`;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add patients', 7, 'add_patients'),
(26, 'Can change patients', 7, 'change_patients'),
(27, 'Can delete patients', 7, 'delete_patients'),
(28, 'Can view patients', 7, 'view_patients'),
(29, 'Can add doctors', 8, 'add_doctors'),
(30, 'Can change doctors', 8, 'change_doctors'),
(31, 'Can delete doctors', 8, 'delete_doctors'),
(32, 'Can view doctors', 8, 'view_doctors');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$XRfSzLIrffkHED3ExBxtEJ$Ij7W4aVgi5bEQe8ob0jS+O4Kfq4s1DrXPSH9M2FbpW4=', '2024-11-18 08:55:38.410455', 1, 'saleh', '', '', 's96557867@gmail.com', 1, 1, '2024-10-26 04:48:13.000000'),
(2, 'pbkdf2_sha256$870000$p27JYwXlaXBO65qEfgLgLa$eYeTpSQtYia+6ypzSkvGxPjNH/6Q/a75hHkHum5xgbw=', '2024-11-10 04:45:37.802657', 0, 'ahmed', '', '', 'abnalyemen166@gmail.com', 0, 1, '2024-11-10 04:39:18.085678'),
(3, 'pbkdf2_sha256$870000$MCNHYs34dmf2ty5SeS3nPG$qBXjCzjlEYBvRvKARIDySN2hv7QOyW2b1XVrRSCiezc=', NULL, 0, 'mohammed', '', '', 'abnalyemen166@gmail.com', 0, 1, '2024-11-18 08:54:24.344610');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-11-01 20:19:15.426263', '1', 'Malek Almosanif', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-11-01 20:32:18.511543', '2', 'Mohammed Sadiq', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-11-01 20:33:10.418998', '3', 'Samy Ahmed', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-11-03 23:18:07.346449', '1', 'Saleh ALgabri', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-11-03 23:20:00.312365', '2', 'Malek Almosanif', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-11-03 23:20:44.545743', '3', 'Mohammed Sadiq', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-11-04 00:14:19.120144', '1', 'Saleh ALgabri', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(8, '2024-11-04 13:33:17.960477', '9', 'mohammed ALGABRI‬‏', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Image\"]}}]', 8, 1),
(9, '2024-11-04 13:33:22.717563', '1', 'Saleh ALgabri', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(10, '2024-11-04 13:34:03.335161', '3', 'Samy Ahmed', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(11, '2024-11-04 13:34:15.620089', '2', 'Mohammed Sadiq', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(12, '2024-11-04 13:34:17.358906', '2', 'Mohammed Sadiq', 2, '[]', 7, 1),
(13, '2024-11-04 13:34:53.468297', '1', 'Malek Almosanif', 2, '[{\"changed\": {\"fields\": [\"Image\", \"File report\"]}}]', 7, 1),
(14, '2024-11-10 04:47:32.453610', '1', 'saleh', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(15, '2024-11-14 23:36:29.372341', '11', 'Unknown Unknown', 3, '', 8, 1),
(16, '2024-11-14 23:36:29.372341', '10', 'Unknown Unknown', 3, '', 8, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Doctors', 'doctors'),
(7, 'patients', 'patients'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-10-26 04:46:35.590817'),
(2, 'auth', '0001_initial', '2024-10-26 04:46:35.747585'),
(3, 'admin', '0001_initial', '2024-10-26 04:46:35.780499'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-26 04:46:35.803439'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-26 04:46:35.811450'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-26 04:46:35.845329'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-26 04:46:35.866308'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-26 04:46:35.881267'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-26 04:46:35.890278'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-26 04:46:35.909194'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-26 04:46:35.912240'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-26 04:46:35.923158'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-26 04:46:35.949088'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-26 04:46:35.966041'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-26 04:46:35.982033'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-26 04:46:35.990012'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-26 04:46:36.005003'),
(18, 'patients', '0001_initial', '2024-10-26 04:46:36.016972'),
(19, 'sessions', '0001_initial', '2024-10-26 04:46:36.037922'),
(20, 'Doctors', '0001_initial', '2024-11-03 23:16:54.421835');

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
('3gxwlq6qh4uvi9jg98gda3tm52wef78k', '.eJxVjMsOwiAQRf-FtSE8hg516d5vIMBMpWogKe3K-O_apAvd3nPOfYkQt7WErfMSZhJnocXpd0sxP7jugO6x3prMra7LnOSuyIN2eW3Ez8vh_h2U2Mu3NkDWQHYWLCZ0rAEGNdA0RueVwUlZbUkDIWVGTgijsqwA2XhInlm8P7VcNxQ:1t7jqP:7Ns8_6uMV01pep775AekFo4So8rHOnDqSlVwkpYcxh8', '2024-11-17 23:17:17.408787'),
('d142gx1ycz54b65ywophreraiaeiy4c6', '.eJxVjMsOwiAQRf-FtSE8hg516d5vIMBMpWogKe3K-O_apAvd3nPOfYkQt7WErfMSZhJnocXpd0sxP7jugO6x3prMra7LnOSuyIN2eW3Ez8vh_h2U2Mu3NkDWQHYWLCZ0rAEGNdA0RueVwUlZbUkDIWVGTgijsqwA2XhInlm8P7VcNxQ:1t4Yis:Nmikw1xs11xv9AsUaV2eqD0HZ5Hdn47DJddnrmr2SLM', '2024-11-09 04:48:22.604133'),
('f8lek8i84kjfgdwyo97k6uhosuukw77v', '.eJxVjMsOwiAQRf-FtSE8hg516d5vIMBMpWogKe3K-O_apAvd3nPOfYkQt7WErfMSZhJnocXpd0sxP7jugO6x3prMra7LnOSuyIN2eW3Ez8vh_h2U2Mu3NkDWQHYWLCZ0rAEGNdA0RueVwUlZbUkDIWVGTgijsqwA2XhInlm8P7VcNxQ:1t9zr1:UgwOCnIMk1-40JHhMSASKOgYxS9Bhu9Q1kFetTFNEwY', '2024-11-24 04:47:15.900009'),
('vos3oroydit6zn3zi506wyou2z4bvk1g', 'e30:1t9zoa:mPKZN0nzrivrH0U10EfXLDc4LabWZPPaJCePa0yDziA', '2024-11-24 04:44:44.140903'),
('zoka1s2z552ng3jr0unmmf8kq8tn7o3h', '.eJxVjMsOwiAQRf-FtSE8hg516d5vIMBMpWogKe3K-O_apAvd3nPOfYkQt7WErfMSZhJnocXpd0sxP7jugO6x3prMra7LnOSuyIN2eW3Ez8vh_h2U2Mu3NkDWQHYWLCZ0rAEGNdA0RueVwUlZbUkDIWVGTgijsqwA2XhInlm8P7VcNxQ:1tCxXm:S1zya6x1Fqj_--rB9k5c6yXdjZZFHFLGNfMSWaBhP9I', '2024-12-02 08:55:38.414423');

-- --------------------------------------------------------

--
-- بنية الجدول `doctors_doctors`
--

CREATE TABLE `doctors_doctors` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `Specialization` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `uploaded_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctors_doctors`
--

INSERT INTO `doctors_doctors` (`id`, `first_name`, `last_name`, `age`, `Specialization`, `image`, `uploaded_at`) VALUES
(9, 'mohammed', 'ALGABRI‬‏', 58, 'dentist', 'images/2024/11/04/d2.jpg', '2024-11-04 10:05:01.882752');

-- --------------------------------------------------------

--
-- بنية الجدول `patients_patients`
--

CREATE TABLE `patients_patients` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `image` varchar(100) DEFAULT NULL,
  `file_report` varchar(100) DEFAULT NULL,
  `uploaded_at` datetime(6) DEFAULT NULL,
  `report` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `patients_patients`
--

INSERT INTO `patients_patients` (`id`, `first_name`, `last_name`, `age`, `image`, `file_report`, `uploaded_at`, `report`) VALUES
(1, 'Malek', 'Almosanif', 23, 'images/2024/11/04/malek.jpg', 'files/2024/11/04/links_N7UwXrN.txt', '2024-11-01 20:19:15.423290', 'He is Very Gooooood'),
(2, 'Mohammed', 'Sadiq', 23, 'images/2024/11/04/mohammed.jpg', 'files/2024/11/01/links_TufZTpQ.txt', '2024-11-01 20:32:18.508583', 'He is Normal'),
(3, 'Samy', 'Ahmed', 60, 'images/2024/11/04/samy.jpg', 'files/2024/11/01/links_EID8UJE.txt', '2024-11-01 20:33:10.416002', 'لدية مشاكل كثييرة في القلب والاوعية الدموية');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `doctors_doctors`
--
ALTER TABLE `doctors_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients_patients`
--
ALTER TABLE `patients_patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctors_doctors`
--
ALTER TABLE `doctors_doctors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patients_patients`
--
ALTER TABLE `patients_patients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- قيود الجداول المُلقاة.
--

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
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `phpmyadmin`
--
DROP DATABASE IF EXISTS `phpmyadmin`;
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- بنية الجدول `pma__bookmark`
--
-- Error reading structure for table phpmyadmin.pma__bookmark: #1932 - Table &#039;phpmyadmin.pma__bookmark&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__bookmark: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__bookmark`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__central_columns`
--
-- Error reading structure for table phpmyadmin.pma__central_columns: #1932 - Table &#039;phpmyadmin.pma__central_columns&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__central_columns: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__central_columns`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__column_info`
--
-- Error reading structure for table phpmyadmin.pma__column_info: #1932 - Table &#039;phpmyadmin.pma__column_info&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__column_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__column_info`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__designer_settings`
--
-- Error reading structure for table phpmyadmin.pma__designer_settings: #1932 - Table &#039;phpmyadmin.pma__designer_settings&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__designer_settings: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__designer_settings`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__export_templates`
--
-- Error reading structure for table phpmyadmin.pma__export_templates: #1932 - Table &#039;phpmyadmin.pma__export_templates&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__export_templates: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__export_templates`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__favorite`
--
-- Error reading structure for table phpmyadmin.pma__favorite: #1932 - Table &#039;phpmyadmin.pma__favorite&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__favorite: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__favorite`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__history`
--
-- Error reading structure for table phpmyadmin.pma__history: #1932 - Table &#039;phpmyadmin.pma__history&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__history: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__history`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__navigationhiding`
--
-- Error reading structure for table phpmyadmin.pma__navigationhiding: #1932 - Table &#039;phpmyadmin.pma__navigationhiding&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__navigationhiding: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__navigationhiding`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__pdf_pages`
--
-- Error reading structure for table phpmyadmin.pma__pdf_pages: #1932 - Table &#039;phpmyadmin.pma__pdf_pages&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__pdf_pages: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__pdf_pages`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__recent`
--
-- Error reading structure for table phpmyadmin.pma__recent: #1932 - Table &#039;phpmyadmin.pma__recent&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__recent: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__recent`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__relation`
--
-- Error reading structure for table phpmyadmin.pma__relation: #1932 - Table &#039;phpmyadmin.pma__relation&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__relation: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__relation`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__savedsearches`
--
-- Error reading structure for table phpmyadmin.pma__savedsearches: #1932 - Table &#039;phpmyadmin.pma__savedsearches&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__savedsearches: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__savedsearches`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_coords`
--
-- Error reading structure for table phpmyadmin.pma__table_coords: #1932 - Table &#039;phpmyadmin.pma__table_coords&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_coords: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_coords`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_info`
--
-- Error reading structure for table phpmyadmin.pma__table_info: #1932 - Table &#039;phpmyadmin.pma__table_info&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_info`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_uiprefs`
--
-- Error reading structure for table phpmyadmin.pma__table_uiprefs: #1932 - Table &#039;phpmyadmin.pma__table_uiprefs&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_uiprefs`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__tracking`
--
-- Error reading structure for table phpmyadmin.pma__tracking: #1932 - Table &#039;phpmyadmin.pma__tracking&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__tracking: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__tracking`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__userconfig`
--
-- Error reading structure for table phpmyadmin.pma__userconfig: #1932 - Table &#039;phpmyadmin.pma__userconfig&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__userconfig: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__userconfig`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__usergroups`
--
-- Error reading structure for table phpmyadmin.pma__usergroups: #1932 - Table &#039;phpmyadmin.pma__usergroups&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__usergroups: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__usergroups`&#039; at line 1

-- --------------------------------------------------------

--
-- بنية الجدول `pma__users`
--
-- Error reading structure for table phpmyadmin.pma__users: #1932 - Table &#039;phpmyadmin.pma__users&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__users`&#039; at line 1
--
-- Database: `product`
--
DROP DATABASE IF EXISTS `product`;
CREATE DATABASE IF NOT EXISTS `product` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `product`;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add products', 7, 'add_products'),
(30, 'Can change products', 7, 'change_products'),
(31, 'Can delete products', 7, 'delete_products'),
(32, 'Can view products', 7, 'view_products'),
(33, 'Can add test', 8, 'add_test'),
(34, 'Can change test', 8, 'change_test'),
(35, 'Can delete test', 8, 'delete_test'),
(36, 'Can view test', 8, 'view_test'),
(37, 'Can add event', 9, 'add_event'),
(38, 'Can change event', 9, 'change_event'),
(39, 'Can delete event', 9, 'delete_event'),
(40, 'Can view event', 9, 'view_event'),
(41, 'Can add login', 10, 'add_login'),
(42, 'Can change login', 10, 'change_login'),
(43, 'Can delete login', 10, 'delete_login'),
(44, 'Can view login', 10, 'view_login');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$ekhMOjXhIyPdKc0Vfx17I5$Y0s6vmD5NDa7Iry4xlGxwA8eBJ2kVz99lzxNWCWHDpk=', '2025-02-23 15:45:38.237407', 1, 'saleh', '', '', '', 1, 1, '2025-02-23 15:45:23.403276');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-02-23 15:50:06.027526', '1', 'cheese', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-02-23 16:25:24.568256', '2', 'أرز بسمتي فاخر', 1, '[{\"added\": {}}]', 7, 1),
(3, '2025-02-23 16:36:44.439252', '3', 'ahmed', 1, '[{\"added\": {}}]', 7, 1),
(4, '2025-02-23 23:47:40.039772', '3', 'ahmed', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(5, '2025-02-23 23:47:56.494513', '3', 'ahmed', 2, '[]', 7, 1),
(6, '2025-02-23 23:48:07.804962', '3', 'ahmed', 2, '[]', 7, 1),
(7, '2025-02-23 23:48:11.740260', '3', 'ahmed', 2, '[]', 7, 1),
(8, '2025-02-23 23:48:45.468334', '1', 'cheese', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(9, '2025-02-23 23:48:48.009165', '1', 'cheese', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(10, '2025-03-01 00:01:20.269717', '4', 'apple 12 pro max', 1, '[{\"added\": {}}]', 7, 1),
(11, '2025-03-01 14:14:38.956127', '3', 'ahmed', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 7, 1),
(12, '2025-03-01 14:40:59.084749', '2', 'أرز بسمتي فاخر', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 7, 1),
(13, '2025-03-01 14:42:36.215943', '1', 'cheese', 2, '[]', 7, 1),
(14, '2025-03-01 14:43:16.717001', '5', 'cheesess', 1, '[{\"added\": {}}]', 7, 1),
(15, '2025-03-01 14:43:26.165344', '1', 'cheese', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 7, 1),
(16, '2025-03-01 23:58:47.919097', '6', 'PC', 1, '[{\"added\": {}}]', 7, 1),
(17, '2025-03-02 02:15:30.121210', '2', 'ahmed', 2, '[]', 10, 1),
(18, '2025-03-02 02:42:14.139520', '3', 'ali', 3, '', 10, 1),
(19, '2025-03-02 04:17:06.970852', '3', 'ahmed', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 7, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'pages', 'login'),
(9, 'product', 'event'),
(7, 'product', 'product'),
(8, 'product', 'test'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2025-02-23 15:38:26.591407'),
(2, 'auth', '0001_initial', '2025-02-23 15:38:26.730221'),
(3, 'admin', '0001_initial', '2025-02-23 15:38:26.765128'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-23 15:38:26.790094'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-23 15:38:26.798041'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-23 15:38:26.843919'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-23 15:38:26.869890'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-23 15:38:26.884842'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-23 15:38:26.893821'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-23 15:38:26.912733'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-23 15:38:26.915747'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-23 15:38:26.925700'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-23 15:38:26.942653'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-23 15:38:26.957613'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-23 15:38:26.972573'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-23 15:38:26.981556'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-23 15:38:26.999503'),
(18, 'product', '0001_initial', '2025-02-23 15:38:27.008479'),
(19, 'sessions', '0001_initial', '2025-02-23 15:38:27.026428'),
(20, 'product', '0002_rename_product_products', '2025-02-23 15:40:38.798664'),
(21, 'product', '0003_rename_products_product', '2025-02-23 15:46:31.798097'),
(22, 'product', '0004_alter_product_options_product_category_and_more', '2025-02-24 00:04:42.555936'),
(23, 'product', '0005_alter_product_category', '2025-02-24 00:06:53.011019'),
(24, 'product', '0006_alter_product_category', '2025-02-24 00:08:53.997840'),
(25, 'product', '0007_alter_product_category', '2025-02-24 00:12:57.989888'),
(26, 'product', '0008_test', '2025-02-24 00:20:19.202818'),
(27, 'product', '0009_test_time', '2025-02-24 00:21:28.895569'),
(28, 'product', '0010_test_created', '2025-02-24 00:23:05.578845'),
(29, 'product', '0011_alter_test_created', '2025-02-24 00:40:04.386767'),
(30, 'product', '0012_alter_test_created', '2025-02-24 00:40:37.162413'),
(31, 'product', '0013_event_alter_test_created', '2025-02-24 00:51:21.315533'),
(32, 'product', '0014_alter_event_created_at_alter_test_created', '2025-02-24 00:51:56.866949'),
(33, 'product', '0015_delete_event_alter_test_created', '2025-02-24 00:53:45.811714'),
(34, 'product', '0016_alter_product_options_alter_product_category_and_more', '2025-03-01 14:31:44.772819'),
(35, 'pages', '0001_initial', '2025-03-02 01:59:20.640207'),
(36, 'product', '0017_alter_product_category_alter_test_created', '2025-03-02 01:59:20.645195');

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
('tpm3fy2na75cw89kon0w5qaqtxrqq5g2', '.eJxVjMsOwiAQRf-FtSFQHuO4dN9vIMAMUjU0Ke3K-O_apAvd3nPOfYkQt7WGrfMSJhIXocXpd0sxP7jtgO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_fmkkVIq2Iii_aWzRnwylFn9A5A0PKSgEah6AGy2yxEAAhOoOQcwTx_gD13Tfw:1tmEAk:0zE_ZoSBxQNUip6Ycq_FUB7UsR2kqDd-Qyqr3IxHprg', '2025-03-09 15:45:38.240399');

-- --------------------------------------------------------

--
-- بنية الجدول `pages_login`
--

CREATE TABLE `pages_login` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `pages_login`
--

INSERT INTO `pages_login` (`id`, `user_name`, `password`) VALUES
(1, 'saleh', '12345'),
(2, 'ahmed', '15646'),
(4, 'ali', '123465'),
(5, 'mohammed', '56456asd56');

-- --------------------------------------------------------

--
-- بنية الجدول `product_product`
--

CREATE TABLE `product_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `product_product`
--

INSERT INTO `product_product` (`id`, `name`, `content`, `price`, `image`, `active`, `category`) VALUES
(1, 'cheese', 'Delicious cheese', 9.99, 'photos/25/02/23/types-of-cheese-and-uses-1.jpg', 1, 'Dairy Products'),
(2, 'أرز بسمتي فاخر', 'كجم من الأرز البسمتي ذو الحبة الطويلة، مثالي للأطباق الشرقية.', 9.99, 'photos/25/02/23/8906081032485-1.webp', 1, NULL),
(3, 'ahmed', '', 100.00, 'photos/25/02/23/types-of-cheese-and-uses-1_pDE63Fj.jpg', 1, 'Phones'),
(4, 'apple 12 pro max', 'this is apple', 500.00, 'photos/25/03/01/download.jpg', 1, 'Phones'),
(5, 'cheesess', 'this is cheese', 10.00, 'photos/25/03/01/types-of-cheese-and-uses-1.jpg', 1, 'Dairy Products'),
(6, 'PC', 'this is PC', 50.00, 'photos/25/03/02/download.jpg', 1, 'PC');

-- --------------------------------------------------------

--
-- بنية الجدول `product_test`
--

CREATE TABLE `product_test` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) DEFAULT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `pages_login`
--
ALTER TABLE `pages_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_test`
--
ALTER TABLE `product_test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages_login`
--
ALTER TABLE `pages_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_test`
--
ALTER TABLE `product_test`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المُلقاة.
--

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
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
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
  `academic_year_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_academiclevel`
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
(12, 'الصف الثالث ثانوي', 12, 1, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `academics_academicyear`
--

CREATE TABLE `academics_academicyear` (
  `id` bigint(20) NOT NULL,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_academicyear`
--

INSERT INTO `academics_academicyear` (`id`, `start_year`, `end_year`, `add_by_id`) VALUES
(1, '2025-03-29', '2026-03-29', NULL),
(2, '2024-03-30', '2025-03-30', NULL);

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
  `subject_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `academics_section`
--

CREATE TABLE `academics_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `academic_level_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `academics_section`
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
-- بنية الجدول `academics_subject`
--

CREATE TABLE `academics_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
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
  `academic_levels_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) DEFAULT NULL
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
  `email` varchar(254) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `phone_number`, `user_type`, `full_name`, `birthday`, `gender`, `address`, `is_active`, `is_staff`, `date_joined`, `email`, `image`) VALUES
(4, 'pbkdf2_sha256$870000$er3nRqdrY0ngK9y0ZGmcZK$YHWAeXNbrujeaIsbwGHti3NuHn+3NKw8+NYTqQZL1jM=', '2025-04-02 11:02:04.169010', 1, '770489242', 'supervisor', 'صالح محمد صالح الجبري', '2004-02-11', 'M', 'شارع العدين', 1, 1, '2025-03-29 07:42:18.306036', 's96557867@gmail.com', 'images/25/03/31/reviewer_1.jpg');

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

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_guardianprofile`
--

CREATE TABLE `accounts_guardianprofile` (
  `id` bigint(20) NOT NULL,
  `guardian_type` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
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
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_studentprofile`
--

INSERT INTO `accounts_studentprofile` (`id`, `date_joining_sections`, `section_id`, `user_id`, `add_by_id`) VALUES
(1, '2025-03-29 07:55:36.000000', 1, 4, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_supervisorprofile`
--

CREATE TABLE `accounts_supervisorprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `accounts_supervisorprofile`
--

INSERT INTO `accounts_supervisorprofile` (`id`, `user_id`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- بنية الجدول `accounts_teacherprofile`
--

CREATE TABLE `accounts_teacherprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `add_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(76, 'Can view academic year', 6, 'view_academicyear'),
(77, 'Can add supervisor profile', 18, 'add_supervisorprofile'),
(78, 'Can change supervisor profile', 18, 'change_supervisorprofile'),
(79, 'Can delete supervisor profile', 18, 'delete_supervisorprofile'),
(80, 'Can view supervisor profile', 18, 'view_supervisorprofile');

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
(91, '2025-04-02 12:05:39.316313', '18', 'صالح محمد صالح الجبري', 3, '', 9, 4);

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
(18, 'accounts', 'supervisorprofile'),
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
(28, 'academics', '0005_rename_academic_levels_section_academic_level', '2025-03-30 07:11:34.582476'),
(29, 'accounts', '0006_customuser_image', '2025-03-31 10:23:34.473030'),
(30, 'accounts', '0007_alter_customuser_user_type_supervisorprofile_and_more', '2025-04-01 04:16:19.588163'),
(31, 'academics', '0006_academiclevel_add_by_academicyear_add_by_and_more', '2025-04-01 04:16:19.883164');

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
('cqzlun81nmvgj9gukdu7hc1vzpr2cahx', 'e30:1tzsY6:UQPP3FvO9H5ar2pmu5W51XUp85CAPEER6eVvTQi8FDs', '2025-04-16 07:30:10.341267'),
('dvunkplva86waki7tk60wuiszwfepowt', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tztTp:OvmglwqAXjfWC2WAofMFYZJ0C26Y4DNQUeGC1eKR9-8', '2025-04-16 08:29:49.554958'),
('vycq5ftovvw92pzddquyruzfjzv8t5af', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tzvrA:_cjMrITYNJtrelvHWYA7lajuFTxaAMB-EHN23qQZlW8', '2025-04-16 11:02:04.172002'),
('zunbt7sty72rkir26h9kfog2b3zkzdu8', '.eJxVjEEOwiAQRe_C2hBKgQGX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIsjDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtdUHQOCY_OrBGIxKSIQaLThVgNaiQ_RDIO3CKFQZbgg4GgT3rDCTeH-ZON-M:1tzE9s:6FaBvg1zEouA7O10_OjGCpXDr3G6erLRu-esrftzHXQ', '2025-04-14 12:22:28.204370');

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
  ADD KEY `accounts_supervisorp_user_id_40a9b879_fk_accounts_` (`user_id`);

--
-- Indexes for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_teacherprof_add_by_id_13ef36d7_fk_accounts_` (`add_by_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_supervisorprofile`
--
ALTER TABLE `accounts_supervisorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `academics_academiclevel`
--
ALTER TABLE `academics_academiclevel`
  ADD CONSTRAINT `academics_academicle_academic_year_id_0394d774_fk_academics` FOREIGN KEY (`academic_year_id`) REFERENCES `academics_academicyear` (`id`),
  ADD CONSTRAINT `academics_academicle_add_by_id_09611589_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- قيود الجداول `academics_academicyear`
--
ALTER TABLE `academics_academicyear`
  ADD CONSTRAINT `academics_academicye_add_by_id_5873199d_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- قيود الجداول `academics_class`
--
ALTER TABLE `academics_class`
  ADD CONSTRAINT `academics_class_add_by_id_dcd5f7d0_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `academics_class_section_id_a2f19082_fk_academics_section_id` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `academics_class_subject_id_58ca8d68_fk_academics_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `academics_subject` (`id`),
  ADD CONSTRAINT `academics_class_teacher_id_990928e1_fk_accounts_` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacherprofile` (`id`);

--
-- قيود الجداول `academics_section`
--
ALTER TABLE `academics_section`
  ADD CONSTRAINT `academics_section_academic_level_id_b7e16171_fk_academics` FOREIGN KEY (`academic_level_id`) REFERENCES `academics_academiclevel` (`id`),
  ADD CONSTRAINT `academics_section_add_by_id_30a5f19a_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- قيود الجداول `academics_subject`
--
ALTER TABLE `academics_subject`
  ADD CONSTRAINT `academics_subject_add_by_id_394d4559_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

--
-- قيود الجداول `academics_term`
--
ALTER TABLE `academics_term`
  ADD CONSTRAINT `academics_term_academic_levels_id_6ebc9e7b_fk_academics` FOREIGN KEY (`academic_levels_id`) REFERENCES `academics_academiclevel` (`id`),
  ADD CONSTRAINT `academics_term_add_by_id_9f9a62b9_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`);

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
  ADD CONSTRAINT `accounts_guardianpro_add_by_id_abccd73c_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
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
  ADD CONSTRAINT `accounts_studentprof_add_by_id_ca8260ab_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
  ADD CONSTRAINT `accounts_studentprof_section_id_8f0a06eb_fk_academics` FOREIGN KEY (`section_id`) REFERENCES `academics_section` (`id`),
  ADD CONSTRAINT `accounts_studentprof_user_id_04a48d2e_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- قيود الجداول `accounts_supervisorprofile`
--
ALTER TABLE `accounts_supervisorprofile`
  ADD CONSTRAINT `accounts_supervisorp_user_id_40a9b879_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- قيود الجداول `accounts_teacherprofile`
--
ALTER TABLE `accounts_teacherprofile`
  ADD CONSTRAINT `accounts_teacherprof_add_by_id_13ef36d7_fk_accounts_` FOREIGN KEY (`add_by_id`) REFERENCES `accounts_supervisorprofile` (`id`),
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
--
-- Database: `test`
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
