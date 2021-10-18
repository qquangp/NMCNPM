-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 07:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_mvc_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`) VALUES
(1, 'LeHongQuang', '18127190@student.hcmus.edu.vn', '18127190', '8cebfc0985c750d3a00b0c426523f0b0'),
(2, 'LeThiThuyDuong', 'haha@gmail.com', 'thuyduong', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Hermes'),
(2, 'Chanel'),
(3, 'Dior'),
(4, 'Louis Vuitton'),
(5, 'YSL'),
(6, 'Celine'),
(7, 'Dolce &amp; Gabbana'),
(8, 'Gucci'),
(16, 'Prada');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(23, 23, 'a2e88rckvhcvimh5nigm4actfv', 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', '1350000', 1, '24af523530.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Jackets'),
(2, 'Pants'),
(3, 'Shorts'),
(4, 'T-Shirts'),
(5, 'Dresses'),
(6, 'Sweaters');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'ThuyDuong', 'Long An', 'TPHCM', 'VietNam', 'No', '0899795714', 'thuyduong@gmai.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Hiếu Programming ', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Thành phố Hồ Chí Minh', 'hcm', '700000', '0932023992', 'truongngoctanhieu2018@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Lê Hồng Quang', '107C, Chợ Quán Apartment,Ward 1, District , Ho Chi Minh City, Vietnam', 'Hồ Chí Minh City', 'hcm', '7000', '0869690213', '18127190@student.hcmus.edu.vn', '9ea04374c01e81fcb68912c7cce3c9d0'),
(8, 'nguyen an', '225 nguyen van cu', 'TPHCM', 'hcm', '10000', '0899795711', 'nguyenan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(84, 38, 'Pants yellow Men', 8, 1, '100', 'ec6d74c837.jpg', 2, '2021-05-14 21:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `gender`, `price`, `image`) VALUES
(30, 'Chanel No 5', '', '', '0', '', 5, 2, '<p>Jorja Natural Linen Midi Dress</p>\r\n<p>Natural beige linen fabrication<br />Long sleeve midi dress<br />High round neckline<br />Elastic shirred bodice<br />Elasticated waist<br />Shirred frill wrist<br />Backless feature<br />Adjustable tie closure at back of neck<br />Unlined non-sheer, non-stretch fabric<br />Please see fabric swatch for most accurate color<br />MATERIAL: 100% Linen</p>', 0, 0, '150000', 'c82614c77f.jpg'),
(31, 'Jennie', '', '', '0', '', 2, 1, '<p>Norah Steel Linen Pant<br />Steel blue 100% linen fabrication<br />Long line style, wide leg trouser<br />High waisted pant<br />Pleated, tailored fit<br />Straight leg<br />Clasp and fly closure<br />Lined non-sheer<br />Non-stretch fabric<br />Please see fabric swatch for most accurate colour<br />MATERIAL: 100% Linen</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -43px; top: 21.8px;\">&nbsp;</div>', 0, 1, '100000', '2574f0c96f.jpg'),
(34, 'Pink Men', '', '', '0', '', 1, 7, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -46px; top: -20px;\">&nbsp;</div>', 0, 1, '70000', '1247be2844.jpg'),
(35, 'Red Men', '', '', '0', '', 1, 4, '<p>Jockey Men\'s Size Guide<br />A wardrobe essential.<br />Classic fit.<br />STAYNEW&trade; technology reduces pilling and fading so underwear will look and feel new, wash after wash.<br />Diamond White&reg; keeps whites looking whiter wash after wash.<br />Short-sleeve T-shirt is fabricated from combed cotton jersey with a stay-dry finish.<br />Reinforced crew neckline.<br />Three per pack.<br />Style #9953.<br />100% cotton.<br />Machine wash warm, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />If you\'re not fully satisfied with your purchase, you are welcome to return any unworn and unwashed items with tags intact and original packaging included.<br />Measurements:<br />Length: 30 in</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -105px; top: -20px;\">&nbsp;</div>', 0, 1, '200000', 'd3cb62c9f1.jpg'),
(36, 'Black Men', '', '', '0', '', 1, 2, '<p>Nike Men\'s Size Guide<br />Enjoy a little downtime between hardcore training sessions with the NSW Club Hoodie Pullover.<br />Regular fit is relaxed, but not sloppy, and perfect for workouts or everyday activities.<br />Cotton-poly fleece boasts a soft hand.<br />Three-panel hood with adjustable drawstring.<br />Pullover design.<br />Long-sleeve coverage.<br />Kangaroo hand pocket.<br />Brand mark embroidered at upper left chest.<br />Rib knit cuffs and straight hem.<br />80% cotton, 20% polyester.<br />Machine wash, tumble dry.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 in<br />Chest Measurement: 48 in<br />Sleeve Length: 33 in</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -54px; top: -20px;\">&nbsp;</div>', 0, 1, '200000', '7686e63be4.jpg'),
(37, 'Blue Men', '', '', '0', '', 1, 16, '<p>Nike Men\'s Size Guide<br />Stay warm in the Nike&reg; Therma Hoodie Baseball, constructed of fabric that helps your body retain its own heat on chilly days, while sweat-wicking Dri-FIT&trade; technology also helps keep you dry and comfortable on or off the diamond.<br />Nike&reg; Therma fabric helps keep you warm.<br />Nike Dri-FIT&reg; sweat-wicking technology helps you stay dry, comfortable and focused.<br />Standard fit for a relaxed, easy feel.<br />Adjustable drawcord on hood.<br />Front pocket.<br />Long sleeves with banded cuffs.<br />Straight banded hemline.<br />100% polyester.<br />Machine wash, tumble dry low.<br />Imported.</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -64px; top: -20px;\">&nbsp;</div>', 0, 1, '150000', '3d22059328.jpg'),
(38, 'Pants yellow Men', '', '', '0', '', 2, 1, '<p>The Nike&reg; Golf Flex UV Chino Pants offer that tailored but laid back look all at once and will have you feeling great with relaxed fit and soft stretch feel.<br />Features a zip fly and top button with multiple pockets for ample storage.<br />This unique fabric wicks away sweat to keep you dry and it stretches to allow easy movement on and off the course.<br />51% cotton, 45% polyester, 4% spandex.<br />Machine wash cold, hang to dry.<br />Imported.<br />Product measurements were taken using size 30, inseam 32. Please note that measurements may vary by size.<br />Measurements:<br />Waist Measurement: 32 in<br />Outseam: 42 in<br />Inseam: 32 in<br />Front Rise: 12 in<br />Back Rise: 14 in<br />Leg Opening: 14 in</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -55px; top: 21.8px;\">&nbsp;</div>', 0, 1, '200000', 'ec6d74c837.jpg'),
(39, 'Pants Caro Men', '', '', '0', '', 2, 2, '<p>The Nike&reg; Golf Flex UV Chino Pants offer that tailored but laid back look all at once and will have you feeling great with relaxed fit and soft stretch feel.<br />Features a zip fly and top button with multiple pockets for ample storage.<br />This unique fabric wicks away sweat to keep you dry and it stretches to allow easy movement on and off the course.<br />51% cotton, 45% polyester, 4% spandex.<br />Machine wash cold, hang to dry.<br />Imported.<br />Product measurements were taken using size 30, inseam 32. Please note that measurements may vary by size.<br />Measurements:<br />Waist Measurement: 32 in<br />Outseam: 42 in<br />Inseam: 32 in<br />Front Rise: 12 in<br />Back Rise: 14 in<br />Leg Opening: 14 in</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -29px; top: 21.8px;\">&nbsp;</div>', 0, 1, '150000', '1b8b52b9fb.jpg'),
(40, 'Short Blue Men', '', '', '0', '', 3, 2, '<p>The Oakley&reg; Take Pro Pants 3.0 offer a dapper finish to your style.<br />Fitted waist with belt loops.<br />Front button-fly closure.<br />Side hand pockets.<br />Rear welt pockets.<br />89% polyamide, 11% elastane.<br />Machine wash, tumble dry.<br />Imported.<br />Product measurements were taken using size 32, inseam 32. Please note that measurements may vary by size.<br />Measurements:<br />Waist Measurement: 32 in<br />Outseam: 42 in<br />Inseam: 32 in<br />Front Rise: 12 in<br />Back Rise: 17 in<br />Leg Opening: 14 in</p>', 0, 1, '100000', '677fd92b24.jpg'),
(41, 'Jean Men', '', '', '0', '', 1, 1, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '150000', '5910741e4f.jpg'),
(42, 'PK Nor', '', '', '0', '', 1, 3, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 1, '200000', '2c704c7151.jpg'),
(43, 'YU Men', '', '', '0', '', 1, 7, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '200000', '6d41753c4e.jpg'),
(44, 'Pant White Men', '', '', '0', '', 2, 2, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 1, '100000', 'f611905029.jpg'),
(45, 'Sport Men', '', '', '0', '', 2, 8, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '200000', '06da3e787a.jpg'),
(46, 'Short RT Men', '', '', '0', '', 3, 4, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 1, '150000', '073d43a28c.jpg'),
(47, 'Short YU Men', '', '', '0', '', 3, 2, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '100000', '7f30e2b60e.jpg'),
(48, 'Short NM Men', '', '', '0', '', 3, 8, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '50000', 'dba88b8e4f.jpg'),
(49, 'T Shirt TY Men', '', '', '0', '', 4, 4, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '100000', '2e050ca979.jpg'),
(50, 'T Shirt K Men', '', '', '0', '', 4, 5, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '60000', 'e7e6d49a6f.jpg'),
(51, 'T Shirt M Men', '', '', '0', '', 4, 16, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 1, '200000', '608e66dc9e.jpg'),
(52, 'Dress Y Female', '', '', '0', '', 5, 6, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 0, '200000', '2264c12cba.jpg'),
(53, 'Dress KM Female', '', '', '0', '', 5, 6, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 0, '250000', 'ca822d8646.jpg'),
(54, 'KM Female', '', '', '0', '', 1, 7, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 0, '120000', 'ea023def4f.jpg'),
(55, 'YL Female', '', '', '0', '', 6, 3, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 0, '500000', 'ae1c9b38eb.jpg'),
(56, 'FG Female', '', '', '0', '', 6, 4, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 0, 0, '120000', 'f4b250bae2.jpg'),
(57, 'BN Female', '', '', '0', '', 6, 4, '<p>Lucky Brand Men\'s Size Chart<br />Notch tee cut from a relaxed, burnout material, you\'ll want to wear every day.<br />Split-neck collar.<br />Two-button placket.<br />Short-sleeve coverage.<br />Brand patch at left hem.<br />Straight hemline.<br />55% polyester, 45% cotton.<br />Machine wash cold, tumble dry low.<br />Imported.<br />Product measurements were taken using size MD. Please note that measurements may vary by size.<br />Measurements:<br />Length: 28 1&frasl;2 in</p>', 1, 0, '200000', '8fa8ec6ecb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'Banner thiết bị mạng', '5bc7ca4cb1.png', 1),
(13, 'Thiết bị mạng 2', '3b44a42237.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 24, 'Samsung Galaxy A12', '3950000', 'aaa94c8bfc.jpg'),
(6, 6, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '8000000', '5cca03034d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
