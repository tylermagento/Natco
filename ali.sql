-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2018 at 02:10 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ali`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-17 21:30:18', '2018-06-17 21:30:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ali.local', 'yes'),
(2, 'home', 'http://ali.local', 'yes'),
(3, 'blogname', 'Natco', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'natco@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'natco', 'yes'),
(41, 'stylesheet', 'natco', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'nonce_key', 'Oz7%@`yAM+b.w3R!s,:7]`}zaQ$+>BwUSl_)5,<aB&vkF4X1]4mPR/6[B/6=[ #E', 'no'),
(108, 'nonce_salt', '9^X[xg{/I+B:p/wi[Un}sG(?/y#@,rQ!o~*?~HhS;unB8|<3:8^9-DOo[H$.c%/W', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1530343818;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530351018;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530371675;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530395753;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529272647;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530341317;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530341320;s:7:\"checked\";a:4:{s:5:\"natco\";s:3:\"2.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', '4Rg<LbrACdQ:?p@zK0]HjOTdiTD7MvYHU;XCH0bRFt#~7?J,/Q3H[7-5vK7A/N!}', 'no'),
(125, 'auth_salt', '[m|nhB7oi&`RHfP9Y/P`W-~*HElBM#frp&HYB)6W>LRE8X3$vk5iDQBX*KV#]}4M', 'no'),
(126, 'logged_in_key', '(7ZN&EV&Ne?75=FEp.%Z2)A?If5OVRi%)e~?,W/7>Dk=1ak7<E}E%[TKow[apw4s', 'no'),
(127, 'logged_in_salt', 'n:$TPG0j9rSU1^2>@CKZ^s7Oq*F/OOtfx#z8`2VJ_4tB+upqxU=[[u^n2d@0g(|h', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Natco Theme', 'yes'),
(146, 'theme_mods_natco', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:3:{s:27:\"sb-uploader/sb_uploader.php\";i:1529939545;s:22:\"tr-timthumb/plugin.php\";i:1529668317;s:30:\"advanced-custom-fields/acf.php\";i:1529500168;}', 'yes'),
(160, 'redux_version_upgraded_from', '3.6.9', 'yes'),
(161, 'r_notice_data', '\n{\"type\":\"redux-message\",\"title\":\"<strong>The Ultimate Redux Extensions Bundle!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"Attention Redux Developers!  Due to popular demand, we are extending the availability of the Ultimate Redux Extension Bundle, which includes <strong>all<\\/strong> of our extensions at over 40% off!  Grab you\'re copy today at <a href=\\\"https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle\\\">https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(162, 'redux_blast', '1529275699', 'yes'),
(170, 'thanglong-transients', 'a:1:{s:14:\"changed_values\";a:0:{}}', 'yes'),
(171, 'natco-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:10:\"hp_caption\";s:346:\"<div class=\"front-texttop\"><span class=\"ff-1\">Transforming Spaces</span>\r\n                <span class=\"ff-2\">into Inspiring Experiences</span></div>\r\n            <div class=\"front-textbottom\">As designers of luxury hospitality and residential interiors, we transform spaces into inspiring experiences that resonate with the spirit of place.</div>\";}s:9:\"last_save\";i:1529336415;}', 'yes'),
(172, 'natco', 'a:3:{s:8:\"last_tab\";s:1:\"1\";s:13:\"hp_background\";s:12:\"9,10,8,5,6,7\";s:10:\"hp_caption\";s:324:\"<div class=\"front-texttop\">\r\n<span class=\"ff-1\">Transforming Spaces</span>\r\n<span class=\"ff-2\">into Inspiring Experiences</span>\r\n</div>\r\n<div class=\"front-textbottom\">As designers of luxury hospitality and residential interiors, we transform spaces into inspiring experiences that resonate with the spirit of place.\r\n</div>\";}', 'yes'),
(202, 'acf_version', '5.6.1', 'yes'),
(309, 'cptui_new_install', 'false', 'yes'),
(311, 'cptui_post_types', 'a:1:{s:7:\"project\";a:28:{s:4:\"name\";s:7:\"project\";s:5:\"label\";s:8:\"Projects\";s:14:\"singular_label\";s:8:\"Projects\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";i:4;s:6:\"author\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(331, 'log_timthumb', '1529667981', 'yes'),
(332, '_timthumb_content', '1', 'yes'),
(333, 'tr_timthumb_backup_htaccess', '\n# BEGIN WordPress\n<IfModule mod_rewrite.c>\nRewriteEngine On\nRewriteBase /\nRewriteRule ^index\\.php$ - [L]\nRewriteCond %{REQUEST_FILENAME} !-f\nRewriteCond %{REQUEST_FILENAME} !-d\nRewriteRule . /index.php [L]\n</IfModule>\n\n# END WordPress', 'yes'),
(334, '_can_use_rewrite', '1', 'yes'),
(346, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(373, 'natco2', 'a:1:{s:10:\"hp_caption\";s:0:\"\";}', 'yes'),
(374, 'natco2-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1529839874;}', 'yes'),
(382, '_site_transient_timeout_browser_4d0c57b955bd3e8fc2e0a4f2a28035d2', '1530491332', 'no'),
(383, '_site_transient_browser_4d0c57b955bd3e8fc2e0a4f2a28035d2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(406, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1529886620;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(428, 'category_children', 'a:0:{}', 'yes'),
(441, 'widget_sbu_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'widget_sbu_post_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'widget_sbu_taxonomy_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(444, 'sbu_settings', 'O:8:\"stdClass\":8:{s:19:\"post_uploader_count\";i:1;s:14:\"post_uploaders\";s:150:\"a:1:{i:1;a:5:{s:5:\"label\";s:10:\"Post image\";s:12:\"set_featured\";i:1;s:12:\"fallback_url\";s:0:\"\";s:4:\"name\";s:10:\"post_image\";s:10:\"post_types\";a:0:{}}}\";s:19:\"page_uploader_count\";i:1;s:14:\"page_uploaders\";s:150:\"a:1:{i:1;a:5:{s:5:\"label\";s:10:\"Page image\";s:12:\"set_featured\";i:1;s:12:\"fallback_url\";s:0:\"\";s:4:\"name\";s:10:\"post_image\";s:10:\"post_types\";a:0:{}}}\";s:23:\"taxonomy_uploader_count\";i:1;s:18:\"taxonomy_uploaders\";s:100:\"a:1:{i:1;a:3:{s:5:\"label\";s:14:\"Taxonomy image\";s:4:\"name\";s:5:\"image\";s:12:\"fallback_url\";s:0:\"\";}}\";s:8:\"url_type\";s:8:\"relative\";s:20:\"official_wp_uploader\";b:1;}', 'yes'),
(457, '_site_transient_timeout_browser_17a696d7cc7015588dc3e6c0c130693a', '1530805278', 'no'),
(458, '_site_transient_browser_17a696d7cc7015588dc3e6c0c130693a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(477, '_site_transient_timeout_theme_roots', '1530343119', 'no'),
(478, '_site_transient_theme_roots', 'a:4:{s:5:\"natco\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(479, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530341323;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";s:35:\"redux-framework/redux-framework.php\";s:5:\"3.6.9\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.6.10\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:5:\"3.6.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2018/06/front-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2018/06/front-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"front-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"front-1-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"front-1-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"front-1-1024x533.png\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2018/06/front-2.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2018/06/front-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"front-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"front-2-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"front-2-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"front-2-1024x533.png\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2018/06/front-3.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2018/06/front-3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"front-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"front-3-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"front-3-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"front-3-1024x533.png\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2018/06/View-1.jpg'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:987;s:4:\"file\";s:18:\"2018/06/View-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"View-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"View-1-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"View-1-768x421.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:421;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"View-1-1024x561.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:561;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2018/06/v1.jpg'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:938;s:4:\"file\";s:14:\"2018/06/v1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"v1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"v1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"v1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"v1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2018/06/v2.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:938;s:4:\"file\";s:14:\"2018/06/v2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"v2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"v2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"v2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"v2-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1530200430:1'),
(17, 16, '_edit_last', '1'),
(18, 16, 'field_5b29268838d16', 'a:14:{s:3:\"key\";s:19:\"field_5b29268838d16\";s:5:\"label\";s:13:\"Author Name 1\";s:4:\"name\";s:13:\"author_name_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(19, 16, 'field_5b2926ab38d17', 'a:13:{s:3:\"key\";s:19:\"field_5b2926ab38d17\";s:5:\"label\";s:20:\"Author Description 1\";s:4:\"name\";s:20:\"author_description_1\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(20, 16, 'field_5b2926c038d18', 'a:11:{s:3:\"key\";s:19:\"field_5b2926c038d18\";s:5:\"label\";s:16:\"Author Picture 1\";s:4:\"name\";s:16:\"author_picture_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(21, 16, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(22, 16, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"templates/about.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(23, 16, 'position', 'normal'),
(24, 16, 'layout', 'no_box'),
(25, 16, 'hide_on_screen', ''),
(26, 16, '_edit_lock', '1529459027:1'),
(29, 19, '_edit_lock', '1529886646:1'),
(30, 19, '_edit_last', '1'),
(31, 28, '_wp_attached_file', '2018/06/ltw-about.mp4'),
(32, 28, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:5097552;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:35;s:16:\"length_formatted\";s:4:\"0:35\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1512462399;}'),
(33, 11, '_wp_page_template', 'default'),
(34, 11, 'team_members_0_name', 'Ali'),
(35, 11, '_team_members_0_name', 'field_5b2a52f96e41f'),
(36, 11, 'team_members_0_picture', 'a:1:{i:0;s:2:\"30\";}'),
(37, 11, '_team_members_0_picture', 'field_5b2a53036e420'),
(38, 11, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(39, 11, '_team_members_0_discription', 'field_5b2a53186e421'),
(40, 11, 'team_members', '2'),
(41, 11, '_team_members', 'field_5b2a52936e41e'),
(42, 11, 'video', '28'),
(43, 11, '_video', 'field_5b2a536601756'),
(44, 29, 'team_members_0_name', 'Ali'),
(45, 29, '_team_members_0_name', 'field_5b2a52f96e41f'),
(46, 29, 'team_members_0_picture', ''),
(47, 29, '_team_members_0_picture', 'field_5b2a53036e420'),
(48, 29, 'team_members_0_discription', ''),
(49, 29, '_team_members_0_discription', 'field_5b2a53186e421'),
(50, 29, 'team_members', '1'),
(51, 29, '_team_members', 'field_5b2a52936e41e'),
(52, 29, 'video', '28'),
(53, 29, '_video', 'field_5b2a536601756'),
(54, 30, '_wp_attached_file', '2018/06/about-anupan-b.jpg'),
(55, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/06/about-anupan-b.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"about-anupan-b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"about-anupan-b-216x300.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 31, '_wp_attached_file', '2018/06/about-anupan-s.jpg'),
(57, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:480;s:4:\"file\";s:26:\"2018/06/about-anupan-s.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"about-anupan-s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"about-anupan-s-219x300.jpg\";s:5:\"width\";i:219;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 32, '_wp_attached_file', '2018/06/about-su-b.jpg'),
(59, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/06/about-su-b.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"about-su-b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"about-su-b-216x300.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 33, '_wp_attached_file', '2018/06/about-su-s.jpg'),
(61, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:480;s:4:\"file\";s:22:\"2018/06/about-su-s.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"about-su-s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"about-su-s-219x300.jpg\";s:5:\"width\";i:219;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 11, 'team_members_1_name', 'Tyler'),
(63, 11, '_team_members_1_name', 'field_5b2a52f96e41f'),
(64, 11, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(65, 11, '_team_members_1_picture', 'field_5b2a53036e420'),
(66, 11, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(67, 11, '_team_members_1_discription', 'field_5b2a53186e421'),
(68, 34, 'team_members_0_name', 'Ali'),
(69, 34, '_team_members_0_name', 'field_5b2a52f96e41f'),
(70, 34, 'team_members_0_picture', 'a:2:{i:0;s:2:\"30\";i:1;s:2:\"31\";}'),
(71, 34, '_team_members_0_picture', 'field_5b2a53036e420'),
(72, 34, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(73, 34, '_team_members_0_discription', 'field_5b2a53186e421'),
(74, 34, 'team_members', '2'),
(75, 34, '_team_members', 'field_5b2a52936e41e'),
(76, 34, 'video', '28'),
(77, 34, '_video', 'field_5b2a536601756'),
(78, 34, 'team_members_1_name', 'Tyler'),
(79, 34, '_team_members_1_name', 'field_5b2a52f96e41f'),
(80, 34, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(81, 34, '_team_members_1_picture', 'field_5b2a53036e420'),
(82, 34, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(83, 34, '_team_members_1_discription', 'field_5b2a53186e421'),
(84, 35, 'team_members_0_name', 'Ali'),
(85, 35, '_team_members_0_name', 'field_5b2a52f96e41f'),
(86, 35, 'team_members_0_picture', 'a:2:{i:0;s:2:\"30\";i:1;s:2:\"31\";}'),
(87, 35, '_team_members_0_picture', 'field_5b2a53036e420'),
(88, 35, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(89, 35, '_team_members_0_discription', 'field_5b2a53186e421'),
(90, 35, 'team_members', '2'),
(91, 35, '_team_members', 'field_5b2a52936e41e'),
(92, 35, 'video', '28'),
(93, 35, '_video', 'field_5b2a536601756'),
(94, 35, 'team_members_1_name', 'Tyler'),
(95, 35, '_team_members_1_name', 'field_5b2a52f96e41f'),
(96, 35, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(97, 35, '_team_members_1_picture', 'field_5b2a53036e420'),
(98, 35, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(99, 35, '_team_members_1_discription', 'field_5b2a53186e421'),
(100, 36, 'team_members_0_name', 'Ali'),
(101, 36, '_team_members_0_name', 'field_5b2a52f96e41f'),
(102, 36, 'team_members_0_picture', 'a:2:{i:0;s:2:\"30\";i:1;s:2:\"31\";}'),
(103, 36, '_team_members_0_picture', 'field_5b2a53036e420'),
(104, 36, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(105, 36, '_team_members_0_discription', 'field_5b2a53186e421'),
(106, 36, 'team_members', '2'),
(107, 36, '_team_members', 'field_5b2a52936e41e'),
(108, 36, 'video', '28'),
(109, 36, '_video', 'field_5b2a536601756'),
(110, 36, 'team_members_1_name', 'Tyler'),
(111, 36, '_team_members_1_name', 'field_5b2a52f96e41f'),
(112, 36, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(113, 36, '_team_members_1_picture', 'field_5b2a53036e420'),
(114, 36, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(115, 36, '_team_members_1_discription', 'field_5b2a53186e421'),
(116, 11, 'video_description', 'Transforming spaces into inspiring experiences that resonate with the spirit of place.'),
(117, 11, '_video_description', 'field_5b2b9d183568a'),
(118, 38, 'team_members_0_name', 'Ali'),
(119, 38, '_team_members_0_name', 'field_5b2a52f96e41f'),
(120, 38, 'team_members_0_picture', 'a:2:{i:0;s:2:\"30\";i:1;s:2:\"31\";}'),
(121, 38, '_team_members_0_picture', 'field_5b2a53036e420'),
(122, 38, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(123, 38, '_team_members_0_discription', 'field_5b2a53186e421'),
(124, 38, 'team_members', '2'),
(125, 38, '_team_members', 'field_5b2a52936e41e'),
(126, 38, 'video', '28'),
(127, 38, '_video', 'field_5b2a536601756'),
(128, 38, 'team_members_1_name', 'Tyler'),
(129, 38, '_team_members_1_name', 'field_5b2a52f96e41f'),
(130, 38, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(131, 38, '_team_members_1_picture', 'field_5b2a53036e420'),
(132, 38, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(133, 38, '_team_members_1_discription', 'field_5b2a53186e421'),
(134, 38, 'video_description', 'Transforming spaces into inspiring experiences that resonate with the spirit of place.'),
(135, 38, '_video_description', 'field_5b2b9d183568a'),
(136, 11, 'team_members_0_position', 'Fouder'),
(137, 11, '_team_members_0_position', 'field_5b2ba3672abae'),
(138, 11, 'team_members_1_position', 'Developer'),
(139, 11, '_team_members_1_position', 'field_5b2ba3672abae'),
(140, 40, 'team_members_0_name', 'Ali'),
(141, 40, '_team_members_0_name', 'field_5b2a52f96e41f'),
(142, 40, 'team_members_0_picture', 'a:2:{i:0;s:2:\"30\";i:1;s:2:\"31\";}'),
(143, 40, '_team_members_0_picture', 'field_5b2a53036e420'),
(144, 40, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(145, 40, '_team_members_0_discription', 'field_5b2a53186e421'),
(146, 40, 'team_members', '2'),
(147, 40, '_team_members', 'field_5b2a52936e41e'),
(148, 40, 'video', '28'),
(149, 40, '_video', 'field_5b2a536601756'),
(150, 40, 'team_members_1_name', 'Tyler'),
(151, 40, '_team_members_1_name', 'field_5b2a52f96e41f'),
(152, 40, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(153, 40, '_team_members_1_picture', 'field_5b2a53036e420'),
(154, 40, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(155, 40, '_team_members_1_discription', 'field_5b2a53186e421'),
(156, 40, 'video_description', 'Transforming spaces into inspiring experiences that resonate with the spirit of place.'),
(157, 40, '_video_description', 'field_5b2b9d183568a'),
(158, 40, 'team_members_0_position', 'Fouder'),
(159, 40, '_team_members_0_position', 'field_5b2ba3672abae'),
(160, 40, 'team_members_1_position', 'Developer'),
(161, 40, '_team_members_1_position', 'field_5b2ba3672abae'),
(164, 44, '_edit_last', '1'),
(165, 44, '_edit_lock', '1530206158:1'),
(166, 45, '_edit_last', '1'),
(167, 45, '_edit_lock', '1529941518:1'),
(168, 47, '_wp_attached_file', '2018/06/1_PROJ_conrad_beijing_masthead.jpg'),
(169, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1738;s:6:\"height\";i:2000;s:4:\"file\";s:42:\"2018/06/1_PROJ_conrad_beijing_masthead.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"1_PROJ_conrad_beijing_masthead-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"1_PROJ_conrad_beijing_masthead-261x300.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"1_PROJ_conrad_beijing_masthead-768x884.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:884;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"1_PROJ_conrad_beijing_masthead-890x1024.jpg\";s:5:\"width\";i:890;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:44:\"1_PROJ_conrad_beijing_masthead-1738x1200.jpg\";s:5:\"width\";i:1738;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"1_PROJ_conrad_beijing_masthead-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 48, '_wp_attached_file', '2018/06/1_PROJ_shangrila_colombo_masthead.jpg'),
(171, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:904;s:4:\"file\";s:45:\"2018/06/1_PROJ_shangrila_colombo_masthead.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"1_PROJ_shangrila_colombo_masthead-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"1_PROJ_shangrila_colombo_masthead-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"1_PROJ_shangrila_colombo_masthead-768x347.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"1_PROJ_shangrila_colombo_masthead-1024x463.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:46:\"1_PROJ_shangrila_colombo_masthead-2000x904.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:904;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:45:\"1_PROJ_shangrila_colombo_masthead-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus_Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 49, '_wp_attached_file', '2018/06/2_PROJ_conrad_beijing_lobby_details.jpg'),
(173, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:799;s:4:\"file\";s:47:\"2018/06/2_PROJ_conrad_beijing_lobby_details.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"2_PROJ_conrad_beijing_lobby_details-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"2_PROJ_conrad_beijing_lobby_details-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"2_PROJ_conrad_beijing_lobby_details-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"2_PROJ_conrad_beijing_lobby_details-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:47:\"2_PROJ_conrad_beijing_lobby_details-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 50, '_wp_attached_file', '2018/06/2_PROJ_shangrila_colombo_reception.jpg'),
(175, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1283;s:4:\"file\";s:46:\"2018/06/2_PROJ_shangrila_colombo_reception.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"2_PROJ_shangrila_colombo_reception-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"2_PROJ_shangrila_colombo_reception-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"2_PROJ_shangrila_colombo_reception-768x493.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"2_PROJ_shangrila_colombo_reception-1024x657.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:48:\"2_PROJ_shangrila_colombo_reception-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:46:\"2_PROJ_shangrila_colombo_reception-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 51, '_wp_attached_file', '2018/06/3_PROJ_conrad_beijing_lobby.jpg'),
(177, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1188;s:6:\"height\";i:1499;s:4:\"file\";s:39:\"2018/06/3_PROJ_conrad_beijing_lobby.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"3_PROJ_conrad_beijing_lobby-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"3_PROJ_conrad_beijing_lobby-238x300.jpg\";s:5:\"width\";i:238;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"3_PROJ_conrad_beijing_lobby-768x969.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:969;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"3_PROJ_conrad_beijing_lobby-812x1024.jpg\";s:5:\"width\";i:812;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:41:\"3_PROJ_conrad_beijing_lobby-1188x1200.jpg\";s:5:\"width\";i:1188;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:39:\"3_PROJ_conrad_beijing_lobby-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 52, '_wp_attached_file', '2018/06/3_PROJ_shangrila_colombo_room.jpg'),
(179, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:41:\"2018/06/3_PROJ_shangrila_colombo_room.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"3_PROJ_shangrila_colombo_room-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"3_PROJ_shangrila_colombo_room-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"3_PROJ_shangrila_colombo_room-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"3_PROJ_shangrila_colombo_room-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:43:\"3_PROJ_shangrila_colombo_room-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"3_PROJ_shangrila_colombo_room-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 44, '_thumbnail_id', '52'),
(181, 44, 'gallery', 'a:6:{i:0;s:2:\"47\";i:1;s:2:\"48\";i:2;s:2:\"49\";i:3;s:2:\"50\";i:4;s:2:\"51\";i:5;s:2:\"52\";}'),
(182, 44, '_gallery', 'field_5b2cd93d14668'),
(183, 53, '_edit_last', '1'),
(184, 53, '_edit_lock', '1530200788:1'),
(185, 54, '_wp_attached_file', '2018/06/4_PROJ_shangrila_colombo_room.jpg'),
(186, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1283;s:4:\"file\";s:41:\"2018/06/4_PROJ_shangrila_colombo_room.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"4_PROJ_shangrila_colombo_room-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"4_PROJ_shangrila_colombo_room-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"4_PROJ_shangrila_colombo_room-768x493.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"4_PROJ_shangrila_colombo_room-1024x657.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:43:\"4_PROJ_shangrila_colombo_room-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"4_PROJ_shangrila_colombo_room-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 55, '_wp_attached_file', '2018/06/5_PROJ_conrad_beijing_reception.jpg'),
(188, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:828;s:4:\"file\";s:43:\"2018/06/5_PROJ_conrad_beijing_reception.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"5_PROJ_conrad_beijing_reception-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"5_PROJ_conrad_beijing_reception-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"5_PROJ_conrad_beijing_reception-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"5_PROJ_conrad_beijing_reception-1024x585.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:43:\"5_PROJ_conrad_beijing_reception-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 56, '_wp_attached_file', '2018/06/5_PROJ_shangrila_colombo_suite.jpg'),
(190, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1495;s:4:\"file\";s:42:\"2018/06/5_PROJ_shangrila_colombo_suite.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"5_PROJ_shangrila_colombo_suite-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"5_PROJ_shangrila_colombo_suite-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"5_PROJ_shangrila_colombo_suite-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"5_PROJ_shangrila_colombo_suite-1024x765.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:765;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:44:\"5_PROJ_shangrila_colombo_suite-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"5_PROJ_shangrila_colombo_suite-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus_Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 57, '_wp_attached_file', '2018/06/6_PROJ_conrad_beijing_pool.jpg'),
(192, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:786;s:4:\"file\";s:38:\"2018/06/6_PROJ_conrad_beijing_pool.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"6_PROJ_conrad_beijing_pool-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"6_PROJ_conrad_beijing_pool-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"6_PROJ_conrad_beijing_pool-768x302.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:302;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"6_PROJ_conrad_beijing_pool-1024x402.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:39:\"6_PROJ_conrad_beijing_pool-2000x786.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:786;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:38:\"6_PROJ_conrad_beijing_pool-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 58, '_wp_attached_file', '2018/06/6_PROJ_shangrila_colombo_suite_room.jpg'),
(194, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:47:\"2018/06/6_PROJ_shangrila_colombo_suite_room.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"6_PROJ_shangrila_colombo_suite_room-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"6_PROJ_shangrila_colombo_suite_room-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"6_PROJ_shangrila_colombo_suite_room-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"6_PROJ_shangrila_colombo_suite_room-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured-image\";a:4:{s:4:\"file\";s:49:\"6_PROJ_shangrila_colombo_suite_room-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:47:\"6_PROJ_shangrila_colombo_suite_room-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"Markus Gortz\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 53, '_thumbnail_id', '58'),
(196, 53, 'gallery', 'a:5:{i:0;s:2:\"54\";i:1;s:2:\"55\";i:2;s:2:\"56\";i:3;s:2:\"57\";i:4;s:2:\"58\";}'),
(197, 53, '_gallery', 'field_5b2cd93d14668'),
(198, 60, '_edit_last', '1'),
(199, 60, '_edit_lock', '1529822498:1'),
(200, 60, '_wp_page_template', 'default'),
(203, 53, 'location', 'Hanoi'),
(204, 53, '_location', 'field_5b2ce331b6510'),
(205, 53, 'category', 'Urban'),
(206, 53, '_category', 'field_5b2ce3769ba15'),
(207, 66, '_wp_attached_file', '2018/06/4_PROJ_conrad_beijing_reception_details.jpg'),
(208, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:51:\"2018/06/4_PROJ_conrad_beijing_reception_details.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"4_PROJ_conrad_beijing_reception_details-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"4_PROJ_conrad_beijing_reception_details-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"4_PROJ_conrad_beijing_reception_details-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-avatar\";a:4:{s:4:\"file\";s:51:\"4_PROJ_conrad_beijing_reception_details-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(209, 53, 'background', '66'),
(210, 53, '_background', 'field_5b2ce8cfd66d9'),
(211, 44, 'background', '49'),
(212, 44, '_background', 'field_5b2ce8cfd66d9'),
(213, 44, 'location', ''),
(214, 44, '_location', 'field_5b2ce331b6510'),
(215, 44, 'category', ''),
(216, 44, '_category', 'field_5b2ce3769ba15'),
(217, 67, '_edit_last', '1'),
(218, 67, '_edit_lock', '1529936738:1'),
(219, 67, '_wp_page_template', 'default'),
(220, 69, '_edit_last', '1'),
(221, 69, '_edit_lock', '1530200727:1'),
(222, 70, '_menu_item_type', 'post_type'),
(223, 70, '_menu_item_menu_item_parent', '0'),
(224, 70, '_menu_item_object_id', '11'),
(225, 70, '_menu_item_object', 'page'),
(226, 70, '_menu_item_target', ''),
(227, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 70, '_menu_item_xfn', ''),
(229, 70, '_menu_item_url', ''),
(231, 71, '_menu_item_type', 'post_type'),
(232, 71, '_menu_item_menu_item_parent', '0'),
(233, 71, '_menu_item_object_id', '60'),
(234, 71, '_menu_item_object', 'page'),
(235, 71, '_menu_item_target', ''),
(236, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 71, '_menu_item_xfn', ''),
(238, 71, '_menu_item_url', ''),
(240, 72, '_menu_item_type', 'post_type'),
(241, 72, '_menu_item_menu_item_parent', '0'),
(242, 72, '_menu_item_object_id', '67'),
(243, 72, '_menu_item_object', 'page'),
(244, 72, '_menu_item_target', ''),
(245, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 72, '_menu_item_xfn', ''),
(247, 72, '_menu_item_url', ''),
(248, 74, '_form', '[text* yourname class:form-contact placeholder \"Enter your name\"]\n[text company class:form-contact placeholder \"Enter your company\"]\n[tel* phone class:form-contact placeholder \"Enter your phone number\"]\n[email* email class:form-contact placeholder \"Enter your email\"]\n<label>Your message</label>\n[textarea* message class:form-contact]\n[submit \"Send\"]'),
(249, 74, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"Natco \"[your-subject]\"\";s:6:\"sender\";s:35:\"[yourname] <tylermagento@gmail.com>\";s:9:\"recipient\";s:18:\"cascasya@gmail.com\";s:4:\"body\";s:155:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[message]\n\n-- \nThis e-mail was sent from a contact form on Natco (http://ali.local)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(250, 74, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Natco \"[your-subject]\"\";s:6:\"sender\";s:27:\"Natco <wordpress@ali.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:102:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Natco (http://ali.local)\";s:18:\"additional_headers\";s:25:\"Reply-To: natco@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(251, 74, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(252, 74, '_additional_settings', ''),
(253, 74, '_locale', 'en_US'),
(254, 75, '_edit_last', '1'),
(255, 75, '_edit_lock', '1529935346:1'),
(256, 80, '_wp_attached_file', '2018/06/contact-masthead.jpg'),
(257, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1000;s:4:\"file\";s:28:\"2018/06/contact-masthead.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"contact-masthead-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"contact-masthead-216x300.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 67, 'background', '80'),
(259, 67, '_background', 'field_5b3037bd2a616'),
(260, 67, 'stores_0_address', 'Hanoi'),
(261, 67, '_stores_0_address', 'field_5b3038002a619'),
(262, 67, 'stores_0_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(263, 67, '_stores_0_information', 'field_5b3038182a61a'),
(264, 67, 'stores', '2'),
(265, 67, '_stores', 'field_5b3037e12a618'),
(266, 81, 'background', '80'),
(267, 81, '_background', 'field_5b3037bd2a616'),
(268, 81, 'stores_0_address', 'Hanoi'),
(269, 81, '_stores_0_address', 'field_5b3038002a619'),
(270, 81, 'stores_0_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(271, 81, '_stores_0_information', 'field_5b3038182a61a'),
(272, 81, 'stores', '1'),
(273, 81, '_stores', 'field_5b3037e12a618'),
(274, 82, 'background', '80'),
(275, 82, '_background', 'field_5b3037bd2a616'),
(276, 82, 'stores_0_address', 'Hanoi'),
(277, 82, '_stores_0_address', 'field_5b3038002a619'),
(278, 82, 'stores_0_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(279, 82, '_stores_0_information', 'field_5b3038182a61a'),
(280, 82, 'stores', '1'),
(281, 82, '_stores', 'field_5b3037e12a618'),
(282, 67, 'stores_1_address', 'Sydney'),
(283, 67, '_stores_1_address', 'field_5b3038002a619'),
(284, 67, 'stores_1_information', 'Ali Sydney Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(285, 67, '_stores_1_information', 'field_5b3038182a61a'),
(286, 83, 'background', '80'),
(287, 83, '_background', 'field_5b3037bd2a616'),
(288, 83, 'stores_0_address', 'Hanoi'),
(289, 83, '_stores_0_address', 'field_5b3038002a619'),
(290, 83, 'stores_0_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(291, 83, '_stores_0_information', 'field_5b3038182a61a'),
(292, 83, 'stores', '2'),
(293, 83, '_stores', 'field_5b3037e12a618'),
(294, 83, 'stores_1_address', 'Sydney'),
(295, 83, '_stores_1_address', 'field_5b3038002a619'),
(296, 83, 'stores_1_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(297, 83, '_stores_1_information', 'field_5b3038182a61a'),
(298, 84, 'background', '80'),
(299, 84, '_background', 'field_5b3037bd2a616'),
(300, 84, 'stores_0_address', 'Hanoi'),
(301, 84, '_stores_0_address', 'field_5b3038002a619'),
(302, 84, 'stores_0_information', 'Ali Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(303, 84, '_stores_0_information', 'field_5b3038182a61a'),
(304, 84, 'stores', '2'),
(305, 84, '_stores', 'field_5b3037e12a618'),
(306, 84, 'stores_1_address', 'Sydney'),
(307, 84, '_stores_1_address', 'field_5b3038002a619'),
(308, 84, 'stores_1_information', 'Ali Sydney Designworks Pte Ltd\r\n114 Lavender Street #05-62 CT Hub 2, Lobby 3\r\nSingapore 338729\r\n\r\nT: +65 6227 2872\r\nE: sin@ltwdesignworks.com'),
(309, 84, '_stores_1_information', 'field_5b3038182a61a'),
(310, 85, '_edit_last', '1'),
(311, 85, '_edit_lock', '1529942302:1'),
(314, 85, '_thumbnail_id', '92'),
(321, 88, '_edit_last', '1'),
(322, 88, '_edit_lock', '1529942287:1'),
(325, 85, 'type', 'normal'),
(326, 85, '_type', 'field_5b310ad9bb5bb'),
(327, 91, 'type', 'normal'),
(328, 91, '_type', 'field_5b310ad9bb5bb'),
(329, 92, '_wp_attached_file', '2018/06/journal-impressions-of-vietnam-3.jpg'),
(330, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:740;s:6:\"height\";i:416;s:4:\"file\";s:44:\"2018/06/journal-impressions-of-vietnam-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"journal-impressions-of-vietnam-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"journal-impressions-of-vietnam-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 93, 'type', 'normal'),
(334, 93, '_type', 'field_5b310ad9bb5bb'),
(335, 1, '_edit_lock', '1529942239:1'),
(336, 95, '_wp_attached_file', '2018/06/journal-impressions-of-vietnam-m.jpg'),
(337, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:44:\"2018/06/journal-impressions-of-vietnam-m.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"journal-impressions-of-vietnam-m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"journal-impressions-of-vietnam-m-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"journal-impressions-of-vietnam-m-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"journal-impressions-of-vietnam-m-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 85, 'background', '95'),
(341, 85, '_background', 'field_5b310ea2d6fb9'),
(342, 96, 'type', 'normal'),
(343, 96, '_type', 'field_5b310ad9bb5bb'),
(344, 96, 'background', '95'),
(345, 96, '_background', 'field_5b310ea2d6fb9'),
(346, 97, '_edit_last', '1'),
(347, 97, '_edit_lock', '1529942413:1'),
(350, 97, 'type', 'bg_full'),
(351, 97, '_type', 'field_5b310ad9bb5bb'),
(352, 97, 'background', '95'),
(353, 97, '_background', 'field_5b310ea2d6fb9'),
(354, 98, 'type', 'bg_full'),
(355, 98, '_type', 'field_5b310ad9bb5bb'),
(356, 98, 'background', '95'),
(357, 98, '_background', 'field_5b310ea2d6fb9'),
(358, 1, '_wp_trash_meta_status', 'publish'),
(359, 1, '_wp_trash_meta_time', '1529942561'),
(360, 1, '_wp_desired_post_slug', 'hello-world'),
(361, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(362, 100, 'team_members_0_name', 'Ali'),
(363, 100, '_team_members_0_name', 'field_5b2a52f96e41f'),
(364, 100, 'team_members_0_picture', 'a:1:{i:0;s:2:\"30\";}'),
(365, 100, '_team_members_0_picture', 'field_5b2a53036e420'),
(366, 100, 'team_members_0_discription', 'Born in Singapore and educated in the UK, Hong Lian (“HL”) began his design career in London working in the hospitality industry. Returning to Asia in 1979, he was named Managing Partner for the Singapore office of Chhada Siembieda &amp; Associates in 1981. During his decade-long tenure there, he grew the company’s luxury hotel portfolio and established his reputation as one of Asia’s most respected designers. In 1991, he founded H.L. Lim &amp; Associates, known now as LTW Designworks, which quickly became the design studio of choice for the world’s leading luxury hoteliers and hospitality operators.'),
(367, 100, '_team_members_0_discription', 'field_5b2a53186e421'),
(368, 100, 'team_members', '2'),
(369, 100, '_team_members', 'field_5b2a52936e41e'),
(370, 100, 'video', '28'),
(371, 100, '_video', 'field_5b2a536601756'),
(372, 100, 'team_members_1_name', 'Tyler'),
(373, 100, '_team_members_1_name', 'field_5b2a52f96e41f'),
(374, 100, 'team_members_1_picture', 'a:2:{i:0;s:2:\"32\";i:1;s:2:\"33\";}'),
(375, 100, '_team_members_1_picture', 'field_5b2a53036e420'),
(376, 100, 'team_members_1_discription', 'Marina Baracs is based in Milan, Italy and has been a Partner at LTW Designworks since 1996, setting up a branch office of LTW in Milan, which she headed from 1999 until 2014, working on prestigious five-star hotels in Europe, Africa, North America and Asia. Specialising in hotel and resort interior design, Marina is frequently invited as a lecturer and project leader at prestigious institutions, including the Politecnico di Milano, Scuola Politecnica di Design, Domus Academy Milan, and The Graduate School at Shenzhen, Tsinghua University, China.'),
(377, 100, '_team_members_1_discription', 'field_5b2a53186e421'),
(378, 100, 'video_description', 'Transforming spaces into inspiring experiences that resonate with the spirit of place.'),
(379, 100, '_video_description', 'field_5b2b9d183568a'),
(380, 100, 'team_members_0_position', 'Fouder'),
(381, 100, '_team_members_0_position', 'field_5b2ba3672abae'),
(382, 100, 'team_members_1_position', 'Developer'),
(383, 100, '_team_members_1_position', 'field_5b2ba3672abae'),
(388, 74, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(389, 69, '_wp_trash_meta_status', 'draft'),
(390, 69, '_wp_trash_meta_time', '1530201597'),
(391, 69, '_wp_desired_post_slug', ''),
(392, 103, '_edit_last', '1'),
(393, 103, '_edit_lock', '1530203412:1'),
(394, 103, '_thumbnail_id', '52'),
(395, 103, 'background', '10'),
(396, 103, '_background', 'field_5b2ce8cfd66d9'),
(397, 103, 'gallery', 'a:8:{i:0;s:2:\"92\";i:1;s:2:\"80\";i:2;s:2:\"66\";i:3;s:2:\"58\";i:4;s:2:\"57\";i:5;s:2:\"56\";i:6;s:2:\"49\";i:7;s:2:\"50\";}'),
(398, 103, '_gallery', 'field_5b2cd93d14668'),
(399, 103, 'location', 'Hanoi'),
(400, 103, '_location', 'field_5b2ce331b6510'),
(401, 103, 'category', 'Urban'),
(402, 103, '_category', 'field_5b2ce3769ba15');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-17 21:30:18', '2018-06-17 21:30:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-06-25 16:02:41', '2018-06-25 16:02:41', '', 0, 'http://ali.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-17 21:30:18', '2018-06-17 21:30:18', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://ali.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-17 21:30:18', '2018-06-17 21:30:18', '', 0, 'http://ali.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-17 21:30:18', '2018-06-17 21:30:18', '<h2>Who we are</h2><p>Our website address is: http://ali.local.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-17 21:30:18', '2018-06-17 21:30:18', '', 0, 'http://ali.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-17 22:53:22', '2018-06-17 22:53:22', '', 'front-1', '', 'inherit', 'open', 'closed', '', 'front-1', '', '', '2018-06-17 22:53:22', '2018-06-17 22:53:22', '', 0, 'http://ali.local/wp-content/uploads/2018/06/front-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-06-17 22:53:24', '2018-06-17 22:53:24', '', 'front-2', '', 'inherit', 'open', 'closed', '', 'front-2', '', '', '2018-06-17 22:53:24', '2018-06-17 22:53:24', '', 0, 'http://ali.local/wp-content/uploads/2018/06/front-2.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-06-17 22:53:26', '2018-06-17 22:53:26', '', 'front-3', '', 'inherit', 'open', 'closed', '', 'front-3', '', '', '2018-06-17 22:53:26', '2018-06-17 22:53:26', '', 0, 'http://ali.local/wp-content/uploads/2018/06/front-3.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-06-18 15:02:42', '2018-06-18 15:02:42', '', 'View 1', '', 'inherit', 'open', 'closed', '', 'view-1', '', '', '2018-06-18 15:02:42', '2018-06-18 15:02:42', '', 0, 'http://ali.local/wp-content/uploads/2018/06/View-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-06-18 15:11:11', '2018-06-18 15:11:11', '', 'v1', '', 'inherit', 'open', 'closed', '', 'v1', '', '', '2018-06-18 15:11:11', '2018-06-18 15:11:11', '', 0, 'http://ali.local/wp-content/uploads/2018/06/v1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-06-18 15:11:11', '2018-06-18 15:11:11', '', 'v2', '', 'inherit', 'open', 'closed', '', 'v2', '', '', '2018-06-28 16:00:46', '2018-06-28 16:00:46', '', 103, 'http://ali.local/wp-content/uploads/2018/06/v2.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-06-18 15:14:45', '2018-06-18 15:14:45', '<h3>WE AS A WHOLE</h3>\r\n<div class=\"header-3-sub\">Our Team</div>\r\nCollaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-06-28 15:41:45', '2018-06-28 15:41:45', '', 0, 'http://ali.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-06-18 15:14:45', '2018-06-18 15:14:45', '', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-18 15:14:45', '2018-06-18 15:14:45', '', 11, 'http://ali.local/2018/06/18/11-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-19 15:53:05', '2018-06-19 15:53:05', '', 'About', '', 'publish', 'closed', 'closed', '', 'acf_about', '', '', '2018-06-19 15:53:05', '2018-06-19 15:53:05', '', 0, 'http://ali.local/?post_type=acf&#038;p=16', 0, 'acf', '', 0),
(19, 1, '2018-06-20 13:11:38', '2018-06-20 13:11:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5b2a528a844dc', '', '', '2018-06-25 00:33:05', '2018-06-25 00:33:05', '', 0, 'http://ali.local/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(23, 1, '2018-06-20 13:14:27', '2018-06-20 13:14:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Team members', 'team_members', 'publish', 'closed', 'closed', '', 'field_5b2a52936e41e', '', '', '2018-06-25 00:33:05', '2018-06-25 00:33:05', '', 19, 'http://ali.local/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2018-06-20 13:14:27', '2018-06-20 13:14:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_5b2a52f96e41f', '', '', '2018-06-20 13:14:27', '2018-06-20 13:14:27', '', 23, 'http://ali.local/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2018-06-20 13:14:27', '2018-06-20 13:14:27', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:1;s:3:\"max\";i:2;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_5b2a53036e420', '', '', '2018-06-21 13:09:22', '2018-06-21 13:09:22', '', 23, 'http://ali.local/?post_type=acf-field&#038;p=25', 2, 'acf-field', '', 0),
(26, 1, '2018-06-20 13:14:27', '2018-06-20 13:14:27', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Discription', 'discription', 'publish', 'closed', 'closed', '', 'field_5b2a53186e421', '', '', '2018-06-21 13:18:57', '2018-06-21 13:18:57', '', 23, 'http://ali.local/?post_type=acf-field&#038;p=26', 3, 'acf-field', '', 0),
(27, 1, '2018-06-20 13:16:28', '2018-06-20 13:16:28', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:7:\"mp4,mov\";}', 'Video', 'video', 'publish', 'closed', 'closed', '', 'field_5b2a536601756', '', '', '2018-06-20 13:16:28', '2018-06-20 13:16:28', '', 19, 'http://ali.local/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2018-06-20 14:05:29', '2018-06-20 14:05:29', '', 'ltw-about', '', 'inherit', 'open', 'closed', '', 'ltw-about', '', '', '2018-06-20 14:05:29', '2018-06-20 14:05:29', '', 11, 'http://ali.local/wp-content/uploads/2018/06/ltw-about.mp4', 0, 'attachment', 'video/mp4', 0),
(29, 1, '2018-06-20 14:07:17', '2018-06-20 14:07:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-20 14:07:17', '2018-06-20 14:07:17', '', 11, 'http://ali.local/2018/06/20/11-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-06-20 14:08:37', '2018-06-20 14:08:37', '', 'about-anupan-b', '', 'inherit', 'open', 'closed', '', 'about-anupan-b', '', '', '2018-06-20 14:08:39', '2018-06-20 14:08:39', '', 11, 'http://ali.local/wp-content/uploads/2018/06/about-anupan-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-06-20 14:08:38', '2018-06-20 14:08:38', '', 'about-anupan-s', '', 'inherit', 'open', 'closed', '', 'about-anupan-s', '', '', '2018-06-20 14:08:38', '2018-06-20 14:08:38', '', 11, 'http://ali.local/wp-content/uploads/2018/06/about-anupan-s.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-06-20 14:09:16', '2018-06-20 14:09:16', '', 'about-su-b', '', 'inherit', 'open', 'closed', '', 'about-su-b', '', '', '2018-06-20 14:09:18', '2018-06-20 14:09:18', '', 11, 'http://ali.local/wp-content/uploads/2018/06/about-su-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-06-20 14:09:16', '2018-06-20 14:09:16', '', 'about-su-s', '', 'inherit', 'open', 'closed', '', 'about-su-s', '', '', '2018-06-20 14:09:16', '2018-06-20 14:09:16', '', 11, 'http://ali.local/wp-content/uploads/2018/06/about-su-s.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-06-20 14:09:39', '2018-06-20 14:09:39', '', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-20 14:09:39', '2018-06-20 14:09:39', '', 11, 'http://ali.local/2018/06/20/11-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-20 14:10:16', '2018-06-20 14:10:16', '<h3>WE AS A WHOLE</h3>\r\n\r\n<div class=\"header-3-sub\">Our Team</div>\r\n\r\n<p>Collaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.</p>', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-20 14:10:16', '2018-06-20 14:10:16', '', 11, 'http://ali.local/2018/06/20/11-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-06-20 14:10:25', '2018-06-20 14:10:25', '<h3>WE AS A WHOLE</h3>\r\n<div class=\"header-3-sub\">Our Team</div>\r\nCollaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-20 14:10:25', '2018-06-20 14:10:25', '', 11, 'http://ali.local/2018/06/20/11-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-06-21 12:42:11', '2018-06-21 12:42:11', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Video description', 'video_description', 'publish', 'closed', 'closed', '', 'field_5b2b9d183568a', '', '', '2018-06-21 12:42:11', '2018-06-21 12:42:11', '', 19, 'http://ali.local/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(38, 1, '2018-06-21 12:42:37', '2018-06-21 12:42:37', '<h3>WE AS A WHOLE</h3>\r\n<div class=\"header-3-sub\">Our Team</div>\r\nCollaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-21 12:42:37', '2018-06-21 12:42:37', '', 11, 'http://ali.local/2018/06/21/11-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-06-21 13:09:09', '2018-06-21 13:09:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_5b2ba3672abae', '', '', '2018-06-21 13:09:22', '2018-06-21 13:09:22', '', 23, 'http://ali.local/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2018-06-21 13:10:11', '2018-06-21 13:10:11', '<h3>WE AS A WHOLE</h3>\r\n<div class=\"header-3-sub\">Our Team</div>\r\nCollaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-21 13:10:11', '2018-06-21 13:10:11', '', 11, 'http://ali.local/2018/06/21/11-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-06-22 11:15:06', '2018-06-22 11:15:06', '<p class=\"entry-details__title t-large\">Changsha IFS\r\n<span class=\"entry-details__location\">Changsha, China</span></p>\r\n\r\n<div class=\"entry-details__desc\">\r\n<div class=\"text-content t-x-small\">\r\n<h2 class=\"t-small\">A bright new addition to the prominent <span class=\"caps\">IFS</span> portfolio</h2>\r\n<h3>Service</h3>\r\nMasterplanning, Retail Architecture, Retail Interior Design\r\n<h3>Sector</h3>\r\nRetail, Mixed-use\r\n<h3>Client</h3>\r\nThe Wharf Holdings\r\n<h3>Size</h3>\r\n230,000m<sup>2</sup>\r\n<h3>Challenge</h3>\r\nLocated in the Central Business District of Changsha, Benoy was tasked with Masterplanning this prominent mixed-site as well as delivering the heart of the scheme, the retail podium. Joining the high-profile ​<span class=\"pull-single\">‘</span><span class=\"caps\">IFS</span>’ portfolio, the brief called for an integrated community hub which would not only be a landmark retail destination but a place to bring together arts, culture and events.\r\n<h3>Solution</h3>\r\nThe scheme’s prominent location saw Benoy design Changsha <span class=\"caps\">IFS</span> as an extension of one of the busiest pedestrian streets in China – the Huang Xing Pedestrian Shopping Street – which sits opposite the development. Highly integrated, the scheme’s 230,000m<sup>2</sup> retail podium is connected to the development’s two towers which both house high-end hotels, as well as underground metro stations, to create a thriving commercial destination.\r\n<h3>Result</h3>\r\nAs a new landmark for the city, Changsha <span class=\"caps\">IFS</span> offers over 400 shops alongside a changing programme of exhibitions, cultural activities and festivals. From Entertainment to Lifestyle, Retail, Culture and Food and Beverage, this mixed-use destination is a truly unique addition for the Changsha community.\r\n\r\n<strong>Images courtesy of The Wharf Holdings</strong>\r\n\r\n</div>\r\n</div>', 'GRAND HYATT', '', 'publish', 'closed', 'closed', '', 'grand-hyatt', '', '', '2018-06-28 16:33:29', '2018-06-28 16:33:29', '', 0, 'http://ali.local/?post_type=project&#038;p=44', 0, 'project', '', 0),
(45, 1, '2018-06-22 11:13:01', '2018-06-22 11:13:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'group_5b2cd939460ce', '', '', '2018-06-22 12:17:49', '2018-06-22 12:17:49', '', 0, 'http://ali.local/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2018-06-22 11:13:01', '2018-06-22 11:13:01', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5b2cd93d14668', '', '', '2018-06-22 12:17:49', '2018-06-22 12:17:49', '', 45, 'http://ali.local/?post_type=acf-field&#038;p=46', 1, 'acf-field', '', 0),
(47, 1, '2018-06-22 11:14:19', '2018-06-22 11:14:19', '', '1_PROJ_conrad_beijing_masthead', '', 'inherit', 'open', 'closed', '', '1_proj_conrad_beijing_masthead', '', '', '2018-06-22 11:14:29', '2018-06-22 11:14:29', '', 44, 'http://ali.local/wp-content/uploads/2018/06/1_PROJ_conrad_beijing_masthead.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-06-22 11:14:21', '2018-06-22 11:14:21', '', '1_PROJ_shangrila_colombo_masthead', '', 'inherit', 'open', 'closed', '', '1_proj_shangrila_colombo_masthead', '', '', '2018-06-22 11:14:21', '2018-06-22 11:14:21', '', 44, 'http://ali.local/wp-content/uploads/2018/06/1_PROJ_shangrila_colombo_masthead.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-06-22 11:14:22', '2018-06-22 11:14:22', '', '2_PROJ_conrad_beijing_lobby_details', '', 'inherit', 'open', 'closed', '', '2_proj_conrad_beijing_lobby_details', '', '', '2018-06-22 11:14:22', '2018-06-22 11:14:22', '', 44, 'http://ali.local/wp-content/uploads/2018/06/2_PROJ_conrad_beijing_lobby_details.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-06-22 11:14:23', '2018-06-22 11:14:23', '', '2_PROJ_shangrila_colombo_reception', '', 'inherit', 'open', 'closed', '', '2_proj_shangrila_colombo_reception', '', '', '2018-06-28 16:00:33', '2018-06-28 16:00:33', '', 44, 'http://ali.local/wp-content/uploads/2018/06/2_PROJ_shangrila_colombo_reception.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-06-22 11:14:25', '2018-06-22 11:14:25', '', '3_PROJ_conrad_beijing_lobby', '', 'inherit', 'open', 'closed', '', '3_proj_conrad_beijing_lobby', '', '', '2018-06-22 11:14:25', '2018-06-22 11:14:25', '', 44, 'http://ali.local/wp-content/uploads/2018/06/3_PROJ_conrad_beijing_lobby.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-06-22 11:14:26', '2018-06-22 11:14:26', '', '3_PROJ_shangrila_colombo_room', '', 'inherit', 'open', 'closed', '', '3_proj_shangrila_colombo_room', '', '', '2018-06-22 11:14:26', '2018-06-22 11:14:26', '', 44, 'http://ali.local/wp-content/uploads/2018/06/3_PROJ_shangrila_colombo_room.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-06-22 11:17:10', '2018-06-22 11:17:10', 'Backlit display boxes with etched street scenes of early 20<sup>th</sup> Century Shanghai life give a subtle articulation through backlit display boxes.', 'Up-co Luong Yen', '', 'publish', 'closed', 'closed', '', 'up-co-luong-yen', '', '', '2018-06-22 12:18:37', '2018-06-22 12:18:37', '', 0, 'http://ali.local/?post_type=project&#038;p=53', 0, 'project', '', 0),
(54, 1, '2018-06-22 11:16:38', '2018-06-22 11:16:38', '', '4_PROJ_shangrila_colombo_room', '', 'inherit', 'open', 'closed', '', '4_proj_shangrila_colombo_room', '', '', '2018-06-22 11:16:49', '2018-06-22 11:16:49', '', 53, 'http://ali.local/wp-content/uploads/2018/06/4_PROJ_shangrila_colombo_room.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-06-22 11:16:40', '2018-06-22 11:16:40', '', '5_PROJ_conrad_beijing_reception', '', 'inherit', 'open', 'closed', '', '5_proj_conrad_beijing_reception', '', '', '2018-06-22 11:16:40', '2018-06-22 11:16:40', '', 53, 'http://ali.local/wp-content/uploads/2018/06/5_PROJ_conrad_beijing_reception.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-06-22 11:16:41', '2018-06-22 11:16:41', '', '5_PROJ_shangrila_colombo_suite', '', 'inherit', 'open', 'closed', '', '5_proj_shangrila_colombo_suite', '', '', '2018-06-22 11:16:41', '2018-06-22 11:16:41', '', 53, 'http://ali.local/wp-content/uploads/2018/06/5_PROJ_shangrila_colombo_suite.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-06-22 11:16:42', '2018-06-22 11:16:42', '', '6_PROJ_conrad_beijing_pool', '', 'inherit', 'open', 'closed', '', '6_proj_conrad_beijing_pool', '', '', '2018-06-22 11:16:42', '2018-06-22 11:16:42', '', 53, 'http://ali.local/wp-content/uploads/2018/06/6_PROJ_conrad_beijing_pool.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-06-22 11:16:43', '2018-06-22 11:16:43', '', '6_PROJ_shangrila_colombo_suite_room', '', 'inherit', 'open', 'closed', '', '6_proj_shangrila_colombo_suite_room', '', '', '2018-06-22 11:16:43', '2018-06-22 11:16:43', '', 53, 'http://ali.local/wp-content/uploads/2018/06/6_PROJ_shangrila_colombo_suite_room.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-06-22 11:25:47', '2018-06-22 11:25:47', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2018-06-22 11:25:47', '2018-06-22 11:25:47', '', 0, 'http://ali.local/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-06-22 11:25:47', '2018-06-22 11:25:47', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-06-22 11:25:47', '2018-06-22 11:25:47', '', 60, 'http://ali.local/2018/06/22/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-06-22 11:53:34', '2018-06-22 11:53:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_5b2ce331b6510', '', '', '2018-06-22 12:17:49', '2018-06-22 12:17:49', '', 45, 'http://ali.local/?post_type=acf-field&#038;p=63', 2, 'acf-field', '', 0),
(64, 1, '2018-06-22 11:54:37', '2018-06-22 11:54:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_5b2ce3769ba15', '', '', '2018-06-22 12:17:49', '2018-06-22 12:17:49', '', 45, 'http://ali.local/?post_type=acf-field&#038;p=64', 3, 'acf-field', '', 0),
(65, 1, '2018-06-22 12:17:42', '2018-06-22 12:17:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b2ce8cfd66d9', '', '', '2018-06-22 12:17:49', '2018-06-22 12:17:49', '', 45, 'http://ali.local/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(66, 1, '2018-06-22 12:18:28', '2018-06-22 12:18:28', '', '4_PROJ_conrad_beijing_reception_details', '', 'inherit', 'open', 'closed', '', '4_proj_conrad_beijing_reception_details', '', '', '2018-06-22 12:18:28', '2018-06-22 12:18:28', '', 53, 'http://ali.local/wp-content/uploads/2018/06/4_PROJ_conrad_beijing_reception_details.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-06-22 12:47:02', '2018-06-22 12:47:02', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-25 14:06:16', '2018-06-25 14:06:16', '', 0, 'http://ali.local/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-06-22 12:47:02', '2018-06-22 12:47:02', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-22 12:47:02', '2018-06-22 12:47:02', '', 67, 'http://ali.local/2018/06/22/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-06-28 15:59:57', '2018-06-28 15:59:57', 'Contehntrh sjdydkhkh', 'Title product', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-06-28 15:59:57', '2018-06-28 15:59:57', '', 0, 'http://ali.local/?post_type=project&#038;p=69', 0, 'project', '', 0),
(70, 1, '2018-06-24 07:07:10', '2018-06-24 07:07:10', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-06-24 07:07:10', '2018-06-24 07:07:10', '', 0, 'http://ali.local/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2018-06-24 07:07:10', '2018-06-24 07:07:10', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-06-24 07:07:10', '2018-06-24 07:07:10', '', 0, 'http://ali.local/?p=71', 2, 'nav_menu_item', '', 0),
(72, 1, '2018-06-24 07:07:10', '2018-06-24 07:07:10', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-06-24 07:07:10', '2018-06-24 07:07:10', '', 0, 'http://ali.local/?p=72', 3, 'nav_menu_item', '', 0),
(73, 1, '2018-06-25 00:28:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-25 00:28:53', '0000-00-00 00:00:00', '', 0, 'http://ali.local/?p=73', 0, 'post', '', 0),
(74, 1, '2018-06-25 00:30:20', '2018-06-25 00:30:20', '[text* yourname class:form-contact placeholder \"Enter your name\"]\r\n[text company class:form-contact placeholder \"Enter your company\"]\r\n[tel* phone class:form-contact placeholder \"Enter your phone number\"]\r\n[email* email class:form-contact placeholder \"Enter your email\"]\r\n<label>Your message</label>\r\n[textarea* message class:form-contact]\r\n[submit \"Send\"]\n1\nNatco \"[your-subject]\"\n[yourname] <tylermagento@gmail.com>\ncascasya@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Natco (http://ali.local)\nReply-To: [email]\n\n\n\n\nNatco \"[your-subject]\"\nNatco <wordpress@ali.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Natco (http://ali.local)\nReply-To: natco@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-06-28 15:54:43', '2018-06-28 15:54:43', '', 0, 'http://ali.local/?post_type=wpcf7_contact_form&#038;p=74', 0, 'wpcf7_contact_form', '', 0),
(75, 1, '2018-06-25 00:32:47', '2018-06-25 00:32:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"67\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5b3037b1b8656', '', '', '2018-06-25 14:04:45', '2018-06-25 14:04:45', '', 0, 'http://ali.local/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2018-06-25 00:32:47', '2018-06-25 00:32:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b3037bd2a616', '', '', '2018-06-25 00:32:47', '2018-06-25 00:32:47', '', 75, 'http://ali.local/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2018-06-25 00:32:47', '2018-06-25 00:32:47', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Stores', 'stores', 'publish', 'closed', 'closed', '', 'field_5b3037e12a618', '', '', '2018-06-25 00:32:47', '2018-06-25 00:32:47', '', 75, 'http://ali.local/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2018-06-25 00:32:47', '2018-06-25 00:32:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5b3038002a619', '', '', '2018-06-25 00:32:47', '2018-06-25 00:32:47', '', 77, 'http://ali.local/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2018-06-25 00:32:47', '2018-06-25 00:32:47', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Information', 'information', 'publish', 'closed', 'closed', '', 'field_5b3038182a61a', '', '', '2018-06-25 14:04:45', '2018-06-25 14:04:45', '', 77, 'http://ali.local/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2018-06-25 00:34:27', '2018-06-25 00:34:27', '', 'contact-masthead', '', 'inherit', 'open', 'closed', '', 'contact-masthead', '', '', '2018-06-25 00:34:27', '2018-06-25 00:34:27', '', 67, 'http://ali.local/wp-content/uploads/2018/06/contact-masthead.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-06-25 00:35:02', '2018-06-25 00:35:02', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-25 00:35:02', '2018-06-25 00:35:02', '', 67, 'http://ali.local/2018/06/25/67-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-06-25 14:05:24', '2018-06-25 14:05:24', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-25 14:05:24', '2018-06-25 14:05:24', '', 67, 'http://ali.local/2018/06/25/67-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-06-25 14:05:58', '2018-06-25 14:05:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-25 14:05:58', '2018-06-25 14:05:58', '', 67, 'http://ali.local/2018/06/25/67-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-06-25 14:06:16', '2018-06-25 14:06:16', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-25 14:06:16', '2018-06-25 14:06:16', '', 67, 'http://ali.local/2018/06/25/67-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-06-25 14:28:33', '2018-06-25 14:28:33', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2018-06-25 16:00:21', '2018-06-25 16:00:21', '', 0, 'http://ali.local/?p=85', 0, 'post', '', 0),
(86, 1, '2018-06-25 14:28:33', '2018-06-25 14:28:33', 'sdfsdfsdf', 'Test post', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-25 14:28:33', '2018-06-25 14:28:33', '', 85, 'http://ali.local/2018/06/25/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-06-25 15:33:19', '2018-06-25 15:33:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Post', 'post', 'publish', 'closed', 'closed', '', 'group_5b310ad1450ed', '', '', '2018-06-25 15:48:04', '2018-06-25 15:48:04', '', 0, 'http://ali.local/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2018-06-25 15:33:19', '2018-06-25 15:33:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"normal\";s:6:\"Normal\";s:7:\"bg_full\";s:15:\"Background full\";}s:13:\"default_value\";a:1:{i:0;s:8:\"bg_right\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_5b310ad9bb5bb', '', '', '2018-06-25 15:36:38', '2018-06-25 15:36:38', '', 88, 'http://ali.local/?post_type=acf-field&#038;p=89', 0, 'acf-field', '', 0),
(90, 1, '2018-06-25 15:37:46', '2018-06-25 15:37:46', 'sdfsdfsdf', 'Impressions of Vietnam', '', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2018-06-25 15:37:46', '2018-06-25 15:37:46', '', 85, 'http://ali.local/85-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2018-06-25 15:38:13', '2018-06-25 15:38:13', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n<p class=\"lwidth\"></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<p class=\"lwidth\"></p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<p class=\"lwidth\"></p>\r\n\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-25 15:38:13', '2018-06-25 15:38:13', '', 85, 'http://ali.local/85-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-06-25 15:38:44', '2018-06-25 15:38:44', '', 'journal-impressions-of-vietnam-3', '', 'inherit', 'open', 'closed', '', 'journal-impressions-of-vietnam-3', '', '', '2018-06-25 15:38:44', '2018-06-25 15:38:44', '', 85, 'http://ali.local/wp-content/uploads/2018/06/journal-impressions-of-vietnam-3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2018-06-25 15:38:48', '2018-06-25 15:38:48', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-25 15:38:48', '2018-06-25 15:38:48', '', 85, 'http://ali.local/85-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-06-25 15:48:04', '2018-06-25 15:48:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b310ea2d6fb9', '', '', '2018-06-25 15:48:04', '2018-06-25 15:48:04', '', 88, 'http://ali.local/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2018-06-25 16:00:15', '2018-06-25 16:00:15', '', 'journal-impressions-of-vietnam-m', '', 'inherit', 'open', 'closed', '', 'journal-impressions-of-vietnam-m', '', '', '2018-06-25 16:00:59', '2018-06-25 16:00:59', '', 85, 'http://ali.local/wp-content/uploads/2018/06/journal-impressions-of-vietnam-m.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-06-25 16:00:21', '2018-06-25 16:00:21', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-25 16:00:21', '2018-06-25 16:00:21', '', 85, 'http://ali.local/85-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-06-25 16:01:02', '2018-06-25 16:01:02', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam 2', '', 'publish', 'open', 'open', '', 'impressions-of-vietnam-2', '', '', '2018-06-25 16:01:02', '2018-06-25 16:01:02', '', 0, 'http://ali.local/?p=97', 0, 'post', '', 0),
(98, 1, '2018-06-25 16:01:02', '2018-06-25 16:01:02', '<p class=\"lwidth\">Recently, LTW’s senior designers Anupan and Kyrsten headed to Vietnam to explore Ho Chi Minh City as part of research for a new luxury project. For three days the intrepid duo explored the streets, culture, materials and food of Vietnam, eager to find inspiration around every corner.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-1.jpg\" />\r\n<p class=\"lwidth\">Ho Chi Minh (HCM), also known as Saigon, is the largest city in Vietnam with a population of 8.5 million people. HCM’s architecture and culture is the reconciliation between French and Chinese influence, with modern office skyscrapers amidst Oriental-style pagodas, and a mix of traditional Vietnamese food stalls next to cool, modern cafés serving the most amazing coffee and baguettes lining the streets.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-2.jpg\" />\r\n<blockquote>IMPRESSION</blockquote>\r\n<p class=\"lwidth\">The city can appear to be a collection of concrete high-rises and charming small shops, slow-moving traffic with a tsunami of motorbikes. But Saigon is more diverse than you’d imagine. New developments and an upcoming metro system are also in the pipeline!</p>\r\n\r\n<blockquote>THE STREETS</blockquote>\r\n<p class=\"lwidth\">The city is layered with pastel colours and textures, which is the effect of French influence with the Vietnamese culture on things like architecture, food and fashion. Despite modern retail and marketing forces, a strong sense of history and tradition still keeps the city as captivating as it was 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-3.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-4.jpg\" />\r\n\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-5.jpg\" />\r\n<p class=\"lwidth\"><i>From Left: Bánh bèo, steamed rice cake served in a tray of 8, and Phở</i></p>\r\n\r\n<blockquote>FOOD AND CUISINE</blockquote>\r\n<p class=\"lwidth\">Food options are plentiful with many independent and fine dining restaurants. Cà phê đá, also known as Vietnamese Ice Coffee, seems to be the national beverage. It is made using medium to coarse ground dark roast Vietnamese-grown coffee with a small metal drip filter (known as phin) where hot water is added and the drip filter releases drops of hot coffee slowly into the cup. Once it has finished dripping, it is poured into a glass of ice. There are many other variations, like cà phê sữa đá, known as ice coffee with condensed milk, and cà phê sữa nóng, the hot version. The best way to enjoy your cup of coffee is to grab a chair/stool and sit by the roadside watching the cars and motorbikes go by, as done by the locals.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-6.jpg\" />\r\n<p class=\"lwidth\">The café scene in Vietnam is rapidly growing, with new pop-up concepts of a gallery + retail in a café; definitely a concept you wouldn’t have seen 10 years ago.</p>\r\n<img class=\"img-ani toggle\" src=\"http://methodsg.com/ltw/images/uploads/journal-impressions-of-vietnam-7.jpg\" />\r\n<blockquote>ART SCENE</blockquote>\r\n<p class=\"lwidth\">There is an impressive ongoing effort by galleries to support local artists and handicrafts. We came across several small galleries and shops featuring both traditional and modern Vietnamese designs. A lot of the Vietnamese artists have also expanded beyond borders and are exhibiting their works abroad, allowing a glimpse into Vietnamese tradition, culture and crafts on the global stage.</p>', 'Impressions of Vietnam 2', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-25 16:01:02', '2018-06-25 16:01:02', '', 97, 'http://ali.local/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-06-25 16:02:41', '2018-06-25 16:02:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-25 16:02:41', '2018-06-25 16:02:41', '', 1, 'http://ali.local/1-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-06-28 15:41:45', '2018-06-28 15:41:45', '<h3>WE AS A WHOLE</h3>\r\n<div class=\"header-3-sub\">Our Team</div>\r\nCollaboration is our cornerstone, forged through shared experiences, proactive dialogue and a mutual passion for design. It shows in the stories we tell through the spaces we create. Every individual element unique in itself, thoughtfully connected, more impactful and engaging as a whole.', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-28 15:41:45', '2018-06-28 15:41:45', '', 11, 'http://ali.local/11-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-06-28 15:43:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 15:43:00', '0000-00-00 00:00:00', '', 0, 'http://ali.local/?post_type=project&p=101', 0, 'project', '', 0),
(102, 1, '2018-06-28 15:48:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 15:48:57', '0000-00-00 00:00:00', '', 0, 'http://ali.local/?post_type=project&p=102', 0, 'project', '', 0),
(103, 1, '2018-06-28 16:00:46', '2018-06-28 16:00:46', '', 'Vincom Timecity', '', 'publish', 'closed', 'closed', '', 'vincom-timecity', '', '', '2018-06-28 16:00:46', '2018-06-28 16:00:46', '', 0, 'http://ali.local/?post_type=project&#038;p=103', 0, 'project', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Blogs', 'blogs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(70, 2, 0),
(71, 2, 0),
(72, 2, 0),
(85, 3, 0),
(97, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"8c32ca1b16f9195428f17a12ebd12764f470c9df9f69733b5e029e1111bb68f0\";a:4:{s:10:\"expiration\";i:1530373274;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530200474;}s:64:\"3b71caef62fb9c4bf3fd1e4cb1bb0054c264c13fda9b32088e8d682255218069\";a:4:{s:10:\"expiration\";i:1530373281;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530200481;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '73'),
(18, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1530203604'),
(21, 1, 'acf_user_settings', 'a:0:{}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:\"acf-group_5b2a528a844dc\";i:1;s:23:\"acf-group_5b2cd939460ce\";i:2;s:12:\"revisionsdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:21:\"add-post-type-project\";i:1;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BW5jYZopQ1kjTndRcf1IxSxD8SDefx/', 'admin', 'natco@gmail.com', '', '2018-06-17 21:30:18', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
