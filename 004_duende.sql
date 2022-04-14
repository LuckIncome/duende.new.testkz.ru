-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2022 г., 07:13
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `004_duende`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advantages`
--

INSERT INTO `advantages` (`id`, `number`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, 10, 'Лет опыта', '2022-03-13 14:30:00', '2022-03-13 14:32:27'),
(2, 407, 'Успешных проектов', '2022-03-13 14:31:00', '2022-03-13 14:32:15'),
(3, 19, 'Проектов за рубежом', '2022-03-13 14:31:00', '2022-03-13 14:31:57');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-03-10 04:53:18', '2022-03-10 04:53:18');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('phone','graph','social','address','email','map') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phone',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translate_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `city`, `type`, `icon`, `value`, `translate_value`, `link`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 'almaty', 'phone', NULL, '+7 727 236 04 80', '', '77272360480', 1, 1, '2022-03-11 03:33:00', '2022-03-11 03:59:21'),
(2, 'almaty', 'phone', NULL, '+7 775 371 55 46', '', '77753715546', 1, 2, '2022-03-11 03:34:00', '2022-04-13 09:23:33'),
(3, 'astana', 'phone', NULL, '+7 775 371 55 46', '', '77172768263', 1, 1, '2022-03-11 03:34:00', '2022-04-13 09:23:47'),
(4, 'almaty', 'email', NULL, 'studio@duende.kz', '', 'studio@duende.kz', 1, 1, '2022-03-11 03:35:47', '2022-03-11 03:35:47'),
(5, 'almaty', 'address', NULL, 'https://2gis.kz/almaty/search/%D0%91%D0%A6%20%C2%ABEvolution%C2%BB%20%2C%20%D1%83%D0%BB.%20%D0%91%D1%83%D1%85%D0%B0%D1%80%20%D0%96%D1%8B%D1%80%D0%B0%D1%83%20%2026%2F1%2C%20%20%D0%BE%D1%84.%2061?m=76.968027%2C43.208102%2F13.25', 'БЦ «Evolution» , ул. Бухар Жырау  26/1,  оф. 61', NULL, 1, 1, '2022-03-11 03:38:00', '2022-03-14 06:28:20'),
(6, 'astana', 'address', NULL, 'https://2gis.kz/nur_sultan/search/%D1%83%D0%BB.%20%D0%A8%D0%B5%D0%B2%D1%87%D0%B5%D0%BD%D0%BA%D0%BE%2010%2C%20%D0%BE%D1%84.%2011?m=71.392383%2C51.178526%2F14.04', '', NULL, 1, 1, '2022-03-11 03:38:00', '2022-04-08 08:30:47'),
(7, 'almaty', 'social', 'contacts\\March2022\\VqSU04xvBJMNa3XtYYwm.svg', 'Whatsapp', '', 'https://api.whatsapp.com/send?phone=77753715546', 1, 1, '2022-03-11 03:41:00', '2022-03-18 14:21:31'),
(8, 'almaty', 'social', 'contacts\\March2022\\rIo0KCZj0eXxynBRL199.svg', 'Instagram', '', 'https://www.instagram.com/duende.studio/', 1, 2, '2022-03-11 03:42:00', '2022-03-18 14:21:01');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 0, 0, 0, 0, '{}', 6),
(48, 6, 'body', 'rich_text_box', 'Контент', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 6, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(50, 6, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 11),
(51, 6, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 12),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"\\u041e\\u0422\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\",\"ACTIVE\":\"\\u0412\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, '{}', 13),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(55, 6, 'image', 'image', 'Изображения', 0, 0, 0, 0, 0, 0, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(56, 6, 'type', 'select_dropdown', 'Тип страницы', 1, 1, 1, 1, 1, 1, '{\"default\":\"simple\",\"options\":{\"home\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"order\":\"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0438\",\"cat\":\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b\",\"simple\":\"\\u0414\\u0440\\u0443\\u0433\\u043e\\u0435\"}}', 3),
(57, 6, 'seo_title', 'text', 'SEO Заголовок', 0, 1, 1, 1, 1, 1, '{}', 10),
(69, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 10, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"phone\",\"options\":{\"phone\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"graph\":\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b\",\"social\":\"\\u0421\\u043e\\u0446\\u0441\\u0435\\u0442\\u044c\",\"address\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"email\":\"Email\",\"map\":\"\\u041a\\u0430\\u0440\\u0442\\u0430 (JS)\"}}', 3),
(72, 10, 'icon', 'image', 'Иконка (svg)', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(73, 10, 'value', 'text_area', 'Значение', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 10, 'translate_value', 'text_area', 'Значение c Переводом', 0, 0, 1, 1, 1, 1, '{}', 6),
(75, 10, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 7),
(76, 10, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 8),
(77, 10, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(78, 10, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 10),
(79, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(80, 10, 'city', 'select_dropdown', 'Город', 0, 1, 1, 1, 1, 1, '{\"default\":\"almaty\",\"options\":{\"almaty\":\"\\u0410\\u043b\\u043c\\u0430\\u0442\\u044b\",\"astana\":\"\\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\"}}', 2),
(81, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 11, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 11, 'alt', 'text', 'Alt Изображения', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 11, 'bg', 'checkbox', 'Есть ли фон?', 0, 0, 0, 0, 0, 0, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 5),
(85, 11, 'slug', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 11, 'created_at', 'timestamp', 'Дата Создания', 0, 0, 1, 1, 0, 1, '{}', 7),
(87, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 12, 'name', 'text', 'Названия', 0, 1, 1, 1, 1, 1, '{}', 2),
(90, 12, 'slug', 'text', 'Ссылка (Уникальная)', 1, 1, 1, 1, 1, 1, '{}', 3),
(91, 12, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 4),
(92, 12, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 5),
(93, 12, 'seo_title', 'text', 'SEO Заголовок', 0, 1, 1, 1, 1, 1, '{}', 6),
(94, 12, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 7),
(95, 12, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 8),
(96, 12, 'created_at', 'timestamp', 'Дата Создания', 0, 0, 1, 1, 0, 1, '{}', 9),
(97, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(98, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 13, 'project_category_id', 'text', 'Project Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 13, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 13, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 5),
(102, 13, 'images', 'multiple_images', 'Много Изображении', 0, 1, 1, 1, 1, 1, '{}', 7),
(103, 13, 'slug', 'text', 'Ссылка', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(104, 13, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 9),
(105, 13, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 10),
(106, 13, 'seo_title', 'text', 'SEO Заголовок', 0, 1, 1, 1, 1, 1, '{}', 11),
(107, 13, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 12),
(108, 13, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 13),
(109, 13, 'created_at', 'timestamp', 'Дата Создания', 0, 0, 1, 1, 0, 1, '{}', 14),
(110, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(111, 13, 'project_belongsto_project_category_relationship', 'relationship', 'Категория Проектов', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProjectCategory\",\"table\":\"project_category\",\"type\":\"belongsTo\",\"column\":\"project_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(112, 13, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 6),
(113, 14, 'id', 'text', 'Номер', 1, 1, 0, 0, 0, 0, '{}', 1),
(114, 14, 'name', 'text', 'Названия', 0, 1, 1, 1, 1, 1, '{}', 2),
(115, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(116, 14, 'city', 'text', 'Город', 0, 1, 1, 1, 1, 1, '{}', 4),
(117, 14, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, '{}', 5),
(118, 14, 'text', 'text_area', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 6),
(119, 14, 'created_at', 'timestamp', 'Дата Создания', 0, 1, 1, 1, 0, 1, '{}', 7),
(120, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(121, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 15, 'number', 'number', 'Цифры', 1, 1, 1, 1, 1, 1, '{}', 2),
(123, 15, 'excerpt', 'text_area', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(124, 15, 'created_at', 'timestamp', 'Дата Создания', 0, 0, 1, 1, 0, 1, '{}', 4),
(125, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(126, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(127, 16, 'text', 'rich_text_box', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 2),
(128, 16, 'created_at', 'timestamp', 'Дата Создания', 0, 0, 1, 1, 0, 1, '{}', 4),
(129, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(130, 11, 'image_bg', 'image', 'Изображения Фона', 0, 1, 1, 1, 1, 1, '{}', 3),
(131, 16, 'second_text', 'rich_text_box', 'Текст №2', 0, 0, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 04:53:18', '2022-03-14 06:04:05'),
(10, 'contacts', 'contacts', 'Контакт', 'Контакты', 'voyager-location', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-11 03:14:26', '2022-03-11 03:32:52'),
(11, 'partners', 'partners', 'Партнер', 'Партнеры', 'voyager-people', 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-11 06:25:01', '2022-03-16 06:00:59'),
(12, 'project_category', 'project-category', 'Категории Проекта', 'Категории Проекта', 'voyager-categories', 'App\\Models\\ProjectCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(13, 'project', 'project', 'Проект', 'Проекты', 'voyager-company', 'App\\Models\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-11 08:56:01', '2022-03-11 11:00:49'),
(14, 'feedback', 'feedback', 'Заявка', 'Заявки', 'voyager-pen', 'App\\Models\\Feedback', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(15, 'advantages', 'advantages', 'Преимущество', 'Преимущество', 'voyager-star-two', 'App\\Models\\Advantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(16, 'texts', 'texts', 'Текст', 'Текст', 'voyager-character', 'App\\Models\\Text', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-13 14:51:25', '2022-04-07 14:15:45');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `city`, `phone`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Тест', '020@i-marketing.kz', 'Алматы', '+7 (777) 777-77-77', 'Тест', '2022-03-28 14:59:37', '2022-03-28 14:59:37'),
(2, 'Meow', 'yanitta@inbox.ru', 'Алматы', '+7 (702) 202-70-80', 'тест', '2022-04-08 09:24:07', '2022-04-08 09:24:07');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(2, 'header_menu', '2022-03-11 03:45:03', '2022-03-11 03:45:03');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель Управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-03-10 04:53:17', '2022-03-10 11:10:30', 'voyager.dashboard', 'null'),
(2, 1, 'Медиа файлы', '', '_self', 'voyager-images', '#000000', 5, 4, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.media.index', 'null'),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', 5, 5, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.users.index', 'null'),
(4, 1, 'Роли', '', '_self', 'voyager-lock', '#000000', 5, 6, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.roles.index', 'null'),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 8, '2022-03-10 04:53:17', '2022-03-13 14:51:54', NULL, ''),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', '#000000', NULL, 6, '2022-03-10 04:53:17', '2022-03-13 14:51:54', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-03-10 04:53:17', '2022-03-11 09:06:50', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', 16, 3, '2022-03-10 04:53:17', '2022-03-11 06:26:01', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 5, 8, '2022-03-10 04:53:18', '2022-03-11 09:06:50', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 5, 7, '2022-03-10 04:53:18', '2022-03-11 09:06:50', 'voyager.posts.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', 16, 2, '2022-03-10 04:53:18', '2022-03-11 06:26:01', 'voyager.pages.index', 'null'),
(15, 1, 'Контакты', '', '_self', 'voyager-location', NULL, 16, 1, '2022-03-11 03:14:26', '2022-03-11 03:15:28', 'voyager.contacts.index', NULL),
(16, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 7, '2022-03-11 03:15:09', '2022-03-13 14:51:54', NULL, ''),
(17, 2, 'ABOUT US', '/', '_self', NULL, '#000000', NULL, 5, '2022-03-11 03:45:30', '2022-03-11 09:07:52', NULL, ''),
(18, 2, 'PROJECTS', '/#projects', '_self', NULL, '#000000', NULL, 6, '2022-03-11 03:45:54', '2022-03-11 09:07:59', NULL, ''),
(19, 2, 'SERVICES', '/#services', '_self', NULL, '#000000', NULL, 7, '2022-03-11 03:46:09', '2022-03-11 09:08:06', NULL, ''),
(20, 2, 'CONTACTS', '/#contact', '_self', NULL, '#000000', NULL, 8, '2022-03-11 03:46:25', '2022-03-11 09:08:12', NULL, ''),
(21, 1, 'Партнеры', '', '_self', 'voyager-people', NULL, NULL, 4, '2022-03-11 06:25:01', '2022-03-13 14:47:33', 'voyager.partners.index', NULL),
(22, 1, 'Категории Проекта', '', '_self', 'voyager-categories', NULL, 24, 1, '2022-03-11 08:50:09', '2022-03-11 09:07:06', 'voyager.project-category.index', NULL),
(23, 1, 'Проекты', '', '_self', 'voyager-company', NULL, 24, 2, '2022-03-11 08:56:01', '2022-03-11 09:07:06', 'voyager.project.index', NULL),
(24, 1, 'Проекты', '', '_self', 'voyager-company', '#000000', NULL, 3, '2022-03-11 09:06:27', '2022-03-13 14:47:33', NULL, ''),
(25, 1, 'Заявки', '', '_self', 'voyager-pen', NULL, NULL, 5, '2022-03-11 11:25:43', '2022-03-13 14:51:54', 'voyager.feedback.index', NULL),
(26, 1, 'Преимущество', '', '_self', 'voyager-star-two', NULL, 27, 2, '2022-03-13 14:29:46', '2022-03-13 14:51:54', 'voyager.advantages.index', NULL),
(27, 1, 'Главная страница', '', '_self', 'voyager-home', '#000000', NULL, 2, '2022-03-13 14:47:23', '2022-03-13 14:47:33', NULL, ''),
(28, 1, 'Текст', '', '_self', 'voyager-character', NULL, 27, 1, '2022-03-13 14:51:25', '2022-03-13 14:51:54', 'voyager.texts.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(30, '2022_03_11_090001_create_contacts_table', 3),
(31, '2022_03_11_122140_create_partners_table', 4),
(32, '2022_03_11_144630_create_project_category_table', 5),
(33, '2022_03_11_145228_create_project_table', 6),
(34, '2022_03_11_165849_add_image_to_project_table', 7),
(35, '2022_03_11_172232_create_feedback_table', 8),
(36, '2022_03_13_202639_create_advantages_table', 9),
(37, '2022_03_13_204950_create_texts_table', 10),
(38, '2022_03_16_115911_add_image_bg_partners_table', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `type`, `title`, `excerpt`, `body`, `image`, `slug`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'Главная страница', NULL, NULL, NULL, 'home', 'Главная страница', 'Главная страница', 'Главная страница', 'ACTIVE', '2022-03-10 11:13:56', '2022-03-11 05:07:26'),
(2, 1, 'order', 'Заявки', NULL, NULL, NULL, 'order', 'Заявки', 'Заявки', 'Заявки', 'ACTIVE', '2022-03-11 05:04:12', '2022-03-14 06:02:13'),
(3, 1, 'cat', 'Проекты', NULL, NULL, NULL, 'cat', 'Проекты', 'Проекты', 'Проекты', 'ACTIVE', '2022-03-11 09:52:10', '2022-03-14 06:04:20');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg` tinyint(1) DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `image`, `alt`, `bg`, `slug`, `created_at`, `updated_at`, `image_bg`) VALUES
(1, 'partners\\March2022\\RabKp3L72qjPoKPljy9z.png', 'danone', 0, 'https://www.danone.com/', '2022-03-11 06:27:00', '2022-03-16 06:07:23', 'partners\\March2022\\EXB0VNwaYV3Wwyj4MYcJ.svg'),
(5, 'partners/March2022/aBKC4rGn0Mqo0A10j74h.svg', 'mareven', 0, 'https://mareven.kz/', '2022-03-11 06:31:00', '2022-03-18 08:34:08', 'partners\\March2022\\GKkIIoFH6lG8oszzWOh4.svg'),
(6, 'partners\\March2022\\USzGnxDwAbGk9mqJG9wn.svg', 'nestle', 0, 'https://www.nestle.com/', '2022-03-11 06:32:00', '2022-03-16 06:03:57', 'partners\\March2022\\cwe5rcbT4OyZP420UnL5.svg'),
(7, 'partners\\March2022\\s9eHd0anovc6aRp0UTt7.svg', 'nivea', 0, 'https://www.nivea.kz/', '2022-03-11 07:40:00', '2022-03-16 06:05:15', 'partners\\March2022\\buC2zdiuWvEGpXm7XGBR.svg'),
(9, 'partners\\March2022\\mMyO8JLY4YczwbogSGag.svg', 'Philip Morris', 0, 'https://www.pmi.com/', '2022-03-11 07:41:00', '2022-03-16 06:04:51', 'partners\\March2022\\PMRh9U4Lud3fKAl249Qq.svg'),
(13, 'partners\\March2022\\44xJ4gj7Db89Ft3SLYNc.svg', 'unilever', 0, 'https://www.unilever.com/', '2022-03-11 07:44:00', '2022-03-16 06:05:44', 'partners\\March2022\\gcJCvKnU9OJ16hohiEn3.svg'),
(14, 'partners\\March2022\\8TjKj44ZneivWMAsuofg.svg', 'uhmapko', 0, 'https://www.unilever.com', '2022-03-11 07:45:00', '2022-04-04 11:39:47', 'partners\\March2022\\vTnRdmQL0anMIxdLs8uK.svg'),
(15, 'partners\\March2022\\7Nhfuy1aPErLKZIhzmHU.svg', 'acer', 0, 'https://www.acer.com', '2022-03-11 07:46:00', '2022-03-16 06:02:20', 'partners\\March2022\\xqbk5vr9qCNwy2WkiU6P.svg'),
(16, 'partners\\March2022\\G6vQApBU3UNHDaVisq7Q.svg', 'bat', 0, 'https://www.bat.com/', '2022-03-11 07:47:00', '2022-04-04 11:39:23', 'partners\\March2022\\s97D6K1j42VThoO0tyfu.svg'),
(18, 'partners\\March2022\\OMr1jeyYtXkZ1XxED8qb.svg', 'huindai', 0, 'https://www.hyundai.com/kz/ru', '2022-03-16 06:08:51', '2022-03-16 06:08:51', 'partners\\March2022\\eYNkK9teXZVIM35OZ1j5.svg'),
(19, 'partners/March2022/WMtOul7uwhOjfzoAYJVE.svg', 'QIWI', 0, 'https://qiwi.com/', '2022-03-16 06:09:00', '2022-03-28 13:55:47', 'partners/March2022/9nkADnYVveNSwLS5MVZ9.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(2, 'browse_bread', NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(3, 'browse_database', NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(4, 'browse_media', NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(5, 'browse_compass', NULL, '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(6, 'browse_menus', 'menus', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(7, 'read_menus', 'menus', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(8, 'edit_menus', 'menus', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(9, 'add_menus', 'menus', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(10, 'delete_menus', 'menus', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(11, 'browse_roles', 'roles', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(12, 'read_roles', 'roles', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(13, 'edit_roles', 'roles', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(14, 'add_roles', 'roles', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(15, 'delete_roles', 'roles', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(16, 'browse_users', 'users', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(17, 'read_users', 'users', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(18, 'edit_users', 'users', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(19, 'add_users', 'users', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(20, 'delete_users', 'users', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(21, 'browse_settings', 'settings', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(22, 'read_settings', 'settings', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(23, 'edit_settings', 'settings', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(24, 'add_settings', 'settings', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(25, 'delete_settings', 'settings', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(26, 'browse_categories', 'categories', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(27, 'read_categories', 'categories', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(28, 'edit_categories', 'categories', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(29, 'add_categories', 'categories', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(30, 'delete_categories', 'categories', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(31, 'browse_posts', 'posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(32, 'read_posts', 'posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(33, 'edit_posts', 'posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(34, 'add_posts', 'posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(35, 'delete_posts', 'posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(36, 'browse_pages', 'pages', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(37, 'read_pages', 'pages', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(38, 'edit_pages', 'pages', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(39, 'add_pages', 'pages', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(40, 'delete_pages', 'pages', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(46, 'browse_contacts', 'contacts', '2022-03-11 03:14:26', '2022-03-11 03:14:26'),
(47, 'read_contacts', 'contacts', '2022-03-11 03:14:26', '2022-03-11 03:14:26'),
(48, 'edit_contacts', 'contacts', '2022-03-11 03:14:26', '2022-03-11 03:14:26'),
(49, 'add_contacts', 'contacts', '2022-03-11 03:14:26', '2022-03-11 03:14:26'),
(50, 'delete_contacts', 'contacts', '2022-03-11 03:14:26', '2022-03-11 03:14:26'),
(51, 'browse_partners', 'partners', '2022-03-11 06:25:01', '2022-03-11 06:25:01'),
(52, 'read_partners', 'partners', '2022-03-11 06:25:01', '2022-03-11 06:25:01'),
(53, 'edit_partners', 'partners', '2022-03-11 06:25:01', '2022-03-11 06:25:01'),
(54, 'add_partners', 'partners', '2022-03-11 06:25:01', '2022-03-11 06:25:01'),
(55, 'delete_partners', 'partners', '2022-03-11 06:25:01', '2022-03-11 06:25:01'),
(56, 'browse_project_category', 'project_category', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(57, 'read_project_category', 'project_category', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(58, 'edit_project_category', 'project_category', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(59, 'add_project_category', 'project_category', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(60, 'delete_project_category', 'project_category', '2022-03-11 08:50:09', '2022-03-11 08:50:09'),
(61, 'browse_project', 'project', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(62, 'read_project', 'project', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(63, 'edit_project', 'project', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(64, 'add_project', 'project', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(65, 'delete_project', 'project', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(66, 'browse_feedback', 'feedback', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(67, 'read_feedback', 'feedback', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(68, 'edit_feedback', 'feedback', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(69, 'add_feedback', 'feedback', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(70, 'delete_feedback', 'feedback', '2022-03-11 11:25:43', '2022-03-11 11:25:43'),
(71, 'browse_advantages', 'advantages', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(72, 'read_advantages', 'advantages', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(73, 'edit_advantages', 'advantages', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(74, 'add_advantages', 'advantages', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(75, 'delete_advantages', 'advantages', '2022-03-13 14:29:46', '2022-03-13 14:29:46'),
(76, 'browse_texts', 'texts', '2022-03-13 14:51:25', '2022-03-13 14:51:25'),
(77, 'read_texts', 'texts', '2022-03-13 14:51:25', '2022-03-13 14:51:25'),
(78, 'edit_texts', 'texts', '2022-03-13 14:51:25', '2022-03-13 14:51:25'),
(79, 'add_texts', 'texts', '2022-03-13 14:51:25', '2022-03-13 14:51:25'),
(80, 'delete_texts', 'texts', '2022-03-13 14:51:25', '2022-03-13 14:51:25');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-10 04:53:18', '2022-03-10 04:53:18');

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_category_id` bigint(20) UNSIGNED DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`id`, `project_category_id`, `title`, `excerpt`, `images`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `image`) VALUES
(1, 2, 'РАЗРАБОТКА ЭТИКЕТОК', 'Разработка логотипа и этикетки для новых напитков Yellow', '[\"project\\/March2022\\/d56EG7PJvDYXc7lRssca.png\",\"project\\/March2022\\/GesxqeTacis7JEiMtGut.png\",\"project\\/March2022\\/xDYFlzSnYT6nnLupkJMU.png\",\"project\\/March2022\\/oTtJoAHIRwUzFcZAtuti.png\",\"project\\/March2022\\/uUYfXkRR3Izbupj36qUv.png\"]', 'razrabotka-etiketok', 1, 9, 'Разработка Логотипа', 'Разработка Логотипа', 'Разработка Логотипа', '2022-03-11 10:13:00', '2022-03-17 11:18:58', 'project/March2022/34S6zsPR8P3H4jsHewFc.png'),
(3, 3, 'Организация онлайн мастер-класса', '', '[\"project\\/March2022\\/mqiu4UWdUQoZq5qnnq7o.png\",\"project\\/March2022\\/kvR0SrZ5PeWegyhaeAvi.png\",\"project\\/March2022\\/hpCO9Oj87YN3pS0uIRjF.png\",\"project\\/March2022\\/y4Wqw8MQUC5CY3IkhrI5.png\"]', 'organizaciya-onlajn-master-klassa', 1, 11, '', 'Разработка Логотипа 1', 'Разработка Логотипа 1', '2022-03-13 15:00:00', '2022-03-17 13:26:35', 'project/March2022/Qps3g7F0Bl7h8GB5mPG3.png'),
(4, 4, 'Разработка дизайна', '<br>-Разработка дизайна холодильных камер для Золотого Стандарта\n<br>-Проектирование chill out зоны \n<br>-Проектирование дизайна торговой точки\n', '[\"project\\/March2022\\/4fVdMgxydOte1GQY1bFZ.png\",\"project\\/March2022\\/TEfuelaNdmokiGdlxEtS.png\",\"project\\/March2022\\/MivkdkWq7VIveD8Mt1qg.png\"]', 'razrabotka-dizajna8', 1, 9, 'Разработка Логотипа 2', 'Разработка Логотипа 2', 'Разработка Логотипа 2', '2022-03-13 15:01:00', '2022-04-08 08:41:55', 'project/March2022/BE02BlL6qkGPy8vV32Kt.png'),
(5, 1, 'ОТКРЫТИЕ ЗАВОДА MAREVEN', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '[\"project\\/April2022\\/oy8vuya1QZxZ9OjJJC2i.jpg\",\"project\\/April2022\\/czHljf7TQAN0TzGAXwTY.jpg\",\"project\\/April2022\\/TsW8lTA4pmtngSppFdQZ.jpg\",\"project\\/April2022\\/3jP2IvzDHYzlWZUjxBfr.jpg\",\"project\\/April2022\\/9fLHAupUQYRF4E2gLrte.jpg\"]', 'otkrytie-zavoda-mareven', 1, 1, 'Разработка Логотипа 3', 'Разработка Логотипа 3', 'Разработка Логотипа 3', '2022-03-13 15:01:00', '2022-04-08 08:15:43', 'project/March2022/I5xLsUv7R5IljUIuZfXu.jpg'),
(6, 1, 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИЙ', 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИЙ', '[\"project\\/April2022\\/HU4dwXbbwBeSjsbm83zI.png\",\"project\\/April2022\\/9uHqDZgc1xk1u6t9GRZR.png\",\"project\\/April2022\\/5xsMIMLMVs7Anzglkz0W.png\",\"project\\/April2022\\/AwFaWRKnBmEuwdEqtgmE.png\",\"project\\/April2022\\/MkG1edMGKIDJb52nbIC4.png\",\"project\\/April2022\\/gfcyZrUoUuxiwvVwgjmL.png\",\"project\\/April2022\\/n5wK157kSwKonwDm2Ulc.png\",\"project\\/April2022\\/wmYrfqGEL62kNPk2BV9c.png\",\"project\\/April2022\\/nl7IQljAvGEZ2SCJl4MJ.png\"]', 'organizaciya-konferencij1', 1, 2, 'ОТКРЫТИЕ ЗАВОДА MAREVEN', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-13 15:02:00', '2022-04-07 12:35:38', 'project/March2022/3oAp1gmF5wYK5xtE0pcu.jpg'),
(7, 1, 'ПРОМО В АЗЕРБАЙДЖАН', 'ПРОМО В АЗЕРБАЙДЖАН', '[\"project\\/April2022\\/TWqouPCVQanlXbY8BI05.jpg\",\"project\\/April2022\\/rx97B6ND4ckJ3VPgCQTk.jpg\",\"project\\/April2022\\/JdaVguVjoLxuKoeIJvuD.png\",\"project\\/April2022\\/1oFrLIOMHc1BVMKeuXBT.png\",\"project\\/April2022\\/W5kGDTyGfqufBfdCCbwv.png\",\"project\\/April2022\\/NVTrgV1Ua3Cl7zKngSWb.png\"]', 'promo-v-azerbajdzhan', 1, 3, 'Разработка Логотипа 5', 'Разработка Логотипа 5', 'Разработка Логотипа 5', '2022-03-13 15:02:00', '2022-04-08 08:10:59', 'project\\March2022\\3nelMPMaASHKy3CzIfqP.jpg'),
(8, 1, 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИЙ', 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИИ', '[\"project\\/April2022\\/KOZvkTogThqyfNBNsDRL.jpg\",\"project\\/April2022\\/gwsAnlARQwhsUxXBnsxM.png\",\"project\\/April2022\\/kOFyRNA6fuAlgPxptMQo.png\"]', 'organizaciya-konferencij', 1, 4, 'Разработка Логотипа 6', 'Разработка Логотипа 6', 'Разработка Логотипа 6', '2022-03-13 15:03:00', '2022-04-08 08:17:43', 'project\\March2022\\LhVREEAyXYCWVaYni3zP.jpg'),
(9, 1, 'Разработка дизайна', 'Разработка дизайна', '[\"project\\/March2022\\/ogu3h0EUtgx4zFTvKAFo.png\",\"project\\/March2022\\/datmlcmGw2F0ZDo1t0OJ.png\",\"project\\/March2022\\/r7zxqjo8JBpduog73YKV.png\",\"project\\/March2022\\/XjZNeqtgzkRgyRCRAO0s.png\"]', 'razrabotka-dizajna6', 1, 5, 'Разработка Логотипа 7', 'Разработка Логотипа 7', 'Разработка Логотипа 7', '2022-03-13 15:03:00', '2022-03-17 16:27:55', 'project\\March2022\\5vXEWiP7wiiFwyEUFX5w.jpg'),
(10, 1, 'Национальное промо', 'Национальное промо', '[\"project\\/March2022\\/uDFh5pBtQvvLIbvDFOn0.png\",\"project\\/March2022\\/goAONhFIVMKF4tyOjhL1.png\",\"project\\/March2022\\/sRMkrJfaebrzWjavSYds.png\",\"project\\/March2022\\/R6lxi46v25kIXOhTyzgm.png\",\"project\\/March2022\\/qZGnfsJzqmq4BjMuMmcG.png\",\"project\\/March2022\\/jgHV3reg3AHah5GzwSDm.png\",\"project\\/March2022\\/fNYxxuVsPPCGjrm0LC9Y.png\",\"project\\/March2022\\/JREntjvyMP0954BU3qse.png\",\"project\\/March2022\\/O7BVgXdRETnq8EL5EWHB.png\",\"project\\/March2022\\/82V3Xa6BoGpRqIQbzQls.png\",\"project\\/March2022\\/XbKaZTpdsinAjQmABgIM.png\"]', 'nacionalnoe-promo', 1, 6, 'Разработка Логотипа 8', 'Разработка Логотипа 8', 'Разработка Логотипа 8', '2022-03-13 15:04:00', '2022-03-17 16:35:54', 'project\\March2022\\7BAZFqhK0zSYZTVW0Ozb.jpg'),
(11, 2, 'КАТАЛОГ INMARKO 2020', 'Разработка ассортиментного каталога для компании «Инмарко Казахстан» 2020 г', '[\"project\\/March2022\\/t2RPhraSGR6cy5Q03Lx7.png\",\"project\\/March2022\\/hYgDGLQGo7SmYvI5yFFt.png\",\"project\\/March2022\\/JR0jGIPetlHXZrVFEL2A.png\",\"project\\/March2022\\/sibvmnXIgVwdYZ4bUwjx.png\"]', 'katalog-inmarko-2020', 1, 8, '', 'КАТАЛОГ INMARKO 2020', 'КАТАЛОГ INMARKO 2020', '2022-03-17 08:36:00', '2022-03-17 17:43:50', 'project/March2022/1e71sgBYZ88pAgA2HYTH.png'),
(12, 2, 'КАТАЛОГ INMARKO 2021', 'Разработка ассортиментного каталога для компании «Инмарко Казахстан» 2021г', '[\"project\\/March2022\\/QvmSz4NxUEdyHWZjjzp7.png\",\"project\\/March2022\\/qppHtZOCAkk9vtBJ4Zbq.png\",\"project\\/March2022\\/Euw9nZ36YDzCAIHcukNB.png\"]', 'katalog-inmarko-2021', 1, 7, '', 'КАТАЛОГ INMARKO 2021', 'КАТАЛОГ INMARKO 2021', '2022-03-17 08:49:00', '2022-03-17 11:27:13', 'project/March2022/ZUdxL972sZ2ILlNjyNJm.png'),
(13, 2, 'BTL INMARKO ', 'Разработка рекламных материалов к BTL-акции для компании Inmarko ', '[\"project\\/March2022\\/OamzhcL9H3S5nOwdxGcK.png\",\"project\\/March2022\\/0kbp17GyrPWpN7Iawlrd.png\",\"project\\/March2022\\/b33QuYayPGlpgFUAC8ml.png\"]', 'btl-inmarko', 1, 6, '', 'BTL INMARKO ', 'BTL INMARKO ', '2022-03-17 08:52:00', '2022-04-08 07:41:13', 'project/March2022/GTheFaLIXb9aVAubyBFK.png'),
(14, 2, 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', 'Разработка дизайна холодильников ', '[\"project\\/March2022\\/kyDei3OqixvUGCrmizee.png\",\"project\\/March2022\\/ipUlQjiz2uH4w6CrCjlh.png\",\"project\\/March2022\\/rWZeDeIYLX28Ly3C4wEj.png\"]', 'dizajn-holodilnikov', 1, 5, '', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', '2022-03-17 08:53:00', '2022-03-17 11:32:00', 'project/March2022/uEWZBx4Xcgd65apTPstO.png'),
(15, 2, 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '-РАЗРАБОТКА РЕКЛАМНЫХ МАТЕРИАЛОВ ДЛЯ КОМПАНИИ \"ИНМАРКО КАЗАХСТАН\" -РАЗРАБОТКА ПРАЙС СТИКЕРОВ/ ПРАЙСБОРДОВ', '[\"project\\/March2022\\/hxysMkxYUpGZQV4cZVxF.png\",\"project\\/March2022\\/Ve2CxuqJtbU1Y5AwsbqV.png\",\"project\\/March2022\\/RmYIdfX271ZZI0t0UXWA.png\"]', 'dizajn-prajs-stikerov', 1, 4, '', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '2022-03-17 08:54:00', '2022-03-18 08:37:17', 'project/March2022/z3qdCARbnwKXInXx3FKL.png'),
(16, 2, 'РАЗРАБОТКА ДИЗАЙНА', '-Разработка дизайна каталога<br>  \n-Дизайн торговых точек<br> \n-Разработка дизайна табличек<br>  \n-Оформление торгового пространства<br> ', '[\"project\\/March2022\\/nhyMU4Eww0TzR8r75IIq.png\",\"project\\/March2022\\/q4V36JngE5G1mBWFvjcs.png\",\"project\\/March2022\\/QTEHq7FsVxXU90Di53z7.png\",\"project\\/March2022\\/m1fS8pxjip9xA4ldnGaj.png\",\"project\\/March2022\\/NbMAH0cpQBL6wTpBViL0.png\",\"project\\/March2022\\/W8uBL0icspmO0oN8zkeZ.png\"]', 'razrabotka-dizajna7', 1, 3, '', 'РАЗРАБОТКА ДИЗАЙНА', 'РАЗРАБОТКА ДИЗАЙНА', '2022-03-17 10:22:00', '2022-03-31 08:38:12', 'project/March2022/bl0VYt7C1h6MQAgmoMIY.png'),
(17, 2, 'БРЕНДБУК', 'Разработка фирменного стиля Art Bakery', '[\"project\\/March2022\\/EuO4GbauFVU6WSDR93SI.png\",\"project\\/March2022\\/5en1ekM7QsVqYzsSrWbu.png\",\"project\\/March2022\\/PDqJw7Pv6BFe7sINkzId.png\",\"project\\/March2022\\/PSuWwfblhzYgk1OYXzAx.png\",\"project\\/March2022\\/CLmwgsgam5AKAsrNEgwO.png\"]', 'brendbuk', 1, 2, '', 'БРЕНДБУК', 'БРЕНДБУК', '2022-03-17 10:25:00', '2022-03-17 11:18:07', 'project/March2022/7Cx1w3CB9GNDF6pNohBs.png'),
(18, 2, 'ДИЗАЙН ЭТИКЕТОК', 'Разработка дизайна и производство этикеток', '[\"project\\/March2022\\/Q8067EAkR3LeUOk8Xf3n.png\",\"project\\/March2022\\/hf1NDwYmPlaOkUZZNzJf.png\",\"project\\/March2022\\/Td85EwPYHy7m7C96GPOR.png\",\"project\\/March2022\\/wDKAYhK1WFKDm7mmAVkl.png\"]', 'dizajn-etiketok', 1, 1, '', '', '', '2022-03-17 10:26:00', '2022-03-17 11:16:27', 'project/March2022/M5p2L2cWq9N8oDBSEuUP.png'),
(19, 4, 'Разработка дизайна', 'Разработка дизайна холодильных камер для Магнат ', '[\"project\\/March2022\\/8d4J6oBXTEQ2XxfFmcPU.png\",\"project\\/March2022\\/uCE921IN89sNoCNZDuxJ.png\",\"project\\/March2022\\/KoLaXw1B9CUc4JXPqLj6.png\"]', 'razrabotka-dizajna9', 1, 8, '', '', '', '2022-03-17 12:06:00', '2022-03-17 18:26:16', 'project/March2022/myS8stZ8a2xNaQfPzSLe.png'),
(20, 4, 'Разработка дизайна ', 'Разработка дизайна промо-арки и джумби', '[\"project\\/March2022\\/0ufPjwCA8xTTrbbZsFCe.png\",\"project\\/March2022\\/GaT4fQwA2rixRk4x3ICp.png\"]', 'razrabotka-dizajna3', 1, 6, '', '', '', '2022-03-17 12:21:00', '2022-03-17 12:33:48', 'project/March2022/Ky1vjc7ap65rgiLnWifz.png'),
(21, 4, 'Проектирование дизайна ', '<br>-Проектирование дизайна джелатерии для Carte Dor\n<br>-Проектирование дизайна торговых точек Carte Dor', '[\"project\\/March2022\\/KF5AKpRwzv7zobN4Lmbv.png\",\"project\\/March2022\\/LPVi50eIPUcbaRSeChqd.png\",\"project\\/March2022\\/mLxhNLNXsy4tawyXoYU7.png\",\"project\\/March2022\\/OiqJ4ZKaCX5QP1xpvEB9.png\",\"project\\/March2022\\/f3RC3HDcCQo3W7zCUEwj.png\"]', 'proektirovanie-dizajna', 1, 6, '', '', '', '2022-03-17 12:23:00', '2022-04-08 08:42:34', 'project/March2022/jlSZ8C1lmwqMKTNOB2OI.png'),
(22, 4, 'Разработка дизайна', '<br>-Разработка дизайна оформления холодильных камер\n<br>-Разработка дизайна POSM-материалов для Магнат', '[\"project\\/March2022\\/qRka471oeZEBZaqPRTob.png\",\"project\\/March2022\\/UrXd5lMagzJ8dziBsz6H.png\",\"project\\/March2022\\/UrY3OtF3DbEuyh6iXgLI.png\",\"project\\/March2022\\/ey6jzhtMUd1N6aF5NWD5.png\",\"project\\/March2022\\/ojzQSh4ONsnm29BiijSj.png\",\"project\\/March2022\\/4WAuCrnskGJPkhFWCb3E.png\"]', 'razrabotka-dizajna2', 1, 5, '', '', '', '2022-03-17 12:25:00', '2022-04-08 08:42:59', 'project/March2022/1oUkEnIHWIpIy7hHPITs.png'),
(23, 4, 'Разработка дизайна', 'Разработка дизайна дисплея Чистой Линии', '[\"project\\/March2022\\/xec45iWeKy1xr8YXOaP3.png\"]', 'razrabotka-dizajna4', 1, 4, '', '', '', '2022-03-17 12:35:21', '2022-03-17 12:35:21', 'project/March2022/Tv9g3SGlVuYVZL9kXEIP.png'),
(24, 4, 'Разработка дизайна', '<br>-Разработка дизайна баннеров и лифлетов\n<br>-Разработка дизайна промо арки\n<br>-Разработка дизайна боди-стенда и паллет ', '[\"project\\/March2022\\/40FjLxJrdaANDnqpCOBF.png\",\"project\\/March2022\\/BZYKrhrr6Vhmq0IqFwcS.png\",\"project\\/March2022\\/SszXVhHUAopUpxtLA0sR.png\"]', 'razrabotka-dizajna5', 1, 3, '', '', '', '2022-03-17 12:37:00', '2022-04-08 08:43:51', 'project/March2022/9mKLGvUOqJPavuwQwAZg.png'),
(25, 4, 'Оформление визуального пространства', 'Разработка концепции оформления торгового зала для Kcell', '[\"project\\/March2022\\/nH5P5jR3K60Qbfsre8oW.png\",\"project\\/March2022\\/lbmDezXlynb4bRuYz0o8.png\",\"project\\/March2022\\/0lQecKqVvzKq0evMX0AJ.png\"]', 'oformlenie-vizualnogo-prostranstva', 1, 2, '', '', '', '2022-03-17 12:38:00', '2022-03-17 12:42:49', 'project/March2022/WTqfA9ConxnpRGFJIX3R.png'),
(26, 4, 'Разработка дизайна ', 'Разработка дизайна барной стойки для Johnnie Walker', '[\"project\\/March2022\\/fcvcv2HSQk8C16fXcjJK.png\",\"project\\/March2022\\/VqGKw7Z4Evqx9Coi3bl9.png\"]', 'razrabotka-dizajna', 1, 1, '', '', '', '2022-03-17 13:05:48', '2022-03-17 13:05:48', 'project/March2022/h48vpZmaXpdeeWtTaF9I.png'),
(27, 3, 'Новогодний корпоратив', '', '[\"project\\/March2022\\/qP06S7wsD5YRapo1YBMN.png\",\"project\\/March2022\\/NOt0WLc0LbcP9T0vqOx1.png\",\"project\\/March2022\\/Onn0GYXx8ND2F0D9Uu4M.png\",\"project\\/March2022\\/8WUzTSR8US1T8nfFMdTC.png\"]', 'novogodnij-korporativ', 1, 10, '', '', '', '2022-03-17 13:25:00', '2022-03-17 13:26:06', 'project/March2022/eDgi67GUSAVBLxlMjYbc.png'),
(28, 3, 'Открытие завода', '', '[\"project\\/April2022\\/s5yVS0dtft81Via03dQR.jpg\",\"project\\/April2022\\/QhGPweW9wm52dLo2VJdQ.png\",\"project\\/April2022\\/cjM7KMiUKkK4kurwhdbw.png\",\"project\\/April2022\\/X2kymsTUVtHHb5gQEWry.png\",\"project\\/April2022\\/TtIRMAujwEaiETton1yq.png\"]', 'otkrytie-zavoda', 1, 9, 'Открытие завода', '', '', '2022-03-17 13:28:00', '2022-04-08 08:28:09', 'project/March2022/A7uCNNSOu2c1VRPvily7.png'),
(29, 3, 'Организация мероприятия ', '', '[\"project\\/April2022\\/AhcaNQ99P0Oh5AXvwBW6.jpg\",\"project\\/April2022\\/YiGQS1gynal9hoQLO76J.jpg\"]', 'organizaciya-meropriyatiya1', 1, 8, '', '', '', '2022-03-17 13:31:00', '2022-04-07 11:50:29', 'project/March2022/qErBU5NsycEDUERyqdXs.png'),
(30, 3, 'Организация ужина ', '', '[\"project\\/March2022\\/WUi2ZVqhLUD2NakkbNuZ.png\",\"project\\/March2022\\/Kf3lO3MeJgGlTknSbG71.png\",\"project\\/March2022\\/xxz5BEQawhv6eoD2SlKP.png\"]', 'organizaciya-uzhina', 1, 7, '', '', '', '2022-03-17 13:32:00', '2022-03-17 13:33:05', 'project/March2022/SsAMIxFs13n0MAzJE1FF.png'),
(31, 3, 'Онлайн-корпоратив ', '', '[\"project\\/March2022\\/D5g5PYcPaxlxmfQqbUse.png\",\"project\\/March2022\\/Q3GByAny4vaQ56ppRQWg.png\",\"project\\/March2022\\/ya06d66aNUeU4EFQggeQ.png\",\"project\\/March2022\\/OEa9OHSjpI5lvC0aR5YB.png\",\"project\\/March2022\\/a1EPAXw0yryUFMsaFNJj.png\",\"project\\/March2022\\/dv4G5euOu4j2mTBBfjqw.png\"]', 'onlajn-korporativ', 1, 6, '', '', '', '2022-03-17 13:38:44', '2022-03-17 13:38:44', 'project/March2022/IfI8ktoHNqaVW1SexsGS.png'),
(32, 3, 'Ежегодная конференция ', '', NULL, 'ezhegodnaya-konferenciya', 1, 5, '', '', '', '2022-03-17 13:39:40', '2022-03-17 13:39:40', 'project/March2022/3hZ1qIesGYmPvzaiijmy.png'),
(33, 3, 'Организация мероприятия ', '', '[\"project\\/April2022\\/aLIQpiE6vD9Y7nn6kdBg.jpg\",\"project\\/April2022\\/YXgooLR8qHNYDin9p9YR.png\",\"project\\/April2022\\/Fv1kZLunPBMPRUuyMuf3.png\",\"project\\/April2022\\/73IMOKbWPB6CbdnPscEc.png\",\"project\\/April2022\\/KMxUaEzPyzJQFqH373mX.png\",\"project\\/April2022\\/Kn2IFaXAJYAUhoMpTtal.png\",\"project\\/April2022\\/i9m4K5GimOIwMzuLpiEB.png\"]', 'organizaciya-meropriyatiya', 1, 4, '', '', '', '2022-03-17 13:41:00', '2022-04-08 08:04:19', 'project/March2022/3qcHXrJhgbEVxw8ZVWWt.png'),
(34, 3, 'Презентация новой концепции бренда', '', '[\"project\\/April2022\\/n3TUfXAS9SkFJT7TiVNG.jpg\",\"project\\/April2022\\/S2WRT45N05UktIx69CbC.jpg\"]', 'prezentaciya-novoj-koncepcii-brenda', 1, 3, '', '', '', '2022-03-17 13:42:00', '2022-04-07 12:00:16', 'project/March2022/9WiNDvtO5CgKmRW0ziFX.png'),
(35, 3, 'Организация конференции', '', '[\"project\\/March2022\\/ha1h7e33dd2jhkN01qrh.png\",\"project\\/March2022\\/oeSGBBx7qLeUAOtm2I3a.png\"]', 'organizaciya-konferencii', 1, 2, '', '', '', '2022-03-17 13:44:06', '2022-03-17 13:44:06', 'project/March2022/J23npvilfxze4rKHM1uy.png'),
(36, 3, 'Открытие ресторана Тануки ', '', '[\"project\\/March2022\\/J0dvbahFy7n2RczXP7ac.png\",\"project\\/March2022\\/9pI5sntMJCgYbg5RLYWK.png\",\"project\\/March2022\\/JiHrebwAJGrmwS1WYtDg.png\",\"project\\/March2022\\/YJPgtMiLjduyduDK27TR.png\",\"project\\/March2022\\/rCOBHMQ8Pb661dumqOf7.png\"]', 'otkrytie-restorana-tanuki', 1, 1, '', '', '', '2022-03-17 14:17:17', '2022-03-17 14:17:17', 'project/March2022/qEQDxXKrA5h3qSzn5s5T.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `project_category`
--

CREATE TABLE `project_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_category`
--

INSERT INTO `project_category` (`id`, `name`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'PROJECTS', 'projects', 1, 1, 'Проекты', 'PROJECTS', 'PROJECTS', '2022-03-11 09:09:00', '2022-03-16 14:04:33'),
(2, 'DESIGN', 'design', 1, 2, 'Дизайн', 'Дизайн', 'Дизайн', '2022-03-11 09:09:00', '2022-03-16 13:07:30'),
(3, 'EVENT', 'event', 1, 3, 'EVENT', 'EVENT', 'EVENT', '2022-03-11 09:12:00', '2022-03-16 14:01:36'),
(4, 'TRADEMARKETING ', 'trademarketing', 1, 4, 'Торговый маркетинг', 'TRADEMARKETING ', 'TRADEMARKETING ', '2022-03-11 09:43:00', '2022-03-16 14:01:08');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-10 04:53:17', '2022-03-10 04:53:17'),
(2, 'user', 'Normal User', '2022-03-10 04:53:17', '2022-03-10 04:53:17');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(11, 'site.favicon', 'FavIcon', 'settings/April2022/ZgArjsqRsoa8UCXAVsiS.png', NULL, 'image', 4, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `text`, `second_text`, `created_at`, `updated_at`) VALUES
(1, '<h1>&ldquo;Duende\" - произведение искусства, которое может затронуть душу человека!</h1>\n<p>Главный принцип нашей работы - предвосхитить ожидания наших клиентов, воплощая самые смелые идеи в реальные проекты.</p>\n<p>Независимо от задачи, главной целью всегда является &ndash; создать концепт, который оставит после себя след в сознании потребителей и укрепит позиции бренда!</p>', '<p>С 2012 года, руками наших профессионалов было создано огромное количество логотипов и фирменных стилей, проведено сотни незабываемых мероприятий и сгенерировано множество креативных идей.</p>\r\n<p>Наши специалисты систематически проходят курсы повышения квалификации и совершенствуются в своей области.</p>\r\n<p>Мы анализируем рынок и идем на шаг впереди, строя для каждого клиента уникальный опыт, который приносит прибыль, укрепляет имидж и закладывает основу для будущего развития.</p>\r\n<p>Именно поэтому, за годы становления наша компания заслужила доверие не только крупных клиентов на территории Казахстана, но и оправдала свое имя за рубежом.</p>\r\n<p>Мы не осваиваем бюджеты - мы осваиваем доверие и любовь масс к Вашему продукту.</p>\r\n<p>Реклама не ради рекламы.</p>\r\n<p>Реклама ради искусства.</p>', '2022-03-13 14:53:00', '2022-04-07 14:16:40');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-10 04:53:18', '2022-03-10 04:53:18'),
(31, 'data_rows', 'display_name', 44, 'en', 'ID', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(32, 'data_rows', 'display_name', 45, 'en', 'Author', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(33, 'data_rows', 'display_name', 46, 'en', 'Title', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(34, 'data_rows', 'display_name', 47, 'en', 'Excerpt', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(35, 'data_rows', 'display_name', 48, 'en', 'Body', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(36, 'data_rows', 'display_name', 55, 'en', 'Page Image', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(37, 'data_rows', 'display_name', 49, 'en', 'Slug', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(38, 'data_rows', 'display_name', 50, 'en', 'Meta Description', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(39, 'data_rows', 'display_name', 51, 'en', 'Meta Keywords', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(40, 'data_rows', 'display_name', 52, 'en', 'Status', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(41, 'data_rows', 'display_name', 53, 'en', 'Created At', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(42, 'data_rows', 'display_name', 54, 'en', 'Updated At', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(43, 'data_types', 'display_name_singular', 6, 'en', 'Page', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(44, 'data_types', 'display_name_plural', 6, 'en', 'Pages', '2022-03-10 11:09:24', '2022-03-10 11:09:24'),
(45, 'menu_items', 'title', 1, 'en', 'Dashboard', '2022-03-10 11:10:30', '2022-03-10 11:10:30'),
(46, 'menu_items', 'title', 13, 'en', 'Pages', '2022-03-10 11:10:50', '2022-03-10 11:10:50'),
(47, 'menu_items', 'title', 2, 'en', 'Media', '2022-03-10 11:11:09', '2022-03-10 11:11:09'),
(48, 'menu_items', 'title', 5, 'en', 'Tools', '2022-03-10 11:11:20', '2022-03-10 11:11:20'),
(49, 'menu_items', 'title', 3, 'en', 'Users', '2022-03-10 11:11:35', '2022-03-10 11:11:35'),
(50, 'menu_items', 'title', 4, 'en', 'Roles', '2022-03-10 11:11:45', '2022-03-10 11:11:45'),
(51, 'menu_items', 'title', 10, 'en', 'Settings', '2022-03-10 11:12:04', '2022-03-10 11:12:04'),
(52, 'menu_items', 'title', 6, 'en', 'Menu Builder', '2022-03-10 11:12:18', '2022-03-10 11:12:18'),
(53, 'data_rows', 'display_name', 44, 'kz', 'ID', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(54, 'data_rows', 'display_name', 45, 'kz', 'Author', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(55, 'data_rows', 'display_name', 56, 'en', 'Тип страницы', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(56, 'data_rows', 'display_name', 46, 'kz', 'Title', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(57, 'data_rows', 'display_name', 47, 'kz', 'Excerpt', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(58, 'data_rows', 'display_name', 48, 'kz', 'Body', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(59, 'data_rows', 'display_name', 55, 'kz', 'Page Image', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(60, 'data_rows', 'display_name', 49, 'kz', 'Slug', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(61, 'data_rows', 'display_name', 57, 'en', 'SEO Заголовок', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(62, 'data_rows', 'display_name', 50, 'kz', 'Meta Description', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(63, 'data_rows', 'display_name', 51, 'kz', 'Meta Keywords', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(64, 'data_rows', 'display_name', 52, 'kz', 'Status', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(65, 'data_rows', 'display_name', 53, 'kz', 'Created At', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(66, 'data_rows', 'display_name', 54, 'kz', 'Updated At', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(67, 'data_types', 'display_name_singular', 6, 'kz', 'Page', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(68, 'data_types', 'display_name_plural', 6, 'kz', 'Pages', '2022-03-10 11:23:06', '2022-03-10 11:23:06'),
(69, 'pages', 'title', 1, 'en', 'Home Page', '2022-03-10 11:24:59', '2022-03-10 11:24:59'),
(70, 'pages', 'slug', 1, 'en', 'home', '2022-03-10 11:24:59', '2022-03-10 11:24:59'),
(71, 'data_rows', 'display_name', 58, 'en', 'Id', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(72, 'data_rows', 'display_name', 59, 'en', 'Главная', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(73, 'data_rows', 'display_name', 60, 'en', 'Тип', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(74, 'data_rows', 'display_name', 61, 'en', 'Иконка (svg)', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(75, 'data_rows', 'display_name', 62, 'en', 'Значение', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(76, 'data_rows', 'display_name', 63, 'en', 'Значение c Переводом', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(77, 'data_rows', 'display_name', 64, 'en', 'Ссылка', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(78, 'data_rows', 'display_name', 65, 'en', 'Статус', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(79, 'data_rows', 'display_name', 66, 'en', 'Порядковый номер', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(80, 'data_rows', 'display_name', 67, 'en', 'Дата создания', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(81, 'data_rows', 'display_name', 68, 'en', 'Updated At', '2022-03-11 03:11:40', '2022-03-11 03:11:40'),
(84, 'data_rows', 'display_name', 69, 'en', 'Id', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(85, 'data_rows', 'display_name', 71, 'en', 'Тип', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(86, 'data_rows', 'display_name', 72, 'en', 'Иконка (svg)', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(87, 'data_rows', 'display_name', 73, 'en', 'Значение', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(88, 'data_rows', 'display_name', 74, 'en', 'Значение c Переводом', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(89, 'data_rows', 'display_name', 75, 'en', 'Ссылка', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(90, 'data_rows', 'display_name', 76, 'en', 'Статус', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(91, 'data_rows', 'display_name', 77, 'en', 'Порядковый номер', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(92, 'data_rows', 'display_name', 78, 'en', 'Дата создания', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(93, 'data_rows', 'display_name', 79, 'en', 'Updated At', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(94, 'data_types', 'display_name_singular', 10, 'en', 'Контакт', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(95, 'data_types', 'display_name_plural', 10, 'en', 'Контакты', '2022-03-11 03:32:32', '2022-03-11 03:32:32'),
(96, 'data_rows', 'display_name', 80, 'en', 'City', '2022-03-11 03:32:52', '2022-03-11 03:32:52'),
(97, 'menu_items', 'title', 17, 'en', 'ABOUT US', '2022-03-11 03:45:30', '2022-03-11 03:45:30'),
(98, 'menu_items', 'title', 18, 'en', 'PROJECTS', '2022-03-11 03:45:54', '2022-03-11 03:45:54'),
(99, 'menu_items', 'title', 19, 'en', 'SERVICES', '2022-03-11 03:46:09', '2022-03-11 03:46:09'),
(100, 'menu_items', 'title', 20, 'en', 'CONTACTS', '2022-03-11 03:46:25', '2022-03-11 03:46:25'),
(101, 'pages', 'title', 2, 'en', 'Applications', '2022-03-11 05:04:12', '2022-03-14 06:02:03'),
(102, 'pages', 'slug', 2, 'en', 'form', '2022-03-11 05:04:12', '2022-03-11 05:04:12'),
(103, 'pages', 'seo_title', 1, 'en', 'Home Page', '2022-03-11 05:08:33', '2022-03-11 05:08:33'),
(104, 'pages', 'meta_description', 1, 'en', 'Home Page', '2022-03-11 05:08:33', '2022-03-11 05:08:33'),
(105, 'pages', 'meta_keywords', 1, 'en', 'Home Page', '2022-03-11 05:08:33', '2022-03-11 05:08:33'),
(106, 'pages', 'seo_title', 2, 'en', 'Applications', '2022-03-11 05:08:44', '2022-03-14 06:02:03'),
(107, 'pages', 'meta_description', 2, 'en', 'Applications', '2022-03-11 05:08:44', '2022-03-14 06:02:03'),
(108, 'pages', 'meta_keywords', 2, 'en', 'Applications', '2022-03-11 05:08:44', '2022-03-14 06:02:03'),
(109, 'data_rows', 'display_name', 98, 'en', 'Id', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(110, 'data_rows', 'display_name', 99, 'en', 'Project Category Id', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(111, 'data_rows', 'display_name', 100, 'en', 'Заголовок', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(112, 'data_rows', 'display_name', 101, 'en', 'Краткое описание', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(113, 'data_rows', 'display_name', 102, 'en', 'Изображение', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(114, 'data_rows', 'display_name', 103, 'en', 'Ссылка', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(115, 'data_rows', 'display_name', 104, 'en', 'Статус', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(116, 'data_rows', 'display_name', 105, 'en', 'Порядковый номер', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(117, 'data_rows', 'display_name', 106, 'en', 'SEO Заголовок', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(118, 'data_rows', 'display_name', 107, 'en', 'Meta Описание', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(119, 'data_rows', 'display_name', 108, 'en', 'Meta Ключевые слова', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(120, 'data_rows', 'display_name', 109, 'en', 'Дата Создания', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(121, 'data_rows', 'display_name', 110, 'en', 'Updated At', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(122, 'data_rows', 'display_name', 111, 'en', 'project_category', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(123, 'data_types', 'display_name_singular', 13, 'en', 'Проект', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(124, 'data_types', 'display_name_plural', 13, 'en', 'Проекты', '2022-03-11 08:57:52', '2022-03-11 08:57:52'),
(125, 'project_category', 'name', 1, 'en', 'PROJECTS', '2022-03-11 09:09:11', '2022-03-16 14:04:33'),
(126, 'project_category', 'seo_title', 1, 'en', 'Projects', '2022-03-11 09:09:11', '2022-03-11 09:09:11'),
(127, 'project_category', 'meta_description', 1, 'en', 'Projects', '2022-03-11 09:09:11', '2022-03-11 09:09:11'),
(128, 'project_category', 'meta_keywords', 1, 'en', 'Projects', '2022-03-11 09:09:11', '2022-03-11 09:09:11'),
(129, 'project_category', 'name', 2, 'en', 'DESIGN', '2022-03-11 09:09:57', '2022-03-16 13:07:30'),
(130, 'project_category', 'seo_title', 2, 'en', 'Design', '2022-03-11 09:09:57', '2022-03-11 09:10:59'),
(131, 'project_category', 'meta_description', 2, 'en', 'Design', '2022-03-11 09:09:57', '2022-03-11 09:10:59'),
(132, 'project_category', 'meta_keywords', 2, 'en', 'Design', '2022-03-11 09:09:57', '2022-03-11 09:10:59'),
(133, 'project_category', 'name', 3, 'en', 'EVENT', '2022-03-11 09:12:15', '2022-03-16 14:03:51'),
(134, 'project_category', 'seo_title', 3, 'en', 'Event', '2022-03-11 09:12:15', '2022-03-11 09:12:15'),
(135, 'project_category', 'meta_description', 3, 'en', 'Event', '2022-03-11 09:12:15', '2022-03-11 09:12:15'),
(136, 'project_category', 'meta_keywords', 3, 'en', 'Event', '2022-03-11 09:12:15', '2022-03-11 09:12:15'),
(137, 'project_category', 'name', 4, 'en', 'TRADEMARKETING ', '2022-03-11 09:43:47', '2022-03-16 14:02:56'),
(138, 'project_category', 'seo_title', 4, 'en', 'TRADEMARKETING', '2022-03-11 09:43:47', '2022-03-16 14:02:56'),
(139, 'project_category', 'meta_description', 4, 'en', 'TRADEMARKETING', '2022-03-11 09:43:47', '2022-03-16 14:02:56'),
(140, 'project_category', 'meta_keywords', 4, 'en', 'TRADEMARKETING', '2022-03-11 09:43:47', '2022-03-16 14:02:56'),
(141, 'pages', 'title', 3, 'en', 'Projects', '2022-03-11 09:52:10', '2022-03-11 09:52:10'),
(142, 'pages', 'seo_title', 3, 'en', 'Projects', '2022-03-11 09:52:10', '2022-03-11 09:52:10'),
(143, 'pages', 'meta_description', 3, 'en', 'Projects', '2022-03-11 09:52:10', '2022-03-11 09:52:10'),
(144, 'pages', 'meta_keywords', 3, 'en', 'Projects', '2022-03-11 09:52:10', '2022-03-11 09:52:10'),
(145, 'project', 'title', 1, 'en', 'РАЗРАБОТКА ЭТИКЕТОК', '2022-03-11 10:13:30', '2022-03-16 16:14:10'),
(146, 'project', 'excerpt', 1, 'en', 'РАЗРАБОТКА ЭТИКЕТОК', '2022-03-11 10:13:30', '2022-03-16 16:14:10'),
(147, 'project', 'seo_title', 1, 'en', 'Разработка Логотипа', '2022-03-11 10:13:30', '2022-03-11 10:13:30'),
(148, 'project', 'meta_description', 1, 'en', 'Разработка Логотипа', '2022-03-11 10:13:30', '2022-03-11 10:13:30'),
(149, 'project', 'meta_keywords', 1, 'en', 'Разработка Логотипа', '2022-03-11 10:13:30', '2022-03-11 10:13:30'),
(150, 'advantages', 'excerpt', 3, 'en', 'Projects abroad', '2022-03-13 14:31:57', '2022-03-13 14:31:57'),
(151, 'advantages', 'excerpt', 2, 'en', 'Successful projects', '2022-03-13 14:32:15', '2022-03-13 14:32:15'),
(152, 'advantages', 'excerpt', 1, 'en', 'Years of experience', '2022-03-13 14:32:27', '2022-03-13 14:32:27'),
(153, 'texts', 'text', 1, 'en', '<p>Слово&nbsp;<strong>DUENDE</strong>&nbsp;испанское и означает &laquo;Произведение искусства, способное затронуть душу человека&raquo; . С этой философией наша команда по сей день трудится над вашими<br />проектами, воплощая ваши идеи в реальность.</p>', '2022-03-13 14:57:11', '2022-03-21 16:11:27'),
(154, 'project', 'title', 5, 'en', 'Разработка Логотипа 3', '2022-03-14 06:20:22', '2022-03-14 06:20:22'),
(155, 'project', 'excerpt', 5, 'en', 'Разработка Логотипа 3', '2022-03-14 06:20:22', '2022-03-14 06:20:22'),
(156, 'project', 'seo_title', 5, 'en', 'Разработка Логотипа 3', '2022-03-14 06:20:22', '2022-03-14 06:20:22'),
(157, 'project', 'meta_description', 5, 'en', 'Разработка Логотипа 3', '2022-03-14 06:20:22', '2022-03-14 06:20:22'),
(158, 'project', 'meta_keywords', 5, 'en', 'Разработка Логотипа 3', '2022-03-14 06:20:22', '2022-03-14 06:20:22'),
(159, 'project', 'title', 6, 'en', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-14 06:21:17', '2022-03-16 13:59:12'),
(160, 'project', 'excerpt', 6, 'en', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-14 06:21:17', '2022-03-16 13:59:12'),
(161, 'project', 'seo_title', 6, 'en', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-14 06:21:17', '2022-03-16 13:59:12'),
(162, 'project', 'meta_description', 6, 'en', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-14 06:21:17', '2022-03-16 13:59:12'),
(163, 'project', 'meta_keywords', 6, 'en', 'ОТКРЫТИЕ ЗАВОДА MAREVEN', '2022-03-14 06:21:17', '2022-03-16 13:59:12'),
(164, 'project', 'title', 7, 'en', 'ПРОМО В АЗЕРБАЙДЖАН', '2022-03-14 06:21:50', '2022-03-16 14:10:17'),
(165, 'project', 'excerpt', 7, 'en', 'ПРОМО В АЗЕРБАЙДЖАН', '2022-03-14 06:21:50', '2022-03-16 14:10:17'),
(166, 'project', 'seo_title', 7, 'en', 'Разработка Логотипа 5', '2022-03-14 06:21:50', '2022-03-14 06:21:50'),
(167, 'project', 'meta_description', 7, 'en', 'Разработка Логотипа 5', '2022-03-14 06:21:50', '2022-03-14 06:21:50'),
(168, 'project', 'meta_keywords', 7, 'en', 'Разработка Логотипа 5', '2022-03-14 06:21:50', '2022-03-14 06:21:50'),
(169, 'project', 'title', 8, 'en', 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИИ', '2022-03-14 06:24:18', '2022-03-16 14:13:13'),
(170, 'project', 'excerpt', 8, 'en', 'ОРГАНИЗАЦИЯ КОНФЕРЕНЦИИ', '2022-03-14 06:24:18', '2022-03-16 14:13:13'),
(171, 'project', 'seo_title', 8, 'en', 'Разработка Логотипа 6', '2022-03-14 06:24:18', '2022-03-14 06:24:18'),
(172, 'project', 'meta_description', 8, 'en', 'Разработка Логотипа 6', '2022-03-14 06:24:18', '2022-03-14 06:24:18'),
(173, 'project', 'meta_keywords', 8, 'en', 'Разработка Логотипа 6', '2022-03-14 06:24:18', '2022-03-14 06:24:18'),
(174, 'project', 'title', 9, 'en', 'НАЦИОНАЛЬНОЕ ПРОМО', '2022-03-14 06:24:49', '2022-03-16 14:17:27'),
(175, 'project', 'excerpt', 9, 'en', 'НАЦИОНАЛЬНОЕ ПРОМО', '2022-03-14 06:24:49', '2022-03-16 14:17:27'),
(176, 'project', 'seo_title', 9, 'en', 'Разработка Логотипа 7', '2022-03-14 06:24:49', '2022-03-14 06:24:49'),
(177, 'project', 'meta_description', 9, 'en', 'Разработка Логотипа 7', '2022-03-14 06:24:49', '2022-03-14 06:24:49'),
(178, 'project', 'meta_keywords', 9, 'en', 'Разработка Логотипа 7', '2022-03-14 06:24:49', '2022-03-14 06:24:49'),
(179, 'project', 'title', 10, 'en', 'ДИЗАЙН', '2022-03-14 06:25:02', '2022-03-16 14:22:58'),
(180, 'project', 'excerpt', 10, 'en', 'ДИЗАЙН', '2022-03-14 06:25:02', '2022-03-16 14:22:58'),
(181, 'project', 'seo_title', 10, 'en', 'Разработка Логотипа 8', '2022-03-14 06:25:02', '2022-03-14 06:25:02'),
(182, 'project', 'meta_description', 10, 'en', 'Разработка Логотипа 8', '2022-03-14 06:25:02', '2022-03-14 06:25:02'),
(183, 'project', 'meta_keywords', 10, 'en', 'Разработка Логотипа 8', '2022-03-14 06:25:02', '2022-03-14 06:25:02'),
(184, 'contacts', 'translate_value', 6, 'en', 'Shevchenko str. 10, of. 11', '2022-03-14 06:28:00', '2022-03-14 06:28:00'),
(185, 'contacts', 'translate_value', 5, 'en', 'BC \"Evolution\" , 26/1 Bukhar Zhyrau str., office 61', '2022-03-14 06:28:20', '2022-03-14 06:28:20'),
(186, 'data_rows', 'display_name', 81, 'en', 'Id', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(187, 'data_rows', 'display_name', 82, 'en', 'Изображения', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(188, 'data_rows', 'display_name', 83, 'en', 'Alt Изображения', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(189, 'data_rows', 'display_name', 84, 'en', 'Есть ли фон?', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(190, 'data_rows', 'display_name', 85, 'en', 'Ссылка', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(191, 'data_rows', 'display_name', 86, 'en', 'Дата Создания', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(192, 'data_rows', 'display_name', 87, 'en', 'Updated At', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(193, 'data_types', 'display_name_singular', 11, 'en', 'Партнер', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(194, 'data_types', 'display_name_plural', 11, 'en', 'Партнеры', '2022-03-16 06:00:59', '2022-03-16 06:00:59'),
(195, 'project', 'title', 11, 'en', 'КАТАЛОГ INMARKO 2020', '2022-03-17 08:39:14', '2022-03-17 08:39:14'),
(196, 'project', 'excerpt', 11, 'en', 'КАТАЛОГ INMARKO 2020', '2022-03-17 08:39:14', '2022-03-17 08:39:14'),
(197, 'project', 'meta_description', 11, 'en', 'КАТАЛОГ INMARKO 2020', '2022-03-17 08:39:14', '2022-03-17 08:39:14'),
(198, 'project', 'meta_keywords', 11, 'en', 'КАТАЛОГ INMARKO 2020', '2022-03-17 08:39:14', '2022-03-17 08:39:14'),
(199, 'project', 'title', 12, 'en', 'КАТАЛОГ INMARKO 2021', '2022-03-17 08:49:00', '2022-03-17 08:49:00'),
(200, 'project', 'excerpt', 12, 'en', 'КАТАЛОГ INMARKO 2021', '2022-03-17 08:49:00', '2022-03-17 08:49:00'),
(201, 'project', 'title', 16, 'en', 'РАЗРАБОТКА ДИЗАЙНА', '2022-03-17 10:23:40', '2022-03-17 10:23:40'),
(202, 'project', 'excerpt', 16, 'en', 'РАЗРАБОТКА ДИЗАЙНА', '2022-03-17 10:23:40', '2022-03-17 10:23:40'),
(203, 'project', 'meta_description', 16, 'en', 'РАЗРАБОТКА ДИЗАЙНА', '2022-03-17 10:23:40', '2022-03-17 10:23:40'),
(204, 'project', 'meta_keywords', 16, 'en', 'РАЗРАБОТКА ДИЗАЙНА', '2022-03-17 10:23:40', '2022-03-17 10:23:40'),
(205, 'project', 'title', 18, 'en', 'ДИЗАЙН ЭТИКЕТОК', '2022-03-17 11:16:27', '2022-03-17 11:16:27'),
(206, 'project', 'excerpt', 18, 'en', 'ДИЗАЙН ЭТИКЕТОК', '2022-03-17 11:16:27', '2022-03-17 11:16:27'),
(207, 'project', 'title', 17, 'en', 'БРЕНДБУК', '2022-03-17 11:18:07', '2022-03-17 11:18:07'),
(208, 'project', 'excerpt', 17, 'en', 'БРЕНДБУК', '2022-03-17 11:18:07', '2022-03-17 11:18:07'),
(209, 'project', 'meta_description', 17, 'en', 'БРЕНДБУК', '2022-03-17 11:18:07', '2022-03-17 11:18:07'),
(210, 'project', 'meta_keywords', 17, 'en', 'БРЕНДБУК', '2022-03-17 11:18:07', '2022-03-17 11:18:07'),
(211, 'project', 'meta_description', 12, 'en', 'КАТАЛОГ INMARKO 2021', '2022-03-17 11:27:13', '2022-03-17 11:27:13'),
(212, 'project', 'meta_keywords', 12, 'en', 'КАТАЛОГ INMARKO 2021', '2022-03-17 11:27:13', '2022-03-17 11:27:13'),
(213, 'project', 'title', 13, 'en', 'BTL INMARKO ', '2022-03-17 11:31:19', '2022-03-17 11:31:19'),
(214, 'project', 'excerpt', 13, 'en', 'BTL INMARKO ', '2022-03-17 11:31:19', '2022-03-17 11:31:19'),
(215, 'project', 'meta_description', 13, 'en', 'BTL INMARKO ', '2022-03-17 11:31:19', '2022-03-17 11:31:19'),
(216, 'project', 'meta_keywords', 13, 'en', 'BTL INMARKO ', '2022-03-17 11:31:19', '2022-03-17 11:31:19'),
(217, 'project', 'title', 14, 'en', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', '2022-03-17 11:32:00', '2022-03-17 11:32:00'),
(218, 'project', 'excerpt', 14, 'en', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', '2022-03-17 11:32:00', '2022-03-17 11:32:00'),
(219, 'project', 'meta_description', 14, 'en', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', '2022-03-17 11:32:00', '2022-03-17 11:32:00'),
(220, 'project', 'meta_keywords', 14, 'en', 'ДИЗАЙН ХОЛОДИЛЬНИКОВ', '2022-03-17 11:32:00', '2022-03-17 11:32:00'),
(221, 'project', 'title', 3, 'en', 'Разработка Логотипа 1', '2022-03-17 11:40:16', '2022-03-17 11:40:16'),
(222, 'project', 'excerpt', 3, 'en', 'Разработка Логотипа 1', '2022-03-17 11:40:16', '2022-03-17 11:40:16'),
(223, 'project', 'seo_title', 3, 'en', 'Разработка Логотипа 1', '2022-03-17 11:40:16', '2022-03-17 11:40:16'),
(224, 'project', 'meta_description', 3, 'en', 'Разработка Логотипа 1', '2022-03-17 11:40:16', '2022-03-17 11:40:16'),
(225, 'project', 'meta_keywords', 3, 'en', 'Разработка Логотипа 1', '2022-03-17 11:40:16', '2022-03-17 11:40:16'),
(226, 'project', 'title', 4, 'en', 'Разработка Логотипа 2', '2022-03-17 11:54:56', '2022-03-17 11:54:56'),
(227, 'project', 'excerpt', 4, 'en', 'Разработка Логотипа 2', '2022-03-17 11:54:56', '2022-03-17 11:54:56'),
(228, 'project', 'seo_title', 4, 'en', 'Разработка Логотипа 2', '2022-03-17 11:54:56', '2022-03-17 11:54:56'),
(229, 'project', 'meta_description', 4, 'en', 'Разработка Логотипа 2', '2022-03-17 11:54:56', '2022-03-17 11:54:56'),
(230, 'project', 'meta_keywords', 4, 'en', 'Разработка Логотипа 2', '2022-03-17 11:54:56', '2022-03-17 11:54:56'),
(231, 'project', 'title', 21, 'en', 'Проектирование дизайна ', '2022-03-17 12:29:56', '2022-03-17 12:29:56'),
(232, 'project', 'excerpt', 21, 'en', 'Проектирование дизайна джелатерии для Carte Dor\nПроектирование дизайна торговых точек Carte Dor', '2022-03-17 12:29:56', '2022-03-17 12:29:56'),
(233, 'project', 'title', 22, 'en', 'Разработка дизайна', '2022-03-17 12:32:42', '2022-03-17 12:32:42'),
(234, 'project', 'excerpt', 22, 'en', 'Разработка дизайна оформления холодильных камер\nРазработка дизайна POSM-материалов для Магнат', '2022-03-17 12:32:42', '2022-03-17 12:32:42'),
(235, 'project', 'title', 20, 'en', 'Разработка дизайна ', '2022-03-17 12:33:48', '2022-03-17 12:33:48'),
(236, 'project', 'excerpt', 20, 'en', 'Разработка дизайна промо-арки и джумби', '2022-03-17 12:33:48', '2022-03-17 12:33:48'),
(237, 'project', 'title', 25, 'en', 'Оформление визуального пространства', '2022-03-17 12:42:49', '2022-03-17 12:42:49'),
(238, 'project', 'excerpt', 25, 'en', 'Разработка концепции оформления торгового зала для Kcell', '2022-03-17 12:42:49', '2022-03-17 12:42:49'),
(239, 'project', 'title', 24, 'en', 'Разработка дизайна', '2022-03-17 12:47:08', '2022-03-17 12:47:08'),
(240, 'project', 'excerpt', 24, 'en', 'Разработка дизайна баннеров и лифлетов\nРазработка дизайна промо арки\nРазработка дизайна боди-стенда и паллет ', '2022-03-17 12:47:08', '2022-03-17 12:47:08'),
(241, 'project', 'title', 27, 'en', 'Новогодний корпоратив', '2022-03-17 13:26:06', '2022-03-17 13:26:06'),
(242, 'project', 'title', 30, 'en', 'Организация ужина ', '2022-03-17 13:33:05', '2022-03-17 13:33:05'),
(243, 'project', 'title', 15, 'en', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '2022-03-17 17:47:41', '2022-03-17 17:47:41'),
(244, 'project', 'excerpt', 15, 'en', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '2022-03-17 17:47:41', '2022-03-17 17:47:41'),
(245, 'project', 'meta_description', 15, 'en', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '2022-03-17 17:47:41', '2022-03-17 17:47:41'),
(246, 'project', 'meta_keywords', 15, 'en', 'ДИЗАЙН ПРАЙС СТИКЕРОВ', '2022-03-17 17:47:41', '2022-03-17 17:47:41'),
(247, 'project', 'title', 29, 'en', 'Организация мероприятия ', '2022-03-17 18:01:45', '2022-03-17 18:01:45'),
(248, 'project', 'title', 19, 'en', 'Разработка дизайна', '2022-03-17 18:26:16', '2022-03-17 18:26:16'),
(249, 'project', 'excerpt', 19, 'en', 'Разработка дизайна оформления холодильных камер\nРазработка дизайна POSM-материалов для Магнат', '2022-03-17 18:26:16', '2022-03-17 18:26:16'),
(250, 'project', 'title', 34, 'en', 'Презентация новой концепции бренда', '2022-03-18 08:28:22', '2022-03-18 08:28:22'),
(251, 'data_rows', 'display_name', 126, 'en', 'Id', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(252, 'data_rows', 'display_name', 127, 'en', 'Текст', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(253, 'data_rows', 'display_name', 128, 'en', 'Дата Создания', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(254, 'data_rows', 'display_name', 129, 'en', 'Updated At', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(255, 'data_types', 'display_name_singular', 16, 'en', 'Текст', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(256, 'data_types', 'display_name_plural', 16, 'en', 'Текст', '2022-04-07 14:15:45', '2022-04-07 14:15:45'),
(257, 'project', 'title', 33, 'en', 'Организация мероприятия ', '2022-04-08 08:04:19', '2022-04-08 08:04:19'),
(258, 'project', 'title', 28, 'en', 'Открытие завода', '2022-04-08 08:28:09', '2022-04-08 08:28:09');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$Yyryq1eEGSJk1djwz3weC.RbNschYZPk1NQ3lrmk2m.iLcdHquTRi', 'i0Ay7kPl0a5q0JyaFT42hBnfnJcPpKLubo18uqMmgt70TlH5rzb30UgFcl8D', '{\"locale\":\"ru\"}', '2022-03-10 04:53:18', '2022-03-10 11:00:10');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_project_category_id_foreign` (`project_category_id`);

--
-- Индексы таблицы `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_category_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_project_category_id_foreign` FOREIGN KEY (`project_category_id`) REFERENCES `project_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
