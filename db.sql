-- --------------------------------------------------------
-- Host:                         192.168.99.107
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table auth.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_session_id_unique` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.cart: ~41 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'gViwkDlzg0f4cq0w4TjQ', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(2, 'yP0rIQVnaguHITQhIzBz', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(3, 'vmVwHZAfhbA0uBP0BYKw', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(4, 'ZlL6V9AIwLt5H4rI8dnM', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(5, 'AWdbesLkoigrxwF7AQcm', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(6, 'HkwG2aWnPk4k4Sk51bgH', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(7, 'grt3JVinK5NUz9IG6qYL', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(8, 'WD1WADPzHH4VQp4oE1Lg', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(9, '8rQ2gTfRiPv3YSanV5ej', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(10, 'wrEwlMM7JhL7D3mTTVEJ', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(11, 'z7wkgL5tX9u8RHgqvkum', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(12, 'UU0YNILQMtcWVz9aI0Qp', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(13, 'cE4qA76cOZ8cFpFXXg9B', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(14, 'BhD6U7H6LTr0cE5pi2UK', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(15, 'BD1phIUwf8k1dJyHaLtN', 2, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(16, 'RnCDkijEzqUFM746L1HZ', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(17, '3tmMwzSJEv8Av5laHsD0', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(18, 'vhsqdmESjuAkZVrkB3gn', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(19, '9ahNsLG6mASLq9jXg13I', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(20, 'W8D0mHlK51eFo0b47yFk', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(21, 'fGhOI4gcelrhQkeVQx6W', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(22, 'kpZRno9VscXCDNojmHN6', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(23, 'JUnFVtO6hOa5B5rGPxLJ', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(24, 'X9atMbeqdgYwo94hdF7x', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(25, 'ClppXDOQT9sbINJZzZcr', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(26, 'Htxb0uDQHKtIdKiLFjYW', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(27, 'hfpLE23Vrgdg3XzPB5TA', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(28, 'YpXax6YOHJKL3sEmqCPz', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(29, 'KZK6DIxIYRB5ZxFLNknr', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(30, 'VBmuxMYIgFheC4pPwiTD', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(31, 'C96GqczyVF5inNbI17JK', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(32, 'lzGwX89aKVU3kjgYlcm3', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(33, 'F5Y74EHe2LDJGZlA5K78', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(34, 'KoGzvwirpqUr4rwwNn2G', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(35, '1lGuL3YOQxOWHwJROFqY', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(36, 'fmHf0QGB5NDiXJwBoORW', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(37, 'In9RD1d2J74srLZbP7Yu', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(38, 'GyoKPOgjPZxKv1hnTcGj', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(39, 'WjlA1aanG2vLySmXXlqk', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(40, '5wkfIb5E22mHh7E9W751', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(41, 'QLnDI5qe1cAUkNJORQtT', NULL, '2022-07-02 21:00:30', '2022-07-02 21:00:30');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table auth.cart_product
CREATE TABLE IF NOT EXISTS `cart_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_product_cart_id_product_id_unique` (`cart_id`,`product_id`),
  KEY `cart_product_product_id_foreign` (`product_id`),
  CONSTRAINT `cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.cart_product: ~129 rows (approximately)
