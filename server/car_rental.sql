-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 01, 2026 at 07:13 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `A_ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `PhoneNumber` bigint DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Updation_Date` date DEFAULT NULL,
  `Create_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`A_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_ID`, `type`, `FullName`, `Username`, `Password`, `PhoneNumber`, `Address`, `Status`, `Updation_Date`, `Create_Date`) VALUES
(6, 'admin', 'kaleab', 'kaleab', '$2b$10$2ddr99SIH6.7t82YIOh0pOf3Q/tfpIWDu9br7N.AwQ0MFEPOVHNn2', 978543679, 'rgwerg', 'Active', NULL, '2025-12-04 11:07:29'),
(7, 'superadmin', 'kebede', 'kebede', '$2b$10$2ddr99SIH6.7t82YIOh0pOf3Q/tfpIWDu9br7N.AwQ0MFEPOVHNn2', 978543679, 'rgwerg', 'Active', NULL, '2025-12-04 11:07:29'),
(8, 'admin', 'Zelalem Legesse Reda', 'zelalem', '$2b$10$zMvjHPN3Qme0f9KxVGM.4.4wH/xKchNrNzTDQ6Rn5bJ.N7lZerD9G', 931260114, 'Addis Ababa', 'Active', NULL, '2025-12-10 19:51:06'),
(9, 'admin', 'Beyene', 'beyene', '$2b$10$wCUES6dyvvHsQDLipAWX6ufElCjaqRb/DApQaGkXFnXva1CkMv9Qm', 1234567890, 'b', 'Active', NULL, '2025-12-19 08:28:17'),
(10, 'admin', 'nebiyu', 'nebiyu', '$2b$10$eoRCM8wtG3bLI30lR0BkFeuJVIG8VRnBc7d1utVViLFHXUxjypTMy', 1234567890, 'addis', 'Active', NULL, '2025-12-20 08:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `C_ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PhoneNumber` bigint DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Nationality` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Documents` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `reset_token` varchar(255) NOT NULL,
  `reset_token_expiry` bigint NOT NULL,
  `Register_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Update_Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `FullName`, `Email`, `Password`, `PhoneNumber`, `DoB`, `Nationality`, `City`, `Documents`, `reset_token`, `reset_token_expiry`, `Register_Date`, `Update_Date`) VALUES
