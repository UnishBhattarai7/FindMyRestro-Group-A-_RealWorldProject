-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 09:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findmyrestro`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add restrotable', 9, 'add_restrotable'),
(34, 'Can change restrotable', 9, 'change_restrotable'),
(35, 'Can delete restrotable', 9, 'delete_restrotable'),
(36, 'Can view restrotable', 9, 'view_restrotable'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add owner register', 11, 'add_ownerregister'),
(42, 'Can change owner register', 11, 'change_ownerregister'),
(43, 'Can delete owner register', 11, 'delete_ownerregister'),
(44, 'Can view owner register', 11, 'view_ownerregister'),
(45, 'Can add user_contact', 12, 'add_user_contact'),
(46, 'Can change user_contact', 12, 'change_user_contact'),
(47, 'Can delete user_contact', 12, 'delete_user_contact'),
(48, 'Can view user_contact', 12, 'view_user_contact'),
(49, 'Can add owner register table', 13, 'add_ownerregistertable'),
(50, 'Can change owner register table', 13, 'change_ownerregistertable'),
(51, 'Can delete owner register table', 13, 'delete_ownerregistertable'),
(52, 'Can view owner register table', 13, 'view_ownerregistertable');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$sx2xpMrmRsYu$o5hzGWvYibbD3/KST7cG6M/vAEeIRfGUsUsjjl8+lBw=', '2020-07-20 05:03:05.297597', 0, 'unish', '', '', 'unish@gmail.com', 0, 1, '2020-06-11 10:03:37.109920'),
(3, 'pbkdf2_sha256$180000$0hUVXORzdfqy$OqiEN02WdV6vpP1SlccSLGFRs8YyhI/m4ht2qeFlPwM=', NULL, 0, 'bhanu', '', '', 'bhanu@gmail.com', 0, 1, '2020-06-11 10:12:47.467064'),
(4, 'pbkdf2_sha256$180000$9LapwfELLg4D$6wh1P35x+LoTx4t+dPm+TQwIx8JM15e85b5XqdILIVQ=', NULL, 0, 'unish1', '', '', 'bhattaraiunish@yahoo.com', 0, 1, '2020-06-11 10:17:13.337150'),
(5, 'pbkdf2_sha256$180000$LhGY1K6n9ZqR$Q//1RoHmWYzpqQe+iy/RRXm+V3+gdoCgqCL7zzUWoiA=', NULL, 0, 'unish2', '', '', 'unishbhattarai7@gmail.com', 0, 1, '2020-06-11 10:22:46.435330'),
(6, 'pbkdf2_sha256$180000$YZ3NEq2UiTOH$DI9cSkoINV0mkfAO5aFdgDL2MDOyda9mM+dQtBuABAk=', '2020-09-07 16:28:44.858653', 0, 'salman1', 'Salman', 'Khan', 'salman@gmail.com', 0, 1, '2020-06-11 13:57:37.371600'),
(7, '', NULL, 0, '', '', '', '', 0, 0, '0000-00-00 00:00:00.000000'),
(9, 'pbkdf2_sha256$180000$ytu2yf1wIJhp$ZkLIRA2skmVA3EjlWayuY4DSGOH2vNWkxJ/+zq2Zvac=', '2020-09-08 09:26:26.620038', 0, 'hari', 'hari', 'Khan', 'Hari@gmail.com', 0, 1, '2020-06-12 13:50:00.516547'),
(10, 'pbkdf2_sha256$180000$TZnIiBvstAkp$O8F7czlokhh8r7ax7V9d2PCi58c3vRKhQN1su23/0MQ=', '2020-07-22 08:54:01.613425', 1, 'restro', '', '', 'restro@gmail.com', 1, 1, '2020-06-17 10:42:53.030747'),
(11, 'pbkdf2_sha256$180000$DozVS8DDjyz0$uKLk9uGWwmQ9viuwlbYeYcax2NHuvbx2LOtSof+3y7Q=', '2020-09-06 06:49:41.016409', 0, 'krishna', 'krishna', 'Khan', 'krishna@gmail.com', 0, 1, '2020-06-17 11:16:05.537969'),
(12, 'pbkdf2_sha256$180000$jGOOpJ7i2ZJp$GmQpUxs0CzN0rNEPlldZX2mLEVBaN4vESVPrzKCTMd4=', '2020-06-22 05:39:21.165946', 0, 'Yunika', 'Una', 'Bhattarai', 'unabhattarai123@gmail.com', 0, 1, '2020-06-22 05:39:06.252794');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'register', 'contact'),
(11, 'register', 'ownerregister'),
(13, 'register', 'ownerregistertable'),
(8, 'register', 'profile'),
(7, 'register', 'register'),
(9, 'register', 'restrotable'),
(12, 'register', 'user_contact'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-11 15:12:56.428965'),
(2, 'auth', '0001_initial', '2020-05-11 15:12:58.613710'),
(3, 'admin', '0001_initial', '2020-05-11 15:13:09.401201'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-11 15:13:11.535728'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-11 15:13:11.568463'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-11 15:13:12.518411'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-11 15:13:13.633493'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-11 15:13:13.813855'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-11 15:13:13.863738'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-11 15:13:14.907746'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-11 15:13:15.054837'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-11 15:13:15.117313'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-11 15:13:15.316704'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-11 15:13:15.462406'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-05-11 15:13:15.765453'),
(16, 'auth', '0011_update_proxy_permissions', '2020-05-11 15:13:15.864424'),
(17, 'sessions', '0001_initial', '2020-05-11 15:13:16.799448'),
(18, 'register', '0001_initial', '2020-06-15 12:19:08.270516'),
(19, 'register', '0002_restrotable', '2020-06-18 16:18:39.924836'),
(20, 'register', '0003_contact', '2020-06-19 06:32:03.215011'),
(21, 'register', '0004_auto_20200619_1238', '2020-06-19 06:53:32.561061'),
(22, 'register', '0002_ownerregistertable', '2020-06-28 08:06:21.604432');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('zbr1pqf2nu522j2upf2rkw2nea7f6czr', 'NGQyNTNlMzg1N2Y5ZGQwNTk2YTY1ODUyYTgwNDY4ZmMzZjZhNmY2OTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjUzYjY2ZjIxYjE2ZDA4MjQyNzIwZTQ5YWM1NTQ5MGEyMjY4Y2YyMyJ9', '2020-08-05 08:54:01.638412');

-- --------------------------------------------------------

--
-- Table structure for table `register_ownerregistertable`
--

CREATE TABLE `register_ownerregistertable` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `restaurant` varchar(250) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_ownerregistertable`
--

