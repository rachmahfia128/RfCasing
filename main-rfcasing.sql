-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 09:33 AM
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
-- Database: `main-rfcasing`
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
-- Table structure for table `metode_pembayarans`
--

CREATE TABLE `metode_pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metode_pembayarans`
--

INSERT INTO `metode_pembayarans` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'BCA', '612578967543', '2025-06-12 11:11:33', '2025-06-12 21:28:50');

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
(4, '2025_05_21_144726_create_personal_access_tokens_table', 1),
(5, '2025_05_22_054157_create_products_table', 1),
(6, '2025_05_23_155758_create_metode_pembayarans_table', 1),
(7, '2025_06_07_103029_create_transaksis_table', 1),
(8, '2025_06_07_103154_create_transaksi_details_table', 1),
(9, '2025_06_07_175300_add_user_id_to_transaksis_table', 1),
(10, '2025_06_08_162232_add_foreign_key_to_user_id_in_transaksis_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ArmorShield X1', 'ArmorShield X1 adalah casing handphone yang dirancang dengan standar perlindungan tinggi untuk kamu yang menginginkan keamanan maksimal tanpa mengorbankan estetika. Casing ini memadukan dua bahan unggulan: TPU yang fleksibel dan PC (polycarbonate) yang keras, memberikan perlindungan ganda dari benturan, jatuh, maupun goresan tajam. Sudut-sudutnya dilengkapi dengan teknologi air-cushion yang mampu menyerap energi saat terjadi benturan, mengurangi risiko kerusakan pada perangkat. Desainnya yang modern dan maskulin cocok untuk pengguna aktif, traveler, ataupun pekerja lapangan yang memerlukan casing tahan banting namun tetap stylish.', 'Protective', 89000.00, '/storage/images/qSCdMVFMxiDVwErLWZEG0NJu85bBdynpe11RSCOl.jpg', '2025-06-12 10:55:21', '2025-06-12 12:13:25'),
(2, 'Silicone Soft Touch', 'Silicone Soft Touch dirancang untuk memberikan kenyamanan dan keindahan dalam satu paket. Menggunakan bahan silikon premium dengan finishing halus, casing ini terasa sangat lembut di tangan dan tidak licin saat digenggam, cocok untuk penggunaan sehari-hari. Selain tampilannya yang simpel dan elegan dengan pilihan warna pastel kekinian, casing ini juga memiliki daya tahan tinggi terhadap debu, goresan kecil, dan sidik jari. Ketebalannya yang pas menjaga profil ponsel tetap ramping namun tetap terlindungi. Sangat ideal untuk pengguna yang mengutamakan kenyamanan dan gaya minimalis.', 'Softcase', 55000.00, '/storage/images/vLgqVwtXYQv6yuKfxsTGFTISjGNfYLucPVZkXwDv.jpg', '2025-06-12 10:56:10', '2025-06-12 12:14:03'),
(3, 'Crystal Clear Case', 'Crystal Clear Case merupakan casing transparan berkualitas tinggi yang memungkinkan kamu memamerkan desain asli dan warna ponsel tanpa hambatan. Terbuat dari material TPU jernih yang tidak mudah menguning seiring waktu, casing ini sangat cocok bagi kamu yang menyukai tampilan natural dan clean. Perlindungannya cukup baik untuk mencegah goresan dan debu, serta memiliki desain ramping yang tetap nyaman di saku. Cocok untuk pengguna yang ingin mempertahankan estetika original dari ponsel mereka sambil tetap memberikan perlindungan dasar.', 'Clear Case', 45000.00, '/storage/images/uy2ewCAfqs0wqKnVJqJK2oZMICwxnSnQkvP7fKGb.jpg', '2025-06-12 10:56:51', '2025-06-12 12:14:21'),
(4, 'Luxury Leather Flip', 'Luxury Leather Flip adalah pilihan sempurna bagi kamu yang menginginkan casing multifungsi dengan tampilan elegan. Menggunakan bahan kulit sintetis premium dengan jahitan halus, casing ini tidak hanya melindungi ponsel dari segala sisi, tetapi juga menyediakan slot untuk menyimpan kartu dan uang tunai, menjadikannya dompet mini yang praktis. Desain flip-nya memberikan proteksi penuh terhadap layar, dan bagian dalamnya dilapisi bahan lembut untuk menghindari goresan. Sangat cocok bagi profesional, pelajar, maupun pebisnis yang mencari gaya klasik dan kemudahan dalam satu genggaman.', 'Flip Case', 120000.00, '/storage/images/l9Vru1AR1Qfb3tP3Lb46sobCngzqcKlDxrcsZ96X.jpg', '2025-06-12 10:57:42', '2025-06-12 12:14:45'),
(5, 'Slim Matte Black', 'Slim Matte Black adalah casing ultra tipis yang dirancang khusus bagi pengguna yang menyukai kesan minimalis dan elegan. Dengan finishing matte berkualitas tinggi, casing ini anti-sidik jari dan tahan terhadap goresan ringan. Meskipun ringan dan tipis, casing ini tetap memberikan perlindungan memadai untuk penggunaan sehari-hari, terutama dari benturan kecil dan debu. Cocok digunakan di berbagai situasi — baik formal maupun kasual — casing ini menonjolkan kesederhanaan yang anggun, membuatnya sangat disukai oleh para profesional muda dan pengguna yang aktif di dunia kerja.', 'Slim Case', 60000.00, '/storage/images/TE4cGpmpamgtOih9H5qDTDDgc2gIChNi2gJu6qIS.jpg', '2025-06-12 10:58:31', '2025-06-12 12:15:03'),
(6, 'Shockproof Rugged Armor', 'Shockproof Rugged Armor adalah casing heavy-duty yang dirancang untuk melindungi ponsel dari kondisi ekstrem. Dengan desain kokoh dan struktur berlapis, casing ini sangat cocok bagi pengguna yang gemar beraktivitas di luar ruangan, seperti mendaki, bersepeda, atau bekerja di lapangan. Sudut casing dirancang khusus dengan teknologi anti-shock untuk meminimalkan dampak saat terjatuh. Selain kuat, casing ini juga memiliki tampilan maskulin dengan tekstur yang memberikan grip mantap. Ini bukan hanya casing pelindung — ini adalah perisai untuk perangkat kesayanganmu.', 'Rugged Case', 99000.00, '/storage/images/YvOP6fLJ4WBhCsQ12gCsJ6BxEF2KaTYgg6teRpN8.jpg', '2025-06-12 10:59:47', '2025-06-12 12:15:26'),
(7, 'Cute Bear Stand Case', 'Cute Bear Stand Case adalah casing yang menggabungkan desain menggemaskan dengan fungsi praktis. Didesain dengan motif beruang lucu yang menonjol, casing ini sangat digemari oleh pengguna muda dan pecinta gaya kawaii. Selain tampilannya yang ceria, casing ini juga dilengkapi dengan kickstand bawaan di bagian belakang yang memungkinkan ponsel berdiri sendiri — ideal untuk menonton video, video call, atau browsing tanpa perlu dipegang. Terbuat dari bahan silikon lentur dan ringan, casing ini juga nyaman digunakan sepanjang hari.', 'Cute Case', 65000.00, '/storage/images/0xn8fUS5aCDZMK7O4nFfN6yN7TJLV3T6f4nqmkQi.jpg', '2025-06-12 11:01:14', '2025-06-12 12:15:48'),
(8, 'Carbon Fiber Texture', 'Carbon Fiber Texture adalah casing elegan yang dibuat untuk kamu yang menyukai tampilan modern dan profesional. Dengan tekstur serat karbon yang khas, casing ini menawarkan kombinasi antara keindahan dan daya tahan. Bahan yang digunakan ringan namun kuat, memberikan perlindungan terhadap goresan dan benturan ringan. Desainnya yang tipis tidak membuat ponsel terasa berat, sementara permukaan anti-selip membuatnya nyaman dan aman saat digenggam. Cocok bagi pengguna yang ingin tampil stylish namun tetap menjaga keamanan perangkat.', 'Premium', 75000.00, '/storage/images/oSJp4NuKDI1frjHNScPc9QSdoe77TeJOZZ5UNK8N.jpg', '2025-06-12 11:04:34', '2025-06-12 12:16:05'),
(9, 'Glow in The Dark Case', 'Glow in The Dark Case adalah casing unik yang mampu menyala dalam gelap, menciptakan efek visual yang menarik terutama di malam hari. Dengan motif bintang dan bulan yang menyerap cahaya, casing ini menyala secara otomatis saat lampu mati. Selain tampilannya yang nyentrik, casing ini juga terbuat dari bahan fleksibel dan ringan yang tetap memberikan perlindungan terhadap benturan ringan dan goresan. Cocok untuk kamu yang ingin tampil beda dan mencuri perhatian saat hangout bersama teman-teman di malam hari.', 'Unik', 70000.00, '/storage/images/C6GKNPaHB6Ch8F8KvPb21cvlCjpSWVGm0HU0XFy2.jpg', '2025-06-12 11:05:56', '2025-06-12 12:16:28'),
(11, 'MagSafe Magnetic Case', 'MagSafe Magnetic Case dirancang khusus untuk pengguna iPhone yang ingin memanfaatkan penuh teknologi MagSafe dari Apple. Dilengkapi dengan cincin magnet bawaan yang terintegrasi sempurna dengan sistem MagSafe, casing ini mendukung pengisian daya nirkabel yang stabil dan cepat tanpa harus melepas casing. Selain itu, casing ini juga kompatibel dengan berbagai aksesori MagSafe lainnya seperti dompet tempel, holder mobil, atau dock pengisian.', 'MagSafe Case', 135000.00, '/storage/images/7pP0Y2rDLFSwbJxQympcABXWsPF90zXkhsfuG6JM.jpg', '2025-06-12 21:24:52', '2025-06-12 21:25:19');

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
('f70Pv0fX7yu3gbFCoz478y7m6QoeDpdE2l9BRPjD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibklwS0VGcGFVWXk1OEJCMXZ6eUNtYUxrbE42NXloVnF4OUdIWTRuQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9yZmNhc2luZy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749784351),
('gAkw6QTj7M7ipODaZEedHTzvUUkR093kFBQJo3e9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDllUTV3SFp0Uk9VNzFCYUNuV1F1OUhyR0pxUFVJNmp1YzhQNmt3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9yZmNhc2luZy5jb20vaW5mb3JtYXNpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1749791302),
('uhmZwM3GzKzCIaWKzcnnP7psFKrYJXh3pFK9SyCa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVBCZG84Y2FrWFM0UTBnaTE0eEZPa2d2THlkVXhDQVRIY3pBdk5CQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749788869);

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `metode_pembayaran_id` bigint(20) UNSIGNED NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `status` enum('transaksi terkirim ke admin','admin konfirmasi transaksi','admin menyiapkan produk','produk diserahkan ke kurir','produk dalam perjalanan') NOT NULL DEFAULT 'transaksi terkirim ke admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `user_id`, `nama`, `telepon`, `alamat`, `metode_pembayaran_id`, `bukti_pembayaran`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nia Rizqika Febria Rahma', '085735638169', 'Jl. Jambangan II-A, Surabaya', 1, 'images/cROxPc1HYk8X8fOtE7fndAe4UdOagVjIxpnxwyF4.jpg', 368000.00, 'admin konfirmasi transaksi', '2025-06-12 11:12:28', '2025-06-12 11:13:03'),
(2, 2, 'Nia Rizqika Febria Rahma', '081335732723', 'Jl. Darmo Baru Barat 3 No. 55, Surabaya', 1, 'images/KS2NjtFDNvMyRxVF8fbF319zo8wVSPvRQXU5JD5k.jpg', 60000.00, 'admin menyiapkan produk', '2025-06-12 21:31:26', '2025-06-12 21:32:35'),
(3, 1, 'Rachmah Fia Putri Dewi', '08573563169', 'Jl. Darmo Baru Barat 3 No. 55, Surabaya', 1, 'images/sUtJvfcIV5BURy89POVNW7cSOUOa11zHYv9giujA.jpg', 89000.00, 'transaksi terkirim ke admin', '2025-06-12 22:08:18', '2025-06-12 22:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `product_id`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ArmorShield X1', 1, 89000.00, '2025-06-12 11:12:28', '2025-06-12 11:12:28'),
(2, 1, 3, 'Crystal Clear Case', 1, 45000.00, '2025-06-12 11:12:28', '2025-06-12 11:12:28'),
(3, 1, 6, 'Shockproof Rugged Armor', 1, 99000.00, '2025-06-12 11:12:28', '2025-06-12 11:12:28'),
(4, 1, 7, 'Cute Bear Stand Case', 1, 65000.00, '2025-06-12 11:12:28', '2025-06-12 11:12:28'),
(5, 1, 9, 'Glow in The Dark Case', 1, 70000.00, '2025-06-12 11:12:28', '2025-06-12 11:12:28'),
(6, 2, 5, 'Slim Matte Black', 1, 60000.00, '2025-06-12 21:31:26', '2025-06-12 21:31:26'),
(7, 3, 1, 'ArmorShield X1', 1, 89000.00, '2025-06-12 22:08:18', '2025-06-12 22:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Rachmah Fia Putri Dewi', 'rachmah.23057@mhs.unesa.ac.id', '$2y$12$BmI7PUtXdVPiq1yikGvs/e1TsFmgu6M.Il.0fzfqTtfPJ7GxkBElq', 'user', '2025-06-12 10:53:23', '2025-06-12 10:53:23'),
(2, 'admin-rfcasing', 'admin@rfcasing.com', '$2y$12$s0npqS26jGPeRX4KyGr4SO19pPZPHsI8YH108uqkDvh19t8Hjr/VO', 'admin', '2025-06-12 10:54:20', '2025-06-12 10:54:20'),
(3, 'Arum Sekar Wijayanti', 'arum.23064@mhs.unesa.ac.id', '$2y$12$emyQsgPzirBWPW2eY5J2yedasU2AGzCIjKr7hSmHD19WZBwd5dCsq', 'user', '2025-06-12 21:20:11', '2025-06-12 21:20:11');

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
-- Indexes for table `metode_pembayarans`
--
ALTER TABLE `metode_pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_metode_pembayaran_id_foreign` (`metode_pembayaran_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`);

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
-- AUTO_INCREMENT for table `metode_pembayarans`
--
ALTER TABLE `metode_pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_metode_pembayaran_id_foreign` FOREIGN KEY (`metode_pembayaran_id`) REFERENCES `metode_pembayarans` (`id`),
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
