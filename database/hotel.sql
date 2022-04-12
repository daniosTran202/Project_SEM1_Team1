-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 04:34 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `avatar`, `username`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '140732349_885743322225525_9068058327787566683_n.jpg', 'admin1', 'tuantuan230298@gmail.com', '$2y$10$bJ8g7YTkwrR5ZnOhNmuFVusgHibXR85AF2R64huvI83LXFCaS2JKm', 1, '2021-07-08 06:36:31', '2021-08-07'),
(18, '120949478_807999939999864_8868693959545848466_n.jpg', 'demo123', 'demo123@gmail.com', '$2y$10$Y18z727b6shnD6X2gT2RROCplj0EsueNQrBj4NBbxmJkyo2onQHfy', 0, '2021-08-08 05:36:00', '2021-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `created_at`, `updated_at`) VALUES
(4, 'banner1.jpg', '2021-07-09 22:27:32', '2021-07-10'),
(5, 'banner2.jpg', '2021-07-09 22:27:32', '2021-07-10'),
(6, 'banner3.jpg', '2021-07-09 22:27:32', '2021-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hòa mình và không khí giáng sinh đậm chất Châu Âu tại Đà Nẵng', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Khu du lịch Sun World Danang Wonders sẽ trở thành “Xứ sở băng giá” với tuyết trắng ngập tràn, ngôi làng Bắc Âu như cổ tích từ 20 đến 30/12.</p><figure id=\"attachment_13674\" aria-describedby=\"caption-attachment-13674\" class=\"wp-caption aligncenter\" style=\"padding: 0px; margin-right: auto; margin-bottom: 5px; margin-left: auto; outline: none; list-style: none; border: 0px; clear: both; line-height: 18px; font-style: italic; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; width: 499px;\"><img loading=\"lazy\" class=\"size-full wp-image-13674 tie-appear\" src=\"https://img.blogdulich.vn/2017/12/13-12-20174-9555-1513140507.png\" alt=\"\" width=\"499\" height=\"333\" srcset=\"https://img.blogdulich.vn/2017/12/13-12-20174-9555-1513140507.png 499w, https://img.blogdulich.vn/2017/12/13-12-20174-9555-1513140507-300x200.png 300w\" sizes=\"(max-width: 499px) 100vw, 499px\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><figcaption id=\"caption-attachment-13674\" class=\"wp-caption-text\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Mùa Giáng sinh này, du khách đến Sun World Danang Wonders sẽ ngạc nhiên trước một khung cảnh được trang hoàng lộng lẫy, hệt như một ngôi làng châu Âu được mang về và đặt trong công viên giữa lòng Đà Nẵng.</figcaption></figure><figure id=\"attachment_13675\" aria-describedby=\"caption-attachment-13675\" class=\"wp-caption aligncenter\" style=\"padding: 0px; margin-right: auto; margin-bottom: 5px; margin-left: auto; outline: none; list-style: none; border: 0px; clear: both; line-height: 18px; font-style: italic; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; width: 499px;\"><img loading=\"lazy\" class=\"size-full wp-image-13675 tie-appear\" src=\"https://img.blogdulich.vn/2017/12/13-12-20176-3606-1513140507.png\" alt=\"\" width=\"499\" height=\"321\" srcset=\"https://img.blogdulich.vn/2017/12/13-12-20176-3606-1513140507.png 499w, https://img.blogdulich.vn/2017/12/13-12-20176-3606-1513140507-300x193.png 300w\" sizes=\"(max-width: 499px) 100vw, 499px\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><figcaption id=\"caption-attachment-13675\" class=\"wp-caption-text\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Từ lối vào, tiếng nhạc Giáng sinh reo vang rộn ràng, Ông già Noel hóm hỉnh và người Tuyết dễ thương luôn chào đón du khách bằng nụ cười thân thiện. Khu vực trung tâm được trang hoàng tựa như ngôi làng Bắc Âu xinh đẹp – quê hương của ông già Santa Claus và những câu chuyện cổ tích Giáng sinh diệu kỳ. Ngôi nhà và cây thông phủ đầy tuyết trắng xóa, cỗ xe tuần lộc chở ông già Noel cùng túi quà mang tặng cho trẻ nhỏ sẽ là điểm check-in lý tưởng cho các du khách muốn lưu giữ những khoảnh khắc lãng mạn, ấm áp trong mùa Giáng sinh.</figcaption></figure><figure id=\"attachment_13677\" aria-describedby=\"caption-attachment-13677\" class=\"wp-caption aligncenter\" style=\"padding: 0px; margin-right: auto; margin-bottom: 5px; margin-left: auto; outline: none; list-style: none; border: 0px; clear: both; line-height: 18px; font-style: italic; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; width: 499px;\"><img loading=\"lazy\" class=\"size-full wp-image-13677 tie-appear\" src=\"https://img.blogdulich.vn/2017/12/13-12-20176-8110-1513140508.png\" alt=\"\" width=\"499\" height=\"334\" srcset=\"https://img.blogdulich.vn/2017/12/13-12-20176-8110-1513140508.png 499w, https://img.blogdulich.vn/2017/12/13-12-20176-8110-1513140508-300x201.png 300w, https://img.blogdulich.vn/2017/12/13-12-20176-8110-1513140508-110x75.png 110w\" sizes=\"(max-width: 499px) 100vw, 499px\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><figcaption id=\"caption-attachment-13677\" class=\"wp-caption-text\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Không khí rộn ràng khắp công viên với nhiều hoạt động biểu diễn nghệ thuật châu Âu tại khu vực Cổng thành và Sun Wheel. Du khách sẽ được thưởng thức múa Balle tuyết và thiên nga, biểu diễn Flash Mob Bà già và Ông già Noel vui nhộn</figcaption></figure><figure id=\"attachment_13678\" aria-describedby=\"caption-attachment-13678\" class=\"wp-caption aligncenter\" style=\"padding: 0px; margin-right: auto; margin-bottom: 5px; margin-left: auto; outline: none; list-style: none; border: 0px; clear: both; line-height: 18px; font-style: italic; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; width: 499px;\"><img loading=\"lazy\" class=\"size-full wp-image-13678 tie-appear\" src=\"https://img.blogdulich.vn/2017/12/13-12-20177-8289-1513140508.png\" alt=\"\" width=\"499\" height=\"333\" srcset=\"https://img.blogdulich.vn/2017/12/13-12-20177-8289-1513140508.png 499w, https://img.blogdulich.vn/2017/12/13-12-20177-8289-1513140508-300x200.png 300w\" sizes=\"(max-width: 499px) 100vw, 499px\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><figcaption id=\"caption-attachment-13678\" class=\"wp-caption-text\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Với các bé, đây sẽ là một Noel vui vẻ với những bức hình đẹp chụp cùng những cây thông Noel “di động” và được nhận những món quà Giáng sinh độc đáo. Với các bạn trẻ, đây là dịp để chẳng cần sang châu Âu cũng có thể ngắm tuyết rơi lãng mạn và đùa nghịch với người Tuyết trong một mùa Giáng sinh đậm chất Bắc Âu. Còn với các ông bố, bà mẹ, không có nơi nào tuyệt hơn “Xứ sở băng giá” giữa miền nhiệt đới này, để cả nhà có một mùa Giáng sinh thật ý nghĩa.</figcaption></figure><figure id=\"attachment_13679\" aria-describedby=\"caption-attachment-13679\" class=\"wp-caption aligncenter\" style=\"padding: 0px; margin-right: auto; margin-bottom: 5px; margin-left: auto; outline: none; list-style: none; border: 0px; clear: both; line-height: 18px; font-style: italic; max-width: 100%; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; width: 499px;\"><img loading=\"lazy\" class=\"size-full wp-image-13679 tie-appear\" src=\"https://img.blogdulich.vn/2017/12/13-12-201710-383610991-8209-1513140508.png\" alt=\"\" width=\"499\" height=\"333\" srcset=\"https://img.blogdulich.vn/2017/12/13-12-201710-383610991-8209-1513140508.png 499w, https://img.blogdulich.vn/2017/12/13-12-201710-383610991-8209-1513140508-300x200.png 300w\" sizes=\"(max-width: 499px) 100vw, 499px\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><figcaption id=\"caption-attachment-13679\" class=\"wp-caption-text\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Một mùa Giáng sinh nữa lại về, năm mới cũng cận kề. Cùng trảy hội băng tuyết với Sun World Danang Wonders và trải nghiệm những dư vị mới lạ mà công viên dành tặng riêng cho du khách, như một món quà Giáng sinh thay cho lời tri ân.</figcaption></figure>', '13-12-20176-8110-1513140508-310x165.png', '2021-07-31 03:39:59', '2021-07-31'),
(2, 'Những quán ăn vặt hot nhất Đà Nẵng', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Bánh tráng trứng hẻm Lê Đình Dương, cá nục hấp tại hẻm Ông Ích Khiêm… là những quán ăn dù nằm sâu trong hẻm, ngõ và có thể khá khó tìm nhưng vẫn khiến thực khách phải tìm kiếm cho bằng được.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Ăn vặt đã không còn là “độc quyền” của tuổi học trò nữa mà trở thành thói quen của người dân Đà Nẵng cũng như du khách ghé thăm “thành phố đáng sống nhất Việt Nam” này. Dưới đây là địa chỉ những quán ăn vặt &nbsp;nằm sâu trong hẻm thu hút thực khách và chưa bao giờ hết hot để bạn tham khảo khi có dịp đến đây.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">1<strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">.&nbsp;Bánh tráng trứng hẻm Lê Đình Dương<img loading=\"lazy\" class=\"aligncenter wp-image-12224 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang1-134623401.jpg\" alt=\"an-vat-da-nang1-134623401\" width=\"600\" height=\"374\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang1-134623401.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang1-134623401-300x187.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Ở gần khu vực Cầu Rồng, quán bánh tráng này nằm trong con hẻm nhỏ số 172 phố Lê Đình Dương. Đúng chất ăn vặt, các món ăn ở đây có giá dao động chỉ từ 15.000 – 20.000 đồng. Nổi bật nhất là bánh tráng Đà Lạt vỏ giòn rụm, nhân đầy đặn, béo mà không ngấy, rưới lên ít sốt trứng gà tươi và tương ớt, ăn đến đâu vị ngon lan tỏa đến đấy. Ngoài ra, quán còn phục vụ bánh tráng trứng, bánh kẹp, bánh pate.&nbsp;Tuy nhiên, quán có điểm trừ là khá bé, lại quá đông khách nên chỗ ngồi hơi chật.</p><ol start=\"2\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Bánh tráng kẹp dì Hoa</strong></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Cũng phục vụ bánh tráng đủ loại nhưng quán bánh tráng kẹp dì Hoa ở địa chỉ 62/2A Núi Thành, quận Hải Châu được giới trẻ Đà Nẵng mê mẩn nhờ bánh ướt trứng, bánh ướt pate. Đập trứng cút thả vào miếng bánh đang nướng đến độ giòn, rắc thêm hành lá, hành khô phi thơm rồi nhấc bánh cắt ra đĩa là có ngay một món ngon “vạn người mê”.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12225 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang2-135209332.jpg\" alt=\"an-vat-da-nang2-135209332\" width=\"600\" height=\"720\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang2-135209332.jpg 558w, https://img.blogdulich.vn/2016/01/an-vat-da-nang2-135209332-250x300.jpg 250w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Ngoài bánh tráng, thực khách đến đây không thể không gọi thêm vài đĩa xoài mắm ngon tuyệt hảo. Đặc biệt hơn là bạn có thể thưởng thức các món ngon ở đây với mức giá chỉ từ 5.000 đồng.</p><ol start=\"3\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Da heo trộn –&nbsp;bột lọc Lý Thái Tổ</li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Giới trẻ ở đây hẳn rất tự hào khi được thưởng thức hàng ngày những món ăn vặt phong phú, đậm chất Đà thành. Da heo trộn là một món ngon đặc biệt như thế.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12240 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang20-135223341.jpg\" alt=\"an-vat-da-nang20-135223341\" width=\"600\" height=\"658\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang20-135223341.jpg 611w, https://img.blogdulich.vn/2016/01/an-vat-da-nang20-135223341-274x300.jpg 274w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Xem thêm :&nbsp;<a href=\"http://vnbooking.com/\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(68, 68, 68); transition: all 0.2s ease-in-out 0s;\">Đặt phòng khách sạn</a></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Địa chỉ 47/25 Lý Thái Tổ, quận Hải Châu, thành phố Đà Nẵng phục vụ món da heo trộn chuẩn vị với da heo dai dai, đu đủ nạo giòn giòn, hành khô phi thơm, nước chấm chua ngọt vừa miệng. Bột lọc tôm khá ngon ăn cùng với chả và bánh mì vụn. Các món ăn ở đây có khung giá từ 15.000 – 30.000 đồng.</p><ol start=\"4\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Da heo trộn –&nbsp;hoành thánh chiên Nguyễn Gia Thiều<img loading=\"lazy\" class=\"aligncenter wp-image-12229 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang6-135631256.jpg\" alt=\"an-vat-da-nang6-135631256\" width=\"600\" height=\"402\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang6-135631256.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang6-135631256-300x201.jpg 300w, https://img.blogdulich.vn/2016/01/an-vat-da-nang6-135631256-110x75.jpg 110w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12228 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang5-135616764.jpg\" alt=\"an-vat-da-nang5-135616764\" width=\"600\" height=\"600\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang5-135616764.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang5-135616764-150x150.jpg 150w, https://img.blogdulich.vn/2016/01/an-vat-da-nang5-135616764-300x300.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Da heo trộn mít cực thấm, cà rốt –&nbsp;hoa chuối –&nbsp;đu đủ giòn sật, thêm chút bùi bùi của lạc rang thì thật không còn gì bằng. Mít trộn ở Đà Nẵng là xơ mít còn non, còn vị chan chát, chua thanh rất lạ miệng. Hoành thánh nhân đậm đà, vỏ vàng ruộm, ít thấm dầu mỡ.</p><ol start=\"5\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Thiên đường ăn vặt Zé House<img loading=\"lazy\" class=\"aligncenter wp-image-12232 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang11-135823576.jpg\" alt=\"an-vat-da-nang11-135823576\" width=\"600\" height=\"448\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang11-135823576.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang11-135823576-300x224.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Những ai có sở thích gọi đồ ăn online cho tiện thì hẳn không thể bỏ qua Zé House –&nbsp;một địa chỉ khá tin cậy của giới trẻ Đà Nẵng. Muốn tới ăn trực tiếp, bạn phải tìm khá khó khăn bởi quán nằm trong hẻm 112/71 Trần Cao Vân, quận Thanh Khê, lại có diện tích rất nhỏ. Tuy nhiên thực đơn ở đây rất phong phú, chuyên các món Hàn Quốc, chế biến ngon miệng và giá cả cực phải chăng.</p><ol start=\"6\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Ăn vặt Tre Xanh<img loading=\"lazy\" class=\"aligncenter wp-image-12233 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang12-140406777.jpg\" alt=\"an-vat-da-nang12-140406777\" width=\"600\" height=\"399\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang12-140406777.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang12-140406777-300x200.jpg 300w, https://img.blogdulich.vn/2016/01/an-vat-da-nang12-140406777-310x205.jpg 310w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Chỉ từ 10.000 đồng, quán ăn vặt Tre Xanh nằm ở số&nbsp;473 Nguyễn Tất Thành, quận Hải Châu là địa chỉ giới trẻ Đà Nẵng thường xuyên lui tới. Quán hơi tối một chút nhưng trang trí khá dễ thương, phục vụ nhiều món khá lạ như bạch tuộc xào cay Hàn Quốc, bánh gạo phô mai, pizza bò…</p><ol start=\"7\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Ăn vặt cô Thủy<br style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12234 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang13-140101527.jpg\" alt=\"an-vat-da-nang13-140101527\" width=\"600\" height=\"337\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang13-140101527.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang13-140101527-300x168.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Ở địa chỉ 68/2 Lê Đình Lý, phường Vĩnh Trung, quận Thanh Khê, quán ăn vặt cô Thủy được lòng giới học sinh – sinh viên nhất là món trà sữa và combo nướng. Nhân viên phục vụ khá thân thiện, giá cả phải chăng, chỉ từ 10.000 – 20.000 đồng, do đó bạn có thể ngồi lâu lai rai tán gẫu với bạn bè thỏa thích.</p><ol start=\"8\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Maru Milktea &amp; more<br style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12236 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang15-140445824.jpg\" alt=\"an-vat-da-nang15-140445824\" width=\"600\" height=\"602\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang15-140445824.jpg 668w, https://img.blogdulich.vn/2016/01/an-vat-da-nang15-140445824-150x150.jpg 150w, https://img.blogdulich.vn/2016/01/an-vat-da-nang15-140445824-300x300.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"><br style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12237 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang16-140457056.jpg\" alt=\"an-vat-da-nang16-140457056\" width=\"600\" height=\"466\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang16-140457056.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang16-140457056-300x233.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nằm sâu trong hẻm K18/10 Trần Bình Trọng, quận Hải Châu nhưng quán có cái tên khá tây Maru Milktea &amp; more được khá nhiều bạn trẻ chọn làm địa điểm ăn tối. Không gian cực đáng yêu với nền vàng chanh chủ đạo, trang trí theo hơi hướng vintage, nhạc nhẹ nhàng, món ăn vặt chế biến ngon, đĩa đầy đặn,&nbsp;chủ yếu đồng giá 25.000 đồng.</p><ol start=\"9\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 15px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><li style=\"padding: 0px; margin: 0px 0px 5px; outline: none; list-style: outside decimal; border: 0px;\">Cá nục hấp bà Xin<br style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12239 tie-appear\" src=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang19-14060203.jpg\" alt=\"an-vat-da-nang19-14060203\" width=\"600\" height=\"450\" srcset=\"https://img.blogdulich.vn/2016/01/an-vat-da-nang19-14060203.jpg 670w, https://img.blogdulich.vn/2016/01/an-vat-da-nang19-14060203-300x225.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></li></ol><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Cá nục ở đây rất tươi ngon, cuốn với rau sống và bánh tráng ở thành một món ăn ngon trước giờ chưa ai nghĩ tới. Bày lên đĩa, cá nục chuối tươi rói nằm trong nước hấp sóng sánh rất bắt mắt, cộng thêm màu xanh non của rau, màu đỏ tươi của ớt khiến món ăn càng thêm thi vị.</p>', 'banh-xeo-nem-lui-quan-an-ngon-da-nang.png', '2021-07-31 04:00:22', '2021-07-31'),
(3, 'Các địa điểm tham quan ở phố cổ Hà Nội', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 0);\">Phố cổ là trung tâm của thủ đô Hà Nội, nằm ở phía Bắc và Tây của Hồ Hoàn Kiếm. Nơi đây diễn ra rất nhiều các hoạt động thương mại, dịch vụ nên hệ thống&nbsp;<span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 255);\"><a href=\"https://www.vnbooking.com/ar-khach-san-pho-co-ha-noi.html\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 255); transition: all 0.2s ease-in-out 0s;\">khách sạn tại phố cổ Hà Nội</a></span>&nbsp;cũng rất đa dạng. Bên cạnh đó, nơi đây còn có rất nhiều các hoạt động, các điểm tham quan dành cho các bạn thỏa sức khám phá</span></strong></em></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Chợ Đồng Xuân</em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Chợ Đồng Xuân là một trong những chợ&nbsp;lớn nhất tại Hà Nội, có lịch sử tồn tại hàng trăm năm từ thời phong kiến nhà Nguyễn.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13477 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/ch%E1%BB%A3-%C4%91%E1%BB%93ng-xu%C3%A2n.jpg\" alt=\"cho-dong-xuan\" width=\"640\" height=\"427\" srcset=\"https://img.blogdulich.vn/2017/08/chợ-đồng-xuân.jpg 640w, https://img.blogdulich.vn/2017/08/chợ-đồng-xuân-300x200.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đây là một chợ đầu mối lớn, từ đây nhiều mặt hàng đã được bán và chuyên chở đi khắp các tỉnh thành miền bắc. Với du khách Chợ Đồng Xuân không mang nhiều mục đích mua bán, tới đây bạn có thể tìm hiểu về văn hóa kinh doanh chợ đầu mối truyền thống. Tìm hiểu 1 số thông tin lịch sử về Hà Nội qua bức phù điêu Hà Nội mùa đông năm 1946. Ngoài ra bạn cũng có thể mua sắm 1 số món quà nhỏ tại đây.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13478 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/b%C3%AAn-trong-ch%E1%BB%A3-%C4%91%E1%BB%93ng-xu%C3%A2n.jpg\" alt=\"ben-trong-cho-dong-xuan\" width=\"640\" height=\"480\" srcset=\"https://img.blogdulich.vn/2017/08/bên-trong-chợ-đồng-xuân.jpg 640w, https://img.blogdulich.vn/2017/08/bên-trong-chợ-đồng-xuân-300x225.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Đền Bạch Mã</em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đền Bạch Mã nằm ở số 76 Hàng Buồm, quận Hoàn Kiếm. Đây là một trong tứ Trấn – trấn Đông (cửa Đông)&nbsp;<span lang=\"VI\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">của kinh thành Thăng Long</span>&nbsp;xưa.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đền Bạch Mã lấy tích từ câu chuyện kể về Lý Thái Tổ cầu thần Long Đỗ mong được sự phù trợ định đô, xây thành, nên nằm mơ thấy: Bằng dấu chân của mình, một con ngựa trắng đã chỉ cho vua biết đường thành Thăng Long phải trải qua những đâu thì đắp mới được vững vàng. Vì thế khi xây xong thành, nhà vua đã phong thần Long Đỗ là Thành hoàng quốc đô Thăng Long và đặt tên cho đền là Bạch Mã.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13479 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/%C4%91%E1%BB%81n-bach-m%C3%A3.jpg\" alt=\"den-bach-ma\" width=\"640\" height=\"401\" srcset=\"https://img.blogdulich.vn/2017/08/đền-bach-mã.jpg 640w, https://img.blogdulich.vn/2017/08/đền-bach-mã-300x188.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đền quay mặt về phía Đông Nam. Trong đền còn giữ được 15 tấm bia, các bia chép sự tích đền và thần, nghi lễ cúng bái, các lần trùng tu tôn tạo…</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">&gt;&gt;Xem thêm:&nbsp;<em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 255);\"><a href=\"https://blogdulich.vn/y-nghia-con-36-pho-phuong-ha-noi.html\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 255); transition: all 0.2s ease-in-out 0s;\">Ý nghĩa con số 36 phố phường Hà Nội</a></span></strong></em></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Ô Quan Chưởng</em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Được xây dựng từ năm 1749 đến năm 1817, ô Quan Chưởng hay còn gọi là ô Đông Hà nằm ở phía Đông tòa thành đất bao quanh kinh thành Thăng Long. Nhằm ghi nhớ sự hi sinh của viên Chưởng cơ và binh lính nhà Nguyễn, chiến đấu chống Pháp khi chúng đánh thành Hà Nội nên cửa ô đã được gọi là ô Quan Chưởng.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13480 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/%C3%B4-quan-ch%C6%B0%E1%BB%9Fng.jpg\" alt=\"o-quan-chuong\" width=\"640\" height=\"394\" srcset=\"https://img.blogdulich.vn/2017/08/ô-quan-chưởng.jpg 640w, https://img.blogdulich.vn/2017/08/ô-quan-chưởng-300x185.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đây là cửa ô duy nhất còn lại của Hà Nội, ô Quan Chưởng không chỉ ghi đậm dấu ấn của kinh thành Thăng Long mà còn là một bằng chứng tinh thần đấu tranh bất khuất của nhân dân trong việc chống giặc ngoại xâm và gìn giữ di sản văn hóa dân tộc.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13481 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/%C3%B4-quan-ch%C6%B0%E1%BB%9Fng-2.jpg\" alt=\"oquanchuong\" width=\"640\" height=\"427\" srcset=\"https://img.blogdulich.vn/2017/08/ô-quan-chưởng-2.jpg 640w, https://img.blogdulich.vn/2017/08/ô-quan-chưởng-2-300x200.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Nhà cổ 87 Mã Mây</em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nằm trên con phố nhỏ yên&nbsp;bình gần&nbsp;Hàng Bạc, nhà 87 Mã Mây quyến rũ du khách bởi nét cổ kính, giản dị và tinh tế của ngôi nhà phố thị thủa xưa. Xây dựng từ cuối thế kỷ 19, căn nhà làm hoàn toàn bằng gỗ&nbsp;được gìn giữ gần như nguyên vẹn,&nbsp;với nét kiến trúc đặc trưng&nbsp;nhà phố cổ: không gian sống kết hợp&nbsp;với buôn bán.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13482 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/nh%C3%A0-c%E1%BB%95-m%C3%A3-m%C3%A2y.jpg\" alt=\"nha-co-ma-may\" width=\"640\" height=\"480\" srcset=\"https://img.blogdulich.vn/2017/08/nhà-cổ-mã-mây.jpg 640w, https://img.blogdulich.vn/2017/08/nhà-cổ-mã-mây-300x225.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nhà cổ Mã Mây là một trong số ít những ngôi nhà được&nbsp;bảo tồn và gìn giữ làm điểm tham quan, triển lãm, cung cấp thông tin về lịch sử Hà Nội. Tới đây bạn sẽ được hiểu hơn về nếp sống, sinh hoạt của người Hà Nội xưa. Đây cũng là nơi giới thiệu kiến trúc cổ Hà Nội và gợi ý nhân dân phố cổ cách bảo tồn, tôn tạo nhà cổ.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13483 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/nh%C3%A0-c%E1%BB%95-m%C3%A3-m%C3%A2y-2.jpg\" alt=\"nha-co-87-ma-may\" width=\"640\" height=\"427\" srcset=\"https://img.blogdulich.vn/2017/08/nhà-cổ-mã-mây-2.jpg 640w, https://img.blogdulich.vn/2017/08/nhà-cổ-mã-mây-2-300x200.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Hồ Hoàn Kiếm (Hồ Gươm)</em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center;\"><i style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Rủ nhau xem cảnh Kiếm hồ</i></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center;\"><i style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Xem cầu Thê Húc, xem chùa Ngọc Sơn.</i></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center;\"><i style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Đài nghiên, tháp bút chưa mòn</i></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center;\"><i style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Hỏi ai gây dựng nên non nước này?</i></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Hồ có tổng diện tích 12ha, là hồ nước ngọt tự nhiên của thành phố. Hồ Gươm kéo dài 700m theo hướng Nam Bắc và rộng 200m hướng Đông Tây. Hồ Hoàn Kiếm gắn liền với nhiều sự kiện lịch sử của dân tộc ta.&nbsp;Bên cạnh Hồ Hoàn Kiếm là những công trình kiến trúc đầy ấn tượng và là di sản đáng quý của thành phố như: tháp Bút, đài Nghiên, cầu Thê Húc dẫn vào lầu Đắc Nguyệt hay đình Trấn Ba trên lối dẫn vào đền Ngọc Sơn.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13484 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/h%E1%BB%93-ho%C3%A0n-ki%E1%BA%BFm.jpg\" alt=\"ho-hoan-kiem\" width=\"640\" height=\"395\" srcset=\"https://img.blogdulich.vn/2017/08/hồ-hoàn-kiếm.jpg 640w, https://img.blogdulich.vn/2017/08/hồ-hoàn-kiếm-300x185.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đến đây bạn có cơ hội thưởng ngoạn và hít thở không khí trong lành vì xung quanh hồ là một không gian xanh vì vậy mà Hồ được ví như “lẵng hoa giữa lòng thành phố” … Mặt nước hồ là tấm gương lớn soi bóng la đà những cây cổ thụ, những rặng liễu thướt tha tóc rủ, những mái đền, chùa cổ kính, tháp cũ rêu phong, các toà nhà mới cao tầng vươn lên trời xanh….</p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 51, 0);\">Đền Ngọc Sơn</span></em></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đền Ngọc Sơn tọa lạc trên 1 hòn đảo nhỏ ở Hồ Hoàn Kiếm.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13485 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/%C4%91%E1%BB%81n-ng%E1%BB%8Dc-s%C6%A1n.jpg\" alt=\"den-ngoc-son\" width=\"640\" height=\"395\" srcset=\"https://img.blogdulich.vn/2017/08/đền-ngọc-sơn.jpg 640w, https://img.blogdulich.vn/2017/08/đền-ngọc-sơn-300x185.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Tới đây bạn sẽ có thể tìm hiểu được lịch sử của Hà Nội, về sự tích tên của Hồ Gươm, nơi vua Lê trả lại gươm báu cho thần Kim Qui. Để ra được hòn đảo Ngọc bạn phải đi qua cây cầu Thê Húc sơn đỏ.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13486 tie-appear\" src=\"https://img.blogdulich.vn/2017/08/%C4%91%E1%BB%81n-ng%E1%BB%8Dc-s%C6%A1n-2.jpg\" alt=\"den-ngocson\" width=\"640\" height=\"427\" srcset=\"https://img.blogdulich.vn/2017/08/đền-ngọc-sơn-2.jpg 640w, https://img.blogdulich.vn/2017/08/đền-ngọc-sơn-2-300x200.jpg 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Từ đây bạn có thể ngắm nhìn toàn bộ Hoàn Hoàn Kiếm cùng với Tháp Rùa ở giữa Hồ. Một điểm đến không thể bỏ qua khi tới Hà Nội.</p>', 'ttxvnha_noi.jpg', '2021-07-31 04:04:45', '2021-07-31');
INSERT INTO `blog` (`id`, `name`, `content`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Địa điểm check-in cho các tín đồ “sống ảo” tại Hà Nội', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Có thể bạn đã ở Hà Nội rất lâu, từng con đường, góc phố đều thân quen, gần gũi nhưng bạn vẫn chưa có một bộ hình lưu lại khoảnh khắc đáng nhớ của mình. Thời gian trôi đi và mãi sẽ không quay trở về, nhưng những tấm hình vẫn còn đó, sẽ lưu lại những khoảnh khắc xinh đẹp của tuổi trẻ, những kỉ niệm mãi không thể xóa nhòa. Sau đây là tổng hợp một số địa điểm chụp hình đẹp ở Hà Nội luôn được mọi người ở mọi lứa tuổi yêu thích.</em></span></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Vườn hoa Nhật Tân</strong></em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Vườn hoa Nhật Tân là địa điểm được rất nhiều các bạn lựa chọn để chụp một bộ ảnh lưu lại thanh xuân của mình đặc biệt là mỗi dịp Tết. Ngoài ra ở đây quanh năm, lúc nào cũng tràn ngập trong màu sắc của muôn vàn loại hoa, mùa nào thức ấy, nào là hoa hồng, hướng dương, đồng tiền, hoa cánh bướm, cúc họa mi,…..</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13326 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/nh%E1%BA%ADt-t%C3%A2n2.jpg\" alt=\"vuon-dao-nhat-tan\" width=\"600\" height=\"400\" srcset=\"https://img.blogdulich.vn/2017/07/nhật-tân2.jpg 600w, https://img.blogdulich.vn/2017/07/nhật-tân2-300x200.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Khung cảnh nơi đây thực sự khiến bất cứ ai bước chân vào phải choáng ngợp. Một khoảng không gian rộng lớn với rất nhiều bối cảnh lãng mạn được dựng lên. Những cây cầu gỗ bắc ngang hồ nước dưới những hàng cỏ lau bay lơ thơ trong gió, dưới tán cây xanh mát mắt là những chiếc xích đu tạo nên một không gian lãng mạn, cối xay gió à cả khung cảnh làng quê Việt Nam với con trâu, cái cày, đống rơm, vại nước, hàng cau, rồi cả những chiếc xích lô, xe jeep cổ… Rất nhiều sự lựa chọn phù hợp với mọi cá tính của khách hàng.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13327 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/v%C6%B0%E1%BB%9Dn-%C4%91%C3%A0o-NT.jpg\" alt=\"chup-anh-vuon-dao-nhat-tan\" width=\"600\" height=\"338\" srcset=\"https://img.blogdulich.vn/2017/07/vườn-đào-NT.jpg 600w, https://img.blogdulich.vn/2017/07/vườn-đào-NT-300x169.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\">Thung lũng hoa Hồ Tây</span></strong></em></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Thung lũng hoa Hồ Tây nằm ở ngã ba đường Nhật Chiêu – Công Viên Nước với diện tích hàng ngàn m2 trồng đủ loại hoa thu hút rất nhiều người ở mọi lứa tuổi.&nbsp;Nằm cạnh hồ Tây xinh đẹp,nơi đây vốn là một đầm sen được cải tạo lại thành vườn hoa phục vụ nhu cầu chụp ảnh quanh năm.Tai đây bạn có thể chiêm ngưỡng vẻ đẹp của nhiều loài hoa cũng như thả hồn cùng những góc chụp mang đậm nét thiên nhiên.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-13328 size-full tie-appear\" src=\"https://img.blogdulich.vn/2017/07/thung-l%C5%A9ng-hoa-H%E1%BB%93-T%C3%A2y.jpg\" alt=\"thung-lung-hoa-ho-tay\" width=\"600\" height=\"400\" srcset=\"https://img.blogdulich.vn/2017/07/thung-lũng-hoa-Hồ-Tây.jpg 600w, https://img.blogdulich.vn/2017/07/thung-lũng-hoa-Hồ-Tây-300x200.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đây là thiên đường của những loài hoa với rất nhiều loại hoa đặc biệt đảm bảo cho bạn có những bức ảnh lung linh bên những cánh hoa tươi thắm. Những điểm nghỉ chân cũng được thiết kế rất tinh tế,tạo góc chụp cho bạn thỏa mái pose hình.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-13329 size-full tie-appear\" src=\"https://img.blogdulich.vn/2017/07/thung-l%C5%A9ng-hoa-H%E1%BB%93-T%C3%A2y-2.jpg\" alt=\"hoa-huong-duong-o-thung-lung-hoa-ho-tay\" width=\"600\" height=\"450\" srcset=\"https://img.blogdulich.vn/2017/07/thung-lũng-hoa-Hồ-Tây-2.jpg 600w, https://img.blogdulich.vn/2017/07/thung-lũng-hoa-Hồ-Tây-2-300x225.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Các con phố lá vàng rơi</strong></em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Hà Nội có rất nhiều các con đường nổi tiếng với những hàng cây dài hun hút, luôn mang lại cho con người ta cảm giác trong lành và yên bình.</p><h4 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 18px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 0);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Phố Kim Mã</strong></em></span></h4><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Bất cứ khi nào bạn dạo bước tới đường Kim Mã, đoạn gần khu Ngoại giao đoàn và phố Vạn Phúc, đều có thể tìm được những góc đẹp để chụp ảnh. Mùa xuân, đoạn đường phủ đầy chồi non đỏ rực của những cây bằng lăng san sát. Mùa hè, thảm cỏ xanh mướt mát trở nên rực rỡ hơn trong nắng. Mùa thu, lá vàng rụng đầy con đường và ngay cả mùa đông đường Kim Mã với hàng cây khẳng khiu cũng luôn mê hoặc các bạn trẻ tới đây chụp hình.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-13330 size-full tie-appear\" src=\"https://img.blogdulich.vn/2017/07/kim-m%C3%A3.jpg\" alt=\"chup-anh-o-kim-ma\" width=\"600\" height=\"380\" srcset=\"https://img.blogdulich.vn/2017/07/kim-mã.jpg 600w, https://img.blogdulich.vn/2017/07/kim-mã-300x190.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nơi đây còn được gọi là “Con đường tình yêu” khi nhiều cặp đôi chuẩn bị đám cưới thường ghi lại những khoảnh khắc đáng nhớ</p><h4 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 18px; color: rgb(51, 51, 51);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 0, 0);\">Phố Phan Đình Phùng</span></strong></em></h4><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Đường Phan Đình Phùng rợp bóng mát với hai hàng cây sấu cổ thụ trên vỉa hè mùa nào cũng đẹp. Mỗi một mùa, những bức hình được chụp ở đường Phan Đình Phùng đều mang đến vẻ đẹp riêng.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Mùa xuân, mùa hạ, con đường ngập trong sắc trắng của những bông hoa sấu, hoa sưa. Mùa thu, mùa đông, khắp nơi lại khoác lên mình tấm áo vàng của những chiếc lá đến thì rơi rụng. Bất kỳ thời điểm nào đi qua con đường này, bạn cũng bắt gặp những thiếu nữ áo dài trắng thướt tha, hay các nhóm bạn, hoặc những người mới từ nơi khác đến Hà Nội chụp ảnh.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-13331 size-full tie-appear\" src=\"https://img.blogdulich.vn/2017/07/kim-m%C3%A3-2.jpg\" alt=\"kim-ma\" width=\"600\" height=\"594\" srcset=\"https://img.blogdulich.vn/2017/07/kim-mã-2.jpg 600w, https://img.blogdulich.vn/2017/07/kim-mã-2-150x150.jpg 150w, https://img.blogdulich.vn/2017/07/kim-mã-2-300x297.jpg 300w, https://img.blogdulich.vn/2017/07/kim-mã-2-120x120.jpg 120w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Cầu Long Biên</strong></em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Không chỉ là một chứng nhân lịch sử mà cây cầu Long Biên còn là là cầu nối giữa cuộc sống bình dị, êm đềm của người dân bãi giữa sông Hồng với sự náo nhiệt tấp nập của chốn đô thị.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13332 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/c%E1%BA%A7u-long-bi%C3%AAn.jpg\" alt=\"cau-long-bien\" width=\"600\" height=\"400\" srcset=\"https://img.blogdulich.vn/2017/07/cầu-long-biên.jpg 600w, https://img.blogdulich.vn/2017/07/cầu-long-biên-300x200.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Từ lâu cầu Long Biên trở thành một nét đặc trưng riêng của Hà Nội và cũng là điểm đến yêu thích của nhiều người muốn lưu giữ những bức hình đẹp bên cây cầu lịch sử này.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13333 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/c%E1%BA%A7u-LB.jpg\" alt=\"chup-anh-o-cau-long-bien\" width=\"600\" height=\"399\" srcset=\"https://img.blogdulich.vn/2017/07/cầu-LB.jpg 600w, https://img.blogdulich.vn/2017/07/cầu-LB-300x200.jpg 300w, https://img.blogdulich.vn/2017/07/cầu-LB-310x205.jpg 310w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Buổi sáng ở cầu Long Biên thấp thoáng trong màn sương giăng mờ mờ phía sau bãi giữa sông Hồng, buổi chiều buông mang&nbsp;vẻ đẹp trầm mặc, cổ kính.</p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Vườn Nhãn</strong></em></span></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Vườn nhãn dưới chân cầu Vĩnh Tuy trong vài năm trở lại đây trở thành điểm đến yêu thích của nhiều bạn trẻ tới chụp ảnh. Với hơn 500 cây nhãn, cùng những bãi cỏ rộng đẹp đây còn là nơi nhiều bạn trẻ lựa chọn để thực hiệc bộ ảnh cưới của mình.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13334 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/v%C6%B0%E1%BB%9Dn-nh%C3%A3n.jpg\" alt=\"chup-anh-o-vuon-nhan\" width=\"600\" height=\"360\" srcset=\"https://img.blogdulich.vn/2017/07/vườn-nhãn.jpg 600w, https://img.blogdulich.vn/2017/07/vườn-nhãn-300x180.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nơi đây còn được gọi với cái tên hết sức đáng yêu :”Vương quốc bọ xít”. Không gian thoáng mát xanh mướt cỏ cây cùng một số điểm nhấn trang trí như&nbsp;xích đu lãng mạn, ghế gỗ đong đưa, chong chóng quay tít nhiều màu,… sẽ là nơi giúp các bạn có những bức hình sống ảo thật tuyệt.</p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51);\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 102, 255);\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Hồ Gươm và khu phố cổ</strong></em></span></h3><p class=\"pBody\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nếu muốn lưu giữ lại nét đẹp trầm mặc, dịu dàng của Hà Nội thì khu vực phố cổ là điểm đến thích hợp nhất. Khung cảnh cây xanh ven hồ Hồ Kiếm, với cầu Thê Húc màu son, Tháp Rùa nổi bật giữa hồ. Còn khu bàn cờ với phố Hàng Mã luôn rực rỡ đèn lồng, Hàng Vải với những thanh tre, nứa tạo nên hình dáng độc đáo hay những khu phố nghề cũ cũng sẽ là phông nền đẹp mắt.</p><p class=\"pBody\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter wp-image-13336 size-full tie-appear\" src=\"https://img.blogdulich.vn/2017/07/h%E1%BB%93-g%C6%B0%C6%A1m.jpg\" alt=\"chup-anh-ho-guom\" width=\"600\" height=\"400\" srcset=\"https://img.blogdulich.vn/2017/07/hồ-gươm.jpg 600w, https://img.blogdulich.vn/2017/07/hồ-gươm-300x200.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p class=\"pBody\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Khi thu sang, hồ Gươm mang một vẻ đẹp lạ, gió thu se se lạnh, người ta có thể cảm nhận rõ mùi lá khô rụng hòa quyện với mùi nước và đất, cũng là lúc những chùm hoa lộc vừng đỏ rực duyên dáng rủ xuống mặt hồ.</p><p class=\"pBody\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-13335 tie-appear\" src=\"https://img.blogdulich.vn/2017/07/H%E1%BB%93-G.jpg\" alt=\"ho-guom\" width=\"600\" height=\"306\" srcset=\"https://img.blogdulich.vn/2017/07/Hồ-G.jpg 600w, https://img.blogdulich.vn/2017/07/Hồ-G-300x153.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p class=\"pBody\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Nếu như cuối đông, lộc vừng thay lá vàng rực thì cuối thu, cây trổ hoa đỏ như những tấm màn buông bên mặt nước. Trời nước trong xanh và hoa lộc vừng sẽ tạo nên một khung cảnh nên thơ tuyệt đẹp.</p>', 'Dia-diem-check-in-Ha-Noi-05.jpg', '2021-07-31 04:05:53', '2021-07-31');
INSERT INTO `blog` (`id`, `name`, `content`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Chia sẻ kinh nghiệm du lịch Phú Quốc', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Du lịch Phú Quốc nên đi vào thời điểm nào là tốt ? Ăn gì, chơi ở đâu khi đến Phú Quốc? &nbsp;nên ở khách sạn nào ở Phú Quốc?</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Đó là một số câu hỏi thường gặp khi&nbsp; du lịch đảo Phú Quốc – đảo Ngọc của Việt Nam và để giải đáp những câu hỏi trên thì dưới đây là một số thông tin đầy đủ và cần thiết dành cho những ai đang có ý định du hí tới hòn đảo xinh đẹp này.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12564 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/tour_packages-Copy.png\" alt=\"tour_packages (Copy)\" width=\"600\" height=\"360\" srcset=\"https://img.blogdulich.vn/2016/04/tour_packages-Copy.png 600w, https://img.blogdulich.vn/2016/04/tour_packages-Copy-300x180.png 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><h1 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 36px; color: rgb(51, 51, 51); text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Thời điểm thích hợp nhất để du lịch Phú Quốc:</strong></h1><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Khác với khí hậu 4 mùa rõ rệt ở miền Bắc thì Phú Quốc có kiểu thời tiết khí hậu nhiệt đới gió mùa phân biệt 2 mùa rõ rệt: mùa mưa từ tháng 5 đến tháng 10 và mùa khô là từ tháng 11 đến hết tháng 4 năm sau. Nhiệt độ nơi đây quanh năm mát mẻ dao động từ 26 – 28 độ do đó bất kỳ thời điểm nào bạn đến Phú Quốc đều có được sự thoải mái nhất định nhưng thời gian đẹp nhất vẫn là mùa khô tức là từ tháng 11 đến tháng 4(biển đẹp hiền hòa , không mưa)</p><h2 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 30px; color: rgb(51, 51, 51); text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Phương tiện di chuyển đến đảo Phú Quốc – Du lịch phú quốc&nbsp;</strong></h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Đi từ Hà Nội vào Phú Quốc lựa chọn tối ưu nhất về phương tiện di chuyển chắc chắn là máy bay, bạn có thể lựa chọn một trong những hãng máy bay vietnam arline, vietjet hoặc jetstar…</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12576 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/tour-du-lich-phu-quoc.jpg\" alt=\"tour-du-lich-phu-quoc\" width=\"600\" height=\"465\" srcset=\"https://img.blogdulich.vn/2016/04/tour-du-lich-phu-quoc.jpg 600w, https://img.blogdulich.vn/2016/04/tour-du-lich-phu-quoc-300x233.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Nếu ở Sài Gòn bạn có thể tới Phú Quốc bằng một trong hai phương tiện chủ yếu máy bay hoặc ô tô. Đi xe ô tô ra bến xe Miền Tây mua vé đi từ HCM tới Rạch Giá (hoặc Hà Tiên) và từ Rạch Giá (Hà Tiên) mua vé tàu sang đảo Phú Quốc.</p><h3 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 24px; color: rgb(51, 51, 51); text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Nên ở resort cao cấp hay khách sạn bình dân khi du lịch&nbsp;Phú Quốc ?</strong></h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Phú Quốc là một trong những điểm du lịch hấp dẫn của nước ta, nơi đây có rất nhiều resort và khách sạn cao cấp cho tới bình dân do đó việc ở resort cao cấp hay khách sạn bình dân còn tùy thuộc vào túi tiền của bạn. Dưới đây là tư vấn tổng hợp những resort cao cấp và những&nbsp;<strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><a href=\"http://www.vnbooking.com/city/phu-quoc-hotels.html\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(68, 68, 68); transition: all 0.2s ease-in-out 0s;\">khách sạn Phú Quốc</a></strong>&nbsp;bình dân giá rẻ để mọi người cùng tham khảo:</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12578 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/cong-vao-vinpearl-phu-quoc.jpg\" alt=\"cong-vao-vinpearl-phu-quoc\" width=\"600\" height=\"357\" srcset=\"https://img.blogdulich.vn/2016/04/cong-vao-vinpearl-phu-quoc.jpg 600w, https://img.blogdulich.vn/2016/04/cong-vao-vinpearl-phu-quoc-300x179.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Vinpearl Phú Quốc Resort</strong>&nbsp;là một resort cao cấp 5 sao với vị trí đắc địa &nbsp;trên đảo Phú Quốc nghỉ dưỡng tại đây du khách có thể dễ dàng di chuyển tới những địa danh du lịch nổi tiếng của Phú Quốc –&nbsp;<a href=\"http://www.vnbooking.com/hotel/vinpearl-resort-phu-quoc.html\" target=\"_blank\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(68, 68, 68); transition: all 0.2s ease-in-out 0s;\">Vinpearl Resort Phú Quốc</a>&nbsp;gồm&nbsp;750 phòng nghỉ dưỡng cực sang trọng với kết cấu nội thất, tiện nghi hiện đại mức giá của resort này thuộc dạng cực khủng 3.400.000đ/đêm đối với phòng Deluxe Garden Veiw và khoảng 55 triệu đồng đối với hạng phòng 4 BR Presidential Suite Villa (Full board)</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12570 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/96681_hotelimage_39533329.jpg\" alt=\"96681_hotelimage_39533329\" width=\"700\" height=\"400\" srcset=\"https://img.blogdulich.vn/2016/04/96681_hotelimage_39533329.jpg 700w, https://img.blogdulich.vn/2016/04/96681_hotelimage_39533329-300x171.jpg 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Eden Resort Phú Quốc&nbsp;</strong>: Là resort đạt tiêu chuẩn 4 sao &nbsp;Eden Resort Phú Quốc sở hữu 166 phòng nghỉ được đánh giá là cực tốt với các tiện nghi cao cấp được bài trí hài hòa. Khi nghỉ dưỡng ở Eden Resort du khách có thể hướng tầm mắt của mình ngắm những bãi biển đẹp hay đắm chìm trong thơ mộng của khu vườn tình yêu. Nhà hàng của Eden Resort vô cùng hấp dẫn bởi khung cảnh lãng mạn với các món ăn quốc tế và những món ăn đặc sản mang thương hiệu Phú Quốc..Mức giá của Resort &nbsp;này đối với hạng phòng Garden View Deluxe là 2.300.000đ/đêm</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12572 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/92494_hotelimage_4.jpg\" alt=\"92494_hotelimage_4\" width=\"700\" height=\"400\" srcset=\"https://img.blogdulich.vn/2016/04/92494_hotelimage_4.jpg 700w, https://img.blogdulich.vn/2016/04/92494_hotelimage_4-300x171.jpg 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Thiên Thanh Resort Phú Quốc</strong>: Thuộc danh sách những khách sạn 3 sao ở Phú Quốc tọa lạc trên một vị trí đẹp của Bãi Dài thuộc &nbsp;thị trấn Đông Dương – bãi biển trung tâm của Đảo Phú Quốc. Nghỉ dưỡng ở đây du khách sẽ được khám phá sự yên bình của những cánh rừng nguyên sinh, các ngôi làng ven biển quanh năm với nghề chài lưới người dân nơi đây rất mến khách bạn sẽ có cảm giác đang nghỉ dưỡng tại chính ngôi nhà của mình khi đến với Thiên Thanh Resort.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Ngàn Sao Resort Phú Quốc:&nbsp;</strong>là khách sạn 2 sao nằm tại khu vực trung tâm thành phố, nghỉ dưỡng tại đây bạn sẽ thoải mái thời gian để đi đến những địa điểm du lịch có tiếng ở Phú Quốc như: Long Beach, Coco Devi Center, bãi Trường…</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Ngàn Sao Resort có 74 phòng nghỉ rộng rãi và thoáng mát trên ngọn đồi lộng gió với kiến trúc hài hòa, bãi đỗ xe, nhà hàng, quán café,… và rất rất nhiều dịch vụ tiện ích khác sẽ khiến bạn yêu nơi đây hơn bao giờ hết.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(0, 128, 0);\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\"><em style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Để biết giá chính xác của các resort hay các&nbsp;<a href=\"http://www.vnbooking.com/city/phu-quoc-hotels.html\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(68, 68, 68); transition: all 0.2s ease-in-out 0s;\">khách sạn ở Phú Quốc</a>&nbsp;bạn có thể liên hệ trực tiếp tới Vnbooking.com Hotline: 0914.945.411 – 024-3371 9666</em></strong></span></p><h4 style=\"padding: 0px; margin: 25px 0px 10px; outline: none; list-style: none; border: 0px; line-height: 1em; font-family: Helvetica; font-size: 18px; color: rgb(51, 51, 51); text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Những địa điểm tham quan đẹp khi du lịch Phú Quốc</strong></h4><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Dinh Cậu – miếu thờ Long Vương là một trong những điểm đến không thể bỏ qua khi bạn đến Phú Quốc, khung cảnh tuyệt đẹp giữa ghềnh đá cát vàng và nước biển trong xanh tạo nên một bức tranh đầy màu sắc. Nơi đây là một địa điểm du lịch trọng điểm của Phú Quốc, mỗi ngày miếu Long Vương này đón rất nhiều lượt du khách trong và người nước tới thăm quan</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Các địa điểm du lịch ở Phú Quốc tập trung thành ba nhóm chính là: Đông Đảo, Bắc Đảo và Nam Đảo.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12580 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/86291_body_-10.jpg\" alt=\"86291_body_ (10)\" width=\"600\" height=\"376\" srcset=\"https://img.blogdulich.vn/2016/04/86291_body_-10.jpg 600w, https://img.blogdulich.vn/2016/04/86291_body_-10-300x188.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Đông Đảo</strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Làng Chài Hàm Ninh : Thăm quan khám phá những nét cổ kính của nơi đây tìm hiểu cuộc sống của ngư dân chài lưới học hỏi cách khai thác ngọc trai của người dân vùng biển.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Suối Tranh:&nbsp;Tới nơi đây bạn sẽ được khám phá những cánh rừng nguyên sinh, leo núi hay tận hưởng làn nước trong xanh của con suối, ngọn thác bắt nguồn từ dãy núi Hàm Ninh</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12571 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/lang-chai-ham-ninh-phu-quoc_du-lich-viet.jpg\" alt=\"lang-chai-ham-ninh-phu-quoc_du-lich-viet\" width=\"600\" height=\"395\" srcset=\"https://img.blogdulich.vn/2016/04/lang-chai-ham-ninh-phu-quoc_du-lich-viet.jpg 600w, https://img.blogdulich.vn/2016/04/lang-chai-ham-ninh-phu-quoc_du-lich-viet-300x198.jpg 300w, https://img.blogdulich.vn/2016/04/lang-chai-ham-ninh-phu-quoc_du-lich-viet-310x205.jpg 310w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Thương hiệu nước mắm Phú Quốc đã nổi tiếng khắp 5 châu do đó tới đây bạn sẽ được mục sở thị quá trình chế biến nước mắm nguyên chất bằng những phương pháp thủ công truyền thống. Hãy mua một vài chai nước mắm để làm quà cho người thân bạn bè ngay tại những xưởng thủ công đảm bảo họ sẽ vô cùng thích thú.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Bắc Đảo</strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Không cần giới thiệu nhiều có lẽ ai cũng biết đến những vườn tiêu nổi tiếng của Phú Quốc với vị tiêu cay nồng đặc trưng hiếm có bởi sự đa dạng về khí hậu nơi đây tạo nên hương vị tiêu khác biệt so với những vùng khác.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Vườn quốc gia Phú Quốc là nơi để bạn thăm quan khám phá và tận hưởng những trải nghiệm thú vị với bầu không khí xanh – sạch – đẹp ngắm nhìn hàng nghìn loại thực vật phong phú và đa dạng.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12566 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/du-lich-phu-quoc2-Copy.jpg\" alt=\"du-lich-phu-quoc2 (Copy)\" width=\"600\" height=\"338\" srcset=\"https://img.blogdulich.vn/2016/04/du-lich-phu-quoc2-Copy.jpg 600w, https://img.blogdulich.vn/2016/04/du-lich-phu-quoc2-Copy-300x169.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Mũi Gành Gầu: Tại đây bạn có thể ngắm hải giới Cambodia là hình ảnh của một mũi đất nhô ra biển với cảnh đẹp thiên nhiên hoang sơ vô cùng đặc trưng.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Nam đảo</strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A0_t%C3%B9_Ph%C3%BA_Qu%E1%BB%91c\" style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px; color: rgb(68, 68, 68); transition: all 0.2s ease-in-out 0s;\">Nhà tù Phú Quốc</a>&nbsp;là nơi ghi lại dấu ấn khó quên của một thời bom đạn, sự kiên cường hào hùng của dân tộc ta, bạn sẽ cảm thấy tự hào và rơi nước khi nhìn lại những gì mà ông cha ta đã phải chịu đựng để chúng ta có được cuộc sống như bây giờ.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Hay tới khu trưng bày ngọc trai Cội Nguồn tới đây bạn sẽ được khám phá những cơ sở nuối cấy Ngọc Trai tuyệt đẹp, đặc biệt được xem quy trình lấy ngọc trai.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12567 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/du-lich-phu-quoc-1042-Copy.jpg\" alt=\"du-lich-phu-quoc-1042 (Copy)\" width=\"600\" height=\"300\" srcset=\"https://img.blogdulich.vn/2016/04/du-lich-phu-quoc-1042-Copy.jpg 600w, https://img.blogdulich.vn/2016/04/du-lich-phu-quoc-1042-Copy-300x150.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Hoặc tới cảng An Thới để được câu cá thư giãn và ngắm những rặng san hô tuyệt đẹp,</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><strong style=\"padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px;\">Mua sắm ở Phú Quốc</strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Nếu có nhu cầu mua sắm ở Phú Quốc bạn có thể tới chợ đêm Dinh Cậu – chợ Hải Sản lớn nhất Phú Quốc bên cạnh đó có cả một số đồ thủ công mỹ nghệ, ngọc trai… bạn có thể mua sắm ở chợ Đông Dương, chợ Hàm Ninh.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12575 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/ngoc-trai-nhat-ban-phu-quoc-e1438244975681.jpg\" alt=\"ngoc-trai-nhat-ban-phu-quoc-e1438244975681\" width=\"600\" height=\"347\" srcset=\"https://img.blogdulich.vn/2016/04/ngoc-trai-nhat-ban-phu-quoc-e1438244975681.jpg 600w, https://img.blogdulich.vn/2016/04/ngoc-trai-nhat-ban-phu-quoc-e1438244975681-300x174.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Vườn tiêu Phú Quốc: Là nơi mà bạn có thể mua tiêu tận vườn chính hãng của Phú Quốc</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Nước mắm Phú Quốc:Để tránh mua phải hàng nhái hàng kém chất lượng du khách nên tới trực tiếp những cơ sở chuyên sản xuất nước mắm để mua về làm quà.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter size-full wp-image-12569 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/NMP2.jpg\" alt=\"NMP2\" width=\"600\" height=\"400\" srcset=\"https://img.blogdulich.vn/2016/04/NMP2.jpg 600w, https://img.blogdulich.vn/2016/04/NMP2-300x200.jpg 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Du lịch Phú Quốc về ẩm thực</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Đảo Phú Quốc nổi tiếng với những món hải sản tươi sống do đó khi đến Phú Quốc bạn không thể bỏ qua mà phải cố gắng thưởng thức những món hải sản nơi đây nhé: Ghẹ Hàm Ninh Phú Quốc, Hải Sâm Phú Quốc, Tiết Canh Cua Phú Quốc, Ốc Hương Phú Quốc, Nhum biển Phú Quốc, Nấm tràm Phú Quốc, Gỏi Cá nhồng – Gỏi cá trích Phú Quốc, Chả Cua Phú Quốc…</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><img loading=\"lazy\" class=\"aligncenter wp-image-12568 tie-appear\" src=\"https://img.blogdulich.vn/2016/04/%E1%BA%A8m-th%E1%BB%B1c-ph%C3%BA-qu%E1%BB%91c-Copy.jpg\" alt=\"Ẩm thực phú quốc (Copy)\" width=\"613\" height=\"277\" srcset=\"https://img.blogdulich.vn/2016/04/Ẩm-thực-phú-quốc-Copy.jpg 600w, https://img.blogdulich.vn/2016/04/Ẩm-thực-phú-quốc-Copy-300x136.jpg 300w\" sizes=\"(max-width: 613px) 100vw, 613px\" style=\"padding: 0px; margin: 5px auto; outline: none; list-style: none; border: 0px; max-width: 100%; height: auto; clear: both; display: block; opacity: 1; transition: all 0.4s ease-in-out 0s;\"></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Hay bánh tét lá mật cật, nấm tràm Phú Quốc, cá nhông lấy thịt, hồ tiêu Phú Quốc…</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: none; list-style: none; border: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\">Chúng tôi đã tổng hợp tất cả những kinh nghiệm về du lịch Phú Quốc hy vọng sẽ phần nào giúp bạn có thêm kiến thức về du lịch</p>', 'tour-du-lich-phu-quoc.jpg', '2021-07-31 04:09:48', '2021-07-31'),
(8, 'đâsdasdasd', '<p>sadsadsadsadas</p>', '140732349_885743322225525_9068058327787566683_n.jpg', '2021-08-06 19:50:30', '2021-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1 : Đã đặt , 2 : đã trả , 3 : đã hủy\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(73, 'Phạm Anh Tuấn', '0981221998', 'tuantuan230298@gmail.com', 1, 3, '2021-07-28 02:08:34', '2021-07-29'),
(74, 'demo', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-07-29 02:35:16', '2021-07-29'),
(75, 'anh tuấn', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-08-03 08:17:39', '2021-08-03'),
(76, 'anh tuấn', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-08-03 08:25:46', '2021-08-03'),
(77, 'anh tuấn', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-08-04 07:17:42', '2021-08-04'),
(78, 'anh tuấn', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-08-07 00:46:17', '2021-08-07'),
(79, 'anh tuan', '0981221998', 'tuantuan230298@gmail.com', NULL, 2, '2021-08-08 06:05:53', '2021-08-14'),
(80, 'phạm anh tuấn', '0981221998', 'tuantuan230298@gmail.com', NULL, 1, '2021-08-13 18:43:20', '2021-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_day` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`booking_id`, `room_id`, `start_date`, `end_date`, `total_day`, `total_price`, `created_at`, `updated_at`) VALUES
(73, 11, '2021-07-28', '2021-07-31', 3, 3000000, '2021-07-28 02:08:34', '2021-07-28'),
(74, 12, '2021-07-29', '2021-07-31', 2, 2000000, '2021-07-29 02:35:16', '2021-07-29'),
(74, 25, '2021-07-29', '2021-07-31', 2, 3600000, '2021-07-29 02:35:17', '2021-07-29'),
(75, 11, '2021-08-03', '2021-08-19', 16, 16000000, '2021-08-03 08:17:39', '2021-08-03'),
(76, 12, '2021-08-03', '2021-08-20', 17, 17000000, '2021-08-03 08:25:46', '2021-08-03'),
(77, 13, '2021-08-04', '2021-08-13', 9, 9000000, '2021-08-04 07:17:42', '2021-08-04'),
(78, 14, '2021-08-07', '2021-08-20', 13, 13000000, '2021-08-07 00:46:17', '2021-08-07'),
(79, 15, '2021-08-09', '2021-08-13', 4, 4000000, '2021-08-08 06:05:53', '2021-08-08'),
(80, 13, '2021-08-14', '2021-08-16', 2, 2000000, '2021-08-13 18:43:20', '2021-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `max_people` int(11) NOT NULL,
  `size` float NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `max_people`, `size`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Phòng đơn', 2, 35, '<p>1 giường, Tivi, Wifi...</p>', '2021-07-09 09:20:49', '2021-07-11'),
(3, 'Phòng đôi', 4, 45, '<p>2 giường lớn, Tivi, Wifi,...</p>', '2021-07-11 07:08:19', '2021-07-11'),
(4, 'Phòng gia đình', 7, 60, '<p>3 giường lớn, Tivi, Wifi...</p>', '2021-07-11 07:09:19', '2021-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', '2021-07-05 15:48:31', NULL),
(2, 'Thành phố Hồ Chí Minh', '2021-07-05 15:48:31', NULL),
(3, 'Đà Nẵng', '2021-07-05 15:48:31', NULL),
(4, 'Nha Trang', '2021-07-05 15:48:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `code_sale`
--

CREATE TABLE `code_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sale` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(3, 'anh tuấn', 'tuantuan230298@gmail.com', 'sdsdsd', '2021-07-28 04:22:45', '2021-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `avatar`, `name`, `email`, `phone`, `password`, `gender`, `address`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '140732349_885743322225525_9068058327787566683_n.jpg', 'Phạm Anh Tuấn', 'tuantuan230298@gmail.com', '0981221998', '$2y$10$rQ1LP.lYKnmunxGPmYcIoOJUzpz9Ci8iHoXRCi/x/Ok4S.M/BlHbe', 1, 'hà nội', NULL, '8gasAJLZkucjJsJblZbUV4b44NZd6G0hT07jLp0jBs1EnVtFutebAEQjTcYQ', '2021-07-09 01:39:14', '2021-07-28'),
(14, NULL, 'Nguyễn Anh Tú', 'nguyenanhtu@gmail.com', '0987654222', '$2y$10$8yIsqnoIeltLm94DhhvYieIqldgqDnzW152g6d99Vj51gq82zf17K', 1, 'HN', NULL, NULL, '2021-08-08 03:59:05', '2021-08-08'),
(15, NULL, 'Trần Tiến Đạt', 'trantiendat@gmail.com', '0987654321', '$2y$10$zy1H66Kj4GD6bZ8CxFh/YO1I647ssxBOYCVqZEEueSNvU7GmlusK2', 1, 'HN', NULL, NULL, '2021-08-08 04:01:44', '2021-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `address`, `created_at`, `updated_at`, `city_id`) VALUES
(3, 'Aptech Hotel', '238 Hoàng Quốc Việt - Cầu Giấy', '2021-07-09 10:36:32', '2021-07-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_room`
--

CREATE TABLE `image_room` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image_room`
--

INSERT INTO `image_room` (`id`, `room_id`, `image`, `created_at`, `updated_at`) VALUES
(28, 11, '10021188-b4ccb923d6e673e52ae2da0c7a9db0f0.jpeg', '2021-07-12 08:11:51', '2021-07-12'),
(29, 11, '10021188-b36b7fd0711779de37363432cd42a76d.jpeg', '2021-07-12 08:11:51', '2021-07-12'),
(30, 11, '10021188-d537d429655fe5d4cdc2d6b7f30f9a83.jpeg', '2021-07-12 08:11:51', '2021-07-12'),
(31, 12, '10021188-e6d139be1ae5be2086547a1e801c64ee.jpeg', '2021-07-12 08:13:43', '2021-07-12'),
(32, 12, '10022581-1000x599-FIT_AND_TRIM-ae7e4fe864653717b9998326bb1f0c2a.jpeg', '2021-07-12 08:13:43', '2021-07-12'),
(33, 12, '10022581-1000x600-FIT_AND_TRIM-50b986816265354021db01e1a46abc34.jpeg', '2021-07-12 08:13:43', '2021-07-12'),
(34, 13, '10021188-e6d139be1ae5be2086547a1e801c64ee.jpeg', '2021-07-12 08:16:02', '2021-07-12'),
(35, 13, '10022581-1000x600-FIT_AND_TRIM-e2c6174d6fd4d1c19adeedf15066d8ab.jpeg', '2021-07-12 08:16:02', '2021-07-12'),
(36, 13, '10022581-1000x604-FIT_AND_TRIM-07c4943e7e77bcc6c88309c448810559.jpeg', '2021-07-12 08:16:02', '2021-07-12'),
(37, 14, '10022859-1000x667-FIT_AND_TRIM-0e90388a98e44d6ab0b4425e356d9183.jpeg', '2021-07-12 08:17:09', '2021-07-12'),
(38, 14, '10022859-1000x667-FIT_AND_TRIM-187c6ba99ac6c94d06bc4c4c3d334f74.jpeg', '2021-07-12 08:17:09', '2021-07-12'),
(39, 14, '10022859-1000x667-FIT_AND_TRIM-ead0c087d525bdfba229da99e36fd56a.jpeg', '2021-07-12 08:17:09', '2021-07-12'),
(40, 15, '10024132-c8478ec1564217a66a470eb57d34bb97.jpeg', '2021-07-12 08:17:39', '2021-07-12'),
(41, 15, '10024132-e28551b866e6980e232883a2b83d29cc.jpeg', '2021-07-12 08:17:39', '2021-07-12'),
(42, 15, '10024132-f32682ba5c01d2f874ed901c10442be8.jpeg', '2021-07-12 08:17:39', '2021-07-12'),
(43, 16, '10025273-800x532-FIT_AND_TRIM-c62c9a8276f0f95713f7c12ec3776ecc.jpeg', '2021-07-12 08:20:01', '2021-07-12'),
(44, 16, '10025273-840x460-FIT_AND_TRIM-2c1c971fe6d9f04dc99cfbea98d8707f.jpeg', '2021-07-12 08:20:01', '2021-07-12'),
(45, 16, '10025273-840x460-FIT_AND_TRIM-3794cc5b0d059445398752324762d908.jpeg', '2021-07-12 08:20:01', '2021-07-12'),
(46, 17, '10027719-9c774393eb97ca74b7d184d3085620e5.jpeg', '2021-07-12 08:21:13', '2021-07-12'),
(47, 17, '10027719-04812f6ca0a62e752cc4ef1622defb49.jpeg', '2021-07-12 08:21:13', '2021-07-12'),
(48, 17, '10027719-b2f1fa1fba3e6a4170a520712abcb62e.jpeg', '2021-07-12 08:21:13', '2021-07-12'),
(49, 18, '10028696-ab324cec7f6f76e780cd24051a726f1e.jpg', '2021-07-12 08:22:32', '2021-07-12'),
(50, 18, '10028696-bb2fb39e1fe60a4a4477818478709dc7.jpeg', '2021-07-12 08:22:32', '2021-07-12'),
(51, 18, '10028696-d44200956054940a41d16c32aea80716.jpeg', '2021-07-12 08:22:32', '2021-07-12'),
(52, 19, '10032350-1100x825-FIT_AND_TRIM-0c3d99abf955b14cfd8b7e0debd6dc28.jpeg', '2021-07-12 08:23:57', '2021-07-12'),
(53, 19, '10032350-1100x825-FIT_AND_TRIM-047ce4d7aab3706be6df560b5cf96056.jpeg', '2021-07-12 08:23:57', '2021-07-12'),
(54, 19, '10032350-1100x825-FIT_AND_TRIM-ede9760f3fe9e5be1de974c97af22da3.jpeg', '2021-07-12 08:23:57', '2021-07-12'),
(55, 20, '10038826-1ae21b6da9632208dd51419f43304574.jpeg', '2021-07-12 08:26:36', '2021-07-12'),
(56, 20, '10038826-4be9837e77d6774427341822e91adbf9.jpeg', '2021-07-12 08:26:36', '2021-07-12'),
(57, 20, '10038826-e3c47e56b55f7e554f1fe525875b072b.jpeg', '2021-07-12 08:26:36', '2021-07-12'),
(58, 21, '10040329-24580bf29e0868e1892da4beac6d6322.jpeg', '2021-07-12 08:31:01', '2021-07-12'),
(59, 21, '10040329-c8f5af274640bf371ff93990fcf9786e.jpeg', '2021-07-12 08:31:01', '2021-07-12'),
(60, 21, '10040329-f6e6b40df8656000ca9aae6149617480.jpeg', '2021-07-12 08:31:01', '2021-07-12'),
(61, 22, '20008134-15fe4a8c34ced693921b020197000d02.jpeg', '2021-07-12 08:31:56', '2021-07-12'),
(62, 22, '20008134-525f9256fa846764835afd27421d3597.jpeg', '2021-07-12 08:31:56', '2021-07-12'),
(63, 22, '20008134-d6d3e75dd6cbd5a06946febf4a077be9.jpeg', '2021-07-12 08:31:56', '2021-07-12'),
(64, 23, '20027765-402d5c64ce06e24b07754146b6f38f45.jpeg', '2021-07-12 08:33:07', '2021-07-12'),
(65, 23, '20027765-43278a74e65b1000b1a476e4973f843b.jpeg', '2021-07-12 08:33:07', '2021-07-12'),
(66, 23, '20027765-a07013e01d8eb45fe0122fecc52765f9.jpeg', '2021-07-12 08:33:07', '2021-07-12'),
(67, 24, '10021188-0d82c1e725378153006d5ce857561a7f.jpeg', '2021-07-12 08:35:22', '2021-07-12'),
(68, 24, '10021188-2b7e61f075ce86686793cde80fb083e4.jpeg', '2021-07-12 08:35:22', '2021-07-12'),
(69, 24, '10021188-83773cee58cd0aa5b839c28d2e4e8c7b.jpeg', '2021-07-12 08:35:22', '2021-07-12'),
(70, 25, '10022581-1000x599-FIT_AND_TRIM-0a60494dff5b8b2dbab13114d34201f8.jpeg', '2021-07-12 08:36:39', '2021-07-12'),
(71, 25, '10022581-1000x600-FIT_AND_TRIM-768ffb9fe7b091b953514962eb0cce96.jpeg', '2021-07-12 08:36:39', '2021-07-12'),
(72, 25, '10022581-1000x600-FIT_AND_TRIM-ef9ea495ea0e3c1e2590621465949634.jpeg', '2021-07-12 08:36:39', '2021-07-12'),
(73, 26, '10022859-1000x667-FIT_AND_TRIM-1bcc6adfd412009c27d7d5b21ebbda7a.jpeg', '2021-07-12 08:37:36', '2021-07-12'),
(74, 26, '10022859-1000x667-FIT_AND_TRIM-68bf0d96ce91597aa35c75c886ac13a1.jpeg', '2021-07-12 08:37:36', '2021-07-12'),
(75, 26, '10022859-1000x667-FIT_AND_TRIM-78d2ac9888787d2344cfb8fd6c14ac94.jpeg', '2021-07-12 08:37:36', '2021-07-12'),
(76, 27, '10024132-a3db8ef8b06928f344b21294632a6dc5.jpeg', '2021-07-12 08:41:28', '2021-07-12'),
(77, 27, '10024132-aacd220d4a0029cc865b91cb1efc0b5e.jpeg', '2021-07-12 08:41:28', '2021-07-12'),
(78, 27, '10024132-c0a87e840366e62f00dfd7072eac3fa9.jpeg', '2021-07-12 08:41:28', '2021-07-12'),
(79, 28, '10025273-800x532-FIT_AND_TRIM-61bc40a01895f52a18cb0dbde574d4c2.jpeg', '2021-07-12 08:42:03', '2021-07-12'),
(80, 28, '10025273-800x532-FIT_AND_TRIM-a00a653087e7ec3c26856e669e0b31cb.jpeg', '2021-07-12 08:42:03', '2021-07-12'),
(81, 28, '10025273-840x460-FIT_AND_TRIM-0fdc4846bed652a308878a7456532aa8.jpeg', '2021-07-12 08:42:03', '2021-07-12'),
(82, 29, '10027719-2d680ca33080a0da1750e4641bbbb48e.jpeg', '2021-07-12 08:42:51', '2021-07-12'),
(83, 29, '10027719-4c2aa6edcdc03f7d9aae1e4b68a0f523.jpeg', '2021-07-12 08:42:51', '2021-07-12'),
(84, 29, '10027719-7feffcd6bd2956f0adbc4f3280d28779.jpeg', '2021-07-12 08:42:51', '2021-07-12'),
(85, 30, '10040329-35bb99c08e6a0ce79a81f39824135d0f.jpeg', '2021-07-12 08:44:33', '2021-07-12'),
(86, 30, '10040329-cf24f17b85c7c3aa71ee2ae855f565cc.jpeg', '2021-07-12 08:44:33', '2021-07-12'),
(87, 30, '10040329-e1f44e566ffa8000b045cc9094354963.jpeg', '2021-07-12 08:44:33', '2021-07-12'),
(88, 31, '20008134-48c626d419c9db39520727bf6bf827ff.jpeg', '2021-07-12 08:45:20', '2021-07-12'),
(89, 31, '20008134-a7691c1e9c4658d46bbb319e507b1281.jpeg', '2021-07-12 08:45:20', '2021-07-12'),
(90, 31, '20008134-bcce7a2590d8cafa0a236e275f026682.jpeg', '2021-07-12 08:45:20', '2021-07-12'),
(91, 32, '20027765-1b3ead49179308930bd2f71129977a85.jpeg', '2021-07-12 08:46:42', '2021-07-12'),
(92, 32, '20027765-1b327dc69c9b43c8a3aa4066df073751.jpeg', '2021-07-12 08:46:42', '2021-07-12'),
(93, 32, '20027765-3bb99197ea078f0f744148111b9ce1ee.jpeg', '2021-07-12 08:46:42', '2021-07-12'),
(94, 33, '10021188-43c8d614ca768e99b62a9578b45fc59e.jpeg', '2021-07-12 08:49:16', '2021-07-12'),
(95, 33, '10021188-c7aee09734988e699d2aa55e37c029d8.jpeg', '2021-07-12 08:49:16', '2021-07-12'),
(96, 33, '10021188-f440da632e41f1d7c46f875dd0733cd9.jpeg', '2021-07-12 08:49:16', '2021-07-12'),
(97, 34, '10024132-8f1372a41091c41f96a25586ea95f50a.jpeg', '2021-07-12 08:50:57', '2021-07-12'),
(98, 34, '10024132-cfaf3d1e9d0ec5511d861a3fe44b18f1.jpeg', '2021-07-12 08:50:57', '2021-07-12'),
(99, 35, '10027719-1de3ae90044ccae714e9071774c37fc5.jpeg', '2021-07-12 08:51:28', '2021-07-12'),
(100, 35, '10027719-93c1d602ee0299507332ad99dc321533.jpeg', '2021-07-12 08:51:28', '2021-07-12'),
(101, 35, '10027719-469df8eb8f230ab3a7ffef4a67f84949.jpeg', '2021-07-12 08:51:28', '2021-07-12'),
(102, 36, '10027719-d1b2baddeb276b62b9538257742aa5c3.jpeg', '2021-07-12 08:52:13', '2021-07-12'),
(103, 36, '10028696-bec8c18ec576d85586ae448fdbf01fbc.jpeg', '2021-07-12 08:52:13', '2021-07-12'),
(104, 37, '20027765-74b03f93a38cc74879dbe2bb13ec47da.jpeg', '2021-07-12 08:53:37', '2021-07-12'),
(105, 37, '20027765-00988f595e1f55e3062b10b2a7a7c925.jpeg', '2021-07-12 08:53:37', '2021-07-12'),
(109, 39, '10038826-8881531c324e9724cb86214145d9bef9.jpeg', '2021-07-28 09:33:20', '2021-07-28'),
(110, 39, '20008134-650b26a3691f0745bfdfca1dda769a5e.jpeg', '2021-07-28 09:33:20', '2021-07-28'),
(111, 39, '20008134-dce8777e4a094cb8598b4abd786160cb.jpeg', '2021-07-28 09:33:20', '2021-07-28'),
(115, 42, '10022581-1000x600-FIT_AND_TRIM-50b986816265354021db01e1a46abc34.jpeg', '2021-08-13 18:20:05', '2021-08-14'),
(116, 42, '10022581-1000x600-FIT_AND_TRIM-768ffb9fe7b091b953514962eb0cce96.jpeg', '2021-08-13 18:20:05', '2021-08-14'),
(117, 42, '10022581-1000x600-FIT_AND_TRIM-2730826e3af3efee62e7d89ec73cec44.jpeg', '2021-08-13 18:20:05', '2021-08-14'),
(118, 42, '10022581-1000x600-FIT_AND_TRIM-e2c6174d6fd4d1c19adeedf15066d8ab.jpeg', '2021-08-13 18:20:05', '2021-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `infomation`
--

CREATE TABLE `infomation` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `infomation`
--

INSERT INTO `infomation` (`id`, `email`, `phone`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'aptech.hotel@gmail.com', '0988888888', 'logo.png', '2021-07-21 17:50:36', '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `room_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `customer_name`, `customer_email`, `rating`, `review`, `room_id`, `created_at`, `updated_at`) VALUES
(1, 'Anh Tuấn', 'tuantuan230298@gmail.com', 4.4, 'Phòng đẹp. Dịch vụ tốt.', 11, '2021-07-19 09:13:35', '2021-07-19'),
(2, 'Anh Tú', 'nguyentu2002@gmail.com', 4.5, 'Phòng đẹp', 11, '2021-07-19 09:42:07', '2021-07-19'),
(3, 'Tiến Đạt', 'trantiendat2002@gmail.com', 3.6, 'Dịch vụ tốt', 11, '2021-07-19 09:45:12', '2021-07-19'),
(6, 'anh tuấn', 'tuantuan230298@gmail.com', 4, 'view đẹp', 12, '2021-07-19 23:37:51', '2021-07-20'),
(7, 'tú', 'nguyentu2002@gmail.com', 4, 'Dịch vụ tuyệt vời', 12, '2021-07-19 23:49:17', '2021-07-20'),
(8, 'đạt', 'trantiendat2002@gmail.com', 1.5, 'Tệ', 12, '2021-07-19 23:49:36', '2021-07-20'),
(9, 'demo', 'demo@gmail.com', 4, 'view đẹp', 12, '2021-07-19 23:53:17', '2021-07-20'),
(10, 'demo 1', 'demo1@gmail.com', 4, 'ok', 12, '2021-07-19 23:54:48', '2021-07-20'),
(11, 'demo3', 'demo3@gmail.com', 5, 'ok', 12, '2021-07-19 23:55:38', '2021-07-20'),
(12, 'demo 4', 'demo4@gmail.com', 5, 'đẹp', 12, '2021-07-19 23:58:51', '2021-07-20'),
(13, 'anh tuấn', 'tuantuan230298@gmail.com', 5, 'đẹp', 13, '2021-07-20 00:01:37', '2021-07-20'),
(14, 'anh tú', 'tunguyen2002@gmail.com', 2.5, 'view đẹp', 13, '2021-07-20 00:07:32', '2021-07-20'),
(15, 'anh tuấn', 'tuantuan230298@gmail.com', 4.5, 'OK', 14, '2021-07-20 00:18:35', '2021-07-20'),
(16, 'tiến đạt', 'trantiendat2002@gmail.com', 3.5, 'view đẹp', 13, '2021-07-25 00:34:42', '2021-07-25'),
(17, 'demo', 'demo@gmail.com', 0.9, 'xấu', 13, '2021-07-25 00:35:11', '2021-07-25'),
(18, 'anh tuấn', 'tuantuan230298@gmail.com', 3.5, 'phòng đẹp', 15, '2021-07-25 23:43:11', '2021-07-26'),
(19, 'demo', 'demo@gmail.com', 2.5, 'phòng đẹp', 15, '2021-07-25 23:44:32', '2021-07-26'),
(20, 'demo 2', 'demo2@gmail.com', 4.5, 'view đẹp', 15, '2021-07-25 23:45:15', '2021-07-26'),
(21, 'demo', 'demo@gmail.com', 4.5, 'phòng đẹp', 14, '2021-07-25 23:54:03', '2021-07-26'),
(22, 'demo 1', 'demo1@gmail.com', 1, 'phòng đẹp', 14, '2021-07-25 23:54:19', '2021-07-26'),
(23, 'demo3', 'demo3@gmail.com', 4.5, 'view đẹp', 14, '2021-07-25 23:57:26', '2021-07-26'),
(24, 'demo4', 'demo4@gmail.com', 4.5, 'view đẹp', 14, '2021-07-25 23:58:16', '2021-07-26'),
(25, 'demo5', 'demo5@gmail.com', 3.5, 'đẹp', 14, '2021-07-25 23:58:52', '2021-07-26'),
(26, 'demo6', 'deom6@gmail.com', 4.5, 'đjep', 14, '2021-07-25 23:59:30', '2021-07-26'),
(27, 'demo9', 'demo9@gmail.com', 0.9, 'đẹp', 14, '2021-07-25 23:59:58', '2021-07-26'),
(28, 'demo10', 'demo10@gmail.com', 4.5, 'đẹp', 14, '2021-07-26 00:00:30', '2021-07-26'),
(29, 'fhdsghfsgdfh', 'fsdfhgsdh@gmail.com', 0.9, '123456', 14, '2021-07-26 00:00:59', '2021-07-26'),
(30, 'demo123', 'demo123@gmail.com', 4.5, 'đẹp', 11, '2021-07-26 00:31:45', '2021-07-26'),
(31, 'anh tuấn', 'tuantuan230298@gmail.com', 4.5, 'đẹp', 30, '2021-07-26 00:34:49', '2021-07-26'),
(32, 'anh tuấn', 'tuantuan230298@gmail.com', 4.5, 'phòng đẹp', 24, '2021-07-29 00:13:23', '2021-07-29'),
(33, 'demo', 'demo@gmail.com', 4.5, '1212121', 24, '2021-07-29 00:15:13', '2021-07-29'),
(34, 'anh tuấn', 'tuantuan230298@gmail.com', 2.9, '1212', 16, '2021-07-29 00:15:44', '2021-07-29'),
(35, 'anh tuấn', 'tuantuan230298@gmail.com', 4.5, 'đẹp', 27, '2021-07-29 00:20:28', '2021-07-29'),
(36, 'test', 'test@gmail.com', 3.4, '121212', 28, '2021-07-29 00:39:12', '2021-07-29'),
(37, 'test', 'test@gmail.com', 2.6, '1212', 32, '2021-07-29 00:43:05', '2021-07-29'),
(38, 'demo', 'demo@gmail.com', 5, '121212', 32, '2021-07-29 00:53:54', '2021-07-29'),
(39, 'anh tuấn', 'tuantuan230298@gmail.com', 3.9, 'đẹp', 18, '2021-08-07 00:50:44', '2021-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `price`, `image`, `status`, `description`, `category_id`, `hotel_id`, `created_at`, `updated_at`) VALUES
(11, 'Phòng 101', 1000000, '10021188-b36b7fd0711779de37363432cd42a76d.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:11:51', '2021-07-12'),
(12, 'Phòng 102', 1000000, '10022581-1000x600-FIT_AND_TRIM-e2c6174d6fd4d1c19adeedf15066d8ab.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:13:43', '2021-07-12'),
(13, 'Phòng 103', 1000000, '10021188-e6d139be1ae5be2086547a1e801c64ee.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:16:02', '2021-07-12'),
(14, 'Phòng 104', 1000000, '10022859-1000x667-FIT_AND_TRIM-0e90388a98e44d6ab0b4425e356d9183.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:17:08', '2021-07-12'),
(15, 'Phòng 105', 1000000, '10024132-e05d464b04546bd8f2f6754dc5908bed.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:17:39', '2021-07-12'),
(16, 'Phòng 106', 1000000, '10025273-800x532-FIT_AND_TRIM-4674ba0a18bdd08fa73049559ee0f3e1.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:20:01', '2021-07-12'),
(17, 'Phòng 107', 1000000, '10027719-9f5bc4326ac619f718bafbbbe65219bb.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:21:13', '2021-07-12'),
(18, 'Phòng 108', 1000000, '10028696-bb2fb39e1fe60a4a4477818478709dc7.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:22:31', '2021-07-12'),
(19, 'Phòng 109', 1000000, '10032350-1100x825-FIT_AND_TRIM-0c3d99abf955b14cfd8b7e0debd6dc28.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:23:57', '2021-07-12'),
(20, 'Phòng 110', 1000000, '10038826-4be9837e77d6774427341822e91adbf9.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:26:36', '2021-07-12'),
(21, 'Phòng 111', 1000000, '10040329-24580bf29e0868e1892da4beac6d6322.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:31:01', '2021-07-12'),
(22, 'Phòng 112', 1000000, '20008134-2099fc3006363dd46b0903e68193d96e.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:31:56', '2021-07-12'),
(23, 'Phòng 113', 1000000, '20027765-402d5c64ce06e24b07754146b6f38f45.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 2, 3, '2021-07-12 08:33:07', '2021-07-12'),
(24, 'Phòng 201', 1800000, '10021188-0debeb11f4a144c4927b3211f70528e1.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:35:22', '2021-07-12'),
(25, 'Phòng 202', 1800000, '10022581-1000x600-FIT_AND_TRIM-2730826e3af3efee62e7d89ec73cec44.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:36:39', '2021-07-12'),
(26, 'Phòng 203', 1800000, '10022859-1000x667-FIT_AND_TRIM-b8222994acd955658e4351008517becc.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:37:36', '2021-07-12'),
(27, 'Phòng 204', 1800000, '10024132-7cfb276735433406df861b2892f7b50d.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:41:28', '2021-07-12'),
(28, 'Phòng 205', 1800000, '10025273-800x532-FIT_AND_TRIM-61bc40a01895f52a18cb0dbde574d4c2.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:42:03', '2021-07-12'),
(29, 'Phòng 206', 1800000, '10027719-4c2aa6edcdc03f7d9aae1e4b68a0f523.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:42:51', '2021-07-12'),
(30, 'Phòng 207', 1800000, '10040329-2ed361af46ea36553fc82897f33ce5a4.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:44:33', '2021-07-12'),
(31, 'Phòng 208', 1800000, '20008134-48c626d419c9db39520727bf6bf827ff.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:45:20', '2021-07-12'),
(32, 'Phòng 209', 1800000, '20027765-3bb99197ea078f0f744148111b9ce1ee.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 3, 3, '2021-07-12 08:46:42', '2021-07-12'),
(33, 'Phòng 301', 2500000, '10021188-a66d796e6120dd370250f6896b719985.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 4, 3, '2021-07-12 08:49:16', '2021-07-12'),
(34, 'Phòng 302', 2500000, '10024132-7f72208e6a1fd1bf6b569aae9357b985.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 4, 3, '2021-07-12 08:50:57', '2021-07-12'),
(35, 'Phòng 303', 2500000, '10027719-1de3ae90044ccae714e9071774c37fc5.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 4, 3, '2021-07-12 08:51:28', '2021-07-12'),
(36, 'Phòng 304', 2500000, '10028696-bec8c18ec576d85586ae448fdbf01fbc.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 4, 3, '2021-07-12 08:52:13', '2021-07-12'),
(37, 'Phòng 305', 2500000, '20027765-00988f595e1f55e3062b10b2a7a7c925.jpeg', 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial; font-size: 13.3333px; text-align: justify;\">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</span><br></p>', 4, 3, '2021-07-12 08:53:37', '2021-07-12'),
(39, 'Phòng 306', 2500000, '20008134-650b26a3691f0745bfdfca1dda769a5e.jpeg', 1, '<p>Phòng được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.<br></p>', 4, 3, '2021-07-28 09:33:20', '2021-07-28'),
(42, 'Phòng demo', 500000, '10021188-0debeb11f4a144c4927b3211f70528e1.jpeg', 1, '<p>Phòng mới demo</p>', 2, 3, '2021-08-13 18:20:05', '2021-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Dịch vụ ăn sáng', 'Breakfarst_in_Thakhek.jpg', 150000, '2021-07-11 07:27:04', '2021-07-11'),
(4, 'Dịch vụ ăn trưa', 'istock_000006400271small.jpg', 250000, '2021-07-11 07:35:38', '2021-07-11'),
(5, 'Dịch vụ bữa tối', 'DSC_0866.jpg', 500000, '2021-07-11 07:38:09', '2021-07-11'),
(6, 'Dịch vụ massage', 'image004_ojpz.jpg', 800000, '2021-07-11 07:39:54', '2021-07-11'),
(7, 'Phòng tập gym', 'gym.jpg', 200000, '2021-07-11 07:41:11', '2021-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `service_booking`
--

CREATE TABLE `service_booking` (
  `service_id` int(11) DEFAULT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_booking`
--

INSERT INTO `service_booking` (`service_id`, `booking_id`, `room_id`, `created_at`, `updated_at`) VALUES
(4, 73, 11, '2021-07-28 02:08:34', '2021-07-28'),
(7, 73, 11, '2021-07-28 02:08:34', '2021-07-28'),
(4, 74, 12, '2021-07-29 02:35:16', '2021-07-29'),
(5, 74, 12, '2021-07-29 02:35:16', '2021-07-29'),
(6, 74, 12, '2021-07-29 02:35:17', '2021-07-29'),
(3, 74, 25, '2021-07-29 02:35:17', '2021-07-29'),
(7, 74, 25, '2021-07-29 02:35:17', '2021-07-29'),
(3, 76, 12, '2021-08-03 08:25:46', '2021-08-03'),
(4, 76, 12, '2021-08-03 08:25:46', '2021-08-03'),
(4, 78, 14, '2021-08-07 00:46:17', '2021-08-07'),
(5, 78, 14, '2021-08-07 00:46:17', '2021-08-07'),
(3, 78, 14, '2021-08-07 00:46:17', '2021-08-07'),
(3, 79, 15, '2021-08-08 06:05:53', '2021-08-08'),
(3, 80, 13, '2021-08-13 18:43:20', '2021-08-14'),
(4, 80, 13, '2021-08-13 18:43:20', '2021-08-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`booking_id`,`room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `code_sale`
--
ALTER TABLE `code_sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `image_room`
--
ALTER TABLE `image_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `infomation`
--
ALTER TABLE `infomation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_booking`
--
ALTER TABLE `service_booking`
  ADD KEY `service_id` (`service_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `booking_id` (`booking_id`,`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `code_sale`
--
ALTER TABLE `code_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_room`
--
ALTER TABLE `image_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `infomation`
--
ALTER TABLE `infomation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD CONSTRAINT `booking_detail_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `booking_detail_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `image_room`
--
ALTER TABLE `image_room`
  ADD CONSTRAINT `image_room_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Constraints for table `service_booking`
--
ALTER TABLE `service_booking`
  ADD CONSTRAINT `service_booking_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `service_booking_ibfk_2` FOREIGN KEY (`booking_id`,`room_id`) REFERENCES `booking_detail` (`booking_id`, `room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
