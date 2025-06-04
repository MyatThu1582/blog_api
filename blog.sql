-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 11:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'News', '2025-06-03 04:09:09', '2025-06-03 04:09:09'),
(2, 'Sports', '2025-06-03 04:09:23', '2025-06-03 04:09:29'),
(3, 'Travel', '2025-06-03 04:09:58', '2025-06-03 04:09:58'),
(4, 'Games', '2025-06-03 04:09:58', '2025-06-03 04:09:58');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image') NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`, `model_id`, `model_type`, `created_at`, `updated_at`) VALUES
(1, '683edee8e71ad_2025-06-03-11-39-20.png', 'image', '1', 'App\\Models\\Post', '2025-06-03 05:09:21', '2025-06-03 05:09:21'),
(2, '683edf8ca33de_2025-06-03-11-42-04.png', 'image', '2', 'App\\Models\\Post', '2025-06-03 05:12:04', '2025-06-03 05:12:04'),
(3, '6840048326990_2025-06-04-08-32-03.png', 'image', '3', 'App\\Models\\Post', '2025-06-04 02:02:03', '2025-06-04 02:02:03');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_02_105438_create_oauth_auth_codes_table', 2),
(5, '2025_06_02_105439_create_oauth_access_tokens_table', 2),
(6, '2025_06_02_105440_create_oauth_refresh_tokens_table', 2),
(7, '2025_06_02_105441_create_oauth_clients_table', 2),
(8, '2025_06_02_105442_create_oauth_personal_access_clients_table', 2),
(9, '2025_06_03_040716_create_categories_table', 3),
(10, '2025_06_03_050251_create_posts_table', 4),
(11, '2025_06_03_050617_create_media_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('25bbce920b54ac682e0be93346605b86beeb5764c7b22e916d497a5a4a0b142d41a386c2cc79812b', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:27:51', '2025-06-02 20:27:51', '2025-12-03 02:57:51'),
('3b0569086a22451d2a481c4128c5c4a158d48a56d9e085cc4905fc2795d3e9729b0c5eb64712154d', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:48:45', '2025-06-02 20:48:45', '2025-12-03 03:18:45'),
('3fb84cf20360f05dfaf94f1c2c373c872b816275a450831a9e10e226f1fd6040bdb6acac129101aa', 5, 1, 'Blog', '[]', 1, '2025-06-02 20:54:30', '2025-06-02 21:26:27', '2025-12-03 03:24:30'),
('566da4aa42e06d11e5bab59c5509a8c9dd501dbd4b2b0c3c74df086bdfd1001ebeb87fc4b9069b32', 4, 1, 'Blog', '[]', 0, '2025-06-02 04:46:22', '2025-06-02 04:46:22', '2025-12-02 11:16:22'),
('5a911772d69ad54c8b78e7eca518c4a0598bd75c3064313c5cd1804e2589eaa20915428b924b30e8', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:25:16', '2025-06-02 20:25:16', '2025-12-03 02:55:16'),
('5d5c1b091d85e07cea64d4678fcaf0c6de5ec835b4b18ee28f13ff18df5a675485e8da5f3fdb88ad', 5, 1, 'Blog', '[]', 0, '2025-06-02 04:47:12', '2025-06-02 04:47:12', '2025-12-02 11:17:12'),
('5f39bfa3a499cf8f8ece25c8af4645858975a3636fe6f0bfb74c83389efdec1403b2dbd296790a91', 5, 1, 'Blog', '[]', 1, '2025-06-02 21:26:54', '2025-06-02 21:27:35', '2025-12-03 03:56:54'),
('7f98fc3e8ffa2ea3e685519ffea896eafcc24f1dd992fac8d343f959c741d86483590651dcb274a2', 3, 1, 'Blog', '[]', 0, '2025-06-02 04:44:41', '2025-06-02 04:44:41', '2025-12-02 11:14:41'),
('a963ed943d3c1a574cae24edf271b4b4b995378284fba7575801a360d8666e6d667ca95e38891eda', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:27:47', '2025-06-02 20:27:47', '2025-12-03 02:57:47'),
('c254b39f68e7b116c33edeb14fa3adcf504dabc0bf2386005ff30365e024b21c8c900945778b0f9f', 5, 1, 'Blog', '[]', 0, '2025-06-04 01:17:32', '2025-06-04 01:17:32', '2025-12-04 07:47:32'),
('c7583743ad8376fb83f42ef4853eaf04ea02fe1708af7424ed143f2b60a78e1e3a6b20add70be929', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:27:49', '2025-06-02 20:27:49', '2025-12-03 02:57:49'),
('c7b0fd88224cfd5984736a46adab322337d025d88026e843f3dccab35059406158716cf219fb2b94', 5, 1, 'Blog', '[]', 0, '2025-06-03 20:34:44', '2025-06-03 20:34:44', '2025-12-04 03:04:44'),
('cad705f8392a6b22366337c4d2d6e8fee98d8e0f058c2b792259cbfa7b9410cc061421bd58167b05', 1, 1, 'Blog', '[]', 0, '2025-06-02 05:00:57', '2025-06-02 05:00:57', '2025-12-02 11:30:57'),
('d6088afd2a7f65944698b2f2b0200187f9cc00ab05d784fba95e0fdc40b7dc95c09730a276a0cd54', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:27:44', '2025-06-02 20:27:44', '2025-12-03 02:57:44'),
('da81bc40a959276e31dd11eeede11d0b5123d640ef569882821a65a405ffb8efbd21d7018e90ad36', 1, 1, 'Blog', '[]', 0, '2025-06-02 20:51:27', '2025-06-02 20:51:28', '2025-12-03 03:21:27'),
('e0d87f9f442a1a8f4697f3c83f9e9f15a9d1018cd60dfa9cc9bc46c938d3d4aceafc79f908cb4bde', 5, 1, 'Blog', '[]', 0, '2025-06-02 21:44:04', '2025-06-02 21:44:04', '2025-12-03 04:14:04'),
('e705a0468b65507894c4823d65557b2666e3c0051f482494d99435547271d5819b730a53fe0fa8cd', 5, 1, 'Blog', '[]', 0, '2025-06-03 05:02:38', '2025-06-03 05:02:38', '2025-12-03 11:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ed0L123mxZc1eBC3WV1xiLnpu0uwzSLTHo7Q7rBH', NULL, 'http://localhost', 1, 0, 0, '2025-06-02 04:26:07', '2025-06-02 04:26:07'),
(2, NULL, 'Laravel Password Grant Client', 'k6lL0R4jj9zlUmwFTuGt6wUQiZOCEPeLucz2spbB', 'users', 'http://localhost', 0, 1, 0, '2025-06-02 04:26:08', '2025-06-02 04:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-06-02 04:26:07', '2025-06-02 04:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'PSG’s Champions League win was thrilling. It was still sportswashing', 'Paris Saint-Germain’s success in the Champions League final on Saturday was a victory for youth and adventure. It was a victory for a team built with a coherent vision, and a rebuke to those who believe the game is just about collecting the biggest names. It was a victory for Luis Enrique, a very fine coach who has suffered dreadful personal tragedy. It was a victory for forward-thinking, progressive, fluent football.\n\nBut it was also a victory for sportswashing.\n\nIf you could divorce the game from its context, it was mesmerising. PSG were brilliant and although Inter were awful, at least some of that awfulness was provoked by the relentless energy of PSG. The five-goal margin was the widest in any European Cup or Champions League final and it’s hard to believe any final has been anywhere near so one-sided (at least until the next day’s Concacaf Champions Cup final, won by the same 5-0 scoreline).Four times before, there had been a four-goal margin in the Champions League final. There was Real Madrid’s fabled 7-3 victory over Eintracht Frankfurt at Hampden Park in 1960, the game that so inspired the future Manchester United manager Alex Ferguson. But part of the fascination there was that Frankfurt were also an exceptional side. They had beaten Rangers 12-4 on aggregate in the semi and they were good enough to take the lead – even if their second and third goals came as part of a four-goal flurry between the 71st and 75th minutes.', 2, '2025-06-03 05:09:21', '2025-06-03 05:09:21'),
(2, 5, 'South Korea goes to the polls to elect new president after Yoon crisis', 'South Korea goes to the polls to elect new president after Yoon crisis\nElection pitting liberal Lee Jae-myung against conservative candidate Kim Moon Soo comes after months of chaos following Yoon Suk Yeol’s short-lived imposition of martial law\n\nJustin McCurry in Tokyo and agencies in Seoul\nMon 2 Jun 2025 23.16 BST\nShare\nSouth Koreans are voting for a new president in a snap election triggered by a brief period of martial law imposed by the now-impeached former leader Yoon Suk Yeol.\n\nPolls suggested that Yoon’s liberal arch-rival, Lee Jae-myung, was heading for a comfortable victory in what Lee has described as “judgment day” for Asia’s fourth-biggest economy.\n\nLee, a 61-year-old former human rights lawyer who has made two failed attempts to reach the presidential Blue House, has ridden a wave of public anger that followed Yoon’s declaration of martial law in early December.\n\nThe order, which was overturned in a matter of hours, sparked South Korea’s biggest political crisis in decades, while the country also battles an economic downturn, income inequality and doubts over the US’s commitment to its security under Donald Trump.\n\nThe main conservative candidate, Kim Moon-soo, has struggled to win over moderate swing voters while his People Power party feuds over how to view Yoon’s legacy.Turnout was expected to be high. In early voting last Thursday and Friday, more than a third of the 44.39 million eligible voters cast their ballots. Polling stations close at 8pm on Tuesday, and the winner will be declared several hours later, possibly before midnight.\n\nSome South Koreans view the election, called after the constitutional court upheld Yoon’s impeachment in early April, as evidence that their democracy is in good health.\n\nBut the division unleashed by Yoon is expected to follow the new president into his single five-year term, which begins on Wednesday without the traditional two-month transition period.\n\nLarge crowds have taken to the streets in recent months to denounce or support Yoon, whose suspension, and then removal, left a leadership vacuum that shook the country’s diplomatic activities and financial markets.\n\nThe new president will face several major challenges, including a slowing economy, Trump’s trade war and the nuclear threat posed by North Korea.', 1, '2025-06-03 05:12:04', '2025-06-03 05:12:04'),
(3, 5, 'Refugee camp schools at risk in Bangladesh in aid crisis', 'Global aid cuts have forced the UN children\'s agency to sack more than 1,000 teachers in Bangladesh camps for Rohingya refugees, with more jobs at risk without funding .Around a million members of the persecuted and mostly Muslim Rohingya live in squalid relief camps in Bangladesh, most of them after fleeing a 2017 military crackdown in neighbouring Myanmar.\n\nThe teacher firings come in the wake of dramatic US funding cuts.\n\n\"Due to the global aid funding crisis, UNICEF has had to make difficult decisions impacting early education services for Rohingya refugee children,\" the agency said in a statement late Tuesday.\n\nUNICEF said that the contracts of 1,179 people working on kindergarten and primary schools were terminated.\n\nBefore the cuts, there were an estimated 4,000 teachers in the camps, according to Bangladeshi senior government aid official, Md Shamsud Douza.\n\nSchools have closed for the Muslim holiday of Eid, but if fresh funding is not secured by the time term resumes at the end of June, more teachers could lose their jobs.', 3, '2025-06-04 02:02:03', '2025-06-04 02:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8AoVndxfFVvJ7bQmX3LHu1WiUBC8P6LB6G7RLqnK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjhTT3c3SGFGU1pYSHNBVEV5RkJHVjU2VG1tYnN3NGR5eGU4eXQ0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748688868),
('BlT4zDOggF1r2zHRswSsnZrYQn9Xt8VOOK7hLIMw', NULL, '127.0.0.1', 'PostmanRuntime/7.44.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkF2eWhlQUR5bDUwanB1VzRsUkM0Q0RpbFRsZkRYZkJIZzVqeUpvRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748689387),
('E7clVmD4FGs0bPkSpHAVsuQL0nT7bQS299GiLBe5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW1UazJraVdRU2dTUTNuQkZnUmVjanJiYzl1VDkxZGs5YnQ0MHZLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748919285),
('enU2duQJHEIA3ba0z4cUUwk9nZfhvVpeiYrabwPu', NULL, '127.0.0.1', 'PostmanRuntime/7.44.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWZQT2Z6bWZOWjJSV1JzN095QWx0NkI3bmM5N3dtRzd4SEQ1RHc5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748851415),
('jfAmIqSh9jTDbAbWrinQgZldtL6Zh51cMDsSgtWW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVdHbWFLY0RXd3ZNWW1pUmlHNFhadlhjVEM5RWNJVDFLSjRUbmNQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748677085),
('PyYUg4lJkygStiGKtVUXhJfgmKxRnPYmK2COwlJr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGdnbjhKUDRUbGRERzJtbkRCUFhJaDBoVzV5Qlc4MEtXMlVQN1lqTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749023109),
('UE0cQks257v0PLbrLdLl3sxvzTi6huivCzuMjpXb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkk1MVcyT1VPY0s5NEpBU3plMXBTbmV0aHZJN2pxSzhIdHZBYU9RciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748949850),
('WHpu3qiEDKUasKaTBC1HAwCZUuVS3ursGPHEsuJF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVhMTGs5TFU2MUhYdjR3TFdtSzlZd2x1YkVxSHpqdFNTVmpHUkR0ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748855969),
('Z7P2Xxkk8EdYMB6kWs9G8vbXEWS0MhojDd288to9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickRGekNlMjF5eUJhQUdqVzNySkliVmcxWWRwUHN6Q3ZpQnduQmFnUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749006259);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mg mg', 'mgmg@gmail.com', NULL, '$2y$12$hdfVyZelMY0OdnwuEk6XlenAdZDcRXiSgbs4.hSUlegvziZy23qRu', NULL, '2025-06-02 02:57:16', '2025-06-02 02:57:16'),
(3, 'Aung Aung', 'aungaung@gmail.com', NULL, '$2y$12$z7uCQoQ6i.lj5MpBbTeeTeflf4WRNwrkuGf/P5.SSEyanUP0lNynC', NULL, '2025-06-02 04:44:41', '2025-06-02 04:44:41'),
(5, 'Tun Tun', 'tuntun@gmail.com', NULL, '$2y$12$OkcvDWuIwr52Aeb69Fhro.z3xPJUmIeTegBEDF32B3.iE61QwvRgW', NULL, '2025-06-02 04:47:12', '2025-06-02 04:47:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
