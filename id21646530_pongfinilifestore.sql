-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 31 Des 2023 pada 07.07
-- Versi server: 10.5.20-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21646530_pongfinilifestore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$m9YPxZ9Q.zVdYiHDeWv73u5VrRVIjMU8K/nfMFxRgr75dMvtf9Doy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Xiom'),
(2, 'Butterfly'),
(3, 'Donic'),
(4, 'Stiga'),
(5, 'Lining'),
(6, 'Kasaka'),
(7, 'Yinhe'),
(8, 'Double Fish'),
(9, 'DHS'),
(10, 'Andro'),
(11, 'BG SPORT'),
(12, 'HTD SPORT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Jersey'),
(2, 'Rubber'),
(3, 'Blade'),
(4, 'Ball'),
(5, 'Table'),
(6, 'Sport Pants');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_pending`
--

CREATE TABLE `order_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_pending`
--

INSERT INTO `order_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 2, 984584528, 1, 2, 'pending'),
(2, 2, 1351860816, 8, 1, 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(1, 'Butterfly Autumn Edition Jersey', 'Embrace the spirit of the season with our exquisite Butterfly Autumn Edition Jersey, a perfect blend of style and functionality for your active lifestyle. Crafted with meticulous attention to detail, this jersey is designed to elevate your performance whi', 'Jersey,Autumn,Butterfly', 1, 2, 'e2.png', 'e3.png', 'e7.png', '115000', '2023-12-31 05:02:50', 'true'),
(2, 'Butterfly Black&White Edition Jersey', 'Introducing the Butterfly Black & White Edition Jersey, where style meets functionality in the world of sports apparel. Crafted with precision and designed for those who demand both comfort and aesthetics, this jersey is a testament to the seamless blend ', 'Butterfly,Jersey,Black&White', 1, 2, 'e3.png', 'm5.png', 'm8.png', '75500', '2023-12-31 05:03:01', 'true'),
(3, 'Xiom Black Stripping Edition Jersey', 'The Xiom Black Stripping Edition Jersey is a pinnacle of style and functionality, designed for discerning table tennis enthusiasts. This cutting-edge jersey seamlessly blends performance-driven features with a sleek and dynamic aesthetic, elevating your g', 'Xiom,Black,Jersey', 1, 1, 'e4.png', 'm1.png', 'm6.png', '115000', '2023-12-31 05:03:07', 'true'),
(4, 'Donic Wavy Dark Blue Edition Jersey', 'Introducing the Donic Wavy Dark Blue Edition Jersey, a premium athletic apparel designed for table tennis enthusiasts who seek both performance and style. This cutting-edge jersey is meticulously crafted to provide unparalleled comfort, allowing players t', 'Donic,Blue,Jersey', 1, 3, 'e1.png', 'a13.png', 'a5.png', '75500', '2023-12-31 05:03:12', 'true'),
(5, 'Stiga Blue Yellow Stripping Edition Jersey', 'Elevate your game with the Stiga Blue Yellow Stripping Edition Jersey, a dynamic and stylish choice for table tennis enthusiasts. This cutting-edge jersey seamlessly combines performance and fashion, offering a range of features tailored to enhance your p', 'Stiga,Blue,Yellow,Jersey', 1, 4, 'e5.png', 'e6.png', 'a1.png', '115000', '2023-12-31 05:03:18', 'true'),
(6, 'Li-Ning Black Uniform China Team Edition', 'The Li-Ning Black Uniform China Team Edition represents the epitome of athletic elegance and performance. Crafted with meticulous attention to detail, this exclusive edition pays homage to the Chinese national team, capturing the essence of strength, unit', 'Lining,Black,China,Jersey', 1, 5, 'e6.png', 'a2.png', 'a6.png', '60000', '2023-12-31 05:03:23', 'true'),
(7, 'Butterfly Combination Edition Jersey', 'The Butterfly Combination Edition Jersey is a unique and stylish sports apparel designed to elevate your athletic performance with a touch of elegance. This exceptional jersey seamlessly blends cutting-edge technology with a visually striking design, maki', 'Butterfly,Jersey', 1, 2, 'e7.png', 'm3.png', 'm7.png', '75000', '2023-12-31 05:03:28', 'true'),
(8, 'XIOM White Pink Gradation Edition Jersey', 'The XIOM White Pink Gradation Edition Jersey is a stunning and stylish addition to the XIOM sports apparel lineup. Designed for both comfort and aesthetics, this jersey seamlessly blends functionality with a fashionable gradient of white and pink tones.', 'Xiom,White,Pink,Jersey', 1, 1, 'e8.png', 'a8.png', 'a10.png', '115000', '2023-12-31 05:03:34', 'true'),
(9, 'Kasaka FANZEN Carbon Blade', 'Introducing the Kasaka FANZEN Carbon Blade, a cutting-edge innovation designed for the ultimate gaming experience. Crafted with precision and engineered for performance, this carbon blade takes gaming to new heights.', 'Kasaka,Carbon,Blade', 3, 6, 'l7.jpeg', 'c5.png', 'c2.png', '100000', '2023-12-31 05:03:40', 'true'),
(11, 'DHS Power G-7 PG7', 'Powerfull blade with control and chill play style, give your chance to brush the ball more accurate and more powerfull.', 'DHS', 3, 9, 'c3.png', 'c4.png', 'c1.png', '370000', '2023-12-31 05:07:35', 'true'),
(12, 'Andro Inizio Off Blade', 'Here we welcome a super value offensive blade. Designed for traditionalist players who prefers to use all wood blades. Fast with a lot of touch, consistent in power for all out attacking style. Supportive choice for players who require accuracy in strong ', 'Andro,Blade', 3, 10, 'c2.png', 'l8.jpeg', 'c3.png', '275000', '2023-12-31 05:09:44', 'true'),
(13, 'Yinhe Pro 01 ALC', 'The Yinhe Pro 01 ALC blade is a high-performance table tennis blade designed for the discerning player seeking a perfect balance of speed, control, and spin. Crafted with precision and advanced materials, this blade exemplifies the fusion of cutting-edge ', 'Yinhe,Blade', 3, 7, 'c1.png', 'c5.png', 'l7.jpeg', '610000', '2023-12-31 05:11:23', 'true'),
(14, 'Tenergy 64FX Rubber', 'The Tenergy 64FX Rubber is a high-performance table tennis rubber designed to meet the demands of advanced and professional players. Engineered by Butterfly, a renowned name in table tennis equipment, the Tenergy 64FX is part of the Tenergy series known f', 'Butterfly,Tenergy,Rubber', 2, 2, 'l5.jpeg', 'l6.jpeg', 'r2.jpeg', '100000', '2023-12-31 05:14:17', 'true'),
(15, 'Yinhe 9000 E Rubber', 'Introducing the Yinhe 9000 E Rubber, a cutting-edge table tennis rubber designed to elevate your game to new heights. Crafted by the renowned sports equipment manufacturer Yinhe, this rubber is a result of precision engineering and advanced technology to ', 'Yinhe,Rubber', 2, 7, 'l6.jpeg', 'l5.jpeg', 'r2.jpeg', '45000', '2023-12-31 05:15:33', 'true'),
(16, 'Donic Baracuda', 'Donic Baracuda Rubber is a high-performance table tennis rubber designed for players seeking a versatile and dynamic playing experience. Known for its exceptional spin, speed, and control, this rubber caters to the needs of both intermediate and advanced ', 'Donic,Baracuda', 2, 3, 'r2.jpeg', 'l5.jpeg', 'r1.jpeg', '530000', '2023-12-31 05:16:44', 'true'),
(17, 'Double Fish 3 Star V40+ WTT Ball', 'The Double Fish 3 Star V40+ WTT (World Table Tennis) Ball is a high-quality table tennis ball designed for professional and competitive play. Crafted by Double Fish, a renowned brand in the table tennis world, this ball has been approved by the World Tabl', 'Double Fish,Ball', 4, 8, 'l3.jpeg', 'l1.jpeg', 'l2.jpeg', '83000', '2023-12-31 05:19:48', 'true'),
(18, 'DHS DJ40+ WTT Ball', 'The DHS DJ40+ WTT Table Tennis Ball is a high-quality and professional-grade ball designed for use in competitive table tennis matches. Crafted by DHS, a renowned brand in the world of table tennis equipment, this ball is approved by the World Table Tenni', 'DHS,Ball', 4, 9, 'l4.jpeg', 'l3.jpeg', 'l2.jpeg', '84000', '2023-12-31 05:21:01', 'true'),
(19, 'Stiga 3-Star Perform 40+ ABS Poly Balls', 'Experience exceptional precision and performance in your table tennis game with the Stiga 3-Star Ball. Designed for professional and competitive play, this table tennis ball is crafted to meet the exacting standards of international tournaments. The 3-sta', 'Stiga,Ball', 4, 4, 'l2.jpeg', 'l3.jpeg', 'l4.jpeg', '30000', '2023-12-31 05:22:17', 'true'),
(20, 'Stiga 3-Star Competition Balls', 'Experience the pinnacle of table tennis with Stiga 3-Star Competition Balls, meticulously crafted to meet the exacting standards of professional players and competitive enthusiasts. Designed by Stiga, a renowned name in the world of table tennis equipment', 'Stiga,Ball', 4, 4, 'l1.jpeg', 'l2.jpeg', 'l3.jpeg', '18000', '2023-12-31 05:23:34', 'true'),
(21, 'DHS Rainbow Neo 2 2022 Edition', 'Experience precision and performance with the DHS Rainbow Neo 2, 2022 Edition. Crafted by Double Happiness Sports, renowned for excellence in table tennis equipment, this edition is designed to elevate your game to new heights.', 'DHS,Table', 5, 9, 'l9.jpg', 't2.jpeg', 'l9.jpg', '43000000', '2023-12-31 05:33:11', 'true'),
(22, 'Table Tennis DHS Black Golden Rainbow', 'The DHS Black Golden Rainbow Table Tennis Racket is a testament to the perfect fusion of cutting-edge technology and exceptional design in the world of table tennis. Crafted by the renowned table tennis equipment manufacturer DHS (Double Happiness), this ', 'DHS,Table', 5, 9, 'l10.png', 'l9.jpg', 't1.jpeg', '40000000', '2023-12-31 05:34:24', 'true'),
(23, 'Butterfly Sport Pants Short', 'Introducing our Butterfly Sport Pants Short, the perfect blend of style and functionality for your active lifestyle. Crafted with precision, these shorts are designed to provide optimal comfort and flexibility during your workouts, sports activities, or c', 'Butterfly,Sport', 6, 2, 'l1.png', 'b1.jpeg', 'b4.jpeg', '50000', '2023-12-31 05:35:43', 'true'),
(24, 'Andro Sport Pants Long', 'Andro Sport Pants Long\" is a high-performance athletic wear designed to elevate your sports and fitness experience. Crafted with precision and comfort in mind, these sport pants are tailored for individuals who value both style and functionality in their ', 'Andro,Sport', 6, 10, 'l2.png', 'b5.jpeg', 'l1.png', '72000', '2023-12-31 05:36:43', 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(1, 2, 230000, 1907604807, 1, '2023-12-30 18:40:13', 'pending'),
(2, 2, 230000, 984584528, 1, '2023-12-30 18:41:02', 'pending'),
(3, 2, 190000, 1351860816, 2, '2023-12-31 04:49:19', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'Andhika EPS', 'andhika@gmail.com', '1234', 'dhika.png', 'user_ip', 'user_address', '081234567'),
(2, 'Andhika Malik', 'malik@gmail.com', '$2y$10$iSLds5mKSjs9JrRqXrzuY.7h2ZCUOwkGFMc8ql.yWBsUPJmpF/dxW', '_MG_1296.JPG', '::1', 'Bekasi', '0898012345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `order_pending`
--
ALTER TABLE `order_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `order_pending`
--
ALTER TABLE `order_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
