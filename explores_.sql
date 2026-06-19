-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2026 at 11:16 AM
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
('adminerp-cache-drive_vehicle:CAI-1848', 'a:3:{s:6:\"reg_no\";s:8:\"CAI-1848\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:9:\"PRADO 150\";}', 1781869099),
('adminerp-cache-drive_vehicle:CAK-9434', 'a:3:{s:6:\"reg_no\";s:8:\"CAK-9434\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AQUA\";}', 1781868700),
('adminerp-cache-drive_vehicle:CAP-0853', 'a:3:{s:6:\"reg_no\";s:8:\"CAP-0853\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"PRIUS\";}', 1781869102),
('adminerp-cache-drive_vehicle:CAP-5023', 'a:3:{s:6:\"reg_no\";s:8:\"CAP-5023\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AQUA\";}', 1781869132),
('adminerp-cache-drive_vehicle:CAT-0620', 'a:3:{s:6:\"reg_no\";s:8:\"CAT-0620\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"AXIO\";}', 1781868702),
('adminerp-cache-drive_vehicle:CBF-9182', 'a:3:{s:6:\"reg_no\";s:8:\"CBF-9182\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:4:\"WIGO\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBG-9526', 'a:3:{s:6:\"reg_no\";s:8:\"CBG-9526\";s:4:\"make\";s:6:\"TOYOTA\";s:5:\"model\";s:5:\"PASSO\";}', 1781869102),
('adminerp-cache-drive_vehicle:CBM-5661', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5661\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781869131),
('adminerp-cache-drive_vehicle:CBM-5672', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5672\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781869103),
('adminerp-cache-drive_vehicle:CBM-5682', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5682\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBM-5683', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5683\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869103),
('adminerp-cache-drive_vehicle:CBM-5684', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5684\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781869100),
('adminerp-cache-drive_vehicle:CBM-5687', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5687\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781869133),
('adminerp-cache-drive_vehicle:CBM-5700', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5700\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781869102),
('adminerp-cache-drive_vehicle:CBM-5706', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5706\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBM-5707', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5707\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869100),
('adminerp-cache-drive_vehicle:CBM-5719', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5719\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBM-5721', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5721\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBM-5723', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-5723\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:4:\"Axia\";}', 1781868539),
('adminerp-cache-drive_vehicle:CBM-8143', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-8143\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869102),
('adminerp-cache-drive_vehicle:CBM-8155', 'a:3:{s:6:\"reg_no\";s:8:\"CBM-8155\";s:4:\"make\";s:7:\"Perodua\";s:5:\"model\";s:5:\"Bezza\";}', 1781869102),
('adminerp-cache-drive_vehicle:CBQ-8849', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-8849\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBQ-8851', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-8851\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869133),
('adminerp-cache-drive_vehicle:CBQ-9484', 'a:3:{s:6:\"reg_no\";s:8:\"CBQ-9484\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"ROOMY\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBS-0864', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-0864\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBS-0868', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-0868\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869103),
('adminerp-cache-drive_vehicle:CBS-0870', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-0870\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869103),
('adminerp-cache-drive_vehicle:CBS-0874', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-0874\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBS-9859', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9859\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781868702),
('adminerp-cache-drive_vehicle:CBS-9860', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9860\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781868701),
('adminerp-cache-drive_vehicle:CBS-9862', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9862\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBS-9863', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9863\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869101),
('adminerp-cache-drive_vehicle:CBS-9864', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9864\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869100),
('adminerp-cache-drive_vehicle:CBS-9865', 'a:3:{s:6:\"reg_no\";s:8:\"CBS-9865\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869133),
('adminerp-cache-drive_vehicle:CBT-2241', 'a:3:{s:6:\"reg_no\";s:8:\"CBT-2241\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"RAIZE\";}', 1781869133),
('adminerp-cache-drive_vehicle:CBT-4751', 'a:3:{s:6:\"reg_no\";s:8:\"CBT-4751\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869133),
('adminerp-cache-drive_vehicle:CBT-4753', 'a:3:{s:6:\"reg_no\";s:8:\"CBT-4753\";s:4:\"make\";s:6:\"JETOUR\";s:5:\"model\";s:8:\"X70 PLUS\";}', 1781869132),
('adminerp-cache-drive_vehicle:CBU-1826', 'a:3:{s:6:\"reg_no\";s:8:\"CBU-1826\";s:4:\"make\";s:6:\"Nissan\";s:5:\"model\";s:18:\"MAGNITE TEKNA PLUS\";}', 1781869103),
('adminerp-cache-drive_vehicle:CBV-4035', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-4035\";s:4:\"make\";s:6:\"SUZUKI\";s:5:\"model\";s:4:\"ALTO\";}', 1781868702),
('adminerp-cache-drive_vehicle:CBV-8252', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8252\";s:4:\"make\";s:2:\"MG\";s:5:\"model\";s:2:\"ZS\";}', 1781868702),
('adminerp-cache-drive_vehicle:CBV-8397', 'a:3:{s:6:\"reg_no\";s:8:\"CBV-8397\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:5:\"ROOMY\";}', 1781869099),
('adminerp-cache-drive_vehicle:PD-9606', 'a:3:{s:6:\"reg_no\";s:7:\"PD-9606\";s:4:\"make\";s:6:\"Toyota\";s:5:\"model\";s:3:\"KDH\";}', 1781869100),
('adminerp-cache-drive_vehicle:PE-6837', 'a:3:{s:6:\"reg_no\";s:7:\"PE-6837\";s:4:\"make\";s:6:\"Nissan\";s:5:\"model\";s:7:\"CARAVAN\";}', 1781868701);

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
-- Table structure for table `common_issues`
--

CREATE TABLE `common_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_issues`
--

INSERT INTO `common_issues` (`id`, `platform_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Login Failure', 'Unable to sign in using Active Directory credentials.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(2, 1, 'Dashboard Slow Performance', 'Financial metrics dashboard takes over 30 seconds to load.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(3, 1, 'Report Export Error', 'Receiving 500 error when exporting quarterly sales to Excel.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(4, 1, 'Access Denied / Permissions', 'Need approval to access the procurement module.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(5, 2, 'Password Reset Email Not Sent', 'Customers reporting that reset links are not arriving in their inbox.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(6, 2, 'Checkout Payment Gateway Error', 'Stripe transaction fails intermittently at checkout.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(7, 2, 'Broken Images / SSL Warnings', 'Browsers showing mixed-content warnings on product detail pages.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(8, 3, 'Guest WiFi Disconnects', 'Clients and guests getting kicked off the network every 10 minutes.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(9, 3, 'VPN Connection Timeout', 'FortiClient VPN fails to connect from home network.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(10, 3, 'Ethernet Port Inactive', 'Wall jack near desk 4B has no network activity light.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(11, 4, 'Cannot Send External Emails', 'Outgoing emails to client domains bounced back by security policy.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(12, 4, 'Outlook Desktop App Freezes', 'Outlook crashes during loading profile or syncing inbox.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(13, 4, 'Teams Video/Audio Lag', 'Experiencing high jitter and microphone cutting out during calls.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(14, 5, 'Printer Jam / Toner Low', 'The main copier on Level 3 has paper jam in tray 2.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(15, 5, 'External Monitor Not Detected', 'USB-C docking station does not display output to dual screens.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(16, 5, 'Laptop Overheating / Swollen Battery', 'Laptop trackpad is bulging or fans running constantly at 100%.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(17, 6, 'General Support Inquiry', 'General questions or assistance not falling under specific platforms.', '2026-06-09 23:56:39', '2026-06-09 23:56:39'),
(18, 6, 'Other Issue / Wrench Request', 'A custom issue. Please describe the details of the problem in full.', '2026-06-09 23:56:39', '2026-06-09 23:56:39');

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
(27, 'Administrative'),
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
  `last_updated_date` datetime NOT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `availability_status` enum('available','unavailable') DEFAULT 'available',
  `unavailable_from` date DEFAULT NULL,
  `unavailable_to` date DEFAULT NULL,
  `unavailable_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_code`, `employment_status`, `date_created`, `full_name`, `preferred_name`, `date_of_birth`, `gender`, `marital_status`, `nationality`, `blood_group`, `epf_number`, `attendance_type`, `created_by`, `last_updated_by`, `last_updated_date`, `fcm_token`, `availability_status`, `unavailable_from`, `unavailable_to`, `unavailable_reason`) VALUES
(11, 'EV-000011', 'Active', '2026-03-24 17:43:08', 'Manuweldura Anton Shermal Perera', 'Shermal Perera', '1987-07-11', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '1', '2026-04-16 09:23:29', NULL, 'available', NULL, NULL, NULL),
(14, 'EV-000014', 'Active', '2026-03-29 17:45:46', 'Ralston Aaron Josheph Gerreyn', 'Ralston Gerreyn', '1987-02-25', 'Male', 'Married', 'Sri Lankan', NULL, '36', 'Fingerprint', '12', '12', '2026-05-12 23:23:30', NULL, 'available', NULL, NULL, NULL),
(17, 'EV-000017', 'Active', '2026-03-29 19:44:11', 'Delkadura Arachchige Mihiran Rajitha Dhananjaya Silva Gunarathne', 'Mihiran', '1993-11-11', 'Male', 'Married', 'Sri Lankan', NULL, '39', 'Fingerprint', '12', '12', '2026-05-12 23:25:17', NULL, 'available', NULL, NULL, NULL),
(18, 'EV-000018', 'Active', '2026-03-29 19:51:51', 'Sundarige Chalani Hansika Fernando', 'Hansi', '1999-04-30', 'Female', 'Married', 'Sri Lankan', 'A+', '06', 'Fingerprint', '12', '1', '2026-05-25 17:52:57', NULL, 'available', NULL, NULL, NULL),
(19, 'EV-000019', 'Active', '2026-03-29 20:08:31', 'Liyanage Wasantha Srimal Kamaral', 'Srimal kamaral', '1987-06-27', 'Male', 'Single', 'Sri Lankan', 'B+', '064', 'Fingerprint', '1', '1', '2026-05-27 20:32:03', 'dER5-7loQ3isE-NbR3RUPo:APA91bE8FilVeTSusehX96t-HYIBEcYgpAzeBW7TYqEWJiNdNkTcC9cy3bmLi1IX0Bp4j-mK2zU8MPFrAnoyTGdYe9_ExH5SXcJNlhFdjOou_d9sF1-wEqk', 'available', NULL, NULL, NULL),
(20, 'EV-000020', 'Active', '2026-03-29 20:18:52', 'Ranepura  Dewage Deshan Madhubhashana Rathnasinghe', 'Deshan', '1997-06-01', 'Male', 'Single', 'Sri Lankan', NULL, '37', 'Fingerprint', '12', '12', '2026-05-12 16:59:13', NULL, 'available', NULL, NULL, NULL),
(21, 'EV-000021', 'Active', '2026-03-29 20:30:03', 'Konganige Nilantha Kumar Anthony', 'Nilantha', '1972-04-06', 'Male', 'Single', 'Sri Lankan', NULL, '02', 'Fingerprint', '12', '1', '2026-06-12 11:52:03', NULL, 'available', NULL, NULL, NULL),
(24, 'EV-000024', 'Active', '2026-03-30 12:55:35', 'Manuwel Arachchigae Navodya Divyanjali', 'Navodya  Divyanjali', '2002-04-20', 'Female', 'Single', 'Sri Lankan', 'B+', '79', 'Fingerprint', '1', '12', '2026-05-12 23:42:38', 'dQYES62vTEqrkV60a2H9Op:APA91bFeOOYHJypJqA44PAy6OQJMtSbViaFBn8dqh98FomNFifud7a5eUv_JCL7E0yOfjpLKhHNKamDMOKCZtO7uEbju0yoCSCCRvwmyD_EY1NtwMx6N4RE', 'available', NULL, NULL, NULL),
(25, 'EV-000025', 'Active', '2026-03-30 13:01:57', 'Kuruwita Bandaralage Yuwanee Ahinsika Jayasena', 'Yuwanee Ahinsika', '2000-05-20', 'Female', 'Single', 'Sri Lankan', 'B+', NULL, 'Manual', '1', '12', '2026-05-12 23:46:24', NULL, 'available', NULL, NULL, NULL),
(26, 'EV-000026', 'Active', '2026-03-30 13:09:10', 'Wadu Arachchilage Induru Udantha Waduarachchi', 'Induru Udantha', '2001-05-22', 'Male', 'Single', 'Sri Lankan', 'AB+', NULL, 'Manual', '1', '12', '2026-05-12 23:46:02', 'cDq_pljvS2C-QgTqKgM4eS:APA91bEpoGiY9CwdgrgTKwYX6YaFQBmIwi7-S818XecASHkmjs0pC1G3YZdV1SXbqjd57UIvPxlA82vuvuqVYFoYnbHafXMNlUs86IK-nUyXIorEdXtVRss', 'available', NULL, NULL, NULL),
(27, 'EV-000027', 'Active', '2026-03-30 13:25:51', 'Thisaru Nadeeshana Meemanage', 'Thisaru', '1999-08-03', 'Male', 'Married', 'Sri Lankan', NULL, '78', 'Fingerprint', '12', '12', '2026-05-14 10:00:22', NULL, 'available', NULL, NULL, NULL),
(28, 'EV-000028', 'Active', '2026-03-30 14:13:56', 'Chandrasekara Mudiyanselage Hasitha Lakmal Chandrasekara', 'Hasitha Chandrasekara', '1995-11-04', 'Male', 'Single', 'Sri Lankan', 'O+', '050', 'Fingerprint', '12', '1', '2026-05-26 17:45:45', NULL, 'available', NULL, NULL, NULL),
(29, 'EV-000029', 'Active', '2026-03-30 14:31:47', 'Kuranage Primali Verjinia Muthumali Perera', 'Primali Perera', '1989-04-06', 'Female', 'Single', 'Sri Lankan', 'O+', '48', 'Fingerprint', '12', '1', '2026-05-26 17:50:18', NULL, 'available', NULL, NULL, NULL),
(30, 'EV-000030', 'Active', '2026-03-30 18:02:38', 'Rankiri Hetti Arachchige Dona Shalinika Nilakshi Perera', 'Shalinika Nilakshi', '1992-07-31', 'Female', 'Married', 'Sri Lankan', 'O+', '035', 'Fingerprint', '12', '1', '2026-05-26 17:48:28', NULL, 'available', NULL, NULL, NULL),
(31, 'EV-000031', 'Active', '2026-03-30 18:12:08', 'Aiththappulige Tilmi Nimasha', 'Tilmi Nimasha', '2003-08-13', 'Female', 'Single', 'Sri Lankan', 'O+', '05', 'Fingerprint', '12', '1', '2026-05-26 17:50:45', NULL, 'available', NULL, NULL, NULL),
(32, 'EV-000032', 'Active', '2026-03-30 18:22:59', 'Sewmini Chamodya', 'Sewmini', '2000-07-21', 'Female', 'Single', 'Sri Lankan', 'O+', '68', 'Fingerprint', '12', '1', '2026-05-26 17:49:46', NULL, 'available', NULL, NULL, NULL),
(33, 'EV-000033', 'Active', '2026-03-30 18:38:11', 'Rajapaksha Mahapathirannahalage Dewmi Sanjana Fonseka', 'Dewmi Sanjana', '2004-01-14', 'Female', 'Single', 'Sri Lankan', 'B+', '61', 'Fingerprint', '12', '1', '2026-05-26 17:49:05', NULL, 'available', NULL, NULL, NULL),
(35, 'EV-000035', 'Active', '2026-03-31 11:47:04', 'Nethaki Thimansa Victoria', 'Thimansa Victoria', '2007-03-01', 'Female', 'Single', 'Sri Lankan', 'B+', '76', 'Fingerprint', '12', '12', '2026-05-12 23:41:04', NULL, 'available', NULL, NULL, NULL),
(36, 'EV-000036', 'Active', '2026-03-31 12:05:29', 'Kiridurayalage Kavindi Sankalpana Arunasiri', 'Sankalpana Arunasiri', '2005-06-21', 'Female', 'Single', 'Sri Lankan', 'B+', '07', 'Fingerprint', '12', '12', '2026-05-12 15:09:31', NULL, 'available', NULL, NULL, NULL),
(37, 'EV-000037', 'Active', '2026-03-31 12:32:10', 'Sri Narayana Bamunu Mudiyanselage Kavinda Sandagomi Bandara', 'Kavinda Sandagomi', '2000-02-28', 'Female', 'Single', 'Sri Lankan', NULL, '048', 'Fingerprint', '12', '12', '2026-05-12 17:08:31', NULL, 'available', NULL, NULL, NULL),
(38, 'EV-000038', 'Active', '2026-03-31 17:04:46', 'Bachchawa Arachchige Sanduni Aloka Prasadhi Guyes', 'Sanduni Guyes', '2004-08-13', 'Female', 'Single', 'Sri Lankan', 'AB+', '64', 'Fingerprint', '12', '12', '2026-05-12 17:43:25', NULL, 'available', NULL, NULL, NULL),
(39, 'EV-000039', 'Active', '2026-03-31 17:24:24', 'Mariyan Anton Niroshan Fernando', 'Anton Niroshan', '1990-08-10', 'Male', 'Single', 'Sri Lankan', 'O+', '62', 'Fingerprint', '12', '1', '2026-06-12 11:49:27', NULL, 'available', NULL, NULL, NULL),
(40, 'EV-000040', 'Active', '2026-03-31 17:38:30', 'Winthakankanamalage Dilan Damitha Perera', 'Dilan Damitha', '1989-09-08', 'Male', 'Married', 'Sri Lankan', 'B+', '44', 'Fingerprint', '12', '12', '2026-05-12 17:06:27', NULL, 'available', NULL, NULL, NULL),
(41, 'EV-000041', 'Active', '2026-03-31 17:52:15', 'Jayakumar Lakshika', 'Lakshika', '2004-10-29', 'Female', 'Single', 'Sri Lankan', 'O+', '74', 'Fingerprint', '12', '12', '2026-05-12 18:00:10', NULL, 'available', NULL, NULL, NULL),
(42, 'EV-000042', 'Active', '2026-03-31 18:06:48', 'Korala Gamage Dilmi Menaka Nayanamali Fernando', 'Dilmi Fernando', '2004-03-09', 'Female', 'Single', 'Sri Lankan', NULL, '75', 'Fingerprint', '12', '12', '2026-05-12 18:00:55', NULL, 'available', NULL, NULL, NULL),
(43, 'EV-000043', 'Active', '2026-03-31 19:41:34', 'Kakulandala Liyanage Don Sameera Dilshan', 'Sameera  Dilshan', '1995-04-20', 'Male', 'Single', 'Sri Lankan', 'A+', '59', 'Fingerprint', '12', '12', '2026-05-12 17:39:16', NULL, 'available', NULL, NULL, NULL),
(44, 'EV-000044', 'Active', '2026-03-31 19:54:24', 'Dominikku Arachchige Don Anil Krishantha', 'Krishan Dominic', '1982-10-12', 'Male', 'Married', 'Sri Lankan', 'O+', '72', 'Fingerprint', '12', '12', '2026-05-12 17:59:00', NULL, 'available', NULL, NULL, NULL),
(45, 'EV-000045', 'Active', '2026-04-01 14:07:02', 'Oswattaliyanage Dhilhara Sudharshi Perera', 'Dhilhara Perera', '1988-07-16', 'Female', 'Single', 'Sri Lankan', NULL, '42', 'Fingerprint', '12', '12', '2026-06-12 14:05:57', NULL, 'available', NULL, NULL, NULL),
(46, 'EV-000046', 'Active', '2026-04-01 14:26:37', 'Kumarasinghe Hettiarachchige Dinith Sanuka Perera', 'Dinith Sanuka', '1989-06-08', 'Male', 'Single', 'Sri Lankan', 'A+', '81', 'Fingerprint', '12', '90', '2026-06-15 14:53:07', NULL, 'available', NULL, NULL, NULL),
(47, 'EV-000047', 'Active', '2026-04-01 18:12:06', 'Konganige Lasantha Kumar Anthony', 'Lasantha Anthony', '1977-08-24', 'Male', 'Married', 'Sri Lankan', NULL, '14', 'Fingerprint', '12', '12', '2026-05-12 16:53:13', NULL, 'available', NULL, NULL, NULL),
(48, 'EV-000048', 'Active', '2026-04-01 18:20:28', 'Sembu Arachchilage Ajith', 'Sembu Ajith', '1969-09-21', 'Male', 'Married', 'Sri Lankan', NULL, '29', 'Fingerprint', '12', '12', '2026-05-12 16:54:12', NULL, 'available', NULL, NULL, NULL),
(49, 'EV-000049', 'Active', '2026-04-01 18:25:34', 'Nissanka Kaplia Silva', 'Kapila Silva', '1980-06-01', 'Male', 'Married', 'Sri Lankan', NULL, '50', 'Fingerprint', '12', '12', '2026-05-12 17:11:02', NULL, 'available', NULL, NULL, NULL),
(50, 'EV-000050', 'Active', '2026-04-01 18:31:11', 'Hodamuni Sahan Madusanka Mendis', 'Sahan Mendis', '1996-10-25', 'Male', 'Married', 'Sri Lankan', NULL, '56', 'Fingerprint', '12', '12', '2026-05-12 17:38:41', NULL, 'available', NULL, NULL, NULL),
(51, 'EV-000051', 'Active', '2026-04-01 19:41:59', 'Mohottige Moshin Glenter Fernando', 'Moshin  Fernando', '1989-01-10', 'Male', 'Other', 'Sri Lankan', 'B+', '80', 'Fingerprint', '1', '1', '2026-05-29 13:07:11', NULL, 'available', NULL, NULL, NULL),
(52, 'EV-000052', 'Active', '2026-04-01 20:22:40', 'Wickramasuriya Murthawalage Tharindu Sriyan', 'Tharindu  Sriyan', '1995-01-12', 'Male', 'Single', 'Sri Lankan', 'A+', '0076', 'Fingerprint', '1', '1', '2026-05-19 10:27:20', NULL, 'available', NULL, NULL, NULL),
(53, 'EV-000053', 'Active', '2026-04-01 22:21:28', 'Balasuriya Arachchilage Asanka Sujeewa Amarasiri', 'Sujeewa Amarasiri', '1980-12-05', 'Male', 'Married', 'Sri Lankan', NULL, '69', 'Fingerprint', '12', '90', '2026-06-15 14:52:47', NULL, 'available', NULL, NULL, NULL),
(54, 'EV-000054', 'Active', '2026-04-01 22:30:42', 'Garaduwa Weerakkodige Roshan Pradeep', 'Roshan Pradeep', '1980-12-08', 'Male', 'Married', 'Sri Lankan', NULL, '068', 'Fingerprint', '12', '12', '2026-05-12 17:40:21', NULL, 'available', NULL, NULL, NULL),
(55, 'EV-000055', 'Active', '2026-04-01 22:50:46', 'Kachchakaduge Lalin Amitha', 'Lalin Amith', '1991-08-14', 'Male', 'Married', 'Sri Lankan', NULL, '044', 'Fingerprint', '12', '1', '2026-06-19 12:17:33', NULL, 'available', NULL, NULL, NULL),
(56, 'EV-000056', 'Active', '2026-04-01 22:59:51', 'Nisanka Achintha Lankesh De Silva', 'Lankesh De Silva', '1977-05-23', 'Male', 'Single', 'Sri Lankan', NULL, '46', 'Fingerprint', '12', '12', '2026-05-12 23:29:00', NULL, 'available', NULL, NULL, NULL),
(57, 'EV-000057', 'Active', '2026-04-01 23:11:24', 'Don Nipun Buddhi Susanga Watawala', 'Nipun Watawala', '1997-11-29', 'Male', 'Single', 'Sri Lankan', NULL, '47', 'Fingerprint', '12', '12', '2026-05-12 23:29:40', NULL, 'available', NULL, NULL, NULL),
(58, 'EV-000058', 'Active', '2026-04-01 23:39:53', 'Basthiyan Koralalage Milan Madushanka Rodrigo', 'Milan Rodrigo', '1989-02-27', 'Male', 'Married', 'Sri Lankan', NULL, '57', 'Fingerprint', '12', '12', '2026-05-12 23:32:52', NULL, 'available', NULL, NULL, NULL),
(59, 'EV-000059', 'Active', '2026-04-01 23:48:12', 'Atampola Arachchige Dona Nimeshi Tharuka Sewwandi', 'Tharuka Sewwandi', '1997-05-09', 'Female', 'Married', 'Sri Lankan', NULL, '53', 'Fingerprint', '12', '1', '2026-05-19 11:44:27', NULL, 'available', NULL, NULL, NULL),
(60, 'EV-000060', 'Active', '2026-04-01 23:56:04', 'Thiruckeswaran Keshika', 'Keshika', '2005-10-12', 'Female', 'Single', 'Sri Lankan', NULL, '075', 'Fingerprint', '12', '12', '2026-05-19 09:41:50', NULL, 'available', NULL, NULL, NULL),
(61, 'EV-000061', 'Active', '2026-04-02 00:05:53', 'Rajapaksha Walhenage Lakshitha Sandaruwan Rajapaksha', 'Lakshitha  Sandaruwan', '2000-01-05', 'Male', 'Single', 'Sri Lankan', NULL, '082', 'Fingerprint', '12', '12', '2026-05-12 15:22:07', NULL, 'available', NULL, NULL, NULL),
(62, 'EV-000062', 'Active', '2026-04-02 00:11:36', 'Kuruwa Vithanage Shama Neranjala', 'Shama Neranjala', '1972-07-07', 'Female', 'Married', 'Sri Lankan', NULL, '66', 'Fingerprint', '12', '1', '2026-06-15 11:04:32', 'dQYES62vTEqrkV60a2H9Op:APA91bFeOOYHJypJqA44PAy6OQJMtSbViaFBn8dqh98FomNFifud7a5eUv_JCL7E0yOfjpLKhHNKamDMOKCZtO7uEbju0yoCSCCRvwmyD_EY1NtwMx6N4RE', 'available', NULL, NULL, NULL),
(63, 'EV-000063', 'Active', '2026-04-02 00:20:04', 'Manueldura Shaun Leon Perera', 'Shaun Perera', '2000-01-01', 'Male', 'Single', 'Sri Lankan', NULL, '1', 'Fingerprint', '12', '1', '2026-05-19 11:46:05', NULL, 'available', NULL, NULL, NULL),
(64, 'EV-000064', 'Active', '2026-04-02 00:37:36', 'Disanayaka Mudiyanselage Pubudu Hiroshan Wickramasinghe', 'Pubudu Wickramasinghe', '1989-08-06', 'Male', 'Married', 'Sri Lankan', NULL, '002', 'Fingerprint', '12', '12', '2026-05-12 14:54:12', NULL, 'available', NULL, NULL, NULL),
(65, 'EV-000065', 'Active', '2026-04-02 00:50:46', 'Alawa Dewarage Jagath Wijesingha', 'Jagath Wijesingha', '1986-06-13', 'Male', 'Married', 'Sri Lankan', NULL, '04', 'Fingerprint', '12', '12', '2026-05-12 14:58:08', NULL, 'available', NULL, NULL, NULL),
(66, 'EV-000066', 'Active', '2026-04-02 00:56:05', 'Kuvendran Lashen Dilash', 'Lashen Dilash', '2007-01-25', 'Male', 'Single', 'Sri Lankan', NULL, '00', 'Fingerprint', '12', '12', '2026-05-12 15:19:44', NULL, 'available', NULL, NULL, NULL),
(67, 'EV-000067', 'Active', '2026-04-02 01:06:15', 'Mahamarakkalage Shiwanka Wishvajith Perera', 'Wishvajith   Perera', '1997-06-15', 'Male', 'Single', 'Sri Lankan', NULL, '08', 'Fingerprint', '12', '12', '2026-05-12 15:18:27', NULL, 'available', NULL, NULL, NULL),
(68, 'EV-000068', 'Active', '2026-04-02 05:34:23', 'Hasthimuni Priyan Prasad De Silva', 'Prasad De Silva', '1980-01-05', 'Male', 'Married', 'Sri Lankan', NULL, '078', 'Fingerprint', '12', '1', '2026-06-15 11:04:18', NULL, 'available', NULL, NULL, NULL),
(69, 'EV-000069', 'Active', '2026-04-02 05:43:15', 'Ravindu Lakshmana Abesinhalage Niyangoda', 'Ravindu Niyangoda', '2000-12-27', 'Male', 'Single', 'Sri Lankan', NULL, '079', 'Fingerprint', '12', '12', '2026-05-12 15:22:52', NULL, 'available', NULL, NULL, NULL),
(70, 'EV-000070', 'Active', '2026-04-02 05:50:32', 'Hettige Boniface Mangala Perera', 'Boniface Mangala', '1958-08-27', 'Male', 'Single', 'Sri Lankan', NULL, '034', 'Fingerprint', '12', '12', '2026-05-12 16:55:06', NULL, 'available', NULL, NULL, NULL),
(71, 'EV-000071', 'Active', '2026-04-02 05:56:36', 'Kurukulasooriya Dicsion Kumara Fernando', 'Dicsion Kumara', '2006-12-31', 'Male', 'Married', 'Sri Lankan', NULL, '039', 'Fingerprint', '12', '12', '2026-05-20 11:23:53', NULL, 'available', NULL, NULL, NULL),
(72, 'EV-000072', 'Active', '2026-04-02 06:03:11', 'Rajapaksha Mudiyanselage Heshan Sandaruwan Ariyarathna', 'Heshan Sandaruwan', '1999-02-27', 'Male', 'Single', 'Sri Lankan', NULL, '042', 'Fingerprint', '12', '12', '2026-05-12 17:05:48', NULL, 'available', NULL, NULL, NULL),
(73, 'EV-000073', 'Active', '2026-04-02 06:11:05', 'Konda Gamage Suran Chamara Grero', 'Chamara Grero', '1990-01-26', 'Male', 'Married', 'Sri Lankan', NULL, '45', 'Fingerprint', '12', '12', '2026-06-03 11:11:02', NULL, 'available', NULL, NULL, NULL),
(74, 'EV-000074', 'Active', '2026-04-02 06:17:47', 'Mandadige Rasika Sampath Fernando', 'Sampath Fernando', '1979-11-05', 'Male', 'Married', 'Sri Lankan', NULL, '053', 'Fingerprint', '12', '12', '2026-05-12 17:12:34', NULL, 'available', NULL, NULL, NULL),
(75, 'EV-000075', 'Active', '2026-04-02 06:24:45', 'Rajapaksha Pathiranage  Don Indika Pradeep Acoinas', 'Indika Acoinas', '1974-03-08', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '12', '2026-05-12 17:38:03', NULL, 'available', NULL, NULL, NULL),
(76, 'EV-000076', 'Active', '2026-04-02 06:32:19', 'Deegoda Gamage Harshitha Rashan Gamage', 'Rashan Gamage', '1998-04-04', 'Male', 'Single', 'Sri Lankan', NULL, '60', 'Fingerprint', '12', '12', '2026-05-12 17:40:46', NULL, 'available', NULL, NULL, NULL),
(77, 'EV-000077', 'Active', '2026-04-02 06:38:46', 'Ryan Tage Monie', 'Ryan Monie', '1999-11-15', 'Male', 'Single', 'Sri Lankan', NULL, '073', 'Fingerprint', '12', '12', '2026-05-12 17:59:36', NULL, 'available', NULL, NULL, NULL),
(78, 'EV-000078', 'Active', '2026-04-02 06:47:00', 'Dimath Tharaka Weliwitigoda', 'Dimath Weliwitigoda', '1998-08-31', 'Male', 'Single', 'Sri Lankan', NULL, '71', 'Fingerprint', '12', '1', '2026-06-16 16:05:58', NULL, 'available', NULL, NULL, NULL),
(79, 'EV-000079', 'Active', '2026-04-02 06:53:28', 'Agampodi Thisara Damsak De Zoysa', 'Damsak De Zoysa', '1994-02-16', 'Male', 'Married', 'Sri Lankan', NULL, '70', 'Fingerprint', '12', '12', '2026-05-13 09:49:21', NULL, 'available', NULL, NULL, NULL),
(80, 'EV-000080', 'Active', '2026-04-02 06:58:53', 'Panambarage Gayan Madushanka Fernando', 'Gayan Fernando', '1995-02-01', 'Male', 'Married', 'Sri Lankan', NULL, '077', 'Fingerprint', '12', '12', '2026-05-12 23:45:26', NULL, 'available', NULL, NULL, NULL),
(81, 'EV-000081', 'Active', '2026-04-02 07:05:51', 'Kulakulasuriyage Augustin Ajith Kumar Fernando', 'Kumara Fernando', '1975-06-07', 'Male', 'Married', 'Sri Lankan', NULL, '061', 'Fingerprint', '12', '1', '2026-05-27 12:16:01', NULL, 'available', NULL, NULL, NULL),
(82, 'EV-000082', 'Active', '2026-04-02 07:12:17', 'Kangana Mudiyanselage Lahiru Dhipthi Kumara', 'Lahiru Kumara', '2003-10-25', 'Male', 'Single', 'Sri Lankan', NULL, '063', 'Fingerprint', '12', '12', '2026-05-12 17:42:49', NULL, 'available', NULL, NULL, NULL),
(83, 'EV-000083', 'Active', '2026-04-02 07:17:13', 'Rupasingha Dewage Ashan Madushanka Fernando', 'Ashen Fernando', '1997-02-02', 'Male', 'Married', 'Sri Lankan', NULL, '065', 'Fingerprint', '12', '12', '2026-05-13 11:17:17', NULL, 'available', NULL, NULL, NULL),
(85, 'EV-000001', 'Active', '2026-06-02 15:11:41', 'Admin', 'Admin', '1990-01-01', 'Male', 'Single', 'Sri Lankan', 'O+', '90001', 'Fingerprint', '1', '1', '2026-06-02 15:11:41', NULL, 'available', NULL, NULL, NULL),
(86, 'EV-000086', 'Active', '2026-06-15 13:29:09', 'Mereanchi Kankanamalage Duminda Dulshan Wanigasekara', 'Dulshan  Wanigasekara', '1994-10-17', 'Male', 'Single', 'Sri Lankan', 'O+', '54', 'Fingerprint', '1', '90', '2026-06-18 10:31:51', NULL, 'available', NULL, NULL, NULL),
(87, 'EV-000087', 'Active', '2026-06-15 17:04:19', 'Kiriwaththuduwage Dona  Sanju Kaushalya Kumari Perera', 'Sanju Kaushalya', '1993-09-21', 'Female', 'Single', 'Sri Lankan', NULL, NULL, 'Fingerprint', '90', '1', '2026-06-19 09:22:58', NULL, 'available', NULL, NULL, NULL),
(88, 'EV-000088', 'Active', '2026-06-18 13:02:13', 'Jude Avith Randeepa Ariyawansa', 'Randeepa Ariyawansa', '2002-11-23', 'Male', 'Single', 'Sri Lankan', 'B+', NULL, 'Manual', '1', '1', '2026-06-18 13:02:13', NULL, 'available', NULL, NULL, NULL);

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
(168, NULL, 'Residential', 'Ihala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(176, 11, 'Residential', '685 C Nimsalamariya mawatha Thewatha Road Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(211, 64, 'Residential', '83/4/2 Vijaya Mawatha Veyangoda', 'Veyangoda', 'Sri Lanka', NULL, 1),
(212, 65, 'Residential', '368/2, Madapitina, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(218, 36, 'Residential', 'J 2/2 A, Kandewaththa, Bogahamula', 'Mawanella', 'Sri Lanka', NULL, 1),
(219, 67, 'Residential', 'No 7A-1 ,Gamunu Mawatha, Minuwangoda.', 'Minuwangoda', 'Sri Lanka', NULL, 1),
(221, 66, 'Residential', 'Rp 615, 12th Lane, Rajapakshapura, Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(225, 61, 'Residential', '172/A Matikotumulla,Essella,Minuwangoda.', 'Minuwangoda', 'Sri Lanka', NULL, 1),
(226, 69, 'Residential', 'No 23, Jayabima,Kadirana South,Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
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
(250, 82, 'Residential', '308,North Seeduwa,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(251, 38, 'Residential', '114/6 Kaluwarippuwa west', 'Katana', 'Sri Lanka', NULL, 1),
(255, 44, 'Residential', 'NO 48/8B PETER RODRIGO MW', 'Ja Ela', 'Sri Lanka', NULL, 1),
(256, 77, 'Residential', '12, Owita Mawatha, Bangalawatha, Mabola, Wattala.', 'Wattala', 'Sri Lanka', NULL, 1),
(257, 41, 'Residential', '28/1/1 3rd cross street, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(258, 42, 'Residential', '357/36,B,1, Gallawaththa , Raddoluwa , Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(262, 14, 'Residential', '56/2, Dharmapala Mw, Ekala', 'Ekala', 'Sri Lanka', NULL, 1),
(263, 17, 'Residential', '33, Silva Mw, Nagoda, Kandana', 'Kandana', 'Sri Lanka', '11010', 1),
(266, 56, 'Residential', '\"Dinesh Sevana\", Sirimal Uyana Road, Liyanagemulla, Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(267, 57, 'Residential', '260/B/1, Edwin Silva Rd, Katana West, Katana', 'Katana', 'Sri Lanka', NULL, 1),
(270, 58, 'Residential', '877/c, Vihara Mawatha ,Thewatte Rd,Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(276, 35, 'Residential', '478/D, Raddoluwa Raddolugama', 'Raddoluwa', 'Sri Lanka', NULL, 1),
(278, 24, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(281, 80, 'Residential', '461/9 Melwatta Mukalangamuwa ,seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(282, 26, 'Residential', 'No 251, Ihala Kottaramulla, Pahala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(283, 25, 'Residential', '6th lane, Pothuvil road, Sirigala', 'Monaragala', 'Sri Lanka', NULL, 1),
(284, 25, 'Other', 'No. 11, Sadasarana Mawatha, Bolawalana', 'Negombo', 'Sri Lanka', NULL, 0),
(286, 79, 'Residential', 'No .148, Winston Park, Kadirana South, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(291, 83, 'Residential', '461/34 ,Melwatha,Mukalangamuwa, Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(295, 27, 'Residential', '70/1 F sama mawatha, padiliyathuduwa road, hunupitiya', 'wattala', 'Sri Lanka', NULL, 1),
(301, 60, 'Residential', 'No,195,Sea Street, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(303, 52, 'Residential', '199/1 Balabowa Develapola', 'Gampaha', 'Sri Lanka', NULL, 1),
(304, 59, 'Residential', '248/11 Morakelewaththa ,Hendiyagala,Sandalankawa', 'Sandalankawa', 'Sri Lanka', NULL, 1),
(305, 63, 'Residential', 'Null', 'Null', 'Sri Lanka', NULL, 1),
(306, 71, 'Residential', '217/18, Siriwardana Pedesa Munnakkaraya, Negombo.', 'Negombo', 'Sri Lanka', NULL, 1),
(307, NULL, 'Residential', 'Weligampitiya', 'Ja Ela', 'Sri Lanka', NULL, 1),
(316, 18, 'Residential', '127, Winston Park, Kadirana, Negombo', 'Negombo', 'Sri Lanka', '11500', 1),
(317, 28, 'Residential', '878/C, Siriwardhana Road', 'Ragama', 'Sri Lanka', NULL, 1),
(318, 30, 'Residential', '345/D,8,Aweriwatta rd,Batagama north', 'Ja Ela', 'Sri Lanka', NULL, 1),
(319, 33, 'Residential', '117/D ST. John Mawatha Kandawala Katana', 'Katana', 'Sri Lanka', NULL, 1),
(321, 32, 'Residential', 'No. 101/10 Melrose Park Seeduwa Road Kotugoda', 'Kotugoda', 'Sri Lanka', NULL, 1),
(322, 29, 'Residential', 'No.105/A2, St Annes Road, Thimbirigaskatuwa', 'Negombo', 'Sri Lanka', NULL, 1),
(323, 31, 'Residential', '464/1A Welihena South Kochchikade', 'Negombo', 'Sri Lanka', NULL, 1),
(327, 81, 'Residential', '93/7, Rejina Road, Munnakkaraya', 'Munnakkaraya', 'Sri Lanka', NULL, 1),
(328, 19, 'Residential', 'No:228/B/1B, Kondagammulla,Miriswatta', 'Negombo', 'Sri Lanka', NULL, 1),
(329, 51, 'Residential', '65,Bandarawatta Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(331, 73, 'Residential', 'C /16,Niwasapura ,Ekala,Kotugoda ,Jaela', 'Jaela', 'Sri Lanka', NULL, 1),
(333, 39, 'Residential', '209/ St. Nicholas Road, Munnakkaraya', 'Negombo', 'Sri Lanka', NULL, 1),
(334, 21, 'Residential', '66/B, Magulpokuna, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(338, 45, 'Residential', '32A, Indivitya Rd, Weligampitiya, Ja ela', 'Jaela', 'Sri Lanka', NULL, 1),
(339, 68, 'Residential', 'Null', 'Seeduwa', 'Sri Lanka', NULL, 1),
(340, 62, 'Residential', '155/39A, Amuna Rd, South Seeduwa,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(344, 53, 'Residential', 'No 59/C9 Pathma Peruma Mawatha ,Ganemulla.', 'Ganemulla', 'Sri Lanka', NULL, 1),
(345, 46, 'Residential', '354,Halgasthota,Katunayake', 'Katunayake', 'Sri Lanka', '11450', 1),
(347, 78, 'Residential', 'No. 95/17, Welington Place, Baseline Road, North Seeduwa,', 'Seeduwa', 'Sri Lanka', NULL, 1),
(349, 86, 'Residential', 'Test', 'Negombo', 'Sri Lanka', NULL, 1),
(350, 88, 'Residential', '535/21, Colombo RD, Kurana', 'Negombo', 'Sri Lanka', NULL, 1),
(351, 87, 'Residential', 'Rp 486 Rajapakshapura Scheme Hosing', 'Seeduwa', 'Sri Lanka', NULL, 1),
(352, 55, 'Residential', '12, Uluporanuwa Road, Kandana', 'Kandana', 'Sri Lanka', NULL, 1);

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
(165, NULL, 'Nations Trust Bank', 'Seeduwa', '45689156156'),
(173, 11, 'Hatton National Bank', 'M A S Perera', '102020014889'),
(208, 64, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(209, 65, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(215, 36, 'Hatton National Bank', 'Mawanella', '089020243686'),
(216, 67, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(218, 66, 'Hatton National Bank', 'Seeduwa', '00000000000'),
(222, 61, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(223, 69, 'Hatton National Bank', 'Seeduwa', '000000000000'),
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
(247, 82, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(248, 38, 'Hatton National Bank', 'Ragama', '102020370506'),
(252, 44, 'Hatton National Bank', 'JA ELA', '087020501814'),
(253, 77, 'Hatton National Bank', 'Null', '000000000000'),
(254, 41, 'Hatton National Bank', 'Negombo', '024020731234'),
(255, 42, 'Hatton National Bank', 'Seeduwa', '209020152438'),
(259, 14, 'Hatton National Bank', 'Seeduwa', '083478658931'),
(260, 17, 'Hatton National Bank', 'Bambalapitiya', '039020401726'),
(263, 56, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(264, 57, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(267, 58, 'Hatton National Bank', 'Null', '000000000000'),
(273, 35, 'Hatton National Bank', 'Seeduwa', '209020141672'),
(275, 24, 'Hatton National Bank', 'Negombo', '024020742018'),
(278, 80, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(279, 26, 'People\'s Bank', 'Nattandiya', '083200150043028'),
(280, 25, 'People\'s Bank', 'Monaragala', '068200190081414'),
(282, 79, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(287, 83, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(291, 27, 'Hatton National Bank', 'Kiribathgoda', '500020017441'),
(297, 60, 'Hatton National Bank', 'Negombo', '000000000000'),
(299, 52, 'Hatton National Bank', 'Seeduwa', '209020150983'),
(300, 59, 'Hatton National Bank', 'Sandalankawa', '00000000000'),
(301, 63, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(302, 71, 'Hatton National Bank', 'Negombo', '000000000000'),
(303, NULL, 'Commercial Bank', 'Nill', '000000000000'),
(312, 18, 'Hatton National Bank', 'Seeduwa', '209020074385'),
(313, 28, 'Hatton National Bank', 'Ragama', '102020351006'),
(314, 30, 'Hatton National Bank', 'seeduwa', '102020367177'),
(315, 33, 'Hatton National Bank', 'Negombo', '024020666985'),
(317, 32, 'Hatton National Bank', 'Negombo', '024020667577'),
(318, 29, 'Hatton National Bank', 'Seeduwa', '209020089952'),
(319, 31, 'Hatton National Bank', 'Ragama', '102020372638'),
(323, 81, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(324, 19, 'Hatton National Bank', 'Negombo', '024020684176'),
(325, 51, 'Hatton National Bank', 'Seeduwa', '209020138207'),
(327, 73, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(329, 39, 'Commercial Bank', 'Negombo Main', '8026636111'),
(330, 21, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(334, 45, 'Hatton National Bank', 'Null', '000000000000'),
(335, 68, 'Hatton National Bank', 'Seduwa', '0000000000000'),
(336, 62, 'Hatton National Bank', 'Seeduwa', '00000000000'),
(340, 53, 'Hatton National Bank', 'seeduwa', '000000000000'),
(341, 46, 'Hatton National Bank', 'Seeduwa', '209020164813'),
(343, 78, 'Hatton National Bank', 'seeduwa', '000000000000'),
(345, 86, 'Hatton National Bank', 'Negombo', '00000000'),
(346, 88, 'Bank of Ceylon', 'Negombo', '0000586841'),
(347, 87, 'Hatton National Bank', 'Seeduwa', '00000000'),
(348, 55, 'Hatton National Bank', 'Seeduwa', '000000000000');

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
(10, NULL, 'LKR', 'Monthly', '2026-02-26', '2026-02-26'),
(11, 11, 'LKR', 'Monthly', '2024-07-21', NULL),
(13, 14, 'LKR', 'Monthly', '2026-02-14', '2026-03-15'),
(16, 17, 'LKR', 'Monthly', '2026-02-17', '2026-03-18'),
(17, 18, 'LKR', 'Monthly', '2026-02-14', '2026-03-13'),
(18, 19, 'LKR', 'Monthly', NULL, NULL),
(19, 20, 'LKR', 'Monthly', '2026-02-18', '2026-03-19'),
(20, 21, 'LKR', 'Monthly', '2026-02-16', '2026-03-17'),
(23, 24, 'LKR', 'Monthly', NULL, NULL),
(24, 25, 'LKR', 'Monthly', NULL, NULL),
(25, 26, 'LKR', 'Monthly', NULL, NULL),
(26, 27, 'LKR', 'Monthly', '2026-02-17', '2026-03-18'),
(27, 28, 'LKR', 'Monthly', '2026-02-15', '2026-03-14'),
(28, 29, 'LKR', 'Monthly', '2026-02-14', '2026-03-15'),
(29, 30, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(30, 31, 'LKR', 'Monthly', '2026-02-14', '2026-03-13'),
(31, 32, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(32, 33, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(34, 35, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(35, 36, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(36, 37, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(37, 38, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(38, 39, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(39, 40, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(40, 41, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(41, 42, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(42, 43, 'LKR', 'Monthly', NULL, NULL),
(43, 44, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(44, 45, 'LKR', 'Monthly', '2026-02-11', '2026-03-10'),
(45, 46, 'LKR', 'Monthly', '2026-02-12', '2026-03-11'),
(46, 47, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(47, 48, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(48, 49, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(49, 50, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(50, 51, 'LKR', 'Monthly', '2026-02-13', '2026-03-12'),
(51, 52, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(52, 53, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(53, 54, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(54, 55, 'LKR', 'Monthly', '2026-02-14', '2026-03-13'),
(55, 56, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(56, 57, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(57, 58, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(58, 59, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(59, 60, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(60, 61, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(61, 62, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(62, 63, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(63, 64, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(64, 65, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(65, 66, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(66, 67, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(67, 68, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(68, 69, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(69, 70, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(70, 71, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(71, 72, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(72, 73, 'LKR', 'Monthly', '2026-02-14', '2026-03-13'),
(73, 74, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(74, 75, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(75, 76, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(76, 77, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(77, 78, 'LKR', 'Monthly', '2026-02-16', '2026-03-15'),
(78, 79, 'LKR', 'Monthly', '2026-02-18', '2026-03-17'),
(79, 80, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(80, 81, 'LKR', 'Monthly', '2026-02-15', '2026-03-14'),
(81, 82, 'LKR', 'Monthly', '2026-02-19', '2026-03-18'),
(82, 83, 'LKR', 'Monthly', '2026-02-17', '2026-03-16'),
(83, NULL, 'LKR', 'Monthly', '2026-03-17', '2026-04-18'),
(84, 86, 'LKR', 'Monthly', '2023-05-01', NULL),
(85, 87, 'LKR', 'Monthly', '2026-05-20', '2026-06-19'),
(86, 88, 'LKR', 'Monthly', '2026-06-16', NULL);

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
(348, 35, 'Basic', 'Basic Salary', 45000.00),
(349, 35, 'Allowance', 'Fuel', 5000.00),
(350, 35, 'Allowance', 'Attendance', 2000.00),
(351, 66, 'Basic', 'Basic Salary', 0.00),
(353, 65, 'Basic', 'Basic Salary', 0.00),
(357, 60, 'Basic', 'Basic Salary', 0.00),
(358, 68, 'Basic', 'Basic Salary', 0.00),
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
(393, 81, 'Basic', 'Basic Salary', 0.00),
(394, 37, 'Basic', 'Basic Salary', 40000.00),
(395, 37, 'Allowance', 'Fuel', 3000.00),
(396, 37, 'Allowance', 'Attendance', 2000.00),
(400, 43, 'Basic', 'Basic Salary', 73000.00),
(401, 43, 'Allowance', 'FUEL', 5000.00),
(402, 43, 'Allowance', 'MEAL', 4500.00),
(403, 76, 'Basic', 'Basic Salary', 0.00),
(404, 40, 'Basic', 'Basic Salary', 45000.00),
(405, 40, 'Allowance', 'Fuel', 5000.00),
(406, 40, 'Allowance', 'Attendance', 2000.00),
(407, 41, 'Basic', 'Basic Salary', 43000.00),
(408, 41, 'Allowance', 'Attendance', 2000.00),
(414, 13, 'Basic', 'Basic Salary', 100000.00),
(415, 16, 'Basic', 'Basic Salary', 100000.00),
(418, 55, 'Basic', 'Basic Salary', 0.00),
(419, 56, 'Basic', 'Basic Salary', 0.00),
(426, 57, 'Basic', 'Basic Salary', 0.00),
(436, 34, 'Basic', 'Basic Salary', 46000.00),
(437, 34, 'Allowance', 'Fuel', 5000.00),
(438, 34, 'Allowance', 'Attendance', 2000.00),
(440, 23, 'Basic', 'Basic Salary', 71400.00),
(441, 23, 'Allowance', 'Fuel Incentive', 5000.00),
(442, 23, 'Allowance', 'Attendance Incentive', 2000.00),
(443, 23, 'Deduction', 'EPF 8%', 5712.00),
(448, 79, 'Basic', 'Basic Salary', 0.00),
(449, 25, 'Allowance', 'Basic Salary', 30000.00),
(450, 24, 'Allowance', 'Basic Salary', 30000.00),
(452, 78, 'Basic', 'Basic Salary', -1.00),
(457, 82, 'Basic', 'Basic Salary', -1.00),
(465, 26, 'Basic', 'Basic Salary', 119000.00),
(477, 59, 'Basic', 'Basic Salary', 0.00),
(479, 51, 'Basic', 'Basic Salary', 60000.00),
(480, 51, 'Allowance', 'Fuel', 4999.00),
(481, 58, 'Basic', 'Basic Salary', 0.00),
(482, 62, 'Basic', 'Basic Salary', 0.00),
(483, 70, 'Basic', 'Basic Salary', 0.00),
(484, 83, 'Basic', 'Basic Salary', 100000.00),
(505, 17, 'Basic', 'Basic Salary', 116925.00),
(506, 17, 'Allowance', 'Fuel', 7500.00),
(507, 17, 'Allowance', 'Attendance', 2000.00),
(508, 27, 'Basic', 'Basic Salary', 83009.00),
(509, 27, 'Allowance', 'Fuel Allowance', 6000.00),
(510, 27, 'Allowance', 'Attendance', 2000.00),
(511, 29, 'Basic', 'Basic Salary', 94694.00),
(512, 29, 'Allowance', 'fuel', 6500.00),
(513, 29, 'Allowance', 'Attendence', 2000.00),
(514, 32, 'Basic', 'Basic Salary', 47300.00),
(515, 32, 'Allowance', 'Fuel', 5000.00),
(516, 32, 'Allowance', 'Attendance', 2000.00),
(520, 31, 'Basic', 'Basic Salary', 38000.00),
(521, 31, 'Allowance', 'Fuel', 5000.00),
(522, 31, 'Allowance', 'Attendance', 2000.00),
(523, 28, 'Basic', 'Basic Salary', 85002.00),
(524, 28, 'Allowance', 'Fuel Allowance', 6000.00),
(525, 28, 'Allowance', 'Attendance Allowance', 2000.00),
(526, 30, 'Basic', 'Basic Salary', 38000.00),
(527, 30, 'Allowance', 'Fuel', 5000.00),
(528, 30, 'Allowance', 'Attendence', 2001.00),
(532, 80, 'Basic', 'Basic Salary', 0.00),
(533, 18, 'Basic', 'Basic Salary', 0.00),
(534, 50, 'Basic', 'Basic Salary', 67000.00),
(535, 50, 'Allowance', 'Fuel', 5000.00),
(536, 50, 'Allowance', 'Attendance', 2000.00),
(538, 72, 'Basic', 'Basic Salary', -1.00),
(540, 38, 'Basic', 'Basic Salary', 78750.00),
(541, 38, 'Allowance', 'Fuel', 5000.00),
(542, 38, 'Allowance', 'Attendence', 2000.00),
(543, 20, 'Basic', 'Basic Salary', 139875.00),
(547, 44, 'Basic', 'Basic Salary', 100000.00),
(548, 67, 'Basic', 'Basic Salary', 0.00),
(549, 61, 'Basic', 'Basic Salary', 0.00),
(553, 52, 'Basic', 'Basic Salary', 67000.00),
(554, 45, 'Basic', 'Basic Salary', 0.00),
(556, 77, 'Basic', 'Basic Salary', 0.00),
(558, 84, 'Basic', 'Basic Salary', 0.00),
(559, 86, 'Basic', 'Basic Salary', -1.00),
(560, 85, 'Basic', 'Basic Salary', 0.00),
(561, 54, 'Basic', 'Basic Salary', 0.00);

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
(330, NULL, 'Work Email', 'test@gmail.com', 1),
(331, NULL, 'Whatsapp Number', '0769304365', 1),
(347, 11, 'Work Email', 'shermal@explorevacations.lk', 1),
(348, 11, 'Whatsapp Number', '0773207107', 1),
(417, 64, 'Work Email', 'asst.manager@eliterentacar.lk', 1),
(418, 64, 'Whatsapp Number', '076 141 4555', 1),
(419, 65, 'Work Email', 'Jagath@eliterentacar.lk', 1),
(420, 65, 'Whatsapp Number', '0771239784', 1),
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
(495, 82, 'Work Email', 'lahiru@srrentacar.lk', 1),
(496, 82, 'Whatsapp Number', '0753871334', 1),
(497, 38, 'Work Email', 'Sandunig@srilankarentacar.com', 1),
(498, 38, 'Whatsapp Number', '0728524416', 1),
(505, 44, 'Work Email', 'anil@srilankarentacar.com', 1),
(506, 44, 'Personal Email', '0712650900', 1),
(507, 77, 'Work Email', 'rayan@srrentacar.lk', 1),
(508, 77, 'Whatsapp Number', '0768480782', 1),
(509, 41, 'Work Email', 'lakshika@srilankarentacar.com', 1),
(510, 41, 'Whatsapp Number', '0768244627', 1),
(511, 42, 'Work Email', 'dilmi@srilankarentacar.com', 1),
(512, 42, 'Whatsapp Number', '0762901927', 1),
(519, 14, 'Work Email', 'gm@explorevacations.lk', 1),
(520, 14, 'Whatsapp Number', '0768200098', 1),
(521, 17, 'Work Email', 'digitalmarketing@explorevacations.lk', 1),
(522, 17, 'Whatsapp Number', '071 477 0069', 1),
(527, 56, 'Work Email', 'lankesh@explorevacations.lk', 1),
(528, 56, 'Whatsapp Number', '077 077 5676', 1),
(529, 57, 'Work Email', 'Nipun@explorevacations.lk', 1),
(530, 57, 'Whatsapp Number', '077 155 9120', 1),
(535, 58, 'Work Email', 'milan@explorevacations.lk', 1),
(536, 58, 'Whatsapp Number', '077 854 5993', 1),
(547, 35, 'Work Email', 'victoria@explorevacations.lk', 1),
(548, 35, 'Whatsapp Number', '0764801145', 1),
(551, 24, 'Work Email', 'navoda@explorevacations.lk', 1),
(552, 24, 'Whatsapp Number', '0761278989', 1),
(557, 80, 'Work Email', 'gayan@srrentacar.lk', 1),
(558, 80, 'Whatsapp Number', '0713848992', 1),
(559, 26, 'Work Email', 'udantha@explorevacations.lk', 1),
(560, 26, 'Whatsapp Number', '0763904365', 1),
(561, 26, 'Personal Email', 'induruudantha45615@gmail.com', 0),
(562, 25, 'Work Email', 'yuwanee@explorevacations.lk', 1),
(563, 25, 'Whatsapp Number', '0711681061', 1),
(566, 79, 'Work Email', 'damsak@srrentacar.lk', 1),
(567, 79, 'Whatsapp Number', '0766009719', 1),
(576, 83, 'Work Email', 'ashen@srrentacar.lk', 1),
(577, 83, 'Whatsapp Number', '0781803097', 1),
(584, 27, 'Work Email', 'nadeeshana@explorevacations.lk', 1),
(585, 27, 'Whatsapp Number', '0762990124', 1),
(596, 60, 'Work Email', 'reservations@explorevacations.lk', 1),
(597, 60, 'Whatsapp Number', '077 200 9110', 1),
(600, 52, 'Personal Email', 'tharindu19950112@gmail.com', 1),
(601, 52, 'Whatsapp Number', '0777707750', 1),
(602, 59, 'Work Email', 'travels@explorevacations.lk', 1),
(603, 59, 'Whatsapp Number', '076 141 4554', 1),
(604, 63, 'Work Email', 'shaun@eliterentacar.lk', 1),
(605, 63, 'Whatsapp Number', '0777777777', 1),
(606, 71, 'Work Email', 'dicsion@srrentacar.lk', 1),
(607, 71, 'Whatsapp Number', '0761414555', 1),
(608, NULL, 'Work Email', 'dhilhara@explorevacations.lk', 1),
(609, NULL, 'Whatsapp Number', '0775555555', 1),
(626, 18, 'Work Email', 'finance@eliterentacar.lk', 1),
(627, 18, 'Whatsapp Number', '071 313 7031', 1),
(628, 28, 'Work Email', 'hasitha@explorevacations.lk', 1),
(629, 28, 'Whatsapp Number', '0762545661', 1),
(630, 30, 'Work Email', 'acc.ass@explorevacations.lk', 1),
(631, 30, 'Whatsapp Number', '0776786608', 1),
(632, 33, 'Work Email', 'dewmi.sanjana@explorevacations.lk', 1),
(633, 33, 'Whatsapp Number', '0766673889', 1),
(636, 32, 'Work Email', 'sewmini@explorevacations.lk', 1),
(637, 32, 'Whatsapp Number', '0778742883', 1),
(638, 29, 'Work Email', 'acc.ex@explorevacations.lk', 1),
(639, 29, 'Whatsapp Number', '0766197274', 1),
(640, 31, 'Work Email', 'acc.ass@eliterentacar.lk', 1),
(641, 31, 'Whatsapp Number', '0775102485', 1),
(648, 81, 'Work Email', 'kumara@srrentacar.lk', 1),
(649, 81, 'Whatsapp Number', '0762877006', 1),
(650, 19, 'Work Email', 'it@explorevacations.lk', 1),
(651, 19, 'Whatsapp Number', '0714357976', 1),
(652, 51, 'Personal Email', 'omega11410@gmail.com', 1),
(653, 51, 'Whatsapp Number', '0787358598', 1),
(656, 73, 'Work Email', 'chamara@srrentacar.lk', 1),
(657, 73, 'Whatsapp Number', '0763603589', 1),
(660, 39, 'Work Email', 'niroshan@srilankarentacar.lk', 1),
(661, 39, 'Whatsapp Number', '0763603667', 1),
(662, 21, 'Work Email', 'fleet@srilankarentacar.lk', 1),
(663, 21, 'Whatsapp Number', '076 820 0093', 1),
(670, 45, 'Work Email', 'dhilhara@explorevacations.lk', 1),
(671, 45, 'Whatsapp Number', '0768200101', 1),
(672, 68, 'Work Email', 'desilva@srrentacar.lk', 1),
(673, 68, 'Whatsapp Number', '0762264662', 1),
(674, 62, 'Work Email', 'shama@explorevacations.lk', 1),
(675, 62, 'Whatsapp Number', '0741087730', 1),
(682, 53, 'Work Email', 'sujeewa@srrentacar.lk', 1),
(683, 53, 'Whatsapp Number', '077 719 6306', 1),
(684, 46, 'Work Email', 'admin.executive@explorevacations.lk', 1),
(685, 46, 'Whatsapp Number', '075-7159099', 1),
(688, 78, 'Work Email', 'dimath@srrentacar.lk', 1),
(689, 78, 'Whatsapp Number', '0702202215', 1),
(692, 86, 'Work Email', 'dulshan@explorevacations.lk', 1),
(693, 86, 'Whatsapp Number', '+94 76 416 0777', 1),
(694, 88, 'Work Email', 'randeepa@explorevacations.lk', 1),
(695, 88, 'Whatsapp Number', '0740904523', 1),
(696, 87, 'Work Email', 'ae.ggm@explorevacations.lk', 1),
(697, 87, 'Whatsapp Number', '0764160777', 1),
(698, 55, 'Work Email', 'procurement@explorevacations.lk', 1),
(699, 55, 'Whatsapp Number', '076 594 6923', 1);

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
(18, NULL, 'Profile Photo', 'profile_1.png', 'employees/10/profile-photo/dTlg5seLkjIyRT6zSDm500yq4N6u86QyUyKvY5T3.png', 'image/png', 241171, '2026-03-30 20:38:56'),
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
(165, NULL, 'Induru Udantha', 'Relationship', '0763904365'),
(173, 11, 'Shone', 'Son', '0773207107'),
(208, 64, 'Null', 'Null', 'Null'),
(209, 65, 'Null', 'Null', 'Null'),
(215, 36, 'Manori Gunawardhana', 'Mother', '0761849125'),
(216, 67, 'Null', 'Null', '000000000'),
(218, 66, 'Null', 'Null', 'Null'),
(222, 61, 'Null', 'Null', 'Null'),
(223, 69, 'Null', 'Null', 'Null'),
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
(247, 82, 'Null', 'Null', 'Null'),
(248, 38, 'Dagma Fernando', 'Mother', '0777148715'),
(252, 44, 'K NADEESHANI ASANGIKA PERERA', 'WIFE', '0767090558'),
(253, 77, 'Null', 'Null', 'Null'),
(254, 41, 'Selvi Jayakumar', 'Mother', '0777855617'),
(255, 42, 'K.Thilanka Dilshan', 'Father', '0776373279'),
(259, 14, 'Melissa', 'Wife', '0777007140'),
(260, 17, 'Sandali Madushiks', 'Wife', '077 367 3070'),
(263, 56, 'Null', 'Null', 'Null'),
(264, 57, 'Null', 'Null', 'Null'),
(267, 58, 'Null', 'Null', 'Null'),
(273, 35, 'Susanthi Priyadarshani', 'Mother', '0770629643'),
(275, 24, 'Roshan Meerium', 'Father', '0770206336'),
(278, 80, 'Null', 'Null', 'Null'),
(279, 26, 'R Vajira Kanthi', 'Mother', '0767241365'),
(280, 25, 'Jayasena', 'Father', '0707095826'),
(282, 79, 'Null', 'Null', 'Null'),
(287, 83, 'Null', 'Null', 'Null'),
(291, 27, 'Dilmi Manoja', 'Wife', '076330975'),
(297, 60, 'Null', 'Null', 'Null'),
(299, 52, 'Sriya', 'Mother', '0770195418'),
(300, 59, 'Null', 'Null', 'Null'),
(301, 63, 'Null', 'Null', 'Null'),
(302, 71, 'Null', 'Null', 'Null'),
(303, NULL, 'Nill', 'Nill', 'Nill'),
(312, 18, 'Chamila Gunawardena', 'Mother', '0771299701'),
(313, 28, 'Mrs. Karuna Balasuriya', 'Mother', '0718404094'),
(314, 30, 'Chulan Lasantha', 'Husbund', '0774674899'),
(315, 33, 'S. Anusha', 'Mother', '076 8910378'),
(317, 32, 'Ashoka Chandrasiri', 'Farther', '0779971049'),
(318, 29, 'E A Jayasinghe', 'Mother', '0763548209'),
(319, 31, 'Nimali Renuka', 'Mother', '0769622485'),
(323, 81, 'Null', 'Null', 'Null'),
(324, 19, 'Arusha', 'Brother', '0719400013'),
(325, 51, 'Moshe Dilmi Fernando', 'Sister', '0716978015'),
(327, 73, 'Null', 'Null', 'Null'),
(329, 39, 'Niranjani Fernando', 'Sister', '0776117707'),
(330, 21, 'Null', 'Null', 'Null'),
(334, 45, 'Null', 'Null', 'Null'),
(335, 68, 'Null', 'Null', 'Null'),
(336, 62, 'Null', 'Null', 'Null'),
(340, 53, 'Null', 'Null', 'Null'),
(341, 46, 'Ramya', 'Mother', '0719931357'),
(343, 78, 'Null', 'Null', 'Null'),
(345, 86, 'Test', 'Test', '+94 76 416 0777'),
(346, 88, 'Ranmali Ariyawansa', 'Mother', '0703286211'),
(347, 87, 'NIL', 'nil', '0764160777'),
(348, 55, 'Null', 'Null', 'Null');

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
(235, 36, 'Elite Rent A Car (Pvt) Ltd', 1.00),
(236, 67, 'Null', 0.00),
(238, 66, 'Null', 0.00),
(242, 61, 'Null', 0.00),
(243, 69, 'Null', 0.00),
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
(273, 82, 'Null', -0.25),
(274, 38, 'SR Rent a Car', 1.00),
(278, 44, 'UAE EXCHANGE CENTRE LLC', 7.00),
(279, 44, 'BURJ COOL TECHNICAL SERVICES', 3.00),
(280, 44, 'HSBC', 3.00),
(281, 77, 'Null', 0.00),
(282, 41, 'SR Rent A Car (Pvt) Ltd', 1.00),
(291, 14, '5', 10.00),
(292, 17, '2', 5.50),
(295, 56, 'Null', 0.00),
(296, 57, 'Null', -0.25),
(304, 58, 'Null', 0.00),
(313, 35, 'Spillburg Vacations (Pvt) Ltd', 0.80),
(316, 24, 'Pixzarloop (Pvt) Ltd', 1.00),
(321, 80, 'Null', 0.00),
(323, 79, 'Null', 0.00),
(328, 83, 'Null', -0.25),
(336, 27, 'BDO partners', 6.00),
(337, 27, 'Idea Group limited', 1.00),
(347, 60, 'Null', 0.00),
(349, 52, 'Rajagiriya Tours Pvt Ltd', 2.00),
(350, 59, 'Null', 0.00),
(351, 63, 'Null', 0.00),
(352, 71, 'Null', 0.00),
(371, 18, 'Explore Vacations & Travels (Pvt) Ltd', 6.00),
(372, 28, 'Union Bank of Colombo PLC', 1.00),
(373, 28, 'National Transport Commission', 5.00),
(374, 28, 'Explore Vacations and Travels Pvt. Ltd.', 3.00),
(375, 30, 'RV Fashion', 2.00),
(376, 30, 'Soar Technology Pvt Ltd', 2.50),
(377, 30, 'Luck Fashion Pvt Ltd', 2.50),
(378, 30, 'Explore Vacations & Travels Pvt Latd', 7.00),
(379, 33, 'Explore Vacations & Travels PVT LTD', 2.20),
(381, 32, 'ADE Lanka (Pvt) Ltd', 1.00),
(382, 32, 'Advanced Cleaning Service (Pvt) Ltd', 1.00),
(383, 32, 'Explore Vacations & Travels (Pvt) Ltd', 1.50),
(384, 29, 'Ave Maria Hospital Pvt Ltd -', 6.00),
(385, 29, 'Ammirato Foods', 3.00),
(386, 29, 'Formula Express Pvt Ltd', 3.00),
(387, 29, 'Explore Vacations and Travels Pvt Ltd', 3.50),
(388, 31, 'Elite Rent A Car (pvt) Ltd', 1.00),
(392, 81, 'Null', 0.00),
(393, 19, 'Sri Lanka Navy', 16.00),
(394, 19, 'Sanoreech Hotel', 2.00),
(395, 51, 'Lanka Sports Reizen Pvt Ltd', 2.50),
(396, 51, 'Dilaksha Fashions - Seeduwa', 5.00),
(397, 51, 'Fits Express Pvt Ltd', 2.00),
(399, 73, 'Null', 0.00),
(401, 39, 'Ansell Textile Lanka PVT LTD', 6.50),
(402, 39, 'Melbourne Textile Washing Plant', 2.00),
(403, 21, '00', 0.00),
(407, 45, 'Bread Talk', 3.00),
(408, 68, 'Null', 0.00),
(409, 62, 'Null', -0.25),
(411, 53, 'Null', -0.25),
(412, 46, 'Mas Holding', 12.00),
(413, 78, 'Null', 0.00),
(414, 55, 'Null', 0.00);

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
(11, 16, 14, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2004-07-11', NULL, NULL),
(14, 16, 15, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-03-05', NULL, 11),
(17, 18, 17, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-11-15', '2020-11-23', 14),
(18, 17, 11, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-02-16', NULL, 14),
(19, 24, 20, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2024-05-10', NULL, 14),
(20, 19, 19, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-02-21', NULL, 14),
(21, 20, 18, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2015-12-28', NULL, 11),
(24, 24, 22, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-13', NULL, 19),
(25, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-02-12', '2027-02-12', 19),
(26, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-01-15', NULL, 19),
(27, 18, 23, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-01', NULL, 17),
(28, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-01-05', NULL, 14),
(29, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-05-03', NULL, 14),
(30, 17, 25, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-02-15', NULL, 14),
(31, 17, 26, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-11-11', NULL, 14),
(32, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-09-26', NULL, 14),
(33, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-01-18', NULL, 14),
(35, 18, 28, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-05-23', NULL, 17),
(36, 23, 29, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-01-15', NULL, 64),
(37, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-09-15', NULL, 14),
(38, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-10-11', NULL, 14),
(39, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-05-03', NULL, 21),
(40, 21, 33, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-02-20', NULL, 14),
(41, 21, 34, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-01-24', NULL, 14),
(42, 21, 34, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-11-28', NULL, 14),
(43, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-29', NULL, 14),
(44, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-21', NULL, 14),
(45, 2, 16, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2021-05-01', NULL, 14),
(46, 27, 36, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2025-09-13', NULL, 45),
(47, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2017-12-27', NULL, 14),
(48, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2019-08-18', NULL, 14),
(49, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-11-04', NULL, 14),
(50, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-26', NULL, 14),
(51, 2, 35, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-19', NULL, 45),
(52, 19, 10, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2026-01-04', NULL, 14),
(53, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-03-01', NULL, 14),
(54, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-03-02', NULL, 14),
(55, 17, 40, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-02-28', NULL, 18),
(56, 26, 42, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2017-09-30', NULL, 14),
(57, 26, 41, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-01-10', NULL, 14),
(58, 26, 41, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-08-20', NULL, 14),
(59, 16, 45, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-03-30', NULL, 14),
(60, 22, 43, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-05-24', NULL, 14),
(61, 23, 44, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-03-09', NULL, 14),
(62, 27, 39, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-12-10', NULL, 45),
(63, 26, 46, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-12-30', NULL, 11),
(64, 26, 48, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-06-30', NULL, 14),
(65, 25, 47, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-08-07', NULL, 64),
(66, 26, 27, 'Full-Time', 'Probation', 'Elite Rent a Car (Pvt) Ltd', '2025-07-19', NULL, 64),
(67, 26, 27, 'Full-Time', 'Probation', 'Elite Rent a Car (Pvt) Ltd', '2025-11-02', NULL, 64),
(68, 27, 38, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-11-12', NULL, 45),
(69, 25, 49, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2026-03-08', NULL, 21),
(70, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2021-05-20', NULL, 21),
(71, 25, 47, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-03-28', NULL, 21),
(72, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-03-31', NULL, 14),
(73, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2022-02-28', NULL, 21),
(74, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-02-18', NULL, 14),
(75, 25, 52, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-11-17', NULL, 21),
(76, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-07-07', NULL, 14),
(77, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-24', NULL, 14),
(78, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-07-30', NULL, 20),
(79, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-01', NULL, 21),
(80, 19, 10, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-01-31', NULL, 14),
(81, 25, 50, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-22', NULL, 21),
(82, 25, 51, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-02-10', NULL, 21),
(83, 25, 51, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-03-02', NULL, 21),
(85, 24, 34, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-06-02', NULL, NULL),
(86, 2, 37, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-05-01', NULL, 45),
(87, 16, 53, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-06-10', NULL, 14),
(88, 24, 21, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-06-16', '2027-06-16', 19);

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
(1, 24, 2, 1.00, 11.00, '2026-04-06 07:57:41'),
(2, 36, 2, 1.00, 9.00, '2026-05-14 06:22:31'),
(3, 37, 2, 2.00, 8.00, '2026-05-26 07:58:12'),
(4, 27, 3, 2.50, 0.50, '2026-06-09 06:36:34'),
(5, 19, 3, 0.50, 6.50, '2026-05-15 04:44:47'),
(6, 17, 3, 2.00, 0.50, '2026-06-12 05:09:05'),
(7, 36, 3, 2.50, 3.50, '2026-06-18 07:23:10'),
(8, 38, 2, 2.00, 9.00, '2026-05-28 08:36:52'),
(9, 26, 3, 3.50, 1.00, '2026-06-07 13:13:49'),
(10, 27, 1, 3.00, 4.00, '2026-05-19 06:38:59'),
(11, 14, 3, 0.50, 3.50, '2026-05-19 08:08:26'),
(12, 35, 3, 3.00, 1.00, '2026-06-15 05:30:46'),
(13, 47, 1, 1.00, 9.00, '2026-05-19 12:10:45'),
(14, 60, 2, 2.00, 7.00, '2026-06-15 06:50:53'),
(15, 60, 3, 1.00, 3.50, '2026-05-19 12:10:58'),
(16, 54, 2, 2.00, 12.00, '2026-05-19 12:11:12'),
(17, 50, 1, 1.00, 11.00, '2026-05-19 12:11:18'),
(18, 48, 1, 2.00, 12.00, '2026-05-19 12:11:25'),
(19, 20, 3, 2.00, 3.00, '2026-05-26 11:17:26'),
(20, 40, 3, 2.00, 5.00, '2026-06-18 09:20:17'),
(21, 70, 2, 1.00, 12.00, '2026-05-21 08:01:48'),
(22, 21, 3, 0.50, 3.50, '2026-05-22 05:21:14'),
(23, 38, 3, 1.00, 5.50, '2026-05-22 10:45:30'),
(24, 77, 3, 0.50, 4.50, '2026-05-24 11:23:44'),
(25, 51, 3, 1.50, 3.50, '2026-06-02 05:19:07'),
(26, 31, 3, 1.00, 4.50, '2026-05-25 08:06:02'),
(27, 30, 2, 1.00, 9.00, '2026-05-25 08:21:24'),
(28, 30, 1, 3.00, 11.00, '2026-05-25 11:57:42'),
(29, 79, 3, 2.00, 1.50, '2026-06-18 07:50:50'),
(30, 37, 3, 0.50, 5.50, '2026-05-26 07:57:13'),
(31, 31, 2, 1.00, 6.00, '2026-05-26 07:57:32'),
(32, 73, 1, 1.00, 13.00, '2026-05-27 08:56:05'),
(33, 70, 3, 3.00, 1.00, '2026-06-09 09:10:07'),
(34, 81, 3, 1.00, 2.50, '2026-05-27 12:16:47'),
(35, 25, 3, 2.00, 2.50, '2026-06-18 09:51:07'),
(36, 39, 3, 3.00, 2.50, '2026-05-28 06:03:35'),
(37, 55, 3, 1.00, 0.00, '2026-05-28 07:17:09'),
(38, 18, 1, 3.00, 8.00, '2026-05-28 08:37:10'),
(39, 18, 3, 1.00, 2.00, '2026-05-28 08:37:24'),
(40, 64, 3, 1.00, 5.50, '2026-05-28 08:37:34'),
(41, 83, 3, 1.50, 3.00, '2026-06-16 10:45:17'),
(42, 78, 2, 1.00, 7.00, '2026-06-01 10:12:28'),
(43, 32, 1, 6.00, 8.00, '2026-06-09 06:08:26'),
(44, 82, 3, 1.00, 6.00, '2026-06-02 04:10:27'),
(45, 73, 3, 3.50, 1.50, '2026-06-18 10:26:16'),
(46, 29, 3, 2.50, 2.00, '2026-06-17 07:47:13'),
(47, 65, 3, 1.50, 2.50, '2026-06-12 05:43:24'),
(48, 83, 1, 8.00, 6.00, '2026-06-09 06:52:32'),
(49, 74, 3, 1.00, 6.00, '2026-06-11 04:03:05'),
(50, 40, 2, 2.00, 6.00, '2026-06-12 05:08:27'),
(51, 75, 2, 2.00, 8.00, '2026-06-12 10:05:39'),
(52, 20, 2, 1.00, 12.00, '2026-06-15 06:49:19'),
(53, 33, 1, 3.00, 11.00, '2026-06-15 06:50:02'),
(54, 30, 3, 1.00, 2.50, '2026-06-15 06:56:45'),
(55, 42, 3, 1.00, 5.50, '2026-06-15 06:56:56'),
(56, 51, 2, 2.00, 7.00, '2026-06-15 08:55:56'),
(57, 46, 3, 1.00, 5.00, '2026-06-15 09:03:45'),
(58, 75, 1, 3.00, 11.00, '2026-06-16 11:02:49'),
(59, 24, 3, 1.00, 6.00, '2026-06-16 11:12:49'),
(60, 71, 3, 1.00, 3.50, '2026-06-17 04:17:52'),
(61, 78, 3, 0.50, 5.50, '2026-06-18 02:32:27'),
(62, 86, 3, 2.00, 3.50, '2026-06-18 04:15:58'),
(63, 64, 1, 3.00, 11.00, '2026-06-18 09:17:58');

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
(16, 21, 2, 0.00, '2026-05-15 13:40:16', '2026-05-30 10:40:31'),
(18, 73, 1, 0.00, '2026-05-22 13:22:18', '2026-05-22 13:22:18'),
(20, 45, 1, 0.00, '2026-06-01 09:58:00', '2026-06-01 09:58:00'),
(21, 86, 1, 0.00, '2026-06-15 09:01:08', '2026-06-15 09:01:08');

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
(68, 3, 6.50),
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
(73, 3, 4.00),
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
(86, 1, 14.00),
(86, 2, 4.00),
(86, 3, 5.50),
(87, 3, 3.00),
(88, 3, 6.00);

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
-- Table structure for table `gate_pass_requests`
--

CREATE TABLE `gate_pass_requests` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `gate_pass_date` date NOT NULL,
  `out_time` time NOT NULL,
  `return_time` time NOT NULL,
  `reason` text NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `companion_employee_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`companion_employee_ids`)),
  `status` enum('PENDING','APPROVED','REJECTED','CHECKED_OUT','COMPLETED') NOT NULL DEFAULT 'PENDING',
  `checked_out_at` datetime DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_in_at` datetime DEFAULT NULL,
  `checked_in_by` int(11) DEFAULT NULL,
  `gate_pass_code` varchar(20) DEFAULT NULL,
  `reject_reason` text DEFAULT NULL,
  `manager_comment` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gate_pass_requests`
--

INSERT INTO `gate_pass_requests` (`id`, `employee_id`, `employee_name`, `contact_no`, `manager_id`, `gate_pass_date`, `out_time`, `return_time`, `reason`, `vehicle_no`, `companion_employee_ids`, `status`, `checked_out_at`, `checked_out_by`, `checked_in_at`, `checked_in_by`, `gate_pass_code`, `reject_reason`, `manager_comment`, `remark`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(12, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-05-28', '13:05:00', '01:32:00', 'lunch', 'BBS-8551', NULL, 'COMPLETED', '2026-05-28 13:33:53', 79, '2026-05-28 13:34:07', 79, 'GP-DAMS5551', NULL, NULL, NULL, '2026-05-28 07:36:03', '2026-05-28 08:04:07', NULL, NULL),
(13, 35, 'Thimansa Victoria', '0764801145', 17, '2026-05-28', '15:51:00', '16:10:00', 'to buy food', NULL, '[41]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-THIM3553', NULL, NULL, NULL, '2026-05-28 10:14:05', '2026-05-28 10:34:53', NULL, NULL),
(15, 55, 'Lalin Amith', '076 594 6923', 18, '2026-05-29', '13:20:00', '14:20:00', 'Seylan', 'BDG-5915', NULL, 'COMPLETED', '2026-06-02 10:16:55', 55, '2026-06-02 10:17:17', 55, 'GP-LALI8018', NULL, NULL, NULL, '2026-05-29 07:53:04', '2026-06-02 04:47:17', NULL, NULL),
(16, 51, 'Moshin  Fernando', '0787358598', 45, '2026-05-29', '14:50:00', '15:30:00', 'lunch', NULL, NULL, 'COMPLETED', '2026-05-29 15:39:02', 51, '2026-05-29 15:39:10', 51, 'GP-MOSH3625', NULL, NULL, NULL, '2026-05-29 09:12:38', '2026-05-29 10:09:10', NULL, NULL),
(17, 82, 'Lahiru Kumara', '0753871334', 21, '2026-05-29', '15:46:00', '16:30:00', 'seeduwa', 'BKC-8728', '[83]', 'COMPLETED', '2026-05-29 15:52:05', 82, '2026-05-29 16:39:28', 82, 'GP-LAHI3098', NULL, NULL, NULL, '2026-05-29 10:19:28', '2026-05-29 11:09:28', NULL, NULL),
(19, 55, 'Lalin Amith', '076 594 6923', 18, '2026-06-01', '10:52:00', '11:45:00', 'Bank', 'BDG-5619', NULL, 'COMPLETED', '2026-06-02 10:16:51', 55, '2026-06-02 10:17:14', 55, 'GP-LALI7395', NULL, NULL, NULL, '2026-06-01 05:24:37', '2026-06-02 04:47:14', NULL, NULL),
(20, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-01', '11:15:00', '13:30:00', 'Ja ela Dfcc/ HNB', 'BGW-8451', NULL, 'COMPLETED', '2026-06-01 11:13:41', 51, '2026-06-01 15:00:49', 51, 'GP-MOSH2541', NULL, NULL, 'office work', '2026-06-01 05:39:35', '2026-06-01 09:30:49', NULL, NULL),
(21, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-01', '13:14:00', '14:10:00', 'Lunch', 'BCP-3944', NULL, 'COMPLETED', '2026-06-01 14:21:55', 83, '2026-06-02 13:07:34', 83, 'GP-ASHE9309', NULL, NULL, NULL, '2026-06-01 07:45:50', '2026-06-02 07:37:34', NULL, NULL),
(22, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-01', '13:22:00', '13:55:00', 'lunch', 'BIJ-8643', '[61]', 'COMPLETED', '2026-06-01 13:26:49', 69, '2026-06-01 14:55:07', 69, 'GP-RAVI4916', NULL, NULL, NULL, '2026-06-01 07:53:58', '2026-06-01 09:25:07', NULL, NULL),
(23, 21, 'Nilantha', '076 820 0093', 14, '2026-06-01', '13:23:00', '13:40:00', 'lunch time', 'BGW-8305', NULL, 'COMPLETED', '2026-06-01 13:31:10', 21, '2026-06-01 14:00:00', 21, 'GP-NILA9977', NULL, NULL, NULL, '2026-06-01 07:55:15', '2026-06-01 08:30:00', NULL, NULL),
(24, 55, 'Lalin Amith', '076 594 6923', 18, '2026-06-01', '14:54:00', '15:14:00', 'Foodcity', 'BEX-3578', '[20]', 'COMPLETED', '2026-06-02 10:16:47', 55, '2026-06-02 10:17:10', 55, 'GP-LALI9444', NULL, NULL, NULL, '2026-06-01 09:26:44', '2026-06-02 04:47:10', NULL, NULL),
(25, 17, 'Mihiran', '071 477 0069', 14, '2026-06-01', '14:58:00', '15:20:00', 'Bring lunch', 'BGW-9980', NULL, 'COMPLETED', '2026-06-02 09:35:39', 17, '2026-06-02 09:35:50', 17, 'GP-MIHI6190', NULL, NULL, NULL, '2026-06-01 09:26:47', '2026-06-02 04:05:50', NULL, NULL),
(26, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-01', '15:15:00', '15:58:00', 'lunch', NULL, NULL, 'COMPLETED', '2026-06-01 15:13:56', 51, '2026-06-01 16:45:37', 51, 'GP-MOSH9941', NULL, NULL, NULL, '2026-06-01 09:31:54', '2026-06-01 11:15:37', NULL, NULL),
(27, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-01', '15:42:00', '04:15:00', 'fueling', 'CBM-5706', NULL, 'COMPLETED', '2026-06-02 15:41:17', 69, '2026-06-02 15:41:29', 69, 'GP-RAVI3925', NULL, NULL, NULL, '2026-06-01 10:14:00', '2026-06-02 10:11:29', NULL, NULL),
(28, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-01', '16:30:00', '16:50:00', 'to get birthday vouchers from keels', 'BGW-8451', NULL, 'COMPLETED', '2026-06-01 17:27:50', 51, '2026-06-02 10:45:23', 51, 'GP-MOSH5895', NULL, NULL, NULL, '2026-06-01 11:15:21', '2026-06-02 05:15:23', NULL, NULL),
(29, 55, 'Lalin Amith', '076 594 6923', 18, '2026-06-02', '10:00:00', '10:30:00', 'Wheel Alignment CAI - 1848', 'CAI-1848', NULL, 'COMPLETED', '2026-06-02 10:16:38', 55, '2026-06-02 10:17:04', 55, 'GP-LALI1593', NULL, NULL, NULL, '2026-06-02 04:32:58', '2026-06-02 04:47:04', NULL, NULL),
(30, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-02', '10:30:00', '10:40:00', 'seeduwa', 'BKC-8728', '[21]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-LAHI1768', NULL, NULL, NULL, '2026-06-02 04:50:23', '2026-06-02 04:50:57', NULL, NULL),
(31, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-02', '10:50:00', '01:00:00', 'wattala NTB', 'BGW-8451', NULL, 'COMPLETED', '2026-06-02 10:52:30', 51, '2026-06-02 14:46:06', 51, 'GP-MOSH5065', NULL, NULL, NULL, '2026-06-02 05:16:24', '2026-06-02 09:16:06', NULL, NULL),
(32, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-02', '13:15:00', '14:15:00', 'Luhcn', 'BDZ-2070', NULL, 'COMPLETED', '2026-06-02 13:07:15', 83, '2026-06-02 14:04:49', 83, 'GP-ASHE5804', NULL, NULL, NULL, '2026-06-02 07:19:47', '2026-06-02 08:34:49', NULL, NULL),
(33, 17, 'Mihiran', '071 477 0069', 14, '2026-06-02', '13:30:00', '14:00:00', 'Green Motion office & Raddaluwa for mobile phone repair', 'BGW-9980', '[27]', 'COMPLETED', '2026-06-02 13:31:37', 17, '2026-06-02 14:34:01', 17, 'GP-MIHI3359', NULL, NULL, NULL, '2026-06-02 07:57:27', '2026-06-02 09:04:01', NULL, NULL),
(34, 71, 'Dicsion Kumara', '0761414555', 21, '2026-06-02', '15:20:00', '15:51:00', 'paint shop', 'BJO-4883', NULL, 'COMPLETED', '2026-06-02 16:08:19', 71, '2026-06-10 14:13:28', 71, 'GP-DICS3954', NULL, NULL, NULL, '2026-06-02 09:51:29', '2026-06-10 08:43:28', NULL, NULL),
(35, 71, 'Dicsion Kumara', '0761414555', 21, '2026-06-02', '15:20:00', '15:51:00', 'paint shop', 'BJO-4883', NULL, 'COMPLETED', '2026-06-02 16:08:29', 71, '2026-06-10 14:13:21', 71, 'GP-DICS5064', NULL, NULL, NULL, '2026-06-02 09:53:26', '2026-06-10 08:43:21', NULL, NULL),
(36, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-02', '15:35:00', '04:10:00', 'lunch', 'BIJ-8045', '[61]', 'COMPLETED', '2026-06-02 15:43:25', 69, '2026-06-02 16:25:45', 69, 'GP-RAVI1477', NULL, NULL, NULL, '2026-06-02 10:06:57', '2026-06-02 10:55:45', NULL, NULL),
(37, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-02', '17:10:00', '12:00:00', 'bank', NULL, NULL, 'COMPLETED', '2026-06-02 17:28:25', 51, '2026-06-02 18:40:37', 51, 'GP-MOSH1441', NULL, NULL, NULL, '2026-06-02 11:40:03', '2026-06-02 13:10:37', NULL, NULL),
(38, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-03', '10:57:00', '11:30:00', 'lunch', 'CAY-0542', '[61]', 'COMPLETED', '2026-06-08 15:12:38', 69, '2026-06-08 15:14:01', 69, 'GP-RAVI3613', NULL, NULL, NULL, '2026-06-03 05:24:23', '2026-06-08 09:44:01', NULL, NULL),
(39, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-03', '13:15:00', '14:15:00', 'Lanch', 'BCP-3946', NULL, 'COMPLETED', '2026-06-04 13:32:54', 83, '2026-06-05 13:50:37', 83, 'GP-ASHE4258', NULL, NULL, NULL, '2026-06-03 07:23:13', '2026-06-05 08:20:37', NULL, NULL),
(40, 17, 'Mihiran', '071 477 0069', 14, '2026-06-04', '11:25:00', '11:50:00', 'Elite shuttle sticker quotation', 'PD-7635', NULL, 'COMPLETED', '2026-06-04 11:46:35', 17, '2026-06-04 12:53:15', 17, 'GP-MIHI5835', NULL, NULL, NULL, '2026-06-04 05:56:11', '2026-06-04 07:23:15', NULL, NULL),
(41, 55, 'Lalin Amith', '076 594 6923', 18, '2026-06-04', '11:25:00', '23:50:00', 'seylan bank', 'BDG-5915', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-LALI1107', NULL, NULL, NULL, '2026-06-04 05:57:34', '2026-06-04 06:02:50', NULL, NULL),
(42, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-04', '13:15:00', '14:15:00', 'lunch', NULL, '[21]', 'COMPLETED', '2026-06-04 14:15:35', 83, '2026-06-05 13:50:30', 83, 'GP-ASHE9402', NULL, NULL, NULL, '2026-06-04 07:38:10', '2026-06-05 08:20:30', NULL, NULL),
(43, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-05', '09:15:00', '10:00:00', 'seeduwa bank/ mobitel', 'BGW-8451', NULL, 'COMPLETED', '2026-06-05 09:16:17', 51, '2026-06-05 13:24:40', 51, 'GP-MOSH5492', NULL, NULL, NULL, '2026-06-05 03:37:26', '2026-06-05 07:54:40', NULL, NULL),
(45, 71, 'Dicsion Kumara', '0761414555', 21, '2026-06-05', '12:19:00', '12:50:00', 'paint shop', 'BJO-4883', NULL, 'COMPLETED', '2026-06-05 12:58:34', 71, '2026-06-10 14:13:14', 71, 'GP-DICS2095', NULL, NULL, NULL, '2026-06-05 06:50:09', '2026-06-10 08:43:14', NULL, NULL),
(46, 71, 'Dicsion Kumara', '0761414555', 21, '2026-06-05', '12:22:00', '12:56:00', 'paint shop', 'BJO-4883', NULL, 'COMPLETED', '2026-06-05 12:33:22', 71, '2026-06-10 14:12:48', 71, 'GP-DICS5747', NULL, NULL, NULL, '2026-06-05 06:53:05', '2026-06-10 08:42:48', NULL, NULL),
(47, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-05', '13:15:00', '14:15:00', 'lunch', 'BDZ-2070', NULL, 'COMPLETED', '2026-06-05 14:09:48', 83, '2026-06-16 12:51:26', 83, 'GP-ASHE3973', NULL, NULL, NULL, '2026-06-05 07:24:58', '2026-06-16 07:21:26', NULL, NULL),
(48, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-05', '13:25:00', '14:30:00', 'lunch', NULL, NULL, 'COMPLETED', '2026-06-05 13:27:48', 51, '2026-06-05 16:53:16', 51, 'GP-MOSH3108', NULL, NULL, NULL, '2026-06-05 07:55:15', '2026-06-05 11:23:16', NULL, NULL),
(49, 43, 'Sameera  Dilshan', '0777897292', 20, '2026-06-05', '13:30:00', '13:49:00', 'To Seeduwa', NULL, NULL, 'COMPLETED', '2026-06-05 14:30:12', 43, '2026-06-05 14:30:20', 43, 'GP-SAME4473', NULL, NULL, NULL, '2026-06-05 07:57:59', '2026-06-05 09:00:20', NULL, NULL),
(50, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-05', '13:50:00', '14:50:00', 'lunch', 'BKC-8728', '[21]', 'COMPLETED', '2026-06-05 13:54:45', 82, '2026-06-05 14:54:30', 82, 'GP-LAHI2781', NULL, NULL, NULL, '2026-06-05 08:17:43', '2026-06-05 09:24:30', NULL, NULL),
(51, 60, 'Keshika', '077 200 9110', 14, '2026-06-05', '14:55:00', '15:15:00', 'Buy Food', 'BJM-3479', '[41]', 'COMPLETED', '2026-06-09 14:13:44', 60, '2026-06-09 14:13:53', 60, 'GP-KESH4108', NULL, NULL, NULL, '2026-06-05 09:14:34', '2026-06-09 08:43:53', NULL, NULL),
(52, 20, 'Deshan', '076 534 5883', 14, '2026-06-05', '14:44:00', '14:44:00', 'lunch', 'BEX-3578', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-DESH8049', NULL, NULL, NULL, '2026-06-05 09:14:39', '2026-06-05 10:22:56', NULL, NULL),
(54, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-05', '16:20:00', '16:55:00', 'candles', 'BGW-8451', NULL, 'COMPLETED', '2026-06-05 16:57:28', 51, '2026-06-08 09:58:36', 51, 'GP-MOSH9981', NULL, NULL, NULL, '2026-06-05 11:20:32', '2026-06-08 04:28:36', NULL, NULL),
(55, 20, 'Deshan', '076 534 5883', 14, '2026-06-05', '17:24:00', '06:00:00', 'To buy refreshments to Mr. Thomas vip customer', 'CBU-1826', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-DESH8333', NULL, NULL, NULL, '2026-06-05 11:56:44', '2026-06-08 12:23:35', NULL, NULL),
(56, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-08', '09:58:00', '10:30:00', 'dandugama masterprint and bank', 'BGW-8451', NULL, 'COMPLETED', '2026-06-08 10:13:37', 51, '2026-06-08 12:12:07', 51, 'GP-MOSH3977', NULL, NULL, NULL, '2026-06-08 04:29:47', '2026-06-08 06:42:07', NULL, NULL),
(57, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-08', '12:12:00', '17:12:00', 'maradana', 'BGW-8451', NULL, 'COMPLETED', '2026-06-08 12:21:17', 51, '2026-06-12 11:43:35', 51, 'GP-MOSH2195', NULL, NULL, NULL, '2026-06-08 06:46:44', '2026-06-12 06:13:35', NULL, NULL),
(58, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-08', '13:15:00', '14:15:00', 'lunch', 'BDZ-2070', '[21]', 'COMPLETED', '2026-06-08 14:20:09', 83, '2026-06-16 12:51:22', 83, 'GP-ASHE9359', NULL, NULL, NULL, '2026-06-08 07:36:54', '2026-06-16 07:21:22', NULL, NULL),
(59, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-08', '15:00:00', '16:30:00', 'vehicle pickup', 'CBM-5700', '[78]', 'COMPLETED', '2026-06-08 17:29:51', 69, '2026-06-08 17:30:05', 69, 'GP-RAVI9111', NULL, NULL, NULL, '2026-06-08 09:36:45', '2026-06-08 12:00:05', NULL, NULL),
(60, 17, 'Mihiran', '071 477 0069', 14, '2026-06-08', '17:51:00', '18:15:00', 'vehicle move to elite office', 'CBQ-8849', NULL, 'CHECKED_OUT', '2026-06-08 17:54:54', 17, NULL, NULL, 'GP-MIHI5549', NULL, NULL, NULL, '2026-06-08 12:22:40', '2026-06-08 12:24:54', NULL, NULL),
(61, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-09', '09:55:00', '10:30:00', 'pharmacy and seeduwa', 'BGW-8451', NULL, 'COMPLETED', '2026-06-09 10:06:12', 51, '2026-06-12 11:43:42', 51, 'GP-MOSH4003', NULL, NULL, NULL, '2026-06-09 04:26:28', '2026-06-12 06:13:42', NULL, NULL),
(65, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-09', '14:28:00', '14:28:00', 'seeduwa', 'BBS-8551', NULL, 'COMPLETED', '2026-06-11 13:27:08', 79, '2026-06-16 10:57:33', 79, 'GP-DAMS2765', NULL, NULL, NULL, '2026-06-09 08:59:01', '2026-06-16 05:27:33', NULL, NULL),
(66, 71, 'Dicsion Kumara', '0761414555', 21, '2026-06-10', '11:49:00', '00:20:00', 'paint shop', NULL, NULL, 'COMPLETED', '2026-06-10 14:12:24', 71, '2026-06-10 14:12:40', 71, 'GP-DICS3731', NULL, NULL, NULL, '2026-06-10 06:20:34', '2026-06-10 08:42:40', NULL, NULL),
(68, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-10', '16:50:00', '17:05:00', 'seeduwa', 'BKC-8728', '[75,21]', 'COMPLETED', '2026-06-10 16:52:29', 82, '2026-06-10 17:22:44', 82, 'GP-LAHI7994', NULL, NULL, NULL, '2026-06-10 11:17:29', '2026-06-10 11:52:44', NULL, NULL),
(69, 60, 'Keshika', '077 200 9110', 14, '2026-06-10', '17:00:00', '17:15:00', 'Food purpose', NULL, '[41]', 'COMPLETED', '2026-06-16 15:44:58', 60, '2026-06-16 15:45:03', 60, 'GP-KESH4142', NULL, NULL, NULL, '2026-06-10 11:23:48', '2026-06-16 10:15:03', NULL, NULL),
(71, 28, 'Hasitha Chandrasekara', '0762545661', 18, '2026-06-11', '12:31:00', '12:31:00', 'lunch', 'BFE-6563', '[29]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-HASI1751', NULL, NULL, NULL, '2026-06-11 07:03:00', '2026-06-11 07:04:00', NULL, NULL),
(72, 75, 'Indika Acoinas', '0773843033', 21, '2026-06-11', '12:53:00', '13:53:00', 'purchase', 'BGM-9788', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-INDI4101', NULL, NULL, NULL, '2026-06-11 07:24:56', '2026-06-11 07:25:29', NULL, NULL),
(73, 21, 'Nilantha', '076 820 0093', 14, '2026-06-11', '12:56:00', '13:15:00', 'lunch', 'BGW-8305', NULL, 'COMPLETED', '2026-06-11 13:01:59', 21, '2026-06-12 12:39:15', 21, 'GP-NILA6165', NULL, NULL, NULL, '2026-06-11 07:27:51', '2026-06-12 07:09:15', NULL, NULL),
(74, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-11', '13:20:00', '14:20:00', 'lunch', 'BKC-8728', '[21]', 'COMPLETED', '2026-06-11 13:27:41', 82, '2026-06-11 14:14:24', 82, 'GP-LAHI9403', NULL, NULL, NULL, '2026-06-11 07:45:15', '2026-06-11 08:44:24', NULL, NULL),
(75, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-11', '13:27:00', '13:27:00', 'lunch', 'BBS-8551', NULL, 'COMPLETED', '2026-06-11 14:24:21', 79, '2026-06-16 10:57:17', 79, 'GP-DAMS2830', NULL, NULL, NULL, '2026-06-11 07:57:43', '2026-06-16 05:27:17', NULL, NULL),
(76, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-12', '09:48:00', '11:00:00', 'bank', 'BGW-8451', NULL, 'COMPLETED', '2026-06-12 10:00:38', 51, '2026-06-12 11:44:13', 51, 'GP-MOSH9043', NULL, NULL, NULL, '2026-06-12 04:20:28', '2026-06-12 06:14:13', NULL, NULL),
(77, 28, 'Hasitha Chandrasekara', '0762545661', 18, '2026-06-11', '10:25:00', '12:31:00', 'seeduwa', 'BFE-6563', '[29]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-HASI3363', NULL, NULL, NULL, '2026-06-12 04:55:00', '2026-06-12 04:57:01', NULL, NULL),
(81, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-12', '11:50:00', '11:50:00', 'vivantha', 'PE-6837', '[39,69,76,52]', 'COMPLETED', '2026-06-12 12:03:50', 79, '2026-06-16 10:56:36', 79, 'GP-DAMS4128', NULL, NULL, NULL, '2026-06-12 06:21:25', '2026-06-16 05:26:36', NULL, NULL),
(83, 69, 'Ravindu Niyangoda', '0766445502', 21, '2026-06-12', '12:27:00', '13:15:00', 'fueling', 'CBG-7372', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-RAVI7292', NULL, NULL, NULL, '2026-06-12 06:59:12', '2026-06-12 07:05:53', NULL, NULL),
(84, 55, 'Lalin Amith', '076 594 6923', 14, '2026-06-12', '13:21:00', '14:00:00', 'GM sir home', 'CBM-5700', NULL, 'CHECKED_OUT', '2026-06-19 12:13:10', 55, NULL, NULL, 'GP-LALI6209', NULL, NULL, NULL, '2026-06-12 07:53:43', '2026-06-19 06:43:10', NULL, NULL),
(85, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-12', '15:23:00', '15:23:00', 'lunch', 'BBS-8551', NULL, 'COMPLETED', '2026-06-16 10:56:50', 79, '2026-06-16 10:57:10', 79, 'GP-DAMS3158', NULL, NULL, NULL, '2026-06-12 09:53:59', '2026-06-16 05:27:10', NULL, NULL),
(86, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-15', '11:06:00', '02:06:00', 'ragama', 'BGW-8451', NULL, 'COMPLETED', '2026-06-15 11:11:46', 51, '2026-06-16 09:32:00', 51, 'GP-MOSH2571', NULL, NULL, NULL, '2026-06-15 05:36:51', '2026-06-16 04:02:00', NULL, NULL),
(87, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-16', '09:32:00', '10:32:00', 'seeduwa', 'BGW-8451', NULL, 'COMPLETED', '2026-06-16 10:00:21', 51, '2026-06-16 11:32:52', 51, 'GP-MOSH1540', NULL, NULL, NULL, '2026-06-16 04:03:25', '2026-06-16 06:02:52', NULL, NULL),
(88, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-16', '10:53:00', '23:54:00', 'personal matter', 'BBS-8551', NULL, 'COMPLETED', '2026-06-16 13:42:22', 79, '2026-06-16 13:42:25', 79, 'GP-DAMS6040', NULL, NULL, NULL, '2026-06-16 05:24:39', '2026-06-16 08:12:25', NULL, NULL),
(89, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-16', '11:28:00', '02:55:00', 'raddolugama/ seeduwa', 'BGW-8451', NULL, 'COMPLETED', '2026-06-16 12:06:49', 51, '2026-06-16 15:02:33', 51, 'GP-MOSH5271', NULL, NULL, NULL, '2026-06-16 05:59:55', '2026-06-16 09:32:33', NULL, NULL),
(90, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-16', '13:15:00', '14:15:00', 'lunch', 'BCP-3941', NULL, 'COMPLETED', '2026-06-18 12:58:30', 83, '2026-06-19 12:55:14', 83, 'GP-ASHE2737', NULL, NULL, NULL, '2026-06-16 07:28:52', '2026-06-19 07:25:14', NULL, NULL),
(92, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-16', '14:54:00', '17:30:00', 'ja ela / lunch', 'BGW-8451', NULL, 'COMPLETED', '2026-06-16 15:06:05', 51, '2026-06-17 11:24:44', 51, 'GP-MOSH7079', NULL, NULL, NULL, '2026-06-16 09:25:10', '2026-06-17 05:54:44', NULL, NULL),
(93, 60, 'Keshika', '077 200 9110', 14, '2026-06-16', '16:10:00', '16:20:00', 'food', NULL, NULL, 'COMPLETED', '2026-06-16 16:15:20', 60, '2026-06-16 16:20:09', 60, 'GP-KESH4448', NULL, NULL, NULL, '2026-06-16 10:32:55', '2026-06-16 10:50:09', NULL, NULL),
(95, 78, 'Dimath Weliwitigoda', '0702202215', 20, '2026-06-16', '16:17:00', '17:17:00', 'Seeduwa', NULL, '[44]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-DIMA8767', NULL, NULL, NULL, '2026-06-16 10:48:10', '2026-06-16 10:52:59', NULL, NULL),
(96, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-17', '11:24:00', '14:30:00', 'seeduwa/wattala', 'BGW-8451', NULL, 'COMPLETED', '2026-06-17 11:35:17', 51, '2026-06-17 15:14:48', 51, 'GP-MOSH1561', NULL, NULL, NULL, '2026-06-17 05:56:40', '2026-06-17 09:44:48', NULL, NULL),
(100, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-17', '12:31:00', '12:50:00', 'seeduwa', 'BKC-8728', '[21]', 'COMPLETED', '2026-06-17 13:08:29', 82, '2026-06-17 13:33:44', 82, 'GP-LAHI5869', NULL, NULL, NULL, '2026-06-17 07:01:50', '2026-06-17 08:03:44', NULL, NULL),
(101, 65, 'Jagath Wijesingha', '0771239784', 64, '2026-06-17', '14:05:00', '15:00:00', 'plant shop', 'BBR-0944', '[64]', 'COMPLETED', '2026-06-17 14:32:26', 65, '2026-06-17 14:32:39', 65, 'GP-JAGA4417', NULL, NULL, NULL, '2026-06-17 07:09:34', '2026-06-17 09:02:39', NULL, NULL),
(102, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-17', '13:19:00', '13:19:00', 'lunch', 'BBS-8551', NULL, 'COMPLETED', '2026-06-17 14:24:35', 79, '2026-06-17 14:24:44', 79, 'GP-DAMS5294', NULL, NULL, NULL, '2026-06-17 07:49:35', '2026-06-17 08:54:44', NULL, NULL),
(103, 55, 'Lalin Amith', '076 594 6923', 14, '2026-06-17', '13:17:00', '17:00:00', 'wattala CAY - 3385 Spare parts purchase', 'CBG-9526', '[81]', 'CHECKED_OUT', '2026-06-19 12:13:04', 55, NULL, NULL, 'GP-LALI3379', NULL, NULL, NULL, '2026-06-17 07:49:44', '2026-06-19 06:43:04', NULL, NULL),
(105, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-17', '15:11:00', '16:11:00', 'seeduwa', NULL, NULL, 'COMPLETED', '2026-06-17 15:16:57', 51, '2026-06-18 10:25:14', 51, 'GP-MOSH4208', NULL, NULL, NULL, '2026-06-17 09:42:09', '2026-06-18 04:55:14', NULL, NULL),
(106, 43, 'Sameera  Dilshan', '0777897292', 14, '2026-06-17', '16:11:00', '16:30:00', 'lunch', NULL, '[72]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-SAME8951', NULL, NULL, NULL, '2026-06-17 10:42:13', '2026-06-18 08:09:34', NULL, NULL),
(107, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-18', '10:17:00', '11:00:00', 'bank', 'BGW-8451', NULL, 'COMPLETED', '2026-06-18 10:25:05', 51, '2026-06-18 15:18:11', 51, 'GP-MOSH1568', NULL, NULL, NULL, '2026-06-18 04:48:28', '2026-06-18 09:48:11', NULL, NULL),
(108, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-18', '13:15:00', '14:15:00', 'lunch', 'CPB-3944', NULL, 'COMPLETED', '2026-06-19 12:55:03', 83, '2026-06-19 12:55:09', 83, 'GP-ASHE6773', NULL, NULL, NULL, '2026-06-18 07:28:09', '2026-06-19 07:25:09', NULL, NULL),
(109, 82, 'Lahiru Kumara', '0753871334', 21, '2026-06-18', '13:59:00', '14:59:00', 'lunch', 'BKC-8728', '[21]', 'CHECKED_OUT', '2026-06-18 14:04:03', 82, NULL, NULL, 'GP-LAHI5745', NULL, NULL, NULL, '2026-06-18 08:30:51', '2026-06-18 08:34:03', NULL, NULL),
(112, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-18', '15:16:00', '17:16:00', 'lunch', NULL, NULL, 'COMPLETED', '2026-06-18 16:33:38', 51, '2026-06-18 16:33:50', 51, 'GP-MOSH4935', NULL, NULL, NULL, '2026-06-18 09:46:51', '2026-06-18 11:03:50', NULL, NULL),
(113, 60, 'Keshika', '077 200 9110', 14, '2026-06-18', '16:05:00', '16:25:00', 'Food purposes', 'BJM-3479', NULL, 'COMPLETED', '2026-06-18 16:03:21', 60, '2026-06-18 16:30:18', 60, 'GP-KESH4537', NULL, NULL, NULL, '2026-06-18 10:28:32', '2026-06-18 11:00:18', NULL, NULL),
(114, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-18', '16:33:00', '17:34:00', 'seeduwa', 'BGW-8451', NULL, 'COMPLETED', '2026-06-19 09:33:22', 51, '2026-06-19 09:33:28', 51, 'GP-MOSH7525', NULL, NULL, NULL, '2026-06-18 11:06:40', '2026-06-19 04:03:28', NULL, NULL),
(115, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-19', '09:33:00', '10:45:00', 'municipal council office', 'BGW-8451', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-MOSH3543', NULL, NULL, NULL, '2026-06-19 04:04:25', '2026-06-19 04:08:00', NULL, NULL),
(116, 20, 'Deshan', '076 534 5883', 14, '2026-06-19', '11:00:00', '04:00:00', 'Colombo', NULL, '[78]', 'APPROVED', NULL, NULL, NULL, NULL, 'GP-DESH7330', NULL, NULL, NULL, '2026-06-19 05:48:49', '2026-06-19 05:54:59', NULL, NULL),
(118, 55, 'Lalin Amith', '076 594 6923', 18, '2026-06-19', '12:16:00', '12:45:00', 'To take lunch to MD', NULL, NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-LALI5838', NULL, NULL, NULL, '2026-06-19 06:48:26', '2026-06-19 06:49:19', NULL, NULL),
(119, 83, 'Ashen Fernando', '0781803097', 21, '2026-06-19', '13:15:00', '14:15:00', 'lunch', 'PCB-3340', NULL, 'APPROVED', NULL, NULL, NULL, NULL, 'GP-ASHE3903', NULL, NULL, NULL, '2026-06-19 07:32:30', '2026-06-19 07:39:50', NULL, NULL),
(120, 79, 'Damsak De Zoysa', '0766009719', 21, '2026-06-19', '13:55:00', '13:55:00', 'lunch', 'BBS-8551', NULL, 'CHECKED_OUT', '2026-06-19 14:10:44', 79, NULL, NULL, 'GP-DAMS7479', NULL, NULL, NULL, '2026-06-19 08:25:41', '2026-06-19 08:40:44', NULL, NULL),
(121, 51, 'Moshin  Fernando', '0787358598', 45, '2026-06-19', '16:22:00', '18:30:00', 'lunch/ dialog bill', NULL, NULL, 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 10:53:32', '2026-06-19 10:53:32', NULL, NULL);

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
(53, 'Assistant Admin Executive'),
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
(51, 'Car Washer'),
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
  `manager_id` int(11) DEFAULT NULL,
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

INSERT INTO `leave_requests` (`leave_request_id`, `employee_id`, `leave_policy_id`, `leave_start_date`, `leave_end_date`, `number_of_days`, `reason`, `oversee_member_id`, `manager_id`, `half_day_session`, `manager_comment`, `reliever_comment`, `is_special_request`, `address`, `status`, `requested_at`, `updated_at`) VALUES
(26, 24, 2, '2026-04-06', '2026-04-06', 1.00, 'severe neck pain and needed to go for a follow-up treatment on Tuesday.', 26, NULL, NULL, NULL, 'Accept..', 0, '', 'APPROVED', '2026-04-05 13:49:21', '2026-04-06 07:57:41'),
(39, 48, 1, '2026-04-14', '2026-04-15', 2.00, 'New Year', 40, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-04-09 08:12:45', '2026-05-19 12:11:25'),
(40, 64, 3, '2026-04-15', '2026-04-16', 2.00, 'personal', 67, NULL, NULL, 'not informed', 'Accepted', 0, '', 'REJECTED', '2026-04-14 12:16:49', '2026-06-12 05:07:04'),
(45, 64, 2, '2026-05-08', '2026-05-08', 1.00, 'ankle sprain', 67, NULL, NULL, 'Not Informed', 'Accepted', 0, '', 'REJECTED', '2026-05-08 03:25:04', '2026-06-12 05:07:34'),
(47, 50, 1, '2026-05-30', '2026-05-30', 1.00, 'personal things', 40, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-12 15:31:47', '2026-05-19 12:11:18'),
(49, 17, 3, '2026-05-15', '2026-05-15', 1.00, 'Baby\'s hospital visit', 35, NULL, NULL, NULL, 'I will all the responsibility', 0, '', 'APPROVED', '2026-05-14 04:33:14', '2026-05-15 04:45:01'),
(52, 36, 2, '2026-05-13', '2026-05-13', 1.00, 'I had caught a cold and needed a day to recover', 61, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-14 06:19:18', '2026-05-14 06:22:31'),
(53, 37, 2, '2026-05-13', '2026-05-13', 1.00, 'kindly note that due to heavy rain and feeling unwell,I was unable to attend work', 61, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-14 06:20:59', '2026-05-14 10:30:51'),
(54, 27, 3, '2026-05-15', '2026-05-15', 1.00, 'Personal Reason', 35, NULL, NULL, NULL, 'ok I acceppt', 0, 'Home', 'APPROVED', '2026-05-14 09:21:58', '2026-05-14 13:34:38'),
(55, 19, 4, '2026-05-15', '2026-05-15', 1.00, 'Personal Requirement', 24, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-15 02:42:37', '2026-05-15 04:44:47'),
(56, 36, 2, '2026-05-15', '2026-05-15', 1.00, 'I caught a cold and need a day to recover', 37, NULL, NULL, 'reason is not acceptable', '', 0, '', 'REJECTED', '2026-05-15 03:43:10', '2026-05-15 03:51:33'),
(57, 70, 2, '2026-05-15', '2026-05-15', 1.00, 'Fever informed Mr Nilantha', 79, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-15 03:45:32', '2026-05-21 08:01:48'),
(58, 36, 3, '2026-05-15', '2026-05-15', 1.00, 'The area is flooded', 37, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-15 04:14:39', '2026-05-15 07:37:08'),
(59, 38, 2, '2026-05-14', '2026-05-14', 1.00, 'sick', 37, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-15 09:58:17', '2026-05-15 13:12:28'),
(60, 26, 3, '2026-05-18', '2026-05-18', 1.00, 'I have my final semester exam,', 24, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-17 12:03:09', '2026-05-17 17:45:25'),
(61, 54, 2, '2026-05-18', '2026-05-19', 2.00, 'Sick', 40, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-18 08:30:56', '2026-05-19 12:11:12'),
(62, 40, 2, '2026-05-22', '2026-05-22', 1.00, 'Personal Reason', 41, NULL, NULL, 'you can\'t put medical leave it should be casual', '', 0, '', 'REJECTED', '2026-05-18 08:59:16', '2026-05-20 10:09:00'),
(63, 27, 1, '2026-05-20', '2026-05-22', 3.00, 'Hospital for person reason', 35, NULL, NULL, NULL, 'I will cover all responsibilies', 0, '', 'APPROVED', '2026-05-18 09:29:58', '2026-05-19 06:38:59'),
(65, 14, 4, '2026-05-19', '2026-05-19', 1.00, 'Personal', NULL, NULL, 'EVENING', NULL, NULL, 1, 'Home', 'APPROVED', '2026-05-19 04:42:50', '2026-05-19 08:08:26'),
(66, 60, 3, '2026-05-13', '2026-05-13', 1.00, 'Transportation issues due to flooding', NULL, NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 06:17:47', '2026-05-19 12:10:58'),
(67, 60, 2, '2026-05-18', '2026-05-18', 1.00, 'Severe Back Pain due to heat light treatment', NULL, NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 06:19:02', '2026-05-19 12:10:53'),
(68, 47, 1, '2026-05-30', '2026-05-30', 1.00, 'personal matter', 40, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-19 07:57:50', '2026-05-19 12:10:45'),
(69, 35, 3, '2026-05-20', '2026-05-20', 1.00, 'My mother\'s birthday', NULL, NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-19 09:45:29', '2026-05-19 09:47:18'),
(70, 77, 4, '2026-04-23', '2026-04-23', 1.00, 'Personal Matter', 74, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-19 13:33:23', '2026-05-24 11:23:44'),
(71, 20, 1, '2026-05-21', '2026-05-21', 1.00, 'Personal', 78, NULL, NULL, 'One day Annual leave is possible', '', 0, '', 'REJECTED', '2026-05-20 04:30:56', '2026-05-20 06:34:25'),
(72, 20, 3, '2026-05-21', '2026-05-21', 1.00, 'personal', 78, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-20 06:36:06', '2026-05-20 06:46:22'),
(75, 40, 3, '2026-05-22', '2026-05-22', 1.00, 'Personal reason', 41, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-20 15:42:40', '2026-05-20 10:36:34'),
(76, 26, 4, '2026-05-21', '2026-05-21', 1.00, 'Half day', 24, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-21 11:37:15', '2026-05-21 07:04:21'),
(77, 79, 3, '2026-05-21', '2026-05-21', 1.00, 'personal matter', 70, NULL, NULL, NULL, 'Noted', 0, '', 'APPROVED', '2026-05-21 12:53:52', '2026-05-26 04:07:38'),
(78, 21, 4, '2026-05-21', '2026-05-21', 1.00, 'personal', 39, NULL, 'EVENING', NULL, '', 0, 'casual', 'APPROVED', '2026-05-21 14:35:49', '2026-05-22 05:21:14'),
(79, NULL, 3, '2026-05-22', '2026-05-22', 1.00, 'Personal', 46, NULL, NULL, NULL, 'Noted', 0, '', 'RELIEVER ACCEPTED', '2026-05-21 18:20:09', '2026-05-22 09:47:04'),
(80, 72, 2, '2026-05-15', '2026-05-15', 1.00, 'Absence due to severe ear pain and medical treatment.', 43, NULL, NULL, NULL, NULL, 0, '', 'PENDING', '2026-05-21 19:41:39', '2026-05-21 19:41:39'),
(81, 30, 2, '2026-05-21', '2026-05-21', 1.00, 'sick', 33, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-22 11:44:15', '2026-05-25 08:21:24'),
(82, 31, 4, '2026-05-18', '2026-05-18', 1.00, 'personal', 30, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-22 12:09:02', '2026-05-25 08:06:02'),
(83, 31, 4, '2026-05-22', '2026-05-22', 1.00, 'Heavy Rain', 30, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-05-22 12:12:18', '2026-05-25 08:05:52'),
(84, 38, 3, '2026-05-22', '2026-05-22', 1.00, 'flood', 36, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-22 13:53:58', '2026-05-22 10:45:30'),
(85, 51, 4, '2026-05-25', '2026-05-25', 1.00, 'personal matter.', 46, NULL, 'MORNING', NULL, 'Noted', 0, '', 'APPROVED', '2026-05-23 19:51:17', '2026-05-25 04:59:51'),
(86, 20, 3, '2026-05-27', '2026-05-27', 1.00, 'personal', 78, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-24 16:53:19', '2026-05-26 11:17:26'),
(87, 37, 2, '2026-05-22', '2026-05-22', 1.00, 'Due to fever', 36, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-25 10:09:43', '2026-05-26 07:58:12'),
(88, 30, 1, '2026-05-27', '2026-05-29', 3.00, 'Annual leave request', 33, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-25 12:58:20', '2026-05-25 11:57:42'),
(90, 31, 2, '2026-05-25', '2026-05-25', 1.00, 'sick leave', 30, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-26 09:13:03', '2026-05-26 07:57:32'),
(91, 70, 3, '2026-05-25', '2026-05-25', 1.00, 'Funeral', 73, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-26 09:29:26', '2026-05-27 08:56:15'),
(92, 37, 4, '2026-05-28', '2026-05-28', 1.00, 'medical appointment', 38, NULL, 'EVENING', NULL, '', 0, '', 'APPROVED', '2026-05-26 10:38:34', '2026-05-26 07:57:13'),
(93, 18, 3, '2026-05-26', '2026-05-26', 1.00, 'baby hospitalized', 31, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-26 15:37:35', '2026-05-28 08:37:24'),
(94, 64, 3, '2026-05-29', '2026-05-29', 1.00, 'personal', 66, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-26 16:18:58', '2026-05-28 08:37:34'),
(95, 18, 1, '2026-05-27', '2026-05-29', 3.00, 'hospitalized', 31, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-27 09:49:44', '2026-05-28 08:37:10'),
(96, 26, 3, '2026-05-28', '2026-05-28', 1.00, 'Leave requested for May 28 due to my brotherâ€™s wedding ceremony.', 24, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-27 10:31:52', '2026-05-27 06:44:07'),
(97, 60, 2, '2026-05-26', '2026-05-26', 1.00, 'Due to migraine and unwellness', NULL, NULL, NULL, NULL, NULL, 1, '', 'APPROVED', '2026-05-27 11:51:50', '2026-06-15 06:50:53'),
(99, 73, 1, '2026-05-26', '2026-05-26', 1.00, 'personal', 70, NULL, NULL, NULL, '', 0, '0771739647', 'APPROVED', '2026-05-27 13:38:21', '2026-05-27 08:56:05'),
(100, 25, 3, '2026-05-28', '2026-05-28', 1.00, 'Acadamic', 24, NULL, NULL, NULL, '', 0, 'BCI', 'APPROVED', '2026-05-27 14:10:01', '2026-05-27 12:17:21'),
(101, 81, 3, '2026-05-25', '2026-05-25', 1.00, 'Personal Requirement', 75, NULL, NULL, NULL, 'Approved', 0, '', 'APPROVED', '2026-05-27 16:42:50', '2026-05-27 12:16:47'),
(102, 21, 3, '2026-05-26', '2026-05-27', 2.00, 'personal', 70, NULL, NULL, NULL, '', 0, 'HOD', 'RELIEVER ACCEPTED', '2026-05-27 17:56:26', '2026-06-09 06:50:24'),
(103, 72, 4, '2026-05-27', '2026-05-27', 1.00, 'personal emergency leave', 43, NULL, 'EVENING', NULL, NULL, 0, '', 'PENDING', '2026-05-27 18:10:18', '2026-05-27 18:10:18'),
(104, 38, 2, '2026-05-27', '2026-05-27', 1.00, 'sick', 37, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-28 09:17:21', '2026-05-28 08:36:52'),
(105, 39, 1, '2026-05-25', '2026-05-27', 3.00, 'Personal purpose for sister\'s treatment.. this incident I have acknowledged GM & HR', 79, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-05-28 10:31:51', '2026-05-28 06:03:35'),
(106, 55, 3, '2026-05-26', '2026-05-26', 1.00, 'personal matter', 28, NULL, NULL, NULL, 'Covered stock room responsibilities', 0, 'seeduwa', 'APPROVED', '2026-05-28 12:03:35', '2026-05-28 07:17:09'),
(107, 61, 3, '2026-05-28', '2026-05-28', 1.00, 'Fathers Hospital Discharge', 36, NULL, NULL, 'no', '', 0, '', 'REJECTED', '2026-05-28 12:24:54', '2026-06-18 09:20:12'),
(108, 27, 4, '2026-05-29', '2026-05-29', 1.00, 'Personal reason', 35, NULL, 'EVENING', NULL, 'I will cover all my responsibilities', 0, '', 'APPROVED', '2026-05-29 10:24:11', '2026-05-29 05:13:02'),
(114, 78, 2, '2026-06-01', '2026-06-01', 1.00, 'Nausea and migraine .', 44, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-01 15:04:48', '2026-06-01 10:12:28'),
(115, 83, 3, '2026-05-27', '2026-05-27', 1.00, 'Personal Requirement', 75, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-01 15:38:39', '2026-06-01 10:10:59'),
(116, 32, 1, '2026-06-03', '2026-06-05', 3.00, 'For the exam', 33, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-01 17:21:09', '2026-06-01 11:54:33'),
(117, 40, 2, '2026-06-02', '2026-06-02', 1.00, 'medical leave', 41, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-01 23:18:46', '2026-06-12 05:08:09'),
(118, 51, 3, '2026-06-03', '2026-06-03', 1.00, 'personal matter.', 46, NULL, NULL, NULL, 'Noted', 0, '', 'APPROVED', '2026-06-02 01:51:50', '2026-06-02 05:19:07'),
(119, 82, 3, '2026-06-01', '2026-06-01', 1.00, 'personal', 75, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-02 09:16:12', '2026-06-02 04:10:27'),
(121, 26, 4, '2026-06-02', '2026-06-02', 1.00, 'Attending a university viva session from 3:30 PM to 3:50 PM. Requesting a half-day leave.', 24, NULL, 'EVENING', NULL, '', 0, '', 'APPROVED', '2026-06-02 09:58:18', '2026-06-02 05:30:43'),
(122, 73, 3, '2026-06-01', '2026-06-01', 1.00, 'personal', 70, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-02 11:27:33', '2026-06-02 06:00:44'),
(123, 36, 3, '2026-06-01', '2026-06-01', 1.00, 'A personal matter', 37, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-02 11:59:57', '2026-06-08 07:37:46'),
(124, 40, 2, '2026-06-03', '2026-06-03', 1.00, 'sickness', 41, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-03 08:14:11', '2026-06-12 05:08:27'),
(125, 20, 2, '2026-06-03', '2026-06-03', 1.00, 'caught and cold', 78, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-03 08:17:32', '2026-06-15 06:49:19'),
(126, 46, 3, '2026-06-05', '2026-06-05', 1.00, 'Personal', 51, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-03 10:28:00', '2026-06-15 09:03:45'),
(127, 29, 3, '2026-06-05', '2026-06-05', 1.00, 'personal', 28, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-04 15:43:19', '2026-06-04 10:19:27'),
(128, 50, 1, '2026-06-30', '2026-06-30', 1.00, 'personal reason', 40, NULL, NULL, 'Annual Leave not allowed for 1 day', '', 0, '', 'REJECTED', '2026-06-05 18:00:52', '2026-06-12 05:10:52'),
(131, 26, 4, '2026-06-08', '2026-06-08', 1.00, 'Half-day leave requested for attending an exam.', 24, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-06-07 18:39:29', '2026-06-07 13:13:49'),
(133, 65, 3, '2026-06-08', '2026-06-08', 1.00, 'due leave', 71, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-08 13:05:30', '2026-06-08 07:43:25'),
(134, 27, 3, '2026-06-10', '2026-06-10', 1.00, 'Personal reason', 35, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-08 15:58:48', '2026-06-09 06:36:34'),
(135, 35, 3, '2026-06-09', '2026-06-09', 1.00, 'Taking my mother for medical treatments', 27, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-08 16:01:34', '2026-06-09 06:36:23'),
(136, 42, 3, '2026-06-09', '2026-06-09', 1.00, 'To attend university', 41, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-08 19:15:43', '2026-06-15 06:56:56'),
(138, 83, 1, '2026-06-09', '2026-06-12', 4.00, 'personel', 75, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-09 09:23:54', '2026-06-09 06:52:32'),
(139, 32, 1, '2026-06-10', '2026-06-12', 3.00, 'For the exam', 33, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-09 11:30:51', '2026-06-09 06:08:26'),
(140, 70, 3, '2026-06-11', '2026-06-12', 2.00, 'Personal', 79, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-09 12:23:52', '2026-06-09 09:10:07'),
(141, 51, 2, '2026-06-10', '2026-06-11', 2.00, 'stomach pain', 46, NULL, NULL, NULL, 'Noted', 0, '', 'APPROVED', '2026-06-10 08:29:56', '2026-06-15 08:55:56'),
(142, 40, 3, '2026-06-10', '2026-06-10', 1.00, 'Personal reason', 41, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-10 08:42:43', '2026-06-18 09:20:17'),
(143, 74, 3, '2026-06-13', '2026-06-15', 3.00, 'personal', 44, NULL, NULL, 'n', 'personal', 0, '', 'REJECTED', '2026-06-10 09:32:43', '2026-06-11 04:02:58'),
(144, 74, 3, '2026-06-13', '2026-06-13', 1.00, 'personal', 44, NULL, NULL, NULL, 'personal', 0, '', 'APPROVED', '2026-06-10 19:52:02', '2026-06-11 04:03:05'),
(145, 53, 1, '2026-06-14', '2026-06-14', 1.00, 'my personal work', 46, NULL, NULL, NULL, NULL, 0, '59/c/9 pathmaperuma mawatha ganemulla', 'PENDING', '2026-06-11 11:12:09', '2026-06-11 11:12:09'),
(146, 17, 3, '2026-06-12', '2026-06-12', 1.00, 'Wedding Anniversary', 27, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-11 13:30:57', '2026-06-12 05:09:05'),
(147, 35, 3, '2026-06-12', '2026-06-12', 1.00, 'Takiny my mom for medical treatments', 27, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-11 14:26:34', '2026-06-15 05:30:46'),
(148, 75, 2, '2026-06-12', '2026-06-13', 2.00, 'sick leave', 71, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-11 18:21:39', '2026-06-12 10:05:39'),
(150, 21, 3, '2026-06-12', '2026-06-12', 1.00, 'personal', 39, NULL, NULL, NULL, '', 0, '', 'RELIEVER ACCEPTED', '2026-06-12 07:05:27', '2026-06-12 04:33:08'),
(151, 65, 4, '2026-06-13', '2026-06-13', 1.00, 'personal', 71, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-06-12 09:21:37', '2026-06-12 05:43:24'),
(152, 60, 3, '2026-06-11', '2026-06-11', 1.00, 'severe back pain', NULL, NULL, NULL, 'Not Informed', NULL, 1, '', 'REJECTED', '2026-06-12 14:05:57', '2026-06-18 09:19:03'),
(154, 83, 4, '2026-06-15', '2026-06-15', 1.00, 'personal', 82, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-06-14 16:37:31', '2026-06-16 10:45:17'),
(155, 21, 2, '2026-06-15', '2026-06-16', 2.00, 'having fever', 39, NULL, NULL, NULL, '', 0, '', 'RELIEVER ACCEPTED', '2026-06-15 06:59:07', '2026-06-15 04:52:55'),
(156, 33, 1, '2026-06-17', '2026-06-19', 3.00, 'For the Exam', 30, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 10:14:08', '2026-06-15 06:50:02'),
(157, 73, 2, '2026-06-12', '2026-06-12', 1.00, 'personal', 39, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 10:18:39', '2026-06-15 11:52:23'),
(158, 73, 2, '2026-06-15', '2026-06-15', 1.00, 'personal', 39, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 10:19:11', '2026-06-15 11:52:14'),
(159, 30, 3, '2026-06-12', '2026-06-12', 1.00, 'sick', 33, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 11:26:03', '2026-06-15 06:56:45'),
(160, 29, 3, '2026-06-16', '2026-06-16', 1.00, 'Personal reason', 28, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 11:40:56', '2026-06-15 06:47:55'),
(176, 86, 3, '2026-06-16', '2026-06-17', 2.00, 'personal Reason', 51, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-15 14:37:38', '2026-06-18 04:15:58'),
(181, 46, 2, '2026-06-11', '2026-06-16', 6.00, 'Fever', 62, NULL, NULL, NULL, NULL, 0, '', 'PENDING', '2026-06-15 15:46:12', '2026-06-15 15:46:12'),
(182, 64, 1, '2026-06-17', '2026-06-19', 3.00, 'personal', 67, NULL, NULL, NULL, 'Agreed', 0, 'Veyangoda', 'APPROVED', '2026-06-16 09:19:34', '2026-06-18 09:17:58'),
(184, 24, 3, '2026-06-17', '2026-06-17', 1.00, 'Personal', 26, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-16 15:02:28', '2026-06-16 11:12:49'),
(188, 75, 1, '2026-06-17', '2026-06-19', 3.00, 'pasanol', 71, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-16 16:30:26', '2026-06-16 11:02:49'),
(189, 44, 3, '2026-07-04', '2026-07-04', 1.00, 'Daughters Birthday Treat', 74, NULL, NULL, NULL, NULL, 0, 'Kapuwatta', 'PENDING', '2026-06-16 17:52:55', '2026-06-16 17:52:55'),
(190, 78, 3, '2026-06-17', '2026-06-17', 1.00, 'Personal', 77, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-06-17 08:04:31', '2026-06-18 02:32:27'),
(191, 71, 3, '2026-06-18', '2026-06-18', 1.00, 'personal', 65, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-17 09:42:52', '2026-06-17 04:17:52'),
(194, 60, 4, '2026-06-17', '2026-06-17', 1.00, 'Severe back pain', NULL, NULL, NULL, 'Not Informed', NULL, 1, '', 'REJECTED', '2026-06-17 12:37:42', '2026-06-18 09:17:48'),
(195, 29, 4, '2026-06-17', '2026-06-17', 1.00, 'sick', 28, NULL, 'MORNING', NULL, '', 0, '', 'APPROVED', '2026-06-17 12:59:19', '2026-06-17 07:47:13'),
(197, 25, 3, '2026-06-18', '2026-06-18', 1.00, 'personal requirement', 26, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-17 17:45:42', '2026-06-18 09:51:07'),
(198, 35, 3, '2026-06-18', '2026-06-18', 1.00, 'Motherâ€™s medical checkup', 27, NULL, NULL, NULL, '', 0, '', 'RELIEVER ACCEPTED', '2026-06-17 18:03:34', '2026-06-17 12:34:09'),
(200, 77, 3, '2026-06-18', '2026-06-18', 1.00, 'fever', 78, NULL, NULL, NULL, '', 0, '', 'RELIEVER ACCEPTED', '2026-06-18 02:21:08', '2026-06-19 03:30:53'),
(201, 79, 3, '2026-06-18', '2026-06-18', 1.00, 'sick', 70, NULL, NULL, NULL, '', 0, '', 'APPROVED', '2026-06-18 08:30:29', '2026-06-18 07:50:50'),
(202, 36, 4, '2026-06-18', '2026-06-18', 1.00, 'Not feeling well', 37, NULL, 'EVENING', NULL, '', 0, '', 'APPROVED', '2026-06-18 12:45:31', '2026-06-18 07:23:10'),
(203, 73, 4, '2026-06-18', '2026-06-18', 1.00, 'personal', 39, NULL, 'EVENING', NULL, '', 0, '', 'APPROVED', '2026-06-18 13:13:06', '2026-06-18 10:26:16'),
(208, 45, 3, '2026-06-19', '2026-06-19', 1.00, 'for studies', 86, 0, NULL, NULL, '', 0, '', 'RELIEVER ACCEPTED', '2026-06-18 17:37:01', '2026-06-18 12:50:24'),
(209, 78, 3, '2026-06-18', '2026-06-18', 1.00, '\'Personal', 44, 0, NULL, NULL, 'dimat', 0, '', 'RELIEVER ACCEPTED', '2026-06-19 11:10:29', '2026-06-19 08:08:46'),
(210, 62, 3, '2026-06-12', '2026-06-12', 1.00, 'Personal', NULL, 45, NULL, NULL, NULL, 1, '', 'PENDING', '2026-06-19 12:58:35', '2026-06-19 12:58:35'),
(211, 60, 4, '2026-06-17', '2026-06-17', 1.00, 'severe back pain', NULL, 0, 'MORNING', NULL, NULL, 1, '', 'PENDING', '2026-06-19 13:06:34', '2026-06-19 13:06:34'),
(212, 60, 3, '2026-06-19', '2026-06-19', 1.00, 'severe backpain', NULL, 0, NULL, NULL, NULL, 1, '', 'PENDING', '2026-06-19 13:09:17', '2026-06-19 13:09:17');

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
(4, 61, 'scaled_fbb99b1d-7b71-434e-9b3a-72d2003f1ab93956650030682717842.jpg', 'uploads/leave_docs/leave_61_1779093059.jpg', 'application/octet-stream', 747926, '2026-05-18 08:30:59'),
(5, 100, 'scaled_1000672393.jpg', 'uploads/leave_docs/leave_100_1779871203.jpg', 'application/octet-stream', 63565, '2026-05-27 08:40:03'),
(6, 121, 'scaled_IMG-20260601-WA0000.jpg', 'uploads/leave_docs/leave_121_1780374500.jpg', 'application/octet-stream', 317176, '2026-06-02 04:28:20'),
(8, 131, 'scaled_IMG-20260607-WA0001.jpg', 'uploads/leave_docs/leave_131_1780837771.jpg', 'application/octet-stream', 109003, '2026-06-07 13:09:31'),
(9, 145, 'scaled_82321ee0-d19c-4eab-b5b1-90afab00c2f52002199953587544852.jpg', 'uploads/leave_docs/leave_145_1781156532.jpg', 'application/octet-stream', 502495, '2026-06-11 05:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('event','meeting','training') NOT NULL DEFAULT 'meeting',
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

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('hr@explorevacations.lk', '$2y$12$R63zM6mTv7buSlrLTXKUROnoM5Txo/3RLSe1PpQo3bZEeRpdtr9Ca', '2026-06-12 13:50:18');

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
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ERP System', 'Enterprise Resource Planning software for company operations, financials, and inventory tracking.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(2, 'Customer Portal', 'Public facing e-commerce and customer ticket submission web portal.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(3, 'Office WiFi & Network', 'Physical and wireless connectivity in corporate offices.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(4, 'Email & Office Suite', 'Corporate Outlook, Microsoft 365, Teams, and cloud storage files.', '2026-06-09 00:46:50', '2026-06-12 00:22:43'),
(5, 'Hardware & Peripherals', 'Laptops, monitors, printing hubs, keyboards, and other physical gear.', '2026-06-09 00:46:50', '2026-06-09 00:46:50'),
(6, 'Other', 'Submit any other software, hardware, peripheral issues, or general support requests.', '2026-06-09 23:56:39', '2026-06-09 23:56:39');

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
('0HOgPrIl4UcRZt0L3aopM8kIiv2tYiXFuD4zEDe4', NULL, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGMzcUhtQ2JRMDI2SXY2Mk1MTjVJYkJCVG5ERW9rRFdreGVOVnpBRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cHM6Ly9leHBsb3Jlc3VpdGUubGsvc3VpdGUtc2VydmljZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly9leHBsb3Jlc3VpdGUubGsvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO319', 1781863606),
('aVLnY95j53SXqb38y3V1KCfYKiLx0cITSsGrHmQu', NULL, '66.249.79.204', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVdpOWs0T2llME5vbGdoRWdJU2VHdWF5Ukl0UXNUeDVhenJ6aGZiOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1781867176),
('Bd6K72k6jgPNTGVrONXkR0ZGsvRLWYQTAiQqvKi4', NULL, '3.254.189.239', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkgwTzdNM1FhNVZPbVp2dXVNekpWdWtpUU1kcURTMVZqQ3hjeTNoVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1781860123),
('G0Pe31N5Tb3tER4CxHVv7qT8TW5y72FcXgaptAdS', NULL, '66.249.79.205', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmJKUWU2TWZhZFRoSzBvbFVCSm5Ka1ZCNTE3WUhMRGg1c3ZqcTlvaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781861972),
('KolUcmLaVsCaFawWGj1Gy1Ockt0OIE7TlZK7g4n2', NULL, '45.148.10.64', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWt6Sm9ZVm5WdXVmSVh0dkJ5d1lIdFRpTVd5UFRDcGZHYzU0cTZzRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781866562),
('luQMQ3VARrpWbCEi60GXxhcYB2G7B6kGUDqnGTE6', NULL, '66.249.79.204', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2tpSzBLT1VITXc1MU9HZjhBa2YxemNGRG1VdU1sQmpCQXN3aFNIaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781867176),
('nnipevTZNjuT7oULRVNFwE14JxXUKCOyFM5cLm9y', NULL, '66.249.79.205', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWpXY0tHdDY4SldGSnRDbGI5R1g4c2pRZDNPMnFjU1p5ZW53dWVHSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1781861972),
('oYOn19GUA8s8BNMSG05v9Vp8svJlIGMPiV6M8x0o', 1, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXJveW43ejlEbWRpOHJWNk5tM1BHeWpKOUZVeTZGYU1IVzZyM0cxaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MDoiaHR0cHM6Ly9leHBsb3Jlc3VpdGUubGsvdGlja2V0LWRhc2hib2FyZCI7czo1OiJyb3V0ZSI7czo5OiJkYXNoYm9hcmQiO319', 1781867595),
('t6JF3sH3bRP9Bp4t0JDhNhR2wkCSCL3e3qBVS95r', NULL, '3.254.189.239', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlNKVEZxbTNhRmZxNkszbzliNGxiak9QcXBQSUpGY052Y1hVbHJqUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1781865900);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `name`, `sku`, `description`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Fire extinguishers', 'STK-FE-001', NULL, 23, '2026-06-02 15:11:56', '2026-06-02 15:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock_requests`
--

CREATE TABLE `stock_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending_hod',
  `hod_status` varchar(255) NOT NULL DEFAULT 'pending_hod',
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `hod_approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `common_issue_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_agent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  `resolved_at` datetime DEFAULT NULL,
  `resolution_note` varchar(500) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `sender_type` enum('user','agent') NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `sender_type`, `sender_id`, `message`, `is_read`, `created_at`) VALUES
(1, 16, 'agent', 19, 'test', 0, '2026-06-19 10:06:53'),
(2, 17, 'agent', 19, 'test', 1, '2026-06-19 10:07:44'),
(3, 17, 'user', 24, 'test', 1, '2026-06-19 10:08:13'),
(4, 17, 'agent', 19, 'issue sorted', 1, '2026-06-19 10:08:50'),
(5, 18, 'agent', 19, 'track', 1, '2026-06-19 10:12:11'),
(6, 18, 'user', 24, '..', 1, '2026-06-19 10:14:24'),
(7, 18, 'agent', 19, 'test', 1, '2026-06-19 10:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 3, 30, 'ok.', '2026-06-09 04:30:11', '2026-06-09 04:30:11'),
(3, 4, 24, 'done', '2026-06-09 06:06:01', '2026-06-09 06:06:01'),
(4, 5, 24, 'done', '2026-06-10 03:58:26', '2026-06-10 03:58:26'),
(5, 2, 24, 'done', '2026-06-10 04:35:40', '2026-06-10 04:35:40'),
(6, 4, 24, 'no', '2026-06-10 04:36:04', '2026-06-10 04:36:04'),
(10, 13, 24, 'done', '2026-06-12 00:53:01', '2026-06-12 00:53:01'),
(11, 13, 30, 'okay', '2026-06-12 05:33:59', '2026-06-12 05:33:59'),
(12, 2, 30, 'mjhgfdx', '2026-06-15 05:37:25', '2026-06-15 05:37:25'),
(13, 13, 30, 'khgh', '2026-06-15 05:37:48', '2026-06-15 05:37:48'),
(14, 13, 24, 'bhjj', '2026-06-15 05:38:38', '2026-06-15 05:38:38'),
(15, 4, 65, 'jhgfd', '2026-06-15 05:43:53', '2026-06-15 05:43:53'),
(16, 13, 1, 'ji', '2026-06-19 12:37:01', '2026-06-19 12:37:01'),
(17, 14, 1, 'ji', '2026-06-19 13:04:21', '2026-06-19 13:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `description` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` enum('pending','on going','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `topic`, `date`, `start_time`, `end_time`, `description`, `attachments`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(1, '123', '2026-06-18', '10:37:00', '00:37:00', '30', 'training_attachments/MKAT1nMwrQ08LIXkPAPW3kH8cQwEyEI5ETw9x7AR.jpg', '030', 'completed', '2026-06-18 05:07:16', '2026-06-18 05:07:16'),
(2, 'er', '2026-06-18', '11:04:00', '12:05:00', NULL, NULL, NULL, 'completed', '2026-06-18 05:31:27', '2026-06-18 09:06:36'),
(3, 'sfdsdf', '2026-06-19', '12:43:00', '14:43:00', 'er', 'training_attachments/FQDCHIu9C7tCnrgMCzHL0xktwksMBVXov6jBkHXV.jpg', NULL, 'on going', '2026-06-19 12:41:29', '2026-06-19 12:48:29'),
(4, '20', '2026-06-19', '13:27:00', '13:31:00', '30', NULL, NULL, 'pending', '2026-06-19 13:25:42', '2026-06-19 13:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `training_members`
--

CREATE TABLE `training_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected','cancelled') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_members`
--

INSERT INTO `training_members` (`id`, `training_id`, `user_id`, `status`, `created_at`) VALUES
(1, 1, 79, 'pending', '2026-06-18 05:07:16'),
(2, 1, 20, 'pending', '2026-06-18 05:07:16'),
(3, 1, 84, 'pending', '2026-06-18 05:07:16'),
(4, 2, 39, 'pending', '2026-06-18 05:31:27'),
(5, 2, 83, 'pending', '2026-06-18 05:31:27'),
(6, 2, 70, 'pending', '2026-06-18 05:31:27'),
(7, 2, 79, 'pending', '2026-06-18 05:31:27'),
(8, 2, 20, 'pending', '2026-06-18 05:31:27'),
(9, 2, 84, 'pending', '2026-06-18 05:31:27'),
(10, 2, 46, 'pending', '2026-06-18 05:31:27'),
(11, 2, 18, 'pending', '2026-06-18 05:31:27'),
(12, 2, 72, 'pending', '2026-06-18 05:31:27'),
(13, 2, 33, 'pending', '2026-06-18 05:31:27'),
(14, 3, 79, 'pending', '2026-06-19 12:41:29'),
(15, 4, 70, 'pending', '2026-06-19 13:25:42'),
(16, 4, 73, 'pending', '2026-06-19 13:25:42');

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
  `status` enum('PENDING','APPROVED','REJECTED','IN_PROGRESS','ASSIGNED','START_TRIP','COMPLETED','HOD_APPROVED','HOD_REJECTED','VEHICLE_CHANGING') NOT NULL DEFAULT 'ASSIGNED',
  `reject_reason` varchar(500) DEFAULT NULL,
  `assigned_start_at` datetime NOT NULL,
  `pickup_location` varchar(255) NOT NULL DEFAULT 'Seeduwa Office',
  `dropoff_location` varchar(255) NOT NULL,
  `change_vehicle_destination` varchar(255) DEFAULT NULL,
  `assigned_end_at` datetime DEFAULT NULL,
  `passenger_count` int(10) UNSIGNED NOT NULL,
  `companion_employee_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`companion_employee_ids`)),
  `trip_code` varchar(255) DEFAULT NULL,
  `change_vehicle_trip_code` varchar(50) DEFAULT NULL,
  `hod_comment` varchar(255) DEFAULT NULL,
  `delete_note` varchar(255) DEFAULT NULL,
  `remark` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_services`
--

INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `vehicle_id`, `is_vehicle_assigned`, `chauffer_reason`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `change_vehicle_destination`, `assigned_end_at`, `passenger_count`, `companion_employee_ids`, `trip_code`, `change_vehicle_trip_code`, `hod_comment`, `delete_note`, `remark`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(8, 0, 'personal', 'CBM-5712', 27, NULL, NULL, 'Car', '0762877006', 'Kumara Fernando', 81, 21, 'COMPLETED', NULL, '2026-04-02 00:00:00', 'Head Office', '', NULL, '2026-04-03 23:59:59', 1, NULL, '#KUMA8632', NULL, 'Forward to GM sir', NULL, NULL, '2026-04-02 11:11:58', '2026-04-06 10:37:53', NULL, NULL),
(19, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kandy, Sri Lanka', NULL, '2026-04-16 23:59:59', 1, NULL, '#SAMP4416', NULL, NULL, NULL, NULL, '2026-04-05 11:54:48', '2026-04-14 08:57:09', NULL, NULL),
(20, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kandy, Sri Lanka', NULL, '2026-04-16 23:59:59', 1, NULL, '#SAMP6119', NULL, NULL, NULL, NULL, '2026-04-05 11:56:56', '2026-04-14 04:31:07', NULL, NULL),
(21, 0, 'office', 'CBM-5707', 52, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'APPROVED', NULL, '2026-04-15 00:00:00', 'Head Office', 'Kadawatha, Sri Lanka', NULL, '2026-04-16 23:59:59', 1, NULL, '#SAMP4450', NULL, NULL, NULL, NULL, '2026-04-05 12:47:32', '2026-04-14 04:30:48', NULL, NULL),
(22, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-04-05 00:00:00', 'Head Office', 'returned', NULL, '2026-04-05 23:59:59', 1, NULL, '#NILA8940', NULL, NULL, NULL, NULL, '2026-04-05 15:29:08', '2026-05-15 08:27:57', NULL, NULL),
(23, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'COMPLETED', NULL, '2026-04-05 00:00:00', 'Head Office', 'rtn to office', NULL, '2026-04-05 23:59:59', 1, NULL, '#NILA5947', NULL, NULL, NULL, NULL, '2026-04-05 15:30:01', '2026-05-14 13:01:07', NULL, NULL),
(24, 0, 'personal', 'PD-9606', 108, NULL, NULL, 'Van', '0773843033', 'Indika Acoinas', 75, 21, 'REJECTED', 'Not Available', '2026-04-14 00:00:00', 'Head Office', '', NULL, '2026-04-15 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-04-06 12:40:59', '2026-04-16 06:10:16', NULL, NULL),
(25, 0, 'office', 'CBS-9860', 139, NULL, NULL, 'SUV', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-04-05 00:00:00', 'Head Office', 'seeduwa to marawila', NULL, '2026-04-05 23:59:59', 1, NULL, '#NILA6638', NULL, NULL, NULL, NULL, '2026-04-05 07:14:45', '2026-05-18 06:50:36', NULL, NULL),
(31, 0, 'personal', 'CBM-5726', 28, NULL, NULL, 'Car', '0753871334', 'Lahiru Kumara', 82, 21, 'COMPLETED', NULL, '2026-04-12 00:00:00', 'Head Office', '', NULL, '2026-04-19 23:59:59', 1, NULL, '#LAHI8073', NULL, '', NULL, NULL, '2026-04-07 08:49:13', '2026-04-18 12:52:04', NULL, NULL),
(41, 8, 'transfers', 'CAC-6595', NULL, 1, NULL, 'Car', NULL, NULL, 80, NULL, 'ASSIGNED', NULL, '2026-04-09 09:15:00', 'Seeduwa Office', '10th & 11th floors, Institute of Bankers of Sri Lanka Building, 80A Elvitigala Mawatha, Colombo 00800, Sri Lanka', NULL, '2026-04-11 09:15:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-09 14:45:26', '2026-04-09 14:46:20', '2026-04-09 14:46:20', NULL),
(57, 0, 'personal', 'CAK-9434', 155, NULL, NULL, 'Car', '0764724717', 'Sampath Fernando', 74, 20, 'COMPLETED', NULL, '2026-04-15 00:00:00', 'Head Office', '', NULL, '2026-04-16 23:59:59', 1, NULL, '#SAMP4036', NULL, '', NULL, NULL, '2026-04-13 18:21:43', '2026-04-17 06:37:55', NULL, NULL),
(59, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '076 594 6923', 'Lalin Amith', 55, 14, 'IN_PROGRESS', NULL, '2026-04-15 00:00:00', 'Head Office', '', NULL, '2026-04-16 23:59:59', 1, NULL, '#LALI6171', NULL, NULL, NULL, NULL, '2026-04-15 18:05:03', '2026-05-22 06:17:19', NULL, NULL),
(64, 0, 'personal', 'CBM-5712', 27, NULL, NULL, 'Car', '0775555555', 'Dhilhara', 84, 45, 'PENDING', NULL, '2026-04-17 00:00:00', 'Head Office', '', NULL, '2026-04-17 23:59:59', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 06:42:13', '2026-04-16 06:42:13', NULL, NULL),
(80, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '0765105679', 'Sembu Ajith', 48, 14, 'APPROVED', NULL, '2026-04-18 00:00:00', 'Head Office', '', NULL, '2026-04-19 23:59:59', 1, NULL, '#SEMB3112', NULL, NULL, NULL, NULL, '2026-04-17 10:38:18', '2026-04-17 10:40:44', NULL, NULL),
(81, 0, 'personal', 'CAO-9712', 103, NULL, NULL, 'Car', '0772204390', 'Lasantha Anthony', 47, 14, 'APPROVED', NULL, '2026-04-18 00:00:00', 'Head Office', '', NULL, '2026-04-19 23:59:59', 1, NULL, '#LASA2340', NULL, NULL, NULL, NULL, '2026-04-17 11:44:07', '2026-04-17 11:57:55', NULL, NULL),
(90, 0, 'personal', 'CBM-8143', 49, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'COMPLETED', NULL, '2026-04-29 00:00:00', 'Head Office', '', NULL, '2026-04-30 23:59:59', 1, NULL, '#WISH3861', NULL, '', NULL, NULL, '2026-04-24 05:19:39', '2026-04-30 20:07:42', NULL, NULL),
(92, 0, 'office', 'CBV-8252', 171, NULL, NULL, 'SUV', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-04-25 00:00:00', 'Head Office', 'Sri Lanka', NULL, '2026-04-26 23:59:59', 1, NULL, '#BONI2486', NULL, NULL, NULL, NULL, '2026-04-24 08:45:20', '2026-04-24 08:46:10', NULL, NULL),
(94, 0, 'personal', 'CBV-8397', 176, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-04-25 00:00:00', 'Head Office', '', NULL, '2026-04-26 23:59:59', 1, NULL, '#BONI9614', NULL, '', NULL, NULL, '2026-04-24 10:54:01', '2026-04-24 12:21:38', NULL, NULL),
(95, 0, 'personal', 'CBM-5723', 25, NULL, NULL, 'Car', '0781803097', 'Ashen Fernando', 83, 21, 'REJECTED', 'No Availability', '2026-04-30 00:00:00', 'Head Office', '', NULL, '2026-04-30 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-04-28 09:02:01', '2026-04-29 12:27:54', NULL, NULL),
(96, 15, 'transfers', 'CAX-4197', NULL, 1, NULL, 'SUV', NULL, NULL, 54, NULL, 'START_TRIP', NULL, '2026-04-30 04:50:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 04:30:00', 1, NULL, '#ROSH6543', NULL, NULL, NULL, NULL, '2026-04-30 18:19:58', '2026-05-07 12:53:14', '2026-05-07 12:53:14', NULL),
(97, 16, 'transfers', 'CAE-4853', NULL, 1, NULL, 'Car', NULL, NULL, 50, NULL, 'START_TRIP', NULL, '2026-04-30 09:40:00', 'Seeduwa Office', 'colombo', NULL, '2026-04-30 19:40:00', 1, NULL, '#SAHA1244', NULL, NULL, NULL, NULL, '2026-04-30 18:23:17', '2026-05-07 12:53:04', '2026-05-07 12:53:04', NULL),
(98, 17, 'transfers', 'CBB-8740', NULL, 1, NULL, 'SUV', NULL, NULL, 53, NULL, 'START_TRIP', NULL, '2026-05-01 04:40:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 09:40:00', 1, NULL, '#SUJE6973', NULL, NULL, NULL, NULL, '2026-04-30 18:24:07', '2026-05-07 12:52:57', '2026-05-07 12:52:57', NULL),
(99, 18, 'transfers', 'CBM-5706', NULL, 1, NULL, 'Car', NULL, NULL, 49, NULL, 'IN_PROGRESS', NULL, '2026-05-01 04:40:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 14:50:00', 1, NULL, '#KAPI1058', NULL, NULL, NULL, NULL, '2026-04-30 18:24:54', '2026-05-07 12:52:49', '2026-05-07 12:52:49', NULL),
(100, 19, 'transfers', 'CAY-3385', NULL, 1, NULL, 'Car', NULL, NULL, 47, NULL, 'START_TRIP', NULL, '2026-05-01 09:40:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 15:50:00', 1, NULL, '#SEMB2494', NULL, NULL, NULL, NULL, '2026-04-30 18:25:49', '2026-05-07 12:52:31', '2026-05-07 12:52:31', NULL),
(101, 20, 'transfers', 'CBQ-9481', NULL, 1, NULL, 'Car', NULL, NULL, 48, NULL, 'COMPLETED', NULL, '2026-04-30 04:40:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 09:40:00', 1, NULL, '#SEMB9895', NULL, NULL, NULL, NULL, '2026-04-30 18:27:32', '2026-05-07 12:53:43', '2026-05-07 12:53:43', NULL),
(102, 21, 'transfers', 'CBM-5712', NULL, 1, NULL, 'Car', NULL, NULL, 47, NULL, 'COMPLETED', NULL, '2026-05-01 04:50:00', 'Seeduwa Office', 'colombo', NULL, '2026-05-01 09:40:00', 1, NULL, '#LASA1559', NULL, NULL, NULL, NULL, '2026-04-30 18:50:49', '2026-05-07 12:52:42', '2026-05-07 12:52:42', NULL),
(104, 22, 'transfers', 'CBS-9862', NULL, 1, NULL, 'SUV', NULL, NULL, 80, NULL, 'ASSIGNED', NULL, '2026-05-04 11:12:00', 'Seeduwa Office', 'd', NULL, '2026-05-06 11:12:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-04 16:43:04', '2026-05-04 16:43:50', '2026-05-04 16:43:50', NULL),
(105, 0, 'personal', 'CAP-5023', 157, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'REJECTED', 'Not available', '2026-05-13 00:00:00', 'Head Office', '', NULL, '2026-05-14 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-05-07 05:57:00', '2026-05-13 10:27:45', NULL, NULL),
(106, 0, 'office', 'CBT-2241', 174, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'HOD_REJECTED', NULL, '2026-05-08 00:00:00', 'Head Office', 'vivantha', NULL, '2026-05-08 23:59:59', 1, NULL, NULL, NULL, 'ni', NULL, NULL, '2026-05-08 09:18:33', '2026-05-12 06:24:30', NULL, NULL),
(108, 0, 'personal', 'CAX-7637', 163, NULL, NULL, 'Car', '0777897292', 'Sameera  Dilshan', 43, 20, 'REJECTED', 'not available', '2026-05-10 00:00:00', 'Head Office', '', NULL, '2026-05-11 23:59:59', 1, NULL, NULL, NULL, 'Dear sir, we have available more than 40% vehicles in the rental station. Please check and kindly advise.  Thank you', NULL, NULL, '2026-05-08 10:42:23', '2026-05-12 08:20:33', NULL, NULL),
(110, 0, 'personal', 'CBM-5708', 46, NULL, NULL, 'Car', '0777897292', 'Sameera  Dilshan', 43, 20, 'APPROVED', NULL, '2026-05-10 00:00:00', 'Head Office', '', NULL, '2026-05-11 23:59:59', 1, NULL, '#SAME3965', NULL, '', NULL, NULL, '2026-05-09 07:38:51', '2026-05-12 08:20:44', NULL, NULL),
(111, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-05-11 00:00:00', 'Head Office', 'Demanhandiya Junction, B324, Negombo, Sri Lanka', NULL, '2026-05-12 23:59:59', 1, NULL, '#SRIM8065', NULL, NULL, NULL, NULL, '2026-05-11 14:25:15', '2026-05-12 08:52:57', NULL, NULL),
(112, 0, 'office', 'CBM-5684', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-12 00:00:00', 'Head Office', 'seeduwa.', NULL, '2026-05-12 23:59:59', 1, NULL, '#DAMS7028', NULL, NULL, NULL, NULL, '2026-05-12 06:18:59', '2026-05-12 06:23:29', NULL, NULL),
(113, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-12 00:00:00', 'Head Office', 'seeduwa', NULL, '2026-05-12 23:59:59', 1, NULL, '#DAMS2937', NULL, NULL, NULL, NULL, '2026-05-12 06:53:58', '2026-05-12 07:34:07', NULL, NULL),
(114, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-12 00:00:00', 'Head Office', 'vivantha', NULL, '2026-05-12 23:59:59', 1, NULL, '#DAMS2586', NULL, NULL, NULL, NULL, '2026-05-12 08:21:50', '2026-05-12 15:11:27', NULL, NULL),
(116, 0, 'office', 'CBT-4751', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS1074', NULL, NULL, NULL, NULL, '2026-05-13 06:09:52', '2026-05-13 07:05:38', NULL, NULL),
(117, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS9869', NULL, NULL, NULL, NULL, '2026-05-13 07:06:22', '2026-05-13 07:37:04', NULL, NULL),
(118, 0, 'office', 'CBM-5709', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS1914', NULL, NULL, NULL, NULL, '2026-05-13 07:37:32', '2026-05-13 08:00:07', NULL, NULL),
(119, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS9171', NULL, NULL, NULL, NULL, '2026-05-13 08:06:22', '2026-05-13 08:40:06', NULL, NULL),
(120, 0, 'office', 'CBT-2241', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel and vivantha', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS7716', NULL, NULL, NULL, NULL, '2026-05-13 09:23:55', '2026-05-13 10:29:03', NULL, NULL),
(121, 0, 'office', 'CBQ-8861', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-13 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-13 23:59:59', 1, NULL, '#DAMS2372', NULL, NULL, NULL, NULL, '2026-05-13 09:40:11', '2026-05-13 09:53:28', NULL, NULL),
(124, 0, 'personal', 'CBM-8143', 49, NULL, NULL, 'Car', '075 688 9939', 'Wishvajith   Perera', 67, 64, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', '', NULL, '2026-05-15 23:59:59', 1, NULL, '#WISH6666', NULL, 'approved', NULL, NULL, '2026-05-13 13:07:18', '2026-05-15 15:43:36', NULL, NULL),
(127, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'seeduwa', NULL, '2026-05-14 23:59:59', 1, NULL, '#DAMS8012', NULL, NULL, NULL, NULL, '2026-05-14 05:00:31', '2026-05-14 05:02:02', NULL, NULL),
(128, 0, 'office', 'CBC-3319', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'panchikawatta', NULL, '2026-05-14 23:59:59', 1, NULL, '#BONI9399', NULL, NULL, NULL, NULL, '2026-05-14 06:11:41', '2026-05-14 06:12:30', NULL, NULL),
(129, 0, 'office', 'CBS-0870', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-14 23:59:59', 1, NULL, '#DAMS2799', NULL, NULL, NULL, NULL, '2026-05-14 06:19:42', '2026-05-14 07:39:21', NULL, NULL),
(130, 0, 'office', 'PC-1058', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-14 23:59:59', 1, NULL, '#DAMS2904', NULL, NULL, NULL, NULL, '2026-05-14 07:46:19', '2026-05-14 07:49:37', NULL, NULL),
(131, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-14 23:59:59', 1, NULL, '#DAMS4566', NULL, NULL, NULL, NULL, '2026-05-14 08:36:29', '2026-05-14 09:59:18', NULL, NULL),
(132, 0, 'office', 'CBM-5703', 19, NULL, NULL, 'Car', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-14 00:00:00', 'Head Office', 'Micro Cars KALANIYA', NULL, '2026-05-14 23:59:59', 1, NULL, '#ANTO6891', NULL, NULL, NULL, NULL, '2026-05-14 09:39:48', '2026-05-14 12:03:29', NULL, NULL),
(134, 0, 'office', 'CBM-5715', 29, NULL, NULL, 'Car', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'Dunston Auto JA-ELA', NULL, '2026-05-15 23:59:59', 1, NULL, '#ANTO1024', NULL, NULL, NULL, NULL, '2026-05-15 05:12:45', '2026-05-15 06:18:11', NULL, NULL),
(135, 0, 'office', 'CBV-8254', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-15 23:59:59', 1, NULL, '#DAMS2552', NULL, NULL, NULL, NULL, '2026-05-15 05:24:24', '2026-05-15 06:26:20', NULL, NULL),
(136, 0, 'office', 'CBD-8266', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-15 23:59:59', 1, NULL, '#DAMS7101', NULL, NULL, NULL, NULL, '2026-05-15 06:40:26', '2026-05-15 07:01:56', NULL, NULL),
(138, 0, 'office', 'CBV-8253', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-15 23:59:59', 1, NULL, '#DAMS5880', NULL, NULL, NULL, NULL, '2026-05-15 08:32:03', '2026-05-15 08:45:48', NULL, NULL),
(139, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-15 23:59:59', 1, NULL, '#DAMS9716', NULL, NULL, NULL, NULL, '2026-05-15 10:51:42', '2026-05-15 11:25:29', NULL, NULL),
(141, 0, 'personal', 'CBM-5703', 19, NULL, NULL, 'Car', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-05-15 00:00:00', 'Head Office', '', NULL, '2026-05-16 23:59:59', 1, NULL, '#NILA6495', NULL, NULL, NULL, NULL, '2026-05-15 13:39:12', '2026-05-15 13:41:26', NULL, NULL),
(142, 0, 'office', 'CBM-5750', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'kushan kumara', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS7641', NULL, NULL, NULL, NULL, '2026-05-18 03:18:21', '2026-05-18 03:34:52', NULL, NULL),
(143, 0, 'office', 'CBC-3319', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'IN_PROGRESS', NULL, '2026-05-18 00:00:00', 'Head Office', 'jaela', NULL, '2026-05-18 23:59:59', 1, NULL, '#BONI7200', NULL, NULL, NULL, NULL, '2026-05-18 04:20:47', '2026-05-18 04:35:07', NULL, NULL),
(144, 0, 'office', 'CBS-9861', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-18 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS8479', NULL, NULL, NULL, NULL, '2026-05-18 05:29:59', '2026-05-18 06:52:41', NULL, NULL),
(145, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'à¶´à¶±à·Šà¶±à·’à¶´à·’à¶§à·’à¶º, Sri Lanka', NULL, '2026-05-18 23:59:59', 1, NULL, '#MOSH1769', NULL, NULL, NULL, NULL, '2026-05-18 05:51:09', '2026-05-18 12:22:27', NULL, NULL),
(146, 0, 'office', 'CBS-9859', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-05-18 00:00:00', 'Head Office', 'negombo', NULL, '2026-05-18 23:59:59', 1, NULL, '#NILA9936', NULL, NULL, NULL, NULL, '2026-05-18 06:49:24', '2026-05-19 10:19:57', NULL, NULL),
(147, 0, 'office', 'CBM-5720', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'negombo', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS9653', NULL, NULL, NULL, NULL, '2026-05-18 07:20:45', '2026-05-18 09:09:25', NULL, NULL),
(148, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-05-18 23:59:59', 1, NULL, '#SRIM1654', NULL, NULL, NULL, NULL, '2026-05-18 08:51:36', '2026-05-18 10:10:49', NULL, NULL),
(149, 0, 'office', 'CBM-8155', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'seeduwa refuel', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS9696', NULL, NULL, NULL, NULL, '2026-05-18 09:47:01', '2026-05-18 10:52:55', NULL, NULL),
(150, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS3393', NULL, NULL, NULL, NULL, '2026-05-18 10:53:29', '2026-05-18 11:28:21', NULL, NULL),
(151, 0, 'office', 'CBM-5720', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-18 00:00:00', 'Head Office', 'vivantha', NULL, '2026-05-18 23:59:59', 1, NULL, '#DAMS3291', NULL, NULL, NULL, NULL, '2026-05-18 11:40:44', '2026-05-18 12:17:17', NULL, NULL),
(153, 0, 'office', 'CBS-9863', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-19 23:59:59', 1, NULL, '#DAMS4987', NULL, NULL, NULL, NULL, '2026-05-19 05:42:12', '2026-05-19 06:44:43', NULL, NULL),
(154, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-05-19 23:59:59', 1, NULL, '#MOSH7089', NULL, NULL, NULL, NULL, '2026-05-19 06:38:24', '2026-05-19 12:03:39', NULL, NULL),
(155, 0, 'office', 'CBM-5725', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refueÄº', NULL, '2026-05-19 23:59:59', 1, NULL, '#DAMS7615', NULL, NULL, NULL, NULL, '2026-05-19 07:01:38', '2026-05-19 07:33:47', NULL, NULL),
(156, 0, 'office', 'CBV-8255', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-19 23:59:59', 1, NULL, '#DAMS8514', NULL, NULL, NULL, NULL, '2026-05-19 08:11:26', '2026-05-19 09:19:22', NULL, NULL),
(157, 0, 'office', 'CBM-5708', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-19 23:59:59', 1, NULL, '#DAMS3364', NULL, NULL, NULL, NULL, '2026-05-19 10:04:36', '2026-05-19 10:36:40', NULL, NULL),
(158, 0, 'office', 'CBV-8252', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'APPROVED', NULL, '2026-05-19 00:00:00', 'Head Office', 'micro to office', NULL, '2026-05-19 23:59:59', 1, NULL, '#NILA2139', NULL, NULL, NULL, NULL, '2026-05-19 10:18:45', '2026-05-27 09:13:46', NULL, NULL),
(160, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-05-20 23:59:59', 1, NULL, '#INDI4449', NULL, NULL, NULL, NULL, '2026-05-20 03:54:34', '2026-05-20 05:11:19', NULL, NULL),
(161, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-05-20 23:59:59', 1, NULL, '#INDI3406', NULL, NULL, NULL, NULL, '2026-05-20 03:58:24', '2026-05-20 04:18:42', NULL, NULL),
(162, 0, 'office', 'CBQ-8851', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-20 23:59:59', 1, NULL, '#DAMS5459', NULL, NULL, NULL, NULL, '2026-05-20 04:27:08', '2026-05-20 04:39:01', NULL, NULL),
(163, 0, 'personal', 'CAO-9712', 103, NULL, NULL, 'Car', '076 594 6923', 'Lalin Amith', 55, 18, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', '', NULL, '2026-05-20 23:59:59', 1, NULL, '#LALI6057', NULL, 'Approve & Forward.', NULL, NULL, '2026-05-20 06:40:29', '2026-05-22 06:18:23', NULL, NULL),
(164, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'anton hardware', NULL, '2026-05-20 23:59:59', 1, NULL, '#DAMS3568', NULL, NULL, NULL, NULL, '2026-05-20 06:58:49', '2026-05-20 08:22:37', NULL, NULL),
(165, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'jaela dunston', NULL, '2026-05-20 23:59:59', 1, NULL, '#BONI5145', NULL, NULL, NULL, NULL, '2026-05-20 09:16:36', '2026-05-20 09:39:55', NULL, NULL),
(166, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-20 00:00:00', 'Head Office', 'jaela dunston', NULL, '2026-05-20 23:59:59', 1, NULL, '#BONI1324', NULL, NULL, NULL, NULL, '2026-05-20 10:30:48', '2026-05-20 11:18:14', NULL, NULL),
(167, 0, 'office', 'CBV-8252', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-20 23:59:59', 1, NULL, '#DAMS5220', NULL, NULL, NULL, NULL, '2026-05-20 10:38:19', '2026-05-20 11:06:57', NULL, NULL),
(168, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-20 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-20 23:59:59', 1, NULL, '#DAMS3442', NULL, NULL, NULL, NULL, '2026-05-20 11:15:51', '2026-05-20 11:54:46', NULL, NULL),
(169, 0, 'office', 'CBM-5704', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-21 00:00:00', 'Head Office', 'seeduwa Anton hardware', NULL, '2026-05-21 23:59:59', 1, NULL, '#BONI5811', NULL, NULL, NULL, NULL, '2026-05-21 06:05:58', '2026-05-21 06:09:20', NULL, NULL),
(170, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-21 00:00:00', 'Head Office', 'United Motors Lanka PLC - Orugodawatta Workshop, Majeed Road, Colombo, Sri Lanka', NULL, '2026-05-21 23:59:59', 1, NULL, '#ANTO6681', NULL, NULL, NULL, NULL, '2026-05-21 06:06:35', '2026-05-21 09:04:32', NULL, NULL),
(171, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-21 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-05-21 23:59:59', 1, NULL, '#MOSH4167', NULL, NULL, NULL, NULL, '2026-05-21 06:24:38', '2026-05-21 12:57:03', NULL, NULL),
(172, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-21 00:00:00', 'Head Office', 'seeduwa Anton hardware', NULL, '2026-05-21 23:59:59', 1, NULL, '#BONI2932', NULL, NULL, NULL, NULL, '2026-05-21 06:35:25', '2026-05-21 06:37:46', NULL, NULL),
(173, 0, 'office', 'CBD-8266', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 18, 'COMPLETED', NULL, '2026-05-21 00:00:00', 'Head Office', 'Athurugiriya, Sri Lanka', NULL, '2026-05-21 23:59:59', 1, NULL, '#LALI2911', NULL, NULL, NULL, NULL, '2026-05-21 09:20:53', '2026-05-21 11:45:35', NULL, NULL),
(174, 0, 'personal', 'CBM-5715', 29, NULL, NULL, 'Car', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-05-23 00:00:00', 'Head Office', '', NULL, '2026-05-24 23:59:59', 1, NULL, '#CHAM7528', NULL, '', NULL, NULL, '2026-05-21 11:31:43', '2026-05-25 04:43:32', NULL, NULL),
(176, 0, 'office', 'CAO-9712', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-22 23:59:59', 1, NULL, '#DAMS3702', NULL, NULL, NULL, NULL, '2026-05-22 04:27:13', '2026-05-22 05:08:18', NULL, NULL),
(177, 0, 'office', 'PC-1058', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-05-22 00:00:00', 'Head Office', 'orugodawatta united motors', NULL, '2026-05-22 23:59:59', 1, NULL, '#CHAM2984', NULL, NULL, NULL, NULL, '2026-05-22 04:34:06', '2026-06-11 04:18:41', NULL, NULL),
(178, 0, 'office', 'PC-1058', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-05-22 00:00:00', 'Head Office', 'orugodawatta united motors', NULL, '2026-05-22 23:59:59', 1, NULL, '#CHAM1100', NULL, NULL, NULL, NULL, '2026-05-22 04:42:58', '2026-06-03 08:12:12', NULL, NULL),
(179, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 14, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-05-22 23:59:59', 1, NULL, '#MOSH2695', NULL, NULL, NULL, NULL, '2026-05-22 05:22:44', '2026-05-23 01:30:18', NULL, NULL),
(180, 0, 'office', 'CBQ-9481', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 18, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'Dadugama & Negombo', NULL, '2026-05-22 23:59:59', 1, NULL, '#LALI3573', NULL, NULL, NULL, NULL, '2026-05-22 06:28:45', '2026-05-22 08:29:05', NULL, NULL),
(181, 0, 'office', 'CBM-5708', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-22 23:59:59', 1, NULL, '#DAMS7411', NULL, NULL, NULL, NULL, '2026-05-22 07:35:22', '2026-05-22 07:56:37', NULL, NULL),
(182, 0, 'office', 'CBM-5714', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'Methuli Holdings (Pvt) Ltd (design & print studio), Gala Junction, Wattala - Hekitta Road, Wattala, Sri Lanka', NULL, '2026-05-22 23:59:59', 1, NULL, '#MIHI7332', NULL, NULL, NULL, NULL, '2026-05-22 08:12:26', '2026-05-22 12:17:11', NULL, NULL),
(183, 0, 'office', 'CBU-1826', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-22 23:59:59', 1, NULL, '#DAMS1894', NULL, NULL, NULL, NULL, '2026-05-22 08:12:52', '2026-05-22 09:30:00', NULL, NULL),
(184, 0, 'office', 'CBQ-9481', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-22 00:00:00', 'Head Office', 'Negombo Beach Park, Porutota Road, Negombo, Sri Lanka', NULL, '2026-05-22 23:59:59', 1, NULL, '#BONI6867', NULL, NULL, NULL, NULL, '2026-05-22 09:56:53', '2026-05-22 09:59:46', NULL, NULL),
(185, 0, 'office', 'CBQ-9481', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-22 00:00:00', 'Head Office', 'Neombo Beach Park, Porutota Road, Negombo, Sri Lanka', NULL, '2026-05-22 23:59:59', 1, NULL, '#BONI2954', NULL, NULL, NULL, NULL, '2026-05-22 10:21:31', '2026-05-22 10:24:24', NULL, NULL),
(186, 0, 'office', 'CAX-4197', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-22 00:00:00', 'Head Office', 'negombo', NULL, '2026-05-22 23:59:59', 1, NULL, '#BONI4957', NULL, NULL, NULL, NULL, '2026-05-22 10:27:12', '2026-05-22 10:37:15', NULL, NULL),
(187, 0, 'office', 'CBM-5708', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-22 00:00:00', 'Head Office', 'negombo', NULL, '2026-05-22 23:59:59', 1, NULL, '#DAMS1685', NULL, NULL, NULL, NULL, '2026-05-22 10:33:42', '2026-05-22 12:27:55', NULL, NULL),
(188, 0, 'office', 'CBM-5706', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-23 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-05-23 23:59:59', 1, NULL, '#MOSH4480', NULL, NULL, NULL, NULL, '2026-05-22 14:54:05', '2026-05-23 04:43:43', NULL, NULL),
(189, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-05-25 00:00:00', 'Head Office', 'Amasha Digital Printing Seeduwa, Supermarket, Kotugoda Road, Seeduwa, Sri Lanka', NULL, '2026-05-25 23:59:59', 1, NULL, '#MIHI5708', NULL, NULL, NULL, NULL, '2026-05-25 04:15:28', '2026-05-25 04:35:21', NULL, NULL),
(190, 0, 'office', 'CAX-7637', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-05-25 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-25 23:59:59', 1, NULL, '#DAMS7531', NULL, NULL, NULL, NULL, '2026-05-25 04:22:25', '2026-05-25 04:28:04', NULL, NULL),
(191, 0, 'office', 'CBM-8135', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-05-25 00:00:00', 'Head Office', 'jaela', NULL, '2026-05-25 23:59:59', 1, NULL, '#INDI8594', NULL, NULL, NULL, NULL, '2026-05-25 04:54:32', '2026-05-25 06:13:18', NULL, NULL),
(192, 0, 'office', 'CBM-8135', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 18, 'COMPLETED', NULL, '2026-05-25 00:00:00', 'Head Office', 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', NULL, '2026-05-25 23:59:59', 1, NULL, '#LALI6460', NULL, NULL, NULL, NULL, '2026-05-25 06:48:29', '2026-05-28 07:01:46', NULL, NULL),
(193, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-25 00:00:00', 'Head Office', 'seeduwa', NULL, '2026-05-25 23:59:59', 1, NULL, '#DAMS9611', NULL, NULL, NULL, NULL, '2026-05-25 07:17:24', '2026-05-29 08:08:24', NULL, NULL),
(194, 0, 'office', 'CAR-4853', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-05-25 00:00:00', 'Head Office', 'Negambo', NULL, '2026-05-25 23:59:59', 1, NULL, '#CHAM1877', NULL, NULL, NULL, NULL, '2026-05-25 09:02:07', '2026-05-25 10:43:30', NULL, NULL),
(195, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-25 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-05-25 23:59:59', 1, NULL, '#MOSH3673', NULL, NULL, NULL, NULL, '2026-05-25 09:24:28', '2026-05-25 10:50:05', NULL, NULL),
(196, 0, 'office', 'CAV-3330', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-25 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-25 23:59:59', 1, NULL, '#DAMS2936', NULL, NULL, NULL, NULL, '2026-05-25 10:55:47', '2026-05-25 16:18:35', NULL, NULL),
(197, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-26 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-05-26 23:59:59', 1, NULL, '#MOSH6864', NULL, NULL, NULL, NULL, '2026-05-26 05:37:22', '2026-05-26 13:15:04', NULL, NULL),
(198, 0, 'office', 'CBS-0864', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'APPROVED', NULL, '2026-05-26 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-05-26 23:59:59', 1, NULL, '#INDI7890', NULL, NULL, NULL, NULL, '2026-05-26 07:15:21', '2026-05-26 12:18:55', NULL, NULL),
(199, 0, 'office', 'CBS-9864', 0, NULL, NULL, '-', '0768200098', 'Ralston Gerreyn', 14, 11, 'COMPLETED', NULL, '2026-05-26 00:00:00', 'Head Office', 'kadawatha', NULL, '2026-05-27 23:59:59', 1, NULL, '#RALS9187', NULL, NULL, NULL, NULL, '2026-05-26 08:34:40', '2026-05-26 11:11:19', NULL, NULL),
(200, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-26 00:00:00', 'Head Office', 'Dunstan Auto Traders, Negombo Road, Ja-Ela, Sri Lanka', NULL, '2026-05-26 23:59:59', 1, NULL, '#DAMS1750', NULL, NULL, NULL, NULL, '2026-05-26 09:19:17', '2026-05-26 12:18:45', NULL, NULL),
(202, 0, 'office', 'CBM-5681', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 11, 'COMPLETED', NULL, '2026-05-26 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-05-26 23:59:59', 1, NULL, '#SRIM4151', NULL, NULL, NULL, NULL, '2026-05-26 10:30:15', '2026-05-26 11:47:16', NULL, NULL),
(203, 0, 'office', 'CBS-9864', 0, NULL, NULL, '-', '0768200098', 'Ralston Gerreyn', 14, 11, 'IN_PROGRESS', NULL, '2026-05-26 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-05-27 23:59:59', 1, NULL, '#RALS3037', NULL, NULL, NULL, NULL, '2026-05-26 13:50:07', '2026-05-26 14:01:25', NULL, NULL),
(204, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-05-27 00:00:00', 'Head Office', 'negombo', NULL, '2026-05-27 23:59:59', 1, NULL, '#INDI2771', NULL, NULL, NULL, NULL, '2026-05-27 04:05:10', '2026-05-27 04:45:59', NULL, NULL),
(206, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 14, 'COMPLETED', NULL, '2026-05-27 00:00:00', 'Head Office', 'Kadawatha, Sri Lanka', NULL, '2026-05-27 23:59:59', 1, NULL, '#MOSH1906', NULL, NULL, NULL, NULL, '2026-05-27 08:30:19', '2026-05-27 10:33:49', NULL, NULL),
(208, 0, 'office', 'CBV-8397', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-05-27 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-05-27 23:59:59', 1, NULL, '#SRIM7922', NULL, NULL, NULL, NULL, '2026-05-27 08:53:43', '2026-05-27 09:53:37', NULL, NULL),
(209, 0, 'office', 'CAW-6119', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-27 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-27 23:59:59', 1, NULL, '#DAMS9715', NULL, NULL, NULL, NULL, '2026-05-27 10:22:22', '2026-05-27 11:46:29', NULL, NULL),
(211, 0, 'office', 'CAT-0620', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'APPROVED', NULL, '2026-05-27 00:00:00', 'Head Office', 'ragama', NULL, '2026-05-28 23:59:59', 1, NULL, '#NILA7874', NULL, NULL, NULL, NULL, '2026-05-27 12:48:04', '2026-05-29 07:36:00', NULL, NULL),
(212, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-05-28 00:00:00', 'Head Office', 'dandugama', NULL, '2026-05-28 23:59:59', 1, NULL, '#BONI9083', NULL, NULL, NULL, NULL, '2026-05-28 04:04:21', '2026-05-28 04:04:54', NULL, NULL),
(213, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'APPROVED', NULL, '2026-05-28 00:00:00', 'Head Office', 'ragama', NULL, '2026-05-28 23:59:59', 1, NULL, '#INDI5334', NULL, NULL, NULL, NULL, '2026-05-28 05:39:28', '2026-05-28 05:41:29', NULL, NULL),
(214, 0, 'office', 'BGW-8451', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 84, 'COMPLETED', NULL, '2026-05-28 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-05-28 23:59:59', 1, NULL, '#MOSH4070', NULL, NULL, NULL, NULL, '2026-05-28 06:21:38', '2026-05-29 03:47:57', NULL, NULL),
(215, 0, 'office', 'CBM-5703', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-28 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-05-28 23:59:59', 1, '[81]', '#ANTO2807', NULL, NULL, NULL, NULL, '2026-05-28 06:26:14', '2026-05-28 07:04:11', NULL, NULL),
(216, 0, 'office', 'BBS-8551', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-28 00:00:00', 'Head Office', 'lunch', NULL, '2026-05-28 23:59:59', 1, NULL, '#DAMS5487', NULL, NULL, NULL, NULL, '2026-05-28 07:05:29', '2026-05-28 07:19:25', NULL, NULL),
(217, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'APPROVED', NULL, '2026-05-28 00:00:00', 'Head Office', '18th Mile Post (18 à¶šà¶«à·”à·€), Negombo - Colombo Main Road, Katunayake, Sri Lanka', NULL, '2026-05-28 23:59:59', 1, NULL, '#INDI3097', NULL, NULL, NULL, NULL, '2026-05-28 10:07:04', '2026-05-28 10:10:17', NULL, NULL),
(218, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-05-28 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-28 23:59:59', 1, '[19]', '#DAMS7177', NULL, NULL, NULL, NULL, '2026-05-28 10:16:28', '2026-05-28 12:14:55', NULL, NULL),
(219, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-28 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-28 23:59:59', 1, '[83,73]', '#DAMS9583', NULL, NULL, NULL, NULL, '2026-05-28 10:17:41', '2026-05-28 14:05:45', NULL, NULL),
(220, 0, 'office', 'BGW-8451', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 14, 'COMPLETED', NULL, '2026-05-29 00:00:00', 'Head Office', 'Liyanagemulla, Negombo, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#MOSH3030', NULL, NULL, NULL, NULL, '2026-05-29 03:39:03', '2026-05-29 06:27:16', NULL, NULL),
(224, 0, 'office', 'CBS-9864', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-05-29 00:00:00', 'Head Office', 'United Motors & Euro motors', NULL, '2026-05-29 23:59:59', 1, '[70,17]', '#ANTO9760', NULL, NULL, NULL, NULL, '2026-05-29 06:05:43', '2026-05-29 10:52:55', NULL, NULL),
(226, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'danstan', NULL, '2026-05-29 23:59:59', 1, NULL, '#DAMS3667', NULL, NULL, NULL, NULL, '2026-05-29 06:50:29', '2026-05-29 06:50:57', NULL, NULL),
(227, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-05-29 00:00:00', 'Head Office', 'SR Rent A Car Sri Lanka, Negombo - Colombo Main Road, Seeduwa, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#MIHI1126', NULL, NULL, NULL, NULL, '2026-05-29 07:34:01', '2026-05-29 13:25:49', NULL, NULL),
(228, 0, 'office', 'BGW-8451', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-05-29 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#MOSH5614', NULL, NULL, NULL, NULL, '2026-05-29 07:42:06', '2026-06-01 04:59:20', NULL, NULL),
(229, 0, 'office', 'CAR-4853', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-05-29 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#INDI8717', NULL, NULL, NULL, NULL, '2026-05-29 08:56:20', '2026-06-16 06:55:48', NULL, NULL),
(230, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-05-29 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#INDI7918', NULL, NULL, NULL, NULL, '2026-05-29 09:08:50', '2026-05-29 09:21:02', NULL, NULL),
(231, 0, 'office', 'CBD-8266', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'refuel', NULL, '2026-05-29 23:59:59', 1, NULL, '#DAMS9939', NULL, NULL, NULL, NULL, '2026-05-29 09:12:58', '2026-05-29 10:19:57', NULL, NULL),
(232, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-05-29 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#INDI9986', NULL, NULL, NULL, NULL, '2026-05-29 09:15:51', '2026-06-02 04:26:44', NULL, NULL),
(233, 0, 'office', 'BKH-4876', 0, NULL, NULL, '-', '0702202215', 'Dimath Weliwitigoda', 78, 20, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, NULL, '#DIMA2107', NULL, NULL, NULL, NULL, '2026-05-29 10:22:22', '2026-05-29 10:23:27', NULL, NULL),
(234, 0, 'office', 'CBV-6513', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 11, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'Ambalammulla, Sri Lanka', NULL, '2026-05-29 23:59:59', 1, '[11]', '#MOSH9034', NULL, NULL, NULL, NULL, '2026-05-29 10:43:39', '2026-05-29 10:44:12', NULL, NULL),
(235, 0, 'office', 'BKH-4876', 0, NULL, NULL, '-', '0702202215', 'Dimath Weliwitigoda', 78, 20, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'Seeduwa', NULL, '2026-05-29 23:59:59', 1, NULL, '#DIMA2503', NULL, NULL, NULL, NULL, '2026-05-29 10:59:07', '2026-05-29 10:59:20', NULL, NULL),
(236, 0, 'office', 'CBS-9859', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-05-29 00:00:00', 'Head Office', 'negombo and refuel', NULL, '2026-05-29 23:59:59', 1, '[21,55]', '#DAMS8488', NULL, NULL, NULL, NULL, '2026-05-29 12:03:28', '2026-05-30 10:31:02', NULL, NULL),
(237, 0, 'personal', 'CAP-5023', 157, NULL, NULL, 'Car', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-05-30 00:00:00', 'Head Office', '-', NULL, '2026-05-31 23:59:59', 1, NULL, '#NILA9807', NULL, NULL, NULL, NULL, '2026-05-30 10:37:55', '2026-05-30 10:48:28', NULL, NULL),
(238, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-01 00:00:00', 'Head Office', 'Elite Vivanta', NULL, '2026-06-01 23:59:59', 1, '[70]', '#ANTO7434', NULL, NULL, NULL, NULL, '2026-06-01 03:58:04', '2026-06-01 04:24:23', NULL, NULL),
(239, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-01 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-01 23:59:59', 1, NULL, '#DAMS5481', NULL, NULL, NULL, NULL, '2026-06-01 07:07:27', '2026-06-01 07:57:53', NULL, NULL),
(240, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-01 00:00:00', 'Head Office', 'Dilan\'s Home Negombo', NULL, '2026-06-01 23:59:59', 1, '[40,79]', '#ANTO7648', NULL, NULL, NULL, NULL, '2026-06-01 07:22:41', '2026-06-01 08:40:32', NULL, NULL),
(242, 0, 'office', 'CBM-5607', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-01 00:00:00', 'Head Office', 'refuel and paint shop', NULL, '2026-06-01 23:59:59', 1, '[71]', '#DAMS7131', NULL, NULL, NULL, NULL, '2026-06-01 08:53:29', '2026-06-01 08:58:09', NULL, NULL),
(243, 0, 'office', 'CBM-5709', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-01 00:00:00', 'Head Office', 'seeduwa', NULL, '2026-06-01 23:59:59', 1, NULL, '#BONI8952', NULL, NULL, NULL, NULL, '2026-06-01 09:47:20', '2026-06-01 10:10:33', NULL, NULL),
(245, 0, 'office', 'PD-7635', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-01 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-01 23:59:59', 1, NULL, '#DAMS4019', NULL, NULL, NULL, NULL, '2026-06-01 10:21:57', '2026-06-01 10:50:14', NULL, NULL),
(246, 0, 'office', 'CBM-5681', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-01 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-01 23:59:59', 1, NULL, '#DAMS1263', NULL, NULL, NULL, NULL, '2026-06-01 12:07:43', '2026-06-01 12:42:11', NULL, NULL),
(247, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-06-02 00:00:00', 'Head Office', 'kochchikede', NULL, '2026-06-02 23:59:59', 1, NULL, '#INDI1593', NULL, NULL, NULL, NULL, '2026-06-02 04:14:23', '2026-06-02 07:10:16', NULL, NULL),
(248, 0, 'office', 'CBT-4751', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-02 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-02 23:59:59', 1, NULL, '#DAMS2890', NULL, NULL, NULL, NULL, '2026-06-02 04:34:22', '2026-06-02 04:38:30', NULL, NULL),
(249, 0, 'office', 'CBV-4035', 0, NULL, NULL, '-', '077 200 9110', 'Keshika', 60, 14, 'COMPLETED', NULL, '2026-06-02 00:00:00', 'Head Office', 'Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', NULL, '2026-06-02 23:59:59', 1, '[28,39]', '#KESH1772', NULL, NULL, NULL, NULL, '2026-06-02 05:04:13', '2026-06-02 06:42:25', NULL, NULL),
(250, 0, 'office', 'CBM-5672', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-02 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-02 23:59:59', 1, '[72]', '#DAMS7303', NULL, NULL, NULL, NULL, '2026-06-02 06:01:32', '2026-06-02 06:06:20', NULL, NULL),
(251, 0, 'office', 'BJO-4883', 0, NULL, NULL, '-', '0761414555', 'Dicsion Kumara', 71, 21, 'APPROVED', NULL, '2026-06-02 00:00:00', 'Head Office', 'paint shop', NULL, '2026-06-02 23:59:59', 1, NULL, '#DICS3991', NULL, NULL, NULL, NULL, '2026-06-02 06:37:46', '2026-06-02 06:38:17', NULL, NULL),
(252, 0, 'office', 'BJO-4883', 0, NULL, NULL, '-', '0761414555', 'Dicsion Kumara', 71, 21, 'APPROVED', NULL, '2026-06-02 00:00:00', 'Head Office', 'paint shop', NULL, '2026-06-02 23:59:59', 1, NULL, '#DICS3686', NULL, NULL, NULL, NULL, '2026-06-02 06:39:47', '2026-06-02 06:41:07', NULL, NULL),
(253, 0, 'office', 'CBM-5719', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-02 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-02 23:59:59', 1, NULL, '#DAMS3549', NULL, NULL, NULL, NULL, '2026-06-02 07:55:42', '2026-06-02 08:43:15', NULL, NULL),
(254, 0, 'office', 'CBS-9861', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-02 00:00:00', 'Head Office', 'Euro Motors After Care Center, Hill Street, Dehiwala-Mount Lavinia, Sri Lanka', NULL, '2026-06-02 23:59:59', 1, NULL, '#ANTO8339', NULL, NULL, NULL, NULL, '2026-06-02 09:47:10', '2026-06-02 11:47:54', NULL, NULL),
(255, 0, 'office', 'CBT-2241', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-02 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-02 23:59:59', 1, NULL, '#DAMS6682', NULL, NULL, NULL, NULL, '2026-06-02 09:54:22', '2026-06-02 10:41:54', NULL, NULL),
(256, 0, 'office', 'CBV-4035', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-02 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-02 23:59:59', 1, '[70,69]', '#DAMS6860', NULL, NULL, NULL, NULL, '2026-06-02 11:08:15', '2026-06-02 11:14:27', NULL, NULL),
(257, 0, 'office', 'CBS-9864', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-06-03 00:00:00', 'Head Office', 'Kotugoda', NULL, '2026-06-03 23:59:59', 1, NULL, '#CHAM3813', NULL, NULL, NULL, NULL, '2026-06-03 04:43:40', '2026-06-03 08:10:56', NULL, NULL),
(258, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-03 00:00:00', 'Head Office', 'Negombo, Sri Lanka', NULL, '2026-06-03 23:59:59', 1, NULL, '#BONI6414', NULL, NULL, NULL, NULL, '2026-06-03 06:16:35', '2026-06-03 06:17:10', NULL, NULL),
(259, 0, 'office', 'CAX-4197', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-03 23:59:59', 1, NULL, '#DAMS9883', NULL, NULL, NULL, NULL, '2026-06-03 06:25:05', '2026-06-03 06:58:31', NULL, NULL),
(261, 0, 'office', 'CBV-4035', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-03 23:59:59', 1, NULL, '#DAMS7060', NULL, NULL, NULL, NULL, '2026-06-03 07:24:14', '2026-06-03 08:22:17', NULL, NULL),
(263, 0, 'office', 'CBS-0864', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'Micro Cars Limited - Head Office, Kandy - Colombo Road, Kelaniya, Sri Lanka', NULL, '2026-06-03 23:59:59', 1, NULL, '#ANTO4489', NULL, NULL, NULL, NULL, '2026-06-03 07:47:00', '2026-06-03 09:07:35', NULL, NULL),
(264, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'kalaniya', NULL, '2026-06-03 23:59:59', 1, '[85]', '#CHAM9338', NULL, NULL, NULL, NULL, '2026-06-03 07:51:59', '2026-06-03 08:07:39', NULL, NULL);
INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `vehicle_id`, `is_vehicle_assigned`, `chauffer_reason`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `change_vehicle_destination`, `assigned_end_at`, `passenger_count`, `companion_employee_ids`, `trip_code`, `change_vehicle_trip_code`, `hod_comment`, `delete_note`, `remark`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(265, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'APPROVED', NULL, '2026-06-03 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-03 23:59:59', 1, NULL, '#DINI7142', NULL, NULL, NULL, NULL, '2026-06-03 08:51:49', '2026-06-03 08:59:15', NULL, NULL),
(266, 0, 'office', 'CBQ-8468', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-03 23:59:59', 1, NULL, '#DINI1409', NULL, NULL, NULL, NULL, '2026-06-03 09:23:42', '2026-06-03 12:09:09', NULL, NULL),
(267, 0, 'office', 'CBV-4035', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'ragama', NULL, '2026-06-03 23:59:59', 1, '[69]', '#NILA7056', NULL, NULL, NULL, NULL, '2026-06-03 09:24:35', '2026-06-03 10:37:22', NULL, NULL),
(268, 0, 'office', 'CBM-8143', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-03 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-03 23:59:59', 1, NULL, '#DAMS8092', NULL, NULL, NULL, NULL, '2026-06-03 10:36:03', '2026-06-03 11:01:33', NULL, NULL),
(269, 0, 'office', 'CBM-8143', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-03 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-03 23:59:59', 1, '[78]', '#DAMS5346', NULL, NULL, NULL, NULL, '2026-06-03 12:12:08', '2026-06-04 04:42:45', NULL, NULL),
(270, 0, 'office', 'CBM-5672', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-04 00:00:00', 'Head Office', 'hardware', NULL, '2026-06-04 23:59:59', 1, NULL, '#DAMS1186', NULL, NULL, NULL, NULL, '2026-06-04 04:52:04', '2026-06-04 05:10:04', NULL, NULL),
(271, 0, 'office', 'BKH-4876', 0, NULL, NULL, '-', '0702202215', 'Dimath Weliwitigoda', 78, 20, 'APPROVED', NULL, '2026-06-04 00:00:00', 'Head Office', 'Seeduwa', NULL, '2026-06-04 23:59:59', 1, NULL, '#DIMA7443', NULL, NULL, NULL, NULL, '2026-06-04 05:35:45', '2026-06-04 05:36:21', NULL, NULL),
(272, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-04 00:00:00', 'Head Office', 'Pannipitiya, Sri Lanka', NULL, '2026-06-04 23:59:59', 1, NULL, '#MOSH2984', NULL, NULL, NULL, NULL, '2026-06-04 06:08:10', '2026-06-04 13:11:02', NULL, NULL),
(273, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-04 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-06-04 23:59:59', 1, NULL, '#BONI6099', NULL, NULL, NULL, NULL, '2026-06-04 06:42:40', '2026-06-04 06:45:05', NULL, NULL),
(274, 0, 'office', 'CBM-5679', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-04 00:00:00', 'Head Office', 'United MOTORS/ Micro', NULL, '2026-06-04 23:59:59', 1, '[73]', '#ANTO3333', NULL, NULL, NULL, NULL, '2026-06-04 08:28:47', '2026-06-04 11:56:33', NULL, NULL),
(275, 0, 'office', 'CBM-5714', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-06-04 00:00:00', 'Head Office', 'negombo', NULL, '2026-06-04 23:59:59', 1, NULL, '#INDI5267', NULL, NULL, NULL, NULL, '2026-06-04 08:34:49', '2026-06-05 04:09:55', NULL, NULL),
(276, 0, 'office', 'BKH-4876', 0, NULL, NULL, '-', '0702202215', 'Dimath Weliwitigoda', 78, 20, 'APPROVED', NULL, '2026-06-04 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-06-04 23:59:59', 1, NULL, '#DIMA3111', NULL, NULL, NULL, NULL, '2026-06-04 09:07:02', '2026-06-04 09:08:04', NULL, NULL),
(277, 0, 'office', 'CBQ-9481', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel and hardare', NULL, '2026-06-05 23:59:59', 1, '[79]', '#INDI3709', NULL, NULL, NULL, NULL, '2026-06-05 04:27:56', '2026-06-05 04:52:25', NULL, NULL),
(278, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Katunayake, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#BONI4987', NULL, NULL, NULL, NULL, '2026-06-05 04:40:03', '2026-06-05 04:40:41', NULL, NULL),
(279, 0, 'office', 'BID-2810', 0, NULL, NULL, '-', '0701354171', 'Heshan Sandaruwan', 72, 20, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#HESH8846', NULL, NULL, NULL, NULL, '2026-06-05 05:50:11', '2026-06-05 05:50:23', NULL, NULL),
(280, 0, 'office', 'CBM-5714', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 14, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#LALI9034', NULL, NULL, NULL, NULL, '2026-06-05 06:00:03', '2026-06-05 10:32:00', NULL, NULL),
(281, 0, 'office', 'CBM-5612', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'IN_PROGRESS', NULL, '2026-06-05 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#INDI9926', NULL, NULL, NULL, NULL, '2026-06-05 06:03:59', '2026-06-05 06:11:40', NULL, NULL),
(282, 0, 'office', 'CBQ-8849', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS5569', NULL, NULL, NULL, NULL, '2026-06-05 06:21:53', '2026-06-05 06:56:01', NULL, NULL),
(283, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#BONI7271', NULL, NULL, NULL, NULL, '2026-06-05 08:04:25', '2026-06-05 08:06:50', NULL, NULL),
(284, 0, 'office', 'CBS-9862', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS4799', NULL, NULL, NULL, NULL, '2026-06-05 08:20:23', '2026-06-05 08:54:18', NULL, NULL),
(285, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Euro Motors After Care Center, Hill Street, Dehiwala-Mount Lavinia, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, '[39]', '#BONI3341', NULL, NULL, NULL, NULL, '2026-06-05 08:24:51', '2026-06-05 08:25:36', NULL, NULL),
(286, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Samee Creation, Negombo Road, Ja-Ela, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#MIHI5891', NULL, NULL, NULL, NULL, '2026-06-05 08:57:19', '2026-06-05 09:32:52', NULL, NULL),
(287, 0, 'office', 'CBS-0864', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS5351', NULL, NULL, NULL, NULL, '2026-06-05 09:16:24', '2026-06-05 09:57:21', NULL, NULL),
(288, 0, 'office', 'CBM-5714', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Dandugama, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#MOSH1509', NULL, NULL, NULL, NULL, '2026-06-05 09:29:10', '2026-06-05 09:30:18', NULL, NULL),
(289, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Dandugama, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#MOSH1220', NULL, NULL, NULL, NULL, '2026-06-05 09:43:07', '2026-06-05 10:40:56', NULL, NULL),
(290, 0, 'office', 'CBS-9865', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS6581', NULL, NULL, NULL, NULL, '2026-06-05 09:57:47', '2026-06-05 10:54:22', NULL, NULL),
(291, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-05 23:59:59', 1, NULL, '#SRIM2931', NULL, NULL, NULL, NULL, '2026-06-05 10:13:18', '2026-06-05 12:06:59', NULL, NULL),
(292, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'IN_PROGRESS', NULL, '2026-06-05 00:00:00', 'Head Office', 'anton hardware', NULL, '2026-06-05 23:59:59', 1, '[81]', '#NILA4149', NULL, NULL, NULL, NULL, '2026-06-05 10:21:42', '2026-06-05 10:35:05', NULL, NULL),
(293, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'APPROVED', NULL, '2026-06-05 00:00:00', 'Head Office', 'anton hardware', NULL, '2026-06-05 23:59:59', 1, '[81]', '#NILA8606', NULL, NULL, NULL, NULL, '2026-06-05 10:33:42', '2026-06-08 04:22:54', NULL, NULL),
(294, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS9367', NULL, NULL, NULL, NULL, '2026-06-05 11:33:51', '2026-06-05 12:16:51', NULL, NULL),
(296, 0, 'office', 'PE-6837', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-05 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-05 23:59:59', 1, NULL, '#DAMS5391', NULL, NULL, NULL, NULL, '2026-06-05 12:17:23', '2026-06-05 13:00:56', NULL, NULL),
(297, 0, 'office', 'PC-1058', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-06-06 00:00:00', 'Head Office', 'Ja-Ela, Sri Lanka', NULL, '2026-06-06 23:59:59', 1, '[21]', '#INDI9138', NULL, NULL, NULL, NULL, '2026-06-06 08:19:13', '2026-06-06 09:14:16', NULL, NULL),
(298, 0, 'office', 'PD-7635', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, NULL, '#MIHI2188', NULL, NULL, NULL, NULL, '2026-06-08 04:20:55', '2026-06-08 06:25:00', NULL, NULL),
(299, 0, 'office', 'CBT-4753', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'United Motors,  Euro Motors', NULL, '2026-06-08 23:59:59', 1, NULL, '#ANTO5428', NULL, NULL, NULL, NULL, '2026-06-08 05:58:56', '2026-06-08 10:50:59', NULL, NULL),
(300, 0, 'office', 'CBM-5687', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-08 23:59:59', 1, NULL, '#DAMS3077', NULL, NULL, NULL, NULL, '2026-06-08 05:58:58', '2026-06-08 06:20:18', NULL, NULL),
(301, 0, 'office', 'CBQ-8857', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'SR Rent A Car Sri Lanka, Negombo - Colombo Main Road, Seeduwa, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, '[28,30,31]', '#MIHI1207', NULL, NULL, NULL, NULL, '2026-06-08 06:03:18', '2026-06-08 06:13:13', NULL, NULL),
(302, 0, 'office', 'CBS-9862', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-08 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, '[72]', '#DAMS8171', NULL, NULL, NULL, NULL, '2026-06-08 06:30:39', '2026-06-08 07:56:43', NULL, NULL),
(303, 0, 'office', 'CBM-5672', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, NULL, '#SRIM6434', NULL, NULL, NULL, NULL, '2026-06-08 07:19:31', '2026-06-08 09:07:41', NULL, NULL),
(304, 0, 'office', 'CBS-0868', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-06-08 00:00:00', 'Head Office', 'Dehiwala, Dehiwala-Mount Lavinia, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, '[21]', '#CHAM9785', NULL, NULL, NULL, NULL, '2026-06-08 07:52:59', '2026-06-10 04:14:38', NULL, NULL),
(305, 0, 'office', 'CBM-5683', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-08 23:59:59', 1, NULL, '#DAMS8488', NULL, NULL, NULL, NULL, '2026-06-08 08:07:40', '2026-06-08 09:51:01', NULL, NULL),
(307, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'Dandugama, Sri Lanka', NULL, '2026-06-08 23:59:59', 1, '[17]', '#INDI3910', NULL, NULL, NULL, NULL, '2026-06-08 08:28:18', '2026-06-08 09:00:04', NULL, NULL),
(308, 0, 'office', 'CBM-5706', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-08 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-08 23:59:59', 1, NULL, '#DAMS4397', NULL, NULL, NULL, NULL, '2026-06-08 08:55:02', '2026-06-08 09:38:44', NULL, NULL),
(309, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-08 00:00:00', 'Head Office', 'refuel and vivanthÃ ', NULL, '2026-06-08 23:59:59', 1, NULL, '#DAMS2170', NULL, NULL, NULL, NULL, '2026-06-08 10:27:28', '2026-06-08 11:08:17', NULL, NULL),
(310, 0, 'office', 'PD-7635', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#MIHI6820', NULL, NULL, NULL, NULL, '2026-06-09 04:02:33', '2026-06-09 04:18:55', NULL, NULL),
(311, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#SRIM3019', NULL, NULL, NULL, NULL, '2026-06-09 04:08:57', '2026-06-09 12:31:45', NULL, NULL),
(312, 0, 'office', 'CBS-9865', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-09 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-09 23:59:59', 1, NULL, '#DAMS3130', NULL, NULL, NULL, NULL, '2026-06-09 04:45:24', '2026-06-09 04:48:21', NULL, NULL),
(313, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-09 23:59:59', 1, NULL, '#DAMS8035', NULL, NULL, NULL, NULL, '2026-06-09 05:44:25', '2026-06-09 06:13:58', NULL, NULL),
(314, 0, 'office', 'CBQ-8861', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'APPROVED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#MOSH6733', NULL, NULL, NULL, NULL, '2026-06-09 05:50:36', '2026-06-09 05:53:47', NULL, NULL),
(315, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#DINI1114', NULL, NULL, NULL, NULL, '2026-06-09 06:10:34', '2026-06-09 07:26:08', NULL, NULL),
(316, 0, 'office', 'CBM-5684', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-09 23:59:59', 1, NULL, '#DAMS8834', NULL, NULL, NULL, NULL, '2026-06-09 06:28:52', '2026-06-09 07:12:07', NULL, NULL),
(317, 0, 'office', 'CBQ-8861', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'fueling', NULL, '2026-06-09 23:59:59', 1, NULL, '#ANTO7413', NULL, NULL, NULL, NULL, '2026-06-09 06:36:10', '2026-06-09 07:11:28', NULL, NULL),
(318, 0, 'office', 'CBU-1826', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-09 23:59:59', 1, NULL, '#DAMS3278', NULL, NULL, NULL, NULL, '2026-06-09 07:18:58', '2026-06-09 08:24:59', NULL, NULL),
(319, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#MOSH9851', NULL, NULL, NULL, NULL, '2026-06-09 07:28:43', '2026-06-09 10:01:06', NULL, NULL),
(320, 0, 'personal', 'CAE-4853', 41, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'HOD_APPROVED', NULL, '2026-06-11 00:00:00', 'Head Office', '-', NULL, '2026-06-12 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-06-09 08:08:35', '2026-06-09 09:10:35', NULL, NULL),
(321, 0, 'office', 'CAE-4853', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Micro Cars Limited - Head Office, Kandy - Colombo Road, Kelaniya, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, '[85,69]', '#ANTO1417', NULL, NULL, NULL, NULL, '2026-06-09 09:01:07', '2026-06-09 11:15:57', NULL, NULL),
(322, 0, 'office', 'CBV-5706', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Katunayake Entrance, Katunayake, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, NULL, '#BONI3600', NULL, NULL, NULL, NULL, '2026-06-09 09:52:23', '2026-06-09 09:53:43', NULL, NULL),
(323, 0, 'office', 'CBV-8397', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-09 00:00:00', 'Head Office', 'Katunayake Entrance, Katunayake, Sri Lanka', NULL, '2026-06-09 23:59:59', 1, '[31]', '#BONI5050', NULL, NULL, NULL, NULL, '2026-06-09 09:58:11', '2026-06-09 09:59:17', NULL, NULL),
(324, 0, 'office', 'CBS-0868', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-09 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-09 23:59:59', 1, NULL, '#DAMS7084', NULL, NULL, NULL, NULL, '2026-06-09 12:00:19', '2026-06-09 12:47:52', NULL, NULL),
(325, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'APPROVED', NULL, '2026-06-10 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-10 23:59:59', 1, NULL, '#SRIM1875', NULL, NULL, NULL, NULL, '2026-06-10 02:32:54', '2026-06-10 02:34:09', NULL, NULL),
(326, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 14, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-10 23:59:59', 1, NULL, '#SRIM3408', NULL, NULL, NULL, NULL, '2026-06-10 03:06:01', '2026-06-10 04:25:15', NULL, NULL),
(327, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'IN_PROGRESS', NULL, '2026-06-10 00:00:00', 'Head Office', 'Kotugoda, Sri Lanka', NULL, '2026-06-10 23:59:59', 1, NULL, '#CHAM5252', NULL, NULL, NULL, NULL, '2026-06-10 04:19:14', '2026-06-11 04:17:57', NULL, NULL),
(328, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS9431', NULL, NULL, NULL, NULL, '2026-06-10 04:59:29', '2026-06-10 05:42:16', NULL, NULL),
(329, 0, 'office', 'CBS-0995', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS2761', NULL, NULL, NULL, NULL, '2026-06-10 05:53:02', '2026-06-10 06:17:18', NULL, NULL),
(330, 0, 'office', 'CBS-0995', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-10 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS7257', NULL, NULL, NULL, NULL, '2026-06-10 05:53:35', '2026-06-10 06:00:36', NULL, NULL),
(331, 0, 'personal', 'CAK-9434', 155, NULL, NULL, 'Car', '0761414550', 'Boniface Mangala', 70, 21, 'HOD_APPROVED', NULL, '2026-06-11 00:00:00', 'Head Office', '-', NULL, '2026-06-12 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-06-10 05:55:42', '2026-06-11 04:40:13', NULL, NULL),
(332, 0, 'office', 'CBM-5708', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-10 00:00:00', 'Head Office', 'Negombo', NULL, '2026-06-10 23:59:59', 1, '[39]', '#BONI3105', NULL, NULL, NULL, NULL, '2026-06-10 06:06:17', '2026-06-10 06:06:51', NULL, NULL),
(333, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'Katunayake Seeduwa Urban Council, Kotugoda Road, Seeduwa, / Damro showroom Watthala and katunayake / Fridge repair Ja ea', NULL, '2026-06-10 23:59:59', 1, NULL, '#DINI4576', NULL, NULL, NULL, NULL, '2026-06-10 06:18:38', '2026-06-10 09:03:42', NULL, NULL),
(335, 0, 'office', 'CBS-9863', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS5486', NULL, NULL, NULL, NULL, '2026-06-10 06:31:53', '2026-06-10 07:26:15', NULL, NULL),
(336, 0, 'office', 'CBM-5721', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS2661', NULL, NULL, NULL, NULL, '2026-06-10 08:39:44', '2026-06-10 09:56:10', NULL, NULL),
(337, 0, 'office', 'CAX-7637', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-10 23:59:59', 1, NULL, '#DAMS3655', NULL, NULL, NULL, NULL, '2026-06-10 11:44:31', '2026-06-10 12:24:42', NULL, NULL),
(338, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0714357976', 'Srimal kamaral', 19, 11, 'COMPLETED', NULL, '2026-06-10 00:00:00', 'Head Office', 'Elite Rent A Car Sri Lanka, Office Space 7 Colombo, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-10 23:59:59', 1, NULL, '#SRIM6620', NULL, NULL, NULL, NULL, '2026-06-10 11:46:07', '2026-06-10 12:59:03', NULL, NULL),
(339, 0, 'personal', 'CBM-5712', 27, NULL, NULL, 'Car', '0763603589', 'Chamara Grero', 73, 21, 'HOD_APPROVED', NULL, '2026-06-12 00:00:00', 'Head Office', '-', NULL, '2026-06-13 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-06-11 04:15:05', '2026-06-11 04:34:48', NULL, NULL),
(340, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-11 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-11 23:59:59', 1, NULL, '#MOSH5031', NULL, NULL, NULL, NULL, '2026-06-11 05:11:14', '2026-06-12 04:17:57', NULL, NULL),
(341, 0, 'office', 'CBM-5709', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-11 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-11 23:59:59', 1, NULL, '#DAMS2643', NULL, NULL, NULL, NULL, '2026-06-11 05:21:16', '2026-06-11 06:10:46', NULL, NULL),
(342, 0, 'office', 'CAP-0853', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-11 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-11 23:59:59', 1, NULL, '#DAMS8660', NULL, NULL, NULL, NULL, '2026-06-11 06:11:56', '2026-06-11 06:24:33', NULL, NULL),
(343, 0, 'office', 'CBT-4753', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'IN_PROGRESS', NULL, '2026-06-11 00:00:00', 'Head Office', 'GLASS MASTER, Puttalam - Colombo Road, Katunayake, Sri Lanka', NULL, '2026-06-11 23:59:59', 1, NULL, '#RAVI9395', NULL, NULL, NULL, NULL, '2026-06-11 06:23:11', '2026-06-11 06:34:13', NULL, NULL),
(344, 0, 'office', 'CBS-0870', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-11 00:00:00', 'Head Office', 'Glass Master - Euro Motors - Micro kalaniya', NULL, '2026-06-11 23:59:59', 1, NULL, '#ANTO2986', NULL, NULL, NULL, NULL, '2026-06-11 06:23:22', '2026-06-11 10:51:11', NULL, NULL),
(345, 0, 'office', 'CBV-8397', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-11 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-11 23:59:59', 1, '[78]', '#DAMS7560', NULL, NULL, NULL, NULL, '2026-06-11 06:47:08', '2026-06-11 07:31:54', NULL, NULL),
(348, 0, 'office', 'CBV-8397', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-11 00:00:00', 'Head Office', 'vivantha and refuel', NULL, '2026-06-11 23:59:59', 1, '[69]', '#DAMS7624', NULL, NULL, NULL, NULL, '2026-06-11 08:57:09', '2026-06-11 09:03:18', NULL, NULL),
(349, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'APPROVED', NULL, '2026-06-11 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-06-11 23:59:59', 1, '[73]', '#RAVI1484', NULL, NULL, NULL, NULL, '2026-06-11 09:59:49', '2026-06-11 10:01:53', NULL, NULL),
(350, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'APPROVED', NULL, '2026-06-11 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-06-11 23:59:59', 1, '[55]', '#CHAM4699', NULL, NULL, NULL, NULL, '2026-06-11 10:38:05', '2026-06-11 10:39:25', NULL, NULL),
(352, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-11 00:00:00', 'Head Office', 'danstan and negombo', NULL, '2026-06-11 23:59:59', 1, '[69]', '#DAMS2396', NULL, NULL, NULL, NULL, '2026-06-11 11:07:00', '2026-06-11 12:11:22', NULL, NULL),
(353, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-12 23:59:59', 1, NULL, '#DAMS5953', NULL, NULL, NULL, NULL, '2026-06-12 04:35:55', '2026-06-12 05:07:26', NULL, NULL),
(354, 0, 'office', 'CBS-0874', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-12 23:59:59', 1, NULL, '#DAMS2952', NULL, NULL, NULL, NULL, '2026-06-12 05:21:04', '2026-06-12 05:44:41', NULL, NULL),
(355, 0, 'office', 'CAY-2266', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'APPROVED', NULL, '2026-06-12 00:00:00', 'Head Office', 'vivanta to office', NULL, '2026-06-12 23:59:59', 1, NULL, '#ANTO3768', NULL, NULL, NULL, NULL, '2026-06-12 06:40:11', '2026-06-12 06:41:57', NULL, NULL),
(356, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-12 23:59:59', 1, NULL, '#DAMS4132', NULL, NULL, NULL, NULL, '2026-06-12 06:50:19', '2026-06-12 07:57:28', NULL, NULL),
(357, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'negombo and micro', NULL, '2026-06-12 23:59:59', 1, '[39]', '#RAVI2526', NULL, NULL, NULL, NULL, '2026-06-12 07:10:57', '2026-06-12 09:38:18', NULL, NULL),
(358, 0, 'office', 'CBF-6651', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'APPROVED', NULL, '2026-06-12 00:00:00', 'Head Office', 'Namal Auto Electricals, Puttalam - Colombo Road, Negombo, Sri Lanka', NULL, '2026-06-12 23:59:59', 1, NULL, '#ANTO9768', NULL, NULL, NULL, NULL, '2026-06-12 07:13:15', '2026-06-12 07:15:27', NULL, NULL),
(359, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'APPROVED', NULL, '2026-06-12 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-06-12 23:59:59', 1, NULL, '#MOSH2866', NULL, NULL, NULL, NULL, '2026-06-12 07:53:39', '2026-06-12 07:54:54', NULL, NULL),
(360, 0, 'office', 'CBM-5700', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 14, 'IN_PROGRESS', NULL, '2026-06-12 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, NULL, '#LALI1989', NULL, NULL, NULL, NULL, '2026-06-12 07:55:33', '2026-06-12 08:47:02', NULL, NULL),
(361, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'Kandana, Sri Lanka', NULL, '2026-06-12 23:59:59', 1, NULL, '#MOSH9136', NULL, NULL, NULL, NULL, '2026-06-12 08:07:31', '2026-06-12 10:48:41', NULL, NULL),
(362, 0, 'office', 'CAI-1848', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-12 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-12 23:59:59', 1, NULL, '#DAMS6564', NULL, NULL, NULL, NULL, '2026-06-12 08:34:05', '2026-06-12 09:39:51', NULL, NULL),
(364, 0, 'office', 'CBM-5718', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'APPROVED', NULL, '2026-06-12 00:00:00', 'Head Office', 'seeduwa', NULL, '2026-06-12 23:59:59', 1, '[69]', '#DAMS6376', NULL, NULL, NULL, NULL, '2026-06-12 11:35:54', '2026-06-12 11:36:54', NULL, NULL),
(365, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-15 23:59:59', 1, NULL, '#DAMS5265', NULL, NULL, NULL, NULL, '2026-06-15 04:13:39', '2026-06-15 04:55:31', NULL, NULL),
(366, 0, 'office', 'CBM-5709', 0, NULL, NULL, '-', '0702202215', 'Dimath Weliwitigoda', 78, 14, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'Kotugoda, Sri Lanka', NULL, '2026-06-15 23:59:59', 1, NULL, '#DIMA2941', NULL, NULL, NULL, NULL, '2026-06-15 04:55:02', '2026-06-15 08:34:21', NULL, NULL),
(367, 0, 'office', 'CBM-5716', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'HOD_REJECTED', NULL, '2026-06-15 00:00:00', 'Head Office', 'Nehara Stationers & Art Gallery, Puttalam - Colombo Road, Negombo, Sri Lanka', NULL, '2026-06-15 23:59:59', 1, NULL, NULL, NULL, 'got another vehicle', NULL, NULL, '2026-06-15 05:48:02', '2026-06-18 06:04:52', NULL, NULL),
(368, 0, 'office', 'PD-9606', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-15 00:00:00', 'Head Office', 'prasad tyres', NULL, '2026-06-15 23:59:59', 1, NULL, '#DAMS8414', NULL, NULL, NULL, NULL, '2026-06-15 05:53:48', '2026-06-15 05:57:50', NULL, NULL),
(369, 0, 'office', 'CBM-5716', 0, NULL, NULL, '-', '071 477 0069', 'Mihiran', 17, 14, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'Browns Beach, Negombo, Porutota Road, Negombo, Sri Lanka', NULL, '2026-06-15 23:59:59', 1, '[27]', '#MIHI1255', NULL, NULL, NULL, NULL, '2026-06-15 07:04:03', '2026-06-15 09:57:43', NULL, NULL),
(370, 0, 'office', 'CBS-0870', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-15 23:59:59', 1, NULL, '#DAMS5569', NULL, NULL, NULL, NULL, '2026-06-15 07:13:12', '2026-06-15 08:39:23', NULL, NULL),
(371, 0, 'personal', 'KW-4867', 98, NULL, NULL, 'Car', '+94 76 416 0777', 'Dulshan  Wanigasekara', 86, 45, 'COMPLETED', NULL, '2026-06-16 00:00:00', 'Head Office', '-', NULL, '2026-06-16 23:59:59', 1, NULL, '#DULS2536', NULL, '', NULL, NULL, '2026-06-15 08:53:55', '2026-06-16 15:13:29', NULL, NULL),
(372, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-15 23:59:59', 1, NULL, '#MOSH6903', NULL, NULL, NULL, NULL, '2026-06-15 09:45:01', '2026-06-15 15:16:15', NULL, NULL),
(373, 0, 'office', 'CAP-5023', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'refuel 8', NULL, '2026-06-15 23:59:59', 1, NULL, '#DAMS2390', NULL, NULL, NULL, NULL, '2026-06-15 10:21:39', '2026-06-15 12:37:15', NULL, NULL),
(374, 0, 'office', 'CBQ-9481', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-15 00:00:00', 'Head Office', 'Jaela urban council stadium, Gamameda Road, Ja-Ela, Sri Lanka', NULL, '2026-06-15 23:59:59', 1, '[31]', '#BONI9573', NULL, NULL, NULL, NULL, '2026-06-15 10:41:52', '2026-06-15 10:50:37', NULL, NULL),
(375, 0, 'office', 'CAO-9712', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'COMPLETED', NULL, '2026-06-15 00:00:00', 'Head Office', 'fueling', NULL, '2026-06-15 23:59:59', 1, NULL, '#RAVI8933', NULL, NULL, NULL, NULL, '2026-06-15 11:41:59', '2026-06-15 12:38:26', NULL, NULL),
(376, 0, 'office', 'CBM-5682', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-16 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-16 23:59:59', 1, NULL, '#DAMS5739', NULL, NULL, NULL, NULL, '2026-06-16 04:30:02', '2026-06-16 05:22:19', NULL, NULL),
(377, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0773843033', 'Indika Acoinas', 75, 21, 'COMPLETED', NULL, '2026-06-16 00:00:00', 'Head Office', 'testrun seeduwa', NULL, '2026-06-16 23:59:59', 1, '[21]', '#INDI2509', NULL, NULL, NULL, NULL, '2026-06-16 06:53:34', '2026-06-16 08:14:48', NULL, NULL),
(379, 0, 'office', 'CBQ-9484', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-17 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-17 23:59:59', 1, NULL, '#DAMS6004', NULL, NULL, NULL, NULL, '2026-06-17 05:06:09', '2026-06-17 05:52:22', NULL, NULL),
(380, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'APPROVED', NULL, '2026-06-17 00:00:00', 'Head Office', 'Dehiwal to kelaniya', NULL, '2026-06-17 23:59:59', 1, '[21]', '#CHAM6226', NULL, NULL, NULL, NULL, '2026-06-17 05:43:17', '2026-06-17 05:45:08', NULL, NULL),
(381, 0, 'office', 'CBS-9865', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'IN_PROGRESS', NULL, '2026-06-17 00:00:00', 'Head Office', 'Euro Motors After Care Center, Hill Street, Dehiwala-Mount Lavinia, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, NULL, '#ANTO9013', NULL, NULL, NULL, NULL, '2026-06-17 05:43:39', '2026-06-17 05:55:31', NULL, NULL),
(382, 0, 'office', 'KW-4867', 0, NULL, NULL, '-', '0762877006', 'Kumara Fernando', 81, 21, 'APPROVED', NULL, '2026-06-17 00:00:00', 'Head Office', 'elite', NULL, '2026-06-17 23:59:59', 1, NULL, '#KUMA6348', NULL, NULL, NULL, NULL, '2026-06-17 06:14:22', '2026-06-17 06:16:11', NULL, NULL),
(383, 0, 'office', 'CAP-0853', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 14, 'IN_PROGRESS', NULL, '2026-06-17 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, NULL, '#LALI7337', NULL, NULL, NULL, NULL, '2026-06-17 06:14:35', '2026-06-17 07:13:46', NULL, NULL),
(384, 0, 'office', 'CBM-5723', 0, NULL, NULL, '-', '0761414555', 'Dicsion Kumara', 71, 21, 'APPROVED', NULL, '2026-06-17 00:00:00', 'Head Office', 'elite', NULL, '2026-06-17 23:59:59', 1, NULL, '#DICS1894', NULL, NULL, NULL, NULL, '2026-06-17 06:15:50', '2026-06-17 06:16:00', NULL, NULL),
(385, 0, 'office', 'CBS-9864', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'IN_PROGRESS', NULL, '2026-06-17 00:00:00', 'Head Office', 'vivantha', NULL, '2026-06-17 23:59:59', 1, NULL, '#DAMS7952', NULL, NULL, NULL, NULL, '2026-06-17 06:16:16', '2026-06-17 06:24:18', NULL, NULL),
(386, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '076 594 6923', 'Lalin Amith', 55, 14, 'COMPLETED', NULL, '2026-06-17 00:00:00', 'Head Office', 'Wattala, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, '[81]', '#LALI7379', NULL, NULL, NULL, NULL, '2026-06-17 07:47:58', '2026-06-17 13:26:19', NULL, NULL),
(388, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'COMPLETED', NULL, '2026-06-17 00:00:00', 'Head Office', 'Liyanagemulla, Negombo, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, '[21]', '#RAVI3271', NULL, NULL, NULL, NULL, '2026-06-17 08:21:02', '2026-06-17 08:48:44', NULL, NULL),
(389, 0, 'office', 'CBM-5707', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-17 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-17 23:59:59', 1, NULL, '#DAMS4307', NULL, NULL, NULL, NULL, '2026-06-17 09:43:29', '2026-06-17 10:18:40', NULL, NULL),
(390, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'COMPLETED', NULL, '2026-06-17 00:00:00', 'Head Office', 'Liyanagemulla, Negombo, Sri Lanka', NULL, '2026-06-17 23:59:59', 1, '[21]', '#RAVI1735', NULL, NULL, NULL, NULL, '2026-06-17 11:41:12', '2026-06-17 11:58:32', NULL, NULL),
(394, 0, 'office', 'CBG-7372', 0, NULL, NULL, '-', '0763603667', 'Anton Niroshan', 39, 21, 'COMPLETED', NULL, '2026-06-18 00:00:00', 'Head Office', 'For Fueling', NULL, '2026-06-18 23:59:59', 1, NULL, '#ANTO9520', NULL, NULL, NULL, NULL, '2026-06-18 04:57:31', '2026-06-18 06:29:28', NULL, NULL),
(395, 0, 'office', 'CBG-9526', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'IN_PROGRESS', NULL, '2026-06-18 00:00:00', 'Head Office', 'Wattala, Sri Lanka', NULL, '2026-06-18 23:59:59', 1, '[55]', '#MOSH2088', NULL, NULL, NULL, NULL, '2026-06-18 06:02:50', '2026-06-18 06:44:34', NULL, NULL),
(396, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-18 00:00:00', 'Head Office', 'wattala', NULL, '2026-06-18 23:59:59', 1, NULL, '#BONI4247', NULL, NULL, NULL, NULL, '2026-06-18 06:56:04', '2026-06-18 07:00:44', NULL, NULL),
(397, 0, 'office', 'CBM-5715', 0, NULL, NULL, '-', '075-7159099', 'Dinith Sanuka', 46, 45, 'IN_PROGRESS', NULL, '2026-06-18 00:00:00', 'Head Office', 'Vivanta Colombo, Airport Garden, Negombo Road, Seeduwa, Sri Lanka', NULL, '2026-06-18 23:59:59', 1, NULL, '#DINI6490', NULL, NULL, NULL, NULL, '2026-06-18 07:06:57', '2026-06-18 07:21:33', NULL, NULL),
(398, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'COMPLETED', NULL, '2026-06-18 00:00:00', 'Head Office', 'namal toyota', NULL, '2026-06-18 23:59:59', 1, '[39]', '#RAVI7114', NULL, NULL, NULL, NULL, '2026-06-18 07:43:04', '2026-06-18 10:31:18', NULL, NULL),
(399, 0, 'personal', 'CBM-5723', 25, NULL, NULL, 'Car', '0781803097', 'Ashen Fernando', 83, 21, 'HOD_APPROVED', NULL, '2026-06-20 00:00:00', 'Head Office', '-', NULL, '2026-06-20 23:59:59', 1, NULL, NULL, NULL, '', NULL, NULL, '2026-06-18 08:48:01', '2026-06-19 11:01:52', NULL, NULL),
(401, 0, 'office', 'CBM-5712', 0, NULL, NULL, '-', '0763904365', 'Induru Udantha', 26, 19, 'COMPLETED', NULL, '2026-06-18 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', 'Seeduwa, Sri Lanka', '2026-06-18 23:59:59', 1, '[24]', '#INDU1984', '#INDU1984-RT', NULL, NULL, NULL, '2026-06-18 09:52:34', '2026-06-18 10:21:37', NULL, NULL),
(403, 0, 'office', 'CBM-5661', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-19 23:59:59', 1, NULL, '#DAMS7338', NULL, NULL, NULL, NULL, '2026-06-19 04:59:51', '2026-06-19 05:28:55', NULL, NULL),
(404, 0, 'office', 'PD-7635', 0, NULL, NULL, '-', '0761414550', 'Boniface Mangala', 70, 21, 'APPROVED', NULL, '2026-06-19 00:00:00', 'Head Office', 'Liyanagemulla, Negombo, Sri Lanka', NULL, '2026-06-19 23:59:59', 1, NULL, '#BONI3635', NULL, NULL, NULL, NULL, '2026-06-19 05:01:13', '2026-06-19 05:01:40', NULL, NULL),
(405, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'APPROVED', NULL, '2026-06-19 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-19 23:59:59', 1, NULL, '#MOSH3532', NULL, NULL, NULL, NULL, '2026-06-19 05:33:27', '2026-06-19 05:50:18', NULL, NULL),
(406, 0, 'office', 'CBV-4035', 0, NULL, NULL, '-', '0787358598', 'Moshin  Fernando', 51, 45, 'IN_PROGRESS', NULL, '2026-06-19 00:00:00', 'Head Office', 'Colombo, Sri Lanka', NULL, '2026-06-19 23:59:59', 1, NULL, '#MOSH3539', NULL, NULL, NULL, NULL, '2026-06-19 06:04:18', '2026-06-19 06:08:53', NULL, NULL),
(407, 0, 'office', 'CBT-4753', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'vivantha and refuelg', NULL, '2026-06-19 23:59:59', 1, '[81,52]', '#DAMS6690', NULL, NULL, NULL, NULL, '2026-06-19 06:06:43', '2026-06-19 07:04:44', NULL, NULL),
(408, 0, 'office', 'CBS-0864', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-19 23:59:59', 1, NULL, '#DAMS9104', NULL, NULL, NULL, NULL, '2026-06-19 07:13:48', '2026-06-19 07:58:41', NULL, NULL),
(411, 0, 'office', 'CAK-9434', 0, NULL, NULL, '-', '076 820 0093', 'Nilantha', 21, 14, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'seeduwa cushion work', NULL, '2026-06-19 23:59:59', 1, NULL, '#NILA7345', NULL, NULL, NULL, NULL, '2026-06-19 08:54:02', '2026-06-19 09:14:19', NULL, NULL),
(412, 0, 'office', 'CAK-9434', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-19 23:59:59', 1, NULL, '#DAMS4623', NULL, NULL, NULL, NULL, '2026-06-19 09:34:34', '2026-06-19 10:02:29', NULL, NULL),
(413, 0, 'office', 'CBM-5716', 0, NULL, NULL, '-', '0763603589', 'Chamara Grero', 73, 21, 'APPROVED', NULL, '2026-06-19 00:00:00', 'Head Office', 'Dankotuwa, Sri Lanka', NULL, '2026-06-19 23:59:59', 1, NULL, '#CHAM6157', NULL, NULL, NULL, NULL, '2026-06-19 09:45:43', '2026-06-19 09:46:33', NULL, NULL),
(414, 0, 'office', 'CBM-5683', 0, NULL, NULL, '-', '0766445502', 'Ravindu Niyangoda', 69, 21, 'IN_PROGRESS', NULL, '2026-06-19 00:00:00', 'Head Office', 'VSD Automobile, Mihindu Mawatha, Eldeniya, Sri Lanka', NULL, '2026-06-19 23:59:59', 1, '[39]', '#RAVI3473', NULL, NULL, NULL, NULL, '2026-06-19 10:29:23', '2026-06-19 10:37:48', NULL, NULL),
(415, 0, 'office', 'CBF-9182', 0, NULL, NULL, '-', '0766009719', 'Damsak De Zoysa', 79, 21, 'COMPLETED', NULL, '2026-06-19 00:00:00', 'Head Office', 'refuel', NULL, '2026-06-19 23:59:59', 1, NULL, '#DAMS5711', NULL, NULL, NULL, NULL, '2026-06-19 10:39:26', '2026-06-19 11:08:46', NULL, NULL);

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
  `start_remark` varchar(300) DEFAULT NULL,
  `end_trip_fuel` decimal(5,2) DEFAULT NULL,
  `change_vehicle_no` varchar(20) DEFAULT NULL,
  `change_vehicle_datetime` datetime DEFAULT NULL,
  `change_vehicle_start_odometer` int(11) DEFAULT NULL,
  `change_vehicle_end_odometer` int(11) DEFAULT NULL,
  `change_vehicle_start_photo` varchar(255) DEFAULT NULL,
  `change_vehicle_end_photo` varchar(255) DEFAULT NULL,
  `change_vehicle_start_fuel` decimal(5,2) DEFAULT NULL,
  `change_vehicle_end_fuel` decimal(5,2) DEFAULT NULL,
  `change_vehicle_remark` varchar(300) DEFAULT NULL,
  `end_remark` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`trip_detail_id`, `transport_service_id`, `trip_start_datetime`, `trip_end_datetime`, `trip_start_odometer`, `trip_end_odometer`, `trip_start_odometer_photo`, `trip_end_odometer_photo`, `start_trip_fuel`, `start_remark`, `end_trip_fuel`, `change_vehicle_no`, `change_vehicle_datetime`, `change_vehicle_start_odometer`, `change_vehicle_end_odometer`, `change_vehicle_start_photo`, `change_vehicle_end_photo`, `change_vehicle_start_fuel`, `change_vehicle_end_fuel`, `change_vehicle_remark`, `end_remark`, `created_at`, `updated_at`) VALUES
(5, 8, '2026-04-02 12:22:48', '2026-04-06 10:37:53', 30618, 30671, 'uploads/trips/start_8_1775132568.jpg', 'uploads/trips/end_8_1775471873.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-02 12:22:48', '2026-04-06 10:37:53'),
(6, 31, '2026-04-11 23:41:26', '2026-04-18 12:52:04', 30507, 31360, 'uploads/trips/start_31_1775950886.jpg', 'uploads/trips/end_31_1776516724.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-11 23:41:26', '2026-04-18 12:52:04'),
(7, 57, '2026-04-17 06:36:06', '2026-04-17 06:37:55', 171339, 171638, 'uploads/trips/start_57_1776407766.jpg', 'uploads/trips/end_57_1776407875.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-17 06:36:06', '2026-04-17 06:37:55'),
(10, 90, '2026-04-29 18:52:28', '2026-04-30 20:07:42', 30147, 30342, 'uploads/trips/start_90_1777488748.jpg', 'uploads/trips/end_90_1777579662.jpg', 70.00, NULL, 75.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-29 18:52:28', '2026-04-30 20:07:42'),
(11, 101, '2026-04-30 13:06:56', '2026-04-30 13:07:44', 10, 1444, 'uploads/trips/start_101_1777554416.jpg', 'uploads/trips/end_101_1777554464.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-30 13:06:56', '2026-04-30 13:07:44'),
(12, 102, '2026-04-30 13:23:38', '2026-04-30 13:24:04', 1880, 1888, 'uploads/trips/start_102_1777555418.jpg', 'uploads/trips/end_102_1777555444.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-30 13:23:38', '2026-04-30 13:24:04'),
(13, 99, '2026-05-01 07:08:14', NULL, 74900, NULL, 'uploads/trips/start_99_1777619294.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-01 07:08:14', '2026-05-01 07:08:14'),
(14, 113, '2026-05-12 07:02:09', '2026-05-12 07:34:07', 125424, 125432, 'uploads/trips/start_113_1778569329.jpg', 'uploads/trips/end_113_1778571247.jpg', 10.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-12 07:02:09', '2026-05-12 07:34:07'),
(15, 111, '2026-05-12 08:41:09', '2026-05-12 08:52:57', 126068, 126099, 'uploads/trips/start_111_1778575269.jpg', 'uploads/trips/end_111_1778575977.jpg', 65.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-12 08:41:09', '2026-05-12 08:52:57'),
(16, 116, '2026-05-13 06:16:39', '2026-05-13 07:05:38', 13676, 13683, 'uploads/trips/start_116_1778652999.jpg', 'uploads/trips/end_116_1778655938.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 06:16:39', '2026-05-13 07:05:38'),
(17, 117, '2026-05-13 07:15:34', '2026-05-13 07:37:04', 126263, 126270, 'uploads/trips/start_117_1778656534.jpg', 'uploads/trips/end_117_1778657824.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 07:15:34', '2026-05-13 07:37:04'),
(18, 118, '2026-05-13 07:41:26', '2026-05-13 08:00:07', 40286, 40294, 'uploads/trips/start_118_1778658086.jpg', 'uploads/trips/end_118_1778659207.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 07:41:26', '2026-05-13 08:00:07'),
(19, 119, '2026-05-13 08:12:14', '2026-05-13 08:40:06', 93031, 93039, 'uploads/trips/start_119_1778659934.jpg', 'uploads/trips/end_119_1778661606.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 08:12:14', '2026-05-13 08:40:06'),
(20, 120, '2026-05-13 09:28:32', '2026-05-13 10:29:03', 6337, 6340, 'uploads/trips/start_120_1778664512.jpg', 'uploads/trips/end_120_1778668143.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 09:28:32', '2026-05-13 10:29:03'),
(21, 124, '2026-05-13 19:25:04', '2026-05-15 15:43:36', 31719, 32027, 'uploads/trips/start_124_1778700304.jpg', 'uploads/trips/end_124_1778859816.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-13 19:25:04', '2026-05-15 15:43:36'),
(22, 129, '2026-05-14 06:24:09', '2026-05-14 07:39:21', 15398, 15417, 'uploads/trips/start_129_1778739849.jpg', 'uploads/trips/end_129_1778744361.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-14 06:24:09', '2026-05-14 07:39:21'),
(23, 131, '2026-05-14 08:41:19', '2026-05-14 09:59:18', 125721, 125741, 'uploads/trips/start_131_1778748079.jpg', 'uploads/trips/end_131_1778752758.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-14 08:41:19', '2026-05-14 09:59:18'),
(24, 132, '2026-05-14 09:53:18', '2026-05-14 12:03:29', 32067, 32114, 'uploads/trips/start_132_1778752398.jpg', 'uploads/trips/end_132_1778760209.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-14 09:53:18', '2026-05-14 12:03:29'),
(25, 23, '2026-05-14 13:00:12', '2026-05-14 13:01:07', 12233, 12238, 'uploads/trips/start_23_1778763612.jpg', 'uploads/trips/end_23_1778763667.jpg', 60.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-14 13:00:12', '2026-05-14 13:01:07'),
(26, 134, '2026-05-15 05:27:45', '2026-05-15 06:18:11', 35194, 35205, 'uploads/trips/start_134_1778822865.jpg', 'uploads/trips/end_134_1778825891.jpg', 60.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 05:27:45', '2026-05-15 06:18:11'),
(27, 135, '2026-05-15 05:33:33', '2026-05-15 06:26:20', 6364, 6376, 'uploads/trips/start_135_1778823213.jpg', 'uploads/trips/end_135_1778826380.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 05:33:33', '2026-05-15 06:26:20'),
(28, 136, '2026-05-15 07:01:56', NULL, 97331, NULL, 'uploads/trips/start_136_1778828516.jpg', NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 07:01:56', '2026-05-15 07:01:56'),
(29, 22, '2026-05-15 08:27:57', NULL, 9871, NULL, 'uploads/trips/start_22_1778833677.jpg', NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 08:27:57', '2026-05-15 08:27:57'),
(30, 138, '2026-05-15 08:45:48', NULL, 7584, NULL, 'uploads/trips/start_138_1778834748.jpg', NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 08:45:48', '2026-05-15 08:45:48'),
(31, 139, '2026-05-15 10:59:01', '2026-05-15 11:25:29', 32166, 32177, 'uploads/trips/start_139_1778842741.jpg', 'uploads/trips/end_139_1778844329.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 10:59:01', '2026-05-15 11:25:29'),
(32, 141, '2026-05-15 13:41:26', NULL, 32177, NULL, 'uploads/trips/start_141_1778852486.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-15 13:41:26', '2026-05-15 13:41:26'),
(33, 142, '2026-05-18 03:20:43', '2026-05-18 03:34:52', 29142, 29149, 'uploads/trips/start_142_1779074443.jpg', 'uploads/trips/end_142_1779075292.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 03:20:43', '2026-05-18 03:34:52'),
(34, 143, '2026-05-18 04:35:07', NULL, 1106853, NULL, 'uploads/trips/start_143_1779078907.jpg', NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 04:35:07', '2026-05-18 04:35:07'),
(35, 145, '2026-05-18 06:47:07', '2026-05-18 12:22:27', 67310, 67385, 'uploads/trips/start_145_1779086827.jpg', 'uploads/trips/end_145_1779106947.jpg', 100.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 06:47:07', '2026-05-18 12:22:27'),
(36, 25, '2026-05-18 06:50:36', NULL, 6546, NULL, 'uploads/trips/start_25_1779087036.jpg', NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 06:50:36', '2026-05-18 06:50:36'),
(37, 147, '2026-05-18 07:25:14', '2026-05-18 09:09:25', 29149, 29187, 'uploads/trips/start_147_1779089114.jpg', 'uploads/trips/end_147_1779095365.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 07:25:14', '2026-05-18 09:09:25'),
(38, 148, '2026-05-18 09:21:06', '2026-05-18 10:10:49', 35272, 35277, 'uploads/trips/start_148_1779096066.jpg', 'uploads/trips/end_148_1779099049.jpg', 30.00, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 09:21:06', '2026-05-18 10:10:49'),
(39, 149, '2026-05-18 10:50:57', '2026-05-18 10:52:55', 34271, 34282, 'uploads/trips/start_149_1779101457.jpg', 'uploads/trips/end_149_1779101575.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 10:50:57', '2026-05-18 10:52:55'),
(40, 150, '2026-05-18 10:59:56', '2026-05-18 11:28:21', 35277, 52285, 'uploads/trips/start_150_1779101996.jpg', 'uploads/trips/end_150_1779103701.jpg', 30.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 10:59:56', '2026-05-18 11:28:21'),
(41, 151, '2026-05-18 11:46:25', '2026-05-18 12:17:17', 29187, 29192, 'uploads/trips/start_151_1779104785.jpg', 'uploads/trips/end_151_1779106637.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-18 11:46:25', '2026-05-18 12:17:17'),
(42, 153, '2026-05-19 06:17:06', '2026-05-19 06:44:43', 11915, 11924, 'uploads/trips/start_153_1779171426.jpg', 'uploads/trips/end_153_1779173083.jpg', 70.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 06:17:06', '2026-05-19 06:44:43'),
(43, 154, '2026-05-19 06:52:27', '2026-05-19 12:03:39', 67385, 67487, 'uploads/trips/start_154_1779173547.jpg', 'uploads/trips/end_154_1779192219.jpg', 70.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 06:52:27', '2026-05-19 12:03:39'),
(44, 155, '2026-05-19 07:06:49', '2026-05-19 07:33:47', 43155, 43167, 'uploads/trips/start_155_1779174409.jpg', 'uploads/trips/end_155_1779176027.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 07:06:49', '2026-05-19 07:33:47'),
(45, 156, '2026-05-19 08:13:43', '2026-05-19 09:19:22', 10066, 10076, 'uploads/trips/start_156_1779178423.jpg', 'uploads/trips/end_156_1779182362.jpg', 30.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 08:13:43', '2026-05-19 09:19:22'),
(46, 157, '2026-05-19 10:08:07', '2026-05-19 10:36:40', 40609, 40617, 'uploads/trips/start_157_1779185287.jpg', 'uploads/trips/end_157_1779187000.jpg', 5.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 10:08:07', '2026-05-19 10:36:40'),
(47, 146, '2026-05-19 10:19:57', NULL, 4598, NULL, 'uploads/trips/start_146_1779185997.jpg', NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-19 10:19:57', '2026-05-19 10:19:57'),
(48, 160, '2026-05-20 04:06:47', '2026-05-20 05:11:19', 241319, 241329, 'uploads/trips/start_160_1779250007.jpg', 'uploads/trips/end_160_1779253879.jpg', 40.00, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 04:06:47', '2026-05-20 05:11:19'),
(49, 162, '2026-05-20 04:39:01', NULL, 17090, NULL, 'uploads/trips/start_162_1779251941.jpg', NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 04:39:01', '2026-05-20 04:39:01'),
(50, 164, '2026-05-20 07:01:10', '2026-05-20 08:22:37', 32379, 32387, 'uploads/trips/start_164_1779260470.jpg', 'uploads/trips/end_164_1779265357.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 07:01:10', '2026-05-20 08:22:37'),
(51, 163, '2026-05-20 10:39:17', '2026-05-22 06:18:23', 79026, 79227, 'uploads/trips/start_163_1779273557.jpg', 'uploads/trips/end_163_1779430703.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 10:39:17', '2026-05-22 06:18:23'),
(52, 167, '2026-05-20 10:41:19', '2026-05-20 11:06:57', 4598, 4606, 'uploads/trips/start_167_1779273679.jpg', 'uploads/trips/end_167_1779275217.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 10:41:19', '2026-05-20 11:06:57'),
(53, 168, '2026-05-20 11:18:48', '2026-05-20 11:54:46', 67487, 67497, 'uploads/trips/start_168_1779275928.jpg', 'uploads/trips/end_168_1779278086.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20 11:18:48', '2026-05-20 11:54:46'),
(54, 170, '2026-05-21 06:20:48', '2026-05-21 09:04:32', 33503, 33525, 'uploads/trips/start_170_1779344448.jpg', 'uploads/trips/end_170_1779354272.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-21 06:20:48', '2026-05-21 09:04:32'),
(55, 171, '2026-05-21 06:53:55', '2026-05-21 12:57:03', 67497, 67611, 'uploads/trips/start_171_1779346435.jpg', 'uploads/trips/end_171_1779368223.jpg', 100.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-21 06:53:55', '2026-05-21 12:57:03'),
(56, 173, '2026-05-21 09:39:18', '2026-05-21 11:45:35', 97331, 97419, 'uploads/trips/start_173_1779356358.jpg', 'uploads/trips/end_173_1779363935.jpg', 30.00, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-21 09:39:18', '2026-05-21 11:45:35'),
(57, 176, '2026-05-22 04:48:17', '2026-05-22 05:08:18', 79223, 79231, 'uploads/trips/start_176_1779425297.jpg', 'uploads/trips/end_176_1779426498.jpg', 70.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 04:48:17', '2026-05-22 05:08:18'),
(58, 179, '2026-05-22 06:01:14', '2026-05-23 01:30:18', 67612, 67737, 'uploads/trips/start_179_1779429674.jpg', 'uploads/trips/end_179_1779499818.jpg', 70.00, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 06:01:14', '2026-05-23 01:30:18'),
(59, 59, '2026-05-22 06:17:19', NULL, 79227, NULL, 'uploads/trips/start_59_1779430639.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 06:17:19', '2026-05-22 06:17:19'),
(60, 180, '2026-05-22 06:39:34', '2026-05-22 08:29:05', 25132, 25161, 'uploads/trips/start_180_1779431974.jpg', 'uploads/trips/end_180_1779438545.jpg', 100.00, NULL, 95.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 06:39:34', '2026-05-22 08:29:05'),
(61, 181, '2026-05-22 07:47:39', '2026-05-22 07:56:37', 40714, 40716, 'uploads/trips/start_181_1779436059.jpg', 'uploads/trips/end_181_1779436597.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 07:47:39', '2026-05-22 07:56:37'),
(62, 182, '2026-05-22 08:54:11', '2026-05-22 12:17:11', 42616, 42652, 'uploads/trips/start_182_1779440051.jpg', 'uploads/trips/end_182_1779452231.jpg', 100.00, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 08:54:11', '2026-05-22 12:17:11'),
(63, 183, '2026-05-22 09:28:50', '2026-05-22 09:30:00', 8140, 8149, 'uploads/trips/start_183_1779442130.jpg', 'uploads/trips/end_183_1779442200.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 09:28:50', '2026-05-22 09:30:00'),
(64, 187, '2026-05-22 10:37:03', '2026-05-22 12:27:55', 40716, 40745, 'uploads/trips/start_187_1779446223.jpg', 'uploads/trips/end_187_1779452875.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-22 10:37:03', '2026-05-22 12:27:55'),
(65, 188, '2026-05-23 01:25:41', '2026-05-23 04:43:43', 46220, 46312, 'uploads/trips/start_188_1779499541.jpg', 'uploads/trips/end_188_1779511423.jpg', 100.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-23 01:25:41', '2026-05-23 04:43:43'),
(66, 189, '2026-05-25 04:21:32', '2026-05-25 04:35:21', 25362, 25364, 'uploads/trips/start_189_1779682892.jpg', 'uploads/trips/end_189_1779683721.jpg', 80.00, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 04:21:32', '2026-05-25 04:35:21'),
(67, 190, '2026-05-25 04:28:04', NULL, 107613, NULL, 'uploads/trips/start_190_1779683284.jpg', NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 04:28:04', '2026-05-25 04:28:04'),
(68, 174, '2026-05-25 04:43:32', NULL, 100, NULL, 'uploads/trips/start_174_1779684212.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 04:43:32', '2026-05-25 04:43:32'),
(69, 191, '2026-05-25 06:12:36', '2026-05-25 06:13:18', 31093, 31109, 'uploads/trips/start_191_1779689556.jpg', 'uploads/trips/end_191_1779689598.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 06:12:36', '2026-05-25 06:13:18'),
(70, 193, '2026-05-25 07:26:56', '2026-05-29 08:08:24', 25364, 129726, 'uploads/trips/start_193_1779694016.jpg', 'uploads/trips/end_193_1780042104.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 07:26:56', '2026-05-29 08:08:24'),
(71, 195, '2026-05-25 09:32:43', '2026-05-25 10:50:05', 25366, 25389, 'uploads/trips/start_195_1779701563.jpg', 'uploads/trips/end_195_1779706205.jpg', 90.00, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 09:32:43', '2026-05-25 10:50:05'),
(72, 194, '2026-05-25 10:43:30', NULL, 100, NULL, 'uploads/trips/start_194_1779705810.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-25 10:43:30', '2026-05-25 10:43:30'),
(73, 197, '2026-05-26 05:45:49', '2026-05-26 13:15:04', 25389, 25496, 'uploads/trips/start_197_1779774349.jpg', 'uploads/trips/end_197_1779801304.jpg', 70.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-26 05:45:49', '2026-05-26 13:15:04'),
(74, 199, '2026-05-26 08:42:28', '2026-05-26 11:11:19', 13560, 13609, 'uploads/trips/start_199_1779784948.jpg', 'uploads/trips/end_199_1779793879.jpg', 90.00, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-26 08:42:28', '2026-05-26 11:11:19'),
(75, 202, '2026-05-26 10:43:09', '2026-05-26 11:47:16', 30677, 30687, 'uploads/trips/start_202_1779792189.jpg', 'uploads/trips/end_202_1779796036.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-26 10:43:09', '2026-05-26 11:47:16'),
(76, 203, '2026-05-26 14:01:25', NULL, 13609, NULL, 'uploads/trips/start_203_1779804085.jpg', NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-26 14:01:25', '2026-05-26 14:01:25'),
(77, 204, '2026-05-27 04:15:36', '2026-05-27 04:45:59', 25496, 25510, 'uploads/trips/start_204_1779855336.jpg', 'uploads/trips/end_204_1779857159.jpg', 50.00, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-27 04:15:36', '2026-05-27 04:45:59'),
(78, 206, '2026-05-27 08:39:24', '2026-05-27 10:33:49', 25510, 25564, 'uploads/trips/start_206_1779871164.jpg', 'uploads/trips/end_206_1779878029.jpg', 40.00, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-27 08:39:24', '2026-05-27 10:33:49'),
(79, 208, '2026-05-27 09:33:03', '2026-05-27 09:53:37', 2076, 2080, 'uploads/trips/start_208_1779874383.jpg', 'uploads/trips/end_208_1779875617.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-27 09:33:03', '2026-05-27 09:53:37'),
(80, 209, '2026-05-27 10:46:33', '2026-05-27 11:46:29', 80073, 80085, 'uploads/trips/start_209_1779878793.jpg', 'uploads/trips/end_209_1779882389.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-27 10:46:33', '2026-05-27 11:46:29'),
(81, 215, '2026-05-28 06:31:33', '2026-05-28 07:04:11', 33177, 33183, 'uploads/trips/start_215_1779949893.jpg', 'uploads/trips/end_215_1779951851.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-28 06:31:33', '2026-05-28 07:04:11'),
(82, 214, '2026-05-28 06:40:08', '2026-05-29 03:47:57', 59913, 59961, 'uploads/trips/start_214_1779950408.jpg', 'uploads/trips/end_214_1780026477.jpg', 40.00, NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-28 06:40:08', '2026-05-29 03:47:57'),
(83, 192, '2026-05-28 07:01:01', '2026-05-28 07:01:46', 31109, 31146, 'uploads/trips/start_192_1779951661.jpg', 'uploads/trips/end_192_1779951706.jpg', 70.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-28 07:01:01', '2026-05-28 07:01:46'),
(84, 218, '2026-05-28 10:23:37', '2026-05-28 12:14:55', 93417, 93442, 'uploads/trips/start_218_1779963817.jpg', 'uploads/trips/end_218_1779970495.jpg', 30.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-28 10:23:37', '2026-05-28 12:14:55'),
(85, 220, '2026-05-29 03:47:04', '2026-05-29 06:27:16', 59961, 59968, 'uploads/trips/start_220_1780026424.jpg', 'uploads/trips/end_220_1780036036.jpg', 10.00, NULL, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29 03:47:04', '2026-05-29 06:27:16'),
(86, 224, '2026-05-29 06:17:39', '2026-05-29 10:52:55', 13707, 13747, 'uploads/trips/start_224_1780035459.jpg', 'uploads/trips/end_224_1780051975.jpg', 60.00, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29 06:17:39', '2026-05-29 10:52:55'),
(87, 227, '2026-05-29 07:36:40', '2026-05-29 13:25:49', 33540, 33601, 'uploads/trips/start_227_1780040200.jpg', 'uploads/trips/end_227_1780061149.jpg', 70.00, NULL, 55.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:36:40', '2026-05-29 13:25:49'),
(88, 228, '2026-05-29 08:03:56', '2026-06-01 04:59:20', 59968, 59971, 'uploads/trips/start_228_1780041836.jpg', 'uploads/trips/end_228_1780289960.jpg', 5.00, NULL, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29 08:03:56', '2026-06-01 04:59:20'),
(89, 230, '2026-05-29 09:21:02', NULL, 128726, NULL, 'uploads/trips/start_230_1780046462.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29 09:21:02', '2026-05-29 09:21:02'),
(90, 237, '2026-05-30 10:48:28', NULL, 141810, NULL, 'uploads/trips/start_237_1780138108.jpg', NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-30 10:48:28', '2026-05-30 10:48:28'),
(91, 238, '2026-06-01 04:06:52', '2026-06-01 04:24:23', 37138, 37143, 'uploads/trips/start_238_1780286812.jpg', 'uploads/trips/end_238_1780287863.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-01 04:06:52', '2026-06-01 04:24:23'),
(92, 239, '2026-06-01 07:17:20', '2026-06-01 07:57:53', 129408, 129417, 'uploads/trips/start_239_1780298240.jpg', 'uploads/trips/end_239_1780300673.jpg', 60.00, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-01 07:17:20', '2026-06-01 07:57:53'),
(93, 240, '2026-06-01 07:29:15', '2026-06-01 08:40:32', 37144, 37155, 'uploads/trips/start_240_1780298955.jpg', 'uploads/trips/end_240_1780303232.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-01 07:29:15', '2026-06-01 08:40:32'),
(94, 245, '2026-06-01 10:24:19', '2026-06-01 10:50:14', 326114, 326121, 'uploads/trips/start_245_1780309459.jpg', 'uploads/trips/end_245_1780311014.jpg', 10.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-01 10:24:19', '2026-06-01 10:50:14'),
(95, 246, '2026-06-01 12:11:54', '2026-06-01 12:42:11', 31385, 31393, 'uploads/trips/start_246_1780315914.jpg', 'uploads/trips/end_246_1780317731.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-01 12:11:54', '2026-06-01 12:42:11'),
(96, 232, '2026-06-02 04:26:44', NULL, 34412, NULL, 'uploads/trips/start_232_1780374404.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 04:26:44', '2026-06-02 04:26:44'),
(97, 248, '2026-06-02 04:38:30', NULL, 15309, NULL, 'uploads/trips/start_248_1780375110.jpg', NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 04:38:30', '2026-06-02 04:38:30'),
(98, 250, '2026-06-02 06:06:20', NULL, 32614, NULL, 'uploads/trips/start_250_1780380380.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 06:06:20', '2026-06-02 06:06:20'),
(99, 249, '2026-06-02 06:41:20', '2026-06-02 06:42:25', 17832, 17832, 'uploads/trips/start_249_1780382480.jpg', 'uploads/trips/end_249_1780382545.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 06:41:20', '2026-06-02 06:42:25'),
(100, 247, '2026-06-02 07:09:30', '2026-06-02 07:10:16', 34413, 34454, 'uploads/trips/start_247_1780384170.jpg', 'uploads/trips/end_247_1780384216.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 07:09:30', '2026-06-02 07:10:16'),
(101, 253, '2026-06-02 08:02:12', '2026-06-02 08:43:15', 44586, 44594, 'uploads/trips/start_253_1780387332.jpg', 'uploads/trips/end_253_1780389795.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 08:02:12', '2026-06-02 08:43:15'),
(102, 254, '2026-06-02 10:05:53', '2026-06-02 11:47:54', 11248, 11286, 'uploads/trips/start_254_1780394753.jpg', 'uploads/trips/end_254_1780400874.jpg', 100.00, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 10:05:53', '2026-06-02 11:47:54'),
(103, 255, '2026-06-02 10:11:25', '2026-06-02 10:41:54', 8595, 8602, 'uploads/trips/start_255_1780395085.jpg', 'uploads/trips/end_255_1780396914.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 10:11:25', '2026-06-02 10:41:54'),
(104, 256, '2026-06-02 11:14:27', NULL, 17832, NULL, 'uploads/trips/start_256_1780398867.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-02 11:14:27', '2026-06-02 11:14:27'),
(105, 259, '2026-06-03 06:35:52', '2026-06-03 06:58:31', 80517, 80525, 'uploads/trips/start_259_1780468552.jpg', 'uploads/trips/end_259_1780469911.jpg', 10.00, NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 06:35:52', '2026-06-03 06:58:31'),
(106, 261, '2026-06-03 07:25:47', '2026-06-03 08:22:17', 17837, 17846, 'uploads/trips/start_261_1780471547.jpg', 'uploads/trips/end_261_1780474937.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 07:25:47', '2026-06-03 08:22:17'),
(107, 263, '2026-06-03 08:00:42', '2026-06-03 09:07:35', 13192, 13216, 'uploads/trips/start_263_1780473642.jpg', 'uploads/trips/end_263_1780477655.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 08:00:42', '2026-06-03 09:07:35'),
(108, 264, '2026-06-03 08:04:55', '2026-06-03 08:07:39', 34454, 34454, 'uploads/trips/start_264_1780473895.jpg', 'uploads/trips/end_264_1780474059.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 08:04:55', '2026-06-03 08:07:39'),
(109, 257, '2026-06-03 08:10:56', NULL, 100000, NULL, 'uploads/trips/start_257_1780474256.jpg', NULL, 95.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 08:10:56', '2026-06-03 08:10:56'),
(110, 178, '2026-06-03 08:12:12', NULL, 50000, NULL, 'uploads/trips/start_178_1780474332.jpg', NULL, 95.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 08:12:12', '2026-06-03 08:12:12'),
(111, 267, '2026-06-03 09:28:08', '2026-06-03 10:37:22', 17846, 17876, 'uploads/trips/start_267_1780478888.jpg', 'uploads/trips/end_267_1780483042.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 09:28:08', '2026-06-03 10:37:22'),
(112, 266, '2026-06-03 09:30:37', '2026-06-03 12:09:09', 22123, 22134, 'uploads/trips/start_266_1780479037.jpg', 'uploads/trips/end_266_1780488549.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 09:30:37', '2026-06-03 12:09:09'),
(113, 268, '2026-06-03 10:40:09', '2026-06-03 11:01:33', 33694, 33702, 'uploads/trips/start_268_1780483209.jpg', 'uploads/trips/end_268_1780484493.jpg', 75.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-03 10:40:09', '2026-06-03 11:01:33'),
(114, 270, '2026-06-04 04:56:18', '2026-06-04 05:10:04', 32619, 32621, 'uploads/trips/start_270_1780548978.jpg', 'uploads/trips/end_270_1780549804.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-04 04:56:18', '2026-06-04 05:10:04'),
(115, 272, '2026-06-04 06:15:46', '2026-06-04 13:11:02', 34507, 34634, 'uploads/trips/start_272_1780553746.jpg', 'uploads/trips/end_272_1780578662.jpg', 70.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-04 06:15:46', '2026-06-04 13:11:02'),
(116, 274, '2026-06-04 08:34:25', '2026-06-04 11:56:33', 35341, 35400, 'uploads/trips/start_274_1780562065.jpg', 'uploads/trips/end_274_1780574193.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-04 08:34:25', '2026-06-04 11:56:33'),
(117, 275, '2026-06-05 04:09:55', NULL, 43623, NULL, 'uploads/trips/start_275_1780632595.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 04:09:55', '2026-06-05 04:09:55'),
(118, 277, '2026-06-05 04:52:25', NULL, 25833, NULL, 'uploads/trips/start_277_1780635145.jpg', NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 04:52:25', '2026-06-05 04:52:25'),
(119, 280, '2026-06-05 06:07:46', '2026-06-05 10:32:00', 43674, 43736, 'uploads/trips/start_280_1780639666.jpg', 'uploads/trips/end_280_1780655520.jpg', 90.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 06:07:46', '2026-06-05 10:32:00'),
(120, 281, '2026-06-05 06:11:40', NULL, 34639, NULL, 'uploads/trips/start_281_1780639900.jpg', NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 06:11:40', '2026-06-05 06:11:40'),
(121, 282, '2026-06-05 06:26:15', '2026-06-05 06:56:01', 24095, 24102, 'uploads/trips/start_282_1780640775.jpg', 'uploads/trips/end_282_1780642561.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 06:26:15', '2026-06-05 06:56:01'),
(122, 284, '2026-06-05 08:29:36', '2026-06-05 08:54:18', 9481, 9488, 'uploads/trips/start_284_1780648176.jpg', 'uploads/trips/end_284_1780649658.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 08:29:36', '2026-06-05 08:54:18'),
(123, 286, '2026-06-05 09:01:10', '2026-06-05 09:32:52', 94840, 94849, 'uploads/trips/start_286_1780650070.jpg', 'uploads/trips/end_286_1780651972.jpg', 70.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 09:01:10', '2026-06-05 09:32:52'),
(124, 287, '2026-06-05 09:38:13', '2026-06-05 09:57:21', 13241, 13248, 'uploads/trips/start_287_1780652293.jpg', 'uploads/trips/end_287_1780653441.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 09:38:13', '2026-06-05 09:57:21'),
(125, 289, '2026-06-05 09:53:49', '2026-06-05 10:40:56', 94849, 94855, 'uploads/trips/start_289_1780653229.jpg', 'uploads/trips/end_289_1780656056.jpg', 70.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 09:53:49', '2026-06-05 10:40:56'),
(126, 290, '2026-06-05 10:18:59', '2026-06-05 10:54:22', 13446, 13454, 'uploads/trips/start_290_1780654739.jpg', 'uploads/trips/end_290_1780656862.jpg', 10.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 10:18:59', '2026-06-05 10:54:22'),
(127, 291, '2026-06-05 10:29:13', '2026-06-05 12:06:59', 34655, 34659, 'uploads/trips/start_291_1780655353.jpg', 'uploads/trips/end_291_1780661219.jpg', 35.00, NULL, 35.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 10:29:13', '2026-06-05 12:06:59'),
(128, 292, '2026-06-05 10:35:05', NULL, 241374, NULL, 'uploads/trips/start_292_1780655705.jpg', NULL, 15.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 10:35:05', '2026-06-05 10:35:05'),
(129, 294, '2026-06-05 11:39:15', '2026-06-05 12:16:51', 94855, 94862, 'uploads/trips/start_294_1780659555.jpg', 'uploads/trips/end_294_1780661811.jpg', 70.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 11:39:15', '2026-06-05 12:16:51'),
(130, 296, '2026-06-05 12:23:07', '2026-06-05 13:00:56', 241376, 241388, 'uploads/trips/start_296_1780662187.jpg', 'uploads/trips/end_296_1780664456.jpg', 10.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-05 12:23:07', '2026-06-05 13:00:56'),
(131, 297, '2026-06-06 08:28:08', '2026-06-06 09:14:16', 313012, 313030, 'uploads/trips/start_297_1780734488.jpg', 'uploads/trips/end_297_1780737256.jpg', 90.00, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-06 08:28:08', '2026-06-06 09:14:16'),
(132, 298, '2026-06-08 04:34:33', '2026-06-08 06:25:00', 326801, 326805, 'uploads/trips/start_298_1780893273.jpg', 'uploads/trips/end_298_1780899900.jpg', 85.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 04:34:33', '2026-06-08 06:25:00'),
(133, 300, '2026-06-08 06:00:31', '2026-06-08 06:20:18', 33601, 33609, 'uploads/trips/start_300_1780898431.jpg', 'uploads/trips/end_300_1780899618.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 06:00:31', '2026-06-08 06:20:18'),
(134, 301, '2026-06-08 06:06:26', '2026-06-08 06:13:13', 17660, 17663, 'uploads/trips/start_301_1780898786.jpg', 'uploads/trips/end_301_1780899193.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 06:06:26', '2026-06-08 06:13:13'),
(135, 299, '2026-06-08 06:16:54', '2026-06-08 10:50:59', 16949, 16995, 'uploads/trips/start_299_1780899414.jpg', 'uploads/trips/end_299_1780915859.jpg', 100.00, NULL, 85.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 06:16:54', '2026-06-08 10:50:59'),
(136, 303, '2026-06-08 07:31:24', '2026-06-08 09:07:41', 32621, 32626, 'uploads/trips/start_303_1780903884.jpg', 'uploads/trips/end_303_1780909661.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 07:31:24', '2026-06-08 09:07:41'),
(137, 307, '2026-06-08 08:58:11', '2026-06-08 09:00:04', 25569, 25572, 'uploads/trips/start_307_1780909091.jpg', 'uploads/trips/end_307_1780909204.jpg', 20.00, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 08:58:11', '2026-06-08 09:00:04'),
(138, 305, '2026-06-08 09:10:28', '2026-06-08 09:51:01', 48498, 48507, 'uploads/trips/start_305_1780909828.jpg', 'uploads/trips/end_305_1780912261.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 09:10:28', '2026-06-08 09:51:01'),
(139, 309, '2026-06-08 10:53:08', '2026-06-08 11:08:17', 34670, 34675, 'uploads/trips/start_309_1780915988.jpg', 'uploads/trips/end_309_1780916897.jpg', 20.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-08 10:53:08', '2026-06-08 11:08:17'),
(140, 310, '2026-06-09 04:09:11', '2026-06-09 04:18:55', 326808, 326810, 'uploads/trips/start_310_1780978151.jpg', 'uploads/trips/end_310_1780978735.jpg', 70.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 04:09:11', '2026-06-09 04:18:55'),
(141, 311, '2026-06-09 04:43:30', '2026-06-09 12:31:45', 128281, 128301, 'uploads/trips/start_311_1780980210.jpg', 'uploads/trips/end_311_1781008305.jpg', 90.00, NULL, 85.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 04:43:30', '2026-06-09 12:31:45'),
(142, 312, '2026-06-09 04:48:21', NULL, 13559, NULL, 'uploads/trips/start_312_1780980501.jpg', NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 04:48:21', '2026-06-09 04:48:21'),
(143, 313, '2026-06-09 05:56:33', '2026-06-09 06:13:58', 130122, 130130, 'uploads/trips/start_313_1780984593.jpg', 'uploads/trips/end_313_1780985638.jpg', 40.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 05:56:33', '2026-06-09 06:13:58'),
(144, 315, '2026-06-09 06:14:17', '2026-06-09 07:26:08', 25570, 25576, 'uploads/trips/start_315_1780985657.jpg', 'uploads/trips/end_315_1780989968.jpg', 20.00, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 06:14:17', '2026-06-09 07:26:08'),
(145, 317, '2026-06-09 06:48:27', '2026-06-09 07:11:28', 20663, 20670, 'uploads/trips/start_317_1780987707.jpg', 'uploads/trips/end_317_1780989088.jpg', 85.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 06:48:27', '2026-06-09 07:11:28'),
(146, 316, '2026-06-09 06:50:45', '2026-06-09 07:12:07', 34733, 34740, 'uploads/trips/start_316_1780987845.jpg', 'uploads/trips/end_316_1780989127.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 06:50:45', '2026-06-09 07:12:07'),
(147, 318, '2026-06-09 07:30:00', '2026-06-09 08:24:59', 10070, 10080, 'uploads/trips/start_318_1780990200.jpg', 'uploads/trips/end_318_1780993499.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 07:30:00', '2026-06-09 08:24:59'),
(148, 319, '2026-06-09 07:43:09', '2026-06-09 10:01:06', 25576, 25583, 'uploads/trips/start_319_1780990989.jpg', 'uploads/trips/end_319_1780999266.jpg', 20.00, NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 07:43:09', '2026-06-09 10:01:06'),
(149, 321, '2026-06-09 09:10:03', '2026-06-09 11:15:57', 95222, 95269, 'uploads/trips/start_321_1780996203.jpg', 'uploads/trips/end_321_1781003757.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 09:10:03', '2026-06-09 11:15:57'),
(150, 324, '2026-06-09 12:14:29', '2026-06-09 12:47:52', 19772, 19780, 'uploads/trips/start_324_1781007269.jpg', 'uploads/trips/end_324_1781009272.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-09 12:14:29', '2026-06-09 12:47:52'),
(151, 326, '2026-06-10 03:10:17', '2026-06-10 04:25:15', 69104, 69108, 'uploads/trips/start_326_1781061017.jpg', 'uploads/trips/end_326_1781065515.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 03:10:17', '2026-06-10 04:25:15'),
(152, 304, '2026-06-10 04:14:38', NULL, 100, NULL, 'uploads/trips/start_304_1781064878.jpg', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 04:14:38', '2026-06-10 04:14:38'),
(153, 328, '2026-06-10 05:00:58', '2026-06-10 05:42:16', 69108, 69113, 'uploads/trips/start_328_1781067658.jpg', 'uploads/trips/end_328_1781070136.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 05:00:58', '2026-06-10 05:42:16'),
(154, 329, '2026-06-10 05:55:44', '2026-06-10 06:17:18', 13192, 13199, 'uploads/trips/start_329_1781070944.jpg', 'uploads/trips/end_329_1781072238.jpg', 20.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 05:55:44', '2026-06-10 06:17:18'),
(155, 333, '2026-06-10 06:30:39', '2026-06-10 09:03:42', 128316, 128330, 'uploads/trips/start_333_1781073039.jpg', 'uploads/trips/end_333_1781082222.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 06:30:39', '2026-06-10 09:03:42'),
(156, 335, '2026-06-10 06:35:46', '2026-06-10 07:26:15', 12373, 12380, 'uploads/trips/start_335_1781073346.jpg', 'uploads/trips/end_335_1781076375.jpg', 70.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 06:35:46', '2026-06-10 07:26:15'),
(157, 336, '2026-06-10 09:22:39', '2026-06-10 09:56:10', 43237, 43246, 'uploads/trips/start_336_1781083359.jpg', 'uploads/trips/end_336_1781085370.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 09:22:39', '2026-06-10 09:56:10'),
(158, 338, '2026-06-10 11:59:19', '2026-06-10 12:59:03', 128330, 128334, 'uploads/trips/start_338_1781092759.jpg', 'uploads/trips/end_338_1781096343.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 11:59:19', '2026-06-10 12:59:03'),
(159, 337, '2026-06-10 12:01:50', '2026-06-10 12:24:42', 109400, 109408, 'uploads/trips/start_337_1781092910.jpg', 'uploads/trips/end_337_1781094282.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-10 12:01:50', '2026-06-10 12:24:42'),
(160, 327, '2026-06-11 04:17:57', NULL, 10000, NULL, 'uploads/trips/start_327_1781151477.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 04:17:57', '2026-06-11 04:17:57'),
(161, 177, '2026-06-11 04:18:41', NULL, 55555, NULL, 'uploads/trips/start_177_1781151521.png', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 04:18:41', '2026-06-11 04:18:41'),
(162, 341, '2026-06-11 05:30:15', '2026-06-11 06:10:46', 42822, 42831, 'uploads/trips/start_341_1781155815.jpg', 'uploads/trips/end_341_1781158246.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 05:30:15', '2026-06-11 06:10:46'),
(163, 340, '2026-06-11 05:39:43', '2026-06-12 04:17:57', 37006, 37087, 'uploads/trips/start_340_1781156383.jpg', 'uploads/trips/end_340_1781237877.jpg', 100.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 05:39:43', '2026-06-12 04:17:57'),
(164, 343, '2026-06-11 06:34:13', NULL, 17050, NULL, 'uploads/trips/start_343_1781159653.jpg', NULL, 65.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 06:34:13', '2026-06-11 06:34:13'),
(165, 344, '2026-06-11 06:40:35', '2026-06-11 10:51:11', 18465, 18510, 'uploads/trips/start_344_1781160035.jpg', 'uploads/trips/end_344_1781175071.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 06:40:35', '2026-06-11 10:51:11'),
(166, 345, '2026-06-11 07:30:25', '2026-06-11 07:31:54', 28770, 28777, 'uploads/trips/start_345_1781163025.jpg', 'uploads/trips/end_345_1781163114.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 07:30:25', '2026-06-11 07:31:54'),
(167, 348, '2026-06-11 09:03:18', NULL, 28777, NULL, 'uploads/trips/start_348_1781168598.jpg', NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 09:03:18', '2026-06-11 09:03:18'),
(168, 352, '2026-06-11 12:10:34', '2026-06-11 12:11:22', 100943, 108971, 'uploads/trips/start_352_1781179834.jpg', 'uploads/trips/end_352_1781179882.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-11 12:10:34', '2026-06-11 12:11:22'),
(169, 353, '2026-06-12 04:42:25', '2026-06-12 05:07:26', 42442, 42450, 'uploads/trips/start_353_1781239345.jpg', 'uploads/trips/end_353_1781240846.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 04:42:25', '2026-06-12 05:07:26'),
(170, 354, '2026-06-12 05:23:19', '2026-06-12 05:44:41', 14365, 14373, 'uploads/trips/start_354_1781241799.jpg', 'uploads/trips/end_354_1781243081.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 05:23:19', '2026-06-12 05:44:41'),
(171, 356, '2026-06-12 07:08:32', '2026-06-12 07:57:28', 25584, 25599, 'uploads/trips/start_356_1781248112.jpg', 'uploads/trips/end_356_1781251048.jpg', 10.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 07:08:32', '2026-06-12 07:57:28'),
(172, 357, '2026-06-12 07:23:54', '2026-06-12 09:38:18', 108971, 109038, 'uploads/trips/start_357_1781249034.jpg', 'uploads/trips/end_357_1781257098.jpg', 90.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 07:23:54', '2026-06-12 09:38:18'),
(173, 361, '2026-06-12 08:17:14', '2026-06-12 10:48:41', 38313, 38343, 'uploads/trips/start_361_1781252234.jpg', 'uploads/trips/end_361_1781261321.jpg', 100.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 08:17:14', '2026-06-12 10:48:41'),
(174, 360, '2026-06-12 08:47:02', NULL, 25599, NULL, 'uploads/trips/start_360_1781254022.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 08:47:02', '2026-06-12 08:47:02'),
(175, 362, '2026-06-12 08:57:05', '2026-06-12 09:39:51', 102226, 102234, 'uploads/trips/start_362_1781254625.jpg', 'uploads/trips/end_362_1781257191.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-12 08:57:05', '2026-06-12 09:39:51'),
(176, 365, '2026-06-15 04:33:01', '2026-06-15 04:55:31', 130735, 130742, 'uploads/trips/start_365_1781497981.jpg', 'uploads/trips/end_365_1781499331.jpg', 70.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 04:33:01', '2026-06-15 04:55:31'),
(177, 368, '2026-06-15 05:57:50', NULL, 130743, NULL, 'uploads/trips/start_368_1781503070.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 05:57:50', '2026-06-15 05:57:50'),
(178, 369, '2026-06-15 07:14:07', '2026-06-15 09:57:43', 33909, 33973, 'uploads/trips/start_369_1781507647.jpg', 'uploads/trips/end_369_1781517463.jpg', 100.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 07:14:07', '2026-06-15 09:57:43'),
(179, 366, '2026-06-15 07:28:07', '2026-06-15 08:34:21', 43213, 43229, 'uploads/trips/start_366_1781508487.jpg', 'uploads/trips/end_366_1781512461.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 07:28:07', '2026-06-15 08:34:21'),
(180, 370, '2026-06-15 07:28:46', '2026-06-15 08:39:23', 18640, 18655, 'uploads/trips/start_370_1781508526.jpg', 'uploads/trips/end_370_1781512763.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 07:28:46', '2026-06-15 08:39:23'),
(181, 372, '2026-06-15 09:53:12', '2026-06-15 15:16:15', 69113, 69198, 'uploads/trips/start_372_1781517192.jpg', 'uploads/trips/end_372_1781536575.jpg', 100.00, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 09:53:12', '2026-06-15 15:16:15'),
(182, 373, '2026-06-15 11:46:45', '2026-06-15 12:37:15', 143161, 143169, 'uploads/trips/start_373_1781524005.jpg', 'uploads/trips/end_373_1781527035.jpg', 40.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 11:46:45', '2026-06-15 12:37:15'),
(183, 375, '2026-06-15 12:18:45', '2026-06-15 12:38:26', 80065, 80068, 'uploads/trips/start_375_1781525925.jpg', 'uploads/trips/end_375_1781527106.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-15 12:18:45', '2026-06-15 12:38:26'),
(184, 371, '2026-06-16 03:05:14', '2026-06-16 15:13:29', 174852, 175063, 'uploads/trips/start_371_1781579114.jpg', 'uploads/trips/end_371_1781622809.jpg', 90.00, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-16 03:05:14', '2026-06-16 15:13:29'),
(185, 376, '2026-06-16 04:40:38', '2026-06-16 05:22:19', 35325, 35339, 'uploads/trips/start_376_1781584838.jpg', 'uploads/trips/end_376_1781587339.jpg', 80.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-16 04:40:38', '2026-06-16 05:22:19'),
(186, 229, '2026-06-16 06:55:48', NULL, 109039, NULL, 'uploads/trips/start_229_1781592948.jpg', NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-16 06:55:48', '2026-06-16 06:55:48'),
(187, 377, '2026-06-16 06:59:46', '2026-06-16 08:14:48', 109039, 109045, 'uploads/trips/start_377_1781593186.jpg', 'uploads/trips/end_377_1781597688.jpg', 60.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-16 06:59:46', '2026-06-16 08:14:48'),
(188, 379, '2026-06-17 05:19:07', '2026-06-17 05:52:22', 46118, 46126, 'uploads/trips/start_379_1781673547.jpg', 'uploads/trips/end_379_1781675542.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 05:19:07', '2026-06-17 05:52:22'),
(189, 381, '2026-06-17 05:55:31', NULL, 14341, NULL, 'uploads/trips/start_381_1781675731.jpg', NULL, 78.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 05:55:31', '2026-06-17 05:55:31'),
(190, 385, '2026-06-17 06:24:18', NULL, 15465, NULL, 'uploads/trips/start_385_1781677458.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 06:24:18', '2026-06-17 06:24:18');
INSERT INTO `trip_details` (`trip_detail_id`, `transport_service_id`, `trip_start_datetime`, `trip_end_datetime`, `trip_start_odometer`, `trip_end_odometer`, `trip_start_odometer_photo`, `trip_end_odometer_photo`, `start_trip_fuel`, `start_remark`, `end_trip_fuel`, `change_vehicle_no`, `change_vehicle_datetime`, `change_vehicle_start_odometer`, `change_vehicle_end_odometer`, `change_vehicle_start_photo`, `change_vehicle_end_photo`, `change_vehicle_start_fuel`, `change_vehicle_end_fuel`, `change_vehicle_remark`, `end_remark`, `created_at`, `updated_at`) VALUES
(191, 383, '2026-06-17 07:13:46', NULL, 88575, NULL, 'uploads/trips/start_383_1781680426.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 07:13:46', '2026-06-17 07:13:46'),
(192, 386, '2026-06-17 08:04:07', '2026-06-17 13:26:19', 109046, 109091, 'uploads/trips/start_386_1781683447.jpg', 'uploads/trips/end_386_1781702779.jpg', 50.00, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 08:04:07', '2026-06-17 13:26:19'),
(193, 388, '2026-06-17 08:24:36', '2026-06-17 08:48:44', 42704, 42709, 'uploads/trips/start_388_1781684676.jpg', 'uploads/trips/end_388_1781686124.jpg', 60.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 08:24:36', '2026-06-17 08:48:44'),
(194, 389, '2026-06-17 09:50:08', '2026-06-17 10:18:40', 42479, 42487, 'uploads/trips/start_389_1781689808.jpg', 'uploads/trips/end_389_1781691520.jpg', 90.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 09:50:08', '2026-06-17 10:18:40'),
(195, 390, '2026-06-17 11:45:44', '2026-06-17 11:58:32', 42709, 42714, 'uploads/trips/start_390_1781696744.jpg', 'uploads/trips/end_390_1781697512.jpg', 60.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-17 11:45:44', '2026-06-17 11:58:32'),
(196, 394, '2026-06-18 05:39:16', '2026-06-18 06:29:28', 81010, 81019, 'uploads/trips/start_394_1781761156.jpg', 'uploads/trips/end_394_1781764168.jpg', 0.00, NULL, 65.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-18 05:39:16', '2026-06-18 06:29:28'),
(197, 395, '2026-06-18 06:44:34', NULL, 10909, NULL, 'uploads/trips/start_395_1781765074.jpg', NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-18 06:44:34', '2026-06-18 06:44:34'),
(198, 397, '2026-06-18 07:21:33', NULL, 37087, NULL, 'uploads/trips/start_397_1781767293.jpg', NULL, 75.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-18 07:21:33', '2026-06-18 07:21:33'),
(199, 398, '2026-06-18 07:45:25', '2026-06-18 10:31:18', 42714, 42739, 'uploads/trips/start_398_1781768725.jpg', 'uploads/trips/end_398_1781778678.jpg', 60.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-18 07:45:25', '2026-06-18 10:31:18'),
(200, 401, '2026-06-18 10:13:31', '2026-06-18 10:21:37', 1000, 1200, 'uploads/trips/start_401_1781777611.jpg', 'uploads/trips/vend_401_1781777953.jpg', 50.00, NULL, 50.00, 'ABC-1234', '2026-06-18 10:19:13', 2000, 3000, 'uploads/trips/vnew_401_1781778020.jpg', 'uploads/trips/end_401_1781778097.jpg', 50.00, 25.00, NULL, NULL, '2026-06-18 10:13:31', '2026-06-18 10:21:37'),
(201, 403, '2026-06-19 05:04:44', '2026-06-19 05:28:55', 42739, 42747, 'uploads/trips/start_403_1781845484.jpg', 'uploads/trips/end_403_1781846935.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 05:04:44', '2026-06-19 05:28:55'),
(202, 406, '2026-06-19 06:08:53', NULL, 18921, NULL, 'uploads/trips/start_406_1781849333.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 06:08:53', '2026-06-19 06:08:53'),
(203, 407, '2026-06-19 06:12:57', '2026-06-19 07:04:44', 17548, 17555, 'uploads/trips/start_407_1781849577.jpg', 'uploads/trips/end_407_1781852684.jpg', 75.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 06:12:57', '2026-06-19 07:04:44'),
(204, 408, '2026-06-19 07:26:32', '2026-06-19 07:58:41', 13978, 13991, 'uploads/trips/start_408_1781853992.jpg', 'uploads/trips/end_408_1781855921.jpg', 60.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 07:26:32', '2026-06-19 07:58:41'),
(205, 411, '2026-06-19 08:58:11', '2026-06-19 09:14:19', 174958, 174965, 'uploads/trips/start_411_1781859491.jpg', 'uploads/trips/end_411_1781860459.jpg', 60.00, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 08:58:11', '2026-06-19 09:14:19'),
(206, 412, '2026-06-19 09:37:19', '2026-06-19 10:02:29', 174965, 174972, 'uploads/trips/start_412_1781861839.jpg', 'uploads/trips/end_412_1781863349.jpg', 50.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 09:37:19', '2026-06-19 10:02:29'),
(207, 414, '2026-06-19 10:37:48', NULL, 42459, NULL, 'uploads/trips/start_414_1781865468.jpg', NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 10:37:48', '2026-06-19 10:37:48'),
(208, 415, '2026-06-19 10:44:40', '2026-06-19 11:08:46', 69329, 69336, 'uploads/trips/start_415_1781865880.jpg', 'uploads/trips/end_415_1781867326.jpg', 30.00, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-19 10:44:40', '2026-06-19 11:08:46');

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
(1, 85, 'Admin', 'admin@example.com', 'admin', '2026-02-24 05:58:50', '$2y$12$8IUGdN6Y/ozW5TAk1lDlYO1QV/91Vp40l97mLRFohifk9jCFFc.D6', NULL, 'WFZt4pz0fRWv0nPQZTIPGBS2yaa7mpc9cIvqKDLE5pBIjKzNs2AjacEYDTCU', '2026-02-24 05:58:50', '2026-06-02 15:11:41'),
(15, NULL, 'Test1 Test2', 'test@gmail.com', 'user', NULL, '$2y$12$YMpbbYfhKjO9/ebtovY/JuTYB1gLXcgaHC9GalupPr53WBDN.6xUq', 'UDANTHA', NULL, '2026-03-18 11:29:18', '2026-03-18 08:24:51'),
(16, 11, 'Shermal', 'shermal@explorevacations.lk', 'user', NULL, '$2y$12$aTycm3Y49lelDFcVRBAvDeP06BUn97AYK1JH1zKn6CXxrgXkXvZbS', 'SHERMAL', NULL, '2026-03-24 17:43:08', '2026-05-14 13:18:03'),
(19, 14, 'Ralston', 'gm@explorevacations.lk', 'user', NULL, '$2y$12$P6HhbPIqDuxJe.1Qn3yA7uaomGE/Sa0MusvFt9xtzDC0aF8yd6Ciq', 'MELISSA', NULL, '2026-03-29 17:45:46', '2026-05-12 08:01:50'),
(22, 17, 'Mihiran', 'digitalmarketing@explorevacations.lk', 'user', NULL, '$2y$12$0TyAMuVDQH47RLExSnio0ee21ZKUSQ4GZfSnvhuC2DRM1BksMOV56', 'MIHIRAN', NULL, '2026-03-29 19:44:11', '2026-04-02 06:38:14'),
(23, 18, 'Hansi', 'finance@platinumdrive.lk', 'user', NULL, '$2y$12$ky9MJ/jSHUkFeRqI/Kqrie5Sx1NNX9OsC.l1635qquDROCOAnH7fq', 'HANSIKA', NULL, '2026-03-29 19:51:51', '2026-06-02 04:43:04'),
(24, 19, 'Srimal kamaral', 'it@explorevacations.lk', 'user', NULL, '$2y$12$BIYXf6vJ4zj0XxOycQroduc3PGGj2Rf5s4Xtyz8mmUE13HOpxYYcC', 'SRIMAL', NULL, '2026-03-29 20:08:31', '2026-04-02 18:45:53'),
(25, 20, 'Deshan', 'deshan@srilankarentacar.com', 'user', NULL, '$2y$12$VfjuiEvGWgDFjyFSWiC0kO7PFmzodOXgyDULSKAK3SXIewyGYwBYW', 'DESHAN', NULL, '2026-03-29 20:18:52', '2026-04-02 07:03:54'),
(26, 21, 'Nilantha', 'fleet@srilankarentacar.lk', 'user', NULL, '$2y$12$f8cph3scMMZuVxmYRXpV/ewYTJ5J7E37X1j/eo2QXcZyUVsd.I.wm', 'KNKANTHONY', NULL, '2026-03-29 20:30:03', '2026-04-02 11:16:00'),
(29, 24, 'Navodya  Divyanjali', 'navoda@explorevacations.lk', 'user', NULL, '$2y$12$Ai5mHh11Kg9rV30j9Dor4e3H5mha6i031sONiHLGYHLnOjIw3m.Xq', 'HEYTHERE', NULL, '2026-03-30 12:55:35', '2026-03-31 04:26:18'),
(30, 25, 'Yuwanee Ahinsika', 'Yuwanee@explorevacations.lk', 'user', NULL, '$2y$12$rM/OAPIrFXZZCr92B5wWq.Ls7EKvrkfvnJlPLLgvJLGlEB/RnTosC', 'YUWANEE', NULL, '2026-03-30 13:01:57', '2026-05-22 06:55:25'),
(31, 26, 'Induru Udantha', 'udantha@explorevacations.lk', 'user', NULL, '$2y$12$5wir2XCeUCfDT2z.R7uOZenRrMBhJGAb.ltepzZUXl9Mus54Qdiii', 'UDANTHA', NULL, '2026-03-30 13:09:10', '2026-04-02 04:14:45'),
(32, 27, 'Thisaru', 'nadeeshana@explorevacations.lk', 'user', NULL, '$2y$12$5H5aU8oH1UT3wLVibmgS5eTkNozPAH7SwW9a1gzXkGlIjfpx2havu', 'THISARU', NULL, '2026-03-30 13:25:51', '2026-04-02 04:49:06'),
(33, 28, 'Hasitha Chandrasekara', 'hasitha@explorevacations.lk', 'user', NULL, '$2y$12$85O2LGVYXoJLB0vOsashx.g7mH8o/IFFoTqNUEd4fYueWuxPrUm2m', 'HASITHA', NULL, '2026-03-30 14:13:56', '2026-04-02 05:16:09'),
(34, 29, 'Primali Perera', 'acc.ex@explorevacations.lk', 'user', NULL, '$2y$12$XSPem4btQ8vysfI7gyW7p.FTPk.xj8Nw3.2wfHqGZipmht5h6JEGC', 'PRIMALI', NULL, '2026-03-30 14:31:47', '2026-06-04 10:06:28'),
(35, 30, 'Shalinika Nilakshi', 'acc.ass@explorevacations.lk', 'user', NULL, '$2y$12$Csu/rtZw3vMRGuUlx5URouTPpewwYAaYQNGUzxVk2a4APCjrQhk/C', 'NILAKSHI', NULL, '2026-03-30 18:02:38', '2026-05-22 06:07:08'),
(36, 31, 'Tilmi Nimasha', 'acc.ass@eliterentacar.lk', 'user', NULL, '$2y$12$bkc7xh1yL.gA6ZEfDMR59OBd2uEZJivQ15gTbhWVCJJppxmcEiBcC', 'NIMASHA', NULL, '2026-03-30 18:12:08', '2026-05-22 06:27:31'),
(37, 32, 'Sewmini', 'sewmini@explorevacations.lk', 'user', NULL, '$2y$12$jhvveGT5ekxGfowEHwIoQ.9uxPdxi/TM1WjsRTgMrXkPhczxe0yy6', 'SEWMINI', NULL, '2026-03-30 18:22:59', '2026-05-22 08:50:24'),
(38, 33, 'Dewmi Sanjana', 'dewmi.sanjana@explorevacations.lk', 'user', NULL, '$2y$12$dgqvOeq.HeKxDKqGm8m49ODhAlhG6muYJ8tBVm3YHX0yCI6lMQRlW', 'SANJANA', NULL, '2026-03-30 18:38:11', '2026-05-22 08:44:14'),
(39, NULL, 'ewr ewr', 'tharindu@gmail.com', 'user', NULL, '$2y$12$wwROtqxK0L6AgdD8SquMxOihgrEDu6X2Y.5st0IJVEjFR3ln9ykJ2', 'THARINDU', NULL, '2026-03-31 11:44:42', '2026-05-19 04:55:41'),
(40, 35, 'Thimansa Victoria', 'victoria@explorevacations.lk', 'user', NULL, '$2y$12$9qlY9p49iTiRq6U9edCDfebhSAM2qTuzJRjFpa3PcXXno1nqrnbS6', 'THIMANSA', NULL, '2026-03-31 11:47:04', '2026-05-28 09:44:11'),
(41, 36, 'Sankalpana Arunasiri', 'rates@eliterentacar.lk', 'user', NULL, '$2y$12$3Y9S64kbrVmHj81XJZ6xEem8oiZBZUTlHq7yYmKlfK1fT47RPiX/q', 'SANKALPANA', NULL, '2026-03-31 12:05:29', '2026-05-14 06:06:22'),
(42, 37, 'Kavinda Sandagomi', 'kavinda@srilankarentacar.com', 'user', NULL, '$2y$12$37zn8HVW.JKOmOQUOCIF9uEHIb8EemCcbBiK2z//WxVjhDqRn1ToS', 'KAVINDA', NULL, '2026-03-31 12:32:10', '2026-05-25 04:35:49'),
(43, 38, 'Sanduni Guyes', 'Sandunig@srilankarentacar.com', 'user', NULL, '$2y$12$vbzNscKCwT1WJsVgcJHGqeIUcrtw8G8Nuboo5J7JDUc9sZZBPMwG6', 'SANDUNIGUYES', NULL, '2026-03-31 17:04:46', '2026-05-15 09:54:25'),
(44, 39, 'Anton Niroshan', 'niroshan@srilankarentacar.lk', 'user', NULL, '$2y$12$MvNQyJcwf5/Kx0TWewFoFeP3PtTAgfcmY2ep/.mdj.uWaS4q4Kfte', 'BINGOAN', NULL, '2026-03-31 17:24:24', '2026-04-02 06:37:47'),
(45, 40, 'Dilan Damitha', 'dilan@srilankarentacar.com', 'user', NULL, '$2y$12$hPHIH1Y5sKA/KcBXSYqsquEPhyEEyRtu67MCg/M0A7.Y1DOn2FZA6', 'DIYONL', NULL, '2026-03-31 17:38:30', '2026-05-07 13:00:02'),
(46, 41, 'Lakshika', 'lakshika@srilankarentacar.com', 'user', NULL, '$2y$12$T69GKmGHMo7aHf5YpT0hO.VLJJLDQFssttcxKpVoDvlJxrNwIK9l.', 'LAKSHIKAJAYAKUMAR', NULL, '2026-03-31 17:52:15', '2026-06-05 09:16:50'),
(47, 42, 'Dilmi Fernando', 'dilmi@srilankarentacar.com', 'user', NULL, '$2y$12$rcY/uv5Q88MRv2TI1phFReOHS1MtykrVTZ8tg8MFwvWwx5vQEs.Ie', 'FERNANDO', NULL, '2026-03-31 18:06:48', '2026-05-28 16:22:45'),
(48, 43, 'Sameera  Dilshan', 'sameera@srilankarentacar.lk', 'user', NULL, '$2y$12$gk6yBoKtw3SbQN2Mtz1yIOpy2QoXWGbq2L7R5aVUf2N2Sshe0bh2e', 'DILSHAN', NULL, '2026-03-31 19:41:34', '2026-06-05 07:55:35'),
(49, 44, 'Krishan Dominic', 'anil@srilankarentacar.com', 'user', NULL, '$2y$12$OBe0Aiw2GgcllgQGUKO1SOBfz/28kUbcq70EZ8nD60ur5MUSu7EnW', 'KRISHAN', NULL, '2026-03-31 19:54:24', '2026-05-20 12:47:50'),
(50, 45, 'Dhilhara Perera', 'hr@explorevacations.lk', 'user', NULL, '$2y$12$ILL/JgTAPiUe5URbyZpEyep2th59PtJCXsozMokqNRw8L2uzTXEju', 'HUMANS', NULL, '2026-04-01 14:07:02', '2026-05-29 05:21:45'),
(51, 46, 'Dinith Sanuka', 'admin.executive@explorevacations.lk', 'user', NULL, '$2y$12$LI0xRcXanw.eFbCJOZFqPe6DenD5gyekCOq4E228JdQWkzVp8nHKy', 'DINITH', NULL, '2026-04-01 14:26:37', '2026-05-22 09:45:47'),
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
(67, 62, 'Shama Neranjala', 'shama@explorevacations.lk', 'user', NULL, '$2y$12$2Ltdrp6v6mN3N2gqNcEZMeTE8L1cAbgHzvRXlJGxKpUMcekK6nVXu', 'SHAMAEV', NULL, '2026-04-02 00:11:36', '2026-06-19 07:23:03'),
(68, 63, 'Shaun Perera', 'shaun@eliterentacar.lk', 'user', NULL, '$2y$12$o4F3V5vTcDd56GwO8qxjaeOrNlJ/4aL4XClnZrwUcYBF/L463Zupy', 'SHERMAL', NULL, '2026-04-02 00:20:04', '2026-05-26 07:11:19'),
(69, 64, 'Pubudu Wickramasinghe', 'asst.manager@eliterentacar.lk', 'user', NULL, '$2y$12$prJfnXZMQjaaGlK9UqF0ueVGP/5zbBZLBzxOCdPxGrvFMwx7/XTs6', 'UTHPALA', NULL, '2026-04-02 00:37:36', '2026-04-02 05:21:18'),
(70, 65, 'Jagath Wijesingha', 'Jagath@eliterentacar.lk', 'user', NULL, '$2y$12$lCzGEQYfa2NgCZHpDJZI9OMzoKjWNcc4WioLrJqIaGMKmHVnQrAMO', 'JAGATH', NULL, '2026-04-02 00:50:46', '2026-05-13 12:30:21'),
(71, 66, 'Lashen Dilash', 'lashen@eliterentacar.lk', 'user', NULL, '$2y$12$EIHcB4Cpq2iYQp1S6vfRqOTBj0wxEPCSlaS3vhupb1Zj1yQsyhuAq', 'LASHENDILASH', NULL, '2026-04-02 00:56:05', '2026-05-20 07:43:41'),
(72, 67, 'Wishvajith   Perera', 'wishwajith@eliterentacar.lk', 'user', NULL, '$2y$12$1jzcMjd7M4Ie.TuQzf5ft.SY3R6Z6pRDgwp12Uh3JI0riwKu5kgly', 'WISHVAJITH', NULL, '2026-04-02 01:06:15', '2026-04-07 14:33:22'),
(73, 68, 'Prasad De Silva', 'desilva@srrentacar.lk', 'user', NULL, '$2y$12$nbPFHkm44QI.8Yh28tpbfu6b3YrsfVk4VN13cFC9IFycCpN8uOB/2', NULL, NULL, '2026-04-02 05:34:23', '2026-04-02 05:34:23'),
(74, 69, 'Ravindu Niyangoda', 'ravindu@srrentacar.lk', 'user', NULL, '$2y$12$afogmvxOYcCKmsyzMo8eou3UjF10VwqxGnwdsL4cLlVhZjikOx3fS', 'RAVINDU', NULL, '2026-04-02 05:43:15', '2026-06-01 07:52:01'),
(75, 70, 'Boniface Mangala', 'boni@srrentacar.lk', 'user', NULL, '$2y$12$.QyxJUeGDSUN7XD5QiHad.wGiXjTc5GwVCgVq.AQGS0liaKbxBIhS', 'BONISRRENTACARLK', NULL, '2026-04-02 05:50:32', '2026-05-14 05:59:03'),
(76, 71, 'Dicsion Kumara', 'dicsion@srrentacar.lk', 'user', NULL, '$2y$12$sfVXQC7Xk/Q4hrKmYLVkaeXn9wiDf0NMnB4NUT0KQFVNS5sHFxP4e', 'DICKSON', NULL, '2026-04-02 05:56:36', '2026-06-02 06:57:33'),
(77, 72, 'Heshan Sandaruwan', 'heshan@srilankarentacar.com', 'user', NULL, '$2y$12$3Qcjtwo3CPPP/8ysvWuuLu275CMtvcxJ7OS2e9g.UzFHXzu5X27Ae', 'HESHAN', NULL, '2026-04-02 06:03:11', '2026-05-27 07:25:45'),
(78, 73, 'Chamara Grero', 'chamara@srrentacar.lk', 'user', NULL, '$2y$12$5q4zgZuH1rzO5aw.Jmi2Y.pP/9GsaK.pPJbY6Hx9X4mniBJGklj2W', 'CHAMARA', NULL, '2026-04-02 06:11:05', '2026-06-02 05:12:32'),
(79, 74, 'Sampath Fernando', 'sampath@srrentacar.lk', 'user', NULL, '$2y$12$JbxkkMEXZQNZQhnZA4EYuuMCyG8bEWFg/3a85kLoMpFIQ/JCSQ4NG', 'SAMPATH', NULL, '2026-04-02 06:17:47', '2026-04-02 10:46:55'),
(80, 75, 'Indika Acoinas', 'indika@srrentacar.lk', 'user', NULL, '$2y$12$Y52qP7NE41sYonL28PEse.sFU/W/2h4n5oZpN5HGb7ozlVGmCHMFe', 'INDIKA', NULL, '2026-04-02 06:24:45', '2026-05-14 06:31:16'),
(81, 76, 'Rashan Gamage', 'rashan@srrentacar.lk', 'user', NULL, '$2y$12$oR1/q8du4hQ17PNTMY4RBOwMOOYuyPOzx7FvdQ0/xCb3iIdbF1H.m', 'RASHAN', NULL, '2026-04-02 06:32:19', '2026-06-12 08:49:01'),
(82, 77, 'Ryan Monie', 'rayan@srrentacar.lk', 'user', NULL, '$2y$12$3wBPZezjF4UlAy.277VcVO6QjgAyOHj796r9wizBtRd3aomLuzilG', 'RYANMONIE', NULL, '2026-04-02 06:38:46', '2026-05-22 10:58:08'),
(83, 78, 'Dimath Weliwitigoda', 'dimath@srrentacar.lk', 'user', NULL, '$2y$12$WKPClMtcVZljFXQj31gvnOU8NG4ra/lvt91bshULHSEC.MHa8P8yO', 'BATMAN', NULL, '2026-04-02 06:47:00', '2026-05-14 12:31:09'),
(84, 79, 'Damsak De Zoysa', 'damsak@srrentacar.lk', 'user', NULL, '$2y$12$6URb/Zx8XVEtEDCplF6QqOLHqm4YdinPqCb6BG4VD5t.DcePtkiJG', 'BATMAN', NULL, '2026-04-02 06:53:28', '2026-05-12 06:16:50'),
(85, 80, 'Gayan Fernando', 'gayan@srrentacar.lk', 'user', NULL, '$2y$12$xsgiLSWwgfYWwJRu/zLEqutmlMdvwfHJBjIbWyZSqtwBXmLQjzvDW', 'FERNANDO', NULL, '2026-04-02 06:58:53', '2026-04-02 05:39:40'),
(86, 81, 'Kumara Fernando', 'kumara@srrentacar.lk', 'user', NULL, '$2y$12$YX/d3qv8hpOIDY0BYf8AFeAS.V6Uw0TYkAaZLaqnoXLpDVhd6WMIe', 'KURUKULASOORIYA', NULL, '2026-04-02 07:05:51', '2026-05-27 06:24:16'),
(87, 82, 'Lahiru Kumara', 'lahiru@srrentacar.lk', 'user', NULL, '$2y$12$Xu8/wwxPDRMiBRwOv.w4yO.pHjLDCSbkjvKIPAmzyaq8bG0xzM1by', 'LAHIRU', NULL, '2026-04-02 07:12:17', '2026-05-22 04:32:47'),
(88, 83, 'Ashen Fernando', 'ashen@srrentacar.lk', 'user', NULL, '$2y$12$dG2qn.xLXM5Fq51kbfLKkOx3aDIfc4X4efqKrruk5xohsdJVIgkzC', 'ASHANM', NULL, '2026-04-02 07:17:13', '2026-06-02 07:14:56'),
(90, 86, 'Dulshan  Wanigasekara', 'dulshan@explorevacations.lk', 'hr-executive', NULL, '$2y$12$y//oZb8SkG1aZ7JEv9iRGOHTYf8beTFTJMXkBamP5/qNvRzNgzPHe', 'DULSHAN', NULL, '2026-06-15 13:29:09', '2026-06-15 08:08:05'),
(91, 87, 'Sanju Kaushalya', 'ae.ggm@explorevacations.lk', 'user', NULL, '$2y$12$LKFDozq4eVBkiVsOHqNFEuo4w0Gt1CBecZ0KcBns74ArZYYXtC6gO', 'YAMUNA', NULL, '2026-06-15 17:04:19', '2026-06-16 11:04:50'),
(92, 88, 'Randeepa Ariyawansa', 'randeepa@explorevacations.lk', 'user', NULL, '$2y$12$nAbklgs0HUCK5e2Jrt.thuHpGnX7CkBltX5ElSY3UTyAkjua97jiu', NULL, NULL, '2026-06-18 13:02:13', '2026-06-18 13:02:13');

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
(7, 1, 1, NULL, NULL),
(8, 90, 2, NULL, NULL);

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
(144, 39, 'Anton Niroshan', 'PD-9606', '2026-04-13 05:56:33', 0, 'QR_IMAGE_NOT_UPLOADED'),
(145, 39, 'Anton Niroshan', 'PC-1058', '2026-04-13 05:56:48', 0, 'QR_IMAGE_NOT_UPLOADED'),
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
(280, 79, 'Damsak De Zoysa', 'CBF-9182', '2026-05-20 11:25:04', 1, 'SUCCESS'),
(282, 50, 'Sahan Mendis', 'CBS-9859', '2026-05-21 11:34:06', 1, 'SUCCESS'),
(283, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-21 13:17:28', 1, 'SUCCESS'),
(284, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-21 13:17:33', 1, 'SUCCESS'),
(285, 79, 'Damsak De Zoysa', 'CAO-9712', '2026-05-22 04:50:03', 1, 'SUCCESS'),
(286, 60, 'Keshika', 'CBV-8254', '2026-05-22 06:12:46', 1, 'SUCCESS'),
(287, 79, 'Damsak De Zoysa', 'CBM-5687', '2026-05-22 07:52:19', 1, 'SUCCESS'),
(288, 79, 'Damsak De Zoysa', 'CAY-3385', '2026-05-22 08:25:19', 1, 'SUCCESS'),
(289, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:34:33', 1, 'SUCCESS'),
(290, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:34:37', 1, 'SUCCESS'),
(291, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:59:13', 1, 'SUCCESS'),
(292, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:59:22', 1, 'SUCCESS'),
(293, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:59:26', 1, 'SUCCESS'),
(294, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-22 09:59:45', 1, 'SUCCESS'),
(295, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-05-22 10:00:14', 1, 'SUCCESS'),
(296, 79, 'Damsak De Zoysa', 'CBM-5720', '2026-05-22 13:49:37', 1, 'SUCCESS'),
(297, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-05-22 13:51:55', 1, 'SUCCESS'),
(298, 79, 'Damsak De Zoysa', 'CBM-5719', '2026-05-22 13:52:21', 1, 'SUCCESS'),
(299, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-05-23 02:58:41', 1, 'SUCCESS'),
(300, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-05-23 02:59:23', 1, 'SUCCESS'),
(301, 79, 'Damsak De Zoysa', 'CBD-8266', '2026-05-23 04:58:19', 1, 'SUCCESS'),
(302, 79, 'Damsak De Zoysa', 'CAK-9434', '2026-05-23 05:41:46', 1, 'SUCCESS'),
(303, 79, 'Damsak De Zoysa', 'CBM-5712', '2026-05-23 10:36:34', 1, 'SUCCESS'),
(304, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-23 14:14:55', 1, 'SUCCESS'),
(305, 49, 'Kapila Silva', 'PD-9606', '2026-05-23 19:51:22', 1, 'SUCCESS'),
(306, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-24 00:35:24', 1, 'SUCCESS'),
(307, 50, 'Sahan Mendis', 'CBM-5708', '2026-05-24 00:36:22', 1, 'SUCCESS'),
(308, 53, 'Sujeewa Amarasiri', 'CBM-5708', '2026-05-24 08:04:13', 1, 'SUCCESS'),
(309, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-05-24 08:25:14', 1, 'SUCCESS'),
(310, 80, 'Gayan Fernando', 'PC-1058', '2026-05-24 17:47:44', 1, 'SUCCESS'),
(311, 80, 'Gayan Fernando', 'PC-1058', '2026-05-24 18:02:56', 1, 'SUCCESS'),
(312, 79, 'Damsak De Zoysa', 'CBS-9864', '2026-05-25 02:19:45', 1, 'SUCCESS'),
(313, 79, 'Damsak De Zoysa', 'CBS-9863', '2026-05-25 02:20:49', 1, 'SUCCESS'),
(314, 79, 'Damsak De Zoysa', 'CAX-7637', '2026-05-25 04:44:51', 1, 'SUCCESS'),
(315, 79, 'Damsak De Zoysa', 'CBM-5725', '2026-05-25 04:46:11', 1, 'SUCCESS'),
(316, 79, 'Damsak De Zoysa', 'CBM-5706', '2026-05-25 11:09:38', 1, 'SUCCESS'),
(317, 79, 'Damsak De Zoysa', 'CBM-5708', '2026-05-25 11:13:01', 1, 'SUCCESS'),
(318, 79, 'Damsak De Zoysa', 'CBM-5709', '2026-05-25 11:13:12', 1, 'SUCCESS'),
(319, 79, 'Damsak De Zoysa', 'CBM-5709', '2026-05-25 11:13:16', 1, 'SUCCESS'),
(320, 53, 'Sujeewa Amarasiri', 'CBS-9864', '2026-05-25 11:22:45', 1, 'SUCCESS'),
(321, 53, 'Sujeewa Amarasiri', 'CBS-9861', '2026-05-25 11:24:42', 1, 'SUCCESS'),
(322, 79, 'Damsak De Zoysa', 'CBM-5700', '2026-05-26 04:18:56', 1, 'SUCCESS'),
(323, 79, 'Damsak De Zoysa', 'CBQ-9481', '2026-05-26 05:11:25', 1, 'SUCCESS'),
(324, 79, 'Damsak De Zoysa', 'CBD-8266', '2026-05-26 05:53:48', 1, 'SUCCESS'),
(325, 79, 'Damsak De Zoysa', 'CBD-8266', '2026-05-26 05:57:07', 1, 'SUCCESS'),
(326, 63, 'Shaun Perera', 'CCA-1848', '2026-05-26 07:21:27', 1, 'SUCCESS'),
(327, 78, 'Dimath Weliwitigoda', 'PD-9606', '2026-05-26 09:02:58', 1, 'SUCCESS'),
(328, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-26 10:41:39', 1, 'SUCCESS'),
(329, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-26 10:41:52', 1, 'SUCCESS'),
(330, 50, 'Sahan Mendis', 'CBM-5716', '2026-05-26 10:42:11', 1, 'SUCCESS'),
(331, 79, 'Damsak De Zoysa', 'CCA-1848', '2026-05-26 12:05:51', 1, 'SUCCESS'),
(332, 50, 'Sahan Mendis', 'CBS-0870', '2026-05-26 14:45:38', 1, 'SUCCESS'),
(333, 50, 'Sahan Mendis', 'CBS-9860', '2026-05-26 14:46:16', 1, 'SUCCESS'),
(334, 50, 'Sahan Mendis', 'CBS-9860', '2026-05-26 15:16:35', 1, 'SUCCESS'),
(335, 63, 'Shaun Perera', 'CBB-8740', '2026-05-26 16:19:13', 1, 'SUCCESS'),
(336, 63, 'Shaun Perera', 'CBB-8740', '2026-05-26 17:05:26', 1, 'SUCCESS'),
(337, 79, 'Damsak De Zoysa', 'CBB-8740', '2026-05-27 04:38:56', 1, 'SUCCESS'),
(338, 79, 'Damsak De Zoysa', 'CBM-5725', '2026-05-27 04:39:28', 1, 'SUCCESS'),
(339, 79, 'Damsak De Zoysa', 'CAW-6119', '2026-05-27 10:58:36', 0, 'QR_IMAGE_NOT_UPLOADED'),
(340, 79, 'Damsak De Zoysa', 'CBM-5700', '2026-05-27 10:58:56', 1, 'SUCCESS'),
(341, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-27 15:27:50', 1, 'SUCCESS'),
(342, 38, 'Sanduni Guyes', 'CBM-5681', '2026-05-28 03:26:06', 1, 'SUCCESS'),
(343, 50, 'Sahan Mendis', 'PD-9606', '2026-05-28 03:31:31', 1, 'SUCCESS'),
(344, 50, 'Sahan Mendis', 'NC-6222', '2026-05-28 03:32:52', 1, 'SUCCESS'),
(345, 50, 'Sahan Mendis', 'PD-9606', '2026-05-28 03:33:09', 1, 'SUCCESS'),
(346, 50, 'Sahan Mendis', 'PD-9606', '2026-05-28 03:42:29', 1, 'SUCCESS'),
(347, 80, 'Gayan Fernando', 'CBM-5709', '2026-05-28 11:48:08', 1, 'SUCCESS'),
(348, 79, 'Damsak De Zoysa', 'CAE-4853', '2026-05-28 11:57:27', 1, 'SUCCESS'),
(349, 80, 'Gayan Fernando', 'CBF-9182', '2026-05-28 17:04:51', 1, 'SUCCESS'),
(350, 80, 'Gayan Fernando', 'CBF-9182', '2026-05-28 17:41:00', 1, 'SUCCESS'),
(351, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-05-28 17:59:01', 1, 'SUCCESS'),
(352, 63, 'Shaun Perera', 'CBB-8740', '2026-05-28 18:03:34', 1, 'SUCCESS'),
(353, 63, 'Shaun Perera', 'CBB-8740', '2026-05-28 18:04:31', 1, 'SUCCESS'),
(354, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-05-28 20:24:49', 1, 'SUCCESS'),
(355, 50, 'Sahan Mendis', 'CBT-4753', '2026-05-28 23:36:08', 1, 'SUCCESS'),
(356, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-28 23:36:51', 1, 'SUCCESS'),
(357, 50, 'Sahan Mendis', 'CBM-5683', '2026-05-28 23:37:01', 1, 'SUCCESS'),
(358, 50, 'Sahan Mendis', 'CBM-5682', '2026-05-28 23:37:12', 1, 'SUCCESS'),
(359, 50, 'Sahan Mendis', 'CBS-0864', '2026-05-28 23:39:09', 1, 'SUCCESS'),
(360, 80, 'Gayan Fernando', 'PD-7635', '2026-05-29 02:03:41', 1, 'SUCCESS'),
(361, 80, 'Gayan Fernando', 'PD-7635', '2026-05-29 02:27:16', 1, 'SUCCESS'),
(362, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-05-29 02:28:43', 1, 'SUCCESS'),
(363, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-05-29 06:22:25', 1, 'SUCCESS'),
(364, 79, 'Damsak De Zoysa', 'PD-9606', '2026-05-29 07:39:01', 1, 'SUCCESS'),
(365, 79, 'Damsak De Zoysa', 'PD-7635', '2026-05-29 07:50:00', 1, 'SUCCESS'),
(366, 79, 'Damsak De Zoysa', 'CBS-0872', '2026-05-29 09:51:24', 1, 'SUCCESS'),
(367, 79, 'Damsak De Zoysa', 'CAY-3385', '2026-05-29 11:16:49', 1, 'SUCCESS'),
(368, 21, 'Nilantha', 'CCA-1848', '2026-05-29 11:21:29', 1, 'SUCCESS'),
(369, 21, 'Nilantha', 'CAY-3385', '2026-05-29 11:22:33', 1, 'SUCCESS'),
(370, 21, 'Nilantha', 'CAY-3385', '2026-05-29 11:22:37', 1, 'SUCCESS'),
(371, 79, 'Damsak De Zoysa', 'CBM-5687', '2026-05-29 13:28:02', 1, 'SUCCESS'),
(372, 77, 'Ryan Monie', 'CBQ-8468', '2026-05-29 13:30:13', 0, 'QR_IMAGE_NOT_UPLOADED'),
(373, 79, 'Damsak De Zoysa', 'CBQ-9684', '2026-05-29 13:43:50', 1, 'SUCCESS'),
(374, 49, 'Kapila Silva', 'KJ-1955', '2026-05-30 08:58:59', 1, 'SUCCESS'),
(375, 21, 'Nilantha', 'CAP-5023', '2026-05-30 12:21:55', 1, 'SUCCESS'),
(376, 53, 'Sujeewa Amarasiri', 'CBS-9864', '2026-05-30 12:26:16', 1, 'SUCCESS'),
(377, 53, 'Sujeewa Amarasiri', 'CBS-9860', '2026-05-30 12:35:32', 1, 'SUCCESS'),
(378, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-05-30 12:35:56', 1, 'SUCCESS'),
(379, 53, 'Sujeewa Amarasiri', 'CBM-5708', '2026-05-30 12:36:10', 1, 'SUCCESS'),
(380, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-05-30 12:36:31', 1, 'SUCCESS'),
(381, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-30 20:28:52', 1, 'SUCCESS'),
(382, 50, 'Sahan Mendis', 'CBS-0870', '2026-05-31 05:43:54', 1, 'SUCCESS'),
(383, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-05-31 07:06:01', 1, 'SUCCESS'),
(384, 50, 'Sahan Mendis', 'PD-9606', '2026-05-31 11:07:51', 1, 'SUCCESS'),
(385, 20, 'Deshan', 'CBM-5679', '2026-06-01 01:54:29', 1, 'SUCCESS'),
(386, 79, 'Damsak De Zoysa', 'PD-9606', '2026-06-01 07:26:36', 1, 'SUCCESS'),
(387, 79, 'Damsak De Zoysa', 'CBM-5714', '2026-06-01 09:30:52', 1, 'SUCCESS'),
(388, 79, 'Damsak De Zoysa', 'CBM-5714', '2026-06-01 09:33:26', 1, 'SUCCESS'),
(389, 44, 'Krishan Dominic', 'CBW-8387', '2026-06-01 10:12:53', 1, 'SUCCESS'),
(390, 79, 'Damsak De Zoysa', 'CBM-5706', '2026-06-01 10:33:14', 1, 'SUCCESS'),
(391, 79, 'Damsak De Zoysa', 'PD-7635', '2026-06-01 10:37:10', 1, 'SUCCESS'),
(392, 79, 'Damsak De Zoysa', 'CBM-5681', '2026-06-01 12:21:59', 1, 'SUCCESS'),
(393, 49, 'Kapila Silva', 'CBM-5707', '2026-06-02 02:37:24', 1, 'SUCCESS'),
(394, 79, 'Damsak De Zoysa', 'CBT-4751', '2026-06-02 04:48:09', 1, 'SUCCESS'),
(395, 83, 'Ashen Fernando', 'CBT-4751', '2026-06-02 07:33:05', 1, 'SUCCESS'),
(396, 79, 'Damsak De Zoysa', 'CBM-5719', '2026-06-02 08:32:30', 1, 'SUCCESS'),
(397, 79, 'Damsak De Zoysa', 'CBM-5719', '2026-06-02 08:32:49', 1, 'SUCCESS'),
(398, 50, 'Sahan Mendis', 'CBS-9864', '2026-06-02 09:20:39', 1, 'SUCCESS'),
(399, 79, 'Damsak De Zoysa', 'CBT-2241', '2026-06-02 10:22:43', 0, 'QR_IMAGE_NOT_UPLOADED'),
(400, 79, 'Damsak De Zoysa', 'CBH-7357', '2026-06-02 10:22:58', 1, 'SUCCESS'),
(401, 79, 'Damsak De Zoysa', 'CBM-5700', '2026-06-02 10:24:23', 1, 'SUCCESS'),
(402, 79, 'Damsak De Zoysa', 'CBQ-8861', '2026-06-02 11:37:39', 1, 'SUCCESS'),
(403, 79, 'Damsak De Zoysa', 'CBM-5703', '2026-06-02 11:38:08', 1, 'SUCCESS'),
(404, 14, 'Ralston Gerreyn', 'CAX-4197', '2026-06-02 15:38:23', 1, 'SUCCESS'),
(405, 80, 'Gayan Fernando', 'CBS-0870', '2026-06-03 02:59:28', 1, 'SUCCESS'),
(406, 79, 'Damsak De Zoysa', 'CAX-4197', '2026-06-03 06:42:44', 1, 'SUCCESS'),
(407, 79, 'Damsak De Zoysa', 'CBM-5718', '2026-06-03 06:44:09', 1, 'SUCCESS'),
(408, 79, 'Damsak De Zoysa', 'CBM-5720', '2026-06-03 06:44:26', 1, 'SUCCESS'),
(409, 79, 'Damsak De Zoysa', 'CBM-5719', '2026-06-03 06:48:43', 1, 'SUCCESS'),
(410, 79, 'Damsak De Zoysa', 'CBV-4035', '2026-06-03 07:33:10', 1, 'SUCCESS'),
(411, 79, 'Damsak De Zoysa', 'KW-4867', '2026-06-03 07:36:58', 0, 'QR_IMAGE_NOT_UPLOADED'),
(412, 79, 'Damsak De Zoysa', 'CBM-8143', '2026-06-03 10:48:28', 1, 'SUCCESS'),
(413, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-06-03 11:13:11', 1, 'SUCCESS'),
(414, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-06-03 11:13:21', 1, 'SUCCESS'),
(415, 50, 'Sahan Mendis', 'PD-9606', '2026-06-03 23:57:24', 1, 'SUCCESS'),
(416, 77, 'Ryan Monie', 'PC-1058', '2026-06-04 05:27:46', 1, 'SUCCESS'),
(417, 49, 'Kapila Silva', 'CAD-6434', '2026-06-04 10:23:15', 1, 'SUCCESS'),
(418, 79, 'Damsak De Zoysa', 'CBS-0864', '2026-06-04 12:45:42', 1, 'SUCCESS'),
(419, 53, 'Sujeewa Amarasiri', 'CBM-5708', '2026-06-04 12:56:36', 1, 'SUCCESS'),
(420, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-06-04 13:04:19', 1, 'SUCCESS'),
(421, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-06-04 13:04:38', 1, 'SUCCESS'),
(422, 79, 'Damsak De Zoysa', 'CBQ-9481', '2026-06-05 05:19:09', 1, 'SUCCESS'),
(423, 19, 'Srimal kamaral', 'CBT-0179', '2026-06-05 05:21:19', 0, 'QR_IMAGE_NOT_UPLOADED'),
(424, 39, 'Anton Niroshan', 'CBT-0179', '2026-06-05 05:26:05', 0, 'QR_IMAGE_NOT_UPLOADED'),
(425, 79, 'Damsak De Zoysa', 'CBQ-8849', '2026-06-05 06:44:45', 1, 'SUCCESS'),
(426, 79, 'Damsak De Zoysa', 'CBQ-8851', '2026-06-05 06:45:44', 1, 'SUCCESS'),
(427, 79, 'Damsak De Zoysa', 'CBS-9862', '2026-06-05 08:36:41', 1, 'SUCCESS'),
(428, 79, 'Damsak De Zoysa', 'CBS-0864', '2026-06-05 09:47:40', 1, 'SUCCESS'),
(429, 79, 'Damsak De Zoysa', 'CBS-9865', '2026-06-05 10:19:33', 1, 'SUCCESS'),
(430, 79, 'Damsak De Zoysa', 'CBF-6651', '2026-06-05 10:21:32', 1, 'SUCCESS'),
(431, 79, 'Damsak De Zoysa', 'CAE-4853', '2026-06-05 12:02:13', 1, 'SUCCESS'),
(432, 79, 'Damsak De Zoysa', 'PE-6837', '2026-06-05 12:43:35', 1, 'SUCCESS'),
(433, 79, 'Damsak De Zoysa', 'CBQ-8861', '2026-06-05 14:21:16', 1, 'SUCCESS'),
(434, 79, 'Damsak De Zoysa', 'CBQ-8851', '2026-06-05 14:23:03', 1, 'SUCCESS'),
(435, 80, 'Gayan Fernando', 'CBM-5724', '2026-06-05 21:49:22', 1, 'SUCCESS'),
(436, 53, 'Sujeewa Amarasiri', 'PD-9606', '2026-06-06 02:02:00', 1, 'SUCCESS'),
(437, 77, 'Ryan Monie', 'CBM-5703', '2026-06-06 04:56:02', 1, 'SUCCESS'),
(438, 77, 'Ryan Monie', 'CBQ-8468', '2026-06-06 06:27:59', 1, 'SUCCESS'),
(439, 19, 'Srimal kamaral', 'CBS-7410', '2026-06-06 06:34:27', 1, 'SUCCESS'),
(440, 77, 'Ryan Monie', 'CBT-4751', '2026-06-06 07:18:35', 1, 'SUCCESS'),
(441, 77, 'Ryan Monie', 'CBS-9862', '2026-06-06 07:23:11', 1, 'SUCCESS'),
(442, 50, 'Sahan Mendis', 'CBM-5700', '2026-06-06 09:29:54', 1, 'SUCCESS'),
(443, 50, 'Sahan Mendis', 'CBM-5708', '2026-06-06 09:30:41', 1, 'SUCCESS'),
(444, 50, 'Sahan Mendis', 'CBM-5682', '2026-06-06 09:31:00', 1, 'SUCCESS'),
(445, 50, 'Sahan Mendis', 'CBM-8143', '2026-06-06 09:31:25', 1, 'SUCCESS'),
(446, 50, 'Sahan Mendis', 'CBS-9864', '2026-06-06 09:31:47', 1, 'SUCCESS'),
(447, 50, 'Sahan Mendis', 'CBS-9860', '2026-06-06 09:32:03', 1, 'SUCCESS'),
(448, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-06-06 11:40:01', 1, 'SUCCESS'),
(449, 53, 'Sujeewa Amarasiri', 'CBM-5708', '2026-06-06 11:43:10', 1, 'SUCCESS'),
(450, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-06-06 11:43:43', 1, 'SUCCESS'),
(451, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-06-06 11:44:13', 1, 'SUCCESS'),
(452, 49, 'Kapila Silva', 'CAB-0744', '2026-06-06 17:01:31', 1, 'SUCCESS'),
(453, 49, 'Kapila Silva', 'KJ-1955', '2026-06-06 17:02:12', 1, 'SUCCESS'),
(454, 80, 'Gayan Fernando', 'CBM-5718', '2026-06-07 04:33:36', 1, 'SUCCESS'),
(455, 79, 'Damsak De Zoysa', 'CAY-3385', '2026-06-07 06:43:23', 1, 'SUCCESS'),
(456, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-06-07 07:27:29', 1, 'SUCCESS'),
(457, 79, 'Damsak De Zoysa', 'CBS-9865', '2026-06-08 02:59:14', 1, 'SUCCESS'),
(458, 43, 'Sameera  Dilshan', 'CBM-5685', '2026-06-08 04:19:25', 1, 'SUCCESS'),
(459, 43, 'Sameera  Dilshan', 'CBW-8387', '2026-06-08 04:59:38', 1, 'SUCCESS'),
(460, 79, 'Damsak De Zoysa', 'CBM-5687', '2026-06-08 06:06:38', 1, 'SUCCESS'),
(461, 79, 'Damsak De Zoysa', 'CBM-5683', '2026-06-08 08:18:10', 1, 'SUCCESS'),
(462, 79, 'Damsak De Zoysa', 'CBQ-8861', '2026-06-08 08:19:46', 1, 'SUCCESS'),
(463, 79, 'Damsak De Zoysa', 'CBM-5706', '2026-06-08 09:20:10', 1, 'SUCCESS'),
(464, 79, 'Damsak De Zoysa', 'CBM-5706', '2026-06-08 09:20:14', 1, 'SUCCESS'),
(465, 79, 'Damsak De Zoysa', 'CBM-5712', '2026-06-08 10:53:58', 1, 'SUCCESS'),
(466, 80, 'Gayan Fernando', 'CBM-5707', '2026-06-08 11:09:14', 1, 'SUCCESS'),
(467, 80, 'Gayan Fernando', 'CBM-5707', '2026-06-08 11:09:22', 1, 'SUCCESS'),
(468, 49, 'Kapila Silva', 'PD-9606', '2026-06-08 11:56:54', 1, 'SUCCESS'),
(469, 79, 'Damsak De Zoysa', 'CAX-7637', '2026-06-08 12:48:05', 1, 'SUCCESS'),
(470, 63, 'Shaun Perera', 'CAE-4853', '2026-06-08 19:36:56', 1, 'SUCCESS'),
(471, 63, 'Shaun Perera', 'CAE-4853', '2026-06-08 19:38:34', 1, 'SUCCESS'),
(472, 79, 'Damsak De Zoysa', 'CBS-9865', '2026-06-09 05:14:05', 1, 'SUCCESS'),
(473, 79, 'Damsak De Zoysa', 'PD-9606', '2026-06-09 05:57:40', 1, 'SUCCESS'),
(474, 79, 'Damsak De Zoysa', 'CBU-1826', '2026-06-09 07:40:53', 1, 'SUCCESS'),
(475, 77, 'Ryan Monie', 'CBQ-8859', '2026-06-09 11:24:04', 1, 'SUCCESS'),
(476, 79, 'Damsak De Zoysa', 'CBS-0868', '2026-06-09 12:26:33', 1, 'SUCCESS'),
(477, 79, 'Damsak De Zoysa', 'CBM-5721', '2026-06-10 02:58:40', 1, 'SUCCESS'),
(478, 49, 'Kapila Silva', 'CCA-1848', '2026-06-10 04:28:12', 1, 'SUCCESS'),
(479, 74, 'Sampath Fernando', 'CBS-9862', '2026-06-10 05:02:42', 1, 'SUCCESS'),
(480, 77, 'Ryan Monie', 'CBM-5707', '2026-06-10 05:09:40', 1, 'SUCCESS'),
(481, 77, 'Ryan Monie', 'CBM-5680', '2026-06-10 05:11:23', 1, 'SUCCESS'),
(482, 79, 'Damsak De Zoysa', 'CBS-0995', '2026-06-10 06:04:59', 1, 'SUCCESS'),
(483, 79, 'Damsak De Zoysa', 'CBS-9863', '2026-06-10 06:44:54', 1, 'SUCCESS'),
(484, 39, 'Anton Niroshan', 'CBS-0874', '2026-06-10 07:38:33', 1, 'SUCCESS'),
(485, 73, 'Chamara Grero', 'CBS-0874', '2026-06-10 07:39:38', 1, 'SUCCESS'),
(486, 53, 'Sujeewa Amarasiri', 'CBM-5708', '2026-06-10 07:49:50', 1, 'SUCCESS'),
(487, 77, 'Ryan Monie', 'CBQ-8859', '2026-06-10 08:57:39', 1, 'SUCCESS'),
(488, 77, 'Ryan Monie', 'CBQ-8849', '2026-06-10 09:05:55', 1, 'SUCCESS'),
(489, 79, 'Damsak De Zoysa', 'CBM-5682', '2026-06-10 09:32:53', 1, 'SUCCESS'),
(490, 79, 'Damsak De Zoysa', 'CBM-5682', '2026-06-10 12:09:44', 1, 'SUCCESS'),
(491, 50, 'Sahan Mendis', 'CBS-9862', '2026-06-10 17:21:34', 1, 'SUCCESS'),
(492, 50, 'Sahan Mendis', 'CBS-9862', '2026-06-10 17:38:54', 1, 'SUCCESS'),
(493, 50, 'Sahan Mendis', 'CBS-9864', '2026-06-10 17:39:10', 1, 'SUCCESS'),
(494, 80, 'Gayan Fernando', 'CAD-7412', '2026-06-11 03:54:43', 1, 'SUCCESS'),
(495, 79, 'Damsak De Zoysa', 'CBM-5709', '2026-06-11 05:44:02', 1, 'SUCCESS'),
(496, 79, 'Damsak De Zoysa', 'CBM-5708', '2026-06-11 06:27:20', 1, 'SUCCESS'),
(497, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-06-11 08:13:02', 1, 'SUCCESS'),
(498, 53, 'Sujeewa Amarasiri', 'CBM-5709', '2026-06-11 08:13:05', 1, 'SUCCESS'),
(499, 53, 'Sujeewa Amarasiri', 'CBM-5707', '2026-06-11 08:13:41', 1, 'SUCCESS'),
(500, 79, 'Damsak De Zoysa', 'CBV-8397', '2026-06-11 10:05:21', 1, 'SUCCESS'),
(501, 79, 'Damsak De Zoysa', 'CBV-2761', '2026-06-11 10:10:22', 1, 'SUCCESS'),
(502, 49, 'Kapila Silva', 'CAI-1848', '2026-06-11 12:49:25', 1, 'SUCCESS'),
(503, 72, 'Heshan Sandaruwan', 'CBM-5723', '2026-06-11 14:47:13', 1, 'SUCCESS'),
(504, 50, 'Sahan Mendis', 'CBS-9863', '2026-06-12 02:48:20', 1, 'SUCCESS'),
(505, 50, 'Sahan Mendis', 'CBS-9864', '2026-06-12 02:48:42', 1, 'SUCCESS'),
(506, 50, 'Sahan Mendis', 'CBS-0870', '2026-06-12 02:49:07', 1, 'SUCCESS'),
(507, 50, 'Sahan Mendis', 'CBS-0864', '2026-06-12 02:49:20', 1, 'SUCCESS'),
(508, 79, 'Damsak De Zoysa', 'CBM-5661', '2026-06-12 04:53:50', 1, 'SUCCESS'),
(509, 79, 'Damsak De Zoysa', 'CBS-0874', '2026-06-12 05:31:50', 1, 'SUCCESS'),
(510, 79, 'Damsak De Zoysa', 'CBM-5661', '2026-06-12 05:33:11', 1, 'SUCCESS'),
(511, 79, 'Damsak De Zoysa', 'CAY-3385', '2026-06-12 07:31:57', 1, 'SUCCESS'),
(512, 79, 'Damsak De Zoysa', 'CBM-5708', '2026-06-12 07:32:40', 1, 'SUCCESS'),
(513, 79, 'Damsak De Zoysa', 'CBM-5707', '2026-06-12 07:33:20', 1, 'SUCCESS'),
(514, 49, 'Kapila Silva', 'KJ-1955', '2026-06-12 07:58:28', 1, 'SUCCESS'),
(515, 79, 'Damsak De Zoysa', 'CAI-1848', '2026-06-12 09:14:49', 1, 'SUCCESS'),
(516, 77, 'Ryan Monie', 'CBT-4751', '2026-06-12 10:58:35', 1, 'SUCCESS'),
(517, 63, 'Shaun Perera', 'CBB-8740', '2026-06-12 11:57:04', 1, 'SUCCESS'),
(518, 77, 'Ryan Monie', 'CBS-9865', '2026-06-12 14:08:29', 1, 'SUCCESS'),
(519, 49, 'Kapila Silva', 'CBM-5707', '2026-06-12 18:30:44', 1, 'SUCCESS'),
(520, 49, 'Kapila Silva', 'KJ-1955', '2026-06-12 18:45:18', 1, 'SUCCESS'),
(521, 53, 'Sujeewa Amarasiri', 'CAX-7637', '2026-06-13 03:48:35', 1, 'SUCCESS'),
(522, 79, 'Damsak De Zoysa', 'PC-1058', '2026-06-13 06:56:53', 1, 'SUCCESS'),
(523, 50, 'Sahan Mendis', 'PD-9606', '2026-06-13 09:55:26', 1, 'SUCCESS'),
(524, 50, 'Sahan Mendis', 'NC-6222', '2026-06-13 09:57:58', 1, 'SUCCESS'),
(525, 50, 'Sahan Mendis', 'PE-6837', '2026-06-13 09:58:33', 1, 'SUCCESS'),
(526, 53, 'Sujeewa Amarasiri', 'CBM-5682', '2026-06-13 13:26:19', 1, 'SUCCESS'),
(527, 79, 'Damsak De Zoysa', 'CBM-5721', '2026-06-14 02:26:59', 1, 'SUCCESS'),
(528, 49, 'Kapila Silva', 'CBT-4753', '2026-06-14 05:25:05', 1, 'SUCCESS'),
(529, 39, 'Anton Niroshan', 'CAD-6434', '2026-06-14 13:00:26', 1, 'SUCCESS'),
(530, 50, 'Sahan Mendis', 'CBS-9864', '2026-06-14 15:13:45', 1, 'SUCCESS'),
(531, 43, 'Sameera  Dilshan', 'CBM-5684', '2026-06-14 20:47:49', 1, 'SUCCESS'),
(532, 79, 'Damsak De Zoysa', 'CBM-5708', '2026-06-15 02:49:57', 1, 'SUCCESS'),
(533, 79, 'Damsak De Zoysa', 'PD-9606', '2026-06-15 04:40:13', 1, 'SUCCESS'),
(534, 77, 'Ryan Monie', 'CBM-5708', '2026-06-15 05:48:15', 1, 'SUCCESS'),
(535, 79, 'Damsak De Zoysa', 'CBS-0870', '2026-06-15 08:00:33', 1, 'SUCCESS'),
(536, 76, 'Rashan Gamage', 'CBV-8397', '2026-06-15 09:15:10', 1, 'SUCCESS'),
(537, 79, 'Damsak De Zoysa', 'CAP-5023', '2026-06-15 12:18:23', 1, 'SUCCESS'),
(538, 79, 'Damsak De Zoysa', 'CAO-9712', '2026-06-15 12:24:42', 1, 'SUCCESS'),
(539, 66, 'Lashen Dilash', 'CBQ-8861', '2026-06-15 14:59:03', 1, 'SUCCESS'),
(540, 80, 'Gayan Fernando', 'PE-6837', '2026-06-15 16:26:32', 1, 'SUCCESS'),
(541, 74, 'Sampath Fernando', 'CAO-9712', '2026-06-16 04:31:26', 1, 'SUCCESS'),
(542, 79, 'Damsak De Zoysa', 'CBM-5682', '2026-06-16 04:59:37', 1, 'SUCCESS'),
(543, 39, 'Anton Niroshan', 'PD-7635', '2026-06-16 10:51:32', 1, 'SUCCESS'),
(544, 79, 'Damsak De Zoysa', 'CBQ-9484', '2026-06-17 05:30:58', 1, 'SUCCESS'),
(545, 14, 'Ralston Gerreyn', 'CAP-0853', '2026-06-17 07:11:51', 1, 'SUCCESS'),
(546, 79, 'Damsak De Zoysa', 'CBM-5707', '2026-06-17 10:02:08', 1, 'SUCCESS'),
(547, 64, 'Pubudu Wickramasinghe', 'CBQ-8849', '2026-06-17 14:37:50', 1, 'SUCCESS'),
(548, 63, 'Shaun Perera', 'CAE-4853', '2026-06-17 18:56:17', 1, 'SUCCESS'),
(549, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-06-18 03:21:00', 1, 'SUCCESS'),
(550, 39, 'Anton Niroshan', 'CBS-9865', '2026-06-18 06:15:25', 1, 'SUCCESS'),
(551, 50, 'Sahan Mendis', 'PD-7635', '2026-06-18 11:45:45', 1, 'SUCCESS'),
(552, 50, 'Sahan Mendis', 'NC-6222', '2026-06-18 11:46:47', 1, 'SUCCESS'),
(553, 86, 'Dulshan  Wanigasekara', 'KW-4867', '2026-06-18 12:58:50', 0, 'QR_IMAGE_NOT_UPLOADED'),
(554, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-06-18 13:54:39', 1, 'SUCCESS'),
(555, 53, 'Sujeewa Amarasiri', 'CBM-5706', '2026-06-18 18:04:23', 1, 'SUCCESS'),
(556, 79, 'Damsak De Zoysa', 'CBM-5661', '2026-06-19 05:12:25', 1, 'SUCCESS'),
(557, 74, 'Sampath Fernando', 'CBV-8253', '2026-06-19 05:49:27', 1, 'SUCCESS'),
(558, 79, 'Damsak De Zoysa', 'CBT-4753', '2026-06-19 06:19:56', 1, 'SUCCESS'),
(559, 79, 'Damsak De Zoysa', 'CBS-0872', '2026-06-19 06:21:00', 1, 'SUCCESS'),
(560, 74, 'Sampath Fernando', 'CBS-9863', '2026-06-19 07:20:30', 1, 'SUCCESS'),
(561, 79, 'Damsak De Zoysa', 'CBU-1826', '2026-06-19 07:44:04', 1, 'SUCCESS'),
(562, 79, 'Damsak De Zoysa', 'CAK-9434', '2026-06-19 09:50:16', 1, 'SUCCESS'),
(563, 79, 'Damsak De Zoysa', 'CAK-9434', '2026-06-19 09:50:18', 1, 'SUCCESS'),
(564, 79, 'Damsak De Zoysa', 'CBF-9182', '2026-06-19 10:54:07', 1, 'SUCCESS');

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
-- Indexes for table `common_issues`
--
ALTER TABLE `common_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `common_issues_platform_id_foreign` (`platform_id`);

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
-- Indexes for table `gate_pass_requests`
--
ALTER TABLE `gate_pass_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gp_employee` (`employee_id`),
  ADD KEY `idx_gp_manager` (`manager_id`),
  ADD KEY `idx_gp_date` (`gate_pass_date`),
  ADD KEY `idx_gp_status` (`status`);

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
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_sku_unique` (`sku`);

--
-- Indexes for table `stock_requests`
--
ALTER TABLE `stock_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_platform_id_foreign` (`platform_id`),
  ADD KEY `tickets_common_issue_id_foreign` (`common_issue_id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ticket_messages_ticket` (`ticket_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_members`
--
ALTER TABLE `training_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_id` (`training_id`);

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
-- AUTO_INCREMENT for table `common_issues`
--
ALTER TABLE `common_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `employee_address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `bank_account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  MODIFY `comp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  MODIFY `component_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `employee_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  MODIFY `emergency_contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `experience_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  MODIFY `leave_balance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `employee_personal_vehicle_usage`
--
ALTER TABLE `employee_personal_vehicle_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gate_pass_requests`
--
ALTER TABLE `gate_pass_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `job_title_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `leave_policies`
--
ALTER TABLE `leave_policies`
  MODIFY `leave_policy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  MODIFY `leave_request_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_requests`
--
ALTER TABLE `stock_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `training_members`
--
ALTER TABLE `training_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transport_services`
--
ALTER TABLE `transport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `trip_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  MODIFY `vehicle_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `common_issues`
--
ALTER TABLE `common_issues`
  ADD CONSTRAINT `common_issues_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `fk_ticket_messages_ticket` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `training_members`
--
ALTER TABLE `training_members`
  ADD CONSTRAINT `training_members_ibfk_1` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE CASCADE;

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
