SET @ORIG_SQL_REQUIRE_PRIMARY_KEY = @@SQL_REQUIRE_PRIMARY_KEY;
SET SQL_REQUIRE_PRIMARY_KEY = 0;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 06:45 PM
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
-- Database: `educational_platform`
--
CREATE DATABASE IF NOT EXISTS `educational_platform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `educational_platform`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `title`) VALUES
(1, 'Hair Colouring'),
(2, 'Hair Styling'),
(3, 'Tools'),
(4, 'General Discussion');

-- --------------------------------------------------------

--
-- Table structure for table `category_view`
--

CREATE TABLE `category_view` (
  `view_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT 'fk',
  `month` tinyint(4) NOT NULL,
  `year` year(4) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `resource_id` int(11) NOT NULL,
  `resource_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `tags` varchar(150) DEFAULT NULL,
  `content` longtext NOT NULL,
  `date_created` date NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`resource_id`, `resource_title`, `description`, `tags`, `content`, `date_created`, `category_id`) VALUES
(1, 'Lovely Light Contouring Tutorial', 'In this video, we outline the steps for creating a light contour for your client\'s hair. Colouring  their hair with highlights can amplify certain aspects of one\'s face, making them pop. ', 'Hair,Colouring', '<div class=\"container\">\r\n    <p>\r\n        In this video, we outline the steps for creating a light contour for your client\'s hair. Colouring  their hair with highlights can amplify certain aspects of one\'s face, making them pop. \r\n    </p>\r\n    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=R6SBgthxQo8&ab_channel=Oriac\" frameborder=\"0\" allowfullscreen>\r\n</iframe>\r\n</div>\r\n', '2022-10-20', 1),
(2, 'Soft Bob Tutorial', 'Tony Ricci gives a tutorial on how to cut the soft bob. A very nice hairstyle for women, you can get a lot of value out of learning how to cut this style for your clients.', 'Tony Ricci,Hairstyle,Hair Cutting', '<div class=\"container\">\r\n    <p>\r\n        Tony Ricci gives a tutorial on how to cut the soft bob. A very nice hairstyle for women, you can get a lot of value out of learning how to cut this style for your clients.\r\n    </p>\r\n    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AO41aiZEYLw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n', '2022-10-20', 2),
(3, 'X Light Strobing Tutorial', 'Tutorial on how to do hair strobing. You\'ll learn a lot about colouring to accentuate your client\'s face. ', NULL, '<div class=\"container\">\r\n    <p>\r\n        Tutorial on how to do hair strobing. You\'ll learn a lot about colouring to accentuate your client\'s face.\r\n    </p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/M5uyfVaeqvo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n</div>', '2022-10-19', 1),
(4, 'Oriac Live! The Impact of Women in Leadership', 'Host Palma N\'Sheluvzit is joined by Maria Gallo, Wendy Belanger, and Andrea Sampson - three incredible leaders in the beauty industry!\r\nTogether, they will explore the importance & impact of women working in leadership positions within the beauty industry.\r\n', 'podcast, oriac live!, beauty industry, ', '<div class=\"container\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CPrXH-z-iLg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n</div>', '2022-11-14', 4),
(5, 'Sam Villa Artist Series Finishing Brush', 'Education Director, Andrew Carruthers explains the features and benefits of the Sam Villa Artist Series Finishing Brush.', 'hair styling, brushes, sam villa', '<div class=\"container\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nHJozF5Ab-o\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n</div>', '2022-11-14', 3),
(6, 'The Future of Beauty Education with Kevin Cameron on Oriac Live!', 'With so many schools ready to start up again in September, Kevin will be talking all about education in the beauty industry!\r\n\r\n✂ What is the future of education?\r\n✂ How can we incorporate technology into the education process?\r\n✂ What\'s the difference between going to school versus learning through YouTube?\r\n✂ And much, much more.', 'podcast, beauty industry, education, oriac live!', '<div class=\"container\">\r\n<iframe width=\"555\" height=\"313\" src=\"https://www.youtube.com/embed/2NWp2anccGY\" title=\"The Future of Beauty Education with Kevin Cameron on Oriac Live!\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n</div>', '2022-11-14', 4),
(7, 'Oriac Live! with the Oriac Artistic Design Team', 'Join the Oriac Artistic Design Team for ORIAC LIVE on Monday, May 16th at 7PM ET!\r\n\r\n✂︎ Learn how to achieve happiness & balance in your salon\r\n✂︎ Make a fabulous return to live education & events\r\n✂︎ How NAHA winners keep their passion for the industry\r\n✂︎ Explore the hottest Spring & Summer trends\r\n✂︎ Get your questions answered live', 'podcast, oriac live!, salon', '<div class=\"container\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ts5h7qUQGkE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n</div>', '2022-11-14', 4);

-- --------------------------------------------------------

--
-- Table structure for table `resource_view`
--

CREATE TABLE `resource_view` (
  `view_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL COMMENT 'fk',
  `month` tinyint(4) NOT NULL,
  `year` year(4) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_view`
--
ALTER TABLE `category_view`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `category_hit_category_fk` (`category_id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `resource_category_fk` (`category_id`);

--
-- Indexes for table `resource_view`
--
ALTER TABLE `resource_view`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `resource_id` (`resource_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_view`
--
ALTER TABLE `category_view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resource_view`
--
ALTER TABLE `resource_view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_view`
--
ALTER TABLE `category_view`
  ADD CONSTRAINT `category_hit_category_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `resource_category_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `resource_view`
--
ALTER TABLE `resource_view`
  ADD CONSTRAINT `resource_hit_resource_fk` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