(84, 'bereket', 'mclovinreal101@gmail.com', '$2b$10$mlI1slju53K7EROjoxY75.Y0k221epoRWni4Ua79d0zYfptIPbwu2', 931260114, '2006-10-30', 'Ethiopian', 'Addis Ababa', '{\"digital_id\":\"/uploads/userDocument/1766303307792-832.jpg\"}', '', 0, '2025-12-21 07:44:32', '12/21/2025, 10:45:39 AM'),
(85, 'zelaem', 'bbctheone@gmail.com', '$2b$10$bbOE9UdmXo/UK3bdN/ReY.I65ocFPK/5Ho6mQ.WTxnKyEGlFjH4x6', 978543679, '2007-10-30', 'Ethiopian', 'Addis Ababa', NULL, '', 0, '2025-12-21 08:14:09', '12/21/2025, 11:14:09 AM');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `D_ID` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `experience_years` int DEFAULT '0',
  `status` enum('active','busy','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'active',
  `Updation_Date` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`D_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`D_ID`, `full_name`, `phone`, `license_number`, `experience_years`, `status`, `Updation_Date`, `created_at`) VALUES
(4, 'kaleab Worku', '09452136', 'sadfasdf', 32, 'active', '12/12/2025, 4:11:00 PM', '2025-12-12 09:51:11'),
(5, 'kidus Yirga', '0920546447', 'sdfkr2232dp', 4, 'active', '12/12/2025, 4:11:07 PM', '2025-12-12 13:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `Rent_ID` int NOT NULL AUTO_INCREMENT,
  `C_ID` varchar(50) NOT NULL,
  `V_ID` varchar(50) NOT NULL,
  `A_ID` varchar(50) NOT NULL,
  `Reservation_R_ID` varchar(50) DEFAULT NULL,
  `D_ID` int DEFAULT NULL,
  `Pickup_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Total_Rent_Day` int DEFAULT NULL,
  `Daily_Fee` float DEFAULT NULL,
  `over_payment` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Fule_Charged` float DEFAULT NULL,
  `Total_paid` float DEFAULT NULL,
  `Refund` float DEFAULT NULL,
  `Confirmation_Number` varchar(50) DEFAULT NULL,
  `Update_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Rent_ID`),
  UNIQUE KEY `Reservation_R_ID` (`Reservation_R_ID`),
  KEY `FK_Rent_Customer` (`C_ID`),
  KEY `FK_Rent_Vehicle` (`V_ID`),
  KEY `FK_Rent_Admin` (`A_ID`) USING BTREE,
  KEY `fk_D_ID` (`D_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`Rent_ID`, `C_ID`, `V_ID`, `A_ID`, `Reservation_R_ID`, `D_ID`, `Pickup_Date`, `Return_Date`, `Total_Rent_Day`, `Daily_Fee`, `over_payment`, `Fule_Charged`, `Total_paid`, `Refund`, `Confirmation_Number`, `Update_Date`) VALUES
(79, '84', '291', '6', '162', 4, '2025-12-25', '2026-01-02', 8, 1200, NULL, NULL, 14720, NULL, 'c847d41f-0455-463f-aba8-b21d8bb2e45f', '2025-12-23 14:35:48'),
(78, '84', '289', '6', '159', 4, '2026-02-05', '2026-02-07', 2, 1050, NULL, NULL, 3335, NULL, '90ca7947-0512-4d46-b912-9e753fb7037a', '2025-12-21 08:11:44'),
(77, '84', '276', '6', '157', NULL, '2025-12-21', '2025-12-22', 1, 900, NULL, NULL, 1035, NULL, '9cba376e-b5e2-4ee4-9831-f40f3ee89a13', '2025-12-23 08:03:07'),
(76, '84', '292', '6', '155', 4, '2025-12-23', '2025-12-29', 6, 700, NULL, NULL, 7590, NULL, '8806ec1d-8c3a-454a-b145-ec632b07e2be', '2025-12-21 07:53:18'),
(75, '81', '274', '6', '154', 4, '2026-01-28', '2026-01-31', 3, 4000, NULL, NULL, 15180, NULL, '5b7f5cd4-7510-4e3a-9402-1d14ad0da585', '2025-12-21 06:20:19'),
(74, '81', '274', '6', '153', 4, '2025-12-21', '2025-12-24', 3, 4000, '0', NULL, 15180, 7200, '6b3448ee-02da-4f0d-996a-c038b1f98d8c', '2025-12-21 06:12:22'),
(73, '80', '274', '6', '152', 5, '2025-12-26', '2026-01-01', 6, 4000, '0', NULL, 30360, 14400, 'eb712053-c8e3-49fe-82f0-4f664176f462', '2025-12-20 22:00:53'),
(71, '80', '292', '6', '148', NULL, '2025-12-21', '2025-12-27', 6, 700, '0', NULL, 4830, 2520, 'f79b21f3-50bb-4ffd-bda0-ae5d1c306ab2', '2025-12-20 21:42:29'),
(72, '80', '291', '6', '151', 4, '2025-12-21', '2025-12-24', 3, 1200, '0', NULL, 5520, 2160, '7c5113c4-968a-465f-906d-538bc061afc6', '2025-12-20 21:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `R_ID` int NOT NULL AUTO_INCREMENT,
  `C_ID` varchar(50) NOT NULL,
  `V_ID` varchar(50) NOT NULL,
  `D_ID` int DEFAULT NULL,
  `Pickup_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Rent_Day` int DEFAULT NULL,
  `Tax_Amount` int NOT NULL,
  `total_Payment` int DEFAULT NULL,
  `Driver_License` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Payment_Photo` text,
  `Status` varchar(50) DEFAULT NULL,
  `Confirmation_Number` varchar(50) DEFAULT NULL,
  `Posting_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`R_ID`),
  KEY `FK_Reservation_Customer` (`C_ID`),
  KEY `FK_Reservation_Vehicle` (`V_ID`),
  KEY `fk_driver_id` (`D_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`R_ID`, `C_ID`, `V_ID`, `D_ID`, `Pickup_Date`, `Return_Date`, `Rent_Day`, `Tax_Amount`, `total_Payment`, `Driver_License`, `Payment_Photo`, `Status`, `Confirmation_Number`, `Posting_Date`) VALUES
