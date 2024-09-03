-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 11:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', NULL, NULL),
(2, 'React', 'react', NULL, NULL),
(4, 'MERN Stack', 'mern-stack', NULL, '2024-07-06 03:17:29'),
(6, 'PHP', 'php', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `post_title`, `post_slug`, `post_image`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 2, 'From Crisis to Control — How to Lead Effectively in High-Stress Scenarios11', 'from crisis to control — how to lead effectively in high-stress scenarios11', 'upload/post/1805629681653435.png', '<p>11Consider the recent Hurricane Beryl, a devastating storm that demonstrated my company BELFOR\'s response strategies and highlighted the impacts of extreme weather. My experience managing the fallout from natural disasters helped me refine strategies that apply to severe weather events and workplace crises alike. Reflecting on the extensive impact of Hurricane Beryl and my personal experiences, I recognized the necessity for adapting and shifting our approach to support impacted communities. By embracing <a href=\"https://www.entrepreneur.com/en-ae/leadership/heres-why-business-leaders-today-need-to-have-an-agile/453273\">agility</a>, fostering open communication and empowering our teams, we can not only recover from crises but also strengthen ourselves and build a more resilient, connected workforce.</p>\r\n<p>While not every company will endure the wrath of a natural disaster (though, as we\'ve seen, the impact from natural disasters across a multitude of sectors are impacted), I believe the lessons I\'ve learned on the frontlines and the response strategies BELFOR has developed are universally applicable. These strategies prepare us to handle a broad spectrum of potential business disruptions, ensuring quick, effective&nbsp;<a href=\"https://www.entrepreneur.com/leadership/making-decisions-under-uncertain-circumstances/299983\">decision-making under pressure</a> &mdash; an indispensable skill in a changing business environment.</p>', 'jQuery,Laravel,React,11', '2024-07-26 03:00:52', '2024-07-26 03:00:52'),
(2, 4, 'AI Is Standing Between You and Your Next Job — Here\'s How to Get Your Application Into Human Hands', 'ai is standing between you and your next job — here\'s how to get your application into human hands', 'upload/post/1805627819241149.png', '<p>he&nbsp;<a href=\"https://www.entrepreneur.com/growing-a-business/how-both-job-seekers-and-employers-can-win-the-job-search/468166\">job application</a>&nbsp;process is broken. AI has taken over both the&nbsp;<a href=\"https://www.entrepreneur.com/living/this-is-the-top-skill-job-seekers-need-its-not/475110\">job seeker</a>&nbsp;and the employer\'s side, making it virtually impossible to stand out.</p>\r\n<p>With the help of AI, it is easy to create a 100% matching score resume for a job application. Recruiters are now faced with a barrage of perfect candidates to sift through. Even AI-powered job boards automate the job curation process, leaving&nbsp;<a href=\"https://www.entrepreneur.com/leadership/3-strategies-for-networking-in-the-post-pandemic-world/422590\">traditional networking</a> obsolete. Both job seekers and employers are still looking for the best fit in our new automated world.</p>', 'jQuery,AI', '2024-07-24 08:05:49', NULL),
(3, 1, 'You\'ll Never Satisfy Your Customers — or Grow Your Business — Without Doing These 3 Things', 'you\'ll never satisfy your customers — or grow your business — without doing these 3 things', 'upload/post/1805629736273548.png', '<p>11 he future of <a href=\"https://www.entrepreneur.com/growing-a-business/customer-experience-will-determine-the-success-of-your/353979\" target=\"_blank\" rel=\"noopener\">customer experience</a> (CX) is all about growth. We recently asked our clients and wider contacts what they considered to be the most important factor in their CX programs and what they saw as the No. 1 challenge or thing that keeps them up at night — and some of the answers surprised us.</p>\r\n<p>Many of them said customer experience is crucial for success and creates a key competitive advantage — we expected that answer. Many have cut costs, leaving the service and sales experiences as key differentiators. These teams are focused on action and building capability and can show a direct link between improving CX results and business KPIs.</p>\r\n<p>What we didn\'t expect was what they told us about their No. 1 challenges. Perhaps you can relate to these pain points in your own CX program.</p>\r\n<div id=\"pYQZLCnuqgNwvRj\" class=\"adbox flex-none box-content text-center native min-h-[50px] sm:min-h-[90px] adbox--called\" data-key=\"native\" data-pos=\"ab-ntv-0\" data-display=\"article\" data-google-query-id=\"CNie-_WexIcDFZUNgwMd8Cg0nA\">\r\n<div id=\"google_ads_iframe_/6280/Entrepreneur-in/article_2__container__\"></div>\r\n</div>\r\n<p>We expected to hear that they have too much data, not enough action and not enough time to implement the action needed based on said data. These pain points are rated in the top five challenges, but they told us that 1) engaging customers to provide <a href=\"https://www.entrepreneur.com/leadership/4-ways-to-use-customer-feedback-to-improve-your-business/443548\" target=\"_blank\" rel=\"noopener\">meaningful feedback</a>, a.k.a. response rates, and 2) motivating team members to take ownership of their results have moved to the top of the list. Survey fatigue is real — customers are tired of constant requests, and staff often dismiss feedback as irrelevant or outside their control.</p>\r\n<p>So what are the top three strategies that help to address these challenges and help you achieve what we call <a href=\"https://www.entrepreneur.com/growing-a-business/how-to-use-customer-feedback-to-unlock-growth-and-loyalty/467051\" target=\"_blank\" rel=\"noopener\">\"feedback for growth</a>?\"</p>', 'jQuery,React,PHP,11', '2024-07-26 03:02:27', '2024-07-26 03:02:27'),
(4, 6, 'Hotel Management is the best', 'hotel management is the best', 'upload/post/1805628076675350.png', '<p>he future of&nbsp;<a href=\"https://www.entrepreneur.com/growing-a-business/customer-experience-will-determine-the-success-of-your/353979\" target=\"_blank\" rel=\"noopener\">customer experience</a>&nbsp;(CX) is all about growth. We recently asked our clients and wider contacts what they considered to be the most important factor in their CX programs and what they saw as the No. 1 challenge or thing that keeps them up at night &mdash; and some of the answers surprised us.</p>\r\n<p>Many of them said customer experience is crucial for success and creates a key competitive advantage &mdash; we expected that answer. Many have cut costs, leaving the service and sales experiences as key differentiators. These teams are focused on action and building capability and can show a direct link between improving CX results and business KPIs.</p>\r\n<p>What we didn\'t expect was what they told us about their No. 1 challenges. Perhaps you can relate to these pain points in your own CX program.</p>\r\n<div id=\"pYQZLCnuqgNwvRj\" class=\"adbox flex-none box-content text-center native min-h-[50px] sm:min-h-[90px] adbox--called\" data-key=\"native\" data-pos=\"ab-ntv-0\" data-display=\"article\" data-google-query-id=\"CNie-_WexIcDFZUNgwMd8Cg0nA\">\r\n<div id=\"google_ads_iframe_/6280/Entrepreneur-in/article_2__container__\"></div>\r\n</div>\r\n<p>We expected to hear that they have too much data, not enough action and not enough time to implement the action needed based on said data. These pain points are rated in the top five challenges, but they told us that 1) engaging customers to provide&nbsp;<a href=\"https://www.entrepreneur.com/leadership/4-ways-to-use-customer-feedback-to-improve-your-business/443548\" target=\"_blank\" rel=\"noopener\">meaningful feedback</a>, a.k.a. response rates, and 2) motivating team members to take ownership of their results have moved to the top of the list. Survey fatigue is real &mdash; customers are tired of constant requests, and staff often dismiss feedback as irrelevant or outside their control.</p>\r\n<p>So what are the top three strategies that help to address these challenges and help you achieve what we call&nbsp;<a href=\"https://www.entrepreneur.com/growing-a-business/how-to-use-customer-feedback-to-unlock-growth-and-loyalty/467051\" target=\"_blank\" rel=\"noopener\">\"feedback for growth</a>?\"</p>', 'jQuery,PHP', '2024-07-26 02:35:21', NULL),
(6, 6, 'MBA is the greatest degree', 'mba is the greatest degree', 'upload/post/1806201844151148.png', '<p>Check out MBA courses and programs.</p>', 'jQuery,MBA', '2024-08-01 10:35:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Development', 'development', 'upload/category/1799020205588664.png', NULL, NULL),
(5, 'Design', 'design', 'upload/category/1799020221064310.png', NULL, NULL),
(6, 'Business', 'business', 'upload/category/1799027850300252.png', NULL, NULL),
(7, 'IT & Software', 'it-&-software', 'upload/category/1799027869571707.png', NULL, NULL),
(8, 'Finance & Accounting', 'finance-&-accounting', 'upload/category/1799027933746396.png', NULL, NULL),
(9, 'Personal Development', 'personal-development', 'upload/category/1799027953344839.png', NULL, NULL),
(10, 'Marketing', 'marketing', 'upload/category/1799199166921597.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'user_id',
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'instructor_id',
  `msg` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `msg`, `created_at`, `updated_at`) VALUES
