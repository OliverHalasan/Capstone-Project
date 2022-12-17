SET @ORIG_SQL_REQUIRE_PRIMARY_KEY = @@SQL_REQUIRE_PRIMARY_KEY;
SET SQL_REQUIRE_PRIMARY_KEY = 0;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 06:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_platform`
--
CREATE DATABASE IF NOT EXISTS `job_platform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `job_platform`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_id`, `first_name`, `last_name`) VALUES
(1, 1, 'Mable', 'Zayne'),
(2, 2, 'Osmond', 'Farley');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `application_id` int(11) NOT NULL,
  `resume` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 Closed\r\n1 Submitted\r\n2 In Review\r\n3 Accepted\r\n4 Rejected',
  `application_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`application_id`, `resume`, `cover_letter`, `job_id`, `candidate_id`, `employer_id`, `status`, `application_date`) VALUES
(1, NULL, NULL, 1, 1, 1, 0, '2022-10-28 15:12:40'),
(2, NULL, NULL, 4, 1, 2, 1, '2022-10-28 15:12:40'),
(3, NULL, NULL, 2, 1, 2, 3, '2022-10-28 15:13:22'),
(4, NULL, NULL, 3, 1, 1, 2, '2022-10-31 12:42:25'),
(5, NULL, NULL, 1, 2, 1, 1, '2022-10-28 15:14:50'),
(6, NULL, NULL, 4, 2, 2, 0, '2022-10-28 15:14:50'),
(7, NULL, NULL, 18, 3, 2, 1, '2022-11-09 14:46:17'),
(8, NULL, NULL, 10, 4, 9, 1, '2022-11-09 14:50:34'),
(9, NULL, NULL, 14, 5, 13, 1, '2022-11-09 14:50:34'),
(10, NULL, NULL, 17, 6, 15, 1, '2022-11-09 15:04:05'),
(11, NULL, NULL, 11, 7, 10, 1, '2022-11-09 15:04:05'),
(12, NULL, NULL, 13, 8, 12, 1, '2022-11-09 15:07:34'),
(13, NULL, NULL, 17, 9, 15, 1, '2022-11-09 15:07:34'),
(14, NULL, NULL, 11, 10, 10, 1, '2022-11-09 15:17:19'),
(15, NULL, NULL, 9, 11, 8, 1, '2022-11-09 15:17:19'),
(16, NULL, NULL, 1, 12, 1, 1, '2022-11-09 15:23:12'),
(17, NULL, NULL, 9, 13, 8, 1, '2022-11-09 15:23:12'),
(18, NULL, NULL, 12, 14, 11, 1, '2022-11-09 15:29:53'),
(19, NULL, NULL, 11, 15, 10, 1, '2022-11-09 15:29:53'),
(20, NULL, NULL, 8, 2, 7, 1, '2022-11-09 15:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pronouns` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `headline` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `will_relocate` bit(1) NOT NULL DEFAULT b'0',
  `visibility` bit(1) NOT NULL DEFAULT b'1',
  `facebook` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiktok` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `user_id`, `first_name`, `last_name`, `gender`, `pronouns`, `personal_description`, `headline`, `city`, `province`, `country`, `skills`, `profile_photo`, `banner_photo`, `will_relocate`, `visibility`, `facebook`, `instagram`, `linkedin`, `tiktok`, `youtube`, `instagram_id`, `instagram_key`, `website_url`) VALUES
(1, 8, 'Jenny', 'Lucia', 'F', 'She/Her', 'I am a professional hair stylist with 10 years of experience.', 'Licensed Hair Stylist', 'Edmonton', 'Alberta', 'Canada', NULL, NULL, NULL, b'0', b'1', NULL, 'https://www.instagram.com/thebeautydepartment/', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 9, 'Sadaf', 'Beauty', 'F', 'she/her', NULL, 'Licensed Makeup Artist', 'Calgary', 'Alberta', 'Canada', NULL, NULL, NULL, b'0', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 10, ' Westley', 'Travers', 'M', 'He / Him', 'Hair styling professional looking for a challenging and rewarding career.', 'Licensed Barber / Hairstylist', 'Edmonton', 'Alberta', 'Canada', 'Barbers\' cuts, hairstyling', 'img/profile/', NULL, b'0', b'1', 'https://www.facebook.com/CityBarbershopedmonton/', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 11, 'Cindy', 'Johnson', 'F', 'She / Her', 'I am looking for a great career. I know I can be of great service to you.', 'Licensed Hairstylist', 'Calgary', 'Alberta', 'Canada', 'Hair styling, Makeups ', 'img/profile/', NULL, b'1', b'1', NULL, 'https://www.instagram.com/freshandcosalons/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 12, 'Jenna', 'Williams', 'F', 'She / Her', 'I have been a professional beautician for 3 years.', 'Licensed Hairstylist', 'Lethbridge', 'Alberta', 'Canada', 'Professional hair styling, make up, other salon duties', 'img/profile/', NULL, b'1', b'1', NULL, 'https://www.instagram.com/ivorynoirsalon/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 15, 'Ben', 'Crowley', 'M', 'He / Him', 'Professional barber with seven years of male hair styling experience', 'Licensed Barber', 'Calgary', 'Alberta', 'Canada', 'Male hair styling and grooming', 'img/profile/', NULL, b'0', b'1', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=RUcJQzAtAs4', NULL, NULL, NULL),
(7, 16, 'Jane', 'Bradley', 'F', 'She / Her', 'I am looking for a job that will best better suit me, as because I am a recent graduate', 'Licensed Hairstylist', 'Leduc', 'Alberta', 'Canada', 'Hair styling, make up', 'img/profile/', NULL, b'0', b'1', NULL, 'https://www.instagram.com/theonesalon/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 17, 'Jenny', 'Ellison', 'F', 'She / Her', 'Full time esthetist looking for part time work', 'Licensed Esthetician', 'Edmonton', 'Alberta', 'Canada', 'Haistyling, makeup', 'img/profile/', NULL, b'0', b'1', NULL, 'https://www.instagram.com/muzehairroom/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 18, 'Tony', 'Williams', 'M', 'He / Him', 'I am a professional barber who has 7 years of male hair styling experience', 'Professional Barber', 'Red Deer', 'Alberta', 'Canada', 'Professional Male Haircutting and Grooming', 'img/profile/', NULL, b'1', b'1', NULL, 'https://www.instagram.com/blackforestbarbershop/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 19, 'Annie', 'Smith', 'F', 'She / Her', 'I am a hairstylist a beautician', 'Professional Beautician', 'Edmonton', 'Alberta', 'Canada', 'Hair styling, curling, nail trimming', 'img/profile/', NULL, b'0', b'1', NULL, 'https://www.instagram.com/getchromed/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 20, 'Lorelie', 'Myers', 'F', 'She / Her', 'Advanced professional beautician looking for my next chapter in life by looking for fascinating opportunities.', 'Licensed Beautician', 'Calgary', 'Alberta', 'Canada', 'Health and Beauty, Hair Styling, Customer Service', 'img/profile/', NULL, b'1', b'1', NULL, NULL, 'https://www.linkedin.com/in/bestsaloncalgary/?originalSubdomain=ca', NULL, NULL, NULL, NULL, NULL),
(12, 21, 'Tanya', 'Johnson', 'F', 'She / Her', 'Hair styler seeking a relevant job in the Health and Beauty industry', 'Licensed Hairstylist', 'Edmonton', 'Alberta', 'Canada', 'Haircuts, Makeups, Seasonal styling', 'img/profile/', NULL, b'0', b'1', NULL, NULL, 'https://www.linkedin.com/company/avenue-salons/?originalSubdomain=ca', NULL, NULL, NULL, NULL, NULL),
(13, 22, 'Wendy', 'Chen', 'F', 'She / Her', 'Versatile hair stylist seeking new opportunities in the beauty industry', 'Licensed Hairstylist', 'Edmonton', 'Alberta', 'Canada', 'All sorts of hair styling, including oriental, punk, goth, and other trendy hair styles', 'img/profile/', NULL, b'1', b'1', 'https://www.facebook.com/FreshCoSalons/', 'https://www.instagram.com/freshandcosalons/', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 23, 'Lina', 'Perez', 'F', 'She / Her', 'Custom professional hair styling made just for you.', 'Professional Hairstyler', 'Medicine Hat', 'Alberta', 'Canada', 'Custom professional hair styling with great customer service:\r\npunk\r\ngoth\r\n50\'s style\r\n', 'img/profile/', NULL, b'1', b'1', 'https://www.facebook.com/choicecutsmedicinehat/', 'https://www.instagram.com/accounts/login/?next=%2Fchoicecuts_medicinehat%2F&source=omni_redirect', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 24, 'Amanda', 'Sharma', 'F', 'She / Her', 'Beautician with over nine years worth of professional experience. Highly knowledgeable in all sorts of custom hair styles and fashion trends.', 'Licensed Beautician and Licensed Pet Groomer', 'Saint Albert', 'Alberta', 'Canada', 'Hair styling, manicure, pedicure, health and beauty, clothing and fashion, pet grooming', 'img/profile/', NULL, b'0', b'1', 'https://www.facebook.com/salondelart/', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `employer_id`, `first_name`, `last_name`, `email`, `notes`) VALUES
(1, 1, 'Jack ', 'Smith ', 'Jack@info.ca', NULL),
(2, 2, 'Chris', 'Green ', 'chris.green@saskbarber.ca', NULL),
(3, 1, 'Christy', 'Berg', 'christy@info.ca', NULL),
(4, 3, 'Laura', 'Kaminsky', 'root51@telus.net', NULL),
(5, 4, 'Carole', 'Lemire', 'clemire@soho.ca', 'You can also email me at test@soho.ca'),
(6, 5, 'Ghania', 'Jamil', 'jamil.salonkokoro@outlook.com', NULL),
(7, 5, 'Jordan', 'Manley', 'jordan.salonkokoro@outlook.com', 'I\'m here in case Ghania is not available'),
(8, 5, 'Josee', 'Quinn', 'jquinn@soho.ca', 'I;m here in case Carole is not available'),
(9, 6, 'Mary', 'Wilkins', 'sisalonnspa@gmail.com', 'Job application notificans can get sent here'),
(10, 7, 'Brenda', 'Jenkins', 'brendaj@beautygardenyyc.com', 'Job application notificans can get sent here'),
(11, 8, 'Jessie', 'Ford', 'jessie@redbloomsalon.ca', NULL),
(12, 11, 'Jen', 'Storey', 'adarastudio@live.com', NULL),
(13, 12, 'Andrea', 'Strickland', 'info@icon.ca', NULL),
(14, 14, 'Guitana', 'Gillespie', 'guitana@bellezzabeauty.ca', NULL),
(15, 13, 'Hassan', 'Nasser', 'info@avalonhairsalon.ca', 'Owner of Avalon Salon in Calgary\'s Beltline Area'),
(16, 9, 'Rami', 'Hussein', 'countryhills@divasalonspa.com', 'Salon owner @ diva salon & spa country hills locat'),
(17, 10, 'Angie', 'Gagne', 'angie@salon-melange.com', 'Salon Manager / Director');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `degree_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `gpa` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `candidate_id`, `degree_type`, `institution_name`, `field`, `start_date`, `end_date`, `gpa`) VALUES
(1, 1, 'Bachelor', 'Northern Alberta Institute of Technology', 'Hair Stylist', '2021-11-01', '2022-05-01', '4.0'),
(2, 1, 'Master', 'Northern Alberta Institute of Technology', 'Hair Stylist', '2022-09-01', '2022-11-01', '3.8'),
(3, 2, 'Diploma', 'Alberta Academy of Aesthetics', 'Aesthetics', '2021-09-01', '2022-06-08', '3.8'),
(4, 3, 'Diploma', 'Alberta Academy of Aesthetics', 'Barbering', '2020-09-01', '2021-06-09', '4.0'),
(5, 4, 'Diploma', 'MC College Calgary', 'Hairstyling', '2019-10-03', '2020-06-26', '3.8'),
(6, 5, 'Diploma', 'MC College Calgary', 'Hairstyling', '2017-01-09', '2017-09-29', '4.0'),
(7, 6, 'Diploma', 'MC College Calgary', 'Hairstyling', '2014-02-06', '2014-10-30', '4.3'),
(8, 7, 'Diploma', 'MC College Edmonton', 'Hairstyling', '2021-10-04', '2022-06-24', '4.0'),
(9, 8, 'Diploma', 'Eveline Charles International Academy - West Edmonton Mall', 'Esthetician', '2020-11-16', '2021-06-16', '4.3'),
(10, 9, 'Diploma', 'Eveline Charles International Academy - West Edmonton Mall', 'Barber', '2021-11-08', '2023-04-20', '3.8');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `business_category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_size` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiktok` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`employer_id`, `user_id`, `business_name`, `business_category`, `description`, `address`, `city`, `province`, `postal_code`, `profile_image`, `banner_image`, `business_size`, `facebook`, `instagram`, `linkedin`, `tiktok`, `instagram_id`, `instagram_key`, `youtube`, `website_url`, `focus`, `video`) VALUES
(1, 3, 'Chatters Limited Partnership', 'Salon Service', 'Chatters Hair Salon is the salon beauty leader in Canada. Our 111 locations feature both award-winning salon services and unmatched retail product selection all under one roof. Our product offering is second to none. From body and skin care to nail care, hair tools and hair care products to beauty supplies and fashion accessories.\r\n', 'Princess Elizabeth Avenue Northwest #624', 'Edmonton', 'AB', 'T5G 3A6', NULL, NULL, '1,001-5,000 employees', 'https://www.facebook.com/ChattersHairSalon/', 'https://www.instagram.com/chattershairsalon/', 'https://www.linkedin.com/jobs/search/?currentJobId=3154618975&keywords=Chatters%20Limited%20Partnership&location=Canada', 'https://www.tiktok.com/@chattershairsalon', NULL, NULL, 'https://www.youtube.com/channel/UCRF3o5RcvXz0x0pISdCkAsQ?view_as=subscriber', 'https://chatters.ca/', NULL, NULL),
(2, 4, 'SaskBarber', 'Barber Shop', 'OUR MISSION:\r\nOur mission is to bring to life the silent story behind every haircut and hairstyle.\r\n\r\nBring to life the best of you.\r\n\r\nSaskBarber was born out of a need for a barbershop that believes in the value and story behind a client\'s haircut/hairstyle. Our clients come in for haircuts and styles, they stay for the amazing service and results achieved as we deliver on our mission\'s promise.', '2719 Quance Street', 'Regina', 'SK', 'S4V 3B7', NULL, NULL, '8-14 employees', NULL, 'https://www.instagram.com/saskbarber', NULL, NULL, NULL, NULL, NULL, 'https://www.saskbarber.ca/', NULL, NULL),
(3, 5, 'Red Deer Root 51 Salon And Spa', 'Salon Service', 'In 2001, Husband and wife combined their professions and created a Red Deer Salon & Spa like none other in Central Alberta~ a first class one -stop shop.  In 2017, they decided to downsize from the huge corporate downtown building and established Root 51. A quaint and classy main floor salon & spa, hosting everything you could desire in a salon & spa.  From manicures and pedicures, in the only chairs of their kind in Canada, pipe-less which mean zero chance of contamination for our valued guests. Extremely effective Phytomer facials, relaxing massages and body and skin maintenance treatments: waxing, lash and brow tinting.\r\n\r\nWhat makes us different? Many things our guests tell us….Attention to details with all our procedures & the cleanliness of our salon & spa, which we pride ourselves on.  Our team is small but effective and certified and/ or licensed in our desired crafts. With many on going advanced training classes, which makes our associates stand out and keeps us motivated in this wonderful industry.\r\n.\r\nWe are proud to be the exclusive provider for Phytomer Face and Body Care in Central Alberta. Making our facial and body treatments superior with proven results.  Root51 is also the only Davines Concept Salon in the city ~ our primary professional and retail hair care products.  Working with the best that science, nature and technology provides, gives us results that are predicable, full of shine and frizz free.  Both lines are simply amazing for your hair and skin.', '4814-51 St.', 'Red Deer', 'AB', 'T4N 2A5', NULL, NULL, '8-14 employees', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://reddeersalonspa.com/', NULL, NULL),
(4, 6, 'Soho', 'Hair Salon', 'Relax and recharge at Edmonton’s best salon, Soho Master Hair Stylists. Bringing the luxury and sophistication of the Le Marais neighborhood in Paris with the edge and modernity of Manhattan’s trendiest borough, our customers always discover the excellence of fine hair care.\r\n\r\nVidal Sassoon is hands down the most influential hair stylist in the world and the entire team at Soho specializes in precision cutting and coloring the Sassoon way. You can be assured that our entire team combines creative talent, brilliant technique, and a fierce passion for the craft to provide exceptional Sassoon-inspired hairstyles and always with a smile!', '11815-40 Avenue', 'Edmonton', 'AB', 'T6J 0R8', NULL, NULL, '15-20 employees', 'https://www.facebook.com/sohohair', 'https://www.facebook.com/sohohair', NULL, NULL, NULL, NULL, NULL, 'https://sohohair.ca', NULL, NULL),
(5, 7, 'Salon Kokoro', 'Beauty Salon', 'Salon Kokoro was recently voted #1 Best beauty salon in Calgary by thebestcalgary.com! \r\n\r\nSalon Kokoro is committed to exceeding your expectations by providing great service alongside some of the best brands in the hair industry. Our highly trained stylists are diverse in all aspects of hair and waxing. We keep up with the latest industry trends by attending hair shows and educational classes throughout the year. \r\n\r\nSalon Kokoro is committed to exceeding your expectations by providing great service alongside some of the best brands in the hair industry. Our highly trained stylists are diverse in all aspects of hair and waxing. We keep up with the latest industry trends by attending hair shows and educational classes throughout the year. ', '12445 Lake Fraser Dr SE #206B', 'Calgary', 'AB', 'T2J 7A4', NULL, NULL, '5-10 employees', 'https://www.facebook.com/salonkokoro/', 'https://www.instagram.com/salonkokoro/', NULL, NULL, NULL, NULL, NULL, 'https://salonkokoro.ca/', NULL, NULL),
(6, 25, 'Si SALON & SPA', 'Salon and Spa Services', 'Passion, pride, and perfection! Si Salon & Spa is a luxurious salon in Edmonton that offers best in hair, esthetics, and massage therapy.\r\n\r\nOffering the latest trends in hair care and spa treatments for ladies and men. Our professionals are highly trained and exhibit a tremendous level of skill to enhance your spa experience.\r\n\r\nWe are licensed, bonded, and insured. \r\n\r\nWalk-ins are always welcome, but we prefer appointments.\r\n\r\nOur salon provides various different hair services such as: Men, ladies, and children haircuts, colour, balayage highlights, root touch up, braid, corn row, blow out, up dos, body wave, thermal keratin smoothing straightening,  and hair extensions.', '7259 Winterburn Road NW', 'Edmonton', 'AB', 'T5T 4K2', NULL, NULL, '50-100 employees', 'https://www.facebook.com/sisalonandspa.ca/', 'https://www.instagram.com/sisalon.andspa/', NULL, NULL, NULL, NULL, NULL, 'sisalondandspa.ca', NULL, NULL),
(7, 26, 'Beauty Garden YYC', 'Manicure, Pedicure, Hairstyling, Beauty Salon', NULL, '8417 Broadcast Ave', 'Calgary', 'AB', 'T3H 4C7', NULL, NULL, '10-14 employees', 'https://www.facebook.com/beautygardencalgary/', 'https://www.instagram.com/beautygardenoff/?hl=en', NULL, NULL, NULL, NULL, NULL, 'https://beautygardenyyc.com/', NULL, NULL),
(8, 27, 'Red Bloom Salon', 'Hair and Makeup Salon', 'RedBloom Salon is a full-service hair salon, with four locations in Calgary. We’re dedicated to providing great hair and a great experience, but more than just hair, we maintain a commitment to better ourselves and the world around us!', '8561 8A Ave SW #2106', 'Calgary', 'AB', 'T3H 4C7', NULL, NULL, '20-30 employees', 'https://www.facebook.com/redbloomsalon/', 'https://instagram.com/redbloomsalon', NULL, NULL, NULL, NULL, 'https://www.youtube.com/user/redbloomsalon', 'https://www.redbloom.ca/', NULL, NULL),
(9, 28, 'Diva Salon and Spa', 'Salon and Spa Services', '\r\n \r\n\r\nCelebrating over 30 years as a locally owned salon and spa with multiple locations to serve you! As one of Calgary’s only Aveda lifestyle salons, and voted the Best Salon in Calgary, you’ll be pampered with our plant-derived products and leave looking and feeling your best. Our hair salon offers haircuts, styling, colour, and more.\r\n\r\nWhether it’s for a wedding, event or you’re just looking for a haircut; our stylists will take the time to make your visit a special experience. Our spa also offers many other services to aid in your beauty and wellness. This includes skin care, hand and foot care, laser hair removal, HydraFacials, and more. If you want personalized service, combined with professional beauty and wellness care, then we look forward to serving you.', '#226, 5149 Country Hills Blvd NW', 'Calgary', 'AB', 'T3A 5K8', NULL, NULL, '50-100 employees', 'https://www.facebook.com/divasalonspa', 'https://www.instagram.com/divacalgary/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 29, 'Melange Salon + Spa', 'Salon and Spa Services', 'WHO WE ARE\r\n\r\nYour Trusted Eco Salon + Spa Since 2007\r\n\r\nMelange is French for mixture, or to mix. Melange mixes modern technique with organic natural and eco-friendly products for down-to-earth, good for the earth hair, skin and spa treatments. Melange is fiercely committed to guiding health, fashion and eco-conscious individuals to discover earth-friendly sustainable personal care, beauty products and services. We create beauty while protecting your well-being and our environment.\r\n\r\nSince 2007, Melange Salon + Spa has grown to be one of the most prominent spots in the Edmonton area, guaranteeing quality and professionalism to all of our guests. Over the years, we’ve always been committed to making our devoted guests look stunning and feel their best while protecting the health of the environment. Contact us and see what our team of qualified professionals have to offer you today!\r\n\r\nWe take great care in choosing products that will help our guests look beautiful while minimizing their impact on the environment. We are diligent in creating and maintaining an environment to protect the health of our staff and our clients. \r\n\r\nIf you are searching for a proven conscientious salon and spa that can address your concerns with the impact beauty has on the environment and provide alternatives that work, you’ve come to the right place! At Melange, good health is beauty. Let us take care of you.', 'Unit 102 1207 91 Street NW', 'Edmonton', 'AB', 'T6X 1E9', NULL, NULL, NULL, 'https://www.facebook.com/melangesalonspa', 'https://www.instagram.com/melangesalonspa/', NULL, NULL, NULL, NULL, NULL, 'https://www.salon-melange.com', NULL, NULL),
(11, 30, 'Adara Hair & Body Studio', 'Hair and Beauty Studio', 'We adhere to one standard of beauty - yours.\r\n\r\nOur Founding Principles\r\n\r\nOur foundations go much deeper than just hair and aesthetics, at Adara we want you to feel your most handsome or beautiful, and whatever that is for you - we will help you get there! We have a no-judgement policy and have made it our goal to create an accepting industry based on ethics and morals. Our salon is just one small part of many great programs that include Green Circle Salons and The Dress Code Project.\r\n\r\nThe beauty industry is notorious for not always being environmentally friendly, and at Adara we are constantly striving to reduce our environmental impact. We use and carry products that are cruelty-free and sustainable, as well as utilize an ammonia-free and PPD-free colour line. You can feel comfortable booking an appointment at Adara knowing we repurpose and recycle everything from the hair we cut off to the fair trade coffee beans used to perk you up! Adara is also proud to stand behind our gender neutral pricing system and announce that as of 2017 we have been officially Safe Space Trained. It is our hope that we can work together in making the world a more beautiful place!', '203-9562 82 Avenue', 'Edmonton', 'AB', 'T6C 0Z8', NULL, NULL, '20-30 employees', 'https://www.facebook.com/AdaraHair/', 'https://www.instagram.com/adarahairandbody/', 'https://www.linkedin.com/company/adara-salon-&-spa', NULL, NULL, NULL, 'https://www.youtube.com/channel/UCnAOjd3M-ZYxDyqh1ycymjg', 'https://www.adarahair.com/', NULL, NULL),
(12, 31, 'Icon Hair & Body', 'Hair and Body Salon', 'Hair and Body Salon for men and women.\r\n\r\nWe like to keep things simple at Icon by offering both hair & make up services. One deposit at one place means less organizing for you.\r\n\r\nChoose between in salon or onsite bridal services. With two locations to choose from we can create the perfect experience for you and your bridal party. The best part... we\'ll take care of the set up and you can leave the mess to us. Or get comfy in your own space and cut down on travel time. Our team is happy to come to you.', '129 10150 Jasper Ave - Main Level Commerce Place', 'Edmonton', 'AB', 'T5J 1W4', NULL, NULL, NULL, 'https://www.facebook.com/wericons', 'https://www.instagram.com/wericons/', NULL, NULL, NULL, NULL, NULL, 'https://www.iconhair.ca/', NULL, NULL),
(13, 32, 'Avalon Hair Salon & Spa', 'Hair Salon and Spa', 'With over 30 years in the industry, Avalon Salon has a wealth of knowledge and experience when it comes to serving you.\r\n\r\nAvalon has you covered. Whether your looking for a trim or a totally new style. Or perhaps you\'re interested in booking with one of our color specialists. the possibilities are endless. Be ensured that all our of services include an in depth consultation, making sure you are 100% comfortable!\r\n\r\nIf thats not enough! The team at Avalon Salon has worked with many local celebrities and high end clients. Such as Miss Universe 2013, Miss Canada 2013, and a hand full of the Calgary Flames to name a few.\r\n\r\nWe’re confident you will be calling us soon to book your appointment! We are Calgary’s best hair salon.', '1516 11 Street SW', 'Calgary', 'AB', 'T2R 1G9', NULL, NULL, '10-14 employees', 'https://www.facebook.com/Theavalonsalonyyc/', 'https://www.instagram.com/THEAVALONSALONYYC/', 'https://www.linkedin.com/in/the-avalon-salon-bb9077107/?originalSubdomain=ca', NULL, NULL, NULL, NULL, 'https://www.avalonhairsalon.ca/', NULL, NULL),
(14, 33, 'Bellezza Beauty Salon & Spa', 'Hairstyling and Beauty', 'The master stylist behind Bellezza Beauty Salon & Spa is Guitana Gillespie. She has a World Class Training  from the fashion capital of Milan, Italy, and the “Vidal Sassoon” Academy \r\nin Los Angeles.', '1300 Berkley Dr NW', 'Calgary', 'AB', 'T3K 1S9', NULL, NULL, '10-14 employees', 'https://www.facebook.com/people/Bellezza-Beauty-Salon/100063749132204/', 'https://www.instagram.com/bellezza_beauty_salon_/', NULL, NULL, NULL, NULL, NULL, 'https://www.bellezzabeauty.ca', NULL, NULL),
(15, 34, 'Bolero Hair Salon', 'Hair Salon', 'We do Makeup, Hairstyles and Updo for Weddings, Graduations & Parties.\r\n\r\nBolero Beauty and Hair Salon, a Millwoods hair salon located at Millwoods Main Street Plaza, has provided customized hair, beauty, and Aesthetics services since 2005. At Bolero, customer delight is the passion to work. The main focus of Bolero staff is complete \"CUSTOMER SATISFACTION\" and believe in establishing a long term relationship with clients based on integrity and commitment.', '6562 28 Ave NW', 'Edmonton', 'AB', 'T6L 6N3', NULL, NULL, '10-14 employees', 'https://www.facebook.com/people/Bolero-Beauty-Salon/100067085425747/', NULL, NULL, NULL, NULL, NULL, NULL, 'https://bolerobeauty.ca/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `experience_id` int(11) NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_type` tinyint(4) DEFAULT NULL COMMENT '0 Full Time\r\n1 Part Time\r\n2 Contract\r\n3 Temporary\r\n4 Apprenticeship',
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`experience_id`, `company_name`, `title`, `start_date`, `end_date`, `description`, `employment_type`, `city`, `province`, `country`, `candidate_id`) VALUES
(1, 'Oriac', 'Makeup Artist', '2019-04-01', '2020-09-30', 'I was a make up artist.', 1, 'Vancouver', 'British Columbia', 'Canada', 1),
(2, 'Renu Beauty Salon', 'Beautician an Esthetician', '2020-11-02', '2022-11-09', 'I give the best beauty services using the latest technologies and equipment. They are the following:\r\n\r\n- facial treatment and care\r\n- waxing\r\n- threading\r\n- laser hair removal', 0, 'Calgary', 'Alberta', 'Canada', 2),
(3, 'Compound Cut Club', 'Barber', '2018-10-01', '2022-10-01', 'I am a professional barber who provides the hairstyles primarily for men and occasionally for women for four years.', 0, 'Edmonton', 'Alberta', 'Canada', 3),
(4, 'Lather Hair Salon', 'Hairstylist', '2021-09-08', '2022-09-11', 'I performed women\'s haircuts from the day that I first started here. My duties are the following, but not limited to:\r\n\r\n- haircuts\r\n- deep conditioning treatment\r\n- root touch-up\r\n- hair highlighting\r\n- overlays and and on coloring\r\n- perms', 0, 'Calgary', 'Alberta', 'Canada', 4),
(5, 'Colors Hair and Spa', 'Hairstylist and Esthetician 2', '2022-09-11', '2022-11-09', 'Provides \"level 2\" hair, health and beauty services, including, but not limited to:\r\n\r\n- hair styling\r\n- manicure\r\n- pedicure\r\n- lashes and eyebrows\r\n- facials\r\n- waxing', 0, 'Lethbridge', 'Alberta', 'Canada', 5),
(6, 'Johnny\'s Barber Shop', 'Barber', '2015-01-13', '2022-11-09', 'Professional barber for seven years, who provided the following services:\r\n\r\n- buzz cuts\r\n- hair cuts\r\n- facial hair trimming and facial hair shaving', 0, 'Calgary', 'Alberta', 'Canada', 6),
(7, 'Evolution Salon', 'Hair and Spa Services specialist', '2015-12-09', '2020-12-02', 'I am an experienced hair services and salon services specialist who also provided great customer services with good attention to detail. ', 0, 'Leduc', 'Alberta', 'Canada', 7),
(8, 'True Aesthetics', 'Aesthetician', '2016-05-03', '2021-07-13', 'Offered the best services using the finest equipment for all our customers:\r\n\r\n- dermal fillers\r\n- botox\r\n- skin care\r\n- and many others, aside from providing great customer service', 0, 'Edmonton', 'Alberta', 'Canada', 8),
(9, 'Red Stag Barber Shop', 'Barber', '2018-06-23', '2022-11-09', 'Currently doing the following:\r\n\r\n- classic cuts\r\n- buzz cuts\r\n- kids\' cuts\r\n- beard trimming and beard shaving, using numerous techniques', 0, 'Red Deer', 'Alberta', 'Canada', 9),
(10, 'Kinetic Salon', 'Hairstylist / Beautician', '2020-07-13', '2022-02-01', 'I\'ve been a professional hairstylist for this hair salon for several months, providing great haircuts, hair care and customer service to all our customers.', 0, 'Edmonton', 'Alberta', 'Canada', 10);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `employment_type` tinyint(4) NOT NULL COMMENT '0 Full Time\r\n1 Part Time\r\n2 Contract\r\n3 Temporary\r\n4 Apprenticeship',
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `expiry_date` datetime NOT NULL,
  `address` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 Closed\r\n1 Active',
  `compensation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premium_expiry` datetime DEFAULT NULL,
  `payment_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `employer_id`, `title`, `description`, `employment_type`, `post_date`, `expiry_date`, `address`, `city`, `province`, `postal_code`, `status`, `compensation`, `premium_expiry`, `payment_type`) VALUES
(1, 1, 'Licensed Hairstylist', 'At Chatters, Style Happy is all about encouraging your artistic self-expression. Igniting your passion for providing that unforgettable customer experience. That’s why you continually have loyal clients that keep coming back. You have what it takes to ensure that our customers leave looking and feeling their best.\r\n\r\nIf you like having fun and making a difference; bring your Styling skills that are unparalleled to Chatters. Our Elite ongoing education and training opportunities will compliment your already mastered skills.\r\n\r\nWe’re on the hunt for a talented, trend setting, Licensed Hairstylist at our Whitemud Meadows retail salon.\r\n\r\nA little about who you are:\r\n\r\nAn artist at heart, your creativity keeps them coming back!\r\nA natural trend setter, you do that colour, cut or style the best in the business\r\nYou have experience in a Stylist role with a license to work in Alberta\r\nMad multi-tasker with a passion to provide the best possible experience\r\nYou are flexible with relentless ambition to succeed and make those around you better\r\nYou are positive and build lasting relationships with your Style Happy family\r\nYou have a warm and welcoming manner that makes our guests feel comfortable from start to finish\r\nPart time availability for weekends and occasional weekdays\r\n\r\nA little about what you’ll do:\r\n\r\nDeliver on our philosophy that the “Experience is Everything”, make a connection with each guest.\r\nUse your super-styling powers for good, always looking to improve and succeed through advanced education.\r\nSpeak their language. You recognize that everyone has a different approach to beauty and are able to effectively communicate in a way that everybody understands\r\nBe a pro. Maintain a high level of competence and professionalism when representing Chatters at all times\r\nHave fun!\r\n\r\nA little about what we offer:\r\n\r\nWe know that great employees deserve great benefits, like:\r\n\r\nCompetitive pay in a high-traffic salon, with up to 54% commission\r\nDiscounted products and salon services\r\nFlexible hours\r\nMedical and dental, including employer RRSP contributions\r\nElite education by industry leaders\r\n\r\nPlus, lots of opportunities to learn and grow!', 0, '2022-10-27 00:00:00', '0000-00-00 00:00:00', NULL, 'Edmonton', 'AB', 'T5G 3A6', 1, '60000', NULL, NULL),
(2, 1, 'Apprentice Hairstylist', 't Chatters, Style Happy is all about encouraging your artistic self-expression. Igniting your passion for providing that unforgettable customer experience. That’s why you continually have loyal clients that keep coming back. You have what it takes to ensure that our customers leave looking and feeling their best.\r\n\r\nIf you like having fun and making a difference; bring your Styling skills that are unparalleled to Chatters. Our Elite ongoing education and training opportunities will compliment your already mastered skills.\r\n\r\nWe’re on the hunt for a talented, trend setting, Apprentice Hairstylist at our Stonegate Mall retail salon.\r\n\r\nA little about who you are:\r\n\r\nAn artist at heart, your creativity keeps them coming back!\r\nA natural trend setter, you do that colour, cut or style the best in the business\r\nYou have completed your education and are ready to Apprentice\r\nMad multi-tasker with a passion to provide the best possible experience\r\nYou are flexible with relentless ambition to succeed and make those around you better\r\nYou are positive and build lasting relationships with your Style Happy family\r\nYou have a warm and welcoming manner that makes our guests feel comfortable from start to finish\r\n\r\nA little about what you’ll do:\r\n\r\nDeliver on our philosophy that the “Experience is Everything”, make a connection with each guest.\r\nUse your super-styling powers for good, always looking to improve and succeed through advanced education.\r\nSpeak their language. You recognize that everyone has a different approach to beauty and are able to effectively communicate in a way that everybody understands\r\nBe a pro. Maintain a high level of competence and professionalism when representing Chatters at all times\r\nHave fun!\r\n\r\nA little about what we offer:\r\n\r\nWe know that great employees deserve great benefits, like:\r\n\r\nCompetitive pay in a high-traffic salon, with up to 54% commission\r\nDiscounted products and salon services\r\nFlexible hours\r\nMedical and dental, including employer RRSP contributions\r\nElite education by industry leaders\r\n\r\nPlus, lots of opportunities to learn and grow!', 1, '2022-10-25 00:00:00', '0000-00-00 00:00:00', 'Stonegate Mall retail salon', 'Saskatoon', 'AB', 'R6T 2Y6', 1, '50000', NULL, NULL),
(3, 1, 'Hair dresser', 'Hair dresser', 2, '2022-10-28 00:00:00', '0000-00-00 00:00:00', NULL, 'Vancouver', 'BC', 'T8U 6S4', 1, NULL, NULL, NULL),
(4, 2, 'Skin care', 'Skin care', 0, '2022-10-28 00:00:00', '0000-00-00 00:00:00', NULL, 'Ontario ', 'ON', 'T8U 5R4', 1, NULL, NULL, NULL),
(5, 4, 'Stylist Assistant / Receptionist', 'Are you eager for a new challenge or maybe even new to the hair industry and hungry for an opportunity to work with some of the best stylists at one of the top salons in Edmonton?   \r\n\r\nWe are looking for a Stylist Assistant / Receptionist to keep Soho running smoothly while our Salon Coordinator is away on an extended vacation during November and December.  Upon her return, this position could transition into a full-time Stylist Assistant position.  A fantastic opportunity for a recent styling school grad that is ready to enter the hair industry.\r\n\r\nYou are a fit if you answer yes to the following questions:\r\n\r\n• Organization: Are you an organized person with the ability to multi-task?\r\n• Confident: Are you a confident person?\r\n• Communication Skills: Do you communicate well with other team members and clients in a professional, cheerful and bright manner? \r\n• Speed: Are you quick and efficient with your time?   \r\n• Dress Sense: Are you stylish? Contemporary? Do you look like you are in the fashion industry? \r\n• Make-up: Do you wear make-up? If so, is it well applied and modern looking? \r\n\r\nWe want to fill this spot as soon as possible.  If you or someone you know is interested, please send your resume to info@sohohair.ca!', 0, '2022-11-09 13:34:25', '2022-11-09 21:27:42', NULL, 'Edmonton', 'AB', '', 1, '41000', NULL, NULL),
(6, 5, 'Licensed Hairstylist', 'Full Job Description\r\nWe are looking for a Hair Stylist to create flawless haircuts and hairstyles for our customers. Hair Stylist responsibilities include cutting hair using basic and advanced techniques, consulting customers about styles and colors and applying hair care products, like treatment oils and masks. If you have experience cutting short and long hair and are up-to-date with styling trends, we’d like to meet you. Ultimately, you will ensure all customers leave our salon satisfied with our services and feel happy with their new looks.\r\n\r\nResponsibilities\r\n\r\nWelcome customers and identify their preferences by asking pointed questions\r\nRecommend hairstyles and haircuts according to customers’ face shapes and tastes\r\nWash, rinse and dry clients’ hair using appropriate shampoos and conditioners (e.g. for oily hair or dry scalp)\r\nCut, trim and shave hair using professional equipment\r\nApply a wide range of hair coloring techniques, like highlights, ombre and balayage\r\nCreate hairstyles for formal events and everyday looks, including braids, ponytails and buns\r\nApply hair treatment products, as needed (e.g. color protection creams and hydrating masks)\r\nForm bonds with loyal customers and remember their hairstyle preferences\r\nManage bookings and serve walk-ins\r\nEnsure tidiness of beauty stations and sterilize tools, as needed\r\nCross-sell hair care products or services, when appropriate\r\nSkills\r\n\r\nWork experience as a Hair Stylist, Hairdresser, Colorist or similar role\r\nProficiency in hair straightening and curling methods, using hot irons and curlers\r\nHands-on experience with various coloring techniques\r\nKnowledge of a wide range of haircuts, suitable for all hair lengths (e.g. braids and top knots)\r\nFamiliarity with hair treatment products and services, like keratin smoothing\r\nUp-to-date with industry trends\r\nExcellent communication skills\r\nPhysical stamina to stand for long hours\r\nFlexibility to work in shifts\r\nValid license from a cosmetology school\r\nJob Types: Full-time, Part-time\r\n\r\nBenefits:\r\n\r\nDental care\r\nVision care\r\nSupplemental pay types:\r\n\r\nCommission pay\r\nTips\r\nCOVID-19 considerations:\r\nWe are still implementing a lot of the original protocols set out for Covid-19 in our locations. We want to help keep everyone safe and comfortable when they enter, especially the staff.\r\n\r\nExperience:\r\n\r\nstylist: 1 year (preferred)\r\nWork remotely:\r\n\r\nNo', 0, '2022-11-09 13:34:25', '2022-11-30 21:27:42', NULL, 'Edmonton', 'AB', '', 1, '46000', NULL, NULL),
(7, 6, 'Spa Associate', 'Full Job Description\r\nHiring Spa Associates\r\n\r\nSHARE YOUR EXCITEMENT AND BE THE DIFFERENCE at Si Salon and Spa.\r\nIf you’re passionate and LOVE what you do, then we have a career waiting for you at Si Salon and Spa at 7259 Winterburn Road NW, Edmonton.\r\n\r\nThe Spa Associate is the first face and voice of Hand & Si Salon and Spa for our clients. Spa Associates are responsible for providing exceptional customer service to all our clients. Spa Associates will greet, check in/check out and confirm scheduled services for clients and are expected to be knowledgeable about all spa treatments and services.\r\n\r\nWhat you can look forward to, Benefits & Perks:\r\n\r\nCompetitive pay structure that may include commission and incentives\r\nFlexible Schedule to fit your life\r\nProfessional clean work environment\r\nEngaging, friendly and supportive team\r\nUniforms provided\r\n\r\nResponsibilities:\r\n\r\nWelcome and acknowledge each and every client with a smile, eye contact and a friendly verbal greeting using the client’s name when possible\r\nAnswer, record, and process all client calls, requests, questions, or concerns; follow up to ensure each has been met to clients’ satisfaction\r\nSchedule services for individuals and large groups using spa reservation system\r\nUpdate the reservation/cancellations list throughout the day, inform providers of last-minute changes and resolve scheduling issues as needed\r\nMulti-task between answering phones, booking appointments and selling memberships, gift cards and upgrades\r\nProcess client check-ins by confirming reservations and assigning RMT or Esthetician\r\nProcess check-outs including resolving any late and disputed charges\r\nProcess payment types, vouchers, paid-outs, charges, and provide change\r\nAddress client concerns, requests, or issues either individually or by enlisting the help of others\r\nSpeak with clients using clear and professional language and answer telephones using appropriate etiquette\r\nCompliance with all safety regulations of assigned tasks, and ensure a clean and safe working environment with active participation in the health and safety program\r\nOther duties as assigned\r\n\r\nKey Qualifications:\r\n\r\nAbility to communicate effectively with clients and associates\r\nPolite and courteous telephone manner\r\nPrevious salon/spa or reception experience an asset\r\nProven fluency in MS Office tools (Word, Excel, and Outlook), and proficiency in computer keyboarding skills\r\nAbility to stand for long periods of time\r\nAbility to work a variety of shifts, including days, evenings, weekends and holidays\r\nAbility to multi-task and work in a fast-paced environment\r\nPrior computer experience\r\nSales focused - the ability to meet quotas and goals\r\nSelf-motivated, mature and reliable\r\nFriendly and approachable\r\n\r\nIf this sounds amazing and you\'re passionate about growing your career, we look forward to speaking with you. Come in and tour the spa, meet the team and check out the supportive culture we have created at our spa. Please email your resume to sisalonnspa@gmail.com OR visit sisalondandspa.ca.\r\n\r\nI acknowledge that I am applying for employment with an independently owned and operated Si Salon franchisee, a separate company and employer from H&S Massage Spa Canada Corporation and any of its affiliates or subsidiaries. I understand that each independent franchisee is solely responsible for all decisions relating to employees including and without limitation hiring and termination, benefits, compensation, day to day activities, and terms or conditions of employment. Any questions about my application or the hiring process must be directed to the locally owned and operated Si Salon and Spa franchisee.', 0, '2022-11-09 13:48:46', '2022-11-09 21:35:47', '7259 Winterburn Road NW', 'Edmonton', 'AB', 'T5T 4K2', 1, '45000', NULL, NULL),
(8, 7, 'Esthetician', 'Job details\r\nSalary\r\n$15.50–$22.00 an hour\r\nJob type\r\nFull-time\r\nPart-time\r\nQualifications\r\naesthetics: 3 years (Preferred)\r\n\r\nDay Shift (Preferred)\r\n\r\nNight Shift (Preferred)\r\n\r\nFull Job Description\r\nWhat we are searching for;\r\n\r\nWe are currently looking to hire both experienced and newly graduated estheticians. We\'re looking for bubbly, and outgoing people who can merge well within our current staff as well as clients. Flexible availability is important for us.\r\n\r\nCheck out our website at https://beautygardenyyc.com/ for our list of services we offer.\r\n\r\nWhat you bring to us\r\n\r\nThe ideal candidate would have previous customer service and aesthetic experience. We require our staff to always be in proper uniform looking their best. Knowledge and experience regarding skin analysis is crucial to succeed. We are a luxury spa and require our staff to represent us well. Sales experience is also beneficial to this role. This role is for candidates who are friendly & outgoing and love to chat. Medical aesthetic services is also considered an asset.\r\n\r\nServices you may provide;\r\n\r\n- Full body Waxing\r\n\r\n- IPL\r\n\r\n- Facials\r\n\r\n- Mani/Pedis\r\n\r\n- Body Wraps\r\n\r\n- IPL Treatments (Lumecca by inmode)\r\n\r\n- Micro-needling (Morpheus 8 by Inmode)\r\n\r\n- Rf treatments (By Tempsure)\r\n\r\nNew graduated aestheticians; Your hire will be based on your personality and willingness to take on challenges.\r\n\r\nExperienced aestheticians; also receive commission pay of 30% instead of hourly once new hirers have built a returning clientele. There\'s always room for growth.\r\n\r\nNote; Our Spa is contiguously growing and we\'re always looking to expand on new services. We can also provide training for agreed upon services.\r\n\r\nGroup benefits are also offered along with staff discount towards other services.\r\n\r\nJob Types: Full-time, Part-time\r\n\r\nSalary: $15.50-$22.00 per hour\r\n\r\nBenefits:\r\n\r\nDental care\r\nExtended health care\r\nVision care\r\nSchedule:\r\n\r\nEvenings\r\nMonday to Friday\r\nWeekend availability\r\nSupplemental pay types:\r\n\r\nCommission pay\r\nTips\r\nApplication question(s):\r\n\r\nDo you have your drivers license?\r\nExperience:\r\n\r\naesthetics: 3 years (preferred)\r\nShift availability:\r\n\r\nDay Shift (preferred)\r\nNight Shift (preferred)', 0, '2022-11-09 13:48:46', '2022-11-09 21:35:48', NULL, 'Calgary', 'AB', '', 1, '47000', NULL, NULL),
(9, 8, 'Experienced Hair Stylist - Full time', 'Are you a RedBloomer?\r\nCome join the Best salon in Calgary (as voted by the people). Yes, we have high standards and will challenge you to be your BEST SELF but we will support you, love you, respect you and give you the resources you need to succeed. \r\n\r\nCompetitive Compensation: award winning compensation structure, achievable benchmarks to support promotions and growth\r\n\r\nAdvanced Education: in-house educators, leading international guest artists and financing available to pursue your education interests\r\n\r\nHealth Benefits: prescription, dental and wellness\r\n\r\nGrowth opportunities\r\n\r\nPositive and supportive team environment\r\n\r\nExperienced Hair Stylist - Full time\r\nAbout RedBloom Salons\r\n\r\nRedBloom Salon is a full-service hair salon providing haircuts, colour, highlighting, extensions, styling and makeup, with four locations in Calgary. Since 2004 we have been dedicated to providing great hair and the best possible experience. \r\n\r\nNamed best salon in Calgary since 2012, a best place to work in Alberta, and a top 200 salon in North America, we truly love what we do!\r\n\r\nWhy Work Here\r\n\r\nDedicated to giving back to our community\r\n\r\nAdvanced Education and constantly improving your skills\r\n\r\nSalon vibe is beautiful, positive and upbeat\r\n\r\nSalon culture is supportive, positive and inclusive\r\n\r\nOpportunity for creative expression balanced with regular coaching to meet your career aspirations\r\n\r\nThe Guest Experience\r\n\r\nBuild long term healthy relationships with clients to promote yourself and our salon\r\n\r\nProvide exceptional customer service by meeting the expectations laid out in our Service Quality Guide\r\n\r\nPromote Aveda and Evo brand by encouraging the sale of retail\r\n\r\nBecome an expert at Aveda and Evo product knowledge and provide home care recommendations to guests\r\n\r\nPromote all the offerings of RedBloom while ensuring the salon is beautiful at all times\r\n\r\nAnticipates the preferences and expectations of our guests\r\n\r\nDelivers a WOW for going beyond expectations\r\n\r\nA Day In The Life\r\n\r\nTake a genuine interest in our guest’s needs while providing exceptional styling services\r\n\r\nSupport salon operations in cleaning, organizing and assisting other staff members\r\n\r\nEngage with the team by inspiring and assisting other stylists and apprentices\r\n\r\nTo Be Successful In This Role You Must: \r\n\r\nHold a valid credential in Alberta as a hairstylist and have at least 3+ years of experience in a salon as a stylist\r\n\r\nProvide clients with expert consultations and provide beautiful hair services\r\n\r\nOwn your own professional tools \r\n\r\nExceed level benchmarks to earn promotions and increased revenue opportunities\r\n\r\nMeet service sales goals and retail sales goals to earn a competitive commission and help finance your continued education\r\n\r\nBecome a positive contributor to salon culture, making RedBloom salon a best place to work in Alberta\r\n\r\nWhat It Means To Be A RedBloomer:\r\n\r\nAn extraordinary ability to draw others out; can talk to anyone, anywhere, especially when it comes to the beauty industry\r\n\r\nUnselfishly share a genuine joy in life. Our work brings people to a beautiful space, creating a sense of beauty and calm; helping people achieve the best version of themselves. \r\n\r\nA spirit of service toward family, community and clients.\r\n\r\nCalm and confident in changing gears when you need to respond a wide variety of tasks. Nothing is beneath you, we all pull in the same direction \r\n\r\nHow to apply\r\n\r\nPlease apply directly to info@redbloom.ca \r\nAll resumes will be personally reviewed and everyone will receive a timely response.', 0, '2022-11-09 13:55:03', '2022-11-09 21:49:29', '8561 8A Ave SW #2106', 'Calgary', 'AB', 'T3H 4C7', 1, '45500', NULL, NULL),
(10, 9, 'Spa Associate', 'A Career At Diva\r\nOur salon and spas offer a variety of opportunities in the beauty and wellness industry for motivated individuals who desire to excel in their field. Each Diva location in Calgary is unique in atmosphere, team, and guests so that there is a location to suit each employee. Diva Salon and Spa lead the industry in technical, business, and customer service training so that every employee is offered the opportunity to experience world-class education on an ongoing basis. Diva management strives to provide feedback and guided career planning and development for each team member. At Diva, we offer competitive wages and as you grow in knowledge and skill, you earn a wage and career advancement. Diva’s commitment to learning has contributed to our growth and status as award-winning, national industry leaders.\r\n\r\nAt Diva, we offer a career, not just a job.', 1, '2022-11-09 13:55:03', '2022-11-09 21:49:29', NULL, 'Calgary', 'AB', '', 1, '46250', NULL, NULL),
(11, 10, 'Hair Specialist 2', 'Work With Us\r\nYou can be a different kind of independent hair professional.\r\n\r\nYou don’t have to choose between booth rent or a suite to be an independent artist.\r\n\r\nFreedom\r\n- Unlimited Time Off\r\n- Choose Your Schedule\r\n- Charge Your Own Rate\r\n- Your Clients Are Your Clients\r\n- Choose Your Services\r\n- Independence With Support\r\n\r\nCommission\r\n- 40+% Commission\r\n- No Product Charges\r\n- Save Yourself the Tax Headache\r\n- All Backbar Provided\r\n- No Merchant Fees\r\nExperience: 0-3 years. 4 years or more preferred\r\n\r\nUnlimited Growth\r\n- Increase Your Pricing Anytime\r\n- Work More or Work Less\r\n- Business Coaching Provided\r\n- Open Door Policy\r\n- Investment Opportunities\r\n\r\nIf you are interested in hearing more about our offer, please submit a video.\r\n\r\nTell Us About Yourself!\r\nWhat Interests You About Our Offer?\r\nWhat Would Your Add to Our Team?\r\nWhat\'s Your Instagram Handle?\r\nGet Creative!', 0, '2022-11-09 14:05:44', '2022-11-09 21:55:18', 'Unit 102 1207 91 Street NW', 'Edmonton', 'AB', 'T6X 1E9', 1, '50000', NULL, NULL),
(12, 11, 'Hair Stylist', 'Job details\r\nJob type\r\nFull-time\r\nQualifications\r\nhair styling: 4 years (Required)\r\n\r\nFull Job Description\r\nAre you an enthusiastic, and creative individual who is passionate about the hair industry and express your artistic abilities through beauty transformation? Here at Adara Hair and Body Studio, we believe the - Creation Of Beauty Is Art – and we are devoted to establishing a warm, welcoming, and inclusive atmosphere. If you find yourself motivated by opportunities for growth and thrive in a team-oriented environment, we are looking for likeminded stylists to join our family!\r\n\r\nWe offer a range of hair services including cuts, colours, treatments, and waxing and are looking for team members who are knowledgeable and skilled in these areas. You will work alongside an incredibly talented team of ambitious professionals who love bringing their knowledge of hair and creativity to life!\r\n\r\nCharacter and Experience:\r\n\r\nAn educated and experienced Stylist who radiates positivity\r\nExcellent interpersonal skills and a passion for creating long-lasting relationships & loyal clientele\r\nConfident at recommending hair care products, latest trends and styling methods to our guests & always greeting them with a smile!\r\nGood verbal communication in regard to the client’s wants & needs, ensuring they leave with nothing but an unforgettable customer experience!\r\nCreative mindset and a good eye for design\r\nUp to date with current hair styling & colour techniques\r\nKnowledge in different hair care products and their benefits\r\nBonus Experience:\r\n\r\nWaxing and facial services\r\nCustomer service experience\r\nAvailability:\r\n\r\nFull time\r\nFlexible Hours: Weekends/Evenings\r\nBenefits:\r\n\r\nDental Care\r\nVision Care\r\nProduct Discounts\r\nExtended Health Care\r\nRRSP employer match\r\nCompetitive Compensation (commission-based structure)\r\nFlexible Schedule\r\nOngoing product knowledge & training\r\nJob Type: Full-time\r\n\r\nBenefits:\r\n\r\nDental care\r\nExtended health care\r\nFlexible schedule\r\nOn-site parking\r\nRRSP match\r\nStore discount\r\nFlexible Language Requirement:\r\n\r\nFrench not required\r\nSchedule:\r\n\r\n8 hour shift\r\nSupplemental pay types:\r\n\r\nBonus pay\r\nCommission pay\r\nTips\r\nAbility to commute/relocate:\r\n\r\nEdmonton, AB T6C 0Z8: reliably commute or plan to relocate before starting work (required)\r\nExperience:\r\n\r\nhair styling: 4 years (required)\r\nWork Location: One location', 0, '2022-11-09 14:05:44', '2022-11-09 21:55:18', '203-9562 82 Avenue', 'Edmonton', 'AB', 'T6C 0Z8', 1, '46000', NULL, NULL),
(13, 12, 'Esthetician', 'Job details\r\nSalary\r\n$15–$16 an hour\r\nJob type\r\nFull-time\r\nPart-time\r\nPermanent\r\nQualifications\r\naesthetician: 1 year (Preferred)\r\n\r\nFull Job Description\r\nPerform skincare services, such as wraps and facials\r\nWelcome clients and explain the list of services and products offered\r\nProvide customers with incentives as a way of encouraging them to return\r\nTrain new hires on the company’s services and products to ensure every employee upholds the quality levels expected\r\nAttend continuing education programs and regular staff meetings to keep skills updated with the newest methods and technologies\r\nSell additional products and services in a simple but professional manner to enable clients to maintain their skincare routine at home\r\nExplain how the service will affect the client’s skin and offer advice on which service is best for them\r\nJob Types: Full-time, Part-time, Permanent\r\nPart-time hours: 40 per week\r\n\r\nSalary: $15.00-$16.00 per hour\r\n\r\nSchedule:\r\n\r\n8 hour shift\r\nSupplemental pay types:\r\n\r\nTips\r\nAbility to commute/relocate:\r\n\r\nEdmonton, AB: reliably commute or plan to relocate before starting work (required)\r\nExperience:\r\n\r\naesthetician: 1 year (preferred)', 1, '2022-11-09 14:16:25', '2022-11-09 22:06:37', '129 10150 Jasper Ave - Main Level Commerce Place', 'Edmonton', 'AB', 'T5J 1W4', 1, '41000', NULL, NULL),
(14, 13, 'Wanted: Professional Hairstylists, Estheticians, Registered Massage Therapists and guest service rep', 'Employment Type: Contract work, with high chance of becoming full time after six months\r\n\r\nAvalon is always looking to add to our team of talented professionals.\r\nWe are currently seeking experienced Hair Stylists, Estheticans, Registered Massage Therapists and guest service representatives.\r\n\r\nPlease send your resume via the job application form on this page, or drop into any of our Avalon locations.\r\n\r\nRelevant experience: 1-3 years minimum. New graduates are also encouraged to apply.', 2, '2022-11-09 14:16:25', '2022-11-09 22:06:37', '1516 11 Street SW', 'Calgary', 'AB', 'T2R 1G9', 1, '25000', NULL, NULL),
(15, 14, 'Apprentice, Hairstylist', 'Job details\r\nSalary\r\nFrom $15 an hour\r\nJob type\r\nFull-time\r\nPermanent\r\nQualifications\r\nSecondary School (Preferred)\r\n\r\nProServe (Preferred)\r\n\r\nFull Job Description\r\nTitle: Hairstylist/Apprentice\r\n\r\nCompany: Bellezza Beauty Salon & Spa\r\n\r\nLocation: 1300 Berkley Dr NW, Calgary 	AB T3K 1S9\r\n\r\nStatus: Full Time\r\n\r\nWhy Work at Bellezza?\r\n\r\n· High wages/hourly plus commission. You have the potential to earn +50% commission!\r\n\r\nBonus system includes:\r\n\r\n· Health benefits\r\n\r\n· $500 towards basic education to get you started\r\n\r\n· Education allowance\r\n\r\n· One on one coaching with a qualified Aveda Educator\r\n\r\n· Advanced training to grow your skills\r\n\r\n· Journeyman licensed stylists earn up to $600 towards Vidal Sassoon training in California\r\n\r\n· Support to become a Certified Aveda Educator (ACE)\r\n\r\n· Support and guidance to enter competitions\r\n\r\n· Opportunity to assist and/or join the Diva Artistic Team\r\n\r\n· Staff and family discounts on products and services\r\n\r\nCompany Profile:\r\n\r\nBellezza Beauty Salon & Spa offers a variety of opportunities in the beauty and wellness industry for motivated individuals who desire to excel in their field. Our location in Calgary is unique in atmosphere, team and guests so that there is a location to suit each employee. Bellezza Beauty Salon & Spa leads the industry in technical, business and customer service training so that every employee is offered the opportunity to experience world-class education on an ongoing basis. Bellezza management strives to provide feedback and guided career planning and development for each team member. At Bellezza Beauty Salon & Spa, we offer higher than competitive wages and as you grow in knowledge and skill, you earn wage and career advancement. Bellezza’s commitment to learning has contributed to our growth and status as national industry leader.\r\n\r\nAt Bellezza Beauty Salon & Spa, we offer a career, not just a job.\r\n\r\nJob Description:\r\n\r\nThe core responsibility of a stylist is to cut, color, perm, style hair, shampoo, perform hair and scalp treatments. Offer makeup touchups and retail salon products for all guests.\r\nStylists must assist other stylists, apprentices and frontline employees when needed and help in general salon up keeping.\r\nThis includes: preparing stylist’s next guest, applying color, styling, makeup touch ups, hand massages and offering beverages.\r\nHelp frontline book appointments and answer the phone, assist with inventory and greeting guests.\r\nIf a stylist or apprentice\'s lack experience in any of the above areas, then he/she must accept all necessary education and training with the help of management to satisfy the requirements of his/her position.\r\nQualifications:\r\n\r\nEducation\r\n\r\nHigh school level\r\nHair school Certification\r\nRed Seal Journeyman Hairstylist Certification\r\nSkills\r\n\r\nStrong communication skills to confidently explain information and converse with customers/clients\r\nOrganizational skills to effectively maintain day to day requirements\r\nSelf-confidence to take the initiative to approach potential customers/clients\r\nAchievement-motivated to work with Diva Salon and Spa to set and surpass realistic goals\r\nWorking Conditions:\r\n\r\nHigh traffic salon in a great location!\r\nBlack Dress Code\r\nPositive and professional working environment\r\nWork Hours\r\n\r\n8-hour shift (or full-time equivalent)\r\nOpen Monday-Sunday\r\nNights and Weekends\r\nDiva Salon and Spa would like to thank all applicants, however only those who qualify for an interview will be contacted.\r\n\r\nBellezza Beauty Salon & Spa is an equal opportunity employer.\r\n\r\nJob Types: Full-time, Permanent\r\n\r\nSalary: From $15.00 per hour\r\n\r\n', 4, '2022-11-09 14:31:17', '2022-11-09 22:17:51', '1300 Berkley Dr NW', 'Calgary', 'AB', 'T3K 1S9', 1, '38000', NULL, NULL),
(16, 15, 'Apprentice, Hairstylist', 'Job details\r\nSalary\r\n$19 an hour\r\nJob type\r\nFull-time\r\nPart-time\r\nPermanent\r\n\r\nFull Job Description\r\n- or equivalent experience\r\n\r\nWork site environment\r\n- Wet/damp\r\n- Odours\r\n- Non-smoking\r\n\r\nWork setting\r\n- Urban area\r\n- Relocation costs not covered by employer\r\n- Barbershop or hairstyling salon/studio\r\n\r\nTasks\r\n- Book appointments\r\n- Cut and trim hair according to client\'s instructions or preferences\r\n- Shampoo customers\' hair\r\n- Shave and trim beards and mustaches\r\n- Provide other hair treatment, such as waving, straightening and tinting and also provide scalp conditioning massages\r\n- Analyze hair and scalp condition and provide basic treatment or advice on beauty care treatments for scalp and hair\r\n- Apply bleach, tints, dyes or rinses to colour, frost or streak hair\r\n- Apply hair extensions\r\n- Clean and style wigs and hair pieces\r\n- Cut, trim, taper, curl, wave, perm and style hair\r\n- Suggest hair style compatible with client\'s physical features or determine style from client\'s instructions and preferences\r\n- Maintain and order supplies\r\n\r\nSupervision\r\n- 1 to 2 people\r\n\r\nHair styling techniques\r\n- Blow drying\r\n- Hair braiding\r\n- Iron waving/curling\r\n- Permanents\r\n- Extensions\r\n- Twisting\r\n- Relaxing\r\n- Spiking\r\n- Pin curls\r\n- Roller setting\r\n- Hair colouring techniques\r\n- Bleach\r\n- Dyes/tints\r\n- Frosting\r\n- Streaking/highlights\r\n\r\nSecurity and safety\r\n- Bondable\r\n\r\nTransportation/travel information\r\n- Own transportation\r\n- Public transportation is not available\r\n\r\nWork conditions and physical capabilities\r\n- Fast-paced environment\r\n- Repetitive tasks\r\n- Manual dexterity\r\n- Attention to detail\r\n- Hand-eye co-ordination\r\n- Combination of sitting, standing, walking\r\n- Standing for extended periods\r\n\r\nPersonal suitability\r\n- Client focus\r\n- Dependability\r\n- Efficient interpersonal skills\r\n- Flexibility\r\n- Judgement\r\n- Reliability\r\n- Team player\r\n\r\nScreening questions\r\n- Are you currently legally able to work in Canada?\r\n- Do you currently reside in proximity to the advertised location?\r\n- Do you have previous experience in this field of employment?', 4, '2022-11-09 14:31:17', '2022-11-09 22:17:51', NULL, 'Edmonton', 'AB', '', 1, '39000', NULL, NULL),
(17, 15, 'Barber', 'Edmonton, AB\r\n$3,000–$5,000 a month - Full-time, Part-time\r\n\r\nJob details\r\nSalary\r\n$3,000–$5,000 a month\r\nJob type\r\nFull-time\r\nPart-time\r\n\r\nQualifications\r\n- hair styling: 1 year (Preferred)\r\n\r\nFull Job Description\r\nProvide proffesional haircuts for men and kids.\r\n\r\nBeard trims/line ups using straight razor\r\n\r\nScissors cut\r\n\r\nBuzzcut\r\n\r\nHot shaves\r\n\r\nFacial detox\r\n\r\nProvide excellent customer service\r\n\r\nSweep and clean station\r\n\r\nDisinfect all tools\r\n\r\nJob Types: Full-time, Part-time\r\n\r\nSalary: $3,000.00-$5,000.00 per month\r\n\r\nSchedule:\r\n- 8 hour shift\r\n- Every Weekend\r\n- Monday to Friday\r\n- Weekend availability\r\n\r\nSupplemental pay types:\r\n- Commission pay\r\n- Tips\r\n\r\nCOVID-19 considerations:\r\nDisinfect barber chair before seating client\r\n\r\nExperience:\r\n\r\nhair styling: 1 year (preferred)', 0, '2022-11-09 14:40:35', '2022-11-09 22:34:20', '6562 28 Ave NW 	', 'Edmonton', 'AB', 'T6L 6N3', 1, '60000', NULL, NULL),
(18, 2, 'Barber', 'Full Job Description\r\nProvide proffesional haircuts for men and kids.\r\n\r\nBeard trims/line ups using straight razor\r\n\r\nScissors cut\r\n\r\nBuzzcut\r\n\r\nHot shaves\r\n\r\nFacial detox\r\n\r\nProvide excellent customer service\r\n\r\nSweep and clean station\r\n\r\nDisinfect all tools\r\n\r\nJob Types: Full-time, Part-time\r\n\r\nSalary: $3,000.00-$5,000.00 per month\r\n\r\nSchedule:\r\n- 8 hour shift\r\n- Every Weekend\r\n- Monday to Friday\r\n- Weekend availability\r\n\r\nSupplemental pay types:\r\n- Commission pay\r\n- Tips\r\n- COVID-19 considerations:\r\n- Disinfect barber chair before seating client\r\n\r\nExperience:\r\n- hair styling: 1 year (preferred)', 0, '2022-11-09 14:40:35', '2022-11-09 22:34:20', '2719 Quance Street', 'Regina', 'SK', 'R6T 2Y6', 1, '60000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_contact`
--

