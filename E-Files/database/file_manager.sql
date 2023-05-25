-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 03:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `activity` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `created_by`, `activity`, `created_at`, `updated_at`, `document_id`) VALUES
(1, 1, 'Tài liệu đã được tạo : <a href=\"http://127.0.0.1:8000/admin/documents/1\">Demo</a>', '2023-05-19 04:58:41', '2023-05-19 04:58:41', 1),
(2, 1, '1 File mới được tải lên : <a href=\"http://127.0.0.1:8000/admin/documents/1\">Demo</a>', '2023-05-19 04:59:25', '2023-05-19 04:59:25', 1),
(3, 1, 'Tài liệu đã được duyệt  : <a href=\"http://127.0.0.1:8000/admin/documents/1\">Demo</a>', '2023-05-19 04:59:34', '2023-05-19 04:59:34', 1),
(4, 1, 'Tài liệu đã được tạo : <a href=\"http://127.0.0.1:8000/admin/documents/2\">test doc</a>', '2023-05-19 05:19:22', '2023-05-19 05:19:22', 2),
(5, 1, '1 File mới được tải lên : <a href=\"http://127.0.0.1:8000/admin/documents/2\">test doc</a>', '2023-05-19 05:23:35', '2023-05-19 05:23:35', 2),
(6, 1, 'Document Đã tạo : <a href=\"http://127.0.0.1:8000/admin/documents/3\">Demo 2</a>', '2023-05-19 07:39:27', '2023-05-19 07:39:27', 3),
(7, 1, '1 New Files Uploaded To Document : <a href=\"http://127.0.0.1:8000/admin/documents/3\">Demo 2</a>', '2023-05-19 07:39:54', '2023-05-19 07:39:54', 3),
(8, 1, 'Document Approved  with comment: <i>được duyệt</i> : <a href=\"http://127.0.0.1:8000/admin/documents/3\">Demo 2</a>', '2023-05-19 07:40:05', '2023-05-19 07:40:05', 3),
(9, 1, 'Document Đã xác minh  với bình luận: <i>ok đó</i> : <a href=\"http://127.0.0.1:8000/admin/documents/2\">test doc</a>', '2023-05-19 08:04:38', '2023-05-19 08:04:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suggestions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `description`, `status`, `created_by`, `custom_fields`, `verified_by`, `verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Demo', '<p><a target=\"_blank\" rel=\"nofollow\" href=\"https://facebook.com/ngonguyenkminh.dsn\">https://facebook.com/ngonguyenkminh.dsn</a> <br></p>', 'APPROVED', 1, NULL, 1, '2023-05-19 11:59:33', '2023-05-19 04:58:41', '2023-05-19 04:59:33'),
(2, 'test doc', '<p><a target=\"_blank\" rel=\"nofollow\" href=\"https://facebook.com/ngonguyenkminh.dsn\">https://facebook.com/ngonguyenkminh.dsn</a> <br></p>', 'APPROVED', 1, NULL, 1, '2023-05-19 15:04:38', '2023-05-19 05:19:21', '2023-05-19 08:04:38'),
(3, 'Demo 2', '<p>Đây là tài liệu Demo</p>', 'APPROVED', 1, NULL, 1, '2023-05-19 14:40:05', '2023-05-19 07:39:26', '2023-05-19 07:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `documents_tags`
--

CREATE TABLE `documents_tags` (
  `document_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents_tags`
--

INSERT INTO `documents_tags` (`document_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `file_type_id` int(10) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `file`, `document_id`, `file_type_id`, `created_by`, `custom_fields`, `created_at`, `updated_at`) VALUES
(1, 'Test File', 'QF46Su1FWWrK1jINo4pWrlRP0NAk4zGhkMHBnQkx.jpg', 1, 1, 1, '[]', '2023-05-19 04:59:25', '2023-05-19 04:59:25'),
(2, 'hi', 'm4ZHKwtNPRsGtYmA7Mc5bxiN52D86Kovjb5B4vOJ.docx', 2, 1, 1, '[]', '2023-05-19 05:23:35', '2023-05-19 05:23:35'),
(3, 'Tài liệu học thêm', '7Q8llcmovLjbjG32n2f4o1eEknI8Yx1DYHj97kEU.docx', 3, 1, 1, '[]', '2023-05-19 07:39:54', '2023-05-19 07:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `file_types`
--

CREATE TABLE `file_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_files` int(11) NOT NULL,
  `labels` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_validations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_maxsize` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `file_types`
--

INSERT INTO `file_types` (`id`, `name`, `no_of_files`, `labels`, `file_validations`, `file_maxsize`, `created_at`, `updated_at`) VALUES
(1, 'General', 2, 'page1,page2', 'mimes:jpeg,bmp,png,jpg,docx', 8, '2023-05-19 04:56:34', '2023-05-19 05:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_09_055735_create_settings_table', 1),
(5, '2019_11_11_170438_create_custom_fields_table', 1),
(6, '2019_11_12_122144_create_file_types_table', 1),
(7, '2019_11_12_155907_create_tags_table', 1),
(8, '2019_11_13_150331_create_documents_table', 1),
(9, '2019_11_14_144921_create_documents_tags_table', 1),
(10, '2019_11_15_122537_create_files_table', 1),
(11, '2019_11_18_143946_create_permission_tables', 1),
(12, '2019_11_20_155709_create_activities_table', 1),
(13, '2019_11_21_085158_update_custom_fields_add_field', 1),
(14, '2019_11_21_122845_update_activities_add_field_document_id', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create users', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(2, 'read users', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(3, 'update users', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(4, 'delete users', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(5, 'user manage permission', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(6, 'create tags', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(7, 'read tags', 'web', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(8, 'update tags', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(9, 'delete tags', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(10, 'create documents', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(11, 'read documents', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(12, 'update documents', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(13, 'delete documents', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(14, 'verify documents', 'web', '2023-05-19 04:56:34', '2023-05-19 04:56:34'),
(15, 'read documents in tag 1', 'web', '2023-05-19 04:58:14', '2023-05-19 04:58:14'),
(16, 'create documents in tag 1', 'web', '2023-05-19 04:58:14', '2023-05-19 04:58:14'),
(17, 'update documents in tag 1', 'web', '2023-05-19 04:58:14', '2023-05-19 04:58:14'),
(18, 'delete documents in tag 1', 'web', '2023-05-19 04:58:14', '2023-05-19 04:58:14'),
(19, 'verify documents in tag 1', 'web', '2023-05-19 04:58:14', '2023-05-19 04:58:14'),
(20, 'read document 1', 'web', '2023-05-19 04:58:41', '2023-05-19 04:58:41'),
(21, 'update document 1', 'web', '2023-05-19 04:58:41', '2023-05-19 04:58:41'),
(22, 'delete document 1', 'web', '2023-05-19 04:58:41', '2023-05-19 04:58:41'),
(23, 'verify document 1', 'web', '2023-05-19 04:58:41', '2023-05-19 04:58:41'),
(24, 'read document 2', 'web', '2023-05-19 05:19:22', '2023-05-19 05:19:22'),
(25, 'update document 2', 'web', '2023-05-19 05:19:22', '2023-05-19 05:19:22'),
(26, 'delete document 2', 'web', '2023-05-19 05:19:22', '2023-05-19 05:19:22'),
(27, 'verify document 2', 'web', '2023-05-19 05:19:22', '2023-05-19 05:19:22'),
(28, 'read document 3', 'web', '2023-05-19 07:39:27', '2023-05-19 07:39:27'),
(29, 'update document 3', 'web', '2023-05-19 07:39:27', '2023-05-19 07:39:27'),
(30, 'delete document 3', 'web', '2023-05-19 07:39:27', '2023-05-19 07:39:27'),
(31, 'verify document 3', 'web', '2023-05-19 07:39:27', '2023-05-19 07:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_title', 'Thư viện FBU', '2023-05-19 04:56:32', '2023-05-19 04:56:32'),
(2, 'system_logo', 'logo_fbu.png', '2023-05-19 04:56:32', '2023-05-19 04:56:32'),
(3, 'tags_label_singular', 'tag', '2023-05-19 04:56:32', '2023-05-19 04:56:32'),
(4, 'tags_label_plural', 'Thẻ gán', '2023-05-19 04:56:32', '2023-05-19 04:56:32'),
(5, 'document_label_singular', 'tài liệu', '2023-05-19 04:56:32', '2023-05-19 04:56:32'),
(6, 'document_label_plural', 'Kho tài liệu', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(7, 'file_label_singular', 'file', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(8, 'file_label_plural', 'files', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(9, 'default_file_validations', 'mimes:jpeg,bmp,png,jpg,docx', '2023-05-19 04:56:33', '2023-05-19 05:22:52'),
(10, 'default_file_maxsize', '8', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(11, 'image_files_resize', '300,500,700', '2023-05-19 04:56:33', '2023-05-19 04:56:33'),
(12, 'show_missing_files_errors', 'true', '2023-05-19 04:56:33', '2023-05-19 04:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `color`, `created_by`, `custom_fields`, `created_at`, `updated_at`) VALUES
(1, 'Dev Nguyen', '#000000', 1, NULL, '2023-05-19 04:58:14', '2023-05-19 04:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `address`, `description`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'super', NULL, '', NULL, '$2y$10$RcpBQ5KPrzy.sQyh6l.PPO.J7A4Z6WtM1BxBFhzt/VeiQM4kSY7.q', 'ACTIVE', NULL, '2023-05-19 04:56:33', '2023-05-19 06:59:58'),
(2, 'Dev Nguyen', 'ngonguyenkminh.dsn@gmail.com', 'devnguyen', 'hanoi', '<p>hihi</p>', NULL, '$2y$10$GBL.Ph.HeAwMrpCpBBoDy.o8Lu9o1m502zi8Qd7TmZ/10ri/fPW1i', 'ACTIVE', NULL, '2023-05-19 05:04:14', '2023-05-21 23:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_created_by_foreign` (`created_by`),
  ADD KEY `activities_document_id_foreign` (`document_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_created_by_foreign` (`created_by`),
  ADD KEY `documents_verified_by_foreign` (`verified_by`);

--
-- Indexes for table `documents_tags`
--
ALTER TABLE `documents_tags`
  ADD PRIMARY KEY (`document_id`,`tag_id`),
  ADD KEY `documents_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_document_id_foreign` (`document_id`),
  ADD KEY `files_file_type_id_foreign` (`file_type_id`),
  ADD KEY `files_created_by_foreign` (`created_by`);

--
-- Indexes for table `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`user_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`user_id`,`model_type`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`user_id`,`model_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file_types`
--
ALTER TABLE `file_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `activities_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documents_verified_by_foreign` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `documents_tags`
--
ALTER TABLE `documents_tags`
  ADD CONSTRAINT `documents_tags_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documents_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_file_type_id_foreign` FOREIGN KEY (`file_type_id`) REFERENCES `file_types` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