(159, '84', '289', 4, '2026-02-05', '2026-02-07', 2, 435, 3335, NULL, NULL, 'onHold', '90ca7947-0512-4d46-b912-9e753fb7037a', '2025-12-21 08:11:15'),
(162, '84', '291', 4, '2025-12-25', '2026-01-02', 8, 1920, 14720, NULL, NULL, 'confirmed', 'c847d41f-0455-463f-aba8-b21d8bb2e45f', '2025-12-23 14:35:34'),
(157, '84', '276', NULL, '2025-12-21', '2025-12-22', 1, 135, 1035, '/uploads/userLicense/1766303996455-224.jpg', '/uploads/userPayment/1766476970383-693.jpg', 'confirmed', '9cba376e-b5e2-4ee4-9831-f40f3ee89a13', '2025-12-21 07:59:56'),
(155, '84', '292', 4, '2025-12-23', '2025-12-29', 6, 990, 7590, NULL, '/uploads/userPayment/1766303367353-807.jpg', 'confirmed', '8806ec1d-8c3a-454a-b145-ec632b07e2be', '2025-12-21 07:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_logs`
--

DROP TABLE IF EXISTS `reservation_logs`;
CREATE TABLE IF NOT EXISTS `reservation_logs` (
  `Log_ID` int NOT NULL AUTO_INCREMENT,
  `Reservation_ID` int NOT NULL,
  `C_ID` int NOT NULL,
  `V_ID` int NOT NULL,
  `Admin_ID` int DEFAULT NULL,
  `D_ID` int DEFAULT NULL,
  `Action_Type` enum('created','updated','done','deleted','cancelled','overdue','confirmed','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Old_Status` varchar(50) DEFAULT NULL,
  `New_Status` varchar(50) DEFAULT NULL,
  `Tax_Amount` int NOT NULL,
  `Pickup_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Rent_Days` int DEFAULT NULL,
  `Price_Per_Day` decimal(10,2) DEFAULT NULL,
  `Total_Charge` decimal(10,2) DEFAULT NULL,
  `Overpayment` decimal(10,2) DEFAULT NULL,
  `Refund` decimal(10,2) DEFAULT NULL,
  `Confirmation_Number` varchar(100) DEFAULT NULL,
  `Logged_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Log_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation_logs`
--

INSERT INTO `reservation_logs` (`Log_ID`, `Reservation_ID`, `C_ID`, `V_ID`, `Admin_ID`, `D_ID`, `Action_Type`, `Old_Status`, `New_Status`, `Tax_Amount`, `Pickup_Date`, `Return_Date`, `Rent_Days`, `Price_Per_Day`, `Total_Charge`, `Overpayment`, `Refund`, `Confirmation_Number`, `Logged_At`) VALUES
(214, 162, 84, 291, 6, 4, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 1920, '2025-12-25', '2026-01-02', 8, 1200.00, 14720.00, NULL, NULL, 'c847d41f-0455-463f-aba8-b21d8bb2e45f', '2025-12-23 14:35:48'),
(213, 162, 84, 291, 6, 4, 'created', 'No status', 'pending', 1920, '2025-12-25', '2026-01-02', 8, 1200.00, 14720.00, NULL, NULL, 'c847d41f-0455-463f-aba8-b21d8bb2e45f', '2025-12-23 14:35:34'),
(212, 161, 84, 290, 6, 4, 'rejected', 'pending', 'Reservation Rejected by AdminID 6', 0, '2025-12-24', '2025-12-31', 7, 1500.00, 15295.00, 0.00, 0.00, 'a395569f-d279-4ab5-9d6e-888ba1076417', '2025-12-23 14:35:16'),
(211, 161, 84, 290, 6, 4, 'created', 'No status', 'pending', 1995, '2025-12-24', '2025-12-31', 7, 1500.00, 15295.00, NULL, NULL, 'a395569f-d279-4ab5-9d6e-888ba1076417', '2025-12-23 14:35:01'),
(210, 160, 84, 279, 1, 4, 'created', 'No status', 'pending', 4290, '2025-12-21', '2026-01-01', 11, 2200.00, 32890.00, NULL, NULL, 'd31ef2e4-b48b-459f-9d01-6970c5079d3a', '2025-12-21 08:18:37'),
(209, 158, 84, 274, 1, 4, 'deleted', 'pending', 'Reservation Deleted', 0, '2025-12-24', '2025-12-31', 7, 4000.00, 35420.00, NULL, NULL, '6a1a35b8-c946-47fa-b880-50bc9cd469fb', '2025-12-21 08:18:15'),
(207, 159, 84, 289, 6, 4, 'created', 'No status', 'pending', 435, '2026-02-05', '2026-02-07', 2, 1050.00, 3335.00, NULL, NULL, '90ca7947-0512-4d46-b912-9e753fb7037a', '2025-12-21 08:11:15'),
(208, 159, 84, 289, 6, 4, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 435, '2026-02-05', '2026-02-07', 2, 1050.00, 3335.00, NULL, NULL, '90ca7947-0512-4d46-b912-9e753fb7037a', '2025-12-21 08:11:44'),
(206, 158, 84, 274, 1, 4, 'created', 'No status', 'pending', 4620, '2025-12-24', '2025-12-31', 7, 4000.00, 35420.00, NULL, NULL, '6a1a35b8-c946-47fa-b880-50bc9cd469fb', '2025-12-23 08:06:30'),
(204, 157, 84, 276, 1, NULL, 'created', 'No status', 'pending', 135, '2025-12-21', '2025-12-22', 1, 900.00, 1035.00, NULL, NULL, '9cba376e-b5e2-4ee4-9831-f40f3ee89a13', '2025-12-21 07:59:56'),
(205, 157, 84, 276, 6, NULL, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 135, '2025-12-21', '2025-12-22', 1, 900.00, 1035.00, NULL, NULL, '9cba376e-b5e2-4ee4-9831-f40f3ee89a13', '2025-12-23 08:03:07'),
(203, 156, 84, 291, 6, 5, 'rejected', 'pending', 'Reservation Rejected by AdminID 6', 0, '2025-12-21', '2025-12-24', 3, 1200.00, 5520.00, 0.00, 0.00, 'bbbb4813-691d-42f0-b901-9acabec19137', '2025-12-21 07:56:11'),
(201, 155, 84, 292, 6, 4, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 990, '2025-12-23', '2025-12-29', 6, 700.00, 7590.00, NULL, NULL, '8806ec1d-8c3a-454a-b145-ec632b07e2be', '2025-12-21 07:53:18'),
(202, 156, 84, 291, 6, 5, 'created', 'No status', 'pending', 720, '2025-12-21', '2025-12-24', 3, 1200.00, 5520.00, NULL, NULL, 'bbbb4813-691d-42f0-b901-9acabec19137', '2025-12-21 07:55:28'),
(200, 155, 84, 292, 6, 4, 'created', 'No status', 'pending', 990, '2025-12-23', '2025-12-29', 6, 700.00, 7590.00, NULL, NULL, '8806ec1d-8c3a-454a-b145-ec632b07e2be', '2025-12-21 07:47:51'),
(198, 154, 81, 274, 1, 4, 'created', 'No status', 'pending', 1980, '2026-01-28', '2026-01-31', 3, 4000.00, 15180.00, NULL, NULL, '5b7f5cd4-7510-4e3a-9402-1d14ad0da585', '2025-12-21 06:19:38'),
(199, 154, 81, 274, 6, 4, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 1980, '2026-01-28', '2026-01-31', 3, 4000.00, 15180.00, NULL, NULL, '5b7f5cd4-7510-4e3a-9402-1d14ad0da585', '2025-12-21 06:20:19'),
(195, 153, 81, 274, 1, 4, 'updated', 'pending', 'pending', 1980, '2025-12-21', '2025-12-24', 3, 4000.00, 15180.00, NULL, NULL, '6b3448ee-02da-4f0d-996a-c038b1f98d8c', '2025-12-21 06:07:55'),
(196, 153, 81, 274, 6, 4, 'confirmed', 'pending', 'Reservation confirmed by AdminID 6', 1980, '2025-12-21', '2025-12-24', 3, 4000.00, 15180.00, NULL, NULL, '6b3448ee-02da-4f0d-996a-c038b1f98d8c', '2025-12-21 06:12:22'),
(197, 153, 81, 274, 6, 4, 'done', 'confirmed', 'Reservation completed by AdminID 6', 1980, '2025-12-21', '2025-12-24', 3, 4000.00, 15180.00, 0.00, 7200.00, '6b3448ee-02da-4f0d-996a-c038b1f98d8c', '2025-12-21 06:14:51'),
(194, 153, 81, 274, 1, 4, 'created', 'No status', 'pending', 1980, '2025-12-21', '2025-12-24', 3, 4000.00, 15180.00, NULL, NULL, '6b3448ee-02da-4f0d-996a-c038b1f98d8c', '2025-12-21 06:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
CREATE TABLE IF NOT EXISTS `user_logs` (
  `Log_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int NOT NULL,
  `Role` enum('customer','admin') NOT NULL,
  `Action` varchar(100) NOT NULL,
  `Target_ID` int DEFAULT NULL,
  `Description` text,
  `Device` varchar(200) DEFAULT NULL,
  `Logged_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Log_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`Log_ID`, `User_ID`, `Role`, `Action`, `Target_ID`, `Description`, `Device`, `Logged_At`) VALUES
(407, 84, 'customer', 'Reservation Created.', 162, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 14:35:34'),
(405, 6, 'admin', 'Admin Login', NULL, 'Admin logged In by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-23 14:34:25'),
(406, 84, 'customer', 'Reservation Created.', 161, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 14:35:01'),
(404, 84, 'customer', 'Login.', NULL, 'Account Logged In by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 14:33:19'),
(403, 6, 'admin', 'Admin Login', NULL, 'Admin logged In by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 08:29:35'),
(402, 6, 'admin', 'Admin Login', NULL, 'Admin logged In by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 08:24:36'),
(400, 84, 'customer', 'Delete Reservation', 158, 'Deleted Reservation by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 08:18:15'),
(401, 84, 'customer', 'Reservation Created.', 160, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 08:18:37'),
(399, 85, 'customer', 'Account Created.', NULL, 'Account created by userID 85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 08:14:09'),
(398, 84, 'customer', 'Reservation Created.', 159, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 08:11:15'),
(397, 84, 'customer', 'Reservation Created.', 158, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-23 08:06:30'),
(396, 84, 'customer', 'Reservation Created.', 157, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:59:56'),
(395, 84, 'customer', 'Reservation Created.', 156, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:55:28'),
(394, 6, 'admin', 'Delete a vehicle', 300, 'Vehicle Deleted by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 07:51:57'),
(393, 6, 'admin', 'update a vehicle', 300, 'Vehicle Updated by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 07:51:49'),
(392, 6, 'admin', 'Create/add a vehicle', 300, 'Vehicle Add by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 07:51:19'),
(390, 84, 'customer', 'inserted Documents', NULL, 'Document inserted by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:48:27'),
(391, 6, 'admin', 'Admin Login', NULL, 'Admin logged In by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 07:49:48'),
(389, 84, 'customer', 'Reservation Created.', 155, 'Reservation Created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:47:50'),
(388, 84, 'customer', 'Update Account Password', NULL, 'Updated Account Password by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:45:39'),
(385, 83, 'customer', 'Deleted Account', NULL, 'Deleted Reservation by userID 83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:36:15'),
(386, 84, 'customer', 'Account Created.', NULL, 'Account created by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:44:32'),
(387, 84, 'customer', 'Update Account', NULL, 'Updated Account by userID 84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 07:44:56'),
(384, 83, 'customer', 'Update Account', NULL, 'Updated Account by userID 83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:35:51'),
(383, 83, 'customer', 'Login.', NULL, 'Account Logged In by userID 83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:35:28'),
(382, 83, 'customer', 'Login.', NULL, 'Account Logged In by userID 83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:35:10'),
(380, 81, 'customer', 'Deleted Account', NULL, 'Deleted Reservation by userID 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:29:38'),
(381, 83, 'customer', 'Account Created.', NULL, 'Account created by userID 83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:34:01'),
(379, 81, 'customer', 'Reservation Created.', 154, 'Reservation Created by userID 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:19:38'),
(378, 6, 'admin', 'Admin Login', NULL, 'Admin logged In by AdminID 6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 06:10:33'),
(377, 81, 'customer', 'Update Reservation', 153, 'Updated reservation by user 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:07:55'),
(376, 81, 'customer', 'inserted Documents', NULL, 'Document inserted by userID 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:06:17'),
(375, 81, 'customer', 'Reservation Created.', 153, 'Reservation Created by userID 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:05:29'),
(374, 81, 'customer', 'Login.', NULL, 'Account Logged In by userID 81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '2025-12-21 06:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `V_ID` int NOT NULL AUTO_INCREMENT,
  `A_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `V_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Plate_Number` varchar(20) DEFAULT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Price_Per_Day` float DEFAULT NULL,
  `Model_Year` int DEFAULT NULL,
  `Seating_Capacity` int DEFAULT NULL,
  `Fuel_Type` varchar(50) DEFAULT NULL,
  `Images` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Registration_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updation_Date` varchar(50) NOT NULL,
  PRIMARY KEY (`V_ID`),
  KEY `fk_admin_vehicle` (`A_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`V_ID`, `A_ID`, `V_Name`, `Plate_Number`, `Brand_Name`, `Price_Per_Day`, `Model_Year`, `Seating_Capacity`, `Fuel_Type`, `Images`, `Registration_Date`, `Updation_Date`) VALUES
(276, '1', 'Corolla Cross', 'ET-40422', 'Toyota', 900, 2023, 6, 'Hybrid', '[\"/uploads/1764156935770-841.jpg\",\"/uploads/1764157853968-207.webp\",\"/uploads/1764157853972-18.jpg\"]', '2025-11-26 11:35:35', '12/21/2025, 1:12:27 AM'),
(274, '1', 'Model X', 'ET-4032', 'Tesla', 4000, 2022, 5, 'Electric', '[\"/uploads/1764156715245-908.jpg\",\"/uploads/1764156715245-249.jpg\",\"/uploads/1764156715248-787.jpg\"]', '2025-11-26 11:31:55', '12/20/2025, 11:17:30 PM'),
(279, '1', 'Wrangler ', 'ET-3933', 'Jeep', 2200, 2015, 6, 'Diesel', '[\"/uploads/1764157519349-745.jpg\",\"/uploads/1764157519351-636.webp\",\"/uploads/1764157755322-50.jpg\"]', '2025-11-26 11:45:19', '11/26/2025, 2:49:15 PM'),
(288, '6', 'RAV4', 'ET-101', 'Toyota', 1000, 2022, 6, 'Gasoline', '[\"/uploads/1766260557601-884.webp\",\"/uploads/1766260557602-850.webp\",\"/uploads/1766260557602-323.webp\"]', '2025-12-20 19:55:57', '12/20/2025, 10:56:11 PM'),
(289, '6', 'RUSH', 'ET-102', 'Toyota', 1050, 2020, 6, 'Gasoline', '[\"/uploads/1766260687074-582.webp\",\"/uploads/1766260687075-125.webp\",\"/uploads/1766260687079-278.webp\",\"/uploads/1766260687080-309.webp\"]', '2025-12-20 19:58:07', '12/20/2025, 10:58:07 PM'),
(290, '6', 'LANDCRUISER VX.R', 'ET-103', 'Toyota', 1500, 2022, 6, 'Diesel', '[\"/uploads/1766260795720-878.webp\",\"/uploads/1766260795720-371.webp\",\"/uploads/1766260795721-855.webp\",\"/uploads/1766260795721-34.webp\"]', '2025-12-20 19:59:55', '12/20/2025, 10:59:55 PM'),
(291, '6', 'RAV4', 'ET-104', 'Toyota', 1200, 2018, 6, 'Gasoline', '[\"/uploads/1766260918836-441.webp\",\"/uploads/1766260918837-173.webp\",\"/uploads/1766260918838-764.webp\"]', '2025-12-20 20:01:58', '12/20/2025, 11:01:58 PM'),
(292, '6', 'Suzuki Dzire', 'ET-105', 'Toyota', 700, 2021, 4, 'Diesel', '[\"/uploads/1766261044330-842.webp\",\"/uploads/1766261044331-423.webp\",\"/uploads/1766261044336-43.webp\",\"/uploads/1766261044337-216.webp\"]', '2025-12-20 20:04:04', '12/20/2025, 11:04:04 PM'),
(293, '6', 'Landcruiser', 'ET-106', 'Toyota', 900, 2015, 4, 'Gasoline', '[\"/uploads/1766261142906-286.webp\",\"/uploads/1766261142907-612.webp\",\"/uploads/1766261142914-889.webp\"]', '2025-12-20 20:05:42', '12/20/2025, 11:18:35 PM'),
(294, '6', 'Starex', 'ET-107', 'Hyundai', 1800, 2014, 10, 'Diesel', '[\"/uploads/1766261253893-988.webp\",\"/uploads/1766261253894-233.webp\",\"/uploads/1766261253894-935.webp\",\"/uploads/1766261253895-851.webp\"]', '2025-12-20 20:07:33', '12/20/2025, 11:07:33 PM'),
(295, '6', 'Ranger ', 'ET-108', 'Ford', 1400, 2020, 4, 'Diesel', '[\"/uploads/1766261338611-308.webp\",\"/uploads/1766261338612-632.webp\"]', '2025-12-20 20:08:58', '12/20/2025, 11:08:58 PM'),
(296, '6', 'Vios Kas', 'ET-109', 'Kia', 800, 2021, 4, 'Electric', '[\"/uploads/1766261422717-24.webp\",\"/uploads/1766261422718-11.webp\",\"/uploads/1766261422720-318.webp\",\"/uploads/1766261422720-21.webp\"]', '2025-12-20 20:10:22', '12/20/2025, 11:10:22 PM'),
(297, '6', 'Tucson N-line ', 'ET-110', 'Hyundai', 1200, 2022, 4, 'Hybrid', '[\"/uploads/1766261530601-692.webp\",\"/uploads/1766261530602-957.webp\",\"/uploads/1766261530603-837.webp\",\"/uploads/1766261530604-778.webp\"]', '2025-12-20 20:12:10', '12/20/2025, 11:12:10 PM'),
(298, '6', 'SUZUKI DZIRE ', 'ET-111', 'Toyota', 1000, 2023, 4, 'Diesel', '[\"/uploads/1766261664571-76.webp\",\"/uploads/1766261664572-959.webp\",\"/uploads/1766261664574-972.webp\",\"/uploads/1766261664575-854.webp\"]', '2025-12-20 20:14:24', '12/20/2025, 11:14:24 PM'),
(299, '6', 'Suzuki Ertiga', 'ET-113', 'Toyota', 800, 2022, 4, 'Gasoline', '[\"/uploads/1766261763878-960.webp\",\"/uploads/1766261763879-966.webp\",\"/uploads/1766261763880-525.webp\",\"/uploads/1766261763881-911.webp\"]', '2025-12-20 20:16:03', '12/20/2025, 11:16:03 PM');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
