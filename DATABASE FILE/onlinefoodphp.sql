-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 11:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'admin123', 'admin@mail.com', '', '2022-07-07 08:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Yorkshire Lamb Patties', 'Lamb patties yang akan melelehkan mulut anda, dan gampang dibuat. Disajikan dengan krispi salad dan panas.', '14.00', '62908867a48e4.jpg'),
(2, 1, 'Lobster Thermidor', 'Lobster Thermidor adalah makanan perancis yang terdiri dari daging lobster yang dimasak dengan saus wine', '36.00', '629089fee52b9.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira dibuat daging ayam dan jamur dan wine tetapi wine nya beda', '23.00', '62908bdf2f581.jpg'),
(4, 1, 'Stuffed Jacket Potatoes', 'Goreng kentang utuh dalam minyak selama 8-10 menit atau lapisi setiap kentang dengan sedikit minyak. Campur bawang bombay, bawang putih, tomat dan jamur. Tambahkan yogurt, jahe, bawang putih, cabai, ketumbar', '8.00', '62908d393465b.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti dengan udang dalam saus tomat segar. Hidangan ini berasal dari Italia Selatan dan dengan kombinasi udang, bawang putih, cabai dan pasta. Hiasi masing-masing dengan sisa sendok makan peterseli.', '21.00', '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Kentang Tumbuk Keju yang Lezat. Tumbuk terbaik untuk meja Thanksgiving Anda atau pendamping sempurna untuk casserole sosis vegan. Semua orang akan menyukainya lembut, cheesy.', '5.00', '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Potongan ayam goreng, disajikan dengan saus mustard madu spesial.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Dada ayam panggang rosemary yang diasinkan disajikan dengan kentang tumbuk dan pasta pilihan Anda.', '11.00', '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Wajan nasi Cina dengan kubis, buncis, wortel, dan daun bawang.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 potong kerupuk goreng', '7.00', '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Kubis parut, bawang bombay dan wortel yang dibumbui ringan, dibungkus dengan bungkus lumpia buatan sendiri, digoreng hingga berwarna cokelat keemasan.', '6.00', '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Potongan ayam yang dimasak perlahan dengan daun bawang di rumah kami membuat saus gaya manchuria', '11.00', '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Sayap ayam goreng dengan saus Buffalo pedas disajikan dengan batang seledri renyah dan saus keju biru.', '11.00', '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Disajikan dengan queso pedas tradisional dan saus marinara.', '9.00', '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Irisan kentang spiral, dengan topping queso pedas tradisional kami, keju Monterey Jack, pico de gallo, krim asam, dan daun ketumbar segar.', '6.00', '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Bakso daging sapi herba bawang putih dilemparkan ke dalam saus marinara buatan rumah dan pasta penne dengan peterseli segar.', '10.00', '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'dalam proses', 'none', '2022-06-07 05:17:49'),
(2, 3, 'dalam proses', 'none', '2022-06-07 11:01:30'),
(3, 2, 'tertutup', 'Terimakasih atas pesananya', '2022-06-07 11:11:41'),
(4, 3, 'tertutup', 'none', '2022-06-07 11:42:35'),
(5, 4, 'dalam proses', 'none', '2022-06-07 11:42:55'),
(6, 1, 'ditolak', 'none', '2022-06-07 11:43:26'),
(7, 7, 'dalam proses', 'none', '2022-06-07 13:03:24'),
(8, 8, 'dalam proses', 'none', '2022-06-07 13:03:38'),
(9, 9, 'ditolak', 'Terimakasih', '2022-06-07 13:03:53'),
(10, 7, 'ditutup', 'Terima kasih telah mememsan di saya', '2022-06-07 13:04:33'),
(11, 8, 'ditutup', 'terimakasih', '2022-06-07 13:05:24'),
(12, 5, 'ditutup', 'none', '2022-06-07 13:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'North Street Tavern', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '8 pagi', '8 malam', 'senin-sabtu', '1128 North St, White Plains', '6290877b473ce.jpg', '2022-07-08 08:48:07'),
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11 Pagi', '9 Malam', 'senin-sabtu', '800 Boylston St, Boston', '606d720b5fc71.jpg', '2022-07-07 08:06:41'),
(3, 3, 'Nan Xiang Xiao Long Bao', 'nanxiangbao45@mail.com', '1458745855', 'www.nanxiangbao45.com', '9 Pagi', '8 Malam', 'senin-sabtu', 'Queens, New York', '6290860e72d1e.jpg', '2022-07-07 08:04:30'),
(4, 4, 'Highlands Bar & Grill', 'hbg@mail.com', '6545687458', 'www.hbg.com', '7 Pagi', '8 Malam', 'senin-sabtu', '812 Walter Street', '6290af6f81887.jpg', '2022-07-07 11:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-07-07 08:07:35'),
(2, 'Italian', '2021-07-07 08:45:23'),
(3, 'Chinese', '2022-07-07 08:45:25'),
(4, 'American', '2022-07-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'erik', 'Erik', 'Kikuk', 'erik@mail.com', '1458965547', 'erik123', 'Untung Suropati', 1, '2022-07-08 08:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, '6.00', 'ditolak', '2022-07-07 11:43:26'),
(2, 4, 'Prawn Crackers', 1, '7.00', 'ditutup', '2022-07-07 11:11:41'),
(3, 5, 'Chicken Madeira', 1, '23.00', 'ditutup', '2022-07-07 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, '5.00', 'dalam proses', '2022-07-07 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'ditutup', '2022-07-07 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2022-07-07 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, '14.00', 'ditutup', '2022-07-07 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'ditutup', '2022-07-07 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'ditolak', '2022-07-07 13:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
