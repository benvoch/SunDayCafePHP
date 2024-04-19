-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2024 at 02:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sundaycafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Cà phê'),
(2, 'Bánh ngọt'),
(3, 'Bánh mặn');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `order_date`, `status`) VALUES
(5, 4, '371000.00', '2024-04-14 07:33:57', 'Đã thanh toán'),
(7, 4, '102000.00', '2024-04-14 07:36:10', 'Đã thanh toán'),
(8, 4, '210000.00', '2024-04-14 07:38:54', 'Đã thanh toán'),
(9, 4, '190000.00', '2024-04-14 08:21:37', 'Đã thanh toán'),
(10, 4, '28000.00', '2024-04-14 09:04:02', 'Đã thanh toán'),
(11, 4, '188000.00', '2024-04-14 09:53:08', 'Đã thanh toán'),
(12, 5, '84000.00', '2024-04-14 10:20:18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(3, 5, 65, 8),
(4, 5, 64, 1),
(6, 7, 62, 1),
(7, 8, 42, 5),
(8, 9, 67, 5),
(9, 10, 61, 1),
(10, 11, 49, 1),
(11, 11, 67, 1),
(12, 11, 64, 1),
(13, 11, 36, 1),
(14, 11, 41, 1),
(15, 12, 42, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_bestseller` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `category_id`, `description`, `quantity`, `price`, `is_bestseller`) VALUES
(36, '270_crop_HLC_New_logo_5.1_Products__PHINDI_CHOCO.jpg', 'PHINDI CHOCO', 1, 'Cà phê ngọt thơm ngon', 30, '45000.00', 0),
(37, '270_crop_MOUSSECACAO.jpg', 'MOUSSECACAO', 2, 'Bánh ngọt cacao béo thơm', 40, '35000.00', 0),
(38, '270_crop_MOUSSECACAOSP.png', 'MOUSSECACAOSP', 2, 'Bánh ngọt cacao sô cô la ngọt ngào', 25, '30000.00', 0),
(39, 'AnhDanhMucTra.png', 'Bánh ngọt trà', 2, 'Bánh ngọt vị trà thơm ngon', 50, '25000.00', 0),
(40, 'BANHCHUOI.jpg', 'Bánh chuối', 2, 'Bánh ngọt vị chuối thơm', 30, '28000.00', 0),
(41, 'CARAMELPHOMAI.jpg', 'CARAMEL PHÔ MAI', 2, 'Bánh ngọt vị caramel phô mai thơm', 35, '32000.00', 0),
(42, 'HLC__PHIN_SUA_NONG.jpg', 'PHIN SỮA NÓNG', 1, 'Cà phê sữa nóng thơm ngon', 45, '42000.00', 0),
(43, 'HLC_New_logo_5.1_Products__AMERICANO_NONG.jpg', 'AMERICANO NÓNG', 1, 'Cà phê Americano nóng đậm đà', 30, '35000.00', 0),
(44, 'HLC_New_logo_5.1_Products__BAC_XIU.jpg', 'BÁC XÍU', 3, 'Bánh mặn nhân bạc xỉu thơm ngon', 20, '45000.00', 0),
(45, 'HLC_New_logo_5.1_Products__CAPPUCINO.jpg', 'CAPPUCINO', 1, 'Cà phê Cappucino thơm ngon', 40, '38000.00', 0),
(46, 'HLC_New_logo_5.1_Products__CARAMEL_MACCHIATTO.jpg', 'CARAMEL MACCHIATTO', 1, 'Cà phê caramel Macchiato thơm ngon', 35, '42000.00', 0),
(47, 'HLC_New_logo_5.1_Products__EXPRESSO.jpg', 'EXPRESSO', 1, 'Cà phê Espresso đậm đà', 50, '25000.00', 0),
(48, 'HLC_New_logo_5.1_Products__LATTE_1.jpg', 'LATTE', 1, 'Cà phê Latte thơm ngon', 30, '32000.00', 0),
(49, 'HLC_New_logo_5.1_Products__MOCHA.jpg', 'MOCHA', 1, 'Cà phê Mocha thơm ngon', 45, '38000.00', 0),
(50, 'HLC_New_logo_5.1_Products__PHIN_DEN_DA.jpg', 'PHIN ĐEN ĐÁ', 1, 'Cà phê phin đen đá thơm ngon', 35, '35000.00', 0),
(51, 'HLC_New_logo_5.1_Products__PHIN_DEN_DA_preview_rev_1.png', 'PHIN ĐEN ĐÁ', 1, 'Cà phê phin đen đá thơm ngon', 40, '30000.00', 0),
(52, 'HLC_New_logo_5.1_Products__PHIN_SUADA.jpg', 'PHIN SỮA ĐÁ', 1, 'Cà phê phin sữa đá thơm ngon', 25, '28000.00', 0),
(53, 'HLC_New_logo_5.1_Products__PHINDI_KEM_SUA.jpg', 'PHINDI KEM SỮA', 1, 'Cà phê phindi kem sữa thơm ngon', 30, '32000.00', 0),
(54, 'HLC_New_logo_5.1_Products__TSV.jpg', 'TRÀ SỮA VẢI', 1, 'Trà sữa vải thơm ngon', 35, '30000.00', 0),
(55, 'HLC_New_logo_5.1_Products__TRA_SEN_VANG_CU_NANG.jpg', 'TRÀ SEN VÀNG CỤ NĂNG', 1, 'Trà sen vàng cụ năng thơm ngon', 50, '45000.00', 0),
(56, 'HLC_New_logo_5.1_Products__TRA_TACH_VAI.jpg', 'TRÀ TÁCH VAI', 1, 'Trà tách vai thơm ngon', 40, '40000.00', 0),
(57, 'HLC_New_logo_5.1_Products__TRA_THANH_DAO-08.jpg', 'TRÀ THANH ĐÀO', 1, 'Trà thanh đào thơm ngon', 30, '32000.00', 0),
(58, 'HLC_New_logo_5.1_Products__TRA_THANH_DAO-09.jpg', 'TRÀ THANH ĐÀO', 1, 'Trà thanh đào thơm ngon', 45, '35000.00', 0),
(59, 'HLC_New_logo_5.1_Products__TRA_XANH_DAU_DO.jpg', 'TRÀ XANH DÂU ĐỎ', 1, 'Trà xanh dâu đỏ thơm ngon', 40, '38000.00', 0),
(60, 'HLC_PHIN_DEN_NONG.jpg', 'PHIN ĐEN NÓNG', 1, 'Cà phê phin đen nóng thơm ngon', 50, '40000.00', 0),
(61, 'MOUSSEDAO.png', 'MOUSSE ĐÀO', 2, 'Bánh ngọt mousse đào thơm ngon', 25, '28000.00', 0),
(62, 'MOUSSEDAOSP.png', 'MOUSSE DÂU', 2, 'Bánh ngọt mousse dâu thơm ngon', 35, '32000.00', 0),
(63, 'PHOMAICAPHE.jpg', 'PHÔ MAI CÀ PHÊ', 2, 'Bánh ngọt phô mai cà phê thơm ngon', 40, '38000.00', 0),
(64, 'PHOMAICHANHDAY.jpg', 'PHÔ MAI CHANH DÂY', 2, 'Bánh ngọt phô mai chanh dây thơm ngon', 30, '35000.00', 0),
(65, 'SOCOLAHL.png', 'SÔ CÔ LA HẠT LỬA', 2, 'Bánh ngọt sô cô la hạt lựa thơm ngon', 45, '42000.00', 0),
(67, 'TIRAMISU.jpg', 'TIRAMISU', 2, 'Bánh ngọt Tiramisu thơm ngon', 40, '38000.00', 0),
(68, '3P_COMBO_Tea_Berry.jpg', '3P COMBO Tea Berry', 1, 'Combo trà berry thơm ngon', 50, '50000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role_id`) VALUES
(1, 'admin', 'tovanthieu2002@gmail.com', '123456', 2),
(4, 'tovanthieu2002', 'tovanthieu2001@gmail.com', '$2y$10$csQtaP45z3plQetFX8m4IOtkvtxUerlLj2iPf2v2rElTQqG.Cn3Ba', 1),
(5, 't', 'tovanthieu22@gmail.com', '$2y$10$xyC.0OmXM7qk.hbIZGN2BuwAzNpK5PhAGk/ctY0AiaF.NAJa3CuW.', 1),
(6, 's', 'tovanthieu2002@gmail.com', '$2y$10$RtaFjZz4irfEFeJYv2rDiumXIt6YdSsYgpGalzFxdKwEEm.vYRPzC', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
