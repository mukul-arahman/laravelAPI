-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 05:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2020_11_06_024056_create_products_table', 1),
(15, '2020_11_06_024200_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Mitchell Wintheiser V', 'Aut ea nam incidunt deleniti. Exercitationem aut sed natus. Vitae quia ut consequuntur qui doloremque neque veniam.', 470, 0, 25, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(2, 'Ms. Leanne Doyle', 'Voluptates voluptatem nobis magni natus ipsam rerum. Distinctio odit ut ea tempora aut ipsa. Sit nisi perspiciatis eum nihil. Modi in consequatur voluptatem excepturi non excepturi et.', 471, 9, 2, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(3, 'Prof. Yazmin Swift PhD', 'At autem et quod in reprehenderit. Et recusandae id doloremque velit.', 735, 1, 29, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(4, 'Mrs. Deanna Prosacco', 'Eos explicabo consequatur consequatur rem deserunt. Quis iusto eos rerum ratione impedit aliquam.', 166, 8, 29, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(5, 'Ashlynn Heidenreich', 'Et qui qui harum aperiam quo nam nobis dicta. Iste amet veritatis quasi. Aut voluptatem libero non similique molestiae accusamus expedita. Ut ab ab quis pariatur cupiditate eos.', 373, 7, 19, '2020-11-05 22:06:59', '2020-11-05 22:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 4, 'Filomena Lehner', 'Eligendi laborum dolorum minima qui ad ut. Esse cum aut perspiciatis sint. Aut consectetur et eum dignissimos quia. Error inventore quos consectetur qui.', 2, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(2, 1, 'Trystan Hackett', 'Veritatis rem tenetur eos laudantium ullam rem dolor. Nostrum officiis cum assumenda libero esse aut. Quia eligendi at voluptatum omnis rem. Quas et voluptate sed error ratione eum aperiam. Voluptatem dolores voluptates architecto reiciendis consequatur.', 3, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(3, 4, 'Haleigh McClure', 'Illo reprehenderit perferendis odit sapiente nemo. In dolor aut quasi molestiae. Porro rerum aut est sunt. A reiciendis qui blanditiis et nisi nesciunt libero.', 4, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(4, 4, 'Reese Lubowitz', 'Eius et odio sed totam laudantium. Amet non omnis expedita animi.', 3, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(5, 1, 'Dr. Alvena Hirthe II', 'Alias neque nihil corporis quibusdam. Et et est rerum eius. Tempore unde voluptatibus sed quis quaerat voluptate veritatis. Doloremque labore neque quibusdam.', 0, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(6, 3, 'Carson Deckow', 'Ratione qui laudantium inventore ratione tempora distinctio. Officiis necessitatibus quisquam nihil velit ut qui et. Et similique iusto possimus sed aut. Et et velit molestiae inventore ut.', 4, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(7, 4, 'Aurore Smitham', 'Sed ipsum qui at quia minus autem. Illum delectus et suscipit mollitia explicabo.', 0, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(8, 3, 'Bryana Mann PhD', 'Omnis nihil qui error cum. Fugit praesentium voluptatum soluta qui vitae voluptatum quas ducimus. Dolorem at sint consequatur dolore excepturi fugiat. Nam corrupti ut aut blanditiis omnis hic similique possimus. Unde corrupti accusantium eaque ut hic.', 0, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(9, 3, 'Leora Olson', 'Corporis alias ducimus aut laboriosam officiis repellat dolores. At voluptas corporis aut veritatis praesentium. Rerum animi eos nam aut nostrum sapiente.', 1, '2020-11-05 22:06:59', '2020-11-05 22:06:59'),
(10, 5, 'Buford Schaefer', 'Facilis enim sequi veniam facere consequatur. Enim veniam provident officiis. Quidem ut architecto qui adipisci illum facilis hic. Est accusamus enim animi voluptates nemo.', 5, '2020-11-05 22:06:59', '2020-11-05 22:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