CREATE TABLE `job_contact` (
  `job_contact_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_contact`
--

INSERT INTO `job_contact` (`job_contact_id`, `job_id`, `contact_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(4, 2, 2),
(5, 3, 1),
(3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_view`
--

CREATE TABLE `job_view` (
  `view_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `month` tinyint(4) NOT NULL DEFAULT 1,
  `year` time(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resume_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saved_job`
--

CREATE TABLE `saved_job` (
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saved_job`
--

INSERT INTO `saved_job` (`candidate_id`, `job_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(6, 18),
(9, 18),
(11, 14),
(13, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0 candidate\r\n1 employer\r\n2 admin',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` bit(1) NOT NULL DEFAULT b'0',
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `deactivation_date` datetime DEFAULT NULL,
  `last_online` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `email`, `password`, `phone_number`, `is_verified`, `creation_date`, `deactivation_date`, `last_online`) VALUES
(1, 2, 'info@admin1.ca', '123', '(825) 670-9090', b'1', '2022-10-28 14:32:55', NULL, '2022-10-28 22:27:41'),
(2, 2, 'info@admin2.ca', '123', '1111111111', b'1', '2022-10-28 14:32:55', NULL, '2022-10-28 22:27:41'),
(3, 1, 'info@employer1.ca', '123', '(523) 876-4040', b'1', '2022-10-28 14:33:31', NULL, '2022-10-28 22:33:03'),
(4, 1, 'info@employer2.ca', '123', '(380) 672-1010', b'1', '2022-10-28 14:39:03', NULL, '2022-10-28 22:38:24'),
(5, 1, 'info@employer3.ca', '123', '(523) 876-4041', b'1', '2022-11-01 10:04:21', NULL, '2022-11-01 17:03:57'),
(6, 1, 'info@employer4.ca', '123', '(780) 672-2323', b'1', '2022-11-01 10:05:13', NULL, '2022-11-01 17:04:45'),
(7, 1, 'info@employer5.ca', '123', '(523) 672-1010', b'1', '2022-11-01 10:05:40', NULL, '2022-11-01 17:05:15'),
(8, 0, 'info@candidate1.ca', '123', '(825) 330-8080', b'0', '2022-11-01 10:07:13', NULL, '2022-11-01 17:06:12'),
(9, 0, 'info@candidate2.ca', '123', '(780) 490-1212', b'1', '2022-11-01 10:07:13', NULL, '2022-11-01 17:06:12'),
(10, 0, 'info@candidate3.ca', '123', '(523) 876-1616', b'1', '2022-11-01 10:08:47', NULL, '2022-11-01 17:07:59'),
(11, 0, 'info@candidate4.ca', '123', '(825) 786-5657', b'1', '2022-11-01 10:08:47', NULL, '2022-11-01 17:07:59'),
(12, 0, 'info@candidate5.ca', '123', '(380) 672-5555', b'1', '2022-11-01 10:09:21', NULL, '2022-11-01 17:08:59'),
(13, 2, 'info@admin3.ca', '123', '(780) 427-1462', b'1', '2022-11-07 04:47:34', NULL, '2022-11-07 04:47:34'),
(14, 2, 'info@admin4.ca', '123', '(780) 527-0481', b'1', '2022-11-07 04:47:34', NULL, '2022-11-07 04:47:34'),
(15, 0, 'info@candidate6.ca', '123', '(403) 815-0518', b'1', '2022-11-07 05:04:18', NULL, '2022-11-07 05:04:18'),
(16, 0, 'info@candidate7.ca', '123', '(780) 814 2055', b'1', '2022-11-07 05:04:18', NULL, '2022-11-07 05:04:18'),
(17, 0, 'info@candidate8.ca', '123', '(780) 328-2828', b'1', '2022-11-07 05:11:16', NULL, '2022-11-07 05:11:16'),
(18, 0, 'info@candidate9.ca', '123', '(403) 631-1725', b'1', '2022-11-07 05:11:16', NULL, '2022-11-07 05:11:16'),
(19, 0, 'info@candidate10.ca', '123', '(825) 752 0825', b'1', '2022-11-07 05:13:37', NULL, '2022-11-07 05:13:37'),
(20, 0, 'info@candidate11.ca', '123', '(403) 996-1627', b'1', '2022-11-07 05:13:37', NULL, '2022-11-07 05:13:37'),
(21, 0, 'info@candidate12.ca', '123', '(587) 778-0778', b'1', '2022-11-07 05:17:34', NULL, '2022-11-07 05:17:34'),
(22, 0, 'info@candidate13.ca', '123', '(780) 553-3553', b'1', '2022-11-07 05:17:34', NULL, '2022-11-07 05:17:34'),
(23, 0, 'info@candidate14.ca', '123', '(403) 256-0256', b'1', '2022-11-07 05:17:34', NULL, '2022-11-07 05:17:34'),
(24, 0, 'info@candidate15.ca', '123', '(780) 559-7220', b'1', '2022-11-07 05:17:34', NULL, '2022-11-07 05:17:34'),
(25, 1, 'info@employer6.ca', '123', '(780) 243-0789', b'1', '2022-11-07 11:29:00', NULL, '2022-11-07 11:29:00'),
(26, 1, 'info@employer7.ca', '123', '(403) 215-8782', b'1', '2022-11-07 11:29:00', NULL, '2022-11-07 11:29:00'),
(27, 1, 'info@employer8.ca', '123', '(780) 653-7864', b'1', '2022-11-07 11:29:00', NULL, '2022-11-07 11:29:00'),
(28, 1, 'info@employer9.ca', '123', '(403) 991 7070', b'0', '2022-11-07 11:29:00', NULL, '2022-11-07 11:29:00'),
(29, 1, 'info@employer10.ca', '123', '(587) 776-2600', b'1', '2022-11-07 11:29:00', NULL, '2022-11-07 11:29:00'),
(30, 1, 'info@employer11.ca', '123', '(780) 437-9191 ', b'1', '2022-11-07 12:23:23', NULL, '2022-11-07 12:23:23'),
(31, 1, 'info@employer12.ca', '123', '780-757-4266 ', b'1', '2022-11-07 12:23:23', NULL, '2022-11-07 12:23:23'),
(32, 1, 'info@employer13.ca', '123', '(403) 764-7984', b'1', '2022-11-07 12:51:30', NULL, '2022-11-07 12:51:30'),
(33, 1, 'info@employer14.ca', '123', '(403) 244-3006', b'1', '2022-11-07 12:51:30', NULL, '2022-11-07 12:51:30'),
(34, 1, 'info@employer15.ca', '123', '(780) 469 6006', b'1', '2022-11-07 14:08:40', NULL, '2022-11-07 14:08:40'),
(35, 0, 'test@test.com', '$2y$10$FNQleI8e', NULL, b'0', '2022-11-13 19:00:27', NULL, '2022-11-14 03:00:27'),
(36, 0, 'newuser@new.com', '$2y$10$sHQ01b68', NULL, b'0', '2022-11-15 12:18:57', NULL, '2022-11-15 20:18:57'),
(37, 0, 'tetafds@mail.com', '$2y$10$jSU9vd8O', NULL, b'0', '2022-11-15 12:22:53', NULL, '2022-11-15 20:22:53'),
(38, 0, 'fadsf@mail.com', '$2y$10$G0b4ml1Y', NULL, b'0', '2022-11-15 12:24:30', NULL, '2022-11-15 20:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `code` int(6) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `employer_id` (`employer_id`) USING BTREE;

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `candidate_id` (`candidate_id`) USING BTREE;

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `candidate_id` (`candidate_id`) USING BTREE;

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `employer_id` (`employer_id`) USING BTREE;

--
-- Indexes for table `job_contact`
--
ALTER TABLE `job_contact`
  ADD PRIMARY KEY (`job_contact_id`),
  ADD KEY `job_id` (`job_id`,`contact_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `job_view`
--
ALTER TABLE `job_view`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`resume_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `saved_job`
--
ALTER TABLE `saved_job`
  ADD PRIMARY KEY (`candidate_id`,`job_id`) USING BTREE,
  ADD KEY `job_id` (`job_id`),
  ADD KEY `candidate_id` (`candidate_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_contact`
--
ALTER TABLE `job_contact`
  MODIFY `job_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_view`
--
ALTER TABLE `job_view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `resume_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `application_ibfk_3` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`);

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `recruiter_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`);

--
-- Constraints for table `job_contact`
--
ALTER TABLE `job_contact`
  ADD CONSTRAINT `job_contact_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `job_contact_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);

--
-- Constraints for table `job_view`
--
ALTER TABLE `job_view`
  ADD CONSTRAINT `job_view_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Constraints for table `saved_job`
--
ALTER TABLE `saved_job`
  ADD CONSTRAINT `saved_job_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  ADD CONSTRAINT `saved_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