INSERT INTO `register_ownerregistertable` (`id`, `first_name`, `last_name`, `name`, `email`, `password`, `restaurant`, `address`) VALUES
(14, 'Khagendra', 'Sapkota', 'khagendra', 'khagendra@gmail.com', 'khagendra123', 'Mitho Restaurant', 'Kathmandu'),
(16, 'Bhanu', 'neupane', 'bhanu', 'bhanu@gmail.com', 'bhanu123', '', 'gulmi');

-- --------------------------------------------------------

--
-- Table structure for table `register_profile`
--

CREATE TABLE `register_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register_register`
--

CREATE TABLE `register_register` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register_reserve_restaurant`
--

CREATE TABLE `register_reserve_restaurant` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `guests` int(11) NOT NULL,
  `restaurant` varchar(200) NOT NULL,
  `table` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_reserve_restaurant`
--

INSERT INTO `register_reserve_restaurant` (`id`, `date`, `time`, `contact`, `guests`, `restaurant`, `table`, `user_id`) VALUES
(5, '2020-09-30', '12:00:00.000000', '9864588377', 4, 'Mitho Restaurant', '2', 9);

-- --------------------------------------------------------

--
-- Table structure for table `register_restrotable`
--

CREATE TABLE `register_restrotable` (
  `id` int(11) NOT NULL,
  `restaurantName` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `contactNo` varchar(500) NOT NULL,
  `emailAddress` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `menu` varchar(500) NOT NULL,
  `Ratings` varchar(20) NOT NULL,
  `Table2` varchar(500) NOT NULL,
  `Table4` varchar(500) NOT NULL,
  `Table6` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_restrotable`
--

INSERT INTO `register_restrotable` (`id`, `restaurantName`, `address`, `location`, `contactNo`, `emailAddress`, `photo`, `menu`, `Ratings`, `Table2`, `Table4`, `Table6`) VALUES
(2, 'La Dolca Vita Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14128.28191520913!2d85.30169018729651!3d27.71511012596557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18fce607b691%3A0x53f145f660456c35!2sLa%20Dolce%20Vita%20Italian%20Restaurant%20%26%20Bar!5e0!3m2!1sen!2snp!4v1599552980494!5m2!1sen!2snp', 'Kathmandu', '9811234567', 'ladolcavita@gmail.com', 'ladolcavita.jpg', '1.jpg', '4.5', '3', '5', '4'),
(3, 'Mitho Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14128.761207816424!2d85.30004978729511!3d27.71141002598995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18fc04ff0d09%3A0xb0a658bc1bdc0153!2sMitho%20Restaurant!5e0!3m2!1sen!2snp!4v1599553004160!5m2!1sen!2snp', 'Kathmandu', '9811234567', 'mitho@gmail.com', 'mitho.jpg', '2.jpg', '4.5', '4', '5', '4'),
(4, 'Yin Yang Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14128.355909470783!2d85.30143168729626!3d27.71453892596935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18fcf12f5a27%3A0xe19bc973d54c70be!2sYin%20Yang%20Restaurant!5e0!3m2!1sen!2snp!4v1599553027204!5m2!1sen!2snp', 'Kathmandu', '9811234567', 'yinyang@gmail.com', 'yinyang.jpg', '3.jpg', '4', '2', '5', '4'),
(5, 'Grill Oregano Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14128.06228181533!2d85.3007533872971!3d27.716805525954403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18e34b4617fd%3A0xc9112352928cce83!2sGrill%20Oregano%20Restaurant!5e0!3m2!1sen!2snp!4v1599553050957!5m2!1sen!2snp', 'Kathmandu', '9811234567', 'grilloregano@gmail.com', 'oregano.jpg', '4.jpg', '4', '3', '5', '4'),
(6, 'Rox Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14127.40311305437!2d85.34841998729895!3d27.721893225920862!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb1bd8e5aa022b%3A0xed794ded55bb9ac7!2sRox%20Restaurant!5e0!3m2!1sen!2snp!4v1599553073189!5m2!1sen!2snp', 'Kathmandu', '9811234567', 'rox@gmail.com', 'rox.jpg', '5.jpg', '4.5', '4', '5', '4'),
(7, 'Little Window Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14063.20230235496!2d83.94876738748212!3d28.213370922722955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399594e1e11ea1e7%3A0x3891cde6b53e9d76!2sLittle%20Windows!5e0!3m2!1sen!2snp!4v1599553099711!5m2!1sen!2snp', 'Pokhara', '9811234567', 'littlewindow@gmail.com', 'little.png', '6.jpg', '4', '2', '6', '4'),
(8, 'RoadHouse Cafe', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14063.149286651907!2d83.94869198748219!3d28.213773522720356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399594e1e88572fb%3A0xbd3e2c213e3576cc!2sRoadhouse%20Cafe%20Pokhara!5e0!3m2!1sen!2snp!4v1599553121336!5m2!1sen!2snp', 'Pokhara', '9811234567', 'roadhouse@gmail.com', 'RoadHouse.jpg', '7.jpg', '4', '2', '6', '5'),
(9, 'The Harbor Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14064.177701587749!2d83.95258848747932!3d28.205962822770555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3995951b753b51b1%3A0xee1cb7951c8c6510!2sThe%20Harbor!5e0!3m2!1sen!2snp!4v1599553152122!5m2!1sen!2snp', 'Pokhara', '9811234567', 'theharbor@gmail.com', 'Harbor.jpg', '8.jpg', '4', '4', '6', '5'),
(10, 'Mo2\'s Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14063.855104974646!2d83.94883048748024!3d28.20841312275484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3995951ebc27df3d%3A0x3efd9a1de7061d22!2sMo2&#39;S%20Delights!5e0!3m2!1sen!2snp!4v1599553197539!5m2!1sen!2snp', 'Pokhara', '9811234567', 'mo\'s@gmail.com', 'Delight.jpg', '9.jpg', '4.5', '2', '6', '5'),
(11, 'El Papi Pizzeria', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14062.661512238757!2d83.95027078748362!3d28.21747742269658!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399594e3e764d451%3A0x9d23a74688938bea!2sEl%20Papi%20Pizzeria%20Restaurant%20%26%20Cafe!5e0!3m2!1sen!2snp!4v1599553222803!5m2!1sen!2snp', 'Pokhara', '9811234567', 'elpapi@gmail.com', 'Pizzeria.jpg', '10.jpg', '4', '3', '5', '5'),
(12, 'Friturr No.1', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14063.439784693304!2d83.94940748748142!3d28.211567422734532!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399595c7cf72784d%3A0xe61e6f4102ecf93f!2sFrituur%20No.1!5e0!3m2!1sen!2snp!4v1599553240910!5m2!1sen!2snp', 'Pokhara', '9811234567', 'friturr@gmail.com', 'Friturr.jpg', '11.jpg', '4.5', '3', '4', '4'),
(13, 'Greasy Spoon Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1809835.1371303834!2d83.81114361738942!3d27.62964959589081!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994eee2435a2947%3A0x2899968453859058!2sGreasy%20Spoon%20Restaurant%2C%20sauraha!5e0!3m2!1sen!2snp!4v1599553277448!5m2!1sen!2snp', 'Chitwan', '9811234567', 'greasyspoon@gmail.com', 'greasy.jpg', '12.jpg', '4', '3', '6', '4'),
(14, 'Taxi\'s Restaurant', ' https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1809983.4493595583!2d83.81110722659488!3d27.620678339377015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4246a593068c647c!2sTaxi&#39;s%20Restaurant!5e0!3m2!1sen!2snp!4v1599553316892!5m2!1sen!2snp', 'Chitwan', '9811234567', 'taxi\'s@gmail.com', 'taxi.jpg', '13.jpg', '4', '2', '6', '4'),
(15, 'Jalapeno Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405757.043904577!2d81.93998728050693!3d24.996979225677055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994eee2714181a3%3A0x64ea3a9cba256dc!2sJalapeno%20restaurant!5e0!3m2!1sen!2snp!4v1599553345154!5m2!1sen!2snp', 'Chitwan', '9811234567', 'jalapeno@gmail.com', 'jalapeno.png', '14.jpg', '4', '2', '6', '5'),
(16, 'Park View Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7413828.816130485!2d81.93936822522703!3d24.86270193454177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994ef59f9d5c6cf%3A0x40050bf8fd1e211!2sPark%20View%20Restaurant%20(Family%20Restaurant%20in%20Sauraha)!5e0!3m2!1sen!2snp!4v1599553387561!5m2!1sen!2snp', 'Chitwan', '9811234567', 'parkview@gmail.com', 'park.jpg', '15.jpg', '4.5', '5', '5', '5'),
(17, 'Bay Leaf Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1809586.2679592182!2d83.80628310417387!3d27.644697413515576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994eee27583809f%3A0x2b9f155a5db8220!2sBayleaf%20Restaurant%20sauraha!5e0!3m2!1sen!2snp!4v1599553432733!5m2!1sen!2snp', 'Chitwan', '9811234567', 'bayleaf@gmail.com', 'bay.jpg', '16.jpg', '4', '3', '5', '5'),
(18, 'Sunset View Restaurant & Bar', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d902722.4685980083!2d83.6667063242841!3d27.894004499562573!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994eee47df51c35%3A0x3ccedf4b3f62ca34!2sSunset%20View%20Restaurant%20and%20Bar!5e0!3m2!1sen!2snp!4v1599553462804!5m2!1sen!2snp', 'Chitwan', '9811234567', 'sunsetviewrestaurant&@gmail.com', 'Sunset.jpg', '17.jpg', '4', '2', '4', '6'),
(19, 'The Doko Restaurant & Bar', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14159.894569503978!2d83.27521218720634!3d27.470079927590657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3996935fd5efe7e3%3A0x9b7202f8acaf0081!2sThe%20Doko%20Restaurant%20%26%20Bar!5e0!3m2!1sen!2snp!4v1599553488182!5m2!1sen!2snp', 'Lumbini', '9811234567', 'thedokorestaurant&@gmail.com', 'Doko.jpg', '18.jpg', '4', '2', '5', '6'),
(20, 'Lotus Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14065.387324953905!2d83.93049558747586!3d28.196773322829625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399595873391a09d%3A0x27230ab003f01875!2sLotus%20Restaurant%20%26%20Cottage!5e0!3m2!1sen!2snp!4v1599553516108!5m2!1sen!2snp', 'Lumbini', '9811234567', 'lotus@gmail.com', 'Lotus.jpeg', '19.jpg', '4', '3', '4', '6'),
(21, 'Lumbini Garden Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1804316.8238684714!2d83.52094954888211!3d27.961562078906976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399595a9b80170fb%3A0x28abcfe9d6f2eb8c!2sLumbini%20Garden%20Restaurant!5e0!3m2!1sen!2snp!4v1599553547221!5m2!1sen!2snp', 'Lumbini', '9811234567', 'lumbinigarden@gmail.com', 'Garden.jpg', '', '4.5', '3', '4', '6'),
(22, 'Himalayan Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d452249.8420104143!2d85.12262970993176!3d27.680154342102224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18fd986926cf%3A0x430dafb30eb65af2!2sHimalayan%20Thakali%20Kitchen!5e0!3m2!1sen!2snp!4v1599553605904!5m2!1sen!2snp', 'Lumbini', '9811234567', 'himalayan@gmail.com', 'Himalayan.jpg', '', '4', '3', '4', '5'),
(23, 'Alina Restaurant', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14159.58010966483!2d83.27534108720717!3d27.47252722757435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3996957742020725%3A0x274e0e3d100e6d94!2sAlina%20restaurant!5e0!3m2!1sen!2snp!4v1599553631693!5m2!1sen!2snp', 'Lumbini', '9811234567', 'alina@gmail.com', 'Alina.jpg', '', '4', '2', '4', '4'),
(24, 'The 3 Fox Restaurant', '', 'Lumbini', '9811234567', 'thefox@gmail.com', 'Fox.png', '', '4', '3', '5', '4'),
(25, 'Masala Cottage', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14254.368224899566!2d85.91811218693682!3d26.72547653265086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ec400894593187%3A0xeb27d5b1238106f1!2sMasala%20Cottage!5e0!3m2!1sen!2snp!4v1599553771890!5m2!1sen!2snp', 'Janakpur', '9811234567', 'masala@gmail.com', 'Masala.jpg', '', '4', '4', '5', '3'),
(26, 'Folsom Cafe', ' https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14253.861593544501!2d85.92033858693826!3d26.729520732622888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ec4141ef892f0d%3A0x33bbd7fe700d4fc8!2sFolsom%20Cafe!5e0!3m2!1sen!2snp!4v1599553790942!5m2!1sen!2snp', 'Janakpur', '9811234567', 'folsom@gmail.com', 'Folsom.jpg', '', '4.5', '5', '5', '6'),
(27, 'Mayur Restaurant', '', 'Janakpur', '9811234567', 'mayur@gmail.com', 'Mayur.jpg', '', '4', '5', '3', '5'),
(28, 'Mohan Maharajee Nasta Pasal', '', 'Janakpur', '9811234567', 'mohanmaharajeenasta@gmail.com', 'Mohan.jpg', '', '4', '5', '4', '4'),
(29, 'City Pride Restaurant', '', 'Janakpur', '9811234567', 'citypride@gmail.com', 'City.jpg', '', '4', '5', '3', '4'),
(30, 'Rooftop Restaurant', '', 'Janakpur', '9811234567', 'rooftop@gmail.com', 'Rooftop.jpg', '', '4.5', '5', '2', '5');

-- --------------------------------------------------------

--
-- Table structure for table `register_user_contact`
--

CREATE TABLE `register_user_contact` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_user_contact`
--

INSERT INTO `register_user_contact` (`id`, `message`, `name`, `email`, `subject`) VALUES
(1, 'ksjddkjjsbdksdbvksjdv', 'Unish Bhattarai', 'bhattaraiunish@yahoo.com', 'Hello World'),
(2, 'uauiuaiuuaffiauuf', 'unish', 'distrub152200@gmail.com', 'fghb'),
(3, 'sdbjsdjsdhsd', 'Unish Bhattarai', 'unish@gmail.com', 'Hello World'),
(4, 'sdbjsdjsdhsd', 'Unish Bhattarai', 'unish@gmail.com', 'Hello World'),
(5, 'ddjddjdjhbd', 'Unish Bhattarai', 'unish@gmail.com', 'Hello World');

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
-- Indexes for table `register_ownerregistertable`
--
ALTER TABLE `register_ownerregistertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_profile`
--
ALTER TABLE `register_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `register_register`
--
ALTER TABLE `register_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_reserve_restaurant`
--
ALTER TABLE `register_reserve_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_restrotable`
--
ALTER TABLE `register_restrotable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_user_contact`
--
ALTER TABLE `register_user_contact`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `register_ownerregistertable`
--
ALTER TABLE `register_ownerregistertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `register_profile`
--
ALTER TABLE `register_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_register`
--
ALTER TABLE `register_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_reserve_restaurant`
--
ALTER TABLE `register_reserve_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register_restrotable`
--
ALTER TABLE `register_restrotable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `register_user_contact`
--
ALTER TABLE `register_user_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `register_profile`
--
ALTER TABLE `register_profile`
  ADD CONSTRAINT `register_profile_user_id_41c3c6b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
