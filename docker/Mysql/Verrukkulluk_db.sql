-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2020 at 02:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Verrukkulluk_db`
--
CREATE DATABASE `Verrukkulluk`;

use `Verrukkulluk`;

-- --------------------------------------------------------

--
-- Table structure for table `DISH`
--

CREATE TABLE `DISH` (
  `ID` int(11) NOT NULL,
  `kitchen_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_added` date NOT NULL DEFAULT (CURRENT_DATE),
  `title` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `amount_of_people` int(11) NOT NULL,
  `short_description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `long_description` text COLLATE latin1_general_ci NOT NULL,
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `DISH`
--

INSERT INTO `DISH` (`ID`, `kitchen_id`, `type_id`, `user_id`, `date_added`, `title`, `amount_of_people`, `short_description`, `long_description`, `image`) VALUES
(2, 1, 1, 48, '2020-10-23', 'Title for dish_1', 0, 'Short description for Dish_1', 'A slightly longer description for Dish_1', 'Dish_1'),
(3, 2, 2, 29, '2020-10-22', 'Title for dish_2', 0, 'Short description for Dish_2', 'A slightly longer description for Dish_2', 'Dish_2'),
(4, 3, 3, 12, '2020-10-15', 'Title for dish_3', 0, 'Short description for Dish_3', 'A slightly longer description for Dish_3', 'Dish_3'),
(5, 4, 4, 75, '2020-10-15', 'Title for dish_4', 0, 'Short description for Dish_4', 'A slightly longer description for Dish_4', 'Dish_4'),
(6, 5, 5, 17, '2020-10-15', 'Title for dish_5', 0, 'Short description for Dish_5', 'A slightly longer description for Dish_5', 'Dish_5'),
(7, 6, 6, 72, '2020-10-15', 'Title for dish_6', 0, 'Short description for Dish_6', 'A slightly longer description for Dish_6', 'Dish_6'),
(8, 7, 7, 95, '2020-10-15', 'Title for dish_7', 0, 'Short description for Dish_7', 'A slightly longer description for Dish_7', 'Dish_7'),
(9, 8, 8, 39, '2020-10-15', 'Title for dish_8', 0, 'Short description for Dish_8', 'A slightly longer description for Dish_8', 'Dish_8'),
(10, 9, 9, 38, '2020-10-15', 'Title for dish_9', 0, 'Short description for Dish_9', 'A slightly longer description for Dish_9', 'Dish_9'),
(11, 10, 10, 20, '2020-10-15', 'Title for dish_10', 0, 'Short description for Dish_10', 'A slightly longer description for Dish_10', 'Dish_10'),
(12, 11, 11, 41, '2020-10-15', 'Title for dish_11', 0, 'Short description for Dish_11', 'A slightly longer description for Dish_11', 'Dish_11'),
(13, 12, 12, 4, '2020-10-15', 'Title for dish_12', 0, 'Short description for Dish_12', 'A slightly longer description for Dish_12', 'Dish_12'),
(14, 13, 13, 23, '2020-10-15', 'Title for dish_13', 0, 'Short description for Dish_13', 'A slightly longer description for Dish_13', 'Dish_13'),
(15, 14, 14, 19, '2020-10-15', 'Title for dish_14', 0, 'Short description for Dish_14', 'A slightly longer description for Dish_14', 'Dish_14'),
(16, 15, 15, 86, '2020-10-15', 'Title for dish_15', 0, 'Short description for Dish_15', 'A slightly longer description for Dish_15', 'Dish_15'),
(17, 16, 16, 21, '2020-10-15', 'Title for dish_16', 0, 'Short description for Dish_16', 'A slightly longer description for Dish_16', 'Dish_16'),
(18, 17, 17, 32, '2020-10-15', 'Title for dish_17', 0, 'Short description for Dish_17', 'A slightly longer description for Dish_17', 'Dish_17'),
(19, 18, 18, 89, '2020-10-15', 'Title for dish_18', 0, 'Short description for Dish_18', 'A slightly longer description for Dish_18', 'Dish_18'),
(20, 19, 19, 42, '2020-10-15', 'Title for dish_19', 0, 'Short description for Dish_19', 'A slightly longer description for Dish_19', 'Dish_19'),
(21, 20, 20, 54, '2020-10-15', 'Title for dish_20', 0, 'Short description for Dish_20', 'A slightly longer description for Dish_20', 'Dish_20'),
(22, 21, 21, 9, '2020-10-15', 'Title for dish_21', 0, 'Short description for Dish_21', 'A slightly longer description for Dish_21', 'Dish_21'),
(23, 22, 22, 100, '2020-10-15', 'Title for dish_22', 0, 'Short description for Dish_22', 'A slightly longer description for Dish_22', 'Dish_22'),
(24, 23, 23, 3, '2020-10-15', 'Title for dish_23', 0, 'Short description for Dish_23', 'A slightly longer description for Dish_23', 'Dish_23'),
(25, 24, 24, 47, '2020-10-15', 'Title for dish_24', 0, 'Short description for Dish_24', 'A slightly longer description for Dish_24', 'Dish_24'),
(26, 25, 25, 89, '2020-10-15', 'Title for dish_25', 0, 'Short description for Dish_25', 'A slightly longer description for Dish_25', 'Dish_25'),
(27, 26, 26, 68, '2020-10-15', 'Title for dish_26', 0, 'Short description for Dish_26', 'A slightly longer description for Dish_26', 'Dish_26'),
(28, 27, 27, 7, '2020-10-15', 'Title for dish_27', 0, 'Short description for Dish_27', 'A slightly longer description for Dish_27', 'Dish_27'),
(29, 28, 28, 81, '2020-10-15', 'Title for dish_28', 0, 'Short description for Dish_28', 'A slightly longer description for Dish_28', 'Dish_28'),
(30, 29, 29, 79, '2020-10-15', 'Title for dish_29', 0, 'Short description for Dish_29', 'A slightly longer description for Dish_29', 'Dish_29'),
(31, 30, 30, 12, '2020-10-15', 'Title for dish_30', 0, 'Short description for Dish_30', 'A slightly longer description for Dish_30', 'Dish_30'),
(32, 31, 31, 13, '2020-10-15', 'Title for dish_31', 0, 'Short description for Dish_31', 'A slightly longer description for Dish_31', 'Dish_31'),
(33, 32, 32, 83, '2020-10-15', 'Title for dish_32', 0, 'Short description for Dish_32', 'A slightly longer description for Dish_32', 'Dish_32'),
(34, 33, 33, 45, '2020-10-15', 'Title for dish_33', 0, 'Short description for Dish_33', 'A slightly longer description for Dish_33', 'Dish_33'),
(35, 34, 34, 94, '2020-10-15', 'Title for dish_34', 0, 'Short description for Dish_34', 'A slightly longer description for Dish_34', 'Dish_34'),
(36, 35, 35, 90, '2020-10-15', 'Title for dish_35', 0, 'Short description for Dish_35', 'A slightly longer description for Dish_35', 'Dish_35'),
(37, 36, 36, 37, '2020-10-15', 'Title for dish_36', 0, 'Short description for Dish_36', 'A slightly longer description for Dish_36', 'Dish_36'),
(38, 37, 37, 32, '2020-10-15', 'Title for dish_37', 0, 'Short description for Dish_37', 'A slightly longer description for Dish_37', 'Dish_37'),
(39, 38, 38, 24, '2020-10-15', 'Title for dish_38', 0, 'Short description for Dish_38', 'A slightly longer description for Dish_38', 'Dish_38'),
(40, 39, 39, 19, '2020-10-15', 'Title for dish_39', 0, 'Short description for Dish_39', 'A slightly longer description for Dish_39', 'Dish_39'),
(41, 40, 40, 78, '2020-10-15', 'Title for dish_40', 0, 'Short description for Dish_40', 'A slightly longer description for Dish_40', 'Dish_40'),
(42, 41, 41, 83, '2020-10-15', 'Title for dish_41', 0, 'Short description for Dish_41', 'A slightly longer description for Dish_41', 'Dish_41'),
(43, 42, 42, 66, '2020-10-15', 'Title for dish_42', 0, 'Short description for Dish_42', 'A slightly longer description for Dish_42', 'Dish_42'),
(44, 43, 43, 55, '2020-10-15', 'Title for dish_43', 0, 'Short description for Dish_43', 'A slightly longer description for Dish_43', 'Dish_43'),
(45, 44, 44, 8, '2020-10-15', 'Title for dish_44', 0, 'Short description for Dish_44', 'A slightly longer description for Dish_44', 'Dish_44'),
(46, 45, 45, 29, '2020-10-15', 'Title for dish_45', 0, 'Short description for Dish_45', 'A slightly longer description for Dish_45', 'Dish_45'),
(47, 46, 46, 53, '2020-10-15', 'Title for dish_46', 0, 'Short description for Dish_46', 'A slightly longer description for Dish_46', 'Dish_46'),
(48, 47, 47, 51, '2020-10-15', 'Title for dish_47', 0, 'Short description for Dish_47', 'A slightly longer description for Dish_47', 'Dish_47'),
(49, 48, 48, 22, '2020-10-15', 'Title for dish_48', 0, 'Short description for Dish_48', 'A slightly longer description for Dish_48', 'Dish_48'),
(50, 49, 49, 20, '2020-10-15', 'Title for dish_49', 0, 'Short description for Dish_49', 'A slightly longer description for Dish_49', 'Dish_49'),
(51, 50, 50, 18, '2020-10-15', 'Title for dish_50', 0, 'Short description for Dish_50', 'A slightly longer description for Dish_50', 'Dish_50'),
(52, 51, 51, 43, '2020-10-15', 'Title for dish_51', 0, 'Short description for Dish_51', 'A slightly longer description for Dish_51', 'Dish_51'),
(53, 52, 52, 57, '2020-10-15', 'Title for dish_52', 0, 'Short description for Dish_52', 'A slightly longer description for Dish_52', 'Dish_52'),
(54, 53, 53, 35, '2020-10-15', 'Title for dish_53', 0, 'Short description for Dish_53', 'A slightly longer description for Dish_53', 'Dish_53'),
(55, 54, 54, 13, '2020-10-15', 'Title for dish_54', 0, 'Short description for Dish_54', 'A slightly longer description for Dish_54', 'Dish_54'),
(56, 55, 55, 25, '2020-10-15', 'Title for dish_55', 0, 'Short description for Dish_55', 'A slightly longer description for Dish_55', 'Dish_55'),
(57, 56, 56, 23, '2020-10-15', 'Title for dish_56', 0, 'Short description for Dish_56', 'A slightly longer description for Dish_56', 'Dish_56'),
(58, 57, 57, 15, '2020-10-15', 'Title for dish_57', 0, 'Short description for Dish_57', 'A slightly longer description for Dish_57', 'Dish_57'),
(59, 58, 58, 56, '2020-10-15', 'Title for dish_58', 0, 'Short description for Dish_58', 'A slightly longer description for Dish_58', 'Dish_58'),
(60, 59, 59, 25, '2020-10-15', 'Title for dish_59', 0, 'Short description for Dish_59', 'A slightly longer description for Dish_59', 'Dish_59'),
(61, 60, 60, 38, '2020-10-15', 'Title for dish_60', 0, 'Short description for Dish_60', 'A slightly longer description for Dish_60', 'Dish_60'),
(62, 61, 61, 83, '2020-10-15', 'Title for dish_61', 0, 'Short description for Dish_61', 'A slightly longer description for Dish_61', 'Dish_61'),
(63, 62, 62, 101, '2020-10-15', 'Title for dish_62', 0, 'Short description for Dish_62', 'A slightly longer description for Dish_62', 'Dish_62'),
(64, 63, 63, 49, '2020-10-15', 'Title for dish_63', 0, 'Short description for Dish_63', 'A slightly longer description for Dish_63', 'Dish_63'),
(65, 64, 64, 17, '2020-10-15', 'Title for dish_64', 0, 'Short description for Dish_64', 'A slightly longer description for Dish_64', 'Dish_64'),
(66, 65, 65, 11, '2020-10-15', 'Title for dish_65', 0, 'Short description for Dish_65', 'A slightly longer description for Dish_65', 'Dish_65'),
(67, 66, 66, 33, '2020-10-15', 'Title for dish_66', 0, 'Short description for Dish_66', 'A slightly longer description for Dish_66', 'Dish_66'),
(68, 67, 67, 47, '2020-10-15', 'Title for dish_67', 0, 'Short description for Dish_67', 'A slightly longer description for Dish_67', 'Dish_67'),
(69, 68, 68, 76, '2020-10-15', 'Title for dish_68', 0, 'Short description for Dish_68', 'A slightly longer description for Dish_68', 'Dish_68'),
(70, 69, 69, 70, '2020-10-15', 'Title for dish_69', 0, 'Short description for Dish_69', 'A slightly longer description for Dish_69', 'Dish_69'),
(71, 70, 70, 36, '2020-10-15', 'Title for dish_70', 0, 'Short description for Dish_70', 'A slightly longer description for Dish_70', 'Dish_70'),
(72, 71, 71, 92, '2020-10-15', 'Title for dish_71', 0, 'Short description for Dish_71', 'A slightly longer description for Dish_71', 'Dish_71'),
(73, 72, 72, 84, '2020-10-15', 'Title for dish_72', 0, 'Short description for Dish_72', 'A slightly longer description for Dish_72', 'Dish_72'),
(74, 73, 73, 31, '2020-10-15', 'Title for dish_73', 0, 'Short description for Dish_73', 'A slightly longer description for Dish_73', 'Dish_73'),
(75, 74, 74, 23, '2020-10-15', 'Title for dish_74', 0, 'Short description for Dish_74', 'A slightly longer description for Dish_74', 'Dish_74'),
(76, 75, 75, 71, '2020-10-15', 'Title for dish_75', 0, 'Short description for Dish_75', 'A slightly longer description for Dish_75', 'Dish_75'),
(77, 76, 76, 91, '2020-10-15', 'Title for dish_76', 0, 'Short description for Dish_76', 'A slightly longer description for Dish_76', 'Dish_76'),
(78, 77, 77, 41, '2020-10-15', 'Title for dish_77', 0, 'Short description for Dish_77', 'A slightly longer description for Dish_77', 'Dish_77'),
(79, 78, 78, 82, '2020-10-15', 'Title for dish_78', 0, 'Short description for Dish_78', 'A slightly longer description for Dish_78', 'Dish_78'),
(80, 79, 79, 44, '2020-10-15', 'Title for dish_79', 0, 'Short description for Dish_79', 'A slightly longer description for Dish_79', 'Dish_79'),
(81, 80, 80, 61, '2020-10-15', 'Title for dish_80', 0, 'Short description for Dish_80', 'A slightly longer description for Dish_80', 'Dish_80'),
(82, 81, 81, 19, '2020-10-15', 'Title for dish_81', 0, 'Short description for Dish_81', 'A slightly longer description for Dish_81', 'Dish_81'),
(83, 82, 82, 59, '2020-10-15', 'Title for dish_82', 0, 'Short description for Dish_82', 'A slightly longer description for Dish_82', 'Dish_82'),
(84, 83, 83, 50, '2020-10-15', 'Title for dish_83', 0, 'Short description for Dish_83', 'A slightly longer description for Dish_83', 'Dish_83'),
(85, 84, 84, 30, '2020-10-15', 'Title for dish_84', 0, 'Short description for Dish_84', 'A slightly longer description for Dish_84', 'Dish_84'),
(86, 85, 85, 57, '2020-10-15', 'Title for dish_85', 0, 'Short description for Dish_85', 'A slightly longer description for Dish_85', 'Dish_85'),
(87, 86, 86, 91, '2020-10-15', 'Title for dish_86', 0, 'Short description for Dish_86', 'A slightly longer description for Dish_86', 'Dish_86'),
(88, 87, 87, 99, '2020-10-15', 'Title for dish_87', 0, 'Short description for Dish_87', 'A slightly longer description for Dish_87', 'Dish_87'),
(89, 88, 88, 88, '2020-10-15', 'Title for dish_88', 0, 'Short description for Dish_88', 'A slightly longer description for Dish_88', 'Dish_88'),
(90, 89, 89, 84, '2020-10-15', 'Title for dish_89', 0, 'Short description for Dish_89', 'A slightly longer description for Dish_89', 'Dish_89'),
(91, 90, 90, 30, '2020-10-15', 'Title for dish_90', 0, 'Short description for Dish_90', 'A slightly longer description for Dish_90', 'Dish_90'),
(92, 91, 91, 27, '2020-10-15', 'Title for dish_91', 0, 'Short description for Dish_91', 'A slightly longer description for Dish_91', 'Dish_91'),
(93, 92, 92, 23, '2020-10-15', 'Title for dish_92', 0, 'Short description for Dish_92', 'A slightly longer description for Dish_92', 'Dish_92'),
(94, 93, 93, 66, '2020-10-15', 'Title for dish_93', 0, 'Short description for Dish_93', 'A slightly longer description for Dish_93', 'Dish_93'),
(95, 94, 94, 91, '2020-10-15', 'Title for dish_94', 0, 'Short description for Dish_94', 'A slightly longer description for Dish_94', 'Dish_94'),
(96, 95, 95, 20, '2020-10-15', 'Title for dish_95', 0, 'Short description for Dish_95', 'A slightly longer description for Dish_95', 'Dish_95'),
(97, 96, 96, 76, '2020-10-15', 'Title for dish_96', 0, 'Short description for Dish_96', 'A slightly longer description for Dish_96', 'Dish_96'),
(98, 97, 97, 50, '2020-10-15', 'Title for dish_97', 0, 'Short description for Dish_97', 'A slightly longer description for Dish_97', 'Dish_97'),
(99, 98, 98, 44, '2020-10-15', 'Title for dish_98', 0, 'Short description for Dish_98', 'A slightly longer description for Dish_98', 'Dish_98'),
(100, 99, 99, 36, '2020-10-15', 'Title for dish_99', 0, 'Short description for Dish_99', 'A slightly longer description for Dish_99', 'Dish_99'),
(101, 100, 100, 27, '2020-10-15', 'Title for dish_100', 0, 'Short description for Dish_100', 'A slightly longer description for Dish_100', 'Dish_100');

