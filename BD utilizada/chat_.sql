-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 03:06:06
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-10-13 03:54:06', '2022-10-13 03:54:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_user`
--

CREATE TABLE `chat_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_user`
--

INSERT INTO `chat_user` (`id`, `user_id`, `chat_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `content`, `user_id`, `chat_id`, `created_at`, `updated_at`) VALUES
(1, 'fsdfsfsdsdf', 1, 1, '2022-10-13 06:22:36', '2022-10-13 06:22:36'),
(2, 'adaas', 1, 1, '2022-10-13 06:23:42', '2022-10-13 06:23:42'),
(3, 'daasads', 1, 1, '2022-10-13 06:23:52', '2022-10-13 06:23:52'),
(4, 'asfas', 2, 1, '2022-10-13 07:03:49', '2022-10-13 07:03:49'),
(5, 'asfasfasf', 2, 1, '2022-10-13 07:03:55', '2022-10-13 07:03:55'),
(6, 'fg', 2, 1, '2022-10-13 07:03:57', '2022-10-13 07:03:57'),
(7, 'Hola q tal', 2, 1, '2022-10-14 03:08:17', '2022-10-14 03:08:17'),
(8, 'Bien y tu :D', 1, 1, '2022-10-14 03:08:26', '2022-10-14 03:08:26'),
(9, 'mghgh', 2, 1, '2022-10-14 03:08:51', '2022-10-14 03:08:51'),
(10, 'hh', 2, 1, '2022-10-14 03:08:52', '2022-10-14 03:08:52'),
(11, 'h', 2, 1, '2022-10-14 03:08:52', '2022-10-14 03:08:52'),
(12, 'h', 2, 1, '2022-10-14 03:08:52', '2022-10-14 03:08:52'),
(13, 'h', 2, 1, '2022-10-14 03:08:52', '2022-10-14 03:08:52'),
(14, 'h', 2, 1, '2022-10-14 03:08:52', '2022-10-14 03:08:52'),
(15, 'h', 2, 1, '2022-10-14 03:08:55', '2022-10-14 03:08:55'),
(16, 'hgjhg', 1, 1, '2022-10-14 03:08:58', '2022-10-14 03:08:58'),
(17, 'sd', 2, 1, '2022-10-26 05:38:13', '2022-10-26 05:38:13'),
(18, 'sadas', 1, 1, '2022-10-26 05:38:19', '2022-10-26 05:38:19'),
(19, '.', 1, 1, '2022-10-26 05:58:13', '2022-10-26 05:58:13'),
(20, '.', 1, 1, '2022-10-26 05:58:13', '2022-10-26 05:58:13'),
(21, '.', 1, 1, '2022-10-26 05:58:13', '2022-10-26 05:58:13'),
(22, '.', 1, 1, '2022-10-26 05:58:13', '2022-10-26 05:58:13'),
(23, '.', 1, 1, '2022-10-26 05:58:14', '2022-10-26 05:58:14'),
(24, '.', 1, 1, '2022-10-26 05:58:14', '2022-10-26 05:58:14'),
(25, 'Hola', 1, 1, '2022-10-26 05:58:49', '2022-10-26 05:58:49'),
(26, 'Que tal', 2, 1, '2022-10-26 05:58:57', '2022-10-26 05:58:57'),
(27, '¿Como estas?', 1, 1, '2022-10-26 05:59:20', '2022-10-26 05:59:20'),
(28, 'Bien y tu', 2, 1, '2022-10-26 05:59:28', '2022-10-26 05:59:28'),
(29, 'Igual, ¿oye salimos a jugar futbol?', 1, 1, '2022-10-26 05:59:58', '2022-10-26 05:59:58'),
(30, 'Si, a que hora', 2, 1, '2022-10-26 06:00:18', '2022-10-26 06:00:18'),
(31, 'Te parece a las 8pm', 1, 1, '2022-10-26 06:03:14', '2022-10-26 06:03:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_02_12_202638_create_chats_table', 1),
(6, '2021_02_12_202737_create_chat_user_table', 1),
(7, '2021_02_12_204018_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Danny', 'danny@gmail.com', NULL, '$2y$10$VnVAokYJpjPH0NzST7bJuuBPgR2yH4EaatyaHM/f3NC5Z2/bao/h2', NULL, '2022-10-13 03:41:47', '2022-10-13 03:41:47'),
(2, 'Usuario', 'user@gmail.com', NULL, '$2y$10$UzbJgCT6HIUvvHRzS7hfO.pJBdUoQA1Drldte8k5XdVyCCjmSt2Eu', NULL, '2022-10-13 03:42:29', '2022-10-13 03:42:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_user`
--
ALTER TABLE `chat_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `chat_user`
--
ALTER TABLE `chat_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