/*!40000 ALTER TABLE `cart_product` DISABLE KEYS */;
INSERT INTO `cart_product` (`id`, `cart_id`, `product_id`, `qty`, `total_price`) VALUES
	(1, 1, 11, 5, 65.00),
	(2, 1, 13, 1, 32.00),
	(3, 1, 14, 1, 45.00),
	(4, 2, 1, 5, 150.00),
	(5, 2, 12, 5, 120.00),
	(6, 2, 14, 2, 90.00),
	(7, 2, 16, 5, 75.00),
	(8, 2, 18, 2, 60.00),
	(9, 3, 9, 4, 256.00),
	(10, 3, 10, 1, 96.00),
	(11, 3, 12, 2, 48.00),
	(12, 3, 13, 2, 64.00),
	(13, 4, 1, 2, 60.00),
	(14, 4, 7, 3, 252.00),
	(15, 4, 16, 4, 60.00),
	(16, 4, 17, 5, 120.00),
	(17, 4, 19, 1, 35.00),
	(18, 5, 1, 1, 30.00),
	(19, 6, 5, 1, 88.00),
	(20, 6, 10, 4, 384.00),
	(21, 6, 12, 1, 24.00),
	(22, 7, 2, 4, 312.00),
	(23, 7, 6, 2, 80.00),
	(24, 7, 9, 1, 64.00),
	(25, 7, 12, 2, 48.00),
	(26, 8, 6, 2, 80.00),
	(27, 8, 14, 5, 225.00),
	(28, 8, 17, 5, 120.00),
	(29, 8, 18, 2, 60.00),
	(30, 9, 3, 4, 168.00),
	(31, 9, 8, 4, 332.00),
	(32, 9, 10, 1, 96.00),
	(33, 9, 11, 5, 65.00),
	(34, 9, 17, 5, 120.00),
	(35, 10, 4, 1, 18.00),
	(36, 10, 8, 1, 83.00),
	(37, 10, 10, 1, 96.00),
	(38, 10, 13, 1, 32.00),
	(39, 11, 7, 5, 420.00),
	(40, 11, 8, 4, 332.00),
	(41, 12, 1, 1, 30.00),
	(42, 12, 3, 3, 126.00),
	(43, 13, 1, 4, 120.00),
	(44, 13, 4, 5, 90.00),
	(45, 13, 6, 5, 200.00),
	(46, 14, 6, 4, 160.00),
	(47, 15, 6, 5, 200.00),
	(48, 15, 9, 5, 320.00),
	(49, 16, 3, 5, 210.00),
	(50, 16, 9, 2, 128.00),
	(51, 16, 11, 5, 65.00),
	(52, 16, 12, 4, 96.00),
	(53, 16, 14, 5, 225.00),
	(54, 17, 6, 5, 200.00),
	(55, 17, 11, 2, 26.00),
	(56, 17, 16, 2, 30.00),
	(57, 17, 19, 2, 70.00),
	(58, 17, 20, 1, 28.00),
	(59, 18, 1, 1, 30.00),
	(60, 18, 3, 1, 42.00),
	(61, 18, 8, 3, 249.00),
	(62, 19, 5, 1, 88.00),
	(63, 20, 2, 1, 78.00),
	(64, 20, 10, 1, 96.00),
	(65, 20, 13, 2, 64.00),
	(66, 20, 16, 3, 45.00),
	(67, 20, 20, 1, 28.00),
	(68, 21, 13, 4, 128.00),
	(69, 21, 14, 3, 135.00),
	(70, 22, 3, 4, 168.00),
	(71, 22, 15, 4, 196.00),
	(72, 22, 16, 3, 45.00),
	(73, 22, 18, 1, 30.00),
	(74, 22, 20, 3, 84.00),
	(75, 23, 3, 2, 84.00),
	(76, 24, 2, 5, 390.00),
	(77, 24, 12, 4, 96.00),
	(78, 25, 7, 4, 336.00),
	(79, 25, 8, 5, 415.00),
	(80, 25, 9, 2, 128.00),
	(81, 25, 18, 2, 60.00),
	(82, 26, 4, 4, 72.00),
	(83, 26, 5, 5, 440.00),
	(84, 26, 11, 1, 13.00),
	(85, 26, 13, 5, 160.00),
	(86, 26, 18, 3, 90.00),
	(87, 27, 3, 1, 42.00),
	(88, 28, 1, 1, 30.00),
	(89, 29, 6, 3, 120.00),
	(90, 29, 8, 2, 166.00),
	(91, 30, 3, 4, 168.00),
	(92, 30, 10, 3, 288.00),
	(93, 30, 11, 4, 52.00),
	(94, 30, 12, 3, 72.00),
	(95, 30, 20, 3, 84.00),
	(96, 31, 2, 3, 234.00),
	(97, 31, 5, 3, 264.00),
	(98, 31, 9, 2, 128.00),
	(99, 32, 1, 2, 60.00),
	(100, 32, 6, 4, 160.00),
	(101, 33, 13, 1, 32.00),
	(102, 34, 1, 5, 150.00),
	(103, 34, 4, 2, 36.00),
	(104, 34, 10, 3, 288.00),
	(105, 35, 7, 5, 420.00),
	(106, 35, 14, 2, 90.00),
	(107, 35, 17, 1, 24.00),
	(108, 35, 19, 3, 105.00),
	(109, 35, 20, 4, 112.00),
	(110, 36, 5, 1, 88.00),
	(111, 36, 6, 4, 160.00),
	(112, 36, 12, 2, 48.00),
	(113, 36, 13, 2, 64.00),
	(114, 36, 20, 3, 84.00),
	(115, 37, 3, 3, 126.00),
	(116, 37, 4, 4, 72.00),
	(117, 38, 1, 2, 60.00),
	(118, 38, 2, 1, 78.00),
	(119, 38, 3, 2, 84.00),
	(120, 39, 5, 5, 440.00),
	(121, 39, 7, 2, 168.00),
	(122, 39, 10, 2, 192.00),
	(123, 39, 12, 2, 48.00),
	(124, 40, 2, 3, 234.00),
	(125, 41, 2, 4, 312.00),
	(126, 41, 3, 2, 84.00),
	(127, 41, 4, 4, 72.00),
	(128, 41, 16, 2, 30.00),
	(129, 41, 20, 5, 140.00);
