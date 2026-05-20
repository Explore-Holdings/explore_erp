-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2026 at 12:06 PM
-- Server version: 10.11.15-MariaDB-cll-lve
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `explores_`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('adminerp-cache-drive_vehicle:CAD-7412', 'a:3:{s:6:\"reg_no\";s:8:\"CAD-7412\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"PRIUS\";}', 1778687998),
('adminerp-cache-drive_vehicle:CAE-4853', 'a:3:{s:6:\"reg_no\";s:8:\"CAE-4853\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AQUA\";}', 1779279846),
('adminerp-cache-drive_vehicle:CAI-1848', 'a:3:{s:6:\"reg_no\";s:8:\"CAI-1848\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:9:\"PRADO 150\";}', 1778248925),
('adminerp-cache-drive_vehicle:CAO-9712', 'a:3:{s:6:\"reg_no\";s:8:\"CAO-9712\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AXIO\";}', 1779273600),
('adminerp-cache-drive_vehicle:CAP-0853', 'a:3:{s:6:\"reg_no\";s:8:\"CAP-0853\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"PRIUS\";}', 1779261096),
('adminerp-cache-drive_vehicle:CAP-5023', 'a:3:{s:6:\"reg_no\";s:8:\"CAP-5023\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AQUA\";}', 1778679001),
('adminerp-cache-drive_vehicle:CAX-4197', 'a:3:{s:6:\"reg_no\";s:8:\"CAX-4197\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:9:\"PRADO 150\";}', 1777969632),
('adminerp-cache-drive_vehicle:CAX-7637', 'a:3:{s:6:\"reg_no\";s:8:\"CAX-7637\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AXIO\";}', 1779273739),
('adminerp-cache-drive_vehicle:CAY-3385', 'a:3:{s:6:\"reg_no\";s:8:\"CAY-3385\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1777614518),
('adminerp-cache-drive_vehicle:CAZ-2284', 'a:3:{s:6:\"reg_no\";s:8:\"CAZ-2284\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"vitz\";}', 1777555966),
('adminerp-cache-drive_vehicle:CBB-8740', 'a:3:{s:6:\"reg_no\";s:8:\"CBB-8740\";s:4:\"make\";s:10:\"LAND ROVER\";s:5:\"model\";s:17:\"RANGE ROVER SPORT\";}', 1777555958),
('adminerp-cache-drive_vehicle:CBC-3319', 'a:3:{s:6:\"reg_no\";s:8:\"CBC-3319\";s:4:\"make\";s:6:\"Nissan\";s:5:\"model\";s:4:\"DAYZ\";}', 1779274767),
('adminerp-cache-drive_vehicle:CBD-8266', 'a:3:{s:6:\"reg_no\";s:8:\"CBD-8266\";s:4:\"make\";s:5:\"Honda\";s:5:\"model\";s:5:\"GRACE\";}', 1779279846),
('adminerp-cache-drive_vehicle:CBF-6651', 'a:3:{s:6:\"reg_no\";s:8:\"CBF-6651\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"vitz\";}', 1779277556),
('adminerp-cache-drive_vehicle:CBF-9182', 'a:3:{s:6:\"reg_no\";s:8:\"CBF-9182\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"WIGO\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBM-5684', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5684\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779279891),
('adminerp-cache-drive_vehicle:CBM-5687', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5687\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779277648),
('adminerp-cache-drive_vehicle:CBM-5703', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5703\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779279845),
('adminerp-cache-drive_vehicle:CBM-5706', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5706\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1777620974),
('adminerp-cache-drive_vehicle:CBM-5707', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5707\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1778238685),
('adminerp-cache-drive_vehicle:CBM-5708', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5708\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBM-5709', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5709\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1779277647),
('adminerp-cache-drive_vehicle:CBM-5712', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5712\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779086216),
('adminerp-cache-drive_vehicle:CBM-5715', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5715\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779279845),
('adminerp-cache-drive_vehicle:CBM-5718', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5718\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779279846),
('adminerp-cache-drive_vehicle:CBM-5720', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5720\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1779279846),
('adminerp-cache-drive_vehicle:CBM-5723', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5723\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1777472402),
('adminerp-cache-drive_vehicle:CBM-5725', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5725\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBM-8143', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-8143\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1778861593),
('adminerp-cache-drive_vehicle:CBM-8155', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-8155\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBQ-8851', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-8851\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBQ-8861', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-8861\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779277647),
('adminerp-cache-drive_vehicle:CBQ-9481', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-9481\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"ROOMY\";}', 1777555966),
('adminerp-cache-drive_vehicle:CBS-0870', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-0870\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBS-9859', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9859\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1779280028),
('adminerp-cache-drive_vehicle:CBS-9860', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9860\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1779280028),
('adminerp-cache-drive_vehicle:CBS-9861', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9861\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1779279846),
('adminerp-cache-drive_vehicle:CBS-9863', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9863\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBT-2241', 'a:3:{s:6:\"reg_no\";s:8:\"CBT-2241\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"RAIZE\";}', 1779279845),
('adminerp-cache-drive_vehicle:CBT-4751', 'a:3:{s:6:\"reg_no\";s:8:\"CBT-4751\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1779279891),
('adminerp-cache-drive_vehicle:CBV-8252', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8252\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBV-8253', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8253\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279891),
('adminerp-cache-drive_vehicle:CBV-8254', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8254\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279845),
('adminerp-cache-drive_vehicle:CBV-8255', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8255\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1779279843),
('adminerp-cache-drive_vehicle:CBV-8397', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8397\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"ROOMY\";}', 1778776506),
('adminerp-cache-drive_vehicle:PC-1058', 'a:3:{s:6:\"reg_no\";s:7:\"PC-1058\";s:4:\"make\";s:6:\"NISSAN\";s:5:\"model\";s:7:\"CARAVAN\";}', 1779279846),
('adminerp-cache-drive_vehicle:PD-9606', 'a:3:{s:6:\"reg_no\";s:7:\"PD-9606\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:3:\"KDH\";}', 1779279891),
('adminerp-cache-drive_vehicle:PE-6837', 'a:3:{s:6:\"reg_no\";s:7:\"PE-6837\";s:4:\"make\";s:6:\"Nissan\";s:5:\"model\";s:7:\"CARAVAN\";}', 1779255377);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`) VALUES
(16, 'Cooperate'),
(18, 'Digital Marketing'),
(22, 'EV Operations'),
(17, 'Finance'),
(20, 'Fleet'),
(2, 'HR & Admin'),
(24, 'IT'),
(25, 'Maintaince'),
(23, 'Marketing'),
(26, 'Operations'),
(19, 'Rent A Car'),
(21, 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `employee_code` varchar(50) DEFAULT NULL,
  `employment_status` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `preferred_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `epf_number` varchar(50) DEFAULT NULL,
  `attendance_type` varchar(20) NOT NULL,
  `created_by` char(36) NOT NULL,
  `last_updated_by` char(36) NOT NULL,
  `last_updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_code`, `employment_status`, `date_created`, `full_name`, `preferred_name`, `date_of_birth`, `gender`, `marital_status`, `nationality`, `blood_group`, `epf_number`, `attendance_type`, `created_by`, `last_updated_by`, `last_updated_date`) VALUES
(10, 'EV-000010', 'Active', '2026-03-18 11:29:18', 'Test1 Test2 Test3', 'IT Test', '2000-01-18', 'Male', 'Single', 'Sri Lankan', 'AB+', '00003', 'Fingerprint', '1', '1', '2026-04-10 11:54:26'),
(11, 'EV-000011', 'Active', '2026-03-24 17:43:08', 'Manuweldura Anton Shermal Perera', 'Shermal Perera', '1987-07-11', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '1', '2026-04-16 09:23:29'),
(14, 'EV-000014', 'Active', '2026-03-29 17:45:46', 'Ralston Aaron Josheph Gerreyn', 'Ralston Gerreyn', '1987-02-25', 'Male', 'Married', 'Sri Lankan', NULL, '36', 'Fingerprint', '12', '12', '2026-05-12 23:23:30'),
(17, 'EV-000017', 'Active', '2026-03-29 19:44:11', 'Delkadura Arachchige Mihiran Rajitha Dhananjaya Silva Gunarathne', 'Mihiran', '1993-11-11', 'Male', 'Married', 'Sri Lankan', NULL, '39', 'Fingerprint', '12', '12', '2026-05-12 23:25:17'),
(18, 'EV-000018', 'Active', '2026-03-29 19:51:51', 'Sundarige Chalani Hansika Fernando', 'Hansi', '1999-04-30', 'Female', 'Married', 'Sri Lankan', 'A+', '06', 'Fingerprint', '12', '12', '2026-05-12 15:00:22'),
(19, 'EV-000019', 'Active', '2026-03-29 20:08:31', 'Liyanage Wasantha Srimal Kamaral', 'Srimal kamaral', '1987-06-27', 'Male', 'Single', 'Sri Lankan', 'B+', '064', 'Fingerprint', '1', '12', '2026-05-12 23:35:58'),
(20, 'EV-000020', 'Active', '2026-03-29 20:18:52', 'Ranepura  Dewage Deshan Madhubhashana Rathnasinghe', 'Deshan', '1997-06-01', 'Male', 'Single', 'Sri Lankan', NULL, '37', 'Fingerprint', '12', '12', '2026-05-12 16:59:13'),
(21, 'EV-000021', 'Active', '2026-03-29 20:30:03', 'Konganige Nilantha Kumar Anthony', 'Nilantha', '1972-04-06', 'Male', 'Single', 'Sri Lankan', NULL, '02', 'Fingerprint', '12', '12', '2026-05-12 16:52:12'),
(24, 'EV-000024', 'Active', '2026-03-30 12:55:35', 'Manuwel Arachchigae Navodya Divyanjali', 'Navodya  Divyanjali', '2002-04-20', 'Female', 'Single', 'Sri Lankan', 'B+', '79', 'Fingerprint', '1', '12', '2026-05-12 23:42:38'),
(25, 'EV-000025', 'Active', '2026-03-30 13:01:57', 'Kuruwita Bandaralage Yuwanee Ahinsika Jayasena', 'Yuwanee Ahinsika', '2000-05-20', 'Female', 'Single', 'Sri Lankan', 'B+', NULL, 'Manual', '1', '12', '2026-05-12 23:46:24'),
(26, 'EV-000026', 'Active', '2026-03-30 13:09:10', 'Wadu Arachchilage Induru Udantha Waduarachchi', 'Induru Udantha', '2001-05-22', 'Male', 'Single', 'Sri Lankan', 'AB+', NULL, 'Manual', '1', '12', '2026-05-12 23:46:02'),
(27, 'EV-000027', 'Active', '2026-03-30 13:25:51', 'Thisaru Nadeeshana Meemanage', 'Thisaru', '1999-08-03', 'Male', 'Married', 'Sri Lankan', NULL, '78', 'Fingerprint', '12', '12', '2026-05-14 10:00:22'),
(28, 'EV-000028', 'Active', '2026-03-30 14:13:56', 'Chandrasekara Mudiyanselage Hasitha Lakmal Chandrasekara', 'Hasitha Chandrasekara', '1995-11-04', 'Male', 'Single', 'Sri Lankan', 'O+', '050', 'Fingerprint', '12', '12', '2026-05-12 23:31:10'),
(29, 'EV-000029', 'Active', '2026-03-30 14:31:47', 'Kuranage Primali Verjinia Muthumali Perera', 'Primali Perera', '1989-04-06', 'Female', 'Single', 'Sri Lankan', 'O+', '48', 'Fingerprint', '12', '12', '2026-05-13 15:11:59'),
(30, 'EV-000030', 'Active', '2026-03-30 18:02:38', 'Rankiri Hetti Arachchige Dona Shalinika Nilakshi Perera', 'Shalinika Nilakshi', '1992-07-31', 'Female', 'Married', 'Sri Lankan', 'O+', '035', 'Fingerprint', '12', '12', '2026-05-12 23:21:39'),
(31, 'EV-000031', 'Active', '2026-03-30 18:12:08', 'Aiththappulige Tilmi Nimasha', 'Tilmi Nimasha', '2003-08-13', 'Female', 'Single', 'Sri Lankan', 'O+', '05', 'Fingerprint', '12', '12', '2026-05-12 15:06:20'),
(32, 'EV-000032', 'Active', '2026-03-30 18:22:59', 'Sewmini Chamodya', 'Sewmini', '2000-07-21', 'Female', 'Single', 'Sri Lankan', 'O+', '68', 'Fingerprint', '12', '12', '2026-05-12 23:38:14'),
(33, 'EV-000033', 'Active', '2026-03-30 18:38:11', 'Rajapaksha Mahapathirannahalage Dewmi Sanjana Fonseka', 'Dewmi Sanjana', '2004-01-14', 'Female', 'Single', 'Sri Lankan', 'B+', '61', 'Fingerprint', '12', '12', '2026-05-12 23:34:41'),
(35, 'EV-000035', 'Active', '2026-03-31 11:47:04', 'Nethaki Thimansa Victoria', 'Thimansa Victoria', '2007-03-01', 'Female', 'Single', 'Sri Lankan', 'B+', '76', 'Fingerprint', '12', '12', '2026-05-12 23:41:04'),
(36, 'EV-000036', 'Active', '2026-03-31 12:05:29', 'Kiridurayalage Kavindi Sankalpana Arunasiri', 'Sankalpana Arunasiri', '2005-06-21', 'Female', 'Single', 'Sri Lankan', 'B+', '07', 'Fingerprint', '12', '12', '2026-05-12 15:09:31'),
(37, 'EV-000037', 'Active', '2026-03-31 12:32:10', 'Sri Narayana Bamunu Mudiyanselage Kavinda Sandagomi Bandara', 'Kavinda Sandagomi', '2000-02-28', 'Female', 'Single', 'Sri Lankan', NULL, '048', 'Fingerprint', '12', '12', '2026-05-12 17:08:31'),
(38, 'EV-000038', 'Active', '2026-03-31 17:04:46', 'Bachchawa Arachchige Sanduni Aloka Prasadhi Guyes', 'Sanduni Guyes', '2004-08-13', 'Female', 'Single', 'Sri Lankan', 'AB+', '64', 'Fingerprint', '12', '12', '2026-05-12 17:43:25'),
(39, 'EV-000039', 'Active', '2026-03-31 17:24:24', 'Mariyan Anton Niroshan Fernando', 'Anton Niroshan', '1990-08-10', 'Male', 'Single', 'Sri Lankan', 'O+', '62', 'Fingerprint', '12', '12', '2026-05-13 11:20:14'),
(40, 'EV-000040', 'Active', '2026-03-31 17:38:30', 'Winthakankanamalage Dilan Damitha Perera', 'Dilan Damitha', '1989-09-08', 'Male', 'Married', 'Sri Lankan', 'B+', '44', 'Fingerprint', '12', '12', '2026-05-12 17:06:27'),
(41, 'EV-000041', 'Active', '2026-03-31 17:52:15', 'Jayakumar Lakshika', 'Lakshika', '2004-10-29', 'Female', 'Single', 'Sri Lankan', 'O+', '74', 'Fingerprint', '12', '12', '2026-05-12 18:00:10'),
(42, 'EV-000042', 'Active', '2026-03-31 18:06:48', 'Korala Gamage Dilmi Menaka Nayanamali Fernando', 'Dilmi Fernando', '2004-03-09', 'Female', 'Single', 'Sri Lankan', NULL, '75', 'Fingerprint', '12', '12', '2026-05-12 18:00:55'),
(43, 'EV-000043', 'Active', '2026-03-31 19:41:34', 'Kakulandala Liyanage Don Sameera Dilshan', 'Sameera  Dilshan', '1995-04-20', 'Male', 'Single', 'Sri Lankan', 'A+', '59', 'Fingerprint', '12', '12', '2026-05-12 17:39:16'),
(44, 'EV-000044', 'Active', '2026-03-31 19:54:24', 'Dominikku Arachchige Don Anil Krishantha', 'Krishan Dominic', '1982-10-12', 'Male', 'Married', 'Sri Lankan', 'O+', '72', 'Fingerprint', '12', '12', '2026-05-12 17:59:00'),
(45, 'EV-000045', 'Active', '2026-04-01 14:07:02', 'Oswattaliyanage Dhilhara Sudharshi Perera', 'Dhilhara Perera', '1988-07-16', 'Female', 'Single', 'Sri Lankan', NULL, '42', 'Fingerprint', '12', '12', '2026-05-13 10:00:20'),
(46, 'EV-000046', 'Active', '2026-04-01 14:26:37', 'Kumarasinghe Hettiarachchige Dinith Sanuka Perera', 'Dinith Sanuka', '1989-06-08', 'Male', 'Single', 'Sri Lankan', 'A+', '81', 'Fingerprint', '12', '12', '2026-05-12 23:44:14'),
(47, 'EV-000047', 'Active', '2026-04-01 18:12:06', 'Konganige Lasantha Kumar Anthony', 'Lasantha Anthony', '1977-08-24', 'Male', 'Married', 'Sri Lankan', NULL, '14', 'Fingerprint', '12', '12', '2026-05-12 16:53:13'),
(48, 'EV-000048', 'Active', '2026-04-01 18:20:28', 'Sembu Arachchilage Ajith', 'Sembu Ajith', '1969-09-21', 'Male', 'Married', 'Sri Lankan', NULL, '29', 'Fingerprint', '12', '12', '2026-05-12 16:54:12'),
(49, 'EV-000049', 'Active', '2026-04-01 18:25:34', 'Nissanka Kaplia Silva', 'Kapila Silva', '1980-06-01', 'Male', 'Married', 'Sri Lankan', NULL, '50', 'Fingerprint', '12', '12', '2026-05-12 17:11:02'),
(50, 'EV-000050', 'Active', '2026-04-01 18:31:11', 'Hodamuni Sahan Madusanka Mendis', 'Sahan Mendis', '1996-10-25', 'Male', 'Married', 'Sri Lankan', NULL, '56', 'Fingerprint', '12', '12', '2026-05-12 17:38:41'),
(51, 'EV-000051', 'Active', '2026-04-01 19:41:59', 'Mohottige Moshin Glenter Fernando', 'Moshin  Fernando', '1989-01-10', 'Male', 'Other', 'Sri Lankan', 'B+', '80', 'Fingerprint', '1', '12', '2026-05-18 11:36:22'),
(52, 'EV-000052', 'Active', '2026-04-01 20:22:40', 'Wickramasuriya Murthawalage Tharindu Sriyan', 'Tharindu  Sriyan', '1995-01-12', 'Male', 'Single', 'Sri Lankan', 'A+', '0076', 'Fingerprint', '1', '1', '2026-05-19 10:27:20'),
(53, 'EV-000053', 'Active', '2026-04-01 22:21:28', 'Balasuriya Arachchilage Asanka Sujeewa Amarasiri', 'Sujeewa Amarasiri', '1980-12-05', 'Male', 'Married', 'Sri Lankan', NULL, '69', 'Fingerprint', '12', '12', '2026-05-12 17:48:10'),
(54, 'EV-000054', 'Active', '2026-04-01 22:30:42', 'Garaduwa Weerakkodige Roshan Pradeep', 'Roshan Pradeep', '1980-12-08', 'Male', 'Married', 'Sri Lankan', NULL, '068', 'Fingerprint', '12', '12', '2026-05-12 17:40:21'),
(55, 'EV-000055', 'Active', '2026-04-01 22:50:46', 'Kachchakaduge Lalin Amitha', 'Lalin Amith', '1991-08-14', 'Male', 'Married', 'Sri Lankan', NULL, '044', 'Fingerprint', '12', '12', '2026-05-12 23:28:07'),
(56, 'EV-000056', 'Active', '2026-04-01 22:59:51', 'Nisanka Achintha Lankesh De Silva', 'Lankesh De Silva', '1977-05-23', 'Male', 'Single', 'Sri Lankan', NULL, '46', 'Fingerprint', '12', '12', '2026-05-12 23:29:00'),
(57, 'EV-000057', 'Active', '2026-04-01 23:11:24', 'Don Nipun Buddhi Susanga Watawala', 'Nipun Watawala', '1997-11-29', 'Male', 'Single', 'Sri Lankan', NULL, '47', 'Fingerprint', '12', '12', '2026-05-12 23:29:40'),
(58, 'EV-000058', 'Active', '2026-04-01 23:39:53', 'Basthiyan Koralalage Milan Madushanka Rodrigo', 'Milan Rodrigo', '1989-02-27', 'Male', 'Married', 'Sri Lankan', NULL, '57', 'Fingerprint', '12', '12', '2026-05-12 23:32:52'),
(59, 'EV-000059', 'Active', '2026-04-01 23:48:12', 'Atampola Arachchige Dona Nimeshi Tharuka Sewwandi', 'Tharuka Sewwandi', '1997-05-09', 'Female', 'Married', 'Sri Lankan', NULL, '53', 'Fingerprint', '12', '1', '2026-05-19 11:44:27'),
(60, 'EV-000060', 'Active', '2026-04-01 23:56:04', 'Thiruckeswaran Keshika', 'Keshika', '2005-10-12', 'Female', 'Single', 'Sri Lankan', NULL, '075', 'Fingerprint', '12', '12', '2026-05-19 09:41:50'),
(61, 'EV-000061', 'Active', '2026-04-02 00:05:53', 'Rajapaksha Walhenage Lakshitha Sandaruwan Rajapaksha', 'Lakshitha  Sandaruwan', '2000-01-05', 'Male', 'Single', 'Sri Lankan', NULL, '082', 'Fingerprint', '12', '12', '2026-05-12 15:22:07'),
(62, 'EV-000062', 'Active', '2026-04-02 00:11:36', 'Kuruwa Vithanage Shama Neranjala', 'Shama Neranjala', '1972-07-07', 'Female', 'Married', 'Sri Lankan', NULL, '66', 'Fingerprint', '12', '12', '2026-05-12 23:36:36'),
(63, 'EV-000063', 'Active', '2026-04-02 00:20:04', 'Manueldura Shaun Leon Perera', 'Shaun Perera', '2000-01-01', 'Male', 'Single', 'Sri Lankan', NULL, '1', 'Fingerprint', '12', '1', '2026-05-19 11:46:05'),
(64, 'EV-000064', 'Active', '2026-04-02 00:37:36', 'Disanayaka Mudiyanselage Pubudu Hiroshan Wickramasinghe', 'Pubudu Wickramasinghe', '1989-08-06', 'Male', 'Married', 'Sri Lankan', NULL, '002', 'Fingerprint', '12', '12', '2026-05-12 14:54:12'),
(65, 'EV-000065', 'Active', '2026-04-02 00:50:46', 'Alawa Dewarage Jagath Wijesingha', 'Jagath Wijesingha', '1986-06-13', 'Male', 'Married', 'Sri Lankan', NULL, '04', 'Fingerprint', '12', '12', '2026-05-12 14:58:08'),
(66, 'EV-000066', 'Active', '2026-04-02 00:56:05', 'Kuvendran Lashen Dilash', 'Lashen Dilash', '2007-01-25', 'Male', 'Single', 'Sri Lankan', NULL, '00', 'Fingerprint', '12', '12', '2026-05-12 15:19:44'),
(67, 'EV-000067', 'Active', '2026-04-02 01:06:15', 'Mahamarakkalage Shiwanka Wishvajith Perera', 'Wishvajith   Perera', '1997-06-15', 'Male', 'Single', 'Sri Lankan', NULL, '08', 'Fingerprint', '12', '12', '2026-05-12 15:18:27'),
(68, 'EV-000068', 'Active', '2026-04-02 05:34:23', 'Hasthimuni Priyan Prasad De Silva', 'Prasad De Silva', '1980-01-05', 'Male', 'Married', 'Sri Lankan', NULL, '078', 'Fingerprint', '12', '12', '2026-05-12 16:37:13'),
(69, 'EV-000069', 'Active', '2026-04-02 05:43:15', 'Ravindu Lakshmana Abesinhalage Niyangoda', 'Ravindu Niyangoda', '2000-12-27', 'Male', 'Single', 'Sri Lankan', NULL, '079', 'Fingerprint', '12', '12', '2026-05-12 15:22:52'),
(70, 'EV-000070', 'Active', '2026-04-02 05:50:32', 'Hettige Boniface Mangala Perera', 'Boniface Mangala', '1958-08-27', 'Male', 'Single', 'Sri Lankan', NULL, '034', 'Fingerprint', '12', '12', '2026-05-12 16:55:06'),
(71, 'EV-000071', 'Active', '2026-04-02 05:56:36', 'Kurukulasooriya Dicsion Kumara Fernando', 'Dicsion Kumara', '2006-12-31', 'Male', 'Married', 'Sri Lankan', NULL, '039', 'Fingerprint', '12', '12', '2026-05-20 11:23:53'),
(72, 'EV-000072', 'Active', '2026-04-02 06:03:11', 'Rajapaksha Mudiyanselage Heshan Sandaruwan Ariyarathna', 'Heshan Sandaruwan', '1999-02-27', 'Male', 'Single', 'Sri Lankan', NULL, '042', 'Fingerprint', '12', '12', '2026-05-12 17:05:48'),
(73, 'EV-000073', 'Active', '2026-04-02 06:11:05', 'Konda Gamage Suran Chamara Grero', 'Chamara Grero', '1990-01-26', 'Male', 'Married', 'Sri Lankan', NULL, '45', 'Fingerprint', '12', '12', '2026-05-13 10:39:11'),
(74, 'EV-000074', 'Active', '2026-04-02 06:17:47', 'Mandadige Rasika Sampath Fernando', 'Sampath Fernando', '1979-11-05', 'Male', 'Married', 'Sri Lankan', NULL, '053', 'Fingerprint', '12', '12', '2026-05-12 17:12:34'),
(75, 'EV-000075', 'Active', '2026-04-02 06:24:45', 'Rajapaksha Pathiranage  Don Indika Pradeep Acoinas', 'Indika Acoinas', '1974-03-08', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '12', '2026-05-12 17:38:03'),
(76, 'EV-000076', 'Active', '2026-04-02 06:32:19', 'Deegoda Gamage Harshitha Rashan Gamage', 'Rashan Gamage', '1998-04-04', 'Male', 'Single', 'Sri Lankan', NULL, '60', 'Fingerprint', '12', '12', '2026-05-12 17:40:46'),
(77, 'EV-000077', 'Active', '2026-04-02 06:38:46', 'Ryan Tage Monie', 'Ryan Monie', '1999-11-15', 'Male', 'Single', 'Sri Lankan', NULL, '073', 'Fingerprint', '12', '12', '2026-05-12 17:59:36'),
(78, 'EV-000078', 'Active', '2026-04-02 06:47:00', 'Dimath Tharaka Weliwitigoda', 'Dimath Weliwitigoda', '1998-08-31', 'Male', 'Single', 'Sri Lankan', NULL, '71', 'Fingerprint', '12', '12', '2026-05-13 09:43:29'),
(79, 'EV-000079', 'Active', '2026-04-02 06:53:28', 'Agampodi Thisara Damsak De Zoysa', 'Damsak De Zoysa', '1994-02-16', 'Male', 'Married', 'Sri Lankan', NULL, '70', 'Fingerprint', '12', '12', '2026-05-13 09:49:21'),
(80, 'EV-000080', 'Active', '2026-04-02 06:58:53', 'Panambarage Gayan Madushanka Fernando', 'Gayan Fernando', '1995-02-01', 'Male', 'Married', 'Sri Lankan', NULL, '077', 'Fingerprint', '12', '12', '2026-05-12 23:45:26'),
(81, 'EV-000081', 'Active', '2026-04-02 07:05:51', 'Kulakulasuriyage Augustin Ajith Kumar Fernando', 'Kumara Fernando', '1975-06-07', 'Male', 'Married', 'Sri Lankan', NULL, '061', 'Fingerprint', '12', '12', '2026-05-12 17:41:41'),
(82, 'EV-000082', 'Active', '2026-04-02 07:12:17', 'Kangana Mudiyanselage Lahiru Dhipthi Kumara', 'Lahiru Kumara', '2003-10-25', 'Male', 'Single', 'Sri Lankan', NULL, '063', 'Fingerprint', '12', '12', '2026-05-12 17:42:49'),
(83, 'EV-000083', 'Active', '2026-04-02 07:17:13', 'Rupasingha Dewage Ashan Madushanka Fernando', 'Ashen Fernando', '1997-02-02', 'Male', 'Married', 'Sri Lankan', NULL, '065', 'Fingerprint', '12', '12', '2026-05-13 11:17:17'),
(84, 'EV-000084', 'Active', '2026-04-16 12:05:51', 'Oswattaliyanage Dhilhara Sudharshi Perera', 'Dhilhara', '1986-04-16', 'Female', 'Single', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '12', '2026-05-18 13:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `employee_addresses`
--

CREATE TABLE `employee_addresses` (
  `employee_address_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_type` varchar(20) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_addresses`
--

INSERT INTO `employee_addresses` (`employee_address_id`, `employee_id`, `address_type`, `address_line_1`, `city`, `country`, `postal_code`, `is_current`) VALUES
(168, 10, 'Residential', 'Ihala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(176, 11, 'Residential', '685 C Nimsalamariya mawatha Thewatha Road Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(211, 64, 'Residential', '83/4/2 Vijaya Mawatha Veyangoda', 'Veyangoda', 'Sri Lanka', NULL, 1),
(212, 65, 'Residential', '368/2, Madapitina, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(214, 18, 'Residential', '127, Winston Park, Kadirana, Negombo', 'Negombo', 'Sri Lanka', '11500', 1),
(217, 31, 'Residential', '464/1A Welihena South Kochchikade', 'Negombo', 'Sri Lanka', NULL, 1),
(218, 36, 'Residential', 'J 2/2 A, Kandewaththa, Bogahamula', 'Mawanella', 'Sri Lanka', NULL, 1),
(219, 67, 'Residential', 'No 7A-1 ,Gamunu Mawatha, Minuwangoda.', 'Minuwangoda', 'Sri Lanka', NULL, 1),
(221, 66, 'Residential', 'Rp 615, 12th Lane, Rajapakshapura, Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(225, 61, 'Residential', '172/A Matikotumulla,Essella,Minuwangoda.', 'Minuwangoda', 'Sri Lanka', NULL, 1),
(226, 69, 'Residential', 'No 23, Jayabima,Kadirana South,Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(229, 68, 'Residential', 'Null', 'Seeduwa', 'Sri Lanka', NULL, 1),
(230, 21, 'Residential', '66/B, Magulpokuna, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(231, 47, 'Residential', '66/A, Magulpokuna,Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(232, 48, 'Residential', '662/3,Narangoda Paluwa, Batuwatta', 'Batuwatta', 'Sri Lanka', NULL, 1),
(233, 70, 'Residential', '265/1, Hendala, Wattala', 'Wattala', 'Sri Lanka', NULL, 1),
(234, 20, 'Residential', '209/A, Walpola, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(236, 72, 'Residential', '226, Kotugoda, Bolanda', 'Bolanda', 'Sri Lanka', NULL, 1),
(237, 40, 'Residential', 'No. 624/4 Gamameda Rd Kurana', 'Katunayake', 'Sri Lanka', NULL, 1),
(239, 37, 'Residential', 'RP 746, 15th lane , RajapakshaPura', 'Seeduwa', 'Sri Lanka', NULL, 1),
(240, 49, 'Residential', '329/B,Mukkalangamuwa,Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(242, 74, 'Residential', '#N0 154/18,Kadawath Rd,Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(243, 75, 'Residential', '1050,Mahara,Bandanagara Rd, Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(244, 50, 'Residential', '159/C, Dabaruyaya,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(245, 43, 'Residential', 'R/p 672 Rajapakshapura Banndarawatta Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(246, 54, 'Residential', '257/F,Bollatha South,Ganemulla.', 'Ganemulla', 'Sri Lanka', NULL, 1),
(247, 76, 'Residential', '101/5, Oruthota,Gampaha.', 'Gampaha', 'Sri Lanka', NULL, 1),
(248, 81, 'Residential', '93/7, Rejina Road, Munnakkaraya', 'Munnakkaraya', 'Sri Lanka', NULL, 1),
(250, 82, 'Residential', '308,North Seeduwa,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(251, 38, 'Residential', '114/6 Kaluwarippuwa west', 'Katana', 'Sri Lanka', NULL, 1),
(252, 53, 'Residential', 'No 59/C9 Pathma Peruma Mawatha ,Ganemulla.', 'Ganemulla', 'Sri Lanka', NULL, 1),
(255, 44, 'Residential', 'NO 48/8B PETER RODRIGO MW', 'Ja Ela', 'Sri Lanka', NULL, 1),
(256, 77, 'Residential', '12, Owita Mawatha, Bangalawatha, Mabola, Wattala.', 'Wattala', 'Sri Lanka', NULL, 1),
(257, 41, 'Residential', '28/1/1 3rd cross street, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(258, 42, 'Residential', '357/36,B,1, Gallawaththa , Raddoluwa , Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(261, 30, 'Residential', '345/D,8,Aweriwatta rd,Batagama north', 'Ja Ela', 'Sri Lanka', NULL, 1),
(262, 14, 'Residential', '56/2, Dharmapala Mw, Ekala', 'Ekala', 'Sri Lanka', NULL, 1),
(263, 17, 'Residential', '33, Silva Mw, Nagoda, Kandana', 'Kandana', 'Sri Lanka', '11010', 1),
(265, 55, 'Residential', '12, Uluporanuwa Road, Kandana', 'Kandana', 'Sri Lanka', NULL, 1),
(266, 56, 'Residential', '\"Dinesh Sevana\", Sirimal Uyana Road, Liyanagemulla, Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(267, 57, 'Residential', '260/B/1, Edwin Silva Rd, Katana West, Katana', 'Katana', 'Sri Lanka', NULL, 1),
(269, 28, 'Residential', '878/C, Siriwardhana Road', 'Ragama', 'Sri Lanka', NULL, 1),
(270, 58, 'Residential', '877/c, Vihara Mawatha ,Thewatte Rd,Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(271, 33, 'Residential', '117/D ST. John Mawatha Kandawala Katana', 'Katana', 'Sri Lanka', NULL, 1),
(272, 19, 'Residential', 'No:228/B/1B, Kondagammulla,Miriswatta', 'Negombo', 'Sri Lanka', NULL, 1),
(273, 62, 'Residential', '155/39A, Amuna Rd, South Seeduwa,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(274, 32, 'Residential', 'No. 101/10 Melrose Park Seeduwa Road Kotugoda', 'Kotugoda', 'Sri Lanka', NULL, 1),
(276, 35, 'Residential', '478/D, Raddoluwa Raddolugama', 'Raddoluwa', 'Sri Lanka', NULL, 1),
(278, 24, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(280, 46, 'Residential', '354,Halgasthota,Katunayake', 'Katunayake', 'Sri Lanka', '11450', 1),
(281, 80, 'Residential', '461/9 Melwatta Mukalangamuwa ,seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(282, 26, 'Residential', 'No 251, Ihala Kottaramulla, Pahala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(283, 25, 'Residential', '6th lane, Pothuvil road, Sirigala', 'Monaragala', 'Sri Lanka', NULL, 1),
(284, 25, 'Other', 'No. 11, Sadasarana Mawatha, Bolawalana', 'Negombo', 'Sri Lanka', NULL, 0),
(285, 78, 'Residential', 'No. 95/17, Welington Place, Baseline Road, North Seeduwa,', 'Seeduwa', 'Sri Lanka', NULL, 1),
(286, 79, 'Residential', 'No .148, Winston Park, Kadirana South, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(287, 45, 'Residential', '32A, Indivitya Rd, Weligampitiya, Ja ela', 'Jaela', 'Sri Lanka', NULL, 1),
(288, 73, 'Residential', 'C /16,Niwasapura ,Ekala,Kotugoda ,Jaela', 'Jaela', 'Sri Lanka', NULL, 1),
(291, 83, 'Residential', '461/34 ,Melwatha,Mukalangamuwa, Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(292, 39, 'Residential', '209/ St. Nicholas Road, Munnakkaraya', 'Negombo', 'Sri Lanka', NULL, 1),
(293, 29, 'Residential', 'No.105/A2, St Annes Road, Thimbirigaskatuwa', 'Negombo', 'Sri Lanka', NULL, 1),
(295, 27, 'Residential', '70/1 F sama mawatha, padiliyathuduwa road, hunupitiya', 'wattala', 'Sri Lanka', NULL, 1),
(298, 51, 'Residential', '65,Bandarawatta Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(300, 84, 'Residential', 'Weligampitiya', 'Ja Ela', 'Sri Lanka', NULL, 1),
(301, 60, 'Residential', 'No,195,Sea Street, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(303, 52, 'Residential', '199/1 Balabowa Develapola', 'Gampaha', 'Sri Lanka', NULL, 1),
(304, 59, 'Residential', '248/11 Morakelewaththa ,Hendiyagala,Sandalankawa', 'Sandalankawa', 'Sri Lanka', NULL, 1),
(305, 63, 'Residential', 'Null', 'Null', 'Sri Lanka', NULL, 1),
(306, 71, 'Residential', '217/18, Siriwardana Pedesa Munnakkaraya, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_accounts`
--

CREATE TABLE `employee_bank_accounts` (
  `bank_account_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(150) NOT NULL,
  `bank_branch_name` varchar(150) NOT NULL,
  `bank_account_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_bank_accounts`
--

INSERT INTO `employee_bank_accounts` (`bank_account_id`, `employee_id`, `bank_name`, `bank_branch_name`, `bank_account_number`) VALUES
(165, 10, 'Nations Trust Bank', 'Seeduwa', '45689156156'),
(173, 11, 'Hatton National Bank', 'M A S Perera', '102020014889'),
(208, 64, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(209, 65, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(211, 18, 'Hatton National Bank', 'Seeduwa', '209020074385'),
(214, 31, 'Hatton National Bank', 'Ragama', '102020372638'),
(215, 36, 'Hatton National Bank', 'Mawanella', '089020243686'),
(216, 67, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(218, 66, 'Hatton National Bank', 'Seeduwa', '00000000000'),
(222, 61, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(223, 69, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(226, 68, 'Hatton National Bank', 'Seduwa', '0000000000000'),
(227, 21, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(228, 47, 'Hatton National Bank', 'Seeduwa', '0000000000'),
(229, 48, 'Hatton National Bank', 'Null', '000000000000'),
(230, 70, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(231, 20, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(233, 72, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(234, 40, 'Hatton National Bank', 'Seeduwa', '209020113396'),
(236, 37, 'Hatton National Bank', 'Seeduwa', '209020098862'),
(237, 49, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(239, 74, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(240, 75, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(241, 50, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(242, 43, 'Hatton National Bank', 'Seeduwa', '209020131499'),
(243, 54, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(244, 76, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(245, 81, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(247, 82, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(248, 38, 'Hatton National Bank', 'Ragama', '102020370506'),
(249, 53, 'Hatton National Bank', 'seeduwa', '000000000000'),
(252, 44, 'Hatton National Bank', 'JA ELA', '087020501814'),
(253, 77, 'Hatton National Bank', 'Null', '000000000000'),
(254, 41, 'Hatton National Bank', 'Negombo', '024020731234'),
(255, 42, 'Hatton National Bank', 'Seeduwa', '209020152438'),
(258, 30, 'Hatton National Bank', 'seeduwa', '102020367177'),
(259, 14, 'Hatton National Bank', 'Seeduwa', '083478658931'),
(260, 17, 'Hatton National Bank', 'Bambalapitiya', '039020401726'),
(262, 55, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(263, 56, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(264, 57, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(266, 28, 'Hatton National Bank', 'Ragama', '102020351006'),
(267, 58, 'Hatton National Bank', 'Null', '000000000000'),
(268, 33, 'Hatton National Bank', 'Negombo', '024020666985'),
(269, 19, 'Hatton National Bank', 'Negombo', '024020684176'),
(270, 62, 'Hatton National Bank', 'Seeduwa', '00000000000'),
(271, 32, 'Hatton National Bank', 'Negombo', '024020667577'),
(273, 35, 'Hatton National Bank', 'Seeduwa', '209020141672'),
(275, 24, 'Hatton National Bank', 'Negombo', '024020742018'),
(277, 46, 'Hatton National Bank', 'Seeduwa', '209020164813'),
(278, 80, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(279, 26, 'People\'s Bank', 'Nattandiya', '083200150043028'),
(280, 25, 'People\'s Bank', 'Monaragala', '068200190081414'),
(281, 78, 'Hatton National Bank', 'seeduwa', '000000000000'),
(282, 79, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(283, 45, 'Hatton National Bank', 'Null', '000000000000'),
(284, 73, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(287, 83, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(288, 39, 'Commercial Bank', 'Negombo Main', '8026636111'),
(289, 29, 'Hatton National Bank', 'Seeduwa', '209020089952'),
(291, 27, 'Hatton National Bank', 'Kiribathgoda', '500020017441'),
(294, 51, 'Hatton National Bank', 'Seeduwa', '209020138207'),
(296, 84, 'Commercial Bank', 'Nill', '000000000000'),
(297, 60, 'Hatton National Bank', 'Negombo', '000000000000'),
(299, 52, 'Hatton National Bank', 'Seeduwa', '209020150983'),
(300, 59, 'Hatton National Bank', 'Sandalankawa', '00000000000'),
(301, 63, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(302, 71, 'Hatton National Bank', 'Negombo', '000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `employee_compensation`
--

CREATE TABLE `employee_compensation` (
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_currency` char(3) NOT NULL,
  `pay_frequency` varchar(10) NOT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_compensation`
--

INSERT INTO `employee_compensation` (`comp_id`, `employee_id`, `salary_currency`, `pay_frequency`, `effective_from`, `effective_to`) VALUES
(10, 10, 'LKR', 'Monthly', '2026-02-26', '2026-02-26'),
(11, 11, 'LKR', 'Monthly', '2024-07-21', NULL),
(13, 14, 'LKR', 'Monthly', '2026-02-14', '2026-03-15'),
(16, 17, 'LKR', 'Monthly', '2026-02-17', '2026-03-18'),
(17, 18, 'LKR', 'Monthly', '2026-02-15', '2026-03-14'),
(18, 19, 'LKR', 'Monthly', NULL, NULL),
(19, 20, 'LKR', 'Monthly', '2026-02-18', '2026-03-19'),
(20, 21, 'LKR', 'Monthly', '2026-02-17', '2026-03-18'),
(23, 24, 'LKR', 'Monthly', NULL, NULL),
(24, 25, 'LKR', 'Monthly', NULL, NULL),
(25, 26, 'LKR', 'Monthly', NULL, NULL),
(26, 27, 'LKR', 'Monthly', '2026-02-17', '2026-03-18'),
(27, 28, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(28, 29, 'LKR', 'Monthly', '2026-02-16', '2026-03-17'),
(29, 30, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(30, 31, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(31, 32, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(32, 33, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(34, 35, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(35, 36, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(36, 37, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(37, 38, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(38, 39, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(39, 40, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(40, 41, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(41, 42, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(42, 43, 'LKR', 'Monthly', NULL, NULL),
(43, 44, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(44, 45, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(45, 46, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(46, 47, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(47, 48, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(48, 49, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(49, 50, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(50, 51, 'LKR', 'Monthly', '2026-02-14', '2026-03-13'),
(51, 52, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(52, 53, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(53, 54, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(54, 55, 'LKR', 'Monthly', '2026-02-15', '2026-03-14'),
(55, 56, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(56, 57, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(57, 58, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(58, 59, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(59, 60, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(60, 61, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(61, 62, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(62, 63, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(63, 64, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(64, 65, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(65, 66, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(66, 67, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(67, 68, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(68, 69, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(69, 70, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(70, 71, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(71, 72, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(72, 73, 'LKR', 'Monthly', '2026-02-15', '2026-03-14'),
(73, 74, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(74, 75, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(75, 76, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(76, 77, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(77, 78, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(78, 79, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(79, 80, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(80, 81, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(81, 82, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(82, 83, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(83, 84, 'LKR', 'Monthly', '2026-03-18', '2026-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `employee_compensation_components`
--

CREATE TABLE `employee_compensation_components` (
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `component_type` varchar(10) NOT NULL,
  `component_name` varchar(120) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_compensation_components`
--

INSERT INTO `employee_compensation_components` (`component_id`, `comp_id`, `component_type`, `component_name`, `amount`) VALUES
(246, 10, 'Basic', 'Basic Salary', 1000.00),
(258, 11, 'Basic', 'Basic Salary', 311781.00),
(331, 63, 'Basic', 'Basic Salary', 0.00),
(332, 64, 'Basic', 'Basic Salary', 0.00),
(336, 17, 'Basic', 'Basic Salary', 116925.00),
(337, 17, 'Allowance', 'Fuel', 7500.00),
(338, 17, 'Allowance', 'Attendance', 2000.00),
(345, 30, 'Basic', 'Basic Salary', 38000.00),
(346, 30, 'Allowance', 'Fuel', 5000.00),
(347, 30, 'Allowance', 'Attendence', 2001.00),
(348, 35, 'Basic', 'Basic Salary', 45000.00),
(349, 35, 'Allowance', 'Fuel', 5000.00),
(350, 35, 'Allowance', 'Attendance', 2000.00),
(351, 66, 'Basic', 'Basic Salary', 0.00),
(353, 65, 'Basic', 'Basic Salary', 0.00),
(357, 60, 'Basic', 'Basic Salary', 0.00),
(358, 68, 'Basic', 'Basic Salary', 0.00),
(362, 67, 'Basic', 'Basic Salary', 0.00),
(363, 20, 'Basic', 'Basic Salary', 139875.00),
(364, 46, 'Basic', 'Basic Salary', 90822.00),
(365, 47, 'Basic', 'Basic Salary', 90045.00),
(366, 69, 'Basic', 'Basic Salary', 0.00),
(367, 19, 'Basic', 'Basic Salary', 121400.00),
(369, 71, 'Basic', 'Basic Salary', 0.00),
(370, 39, 'Basic', 'Basic Salary', 81250.00),
(371, 39, 'Allowance', 'Fuel', 6000.00),
(372, 39, 'Allowance', 'Attendance', 2000.00),
(374, 36, 'Basic', 'Basic Salary', 78750.00),
(375, 36, 'Allowance', 'Fuel', 6000.00),
(376, 36, 'Allowance', 'Attendance', 2000.00),
(377, 48, 'Basic', 'Basic Salary', 79749.00),
(381, 73, 'Basic', 'Basic Salary', 0.00),
(382, 74, 'Basic', 'Basic Salary', 0.00),
(383, 49, 'Basic', 'Basic Salary', 65000.00),
(384, 42, 'Basic', 'Basic Salary', 70000.00),
(385, 42, 'Allowance', 'Fuel', 6000.00),
(386, 42, 'Allowance', 'Meal', 4500.00),
(387, 53, 'Basic', 'Basic Salary', 71999.00),
(388, 75, 'Basic', 'Basic Salary', 0.00),
(389, 80, 'Basic', 'Basic Salary', 0.00),
(393, 81, 'Basic', 'Basic Salary', 0.00),
(394, 37, 'Basic', 'Basic Salary', 40000.00),
(395, 37, 'Allowance', 'Fuel', 3000.00),
(396, 37, 'Allowance', 'Attendance', 2000.00),
(397, 52, 'Basic', 'Basic Salary', 67000.00),
(400, 43, 'Basic', 'Basic Salary', 73000.00),
(401, 43, 'Allowance', 'FUEL', 5000.00),
(402, 43, 'Allowance', 'MEAL', 4500.00),
(403, 76, 'Basic', 'Basic Salary', 0.00),
(404, 40, 'Basic', 'Basic Salary', 45000.00),
(405, 40, 'Allowance', 'Fuel', 5000.00),
(406, 40, 'Allowance', 'Attendance', 2000.00),
(407, 41, 'Basic', 'Basic Salary', 43000.00),
(408, 41, 'Allowance', 'Attendance', 2000.00),
(411, 29, 'Basic', 'Basic Salary', 94694.00),
(412, 29, 'Allowance', 'fuel', 6500.00),
(413, 29, 'Allowance', 'Attendence', 2000.00),
(414, 13, 'Basic', 'Basic Salary', 100000.00),
(415, 16, 'Basic', 'Basic Salary', 100000.00),
(417, 54, 'Basic', 'Basic Salary', 0.00),
(418, 55, 'Basic', 'Basic Salary', 0.00),
(419, 56, 'Basic', 'Basic Salary', 0.00),
(423, 27, 'Basic', 'Basic Salary', 83009.00),
(424, 27, 'Allowance', 'Fuel Allowance', 6000.00),
(425, 27, 'Allowance', 'Attendance', 2000.00),
(426, 57, 'Basic', 'Basic Salary', 0.00),
(427, 32, 'Basic', 'Basic Salary', 47300.00),
(428, 32, 'Allowance', 'Fuel', 5000.00),
(429, 32, 'Allowance', 'Attendance', 2000.00),
(430, 18, 'Basic', 'Basic Salary', 0.00),
(431, 61, 'Basic', 'Basic Salary', 0.00),
(432, 31, 'Basic', 'Basic Salary', 38000.00),
(433, 31, 'Allowance', 'Fuel', 5000.00),
(434, 31, 'Allowance', 'Attendance', 2000.00),
(436, 34, 'Basic', 'Basic Salary', 46000.00),
(437, 34, 'Allowance', 'Fuel', 5000.00),
(438, 34, 'Allowance', 'Attendance', 2000.00),
(440, 23, 'Basic', 'Basic Salary', 71400.00),
(441, 23, 'Allowance', 'Fuel Incentive', 5000.00),
(442, 23, 'Allowance', 'Attendance Incentive', 2000.00),
(443, 23, 'Deduction', 'EPF 8%', 5712.00),
(447, 45, 'Basic', 'Basic Salary', 0.00),
(448, 79, 'Basic', 'Basic Salary', 0.00),
(449, 25, 'Allowance', 'Basic Salary', 30000.00),
(450, 24, 'Allowance', 'Basic Salary', 30000.00),
(451, 77, 'Basic', 'Basic Salary', 0.00),
(452, 78, 'Basic', 'Basic Salary', -1.00),
(453, 44, 'Basic', 'Basic Salary', 100000.00),
(454, 72, 'Basic', 'Basic Salary', -1.00),
(457, 82, 'Basic', 'Basic Salary', -1.00),
(458, 38, 'Basic', 'Basic Salary', 78750.00),
(459, 38, 'Allowance', 'Fuel', 5000.00),
(460, 38, 'Allowance', 'Attendence', 2000.00),
(461, 28, 'Basic', 'Basic Salary', 85002.00),
(462, 28, 'Allowance', 'Fuel Allowance', 6000.00),
(463, 28, 'Allowance', 'Attendance Allowance', 2000.00),
(465, 26, 'Basic', 'Basic Salary', 119000.00),
(472, 50, 'Basic', 'Basic Salary', 67000.00),
(473, 50, 'Allowance', 'Fuel', 5000.00),
(474, 50, 'Allowance', 'Attendance', 2000.00),
(476, 83, 'Basic', 'Basic Salary', 100000.00),
(477, 59, 'Basic', 'Basic Salary', 0.00),
(479, 51, 'Basic', 'Basic Salary', 60000.00),
(480, 51, 'Allowance', 'Fuel', 4999.00),
(481, 58, 'Basic', 'Basic Salary', 0.00),
(482, 62, 'Basic', 'Basic Salary', 0.00),
(483, 70, 'Basic', 'Basic Salary', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_type` varchar(30) NOT NULL,
  `contact_value` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`contact_id`, `employee_id`, `contact_type`, `contact_value`, `is_primary`) VALUES
(330, 10, 'Work Email', 'test@gmail.com', 1),
(331, 10, 'Whatsapp Number', '0769304365', 1),
(347, 11, 'Work Email', 'shermal@explorevacations.lk', 1),
(348, 11, 'Whatsapp Number', '0773207107', 1),
(417, 64, 'Work Email', 'asst.manager@eliterentacar.lk', 1),
(418, 64, 'Whatsapp Number', '076 141 4555', 1),
(419, 65, 'Work Email', 'Jagath@eliterentacar.lk', 1),
(420, 65, 'Whatsapp Number', '0771239784', 1),
(423, 18, 'Work Email', 'finance@eliterentacar.lk', 1),
(424, 18, 'Whatsapp Number', '071 313 7031', 1),
(429, 31, 'Work Email', 'acc.ass@eliterentacar.lk', 1),
(430, 31, 'Whatsapp Number', '0775102485', 1),
(431, 36, 'Work Email', 'rates@eliterentacar.lk', 1),
(432, 36, 'Whatsapp Number', '0764428250', 1),
(433, 67, 'Work Email', 'wishwajith@eliterentacar.lk', 1),
(434, 67, 'Whatsapp Number', '075 688 9939', 1),
(437, 66, 'Work Email', 'lashen@eliterentacar.lk', 1),
(438, 66, 'Whatsapp Number', '0760435994', 1),
(445, 61, 'Work Email', 'Lakshitha@explorevacations.lk', 1),
(446, 61, 'Whatsapp Number', '075 750 7184', 1),
(447, 69, 'Work Email', 'ravindu@srrentacar.lk', 1),
(448, 69, 'Whatsapp Number', '0766445502', 1),
(453, 68, 'Work Email', 'desilva@srrentacar.lk', 1),
(454, 68, 'Whatsapp Number', '0762264662', 1),
(455, 21, 'Work Email', 'fleet@srilankarentacar.lk', 1),
(456, 21, 'Whatsapp Number', '076 820 0093', 1),
(457, 47, 'Work Email', 'lasantha@srrentacar.lk', 1),
(458, 47, 'Whatsapp Number', '0772204390', 1),
(459, 48, 'Work Email', 'ajith@srrentacar.lk', 1),
(460, 48, 'Whatsapp Number', '0765105679', 1),
(461, 70, 'Work Email', 'boni@srrentacar.lk', 1),
(462, 70, 'Whatsapp Number', '0761414550', 1),
(463, 20, 'Work Email', 'deshan@srilankarentacar.com', 1),
(464, 20, 'Whatsapp Number', '076 534 5883', 1),
(467, 72, 'Work Email', 'heshan@srilankarentacar.com', 1),
(468, 72, 'Whatsapp Number', '0701354171', 1),
(469, 40, 'Work Email', 'dilan@srilankarentacar.com', 1),
(470, 40, 'Whatsapp Number', '763603588', 1),
(473, 37, 'Work Email', 'kavinda@srilankarentacar.com', 1),
(474, 37, 'Whatsapp Number', '0763230618', 1),
(475, 49, 'Work Email', 'Kapila@srrentacar.lk', 1),
(476, 49, 'Whatsapp Number', '0768743357', 1),
(479, 74, 'Work Email', 'sampath@srrentacar.lk', 1),
(480, 74, 'Whatsapp Number', '0764724717', 1),
(481, 75, 'Work Email', 'indika@srrentacar.lk', 1),
(482, 75, 'Whatsapp Number', '0773843033', 1),
(483, 50, 'Work Email', 'sahan@srrentacar.lk', 1),
(484, 50, 'Whatsapp Number', '0765945684', 1),
(485, 43, 'Work Email', 'sameera@srilankarentacar.lk', 1),
(486, 43, 'Whatsapp Number', '0777897292', 1),
(487, 54, 'Work Email', 'roshan@srentacar.lk', 1),
(488, 54, 'Whatsapp Number', '076 594 5671', 1),
(489, 76, 'Work Email', 'rashan@srrentacar.lk', 1),
(490, 76, 'Whatsapp Number', '0787195978', 1),
(491, 81, 'Work Email', 'kumara@srrentacar.lk', 1),
(492, 81, 'Whatsapp Number', '0762877006', 1),
(495, 82, 'Work Email', 'lahiru@srrentacar.lk', 1),
(496, 82, 'Whatsapp Number', '0753871334', 1),
(497, 38, 'Work Email', 'Sandunig@srilankarentacar.com', 1),
(498, 38, 'Whatsapp Number', '0728524416', 1),
(499, 53, 'Work Email', 'sujeewa@srrentacar.lk', 1),
(500, 53, 'Whatsapp Number', '077 719 6306', 1),
(505, 44, 'Work Email', 'anil@srilankarentacar.com', 1),
(506, 44, 'Personal Email', '0712650900', 1),
(507, 77, 'Work Email', 'rayan@srrentacar.lk', 1),
(508, 77, 'Whatsapp Number', '0768480782', 1),
(509, 41, 'Work Email', 'lakshika@srilankarentacar.com', 1),
(510, 41, 'Whatsapp Number', '0768244627', 1),
(511, 42, 'Work Email', 'dilmi@srilankarentacar.com', 1),
(512, 42, 'Whatsapp Number', '0762901927', 1),
(517, 30, 'Work Email', 'acc.ass@explorevacations.lk', 1),
(518, 30, 'Whatsapp Number', '0776786608', 1),
(519, 14, 'Work Email', 'gm@explorevacations.lk', 1),
(520, 14, 'Whatsapp Number', '0768200098', 1),
(521, 17, 'Work Email', 'digitalmarketing@explorevacations.lk', 1),
(522, 17, 'Whatsapp Number', '071 477 0069', 1),
(525, 55, 'Work Email', 'procurement@explorevacations.lk', 1),
(526, 55, 'Whatsapp Number', '076 594 6923', 1),
(527, 56, 'Work Email', 'lankesh@explorevacations.lk', 1),
(528, 56, 'Whatsapp Number', '077 077 5676', 1),
(529, 57, 'Work Email', 'Nipun@explorevacations.lk', 1),
(530, 57, 'Whatsapp Number', '077 155 9120', 1),
(533, 28, 'Work Email', 'hasitha@explorevacations.lk', 1),
(534, 28, 'Whatsapp Number', '0762545661', 1),
(535, 58, 'Work Email', 'milan@explorevacations.lk', 1),
(536, 58, 'Whatsapp Number', '077 854 5993', 1),
(537, 33, 'Work Email', 'dewmi.sanjana@explorevacations.lk', 1),
(538, 33, 'Whatsapp Number', '0766673889', 1),
(539, 19, 'Work Email', 'it@explorevacations.lk', 1),
(540, 19, 'Whatsapp Number', '0714357976', 1),
(541, 62, 'Work Email', 'shama@explorevacations.lk', 1),
(542, 62, 'Whatsapp Number', '0741087730', 1),
(543, 32, 'Work Email', 'sewmini@explorevacations.lk', 1),
(544, 32, 'Whatsapp Number', '0778742883', 1),
(547, 35, 'Work Email', 'victoria@explorevacations.lk', 1),
(548, 35, 'Whatsapp Number', '0764801145', 1),
(551, 24, 'Work Email', 'navoda@explorevacations.lk', 1),
(552, 24, 'Whatsapp Number', '0761278989', 1),
(555, 46, 'Work Email', 'admin.executive@explorevacations.lk', 1),
(556, 46, 'Whatsapp Number', '075-7159099', 1),
(557, 80, 'Work Email', 'gayan@srrentacar.lk', 1),
(558, 80, 'Whatsapp Number', '0713848992', 1),
(559, 26, 'Work Email', 'udantha@explorevacations.lk', 1),
(560, 26, 'Whatsapp Number', '0763904365', 1),
(561, 26, 'Personal Email', 'induruudantha45615@gmail.com', 0),
(562, 25, 'Work Email', 'yuwanee@explorevacations.lk', 1),
(563, 25, 'Whatsapp Number', '0711681061', 1),
(564, 78, 'Work Email', 'dimath@srrentacar.lk', 1),
(565, 78, 'Whatsapp Number', '0702202215', 1),
(566, 79, 'Work Email', 'damsak@srrentacar.lk', 1),
(567, 79, 'Whatsapp Number', '0766009719', 1),
(568, 45, 'Work Email', 'dhilhara@explorevacations.lk', 1),
(569, 45, 'Whatsapp Number', '0768200101', 1),
(570, 73, 'Work Email', 'chamara@srrentacar.lk', 1),
(571, 73, 'Whatsapp Number', '0763603589', 1),
(576, 83, 'Work Email', 'ashen@srrentacar.lk', 1),
(577, 83, 'Whatsapp Number', '0781803097', 1),
(578, 39, 'Work Email', 'niroshan@srilankarentacar.lk', 1),
(579, 39, 'Whatsapp Number', '0763603667', 1),
(580, 29, 'Work Email', 'acc.ex@explorevacations.lk', 1),
(581, 29, 'Whatsapp Number', '0766197274', 1),
(584, 27, 'Work Email', 'nadeeshana@explorevacations.lk', 1),
(585, 27, 'Whatsapp Number', '0762990124', 1),
(590, 51, 'Personal Email', 'omega11410@gmail.com', 1),
(591, 51, 'Whatsapp Number', '0787358598', 1),
(594, 84, 'Work Email', 'dhilhara@explorevacations.lk', 1),
(595, 84, 'Whatsapp Number', '0775555555', 1),
(596, 60, 'Work Email', 'reservations@explorevacations.lk', 1),
(597, 60, 'Whatsapp Number', '077 200 9110', 1),
(600, 52, 'Personal Email', 'tharindu19950112@gmail.com', 1),
(601, 52, 'Whatsapp Number', '0777707750', 1),
(602, 59, 'Work Email', 'travels@explorevacations.lk', 1),
(603, 59, 'Whatsapp Number', '076 141 4554', 1),
(604, 63, 'Work Email', 'shaun@eliterentacar.lk', 1),
(605, 63, 'Whatsapp Number', '0777777777', 1),
(606, 71, 'Work Email', 'dicsion@srrentacar.lk', 1),
(607, 71, 'Whatsapp Number', '0761414555', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `employee_document_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doc_type` varchar(30) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size_bytes` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_documents`
--

INSERT INTO `employee_documents` (`employee_document_id`, `employee_id`, `doc_type`, `file_name`, `file_path`, `mime_type`, `file_size_bytes`, `uploaded_at`) VALUES
(18, 10, 'Profile Photo', 'profile_1.png', 'employees/10/profile-photo/dTlg5seLkjIyRT6zSDm500yq4N6u86QyUyKvY5T3.png', 'image/png', 241171, '2026-03-30 20:38:56'),
(20, 24, 'Profile Photo', 'DSC03316 (1).jpg', 'employees/24/profile-photo/jOIZ6EWiyLnTH7FTd9oyslATLJegZ2dZuFbMWv15.jpg', 'image/jpeg', 1309315, '2026-03-31 11:10:59'),
(21, 42, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47.jpeg', 'employees/42/profile-photo/yty04SyDhB6zlKntgqtzUN9ylYol9KIrW54fLR9I.jpeg', 'image/jpeg', 313581, '2026-04-01 10:59:28'),
(22, 44, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (1).jpeg', 'employees/44/profile-photo/bS4zhOeHAwgcOzKv9TMnTp5PXutBeHKGujCjE5kb.jpeg', 'image/jpeg', 539774, '2026-04-01 11:00:14'),
(23, 43, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (2).jpeg', 'employees/43/profile-photo/XTq31UT2XxdFwSVCKbAtcWKlNmIqK0GKBNZ4LGmd.jpeg', 'image/jpeg', 331219, '2026-04-01 11:00:43'),
(24, 41, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (3).jpeg', 'employees/41/profile-photo/7JgzDAEZrLgo1s6tnmZ5SjRhnWp8lnQT8yHEzIn8.jpeg', 'image/jpeg', 381819, '2026-04-01 11:01:10'),
(25, 40, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (4).jpeg', 'employees/40/profile-photo/QtN8fbVuxdMz3dzLRGrpPMqZ7Lc3mfGUqVKqdtFP.jpeg', 'image/jpeg', 443093, '2026-04-01 11:01:47'),
(26, 39, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (5).jpeg', 'employees/39/profile-photo/HwVElIEY4u2pBEZvPsPBedi2URQ1AkEWPggse7o2.jpeg', 'image/jpeg', 488150, '2026-04-01 11:02:15'),
(27, 38, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (6).jpeg', 'employees/38/profile-photo/ZGsQPKZG2FOyAZjZjzUldx9zGcThHDTcwdia6ldg.jpeg', 'image/jpeg', 309124, '2026-04-01 11:03:13'),
(28, 37, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (7).jpeg', 'employees/37/profile-photo/7IGXgp6yLFgvNyuWNEnVs1WVIOZya1lcHVGfuZQv.jpeg', 'image/jpeg', 625065, '2026-04-01 11:06:45'),
(29, 36, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (8).jpeg', 'employees/36/profile-photo/bBiUimlQMxIfTcr8HDznfMIpM0Z5SCJFP0Xpr4dn.jpeg', 'image/jpeg', 378166, '2026-04-01 11:07:53'),
(30, 35, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.25.jpeg', 'employees/35/profile-photo/XdQ8u6YRXpPUdwSnk8GmY8Z37MZgm4f5jEGHH4Yd.jpeg', 'image/jpeg', 425935, '2026-04-01 11:08:22'),
(31, 18, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (9).jpeg', 'employees/18/profile-photo/iQjzCVeMgT4uRm8mYTYgPKXu5vGM1gzk1vIXlHKV.jpeg', 'image/jpeg', 454217, '2026-04-01 11:09:46'),
(32, 33, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (10).jpeg', 'employees/33/profile-photo/xq8y51BCHo4BPjaah0YjY7O8yVbdrLQ8qXZUGV6B.jpeg', 'image/jpeg', 475990, '2026-04-01 11:10:18'),
(33, 32, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (11).jpeg', 'employees/32/profile-photo/eGmujqJdjKHcxXF09s6scRZctK4oiileV8WsgqL6.jpeg', 'image/jpeg', 570399, '2026-04-01 11:10:51'),
(34, 31, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (12).jpeg', 'employees/31/profile-photo/mzmSWHrgVq5JlqOgQweFX2ghhvahNDWVGFDrePV0.jpeg', 'image/jpeg', 613785, '2026-04-01 11:11:22'),
(35, 30, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (13).jpeg', 'employees/30/profile-photo/KSbHIS5ezrAmtXXGslzeYUItkxPRsx2663tfcL7A.jpeg', 'image/jpeg', 486210, '2026-04-01 11:12:20'),
(36, 29, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (14).jpeg', 'employees/29/profile-photo/TxSQ7VUx3NVTbCeoYnQ4is2iu1NWkYZ1yxKv5u7G.jpeg', 'image/jpeg', 511963, '2026-04-01 11:23:19'),
(37, 28, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (15).jpeg', 'employees/28/profile-photo/g6tYglk0JqhIHycmLUmPyxUNaOVjHkASR8DBAQTI.jpeg', 'image/jpeg', 605807, '2026-04-01 11:23:52'),
(38, 21, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (16).jpeg', 'employees/21/profile-photo/Dd5EJ203StNw0t7QQZZK2Zo9FPPauFsNwHKGyIsT.jpeg', 'image/jpeg', 486352, '2026-04-01 11:27:38'),
(39, 17, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (17).jpeg', 'employees/17/profile-photo/4Bvl6VvfuxBjVjfhR2gbfprhFoUvb2yqLq8O5yaV.jpeg', 'image/jpeg', 399384, '2026-04-01 11:28:12'),
(40, 20, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (18).jpeg', 'employees/20/profile-photo/fV0MQqBHVDY9cxP6lCTpsG7BuOZa0BKNPalsNcWN.jpeg', 'image/jpeg', 535720, '2026-04-01 11:28:59'),
(41, 19, 'Profile Photo', 'file.jpg', 'employees/19/profile-photo/cvodEZbaTldL8ZS2CafjFE3vjt1u6RfmbKLzNhJh.jpg', 'image/jpeg', 39676, '2026-04-01 16:13:20'),
(42, 46, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (19).jpeg', 'employees/46/profile-photo/TNZH02FmaJErTSOkReipKXZbkxCBjksM0wVC8zMl.jpeg', 'image/jpeg', 532006, '2026-04-01 17:43:22'),
(43, 51, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (20).jpeg', 'employees/moshin-fernando/profile-photo/ExlQ6B1k1Lb4zdb4EV8WgiulQXbOv8YeUJrfF7bp.jpg', 'image/jpeg', 386323, '2026-04-01 19:41:59'),
(44, 26, 'Profile Photo', 'profile_9.jpg', 'employees/26/profile-photo/0cNjUQwybo5E5e8Vx9zpsIPjMevqD97JYdxDawuP.jpg', 'image/jpeg', 382526, '2026-04-01 23:02:03'),
(45, 83, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.45.jpeg', 'employees/83/profile-photo/mBgsDoO4S6Oo34NclmK1qtDwzgLoPKU2vEQSXu2o.jpeg', 'image/jpeg', 413706, '2026-04-02 08:43:51'),
(46, 70, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.45 (1).jpeg', 'employees/70/profile-photo/KHaJhB8b6IN6WAnxkvAkLVpaGPYutEbYIXG30kvb.jpeg', 'image/jpeg', 281974, '2026-04-02 08:44:14'),
(47, 79, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.45 (2).jpeg', 'employees/79/profile-photo/BcsjrCfTo9rnLgGnNXM0pOSpBCdLYE2ET2oCgW6e.jpeg', 'image/jpeg', 448131, '2026-04-02 08:44:47'),
(48, 71, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (21).jpeg', 'employees/71/profile-photo/SxilwuAGHbta7ejyRdISq9xueBgSfymdP7xX0Z9b.jpeg', 'image/jpeg', 449025, '2026-04-02 08:45:12'),
(49, 78, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (22).jpeg', 'employees/78/profile-photo/SigR3Cy7Mbyqc5JGAKiWRMr9J2inqOxxSPaL5kQh.jpeg', 'image/jpeg', 255130, '2026-04-02 08:45:32'),
(50, 75, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (23).jpeg', 'employees/75/profile-photo/5GQ8XnubQYJ3nQs0o4muvV3SkBiLrRChir9owkIL.jpeg', 'image/jpeg', 575805, '2026-04-02 08:46:35'),
(51, 65, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (24).jpeg', 'employees/65/profile-photo/ufLLSxG208nhMS9PkjuiHODcqO0sNjwGpvV3g2wl.jpeg', 'image/jpeg', 407484, '2026-04-02 08:47:06'),
(52, 82, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (26).jpeg', 'employees/82/profile-photo/rZ4PivXfAPN0wtK6umCtZLe85TpUZHvTWfTCyYWV.jpeg', 'image/jpeg', 380318, '2026-04-02 08:48:02'),
(53, 81, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (25).jpeg', 'employees/81/profile-photo/6gEvQUL8UdnECvU13dlLpQCDNLwuqBORyUbepGJa.jpeg', 'image/jpeg', 409870, '2026-04-02 08:48:24'),
(54, 62, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (27).jpeg', 'employees/62/profile-photo/ORgdlQ3S67wIiTfimcspTbA1AKbSuBRaLbARF6C9.jpeg', 'image/jpeg', 576387, '2026-04-02 08:49:00'),
(55, 47, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (28).jpeg', 'employees/47/profile-photo/U52n9URRrEwjoAMMmI44TVzwYju1Fzow8SMAUlA0.jpeg', 'image/jpeg', 342399, '2026-04-02 08:50:01'),
(56, 25, 'Profile Photo', 'b4a5a6e9-6e12-4c20-95ae-dd10087502ac.jpg', 'employees/25/profile-photo/B7jpOaa7lpVBk5qGOnGv58aDifjn8aUrHiou97Ek.jpg', 'image/jpeg', 245599, '2026-04-02 08:51:54'),
(57, 69, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (29).jpeg', 'employees/69/profile-photo/cXSCOqxE5K0oMrE7ive17n47EIn47VwZZi1L4Zhz.jpeg', 'image/jpeg', 394447, '2026-04-02 08:53:36'),
(58, 45, 'Profile Photo', '1631612696192.jpg', 'employees/45/profile-photo/L8t5h2yyGm6OJDZZg60p9sV8lfAtXZQGBIzouce6.jpg', 'image/jpeg', 33374, '2026-04-02 08:59:16'),
(59, 11, 'Profile Photo', '1630845504728.jpg', 'employees/11/profile-photo/texLMz5KF9SwQGNpSmmLBxNRB9LDo1qWJGK53Lr8.jpg', 'image/jpeg', 25961, '2026-04-02 09:00:54'),
(60, 14, 'Profile Photo', 'WhatsApp Image 2026-04-02 at 10.02.08.jpeg', 'employees/14/profile-photo/Sza28VRVaI7j85hv19W3jOA1Q1viMIujybxcCLon.jpeg', 'image/jpeg', 4280, '2026-04-02 10:03:07'),
(61, 46, 'Other', 'WIN_20260416_12_34_58_Pro.jpg', 'employees/46/other/ZEOa4QGhe7Fh0jnioCSOD8vBhJuxzwdeTFnMADwo.jpg', 'image/jpeg', 147679, '2026-04-16 12:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `employee_emergency_contacts`
--

CREATE TABLE `employee_emergency_contacts` (
  `emergency_contact_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_emergency_contacts`
--

INSERT INTO `employee_emergency_contacts` (`emergency_contact_id`, `employee_id`, `name`, `relationship`, `phone`) VALUES
(165, 10, 'Induru Udantha', 'Relationship', '0763904365'),
(173, 11, 'Shone', 'Son', '0773207107'),
(208, 64, 'Null', 'Null', 'Null'),
(209, 65, 'Null', 'Null', 'Null'),
(211, 18, 'Chamila Gunawardena', 'Mother', '0771299701'),
(214, 31, 'Nimali Renuka', 'Mother', '0769622485'),
(215, 36, 'Manori Gunawardhana', 'Mother', '0761849125'),
(216, 67, 'Null', 'Null', '000000000'),
(218, 66, 'Null', 'Null', 'Null'),
(222, 61, 'Null', 'Null', 'Null'),
(223, 69, 'Null', 'Null', 'Null'),
(226, 68, 'Null', 'Null', 'Null'),
(227, 21, 'Null', 'Null', 'Null'),
(228, 47, 'Null', 'Null', 'Null'),
(229, 48, 'Null', 'Null', 'Null'),
(230, 70, 'Null', 'Null', 'Null'),
(231, 20, 'Null', 'Null', 'Null'),
(233, 72, 'Null', 'Null', 'Null'),
(234, 40, 'Lakmini Fernando', 'Wife', '766620032'),
(236, 37, 'Manjula Krishanthi Aberathne', 'Mother', '0767718456'),
(237, 49, 'Null', 'Null', 'Null'),
(239, 74, 'Null', 'Null', 'Null'),
(240, 75, 'Null', 'Null', 'Null'),
(241, 50, 'Null', 'Null', 'Null'),
(242, 43, 'W.D.E.M.F Perera', 'Mother', '0774465454'),
(243, 54, 'Null', 'Null', 'Null'),
(244, 76, 'Null', 'Null', 'Null'),
(245, 81, 'Null', 'Null', 'Null'),
(247, 82, 'Null', 'Null', 'Null'),
(248, 38, 'Dagma Fernando', 'Mother', '0777148715'),
(249, 53, 'Null', 'Null', 'Null'),
(252, 44, 'K NADEESHANI ASANGIKA PERERA', 'WIFE', '0767090558'),
(253, 77, 'Null', 'Null', 'Null'),
(254, 41, 'Selvi Jayakumar', 'Mother', '0777855617'),
(255, 42, 'K.Thilanka Dilshan', 'Father', '0776373279'),
(258, 30, 'Chulan Lasantha', 'Husbund', '0774674899'),
(259, 14, 'Melissa', 'Wife', '0777007140'),
(260, 17, 'Sandali Madushiks', 'Wife', '077 367 3070'),
(262, 55, 'Null', 'Null', 'Null'),
(263, 56, 'Null', 'Null', 'Null'),
(264, 57, 'Null', 'Null', 'Null'),
(266, 28, 'Mrs. Karuna Balasuriya', 'Mother', '0718404094'),
(267, 58, 'Null', 'Null', 'Null'),
(268, 33, 'S. Anusha', 'Mother', '076 8910378'),
(269, 19, 'Arusha', 'Brother', '0719400013'),
(270, 62, 'Null', 'Null', 'Null'),
(271, 32, 'Ashoka Chandrasiri', 'Farther', '0779971049'),
(273, 35, 'Susanthi Priyadarshani', 'Mother', '0770629643'),
(275, 24, 'Roshan Meerium', 'Father', '0770206336'),
(277, 46, 'Ramya', 'Mother', '0719931357'),
(278, 80, 'Null', 'Null', 'Null'),
(279, 26, 'R Vajira Kanthi', 'Mother', '0767241365'),
(280, 25, 'Jayasena', 'Father', '0707095826'),
(281, 78, 'Null', 'Null', 'Null'),
(282, 79, 'Null', 'Null', 'Null'),
(283, 45, 'Null', 'Null', 'Null'),
(284, 73, 'Null', 'Null', 'Null'),
(287, 83, 'Null', 'Null', 'Null'),
(288, 39, 'Niranjani Fernando', 'Sister', '0776117707'),
(289, 29, 'E A Jayasinghe', 'Mother', '0763548209'),
(291, 27, 'Dilmi Manoja', 'Wife', '076330975'),
(294, 51, 'Moshe Dilmi Fernando', 'Sister', '0716978015'),
(296, 84, 'Nill', 'Nill', 'Nill'),
(297, 60, 'Null', 'Null', 'Null'),
(299, 52, 'Sriya', 'Mother', '0770195418'),
(300, 59, 'Null', 'Null', 'Null'),
(301, 63, 'Null', 'Null', 'Null'),
(302, 71, 'Null', 'Null', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE `employee_experience` (
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `previous_employer` varchar(150) DEFAULT NULL,
  `total_years` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_experience`
--

INSERT INTO `employee_experience` (`experience_id`, `employee_id`, `previous_employer`, `total_years`) VALUES
(228, 64, 'Null', 0.00),
(229, 65, 'Null', 0.00),
(231, 18, 'Explore Vacations & Travels (Pvt) Ltd', 6.00),
(234, 31, 'Elite Rent A Car (pvt) Ltd', 1.00),
(235, 36, 'Elite Rent A Car (Pvt) Ltd', 1.00),
(236, 67, 'Null', 0.00),
(238, 66, 'Null', 0.00),
(242, 61, 'Null', 0.00),
(243, 69, 'Null', 0.00),
(245, 68, 'Null', 0.00),
(246, 21, '00', 0.00),
(247, 47, 'Null', 0.00),
(248, 48, 'Null', 0.00),
(249, 70, 'Null', 0.00),
(250, 20, '00', -0.25),
(252, 72, 'Null', 0.00),
(253, 40, 'Abans Office Automation (pvt) LTD', 10.00),
(255, 37, 'St. Michell\'s International School ( Thimbirigaskatuwa)', 2.00),
(256, 37, 'Maris Stella  College Thimbirigaskatuwa', 1.00),
(257, 49, 'Null', 0.00),
(260, 74, 'Null', 0.00),
(261, 75, 'Null', 0.00),
(262, 50, 'Null', -0.25),
(263, 43, 'Jet Wing Sea', 0.60),
(264, 43, 'Onreech Hotel', 1.00),
(265, 43, 'Simms Boutique Hotel Malaysia', 0.60),
(266, 43, 'Beach Walk Hotel', 0.75),
(267, 43, 'MAS Active Shadowline', 5.00),
(268, 54, 'Null', -0.25),
(269, 76, 'Null', 0.00),
(270, 81, 'Null', 0.00),
(273, 82, 'Null', -0.25),
(274, 38, 'SR Rent a Car', 1.00),
(275, 53, 'Null', -0.25),
(278, 44, 'UAE EXCHANGE CENTRE LLC', 7.00),
(279, 44, 'BURJ COOL TECHNICAL SERVICES', 3.00),
(280, 44, 'HSBC', 3.00),
(281, 77, 'Null', 0.00),
(282, 41, 'SR Rent A Car (Pvt) Ltd', 1.00),
(287, 30, 'RV Fashion', 2.00),
(288, 30, 'Soar Technology Pvt Ltd', 2.50),
(289, 30, 'Luck Fashion Pvt Ltd', 2.50),
(290, 30, 'Explore Vacations & Travels Pvt Latd', 7.00),
(291, 14, '5', 10.00),
(292, 17, '2', 5.50),
(294, 55, 'Null', 0.00),
(295, 56, 'Null', 0.00),
(296, 57, 'Null', -0.25),
(301, 28, 'Union Bank of Colombo PLC', 1.00),
(302, 28, 'National Transport Commission', 5.00),
(303, 28, 'Explore Vacations and Travels Pvt. Ltd.', 3.00),
(304, 58, 'Null', 0.00),
(305, 33, 'Explore Vacations & Travels PVT LTD', 2.20),
(306, 19, 'Sri Lanka Navy', 16.00),
(307, 19, 'Sanoreech Hotel', 2.00),
(308, 62, 'Null', -0.25),
(309, 32, 'ADE Lanka (Pvt) Ltd', 1.00),
(310, 32, 'Advanced Cleaning Service (Pvt) Ltd', 1.00),
(311, 32, 'Explore Vacations & Travels (Pvt) Ltd', 1.50),
(313, 35, 'Spillburg Vacations (Pvt) Ltd', 0.80),
(316, 24, 'Pixzarloop (Pvt) Ltd', 1.00),
(320, 46, 'Mas Holding', 12.00),
(321, 80, 'Null', 0.00),
(322, 78, 'Null', 0.00),
(323, 79, 'Null', 0.00),
(324, 45, 'Bread Talk', 3.00),
(325, 73, 'Null', 0.00),
(328, 83, 'Null', -0.25),
(329, 39, 'Ansell Textile Lanka PVT LTD', 6.50),
(330, 39, 'Melbourne Textile Washing Plant', 2.00),
(331, 29, 'Ave Maria Hospital Pvt Ltd -', 6.00),
(332, 29, 'Ammirato Foods', 3.00),
(333, 29, 'Formula Express Pvt Ltd', 3.00),
(334, 29, 'Explore Vacations and Travels Pvt Ltd', 3.50),
(336, 27, 'BDO partners', 6.00),
(337, 27, 'Idea Group limited', 1.00),
(344, 51, 'Lanka Sports Reizen Pvt Ltd', 2.50),
(345, 51, 'Dilaksha Fashions - Seeduwa', 5.00),
(346, 51, 'Fits Express Pvt Ltd', 2.00),
(347, 60, 'Null', 0.00),
(349, 52, 'Rajagiriya Tours Pvt Ltd', 2.00),
(350, 59, 'Null', 0.00),
(351, 63, 'Null', 0.00),
(352, 71, 'Null', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

CREATE TABLE `employee_job` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `job_title_id` bigint(20) UNSIGNED NOT NULL,
  `employment_type` varchar(20) NOT NULL,
  `employment_level` varchar(20) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `date_of_joining` date NOT NULL,
  `probation_end_date` date DEFAULT NULL,
  `reporting_manager_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_job`
--

INSERT INTO `employee_job` (`employee_id`, `department_id`, `job_title_id`, `employment_type`, `employment_level`, `company_type`, `date_of_joining`, `probation_end_date`, `reporting_manager_id`) VALUES
(10, 24, 34, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2025-12-30', NULL, 11),
(11, 16, 14, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2004-07-11', NULL, NULL),
(14, 16, 15, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-03-05', NULL, 11),
(17, 18, 17, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-11-15', '2020-11-23', 14),
(18, 17, 11, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-02-17', NULL, 11),
(19, 24, 20, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-05-11', NULL, 14),
(20, 19, 19, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-02-21', NULL, 14),
(21, 20, 18, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2015-12-29', NULL, 14),
(24, 24, 22, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-13', NULL, 19),
(25, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-02-12', '2027-02-12', 19),
(26, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-01-15', NULL, 19),
(27, 18, 23, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-01', NULL, 17),
(28, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-01-07', NULL, 11),
(29, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-05-05', NULL, 11),
(30, 17, 25, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-02-17', NULL, 11),
(31, 17, 26, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-11-14', NULL, 18),
(32, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-09-28', NULL, 11),
(33, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-01-20', NULL, 11),
(35, 18, 28, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-05-23', NULL, 17),
(36, 23, 29, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-01-15', NULL, 64),
(37, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-09-15', NULL, 14),
(38, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-10-11', NULL, 14),
(39, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-05-04', NULL, 21),
(40, 21, 33, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-02-20', NULL, 14),
(41, 21, 34, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-01-24', NULL, 14),
(42, 21, 34, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-11-28', NULL, 14),
(43, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-29', NULL, 20),
(44, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-21', NULL, 20),
(45, 2, 16, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2021-04-30', NULL, 14),
(46, 2, 36, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2025-09-17', NULL, 45),
(47, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2017-12-27', NULL, 14),
(48, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2019-08-18', NULL, 14),
(49, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-11-04', NULL, 14),
(50, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-26', NULL, 14),
(51, 2, 35, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-20', NULL, 84),
(52, 19, 10, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2026-01-04', NULL, 20),
(53, 2, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-03-02', NULL, 14),
(54, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-03-02', NULL, 14),
(55, 17, 40, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-03-01', NULL, 18),
(56, 26, 42, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2017-09-30', NULL, 14),
(57, 26, 41, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-01-10', NULL, 14),
(58, 26, 41, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-08-20', NULL, 14),
(59, 16, 45, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-03-30', NULL, 14),
(60, 22, 43, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-05-24', NULL, 14),
(61, 23, 44, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-03-09', NULL, 14),
(62, 2, 39, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-12-11', NULL, 45),
(63, 26, 46, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-12-30', NULL, 11),
(64, 26, 48, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-06-30', NULL, 14),
(65, 25, 47, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-08-07', NULL, 64),
(66, 26, 27, 'Full-Time', 'Probation', 'Elite Rent a Car (Pvt) Ltd', '2025-07-19', NULL, 64),
(67, 26, 27, 'Full-Time', 'Probation', 'Elite Rent a Car (Pvt) Ltd', '2025-11-02', NULL, 64),
(68, 2, 38, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-11-14', NULL, 45),
(69, 25, 49, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2026-03-08', NULL, 21),
(70, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2021-05-20', NULL, 21),
(71, 25, 47, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-03-28', NULL, 21),
(72, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-03-31', NULL, 20),
(73, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-03-01', NULL, 21),
(74, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-02-18', NULL, 20),
(75, 25, 52, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-11-17', NULL, 21),
(76, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-07-07', NULL, 20),
(77, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-24', NULL, 20),
(78, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-07-31', NULL, 20),
(79, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-01', NULL, 21),
(80, 19, 10, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-01-31', NULL, 20),
(81, 20, 50, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-26', NULL, 21),
(82, 25, 51, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-02-10', NULL, 21),
(83, 25, 51, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-03-02', NULL, 21),
(84, 2, 16, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-04-04', NULL, 45);

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_balances`
--

CREATE TABLE `employee_leave_balances` (
  `leave_balance_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `total_taken` decimal(5,2) NOT NULL DEFAULT 0.00,
  `remaining` decimal(5,2) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leave_balances`
--

INSERT INTO `employee_leave_balances` (`leave_balance_id`, `employee_id`, `leave_policy_id`, `total_taken`, `remaining`, `updated_at`) VALUES
(1, 24, 2, 1.00, 13.00, '2026-04-06 07:57:41'),
(2, 36, 2, 1.00, 9.00, '2026-05-14 06:22:31'),
(3, 37, 2, 1.00, 9.00, '2026-05-14 10:30:51'),
(4, 27, 3, 1.00, 2.00, '2026-05-14 13:34:38'),
(5, 19, 3, 0.50, 6.50, '2026-05-15 04:44:47'),
(6, 17, 3, 1.00, 1.50, '2026-05-15 04:45:01'),
(7, 36, 3, 1.00, 5.00, '2026-05-15 07:37:08'),
(8, 38, 2, 1.00, 10.00, '2026-05-15 13:12:28'),
(9, 26, 3, 1.00, 3.50, '2026-05-17 17:45:25'),
(10, 27, 1, 3.00, 4.00, '2026-05-19 06:38:59'),
(11, 14, 3, 0.50, 3.50, '2026-05-19 08:08:26'),
(12, 35, 3, 1.00, 3.00, '2026-05-19 09:47:18'),
(13, 47, 1, 1.00, 9.00, '2026-05-19 12:10:45'),
(14, 60, 2, 1.00, 8.00, '2026-05-19 12:10:53'),
(15, 60, 3, 1.00, 3.50, '2026-05-19 12:10:58'),
(16, 54, 2, 2.00, 12.00, '2026-05-19 12:11:12'),
(17, 50, 1, 1.00, 11.00, '2026-05-19 12:11:18'),
(18, 48, 1, 2.00, 12.00, '2026-05-19 12:11:25'),
(19, 20, 3, 1.00, 4.00, '2026-05-20 06:46:22'),
(20, 40, 3, 1.00, 6.00, '2026-05-20 10:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `employee_personal_vehicle_usage`
--

CREATE TABLE `employee_personal_vehicle_usage` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `usage_count` int(11) DEFAULT 0,
  `charge_per_request` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_personal_vehicle_usage`
--

INSERT INTO `employee_personal_vehicle_usage` (`id`, `employee_id`, `usage_count`, `charge_per_request`, `created_at`, `updated_at`) VALUES
(1, 81, 1, 0.00, '2026-04-02 11:18:37', '2026-04-02 11:18:37'),
(2, 82, 1, 0.00, '2026-04-09 12:29:20', '2026-04-09 12:29:20'),
(3, 74, 1, 0.00, '2026-04-16 06:10:56', '2026-04-16 06:10:56'),
(6, 43, 1, 0.00, '2026-05-09 17:35:22', '2026-05-13 12:05:37'),
(7, 70, 1, 0.00, '2026-04-24 17:36:10', '2026-05-13 12:06:13'),
(8, 48, 1, 0.00, '2026-05-17 17:36:37', '2026-05-13 12:06:54'),
(11, 47, 1, 0.00, '2026-04-17 17:36:37', '2026-05-13 12:08:30'),
(12, 55, 2, 0.00, '2026-04-15 17:37:05', '2026-05-20 10:11:20'),
(13, 67, 1, 0.00, '2026-05-13 13:08:58', '2026-05-13 13:08:58'),
(16, 21, 1, 0.00, '2026-05-15 13:40:16', '2026-05-15 13:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `employee_yearly_leave_balance`
--

CREATE TABLE `employee_yearly_leave_balance` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `leave_entitlement` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_yearly_leave_balance`
--

INSERT INTO `employee_yearly_leave_balance` (`employee_id`, `leave_policy_id`, `leave_entitlement`) VALUES
(10, 1, 15.00),
(10, 2, 10.00),
(10, 3, 5.00),
(11, 1, 14.00),
(14, 1, 14.00),
(14, 2, 2.00),
(14, 3, 4.00),
(17, 1, 12.00),
(17, 2, 9.00),
(17, 3, 2.50),
(18, 1, 11.00),
(18, 2, 5.00),
(18, 3, 3.00),
(19, 1, 14.00),
(19, 2, 14.00),
(19, 3, 7.00),
(20, 1, 14.00),
(20, 2, 13.00),
(20, 3, 5.00),
(21, 1, 14.00),
(21, 2, 12.00),
(21, 3, 4.00),
(24, 1, 7.00),
(24, 2, 12.00),
(24, 3, 7.00),
(25, 3, 4.50),
(26, 3, 4.50),
(27, 1, 7.00),
(27, 2, 13.00),
(27, 3, 3.00),
(28, 1, 14.00),
(28, 2, 12.00),
(28, 3, 5.00),
(29, 1, 14.00),
(29, 2, 10.00),
(29, 3, 4.50),
(30, 1, 14.00),
(30, 2, 10.00),
(30, 3, 3.50),
(31, 1, 14.00),
(31, 2, 7.00),
(31, 3, 5.50),
(32, 1, 14.00),
(32, 2, 13.00),
(32, 3, 5.50),
(33, 1, 14.00),
(33, 2, 8.00),
(33, 3, 6.00),
(35, 1, 10.00),
(35, 2, 14.00),
(35, 3, 4.00),
(36, 1, 14.00),
(36, 2, 10.00),
(36, 3, 6.00),
(37, 1, 14.00),
(37, 2, 10.00),
(37, 3, 6.00),
(38, 1, 14.00),
(38, 2, 11.00),
(38, 3, 6.50),
(39, 1, 14.00),
(39, 2, 5.00),
(39, 3, 5.50),
(40, 1, 14.00),
(40, 2, 8.00),
(40, 3, 7.00),
(41, 1, 4.00),
(41, 2, 11.00),
(41, 3, 6.50),
(42, 1, 4.00),
(42, 2, 13.00),
(42, 3, 6.50),
(43, 1, 14.00),
(43, 2, 14.00),
(43, 3, 4.50),
(44, 1, 7.00),
(44, 2, 14.00),
(44, 3, 4.00),
(45, 1, 14.00),
(45, 2, 7.00),
(45, 3, 7.00),
(46, 1, 7.00),
(46, 2, 12.00),
(46, 3, 6.00),
(47, 1, 10.00),
(47, 2, 14.00),
(47, 3, 0.00),
(48, 1, 14.00),
(48, 2, 14.00),
(48, 3, 0.00),
(49, 1, 14.00),
(49, 2, 14.00),
(49, 3, 0.00),
(50, 1, 12.00),
(50, 2, 14.00),
(50, 3, 0.00),
(51, 1, 7.00),
(51, 2, 9.00),
(51, 3, 5.00),
(52, 1, 0.00),
(53, 1, 14.00),
(53, 2, 14.00),
(53, 3, 0.00),
(54, 1, 12.00),
(54, 2, 14.00),
(54, 3, 0.00),
(55, 1, 11.00),
(55, 2, 1.00),
(55, 3, 1.00),
(56, 1, 14.00),
(56, 2, 14.00),
(56, 3, 7.00),
(57, 1, 14.00),
(57, 2, 14.00),
(57, 3, 7.00),
(58, 1, 14.00),
(58, 2, 14.00),
(58, 3, 7.00),
(59, 1, 14.00),
(59, 2, 10.00),
(59, 3, 5.50),
(60, 1, 6.00),
(60, 2, 9.00),
(60, 3, 4.50),
(61, 3, 4.50),
(62, 1, 14.00),
(62, 2, 9.00),
(62, 3, 7.00),
(63, 3, 0.00),
(64, 1, 14.00),
(64, 2, 8.00),
(64, 3, 6.50),
(65, 1, 14.00),
(65, 2, 9.00),
(65, 3, 4.00),
(66, 3, 4.50),
(67, 1, 4.00),
(67, 2, 14.00),
(67, 3, 7.00),
(68, 1, 11.00),
(68, 2, 13.00),
(68, 3, 7.00),
(69, 3, 4.00),
(70, 1, 14.00),
(70, 2, 13.00),
(70, 3, 4.00),
(71, 1, 14.00),
(71, 2, 10.00),
(71, 3, 4.50),
(72, 1, 14.00),
(72, 2, 13.00),
(72, 3, 6.00),
(73, 1, 14.00),
(73, 2, 9.00),
(73, 3, 5.00),
(74, 1, 11.00),
(74, 2, 12.00),
(74, 3, 7.00),
(75, 1, 14.00),
(75, 2, 10.00),
(75, 3, 0.00),
(76, 1, 14.00),
(76, 2, 14.00),
(76, 3, 5.50),
(77, 1, 7.00),
(77, 2, 14.00),
(77, 3, 5.00),
(78, 1, 7.00),
(78, 2, 8.00),
(78, 3, 6.00),
(79, 1, 7.00),
(79, 2, 14.00),
(79, 3, 3.50),
(80, 3, 4.50),
(81, 1, 14.00),
(81, 2, 14.00),
(81, 3, 3.50),
(82, 1, 10.00),
(82, 2, 14.00),
(82, 3, 7.00),
(83, 1, 14.00),
(83, 2, 12.00),
(83, 3, 4.50),
(84, 1, 14.00),
(84, 2, 7.00),
(84, 3, 7.00);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `job_title_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`job_title_id`, `name`) VALUES
(26, 'Accounts Assistant'),
(24, 'Accounts Executive'),
(36, 'Admin Executive'),
(41, 'Airport Representative'),
(11, 'Assistant Accountant'),
(17, 'Assistant Manager Digital Marketing'),
(18, 'Assistant Manager Fleet'),
(20, 'Assistant Manager IT'),
(48, 'Assistant Manager Operations'),
(19, 'Assistant Manager Rent A Car'),
(22, 'Associate Web Developer'),
(50, 'Auto Body Technician'),
(47, 'Auto Paint Technician'),
(29, 'Business Associate'),
(44, 'Business Development Executive'),
(51, 'Car Waher'),
(38, 'Caretaker'),
(10, 'Chauffer'),
(39, 'Cleaning Assistant'),
(46, 'Director'),
(32, 'Fleet Executive'),
(23, 'Graphic Designer Cum Video Editor'),
(15, 'Group General Manager'),
(16, 'HR & Admin Manager'),
(37, 'Junior Hr & Admin Executive'),
(28, 'Junior Social Media Executive'),
(52, 'Maintenance In Charge'),
(14, 'Managing Director'),
(30, 'Marketing Executive'),
(49, 'Mechanic'),
(35, 'Office Assistant'),
(40, 'Procurement Executive'),
(27, 'Reservation Executive'),
(25, 'Senior Accounts Executive'),
(42, 'Senior Airport Representative'),
(33, 'Senior Reservation Executive'),
(45, 'Senior Tour Executive'),
(21, 'Software Engineer Intern'),
(43, 'Tour Executive'),
(31, 'Trainee Marketing Executive'),
(34, 'Trainee Reservation Executive');

-- --------------------------------------------------------

--
-- Table structure for table `leave_policies`
--

CREATE TABLE `leave_policies` (
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_policies`
--

INSERT INTO `leave_policies` (`leave_policy_id`, `name`) VALUES
(1, 'Annual Leave'),
(3, 'Casual Leave'),
(4, 'Half Day'),
(2, 'Medical Leave');

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `leave_start_date` date NOT NULL,
  `leave_end_date` date NOT NULL,
  `number_of_days` decimal(5,2) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `oversee_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `half_day_session` enum('MORNING','EVENING') DEFAULT NULL,
  `manager_comment` text DEFAULT NULL,
  `reliever_comment` text DEFAULT NULL,
  `is_special_request` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `requested_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`leave_request_id`, `employee_id`, `leave_policy_id`, `leave_start_date`, `leave_end_date`, `number_of_days`, `reason`, `oversee_member_id`, `half_day_session`, `manager_comment`, `reliever_comment`, `is_special_request`, `address`, `status`, `requested_at`, `updated_at`) VALUES
(23, 25, 3, '2026-04-02', '2026-04-02', 1.00, 'leave', 10, NULL, 'Test', 'Accept', 0, 'Negombo', 'REJECTED', '2026-04-01 15:11:10', '2026-05-17 04:21:57'),
(24, 26, 3, '2026-04-02', '2026-04-03', 2.00, 'Apply Leave..', 10, NULL, 'Test', 'Accepted', 0, '', 'REJECTED', '2026-04-02 04:49:51', '2026-05-17 04:21:45'),
(26, 24, 2, '2026-04-06', '2026-04-06', 1.00, 'severe neck pain and needed to go for a follow-up treatment on Tuesday.', 26, NULL, NULL, 'Accept..', 0, '', 'APPROVED', '2026-04-05 13:49:21', '2026-04-06 07:57:41'),
(29, 74, 1, '2026-04-17', '2026-04-19', 3.00, 'for new year', 77, NULL, NULL, NULL, 0, '', 'PENDING', '2026-04-08 03:35:57', '2026-04-08 03:35:57'),
(39, 48, 1, '2026-04-14', '2026-04-15', 2.00, 'New Year', 40, NULL, NULL, '', 0, '', 'APPROVED', '2026-04-09 08:12:45', '2026-05-19 12:11:25'),
(40, 64, 3, '2026-04-15', '2026-04-16', 2.00, 'personal', 67, NULL, NULL, NULL, 0, '', 'PENDING', '2026-04-14 12:16:49', '2026-04-14 12:16:49'),
(43, 44, 3, '2026-04-21', '2026-04-21', 1.00, 'Family Plan', 43, NULL, NULL, NULL, 0, 'No 17/2A Madama Rd, Wewala Kapuwatta', 'PENDING', '2026-04-17 09:56:33', '2026-04-17 09:56:33'),
(45, 64, 2, '2026-05-08', '2026-05-08', 1.00, 'ankle sprain', 67, NULL, NULL, NULL, 0, '', 'PENDING', '2026-05-08 03:25:04', '2026-05-08 03:25:04'),
(47, 50, 1, '2026-05-30', '2026-05-30', 1.00, 'personal things', 40, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-12 15:31:47', '2026-05-19 12:11:18'),
(49, 17, 3, '2026-05-15', '2026-05-15', 1.00, 'Baby\'s hospital visit', 35, NULL, NULL, 'I will all the responsibility', 0, '', 'APPROVED', '2026-05-14 04:33:14', '2026-05-15 04:45:01'),
(52, 36, 2, '2026-05-13', '2026-05-13', 1.00, 'I had caught a cold and needed a day to recover', 61, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-14 06:19:18', '2026-05-14 06:22:31'),
(53, 37, 2, '2026-05-13', '2026-05-13', 1.00, 'kindly note that due to heavy rain and feeling unwell,I was unable to attend work', 61, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-14 06:20:59', '2026-05-14 10:30:51'),
(54, 27, 3, '2026-05-15', '2026-05-15', 1.00, 'Personal Reason', 35, NULL, NULL, 'ok I acceppt', 0, 'Home', 'APPROVED', '2026-05-14 09:21:58', '2026-05-14 13:34:38'),
(55, 19, 4, '2026-05-15', '2026-05-15', 1.00, 'Personal Requirement', 24, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-15 02:42:37', '2026-05-15 04:44:47'),
(56, 36, 2, '2026-05-15', '2026-05-15', 1.00, 'I caught a cold and need a day to recover', 37, NULL, 'reason is not acceptable', '', 0, '', 'REJECTED', '2026-05-15 03:43:10', '2026-05-15 03:51:33'),
(57, 70, 2, '2026-05-15', '2026-05-15', 1.00, 'Fever informed Mr Nilantha', 79, NULL, NULL, NULL, 0, '', 'PENDING', '2026-05-15 03:45:32', '2026-05-15 03:45:32'),
(58, 36, 3, '2026-05-15', '2026-05-15', 1.00, 'The area is flooded', 37, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-15 04:14:39', '2026-05-15 07:37:08'),
(59, 38, 2, '2026-05-14', '2026-05-14', 1.00, 'sick', 37, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-15 09:58:17', '2026-05-15 13:12:28'),
(60, 26, 3, '2026-05-18', '2026-05-18', 1.00, 'I have my final semester exam,', 24, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-17 12:03:09', '2026-05-17 17:45:25'),
(61, 54, 2, '2026-05-18', '2026-05-19', 2.00, 'Sick', 40, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-18 08:30:56', '2026-05-19 12:11:12'),
(62, 40, 2, '2026-05-22', '2026-05-22', 1.00, 'Personal Reason', 41, NULL, 'you can\'t put medical leave it should be casual', '', 0, '', 'REJECTED', '2026-05-18 08:59:16', '2026-05-20 10:09:00'),
(63, 27, 1, '2026-05-20', '2026-05-22', 3.00, 'Hospital for person reason', 35, NULL, NULL, 'I will cover all responsibilies', 0, '', 'APPROVED', '2026-05-18 09:29:58', '2026-05-19 06:38:59'),
(65, 14, 4, '2026-05-19', '2026-05-19', 1.00, 'Personal', NULL, 'EVENING', NULL, NULL, 1, 'Home', 'APPROVED', '2026-05-19 04:42:50', '2026-05-19 08:08:26'),
(66, 60, 3, '2026-05-13', '2026-05-13', 1.00, 'Transportation issues due to flooding', NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 06:17:47', '2026-05-19 12:10:58'),
(67, 60, 2, '2026-05-18', '2026-05-18', 1.00, 'Severe Back Pain due to heat light treatment', NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 06:19:02', '2026-05-19 12:10:53'),
(68, 47, 1, '2026-05-30', '2026-05-30', 1.00, 'personal matter', 40, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-19 07:57:50', '2026-05-19 12:10:45'),
(69, 35, 3, '2026-05-20', '2026-05-20', 1.00, 'My mother\'s birthday', NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 09:45:29', '2026-05-19 09:47:18'),
(70, 77, 4, '2026-04-23', '2026-04-23', 1.00, 'Personal Matter', 74, 'MORNING', NULL, NULL, 0, '', 'PENDING', '2026-05-19 13:33:23', '2026-05-19 13:33:23'),
(71, 20, 1, '2026-05-21', '2026-05-21', 1.00, 'Personal', 78, NULL, 'One day Annual leave is possible', '', 0, '', 'REJECTED', '2026-05-20 04:30:56', '2026-05-20 06:34:25'),
(72, 20, 3, '2026-05-21', '2026-05-21', 1.00, 'personal', 78, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-20 06:36:06', '2026-05-20 06:46:22'),
(75, 40, 3, '2026-05-22', '2026-05-22', 1.00, 'Personal reason', 41, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-20 15:42:40', '2026-05-20 10:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request_documents`
--

CREATE TABLE `leave_request_documents` (
  `leave_request_document_id` bigint(20) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size_bytes` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_request_documents`
--

INSERT INTO `leave_request_documents` (`leave_request_document_id`, `leave_request_id`, `file_name`, `file_path`, `mime_type`, `file_size_bytes`, `uploaded_at`) VALUES
(3, 60, 'scaled_IMG-20260517-WA0003.jpg', 'uploads/leave_docs/leave_60_1779019392.jpg', 'application/octet-stream', 64639, '2026-05-17 12:03:12'),
(4, 61, 'scaled_fbb99b1d-7b71-434e-9b3a-72d2003f1ab93956650030682717842.jpg', 'uploads/leave_docs/leave_61_1779093059.jpg', 'application/octet-stream', 747926, '2026-05-18 08:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('event','meeting') NOT NULL DEFAULT 'meeting',
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `meeting_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location_type` enum('physical','online') NOT NULL DEFAULT 'physical',
  `location` varchar(255) DEFAULT NULL,
  `members_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`members_ids`)),
  `status` enum('scheduled','ongoing','completed','cancelled','rescheduled') NOT NULL DEFAULT 'scheduled',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `response_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`response_status`)),
  `attachments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachments`)),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `type`, `title`, `description`, `meeting_date`, `start_time`, `end_time`, `location_type`, `location`, `members_ids`, `status`, `created_by`, `response_status`, `attachments`, `created_at`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(1, 'meeting', 'Sri Lanka', NULL, '2026-04-27', '14:15:00', '15:55:00', 'physical', 'Meeting Room', '[\"26\",\"10\",\"24\",\"19\",\"25\"]', 'completed', 1, '{\"26\":\"pending\",\"10\":\"pending\",\"24\":\"pending\",\"19\":\"pending\",\"25\":\"pending\"}', '[{\"file_name\":\"receipt_17.pdf\",\"file_path\":\"meeting-attachments\\/Qv8MAB7u0SNGq9PplOpJsvj1dRRfFM7bs5EGDAsG.pdf\",\"mime_type\":\"application\\/pdf\",\"file_size\":45747},{\"file_name\":\"receipt_7.pdf\",\"file_path\":\"meeting-attachments\\/5FnahRlzciTghygmSjRnyTJ7qadSBlBuxKcP23MG.pdf\",\"mime_type\":\"application\\/pdf\",\"file_size\":45744}]', '2026-04-27 13:55:31', '2026-04-28 17:28:39', NULL, NULL),
(2, 'meeting', 'Test', NULL, '2026-04-28', '17:30:00', '17:31:00', 'physical', 'Meeting Room', '[\"39\",\"83\",\"70\",\"73\",\"79\",\"20\",\"33\",\"84\",\"45\",\"71\",\"40\",\"42\",\"78\",\"46\",\"80\",\"18\",\"28\",\"72\",\"75\",\"26\",\"10\",\"65\",\"49\",\"37\",\"60\",\"44\",\"81\",\"82\",\"41\",\"61\",\"55\",\"56\",\"47\",\"66\",\"17\",\"58\",\"51\",\"24\",\"21\",\"57\",\"68\",\"29\",\"64\",\"14\",\"76\",\"69\",\"54\",\"77\",\"50\",\"43\",\"74\",\"38\",\"36\",\"48\",\"32\",\"30\",\"62\",\"63\",\"11\",\"19\",\"53\",\"52\",\"59\",\"35\",\"27\",\"31\",\"67\",\"25\"]', 'completed', 1, '{\"39\":\"pending\",\"83\":\"pending\",\"70\":\"pending\",\"73\":\"pending\",\"79\":\"pending\",\"20\":\"pending\",\"33\":\"pending\",\"84\":\"pending\",\"45\":\"pending\",\"71\":\"pending\",\"40\":\"pending\",\"42\":\"pending\",\"78\":\"pending\",\"46\":\"pending\",\"80\":\"pending\",\"18\":\"pending\",\"28\":\"pending\",\"72\":\"pending\",\"75\":\"pending\",\"26\":\"pending\",\"10\":\"pending\",\"65\":\"pending\",\"49\":\"pending\",\"37\":\"pending\",\"60\":\"pending\",\"44\":\"pending\",\"81\":\"pending\",\"82\":\"pending\",\"41\":\"pending\",\"61\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"47\":\"pending\",\"66\":\"pending\",\"17\":\"pending\",\"58\":\"pending\",\"51\":\"pending\",\"24\":\"pending\",\"21\":\"pending\",\"57\":\"pending\",\"68\":\"pending\",\"29\":\"pending\",\"64\":\"pending\",\"14\":\"pending\",\"76\":\"pending\",\"69\":\"pending\",\"54\":\"pending\",\"77\":\"pending\",\"50\":\"pending\",\"43\":\"pending\",\"74\":\"pending\",\"38\":\"pending\",\"36\":\"pending\",\"48\":\"pending\",\"32\":\"pending\",\"30\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"11\":\"pending\",\"19\":\"pending\",\"53\":\"pending\",\"52\":\"pending\",\"59\":\"pending\",\"35\":\"pending\",\"27\":\"pending\",\"31\":\"pending\",\"67\":\"pending\",\"25\":\"pending\"}', '[]', '2026-04-28 17:29:16', '2026-04-30 09:05:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2026_02_09_094756_create_departments_table', 1),
(4, '2026_02_09_094831_create_job_titles_table', 1),
(5, '2026_02_09_094846_create_leave_policies_table', 1),
(6, '2026_02_09_094903_create_employees_table', 1),
(7, '2026_02_09_094918_create_employee_jobs_table', 1),
(8, '2026_02_09_094935_create_employee_contacts_table', 1),
(9, '2026_02_09_094949_create_employee_addresses_table', 1),
(10, '2026_02_09_095006_create_employee_emergency_contacts_table', 1),
(11, '2026_02_09_095023_create_employee_compensation_table', 1),
(12, '2026_02_09_095044_create_employee_compensation_components_table', 1),
(13, '2026_02_09_095135_create_employee_bank_accounts_table', 1),
(14, '2026_02_09_095152_create_employee_yearly_leave_balances_table', 1),
(15, '2026_02_09_095204_create_employee_documents_table', 1),
(16, '2026_02_09_095232_create_employee_experiences_table', 1),
(17, '2026_02_09_095300_create_leave_requests_table', 1),
(18, '2026_02_09_095312_create_leave_request_documents_table', 1),
(19, '2026_02_09_095322_create_employee_leave_balances_table', 1),
(20, '2026_02_16_111840_create_transport_services_table', 1),
(21, '2026_02_17_115856_create_vehicle_requests_table', 1),
(22, '2026_02_17_124205_create_trip_details_table', 1),
(23, '2026_02_22_192935_create_personal_access_tokens_table', 1),
(24, '2026_03_09_094903_create_users_table', 1),
(25, '2026_03_10_000001_create_roles_permissions_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_employees', NULL, '2026-03-12 05:46:47', '2026-03-12 05:46:47'),
(2, 'manage_transfers', NULL, '2026-03-30 14:45:27', '2026-03-30 14:45:27'),
(3, 'manage_rent_a_car', NULL, '2026-03-30 14:45:45', '2026-03-30 14:45:45'),
(4, 'manage_it', NULL, '2026-03-30 14:45:51', '2026-03-30 14:45:51'),
(5, 'manage_hr', NULL, '2026-03-30 14:46:00', '2026-03-30 14:46:00'),
(6, 'manage_procument', NULL, '2026-03-30 14:46:12', '2026-03-30 14:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2026-03-12 05:46:34', '2026-03-12 05:46:34'),
(2, 'hr-executive', NULL, '2026-03-12 06:17:17', '2026-03-12 06:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jUbDb00Cx9w9DRWB4YIlRNmnMS3AUquEJN8Br8K7', NULL, '198.235.24.142', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1NnNVZxYWpRcjROQ3dBT3VCRUxqZ3M3NTVIS1JqZk9ua044VFNnWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1779274305),
('KXREeSbzEnGjtBFQ0ulMsjxu0cJUkfWt6iJuaikr', NULL, '198.235.24.142', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzJGWTNTUThIQnhhWEQ0cXl2ckZ6QVJXZTE0UkZmQ0NhT3VhcG9WRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779274306),
('pDes6OhKuRD3b3oRSJBBTf5VE03ItY7tB7EIfIzC', 12, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVZ0Q2RraWVQdGVGVUdvdWNSQnkyMkN5OWZsdkVzVkNsZ1YyTlY5UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1779266813),
('pHUjXyoRehkEAaMHDuyzrTXA5SkL89KYGtKBSn44', NULL, '108.129.237.63', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkxsNk9Lem1XOXpGcFR3MGo0TENSUXFHalV5dGx5TVJiVUlMaHZmRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779269782),
('s5HbgXZLFVtXvSKsfOKoP4rv74AqZL3zGFccU45p', 1, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMVZnc3JSZE5TY0J4MWZ4V2lFN3BMZ2ZaNEdBdmRESTEwdk9mWGV5USI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMyOiJodHRwczovL2V4cGxvcmVzdWl0ZS5say9zZXJ2aWNlcyI7czo1OiJyb3V0ZSI7czo4OiJzZXJ2aWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1779260518),
('Z0nUZrnTMCmSKTVhWeWJ9pTM5iV4O0rBBn2e1woT', 1, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVm9xT3hyRmhtQVhrUlRYcUNvQ2tFMDRJWWFobWNlSGh0T0xCbnRuTiI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1779274168);

-- --------------------------------------------------------

--
-- Table structure for table `transport_services`
--

CREATE TABLE `transport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('shuttle','transfers','office','personal') NOT NULL,
  `vehicle_no` varchar(50) DEFAULT NULL,
  `vehicle_id` int(255) DEFAULT NULL,
  `is_vehicle_assigned` tinyint(1) DEFAULT NULL,
  `chauffer_reason` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `chauffer_phone` varchar(20) DEFAULT NULL,
  `chauffer_name` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','IN_PROGRESS','ASSIGNED','START_TRIP','COMPLETED','HOD_APPROVED','HOD_REJECTED') NOT NULL DEFAULT 'ASSIGNED',
  `reject_reason` varchar(500) DEFAULT NULL,
  `assigned_start_at` datetime NOT NULL,
  `pickup_location` varchar(255) NOT NULL DEFAULT 'Seeduwa Office',
  `dropoff_location` varchar(255) NOT NULL,
  `assigned_end_at` datetime DEFAULT NULL,
  `passenger_count` int(10) UNSIGNED NOT NULL,
  `trip_code` varchar(255) DEFAULT NULL,
  `hod_comment` varchar(255) DEFAULT NULL,
  `delete_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_services`
--

INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `vehicle_id`, `is_vehicle_assigned`, `chauffer_reason`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `assigned_end_at`, `passenger_count`, `trip_code`, `hod_comment`, `delete_note`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(8, 0, 'personal', 'CBM-5712', 27, NULL, NULL, 'Car', '0762877006', 'Kumara Fernando', 81, 21, 'COMPLETED', NULL, '2026-04-02 00:00:00', 'Head Office', '', '2026-04-03 23:59:59', 1, '#KUMA8632', 'Forward to GM sir', NULL, '2026-04-02 11:11:58', '2026-04-06 10:37:53', NULL, NULL),
(19, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kandy, Sri Lanka', '2026-04-16 23:59:59', 1, '#SAMP4416', NULL, NULL, '2026-04-05 11:54:48', '2026-04-14 08:57:09', NULL, NULL),
(20, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kandy, Sri Lanka', '2026-04-16 23:59:59', 1, '#SAMP6119', NULL, NULL, '2026-04-05 11:56:56', '2026-04-14 04:31:07', NULL, NULL),
(21, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kadawatha, Sri Lanka', '2026-04-16 23:59:59', 1, '#SAMP4450', NULL, NULL, '2026-04-05 12:47:32', '2026-04-14 04:30:48', NULL, NULL),
(22, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-04-05 00:00:00', 'Head Office', 'returned', '2026-04-05 23:59:59', 1, '#NILA8940', NULL, NULL, '2026-04-05 15:29:08', '2026-05-15 08:27:57', NULL, NULL),
(23, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'COMPLETED', NULL, '2026-04-05 00:00:00', 'Head Office', 'rtn to office', '2026-04-05 23:59:59', 1, '#NILA5947', NULL, NULL, '2026-04-05 15:30:01', '2026-05-14 13:01:07', NULL, NULL),
(24, 0, 'personal', 'PD-9606', 108, NULL, NULL, 'Van', '0773843033', 'Indika Acoinas', 75, 21, 'REJECTED', 'Not Available', '2026-04-14 00:00:00', 'Head Office', '', '2026-04-15 23:59:59', 1, NULL, '', NULL, '2026-04-06 12:40:59', '2026-04-16 06:10:16', NULL, NULL),
(25, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-04-05 00:00:00', 'Head Office', 'seeduwa to marawila', '2026-04-05 23:59:59', 1, '#NILA6638', NULL, NULL, '2026-04-05 07:14:45', '2026-05-18 06:50:36', NULL, NULL),
(31, 0, 'personal', 'CBM-5726', 28, NULL, NULL, 'Car', '0753871334', 'Lahiru Kumara', 82, 21, 'COMPLETED', NULL, '2026-04-12 00:00:00', 'Head Office', '', '2026-04-19 23:59:59', 1, '#LAHI8073', '', NULL, '2026-04-07 08:49:13', '2026-04-18 12:52:04', NULL, NULL),
(41, 8, 'transfers', 'CAC-6595', NULL, 1, NULL, 'Car', NULL, NULL, 80, NULL, 'ASSIGNED', NULL, '2026-04-09 09:15:00', 'Seeduwa Office', '10th & 11th floors, Institute of Bankers of Sri Lanka Building, 80A Elvitigala Mawatha, Colombo 00800, Sri Lanka', '2026-04-11 09:15:00', 1, NULL, NULL, NULL, '2026-04-09 14:45:26', '2026-04-09 14:46:20', '2026-04-09 14:46:20', NULL),
(57, 0, 'personal', 'CAK-9434', 155, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'COMPLETED', NULL, '2026-04-15 00:00:00', 'Head Office', '', '2026-04-16 23:59:59', 1, '#SAMP4036', '', NULL, '2026-04-13 18:21:43', '2026-04-17 06:37:55', NULL, NULL),
(59, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '076 594 6923', 'Lalin Amith', 55, 14, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', '', '2026-04-16 23:59:59', 1, '#LALI6171', NULL, NULL, '2026-04-15 18:05:03', '2026-04-17 06:58:32', NULL, NULL),
(64, 0, 'personal', 'CBM-5712', 27, NULL, NULL, 'Car', '0775555555', 'Dhilhara', 84, 45, 'PENDING', NULL, '2026-04-17 00:00:00', 'Head Office', '', '2026-04-17 23:59:59', 1, NULL, NULL, NULL, '2026-04-16 06:42:13', '2026-04-16 06:42:13', NULL, NULL),
(80, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '0765105679', 'Sembu Ajith', 48, 14, 'APPROVED', NULL, '2026-04-18 00:00:00', 'Head Office', '', '2026-04-19 23:59:59', 1, '#SEMB3112', NULL, NULL, '2026-04-17 10:38:18', '2026-04-17 10:40:44', NULL, NULL),
(81, 0, 'personal', 'CAO-9712', 103, NULL, NULL, 'Car', '0772204390', 'Lasantha Anthony', 47, 14, 'APPROVED', NULL, '2026-04-18 00:00:00', 'Head Office', '', '2026-04-19 23:59:59', 1, '#LASA2340', NULL, NULL, '2026-04-17 11:44:07', '2026-04-17 11:57:55', NULL, NULL),
(90, 0, 'personal', 'CBM-8143', 49, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'COMPLETED', NULL, '2026-04-29 00:00:00', 'Head Office', '', '2026-04-30 23:59:59', 1, '#WISH3861', '', NULL, '2026-04-24 05:19:39', '2026-04-30 20:07:42', NULL, NULL),
(92, 0, 'office', 'CBV-8252', 171, NULL, NULL, 'SUV', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-04-25 00:00:00', 'Head Office', 'Sri Lanka', '2026-04-26 23:59:59', 1, '#BONI2486', NULL, NULL, '2026-04-24 08:45:20', '2026-04-24 08:46:10', NULL, NULL),
(94, 0, 'personal', 'CBV-8397', 176, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-04-25 00:00:00', 'Head Office', '', '2026-04-26 23:59:59', 1, '#BONI9614', '', NULL, '2026-04-24 10:54:01', '2026-04-24 12:21:38', NULL, NULL),
(95, 0, 'personal', 'CBM-5723', 25, NULL, NULL, 'Car', '0781803097', 'Ashen Fernando', 83, 21, 'REJECTED', 'No Availability', '2026-04-30 00:00:00', 'Head Office', '', '2026-04-30 23:59:59', 1, NULL, '', NULL, '2026-04-28 09:02:01', '2026-04-29 12:27:54', NULL, NULL),
(96, 15, 'transfers', 'CAX-4197', NULL, 1, NULL, 'SUV', NULL, NULL, 54, NULL, 'START_TRIP', NULL, '2026-04-30 04:50:00', 'Seeduwa Office', 'colombo', '2026-05-01 04:30:00', 1, '#ROSH6543', NULL, NULL, '2026-04-30 18:19:58', '2026-05-07 12:53:14', '2026-05-07 12:53:14', NULL),
(97, 16, 'transfers', 'CAE-4853', NULL, 1, NULL, 'Car', NULL, NULL, 50, NULL, 'START_TRIP', NULL, '2026-04-30 09:40:00', 'Seeduwa Office', 'colombo', '2026-04-30 19:40:00', 1, '#SAHA1244', NULL, NULL, '2026-04-30 18:23:17', '2026-05-07 12:53:04', '2026-05-07 12:53:04', NULL),
(98, 17, 'transfers', 'CBB-8740', NULL, 1, NULL, 'SUV', NULL, NULL, 53, NULL, 'START_TRIP', NULL, '2026-05-01 04:40:00', 'Seeduwa Office', 'colombo', '2026-05-01 09:40:00', 1, '#SUJE6973', NULL, NULL, '2026-04-30 18:24:07', '2026-05-07 12:52:57', '2026-05-07 12:52:57', NULL),
(99, 18, 'transfers', 'CBM-5706', NULL, 1, NULL, 'Car', NULL, NULL, 49, NULL, 'IN_PROGRESS', NULL, '2026-05-01 04:40:00', 'Seeduwa Office', 'colombo', '2026-05-01 14:50:00', 1, '#KAPI1058', NULL, NULL, '2026-04-30 18:24:54', '2026-05-07 12:52:49', '2026-05-07 12:52:49', NULL),
(100, 19, 'transfers', 'CAY-3385', NULL, 1, NULL, 'Car', NULL, NULL, 47, NULL, 'START_TRIP', NULL, '2026-05-01 09:40:00', 'Seeduwa Office', 'colombo', '2026-05-01 15:50:00', 1, '#SEMB2494', NULL, NULL, '2026-04-30 18:25:49', '2026-05-07 12:52:31', '2026-05-07 12:52:31', NULL),
(101, 20, 'transfers', 'CBQ-9481', NULL, 1, NULL, 'Car', NULL, NULL, 48, NULL, 'COMPLETED', NULL, '2026-04-30 04:40:00', 'Seeduwa Office', 'colombo', '2026-05-01 09:40:00', 1, '#SEMB9895', NULL, NULL, '2026-04-30 18:27:32', '2026-05-07 12:53:43', '2026-05-07 12:53:43', NULL),
(102, 21, 'transfers', 'CBM-5712', NULL, 1, NULL, 'Car', NULL, NULL, 47, NULL, 'COMPLETED', NULL, '2026-05-01 04:50:00', 'Seeduwa Office', 'colombo', '2026-05-01 09:40:00', 1, '#LASA1559', NULL, NULL, '2026-04-30 18:50:49', '2026-05-07 12:52:42', '2026-05-07 12:52:42', NULL),
(104, 22, 'transfers', 'CBS-9862', NULL, 1, NULL, 'SUV', NULL, NULL, 80, NULL, 'ASSIGNED', NULL, '2026-05-04 11:12:00', 'Seeduwa Office', 'd', '2026-05-06 11:12:00', 1, NULL, NULL, NULL, '2026-05-04 16:43:04', '2026-05-04 16:43:50', '2026-05-04 16:43:50', NULL),
(105, 0, 'personal', 'CAP-5023', 157, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'REJECTED', 'Not available', '2026-05-13 00:00:00', 'Head Office', '', '2026-05-14 23:59:59', 1, NULL, '', NULL, '2026-05-07 05:57:00', '2026-05-13 10:27:45', NULL, NULL),
(106, 0, 'office', 'CBT-2241', 174, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'HOD_REJECTED', NULL, '2026-05-08 00:00:00', 'Head Office', 'vivantha', '2026-05-08 23:59:59', 1, NULL, 'ni', NULL, '2026-05-08 09:18:33', '2026-05-12 06:24:30', NULL, NULL),
(108, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '0777897292', 'Sameera  Dilshan', 43, 20, 'REJECTED', 'not available', '2026-05-10 00:00:00', 'Head Office', '', '2026-05-11 23:59:59', 1, NULL, 'Dear sir, we have available more than 40% vehicles in the rental station. Please check and kindly advise.  Thank you', NULL, '2026-05-08 10:42:23', '2026-05-12 08:20:33', NULL, NULL),
(110, 0, 'personal', 'CBM-5708', 46, NULL, NULL, 'Car', '0777897292', 'Sameera  Dilshan', 43, 20, 'APPROVED', NULL, '2026-05-10 00:00:00', 'Head Office', '', '2026-05-11 23:59:59', 1, '#SAME3965', '', NULL, '2026-05-09 07:38:51', '2026-05-12 08:20:44', NULL, NULL),
(111, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-05-11 00:00:00', 'Head Office', 'Demanhandiya Junction, B324, Negombo, Sri Lanka', '2026-05-12 23:59:59', 1, '#SRIM8065', NULL, NULL, '2026-05-11 14:25:15', '2026-05-12 08:52:57', NULL, NULL),
(112, 0, 'office', 'CBM-5684', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-12 00:00:00', 'Head Office', 'seeduwa.', '2026-05-12 23:59:59', 1, '#DAMS7028', NULL, NULL, '2026-05-12 06:18:59', '2026-05-12 06:23:29', NULL, NULL),
(113, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-12 00:00:00', 'Head Office', 'seeduwa', '2026-05-12 23:59:59', 1, '#DAMS2937', NULL, NULL, '2026-05-12 06:53:58', '2026-05-12 07:34:07', NULL, NULL),
(114, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-12 00:00:00', 'Head Office', 'vivantha', '2026-05-12 23:59:59', 1, '#DAMS2586', NULL, NULL, '2026-05-12 08:21:50', '2026-05-12 15:11:27', NULL, NULL),
(116, 0, 'office', 'CBT-4751', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', '2026-05-13 23:59:59', 1, '#DAMS1074', NULL, NULL, '2026-05-13 06:09:52', '2026-05-13 07:05:38', NULL, NULL),
(117, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', '2026-05-13 23:59:59', 1, '#DAMS9869', NULL, NULL, '2026-05-13 07:06:22', '2026-05-13 07:37:04', NULL, NULL),
(118, 0, 'office', 'CBM-5709', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', '2026-05-13 23:59:59', 1, '#DAMS1914', NULL, NULL, '2026-05-13 07:37:32', '2026-05-13 08:00:07', NULL, NULL),
(119, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', '2026-05-13 23:59:59', 1, '#DAMS9171', NULL, NULL, '2026-05-13 08:06:22', '2026-05-13 08:40:06', NULL, NULL),
(120, 0, 'office', 'CBT-2241', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel and vivantha', '2026-05-13 23:59:59', 1, '#DAMS7716', NULL, NULL, '2026-05-13 09:23:55', '2026-05-13 10:29:03', NULL, NULL),
(121, 0, 'office', 'CBQ-8861', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', '2026-05-13 23:59:59', 1, '#DAMS2372', NULL, NULL, '2026-05-13 09:40:11', '2026-05-13 09:53:28', NULL, NULL),
(124, 0, 'personal', 'CBM-8143', 49, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', '', '2026-05-15 23:59:59', 1, '#WISH6666', 'approved', NULL, '2026-05-13 13:07:18', '2026-05-15 15:43:36', NULL, NULL),
(127, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'seeduwa', '2026-05-14 23:59:59', 1, '#DAMS8012', NULL, NULL, '2026-05-14 05:00:31', '2026-05-14 05:02:02', NULL, NULL),
(128, 0, 'office', 'CBC-3319', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'panchikawatta', '2026-05-14 23:59:59', 1, '#BONI9399', NULL, NULL, '2026-05-14 06:11:41', '2026-05-14 06:12:30', NULL, NULL),
(129, 0, 'office', 'CBS-0870', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', '2026-05-14 23:59:59', 1, '#DAMS2799', NULL, NULL, '2026-05-14 06:19:42', '2026-05-14 07:39:21', NULL, NULL),
(130, 0, 'office', 'PC-1058', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', '2026-05-14 23:59:59', 1, '#DAMS2904', NULL, NULL, '2026-05-14 07:46:19', '2026-05-14 07:49:37', NULL, NULL),
(131, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', '2026-05-14 23:59:59', 1, '#DAMS4566', NULL, NULL, '2026-05-14 08:36:29', '2026-05-14 09:59:18', NULL, NULL),
(132, 0, 'office', 'CBM-5703', 19, NULL, NULL, 'Car', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'Micro Cars KALANIYA', '2026-05-14 23:59:59', 1, '#ANTO6891', NULL, NULL, '2026-05-14 09:39:48', '2026-05-14 12:03:29', NULL, NULL),
(134, 0, 'office', 'CBM-5715', 29, NULL, NULL, 'Car', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'Dunston Auto JA-ELA', '2026-05-15 23:59:59', 1, '#ANTO1024', NULL, NULL, '2026-05-15 05:12:45', '2026-05-15 06:18:11', NULL, NULL),
(135, 0, 'office', 'CBV-8254', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', '2026-05-15 23:59:59', 1, '#DAMS2552', NULL, NULL, '2026-05-15 05:24:24', '2026-05-15 06:26:20', NULL, NULL),
(136, 0, 'office', 'CBD-8266', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', '2026-05-15 23:59:59', 1, '#DAMS7101', NULL, NULL, '2026-05-15 06:40:26', '2026-05-15 07:01:56', NULL, NULL),
(138, 0, 'office', 'CBV-8253', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', '2026-05-15 23:59:59', 1, '#DAMS5880', NULL, NULL, '2026-05-15 08:32:03', '2026-05-15 08:45:48', NULL, NULL),
(139, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', '2026-05-15 23:59:59', 1, '#DAMS9716', NULL, NULL, '2026-05-15 10:51:42', '2026-05-15 11:25:29', NULL, NULL),
(141, 0, 'personal', 'CBM-5703', 19, NULL, NULL, 'Car', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', '', '2026-05-16 23:59:59', 1, '#NILA6495', NULL, NULL, '2026-05-15 13:39:12', '2026-05-15 13:41:26', NULL, NULL),
(142, 0, 'office', 'CBM-5750', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'kushan kumara', '2026-05-18 23:59:59', 1, '#DAMS7641', NULL, NULL, '2026-05-18 03:18:21', '2026-05-18 03:34:52', NULL, NULL),
(143, 0, 'office', 'CBC-3319', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'IN_PROGRESS', NULL, '2026-05-18 00:00:00', 'Head Office', 'jaela', '2026-05-18 23:59:59', 1, '#BONI7200', NULL, NULL, '2026-05-18 04:20:47', '2026-05-18 04:35:07', NULL, NULL),
(144, 0, 'office', 'CBS-9861', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-18 00:00:00', 'Head Office', 'refuel', '2026-05-18 23:59:59', 1, '#DAMS8479', NULL, NULL, '2026-05-18 05:29:59', '2026-05-18 06:52:41', NULL, NULL),
(145, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'à¶´à¶±à·Šà¶±à·’à¶´à·’à¶§à·’à¶º, Sri Lanka', '2026-05-18 23:59:59', 1, '#MOSH1769', NULL, NULL, '2026-05-18 05:51:09', '2026-05-18 12:22:27', NULL, NULL),
(146, 0, 'office', 'CBS-9859', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-05-18 00:00:00', 'Head Office', 'negombo', '2026-05-18 23:59:59', 1, '#NILA9936', NULL, NULL, '2026-05-18 06:49:24', '2026-05-19 10:19:57', NULL, NULL),
(147, 0, 'office', 'CBM-5720', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'negombo', '2026-05-18 23:59:59', 1, '#DAMS9653', NULL, NULL, '2026-05-18 07:20:45', '2026-05-18 09:09:25', NULL, NULL),
(148, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', '2026-05-18 23:59:59', 1, '#SRIM1654', NULL, NULL, '2026-05-18 08:51:36', '2026-05-18 10:10:49', NULL, NULL),
(149, 0, 'office', 'CBM-8155', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'seeduwa refuel', '2026-05-18 23:59:59', 1, '#DAMS9696', NULL, NULL, '2026-05-18 09:47:01', '2026-05-18 10:52:55', NULL, NULL),
(150, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'refuel', '2026-05-18 23:59:59', 1, '#DAMS3393', NULL, NULL, '2026-05-18 10:53:29', '2026-05-18 11:28:21', NULL, NULL),
(151, 0, 'office', 'CBM-5720', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'vivantha', '2026-05-18 23:59:59', 1, '#DAMS3291', NULL, NULL, '2026-05-18 11:40:44', '2026-05-18 12:17:17', NULL, NULL),
(152, 0, 'office', 'CAP-0853', 80, NULL, NULL, 'Car', '076 594 6923', 'Lalin Amith', 55, 18, 'PENDING', NULL, '2026-05-19 00:00:00', 'Head Office', 'negombo', '2026-05-19 23:59:59', 1, NULL, NULL, NULL, '2026-05-19 04:24:17', '2026-05-19 04:24:17', NULL, NULL),
(153, 0, 'office', 'CBS-9863', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', '2026-05-19 23:59:59', 1, '#DAMS4987', NULL, NULL, '2026-05-19 05:42:12', '2026-05-19 06:44:43', NULL, NULL),
(154, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', '2026-05-19 23:59:59', 1, '#MOSH7089', NULL, NULL, '2026-05-19 06:38:24', '2026-05-19 12:03:39', NULL, NULL),
(155, 0, 'office', 'CBM-5725', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refueÄº', '2026-05-19 23:59:59', 1, '#DAMS7615', NULL, NULL, '2026-05-19 07:01:38', '2026-05-19 07:33:47', NULL, NULL),
(156, 0, 'office', 'CBV-8255', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', '2026-05-19 23:59:59', 1, '#DAMS8514', NULL, NULL, '2026-05-19 08:11:26', '2026-05-19 09:19:22', NULL, NULL),
(157, 0, 'office', 'CBM-5708', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', '2026-05-19 23:59:59', 1, '#DAMS3364', NULL, NULL, '2026-05-19 10:04:36', '2026-05-19 10:36:40', NULL, NULL),
(158, 0, 'office', 'CBV-8252', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'PENDING', NULL, '2026-05-19 00:00:00', 'Head Office', 'micro to office', '2026-05-19 23:59:59', 1, NULL, NULL, NULL, '2026-05-19 10:18:45', '2026-05-19 10:18:45', NULL, NULL),
(160, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', '2026-05-20 23:59:59', 1, '#INDI4449', NULL, NULL, '2026-05-20 03:54:34', '2026-05-20 05:11:19', NULL, NULL),
(161, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', '2026-05-20 23:59:59', 1, '#INDI3406', NULL, NULL, '2026-05-20 03:58:24', '2026-05-20 04:18:42', NULL, NULL),
(162, 0, 'office', 'CBQ-8851', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', '2026-05-20 23:59:59', 1, '#DAMS5459', NULL, NULL, '2026-05-20 04:27:08', '2026-05-20 04:39:01', NULL, NULL),
(163, 0, 'personal', 'CAO-9712', 103, NULL, NULL, 'Car', '076 594 6923', 'Lalin Amith', 55, 18, 'IN_PROGRESS', NULL, '2026-05-20 00:00:00', 'Head Office', '', '2026-05-20 23:59:59', 1, '#LALI6057', 'Approve & Forward.', NULL, '2026-05-20 06:40:29', '2026-05-20 10:39:17', NULL, NULL),
(164, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'anton hardware', '2026-05-20 23:59:59', 1, '#DAMS3568', NULL, NULL, '2026-05-20 06:58:49', '2026-05-20 08:22:37', NULL, NULL),
(165, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'jaela dunston', '2026-05-20 23:59:59', 1, '#BONI5145', NULL, NULL, '2026-05-20 09:16:36', '2026-05-20 09:39:55', NULL, NULL),
(166, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'jaela dunston', '2026-05-20 23:59:59', 1, '#BONI1324', NULL, NULL, '2026-05-20 10:30:48', '2026-05-20 11:18:14', NULL, NULL),
(167, 0, 'office', 'CBV-8252', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', '2026-05-20 23:59:59', 1, '#DAMS5220', NULL, NULL, '2026-05-20 10:38:19', '2026-05-20 11:06:57', NULL, NULL),
(168, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', '2026-05-20 23:59:59', 1, '#DAMS3442', NULL, NULL, '2026-05-20 11:15:51', '2026-05-20 11:54:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trip_details`
--

CREATE TABLE `trip_details` (
  `trip_detail_id` bigint(20) UNSIGNED NOT NULL,
  `transport_service_id` bigint(20) UNSIGNED NOT NULL,
  `trip_start_datetime` datetime NOT NULL,
  `trip_end_datetime` datetime DEFAULT NULL,
  `trip_start_odometer` int(11) NOT NULL,
  `trip_end_odometer` int(11) DEFAULT NULL,
  `trip_start_odometer_photo` varchar(500) NOT NULL,
  `trip_end_odometer_photo` varchar(500) DEFAULT NULL,
  `start_trip_fuel` decimal(5,2) DEFAULT NULL,
  `end_trip_fuel` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`trip_detail_id`, `transport_service_id`, `trip_start_datetime`, `trip_end_datetime`, `trip_start_odometer`, `trip_end_odometer`, `trip_start_odometer_photo`, `trip_end_odometer_photo`, `start_trip_fuel`, `end_trip_fuel`, `created_at`, `updated_at`) VALUES
(5, 8, '2026-04-02 12:22:48', '2026-04-06 10:37:53', 30618, 30671, 'uploads/trips/start_8_1775132568.jpg', 'uploads/trips/end_8_1775471873.jpg', 100.00, 100.00, '2026-04-02 12:22:48', '2026-04-06 10:37:53'),
(6, 31, '2026-04-11 23:41:26', '2026-04-18 12:52:04', 30507, 31360, 'uploads/trips/start_31_1775950886.jpg', 'uploads/trips/end_31_1776516724.jpg', 100.00, 100.00, '2026-04-11 23:41:26', '2026-04-18 12:52:04'),
(7, 57, '2026-04-17 06:36:06', '2026-04-17 06:37:55', 171339, 171638, 'uploads/trips/start_57_1776407766.jpg', 'uploads/trips/end_57_1776407875.jpg', 100.00, 100.00, '2026-04-17 06:36:06', '2026-04-17 06:37:55'),
(10, 90, '2026-04-29 18:52:28', '2026-04-30 20:07:42', 30147, 30342, 'uploads/trips/start_90_1777488748.jpg', 'uploads/trips/end_90_1777579662.jpg', 70.00, 75.00, '2026-04-29 18:52:28', '2026-04-30 20:07:42'),
(11, 101, '2026-04-30 13:06:56', '2026-04-30 13:07:44', 10, 1444, 'uploads/trips/start_101_1777554416.jpg', 'uploads/trips/end_101_1777554464.jpg', 100.00, 100.00, '2026-04-30 13:06:56', '2026-04-30 13:07:44'),
(12, 102, '2026-04-30 13:23:38', '2026-04-30 13:24:04', 1880, 1888, 'uploads/trips/start_102_1777555418.jpg', 'uploads/trips/end_102_1777555444.jpg', 100.00, 100.00, '2026-04-30 13:23:38', '2026-04-30 13:24:04'),
(13, 99, '2026-05-01 07:08:14', NULL, 74900, NULL, 'uploads/trips/start_99_1777619294.jpg', NULL, 100.00, NULL, '2026-05-01 07:08:14', '2026-05-01 07:08:14'),
(14, 113, '2026-05-12 07:02:09', '2026-05-12 07:34:07', 125424, 125432, 'uploads/trips/start_113_1778569329.jpg', 'uploads/trips/end_113_1778571247.jpg', 10.00, 100.00, '2026-05-12 07:02:09', '2026-05-12 07:34:07'),
(15, 111, '2026-05-12 08:41:09', '2026-05-12 08:52:57', 126068, 126099, 'uploads/trips/start_111_1778575269.jpg', 'uploads/trips/end_111_1778575977.jpg', 65.00, 60.00, '2026-05-12 08:41:09', '2026-05-12 08:52:57'),
(16, 116, '2026-05-13 06:16:39', '2026-05-13 07:05:38', 13676, 13683, 'uploads/trips/start_116_1778652999.jpg', 'uploads/trips/end_116_1778655938.jpg', 60.00, 100.00, '2026-05-13 06:16:39', '2026-05-13 07:05:38'),
(17, 117, '2026-05-13 07:15:34', '2026-05-13 07:37:04', 126263, 126270, 'uploads/trips/start_117_1778656534.jpg', 'uploads/trips/end_117_1778657824.jpg', 50.00, 100.00, '2026-05-13 07:15:34', '2026-05-13 07:37:04'),
(18, 118, '2026-05-13 07:41:26', '2026-05-13 08:00:07', 40286, 40294, 'uploads/trips/start_118_1778658086.jpg', 'uploads/trips/end_118_1778659207.jpg', 90.00, 100.00, '2026-05-13 07:41:26', '2026-05-13 08:00:07'),
(19, 119, '2026-05-13 08:12:14', '2026-05-13 08:40:06', 93031, 93039, 'uploads/trips/start_119_1778659934.jpg', 'uploads/trips/end_119_1778661606.jpg', 50.00, 100.00, '2026-05-13 08:12:14', '2026-05-13 08:40:06'),
(20, 120, '2026-05-13 09:28:32', '2026-05-13 10:29:03', 6337, 6340, 'uploads/trips/start_120_1778664512.jpg', 'uploads/trips/end_120_1778668143.jpg', 90.00, 100.00, '2026-05-13 09:28:32', '2026-05-13 10:29:03'),
(21, 124, '2026-05-13 19:25:04', '2026-05-15 15:43:36', 31719, 32027, 'uploads/trips/start_124_1778700304.jpg', 'uploads/trips/end_124_1778859816.jpg', 100.00, 100.00, '2026-05-13 19:25:04', '2026-05-15 15:43:36'),
(22, 129, '2026-05-14 06:24:09', '2026-05-14 07:39:21', 15398, 15417, 'uploads/trips/start_129_1778739849.jpg', 'uploads/trips/end_129_1778744361.jpg', 90.00, 100.00, '2026-05-14 06:24:09', '2026-05-14 07:39:21'),
(23, 131, '2026-05-14 08:41:19', '2026-05-14 09:59:18', 125721, 125741, 'uploads/trips/start_131_1778748079.jpg', 'uploads/trips/end_131_1778752758.jpg', 50.00, 100.00, '2026-05-14 08:41:19', '2026-05-14 09:59:18'),
(24, 132, '2026-05-14 09:53:18', '2026-05-14 12:03:29', 32067, 32114, 'uploads/trips/start_132_1778752398.jpg', 'uploads/trips/end_132_1778760209.jpg', 100.00, 90.00, '2026-05-14 09:53:18', '2026-05-14 12:03:29'),
(25, 23, '2026-05-14 13:00:12', '2026-05-14 13:01:07', 12233, 12238, 'uploads/trips/start_23_1778763612.jpg', 'uploads/trips/end_23_1778763667.jpg', 60.00, 60.00, '2026-05-14 13:00:12', '2026-05-14 13:01:07'),
(26, 134, '2026-05-15 05:27:45', '2026-05-15 06:18:11', 35194, 35205, 'uploads/trips/start_134_1778822865.jpg', 'uploads/trips/end_134_1778825891.jpg', 60.00, 60.00, '2026-05-15 05:27:45', '2026-05-15 06:18:11'),
(27, 135, '2026-05-15 05:33:33', '2026-05-15 06:26:20', 6364, 6376, 'uploads/trips/start_135_1778823213.jpg', 'uploads/trips/end_135_1778826380.jpg', 90.00, 100.00, '2026-05-15 05:33:33', '2026-05-15 06:26:20'),
(28, 136, '2026-05-15 07:01:56', NULL, 97331, NULL, 'uploads/trips/start_136_1778828516.jpg', NULL, 40.00, NULL, '2026-05-15 07:01:56', '2026-05-15 07:01:56'),
(29, 22, '2026-05-15 08:27:57', NULL, 9871, NULL, 'uploads/trips/start_22_1778833677.jpg', NULL, 90.00, NULL, '2026-05-15 08:27:57', '2026-05-15 08:27:57'),
(30, 138, '2026-05-15 08:45:48', NULL, 7584, NULL, 'uploads/trips/start_138_1778834748.jpg', NULL, 60.00, NULL, '2026-05-15 08:45:48', '2026-05-15 08:45:48'),
(31, 139, '2026-05-15 10:59:01', '2026-05-15 11:25:29', 32166, 32177, 'uploads/trips/start_139_1778842741.jpg', 'uploads/trips/end_139_1778844329.jpg', 80.00, 100.00, '2026-05-15 10:59:01', '2026-05-15 11:25:29'),
(32, 141, '2026-05-15 13:41:26', NULL, 32177, NULL, 'uploads/trips/start_141_1778852486.jpg', NULL, 100.00, NULL, '2026-05-15 13:41:26', '2026-05-15 13:41:26'),
(33, 142, '2026-05-18 03:20:43', '2026-05-18 03:34:52', 29142, 29149, 'uploads/trips/start_142_1779074443.jpg', 'uploads/trips/end_142_1779075292.jpg', 100.00, 100.00, '2026-05-18 03:20:43', '2026-05-18 03:34:52'),
(34, 143, '2026-05-18 04:35:07', NULL, 1106853, NULL, 'uploads/trips/start_143_1779078907.jpg', NULL, 30.00, NULL, '2026-05-18 04:35:07', '2026-05-18 04:35:07'),
(35, 145, '2026-05-18 06:47:07', '2026-05-18 12:22:27', 67310, 67385, 'uploads/trips/start_145_1779086827.jpg', 'uploads/trips/end_145_1779106947.jpg', 100.00, 70.00, '2026-05-18 06:47:07', '2026-05-18 12:22:27'),
(36, 25, '2026-05-18 06:50:36', NULL, 6546, NULL, 'uploads/trips/start_25_1779087036.jpg', NULL, 80.00, NULL, '2026-05-18 06:50:36', '2026-05-18 06:50:36'),
(37, 147, '2026-05-18 07:25:14', '2026-05-18 09:09:25', 29149, 29187, 'uploads/trips/start_147_1779089114.jpg', 'uploads/trips/end_147_1779095365.jpg', 100.00, 100.00, '2026-05-18 07:25:14', '2026-05-18 09:09:25'),
(38, 148, '2026-05-18 09:21:06', '2026-05-18 10:10:49', 35272, 35277, 'uploads/trips/start_148_1779096066.jpg', 'uploads/trips/end_148_1779099049.jpg', 30.00, 30.00, '2026-05-18 09:21:06', '2026-05-18 10:10:49'),
(39, 149, '2026-05-18 10:50:57', '2026-05-18 10:52:55', 34271, 34282, 'uploads/trips/start_149_1779101457.jpg', 'uploads/trips/end_149_1779101575.jpg', 60.00, 100.00, '2026-05-18 10:50:57', '2026-05-18 10:52:55'),
(40, 150, '2026-05-18 10:59:56', '2026-05-18 11:28:21', 35277, 52285, 'uploads/trips/start_150_1779101996.jpg', 'uploads/trips/end_150_1779103701.jpg', 30.00, 100.00, '2026-05-18 10:59:56', '2026-05-18 11:28:21'),
(41, 151, '2026-05-18 11:46:25', '2026-05-18 12:17:17', 29187, 29192, 'uploads/trips/start_151_1779104785.jpg', 'uploads/trips/end_151_1779106637.jpg', 100.00, 100.00, '2026-05-18 11:46:25', '2026-05-18 12:17:17'),
(42, 153, '2026-05-19 06:17:06', '2026-05-19 06:44:43', 11915, 11924, 'uploads/trips/start_153_1779171426.jpg', 'uploads/trips/end_153_1779173083.jpg', 70.00, 100.00, '2026-05-19 06:17:06', '2026-05-19 06:44:43'),
(43, 154, '2026-05-19 06:52:27', '2026-05-19 12:03:39', 67385, 67487, 'uploads/trips/start_154_1779173547.jpg', 'uploads/trips/end_154_1779192219.jpg', 70.00, 50.00, '2026-05-19 06:52:27', '2026-05-19 12:03:39'),
(44, 155, '2026-05-19 07:06:49', '2026-05-19 07:33:47', 43155, 43167, 'uploads/trips/start_155_1779174409.jpg', 'uploads/trips/end_155_1779176027.jpg', 90.00, 100.00, '2026-05-19 07:06:49', '2026-05-19 07:33:47'),
(45, 156, '2026-05-19 08:13:43', '2026-05-19 09:19:22', 10066, 10076, 'uploads/trips/start_156_1779178423.jpg', 'uploads/trips/end_156_1779182362.jpg', 30.00, 100.00, '2026-05-19 08:13:43', '2026-05-19 09:19:22'),
(46, 157, '2026-05-19 10:08:07', '2026-05-19 10:36:40', 40609, 40617, 'uploads/trips/start_157_1779185287.jpg', 'uploads/trips/end_157_1779187000.jpg', 5.00, 100.00, '2026-05-19 10:08:07', '2026-05-19 10:36:40'),
(47, 146, '2026-05-19 10:19:57', NULL, 4598, NULL, 'uploads/trips/start_146_1779185997.jpg', NULL, 90.00, NULL, '2026-05-19 10:19:57', '2026-05-19 10:19:57'),
(48, 160, '2026-05-20 04:06:47', '2026-05-20 05:11:19', 241319, 241329, 'uploads/trips/start_160_1779250007.jpg', 'uploads/trips/end_160_1779253879.jpg', 40.00, 40.00, '2026-05-20 04:06:47', '2026-05-20 05:11:19'),
(49, 162, '2026-05-20 04:39:01', NULL, 17090, NULL, 'uploads/trips/start_162_1779251941.jpg', NULL, 60.00, NULL, '2026-05-20 04:39:01', '2026-05-20 04:39:01'),
(50, 164, '2026-05-20 07:01:10', '2026-05-20 08:22:37', 32379, 32387, 'uploads/trips/start_164_1779260470.jpg', 'uploads/trips/end_164_1779265357.jpg', 90.00, 100.00, '2026-05-20 07:01:10', '2026-05-20 08:22:37'),
(51, 163, '2026-05-20 10:39:17', NULL, 79026, NULL, 'uploads/trips/start_163_1779273557.jpg', NULL, 100.00, NULL, '2026-05-20 10:39:17', '2026-05-20 10:39:17'),
(52, 167, '2026-05-20 10:41:19', '2026-05-20 11:06:57', 4598, 4606, 'uploads/trips/start_167_1779273679.jpg', 'uploads/trips/end_167_1779275217.jpg', 90.00, 100.00, '2026-05-20 10:41:19', '2026-05-20 11:06:57'),
(53, 168, '2026-05-20 11:18:48', '2026-05-20 11:54:46', 67487, 67497, 'uploads/trips/start_168_1779275928.jpg', 'uploads/trips/end_168_1779278086.jpg', 50.00, 100.00, '2026-05-20 11:18:48', '2026-05-20 11:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(30) DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `recovery_key` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `name`, `email`, `role`, `email_verified_at`, `password`, `recovery_key`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'admin@example.com', 'admin', '2026-02-24 05:58:50', '$2y$12$8IUGdN6Y/ozW5TAk1lDlYO1QV/91Vp40l97mLRFohifk9jCFFc.D6', NULL, '9GPlrte8ElI9qDOJD6fNAVnYfLaVkiXOhYSKd2vr6SiKAIEGG32asY77kOfn', '2026-02-24 05:58:50', '2026-02-24 05:58:50'),
(12, NULL, 'Dulshan Wanigasekara', 'dulshan@explorevacations.lk', 'hr-executive', NULL, '$2y$12$A2ST8xMqsuufKmTFiTumLON.kg/zDaDfzbLPtUc0TJ3pNlKWjUw7.', NULL, 'HiuoceStGvvDgB1JypY1NyS4vOlcbB3TfvTog4pSuS17TE2N2C2NrcYDFuAu', '2026-03-13 14:43:13', '2026-03-13 14:43:13'),
(15, 10, 'Test1 Test2', 'test@gmail.com', 'user', NULL, '$2y$12$YMpbbYfhKjO9/ebtovY/JuTYB1gLXcgaHC9GalupPr53WBDN.6xUq', 'UDANTHA', NULL, '2026-03-18 11:29:18', '2026-03-18 08:24:51'),
(16, 11, 'Shermal', 'shermal@explorevacations.lk', 'user', NULL, '$2y$12$aTycm3Y49lelDFcVRBAvDeP06BUn97AYK1JH1zKn6CXxrgXkXvZbS', 'SHERMAL', NULL, '2026-03-24 17:43:08', '2026-05-14 13:18:03'),
(19, 14, 'Ralston', 'gm@explorevacations.lk', 'user', NULL, '$2y$12$P6HhbPIqDuxJe.1Qn3yA7uaomGE/Sa0MusvFt9xtzDC0aF8yd6Ciq', 'MELISSA', NULL, '2026-03-29 17:45:46', '2026-05-12 08:01:50'),
(22, 17, 'Mihiran', 'digitalmarketing@explorevacations.lk', 'user', NULL, '$2y$12$0TyAMuVDQH47RLExSnio0ee21ZKUSQ4GZfSnvhuC2DRM1BksMOV56', 'MIHIRAN', NULL, '2026-03-29 19:44:11', '2026-04-02 06:38:14'),
(23, 18, 'Hansi', 'finance@platinumdrive.lk', 'user', NULL, '$2y$12$7WTLfwnhFrxSu9TnOwGelO25mXDguYvjE3xuZdAHN/GUWmMWu7clO', 'HANSIKA', NULL, '2026-03-29 19:51:51', '2026-05-20 09:37:47'),
(24, 19, 'Srimal kamaral', 'it@explorevacations.lk', 'user', NULL, '$2y$12$BIYXf6vJ4zj0XxOycQroduc3PGGj2Rf5s4Xtyz8mmUE13HOpxYYcC', 'SRIMAL', NULL, '2026-03-29 20:08:31', '2026-04-02 18:45:53'),
(25, 20, 'Deshan', 'deshan@srilankarentacar.com', 'user', NULL, '$2y$12$VfjuiEvGWgDFjyFSWiC0kO7PFmzodOXgyDULSKAK3SXIewyGYwBYW', 'DESHAN', NULL, '2026-03-29 20:18:52', '2026-04-02 07:03:54'),
(26, 21, 'Nilantha', 'fleet@srilankarentacar.lk', 'user', NULL, '$2y$12$f8cph3scMMZuVxmYRXpV/ewYTJ5J7E37X1j/eo2QXcZyUVsd.I.wm', 'KNKANTHONY', NULL, '2026-03-29 20:30:03', '2026-04-02 11:16:00'),
(29, 24, 'Navodya  Divyanjali', 'navoda@explorevacations.lk', 'user', NULL, '$2y$12$Ai5mHh11Kg9rV30j9Dor4e3H5mha6i031sONiHLGYHLnOjIw3m.Xq', 'HEYTHERE', NULL, '2026-03-30 12:55:35', '2026-03-31 04:26:18'),
(30, 25, 'Yuwanee Ahinsika', 'Yuwanee@explorevacations.lk', 'user', NULL, '$2y$12$IzarDrQBfMaVn9QTPAIQk.5Frr9ZUTeYIRpyB29g.g8oVM47FL3rm', 'YUWANEE', NULL, '2026-03-30 13:01:57', '2026-05-05 17:08:34'),
(31, 26, 'Induru Udantha', 'udantha@explorevacations.lk', 'user', NULL, '$2y$12$5wir2XCeUCfDT2z.R7uOZenRrMBhJGAb.ltepzZUXl9Mus54Qdiii', 'UDANTHA', NULL, '2026-03-30 13:09:10', '2026-04-02 04:14:45'),
(32, 27, 'Thisaru', 'nadeeshana@explorevacations.lk', 'user', NULL, '$2y$12$5H5aU8oH1UT3wLVibmgS5eTkNozPAH7SwW9a1gzXkGlIjfpx2havu', 'THISARU', NULL, '2026-03-30 13:25:51', '2026-04-02 04:49:06'),
(33, 28, 'Hasitha Chandrasekara', 'hasitha@explorevacations.lk', 'user', NULL, '$2y$12$85O2LGVYXoJLB0vOsashx.g7mH8o/IFFoTqNUEd4fYueWuxPrUm2m', 'HASITHA', NULL, '2026-03-30 14:13:56', '2026-04-02 05:16:09'),
(34, 29, 'Primali Perera', 'acc.ex@explorevacations.lk', 'user', NULL, '$2y$12$Q9xdvxQ2Y4Tt1sE63f/GaOlt69Yr.h/zqIg/WtJpAQmR4LuGHS91a', 'PRIMALI', NULL, '2026-03-30 14:31:47', '2026-04-02 07:02:28'),
(35, 30, 'Shalinika Nilakshi', 'acc.ass@explorevacations.lk', 'user', NULL, '$2y$12$TCYmjY/JjfoIBuikTnelRuTZilQroVBq.kmZVexWrSxScnSOWFsBi', 'NILAKSHI', NULL, '2026-03-30 18:02:38', '2026-04-02 06:56:31'),
(36, 31, 'Tilmi Nimasha', 'acc.ass@eliterentacar.lk', 'user', NULL, '$2y$12$9TCcP927LLWo9KxYjtHhnOUs9P/FcdW3nm6lOAR1jloJAS76ToPHy', NULL, NULL, '2026-03-30 18:12:08', '2026-03-30 18:12:08'),
(37, 32, 'Sewmini', 'sewmini@explorevacations.lk', 'user', NULL, '$2y$12$JxCzma.xtMzVeYwNVnPY0eZ9WvbWJSAsYSKd0GQUPI4lBRXRg3YRW', NULL, NULL, '2026-03-30 18:22:59', '2026-03-30 18:22:59'),
(38, 33, 'Dewmi Sanjana', 'dewmi.sanjana@explorevacations.lk', 'user', NULL, '$2y$12$esvVMW7J.hPgxCpJWRQSGudmfOcOz6HBFxLvi9v8Ye53Fi3wmYbGq', NULL, NULL, '2026-03-30 18:38:11', '2026-03-30 18:38:11'),
(39, NULL, 'ewr ewr', 'tharindu@gmail.com', 'user', NULL, '$2y$12$wwROtqxK0L6AgdD8SquMxOihgrEDu6X2Y.5st0IJVEjFR3ln9ykJ2', 'THARINDU', NULL, '2026-03-31 11:44:42', '2026-05-19 04:55:41'),
(40, 35, 'Thimansa Victoria', 'victoria@explorevacations.lk', 'user', NULL, '$2y$12$KCdkohu3KLA8yraiI0Ei7OY8m7ehOZOWE7kBP4Fy3a24mM9frKhMm', 'THIMANSA', NULL, '2026-03-31 11:47:04', '2026-05-19 04:49:00'),
(41, 36, 'Sankalpana Arunasiri', 'rates@eliterentacar.lk', 'user', NULL, '$2y$12$3Y9S64kbrVmHj81XJZ6xEem8oiZBZUTlHq7yYmKlfK1fT47RPiX/q', 'SANKALPANA', NULL, '2026-03-31 12:05:29', '2026-05-14 06:06:22'),
(42, 37, 'Kavinda Sandagomi', 'kavinda@srilankarentacar.com', 'user', NULL, '$2y$12$z1Xb5n6jUcCV.KlCKKFt8.N8v7ixZ4viX25mOmlQBXTNAuk1PCUum', 'KAVINDA', NULL, '2026-03-31 12:32:10', '2026-05-11 12:51:32'),
(43, 38, 'Sanduni Guyes', 'Sandunig@srilankarentacar.com', 'user', NULL, '$2y$12$vbzNscKCwT1WJsVgcJHGqeIUcrtw8G8Nuboo5J7JDUc9sZZBPMwG6', 'SANDUNIGUYES', NULL, '2026-03-31 17:04:46', '2026-05-15 09:54:25'),
(44, 39, 'Anton Niroshan', 'niroshan@srilankarentacar.lk', 'user', NULL, '$2y$12$MvNQyJcwf5/Kx0TWewFoFeP3PtTAgfcmY2ep/.mdj.uWaS4q4Kfte', 'BINGOAN', NULL, '2026-03-31 17:24:24', '2026-04-02 06:37:47'),
(45, 40, 'Dilan Damitha', 'dilan@srilankarentacar.com', 'user', NULL, '$2y$12$hPHIH1Y5sKA/KcBXSYqsquEPhyEEyRtu67MCg/M0A7.Y1DOn2FZA6', 'DIYONL', NULL, '2026-03-31 17:38:30', '2026-05-07 13:00:02'),
(46, 41, 'Lakshika', 'lakshika@srilankarentacar.com', 'user', NULL, '$2y$12$8s4OPsSLDqnUOYDkIwcBGeTpDZ9Q8d1yM26jhpnW4o9oikRLJV4uC', 'LAKSHIKAJAYAKUMAR', NULL, '2026-03-31 17:52:15', '2026-04-02 17:15:10'),
(47, 42, 'Dilmi Fernando', 'dilmi@srilankarentacar.com', 'user', NULL, '$2y$12$MN6HckF.n5fLLtQxw8fMleulyl8o5eTJyKdLvBfCxIzagK4C8j/Em', 'FERNANDO', NULL, '2026-03-31 18:06:48', '2026-04-02 07:00:05'),
(48, 43, 'Sameera  Dilshan', 'sameera@srilankarentacar.lk', 'user', NULL, '$2y$12$NHnTENoHUC3g5QLJtrhqpeimCzoIYDJ388SULOudISf1f2BlSxVzq', 'DILSHAN', NULL, '2026-03-31 19:41:34', '2026-05-08 10:35:48'),
(49, 44, 'Krishan Dominic', 'anil@srilankarentacar.com', 'user', NULL, '$2y$12$8bOch/wCCQEivYmISh21ZefTa3fDT/IAuk0GPCnTmaU2exu7V3rfC', 'KRISHAN', NULL, '2026-03-31 19:54:24', '2026-04-17 09:43:03'),
(50, 45, 'Dhilhara Perera', 'hr@explorevacations.lk', 'user', NULL, '$2y$12$qrGNeBWKfh2kt65o6AqE1O1MtpksbC0KmyCZlp.8ZKZjkedp7PFtK', NULL, NULL, '2026-04-01 14:07:02', '2026-04-01 14:07:02'),
(51, 46, 'Dinith Sanuka', 'admin.executive@explorevacations.lk', 'user', NULL, '$2y$12$j9lCSvvNI3iG/NyXEOiUvOat.JZjyCn5NKJW3ebq1EiEYsWy8Aq96', 'DINITH', NULL, '2026-04-01 14:26:37', '2026-04-02 08:55:27'),
(52, 47, 'Lasantha Anthony', 'lasantha@srrentacar.lk', 'user', NULL, '$2y$12$A6GctgQqQ5SqAhfusomw6uYsVdtxEYBN9laWY31dKxXJbuFrdCNju', 'LASANTHA', NULL, '2026-04-01 18:12:06', '2026-04-30 13:01:04'),
(53, 48, 'Sembu Ajith', 'ajith@srrentacar.lk', 'user', NULL, '$2y$12$91a1LUp/1IQcTmcjgF0go.g7YLeZmiif6M3eZMk7UzYyOetS4Eati', 'SAJITH', NULL, '2026-04-01 18:20:28', '2026-04-17 10:21:16'),
(54, 49, 'Kapila Silva', 'Kapila@srrentacar.lk', 'user', NULL, '$2y$12$78kkyfQO7y3aZBWfRDxo8u8yVGFR0od8IoWKfXYWNpHnCybiGZVwW', 'KAPILA', NULL, '2026-04-01 18:25:34', '2026-04-06 05:28:28'),
(55, 50, 'Sahan Mendis', 'sahan@srrentacar.lk', 'user', NULL, '$2y$12$rP3F/yjniRzr8rp.ldsnS.lM88w4sxD6ID0B5IDP/No/mi1aBIpFq', 'SAJEEWANI', NULL, '2026-04-01 18:31:11', '2026-04-02 17:18:02'),
(56, 51, 'Moshin  Fernando', 'omega11410@gmail.com', 'user', NULL, '$2y$12$GhOlN96tp.kB.bwhzxg/m.2bWXhHjEIqhmNJz4uGLgFbWCsPCtJMO', 'GLENTER', NULL, '2026-04-01 19:41:59', '2026-04-27 11:11:52'),
(57, 52, 'Tharindu  Sriyan', 'tharindu19950112@gmail.com', 'user', NULL, '$2y$12$LDuJhWia1WY8rUFeE5N9vu7ULfsTC9RHLKdqOCi7CpQwLSAvfSt4S', 'THARINDU', NULL, '2026-04-01 20:22:40', '2026-05-19 04:59:42'),
(58, 53, 'Sujeewa Amarasiri', 'sujeewa@srrentacar.lk', 'user', NULL, '$2y$12$nClZfDszq/HnxLvnSanj1.ZcWSyOY9LhUsWT8LMn7lC1A4jI2BaC2', 'SUJEEEWEWE', NULL, '2026-04-01 22:21:28', '2026-04-02 05:26:30'),
(59, 54, 'Roshan Pradeep', 'roshan@srentacar.lk', 'user', NULL, '$2y$12$OA6G0gxwrfmLcXF/aCAcM.abv85RC1ZB7.im4C9GqGI08Uy.EuFUy', 'ROSHAN', NULL, '2026-04-01 22:30:42', '2026-04-02 05:38:02'),
(60, 55, 'Lalin Amith', 'procurement@explorevacations.lk', 'user', NULL, '$2y$12$iN2lamRG5me/2vJl75olDeeVMr9BfJYSINsEt71kCZrX3QVUNfO.O', 'LALINAMITHA', NULL, '2026-04-01 22:50:46', '2026-05-20 06:38:35'),
(61, 56, 'Lankesh De Silva', 'lankesh@explorevacations.lk', 'user', NULL, '$2y$12$K3RZQb1BXsN4jRdZqpkQeu5xQmCwcVDnbaHwZGlj444ctfMh64p82', 'LANKESH', NULL, '2026-04-01 22:59:51', '2026-05-14 08:28:59'),
(62, 57, 'Nipun Watawala', 'Nipun@explorevacations.lk', 'user', NULL, '$2y$12$Gdxu6yEmwJ/J/hUIooT3Wum7tUYGK8W/qENLVJeQWIghuWy/Gf6se', NULL, NULL, '2026-04-01 23:11:24', '2026-04-01 23:11:24'),
(63, 58, 'Milan Rodrigo', 'milan@explorevacations.lk', 'user', NULL, '$2y$12$P1y4PhhAYE2.mGr3.0OsJOpgxaobM5l6nph9j0zYjTjNnjp6FBvq2', NULL, NULL, '2026-04-01 23:39:53', '2026-04-01 23:39:53'),
(64, 59, 'Tharuka Sewwandi', 'travels@explorevacations.lk', 'user', NULL, '$2y$12$GWGeZYgE5/DT17ko6dt.veAdtp3mPTwKKxA4r3.1xmOQuu0jW9Gr2', 'SEWWANDI', NULL, '2026-04-01 23:48:12', '2026-04-02 05:43:34'),
(65, 60, 'Keshika', 'reservations@explorevacations.lk', 'user', NULL, '$2y$12$zEztWjYWt2A.xofIbIYwoOIcA7SzawgWR1FtaU.CiFFv7HpFK6OyO', 'KESHIKA', NULL, '2026-04-01 23:56:04', '2026-05-19 06:12:46'),
(66, 61, 'Lakshitha  Sandaruwan', 'Lakshitha@explorevacations.lk', 'user', NULL, '$2y$12$dQ8xRVU2iC3WTvzew8JDZOb9Db7ar3jXqCi50dAV7af2NmpaX4ThK', 'DILUMSHA', NULL, '2026-04-02 00:05:53', '2026-05-11 06:16:16'),
(67, 62, 'Shama Neranjala', 'shama@explorevacations.lk', 'user', NULL, '$2y$12$OdM0XhmOWRrKN9q7U/EAmO0YqbIXnVZ8d65PgiuD8yR2kHQ50DpI6', NULL, NULL, '2026-04-02 00:11:36', '2026-04-02 00:11:36'),
(68, 63, 'Shaun Perera', 'shaun@eliterentacar.lk', 'user', NULL, '$2y$12$g57EH228lZLOm.cMGeJujehuGlcU3XH3MqH1C8o0UB.8L7AL607A6', NULL, NULL, '2026-04-02 00:20:04', '2026-04-02 00:20:04'),
(69, 64, 'Pubudu Wickramasinghe', 'asst.manager@eliterentacar.lk', 'user', NULL, '$2y$12$prJfnXZMQjaaGlK9UqF0ueVGP/5zbBZLBzxOCdPxGrvFMwx7/XTs6', 'UTHPALA', NULL, '2026-04-02 00:37:36', '2026-04-02 05:21:18'),
(70, 65, 'Jagath Wijesingha', 'Jagath@eliterentacar.lk', 'user', NULL, '$2y$12$lCzGEQYfa2NgCZHpDJZI9OMzoKjWNcc4WioLrJqIaGMKmHVnQrAMO', 'JAGATH', NULL, '2026-04-02 00:50:46', '2026-05-13 12:30:21'),
(71, 66, 'Lashen Dilash', 'lashen@eliterentacar.lk', 'user', NULL, '$2y$12$EIHcB4Cpq2iYQp1S6vfRqOTBj0wxEPCSlaS3vhupb1Zj1yQsyhuAq', 'LASHENDILASH', NULL, '2026-04-02 00:56:05', '2026-05-20 07:43:41'),
(72, 67, 'Wishvajith   Perera', 'wishwajith@eliterentacar.lk', 'user', NULL, '$2y$12$1jzcMjd7M4Ie.TuQzf5ft.SY3R6Z6pRDgwp12Uh3JI0riwKu5kgly', 'WISHVAJITH', NULL, '2026-04-02 01:06:15', '2026-04-07 14:33:22'),
(73, 68, 'Prasad De Silva', 'desilva@srrentacar.lk', 'user', NULL, '$2y$12$nbPFHkm44QI.8Yh28tpbfu6b3YrsfVk4VN13cFC9IFycCpN8uOB/2', NULL, NULL, '2026-04-02 05:34:23', '2026-04-02 05:34:23'),
(74, 69, 'Ravindu Niyangoda', 'ravindu@srrentacar.lk', 'user', NULL, '$2y$12$EQAYft6dTK3dEUn2G8LLwOqdXl6k6RPmtJ/WMw1XkPjeOIyU7I30y', 'RAVINDU', NULL, '2026-04-02 05:43:15', '2026-04-02 06:59:37'),
(75, 70, 'Boniface Mangala', 'boni@srrentacar.lk', 'user', NULL, '$2y$12$.QyxJUeGDSUN7XD5QiHad.wGiXjTc5GwVCgVq.AQGS0liaKbxBIhS', 'BONISRRENTACARLK', NULL, '2026-04-02 05:50:32', '2026-05-14 05:59:03'),
(76, 71, 'Dicsion Kumara', 'dicsion@srrentacar.lk', 'user', NULL, '$2y$12$taLWNZMueD9vnw.FJZhI5OJTq82vmP4GKGiB3v2S8wLnlxp1RSXOO', NULL, NULL, '2026-04-02 05:56:36', '2026-04-02 05:56:36'),
(77, 72, 'Heshan Sandaruwan', 'heshan@srilankarentacar.com', 'user', NULL, '$2y$12$N5bW0VLU0g4Zw1YuT4lzOOi8K0kcFX0Kkwee90WTfeI8HFUXRvqeq', 'HESHAN', NULL, '2026-04-02 06:03:11', '2026-04-10 13:19:12'),
(78, 73, 'Chamara Grero', 'chamara@srentacar.lk', 'user', NULL, '$2y$12$ngS2mmSnnw1EYzuWAMr1yu42cFeaBm.rbOOyKD2xneV013uie5Ub6', 'CHAMARA', NULL, '2026-04-02 06:11:05', '2026-04-07 07:21:11'),
(79, 74, 'Sampath Fernando', 'sampath@srrentacar.lk', 'user', NULL, '$2y$12$JbxkkMEXZQNZQhnZA4EYuuMCyG8bEWFg/3a85kLoMpFIQ/JCSQ4NG', 'SAMPATH', NULL, '2026-04-02 06:17:47', '2026-04-02 10:46:55'),
(80, 75, 'Indika Acoinas', 'indika@srrentacar.lk', 'user', NULL, '$2y$12$Y52qP7NE41sYonL28PEse.sFU/W/2h4n5oZpN5HGb7ozlVGmCHMFe', 'INDIKA', NULL, '2026-04-02 06:24:45', '2026-05-14 06:31:16'),
(81, 76, 'Rashan Gamage', 'rashan@srrentacar.lk', 'user', NULL, '$2y$12$GbnjsUwqBGPNAkPwDTa/ZuY6klF0kR87zgNcrEkAjZ40P3jS/74vK', NULL, NULL, '2026-04-02 06:32:19', '2026-04-02 06:32:19'),
(82, 77, 'Ryan Monie', 'rayan@srrentacar.lk', 'user', NULL, '$2y$12$stVVY0kASqLBKu7c3avQPeE6wzonBewSe7PHAflcdRKDCflgITe1y', 'RYANMONIE', NULL, '2026-04-02 06:38:46', '2026-05-19 13:25:39'),
(83, 78, 'Dimath Weliwitigoda', 'dimath@srrentacar.lk', 'user', NULL, '$2y$12$WKPClMtcVZljFXQj31gvnOU8NG4ra/lvt91bshULHSEC.MHa8P8yO', 'BATMAN', NULL, '2026-04-02 06:47:00', '2026-05-14 12:31:09'),
(84, 79, 'Damsak De Zoysa', 'damsak@srrentacar.lk', 'user', NULL, '$2y$12$6URb/Zx8XVEtEDCplF6QqOLHqm4YdinPqCb6BG4VD5t.DcePtkiJG', 'BATMAN', NULL, '2026-04-02 06:53:28', '2026-05-12 06:16:50'),
(85, 80, 'Gayan Fernando', 'gayan@srrentacar.lk', 'user', NULL, '$2y$12$xsgiLSWwgfYWwJRu/zLEqutmlMdvwfHJBjIbWyZSqtwBXmLQjzvDW', 'FERNANDO', NULL, '2026-04-02 06:58:53', '2026-04-02 05:39:40'),
(86, 81, 'Kumara Fernando', 'kumara@srrentacar.lk', 'user', NULL, '$2y$12$.ODIZn3uze1gPkJyyBHbvOpWI2vb.dSXmCpcaG5snycfvDQWM/hD2', 'KURUKULASOORIYA', NULL, '2026-04-02 07:05:51', '2026-04-02 11:06:02'),
(87, 82, 'Lahiru Kumara', 'lahiru@srrentacar.lk', 'user', NULL, '$2y$12$rVjqpkiTC0IAfD.sWomCBuYebnHJombysi7qcYuxapZr47KI8qUYq', 'LAHIRU', NULL, '2026-04-02 07:12:17', '2026-04-07 08:43:38'),
(88, 83, 'Ashen Fernando', 'ashen@srrentacar.lk', 'user', NULL, '$2y$12$Q9Mr2j3HqWhg.raCqY78Iu5Lf4lrpUZ8ln.UC87T5zxcPyarsaRx2', 'ASHANM', NULL, '2026-04-02 07:17:13', '2026-04-27 07:43:27'),
(89, 84, 'Dhilhara', 'dhilhara@explorevacations.lk', 'hr-executive', NULL, '$2y$12$aQLXaJrgeElybUn5Z/sDFO.mXNq0XynUMx9ff0zPZmZA7uNzbybni', 'HUMANS', 'eEhYCgpT6rMHiHRBD4oP5hBPkwSbsLs0jk8gm1Q1688nHHR4hkSYdeMOUzLc', '2026-04-16 12:05:51', '2026-05-18 06:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(5, 12, 2, NULL, NULL),
(6, 89, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_qr_search_logs`
--

CREATE TABLE `vehicle_qr_search_logs` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `preferred_name` varchar(150) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `searched_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_qr_found` tinyint(1) NOT NULL DEFAULT 0,
  `api_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_qr_search_logs`
--

INSERT INTO `vehicle_qr_search_logs` (`id`, `employee_id`, `preferred_name`, `vehicle_number`, `searched_at`, `is_qr_found`, `api_message`) VALUES
(65, 10, 'Test1 Test2', 'CBM-5687', '2026-03-19 12:26:36', 1, 'SUCCESS'),
(66, 10, 'Test1 Test2', 'CAA-6364', '2026-03-19 12:27:02', 0, 'QR_IMAGE_NOT_UPLOADED'),
(67, 10, 'Test1 Test2', 'CBM-5687', '2026-03-19 15:32:56', 1, 'SUCCESS'),
(68, 10, 'Test1 Test2', 'CAA-6364', '2026-03-24 05:59:13', 1, 'SUCCESS'),
(69, 10, 'Test1 Test2', 'PH-7503', '2026-03-25 12:48:03', 1, 'SUCCESS'),
(70, 19, 'Srimal kamaral', 'CBM-5716', '2026-03-30 16:57:07', 1, 'SUCCESS'),
(71, 24, 'Navodya  Divyanjali', 'CBM-5716', '2026-03-31 07:20:35', 1, 'SUCCESS'),
(72, 24, 'Navodya  Divyanjali', 'CBM-5700', '2026-04-02 04:14:01', 1, 'SUCCESS'),
(73, 10, 'IT Test', 'CBM-5716', '2026-04-02 04:38:21', 1, 'SUCCESS'),
(74, 53, 'Sujeewa Amarasiri', 'CAF-2700', '2026-04-02 05:36:19', 1, 'SUCCESS'),
(75, 80, 'Gayan Fernando', 'PC-1058', '2026-04-02 05:54:53', 0, 'QR_IMAGE_NOT_UPLOADED'),
(76, 80, 'Gayan Fernando', 'PH-7503', '2026-04-02 05:55:10', 1, 'SUCCESS'),
(77, 53, 'Sujeewa Amarasiri', 'NC-6222', '2026-04-02 09:22:43', 1, 'SUCCESS'),
(78, 53, 'Sujeewa Amarasiri', 'NC-6222', '2026-04-02 09:22:50', 1, 'SUCCESS'),
(79, 14, 'Ralston Sir', 'CAP-0853', '2026-04-02 11:15:38', 1, 'SUCCESS'),
(82, 55, 'Lalin Amith', 'CBV-8256', '2026-04-02 18:03:24', 1, 'SUCCESS'),
(83, 55, 'Lalin Amith', 'CBQ-8851', '2026-04-02 18:03:43', 0, 'QR_IMAGE_NOT_UPLOADED'),
(84, 55, 'Lalin Amith', 'CAP-5389', '2026-04-02 18:04:01', 0, 'QR_IMAGE_NOT_UPLOADED'),
(85, 55, 'Lalin Amith', 'CBB-8740', '2026-04-02 18:04:20', 0, 'QR_IMAGE_NOT_UPLOADED'),
(86, 55, 'Lalin Amith', 'KJ-1955', '2026-04-02 18:04:32', 0, 'QR_IMAGE_NOT_UPLOADED'),
(87, 19, 'Srimal kamaral', 'CBM-5700', '2026-04-02 18:49:38', 1, 'SUCCESS'),
(88, 53, 'Sujeewa Amarasiri', 'NC-6222', '2026-04-02 22:04:57', 1, 'SUCCESS'),
(89, 53, 'Sujeewa Amarasiri', 'NC-6222', '2026-04-02 22:05:02', 1, 'SUCCESS'),
(90, 53, 'Sujeewa Amarasiri', 'PE-6837', '2026-04-02 22:05:54', 1, 'SUCCESS'),
(91, 50, 'Sahan Mendis', 'PE-6837', '2026-04-02 22:23:26', 1, 'SUCCESS'),
(92, 50, 'Sahan Mendis', 'PE-6837', '2026-04-02 23:17:23', 1, 'SUCCESS'),
(93, 19, 'Srimal kamaral', 'CBS-9860', '2026-04-03 10:45:56', 1, 'SUCCESS'),
(94, 19, 'Srimal kamaral', 'PH-7503', '2026-04-03 10:46:39', 1, 'SUCCESS'),
(95, 19, 'Srimal kamaral', 'CBQ-8859', '2026-04-03 11:46:06', 1, 'SUCCESS'),
(96, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-04-03 13:58:46', 1, 'SUCCESS'),
(97, 79, 'Damsak De Zoysa', 'CBM-5712', '2026-04-04 01:35:47', 1, 'SUCCESS'),
(98, 80, 'Gayan Fernando', 'PC-1058', '2026-04-04 02:36:12', 0, 'QR_IMAGE_NOT_UPLOADED'),
(99, 80, 'Gayan Fernando', 'PE-6837', '2026-04-04 02:36:31', 1, 'SUCCESS'),
(100, 80, 'Gayan Fernando', 'CAP-5023', '2026-04-04 03:27:53', 1, 'SUCCESS'),
(101, 53, 'Sujeewa Amarasiri', 'CAC-6595', '2026-04-04 05:51:01', 1, 'SUCCESS'),
(102, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-04-04 05:52:41', 1, 'SUCCESS'),
(103, 19, 'Srimal kamaral', 'CAT-2967', '2026-04-04 11:45:08', 1, 'SUCCESS'),
(104, 20, 'Deshan', 'CBM-5721', '2026-04-04 14:53:05', 1, 'SUCCESS'),
(105, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-05 01:56:58', 1, 'SUCCESS'),
(106, 53, 'Sujeewa Amarasiri', 'PE-6837', '2026-04-05 04:23:43', 1, 'SUCCESS'),
(107, 39, 'Anton Niroshan', 'CBS-0872', '2026-04-05 05:01:11', 1, 'SUCCESS'),
(108, 50, 'Sahan Mendis', 'PD-9606', '2026-04-05 09:50:46', 0, 'QR_IMAGE_NOT_UPLOADED'),
(109, 50, 'Sahan Mendis', 'PE-6837', '2026-04-05 09:51:02', 1, 'SUCCESS'),
(110, 50, 'Sahan Mendis', 'PD-9606', '2026-04-05 09:51:22', 0, 'QR_IMAGE_NOT_UPLOADED'),
(111, 50, 'Sahan Mendis', 'PE-6837', '2026-04-05 09:51:39', 1, 'SUCCESS'),
(112, 39, 'Anton Niroshan', 'CBS-0872', '2026-04-06 04:26:14', 1, 'SUCCESS'),
(113, 53, 'Sujeewa Amarasiri', 'CBS-0870', '2026-04-06 05:29:22', 1, 'SUCCESS'),
(114, 49, 'Kapila Silva', 'PE-6837', '2026-04-06 05:31:27', 1, 'SUCCESS'),
(115, 49, 'Kapila Silva', 'PE-6837', '2026-04-06 15:29:58', 1, 'SUCCESS'),
(116, 49, 'Kapila Silva', 'NC-6222', '2026-04-06 15:31:39', 1, 'SUCCESS'),
(117, 49, 'Kapila Silva', 'PE-6837', '2026-04-06 18:25:56', 1, 'SUCCESS'),
(118, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-07 07:33:42', 1, 'SUCCESS'),
(119, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-07 07:36:32', 1, 'SUCCESS'),
(120, 10, 'IT Test', 'CBM-5687', '2026-04-10 05:09:20', 1, 'SUCCESS'),
(121, 10, 'IT Test', 'CBM-5687', '2026-04-10 06:34:02', 1, 'SUCCESS'),
(122, 73, 'Chamara Grero', 'CAW-3368', '2026-04-10 09:45:19', 1, 'SUCCESS'),
(123, 73, 'Chamara Grero', 'CAW-3368', '2026-04-10 09:45:44', 1, 'SUCCESS'),
(124, 72, 'Heshan Sandaruwan', 'CBM-5720', '2026-04-10 13:20:58', 1, 'SUCCESS'),
(125, 19, 'Srimal kamaral', 'CBM-5720', '2026-04-10 14:22:07', 1, 'SUCCESS'),
(126, 19, 'Srimal kamaral', 'CBM-5720', '2026-04-10 15:21:33', 1, 'SUCCESS'),
(127, 19, 'Srimal kamaral', 'CBT-4752', '2026-04-10 15:22:12', 1, 'SUCCESS'),
(128, 49, 'Kapila Silva', 'CBV-8256', '2026-04-10 17:45:09', 1, 'SUCCESS'),
(129, 50, 'Sahan Mendis', 'PC-1058', '2026-04-11 00:09:58', 0, 'QR_IMAGE_NOT_UPLOADED'),
(130, 50, 'Sahan Mendis', 'PE-6837', '2026-04-11 00:10:17', 1, 'SUCCESS'),
(131, 50, 'Sahan Mendis', 'PD-9606', '2026-04-11 00:13:56', 0, 'QR_IMAGE_NOT_UPLOADED'),
(132, 78, 'Dimath Weliwitigoda', 'CBM-5725', '2026-04-11 04:49:37', 1, 'SUCCESS'),
(133, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-11 05:42:04', 1, 'SUCCESS'),
(134, 50, 'Sahan Mendis', 'CAD-6434', '2026-04-11 05:43:09', 1, 'SUCCESS'),
(135, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-11 08:27:36', 1, 'SUCCESS'),
(136, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-11 08:35:14', 1, 'SUCCESS'),
(137, 50, 'Sahan Mendis', 'CAD-6434', '2026-04-11 08:35:31', 1, 'SUCCESS'),
(138, 50, 'Sahan Mendis', 'CBT-4752', '2026-04-11 08:35:59', 1, 'SUCCESS'),
(139, 53, 'Sujeewa Amarasiri', 'CAX-7637', '2026-04-11 20:07:31', 1, 'SUCCESS'),
(140, 19, 'Srimal kamaral', 'CBM-5700', '2026-04-12 03:47:07', 1, 'SUCCESS'),
(141, 24, 'Navodya  Divyanjali', 'CBB-8740', '2026-04-12 15:17:51', 1, 'SUCCESS'),
(142, 19, 'Srimal kamaral', 'CBB-8740', '2026-04-12 17:25:59', 1, 'SUCCESS'),
(143, 19, 'Srimal kamaral', 'CBM-5720', '2026-04-12 18:32:04', 1, 'SUCCESS'),
(144, 39, 'Anton Niroshan', 'PD-9606', '2026-04-13 05:56:33', 0, 'QR_IMAGE_NOT_UPLOADED'),
(145, 39, 'Anton Niroshan', 'PC-1058', '2026-04-13 05:56:48', 0, 'QR_IMAGE_NOT_UPLOADED'),
(146, 19, 'Srimal kamaral', 'CAK-9434', '2026-04-13 07:22:28', 0, 'QR_IMAGE_NOT_UPLOADED'),
(147, 39, 'Anton Niroshan', 'PD-9606', '2026-04-14 03:52:54', 0, 'QR_IMAGE_NOT_UPLOADED'),
(148, 39, 'Anton Niroshan', 'CBV-8256', '2026-04-14 03:53:18', 1, 'SUCCESS'),
(149, 39, 'Anton Niroshan', 'CAX-7637', '2026-04-14 04:34:05', 1, 'SUCCESS'),
(150, 49, 'Kapila Silva', 'CBM-5700', '2026-04-15 13:38:38', 1, 'SUCCESS'),
(151, 49, 'Kapila Silva', 'PE-6837', '2026-04-17 17:41:30', 1, 'SUCCESS'),
(152, 49, 'Kapila Silva', 'CBS-9860', '2026-04-18 05:53:48', 1, 'SUCCESS'),
(153, 53, 'Sujeewa Amarasiri', 'CBM-5672', '2026-04-19 01:00:00', 1, 'SUCCESS'),
(154, 49, 'Kapila Silva', 'CBD-8266', '2026-04-19 02:23:00', 1, 'SUCCESS'),
(155, 53, 'Sujeewa Amarasiri', 'CAX-7637', '2026-04-20 02:59:08', 1, 'SUCCESS'),
(156, 21, 'Nilantha', 'CBB-8740', '2026-04-20 12:12:48', 1, 'SUCCESS'),
(157, 39, 'Anton Niroshan', 'PC-1058', '2026-04-20 14:55:32', 0, 'QR_IMAGE_NOT_UPLOADED'),
(158, 21, 'Nilantha', 'PC-1058', '2026-04-21 04:04:39', 0, 'QR_IMAGE_NOT_UPLOADED'),
(159, 39, 'Anton Niroshan', 'KF-0330', '2026-04-21 12:05:57', 1, 'SUCCESS'),
(160, 39, 'Anton Niroshan', 'NC-6222', '2026-04-21 12:06:27', 1, 'SUCCESS'),
(161, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-04-22 06:02:38', 1, 'SUCCESS'),
(162, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-04-22 18:33:56', 1, 'SUCCESS'),
(163, 10, 'IT Test', 'CBM-5687', '2026-04-23 13:02:05', 1, 'SUCCESS'),
(164, 19, 'Srimal kamaral', 'CBS-9860', '2026-04-23 14:47:48', 1, 'SUCCESS'),
(165, 50, 'Sahan Mendis', 'PD-7635', '2026-04-24 02:57:41', 1, 'SUCCESS'),
(166, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-04-25 03:38:50', 1, 'SUCCESS'),
(167, 50, 'Sahan Mendis', 'CBM-5721', '2026-04-25 09:03:33', 1, 'SUCCESS'),
(168, 50, 'Sahan Mendis', 'CBM-5721', '2026-04-25 09:37:36', 1, 'SUCCESS'),
(169, 50, 'Sahan Mendis', 'CBM-5714', '2026-04-25 09:39:23', 1, 'SUCCESS'),
(170, 50, 'Sahan Mendis', 'CBM-5721', '2026-04-26 04:00:09', 1, 'SUCCESS'),
(171, 53, 'Sujeewa Amarasiri', 'CBM-5672', '2026-04-26 06:04:41', 1, 'SUCCESS'),
(172, 80, 'Gayan Fernando', 'CBV-8256', '2026-04-26 06:23:16', 1, 'SUCCESS'),
(173, 39, 'Anton Niroshan', 'CBM-5706', '2026-04-26 11:50:55', 1, 'SUCCESS'),
(174, 50, 'Sahan Mendis', 'CBS-0874', '2026-04-26 12:16:56', 1, 'SUCCESS'),
(175, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-04-27 06:14:13', 1, 'SUCCESS'),
(176, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-04-27 13:44:32', 1, 'SUCCESS'),
(177, 21, 'Nilantha', 'CBT-4751', '2026-04-27 14:18:23', 1, 'SUCCESS'),
(178, 21, 'Nilantha', 'CBT-4751', '2026-04-27 14:32:30', 1, 'SUCCESS'),
(179, 21, 'Nilantha', 'CBT-4751', '2026-04-27 14:37:31', 1, 'SUCCESS'),
(180, 21, 'Nilantha', 'CBT-4751', '2026-04-27 16:17:58', 1, 'SUCCESS'),
(181, 19, 'Srimal kamaral', 'CBS-9860', '2026-04-27 17:54:18', 1, 'SUCCESS'),
(182, 19, 'Srimal kamaral', 'CBT-4752', '2026-04-27 17:54:34', 1, 'SUCCESS'),
(183, 49, 'Kapila Silva', 'CBD-8266', '2026-04-28 02:54:07', 1, 'SUCCESS'),
(184, 50, 'Sahan Mendis', 'CAX-7637', '2026-04-28 12:13:14', 1, 'SUCCESS'),
(185, 50, 'Sahan Mendis', 'CBM-5720', '2026-04-28 12:13:42', 1, 'SUCCESS'),
(186, 49, 'Kapila Silva', 'CBM-5684', '2026-04-28 18:25:23', 1, 'SUCCESS'),
(187, 53, 'Sujeewa Amarasiri', 'CBQ-9481', '2026-04-29 08:25:13', 1, 'SUCCESS'),
(188, 53, 'Sujeewa Amarasiri', 'CBQ-9481', '2026-04-29 15:08:24', 1, 'SUCCESS'),
(189, 49, 'Kapila Silva', 'CBM-5676', '2026-04-29 21:56:43', 1, 'SUCCESS'),
(190, 49, 'Kapila Silva', 'CBM-5676', '2026-04-30 00:28:22', 1, 'SUCCESS'),
(191, 49, 'Kapila Silva', 'CBM-5676', '2026-04-30 03:21:43', 1, 'SUCCESS'),
(192, 50, 'Sahan Mendis', 'CBM-5708', '2026-04-30 04:25:13', 1, 'SUCCESS'),
(193, 50, 'Sahan Mendis', 'PD-9606', '2026-05-01 05:25:51', 1, 'SUCCESS'),
(194, 49, 'Kapila Silva', 'CAW-6119', '2026-05-01 07:47:17', 0, 'QR_IMAGE_NOT_UPLOADED'),
(195, 53, 'Sujeewa Amarasiri', 'CBM-5676', '2026-05-01 10:02:42', 1, 'SUCCESS'),
(196, 53, 'Sujeewa Amarasiri', 'CAE-4853', '2026-05-01 14:18:23', 1, 'SUCCESS'),
(197, 49, 'Kapila Silva', 'KJ-1955', '2026-05-02 17:22:21', 1, 'SUCCESS'),
(198, 80, 'Gayan Fernando', 'PE-6837', '2026-05-02 19:09:23', 1, 'SUCCESS'),
(199, 53, 'Sujeewa Amarasiri', 'CAB-0744', '2026-05-03 00:46:00', 1, 'SUCCESS'),
(200, 19, 'Srimal kamaral', 'CBM-5700', '2026-05-03 02:20:02', 1, 'SUCCESS'),
(201, 49, 'Kapila Silva', 'KJ-1955', '2026-05-03 02:31:01', 1, 'SUCCESS'),
(202, 50, 'Sahan Mendis', 'CBM-5708', '2026-05-03 03:33:53', 1, 'SUCCESS'),
(203, 48, 'Sembu Ajith', 'CAB-0744', '2026-05-03 04:27:36', 1, 'SUCCESS'),
(204, 49, 'Kapila Silva', 'KJ-1955', '2026-05-03 06:41:32', 1, 'SUCCESS'),
(205, 48, 'Sembu Ajith', 'CAB-0744', '2026-05-04 03:40:00', 1, 'SUCCESS'),
(206, 48, 'Sembu Ajith', 'CAB-0744', '2026-05-04 03:40:07', 1, 'SUCCESS'),
(207, 50, 'Sahan Mendis', 'CBM-5708', '2026-05-04 06:14:39', 1, 'SUCCESS'),
(208, 53, 'Sujeewa Amarasiri', 'CAX-7637', '2026-05-05 04:41:22', 1, 'SUCCESS'),
(209, 53, 'Sujeewa Amarasiri', 'CAX-7637', '2026-05-05 10:44:48', 1, 'SUCCESS'),
(210, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-05-06 18:05:52', 1, 'SUCCESS'),
(211, 47, 'Lasantha Anthony', 'CBM-5700', '2026-05-07 06:26:44', 1, 'SUCCESS'),
(212, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-05-07 14:10:02', 1, 'SUCCESS'),
(213, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-05-07 14:15:14', 1, 'SUCCESS'),
(214, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-08 11:40:51', 1, 'SUCCESS'),
(215, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-08 11:41:16', 1, 'SUCCESS'),
(216, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-08 11:42:43', 1, 'SUCCESS'),
(217, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-05-08 15:54:22', 1, 'SUCCESS'),
(218, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-08 16:09:04', 1, 'SUCCESS'),
(219, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-08 21:38:29', 1, 'SUCCESS'),
(220, 50, 'Sahan Mendis', 'PD-9606', '2026-05-09 07:56:28', 1, 'SUCCESS'),
(221, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-05-10 04:58:49', 1, 'SUCCESS'),
(222, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-05-11 00:08:42', 1, 'SUCCESS'),
(223, 19, 'Srimal kamaral', 'CBM-5720', '2026-05-11 13:31:46', 1, 'SUCCESS'),
(224, 53, 'Sujeewa Amarasiri', 'CAP-0853', '2026-05-12 08:15:42', 1, 'SUCCESS'),
(225, 79, 'Damsak De Zoysa', 'CBT-4751', '2026-05-13 06:22:21', 1, 'SUCCESS'),
(226, 79, 'Damsak De Zoysa', 'CBF-6651', '2026-05-13 07:25:28', 1, 'SUCCESS'),
(227, 79, 'Damsak De Zoysa', 'CBM-5709', '2026-05-13 07:49:52', 1, 'SUCCESS'),
(228, 79, 'Damsak De Zoysa', 'CAE-4853', '2026-05-13 08:14:28', 1, 'SUCCESS'),
(229, 79, 'Damsak De Zoysa', 'CBT-2241', '2026-05-13 09:28:53', 0, 'QR_IMAGE_NOT_UPLOADED'),
(230, 79, 'Damsak De Zoysa', 'CBM-5684', '2026-05-13 09:29:21', 1, 'SUCCESS'),
(231, 79, 'Damsak De Zoysa', 'CBQ-8861', '2026-05-13 09:58:54', 1, 'SUCCESS'),
(232, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-14 02:09:58', 1, 'SUCCESS'),
(233, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-14 02:11:42', 1, 'SUCCESS'),
(234, 50, 'Sahan Mendis', 'CBM-5708', '2026-05-14 02:12:24', 1, 'SUCCESS'),
(235, 53, 'Sujeewa Amarasiri', 'CBT-4753', '2026-05-14 03:50:26', 1, 'SUCCESS'),
(236, 53, 'Sujeewa Amarasiri', 'CBT-4753', '2026-05-14 03:50:37', 1, 'SUCCESS'),
(237, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-05-14 03:53:52', 1, 'SUCCESS'),
(238, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-05-14 07:05:24', 1, 'SUCCESS'),
(239, 79, 'Damsak De Zoysa', 'PC-1058', '2026-05-14 08:07:27', 1, 'SUCCESS'),
(240, 79, 'Damsak De Zoysa', 'PD-7635', '2026-05-14 09:40:52', 1, 'SUCCESS'),
(241, 79, 'Damsak De Zoysa', 'CBT-4753', '2026-05-15 03:41:43', 1, 'SUCCESS'),
(242, 79, 'Damsak De Zoysa', 'CBT-4752', '2026-05-15 03:50:13', 1, 'SUCCESS'),
(243, 79, 'Damsak De Zoysa', 'CBV-8254', '2026-05-15 05:36:57', 1, 'SUCCESS'),
(244, 79, 'Damsak De Zoysa', 'KW-4867', '2026-05-15 07:19:21', 0, 'QR_IMAGE_NOT_UPLOADED'),
(245, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-05-15 07:19:57', 1, 'SUCCESS'),
(246, 79, 'Damsak De Zoysa', 'CBM-5703', '2026-05-15 11:15:14', 1, 'SUCCESS'),
(247, 79, 'Damsak De Zoysa', 'CBM-5703', '2026-05-15 11:15:17', 1, 'SUCCESS'),
(248, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-05-15 15:01:17', 1, 'SUCCESS'),
(249, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-05-15 15:01:23', 1, 'SUCCESS'),
(250, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-05-16 05:14:05', 1, 'SUCCESS'),
(251, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-05-16 05:46:08', 1, 'SUCCESS'),
(252, 53, 'Sujeewa Amarasiri', 'PE-6837', '2026-05-16 05:56:36', 1, 'SUCCESS'),
(253, 53, 'Sujeewa Amarasiri', 'PC-1058', '2026-05-16 05:57:17', 1, 'SUCCESS'),
(254, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-05-17 02:11:57', 1, 'SUCCESS'),
(255, 53, 'Sujeewa Amarasiri', 'CAO-9712', '2026-05-17 03:44:26', 1, 'SUCCESS'),
(256, 53, 'Sujeewa Amarasiri', 'CAO-9712', '2026-05-17 03:44:29', 1, 'SUCCESS'),
(257, 53, 'Sujeewa Amarasiri', 'CBM-5721', '2026-05-17 05:17:24', 1, 'SUCCESS'),
(258, 53, 'Sujeewa Amarasiri', 'PE-6837', '2026-05-17 08:36:12', 1, 'SUCCESS'),
(259, 21, 'Nilantha', 'CBM-5703', '2026-05-17 12:39:08', 1, 'SUCCESS'),
(260, 21, 'Nilantha', 'CBM-5703', '2026-05-17 12:39:47', 1, 'SUCCESS'),
(261, 21, 'Nilantha', 'CBB-8740', '2026-05-18 02:03:04', 1, 'SUCCESS'),
(262, 53, 'Sujeewa Amarasiri', 'CAO-9712', '2026-05-18 08:30:53', 1, 'SUCCESS'),
(263, 53, 'Sujeewa Amarasiri', 'CAO-9712', '2026-05-18 08:31:03', 1, 'SUCCESS'),
(264, 79, 'Damsak De Zoysa', 'CBM-5718', '2026-05-18 11:07:11', 1, 'SUCCESS'),
(265, 79, 'Damsak De Zoysa', 'CBM-5715', '2026-05-18 11:09:04', 1, 'SUCCESS'),
(266, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-05-18 11:10:12', 1, 'SUCCESS'),
(267, 78, 'Dimath Weliwitigoda', 'CAO-9712', '2026-05-18 13:18:43', 1, 'SUCCESS'),
(268, 79, 'Damsak De Zoysa', 'CBS-9863', '2026-05-19 06:26:20', 1, 'SUCCESS'),
(269, 79, 'Damsak De Zoysa', 'CBV-8255', '2026-05-19 09:01:24', 1, 'SUCCESS'),
(270, 79, 'Damsak De Zoysa', 'CBM-5708', '2026-05-19 10:16:05', 1, 'SUCCESS'),
(271, 79, 'Damsak De Zoysa', 'CBQ-8859', '2026-05-19 10:23:51', 1, 'SUCCESS'),
(272, 49, 'Kapila Silva', 'CAW-6119', '2026-05-19 11:53:18', 0, 'QR_IMAGE_NOT_UPLOADED'),
(273, 49, 'Kapila Silva', 'CBV-8255', '2026-05-19 11:56:09', 1, 'SUCCESS'),
(274, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-19 12:25:22', 1, 'SUCCESS'),
(275, 83, 'Ashen Fernando', 'CBM-5724', '2026-05-19 17:48:57', 1, 'SUCCESS'),
(276, 79, 'Damsak De Zoysa', 'CBM-5703', '2026-05-20 07:25:05', 1, 'SUCCESS'),
(277, 53, 'Sujeewa Amarasiri', 'CAE-4853', '2026-05-20 07:57:03', 1, 'SUCCESS'),
(279, 79, 'Damsak De Zoysa', 'CBV-8252', '2026-05-20 10:50:09', 1, 'SUCCESS'),
(280, 79, 'Damsak De Zoysa', 'CBF-9182', '2026-05-20 11:25:04', 1, 'SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_requests`
--

CREATE TABLE `vehicle_requests` (
  `vehicle_request_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_reg_no` varchar(50) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `is_one_day` tinyint(1) NOT NULL DEFAULT 0,
  `end_date` datetime DEFAULT NULL,
  `reason` enum('Shuttle','Transport','Office','Personal') NOT NULL DEFAULT 'Shuttle',
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `destinations` text NOT NULL,
  `trip_code` varchar(50) NOT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `uq_epf_number` (`epf_number`),
  ADD UNIQUE KEY `employees_employee_code_unique` (`employee_code`),
  ADD UNIQUE KEY `employees_epf_number_unique` (`epf_number`),
  ADD KEY `idx_emp_name` (`full_name`,`preferred_name`),
  ADD KEY `idx_emp_status` (`employment_status`);

--
-- Indexes for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD PRIMARY KEY (`employee_address_id`),
  ADD KEY `idx_addr_emp` (`employee_id`);

--
-- Indexes for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD PRIMARY KEY (`bank_account_id`),
  ADD KEY `idx_bank_emp` (`employee_id`);

--
-- Indexes for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `idx_comp_emp` (`employee_id`),
  ADD KEY `idx_comp_effective` (`employee_id`,`effective_from`);

--
-- Indexes for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  ADD PRIMARY KEY (`component_id`),
  ADD KEY `idx_comp_comp` (`comp_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `idx_contact_emp` (`employee_id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`employee_document_id`),
  ADD KEY `idx_doc_emp` (`employee_id`),
  ADD KEY `idx_doc_type` (`employee_id`,`doc_type`);

--
-- Indexes for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  ADD PRIMARY KEY (`emergency_contact_id`),
  ADD KEY `idx_emg_emp` (`employee_id`);

--
-- Indexes for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `idx_exp_emp` (`employee_id`);

--
-- Indexes for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employee_job_department_id_index` (`department_id`),
  ADD KEY `employee_job_job_title_id_index` (`job_title_id`),
  ADD KEY `employee_job_reporting_manager_id_index` (`reporting_manager_id`);

--
-- Indexes for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  ADD PRIMARY KEY (`leave_balance_id`),
  ADD UNIQUE KEY `uq_lb_emp_policy` (`employee_id`,`leave_policy_id`),
  ADD KEY `idx_lb_employee` (`employee_id`),
  ADD KEY `idx_lb_policy` (`leave_policy_id`);

--
-- Indexes for table `employee_personal_vehicle_usage`
--
ALTER TABLE `employee_personal_vehicle_usage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_yearly_leave_balance`
--
ALTER TABLE `employee_yearly_leave_balance`
  ADD PRIMARY KEY (`employee_id`,`leave_policy_id`),
  ADD KEY `employee_yearly_leave_balance_leave_policy_id_index` (`leave_policy_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`job_title_id`),
  ADD UNIQUE KEY `job_titles_name_unique` (`name`);

--
-- Indexes for table `leave_policies`
--
ALTER TABLE `leave_policies`
  ADD PRIMARY KEY (`leave_policy_id`),
  ADD UNIQUE KEY `leave_policies_name_unique` (`name`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`leave_request_id`),
  ADD KEY `idx_leave_emp_start` (`employee_id`,`leave_start_date`),
  ADD KEY `idx_leave_policy` (`leave_policy_id`),
  ADD KEY `idx_leave_status` (`status`),
  ADD KEY `idx_leave_oversee` (`oversee_member_id`);

--
-- Indexes for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  ADD PRIMARY KEY (`leave_request_document_id`),
  ADD KEY `idx_leave_req_docs` (`leave_request_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transport_services`
--
ALTER TABLE `transport_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_services_source_id_index` (`source_id`),
  ADD KEY `transport_services_employee_id_index` (`employee_id`),
  ADD KEY `transport_services_manager_id_index` (`manager_id`),
  ADD KEY `transport_services_status_index` (`status`),
  ADD KEY `transport_services_assigned_start_at_index` (`assigned_start_at`);

--
-- Indexes for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD PRIMARY KEY (`trip_detail_id`),
  ADD KEY `trip_details_transport_service_id_index` (`transport_service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_employee_id_unique` (`employee_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_id` (`employee_id`),
  ADD KEY `idx_vehicle_number` (`vehicle_number`),
  ADD KEY `idx_searched_at` (`searched_at`);

--
-- Indexes for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  ADD PRIMARY KEY (`vehicle_request_id`),
  ADD UNIQUE KEY `vehicle_requests_trip_code_unique` (`trip_code`),
  ADD KEY `vehicle_requests_manager_id_foreign` (`manager_id`),
  ADD KEY `vehicle_requests_employee_id_status_index` (`employee_id`,`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `employee_address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `bank_account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  MODIFY `comp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  MODIFY `component_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `employee_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  MODIFY `emergency_contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `experience_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  MODIFY `leave_balance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee_personal_vehicle_usage`
--
ALTER TABLE `employee_personal_vehicle_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `job_title_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `leave_policies`
--
ALTER TABLE `leave_policies`
  MODIFY `leave_policy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  MODIFY `leave_request_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transport_services`
--
ALTER TABLE `transport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `trip_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  MODIFY `vehicle_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD CONSTRAINT `employee_addresses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD CONSTRAINT `employee_bank_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  ADD CONSTRAINT `employee_compensation_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  ADD CONSTRAINT `employee_compensation_components_comp_id_foreign` FOREIGN KEY (`comp_id`) REFERENCES `employee_compensation` (`comp_id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  ADD CONSTRAINT `employee_emergency_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD CONSTRAINT `employee_experience_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD CONSTRAINT `employee_job_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  ADD CONSTRAINT `employee_job_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_job_job_title_id_foreign` FOREIGN KEY (`job_title_id`) REFERENCES `job_titles` (`job_title_id`),
  ADD CONSTRAINT `employee_job_reporting_manager_id_foreign` FOREIGN KEY (`reporting_manager_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  ADD CONSTRAINT `employee_leave_balances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_leave_balances_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`);

--
-- Constraints for table `employee_yearly_leave_balance`
--
ALTER TABLE `employee_yearly_leave_balance`
  ADD CONSTRAINT `employee_yearly_leave_balance_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_yearly_leave_balance_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`);

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leave_requests_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`),
  ADD CONSTRAINT `leave_requests_oversee_member_id_foreign` FOREIGN KEY (`oversee_member_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  ADD CONSTRAINT `leave_request_documents_leave_request_id_foreign` FOREIGN KEY (`leave_request_id`) REFERENCES `leave_requests` (`leave_request_id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD CONSTRAINT `trip_details_transport_service_id_foreign` FOREIGN KEY (`transport_service_id`) REFERENCES `transport_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  ADD CONSTRAINT `vehicle_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_requests_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
