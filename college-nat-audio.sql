-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 05 juin 2018 à 13:01
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `college-nat-audio`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/college-nat-audio.fr', 'yes'),
(2, 'home', 'http://localhost:8888/college-nat-audio.fr', 'yes'),
(3, 'blogname', 'Collège National d&#039;Audioprothèse', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'r.briot@rapidopc.net', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"cahiers_audition/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"cahiers_audition/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"cahiers_audition/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"cahiers_audition/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"cahiers_audition/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"cahiers_audition/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"cahiers_audition/([^/]+)/embed/?$\";s:49:\"index.php?cahiers_audition=$matches[1]&embed=true\";s:37:\"cahiers_audition/([^/]+)/trackback/?$\";s:43:\"index.php?cahiers_audition=$matches[1]&tb=1\";s:45:\"cahiers_audition/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?cahiers_audition=$matches[1]&paged=$matches[2]\";s:52:\"cahiers_audition/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?cahiers_audition=$matches[1]&cpage=$matches[2]\";s:41:\"cahiers_audition/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?cahiers_audition=$matches[1]&page=$matches[2]\";s:33:\"cahiers_audition/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"cahiers_audition/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"cahiers_audition/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cahiers_audition/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cahiers_audition/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"cahiers_audition/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'understrap', 'yes'),
(41, 'stylesheet', 'understrap-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:2:{i:0;s:10:\"calendar-2\";i:1;s:8:\"search-3\";}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1528206162;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1528218821;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528222273;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1528222279;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523289872;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(142, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"r.briot@rapidopc.net\";s:7:\"version\";s:5:\"4.9.4\";s:9:\"timestamp\";i:1519582291;}', 'no'),
(180, 'current_theme', 'UnderStrapChild', 'yes'),
(181, 'theme_mods_understrap', 'a:9:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"ffffff\";s:11:\"custom_logo\";i:17;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528197062;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:2:{i:0;s:10:\"calendar-2\";i:1;s:8:\"search-3\";}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(182, 'theme_switched', '', 'yes'),
(194, 'recently_activated', 'a:0:{}', 'yes'),
(197, 'cptui_new_install', 'false', 'yes'),
(198, 'cptui_post_types', 'a:1:{s:16:\"cahiers_audition\";a:28:{s:4:\"name\";s:16:\"cahiers_audition\";s:5:\"label\";s:26:\"Cahiers de l&#039;audition\";s:14:\"singular_label\";s:25:\"Cahier de l&#039;audition\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"2\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:83:\"http://localhost:8888/college-nat-audio.fr/wp-content/uploads/2018/04/Fichier-4.png\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"all_items\";s:16:\"Tous les cahiers\";s:7:\"add_new\";s:18:\"Ajouter un nouveau\";s:12:\"add_new_item\";s:25:\"Ajouter un nouveau cahier\";s:9:\"edit_item\";s:16:\"Editer un cahier\";s:8:\"new_item\";s:14:\"Nouveau cahier\";s:9:\"view_item\";s:14:\"Voir le cahier\";s:10:\"view_items\";s:16:\"Voir les cahiers\";s:12:\"search_items\";s:20:\"Rechercher un cahier\";s:9:\"not_found\";s:18:\"Cahier non-trouvé\";s:18:\"not_found_in_trash\";s:31:\"Pas de cahier dans la corbeille\";s:10:\"items_list\";s:17:\"Liste des cahiers\";s:9:\"menu_name\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(288, '_site_transient_timeout_browser_b91c62e14e294e3e699f079152ae3d27', '1528800118', 'no'),
(289, '_site_transient_browser_b91c62e14e294e3e699f079152ae3d27', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(299, '_transient_is_multi_author', '0', 'yes'),
(300, '_transient_understrap_categories', '1', 'yes'),
(301, '_site_transient_timeout_browser_92155205f3e35399c2dac7aa9b7cc3aa', '1528801599', 'no'),
(302, '_site_transient_browser_92155205f3e35399c2dac7aa9b7cc3aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(303, '_site_transient_timeout_theme_roots', '1528198611', 'no'),
(304, '_site_transient_theme_roots', 'a:5:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:16:\"understrap-child\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}', 'no'),
(310, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1528196889;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(311, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1528196890;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.7\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(312, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1528196890;s:7:\"checked\";a:5:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:16:\"understrap-child\";s:5:\"0.8.1\";s:10:\"understrap\";s:5:\"0.8.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(314, 'theme_mods_understrap-child', 'a:6:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(6, 6, '_wp_attached_file', '2018/04/Fichier-4.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:15;s:6:\"height\";i:18;s:4:\"file\";s:21:\"2018/04/Fichier-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1523312038:1'),
(10, 2, '_edit_lock', '1528197363:1'),
(13, 2, '_edit_last', '1'),
(14, 17, '_wp_attached_file', '2018/04/unsaf.jpg'),
(15, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:315;s:4:\"file\";s:17:\"2018/04/unsaf.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"unsaf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"unsaf-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(20, 23, '_menu_item_type', 'post_type'),
(21, 23, '_menu_item_menu_item_parent', '0'),
(22, 23, '_menu_item_object_id', '2'),
(23, 23, '_menu_item_object', 'page'),
(24, 23, '_menu_item_target', ''),
(25, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 23, '_menu_item_xfn', ''),
(27, 23, '_menu_item_url', ''),
(28, 23, '_menu_item_orphaned', '1523296406'),
(29, 24, '_menu_item_type', 'post_type'),
(30, 24, '_menu_item_menu_item_parent', '0'),
(31, 24, '_menu_item_object_id', '2'),
(32, 24, '_menu_item_object', 'page'),
(33, 24, '_menu_item_target', ''),
(34, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 24, '_menu_item_xfn', ''),
(36, 24, '_menu_item_url', ''),
(37, 24, '_menu_item_orphaned', '1523296406'),
(38, 1, '_edit_lock', '1523301180:1'),
(39, 1, '_edit_last', '1'),
(41, 27, '_edit_last', '1'),
(42, 27, '_edit_lock', '1523300754:1'),
(43, 27, '_wp_page_template', 'page_accueil.php'),
(44, 1, '_thumbnail_id', '17');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-25 19:11:12', '2018-02-25 18:11:12', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-04-09 21:15:22', '2018-04-09 19:15:22', '', 0, 'http://localhost:8888/college-nat-audio.fr/?p=1', 0, 'post', '', 0),
(2, 1, '2018-02-25 19:11:12', '2018-02-25 18:11:12', '<header>\n<div class=\"horiz-bar\"></div>\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\n<p id=\"enseignements\">- aux Facultés de Médecine,\n- aux Facultés de Pharmacie,\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\n\n</header>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Actualités</h2>\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article></section>\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Partenaire</h2>\n<div id=\"partenaire\"><img src=\"//localhost:3000/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" class=\"alignnone size-medium wp-image-17\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\n\n</div>', 'Collège National d\'Audioprothèse', '', 'publish', 'closed', 'open', '', 'page-d-accueil', '', '', '2018-04-09 21:05:22', '2018-04-09 19:05:22', '', 0, 'http://localhost:8888/college-nat-audio.fr/?page_id=2', 0, 'page', '', 0),
(6, 1, '2018-04-09 19:11:46', '2018-04-09 17:11:46', '', 'Fichier 4', '', 'inherit', 'open', 'closed', '', 'fichier-4', '', '', '2018-04-09 19:11:46', '2018-04-09 17:11:46', '', 0, 'http://localhost:8888/college-nat-audio.fr/wp-content/uploads/2018/04/Fichier-4.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-04-09 19:13:58', '2018-04-09 17:13:58', 'ceci est un cahier', 'cahier 1', '', 'publish', 'closed', 'closed', '', 'cahier-1', '', '', '2018-04-10 00:13:58', '2018-04-09 22:13:58', '', 0, 'http://localhost:8888/college-nat-audio.fr/?post_type=cahiers_audition&#038;p=7', 0, 'cahiers_audition', '', 0),
(11, 1, '2018-04-09 19:26:45', '2018-04-09 17:26:45', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n\r\n    <title>Collège National d\'Audioprothèse</title>\r\n    <link rel=\"stylesheet\" href=\"./css/styles.css\">\r\n  </head>\r\n  <body>\r\n    <header>\r\n    <h1>Collège National d\'Audioprothèse</h1>\r\n    <div class=\"horiz-bar\">\r\n    </div>\r\n    <h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n    <p id=\"enseignements\">\r\n      - aux Facultés de Médecine, <br>\r\n      - aux Facultés de Pharmacie, <br>\r\n      - au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)\r\n    </p>\r\n    </header>\r\n    <div class=\"ban\">\r\n\r\n    </div>\r\n    <main>\r\n\r\n    <h2 class=\"actu\">Actualités</h2>\r\n    <section>\r\n      <article class=\"actu\">\r\n          <img src=\"./images/actu1.jpg\" alt=\"\">\r\n          <h3 class=\"actu_title\"> <a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a> </h3>\r\n          <span class=\"date_actu\">le 30 Janvier 2018</span>\r\n      </article>\r\n      <article class=\"actu\">\r\n          <img src=\"./images/actu2.jpg\" alt=\"\">\r\n          <h3 class=\"actu_title\"> <a href=\"#\">Nouveaux membres honoraires du Collège</a> </h3>\r\n          <span class=\"date_actu\">le 30 Janvier 2018</span>\r\n      </article>\r\n\r\n    </section>\r\n      </main>\r\n      <a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n\r\n    <div class=\"ban\"></div>\r\n\r\n    <h2 class=\"actu\">Partenaire</h2>\r\n\r\n    <div id=\"partenaire\">\r\n      <img src=\"./images/unsaf.jpg\" alt=\"\">\r\n      <p>Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.</p>\r\n    </div>\r\n\r\n  </body>\r\n</html>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:26:45', '2018-04-09 17:26:45', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-09 19:28:55', '2018-04-09 17:28:55', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n&nbsp;\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./images/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./images/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"./images/unsaf.jpg\" alt=\"\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>\r\n&nbsp;', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:28:55', '2018-04-09 17:28:55', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-09 19:29:12', '2018-04-09 17:29:12', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n&nbsp;\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./images/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./images/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"./images/unsaf.jpg\" alt=\"\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>\r\n&nbsp;', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:29:12', '2018-04-09 17:29:12', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-09 19:29:18', '2018-04-09 17:29:18', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n&nbsp;\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./images/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./images/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"./images/unsaf.jpg\" alt=\"\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:29:18', '2018-04-09 17:29:18', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-09 19:29:46', '2018-04-09 17:29:46', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./images/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./images/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"./images/unsaf.jpg\" alt=\"\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:29:46', '2018-04-09 17:29:46', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-04-09 19:34:25', '2018-04-09 17:34:25', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"./img/unsaf.jpg\" alt=\"\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:34:25', '2018-04-09 17:34:25', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-09 19:35:35', '2018-04-09 17:35:35', '', 'unsaf', '', 'inherit', 'open', 'closed', '', 'unsaf', '', '', '2018-04-09 19:35:35', '2018-04-09 17:35:35', '', 2, 'http://localhost:8888/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-04-09 19:36:01', '2018-04-09 17:36:01', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"http://localhost:8888/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" class=\"alignnone size-medium wp-image-17\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:36:01', '2018-04-09 17:36:01', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-09 19:38:29', '2018-04-09 17:38:29', '<header>\r\n<h1>Collège National d\'Audioprothèse</h1>\r\n<div class=\"horiz-bar\"></div>\r\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\r\n<p id=\"enseignements\">- aux Facultés de Médecine,\r\n- aux Facultés de Pharmacie,\r\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\r\n\r\n</header>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Actualités</h2>\r\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\r\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\r\n<span class=\"date_actu\">le 30 Janvier 2018</span>\r\n\r\n</article></section>\r\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\r\n<div class=\"ban\"></div>\r\n<h2 class=\"actu\">Partenaire</h2>\r\n<div id=\"partenaire\"><img src=\"//localhost:3000/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" class=\"alignnone size-medium wp-image-17\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\r\n\r\n</div>', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:38:29', '2018-04-09 17:38:29', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-04-09 19:43:14', '2018-04-09 17:43:14', '<header>\n<div class=\"horiz-bar\"></div>\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\n<p id=\"enseignements\">- aux Facultés de Médecine,\n- aux Facultés de Pharmacie,\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\n\n</header>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Actualités</h2>\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article></section>\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Partenaire</h2>\n<div id=\"partenaire\"><img src=\"//localhost:3000/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" class=\"alignnone size-medium wp-image-17\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\n\n</div>', 'Collège National d\'Audioprothèse', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-09 19:43:14', '2018-04-09 17:43:14', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-autosave-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-09 19:53:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-09 19:53:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/college-nat-audio.fr/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-04-09 19:53:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-09 19:53:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/college-nat-audio.fr/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-04-09 20:57:22', '2018-04-09 18:57:22', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-09 20:57:22', '2018-04-09 18:57:22', '', 1, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-04-09 21:05:22', '2018-04-09 19:05:22', '<header>\n<div class=\"horiz-bar\"></div>\n<h2>Audioprothésistes chargés d\'enseignements :</h2>\n<p id=\"enseignements\">- aux Facultés de Médecine,\n- aux Facultés de Pharmacie,\n- au Conservatoire National des Arts et Métiers (diplôme d\'état d\'audioprothèse)</p>\n\n</header>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Actualités</h2>\n<section><article class=\"actu\"><img src=\"./img/actu1.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux bulletins d\'inscription aux Cahiers de l\'Audition pour 2018</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article><article class=\"actu\"><img src=\"./img/actu2.jpg\" alt=\"\" />\n<h3 class=\"actu_title\"><a href=\"#\">Nouveaux membres honoraires du Collège</a></h3>\n<span class=\"date_actu\">le 30 Janvier 2018</span>\n\n</article></section>\n<a id=\"plus-actu\" href=\"#\">Voir toutes les actualités ... </a>\n<div class=\"ban\"></div>\n<h2 class=\"actu\">Partenaire</h2>\n<div id=\"partenaire\"><img src=\"//localhost:3000/college-nat-audio.fr/wp-content/uploads/2018/04/unsaf-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" class=\"alignnone size-medium wp-image-17\" />Le Collège National d\'Audioprothèse est partenaire du Syndicat National des Audioprothésistes.\n\n</div>', 'Collège National d\'Audioprothèse', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 21:05:22', '2018-04-09 19:05:22', '', 2, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-04-09 21:06:45', '2018-04-09 19:06:45', 'egrgz(gerg', 'ergaegergaerg', '', 'publish', 'closed', 'closed', '', 'ergaegergaerg', '', '', '2018-04-09 21:08:15', '2018-04-09 19:08:15', '', 0, 'http://localhost:8888/college-nat-audio.fr/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-04-09 21:06:45', '2018-04-09 19:06:45', 'egrgz(gerg', 'ergaegergaerg', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-04-09 21:06:45', '2018-04-09 19:06:45', '', 27, 'http://localhost:8888/college-nat-audio.fr/2018/04/09/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-06-05 12:41:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-05 12:41:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/college-nat-audio.fr/?p=29', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ronan'),
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
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4ddc07e16e6b24784f21309a7eda7f633e0d2e7e1f9d519bc625b02ed326afec\";a:4:{s:10:\"expiration\";i:1528368117;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36\";s:5:\"login\";i:1528195317;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '29'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1523294801'),
(21, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(22, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:19:\"dashboard_right_now\";s:4:\"side\";s:36:\"dashboard_primary,dashboard_activity\";s:7:\"column3\";s:21:\"dashboard_quick_press\";s:7:\"column4\";s:0:\"\";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:30:\"add-post-type-cahiers_audition\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(26, 2, 'nickname', 'isabel'),
(27, 2, 'first_name', 'Isabel'),
(28, 2, 'last_name', 'Teixeira'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(38, 2, 'wp_user_level', '10'),
(39, 2, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ronan', '$P$BWNNTlvI8chnv/K07sX9NtzFj1/8UG.', 'ronan', 'r.briot@rapidopc.net', '', '2018-02-25 18:11:12', '', 0, 'ronan'),
(2, 'isabel', '$P$B9MYpcF2TUutqAg451EVWfcUCCPIKp1', 'isabel', 'teixeirarisabel@gmail.com', '', '2018-06-05 13:01:22', '1528203683:$P$B7Z7gJnpBvQ8cJ7mAXZkjsvKw6JVRH1', 0, 'Isabel Teixeira');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
