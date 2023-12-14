-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 09:20 PM
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
-- Database: `aaw_lucruindiv`
--

-- --------------------------------------------------------

--
-- Table structure for table `produse`
--

CREATE TABLE `produse` (
  `id` int(8) NOT NULL,
  `image` varchar(280) NOT NULL,
  `category` text NOT NULL,
  `titlu` varchar(255) NOT NULL,
  `brand` varchar(120) NOT NULL,
  `type` varchar(100) NOT NULL,
  `descriere` text NOT NULL,
  `pret` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `isbn` int(16) NOT NULL,
  `an_publicare` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produse`
--

INSERT INTO `produse` (`id`, `image`, `category`, `titlu`, `brand`, `type`, `descriere`, `pret`, `created_at`, `updated_at`, `isbn`, `an_publicare`) VALUES
(31, 'https://enter.online/images/product/2023/09/enter-apple-iphone-15-314458.webp', 'Telefoane', 'Apple iPhone 15', 'Apple', 'iPhone 15', 'Tehnologie de fabricație : 12 nm\r\nCamera frontală : 5 MP\r\nNr. nuclee : 6\r\nCapacitate acumulator : 5000 mAh', 2190, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(33, 'https://darwin.md/images/product/2022/01/darwin-laptop-acer-predator-helios-300-ph315-54-abyssal-black-063.webp', 'Laptop-uri', 'Laptop Acer', 'Acer', 'Predator Helios 300 ', 'Rezoluție display : Full HD\r\nIluminarea tastaturii : RGB\r\nSegment : Gaming', 5300, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(34, 'https://darwin.md/images/product/2022/06/darwin-laptop-asus-rog-strix-scar-15-g533zw-black-08.webp', 'Laptop-uri', 'Laptop Asus', 'Asus', 'ROG Strix Scar 15 ', 'Tip memorie : DDR5\r\nIluminarea tastaturii : RGB\r\nSegment : Gaming', 7000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(37, 'https://enter.online/images/product/2022/12/enter-geanta-pentru-laptop-rivacase-8037-18358976.webp', 'Accesorii', 'Geanta pentru Laptop ', 'RivaCase', 'Geanta pentru Laptop RivaCase', 'Dimensiune ecran	15.6\r\nMaterial	Polyester\r\nProtecție împotriva umezelii	Da', 1999, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(39, 'https://enter.online/images/product/2023/01/laptop-apple-macbook-air-13-2020-mgn63ru-a-rus-space-gray-026.webp', 'Laptop-uri', 'Apple iPhone 15 Pro Max ', 'Apple ', 'Mackbook Air 13', 'Tip Display: IPS\r\nSSD: 256 GB\r\nMemorie RAM : 16 GB', 25000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(40, 'https://enter.online/images/product/2023/08/enter-realme-c21y-27450.webp', 'Telefoane', 'Realme C21Y', 'Realme ', 'Realme Dual Simm ', 'Tehnologie de fabricație : 4 nm\r\nCamera frontală : 12 MP\r\nNuclee: 8\r\nMemorie internă : 64 GB', 26000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(41, 'https://darwin.md/images/product/thumbs/2023/02/ceas-inteligent-garmin-venu-sq-2-music-edition-010-02700-11-ivory-04.webp', 'Gadget', 'Garmin Venu Sq 2 – Music Edition Ivory', 'Garmin', 'Ceasuri Inteligente', 'Timpul de lucru : până la 11 zile\r\nMesagerie : SMS\r\nTouchscreen : Da\r\nRezoluție (px) : 320 x 360', 16000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(42, 'https://darwin.md/images/product/2022/06/power-bank-20000-mah-cellularline-pbnewtank20000k-20-w-black-061.webp', 'Power Bank ', 'Power Bank 20000 mAh Cellularline', 'Cellularline', 'PBNEWTANK20000K (20 W) Black', 'Protocoale suportate : PD\r\nCompatibilitate : Universal\r\nCapacitate acumulator : 20000 mAh\r\nBrand : Cellularline', 596, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(43, 'https://darwin.md/images/product/2021/12/darwin-power-bank-10000-mah-xiaomi-pb100lzm-5-w-black-06.webp', 'Power Bank', 'Power Bank 10000 mAh ', 'Xiaomi', 'PB100LZM (5 W) Black', 'Compatibilitate : Universal\r\nCapacitate acumulator : 10000 mAh\r\nBrand : Xiaomi\r\nMaterialul carcasei : Plastic', 800, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(44, 'https://darwin.md/images/product/2023/08/darwin-nothing-phone-2-5g-512-gb-dark-gray-305733.webp', 'Telefoane', 'Nothing Phone ', 'Nothing', '2 5G 512 GB Dark Gray', 'Tehnologie de fabricație : 4 nm\r\nCamera frontală : 32 MP\r\nNr. nuclee : 8\r\nCapacitate acumulator : 4700 mAh', 18000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(45, 'https://darwin.md/images/product/2022/06/darwin-laptop-lenovo-ideapad-3-15iml05-platinum-gray-055.webp', 'Laptop-uri', 'Laptop Lenovo IdeaPad 3 ', 'Lenovo', '15IML05 Platinum Gray', 'Segment : Home and Office\r\nUSB 2.0 : 1\r\nRezoluție display : Full HD\r\nMemorie Cache : 6 MB SmartCache', 22000, '2023-12-05 05:55:21', '2023-12-05 05:55:21', 0, 0),
(46, 'https://enter.online/images/product/2022/11/enter-ceas-pentru-copii-cu-gps-elari-kidphone-2-16386187.webp', 'Gadget ', 'Ceas GPS Copii Elari', 'Elari', 'Ceas GPS', 'Timp de încărcare : 2 ore\r\nTimpul de lucru : până la 14 zile\r\nCompatibilitate : Android, iOS\r\nTouchscreen : Da', 900, '2023-12-05 05:55:21', '2023-12-07 11:56:01', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produse`
--
ALTER TABLE `produse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produse`
--
ALTER TABLE `produse`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
