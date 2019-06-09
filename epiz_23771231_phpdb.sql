-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql112.epizy.com
-- Generation Time: Jun 09, 2019 at 04:33 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_23771231_phpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`, `Name`, `Email`, `Phone`) VALUES
('amin', 'admin', 'admin', 'admin@gmail.com', '123456789123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CateId` int(20) NOT NULL AUTO_INCREMENT,
  `CateName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CateId`),
  KEY `CateId` (`CateId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CateId`, `CateName`) VALUES
(1, 'Hoa Hồng'),
(2, 'Hoa Lan'),
(3, 'Hoa Tulip'),
(5, 'Hoa Phong Lan');

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

CREATE TABLE IF NOT EXISTS `oder` (
  `OderId` int(20) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `OderDate` datetime NOT NULL,
  `Status` int(1) NOT NULL,
  `ConsigneeName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ConsigneePhone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ConsigneeAdd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UsersId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`OderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`OderId`, `Email`, `OderDate`, `Status`, `ConsigneeName`, `ConsigneePhone`, `ConsigneeAdd`, `UsersId`) VALUES
(1, 'hoangtusitinh93000@gmail.com', '2019-06-04 04:58:27', 0, 'Kakaku Le', '01239924677', 'q12, tphcm', '6');

-- --------------------------------------------------------

--
-- Table structure for table `oderdetail`
--

CREATE TABLE IF NOT EXISTS `oderdetail` (
  `OderId` int(20) NOT NULL AUTO_INCREMENT,
  `ProId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`OderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProId` int(50) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ProDescription` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProPrice` int(11) DEFAULT NULL,
  `ProImg` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CateId` int(20) NOT NULL,
  `PubId` int(20) NOT NULL,
  PRIMARY KEY (`ProId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProId`, `ProName`, `ProDescription`, `ProPrice`, `ProImg`, `CateId`, `PubId`) VALUES
(1, 'Hoa Thiên Lý 1', 'Loài hoa mang tên thiên lý mang vẽ đẹp sắc xảo được mọi người yêu thích', 699999, '1.jpg', 1, 1),
(2, 'Hoa Thiên Lý 2', 'Loài hoa mang tên thiên lý mang vẽ đẹp sắc xảo được mọi người yêu thích', 699999, '2.jpg', 1, 1),
(3, 'Hoa Thiên Lý 3', 'Loài hoa mang tên thiên lý mang vẽ đẹp sắc xảo được mọi người yêu thích', 699999, '3.jpg', 1, 1),
(17, 'Hoa Lan Trắng 32', 'Loài hoa được nhiều người yêu thích ', 123456, '481904.jpg', 1, 1),
(20, 'Tulip', 'hoa Tulip', 3333333, 'hoaaa_k.jpg', 3, 2),
(21, 'Tulip Nhật', 'hoa Tulip', 3333333, '243116.jpg', 3, 1),
(22, 'Lúa', 'Lúa', 333444, 'Digital_World_(31).jpg', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `PubId` int(20) NOT NULL AUTO_INCREMENT,
  `PubName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PubId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PubId`, `PubName`) VALUES
(1, 'ChinaFlower'),
(2, 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UsersID` int(20) NOT NULL AUTO_INCREMENT,
  `UsersName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UsersAdress` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `UsersPhone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `UsersPassword` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UsersEmail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UserRole` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UsersID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UsersID`, `UsersName`, `UsersAdress`, `UsersPhone`, `UsersPassword`, `UsersEmail`, `UserRole`, `code`) VALUES
(1, 'adminn', 'admin', '12345678910', '123456', 'admin@gmail.com', 0, ''),
(8, 'longyeu985', 'q12. tp hcm', '012635498', '123456', 'lekaku985@gmail.com', 0, '8d630b6794a1b4e62c3ed1e3e90c95b6'),
(6, 'Kakaku Le', '', '', NULL, 'hoangtusitinh93000@gmail.com', 0, '1067a25f3f4a2ca85eb1020badfc7b56'),
(9, 'longyeu986', 'q12tphcm', '0123456789', '123456', 'levanlong9855@gmail.com', 0, ''),
(10, 'a le', '', '', NULL, 'lxhoaithanh1@gmail.com', 0, '1837998a1a9b0134f46ec9ca07ad833c');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
