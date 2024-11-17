-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 08:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resanimal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$xKaaNIztNU7MyX7op51pkesxsWOEfX.V43R.cuhLfzutye8xpbhxy', 'Shawon@gmail.com', 1, '2021-05-05 17:51:00', '2021-05-07 18:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'Food', 'Animals Food Information', '2021-05-07 08:57:38', NULL, 1),
(9, 'Vaccine', 'Animals Vaccine Information', '2021-05-07 08:58:13', NULL, 1),
(10, 'Take Care Pets', 'Animals Care Information', '2021-05-07 08:59:02', NULL, 1),
(11, 'Vets', 'Vets Information', '2021-05-07 08:59:57', NULL, 1),
(12, 'Study', 'Animal Study', '2021-05-07 09:00:39', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">We provided a website and an android application for animal welfare. Our goal is safe animals, safe ecosystem. This is a nonprofit project</span></font><br>', '2021-05-05 18:01:03', '2021-05-07 18:29:53'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Dhaka, Bangladesh</p><p><b>Phone Number : </b>+88 -01744444444</p><p><b>Email -id : </b>Shawon@gmail.com</p>', '2021-05-05 18:01:36', '2021-05-07 18:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(14, 'The Best Foods for Your Bulldog', 8, 15, '<h2 class=\"tve_p_center\" id=\"foodforenglishbulldogs\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.4em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 31px; padding: 30px 0px 7px; text-align: center; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:31px; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">The 5 Best Dog Foods for English Bulldogs</h2><p style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.4em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 31px; padding: 30px 0px 7px; text-align: center; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:31px; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><br></p><h3 class=\"\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.3em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 23px; padding: 22px 0px 9px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">1. Canidae Life Stages Dog Food</h3><p style=\"box-sizing: inherit; line-height: 1.3em; font-family: Lato; padding: 22px 0px 9px; color: rgb(56, 56, 56); font-weight: var(--g-bold-weight,bold); font-size: 23px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><img src=\"https://nitrocdn.com/NgixRrFkBQeTlDCSdcOpdSPEAchKObDh/assets/static/optimized/rev-7e960ca/wp-content/uploads/2016/10/CANIDAE-Life-Stages-Dry-Dog-Food-for-Puppies-Adults-Seniors.jpg\" alt=\"CANIDAE Life Stages Dry Dog Food for Puppies, Adults &amp; Seniors\"><br></p><div class=\"thrv_wrapper thrv_text_element\" data-tag=\"h3\" style=\"box-sizing: content-box; color: rgb(12, 17, 21); font-family: Lato; font-size: 18px; overflow-wrap: break-word; margin: 0px; padding: 1px;\"><h3 class=\"\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.3em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 23px; padding: 22px 0px 9px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">2. Earthborn Holistic Great Plains Feast Grain-Free Dog Food</h3><p style=\"box-sizing: inherit; line-height: 1.3em; padding: 22px 0px 9px; color: rgb(56, 56, 56); font-weight: var(--g-bold-weight,bold); font-size: 23px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><img src=\"https://nitrocdn.com/NgixRrFkBQeTlDCSdcOpdSPEAchKObDh/assets/static/optimized/rev-7e960ca/wp-content/uploads/2017/02/Earthborn-Holistic-Great-Plains-Feast-Grain-Free-Dry-Dog-Food-28-Pound-Bag.jpg\" alt=\"Earthborn Holistic Great Plains Feast Grain-Free Dry Dog Food, 28-Pound Bag\"><br></p></div><div class=\"thrv_wrapper thrv_text_element\" data-tag=\"h3\" style=\"box-sizing: content-box; color: rgb(12, 17, 21); font-family: Lato; font-size: 18px; overflow-wrap: break-word; margin: 0px; padding: 1px;\"><h3 class=\"\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.3em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 23px; padding: 22px 0px 9px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">3. Royal Canin Breed Health Nutrition Bulldog</h3><p style=\"box-sizing: inherit; line-height: 1.3em; padding: 22px 0px 9px; color: rgb(56, 56, 56); font-weight: var(--g-bold-weight,bold); font-size: 23px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><img src=\"https://nitrocdn.com/NgixRrFkBQeTlDCSdcOpdSPEAchKObDh/assets/static/source/rev-7e960ca/wp-content/uploads/2016/07/ROYAL-CANIN-BREED-HEALTH-NUTRITION-Bulldog-Adult-dry-dog-food.jpg\" alt=\"ROYAL CANIN BREED HEALTH NUTRITION Bulldog Adult dry dog food\"><br></p><h3 class=\"\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.3em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 23px; padding: 22px 0px 9px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">4. Artemis Fresh Mix Adult Dog Food</h3><p style=\"box-sizing: inherit; line-height: 1.3em; padding: 22px 0px 9px; color: rgb(56, 56, 56); font-weight: var(--g-bold-weight,bold); font-size: 23px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><img src=\"https://nitrocdn.com/NgixRrFkBQeTlDCSdcOpdSPEAchKObDh/assets/static/optimized/rev-7e960ca/wp-content/uploads/2016/07/Artemis-Fresh-Mix-Adult-Dog-Food.jpg\" alt=\"Artemis Fresh Mix Adult Dog Food\"><br></p><h3 class=\"\" style=\"box-sizing: inherit; font-family: Lato; font-weight: var(--g-bold-weight,bold); line-height: 1.3em; color: rgb(56, 56, 56); margin-top: 0px; margin-bottom: 0px; font-size: 23px; padding: 22px 0px 9px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\">5. Fromm 4-Star Grain-Free Surf/Turf Dog Food</h3><p style=\"box-sizing: inherit; line-height: 1.3em; padding: 22px 0px 9px; color: rgb(56, 56, 56); font-weight: var(--g-bold-weight,bold); font-size: 23px; --g-regular-weight:400; --tcb-applied-color:#383838; --tcb-typography-font-family:Lato; --g-bold-weight:700; --tcb-typography-color:#383838; --tve-applied-color:#383838; --tcb-typography-font-size:23px; --tcb-typography-line-height:1.3em; --tcb-typography-font-weight:var(--g-bold-weight,bold);\"><img src=\"https://nitrocdn.com/NgixRrFkBQeTlDCSdcOpdSPEAchKObDh/assets/static/optimized/rev-7e960ca/wp-content/uploads/2016/07/Fromm-4-Star-Grain-Free-Surf-Turf-Dog-Food.jpg\" alt=\"Fromm 4-Star Grain Free Surf/Turf Dog Food\"></p></div>', '2021-05-07 10:02:55', '2021-05-07 11:01:34', 1, 'The-Best-Foods-for-Your-Bulldog', '482c3d81d7865f79b5f6066c8223967d.jpg'),
(16, 'Best Food for Persian Cat', 8, 25, '<h2 style=\"font-family: Antenna, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; line-height: 1.13; color: rgb(33, 33, 33); margin-top: 15px; margin-bottom: 20px; font-size: 32px; text-align: center; padding: 0px; border: 0px; vertical-align: baseline;\">Choosing the Best Food for Persian Cats</h2><h2 style=\"font-family: ProximaNova, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); margin-top: 15px; margin-bottom: 15px; font-size: 1.28571rem; padding: 0px; border: 0px; vertical-align: baseline; clear: both; text-align: center; font-weight: 900 !important;\"><span class=\"product-review-heading\" style=\"margin: 0px 10px 0px 0px; padding: 0px 15px; border: 0px; font-size: 28px; vertical-align: baseline; display: inline-block; background: rgb(255, 168, 0); line-height: 57px; border-radius: 3px; color: rgb(255, 255, 255) !important;\">#1</span>JustCats Fish &amp; Chicken</h2><p style=\"margin-top: 15px; margin-bottom: 15px; line-height: 1.3; padding: 0px; border: 0px; font-size: 1.28571rem; vertical-align: baseline; clear: both; font-family: ProximaNova, Arial, sans-serif; text-align: center; font-weight: 900 !important;\"><img src=\"https://allaboutcats.com/wp-content/uploads/2020/12/just-cats.jpg\" alt=\"just cats\"></p><h2 style=\"font-family: ProximaNova, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); margin-top: 15px; margin-bottom: 15px; font-size: 1.28571rem; padding: 0px; border: 0px; vertical-align: baseline; clear: both; text-align: center; font-weight: 900 !important;\"><span class=\"product-review-heading\" style=\"margin: 0px 10px 0px 0px; padding: 0px 15px; border: 0px; font-size: 28px; vertical-align: baseline; display: inline-block; background: rgb(255, 168, 0); line-height: 57px; border-radius: 3px; color: rgb(255, 255, 255) !important;\">#2</span>Smalls Cat Food</h2><p style=\"margin-top: 15px; margin-bottom: 15px; line-height: 1.3; padding: 0px; border: 0px; font-size: 1.28571rem; vertical-align: baseline; clear: both; font-family: ProximaNova, Arial, sans-serif; text-align: center; font-weight: 900 !important;\"><img src=\"https://allaboutcats.com/wp-content/uploads/2020/01/Smalls-Cat-Food-Review-Dry-Chicken-Side-by-Side.jpg\" alt=\"Smalls-Cat-Food-Review-Dry-Chicken-Side-by-Side\"></p><h2 style=\"font-family: ProximaNova, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); margin-top: 15px; margin-bottom: 15px; font-size: 1.28571rem; padding: 0px; border: 0px; vertical-align: baseline; clear: both; text-align: center; font-weight: 900 !important;\"><span class=\"product-review-heading\" style=\"margin: 0px 10px 0px 0px; padding: 0px 15px; border: 0px; font-size: 28px; vertical-align: baseline; display: inline-block; background: rgb(255, 168, 0); line-height: 57px; border-radius: 3px; color: rgb(255, 255, 255) !important;\">#3</span>Wellness Complete Health Natural Canned Grain Free Wet Pate Cat Food</h2><p style=\"margin-top: 15px; margin-bottom: 15px; line-height: 1.3; padding: 0px; border: 0px; font-size: 1.28571rem; vertical-align: baseline; clear: both; font-family: ProximaNova, Arial, sans-serif; text-align: center; font-weight: 900 !important;\"><img src=\"https://allaboutcats.com/wp-content/uploads/2020/10/Wellness-Natural-Pet-Food-Complete-Health-Grain-Free-Canned-Cat-Food-1.png\" alt=\"Wellness Complete Health Natural Canned Grain Free Wet Pate Cat Food\"></p><h2 style=\"font-family: ProximaNova, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); margin-top: 15px; margin-bottom: 15px; font-size: 1.28571rem; padding: 0px; border: 0px; vertical-align: baseline; clear: both; text-align: center; font-weight: 900 !important;\"><span class=\"product-review-heading\" style=\"margin: 0px 10px 0px 0px; padding: 0px 15px; border: 0px; font-size: 28px; vertical-align: baseline; display: inline-block; background: rgb(255, 168, 0); line-height: 57px; border-radius: 3px; color: rgb(255, 255, 255) !important;\">#4</span>Hill’s Science Diet Adult Tender Dinner Chunks &amp; Gravy Cat Food</h2><p style=\"margin-top: 15px; margin-bottom: 15px; line-height: 1.3; padding: 0px; border: 0px; font-size: 1.28571rem; vertical-align: baseline; clear: both; font-family: ProximaNova, Arial, sans-serif; text-align: center; font-weight: 900 !important;\"><img src=\"https://images-na.ssl-images-amazon.com/images/I/51dOyOaMZVL._SL300_.jpg\"></p><h2 style=\"font-family: ProximaNova, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); margin-top: 15px; margin-bottom: 15px; font-size: 1.28571rem; padding: 0px; border: 0px; vertical-align: baseline; clear: both; text-align: center; font-weight: 900 !important;\"><span class=\"product-review-heading\" style=\"margin: 0px 10px 0px 0px; padding: 0px 15px; border: 0px; font-size: 28px; vertical-align: baseline; display: inline-block; background: rgb(255, 168, 0); line-height: 57px; border-radius: 3px; color: rgb(255, 255, 255) !important;\">#5</span>Purina Fancy Feast Poultry &amp; Beef Feast Collection Cat Food</h2><p style=\"margin-top: 15px; margin-bottom: 15px; line-height: 1.3; padding: 0px; border: 0px; font-size: 1.28571rem; vertical-align: baseline; clear: both; font-family: ProximaNova, Arial, sans-serif; text-align: center; font-weight: 900 !important;\"><img src=\"https://allaboutcats.com/wp-content/uploads/2020/10/Fancy-Feast-Classic-Poultry-Beef-Feast-Variety-Pack-Canned-Cat-Food.png\" alt=\"Purina Fancy Feast Poultry &amp; Beef Feast Collection Cat Food\"></p>', '2021-05-07 10:21:14', '2021-05-07 11:03:05', 1, 'Best-Food-for-Persian-Cat', 'd0eff8642da884f9f3509a9223f8dd8d.jpg'),
(17, 'Top 10 Cat Breeds', 12, 23, '<h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">10. Devon Rex Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/1UgApxDu0M15dieCoT4OVT/f0f0b101e595d5dd7297139edef5fe77/207orientalportrait.jpg\" alt=\"207orientalportrait\"></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><span style=\"color: rgb(0, 0, 0); font-size: 18px; font-weight: 400;\">Read more about&nbsp;</span><a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/devon-rex/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 18px; line-height: inherit; vertical-align: baseline; word-break: break-word;\">Devon rex&nbsp;cats</a><br></h3><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">9. Abyssinian Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/3ZLRq7TiWQ4iFwiLlVyaGW/acd66dfe632470802e7b104f0711df96/174abyssinianlayingdown.jpg\" alt=\"174abyssinianlayingdown\"></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><span style=\"color: rgb(0, 0, 0); font-size: 18px; font-weight: 400;\">Read more about&nbsp;</span><a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/abyssinian/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 18px; line-height: inherit; vertical-align: baseline; word-break: break-word;\">Abyssinians</a><br></h3><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">8. Sphynx Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyC4ktq-Yt64c8ECu0WQXH9VpQVGj9sqqhog&amp;usqp=CAU\" alt=\"10 Sphynx Cat Facts | Mom.com\"></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><span style=\"color: rgb(0, 0, 0); font-size: 18px; font-weight: 400;\">Read more about&nbsp;</span><a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/sphynx/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 18px; line-height: inherit; vertical-align: baseline; word-break: break-word;\">Sphynx cats</a><br></h3><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">7.&nbsp;Scottish Fold Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/6grJk9ZQXPqgQ3JoJWDZBI/b9f9f47826469726faa1dff26fe9781b/Scottish_Fold_brindle.jpg\" alt=\"Scottish Fold brindle\"></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><span style=\"color: rgb(0, 0, 0); font-size: 18px; font-weight: 400;\">Read more about&nbsp;</span><a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/scottish-fold/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 18px; line-height: inherit; vertical-align: baseline; word-break: break-word;\">Scottish fold cats</a><br></h3><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">6. American Shorthair Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/1yuORjy7mP7K8wm4qdsKTv/8dd9161176cfb3220785995dc6f9f7ab/202silvershorthair.jpg\" alt=\"202silvershorthair\"></p><p style=\"margin-bottom: 1.6em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.6em; font-family: Gotham-Book; vertical-align: baseline; overflow-wrap: break-word;\">Read more about&nbsp;<a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/american-shorthair/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; word-break: break-word;\">American shorthair cats</a></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">5. Maine Coon Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/1sAyPGDuWOb7MyP4HAvwwT/a982b818d5a1f72b0a4848fec84a3e66/101mainecoon.jpg\" alt=\"101mainecoon\"></p><p style=\"margin-bottom: 1.6em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.6em; font-family: Gotham-Book; vertical-align: baseline; overflow-wrap: break-word;\">Read more about&nbsp;<a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/maine-coon/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; word-break: break-word;\">Maine Coon cats</a></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">4. Persian Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"data:image/jpeg;base64,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\" alt=\"15 Best Adorable Names for Persian Cats\"></p><p style=\"margin-bottom: 1.6em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.6em; font-family: Gotham-Book; vertical-align: baseline; overflow-wrap: break-word;\">Read more about&nbsp;<a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/persian/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; word-break: break-word;\">Persian cats</a></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">3. British Shorthair</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/qcE4OhJ9cUvwJUQ5JDuNI/535be2bfc4c2d2f713b9d9c13a66811f/BritishShorthairBlue.jpg\" alt=\"BritishShorthairBlue\"></p><p style=\"margin-bottom: 1.6em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.6em; font-family: Gotham-Book; vertical-align: baseline; overflow-wrap: break-word;\">Read more about&nbsp;<a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/british-shorthair/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; word-break: break-word;\">British shorthair cats</a></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">2. Ragdoll Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/3G6QLmILVQSIrwYa4Od6CB/624a1b31b7a27032c2902173365d3c82/183Ragdollcat.jpg\" alt=\"183Ragdollcat\"></p><p style=\"margin-bottom: 1.6em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.6em; font-family: Gotham-Book; vertical-align: baseline; overflow-wrap: break-word;\">Read more about&nbsp;<a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/ragdoll/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; word-break: break-word;\">Ragdoll cats</a></p><h3 style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\">1. Exotic Shorthair Cats</h3><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><img src=\"https://images.ctfassets.net/440y9b545yd9/6oTaxlzMJywwS9etJ0MMii/1307ab9113f66046dcde9c3ea1086e5d/129shorthair.jpg\" alt=\"129shorthair\"><br></p><p style=\"margin-top: 0px; margin-bottom: 17px; font-weight: 700; line-height: 1.4em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Gotham-Book; vertical-align: baseline; color: rgb(0, 43, 69);\"><span style=\"color: rgb(0, 0, 0); font-size: 18px; font-weight: 400;\">Read more about&nbsp;</span><a href=\"https://www.petinsurance.com/healthzone/pet-breeds/cat-breeds/exotic-shorthair/\" target=\"_self\" screenone_angular_scanned=\"true\" style=\"color: rgb(0, 114, 207); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 18px; line-height: inherit; vertical-align: baseline; word-break: break-word;\">Exotic shorthair cats</a><br></p>', '2021-05-07 10:34:55', '2021-05-07 10:38:34', 1, 'Top-10-Cat-Breeds', '5e8a7b28974d3109bbcc5d5e1b58e464.jpg'),
(18, 'Bull Dog Vaccination Schedule', 9, 17, '<h1 class=\"page-header__title \" style=\"font-size: 3.8125rem; margin-top: 30px; margin-bottom: 24px; font-family: Lato, Arial, sans-serif; line-height: 1.12821; color: rgb(34, 34, 35);\">Your Complete Guide to First-Year Puppy Vaccinations</h1><p style=\"line-height: 1.5; font-size: 1.25rem; margin-top: 10px; margin-bottom: 32px; color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif;\"><span style=\"font-size: 20px;\"><b>Here is a generally accepted guideline of the puppy vaccination schedule for the first year.</b></span><br></p><table border=\"1\" cellspacing=\"0\" style=\"width: 799px; margin: 10px 0px; color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255); height: auto !important;\"><tbody><tr style=\"height: auto !important; background-color: rgba(0, 53, 148, 0.1);\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Puppy’s Age</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Recommended Vaccinations</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Optional Vaccinations</td></tr><tr style=\"height: auto !important;\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">6 — 8 weeks</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Distemper, parvovirus</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Bordetella</td></tr><tr style=\"height: auto !important; background-color: rgba(0, 53, 148, 0.1);\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">10 — 12 weeks</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">DHPP (vaccines for distemper, adenovirus [hepatitis], parainfluenza, and parvovirus)</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Influenza, Leptospirosis, Bordetella, Lyme disease per lifestyle as recommended by veterinarian</td></tr><tr style=\"height: auto !important;\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">16 — 18 weeks</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">DHPP, rabies</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Influenza, Lyme disease, Leptospirosis, Bordetella per lifestyle</td></tr><tr style=\"height: auto !important; background-color: rgba(0, 53, 148, 0.1);\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">12 — 16 months</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">DHPP, rabies</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Coronavirus, Leptospirosis, Bordetella, Lyme disease</td></tr><tr style=\"height: auto !important;\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Every 1 — 2 years</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">DHPP</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Influenza, Coronavirus, Leptospirosis, Bordetella, Lyme disease per lifestyle</td></tr><tr style=\"height: auto !important; background-color: rgba(0, 53, 148, 0.1);\"><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Every 1 — 3 years</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">Rabies (as required by law)</td><td style=\"color: rgb(0, 0, 0); padding: 16px 13px; font-size: 1rem; height: auto !important;\">none</td></tr></tbody></table><h2 style=\"font-family: Lato, Arial, sans-serif; line-height: 1.12821; font-size: 2.4375rem; margin-top: 0px; margin-bottom: 0px; color: rgb(34, 34, 35);\"><br></h2>', '2021-05-07 10:49:17', '2021-05-07 11:02:27', 1, 'Bull-Dog-Vaccination-Schedule', '668ba98d5ca3f98ec7511dd0b53c1523.jpg'),
(19, '8 Parrot Care Tips to Make Your Bird Happy', 10, 28, '<h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">1. Be ready for a messy and noisy house</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">Parrots toss fruit peels, seed casings, their toys, and the area around their cage can get very messy. Moreover, there’s also the matter of feathers and droppings. A large parrot can make lots of noise. Whether they are yodeling a country song or yelling nonsense, you cannot count on your parrot to be quiet just because you want to take a nap.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">2. Consider location and temperature</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">Although parrots are social creatures, every parrot may have different needs. Depending on your parrot’s temperament, place the cage in the area where your bird will often interact with you.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">3. Vary your parrot’s diet</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">No one likes to have the same thing every single day. Your parrot needs a varied diet with a wide range of nutritional value. Don’t feed your parrot seeds only. Discuss with your veterinarian your bird’s diet.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">4. Teach your parrot to talk</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">If you want your parrot to talk, you’ll need to spend a lot of time teaching it. If intense, limit your teaching sessions to 15 minutes at a time or just repeat the same words and phrases a few times during your ‘lesson.’ Parrots usually mimic the things they hear most often.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">5. Keep an eye on claw, beak and feather health</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">When your parrot’s claws grow too long, go to a vet to trim them. Never try to do it yourself since parrots have a very active blood supply to their claws and a cut could lead to a blood loss.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">6. Clean the cage</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">The bottom of the cage must be cleaned every two days, if your parrot is not too messy. Replace any liners and discard any seeds, shells, gravel, etc. Clean all of the toys in the cage.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">7. Replace toys in different places</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">Once you’ve finished washing the cage, put your parrot’s toys back inside, replacing them in different places. Parrots are very intelligent and intensely curious, and unlike dogs and cats, they like changing stimuli. Your bird will have some fun and exercise when looking for its toys.</p><h2 style=\"font-weight: 700; line-height: 48px; font-size: 36px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">8. Regularly visit the vet</h2><p style=\"margin-bottom: 10px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px;\">While some parrots can be absolutely healthy forever, most of them still have some health problems, which could be solved with preventative veterinarian consultations.</p>', '2021-05-07 10:58:46', NULL, 1, '8-Parrot-Care-Tips-to-Make-Your-Bird-Happy', '2d4c690c6f09f38f6188b7be68bdcbe6.jpg'),
(20, 'Vets for Cats', 11, 22, '<h1 style=\"font-size: calc(36px + (14 * (100vw - 320px)) / 1280); margin-top: 0px; margin-bottom: 1.5625rem; text-align: center; float: none; font-weight: 700; padding-top: 1.875rem; color: rgb(33, 21, 84); line-height: 1.2; font-family: myriad-pro, sans-serif; background-color: rgb(242, 241, 241);\">Cat Advice</h1><p class=\"intro\" style=\"float: none; padding-bottom: 0px; font-size: calc(22px + (6 * (100vw - 320px)) / 1280); font-family: myriad-pro, sans-serif; background-color: rgb(242, 241, 241);\">Cats have been popular household pets for thousands of years, so if you share your home with a feline friend, you’re joining an ancient tradition! Whether your cat is a cuddly kitten or an elderly bundle of love, we’ll help you care for them like an expert and enjoy a long and happy life with this most enigmatic of pets. Read our expert advice articles below to help keep them happy and healthy. Our advice articles range from choosing your cat to caring for your cat’s teeth. At Vets4Pets we cover all veterinary aspects of caring for your cat from vaccinations to dental care. Find out more by clicking on the articles below.</p>', '2021-05-07 11:11:29', NULL, 1, 'Vets-for-Cats', 'e857d97d46668d090373a2e7b97764ee.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 5, 'Parrot', 'fresh vegetables, fruit and pellets or seeds', '2021-05-05 09:45:25', NULL, 1),
(11, 5, 'Cuckoo', ' caterpillars, lizards, snakes, small rodents, and fruit.', '2021-05-05 09:49:23', NULL, 1),
(12, 5, 'Pigeon', 'grubs, insects, fruits and veggies that pigeons like to eat.', '2021-05-05 09:55:27', NULL, 1),
(13, 2, 'Bull Dog', 'Chicken with Sweet Potato & Pumpkin Dry Dog Food.', '2021-05-05 09:59:00', NULL, 1),
(14, 2, 'Belgian Shepherd', 'Chicken & Brown Rice Recipe Dry Dog Food.', '2021-05-05 10:00:38', NULL, 1),
(15, 8, 'Dog', 'About Dog Food', '2021-05-07 09:13:32', NULL, 1),
(16, 8, 'Parrot', 'About Parrot Food', '2021-05-07 09:14:04', NULL, 1),
(17, 9, 'Dog', 'About Dog Vaccine', '2021-05-07 09:14:40', NULL, 1),
(18, 9, 'Cat', 'About Cat Vaccine', '2021-05-07 09:15:05', NULL, 1),
(19, 10, 'Dog', 'How to take care your Dog!', '2021-05-07 09:15:51', NULL, 1),
(20, 10, 'Cat', 'How to take care your Cat!', '2021-05-07 09:16:30', NULL, 1),
(21, 11, 'Dog', 'Vets for Dog', '2021-05-07 09:17:34', NULL, 1),
(22, 11, 'Cat', 'Vets for Cat', '2021-05-07 09:17:52', NULL, 1),
(23, 12, 'Pet Animals', 'Study about our pet animals', '2021-05-07 09:18:54', NULL, 1),
(24, 12, 'Birds', 'Study about our pet birds', '2021-05-07 09:19:27', NULL, 1),
(25, 8, 'Cat', 'About Cat Food', '2021-05-07 10:08:08', NULL, 1),
(28, 10, 'Parrot', 'How to take care your Parrot!', '2021-05-07 10:53:19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(14, 'Shawon', 'Hd', 'Shawon@gmail.com', 'shw12345', '01744444444', '2021-05-07 09:49:50'),
(15, 'Rony', 'Howlader', 'Rony@gmail.com', 'shawon12345', '01700000000', '2021-05-07 17:32:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
