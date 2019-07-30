-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2019 pada 06.04
-- Versi server: 10.2.10-MariaDB
-- Versi PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-auth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2018_04_07_170728_add_columns_to_users', 1),
(9, '2018_04_16_141215_add_avatar_to_user_table', 2),
(11, '2014_10_12_000000_create_users_table', 3),
(12, '2014_10_12_100000_create_password_resets_table', 3),
(13, '2018_04_16_142444_add_columns_to_users', 3),
(14, '2018_04_16_142609_add_avatar_to_users', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('adityamuhammadputra@gmail.com', '$2y$10$GYrdYGmgj9JUxwdkyQXdI.m1DXhtY8B0yKGYviGygQK3zn7gUmttq', '2018-04-20 09:44:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'avatars/change-user-male.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `active`, `activation_token`, `avatar`) VALUES
(2, 'adityamuhammadputra', 'adityamuhammadputra@gmail.com', '$2y$10$bLvUXAx5w5c3JnYAaZV3qu0uIy05Esxn27CDDyelLIzkZaVlZbYyW', 'tmT5d5wK48YtigRfFUQoSlxlWrNw8VvQSFGEBwQV3fjtAyxJE9NKSRqDyTrx', '2018-04-16 07:29:21', '2018-04-20 09:13:05', 1, NULL, 'avatars/change-user-male.png'),
(3, 'admin', 'adityamuhammadputra@yahoo.com', '$2y$10$DI7S3da5SaYe4UjijZwsWuTBw3fMRYeJ4gTZjpk1eVj7SNNrL8XTa', 'Jcd3vTMGcJsl9y8RDEeJWhs1an1bXUwFLeSTQ3R9TUVJ76LHcRnsr293R0pG', '2018-04-16 07:33:16', '2018-04-16 07:33:16', 0, 'UhilWHadNpz2VkbBfRWJ6iolmUQUQTEmPHPgarl1FqZZYiE0vFTXvff0o5QJPtoIg0cgndJFQ39zeXecc4BYHCOlkmXS6D3X2fuZYPfmxvxMuUiZP5VWYmyljC1ANtrczX3AYCeIJPGaJOd3L3R7YTMdf8ioDUJYvcBLUkU1b0hkZuQFpPsRfwzvcv7DQa', 'avatars/change-user-male.png'),
(4, 'user', 'useradityamuhammadputra@gmail.com', '$2y$10$R/9sRKuXqAuwuygnGCR/mecs2HA/wCJOSrhr2BPrxgIOPfqQP6Tum', 'd40gtUA48zass2E5LlsbiYWmL8wCJzroVWbEM0EmRPDngGw7YHz7hmMeRCmh', '2018-04-16 07:35:40', '2018-04-16 07:35:55', 1, NULL, 'avatars/change-user-male.png'),
(5, 'wahyu', 'wahyuaji@gmail.com', '$2y$10$9BM/bfCC.0674MWySj16l.GxTcrc9icv3OqbfO3FudbI/uiUNef26', 'ieeIDJnOe0lkvUM8lwtfnoJLnl7t5eYCEHP2hTzhTbTLJlmRSFGnn9nMDiOl', '2018-04-20 09:01:25', '2018-04-20 09:09:05', 1, NULL, 'avatars/change-user-male.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