/*!40000 ALTER TABLE `cart_product` ENABLE KEYS */;

-- Dumping structure for table auth.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Rachelle Fadel DVM', '2022-07-02 21:00:29', '2022-07-02 21:00:29'),
	(2, 'Cody Crona', '2022-07-02 21:00:29', '2022-07-02 21:00:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table auth.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table auth.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(10, '2022_07_01_082955_create_cart_table', 1),
	(11, '2022_07_01_091221_create_categories_table', 1),
	(12, '2022_07_01_092458_create_products_table', 1),
	(13, '2022_07_01_151417_create_cart_product_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table auth.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table auth.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table auth.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table auth.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table auth.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table auth.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table auth.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table auth.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.products: ~20 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `description`, `category_id`, `avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Graham McCullough', 30.00, 'Vero est rerum voluptatem sit. Fugit ducimus molestiae consequuntur soluta corporis porro officia.', 1, 'Tjp5FPfr9HBaVDXZYxkR.gif', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(2, 'Brooks Lebsack V', 78.00, 'Possimus veritatis ipsa nihil. Ipsam culpa nisi hic. Et officiis maiores et aut aut debitis omnis. Reiciendis dolor cumque ut ex vel non aut sed.', 1, 'rYkFJCcPAUQWc5qSIAQX.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(3, 'Clementine Mayer', 42.00, 'Dignissimos minus ut a tempora delectus fuga alias. Dicta atque neque fuga veritatis. Aperiam esse deserunt occaecati sequi.', 1, 'Jmv3ZGLZLmeHsfuiALof.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(4, 'Cooper Moen', 18.00, 'Provident nihil eveniet ut. Iste qui dolorum autem tempora odit.', 1, 'BD74Y4t06hL23FBeZtYm.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(5, 'Aaliyah Jerde', 88.00, 'Quis quibusdam autem qui voluptas vero possimus hic. Eum alias voluptates necessitatibus molestias mollitia. Et laboriosam quasi aut et qui enim praesentium.', 1, 'Gyr42rEXiNtbGVNSBZSW.png', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(6, 'Mrs. Athena Kuvalis MD', 40.00, 'Est tenetur quaerat et rerum consectetur enim exercitationem. Commodi minima aut et provident quia culpa expedita. Exercitationem maxime nisi omnis. Quo error eius aliquid illo vel qui molestias.', 1, 'A7YNjqCddp1HcBTPsgYj.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(7, 'Frederique Predovic II', 84.00, 'Non nihil unde vero facere quod rerum. Asperiores non numquam voluptatem perspiciatis asperiores tempore. Odio ad voluptatem consequuntur tenetur est. Officiis animi error fugiat.', 1, 'dCzqXzKcmNq3AN8N36Fk.png', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(8, 'Dr. Elisha Block I', 83.00, 'Non nisi nihil eaque praesentium qui excepturi. Nobis voluptas fuga maxime et. Labore repellat at veniam aliquid quos qui dolorem numquam. Sit et reprehenderit architecto libero.', 1, 'oruViczS7JuTLqLzXSkl.gif', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(9, 'Miss Yesenia Konopelski V', 64.00, 'Consequatur omnis ducimus esse eius unde. Ducimus maxime quas impedit ipsam sed maxime. Saepe dolor odit nostrum ut. Veniam laborum et mollitia assumenda magni asperiores laudantium.', 1, 'IW8gqKnPcpA3gAf6QY6W.gif', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(10, 'Rosendo Medhurst', 96.00, 'Ea culpa vel blanditiis labore laborum. Tempore ut vitae minima in est. Nemo a veniam alias delectus sunt. Temporibus sint ut nobis reiciendis.', 1, 'nsgwVks85Eeaf4revB7f.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(11, 'Lew Volkman DVM', 13.00, 'Est aliquam eos eligendi quia. Eaque dolorem qui et sint culpa autem. Deleniti cum quas provident quia commodi.', 2, 'p85i6Av9VgSgE20pD8kq.gif', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(12, 'Manuel Mitchell', 24.00, 'Repudiandae saepe harum autem et iste facilis quibusdam illum. Optio sit voluptas voluptas nobis nostrum sit eum. Sapiente minus sequi eveniet qui neque voluptate sint.', 2, 'X8UTfQZf6P2yIE6pU2lX.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(13, 'Coty Ferry III', 32.00, 'Sint natus natus enim quia fugit. Debitis doloribus quod ut non blanditiis quia. Sit suscipit necessitatibus et sed. Sint ad omnis quis dolorem quia hic. Voluptas nam repellendus rerum soluta et sed.', 2, '6tTtB7hd45YSptAQeSby.jpeg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(14, 'Antwan Feil', 45.00, 'Aut omnis ipsum reiciendis aut voluptatem. Quibusdam dolor recusandae voluptatem.', 2, 'CnmBpSFHIlIO0tLWgjyE.png', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(15, 'Mylene Boyer', 49.00, 'Ut odit quae eos ut. Deserunt fuga eum inventore esse. Magni et sit velit sunt veniam nihil et. Itaque dicta animi blanditiis ut quia.', 2, 'mzIulXHgRb2ePzF4cw4W.jpg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(16, 'Bonnie Weber', 15.00, 'Sunt facilis blanditiis magnam enim et ut asperiores. Vel pariatur rem sed rerum in aliquam eos perspiciatis. Pariatur est rerum ea velit. Minima dolores autem velit libero dolorum.', 2, '2PxFTdo1qeHlLFrLtM3S.jpg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(17, 'Lia Harris', 24.00, 'Debitis voluptatem quia facilis dolores. Debitis dolor quia odio quas sint. Dolorem libero nam eveniet et tempore harum.', 2, '4AJ114VIbUDRbwxaxrij.png', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(18, 'Anastasia Keeling', 30.00, 'Voluptatum et id quia enim. Voluptatem quis unde consequatur eum quod quia. Consequatur in sit sed omnis dignissimos consequuntur inventore.', 2, 'Gtm3Z6OMqPIJya856Kko.jpg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(19, 'Erika Mraz MD', 35.00, 'Ipsum culpa incidunt non et nobis aut. Veritatis numquam maiores quisquam quia quam quaerat. Autem at assumenda qui sunt possimus error.', 2, 'Ebjz96VLCGx6O2xYer7b.jpg', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL),
	(20, 'Candelario Brown II', 28.00, 'Corrupti consequatur nisi cumque nemo deleniti autem sunt. Aspernatur ullam aspernatur sint distinctio ad. Consequatur dicta magni quae quae illum culpa nisi.', 2, 'bW2lcIu3zvAr2NzqEtxE.gif', '2022-07-02 21:00:29', '2022-07-02 21:00:29', NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table auth.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table auth.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Prof. Scottie Volkman', 'darrion09@example.net', '2022-07-02 21:00:29', '$2y$10$ozaYG9yaoxJjGzbbEqiD2OHFA59KgRCoU0SORd6Klo9j76HRZVpN6', '0tYy1KphxtIgL1b3My7C', '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(2, 'Nora Skiles', 'werner.bergstrom@example.net', '2022-07-02 21:00:29', '$2y$10$TtA1hYg0z/FhayEzunHDSOcDcNF2OpCZidCji.3MwQtjD/wNZNVfS', 'rYTUxuRgCn1zxTZzgXKf', '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(3, 'Dr. Don Schoen', 'susie94@example.net', '2022-07-02 21:00:29', '$2y$10$ZqjIkmIIwz14h57WhcKRFOHoIrVs0xVFab0XENxES2zT5O1ebWfMq', '1jLWCyHU51Pl3FedKHoN', '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(4, 'Lesley Gibson', 'rahul95@example.org', '2022-07-02 21:00:29', '$2y$10$MPPs1Sgk1QxHnfMT8Au1dO.AcomYS53jQ07.JZuXTeqT1CjrmnhDy', 'Qa9g4DZUZF1ggtNTcg0s', '2022-07-02 21:00:30', '2022-07-02 21:00:30'),
	(5, 'Mrs. Vida Johnson III', 'ashlee.towne@example.org', '2022-07-02 21:00:29', '$2y$10$sKgq8jJVFVS5VYJyuoylEe7aS/A77u6d2VFIiIBFi9OBSEmCJdmJG', 'sR5A0e7GQPlDLxsOPqDH', '2022-07-02 21:00:30', '2022-07-02 21:00:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