-- --------------------------------------------------------

--
-- Table structure for table `DISH_INFO`
--

CREATE TABLE `DISH_INFO` (
  `ID` int(11) NOT NULL,
  `record_type` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `dish_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numeric_field` int(11) DEFAULT NULL,
  `text_field` text COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `DISH_INFO`
--

INSERT INTO `DISH_INFO` (`ID`, `record_type`, `dish_id`, `user_id`, `date`, `numeric_field`, `text_field`) VALUES
(11, 'preparation', 4, NULL, '2020-10-15', 1, 'Stap 1'),
(12, 'preparation', 4, NULL, '2020-10-15', 2, 'Stap 2'),
(13, 'comment', 4, 2, '2020-10-16', NULL, 'Opmerking #1'),
(14, 'rating', 4, NULL, '2020-10-16', 2, NULL),
(15, 'favourite', 4, 2, '2020-10-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FOOD_ITEM`
--

CREATE TABLE `FOOD_ITEM` (
  `ID` int(11) NOT NULL,
  `food_item_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `calories` double NOT NULL,
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `FOOD_ITEM`
--

INSERT INTO `FOOD_ITEM` (`ID`, `food_item_id`, `name`, `price`, `unit`, `description`, `calories`, `image`) VALUES
(1, 1, 'food_item_1', 10, 'theelepels', 'description of food_item_1', 15, 'text.jpg'),
(2, 2, 'food_item_2', 10, 'theelepels', 'description of food_item_2', 15, 'text.jpg'),
(3, 3, 'food_item_3', 10, 'gram', 'description of food_item_3', 15, 'text.jpg'),
(4, 4, 'food_item_4', 10, 'theelepels', 'description of food_item_4', 15, 'text.jpg'),
(5, 5, 'food_item_5', 10, 'kilo', 'description of food_item_5', 15, 'text.jpg'),
(6, 6, 'food_item_6', 10, 'kilo', 'description of food_item_6', 15, 'text.jpg'),
(7, 7, 'food_item_7', 10, 'theelepels', 'description of food_item_7', 15, 'text.jpg'),
(8, 8, 'food_item_8', 10, 'kilo', 'description of food_item_8', 15, 'text.jpg'),
(9, 9, 'food_item_9', 10, 'kilo', 'description of food_item_9', 15, 'text.jpg'),
(10, 10, 'food_item_10', 10, 'kilo', 'description of food_item_10', 15, 'text.jpg'),
(11, 11, 'food_item_11', 10, 'kilo', 'description of food_item_11', 15, 'text.jpg'),
(12, 12, 'food_item_12', 10, 'gram', 'description of food_item_12', 15, 'text.jpg'),
(13, 13, 'food_item_13', 10, 'theelepels', 'description of food_item_13', 15, 'text.jpg'),
(14, 14, 'food_item_14', 10, 'kilo', 'description of food_item_14', 15, 'text.jpg'),
(15, 15, 'food_item_15', 10, 'kilo', 'description of food_item_15', 15, 'text.jpg'),
(16, 16, 'food_item_16', 10, 'gram', 'description of food_item_16', 15, 'text.jpg'),
(17, 17, 'food_item_17', 10, 'theelepels', 'description of food_item_17', 15, 'text.jpg'),
(18, 18, 'food_item_18', 10, 'theelepels', 'description of food_item_18', 15, 'text.jpg'),
(19, 19, 'food_item_19', 10, 'theelepels', 'description of food_item_19', 15, 'text.jpg'),
(20, 20, 'food_item_20', 10, 'gram', 'description of food_item_20', 15, 'text.jpg'),
(21, 21, 'food_item_21', 10, 'kilo', 'description of food_item_21', 15, 'text.jpg'),
(22, 22, 'food_item_22', 10, 'kilo', 'description of food_item_22', 15, 'text.jpg'),
(23, 23, 'food_item_23', 10, 'kilo', 'description of food_item_23', 15, 'text.jpg'),
(24, 24, 'food_item_24', 10, 'gram', 'description of food_item_24', 15, 'text.jpg'),
(25, 25, 'food_item_25', 10, 'gram', 'description of food_item_25', 15, 'text.jpg'),
(26, 26, 'food_item_26', 10, 'kilo', 'description of food_item_26', 15, 'text.jpg'),
(27, 27, 'food_item_27', 10, 'gram', 'description of food_item_27', 15, 'text.jpg'),
(28, 28, 'food_item_28', 10, 'theelepels', 'description of food_item_28', 15, 'text.jpg'),
(29, 29, 'food_item_29', 10, 'theelepels', 'description of food_item_29', 15, 'text.jpg'),
(30, 30, 'food_item_30', 10, 'theelepels', 'description of food_item_30', 15, 'text.jpg'),
(31, 31, 'food_item_31', 10, 'kilo', 'description of food_item_31', 15, 'text.jpg'),
(32, 32, 'food_item_32', 10, 'gram', 'description of food_item_32', 15, 'text.jpg'),
(33, 33, 'food_item_33', 10, 'theelepels', 'description of food_item_33', 15, 'text.jpg'),
(34, 34, 'food_item_34', 10, 'gram', 'description of food_item_34', 15, 'text.jpg'),
(35, 35, 'food_item_35', 10, 'gram', 'description of food_item_35', 15, 'text.jpg'),
(36, 36, 'food_item_36', 10, 'theelepels', 'description of food_item_36', 15, 'text.jpg'),
(37, 37, 'food_item_37', 10, 'theelepels', 'description of food_item_37', 15, 'text.jpg'),
(38, 38, 'food_item_38', 10, 'theelepels', 'description of food_item_38', 15, 'text.jpg'),
(39, 39, 'food_item_39', 10, 'kilo', 'description of food_item_39', 15, 'text.jpg'),
(40, 40, 'food_item_40', 10, 'theelepels', 'description of food_item_40', 15, 'text.jpg'),
(41, 41, 'food_item_41', 10, 'gram', 'description of food_item_41', 15, 'text.jpg'),
(42, 42, 'food_item_42', 10, 'kilo', 'description of food_item_42', 15, 'text.jpg'),
(43, 43, 'food_item_43', 10, 'kilo', 'description of food_item_43', 15, 'text.jpg'),
(44, 44, 'food_item_44', 10, 'theelepels', 'description of food_item_44', 15, 'text.jpg'),
(45, 45, 'food_item_45', 10, 'gram', 'description of food_item_45', 15, 'text.jpg'),
(46, 46, 'food_item_46', 10, 'theelepels', 'description of food_item_46', 15, 'text.jpg'),
(47, 47, 'food_item_47', 10, 'gram', 'description of food_item_47', 15, 'text.jpg'),
(48, 48, 'food_item_48', 10, 'kilo', 'description of food_item_48', 15, 'text.jpg'),
(49, 49, 'food_item_49', 10, 'kilo', 'description of food_item_49', 15, 'text.jpg'),
(50, 50, 'food_item_50', 10, 'kilo', 'description of food_item_50', 15, 'text.jpg'),
(51, 51, 'food_item_51', 10, 'theelepels', 'description of food_item_51', 15, 'text.jpg'),
(52, 52, 'food_item_52', 10, 'theelepels', 'description of food_item_52', 15, 'text.jpg'),
(53, 53, 'food_item_53', 10, 'theelepels', 'description of food_item_53', 15, 'text.jpg'),
(54, 54, 'food_item_54', 10, 'theelepels', 'description of food_item_54', 15, 'text.jpg'),
(55, 55, 'food_item_55', 10, 'theelepels', 'description of food_item_55', 15, 'text.jpg'),
(56, 56, 'food_item_56', 10, 'theelepels', 'description of food_item_56', 15, 'text.jpg'),
(57, 57, 'food_item_57', 10, 'theelepels', 'description of food_item_57', 15, 'text.jpg'),
(58, 58, 'food_item_58', 10, 'gram', 'description of food_item_58', 15, 'text.jpg'),
(59, 59, 'food_item_59', 10, 'kilo', 'description of food_item_59', 15, 'text.jpg'),
(60, 60, 'food_item_60', 10, 'theelepels', 'description of food_item_60', 15, 'text.jpg'),
(61, 61, 'food_item_61', 10, 'gram', 'description of food_item_61', 15, 'text.jpg'),
(62, 62, 'food_item_62', 10, 'kilo', 'description of food_item_62', 15, 'text.jpg'),
(63, 63, 'food_item_63', 10, 'theelepels', 'description of food_item_63', 15, 'text.jpg'),
(64, 64, 'food_item_64', 10, 'kilo', 'description of food_item_64', 15, 'text.jpg'),
(65, 65, 'food_item_65', 10, 'gram', 'description of food_item_65', 15, 'text.jpg'),
(66, 66, 'food_item_66', 10, 'theelepels', 'description of food_item_66', 15, 'text.jpg'),
(67, 67, 'food_item_67', 10, 'gram', 'description of food_item_67', 15, 'text.jpg'),
(68, 68, 'food_item_68', 10, 'kilo', 'description of food_item_68', 15, 'text.jpg'),
(69, 69, 'food_item_69', 10, 'theelepels', 'description of food_item_69', 15, 'text.jpg'),
(70, 70, 'food_item_70', 10, 'theelepels', 'description of food_item_70', 15, 'text.jpg'),
(71, 71, 'food_item_71', 10, 'gram', 'description of food_item_71', 15, 'text.jpg'),
(72, 72, 'food_item_72', 10, 'theelepels', 'description of food_item_72', 15, 'text.jpg'),
(73, 73, 'food_item_73', 10, 'theelepels', 'description of food_item_73', 15, 'text.jpg'),
(74, 74, 'food_item_74', 10, 'theelepels', 'description of food_item_74', 15, 'text.jpg'),
(75, 75, 'food_item_75', 10, 'kilo', 'description of food_item_75', 15, 'text.jpg'),
(76, 76, 'food_item_76', 10, 'kilo', 'description of food_item_76', 15, 'text.jpg'),
(77, 77, 'food_item_77', 10, 'gram', 'description of food_item_77', 15, 'text.jpg'),
(78, 78, 'food_item_78', 10, 'kilo', 'description of food_item_78', 15, 'text.jpg'),
(79, 79, 'food_item_79', 10, 'theelepels', 'description of food_item_79', 15, 'text.jpg'),
(80, 80, 'food_item_80', 10, 'gram', 'description of food_item_80', 15, 'text.jpg'),
(81, 81, 'food_item_81', 10, 'theelepels', 'description of food_item_81', 15, 'text.jpg'),
(82, 82, 'food_item_82', 10, 'kilo', 'description of food_item_82', 15, 'text.jpg'),
(83, 83, 'food_item_83', 10, 'gram', 'description of food_item_83', 15, 'text.jpg'),
(84, 84, 'food_item_84', 10, 'theelepels', 'description of food_item_84', 15, 'text.jpg'),
(85, 85, 'food_item_85', 10, 'kilo', 'description of food_item_85', 15, 'text.jpg'),
(86, 86, 'food_item_86', 10, 'gram', 'description of food_item_86', 15, 'text.jpg'),
(87, 87, 'food_item_87', 10, 'kilo', 'description of food_item_87', 15, 'text.jpg'),
(88, 88, 'food_item_88', 10, 'theelepels', 'description of food_item_88', 15, 'text.jpg'),
(89, 89, 'food_item_89', 10, 'gram', 'description of food_item_89', 15, 'text.jpg'),
(90, 90, 'food_item_90', 10, 'gram', 'description of food_item_90', 15, 'text.jpg'),
(91, 91, 'food_item_91', 10, 'kilo', 'description of food_item_91', 15, 'text.jpg'),
(92, 92, 'food_item_92', 10, 'gram', 'description of food_item_92', 15, 'text.jpg'),
(93, 93, 'food_item_93', 10, 'theelepels', 'description of food_item_93', 15, 'text.jpg'),
(94, 94, 'food_item_94', 10, 'kilo', 'description of food_item_94', 15, 'text.jpg'),
(95, 95, 'food_item_95', 10, 'theelepels', 'description of food_item_95', 15, 'text.jpg'),
(96, 96, 'food_item_96', 10, 'kilo', 'description of food_item_96', 15, 'text.jpg'),
(97, 97, 'food_item_97', 10, 'theelepels', 'description of food_item_97', 15, 'text.jpg'),
(98, 98, 'food_item_98', 10, 'kilo', 'description of food_item_98', 15, 'text.jpg'),
(99, 99, 'food_item_99', 10, 'theelepels', 'description of food_item_99', 15, 'text.jpg'),
(100, 100, 'food_item_100', 10, 'theelepels', 'description of food_item_100', 15, 'text.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `GROCERY_LIST`
--

CREATE TABLE `GROCERY_LIST` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `GROCERY_LIST`
--

INSERT INTO `GROCERY_LIST` (`ID`, `user_id`, `ingredient_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `GROCERY_LIST_INGREDIENT`
--

CREATE TABLE `GROCERY_LIST_INGREDIENT` (
  `ID` int(11) NOT NULL,
  `grocery_list_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `GROCERY_LIST_INGREDIENT`
--

INSERT INTO `GROCERY_LIST_INGREDIENT` (`ID`, `grocery_list_id`, `ingredient_id`, `amount`) VALUES
(1, 1, 2, 1),
(2, 1, 1, 2),
(4, 1, 3, 9),
(5, 1, 4, 17),
(6, 1, 7, 38),
(7, 2, 3, 4),
(8, 2, 4, 16),
(9, 2, 7, 37);

-- --------------------------------------------------------

--
-- Table structure for table `INGREDIENT`
--

CREATE TABLE `INGREDIENT` (
  `ID` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `food_item_id` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `INGREDIENT`
--

INSERT INTO `INGREDIENT` (`ID`, `dish_id`, `food_item_id`, `amount`) VALUES
(3, 3, 1, 4),
(4, 3, 2, 16),
(6, 2, 78, 43),
(7, 3, 77, 37),
(8, 4, 22, 66),
(9, 5, 44, 84),
(10, 6, 77, 32),
(11, 7, 98, 86),
(12, 8, 26, 68),
(13, 9, 90, 47),
(14, 10, 54, 93),
(15, 11, 50, 19),
(16, 12, 89, 52),
(17, 13, 69, 68),
(18, 14, 92, 56),
(19, 15, 54, 66),
(20, 16, 94, 65),
(21, 17, 35, 69),
(22, 18, 28, 92),
(23, 19, 24, 96),
(24, 20, 54, 73),
(25, 21, 70, 4),
(26, 22, 66, 30),
(27, 23, 99, 2),
(28, 24, 45, 100),
(29, 25, 5, 72),
(30, 26, 38, 4),
(31, 27, 37, 99),
(32, 28, 39, 29),
(33, 29, 82, 29),
(34, 30, 5, 17),
(35, 31, 25, 52),
(36, 32, 73, 67),
(37, 33, 27, 11),
(38, 34, 66, 65),
(39, 35, 81, 26),
(40, 36, 25, 1),
(41, 37, 31, 76),
(42, 38, 22, 40),
(43, 39, 97, 82),
(44, 40, 76, 18),
(45, 41, 52, 27),
(46, 42, 40, 98),
(47, 43, 75, 62),
(48, 44, 100, 24),
(49, 45, 22, 30),
(50, 46, 36, 95),
(51, 47, 39, 43),
(52, 48, 62, 22),
(53, 49, 51, 86),
(54, 50, 23, 23),
(55, 51, 70, 73),
(56, 52, 56, 49),
(57, 53, 20, 96),
(58, 54, 71, 98),
(59, 55, 51, 72),
(60, 56, 31, 87),
(61, 57, 35, 22),
(62, 58, 58, 56),
(63, 59, 54, 73),
(64, 60, 61, 60),
(65, 61, 67, 57),
(66, 62, 13, 51),
(67, 63, 94, 44),
(68, 64, 58, 67),
(69, 65, 79, 27),
(70, 66, 28, 60),
(71, 67, 8, 20),
(72, 68, 27, 63),
(73, 69, 22, 5),
(74, 70, 72, 90),
(75, 71, 67, 56),
(76, 72, 33, 42),
(77, 73, 65, 95),
(78, 74, 52, 85),
(79, 75, 100, 15),
(80, 76, 20, 65),
(81, 77, 5, 34),
(82, 78, 80, 40),
(83, 79, 45, 94),
(84, 80, 45, 36),
(85, 81, 92, 73),
(86, 82, 5, 44),
(87, 83, 98, 81),
(88, 84, 4, 20),
(89, 85, 81, 69),
(90, 86, 69, 93),
(91, 87, 49, 93),
(92, 88, 75, 36),
(93, 89, 45, 56),
(94, 90, 71, 29),
(95, 91, 18, 35),
(96, 92, 26, 12),
(97, 93, 2, 34),
(98, 94, 1, 21),
(99, 95, 6, 8),
(100, 96, 77, 30),
(101, 97, 41, 38),
(102, 98, 53, 45),
(103, 99, 79, 44),
(104, 100, 77, 63);

-- --------------------------------------------------------

--
-- Table structure for table `KITCHEN_TYPE`
--

CREATE TABLE `KITCHEN_TYPE` (
  `ID` int(11) NOT NULL,
  `record_type` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `text_field` varchar(25) COLLATE latin1_general_ci NOT NULL COMMENT 'Tekstveld voor keuken- of typenaam'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `KITCHEN_TYPE`
--

INSERT INTO `KITCHEN_TYPE` (`ID`, `record_type`, `description`, `text_field`) VALUES
(1, 'kitchen', '', 'Asian'),
(2, 'type', '', 'vegetarian');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`ID`, `user_name`, `password`, `email`, `image`) VALUES
(1, 'user_1', 'Qwerty1', 'user1@example.com', 'image1'),
(2, 'user_2', 'Qwerty2', 'user2@example.com', 'image2'),
(3, 'user_3', 'Qwerty3', 'user3@example.com', 'image3'),
(4, 'user_4', 'Qwerty4', 'user4@example.com', 'image4'),
(5, 'user_5', 'Qwerty5', 'user5@example.com', 'image5'),
(6, 'user_6', 'Qwerty6', 'user6@example.com', 'image6'),
(7, 'user_7', 'Qwerty7', 'user7@example.com', 'image7'),
(8, 'user_8', 'Qwerty8', 'user8@example.com', 'image8'),
(9, 'user_9', 'Qwerty9', 'user9@example.com', 'image9'),
(10, 'user_10', 'Qwerty10', 'user10@example.com', 'image10'),
(11, 'user_11', 'Qwerty11', 'user11@example.com', 'image11'),
(12, 'user_12', 'Qwerty12', 'user12@example.com', 'image12'),
(13, 'user_13', 'Qwerty13', 'user13@example.com', 'image13'),
(14, 'user_14', 'Qwerty14', 'user14@example.com', 'image14'),
(15, 'user_15', 'Qwerty15', 'user15@example.com', 'image15'),
(16, 'user_16', 'Qwerty16', 'user16@example.com', 'image16'),
(17, 'user_17', 'Qwerty17', 'user17@example.com', 'image17'),
(18, 'user_18', 'Qwerty18', 'user18@example.com', 'image18'),
(19, 'user_19', 'Qwerty19', 'user19@example.com', 'image19'),
(20, 'user_20', 'Qwerty20', 'user20@example.com', 'image20'),
(21, 'user_21', 'Qwerty21', 'user21@example.com', 'image21'),
(22, 'user_22', 'Qwerty22', 'user22@example.com', 'image22'),
(23, 'user_23', 'Qwerty23', 'user23@example.com', 'image23'),
(24, 'user_24', 'Qwerty24', 'user24@example.com', 'image24'),
(25, 'user_25', 'Qwerty25', 'user25@example.com', 'image25'),
(26, 'user_26', 'Qwerty26', 'user26@example.com', 'image26'),
(27, 'user_27', 'Qwerty27', 'user27@example.com', 'image27'),
(28, 'user_28', 'Qwerty28', 'user28@example.com', 'image28'),
(29, 'user_29', 'Qwerty29', 'user29@example.com', 'image29'),
(30, 'user_30', 'Qwerty30', 'user30@example.com', 'image30'),
(31, 'user_31', 'Qwerty31', 'user31@example.com', 'image31'),
(32, 'user_32', 'Qwerty32', 'user32@example.com', 'image32'),
(33, 'user_33', 'Qwerty33', 'user33@example.com', 'image33'),
(34, 'user_34', 'Qwerty34', 'user34@example.com', 'image34'),
(35, 'user_35', 'Qwerty35', 'user35@example.com', 'image35'),
(36, 'user_36', 'Qwerty36', 'user36@example.com', 'image36'),
(37, 'user_37', 'Qwerty37', 'user37@example.com', 'image37'),
(38, 'user_38', 'Qwerty38', 'user38@example.com', 'image38'),
(39, 'user_39', 'Qwerty39', 'user39@example.com', 'image39'),
(40, 'user_40', 'Qwerty40', 'user40@example.com', 'image40'),
(41, 'user_41', 'Qwerty41', 'user41@example.com', 'image41'),
(42, 'user_42', 'Qwerty42', 'user42@example.com', 'image42'),
(43, 'user_43', 'Qwerty43', 'user43@example.com', 'image43'),
(44, 'user_44', 'Qwerty44', 'user44@example.com', 'image44'),
(45, 'user_45', 'Qwerty45', 'user45@example.com', 'image45'),
(46, 'user_46', 'Qwerty46', 'user46@example.com', 'image46'),
(47, 'user_47', 'Qwerty47', 'user47@example.com', 'image47'),
(48, 'user_48', 'Qwerty48', 'user48@example.com', 'image48'),
(49, 'user_49', 'Qwerty49', 'user49@example.com', 'image49'),
(50, 'user_50', 'Qwerty50', 'user50@example.com', 'image50'),
(51, 'user_51', 'Qwerty51', 'user51@example.com', 'image51'),
(52, 'user_52', 'Qwerty52', 'user52@example.com', 'image52'),
(53, 'user_53', 'Qwerty53', 'user53@example.com', 'image53'),
(54, 'user_54', 'Qwerty54', 'user54@example.com', 'image54'),
(55, 'user_55', 'Qwerty55', 'user55@example.com', 'image55'),
(56, 'user_56', 'Qwerty56', 'user56@example.com', 'image56'),
(57, 'user_57', 'Qwerty57', 'user57@example.com', 'image57'),
(58, 'user_58', 'Qwerty58', 'user58@example.com', 'image58'),
(59, 'user_59', 'Qwerty59', 'user59@example.com', 'image59'),
(60, 'user_60', 'Qwerty60', 'user60@example.com', 'image60'),
(61, 'user_61', 'Qwerty61', 'user61@example.com', 'image61'),
(62, 'user_62', 'Qwerty62', 'user62@example.com', 'image62'),
(63, 'user_63', 'Qwerty63', 'user63@example.com', 'image63'),
(64, 'user_64', 'Qwerty64', 'user64@example.com', 'image64'),
(65, 'user_65', 'Qwerty65', 'user65@example.com', 'image65'),
(66, 'user_66', 'Qwerty66', 'user66@example.com', 'image66'),
(67, 'user_67', 'Qwerty67', 'user67@example.com', 'image67'),
(68, 'user_68', 'Qwerty68', 'user68@example.com', 'image68'),
(69, 'user_69', 'Qwerty69', 'user69@example.com', 'image69'),
(70, 'user_70', 'Qwerty70', 'user70@example.com', 'image70'),
(71, 'user_71', 'Qwerty71', 'user71@example.com', 'image71'),
(72, 'user_72', 'Qwerty72', 'user72@example.com', 'image72'),
(73, 'user_73', 'Qwerty73', 'user73@example.com', 'image73'),
(74, 'user_74', 'Qwerty74', 'user74@example.com', 'image74'),
(75, 'user_75', 'Qwerty75', 'user75@example.com', 'image75'),
(76, 'user_76', 'Qwerty76', 'user76@example.com', 'image76'),
(77, 'user_77', 'Qwerty77', 'user77@example.com', 'image77'),
(78, 'user_78', 'Qwerty78', 'user78@example.com', 'image78'),
(79, 'user_79', 'Qwerty79', 'user79@example.com', 'image79'),
(80, 'user_80', 'Qwerty80', 'user80@example.com', 'image80'),
(81, 'user_81', 'Qwerty81', 'user81@example.com', 'image81'),
(82, 'user_82', 'Qwerty82', 'user82@example.com', 'image82'),
(83, 'user_83', 'Qwerty83', 'user83@example.com', 'image83'),
(84, 'user_84', 'Qwerty84', 'user84@example.com', 'image84'),
(85, 'user_85', 'Qwerty85', 'user85@example.com', 'image85'),
(86, 'user_86', 'Qwerty86', 'user86@example.com', 'image86'),
(87, 'user_87', 'Qwerty87', 'user87@example.com', 'image87'),
(88, 'user_88', 'Qwerty88', 'user88@example.com', 'image88'),
(89, 'user_89', 'Qwerty89', 'user89@example.com', 'image89'),
(90, 'user_90', 'Qwerty90', 'user90@example.com', 'image90'),
(91, 'user_91', 'Qwerty91', 'user91@example.com', 'image91'),
(92, 'user_92', 'Qwerty92', 'user92@example.com', 'image92'),
(93, 'user_93', 'Qwerty93', 'user93@example.com', 'image93'),
(94, 'user_94', 'Qwerty94', 'user94@example.com', 'image94'),
(95, 'user_95', 'Qwerty95', 'user95@example.com', 'image95'),
(96, 'user_96', 'Qwerty96', 'user96@example.com', 'image96'),
(97, 'user_97', 'Qwerty97', 'user97@example.com', 'image97'),
(98, 'user_98', 'Qwerty98', 'user98@example.com', 'image98'),
(99, 'user_99', 'Qwerty99', 'user99@example.com', 'image99'),
(100, 'user_100', 'Qwerty100', 'user100@example.com', 'image100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DISH`
--
ALTER TABLE `DISH`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `kitchen_id` (`kitchen_id`,`type_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `DISH_INFO`
--
ALTER TABLE `DISH_INFO`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `FOOD_ITEM`
--
ALTER TABLE `FOOD_ITEM`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Id` (`ID`),
  ADD UNIQUE KEY `Food_Item_Id` (`food_item_id`);

--
-- Indexes for table `GROCERY_LIST`
--
ALTER TABLE `GROCERY_LIST`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GROCERY_LIST_INGREDIENT`
--
ALTER TABLE `GROCERY_LIST_INGREDIENT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `INGREDIENT`
--
ALTER TABLE `INGREDIENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `food_item_id` (`food_item_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `KITCHEN_TYPE`
--
ALTER TABLE `KITCHEN_TYPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Id` (`ID`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DISH`
--
ALTER TABLE `DISH`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `DISH_INFO`
--
ALTER TABLE `DISH_INFO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `FOOD_ITEM`
--
ALTER TABLE `FOOD_ITEM`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `GROCERY_LIST`
--
ALTER TABLE `GROCERY_LIST`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `GROCERY_LIST_INGREDIENT`
--
ALTER TABLE `GROCERY_LIST_INGREDIENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `INGREDIENT`
--
ALTER TABLE `INGREDIENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `KITCHEN_TYPE`
--
ALTER TABLE `KITCHEN_TYPE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DISH_INFO`
--
ALTER TABLE `DISH_INFO`
  ADD CONSTRAINT `DISH_INFO_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `DISH` (`ID`);

--
-- Constraints for table `INGREDIENT`
--
ALTER TABLE `INGREDIENT`
  ADD CONSTRAINT `INGREDIENT_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `DISH` (`ID`),
  ADD CONSTRAINT `INGREDIENT_ibfk_3` FOREIGN KEY (`food_item_id`) REFERENCES `FOOD_ITEM` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