(1, 12, 2, 'hello aditya', '2024-08-20 03:09:37', '2024-08-20 03:09:37'),
(2, 12, 2, 'are you there?', '2024-08-20 03:12:41', '2024-08-20 03:12:41'),
(3, 12, 2, 'Hello Instructor', '2024-08-22 06:36:22', '2024-08-22 06:36:22'),
(4, 12, 2, 'I have some query', '2024-08-23 02:57:54', '2024-08-23 02:57:54'),
(5, 12, 2, 'I like your course', '2024-08-23 02:58:47', '2024-08-23 02:58:47'),
(6, 2, 12, 'I am sorry for the delay', '2024-08-23 03:27:33', '2024-08-23 03:27:33'),
(7, 12, 2, 'This is an immediate response', '2024-08-23 03:33:43', '2024-08-23 03:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` varchar(255) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `instructor_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `instructor_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', '10', '2024-06-21', 1, 1, 16, '2024-06-01 16:50:28', '2024-06-01 16:50:28'),
(2, 'JOINEE', '20', '2024-06-26', 1, 1, 16, '2024-06-01 16:50:19', '2024-06-01 16:50:19'),
(7, 'BRIN', '100', '2024-09-30', 1, NULL, NULL, '2024-08-30 07:58:21', NULL),
(8, 'BRIN', '1000', '2024-08-31', 1, 2, 16, '2024-08-30 08:35:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `course_title` text DEFAULT NULL,
  `course_name` text DEFAULT NULL,
  `course_name_slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `prerequisites` text DEFAULT NULL,
  `bestseller` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `highestrated` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `subcategory_id`, `instructor_id`, `course_image`, `course_title`, `course_name`, `course_name_slug`, `description`, `video`, `label`, `duration`, `resources`, `certificate`, `selling_price`, `discount_price`, `prerequisites`, `bestseller`, `featured`, `highestrated`, `status`, `created_at`, `updated_at`) VALUES
(16, 7, 10, 2, 'Course/images/artificial-general-intelligence/1725004902_livechat.gif', 'Artificial Intelligence', 'Artificial General Intelligence', 'artificial-general-intelligence', '<p>Lorem Ipsum</p>', 'Course/videos/artificial-general-intelligence/1725004906_Course Library.mp4', 'Advanced', '50', '1', 'Yes', 5000, 1000, 'Lorem Ipsum', '1', '1', '1', 1, '2024-08-30 02:31:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE `course_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `goal_name` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_goals`
--

INSERT INTO `course_goals` (`id`, `course_id`, `goal_name`, `created_at`, `updated_at`) VALUES
(19, 9, 'Stock Management System', '2024-05-16 09:13:52', '2024-05-16 09:13:52'),
(26, 12, 'Stock Management System', '2024-05-17 00:03:22', '2024-05-17 00:03:22'),
(27, 12, 'Multi Authentication User-Agent-Admin', '2024-05-17 00:03:22', '2024-05-17 00:03:22'),
(28, 12, NULL, '2024-05-17 00:03:22', '2024-05-17 00:03:22'),
(29, 13, 'Stock Management System', '2024-05-17 00:05:08', '2024-05-17 00:05:08'),
(30, 13, 'Multi Authentication User-Agent-Admin', '2024-05-17 00:05:08', '2024-05-17 00:05:08'),
(31, 13, NULL, '2024-05-17 00:05:08', '2024-05-17 00:05:08'),
(42, 14, 'Stock Management System', '2024-05-20 01:27:22', '2024-05-20 01:27:22'),
(43, 14, 'Multi Authentication User-Agent-Admin', '2024-05-20 01:27:22', '2024-05-20 01:27:22'),
(50, 11, 'Stock Management System', '2024-05-22 13:45:40', '2024-05-22 13:45:40'),
(51, 11, 'Multi Authentication User-Agent-Admin', '2024-05-22 13:45:40', '2024-05-22 13:45:40'),
(52, 11, NULL, '2024-05-22 13:45:40', '2024-05-22 13:45:40'),
(53, 16, 'Artificial General Intelligence', '2024-08-30 02:31:47', '2024-08-30 02:31:47'),
(54, 16, NULL, '2024-08-30 02:31:47', '2024-08-30 02:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `course_id`, `section_id`, `lecture_title`, `video`, `url`, `content`, `created_at`, `updated_at`) VALUES
(19, 11, 10, 'Install Laravel', NULL, 'Cource/1724923128_Course Library.mp4', 'Laravel Installation', '2024-05-31 00:35:21', '2024-08-29 03:49:04'),
(23, 12, 12, 'Project Setup', NULL, 'https://player.vimeo.com/video/43014286?h=d8a2fc3f50', 'Installation Project Setup', '2024-05-31 09:16:34', '2024-06-01 01:18:02'),
(24, 12, 13, 'Project Admin Setup', NULL, 'https://player.vimeo.com/video/43014286?h=d8a2fc3f50', 'Panel Setup', '2024-05-31 09:16:58', '2024-06-01 01:18:31'),
(26, 12, 12, 'Installation Setup', NULL, 'https://www.youtube.com/embed/e_Q9vccOV7s?si=Vi1pS1RC2vn84ktE', 'Installatiation Setup', '2024-05-31 09:18:06', '2024-06-01 01:36:52'),
(27, 12, 12, 'Course Overview', NULL, NULL, 'Hi\r\nWelcome to Motion Graphics in After Effects.\r\nIn the next lectures you will start creating your first animation and animate imported footage.\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes,\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nOccaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus,\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.\r\nDownload your footage Now, Click on the Link Below.\r\nResources for this lecture', '2024-05-31 09:18:48', '2024-06-01 01:37:13'),
(28, 12, 13, 'Javascript Variable', NULL, 'https://www.youtube.com/embed/AVY8ljDa4vo?si=OXcNN_HiwXemNTLp', 'sadfas', '2024-05-31 09:19:09', '2024-06-01 01:41:10'),
(29, 12, 13, 'Primitive Data Type', NULL, NULL, 'Hi\r\nWelcome to Motion Graphics in After Effects.\r\nIn the next lectures you will start creating your first animation and animate imported footage.\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes,\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nOccaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus,\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.\r\nDownload your footage Now, Click on the Link Below.', '2024-05-31 09:19:35', '2024-06-01 01:33:31'),
(31, 16, 18, 'AGI', NULL, 'Course/videos/artificial-general-intelligence/1725005689_Course Library.mp4', 'Artificial General Intelligence', '2024-08-30 02:44:51', '2024-08-30 02:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `section_title`, `created_at`, `updated_at`) VALUES
(10, 11, 'Section 1: Multi Auth with Breeze Create Auth For User/Instructor/Admin', NULL, NULL),
(12, 12, 'Section 1: Multi Auth with Breeze Create Auth For User/Instructor/Admin', NULL, NULL),
(13, 12, 'Section 2: Project Admin Panel Setup', NULL, NULL),
(16, 14, 'Section 1: Login', NULL, NULL),
(17, 11, 'Section 1: Multi Auth with Breeze Create Auth For User/Instructor/Admin', NULL, NULL),
(18, 16, 'Artifical Intelligence', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_13_045646_create_categories_table', 2),
(6, '2024_05_14_114322_create_sub_categories_table', 3),
(7, '2024_05_16_062341_create_courses_table', 4),
(8, '2024_05_16_063551_create_course_goals_table', 4),
(9, '2024_05_20_081512_create_course_sections_table', 5),
(10, '2024_05_20_081530_create_course_lectures_table', 5),
(11, '2024_05_25_060601_create_wishlists_table', 6),
(12, '2024_05_28_141152_create_coupons_table', 7),
(13, '2024_05_30_093226_create_payments_table', 8),
(14, '2024_05_30_093245_create_orders_table', 8),
(15, '2024_05_31_044113_create_smtp_settings_table', 9),
(16, '2024_06_01_082407_create_questions_table', 10),
(17, '2024_06_06_033132_create_reviews_table', 11),
(18, '2024_07_03_133532_create_blog_categories_table', 12),
(19, '2024_07_20_081058_create_blog_posts_table', 13),
(20, '2024_08_04_002236_create_notifications_table', 14),
(21, '2024_08_11_035910_create_site_settings_table', 15),
(22, '2024_08_12_144900_create_permission_tables', 16),
(23, '2024_08_20_075020_create_chat_messages_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('39fb157f-c219-44a0-ba01-030559ea8fa0', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New COD Enrollment in Course\"}', '2024-08-03 19:38:03', '2024-08-03 19:12:14', '2024-08-03 19:38:03'),
('5d3a1795-0dd3-4596-a2ec-df7afc23ea6a', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New COD Enrollment in Course\"}', '2024-08-03 19:38:09', '2024-08-03 19:21:49', '2024-08-03 19:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cash_delivery` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `address`, `cash_delivery`, `total_amount`, `payment_type`, `invoice_no`, `order_date`, `order_month`, `order_year`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Elon', 'elon@spacex.com', '7727050461', 'California', 'handcash', '180', 'Direct Payment', 'EOS20581188', '30 May 2024', 'May', '2024', 'confirm', '2024-05-30 06:27:44', '2024-05-31 02:15:45'),
(9, 'Elon', 'elon@spacex.com', '7727050461', 'California', 'handcash', '90', 'Direct Payment', 'EOS44021632', '30 May 2024', 'May', '2024', 'pending', '2024-05-30 06:34:30', '2024-05-30 06:34:30'),
(10, 'Elon', 'elon@spacex.com', '7727050461', 'California', 'handcash', '270', 'Direct Payment', 'EOS26194656', '30 May 2024', 'May', '2024', 'confirm', '2024-05-30 07:24:16', '2024-05-31 02:20:49'),
(11, 'Admin', 'admin@gmail.com', '7727050461', 'India', 'handcash', '1000', 'Direct Payment', 'EOS96957540', '31 May 2024', 'May', '2024', 'confirm', '2024-05-30 23:55:25', '2024-05-31 02:20:31'),
(12, 'Elon', 'elon@spacex.com', '7727050461', 'California', 'handcash', '100', 'Direct Payment', 'EOS90710696', '31 May 2024', 'May', '2024', 'pending', '2024-05-31 00:38:21', '2024-05-31 00:38:21'),
(19, 'Sam Altman', 'sam@openai.com', '7727050461', 'California', 'handcash', '1000', 'Direct Payment', 'EOS38639827', '04 August 2024', 'August', '2024', 'pending', '2024-08-03 19:12:02', '2024-08-03 19:12:02'),
(20, 'Sam', 'sam@openai.com', '7727050461', 'RWA D-9, Shiv Ram Park, Nangloi', 'handcash', '100', 'Direct Payment', 'EOS27251992', '04 August 2024', 'August', '2024', 'pending', '2024-08-03 19:21:45', '2024-08-03 19:21:45'),
(23, 'Aditya Bhardwaj', 'rakesh@gmail.com', '+917727050461', 'RWA D-9, Shiv Ram Park, Nangloi', NULL, '100', 'Razorpay', 'EOS80444145', '29 August 2024', 'August', '2024', 'pending', '2024-08-29 02:47:55', NULL),
(24, 'Aditya Bhardwaj', 'shashi@gmail.com', '7727050461', 'RWA D-9, Shiv Ram Park, Nangloi', NULL, '100', 'Razorpay', 'EOS95888550', '29 August 2024', 'August', '2024', 'pending', '2024-08-29 03:13:12', NULL),
(25, 'Instructor', 'instructor@gmail.com', '+917727050461', 'India', NULL, '1000', 'Razorpay', 'EOS37774676', '30 August 2024', 'August', '2024', 'pending', '2024-08-30 05:27:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(6, 'category.all', 'web', 'Category', '2024-08-13 13:15:51', '2024-08-13 13:15:51'),
(7, 'category.menu', 'web', 'Category', '2024-08-13 13:16:09', '2024-08-13 13:16:09'),
(8, 'subcategory.all', 'web', 'Category', '2024-08-13 13:16:24', '2024-08-13 13:16:24'),
(9, 'category.edit', 'web', 'Category', '2024-08-13 13:16:37', '2024-08-13 13:16:37'),
(10, 'category.delete', 'web', 'Category', '2024-08-13 13:16:50', '2024-08-13 13:16:50'),
(11, 'category.add', 'web', 'Category', '2024-08-13 13:17:03', '2024-08-13 13:17:03'),
(12, 'instructor.menu', 'web', 'Instructor', '2024-08-13 13:17:32', '2024-08-13 13:17:32'),
(14, 'coupon.all', 'web', 'Coupon', '2024-08-13 13:18:20', '2024-08-13 13:18:20'),
(15, 'coupon.add', 'web', 'Coupon', '2024-08-13 13:18:32', '2024-08-13 13:18:32'),
(16, 'coupon.edit', 'web', 'Coupon', '2024-08-13 13:18:48', '2024-08-13 13:18:48'),
(17, 'coupon.delete', 'web', 'Coupon', '2024-08-13 13:19:04', '2024-08-13 13:19:04'),
(18, 'setting.menu', 'web', 'Setting', '2024-08-13 13:19:22', '2024-08-13 13:19:22'),
(19, 'order.menu', 'web', 'Orders', '2024-08-13 13:19:42', '2024-08-13 13:19:42'),
(20, 'report.menu', 'web', 'Report', '2024-08-13 13:19:56', '2024-08-13 13:19:56'),
(21, 'review.menu', 'web', 'Review', '2024-08-13 13:20:14', '2024-08-13 13:20:14'),
(22, 'all.user.menu', 'web', 'All User', '2024-08-13 13:20:40', '2024-08-13 13:20:40'),
(23, 'blog.menu', 'web', 'Blog', '2024-08-13 13:21:21', '2024-08-13 13:21:21'),
(24, 'rolepermission.menu', 'web', 'Role and Permission', '2024-08-13 13:21:46', '2024-08-13 13:21:46'),
(25, 'coupon.menu', 'web', 'Coupon', '2024-08-13 21:15:14', '2024-08-13 21:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `course_id`, `user_id`, `instructor_id`, `parent_id`, `subject`, `question`, `created_at`, `updated_at`) VALUES
(1, 12, 7, 2, 1, 'I need some help regarding this test', 'Please let me know if it works', '2024-06-01 03:39:54', NULL),
(2, 12, 7, 2, 1, 'Last time failed', 'Trying again this time', '2024-06-01 03:42:28', NULL),
(3, 12, 7, 2, 2, 'sadfas', 'Please tell me what\'s your problem?', '2024-06-01 04:57:19', NULL),
(4, 12, 7, 2, 1, 'asdf', 'Please send your email address', '2024-06-01 05:02:21', NULL),
(5, 13, 7, 2, 1, 'How to upload videos?', 'How can I upload embed videos?', '2024-06-01 05:29:06', NULL),
(6, 13, 7, 2, 5, 'sadfasd', 'You can use a CDN', '2024-06-01 05:29:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` varchar(255) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manager', 'web', '2024-08-13 11:40:56', '2024-08-13 13:23:34'),
(2, 'Super Admin', 'web', '2024-08-13 11:45:03', '2024-08-13 13:23:44'),
(3, 'Admin', 'web', '2024-08-13 11:45:48', '2024-08-13 13:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(6, 2),
(7, 1),
(7, 2),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 3),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(19, 3),
(20, 2),
(21, 2),
(22, 2),
(23, 1),
(23, 2),
(23, 3),
(24, 2),
(25, 2),
(25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone`, `email`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Course/Logo1725026052_Mirror Square Analytics Logo-pages-2 (3).jpg', '+91-7727050461', 'support@mirrorsquareanalytics.com', 'RWA Gali No. 8, D-9, Shiv Ram Park, Nangloi, New Delhi - 110041', 'https://facebook.com/bhardwajaditya113', 'https://twitter.com', 'https://instagram.com', 'https://linkedin.com', '@ 2024 Mirror Square Analytics', NULL, '2024-08-30 08:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'sandbox.smtp.mailtrap.io', '2525', '875b055d89ebf4', '80c40d082a765c', 'tls', 'support@mirrorsquareanalytics.com', NULL, '2024-08-30 07:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 4, 'Web Development', 'web-development', NULL, NULL),
(3, 6, 'Finance', 'finance', NULL, '2024-05-14 07:18:27'),
(4, 4, 'Game Development', 'game-development', NULL, NULL),
(5, 4, 'Mobile Apps', 'mobile-apps', NULL, NULL),
(7, 6, 'Entrepreneurship', 'entrepreneurship', NULL, NULL),
(8, 6, 'Real Estate', 'real-estate', NULL, NULL),
(9, 7, 'IT Certificate', 'it-certificate', NULL, NULL),
(10, 7, 'Hardware', 'hardware', NULL, NULL),
(11, 7, 'Network & Security', 'network-&-security', NULL, NULL),
(12, 8, 'Accounting', 'accounting', NULL, NULL),
(13, 8, 'Cryptocurrency', 'cryptocurrency', NULL, NULL),
(14, 8, 'Blockchain', 'blockchain', NULL, NULL),
(15, 5, 'Graphic Design', 'graphic-design', NULL, NULL),
(16, 5, 'Web Design', 'web-design', NULL, NULL),
(17, 5, 'Design Tools', 'design-tools', NULL, NULL),
(18, 9, 'Personal Transformation', 'personal-transformation', NULL, NULL),
(19, 9, 'Productivity', 'productivity', NULL, NULL),
(20, 9, 'Leadership', 'leadership', NULL, NULL),
(21, 10, 'Digital Marketing', 'digital-marketing', NULL, NULL),
(22, 10, 'Search Engine Optimization', 'search-engine-optimization', NULL, NULL),
(23, 10, 'Social Media Marketing', 'social-media-marketing', NULL, '2024-05-16 03:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','instructor','user') NOT NULL DEFAULT 'user',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `last_seen` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$PJZHbMC7aiJ6ECCIhxoaL.eBoWT8zvFlJ3rFet1Nama3cx3gj.Mjm', '202405060834avatar-1.png', '7727050461', 'India', 'admin', '1', '2024-08-30 14:04:41', NULL, NULL, '2024-08-30 08:34:41'),
(2, 'Instructor', 'instructor', 'instructor@gmail.com', NULL, '$2y$10$qhO0m0Rd.iEyINenSjn6q.n91Q4evRx7uSz8I0T8pf3ZEm30ryGrq', '202405100739avatar-1.png', '+917727050461', 'India', 'instructor', '1', '2024-08-30 14:05:35', NULL, '2024-05-03 04:59:00', '2024-08-30 08:35:35'),
(7, 'Elon', 'ElonMusk', 'elon@spacex.com', NULL, '$2y$10$c24j6.UvRaFOroahtbBxau1YmwrMr0axpt6uncIOoZFsu4/Wmv5ui', '202405130423avatar-1.png', '7727050461', 'California', 'user', '1', '2024-08-22 08:09:38', NULL, '2024-05-12 22:52:00', '2024-08-22 02:39:38'),
(12, 'Sam Altman', NULL, 'sam@openai.com', NULL, '$2y$10$cgUvn5XmhYLed9BV4oyNz.wr9AIVOK1GUEHeF9YDnwPAQcZS7GW4O', '202408221258avatar-2.png', NULL, NULL, 'user', '1', '2024-08-29 07:34:25', NULL, '2024-08-03 19:10:03', '2024-08-29 02:04:25'),
(13, 'udemy', 'Udemy', 'udemy@gmail.com', NULL, '$2y$10$9sRhkvQEP9ZUErF2qP/mH.ad1Pr2P64R/iNq5AfYtmHBe8TRPe0Di', '202408190706avatar-1.png', '7727050461', 'India', 'admin', '1', '2024-08-19 09:34:57', NULL, '2024-08-19 01:29:57', '2024-08-19 04:04:57'),
(14, 'jonny11', 'jonny11', 'johnny@gmail.com', NULL, '$2y$10$BAg83svPlNhxqeCncwAJk.ky2YsMqiwumQ3LNUmBUGKX67kpkAQhm', NULL, '9868742660', 'USA1', 'admin', '1', NULL, NULL, '2024-08-19 01:32:16', '2024-08-19 01:58:37'),
(17, 'Tom Mueller', NULL, 'mueller@spacex.com', NULL, '$2y$10$otZ.NclS/dcTzDJgul2SN.55gdnOvyKbsYsRrtqO/KGlO0HjlZJi.', NULL, NULL, NULL, 'user', '1', '2024-08-29 08:06:46', NULL, '2024-08-29 02:08:45', '2024-08-29 02:36:46'),
(18, 'Rakesh', NULL, 'rakesh@gmail.com', NULL, '$2y$10$fP0EPg/qxAU22w2XlfdFC.dppeN0BGp9V77vJtkdl1WNl8Ua8xvUe', NULL, NULL, NULL, 'user', '1', '2024-08-30 14:23:43', NULL, '2024-08-29 02:46:12', '2024-08-30 08:53:43'),
(19, 'shashi', NULL, 'shashi@gmail.com', NULL, '$2y$10$flpYD3cOjWBu29i2B/y/x.Vzy5jm4yICoeu.TuKzPt0vlmp7DlgoS', NULL, NULL, NULL, 'user', '1', '2024-08-31 07:21:29', NULL, '2024-08-29 03:10:44', '2024-08-31 01:51:29'),
(20, 'Sergey Brin', NULL, 'brin@alphabet.com', NULL, '$2y$10$RyeornhBor8hhlbG5i1NY.gdy8XUWaBkrCtE4Gu.aWBhPlQTvoQ9C', NULL, NULL, NULL, 'user', '1', '2024-08-30 13:09:14', NULL, '2024-08-30 02:24:09', '2024-08-30 07:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(8, 7, 13, '2024-05-25 07:22:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_goals`
--
ALTER TABLE `course_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `course_goals`
--
ALTER TABLE `course_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
