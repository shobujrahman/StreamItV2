-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2022 at 09:30 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stream_it_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `userName`, `password`, `email`, `full_name`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Abdur Rahman', '$2y$10$8GflDYHqbfJT01S/eQHHm.qClyBgzFqzk/4uVc86OwQ.J/z2CFnEy', 'admin@admins', 'ProRahman', 'super_admin', '2021-06-06 05:37:01', '2021-06-06 05:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `category_series`
--

CREATE TABLE `category_series` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `series_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_series`
--

INSERT INTO `category_series` (`id`, `category_id`, `series_id`, `created_at`, `updated_at`) VALUES
(54, 2, 116, NULL, NULL),
(55, 3, 116, NULL, NULL),
(57, 3, 118, NULL, NULL),
(58, 5, 118, NULL, NULL),
(60, 3, 121, NULL, NULL),
(61, 4, 121, NULL, NULL),
(81, 3, 140, NULL, NULL),
(84, 3, 143, NULL, NULL),
(85, 5, 143, NULL, NULL),
(86, 5, 144, NULL, NULL),
(87, 16, 144, NULL, NULL),
(88, 17, 144, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint UNSIGNED NOT NULL,
  `prdct_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdct_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdct_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `prdct_name`, `prdct_price`, `prdct_key`, `created_at`, `updated_at`) VALUES
(1, 'Ten Thousand', '10,000', 'njasvibidifusb', '2021-11-06 05:01:24', '2021-11-06 05:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_image`, `created_at`, `updated_at`) VALUES
(6, 'Australia', '1629890777.png', '2021-07-27 00:11:37', '2021-08-25 11:26:17'),
(7, 'England', '1629890806.png', '2021-08-25 11:26:46', '2021-08-25 11:26:46'),
(8, 'Usa', '1629890822.png', '2021-08-25 11:27:02', '2021-08-25 11:27:02'),
(9, 'Brazil', '1629890830.png', '2021-08-25 11:27:10', '2021-08-25 11:27:10'),
(10, 'Germany', '1629890845.png', '2021-08-25 11:27:25', '2021-08-25 11:27:25'),
(11, 'Portugal', '1629890866.png', '2021-08-25 11:27:46', '2021-08-25 11:27:46'),
(12, 'Duth', '1629890876.png', '2021-08-25 11:27:56', '2021-08-25 11:27:56'),
(13, 'Pakisthan', '1629890889.png', '2021-08-25 11:28:09', '2021-08-25 11:28:09'),
(14, 'Egypt', '1629891115.png', '2021-08-25 11:28:17', '2021-08-25 11:31:55'),
(16, 'Japan', '1629891131.png', '2021-08-25 11:29:17', '2021-08-25 11:32:11'),
(17, 'Pakistan', '1629891213.png', '2021-08-25 11:32:19', '2021-08-25 11:33:33'),
(18, 'India', '1629891196.png', '2021-08-25 11:32:28', '2021-08-25 11:33:16'),
(19, 'Bangladesh', '1629891183.png', '2021-08-25 11:33:03', '2021-08-25 11:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `country_series`
--

CREATE TABLE `country_series` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `series_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_series`
--

INSERT INTO `country_series` (`id`, `country_id`, `series_id`, `created_at`, `updated_at`) VALUES
(36, 6, 116, NULL, NULL),
(37, 7, 116, NULL, NULL),
(39, 7, 118, NULL, NULL),
(40, 8, 118, NULL, NULL),
(41, 9, 118, NULL, NULL),
(43, 7, 121, NULL, NULL),
(44, 8, 121, NULL, NULL),
(63, 7, 140, NULL, NULL),
(64, 19, 140, NULL, NULL),
(67, 7, 143, NULL, NULL),
(68, 8, 143, NULL, NULL),
(69, 8, 144, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cntry_id` bigint UNSIGNED DEFAULT NULL,
  `view_count` int DEFAULT '1',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watch_ads` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `ratings` double(8,1) DEFAULT NULL,
  `series_id` bigint UNSIGNED DEFAULT NULL,
  `season_id` bigint UNSIGNED DEFAULT NULL,
  `video_upload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `image`, `banner_image`, `cat_id`, `content_type`, `url`, `url_type`, `cntry_id`, `view_count`, `token`, `token_type`, `user_agent`, `agent_type`, `watch_ads`, `subscription`, `content_id`, `ratings`, `series_id`, `season_id`, `video_upload`, `description`, `created_at`, `updated_at`) VALUES
(11, 'Shadime Zaroor Ana', '1627798461.png', '999692333.png', 3, 'video', 'https://www.youtube.com/watch?v=vf-XIsSWiGA', '2', 6, 162, NULL, NULL, NULL, NULL, NULL, 'free', 0, 5.8, NULL, NULL, NULL, 'werteyhergbdv', '2022-01-01 06:14:21', '2022-05-16 09:22:29'),
(13, 'veime', '1628590040.jpg', '402985624.png', 3, 'video', '579493386', '8', 7, 91, NULL, NULL, NULL, NULL, NULL, 'free', 0, NULL, NULL, NULL, NULL, 'wewgrsb', '2021-08-10 10:07:20', '2021-10-04 22:21:17'),
(14, 'Twist', '1629209915.jpg', '244090112.jpg', 4, 'video', 'https://www.youtube.com/watch?v=DTSW39pyMqA', '2', 7, 51, NULL, NULL, NULL, NULL, NULL, 'free', 0, NULL, NULL, NULL, NULL, '<p>                                <span style=\"font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\"><b>As Mumbai’s youth are falling prey</b> to rampant drug abuse, suspended cop Radhe is recalled for a clean-up mission. But Radhe is up against a dangerous new outlaw Rana, who will stop at nothing to rule the city.</span></p><p>A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.</p><p><span style=\"font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\">As Mumbai’s youth are falling prey to rampant drug abuse, suspended cop Radhe is recalled for a clean-up mission. But Radhe is up against a dangerous new outlaw Rana, who will stop at nothing to rule the city.</span></p><p>A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.&nbsp;<span style=\"font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\">As Mumbai’s youth are falling prey to rampant drug abuse, suspended cop Radhe is recalled for a clean-up mission. But Radhe is up against a dangerous new outlaw Rana, who will stop at nothing to rule the city.</span></p><p>A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday .&nbsp;</p><p><span style=\"font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\">As Mumbai’s youth are falling prey to rampant drug abuse, suspended cop Radhe is recalled for a clean-up mission. But Radhe is up against a dangerous new outlaw Rana, who will stop at nothing to rule the city.</span></p><p>A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.</p><p>\r\n                        </p>', '2021-08-17 14:18:35', '2021-11-27 06:40:57'),
(15, 'NDTV', '1629211879.png', '1797504696.png', 4, 'video', 'https://ndtv24x7elemarchana.akamaized.net/hls/live/2003678/ndtv24x7/ndtv24x7master.m3u8', '1', 7, 38, NULL, NULL, NULL, NULL, NULL, 'free', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-17 14:51:19', '2021-11-25 05:28:48'),
(20, 'Dark River', '1629891964.png', '1232726369.png', 3, 'video', 'https://mobstatus.com/wp-content/uploads/2021/06/Paani-Paani-song-status-l-new-badsha-song-pani-pani-l-pani-pani-status-l-new-song-l720P_HD.mp4?_=2', '9', 18, 47, NULL, NULL, NULL, NULL, NULL, 'free', 0, 4.5, NULL, NULL, NULL, '<p>Badshah x Jacqueline Fernandez x Aastha Gill is back to raise the temperatures! 🔥🔥 Saregama Originals Presents Badshah’s “Paani Paani” a duet with Aastha Gill starring Badshah and Jacqueline Fernandez. Badshah refreshes the soundscape with the romance of the strings of the Rajasthani Rawanhatta and the Kalbeliya Folk Dance. The power Duo Badshah and Aastha Gill are back with the gorgeous Jacqueline Fernandez, all set to set this summer on fire. Badshah continues to celebrate and represent the cultures of India, celebrating its landscape, colours, dance and unique folk sounds and instruments that face the fear of being forgotten in this world of new age music.<br></p>', '2022-06-12 00:00:00', '2021-11-27 06:25:29'),
(21, 'Cold Fusion', '1629893080.png', '818312392.png', 3, 'video', 'https://mobstatus.com/wp-content/uploads/2021/06/badshah-paani-paani-song-status-_shorts720P_HD.mp4?_=3', '9', 18, 20, NULL, NULL, NULL, NULL, NULL, 'yes', 0, 4.5, NULL, NULL, NULL, '<p>Hello Viewers, Are You Looking Badshah Paani Paani Status Video :- Badshah X Jacqueline Fernandez X Aastha Gill Are Back To Raise The Temperatures! Saregama Originals Presents Badshah’s “Paani Paani” A Duet With Aastha Gill Starring Badshah And Jacqueline Fernandez. Badshah Refreshes The Soundscape With The Romance Of The Strings Of The Rajasthani Rawanhatta And The Kalbeliya Folk Dance. The Power Duo Badshah And Aastha Gill Are Back With The Gorgeous Jacqueline Fernandez, All Set To Set This Summer On Fire. </p><p>Badshah Continues To Celebrate And Represent The Cultures Of India, Celebrating It’s Landscape, Colours, The Dance And The Unique Folk Sounds And Instruments That Face The Fear Of Being Forgotten In This World Of New Age Music. Nazar Thi Badshah Song Status Video Download, Saiyaan Ne Dekha Aise Latest Hindi Song Full Screen Status Video, So Just Go And Download Your Favourite Video Which One You Liked Most And Put It On Your Facebook And Whatsapp Status Video. And Also Don’t Forget To Share This Content With Your Friends, Family And Loving One…                                \r\n                        </p>', '2021-08-25 12:04:40', '2021-10-05 04:59:05'),
(22, 'Megamind', '1629893185.png', '1603024154.png', 3, 'video', 'https://mobstatus.com/wp-content/uploads/2021/06/Le-Ja-Mujhe-Sath-Tere-__-Armaan-Malik-__-Male-Version-__-Whatsapp-Status-Video-__-Alakesh-Creation1080P_HD.mp4?_=3', '9', 18, 20, NULL, NULL, NULL, NULL, NULL, 'free', 0, 4.5, NULL, NULL, NULL, 'Hello Viewers, Are You Looking Badshah Paani Paani Status Video :- Badshah X Jacqueline Fernandez X Aastha Gill Are Back To Raise The Temperatures! Saregama Originals Presents Badshah’s “Paani Paani” A Duet With Aastha Gill Starring Badshah And Jacqueline Fernandez. Badshah Refreshes The Soundscape With The Romance Of The Strings Of The Rajasthani Rawanhatta And The Kalbeliya Folk Dance. The Power Duo Badshah And Aastha Gill Are Back With The Gorgeous Jacqueline Fernandez, All Set To Set This Summer On Fire. Badshah Continues To Celebrate And Represent The Cultures Of India, Celebrating It’s Landscape, Colours, The Dance And The Unique Folk Sounds And Instruments That Face The Fear Of Being Forgotten In This World Of New Age Music. Nazar Thi Badshah Song Status Video Download, Saiyaan Ne Dekha Aise Latest Hindi Song Full Screen Status Video, So Just Go And Download Your Favourite Video Which One You Liked Most And Put It On Your Facebook And Whatsapp Status Video. And Also Don’t Forget To Share This Content With Your Friends, Family And Loving One…', '2021-08-25 12:06:25', '2021-11-25 04:39:57'),
(24, 'Freedom', '1629895677.png', '2047369426.png', 3, 'video', 'https://mobstatus.com/wp-content/uploads/2021/06/Paani-Paani-song-status-l-new-badsha-song-pani-pani-l-pani-pani-status-l-new-song-l720P_HD.mp4?_=2', '2', 18, 102, NULL, NULL, NULL, NULL, NULL, 'paid', 6, 4.5, NULL, NULL, NULL, 'Hello Viewers, Are You Looking Badshah Paani Paani Status Video :- Badshah X Jacqueline Fernandez X Aastha Gill Are Back To Raise The Temperatures! Saregama Originals Presents Badshah’s “Paani Paani” A Duet With Aastha Gill Starring Badshah And Jacqueline Fernandez. Badshah Refreshes The Soundscape With The Romance Of The Strings Of The Rajasthani Rawanhatta And The Kalbeliya Folk Dance. The Power Duo Badshah And Aastha Gill Are Back With The Gorgeous Jacqueline Fernandez, All Set To Set This Summer On Fire. Badshah Continues To Celebrate And Represent The Cultures Of India, Celebrating It’s Landscape, Colours, The Dance And The Unique Folk Sounds And Instruments That Face The Fear Of Being Forgotten In This World Of New Age Music. Nazar Thi Badshah Song Status Video Download, Saiyaan Ne Dekha Aise Latest Hindi Song Full Screen Status Video, So Just Go And Download Your Favourite Video Which One You Liked Most And Put It On Your Facebook And Whatsapp Status Video. And Also Don’t Forget To Share This Content With Your Friends, Family And Loving One…', '2021-08-25 12:47:57', '2022-05-18 05:01:04'),
(25, 'Robin Hood', '1629954187.png', '1124147414.png', 3, 'video', 'https://www.statuslagao.com/whatsapp/videos/new/new-whatsapp-status-video-030.mp4', '9', 19, 35, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, NULL, NULL, NULL, '<span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">Audio description (AD) provides linguistic descriptions of movies and allows visually impaired people to follow a movie along with their peers. Such descriptions are by design mainly visual and thus naturally form an interesting data source for computer vision and computational linguistics. In this work we propose a novel dataset which contains transcribed ADs, which are temporally aligned to full length movies. In addition we also collected and aligned movie scripts used in prior work and compare the two sources of descriptions. We introduce the&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">Large Scale Movie Description Challenge</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;(LSMDC) which contains a parallel corpus of 128,118 sentences aligned to video clips from 200 movies (around 150&nbsp;h of video in total). The goal of the challenge is to automatically generate descriptions for the movie clips. First we characterize the dataset by benchmarking different approaches for generating video descriptions. Comparing ADs to scripts, we find that ADs are more visual and describe precisely what&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">is shown</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;rather than what&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">should happen</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;according to the scripts created prior to movie production. Furthermore, we present and compare the results of several teams who participated in the challenges organized in the context of two workshops at ICCV 2015 and ECCV 2016.</span>', '2021-08-26 05:03:07', '2021-10-05 04:40:03'),
(26, 'Example Movie', '1629954257.png', '1355575299.png', 3, 'video', 'https://www.statuslagao.com/whatsapp/videos/new/new-whatsapp-status-video-030.mp4', '9', 19, 33, NULL, NULL, NULL, NULL, '', 'yes', NULL, 4.5, NULL, NULL, NULL, '<span style=\"color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">Audio description (AD) provides linguistic descriptions of movies and allows visually impaired people to follow a movie along with their peers. Such descriptions are by design mainly visual and thus naturally form an interesting data source for computer vision and computational linguistics. In this work we propose a novel dataset which contains transcribed ADs, which are temporally aligned to full length movies. In addition we also collected and aligned movie scripts used in prior work and compare the two sources of descriptions. We introduce the&nbsp;</span><i style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">Large Scale Movie Description Challenge</i><span style=\"color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;(LSMDC) which contains a parallel corpus of 128,118 sentences aligned to video clips from 200 movies (around 150&nbsp;h of video in total). The goal of the challenge is to automatically generate descriptions for the movie clips. First we characterize the dataset by benchmarking different approaches for generating video descriptions. Comparing ADs to scripts, we find that ADs are more visual and describe precisely what&nbsp;</span><i style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">is shown</i><span style=\"color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;rather than what&nbsp;</span><i style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">should happen</i><span style=\"color: rgb(51, 51, 51); font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;according to the scripts created prior to movie production. Furthermore, we present and compare the results of several teams who participated in the challenges organized in the context of two workshops at ICCV 2015 and ECCV 2016.</span>', '2021-08-26 05:04:17', '2021-11-28 10:03:54'),
(27, 'Music Videos', '1629959013.png', '124119636.png', 7, 'video', 'https://www.statuslagao.com/whatsapp/videos/new/new-whatsapp-status-video-031.mp4', '9', 18, 33, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, NULL, NULL, NULL, 'Audio description (AD) provides linguistic descriptions of movies and allows visually impaired people to follow a movie along with their peers. Such descriptions are by design mainly visual and thus naturally form an interesting data source for computer vision and computational linguistics. In this work we propose a novel dataset which contains transcribed ADs, which are temporally aligned to full length movies. In addition we also collected and aligned movie scripts used in prior work and compare the two sources of descriptions. We introduce the Large Scale Movie Description Challenge (LSMDC) which contains a parallel corpus of 128,118 sentences aligned to video clips from 200 movies (around 150 h of video in total). The goal of the challenge is to automatically generate descriptions for the movie clips. First we characterize the dataset by benchmarking different approaches for generating video descriptions. Comparing ADs to scripts, we find that ADs are more visual and describe precisely what is shown rather than what should happen according to the scripts created prior to movie production. Furthermore, we present and compare the results of several teams who participated in the challenges organized in the context of two workshops at ICCV 2015 and ECCV 2016.', '2021-08-26 06:23:33', '2021-11-24 10:56:24'),
(28, 'Music Two', '1629959115.png', '1778104028.png', 3, 'video', 'https://www.statuslagao.com/whatsapp/videos/new/new-whatsapp-status-video-029.mp4', '9', 18, 78, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, NULL, NULL, NULL, 'Audio description (AD) provides linguistic descriptions of movies and allows visually impaired people to follow a movie along with their peers. Such descriptions are by design mainly visual and thus naturally form an interesting data source for computer vision and computational linguistics. In this work we propose a novel dataset which contains transcribed ADs, which are temporally aligned to full length movies. In addition we also collected and aligned movie scripts used in prior work and compare the two sources of descriptions. We introduce the Large Scale Movie Description Challenge (LSMDC) which contains a parallel corpus of 128,118 sentences aligned to video clips from 200 movies (around 150 h of video in total). The goal of the challenge is to automatically generate descriptions for the movie clips. First we characterize the dataset by benchmarking different approaches for generating video descriptions. Comparing ADs to scripts, we find that ADs are more visual and describe precisely what is shown rather than what should happen according to the scripts created prior to movie production. Furthermore, we present and compare the results of several teams who participated in the challenges organized in the context of two workshops at ICCV 2015 and ECCV 2016.', '2021-08-26 06:25:15', '2021-11-27 06:25:53'),
(29, 'Hopper', '1629959178.png', '1391958790.png', 3, 'video', 'https://www.statuslagao.com/whatsapp/videos/new/new-whatsapp-status-video-030.mp4', '9', 8, 56, NULL, NULL, NULL, NULL, NULL, 'yes', 7, 4.5, NULL, NULL, NULL, '<span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">Audio description (AD) provides linguistic descriptions of movies and allows visually impaired people to follow a movie along with their peers. Such descriptions are by design mainly visual and thus naturally form an interesting data source for computer vision and computational linguistics. In this work we propose a novel dataset which contains transcribed ADs, which are temporally aligned to full length movies. In addition we also collected and aligned movie scripts used in prior work and compare the two sources of descriptions. We introduce the&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">Large Scale Movie Description Challenge</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;(LSMDC) which contains a parallel corpus of 128,118 sentences aligned to video clips from 200 movies (around 150&nbsp;h of video in total). The goal of the challenge is to automatically generate descriptions for the movie clips. First we characterize the dataset by benchmarking different approaches for generating video descriptions. Comparing ADs to scripts, we find that ADs are more visual and describe precisely what&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">is shown</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;rather than what&nbsp;</span><i style=\"box-sizing: inherit; font-family: Georgia, Palatino, serif; font-size: 18px;\">should happen</i><span style=\"font-family: Georgia, Palatino, serif; font-size: 18px;\">&nbsp;according to the scripts created prior to movie production. Furthermore, we present and compare the results of several teams who participated in the challenges organized in the context of two workshops at ICCV 2015 and ECCV 2016.</span>', '2021-08-26 06:26:18', '2021-11-24 08:44:57'),
(46, 'Fast and Furious 9', '1636172501.jpg', '1265291029.jpg', 3, 'video', 'https://www.youtube.com/watch?v=aSiDu3Ywi8E', '2', 8, 105, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, NULL, NULL, NULL, 'ghjhfgd', '2021-09-08 12:32:32', '2022-05-16 13:05:30'),
(49, 'Star Sports', '1631250486.png', '594980002.png', 8, 'channel', 'https://www.youtube.com/watch?v=LRtEJPSj2-8', '2', 18, 26, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, NULL, NULL, NULL, '<span style=\"font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">The much-awaited song of Icon Star Allu Arjun\'s Pushpa is Dakko Dakko Mekka is out here. Up the volume of your speakers and groove to the beats of this electrifying Dakko Dakko Mekka with our own Pushparaj.\r\nWatch &amp; Enjoy - Dakko Dakko Meka Song From Pushpa - The Rise Telugu Movie.</span>', '2021-09-10 05:08:06', '2021-10-05 04:39:45'),
(50, 'HBO', '1631250806.png', '1973777811.png', 10, 'channel', 'https://www.youtube.com/watch?v=cjjofxNQshM', '2', 18, 13, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 4.0, NULL, NULL, NULL, '<span style=\"color: rgb(3, 3, 3); font-family: Roboto; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">Tags Used \r\nRaataan Lambiyan Lyrics, Raataan Lambiyan, Kithe Chali Ae, Shershaah, Shershaah songs, siddarthmalhotra, raatan lambiyan lyrics, trending, viral, trending songs,Sony Music India, Sony Music, Latest Hits, Ranjha, Sidharth Malhotra, Siddharth Malhotra, Kiara Advani, Karan Johar, Dharma Productions, B Praak, Jasleen Royal, Romy, Anvita Dutt, dharma songs, Shershaah songs, Shershaah, prime video songs, Hindi songs, latest hindi songs, latest bollywood songs, 2021 bollywood songs, latest love songs, romance, romantic songs, Bollywood hit tracks, Amazon prime, love, 2021, love songs 2021, Romance songs 2021Raataan Lambiyan, Jubin </span>', '2021-09-10 05:13:26', '2021-11-23 11:50:50'),
(51, 'Cartoon Network', '1631251002.png', '612815678.png', 3, 'channel', 'https://www.youtube.com/watch?v=07d2dXHYb94', '2', 18, 22, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, NULL, NULL, NULL, '<span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">“Pip” animated short film presented by Southeastern Guide Dogs -- A heartwarming tale for underdogs everywhere, Pip is the story of a small dog with a big dream—to become a Southeastern Guide Dog. Does she have what it takes?\r\n \r\nShare the link: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbnVYRG5VTDh0alFiSmk1c3NsMzE0OC1WbE4xZ3xBQ3Jtc0tubnpUREgwc09lZGZ0RERHSmotS1Y1LVNqekNFYUZGbjVCQVNJQTRrRm43MFFDY05KWWM0YXM3Z3hGaURkY0FmMXpCaGVSNjRGbUVjdk9BdWhPQ09YYVFGMEpoWVFBbnQ0aW5Wd0UtVFVjRzJGUzlhUQ&amp;q=https%3A%2F%2Fwww.PipFilm.com\" dir=\"auto\" rel=\"nofollow\" target=\"_blank\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.PipFilm.com</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> \r\nTag us on Facebook: @SoutheasternGuideDogs\r\nTag us on Twitter and Instagram: @SEGuideDogs\r\nInclude the Hashtags: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/pip\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#Pip</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/pipfilm\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#PipFilm</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/seguidedogs\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#SEGuideDogs</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/southeasternguidedogs\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#SoutheasternGuideDogs</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n \r\nFind out more at: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbjktdGpEMWg2Tnc4aUxnNEJMV2E2YlNEUGRqUXxBQ3Jtc0tsREs4QmtiT1o2MG9FNGpvb2pWX0RkLWd6RFozR2hYWmhuOGZ2eDVtOHoyUUZxNWNSRUNpWlhFYWZvQVhITGw2ZFZwamx4YTNWS0ZFY0EydXpwc08yM2lMRmRuY2dXaWRKQkVnQW5XN1M2MUFpOWh6Yw&amp;q=https%3A%2F%2Fwww.GuideDogs.org\" dir=\"auto\" rel=\"nofollow\" target=\"_blank\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.GuideDogs.org</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n \r\nFilm made possible by Gary and Melody Johnson.</span>', '2021-09-10 05:16:42', '2021-11-23 11:51:55'),
(52, 'BBC News', '1631251499.png', '1614523972.png', 12, 'channel', 'https://www.youtube.com/watch?v=X3n63VaW4iA', '2', 18, 23, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 4.0, NULL, NULL, NULL, '<span style=\"font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">North Korea’s military parade features hazmat suits and gas masks - BBC News\r\n\r\nNorth Korea has held a military parade to mark the communist state\'s 73rd founding anniversary, but did not display any major ballistic missiles.\r\n\r\nState media photos of the night-time parade showed marching soldiers in what appeared to be bright red hazmat suits and gas masks.\r\n\r\nAccording to our correspondent this may be a sign that a special force has been created to help prevent the spread of Covid-19.\r\n\r\nLeader Kim Jong-un, who looked visibly slimmer, was seen among the unmasked crowds hugging children.\r\n\r\nOn Thursday, state media also released images of fire trucks, tractors, and fireworks at the parade.\r\n\r\nNorth Korea is suffering from food shortages and a deepening economic crisis due to the Covid-19 pandemic.</span>', '2021-09-10 05:24:59', '2021-11-23 11:51:25'),
(53, 'ESPN', '1631252871.png', '785635443.png', 14, 'channel', 'https://www.youtube.com/watch?v=rxslQS6KTS4', '2', 9, 20, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, NULL, NULL, NULL, '<span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">Relive this season\'s Barça-Mallorca that ended with 7 goals at Camp Nou.\r\n\r\nSUBSCRIBE NOW:\r\n▶ </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/user/fcbarcelona\" rel=\"nofollow\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.youtube.com/user/fcbarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> \r\n\r\nFOLLOW US:\r\n🌐 Site: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqblRrOG1pSVVNWWdmcjJsbUgtZUFGZC1NWlpad3xBQ3Jtc0tsdXNrc0pWbmFMSDkzeTRudWNFbFdIbGNWOHRGandkREsyMS1RTjNndEFqOTg2TWhMRzloOG0wYWliT1JQQ1Q1Z2FSVnYyYVBNbjN5OHV0N2NiX29lclpsblpkcFY0Q3FQSVl5LURTVjV2QXRXLUxERQ&amp;q=http%3A%2F%2Fwww.fcbarcelona.com\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://www.fcbarcelona.com</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n🔵 Facebook: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa21MSjgxUTJmTjh1VTFoMDZqY0ZFWDRFSFNUZ3xBQ3Jtc0ttMEJ1Z2MwVTBObllfVFR4ellWUkZ6QXBsNnRUSDFHUk9SMWVUNFVXWHJtOGpSRGlMU3RaNWdHNHdGQ0daeEhvU1I4UGdOUzJVcnp1VkxjWFczQ0o5dTh5WjhFS0VkZHNDcHJ6a19MOGx4OVJEZmh2VQ&amp;q=http%3A%2F%2Fwww.facebook.com%2Ffcbarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://www.facebook.com/fcbarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n🙌 Facebook Supporters: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3h5ZGZHTExhVDBDMmdEcE0wbktxWTBPUDNTd3xBQ3Jtc0ttUHh0aERxWUo3djhQaTY3QURyNTJ2TDNKX2pickF0OWVHanhWTW9uR0JCakljVERSa0lCWGsxemwwRk1JT1JlTmtKbHI4VGIyTDIzMDdwNkgtQ25QRHpnZ2JJdVdrS2ptZWk1ZVlCd1VhMldETUVuRQ&amp;q=https%3A%2F%2Fwww.facebook.com%2Fbecomesupporter%2Ffcbarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.facebook.com/becomesuppor...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n📸 Instagram: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbHdHMG1LaWNiVlctYUhJbjZyd3c1cW1EYlBQd3xBQ3Jtc0tuSTFtc1MydE5TMHR0SEt2SGdWcDFlNUpTNjFnSTBlaWU1N25CUUxBb1lHVGJSaF8xYmNsbkRGYlpUNDRsbERZc25IcnU4SnlKaGE5QnJYeV94a0NjRlI5WTNNakZYQ1NEV0JRVGxJckoyMEk4UzQwRQ&amp;q=http%3A%2F%2Fwww.instagram.com%2Ffcbarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://www.instagram.com/fcbarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n🐦 Twitter: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1pYU2hmODlwb3c1UWs1c0hoWkczcVpPMXAzd3xBQ3Jtc0tuMjNQdHRjeFFLM3RlNE5Ca2ZfSmRvTHJ2c19uTk9IMHJyUFpqaHAxTVBCa0J4OHRFRnJPNWhSUnpJaXU5M2JFdTRWeklrVGVlQ045Vlp4dnlMR3E4a21mRXlWT0NWa2xLcmhFTzJxZl9HLXljNTh5Zw&amp;q=http%3A%2F%2Ftwitter.com%2FFCBarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://twitter.com/FCBarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n🎶 Tiktok: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbWRSUTA0NlpfOXEwODdVVmEyOUxCWFRjV3p3QXxBQ3Jtc0tudXFfLVlNcVJRLVdqRTNYaHZtYkEwQ2ZhNVRzRnQ4cjJ3Rl9MWkVxZTEwTkRQOXdZcnhjYmx4c0JGbTVrV2c2TUJ3M0x3OWVVRURDRVhMaUFDZEU2NFNYRjRNUU5qbmdhX3dROGhpLTJlNk9GMDFnZw&amp;q=https%3A%2F%2Fwww.tiktok.com%2F%40fcbarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.tiktok.com/@fcbarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> \r\n📱 Viber: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbW1kTkp1QjZjcExCLTZZNWpwOV9ra0huUGdlQXxBQ3Jtc0ttUURvV00wY0ozUHhhc2lNMnJfeGt5dmdKbGo2SUw5cy00U205anZIT2hvTjNFcWR1Z0xjR3RfVnlES1VJRGp5MUU1Y2lLdnhJZm04OXRaSmk3WUNEb2VXRE1aN1ZKNU03Q1lXVHl2YlNXbS1VOFJCWQ&amp;q=http%3A%2F%2Fchats.viber.com%2Ffcbarcelona\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://chats.viber.com/fcbarcelona</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; border: 0px; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n</span>                                \r\n                            <div><br></div>', '2021-09-10 05:47:51', '2021-11-25 05:50:29');
INSERT INTO `items` (`id`, `name`, `image`, `banner_image`, `cat_id`, `content_type`, `url`, `url_type`, `cntry_id`, `view_count`, `token`, `token_type`, `user_agent`, `agent_type`, `watch_ads`, `subscription`, `content_id`, `ratings`, `series_id`, `season_id`, `video_upload`, `description`, `created_at`, `updated_at`) VALUES
(55, 'Bawla', '1637839562.jpg', '2108111482.jpg', 2, 'video', 'https://www.youtube.com/watch?v=eI2gINbvVsw', '2', 18, 119, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, NULL, NULL, NULL, '<span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">Baawla Badshah new song is here with new rap song 2021, Saga Music presents Baawla new song by Badshah &amp; Uchana Amit Ft. Samreen Kaur.\r\n\r\nAre Kyu Pade Ho Chakkar Me, Koi Nahi Hai Takkar Mein!!\r\nझाझर ते परे नै इक रैया डावला, मेरे पिता ने जुलम करया वर ढूंढा बावला – Baawla new song 2021, music given by Badshah &amp; Aditya Dev, lyrics are penned by Badshah.\r\nJhajjar te pare ne ek raiya dawla, mere pita ne julm kareya var dhunda baawla.\r\n\r\n</span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/badshah\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#Badshah</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/baawla\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#Baawla</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/sagamusic\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#SagaMusic</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/rapsong\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#RapSong</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/newsong\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#NewSong</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/newhindisong\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#NewHindiSong</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/samreenkaur\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#SamreenKaur</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/bawla\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#Bawla</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/hashtag/bavla\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">#Bavla</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> Badshah Bachpan Ka Pyar Badshah\r\n\r\nBuy official merchandise from </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbVczT09kSFRscERySlJJZTVXUEo3YTkwajBxUXxBQ3Jtc0tsSk1VZHF3MjQ1dzFjWWRrQnRqYlNJekJFMnV3YXdORDVfOElsQUZkY3R4UnlwOGlhaEE3b0IybW1vdWZfMF9WTmFmMTBzOXY2akFoa3ZGNi1SVGdiMTV3eTg1SERMdGtFVVJlOUVRTmpLeHlLcmk4TQ&amp;q=https%3A%2F%2Fwww.badfit.in\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.badfit.in</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nSubscribe and click the bell icon to get notified - </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbU1nLXZOYjIzVGtfcWpGVkxhdXZOZmxidVBYUXxBQ3Jtc0tsMGtpY2FHNkVvZ0RCOURFaktMUWpZNGkwSE5vV21pTlFUTjZMRHJIS2dZOUlTSGl2N1hYOHdkZ0JxSmlvMUNZaDZkVFdVcmhxVU55a0IxWEFxclpSc1FqNk14eEpyUkE5azF4Zlg3Q3YzUXVnZkRxQQ&amp;q=http%3A%2F%2Fbit.ly%2FBadshahYT\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://bit.ly/BadshahYT</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n\r\nFollow me on : \r\nInstagram : </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa0Utcm1BQzRfWEtTX3ZBYW5TR0VDSnJkbjZqUXxBQ3Jtc0tuMjhOSV93UF8tUDJiZng3WndkWTU4TnJwTnh1VWotS2FQQzhkT2JKQ0xxMjgyaWlEVFpwV2pieHFuUEF1Q24xM0cyYTNWRE9CS0pYYmxGZnpTMGxXNDdYV1Ftdm5ISUl6anlSeHJjNVNqMktOaXNPYw&amp;q=https%3A%2F%2Fwww.instagram.com%2Fbadboyshah\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.instagram.com/badboyshah</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> \r\nFacebook : </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa0JiV0NWOU10dXJJUXZERnl5WnIxcWJGRnF3d3xBQ3Jtc0tuaUthejIzZkhLaHAxOEFVazJPSHN1VXVvck84R1ZVVEZ3YWhRRloyYzJIQzQ0YlFnZVVMeGRFem8wZm8tWlAxSG9BVWpDdlNsWUVHcExSaHlCd0R6LU9ZOXN3SFd6REtQVmdMTTNGX2ZRR3lIa0NKaw&amp;q=https%3A%2F%2Fwww.Facebook.com%2FOfficialBadshah\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://www.Facebook.com/OfficialBadshah</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> \r\nTwitter : </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTRWS1kySXU1ekdWVXFrbFo3VXF4WExqdWNBd3xBQ3Jtc0trVm9EMjhNU0pnS1FmQ0h6ekNrcHU0LUtHMnlFaFV0cFV0N1diR1Y0V2FYTmptLTBucndCSFp0elhpQ0JsYXRfSjFjZEhEV0RQMEdQYng4LTNPQkxmYzlVT2lMOGQtZ1JkSzB3MFFYNnBUU3VTdFBqbw&amp;q=https%3A%2F%2FTwitter.com%2Fits_Badshah\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); color: var(--yt-endpoint-color, var(--yt-spec-call-to-action)); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://Twitter.com/its_Badshah</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> </span>', '2021-09-10 06:25:43', '2022-05-17 14:49:41'),
(56, 'RTP Type Channel', '1632405998.png', '1151656696.png', 11, 'channel', 'rtp://239.186.70.29:10000', '9', 19, 45, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.0, NULL, NULL, NULL, 'TEST DESCRIPTION', '2021-09-23 14:06:38', '2021-10-05 04:42:12'),
(57, 'Test Channel One', '1632904112.png', '1846206190.png', 14, 'channel', 'http://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_2.m3u8', '1', 18, 15, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, NULL, NULL, NULL, '<div><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0.2px;\">Gulshan Kumar &amp; T-Series presents Bhushan Kumar\'s \"Dil Galti Kar Baitha Hai\" Song, This song is sung by Jubin Nautiyal , sufi vocals by Danish Sabri, music by Meet Bros; lyrics by Manoj Muntashir. The song features Jubin Nautiyal and Mouni Roy. The video is directed by Ashish Panda.</span><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0.2px;\">\r\n</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px; letter-spacing: normal; white-space: normal; background-color: rgb(255, 255, 255);\"></span></span></div><div><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: 0.2px;\"><br></span></span></div>', '2021-09-29 08:28:32', '2021-11-24 10:42:13'),
(58, 'Test Channel Link Two', '1632904337.png', '283440788.png', 14, 'channel', 'http://31.220.41.88:8081/live/pt-sporttv1.stream/playlist.m3u8', '1', 18, 18, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.0, NULL, NULL, NULL, '<span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">Gulshan Kumar &amp; T-Series presents Bhushan Kumar\'s \"Dil Galti Kar Baitha Hai\" Song, This song is sung by Jubin Nautiyal , sufi vocals by Danish Sabri, music by Meet Bros; lyrics by Manoj Muntashir. The song features Jubin Nautiyal and Mouni Roy. The video is directed by Ashish Panda.\r\n\r\n Enjoy and stay connected. Hit the \'LIKE\' button if you ♥ this song.\r\n ________________________________________ \r\nSUBSCRIBE 👉 </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3REUnV0d1NGakFpeFc3SzFEa2lRSEtjeGFRUXxBQ3Jtc0ttOGV6QUFnSUg2SDhUMFZkSTYya3NrZWhCcWttSmtFS28zN3FxaUxaVzBCSFpSVWhrSTRKOFZ0MHFCMXg5TnNhNXBUU3FMem51anVZSGJGcGpxNlBHRlBfM2x5UUUtM29PY1JzclY0ZG5iUUNQUjgtdw&amp;q=http%3A%2F%2Fbit.ly%2FTSeriesYouTube\" dir=\"auto\" rel=\"nofollow\" target=\"_blank\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">http://bit.ly/TSeriesYouTube</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"> For UNLIMITED ENTERTAINMENT! 🔔 Stay updated! \r\n ________________________________________ \r\n\r\n♪Stream the Full Song Here♪ \r\nJioSaavn: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbVgyNHAyTXdqU3E3c2xZTnRoWml5d05nS0UwQXxBQ3Jtc0ttWWE5OFluRmZpZzlla2FMZU1XMlAzbzItRFBhUnJWNWZMMldsTzBOQXJReERtWlV2Tml4SG1tdWFLNXN3Sm85UGhpbGZzdWZNN1F5ajZXck5wMG5uVHR1a0lGYjNidUhBUHMtbWJnU3RwaEs5cTU4bw&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-JioSaavn\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-J...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nSpotify: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTd2UTYtYXpyYlVHRWJOVWtZaFhibUZjaU5EUXxBQ3Jtc0tuVk8xV2NpcEoyM2x2M1ZVVEU3S2Qtekc2VU9QaDlnTnB4QTE2QWxPcTltY3hJVW1iOHJVM0NCbTJZNEtodWdZTzJ5RnpFSVFJSWNsQkdzV3h5eVNuYU1DR09QYnNhZW1pOEZfY2lUSEY4YkNLUTQ4VQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-Spotify\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-S...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nHungama: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3Z0aWlLMDBsemtESUd2SVNaM09heHNMY2w2QXxBQ3Jtc0trNnB0S1lyYWRkRFk4WHRoRm0xbDloOGI5WGpoQkRWU1VYcFN1M2k3ZlY5a2RWemVwclc0LVBud3hGN19wZTVxZmJ5bHBzSXVORFdkeFYwUDlHY2h5T0ZjNDg4RVZ0cFQ4QjZJeHR4SVlucEJNSFI3UQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-Hungama\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-H...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nGaana: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbmJhV3BsMEpIX2hEbjBrT0tGazdQOERSM0t5d3xBQ3Jtc0tsVGc3YS1jM2N1bFJET3N1ZFhNRTgtOXhldC1nUkFsTWJlWVFfWlFJcHdOMnJtWW5zX2hRY0NXal9SbENVMFF3Q04xRTNucTg2UmV5ZDJIanNhYzRTMXJMdGdmWWU0VEd4M2lYZVQ0S01vbG1Va3kxOA&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-Gaana\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-G...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nApple Music: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbFotTS1xNnhaOTdGMl80NmJ6LVZ5VF9MYzFGUXxBQ3Jtc0trUFROOHFDUGpkTC1MVE5YS1g1ZWFGUlc3MmRDVElveFJUaUc5djlqZDZ2cl9sdXRyRFpKNVd6aHNlUWZVakJjdERwQUNpQUNtb2RRUm96bTU1MU41T2cwSVQzNFVjTDE4a0FyWUJhNm1zb1FXLTJpZw&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-AppleMusic\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-A...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nAmazon Prime Music: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTc2NEs2a21ZV3VLVFNDWlNYQVpWZTlUcXA2QXxBQ3Jtc0ttS2lvcmxDeTRmMXhrM1BSVnNmQkVhTXZpaDVVcmhOdTZBcDR4X0k4X1E4VVdRcnpvV0w0NFU2bmtlUllaMnNaTEZxOWJvZl9DV2Z2SW9fS2hyRDc5ajZPR3JIS2lYSzlrVWl2Y1NNTXZncUtIeGRKMA&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-AmazonPrimeMusic\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-A...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nWynk: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbGJ2eTd4cEZHb2FhQlN0X1hxM25jSE9XX2dSZ3xBQ3Jtc0tuWWRVYldhV2t2TFFzcGJNOHAtYXlkanNkMnFOSkluenVBemk3RERJbklPRUdIMEEwTHgydFk3LWlHQ2JhSGpYNTlqV1F1S3AwUFhsOUdlYjNZU0JzT0x3UVlPU0dKM21YeGNmbDJpT214LV81OWpwQQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-Wynk\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-Wynk</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nResso: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbWtxM0ZaSkk2dGRMcGQyWlJYQUl6bzNMdVJaQXxBQ3Jtc0tuYTBnc3hoMWlFemJuSnJpZjVOMllSWl9QS29FeU8xNXNtT08tcFZLTThuN2xDSTFfUXlLZ2MzVFBfQmIyVGtqOVg4c3A1QW1kMHlXRW1EcGRxbkY2azZHWElrbTRuRVlfSmpELUk5YlFDZ3J2SGszQQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai--Resso\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai--...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\niTunes: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbWtFalFqMl9iY3hsY2I4YUM4XzBhTFBEU1lfZ3xBQ3Jtc0tsUWJDaUFwV3RYendFNy1Xb1JCWXdCVU1seEZqeFRtYU5IYXRVald4WnhxTTJRQ19TOUxvLUJJNnlqQ2pDVmdOcWFnZVdvdEJTZlFGQUs0a05Sc1ZnRDFSWVRoUElFaENiMjdRZWgtUWNDemkwZkFKWQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-iTunes\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-i...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\nYouTube Music: </span><a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3VabkRfSWd6a1RjekhUci1aRW0wSHBRb084Z3xBQ3Jtc0ttelh0MmhMaFQ4X3RBT0dUVU9OSk5OeXl1LVVtdnpaMjgyQmV0XzNpdElVT2RYOXZ2ZUZPbjNRV2FUQzNxZUFlQURpdjN4RWVQYjFWR3FJTFBhNEdHOXVOdElSNngwM3JmRlFKVUstTWVuVDJkZm83RQ&amp;q=https%3A%2F%2Fbit.ly%2FDilGaltiKarBaithaHai-YouTubeMusic\" rel=\"nofollow\" target=\"_blank\" dir=\"auto\" style=\"display: var(--yt-endpoint-display, inline-block); cursor: pointer; text-decoration: var(--yt-endpoint-text-regular-decoration, none); overflow-wrap: var(--yt-endpoint-word-wrap, none); word-break: var(--yt-endpoint-word-break, none); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">https://bit.ly/DilGaltiKarBaithaHai-Y...</a><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\">\r\n\r\nSong Credits: \r\nSong: Dil Galti Kar Baitha Hai \r\nMusic - Meet Bros\r\nSinger - Jubin Nautiyal\r\n\r\n</span><div><span dir=\"auto\" class=\"style-scope yt-formatted-string\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px; white-space: pre-wrap;\"><br></span></div>', '2021-09-29 08:32:17', '2021-11-23 11:50:42'),
(88, 'episode1', '1637590049.jpg', '160284938.png', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 5, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 116, 43, NULL, 'sdff', '2021-11-03 05:59:53', '2021-11-27 06:17:52'),
(89, 'episode1', '1636011830.jpg', '1192403132.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 33, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 116, 45, NULL, 'gsf', '2021-11-04 01:43:50', '2022-05-18 05:53:33'),
(90, 'episode1', '1636178978.jpg', '177158758.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 118, 47, NULL, NULL, '2021-11-06 00:09:38', '2021-11-27 06:18:18'),
(92, 'episode2', '1636179599.jpg', '877154079.png', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 116, 43, NULL, NULL, '2021-11-06 00:19:59', '2021-11-27 06:17:43'),
(95, 'Prince Tv', '1636262812.jpg', '916808757.jpg', 2, 'channel', 'https://www.youtube.com/watch?v=4iRnfJ13Ofs', '2', 9, 9, 'naenfkef.,mfela,lf,;a,awf[a/faw.f;a.f;;apnfwi', '1', 'lemon', '1', NULL, 'free', NULL, 4.5, NULL, NULL, NULL, 'fdibaif bi uhfuawh su f&nbsp;', '2021-11-06 23:26:52', '2022-05-18 05:01:44'),
(96, 'episode1', '1637589949.jpg', '256762762.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 121, 50, NULL, 'kjhgf', '2021-11-20 00:26:01', '2021-11-27 06:25:17'),
(97, 'episode2', '1637589903.jpg', '2012688274.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, 'habi', '1', 'jabi', '1', NULL, 'rent', 1, 5.0, 121, 50, NULL, 'kuk', '2021-11-21 07:23:56', '2021-11-27 06:17:26'),
(100, 'episode1', '1637589842.jpg', '546383694.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'rent', 1, 4.5, 140, 53, NULL, 'hgt', '2021-11-22 14:04:02', '2021-11-27 06:16:51'),
(101, 'episode1', '1637589877.jpg', '68626565.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 47, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.0, 140, 54, NULL, 'lkjhgfds', '2021-11-22 14:04:37', '2022-05-18 07:02:54'),
(102, 'episode2', '1637666111.jpg', '1812624105.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=4iRnfJ13Ofs', '2', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'paid', 1, 5.0, 140, 52, NULL, 'sadfghjk', '2021-11-23 11:15:11', '2021-11-25 05:40:49'),
(105, 'episode3', '1637666300.jpg', '349776040.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 121, 50, NULL, 'asdfds', '2021-11-23 11:18:20', '2021-11-27 06:17:20'),
(106, 'episode2', '1637666354.jpg', '1678460034.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 6.0, 118, 47, NULL, 'aaaaaaaaaa', '2021-11-23 11:19:14', '2021-11-27 06:18:14'),
(107, 'episode1', '1637667147.jpg', '342867702.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 128, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, 121, 55, NULL, NULL, '2021-11-23 11:32:27', '2022-05-18 05:53:27'),
(108, 'episode2', '1637667179.jpg', '331119682.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, 121, 55, NULL, NULL, '2021-11-23 11:32:59', '2021-11-27 06:17:08'),
(109, 'episode1', '1637667219.jpg', '2062618049.jpg', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 35, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 4.5, 118, 56, NULL, 'asdfghjkl', '2021-11-23 11:33:39', '2022-05-18 06:53:03'),
(110, 'episode2', '1637667261.jpg', '162302984.png', NULL, 'series', 'https://www.youtube.com/watch?v=VbgmBO7gCL8', '2', NULL, 7, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 5.0, 118, 56, NULL, NULL, '2021-11-23 11:34:21', '2021-11-27 06:18:04'),
(111, 'Test', '1644474768.png', '263677829.jpg', 3, 'channel', 'https://cdn-telkomsel-01.akamaized.net/Content/DASH/Live/channel(41869351-4a9c-4e57-b54b-8cf5dfc919e1)/manifest.mpd', '9', 6, 2, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, NULL, NULL, 'jkhkj', '2022-02-10 06:32:48', '2022-02-10 11:37:07'),
(112, 'Test Channel', '1648453306.png', '2035741202.png', 2, 'channel', 'https://prod-ec-ap-southeast-1.video.pscp.tv/Transcoding/v1/hls/weh-yYGsMm8FKcdkX0iKoSe5y1Cd2BFT7sTYG6dxzuXHrQ_TCukernYV89LjNaAY-Tmh4ZOsOwrF5z42vTpXhw/non_transcode/us-west-2/periscope-replay-direct-live/master_dynamic_highlatency.m3u8?type=live', '1', 6, 12, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, NULL, NULL, 'ghfghfg', '2022-03-28 07:41:46', '2022-05-16 10:13:22'),
(152, 'Shaan', '1652521918.jpg', '613172700.png', 3, 'video', 'https://www.youtube.com/watch?v=LohYwUvlVTY', '2', 6, 18, NULL, NULL, NULL, NULL, NULL, 'free', NULL, 3.0, NULL, NULL, NULL, NULL, '2022-05-14 03:51:58', '2022-05-17 14:50:48'),
(156, 'episode 1', '1652525818.jpg', '2098460942.png', NULL, 'series', 'https://www.youtube.com/watch?v=kZaqMR4SEN4', '2', NULL, 53, NULL, NULL, NULL, NULL, NULL, 'paid', 1, 2.9, 140, 52, NULL, NULL, '2022-05-14 04:56:58', '2022-05-25 08:17:06'),
(158, 'NDTV', '1652526848.jpg', '1099358673.png', 2, 'channel', 'https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=2756', '1', 7, 29, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 05:01:03', '2022-06-11 11:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `item_urls`
--

CREATE TABLE `item_urls` (
  `id` bigint UNSIGNED NOT NULL,
  `quality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_urls`
--

INSERT INTO `item_urls` (`id`, `quality`, `url`, `item_id`, `created_at`, `updated_at`) VALUES
(158, '1k', 'https://www.youtube.com/watch?v=KetfMg7svtQ', 152, '2022-05-14 04:51:43', '2022-05-16 12:58:00'),
(159, '2k', 'https://www.youtube.com/watch?v=KSQHHfkeowA', 152, '2022-05-14 04:52:03', '2022-05-16 12:58:00'),
(160, 'hd4', 'https://www.youtube.com/watch?v=4iRnfJ13Ofs', 156, '2022-05-14 04:56:58', '2022-05-14 05:07:20'),
(161, 'hd3', 'https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=2756&live=1&avod=1&cb=1654863578405&hls_marker=1&slot_count=3&ua=Mozilla%2F5.0+%28Linux%3B+Android+5.1%3B+INFINIX-X625B+Build%2FLMY47I%29+AppleWebKit%2F537.36+%28KHTML%2C+like+Gecko%29+Versi', 158, '2022-05-14 05:01:03', '2022-06-11 10:26:04'),
(162, '4k', 'https://www.youtube.com/watch?v=mKnFLXJwmu4', 152, '2022-05-16 12:58:00', '2022-05-16 12:58:00'),
(163, '4K', 'https://www.youtube.com/watch?v=Y9OnEE7FAcc', 46, '2022-05-16 13:04:57', '2022-05-16 13:04:57'),
(164, '2k', 'https://www.youtube.com/watch?v=Y9OnEE7FAcc', 46, '2022-05-16 13:04:57', '2022-05-16 13:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2021_04_20_051617_create_regusers_table', 3),
(64, '2014_10_12_000000_create_users_table', 6),
(67, '2021_03_21_120852_create_admins_table', 6),
(68, '2021_05_27_075818_create_sliders_table', 7),
(69, '2021_06_21_062028_create_advertisements_table', 7),
(80, '2021_06_21_101831_create_settings_table', 8),
(81, '2021_06_24_112246_create_tokens_table', 8),
(82, '2021_06_29_060235_create_notifications_table', 8),
(83, '2021_07_14_064610_create_tv_categories_table', 8),
(84, '2021_07_14_064710_create_video_categories_table', 8),
(87, '2021_07_14_074503_create_countries_table', 8),
(88, '2021_07_14_080503_create_url_types_table', 8),
(89, '2021_07_14_090933_create_user_agent_types_table', 8),
(90, '2021_07_15_120252_create_token_types_table', 9),
(91, '2021_07_28_061246_create_items_table', 10),
(108, '2021_08_01_101010_create_feedback_table', 11),
(109, '2021_08_02_063812_create_reports_table', 11),
(110, '2021_08_03_042653_create_contents_table', 11),
(111, '2021_10_05_112319_create_series_table', 12),
(112, '2021_10_05_144728_create_seasons_table', 12),
(118, '2021_10_09_064925_create_category_series_table', 14),
(119, '2021_10_09_120244_create_country_series_table', 15),
(120, '2021_11_01_065427_create_stars_table', 16),
(121, '2021_11_01_070346_create_star_series_table', 17),
(123, '2022_04_16_104942_create_ratings_table', 18),
(124, '2022_04_20_191657_create_item_urls_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `url`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Hair Cut', 'asdgfhjhhhgf', 'https://www.google.com/', 'https://i.pinimg.com/736x/5c/a9/6f/5ca96fe550aab0f2cc2768d3dee9417d.jpg', '2021-07-25 04:46:15', '2021-07-25 04:46:15'),
(2, 'hi  1', 'test notification 1', 'https://www.google.com/?&bih=791&biw=1680&client=safari&hl=en', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png', '2021-09-09 13:43:00', '2021-09-09 13:43:00'),
(3, 'Manage Notification', 'swedd', NULL, NULL, '2021-09-09 13:43:50', '2021-09-09 13:43:50'),
(4, 'asdf', 'jhgfds', 'dfghjkl;lkjhgfd', 'https://i.pinimg.com/736x/5c/a9/6f/5ca96fe550aab0f2cc2768d3dee9417d.jpg', '2021-11-25 11:18:32', '2021-11-25 11:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `item_type` enum('video','channel','series') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `item_id`, `item_type`, `rating`, `created_at`, `updated_at`) VALUES
(39, 101, 'series', 4.00, '2022-05-16 07:56:57', '2022-05-16 07:56:57'),
(40, 156, 'series', 3.00, '2022-05-16 10:35:54', '2022-05-16 10:35:54'),
(41, 156, 'series', 4.00, '2022-05-16 10:35:57', '2022-05-16 10:35:57'),
(42, 156, 'series', 1.00, '2022-05-16 10:36:00', '2022-05-16 10:36:00'),
(43, 156, 'series', 1.00, '2022-05-16 10:36:03', '2022-05-16 10:36:03'),
(44, 156, 'series', 1.00, '2022-05-16 10:36:06', '2022-05-16 10:36:06'),
(45, 156, 'series', 5.00, '2022-05-16 10:36:09', '2022-05-16 10:36:09'),
(46, 156, 'series', 5.00, '2022-05-16 10:36:18', '2022-05-16 10:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `regusers`
--

CREATE TABLE `regusers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `item_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 107, 'hhbh', '2021-11-27 05:54:38', '2021-11-27 05:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint UNSIGNED NOT NULL,
  `season_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `series_id` bigint UNSIGNED NOT NULL,
  `order` int DEFAULT NULL,
  `subscription` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `season_name`, `series_id`, `order`, `subscription`, `content_id`, `created_at`, `updated_at`) VALUES
(43, 'season1', 116, 1, 'free', NULL, '2021-11-02 07:56:26', '2021-11-02 07:56:26'),
(45, 'season2', 116, 2, 'free', NULL, NULL, NULL),
(47, 'season 1', 118, 1, 'free', NULL, '2021-11-05 23:39:05', '2021-11-05 23:39:05'),
(50, 'season 1', 121, 1, 'free', NULL, '2021-11-20 00:25:21', '2021-11-20 00:25:21'),
(52, 'season 1', 140, 1, 'yes', NULL, '2021-11-22 01:42:47', '2021-11-22 01:42:47'),
(53, 'season 2', 140, 2, 'free', NULL, '2021-11-22 02:22:34', '2021-11-22 02:22:34'),
(54, 'season 3', 140, 3, 'paid', 1, '2021-11-22 02:24:12', '2021-11-22 02:24:12'),
(55, 'season 2', 121, 2, NULL, NULL, '2021-11-23 11:30:45', '2021-11-23 11:30:45'),
(56, 'season 2', 118, 2, NULL, NULL, '2021-11-23 11:31:25', '2021-11-23 11:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint UNSIGNED NOT NULL,
  `series_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` date DEFAULT NULL,
  `thumbUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posterUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `series_name`, `thumbnail_image`, `poster_image`, `trailer`, `description`, `release_date`, `thumbUrl`, `posterUrl`, `imgType`, `ratings`, `created_at`, `updated_at`) VALUES
(116, 'Top Gear', NULL, NULL, 'https://www.youtube.com/watch?v=voeavM5upCM', '<div class=\"note-editable panel-body\"  contenteditable=\"true\" style=\"height: 200px;\">\r\n                                    <p id=\"description\"> </p>\r\n                                </div>', '2002-10-21', 'https://image.tmdb.org/t/p/w780//aqM6QnuhSXzjHlKbXyKUqxaGiWu.jpg', 'https://image.tmdb.org/t/p/w185//AhcPiOviZ36mE5DjkX3aI9zIQJ9.jpg', 'link', 3.50, '2021-11-02 07:55:33', '2022-04-16 09:34:07'),
(118, 'Shark', NULL, NULL, 'https://www.youtube.com/watch?v=voeavM5upCM', '<div class=\"note-editable panel-body\" contenteditable=\"true\" style=\"height: 200px;\">hello<p id=\"description\"> </p>\r\n                                </div>', '2006-09-21', 'https://image.tmdb.org/t/p/w780//um1pU14K6ox4VRznnqB0F4c8Oe6.jpg', 'https://image.tmdb.org/t/p/w185//yqbIAJBoZ6DTHsOOiyppg79go3x.jpg', 'link', 0.00, '2021-11-05 23:38:35', '2021-11-20 06:21:56'),
(121, 'As Time Goes By', NULL, NULL, 'https://www.youtube.com/watch?v=voeavM5upCM', '<div class=\"note-editable panel-body\" contenteditable=\"true\" style=\"height: 200px;\">hi<p id=\"description\"> </p>\r\n                                </div>', '1992-01-12', 'https://image.tmdb.org/t/p/w780//hgpSfLu6uzGRB4SLz6Jtai5T3Xq.jpg', 'https://image.tmdb.org/t/p/w185//dyZThM0dYT4s0MXp2KK3Zj2D0v8.jpg', 'link', 0.00, '2021-11-07 04:33:46', '2021-11-20 06:22:28'),
(140, 'Battlestar Galactica', NULL, NULL, 'https://www.youtube.com/results?search_query=how+to+pass+array+to+controller+and+save+in+database+as+string+in+laravel', 'frt<!-- <div  contenteditable=\"true\" style=\"height: 200px;\"> --><p id=\"description\"> </p>\r\n                                <!-- </div> -->', '1978-09-17', 'https://image.tmdb.org/t/p/w780//27jl4H9PauenZlmVBbOO1pr1lGf.jpg', 'https://image.tmdb.org/t/p/w185//txWdwABwNjAxfX0vOsmuL0zgOPM.jpg', 'link', 0.00, '2021-11-22 00:24:13', '2021-11-22 01:29:43'),
(143, 'Halo', NULL, NULL, NULL, '<!-- <div  contenteditable=\"true\" style=\"height: 200px;\"> -->\r\n                                    <p id=\"description\"> </p>\r\n                                <!-- </div> -->', '2022-03-24', 'https://image.tmdb.org/t/p/w780//eO0QV5qJaEngP1Ax9w3eV6bJG2f.jpg', 'https://image.tmdb.org/t/p/w185//1qpUk27LVI9UoTS7S0EixUBj5aR.jpg', 'link', 0.00, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(144, 'Moon Knight', NULL, NULL, NULL, '<!-- <div  contenteditable=\"true\" style=\"height: 200px;\"> -->\r\n                                    <p id=\"description\"> </p>\r\n                                <!-- </div> -->', '2022-03-30', 'https://image.tmdb.org/t/p/w780//YksR65as1ppF2N48TJAh2PLamX.jpg', 'https://image.tmdb.org/t/p/w185//vfWdZYGR5505zrCdgTHteFyARu3.jpg', 'link', 0.00, '2022-05-25 08:15:58', '2022-05-25 08:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `firebasekey` longtext CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `onesignal` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `admobPublisherId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admobAppId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admob_inter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admob_native` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admob_banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admob_reward` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fbPublisherId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_app_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_inter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_native` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_reward` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unity_appId_gameId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `iron_source_appKey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `appnext_placementId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startapp_appId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitial_interval` int DEFAULT NULL,
  `native_ads_interval` int DEFAULT NULL,
  `ad_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `privacypolicy` longtext CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `firebasekey`, `onesignal`, `email`, `version`, `admobPublisherId`, `admobAppId`, `admob_inter`, `admob_native`, `admob_banner`, `admob_reward`, `fbPublisherId`, `fb_app_id`, `fb_inter`, `fb_native`, `fb_banner`, `fb_reward`, `unity_appId_gameId`, `iron_source_appKey`, `appnext_placementId`, `startapp_appId`, `interstitial_interval`, `native_ads_interval`, `ad_type`, `privacypolicy`, `updated_at`) VALUES
(1, 'AAAAds6EJZk:APA91bFoD-mzXTpllwu7yMyYPkruDLkWB1Ls-PUNzX3Q8WkJQTu2LOr-hWzafpdNDVq_NpzVOFkMwaY5GNs_BxCfeVMH_oDr12dCuNf_3pKMAT5yoWuMuN1eWqg8pMPJddSXcZeFIUBF', 'ca80bb10-190d-406e-8a48-1b38d69d1cf5', 'amzad@gmail.com', '2.0', NULL, NULL, 'ca-app-pub-3940256099942544/1033173712', 'ca-app-pub-3940256099942544/2247696110', 'ca-app-pub-3940256099942544/6300978111', NULL, NULL, NULL, 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', NULL, '4371929', '116d89865', 'qw', '209359573', 1, 2, 'facebook', '<p>Subscription Terms and conditions</p><p>Before subscribe you should know this is only a demo application .</p><p>If you have purchased a subscription to Flix, you will be charged on a monthly. If you have purchased a subscription to Flix, you have the right to cancel your purchase and receive a full refund within 14 days of purchase. However, if you access the Flix app within the 14-day period, you will no longer be eligible for a refund if you decide to cancel your purchase.</p><p>You may cancel your subscription to Flix at any time via the mobile app or on Flix\'s website. The termination shall have effect at the expiry of the then-current subscription period that you have already paid for (e.g. one month, 3 months, 6 months, or a year) and you will not be refunded for any remaining portion of subscription fees you have already paid for (unless with the 14-day period and under the conditions described above).</p><p>Flix reserves the right to terminate and/or suspend your account at any time in case of unauthorised use of the service. If Flix terminates or suspends your account for any suspicious activity, Flix shall have no liability or responsibility to you, and will not refund any amounts that you have previously paid.</p><p>Privacy Policy</p><p dir=\"ltr\">Your privacy is important to us. Sometimes we need information to provide services that you request, this privacy statement applies to Justapps Apps and its product King of status.</p><p dir=\"ltr\">Personal Information</p><p dir=\"ltr\">We DO NOT collect, store or use any personal information while you visit, download or upgrade our products.</p><p dir=\"ltr\">We may use personal information submitted by you only for the following purposes: help us develop, deliver, and improve our products and services and supply higher quality service; manage online surveys and other activities you’ve participated in.</p><p dir=\"ltr\">In the following circumstances, we may disclose your personal information according to your wish or regulations by law:</p><p dir=\"ltr\">· &nbsp;(1) Your prior permission;</p><p dir=\"ltr\">· &nbsp;(2) By the applicable law within or outside your country of residence, legal process, litigation requests;</p><p dir=\"ltr\">· &nbsp;(3) By requests from public and governmental authorities;</p><p dir=\"ltr\">· &nbsp;(4) To protect our legal rights and interests.</p><p>Non- Personal Information</p><p dir=\"ltr\">We may collect and use non-personal information in the following circumstances. To have a better understanding in user’s behavior, solve problems in products and services, improve our products, services and advertising, we may collect non-personal information such as installed application name and package name, the data of install, frequency of use, country, equipment and channel.</p><p dir=\"ltr\">If non-personal information is combined with personal information, we treat the combined information as personal information for the purposes of this Privacy Policy.</p><p dir=\"ltr\">Information we get from your use of our services</p><p dir=\"ltr\">We may collect information about the services that you use and how you use them, such as when you view and interact with our content. We may collect device-specific information (such as your hardware model, operating system version, unique device identifiers, device settings, device language and mobile network information). We will not share that information with third parties.</p><p>Permissions in the King of status App are the following:</p><p dir=\"ltr\">Get Accounts</p><p dir=\"ltr\">This permission is needed for making a selection list with your google accounts in the app, when you are exporting/importing King of status data to/from google drive.</p><p>Access Network State</p><p dir=\"ltr\">This permission is needed for checking if you are connected to the internet when you are exporting/importing King of status data to/from google drive.</p><p>Internet</p><p>This permission is needed for exporting/importing King of status data to/from google drive.</p><p dir=\"ltr\">Read Phone State</p><p dir=\"ltr\">This permission is needed for checking if a call was started from the King of status app and when the call ends and you enabled the \"Keep app on call\" option in the \"System settings\" of the app the King of status app will be resumed.</p><p dir=\"ltr\">Also needed for checking if your device has single or multiple sim cards.</p><p>Write External Storage</p><p dir=\"ltr\">This permission is needed for writing to the external storage of your device when exporting King of status data to the device\'s internal storage.</p><p>Vibrate</p><p dir=\"ltr\">This permission is needed for vibrating on some touch events.</p><p dir=\"ltr\">WE WILL NOT SHARE ANY INFORMATION FROM YOUR DEVICE WITH THIRD PARTIES.</p><p dir=\"ltr\">IF YOU DO NOT UNDERSTAND AND/OR AGREE TO THE PRIVACY, YOU SHOULD IMMEDIATELY EXIT AND AVOID MAKING ANY USE OF King of status\'S SERVICES</p><p dir=\"ltr\">Privacy Policy Update</p><p dir=\"ltr\">Justapps Apps will occasionally update this privacy statement. When we do so, we will also revise the \"last modified\" date of the privacy statement.</p><p dir=\"ltr\">User Content.</p><p dir=\"ltr\">All Content added, uploaded, submitted, distributed, posted to, or created using the Services by users (collectively \"User Content\"), whether publicly posted or privately transmitted, is the sole responsibility of the person who originated such User Content. You represent that all User Content provided by you is accurate, complete, up-to-date, and in compliance with all applicable laws, rules and regulations. Without limiting the generality of the foregoing, you represent that any User Content you create using tools accessible on the Services does not infringe upon the intellectual property rights of any third party and is otherwise in compliance with all applicable laws, rules and regulations. You acknowledge that all Content, including User Content, accessed by you using the Services is at your own risk and you will be solely responsible for any damage or loss to you or any other party resulting therefrom. We do not guarantee that any Content you access on or through the Services is or will continue to be accurate.</p><p dir=\"ltr\">Availability of Content.</p><p dir=\"ltr\">We do not guarantee that any Content will be made available on the Site or through the Services. We reserve the right to, but do not have any obligation to, (i) remove, edit, modify, or block from the Services any Content in our sole discretion, at any time, without notice to you and for any reason (including, but not limited to, upon receipt of claims or allegations from third parties or authorities relating to such Content or if we are concerned that you may have breached the final sentence of the immediately foregoing paragraph), or for no reason at all.</p>', '2021-11-23 10:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sname`, `image`, `slider_type`, `item_id`, `created_at`, `updated_at`) VALUES
(42, 'Avatar', 'https://vid-mates.com/shobuj/streamIt/public/images/1629959333.png', 'video', 29, '2021-08-26 06:28:53', '2021-08-26 06:28:53'),
(43, 'Looper', 'https://vid-mates.com/shobuj/streamIt/public/images/1629959368.png', 'video', 28, '2021-08-26 06:29:28', '2021-08-26 06:29:28'),
(44, 'Movies', 'https://vid-mates.com/shobuj/streamIt/public/images/1629960025.png', 'video', 24, '2021-08-26 06:40:25', '2021-08-26 06:40:25'),
(45, 'Bawla', 'https://vid-mates.com/shobuj/streamIt/public/images/1631255234.jpg', 'video', 55, '2021-09-10 06:27:14', '2021-09-10 06:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` bigint UNSIGNED NOT NULL,
  `star_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `star_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `star_type`, `star_name`, `photo`, `created_at`, `updated_at`) VALUES
(6, 'actor', 'Prodip Kumar', 'https://vid-mates.com/shobuj/streamIt/public/images/1635767581.jpg', '2021-11-01 04:49:18', '2021-11-01 05:53:01'),
(7, 'director', 'Mijanur Rahman', 'https://vid-mates.com/shobuj/streamIt/public/images/1635764411.jpg', '2021-11-01 05:00:11', '2021-11-01 05:00:11'),
(8, 'writer', 'Lebu De', 'https://vid-mates.com/shobuj/streamIt/public/images/1635768594.jpg', '2021-11-01 06:09:54', '2021-11-01 06:09:54'),
(9, 'actor', 'Saif Ali Khan', 'https://vid-mates.com/shobuj/streamIt/public/images/1635769889.jpg', '2021-11-01 06:31:10', '2021-11-01 06:31:29'),
(10, 'writer', 'Shahrukh Khan', 'https://vid-mates.com/shobuj/streamIt/public/images/1635830147.jpg', '2021-11-01 23:15:48', '2021-11-01 23:16:24'),
(12, 'director', 'Mostafa Sarwar Farooki', 'https://vid-mates.com/shobuj/streamIt/public/images/1635830313.jpg', '2021-11-01 23:18:33', '2021-11-01 23:18:33'),
(13, 'actor', 'Pablo Schreiber', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(14, 'actor', 'Natascha McElhone', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(15, 'actor', 'Jen Taylor', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(16, 'actor', 'Yerin Ha', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(17, 'actor', 'Charlie Murphy', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(18, 'actor', 'Shabana Azmi', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(19, 'actor', 'Danny Sapani', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(20, 'actor', 'Olive Gray', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(21, 'actor', 'Kate Kennedy', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(22, 'actor', 'Natasha Culzac', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(23, 'actor', 'Bentley Kalu', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(24, 'actor', 'Bokeem Woodbine', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(25, 'writer', 'Kyle Killen', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(26, 'writer', 'Steven Kane', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(27, 'director', 'Otto Bathurst', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(28, 'director', 'Steven Spielberg', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(29, 'director', 'Richard Robbins', NULL, '2022-05-25 07:49:04', '2022-05-25 07:49:04'),
(30, 'actor', 'Oscar Isaac', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(31, 'actor', 'Ethan Hawke', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(32, 'actor', 'May Calamawy', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(33, 'actor', 'Ann Akinjirin', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(34, 'actor', 'David Ganly', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(35, 'actor', 'Karim El Hakim', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(36, 'actor', 'F. Murray Abraham', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(37, 'writer', 'Doug Moench', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(38, 'writer', 'Don Perlin', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(39, 'writer', 'Jeremy Slater', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(40, 'writer', 'Mohamed Diab', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(41, 'writer', 'Rebecca Kirsch', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(42, 'writer', 'Beau DeMayo', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(43, 'writer', 'Sabir Pirzada', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(44, 'writer', 'Matthew Orton', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(45, 'writer', 'Freddy Syborn', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(46, 'writer', 'Peter Cameron', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(47, 'writer', 'Michael Kastelein', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(48, 'writer', 'Alex Meenehan', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(49, 'writer', 'JB Ballard', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(50, 'writer', 'Chase Kroll', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(51, 'writer', 'Paul R. Puri', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(52, 'writer', 'Dániel Erdélyi', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(53, 'director', 'Ramy Romany', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(54, 'director', 'Rézi Szabo', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(55, 'director', 'Tamás Péter Chipie', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(56, 'director', 'András Boza', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(57, 'director', 'Vera Janisch', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(58, 'director', 'Jessica Anna Camacho', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(59, 'director', 'Tim Fitzgerald', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(60, 'director', 'Cody Williams', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58'),
(61, 'director', 'Joshwa Walton', NULL, '2022-05-25 08:15:58', '2022-05-25 08:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `star_series`
--

CREATE TABLE `star_series` (
  `id` bigint UNSIGNED NOT NULL,
  `star_id` bigint UNSIGNED NOT NULL,
  `series_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `star_series`
--

INSERT INTO `star_series` (`id`, `star_id`, `series_id`, `created_at`, `updated_at`) VALUES
(59, 6, 116, NULL, NULL),
(60, 9, 116, NULL, NULL),
(61, 8, 116, NULL, NULL),
(62, 10, 116, NULL, NULL),
(63, 7, 116, NULL, NULL),
(64, 12, 116, NULL, NULL),
(68, 6, 118, NULL, NULL),
(69, 9, 118, NULL, NULL),
(70, 8, 118, NULL, NULL),
(71, 10, 118, NULL, NULL),
(72, 12, 118, NULL, NULL),
(76, 9, 121, NULL, NULL),
(77, 8, 121, NULL, NULL),
(78, 10, 121, NULL, NULL),
(79, 7, 121, NULL, NULL),
(80, 12, 121, NULL, NULL),
(135, 9, 140, NULL, NULL),
(136, 10, 140, NULL, NULL),
(137, 12, 140, NULL, NULL),
(138, 6, 140, NULL, NULL),
(139, 8, 140, NULL, NULL),
(140, 7, 140, NULL, NULL),
(147, 13, 143, NULL, NULL),
(148, 14, 143, NULL, NULL),
(149, 15, 143, NULL, NULL),
(150, 16, 143, NULL, NULL),
(151, 17, 143, NULL, NULL),
(152, 18, 143, NULL, NULL),
(153, 19, 143, NULL, NULL),
(154, 20, 143, NULL, NULL),
(155, 21, 143, NULL, NULL),
(156, 22, 143, NULL, NULL),
(157, 23, 143, NULL, NULL),
(158, 24, 143, NULL, NULL),
(159, 25, 143, NULL, NULL),
(160, 26, 143, NULL, NULL),
(161, 27, 143, NULL, NULL),
(162, 28, 143, NULL, NULL),
(163, 29, 143, NULL, NULL),
(164, 30, 144, NULL, NULL),
(165, 31, 144, NULL, NULL),
(166, 32, 144, NULL, NULL),
(167, 33, 144, NULL, NULL),
(168, 34, 144, NULL, NULL),
(169, 35, 144, NULL, NULL),
(170, 36, 144, NULL, NULL),
(171, 37, 144, NULL, NULL),
(172, 38, 144, NULL, NULL),
(173, 39, 144, NULL, NULL),
(174, 40, 144, NULL, NULL),
(175, 41, 144, NULL, NULL),
(176, 42, 144, NULL, NULL),
(177, 43, 144, NULL, NULL),
(178, 44, 144, NULL, NULL),
(179, 45, 144, NULL, NULL),
(180, 46, 144, NULL, NULL),
(181, 47, 144, NULL, NULL),
(182, 48, 144, NULL, NULL),
(183, 49, 144, NULL, NULL),
(184, 50, 144, NULL, NULL),
(185, 51, 144, NULL, NULL),
(186, 52, 144, NULL, NULL),
(187, 53, 144, NULL, NULL),
(188, 54, 144, NULL, NULL),
(189, 55, 144, NULL, NULL),
(190, 56, 144, NULL, NULL),
(191, 57, 144, NULL, NULL),
(192, 58, 144, NULL, NULL),
(193, 59, 144, NULL, NULL),
(194, 60, 144, NULL, NULL),
(195, 61, 144, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `device_token`, `device_name`, `created_at`, `updated_at`) VALUES
(1, 'dHc7o5FyTDm0t7xVXfyT1L:APA91bGLAr8eCVugTH4XF--iOI1UHZ_DpDViwnlgq3Q1RBzTCS2HC0GLS7Tof0idTenqL856SjCx0oyDemXcaMYWz3FlpFvCDLF9C0HL43xGYQUCUcfHWhXF97gj8o1GyzTKFXPfo-CY', 'Xiaomi Mi 9 Lite', '2021-07-29 05:50:57', '2021-07-29 05:50:57'),
(2, 'cshF29--RsS54t1DVJ4Kjd:APA91bHrbEmJRZy2Pac2OvI2C450YqQ6wQGrWZ7dEUF4pG6D880ZzpUPhH5DN8UotjQu3tUjiDDUlLzUUSMGVho6Gxz3gsrWwWPg0RMziHP6W7t-pdpfLf_V8pHralGZ4bNeMqC4ON5p', 'Xiaomi Mi 9 Lite', '2021-07-31 11:06:06', '2021-07-31 11:06:06'),
(3, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF7mPFv7ABoa2ZOPTanpgyyFkHQmJ2rrDgu4FzfAZQOmfx3EMDTpMYB5v6F8uUnXHCiIpdz0c7cUboBOAjXzSskyZpfFKvW7myhVaVNikE1R_ty3AZ3II8jRmUlSQuJN6W94msb', 'Xiaomi Mi 9 Lite', '2021-08-07 05:26:05', '2021-08-07 05:26:05'),
(4, 'cKXQc8XtTgObDBaC9LPnmR:APA91bFu-kWjZBK3Q67GbbVHaprSG0Z5Moc9_hD4pOojJNsaTZGVHC9mYdI0GEd79-R3QQtq3WOkEOVJ6xGLHi9-A4a9ZCq6DMDTEReHoEhZ_IwGi-dfCCifBW2Q_dbb87BJUeNQpSOS', 'Xiaomi M2003J15SC', '2021-08-07 06:03:34', '2021-08-07 06:03:34'),
(5, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRKXk5jsbYYrb0Kp0E6JlNAdrOvw39dKsUwTzjU2pIgep9R6Bps002D8wE68gDtRBinx3nvGOBAJY7PojKy_zZIV4JT9C219yK_ULdognyvejA-X3aHnSioAKM-RkFt-aH1bMu', 'Xiaomi Mi 9 Lite', '2021-08-08 05:48:32', '2021-08-08 05:48:32'),
(6, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyMjIwZK_OibttDIA-EEYZyo1wD5il_Mflvwbiq2YS1HEymNH_vVVmTz7kBp3YK1v58ApE3GpgkczSWY4JGlsodikrE9WzJexZCxqr6xwiOYevjFAXhiZJHGou1Ul580LsU0xz', 'Xiaomi Mi 9 Lite', '2021-08-08 06:34:58', '2021-08-08 06:34:58'),
(7, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHwWFPjerkfjWgE7jYj8WyqyKk8wykSsFXbMynKlDDt3rkMIoYKE0k8om6uHD19viSwj805P0RnjyZnYK3Yvg_UMbFqltl7-_Z0NEEmg2v7-j3tEAxdUjv5LeMY9E9tzhz6Jzu5', 'Xiaomi Mi 9 Lite', '2021-08-08 06:36:33', '2021-08-08 06:36:33'),
(8, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYdqL8sOUB9sQXzhDxAn1KywDtLmvLtzZ5O_StaKcMA71nEJXFZRIC0JuLXj8r7r0uRHj7a3O--LVk5hjwobRIxteHb7R8t-Z9g3RdmWoISAFFRRW1e0sLvcab4psbJ6Zrs9Hm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:49:59', '2021-08-08 06:49:59'),
(9, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYdqL8sOUB9sQXzhDxAn1KywDtLmvLtzZ5O_StaKcMA71nEJXFZRIC0JuLXj8r7r0uRHj7a3O--LVk5hjwobRIxteHb7R8t-Z9g3RdmWoISAFFRRW1e0sLvcab4psbJ6Zrs9Hm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:49:59', '2021-08-08 06:49:59'),
(10, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG4LvN2fGqF-6oobMN5aZUr29rMW7JRMBhbmFwCfDwQYxN9EkpjoQ0EoKa0GgJcHTk8wvhO2b1G_GUiwbX4HY8p2Nu2cIswZyF0ao3jHfhsuVVt-SgEbb8f5KJnYA3P-MDZJIfM', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:04', '2021-08-08 06:50:04'),
(11, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG4LvN2fGqF-6oobMN5aZUr29rMW7JRMBhbmFwCfDwQYxN9EkpjoQ0EoKa0GgJcHTk8wvhO2b1G_GUiwbX4HY8p2Nu2cIswZyF0ao3jHfhsuVVt-SgEbb8f5KJnYA3P-MDZJIfM', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:04', '2021-08-08 06:50:04'),
(12, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGiQcub7_-ABhMHs1uDe0oO6beRkcxGY57mbj4E6rvrd_BR8ZvG90i9kJmHu4zK1S1bjyyubdnmqqhky81RaMFjNT13HT7Rt6dyQPhrVfgjzoYBvBzyGOeTN84AdLj7Mj-tjpDP', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:07', '2021-08-08 06:50:07'),
(13, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGiQcub7_-ABhMHs1uDe0oO6beRkcxGY57mbj4E6rvrd_BR8ZvG90i9kJmHu4zK1S1bjyyubdnmqqhky81RaMFjNT13HT7Rt6dyQPhrVfgjzoYBvBzyGOeTN84AdLj7Mj-tjpDP', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:07', '2021-08-08 06:50:07'),
(14, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHq3_WW--5P-q-LAk6dmRCTwHx_j7bKqqOkFNgC2WSZhZOlCSVtuer_FB2uOmGa7N0Qi-WhJHdmEAzFT1pkaSAZr6doNU4lF5vcbFsPsUAZFYGUoCGiWBEB-9iqaGhX95NZ_Ypt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:14', '2021-08-08 06:50:14'),
(15, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHq3_WW--5P-q-LAk6dmRCTwHx_j7bKqqOkFNgC2WSZhZOlCSVtuer_FB2uOmGa7N0Qi-WhJHdmEAzFT1pkaSAZr6doNU4lF5vcbFsPsUAZFYGUoCGiWBEB-9iqaGhX95NZ_Ypt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:14', '2021-08-08 06:50:14'),
(16, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHk_-D812Kx1AZHkK-rKpTXeaz_CkaBu3zT7-_mTuAe0jPQgM6qZj7NnVcyvMhXF6b9b9ZOjThNAueibmvkoLZbvdvnHwqlZd-mhuOFJpZn87A2UHuepMLZxzlZj-UfR8rdXK4k', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:47', '2021-08-08 06:50:47'),
(17, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHk_-D812Kx1AZHkK-rKpTXeaz_CkaBu3zT7-_mTuAe0jPQgM6qZj7NnVcyvMhXF6b9b9ZOjThNAueibmvkoLZbvdvnHwqlZd-mhuOFJpZn87A2UHuepMLZxzlZj-UfR8rdXK4k', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:47', '2021-08-08 06:50:47'),
(18, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG2EuS7lk_xKXnAZRIej9W5UHG5F5AVhj5gqsHtPD_Qr7Oxv7geSdt27n5aXKVXGhNW1cH7mv2ZqNHbkjHfNCiIh4m7xUO77u00YGOx90R_-Juhu23n12_jyDC1KzcgIVUWkwsm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:57', '2021-08-08 06:50:57'),
(19, 'dn_m3OPhRnmzj_tYnMNIII:APA91bG2EuS7lk_xKXnAZRIej9W5UHG5F5AVhj5gqsHtPD_Qr7Oxv7geSdt27n5aXKVXGhNW1cH7mv2ZqNHbkjHfNCiIh4m7xUO77u00YGOx90R_-Juhu23n12_jyDC1KzcgIVUWkwsm', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:57', '2021-08-08 06:50:57'),
(20, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyg9oTxTaB2BgxxrR_g7-rzBZv5xh9SstGRcjzHb2xIjQKnWqImygItMvBM9JLrRitQQQHRmt_rpItHIQxBoka530V9QIcPDROXNABpCBgxv1ep4F2c38jZLPbS-K3UY7A_X4A', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:59', '2021-08-08 06:50:59'),
(21, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFyg9oTxTaB2BgxxrR_g7-rzBZv5xh9SstGRcjzHb2xIjQKnWqImygItMvBM9JLrRitQQQHRmt_rpItHIQxBoka530V9QIcPDROXNABpCBgxv1ep4F2c38jZLPbS-K3UY7A_X4A', 'Xiaomi Mi 9 Lite', '2021-08-08 06:50:59', '2021-08-08 06:50:59'),
(22, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRI0VdGD3c5N0SXGuNzQOntB9DaEkGRljwGN4Co8EVKwDsZDRGBK5F9OhLWP9okec1RJ8mrOKS7BtSmxQ9Qxfuv-KpthlkgRIzr1IiAq4bxu7ZeXcXKxTnOBjukMGcrWnILLNA', 'Xiaomi Mi 9 Lite', '2021-08-08 06:51:59', '2021-08-08 06:51:59'),
(23, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHRI0VdGD3c5N0SXGuNzQOntB9DaEkGRljwGN4Co8EVKwDsZDRGBK5F9OhLWP9okec1RJ8mrOKS7BtSmxQ9Qxfuv-KpthlkgRIzr1IiAq4bxu7ZeXcXKxTnOBjukMGcrWnILLNA', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:11', '2021-08-08 06:52:11'),
(24, 'dn_m3OPhRnmzj_tYnMNIII:APA91bEFokNPI9J1UhsFm9OpfZq_NNY1R-qqaWp8ECrT8J0q36e6p_EHk3Lad2P4T-76gE1weLs6q1bla66g-uhFkxr-4bvx7lYZNGTHeEP1IIjy-Zu8Rz9ZtDQf30_rUcRJLUS1EBUR', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:14', '2021-08-08 06:52:14'),
(25, 'dn_m3OPhRnmzj_tYnMNIII:APA91bEFokNPI9J1UhsFm9OpfZq_NNY1R-qqaWp8ECrT8J0q36e6p_EHk3Lad2P4T-76gE1weLs6q1bla66g-uhFkxr-4bvx7lYZNGTHeEP1IIjy-Zu8Rz9ZtDQf30_rUcRJLUS1EBUR', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:14', '2021-08-08 06:52:14'),
(26, 'dn_m3OPhRnmzj_tYnMNIII:APA91bElZKWG3-yr4ieLWr-DCAigTVjktQ_2UaKv0Bnaxipa8guvArear2H56Z31CAENA5tJdUy6ylaQrG0pWtD9RCIfJgrAx21Em7YlSlHxAXhzJmPI-YwRXT-7eZrDpf9uI85lSBLk', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:16', '2021-08-08 06:52:16'),
(27, 'dn_m3OPhRnmzj_tYnMNIII:APA91bElZKWG3-yr4ieLWr-DCAigTVjktQ_2UaKv0Bnaxipa8guvArear2H56Z31CAENA5tJdUy6ylaQrG0pWtD9RCIfJgrAx21Em7YlSlHxAXhzJmPI-YwRXT-7eZrDpf9uI85lSBLk', 'Xiaomi Mi 9 Lite', '2021-08-08 06:52:16', '2021-08-08 06:52:16'),
(28, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHTlx3_js30g2BtIJbMaloBEYGRqWLgsAwTfm4kcLq_1HNz3CZMVTsR0745OcACvE0LhpI7qOQG_Ub1gFlQymQZnZegpnwoONK13hPY-qINctND6csrqNU0mr8P0eavC7zpbqA0', 'Xiaomi Mi 9 Lite', '2021-08-08 06:53:24', '2021-08-08 06:53:24'),
(29, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHTlx3_js30g2BtIJbMaloBEYGRqWLgsAwTfm4kcLq_1HNz3CZMVTsR0745OcACvE0LhpI7qOQG_Ub1gFlQymQZnZegpnwoONK13hPY-qINctND6csrqNU0mr8P0eavC7zpbqA0', 'Xiaomi Mi 9 Lite', '2021-08-08 06:53:24', '2021-08-08 06:53:24'),
(30, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF5xYBjTHC6xAehhOaQn62AN6AetRZH5p-BaBtppOY3BxeVsgP_huYHMDZM0aOx8wpbt_F0ceRKWP5jp3qGt1JoqsPs01fzwg4gk9h2rVg9s7p6NDMtKf6re--5wSDqENWNkHhV', 'Xiaomi Mi 9 Lite', '2021-08-08 06:54:18', '2021-08-08 06:54:18'),
(31, 'dn_m3OPhRnmzj_tYnMNIII:APA91bF5xYBjTHC6xAehhOaQn62AN6AetRZH5p-BaBtppOY3BxeVsgP_huYHMDZM0aOx8wpbt_F0ceRKWP5jp3qGt1JoqsPs01fzwg4gk9h2rVg9s7p6NDMtKf6re--5wSDqENWNkHhV', 'Xiaomi Mi 9 Lite', '2021-08-08 06:54:36', '2021-08-08 06:54:36'),
(32, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFUS04oSwLlniYdMls6CWE6u-YzFLj4ZQ21MiFLlOupJI5rZ90R_A3Gp9BesF5BthIK8wo1ni5JYlvNESWX4sFgZsOZNYENE5iu-iCawYuZHOGCr1UqL4j7gEkq_f5RNfgQcwjH', 'Xiaomi Mi 9 Lite', '2021-08-08 06:55:12', '2021-08-08 06:55:12'),
(33, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFUS04oSwLlniYdMls6CWE6u-YzFLj4ZQ21MiFLlOupJI5rZ90R_A3Gp9BesF5BthIK8wo1ni5JYlvNESWX4sFgZsOZNYENE5iu-iCawYuZHOGCr1UqL4j7gEkq_f5RNfgQcwjH', 'Xiaomi Mi 9 Lite', '2021-08-08 06:55:35', '2021-08-08 06:55:35'),
(34, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFzPdV2HlsdZ85L4dbdXInmdUi6lPlq_6ICbjv7IPDh4kAln-P-wZCwEOPCkEqfJaQ7cHiTUwdRKmBZTrtHNrJr1CDCG3Rasifd3XH6-viHsCHSFz833mNgZ86_s-3PgH7kiD5V', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:37', '2021-08-08 06:56:37'),
(35, 'dn_m3OPhRnmzj_tYnMNIII:APA91bFzPdV2HlsdZ85L4dbdXInmdUi6lPlq_6ICbjv7IPDh4kAln-P-wZCwEOPCkEqfJaQ7cHiTUwdRKmBZTrtHNrJr1CDCG3Rasifd3XH6-viHsCHSFz833mNgZ86_s-3PgH7kiD5V', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:37', '2021-08-08 06:56:37'),
(36, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGtniwrvS8rPaso0_BqQjafwCo4Asow7caYYwOmdBFjkhs6MnmUrUbQzYwV5THWeWTZDfuke2ZjQ6V68UaaxBKFuqor8UOqTq3vEp4vE5G2e-adsHAW8rRj8HScw4dVPifq32UB', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:40', '2021-08-08 06:56:40'),
(37, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGtniwrvS8rPaso0_BqQjafwCo4Asow7caYYwOmdBFjkhs6MnmUrUbQzYwV5THWeWTZDfuke2ZjQ6V68UaaxBKFuqor8UOqTq3vEp4vE5G2e-adsHAW8rRj8HScw4dVPifq32UB', 'Xiaomi Mi 9 Lite', '2021-08-08 06:56:40', '2021-08-08 06:56:40'),
(38, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGMBuVhrmjDaNqgMQh_D-7b8bCt6QZeQFJvGvHu0UkgCAsKOKAtFeZKPUBqzmn6wJKDKehUBz7f3vdVSlQM8VdAhwE83_N6h9c0VXMETMXN_brN0tfY4hiaigF9VuT3mHfqW_nt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:57:14', '2021-08-08 06:57:14'),
(39, 'dn_m3OPhRnmzj_tYnMNIII:APA91bGMBuVhrmjDaNqgMQh_D-7b8bCt6QZeQFJvGvHu0UkgCAsKOKAtFeZKPUBqzmn6wJKDKehUBz7f3vdVSlQM8VdAhwE83_N6h9c0VXMETMXN_brN0tfY4hiaigF9VuT3mHfqW_nt', 'Xiaomi Mi 9 Lite', '2021-08-08 06:57:14', '2021-08-08 06:57:14'),
(40, 'dn_m3OPhRnmzj_tYnMNIII:APA91bHYEViu6my4wRrB0lQiGk7eqqtKwCWvp-jIyUY1cIzToVDdL7CudXTDYOJydTTPhgTkncN5BzXoH-Row-7tQ-yLAzxQYScU3bVCaqD_gxrwLWf9Gb8_M5uve2Y0QFwosk3h8H_B', 'Xiaomi Mi 9 Lite', '2021-08-08 07:04:27', '2021-08-08 07:04:27'),
(41, 'eTZSkpe0QlaEeZ_h-h-8Yv:APA91bGt2vJrJ_fhvhmqNCRmtow5gW8QMM002wAGK0ydQIQukFpkBJKJkBKnXXRh6o2b6xUbjlvGe6XJMw27Dl3QyrKERzqZ07l2aN_F7GxTE92kQh6qhY-kb-PhBh9MEAh08LmKf7dt', 'Xiaomi Mi 9 Lite', '2021-08-08 09:51:28', '2021-08-08 09:51:28'),
(42, 'fdS-6p_cR6KQah7f9a1A7_:APA91bFSiHZZ9gdY72taNZviXOWh5_VRCmCoK70weaAblGJlt9UZ56FQ2sxZTmhec9nszUKMBA7zdgGymGlVcCYc624X1wGeYQ9JqfvrH4ZlzO3o_VBHZH7xxCpfxfuaceV1cY2QPSvi', 'OnePlus ONEPLUS A6000', '2021-08-08 10:07:45', '2021-08-08 10:07:45'),
(43, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bHlywZT0qHA61BbTK2IJl6iVSYOCCXwtlOl22hfcx9PeQF4rPzqHFojZ8aZ1vWlpkxyQ4t82jLJp9U_dQkpt0JExR0JQo6ZhCSYFmtbQzTB3QsiF4tPiqSBVMQqqt33JGWkkZCl', 'Xiaomi Mi 9 Lite', '2021-08-08 11:41:28', '2021-08-08 11:41:28'),
(44, 'eW-ZhEP9RpSTxJkmPulBmV:APA91bFwtTyB1laUfoU9aX7o3pJ599EG-q06tN-5u4rrQIxERBo9L2mAAjFWQ85TMlDR-_2ZK3eAAPevfL7KSPwnnJRSeC0F-Gtu8671a2i3u0_JirRWi2QW_yU9qo7XzrsX6ctkJyAM', 'Xiaomi Mi 9 Lite', '2021-08-08 14:49:57', '2021-08-08 14:49:57'),
(45, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bHlywZT0qHA61BbTK2IJl6iVSYOCCXwtlOl22hfcx9PeQF4rPzqHFojZ8aZ1vWlpkxyQ4t82jLJp9U_dQkpt0JExR0JQo6ZhCSYFmtbQzTB3QsiF4tPiqSBVMQqqt33JGWkkZCl', 'Xiaomi Mi 9 Lite', '2021-08-09 04:45:35', '2021-08-09 04:45:35'),
(46, 'c7AWqhJ7TcmEvHgKX2fiD5:APA91bGjB-p2tU8z4uNfgAYkuexqDnpLrL6MAUBuITiqYH6UvqeQ2ent0cDCMyosPL4ZpzeI_NQnItNPjPi5zltdiLb74iRl1vwG3GNphISRIH86_M7Jexyx9aKm0CyJ-MMVZlLKXyzY', 'Xiaomi Mi 9 Lite', '2021-08-09 04:46:32', '2021-08-09 04:46:32'),
(47, 'deITvCUpTCiYsn1xeZWZEt:APA91bHeUVMPxwYClowecG6EqbFRl9QW07d7ENEAb6a3A_ogUnKsEqdxUxPJj83JSaTtTRkQLlwQpTvBbQrH0lIwC3wwJrUX9nSy7wo5e-fNt9Eped0tZ10C3SBcutGdD1y5vuMjtNUa', 'Xiaomi Mi 9 Lite', '2021-08-09 12:47:05', '2021-08-09 12:47:05'),
(48, 'dvYy2_65Q4iZTSw1r05T5w:APA91bEWsP7cybwVoN1B5k9jlyzP914zFXJ05ktnrUQz9epgPPBS4i6Q_y5_cq4R2rQa8gROmCiSbx6_WUXOvhL80qpGh66mpWms_Fz0uJGFs98fUmN7TRwIIIKqk9phnGNihyL8gyQR', 'Xiaomi Mi 9 Lite', '2021-08-09 14:17:56', '2021-08-09 14:17:56'),
(49, 'eFU5JvA1SMeiRXfEomLXej:APA91bEIDJFPWESo9z5fPUDk5JY3lonA8rwfmwNcJOoYIBXYTnFUWuj9S2f9Axfj4FsUrai0iEb1heLualfr4zal8fCOm7OLwy1jhgMJGRCo6EMCDfLanun9E-B7ve1n-jSJXaS4p9Y_', 'OnePlus ONEPLUS A6000', '2021-08-10 06:34:13', '2021-08-10 06:34:13'),
(50, 'eiUFq-yQTqGcJadP5XQLtf:APA91bGXPXCyQBabTnzgBkpCuMt3Ihr7RKGE995gEiY0eha9j6L0y42qooUpq8nIMn5YLUZMjNojcFsAjOH3FAJKPToufCEVjqYJHuOdboopATRGJ3IhGjCwjBkvgzGsNCHxj6m1SQOm', 'Xiaomi Mi 9 Lite', '2021-08-10 06:36:55', '2021-08-10 06:36:55'),
(51, 'e_pXPKgqSMKcsSA0DMfgzg:APA91bFkcuf_24iXqIeGTVqIAcdpc0qirKI9mhM3ShD5usKBHFB5nnQrUu-9dTHZAObFlwKoCuZeFgLrTEoV8kU7uLCbaXf0ID28mCAQRzEYy48oBzy1pERkndM05KKQHy1If-5IyOrt', 'Xiaomi Mi 9 Lite', '2021-08-10 06:41:58', '2021-08-10 06:41:58'),
(52, 'eFU5JvA1SMeiRXfEomLXej:APA91bEIDJFPWESo9z5fPUDk5JY3lonA8rwfmwNcJOoYIBXYTnFUWuj9S2f9Axfj4FsUrai0iEb1heLualfr4zal8fCOm7OLwy1jhgMJGRCo6EMCDfLanun9E-B7ve1n-jSJXaS4p9Y_', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:22', '2021-08-10 06:48:22'),
(53, 'eFU5JvA1SMeiRXfEomLXej:APA91bHd3Xeot6Il-kuFK295QSPLC_mZ9K5CCxOm6m5qLt1QPgaD0wPMDnQuGlY5rrXRFTDQcMj6f1Ove_w8jyVArq3TtWqMZYlZeDHooNzVPoT-K80M9IKu4Ps617S_M962LqjeyEtv', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:26', '2021-08-10 06:48:26'),
(54, 'eFU5JvA1SMeiRXfEomLXej:APA91bHd3Xeot6Il-kuFK295QSPLC_mZ9K5CCxOm6m5qLt1QPgaD0wPMDnQuGlY5rrXRFTDQcMj6f1Ove_w8jyVArq3TtWqMZYlZeDHooNzVPoT-K80M9IKu4Ps617S_M962LqjeyEtv', 'OnePlus ONEPLUS A6000', '2021-08-10 06:48:26', '2021-08-10 06:48:26'),
(55, 'c8cYr20cTxKnc-lLt5XJTZ:APA91bFapge7mxXHdTZHwfOk5_2K8s2bJmdADmvxqgf1kSvtp5cq_dmOaEdZWUp5byolnq2HZDhjpjqSVlOHV6L3G0xKXulaoyLPucI2k554E1rPZdlUbxmAFXvDIyserhFjOPoyXaqh', 'Xiaomi Mi 9 Lite', '2021-08-10 07:38:17', '2021-08-10 07:38:17'),
(56, 'cXKZLyN8TiSkoIMQdEM08d:APA91bF-ijoscswbWioDssNY3QpX6-t0-RFf7de9QVvp-HUjW0mqMEqAF3LDSg0qqLvzu3ZbUyY2fWszolpamAKGyJfXw0rCQFwVbon6ONBD1bPD0BFdFX2YKllE5vme1j1voSlINk2t', 'Xiaomi Mi 9 Lite', '2021-08-10 11:30:59', '2021-08-10 11:30:59'),
(57, 'cZJnn8AeR2SmFdHcqh_ROh:APA91bGB8Bsc6NhUs6wXOXBkp_pYVG-MrMw1FOabsYMsUdQWFI4p2rxemJ1slscPZqk_smHcV1APA2jYLPtsY6UUE7JFywt2uzpiVp0G00avQ3c-BAbMsXMIJH1m4o9MKJYXxraEnDcV', 'Xiaomi Mi 9 Lite', '2021-08-10 14:23:40', '2021-08-10 14:23:40'),
(58, 'c4NcH5gcSxucS1Jpr4V-x5:APA91bEuXtz9xtFlfQPQbS0NCiOTgXcUhUPJajtJQbQ1qgbVviWdWo8cBu3GVxXUtxpza07s_dnw6Xb7Bwi5iWeVMwqcB9_Af4PP_creJMZS10kDL7AXTIdJpIyDF8oCcLI6wLXKXfIO', 'Xiaomi Mi 9 Lite', '2021-08-11 09:05:35', '2021-08-11 09:05:35'),
(59, 'dZ4GUpioTx25WfFaX4ogYk:APA91bFw1UNCW4UpCMoi-gJXXp9zHaXEjEAUMGXfYIjZBPk3_UUN8j2ukzaEJYbkFkThxy1lyfSGeA-Y9cmxb9EyztTLHxH2-s5lLhAUo85X3L-wDsUe3XHYn-qTASzoGNbfyucCAfMm', 'Xiaomi Mi 9 Lite', '2021-08-11 13:28:58', '2021-08-11 13:28:58'),
(60, 'dJQIl6GJRW-XTCc6wOkHLq:APA91bH-CGBqNTsxynriuFnByvc4WSKfxeYZlUwIK7WwZhki8-2O6XqCbKgoqRlFiYOrXhapy58BAF78YRyiPaNfBbpM4KS-HmL13ixPQ7m7c9QJ69S-I-WBsXxo6jTw4FOV8_2WS9-_', 'Xiaomi Mi 9 Lite', '2021-08-12 04:44:02', '2021-08-12 04:44:02'),
(61, 'eFU5JvA1SMeiRXfEomLXej:APA91bEi1MMfzXOv5vdjUpBbTFYysMreibbAP2SU0KNHzcdDRzGooCI8ycMdttMp6iLaRpidgExW0FPZvWNSrVDBiWh-yww5yGI3r2y-X-PTyhLJPjCkQONrMnfrArLIh8YVt1F3sLAD', 'OnePlus ONEPLUS A6000', '2021-08-12 18:35:07', '2021-08-12 18:35:07'),
(62, 'd3E2a7ykRHGy3SsiLCYuki:APA91bGdMUnOnL8YUTWVAkFBXE5YW1C-sWe1zP8oIunPRs01nnchuivyBpSSHf-uuDtWNxYEVlG7gcTUE4LGGu1--7lQo1B9ctoFu57ECMOSC-9uTe9Pwh_LszWNR-FeDCWZiE6rdfYe', 'OnePlus ONEPLUS A6000', '2021-08-15 05:58:53', '2021-08-15 05:58:53'),
(63, 'fOfo5wxbQgyrM1_WcZZx7U:APA91bHz-fHgP4yhxaC4bIy5aCcwS0AWQFpPx1_rGRV7kCPYo734gpz9uv8JsUUlErpckkp0XP_MJy2KJvjbY6kTUrdFsdfylp8q_igaIIFODcSoAfYU_g4cCnz7STDv-xAOieOHdOOU', 'Xiaomi Mi 9 Lite', '2021-08-15 13:48:25', '2021-08-15 13:48:25'),
(64, 'dEfEkvxtTf2x_WZRGbXj-e:APA91bEs4yFbicqDlP908kw1Q4CJPXB74_Uu1a1cXulkHfnZOPmtKFeXVDnRcVEuRbFk6Dy1FZjjVnIbebvpHXjV48-YdylxqxI_iNxeG6BdoELm8Og6hVPz84cBBp1TyX257qxOt6ZQ', 'Xiaomi Mi 9 Lite', '2021-08-17 09:42:15', '2021-08-17 09:42:15'),
(65, 'dPgWVrJORBGgI8XGQotajs:APA91bFPZ_G9GFV7kfepwU_j7lhHiu7uwidn0G9DJEIGHTzch6JH8aVooobeYb3Ge-mCd95l9wgw5aZ2kU4a9IsrYsZpaaEajJH7jLgRnxy63n1TeTKHzgqSXI1yLRzyZX3wb2iUQW-d', 'Xiaomi Mi 9 Lite', '2021-08-17 11:41:26', '2021-08-17 11:41:26'),
(66, 'ezU_l6vZSn6KStz9nkT-4x:APA91bHswLXF2idFj_BjOGfrFhXsPouHF9MrqEyvP626nmIOKixu9R0Gr1S1d2kfIzycM2qU7MqpuTgtaw3DlguQ_lbOF1FRDVsN_boiO4Necn6eBZrQp9WqqY2B_HPI9FaImZx7-dOT', 'OnePlus ONEPLUS A6000', '2021-08-17 12:03:11', '2021-08-17 12:03:11'),
(67, 'dXoaqpY6TrGEp-oYobu011:APA91bEI9gH2hgAfJYEFU2zojoBp8V2c9r6Gfu5A1cbc95VJMnC9I_Jg0MqEwEKfbebinkI3kVNw7TQLovGPPUikSgkJGmOzndhxvPE3p248z0SQdFXLjyGJNiK8OlknI-VZ8hYVn8vr', 'OnePlus ONEPLUS A6000', '2021-08-17 13:37:51', '2021-08-17 13:37:51'),
(68, 'dXoaqpY6TrGEp-oYobu011:APA91bEI9gH2hgAfJYEFU2zojoBp8V2c9r6Gfu5A1cbc95VJMnC9I_Jg0MqEwEKfbebinkI3kVNw7TQLovGPPUikSgkJGmOzndhxvPE3p248z0SQdFXLjyGJNiK8OlknI-VZ8hYVn8vr', 'OnePlus ONEPLUS A6000', '2021-08-17 17:28:32', '2021-08-17 17:28:32'),
(69, 'dXoaqpY6TrGEp-oYobu011:APA91bHAVTMTrZU1Ja6pWUf79lhYmmWMsgycREFFAz7oyEmikXTiIqCVW_BXbEOhXsjF_k7s63a6h-BEEIynCvk1qm78ufzcYGm5SBeKT5Nd8oPeYtE2lFwLMYDmuWnoELywB_1Qkx7e', 'OnePlus ONEPLUS A6000', '2021-08-17 17:29:57', '2021-08-17 17:29:57'),
(70, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bETiOutS_W8HGS74qOr4Kck90rU2Sz2o7szXnN-DAH8-ZfiU1V4WvG2jUewxZ7vxmZMrhkLL75hJjhTouUGm9O0cWWAzXzyahkm7XuuVe8SsdX9MXc3018aObLi7wkBMUAnvrSI', 'OnePlus ONEPLUS A6000', '2021-08-17 17:34:18', '2021-08-17 17:34:18'),
(71, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bFNWE7DLGPBDT3Iz9Pi8A9spSWPFEf6BJb0REG-kmlFxGiyNy48nS1Tr00tVohuX05qTFy6_E6WIbr85TBwLXYIDhTgEgW4UBbhauxxp81TvhxewQQxoeriQuI-oj5UFwda_w9g', 'OnePlus ONEPLUS A6000', '2021-08-21 13:33:07', '2021-08-21 13:33:07'),
(72, 'fxH4LmSeTHq1KRzLyWa4IF:APA91bGRkisqcrearECFnMLygXTbpgGUX0T_ug-rh8g-SqFspVCWYJobXbXkV3D5d-gSKZQduNdPgkUXDcYWx7Dplr2KQu975JAw-rWiZA4MhaVtLS5qw29OOP2W7qhceFsjAB0VbMh1', 'Xiaomi Mi 9 Lite', '2021-08-26 13:53:32', '2021-08-26 13:53:32'),
(73, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bFNWE7DLGPBDT3Iz9Pi8A9spSWPFEf6BJb0REG-kmlFxGiyNy48nS1Tr00tVohuX05qTFy6_E6WIbr85TBwLXYIDhTgEgW4UBbhauxxp81TvhxewQQxoeriQuI-oj5UFwda_w9g', 'OnePlus ONEPLUS A6000', '2021-08-30 11:12:19', '2021-08-30 11:12:19'),
(74, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bEFYPQe9yVcHmFv4uopMsDBg4-p3eFk_7tIlZqj6ZCsvY3Skyl9aSFlvSOBG9c7hntAtrz7aCXcSSsxQltLVQgW60sfMlj8BatlLMhxpSQcQQtpyrN2wfP_BaMCqCA9q4QYbPvF', 'OnePlus ONEPLUS A6000', '2021-08-30 18:22:50', '2021-08-30 18:22:50'),
(75, 'c1j2N7qTSlOquGc0962SEC:APA91bGjpqDs7Ztk6TFgWxRy3Pvmwuw_RsTjqQdaIH_pjoJhSXlrXlofHHZWyYOXw5WXF4mGJWsscqjRuGRUFkFNghTqGkExiqZR4ajEYwz8xbjYoqdNaxGSEk2pKp0UsnKakA1pYD5S', 'Xiaomi Mi 9 Lite', '2021-09-08 12:39:20', '2021-09-08 12:39:20'),
(76, 'emXs_BEZTNC-u5x8mSVQN3:APA91bEOHytaFxUcmkZq0GO_lXTi6RSGg7BlQ06uo5kbFo4zB_pSRzN3A92Qf8mQ7sx_2wZ49aCo_u_nkBx8xDHGxtcrLCgSQPGTieIc_f3akEjVMCzmFe7J1VizNyAZ1bbiAoC0R5gh', 'Xiaomi Mi 9 Lite', '2021-09-09 06:50:32', '2021-09-09 06:50:32'),
(77, 'f0O4CtiyS9SJObmplXbEey:APA91bF1aMFs2e4eYaqmc5P0fhCj52-p9feaR-IBqduy0sTvuvVt_vepGBLilw1X4H1G4Ne1ShohbDCDBf2rYpKisRwbVeX70-wt0mv_S3rvT1Zuv5_gtlBWIYWNxcRdSEyIkeSR_IlJ', 'Xiaomi M2003J15SC', '2021-09-09 07:15:44', '2021-09-09 07:15:44'),
(78, 'eqbzglmPQPW_HFZx06K-3e:APA91bFd9LVStzGVoRRroEg_qonoBjIc08GFAipz9ZMZIP1BlOyJEYHD71WJQl-5S-h9IuwxQ_0XBb4eh98pSdfo5WBvdvf3aemS8XOGmIj4f8SXksYom1pkzawBxMyXkfEURYkFF4xO', 'Xiaomi Mi 9 Lite', '2021-09-09 07:37:16', '2021-09-09 07:37:16'),
(79, 'cMCO4BOWRneWsY73thZnux:APA91bFX4OazQuBe6H6wGsdRRsG1ofFCkrRKWCGJXRGiGNNsRyu7ILVEW8mT_d1z5J01uyAqMxmJBd9LK-sdPME5BaZ9VJhUrI2FBlPGNXyGA2W_Tkv9E2SXS82hNyIK8lmS8o_li0yr', 'Xiaomi Mi 9 Lite', '2021-09-09 07:39:18', '2021-09-09 07:39:18'),
(80, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bEFYPQe9yVcHmFv4uopMsDBg4-p3eFk_7tIlZqj6ZCsvY3Skyl9aSFlvSOBG9c7hntAtrz7aCXcSSsxQltLVQgW60sfMlj8BatlLMhxpSQcQQtpyrN2wfP_BaMCqCA9q4QYbPvF', 'OnePlus ONEPLUS A6000', '2021-09-10 05:10:10', '2021-09-10 05:10:10'),
(81, 'fyq-0cXsQNyQEUNCD1MHeB:APA91bG0G5xcjTe0ntK3kl4IrRo156C02fbHWfmfaBSZlsQKP9-YuDkLbIdJnFeFf3ynUB0AnJH5NWooJEEnhBn30nWPikFdLjAu8SY9tLCURWczNi7gozAFNQ2v5Gdj9NEN856TJMP2', 'OnePlus ONEPLUS A6000', '2021-09-10 05:25:15', '2021-09-10 05:25:15'),
(82, 'exHoWBWdSAqdnMUsI-CKoq:APA91bFyyESH8ocM55Sn39Yuz1UtfBo2-pYfMc1MKWowbn69Q47iMCoannlRyGdNK_9njYCLH_aCELAV5dPiPWkBMaE3Ffm23Ym8FWh1QTYtRJFojXYt4TpyZAh-JTzLQv1DMestQOAZ', 'OnePlus ONEPLUS A6000', '2021-09-14 06:56:01', '2021-09-14 06:56:01'),
(83, 'cOQgVW-dRYOCPBBlRuWQWw:APA91bEDrQUmpKFDcRBNQem7hovD8bCGLdQcKQI2HecL_TAfqa3ZvUT-KgiOrJUfJlJcIO6OHH_gTes17VoVnIibmwNKiTQvMchQ64_1nOii-mLk0HP_DQzCi9j3MUojUSvn0P9g2gsB', 'Xiaomi Mi 9 Lite', '2021-09-14 07:01:19', '2021-09-14 07:01:19'),
(84, 'dW3Z3V7eQ720aPb9zsubIu:APA91bFn8CaWAYgLfzye8tcfNz16xzkFZtn5VFCLQhSzFMxbuzfO0vR0ACZOLUf6W54hg2fv4cSqYJ2QHMFNaH-hbufCmcSIuHMY3EinNpboosERv3Gjy6-lW3uqM4YqrXN-1wMqUYLJ', 'Xiaomi Mi 9 Lite', '2021-09-14 07:21:02', '2021-09-14 07:21:02'),
(85, 'eTHLZNJCRCivItpZcF7m24:APA91bGavB94_zKbuLK_38NXjvha2H66phR_OCKzD2xOAzvFJu06wOj7dQ2SsRT36IqWXOdiSwwREeGmAcVP8_PLOcurz97fCJW0UHVReVxr8yEZgT8JnCAGxFysePL9GDZWhWqMqwBk', 'Google sdk_gphone_x86', '2021-09-14 08:18:21', '2021-09-14 08:18:21'),
(86, 'caO-ENjKTo68zzdusDFpch:APA91bH_NJnS3ut_njExDaebyCKBBSbgLm0zWonaenr534yNvY9Nt0HPhKcruaB7OF6_615poPuttlTnvaz4lBpii0eTblQ8bgSBS7qHkHFjI6nH7Uy5iF8YTuKjG0cz60taj0Bt_2qM', 'Xiaomi Mi 9 Lite', '2021-09-14 08:23:30', '2021-09-14 08:23:30'),
(87, 'dj-cYQrMRp-IimuBA3BJMH:APA91bF7esFV2hvbwYCul9gnvk8qdINik-hF-NuW9u0qlDZy1O31f6M7JSa2mDEDPnqq86njY5ZCa75qUSrrNn53DRzDdsu29OaTVx6ghWlTz6islM4HnRJbEHTNNwwNvEEuNzIWDNpq', 'Xiaomi Mi 9 Lite', '2021-09-14 08:36:44', '2021-09-14 08:36:44'),
(88, 'f2VXmWdiTQ2cMAeM6nGEnE:APA91bHWULkPCltkOmPR8tKBA8WXXUB5dHPtbFN5aSbMCrfTYGKfO9TUxrRdeJB7ksgwx3Uqjygajj9lmoLLuDteD5kzXZlNHrz54rVASkaTe4Sw1tIiRkmE97UMzUcMt6L6EKwfvr5W', 'OnePlus ONEPLUS A6000', '2021-09-14 11:42:12', '2021-09-14 11:42:12'),
(89, 'eezILDnMTjG94wkC6VNICs:APA91bHXIcYxofEd49yQhB9L9RmXYQdrojouYZkyCC-s6VvXz0J3dPtj19LnKokxKGuv3r6FbXLz1Mq-PUrdLdfihMs-sriQXWwuTw8iJxaDZLsNp4ScmRLgAN7YZqalxiYYZaWJZimR', 'OnePlus ONEPLUS A6000', '2021-09-14 11:44:15', '2021-09-14 11:44:15'),
(90, 'eezILDnMTjG94wkC6VNICs:APA91bHXIcYxofEd49yQhB9L9RmXYQdrojouYZkyCC-s6VvXz0J3dPtj19LnKokxKGuv3r6FbXLz1Mq-PUrdLdfihMs-sriQXWwuTw8iJxaDZLsNp4ScmRLgAN7YZqalxiYYZaWJZimR', 'OnePlus ONEPLUS A6000', '2021-09-14 12:24:43', '2021-09-14 12:24:43'),
(91, 'eezILDnMTjG94wkC6VNICs:APA91bE52Y2HIzXaLz_zBa-bSRP0KJVQaZ1qfY6-ugzTwdGQKK3QFskYGtYWkQfOIFT6woPJrjkhoP--0FhKn-yOS_cmT-1oL7NeHHHVJspiBJeBSL-70pBtX0h1oVJQMhotyUK9lMPl', 'OnePlus ONEPLUS A6000', '2021-09-14 14:31:43', '2021-09-14 14:31:43'),
(92, 'cc09euMZQ72nCQ-joHuHfa:APA91bFlTEWCjjeK_TKgvFbTR2pX1IoqSgKi9i3JdcSShWzTEc-fkkQBpMfajqmX22W3jsMPTLrDnO3zfcin8hq3_ld2SwKp0KjzdaX8chqSRfyiNkRSbrkWqJrkOoqF9XbRg9Baz6Uc', 'Google Android SDK built for x86_64', '2021-09-15 05:14:00', '2021-09-15 05:14:00'),
(93, 'fiw5KXu_SKOcKK63d8ZTVp:APA91bERMiTRgjX4V9muzdHzQ6TRrytxZJTJX2Sr_T4cRSuUXrjKmLPBnOjrNxbhtMPCFIvOm0YU-NZQuk6hinJ_aS6JQ0APxxo7Ukqhrd0LTBemvdyu7BZeO2PulrfiKHZMKdEjbmHG', 'Xiaomi M2101K7AG', '2021-09-15 15:08:55', '2021-09-15 15:08:55'),
(94, 'eoH7pNwdSBGEG404RVT7gK:APA91bE7xcERvKUMLBXhrmssz2xnwKKfH1C8GMC-zd_f4b65v3iL0lkDGhzSqDO8O_RMPxWxWkY4AXD68zb0AJcqDseN5jZB2MeZgQ6Q7HmnhGm3teUnIqdoOZWMt9bYr5pkh6aSVGbO', 'Samsung SM-T875', '2021-09-15 16:01:46', '2021-09-15 16:01:46'),
(95, 'eoH7pNwdSBGEG404RVT7gK:APA91bE7xcERvKUMLBXhrmssz2xnwKKfH1C8GMC-zd_f4b65v3iL0lkDGhzSqDO8O_RMPxWxWkY4AXD68zb0AJcqDseN5jZB2MeZgQ6Q7HmnhGm3teUnIqdoOZWMt9bYr5pkh6aSVGbO', 'Samsung SM-T875', '2021-09-15 16:03:14', '2021-09-15 16:03:14'),
(96, 'd-5RDEw1RRinW8UENuOBWt:APA91bGKx0-hSyFksxhFM3cKgKxc6yQUNVJPKedOT0w4dEF2kHli-w-ruXtIEsmYXRW2LqIqLxGV0cutinYU3DzhIH78GMagxkAcvSVhNYD8Y0KGevnVsrcnVl4q92rN-grnthBJBqDi', 'LGE LM-X540', '2021-09-15 16:13:16', '2021-09-15 16:13:16'),
(97, 'cl0m6ftOT9OVOwQmhEsAzg:APA91bFV2MWjkLJk5nRYsqSl2vbMjofgYs_ClV4-V-ON3OPSQgEZKlTXpsTdRl6sX8kEea45CvYIr2SByacf83LeQvLUpJi1QDvmexMwRK39Nm26TKqHiqmxy5PptZJhDRGW32Ju-5-K', 'Xiaomi M2004J19C', '2021-09-15 16:22:59', '2021-09-15 16:22:59'),
(98, 'eC-2pf5hSvO1VUIS4-WMqM:APA91bGl6SC93LNo3tOIe42-ho5eoGuzDLSIwPvow5zCR-X135K_PFv9iNiT90OyVl63DRW9Zm5Cp96LgfhhR5tYKM7Zo-pZVmQf7vZMDVWvzDX5wrYs6MGxA7ZpdxkBASgrv_IPzvXA', 'Motorola one fusion', '2021-09-15 17:16:43', '2021-09-15 17:16:43'),
(99, 'dyHVANktQNe6jXUe-Blv7Y:APA91bH080T5lE9BN9rvEqkZjlTlCderqOPxRZxN1vG3FNpWpYncohCRTw5vv-80EjkVfLYM-qKgAp3d_AowRwkfGyY-2xkq2BwsX5BYyrSbX1cRDWqJ7GtPBCAXWog-8ADbds59QIFF', 'SHARP SHV42', '2021-09-15 18:34:05', '2021-09-15 18:34:05'),
(100, 'emwIdGasQ7iEY34N_UvUh3:APA91bGeKS-YI4-HYEPg8EfnaubC061PQjcCYrB8sC9r45ABCCyoJ9mduJebtL75ATpN6OaUa9LLd1HtGflyLUB8o7YBX5CuiesBp-5qty58tALrOUMV8MoPqyJxD_mmrjNBJ0oQwxVD', 'Xiaomi Redmi Note 7S', '2021-09-15 19:00:13', '2021-09-15 19:00:13'),
(101, 'eKlcfTINTVaWeNQ-S4Vqi-:APA91bFG_5q9atWrk5CYUZdpFBWrTnFo0rtl4UHnngI_mtCKBvX4TIRjMCY23iF9W_24f-1TQvBv_JhhfTulb-G_QbhaWV1oFN8u3GjXkLTC9sj9IqZ_yE7U61ru-DLJ_B1-LezlLgOl', 'Motorola moto g stylus', '2021-09-15 19:19:04', '2021-09-15 19:19:04'),
(102, 'cOPFKfezQ-6RuwUTKGuMJT:APA91bFEle_A5WOZsc9T7sWTtgyUAC3RInvicb61aYl-g2hs1r8nd2MLsA7JInKegDs67U-TXMYYOAW1qhL64ZX3e-KavCATiQy7zi8woY2zMcnNmDOdTaCKfx9Ga7d2spGe1YYX_bj8', 'Motorola moto g(8) plus', '2021-09-15 19:44:25', '2021-09-15 19:44:25'),
(103, 'dOAtIGt4SOCO_-VmZqqMnS:APA91bEgsfvKiv084qfuCXeG5Kv67ImKq3B0B-7kZdlUw07Pb7LpMFnytXn1FX2mr668cNDFTxQ6oT5tot3zN3dOTaUDvDQO-EWr-Uw4OaNHfdcj3ToWLdRI-TRhkQn2xVv9T2j7t1lJ', 'Xiaomi Redmi Note 9 Pro', '2021-09-15 20:01:35', '2021-09-15 20:01:35'),
(104, 'eCOeJ6UXQjeKee71jV5Jso:APA91bH_XdSrILlYyhA7BtA-hTIHD0GIlPE4g0c2FVc4DrEYPe-P7QkqKAEdPYzHnrtq3K-7d_fNCQNxz2KcMyCTIlGoEnChZBYLPWK4Rwqpxb11zARekLshobUxDcJadYj7uyK8p-ui', 'Motorola one macro', '2021-09-15 20:04:02', '2021-09-15 20:04:02'),
(105, 'eCl6RGVhTTKKzvivYKNSqR:APA91bGKGzPKQZHhptuImjuEhyVTNHQiqf8OeSJqW0_sfgBSOPFHDDLpVc_HY07AyuVF83wQyL2Ygw2uZFQTAITL85PHOP0ZZCWlJBsV5_41tIGATfpv9FG-t11wHvjVVSFsPiOzxq0A', 'Samsung SM-G991B', '2021-09-15 20:19:13', '2021-09-15 20:19:13'),
(106, 'fa6i-ustTSuO8hcuS2xE0E:APA91bE321hYB35_X7RpsapRscQdD4zfTQoVeNYSt3WJHQyKamEEywT2jafyK38Z7Ve3sAQy8s6Wl1E4mvKCvlVEbW59OtYc0c0z1TY5Q9qdVzn--NO-n_CUr9D7MNIu0ItH_107s5iR', 'Xiaomi Redmi Note 8', '2021-09-15 21:11:13', '2021-09-15 21:11:13'),
(107, 'fPPLLK7BRKW7R8O3hThOs3:APA91bEEDprnYXV-toZ7u17UT6WpjNnAziFgNy_R0i_-D_aaWMDPqosZEA1vNGmgP-RX_zLAT0A0-LStkylTV7tY-z3kcPqgcUB0_Nq5p_0v7j4HlVUizthT7z5rgXChA1H64e5vIdsA', 'Samsung SM-A015M', '2021-09-15 21:27:02', '2021-09-15 21:27:02'),
(108, 'cUVciYoIRjmUNXl33HQxTX:APA91bHbyjj4xmfhj2s7ZzwxvrRHx4lCw_sP9udWWC1AYNOnRhDmOg-3wLu3hbsZY4-7J8Rshuj_UxlFsOJB3hgKLgd7ttnt4KpCAy2sb8oYXQZUYwlG5DJ1us5kGve3k735_9RULiAT', 'Samsung SM-G975F', '2021-09-16 06:01:18', '2021-09-16 06:01:18'),
(109, 'eGlI9h9kRfuWCu3_RaJjNi:APA91bF4SrGlpFyXYdTwsFNtPEjgp9V90izx7eBaOZNQsE4Zo8kdSp3DgY2HQxxrwSHi3j5PTVQUm1PGC2Z3uaGwEqC2IGDz8fv126NfnT-dipKtQ5VES1UrTkGQljGbLbYuT-a7SWKm', 'HUAWEI LND-L29', '2021-09-16 08:32:47', '2021-09-16 08:32:47'),
(110, 'cLlk0QHvSk6SHiD4IuhFFi:APA91bFCM-6kGXr3bX8gtbZ3hm-PO6NFbykYj-ToSDPFhHoOlt-Rui4swlaBlyFWU3llXZtQa0LF2iAYoKe1dK-CZNDunPWbz9oBW0Yh1IPXLeRFJOPpaWEYu6BLoZ2MMey-jt0cY_yW', 'OnePlus ONEPLUS A6000', '2021-09-16 08:38:47', '2021-09-16 08:38:47'),
(111, 'eQea_5-CRsGie9kyDVWXnx:APA91bGuwLB_RvWgGKQJ9-CAD3G7ezqYBUmJQMv-0Bi8hls7qNUaAG5ISER0wJ5vajC_ZqxM6r66jQ3vu-gaWAWSWjMGKlTd2-CEwT45nUUGJeDazPY3u14xMkOb5KQzbrt2Y9DTt0po', 'OnePlus ONEPLUS A6010', '2021-09-16 09:48:48', '2021-09-16 09:48:48'),
(112, 'cW6iY_v1Tuqzl8OFBqZCrz:APA91bEisvO4wIShCDYM0Qppy-UOA80wN8Tyori_z3vW7J0Bp4Y6RYWbAkVBXpsAYtjV0uh9VZ7SEqHvq54BmSrtw2JMdqHwgXiAJuuDyBi6biQ5gwA1NXuwjOlW-UinfBaTHnV6KYEZ', 'Xiaomi POCO F1', '2021-09-16 09:58:11', '2021-09-16 09:58:11'),
(113, 'cMpyP6dVQT-mEgD0cbpCCA:APA91bH9QH7XuunIOal_gbr9_xkEi0G2ZFofJSc3DV11-XGio7-hCZ-WN9gW7rIALUzJnEcqPCDoMoPewwYUg4Pqzooa1J2RT72lC6N1gztH34QwwcoW1fQ9o10XKl6Rd8lLCCdpfZui', 'Samsung SM-G977B', '2021-09-16 10:51:24', '2021-09-16 10:51:24'),
(114, 'f8HRTl-VQ3y0cjnDM1yvx5:APA91bGFTd0x875roxwaxEXRf3hKyhKiZMVTkdzNtH63CLHF79sDsrZ1OYFZF4pJiy1zSDqsDwqDGAbGESP8Se0KbI7JMdU3QEYNse8REGLtvB3Tsjjb5P0_pltFjUGm6AyQkWmPRjXI', 'Samsung SM-A705FN', '2021-09-16 11:26:11', '2021-09-16 11:26:11'),
(115, 'cv2QTrTJRNCiSUBGaBDJdZ:APA91bFr6edBtpo6X_s2GdcG8fT0igJD41lhCyMUJr4wMC20VQjuOgWdoBDhLD-KEs_PIxPLtm72rquAk5XOegFKKDHrm3fwvW3u4EXIR8iQJ6Xw1mHiDGFq_6Ric4e1TQ34LLHhKzMX', 'Realme RMX2027', '2021-09-16 13:19:13', '2021-09-16 13:19:13'),
(116, 'epX_7Rk8QGGnR4A1QQGheB:APA91bH5t8xQwaqq8HsgbVBGczI9vcecfgKoqn60M9aUYikQKLvep-zYazWDB3j5zb9sDiX8tCU12zoQF2kIRQsdDC2z8Rxvvj-znNwMLJLnFi7x7ZVe9bHko5WosmZS6onX9RwEwXOS', 'TECNO MOBILE LIMITED TECNO LC8', '2021-09-16 13:49:49', '2021-09-16 13:49:49'),
(117, 'e6JrhQPSS7Cpt-2CoHaJ-_:APA91bH-gzq2uQb4WjVuDlEsNTKsUe-aKlON_0DWml15aLAhxz3RU1kLv2X_cthz7_mNXSy4n94dHaA23QrQH68q6e0-mdzGJmPsgYuEbvGzf-ZEsL4Y_on9MwsBdyP_uy0KM6g10c54', 'Xiaomi M2007J17I', '2021-09-16 14:10:15', '2021-09-16 14:10:15'),
(118, 'cizQFDckQIa8eAG1cNOjtc:APA91bEb5h7G4spBpEWC7zTwRiRO0TcZjQstjM7RBVvOBGqn2b05oHU8zlgkBG0LSooVyoA_P_hz10vdmpq-I3mZPGb_c4LYbOxoEKoK5_UIQj8SS7DFdGYH72THRy3KxYKzuWw4W5O_', 'HUAWEI MRD-LX1F', '2021-09-16 14:42:30', '2021-09-16 14:42:30'),
(119, 'cHQEkENfQV2_oaELQ_Vrua:APA91bHsYytBVVEoZAvxYa-gO7vJrDfS9lJyX3JEeucTk7U0afTucLALe-TR5YBziLzrKCUPTHeNzwqXv8m9zPMTN1f-_rJ8G1KOPguhntsBZwRZWydQIYN-k1eF48eglonk0r4nhnly', 'Motorola moto g(9) plus', '2021-09-16 15:26:51', '2021-09-16 15:26:51'),
(120, 'dOW4sNPQRLKgiyRS38sBQl:APA91bHDZ3O6JmMjwsG9_DIzEd1trjbkwsb5ekZ4nA4e-a4JKVW7GAesn07L0HQ86xZLNskUuoRynJkGNXZefA2bKcaUGEPD-r_asC_zqeJmy4A0jw4PUbuxpgYtzrjv1KRJcqFrLZRz', 'Samsung SM-A750F', '2021-09-16 20:08:23', '2021-09-16 20:08:23'),
(121, 'dnQ7DiOGTWKIgJcmWwc-b1:APA91bE6IxSi3d_QWdMbGpwqBj_s25SF-sU4GeGgqJmelGH9POtx5RJcVdcfE9c4BR0t-XwOz1X7BnoJvzgtyubo9KhHUfNC-1NnJoNCqfM6KBRmHld19MH9LRshxzEWltzrq9bifEWK', 'Xiaomi Redmi Note 5', '2021-09-16 21:36:02', '2021-09-16 21:36:02'),
(122, 'eW1aa326RH-1UdT-xnMuTA:APA91bFmtw_h9mPetQAMfhFgZUv2fskaQR33VsbumFiqnFGWAdREwGSoDSgelkBeLnPKM1IxRccS0yMZz86MeqbTn6ODb8D-jT_XbVcxiGubLrxnvDbZ9Z5cuD7IA4wpsof_76KMfAm_', 'Samsung SM-A505F', '2021-09-16 22:22:58', '2021-09-16 22:22:58'),
(123, 'dvt9RDFEQ1ajB8VW9yRxSr:APA91bG96iIfRcWz9VapVfwj9z93jTkdRVAWrRuzqI1fTHy5SPnCcRSYBuHrSGfs3cy765cBzlGY7NnwxL1ZC3GydG_WSLwpuzdZ-w1j2A_PhalcGOstpzSwjMK6Px3Zu0lPs0bzLrd5', 'OPPO CPH2015', '2021-09-17 02:34:36', '2021-09-17 02:34:36'),
(124, 'cNFOTM80TAS_uRMjKwoave:APA91bHK1-nqfIb75KSMoyzi8fInhbBuXc7BVlNx4hhrPzoq3b1tucso5tWrfFidDHan2KWoiV-ALq4yby4LFzGRDG5XAIhPKK9Iq15vx8wH2IbVRlmjzsd4vK-4ahAp4kwE3nSgDjJ1', 'Xiaomi Redmi Note 8 Pro', '2021-09-17 04:34:30', '2021-09-17 04:34:30'),
(125, 'dLsoIgBPRBix4oJR5G9Swo:APA91bETjQ7FLzk08V-2DQSfr9ZzI0ZW2BYSZRX9-7TwkTwUPeboRHoULP9hsd4GbcPdIQO1doM4-446mufJOminVgfMw2g7QvG1OKC5UolKZsZF1y3t0-WltQIuSYD5_LVHZhV9h83T', 'Samsung SM-M317F', '2021-09-17 11:19:12', '2021-09-17 11:19:12'),
(126, 'flaN-hAfQ4WdushNZ-KB8i:APA91bGDt61X4hZ84ZsYpI2rDRSzeJhnBwezexsM6biAXZ-m4qBfiCtsviKvkUMTxmhRP9SlnLHY5lBz4NdOxgXl7cZQuXy-YSmcBRRrJc-2qjRuDPePJnT4mFjslAGORTPSNEDpF_3s', 'Vivo 1819', '2021-09-17 12:57:40', '2021-09-17 12:57:40'),
(127, 'eDe098TVSp67bT1fD_x2A4:APA91bE3868FRygR7PmLzcaFDHwQm_kFsqrZxf59iyRBCRjCQbELhvkc2S2vYLAJiycj0BIxUEh5GHE6r3Qdroa1z_jhaI2eg1QNMLyowYc7Hk3pdpwnbxFIR_q-HuQdFR38P-xEKWnO', 'INFINIX MOBILITY LIMITED Infinix X650C', '2021-09-17 20:25:51', '2021-09-17 20:25:51'),
(128, 'cHYdTeFoSTS3k9b2uIBb2K:APA91bFm_H3nrh8vteIkrHOURnzeE8ECJm2qEmyVgqoTZtMNtGzD_3qYG2yF0TnwuoYWTBuVRLmYwhf-VUN4MnvKVgRLGg2zlnGB3yW-y3caUgEyZbd4nV1loyQ9U2Rry3YWdZbohMz4', 'Google google Pixel 2', '2021-09-17 22:41:46', '2021-09-17 22:41:46'),
(129, 'fLqDVAl5RwuSqKpaBfv9HT:APA91bFqxOTYD-IwNRYZSRiEGLWQLYjXKHZQxQbm0If5isV__ABJfmx8BNJAA_Vv9Cx7ehIKYWFI4jJ1oHxDKTCbdbZHVDiGyMiOHEUHqLrn7JhjD1ZaqvEr2IWnu4SbbBAzKnOXasrk', 'HUAWEI MAR-LX3A', '2021-09-17 22:49:57', '2021-09-17 22:49:57'),
(130, 'fqqt1uDHSxiFdM3brm4YqI:APA91bGPugMS-rRdVs-RCdb35kfgDChQZigPYnxW3I4a7pZSjAsyVu0iPEi7-UP8MyKwlOno1A7af5-lZ8_826tKsU7PM_19cikaVgfX8CJo22pFFSsM4ywMwsCKLY78GzAMKWz5kmtp', 'Xiaomi M2101K7AG', '2021-09-18 03:12:47', '2021-09-18 03:12:47'),
(131, 'df-AdkOlQlm3iLCZKcfBdK:APA91bFRM1cfPSdAoKoDiHKs75QsBobryLSF-YvB6VMdfdxmlHtyUHSAosu6bItStMZivVcDeAMHXkcDOPDPZIQD0fUO6wNc3IhOxPzdmipxeJ5gb6y_vC-ACTwWwQPc0yJzPwMLuMCw', 'INFINIX MOBILITY LIMITED Infinix X683', '2021-09-18 03:54:55', '2021-09-18 03:54:55'),
(132, 'db3GDqhiSRmBG0OdqyfvPf:APA91bEe_BnJGZrS6qhTRXb72DcUDS92zNDJAqmCJEPEwKmNW9QdrDI28605l_POnre64qJZ0e0Ji8URLORKUlsh-LFGwHWjPpYFf887I26-sfDmPaSvzs5zo6fueEpYtT4B1Cop2dd1', 'OnePlus KB2001', '2021-09-18 07:33:57', '2021-09-18 07:33:57'),
(133, 'cgbRUZpqTTi5FrbEa-ii1z:APA91bGvK1lF1jz0Zxutq51JHU78ipopp7k1Df5Zeb1PPV_jbaH3iswY4fq4xaI0w2PObp_TMX5Ze8l5zi1a_AUl61Ku68jH5g0mMyTNmTEbX93KGChzJZHLFpRfM-ABi36vivL2_9gS', 'Xiaomi M2010J19CI', '2021-09-18 09:45:05', '2021-09-18 09:45:05'),
(134, 'cppkYJyMRfaJwRKxdZL9Fg:APA91bFCQFlaOfoPl9t8rIFeVwar7BJY-w-qRafUNg6FpUt3JkS2n7fgpG_jgYS8JCEz8yCUaOwXigk0iNAs6jYhXbh936PqIbPI3Q4EiOmJVg5GU2ymB7K030EtmKUeFAiOyqWR40cs', 'Xiaomi Redmi Note 9S', '2021-09-18 12:04:23', '2021-09-18 12:04:23'),
(135, 'f1HECyQEQlmLIc-nEve8mO:APA91bERuKfsLSf9uqJv_b9PnEz5YITP31H0SiI2u1ZaMdzHImEv__KnP00nBg8BC6VJoJiCAoEC2FumI_66D7phVREMDqFOoCKaeiJZnGa6Nq4zGOUwZvZ_wdi2sKGKRGWdQPzGT8ow', 'Xiaomi Redmi Note 9S', '2021-09-18 13:48:49', '2021-09-18 13:48:49'),
(136, 'dxPVPbXWS7mH80UtB80IVh:APA91bHkJBcSb80c9vnPhmnv9eyvazxhmNlr6WzytksRznyVe5PRHPwUjbEMejPC2c-FSYyHx9HgHhirrIorTmaGLGvzozAtZY9Or4UzVaQ1vGYsUpJPdMuq93YmCe9QiexvvqlvjfR8', 'OPPO CPH2009', '2021-09-18 14:07:49', '2021-09-18 14:07:49'),
(137, 'fPskXmlzRrasMvXO8Zv0t7:APA91bHWO-DlcQwqyxxmwtHenR4H8PIGnEkaXnHf69QImxiL7zXp-e3UoK22hmwMLNwSdGPp3qhJT9mKCOzNP7wDNotsAkzRshbgozuzrN0CVZMvwDGP31SujLv0qea2ZElQtxVhdChg', 'Xiaomi Redmi Y1', '2021-09-18 14:37:34', '2021-09-18 14:37:34'),
(138, 'cSi9QZXwTPak9pvlx_3H-p:APA91bFcKD-YC26A2WEGLE0aiX7rxm4RHkchPBINkbYvyS_ErNY9DoSqZKFu1-sff2bSpRzzV2qSwM9Osr_zyPNiOmaE7cJCxruN87HBR3iXc_l8eN8wfZpbXkacQ7IlXQGLEBROS1EP', 'OnePlus ONEPLUS A6000', '2021-09-18 16:04:00', '2021-09-18 16:04:00'),
(139, 'e45kg4LOQUyY3EldPN2ica:APA91bHJRle6vWvFFa4QGgzSfMrIfvSUzLb659kVVZ_cMqCK2gk1xB06Nw5bu2h0UoJ2X71hW_3r3c4EIM7Qt8jYCnYymII6v4Xwc8Tv7i03mhpOURkP689nLijUThO1OGGltwgKWR4t', 'Xiaomi M2003J15SC', '2021-09-18 17:27:45', '2021-09-18 17:27:45'),
(140, 'dxPVPbXWS7mH80UtB80IVh:APA91bHkJBcSb80c9vnPhmnv9eyvazxhmNlr6WzytksRznyVe5PRHPwUjbEMejPC2c-FSYyHx9HgHhirrIorTmaGLGvzozAtZY9Or4UzVaQ1vGYsUpJPdMuq93YmCe9QiexvvqlvjfR8', 'OPPO CPH2009', '2021-09-18 18:28:58', '2021-09-18 18:28:58'),
(141, 'fltMRM12TOqB6kALrFKctT:APA91bHYE0DTV0cvKB7gyWQhn3eybvhlPGPj9v8mq9vJgagtLHJmJg_w80lg8SE02NOWsRz9KVJ-NIofxBu7l5PCz-3wSjC-Gr4LZ4OVws5Xk6Uqqz7ggngeoglAfHuJh1ykiDq3aCDP', 'Xiaomi Mi 10', '2021-09-18 20:12:53', '2021-09-18 20:12:53'),
(142, 'dUT_mXYFT0KmoEKKCzRnTk:APA91bHiiIXECmsMKdPL3DsYBo4eILzdEGET1Pt2NDqODCuniMcn64Y6Gre-5K3B9bk1GVarCz49R3FT_dGS-9tsFYXmMnhLcEnY9x8dKtYVVF_QmAUsYvAW9Q8opvm56U3rNx60ZtK4', 'Xiaomi M2101K7AG', '2021-09-18 21:03:08', '2021-09-18 21:03:08'),
(143, 'cNm2snjqRYa5DxYeDh929U:APA91bFyykEta-S6N0EmNMFdYilVBEQADb8DTI3wtldlosHcwiBUPfZvV1EzVBe1CoF5cGV8xp30KpfzT5pQk6XWlcAeU3YOHttMzDxSFdiZgzh6IU5TD5UKERbIA9oVJCPOHjNKo5om', 'Vivo 1814', '2021-09-19 03:55:59', '2021-09-19 03:55:59'),
(144, 'dxT5BuGLTfSSmUpipc4AQf:APA91bGoqUywqJHd34BPRgHGphiGsNOgNF2HRvLZO29n9LwxNjo9mZDB8kRjXf4Xda-16WC2bnmZneuvG0W9KHfrL5BAqlT6dfr_wp2aqvBksC3XJz-mFWiaEruk6DPPk1ljuau3aFKz', 'Xiaomi M2010J19CI', '2021-09-19 07:14:00', '2021-09-19 07:14:00'),
(145, 'ffT9r8BHTDSC31WP52TsYP:APA91bH_xrshrz6B5DZmXI8eyzByVSnF8HGeD4sgz3C2SNYPcfNSRoKMmFZqkZ_hvGdxB-783NVt1KWSKr3_qj9_s7aJbMCe6GhkUPtuOpcBml0KwYv3Cucej3TkBzJMllaVFGzHKq13', 'HUAWEI POT-LX1', '2021-09-19 08:18:03', '2021-09-19 08:18:03'),
(146, 'dwUhxssxQS-9ruu6aqz1Kp:APA91bHuyTaBZAh766q1I10dUrhyLbdfx2Xwe9XViDwd3oxy1AbymfazOKW7iAXfN39-WC_mFviEoVW3YLSXYpD0C9_1smqrkdHg1b_k1su6rFlzdDK3ohKjoXgIYA0nohhXBs6HDGuv', 'Xiaomi Redmi 5 Plus', '2021-09-19 09:28:52', '2021-09-19 09:28:52'),
(147, 'dTnh0E7NQD61F8GSfiLqiQ:APA91bGC2NMVdRjn2FDcYZaJhvV5snUR57fxv7RNZTLF6NIyjs3hh0jTF37cJxLE7lUc90tm99mmL4fF1XVoNHr2AJFSCEnO4xsPpLrOpjskdC6_COmP07uVCp8j2b-OGyxtxODaMB2L', 'Xiaomi M2003J15SC', '2021-09-19 09:35:46', '2021-09-19 09:35:46'),
(148, 'ecFWWLVZQSqRWoAbHaqNvh:APA91bGMbgFQJ91mIgNIT0m86jtmfai1kau07nxxswHhwm290Qi-5GJDJzwDVY32nU42MKAG9lpMWRtU2qeKEWQIrjgD_aGBe8V-bGMXca1w9M99LnEb92DzrZrNAGQ6c_5Fb6aPlQTh', 'Samsung SM-N976B', '2021-09-19 10:30:10', '2021-09-19 10:30:10'),
(149, 'cmleUXaES9Oos_V4CEXaBm:APA91bHCBkYm8xYx-GsCsK3FSAnpf62E29_fr_X4JkhcFEwMG8F-J5XRyg8GIaCiliZt4rJABNBwZMLze2rdg-Pz9W9hNyjuNgTECB_9yacEw9ltvKCjLczc3-r1vBxkS0MU8CTD2H-A', 'OnePlus KB2001', '2021-09-19 15:41:29', '2021-09-19 15:41:29'),
(150, 'fSTjH7IBTZKSkPrOwJsSmc:APA91bERMR6nHYaa4lkpZfkzppt0TuNmwhENJiaqmahOL2E8k4cE5f6YmyqQxAPl1zOtw1qkfsW5dOdEhBYJ9E2VAy-0U6E9rc8n26tuiWRgGTdgK7yJ1Hh9lLpfRrD7iKB7myjxv-jN', 'Vivo V2061', '2021-09-19 15:46:53', '2021-09-19 15:46:53'),
(151, 'dJKRzIOKSSKCpw2QAvrpXI:APA91bF__DYm4JZx0W7J6wilobUIDpgotY9rT2NJs_B8eh_Ue7g79T92FT8BPsVLUY9KNx-RskOSZBKPF4cOS6RMSI5PzxV4u_gDnU-O0qx1WXkGjtVJvesY2IJQXRaBkXDv9t2aBrUp', 'Xiaomi Redmi Note 9 Pro', '2021-09-19 16:39:42', '2021-09-19 16:39:42'),
(152, 'e8RCJZczRrO4yMX7zkuc3j:APA91bEw6fkd3Xrf37vrPaZK_Krp6IX8mPz1PjhgQFr2C8vOa5d_V9GTzWJ78_C09Myzd5pMyN3iEJmuwqtWvBkWHPsdmbjo2gr_iZrVfIt9BF-m7N_Ppo0LFZYtlX9F3mxABSaXqfv0', 'Motorola one macro', '2021-09-19 20:29:43', '2021-09-19 20:29:43'),
(153, 'dNO3OpmoRFGgy7aP4v7AIr:APA91bFwmQatiBT4uXRBmgfS6NM--NaQJ2qFAOVma1V1hzfJqwGmW24BZ5svOxG-IN_1IvzxG12P4ZirlHE2ZC21P7FHmkqzOvFbWA7FZNXO-Z5I57HFioiEX0WXGcyv9whRgGPF1GU5', 'Samsung SM-A750FN', '2021-09-19 21:00:28', '2021-09-19 21:00:28'),
(154, 'dNO3OpmoRFGgy7aP4v7AIr:APA91bFwmQatiBT4uXRBmgfS6NM--NaQJ2qFAOVma1V1hzfJqwGmW24BZ5svOxG-IN_1IvzxG12P4ZirlHE2ZC21P7FHmkqzOvFbWA7FZNXO-Z5I57HFioiEX0WXGcyv9whRgGPF1GU5', 'Samsung SM-A750FN', '2021-09-19 21:03:41', '2021-09-19 21:03:41'),
(155, 'dNO3OpmoRFGgy7aP4v7AIr:APA91bFOKK_PO5s3qOnNwtcWmw1BMjQHx54IOyS-gVS8iraonibE0Ti3lC1VdJyw065yB13conzSZY1mG-Z0C2rDoCf91p_a29NYRBQpghf0D2UCWz6rBa6D4B-4HT7zier0aBW2DtVG', 'Samsung SM-A750FN', '2021-09-19 21:13:01', '2021-09-19 21:13:01'),
(156, 'dNO3OpmoRFGgy7aP4v7AIr:APA91bFOKK_PO5s3qOnNwtcWmw1BMjQHx54IOyS-gVS8iraonibE0Ti3lC1VdJyw065yB13conzSZY1mG-Z0C2rDoCf91p_a29NYRBQpghf0D2UCWz6rBa6D4B-4HT7zier0aBW2DtVG', 'Samsung SM-A750FN', '2021-09-19 21:33:50', '2021-09-19 21:33:50'),
(157, 'dcmi5P4FR9-R3RhajOBqh8:APA91bG18TAocztEVbIyhoaCq3ldsnkOtu8BF8u16CThx772CyLWwE5JwANhMMy1-A2KGUq9TBdWFA_YjVid_u5dxUVF5kQns81djW0d3HYmI5EW5tNQeuetY_b7qPoDgjEyCeMyUMbn', 'HUAWEI STK-LX3', '2021-09-20 00:53:39', '2021-09-20 00:53:39'),
(158, 'dbzGSdXpSRKtkYLa8gm-KJ:APA91bEDBtjwvBdCI1ty0_DRF6V1u2neSBqabwQU8bVQYidcsqbkUHZ1sm5BqSHh0FZOCrn8C1DoaviRRe6B-e89ezwpbwYyE4BVvOY8OQmdiAgKEK30E3BQZqfQ0ekKkLHb7ahExwot', 'Samsung SM-G975F', '2021-09-20 08:18:50', '2021-09-20 08:18:50'),
(159, 'dNO3OpmoRFGgy7aP4v7AIr:APA91bEtIl4U4clfL9rLAmTkTzeHLUJc5xEVFZgwi-y02WwzJbz1JvjddUHap0GMYbJkDy_AanP5DG2AFCH44Baqb5bxrsR5pKoTLsODMI4Tm9EPMj-QqML6MW6nt3gR7E-0eWtF5YUW', 'Samsung SM-A750FN', '2021-09-20 11:09:13', '2021-09-20 11:09:13'),
(160, 'fGG3m7qrS-2G8xVeJxm2PZ:APA91bHSoVRXZm_J2Vf4h0CXMVFOulT_O9XuTDt-2NBxMlJat02p8PBk81EdM4PcogC-DDoxOg4etZgMKM2dDV7sVpDcV1UhHm5fn6akv8P2YnMISDzkZ0SGbyKCVhRECcyrB1BpxOv3', 'Google G011A', '2021-09-20 13:56:06', '2021-09-20 13:56:06'),
(161, 'eSVFRsl1Qzi1uvxZzWGTLk:APA91bGjOwVM0wWa6eavye6VKKuw_kcLBFtcN2GKR4gC1lAxfQjP-n_Oa1epU4s4y97258Plw-Rk7MaX3qJSTGaBW9ein4vgmkzLkz54OFGWVmqWqs9cUvtJY1l3xY1vWUMF2NHxzgL6', 'Samsung SM-A125F', '2021-09-20 14:35:45', '2021-09-20 14:35:45'),
(162, 'dWMzHO7WRpm2OC9v2AapUb:APA91bHp5wLlWb3S_B6bIuNe-BnrscWpmBpaztPxjZYeufZCH48Fj5ZLeCFl5PHxyLnTd81UqB3dfESTojd5UaiwI6B2gbbxadtLn8lkIH5L2N0AU0MRW0SFh2uwfJG5R5I0Y9AyznE9', 'OnePlus KB2001', '2021-09-20 17:47:17', '2021-09-20 17:47:17'),
(163, 'cFo5QdQYRvSU4COL6sWepm:APA91bEO39285RIQRXnBbL4T7dp3pN_qGCiHTvFKG7JcKDZ42TThm0Hr0ztbrvFzxGc8L15p7x1v3Ct8N_w7d5-p27t6umvEqPJsVFPXBcnS63OVsZQZ63S0Ry1mWgFNk02Y3Nmbj_fU', 'TECNO MOBILE LIMITED TECNO KB8', '2021-09-20 20:24:12', '2021-09-20 20:24:12'),
(164, 'ccq484WIQGmveS7kbZmioA:APA91bHidjIADLnatKNuG1Nao7gx_lgmzgaglmUg137I8fwKgjFuMWHVr_HoWGLjd9aMlB6xpR0t6KLpuu2_3QYVBIhAm-XEyGlBp1x69NfhSnSl96xLptScL61Dwa-TaS-jwyBbOfbK', 'Samsung SM-A315F', '2021-09-21 09:41:11', '2021-09-21 09:41:11'),
(165, 'dNIRPZ6tQ-up_CPruq6dvf:APA91bFmJJzISpGmaw8HliRtj3h4qa_qGo4TJl6_17oW6YVCqviSFqJonEig9jRLLOSJKwjCIUClMbXr0hyRxkjZMmww_gitZsw09_m_v1JtaS3NIh4rjAnzxOVCwD9kX0fVJPrIVFKd', 'Samsung SM-M315F', '2021-09-21 10:41:46', '2021-09-21 10:41:46'),
(166, 'dOk06a9aRhqpE_2YRzMMWI:APA91bH7NPdUoubNph8sMVPFH4zXStqEqXwtuug0NCcuJPqPDYoe-dF0P0WRsbPwasyvzMOCPvWEvI4pg1bDxYtRiRhD03608BWCR1D9RnIclddLttgKrk6dlx_ZwgnICHKsoJolfY6z', 'Xiaomi Redmi 8A Dual', '2021-09-21 13:36:20', '2021-09-21 13:36:20'),
(167, 'dXp7U9s1SxOoEd18eaWi5l:APA91bGZ2_uAyIx17rEMFydtngmWfx0mrE2E8TV8Z7djuGsryHPCLyfYODbHchHLu75WeRvH6Mxptlqs5ucr0dLnfNkTc_P5uNY0GDsBJE90D2YSheEOt9-s29-_OefS2dIMOWVUUhM5', 'INFINIX MOBILITY LIMITED Infinix X650D', '2021-09-21 13:36:33', '2021-09-21 13:36:33'),
(168, 'dD2f6QPdQGiQ4aH_OwV2Sc:APA91bEuV3wtegVnw9MoBWw74BL-64V0HFxjE1vvKlxH8n0zNdpbuig6HMhuhLHWRC3MnH3I0OzcYrNglYKcRxNFQitmvhNVSH2H8SGCmEyTucVbZ0HY-A4jaW5UO7zxck74p8WLhpuG', 'Xiaomi MI 9', '2021-09-21 18:09:35', '2021-09-21 18:09:35'),
(169, 'fmbL25HQQ8KTFJCKLAqLnq:APA91bEEI6jGVgqGYOlJQiIAwSM5nJVhSKhDcPLFF_34usjq_BAT-j8gqn5EDJWCAtPtGGn6LfDNjdkNL8HpM3PWydMK-aa6jnlA7puXx4YAZouGfWo0nduDv4_L4aiUfKXqUoR5kgYY', 'Samsung SM-A715F', '2021-09-22 02:41:59', '2021-09-22 02:41:59'),
(170, 'cDdYP8HYTeSC5i6-7VmPRO:APA91bGXuQMTo9zBP3xsAxM97Gb47opuImoyaH1jUPvSuj_V0JyOL7_pOwEeE-CEsCBYt0cGNWNL25s4vZ_4-zMR08Ct9Qf0xHg_jjHTgxJAZ3fI9kHovTlKaEvAIdcMBZ88CO-YfN3W', 'Samsung SM-A715F', '2021-09-22 03:14:25', '2021-09-22 03:14:25'),
(171, 'eMUiMU9LSy2bBRdqszA4lh:APA91bH-Q_c8TwAhMWwqG-i5KSLXBKnFUHVg75kcNyCUxZv2-5dyqwgyM5_9-NQtAWFbrKCQpUumhJmEivha0UFsS0CTxCATDNBzUm8X7fIA6wbnVTh2xRAI6_bI5n9eEmFCKldpb5MB', 'HUAWEI LDN-L21', '2021-09-22 09:33:59', '2021-09-22 09:33:59'),
(172, 'dYrZwgzdRki9wXA1GpDhZg:APA91bGm1Xl1mb-KmCbB-CMGkuw7JkL8jXeCAppG1BDoOYN0W7GpOOcFJ1Y4S9yCB34exfsvQynBDwLeHFcXzN1_bRxpCO12D0hHQB_imJSAn6zoC8CvnGDQsdUl7xuZiLdQA5jO6_Ff', 'Xiaomi Mi Note 10 Pro', '2021-09-22 09:49:59', '2021-09-22 09:49:59'),
(173, 'dAYZsb4YSzeHYH2REintMb:APA91bFjSirHKVhXhZUgSRSBjaGNAcfMl4-UhvDF1PH9ePAPgU6Gwj4Um9pJekNMzn5_qzOsgFP4cAwPS8i0tGf-HBRF5FDV1Wu_R8_IrCsvNAMeUWH2MOyv8tk5wmc0_Bia2Rs_6ARY', 'LGE LM-G910', '2021-09-22 13:53:05', '2021-09-22 13:53:05'),
(174, 'e3kOYxcST4aEsjSqze620r:APA91bF_6H6xwkEIQCBxuzsCh5m0c-lKEoVm4fthMX9JvXJhaOwytK3_hCKYBAz4lQt_g1nXLdCBlFeo_yc2xVmwvkNSo1LGTB_i0STGka1E7VLBWrnjaxF7jVrk81zyVph6rzPbkL5W', 'Samsung SM-T719', '2021-09-22 16:19:02', '2021-09-22 16:19:02'),
(175, 'e6IeFKmdQhSsceZSFxlrEl:APA91bGRdEvwyCHMALjaMo-eroTGzuzVRyaDoQ5GYmwNg0LiSuRkBVWeM5R3vEBJTpeQOGOPN8TTkm8hrWQx5xixoTDTwCDkGSr_r1JJZXSIfOsI_3yOttqm6bF6w3p5tk3czJC-0lN0', 'HUAWEI YAL-L21', '2021-09-22 18:22:13', '2021-09-22 18:22:13'),
(176, 'dJH5vTxHS6ihEg7l7kffFz:APA91bFQ8bnFM94fk2XyRWJRXKkTyJe7omsvCEKaJbDBXD38UC4nCIN-jCxcT4pi4Eamd798UpU0_rTdO1ZteeAGHy17lPbJAnQ5jOg61lzl5Mz2VAtNNMG4WcCjf1V5wYHVb5h8ylUT', 'Vivo 1935', '2021-09-23 05:40:15', '2021-09-23 05:40:15'),
(177, 'ct3JUhA4QnSvvclIIupC6V:APA91bG_2I6iBYNzhj4GW5MCaa05JPnQWi8RdaoXFSpx1Pg-DLVz4UuGUJ8JHU5thJq9SFHAwsD1N8zzxT248d3t3TH2w2srUl3EKhSoOT92L9vqS1DWvgEoEgxkmIkgtKEGOBAQU9mg', 'Xiaomi M2102J20SI', '2021-09-23 05:49:49', '2021-09-23 05:49:49'),
(178, 'eQh7tnT-Qj-kU6aUzOqh3Z:APA91bG-QGs7f8p8_I1rLgD_AQfSoAi3fGNZHEbTdOn7ns8oTp-oohxqATYJaixxekPKS1z_m6oM8YiPD77ix758IoEPmEKVZ857bcIbj9XIwffwCu2kJuu7-jE-nVk1g4WxWe6l6qqu', 'Realme RMX2151', '2021-09-23 08:11:47', '2021-09-23 08:11:47'),
(179, 'fNPMWswcTy-7IP6R12aIxF:APA91bHt706ARWCvg9xioZbx4_L75twDRgEbiGlIZCSYxfTA2agZ6fb23xBRrU-nkTSxdx4MNfW09p4mDA5yqbEJGAQKJoOzZWwBQeKqJXIS1lr0U-WiM6AjKgzZwRBQ5GppTWRXOKIr', 'TECNO MOBILE LIMITED TECNO LA7 Pro', '2021-09-23 16:36:30', '2021-09-23 16:36:30'),
(180, 'e9vlqTWgR1qWOpxeFfGq0C:APA91bEBHb9-9upYGX9WMxKATtZB2ezb2idSglKxDB1HcMG7YE8F_R9as203hvqRGiPa2eQJPkVhV2cMQ5ezCPzh9Gite0rlUAnnLAvAjTUEIA2ogn_nuhtSQ97e1ggD5tbSgctTu8WG', 'HUAWEI RNE-L21', '2021-09-23 17:49:36', '2021-09-23 17:49:36'),
(181, 'cLnzeDD1Ss-VFdVH0cQ87T:APA91bG8Lv_E40K_yloIzFpXjWe_57eLzTl7JuexGdLgl1ZQNb8FjrDYbTSbUUoBOjsgirrvFhHbQpZ3JM2EqQjpNZKtBibkktNC5AoKFof0l8RoUsamTBDqqmOJdA8-UZV1sZOUExv7', 'Motorola one power', '2021-09-23 19:14:55', '2021-09-23 19:14:55'),
(182, 'dob7nqV3RiyLAzW345-h5L:APA91bED3ZdcF8j7VakcwsGL9fna9J0HbgJzqNbo4uIvFEBMk9vf4ObRFDNo84BLYI1YEH10hFSO0VQsWWsUqTAINRHZh0tUkSfutITnYMFqulNggwz7z9myZzOcgX9Fak_8_cQiE0Zg', 'Xiaomi M2004J19C', '2021-09-24 10:38:14', '2021-09-24 10:38:14'),
(183, 'f51LxZ2JTcKL76ZEqcKo3B:APA91bFH6GuksyjlgKSZ_DjwTVEdv3EHxxZGmsvXoKpPevkTaFkgVyKtta2hECVEXUL9TqlN3xiT5mL8050bWPSNawb2COzzghYPDbxjNF0hV2TH7kPAuYjQRDQU1P4mzQjOIpqGLhtb', 'HUAWEI YAL-L21', '2021-09-24 17:02:04', '2021-09-24 17:02:04'),
(184, 'exO2wxCiT1yeYGbpe6Ii3i:APA91bFBiSB5_uhdWf78TChmYGmCwlJxHRehO6g0gsJpS0aP7_dmLavG-SnBap800FbtDy4g-a7i68ieALja1IPqwq3HMq0k3f9ggrj2Ryks9aj4CnnjxOfQZRIYLrbtEE8K25dKRoOd', 'Google Android SDK built for x86', '2021-09-24 18:14:33', '2021-09-24 18:14:33'),
(185, 'eAuP1Wx5QO6pXDM26i_pOd:APA91bHxY0w8lZiH-utH5nY6KUItw1vU26n5701VgExECqPGXJKE9qzVe30V6Dr6EszKgj93yBv8uCAfc5E2OnSsfHTjivlvulJtQDef7AX-o9p7tke73g4OKrbMRmrufxJ_173dXFyN', 'OnePlus ONEPLUS A5010', '2021-09-24 18:16:59', '2021-09-24 18:16:59'),
(186, 'enegf015QOahZzERQ0_po9:APA91bFQ0CmFL-Do9iXemYL0_oY0ncN09mzi6_zoQ-V6ig8WUn56bx7ApoGGP3VoWjeYsIe71_nB1B2SmzSavmbogViWJ8DUHo28LRZArVjvn5y04Qp6HlVtdm2qy3JeGUcQaAoMRFEZ', 'Xiaomi M2101K7AG', '2021-09-24 19:37:11', '2021-09-24 19:37:11'),
(187, 'doTvodv1SVqJy8BwlmBiSb:APA91bFWzrHLcwOqJU7H6cH5QTrcFa4LnnPoRVIpYI9wIqVntMdQng913RSALvMcf5APB1R36k5J74YBSNcONLndFN3mzc-2EEIK1RB-4lQAji4C546j8Gdch4rW4uboyJwroserrCI3', 'OPPO CPH2009', '2021-09-24 19:39:07', '2021-09-24 19:39:07'),
(188, 'fD2C4c_tSSyUhxeM1sF6p_:APA91bHy8FPnj3kRTVv6WGrhXgVehNZemKa9WdN6iqVWidcSYQLF9iUQ8T2j4ngLoXwOWykcAn12pOclVm_NYewZdE-e79b_S-C0k3sUxMiawX0o6dkM8SBzdo2URnHfGQuYsyzY0CW_', 'Samsung SM-G955F', '2021-09-24 20:04:12', '2021-09-24 20:04:12'),
(189, 'efqBfF_HSAWilTHfJlsP8W:APA91bG9vsqWCwt4aDKjgU4SoCVePUUgValjR0HaOwXYYG1gDfCXM0gHLBloLm4_rCSqkyz10STz3nwgpSFEMiSSgDnj2QGtuWE9wrbjsju8a8rxcIT9ZD6EOzXYiPGHTJ0eHjzOdddf', 'Google Android SDK built for x86', '2021-09-25 04:48:06', '2021-09-25 04:48:06'),
(190, 'fLJPAfefSoGYmljfsT1el1:APA91bFnEH3k9yGb1c81qxp7ROSCq3z5OIzqXiqCiD1JJo2mGrOvw2FATgerraSsl4iivI05tqGNHTjJKCrnbHRq-VkpnZVLEuwXfzpfh2CfmW4CirZbxNqdy6nhEyWj0OnxiVlQD95q', 'Xiaomi POCOPHONE F1', '2021-09-25 06:27:26', '2021-09-25 06:27:26'),
(191, 'cbNr2ZoRRxGMjoIU1jv0LP:APA91bGKK3DQiTw1kxSUKa2B-dwXsAVmqyp-t4898g0qlx66BWJseCg6n-CKrfr7Bkrsq5oL5KNHydYYBbZbU9DP-8fuLfn2QNfZj6M1_bVZ8zaSRb4JOxSJPYznIE3e46Djf3IYOABH', 'OnePlus KB2001', '2021-09-25 09:58:28', '2021-09-25 09:58:28'),
(192, 'faSnaR6ARYyu277_7m9SVv:APA91bGUOrik54O4sqTJrp0wSGm7UyUXDFATo9aHZ-YJFoXeQMEd4NXOrmBSVXel8r9gP_onzEEzmypLiETfxYycIOIW7AiR91zu3APsjmd8EkPEBSfR2Ae3VEGY7W5nOY7v9DSpKd5I', 'HUAWEI JSN-L42', '2021-09-25 11:12:50', '2021-09-25 11:12:50'),
(193, 'fYESYngLRxKhoSZDliPfzP:APA91bEVP69pKgpahVDMcMO8o5Ha4VBezYjK8uy9HQKzoLo9Emca1DqRlHFdhKlwXyhDLe8v3hDdDb6HJlpNVZtsOIJFjoehdS9KOy1chvM2pmbGDM-1N4s6P-gryf4x-WBVzKWuu2jz', 'HUAWEI YAL-L21', '2021-09-25 15:10:20', '2021-09-25 15:10:20'),
(194, 'dv5OIfpdTcKLCol_gQkKHt:APA91bEH5vIAR7lolYE2lIY6VAz4masQ6_krr3PtBzHGDpCNgoofos21f9nKhUjq_EAnDmE6w53ENsUoudnxa1X50qGJzSOtgzDNyFpqrxxCN1zpJ4Mi_0AEK2jvl0IjV0bV9b-vwNm8', 'Samsung SM-A125F', '2021-09-25 17:33:57', '2021-09-25 17:33:57'),
(195, 'fiOzcayORHinPS-0d-1Zuw:APA91bHMDq4eJNGPCvgCW0JTT4pBC8fykzZfwYJrEL2KttjlxTTOqAQIBcWL_j_Jnglv5rYvPKzdC9_P6ZfiN4-LnPPSqTt_kw59rkIflkhI8wbQUANA5Hgx5S9aurnwFJPcMaaKS0dP', 'Vivo 1919', '2021-09-26 01:25:28', '2021-09-26 01:25:28'),
(196, 'fHBCs6QvSx-QdAmKxohFgS:APA91bHUP3RRlgSImnCVQ9bgvq0qf3B7MYOhUnLuglz8UQheRTPm4gvDtTD73jWkltYTh6LHBdxpfOy3OkHXqVFlBAmBsOhGJyP7nP5SADcC7uF5cL6_EXzE_dvkZCee7OJwciSC-OML', 'OPPO CPH2015', '2021-09-26 15:51:37', '2021-09-26 15:51:37'),
(197, 'eOsS1M8mRZ2LEYfW9mfz1C:APA91bFVaz8WeX54m99NIbhquK0Es0EaUTPT5WVEMjY2U-JFs7BAgQalFugUo3NumYLYByzokJkOoghNOcKWqTCvEUeFPpgy066aTcysY4GYvfHj61vtu72NlLMUfgq6jgtxVuJ_mJTW', 'Sony 701SO', '2021-09-26 18:05:59', '2021-09-26 18:05:59'),
(198, 'cU4hOpecSlOfWMTl6lR6uW:APA91bHd7lEyGzJgciS32G4k7gSWHblP3Rr8LrCMt4oOtpLVLfbbzkfq3Cuaf0qbPlMmbRoLD4_kcjbfi4OfJSLkY-yBqSbP67nT-alyNEow8X5TdU9b7MU1-mR_oZsp_mf_E8QperlQ', 'Samsung SM-A315F', '2021-09-26 18:42:05', '2021-09-26 18:42:05'),
(199, 'cEkktxblTPCpGGuodookfc:APA91bFzSYYFRCweBXnSOv1X8L1oIEGprMrWu7gVETWoF8BhQxbPWuJjmhvjyYyb4BcGp6ETHI82KliKPat73YlO9V9FeX2vNAMxzywxN4okR7YiMz5jxpZjVEZXJZoctzZcCbm5HKzH', 'Xiaomi M2101K6G', '2021-09-26 18:44:54', '2021-09-26 18:44:54'),
(200, 'cGXH8eWUTx-ehXp35Sd0bQ:APA91bGlhBUQPTpoSlKK5e8oKowqxn50f1dCKTEACmrm3nrpiXXBR2-7x4NWSfUpby5Jz9rVB3o2HLrdrlP7kvZ4YOQMERn4kjirQ4hegFnWuiwFfMojtRk4Nq7GYn3c8ILj4i3BQcxc', 'Vivo 1933', '2021-09-27 09:30:33', '2021-09-27 09:30:33'),
(201, 'cOXvycixT9aeq3IFq0zz69:APA91bFt2XKeK-oybLwx_GtsrFcv3Ttg1YhFb4KQdicUToo7Ir4pGUcgLv6XOE5dcKgHX8kUSnc_-wEgbq4O-vHAzJWS55x3PNXC4SG_tswhN6jta2ImZw9_OmspLNkFc4YOMw-_NUgk', 'Samsung SM-A325M', '2021-09-27 12:22:28', '2021-09-27 12:22:28'),
(202, 'cCE7ovSBSlWZFDmw9C4IdC:APA91bGhDVVQqoDn8SaHLVPrYiGlOr5cwys6Tvw9RamOSawj9bQ5idzzpJgeoM7isk2Vn-Gu0lvyCihzhSyd43xR4rcma0u7pfftgqqKyVThsMfAYXkCZqIScYBN3qpXAS1d7XCUBUm6', 'Samsung SM-N960N', '2021-09-27 12:46:36', '2021-09-27 12:46:36'),
(203, 'fbZ1Ci3tRYuKbBB2yrwMM0:APA91bEdlYzgMMdk5D-Nga_O0BPzbfEYPb1RFjZAvVYIi9eOoa4i-hz2vmzb5DrZ9Puo2olYNgyjyMrsN2NlX7fGofl8wTUttYM0zPzOI2BL9VeRF3_TbwxgYdwqQEqYj1bkkUOrFNmr', 'Xiaomi M2102J20SG', '2021-09-27 14:55:23', '2021-09-27 14:55:23'),
(204, 'dg4dtwmhTCOBtnV1k4PzX0:APA91bGNaYEubcgBVAEqCNCHQOnQLO8Dz_rU2mfsCUdZZNEKFrG1UbUJAH1DeT2dfFZgGo_PZvAbiNKZ5hibQf6cMn0uvCZnmmxkc7DHF3v-5W6BL5FnJkcSUEWm1l3Cv4lboKEtQiA2', 'TECNO MOBILE LIMITED TECNO KC8', '2021-09-27 15:39:45', '2021-09-27 15:39:45'),
(205, 'dvi-m5pSRR-k3LF3hOcP8a:APA91bEJh6Ik57RsnFv__aP8DfNYh8oVNNSCKlGtR_zkIvRSPhvM_uviUaJ-6-5A9g-DLceeXBoodc6stzZl6IntWZZaDgVqYAw_7nxp_R7LwXCtJhXD9yRCHvwDdNi169T2_Af0tSSL', 'HUAWEI STK-L21', '2021-09-28 08:01:35', '2021-09-28 08:01:35'),
(206, 'fPQQZqciQWW7DYLjmfs8MY:APA91bHi95_34uPWW9lXsFwnUKitv3FSJ1IjG69PsipHGJj-LfHv1JK05WeFgDybv7-zh5zhu8Igt18gKHJa8y30dKXpIgBVNeBMOJ246bAVmf507csk19oHWLLahXeFoXirJI2ScUTT', 'Samsung SM-G973U', '2021-09-28 16:04:11', '2021-09-28 16:04:11'),
(207, 'cZkYMUfoRp6aVq-s5XHCjW:APA91bE8ZcnoRxI5qYYUqQz0bb9omVNFhYfR3oD7IEv6AGKiYTMQuJ4Cq8vZrcPEqRaH2cEFZ-efwD-KU4vy79S3FTNAB-AyKAqo7enPtRJkinjBQYG55V_tMb_LIHDkhGdkpIpf9g7x', 'Sony 701SO', '2021-09-29 07:05:57', '2021-09-29 07:05:57'),
(208, 'eqo5wrraRySVRKclCMGOZO:APA91bFyli6EtRWwya3--Yw1fx92iBrd777JFhCHpCa1dFY3YPZ_hg5uipFn-YvoLPpCtlqR2I5eGg_eUPqcqhqOAUawRyiceSNa1dpHywbNzPUWTc9rdrbHpP7s6tY5rLNDt11lu9mR', 'Xiaomi Redmi 7A', '2021-09-29 08:29:30', '2021-09-29 08:29:30'),
(209, 'dgu9zFQzRuyqIbJzCU96YM:APA91bH2X4BGUs24nW0koj5xHYneI5UCqHmddXeqj7eDoj5WFsRYQKOpdOwFEGBUpzDfUUpKO1zxgRRYRjn6AMNDzzc-Sl9tkR-VoMFZUCpIi5k_0P3kjGpatie2tUBCo9T_IEwEgzU8', 'Samsung SM-M105F', '2021-09-29 09:51:55', '2021-09-29 09:51:55');
INSERT INTO `tokens` (`id`, `device_token`, `device_name`, `created_at`, `updated_at`) VALUES
(210, 'fsimpzzDQ7m58WZT9zM08z:APA91bE-Gpg5eaEqNYUmb3hHixu4e2FO544WxIPLP6Yo4Ym7UdMsAqKcE9O8f0hCSvXgHBJWZBEwmuCj9GJ7gTN7owHqnfnUbhWpKmAT7Uwq1GkQLKiogBhKw8St3V0MOsvk859eJH56', 'OnePlus ONEPLUS A6000', '2021-09-29 10:31:31', '2021-09-29 10:31:31'),
(211, 'eQUZli7_TIqtAu3INKrd7U:APA91bEYpkhDzhvp5szBEvAnVTltz0iOkfpb8lSxgP4i6yNZEdEqHBvtvjH9x0--1_JXkSRaKkq0UqGm3OAqxbAc6F4Rr0qxmPfFJomdeNFRUaz2SqSJmgvsyYzGKKyS1ksAEDvmN8VD', 'Samsung SM-A207F', '2021-09-29 12:22:59', '2021-09-29 12:22:59'),
(212, 'crEwEzsyTbGTqDMKMXE4Bo:APA91bFHbcQOTkFW9cuKy1DipjQpmBp2g1gOXQqGSa851SAsXln_kqRz1lfWUvUNvy_uazpodGGTqxNmbPJ2TpbkOyu19Hqy0LDIRvnPRKYm7IY0MLilPboRPfEX8NIGRyz4pk2AE9VP', 'Vivo 1811', '2021-09-30 03:09:24', '2021-09-30 03:09:24'),
(213, 'dOQtl9WISCOamW4SYz7QfN:APA91bET7Wfqs9YyYlPVq5sM5wQ_qYe0fUkiF2fVVUjvlkqn_LuCvHp410--UoTSN5N45iA08N30XQeGBzo55o1p7MmpJUFpyxQoRqk9AidWZmgMVzMRzaVKztOtyr1hHdjj_JSZyWiw', 'Samsung SM-A750F', '2021-09-30 07:17:52', '2021-09-30 07:17:52'),
(214, 'e9LULQWFRh-oyDsKAUEOTK:APA91bG2RkgmBP_JzYBde1dIknKwi3WtYy4SHRCBeEHtfxK9jbkaYTBqqtRd5G83QaHZgtOfNZjGybuG2XMOs8LbVlM4tu0g6FX5L-qO0F7JQ9oEkliminsIIwUJI227aFMOlbndgLRW', 'Xiaomi M2007J3SG', '2021-09-30 15:22:42', '2021-09-30 15:22:42'),
(215, 'dJD3WA7SQE2msx5mDEZzmy:APA91bH5RWp2SOck_yjKJ_PBoGRsP-9IaPLVXq9d5ho40dZ57C0YAMQ4zjTK-fa5f0f3cxkgvmbKSgEUB4AfwUnQu88aA1XyIG-l0algK2V9A2AWhjNNcbtVaIs7MHlwSRz3Bcv2lmHl', 'Samsung SM-G998B', '2021-09-30 21:22:55', '2021-09-30 21:22:55'),
(216, 'eEM0tkPqR7yS0irk95lwSV:APA91bFX3yOYV1t21qwJi599nKmrNaIWiML_bbiM9KkXa3-8brICaLZbO9jronTg2UsZD0uw4kUYyIYrobB9Fy9JAUl3DUarea69BFXhB3XUndVIbaeWg1WKcMIItX6zAVhlmNEXu_Ra', 'Samsung SM-A507FN', '2021-10-01 08:19:02', '2021-10-01 08:19:02'),
(217, 'eEM0tkPqR7yS0irk95lwSV:APA91bFX3yOYV1t21qwJi599nKmrNaIWiML_bbiM9KkXa3-8brICaLZbO9jronTg2UsZD0uw4kUYyIYrobB9Fy9JAUl3DUarea69BFXhB3XUndVIbaeWg1WKcMIItX6zAVhlmNEXu_Ra', 'Samsung SM-A507FN', '2021-10-01 08:21:02', '2021-10-01 08:21:02'),
(218, 'f94ac29TT72oj1h-4oNEcQ:APA91bHt4_oLadIbpt6jZJaSfYa0VuvYaRo2RN8bBm5F8C-Z3Qr-AM0GQHf-ZqaYuS-bBuQa0A00JbmhKb9zSQ-rZlHVGjXxspMPhPCLVBA2ncgNc9-yn3p46YWmQE-RbuUL17tWmF2_', 'Vivo 1933', '2021-10-01 08:36:31', '2021-10-01 08:36:31'),
(219, 'ef27PyhrQg6Prh0TqhEtNY:APA91bHoDy9yj2Y1hhvgEcMB6W7ZFk0-3i5N2jtQNiDhwbknq0mflpGR7Tw-zKviJdlCbj6lGVf7nbb7AX4mx91CVH3rm61Gl_eAUNRVD29WuTy08oT-iZhi39AN1z6KxNRY_CFO98WS', 'Vivo 1906', '2021-10-01 14:30:32', '2021-10-01 14:30:32'),
(220, 'cebNq1l3SquACjVgsU02E1:APA91bFRKW4EneBH8TXELxhhnmMWanyYKz1NQzq1OK8A3UKzM-2PJUX3lAjH2z6uWPk-atT4oe9VYEFilWl21ZUiTIHa6Zm3dxc4PuU7J9YhPqL8jatkUTpWANvMcmh1ZsFHwJA25xkP', 'Samsung SM-A025F', '2021-10-01 15:32:12', '2021-10-01 15:32:12'),
(221, 'dZb7OK8QQdKj-DdGJewm89:APA91bFu6hDwkWKCVpnd6gYx6-jXSCaMNm__CNxjkdHbWVSFNC_k4eJXjZ5rfjswzjb6aHionpweDoUxMyCAq1Bhd3QpEblHdaoiI6gBp9ZE_Q2s1THhwn4j5L8ULJyAJVyyB2ASl8sP', 'Xiaomi M2004J19C', '2021-10-02 00:18:38', '2021-10-02 00:18:38'),
(222, 'fawkMcJxTUa1bmcI2ZuYH8:APA91bG_knIj4CNf8_I9Mb9RrZbMB5hjWrtl9YlVAm60w7UdHXFNVvtIiYXQYFttgS3Ts09LLIaXwqsf_CDEKIsAgadlj3RbCR1KQ97CSBiAIA0CWbaaSUa7fpeexrfDDGQRl7eZl4aE', 'Motorola Moto G6 Plus', '2021-10-02 05:05:38', '2021-10-02 05:05:38'),
(223, 'fi1n8f98Td-Z1XiTeBasFB:APA91bFnq8ir5ufKapj3uOGTQKv5w031xkc_wZk5CC7-6UsQIsHBfCrHiv2_z1PjjqBDEZqSJURNdrDIlDxVIhYRPxgilNlwdH7EKrZQYWv5LCTeoC_1ZFvXGfg56PvRj6Mb-HGWn4VS', 'OPPO CPH1853', '2021-10-02 09:15:52', '2021-10-02 09:15:52'),
(224, 'eMNY2tskTqCvQg79HyCHD0:APA91bEabSemkvGv5vlzFlAmEjN4dyXGp3OTbGHySWwSqh2ttrbkYgXNlVQ4Yos3KfB8gAlDWcf4zhoQSFtnsj-rZ5kN1CZ-XwoUPyMx9FpOqGZanrTQiqEpvkcbFMHyjQL3HVJrvquz', 'Xiaomi Redmi Note 7S', '2021-10-02 16:59:27', '2021-10-02 16:59:27'),
(225, 'c6e2w_6qQhWoVx8o0nc6VT:APA91bGmP7HMnKgZs-XLaOBQrddF7HfMS-SiVTiEcs5rMDyp5kjGOEZ3671CfUuV4aW7pCKqWfpyH3pgy1xZqgBsR0X1czqES0H0r74Kqj90Qts3EwQe0DD3-8uZoti0VGhzPBywb27f', 'Xiaomi Redmi Note 7', '2021-10-03 04:25:42', '2021-10-03 04:25:42'),
(226, 'egGh67dGRU-Swjw0ihnc7u:APA91bHX_GKFYBuaNtBo8NmU-QdgIOUWmRHylXUEqO7ICu_W62ZUKoc5Pm6yXPQ7hgGwKJXIA1iUGnWZ_AQ3rgR8pZeOYMmP2thCLNqyYUG5_v5CZ6tuoQWE0wQff1IdZEV_5FoxGJEW', 'Samsung SM-G998B', '2021-10-03 10:53:42', '2021-10-03 10:53:42'),
(227, 'cLDUfXxFR6KkVeZOaRm-cT:APA91bH5H_6X4lonnMz_lcRph1N8o5ZcOYRgyFYcGhpVjmTej6lf37jxyhIl3FEQhIkwkooLwQEtK4JSWWi2hBVD58Lo26QKXs_AxzZTfT3WME1vdZaYyRDXijnmiakSQ-bCFWvJd98i', 'Xiaomi M2103K19PG', '2021-10-03 16:02:30', '2021-10-03 16:02:30'),
(228, 'exTjgFoOQBKFH37PYZ-19N:APA91bFfRzW3OAM8BE8GqYHLi4QRJdkOohtMrfVueNMR0QBm5RtkC4YuEOACjyXKzwhQ8YvsE2UmJ8lPgWdiN3VDWdz-9y4qpHYPS9bZ2JDpfhH0fU30zvaIh6Ja_jFI3qx2Ap2J7jkk', 'Xiaomi Redmi Note 7S', '2021-10-03 18:40:52', '2021-10-03 18:40:52'),
(229, 'fH9uClncRB22ph4DFMBMKn:APA91bG_2mJ8cStE-bfO4lNnj1uC1ylUyeQECyBV8PrqXO9wpF5OV-T2u-Uj_YwGicoXDzgaEibUBQsp7ZATPjvph0j5l3ZqOWy-qK5gCdXyEsDilUPb35tZ3jvaVDlPuZvfWgJ275MU', 'Asus ASUS_I001DE', '2021-10-03 23:40:06', '2021-10-03 23:40:06'),
(230, 'ceB7neKnTsSRQ8SUYaWLcz:APA91bHD6zUhwMRoRG51NXZmh1E8BeA08L1XZ5u2vJoPFKsrJ6fp36c9BR77ks5AIUMRmvp_DKkQcISJLiOuCc4iqYm0uelTMUIKvpeKl-bxcH_u6ZJEzB2hUF8GwFXxx4gZ5Gcx3BVf', 'OPPO CPH1853', '2021-10-04 06:24:44', '2021-10-04 06:24:44'),
(231, 'ehtuTVoSQ7qnVxYXHhgwEj:APA91bEGSy5de_cujOlHBYHOHS-XeXI01DxNBG2IV5d1rZ4dvt9SVl0ZqCC-LXglCrLQmthqqYBf6HdWxVz3bRrqZfXXTreAfvE66Pk4esvIhTsaqFrser6jl7wo34xu3dObgGnrRncX', 'Google sdk_gphone_x86', '2021-10-04 08:34:20', '2021-10-04 08:34:20'),
(232, 'e_A9YHWzSy68xOHKFF4Y7W:APA91bEgAHAFtidzTm7rPe41OdCuQCydkIZTcV8Nl0n0C4D1UxZBYymOvv2W3WRUMbY4sn65NZVUek1WLIVZxbyyqJCl4yhRJWolauo-3wrqQf8U4f9fRTSzn-NjwOgB_4UncTh9xxnB', 'OnePlus ONEPLUS A6000', '2021-10-04 18:15:22', '2021-10-04 18:15:22'),
(233, 'd1TbayV5QgWHlB_UlBQA3l:APA91bHe6xm0o65kX6LYTV2CBLq0R2p77nsO6Adh6e5E7n4pTQ_9biK3R6uH_8qCVfoNNZQRaZEiVMxJmwhOPqw8IqivX8jSx3dR31BWpnvddaWxLKIsPe5gWkThMrVgkUvDn_9OlGeq', 'Samsung SM-G9860', '2021-10-04 20:35:36', '2021-10-04 20:35:36'),
(234, 'dYxvZLKjQ3uejBxj_hJ0w9:APA91bF5G2aYQpX-GJdVZ2Nc1pvn--FkuGGdY73peLcMz183tDQcvVGOPSX4xbTYh_rwEanHrZ-rVZ0xkXuWv9xc9HSWc23myp33_pxYJ3IHkJvzipRA1NEWKbCRGOH0crx1KYyNyTDh', 'Xiaomi Mi Note 10 Pro', '2021-10-05 01:55:41', '2021-10-05 01:55:41'),
(235, 'd53ZFs3UQdajkEwkxQms7W:APA91bE17D7jjD-37XIBZevq9wDALIn0YD_Vl7ddADMmJgIZ7KAGuR4iPY_3q99AHFOPxHCXLjdIgiSUwEo4ZgmPbU_FRBIfO4wh5hTMtPicqrIMZ4Op4i4f_M2gK3PWCT84vNhghJfO', 'Xiaomi Mi 9 Lite', '2021-11-24 07:46:30', '2021-11-24 07:46:30'),
(236, 'eDfVpBGrScSD33AF5vR0Vs:APA91bHpP2PYGA36Vlh9sSQEp-6da16YTARm5mlQuEAP33Lg0PUSp3JQfyu_td2BNKh-xMP9E1bNlFGPFxYlew_9Cxp11Z2zEKc9FLpodglx9RDSOpbm2ENeRuEEswrDYUT_v6H4NcSE', 'OnePlus ONEPLUS A6000', '2021-11-27 06:37:51', '2021-11-27 06:37:51'),
(237, 'fRW7r9N2SZKsb0JzdojvXf:APA91bG6F8gw8APN1EML5FaX68JegnSrwJUUvs5--5CdC52ocbimBsqXTIL5YW1oNNEQDb1xR_dfyDECL7vRH0wj81gyCf8m8qe1cyy9MfOs9TFR6nK1LaQDKCyzYyTmAL5E-LOcNegw', 'Xiaomi Mi 9 Lite', '2022-03-28 07:39:43', '2022-03-28 07:39:43'),
(238, 'deN2-OzhQ1C3a2nb0Gc5-h:APA91bHX7Gy5wOq_dWPoGXuiRCt7m2Z70yI80uKISzr8I9-esUVOCv-iKmgcG29CkeTe8aZwQRtYJn-XLOZr16JjWik6psQy0NXJsZ1gmUzxydNB-piTdJnnfJz2TbfxRaQBAv8WC_5p', 'Google sdk_gphone_x86_64', '2022-03-29 08:20:33', '2022-03-29 08:20:33'),
(239, 'fT3hPrgtQJqbJh903huwX7:APA91bGKg1bCPlWtCYdGJLPuKvibbvQqsoY5fGvAPWNBbusxvm-hUybohIRnKC14BzTZUIIufQwXEx1XAXFhnucOIjX6efvZOQ_wUMg3nhxxgkGVkAeSLA4DigsbHN3MtNJSVRgof0A5', 'Xiaomi Mi 9 Lite', '2022-05-17 07:04:18', '2022-05-17 07:04:18'),
(240, 'cDCrMJTYQP6chWHHmy4d80:APA91bEwC5tKs60LlMu_4pbL4VVY57mowdaVpJSD5_rueBAoyIPxDQZEwJOYbwS6RJh4rsRYwYjCTfZ_veoiTElMVVj_dBL-ZGNwZQPWoMiUdtECf6vSzSM51SoAkqwY4RUD0Pc0qKna', 'Xiaomi Mi 9 Lite', '2022-05-17 07:34:29', '2022-05-17 07:34:29'),
(241, 'd1i2IXf5QLuZMWTVKpHdVj:APA91bH3O6lc-mOx19mMJ6zD1XcmgxMSbIqx0lTyzYth1qnnQAuMVNN0tISZf7n2rYcnq_c7An2rmCbEKBqiJe1SXbYAbjjs7ragsDycs1FlnyJh6d3tWTuZ0DtYytQQ9RBRNdtAqChm', 'Xiaomi Mi 9 Lite', '2022-05-17 07:35:30', '2022-05-17 07:35:30'),
(242, 'cAtjo9clRpWEgmTsDWt2EI:APA91bFIFPxGTUREBO9uVsowO8YpuFL0rn1jOfj2BIgdaDnhwVYDqebqwd7BYnPRkkkaJIEXbM11ZsSjPfI3K26fh_0Xyc2taifoDDfRMEd7BrKsDg8EEGk40GbxAPZaPZ4FKiYeC5bf', 'Google sdk_gphone64_x86_64', '2022-05-17 08:52:57', '2022-05-17 08:52:57'),
(243, 'ejgnbUFlQou74kjobGVLo6:APA91bGNwOIt80pTTYA5nsCDCldTTF2NwHR4ow6Uza1VkF1HMo5N0bGAGkf_JKVazQ8Tw2sD4NYSSWsbQukqvPVTrVKlh_f-vfQtxFH6emvtY2u-4p31Tmh48V0XUMHGHL0GNp-OOyyn', 'Vivo V2037', '2022-05-17 09:09:00', '2022-05-17 09:09:00'),
(244, 'd9bybqyXRuy44hIkmVoZLg:APA91bGCSk1YH3-6ieKQ3x2aKrwUYHZkPwf66MMkzlMgjMEpXBxc2n9rto06sxtQOyiTUeYTMFROUGWgN4p8zgTufs988RY8gSCBadrc30hAYjKmtBuMLbQApH7xvm3XNUp143v5hE3V', 'Xiaomi Mi 9 Lite', '2022-05-17 09:47:32', '2022-05-17 09:47:32'),
(245, 'drS4L_2FSrKRDYAP2vwJ6C:APA91bFAZDY2t1AyLZavn-cbggmBMTcLg1UZeCCJx3QD9GT4Pk9pEXsX_5mVJmEJfZUA0sWMo8yAWoeawB_qjSA3A9Zco5eDadi4wHf_fSVeJqOgZCUOSljoPhFxfQJ0kHpTZJ3tZhdl', 'OnePlus ONEPLUS A6000', '2022-05-17 14:48:55', '2022-05-17 14:48:55'),
(246, 'fmVbYn8BRWqJ8gB7seJzlY:APA91bFmEFe78iPz19DPY8cOCpc3kzrs2bWZXnfy9w_5ZDvpegadmwc0_h85hOcSVGDCabzJkbI17JZJkQ9QcrDHGm07PaMkpR3FxajB8_af-xXbXngdAv461F7jTiKuK8sLNRxLKnpz', 'Samsung SM-A235F', '2022-06-01 06:43:40', '2022-06-01 06:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `token_types`
--

CREATE TABLE `token_types` (
  `id` bigint UNSIGNED NOT NULL,
  `token_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_types`
--

INSERT INTO `token_types` (`id`, `token_name`, `token_type_value`, `created_at`, `updated_at`) VALUES
(1, 'json', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_categories`
--

CREATE TABLE `tv_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tv_cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tv_cat_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv_categories`
--

INSERT INTO `tv_categories` (`id`, `tv_cat_name`, `tv_cat_image`, `created_at`, `updated_at`) VALUES
(2, 'Business', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812814.png', '2021-07-16 03:07:06', '2021-08-24 13:46:54'),
(3, 'Kids', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812833.png', '2021-07-16 03:19:57', '2021-08-24 13:47:13'),
(5, 'Comedy', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812860.png', '2021-08-24 13:47:40', '2021-08-24 13:47:40'),
(6, 'Drama', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812873.png', '2021-08-24 13:47:53', '2021-08-24 13:47:53'),
(7, 'Educational', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812886.png', '2021-08-24 13:48:06', '2021-08-24 13:48:06'),
(8, 'Entertainment', 'https://vid-mates.com/shobuj/streamIt/public/images/1629812904.png', '2021-08-24 13:48:24', '2021-08-24 13:48:24'),
(9, 'Family', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890231.png', '2021-08-25 11:17:11', '2021-08-25 11:17:11'),
(10, 'Movies', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890245.png', '2021-08-25 11:17:25', '2021-08-25 11:17:25'),
(11, 'Music', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890251.png', '2021-08-25 11:17:31', '2021-08-25 11:17:31'),
(12, 'News', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890257.png', '2021-08-25 11:17:38', '2021-08-25 11:17:38'),
(13, 'Religion', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890274.png', '2021-08-25 11:17:54', '2021-08-25 11:17:54'),
(14, 'Sports', 'https://vid-mates.com/shobuj/streamIt/public/images/1636172444.jpg', '2021-08-25 11:18:04', '2021-11-05 22:20:44'),
(17, 'Sci-Fi', 'https://vid-mates.com/shobuj/streamIt/public/images/1636261906.jpg', '2021-11-06 23:11:46', '2021-11-06 23:11:46'),
(18, 'To DO', 'https://vid-mates.com/shobuj/streamIt/public/images/1636270078.jpg', '2021-11-07 01:27:58', '2021-11-07 01:27:58'),
(19, 'Sports12', '1655712541.jpg', '2022-06-20 08:09:01', '2022-06-20 08:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `url_types`
--

CREATE TABLE `url_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_typ_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_types`
--

INSERT INTO `url_types` (`id`, `type_name`, `url_typ_value`, `created_at`, `updated_at`) VALUES
(1, 'hls', '1', '2021-07-28 17:14:26', NULL),
(2, 'youtube', '2', '2021-07-28 17:14:51', NULL),
(3, 'rtmp', '3', '2021-07-28 17:15:20', NULL),
(4, 'rtsp', '4', '2021-07-28 17:15:20', NULL),
(5, 'ts', '5', '2021-07-28 17:16:22', NULL),
(6, 'embed', '6', '2021-07-28 17:16:22', NULL),
(7, 'daily motion', '7', '2021-07-28 17:17:20', NULL),
(8, 'vimeo', '8', '2021-08-11 11:39:54', NULL),
(9, 'others', '9', '2021-08-11 11:40:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_agent_types`
--

CREATE TABLE `user_agent_types` (
  `id` bigint UNSIGNED NOT NULL,
  `agent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agnt_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_agent_types`
--

INSERT INTO `user_agent_types` (`id`, `agent_name`, `agnt_type_value`, `created_at`, `updated_at`) VALUES
(1, 'json', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `video_cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_cat_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `video_cat_name`, `video_cat_image`, `created_at`, `updated_at`) VALUES
(2, 'Music', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890343.png', '2021-07-24 04:33:18', '2021-08-25 11:19:03'),
(3, 'Movies', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890332.png', '2021-07-31 13:01:24', '2021-08-25 11:18:52'),
(4, 'Sports', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890320.png', '2021-08-17 13:53:56', '2021-08-25 11:18:40'),
(5, 'Entertainment', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890356.png', '2021-08-25 11:19:16', '2021-08-25 11:19:16'),
(6, 'Education', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890377.png', '2021-08-25 11:19:37', '2021-08-25 11:19:37'),
(7, 'Music', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890393.png', '2021-08-25 11:19:53', '2021-08-25 11:19:53'),
(8, 'Religion', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890517.png', '2021-08-25 11:21:57', '2021-08-25 11:21:57'),
(9, 'Family', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890526.png', '2021-08-25 11:22:06', '2021-08-25 11:22:06'),
(10, 'Kids', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890543.png', '2021-08-25 11:22:23', '2021-08-25 11:22:23'),
(11, 'Drama', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890559.png', '2021-08-25 11:22:39', '2021-08-25 11:22:39'),
(12, 'Buzz', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890600.png', '2021-08-25 11:23:20', '2021-08-25 11:23:20'),
(13, 'Funny', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890614.png', '2021-08-25 11:23:34', '2021-08-25 11:23:34'),
(14, 'Social', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890636.png', '2021-08-25 11:23:56', '2021-08-25 11:23:56'),
(15, 'Animation', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890653.png', '2021-08-25 11:24:13', '2021-08-25 11:24:13'),
(16, 'Series', 'https://vid-mates.com/shobuj/streamIt/public/images/1629890679.png', '2021-08-25 11:24:39', '2021-08-25 11:24:39'),
(17, 'Action', 'https://vid-mates.com/shobuj/streamIt/public/images/1636172341.jpg', '2021-08-25 13:47:44', '2021-11-05 22:19:02'),
(18, 'Test', 'https://vid-mates.com/shobuj/streamIt/public/images/1636263691.jpg', '2021-11-06 23:41:31', '2021-11-06 23:41:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `category_series`
--
ALTER TABLE `category_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_series_category_id_foreign` (`category_id`),
  ADD KEY `category_series_series_id_foreign` (`series_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_series`
--
ALTER TABLE `country_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_series_country_id_foreign` (`country_id`),
  ADD KEY `country_series_series_id_foreign` (`series_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feedback_email_unique` (`email`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seriesForeignKey` (`series_id`),
  ADD KEY `seasonForeignKey` (`season_id`);

--
-- Indexes for table `item_urls`
--
ALTER TABLE `item_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regusers`
--
ALTER TABLE `regusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seasons_series_id_foreign` (`series_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star_series`
--
ALTER TABLE `star_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `star_series_series_id_foreign` (`series_id`),
  ADD KEY `star_series_star_id_foreign` (`star_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_types`
--
ALTER TABLE `token_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_categories`
--
ALTER TABLE `tv_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_types`
--
ALTER TABLE `url_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_agent_types`
--
ALTER TABLE `user_agent_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_series`
--
ALTER TABLE `category_series`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `country_series`
--
ALTER TABLE `country_series`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `item_urls`
--
ALTER TABLE `item_urls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `regusers`
--
ALTER TABLE `regusers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `star_series`
--
ALTER TABLE `star_series`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `token_types`
--
ALTER TABLE `token_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tv_categories`
--
ALTER TABLE `tv_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `url_types`
--
ALTER TABLE `url_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_agent_types`
--
ALTER TABLE `user_agent_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_series`
--
ALTER TABLE `category_series`
  ADD CONSTRAINT `category_series_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `video_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_series_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_series`
--
ALTER TABLE `country_series`
  ADD CONSTRAINT `country_series_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `country_series_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `seasonForeignKey` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seriesForeignKey` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_urls`
--
ALTER TABLE `item_urls`
  ADD CONSTRAINT `item_urls_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `star_series`
--
ALTER TABLE `star_series`
  ADD CONSTRAINT `star_series_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_series_star_id_foreign` FOREIGN KEY (`star_id`) REFERENCES `stars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
