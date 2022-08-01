-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 05:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_scraping`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk_shopee`
--

CREATE TABLE `produk_shopee` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_shopee`
--

INSERT INTO `produk_shopee` (`id_product`, `nama_product`, `price`, `kota`) VALUES
(1, 'NEW BALANCE 990 V5 GREY GRAMHO', 589999, 'KOTA BANDUNG'),
(2, 'New Balance 990V3 By Teddy Santis \"Marblehead\"/:New Balance 990V2 By teddy Santis \"Marblehead\"', 549000, 'KOTA JAKARTA SELATAN'),
(3, 'NEW BALANCE 990 V5 GREY GRAMHO', 554400, 'KOTA BANDUNG'),
(4, 'New Balance 990 V5 Grey', 3799000, 'KOTA BANDUNG'),
(5, 'sepatu pria new balance 997s cod', 115000, 'KOTA JAKARTA SELATAN'),
(6, 'Tali sepatu laces NB USA 990 993', 240000, 'KOTA PONTIANAK'),
(7, 'NEW BALANCE 990', 350000, 'KAB. PURWAKARTA'),
(8, 'NEW BALANCE 990 V2', 800000, 'KOTA JAKARTA SELATAN'),
(9, 'Sepatu New Balance 990V4 Grey CASTLEROCK Original BNIB', 580000, 'KAB. BANDUNG'),
(10, 'NEW BALANCE 990 V5 GREY GRAMHO', 589999, 'KOTA BANDUNG'),
(11, 'Sepatu New Balance M992 GREY M992GR X M992 Black Grey Bnib', 580000, 'KAB. BANDUNG'),
(12, 'Sepatu New Balance 990 V3 Version Grey Made In USA', 700000, 'KOTA BANDUNG'),
(13, 'NEW BALANCE 990 JJ3 / NEW BALANCE / SNEAKERS PRIA / SEPATU NEW BALANCE PRIA / NEW BALANCE PRIA', 650000, 'KOTA JAKARTA UTARA'),
(14, 'NEW BALANCE 990 V5 GREY GRAMHO', 518400, 'KOTA BANDUNG'),
(15, 'New Balance 990 second like new', 554400, 'KAB. BOGOR'),
(16, 'NEW BALANCE 990 V3 BLACK GREEN \"M990CP3\" MADE IN USA', 500000, 'KOTA BANDUNG'),
(17, 'NEW BALANCE 990 AL3 /NEW BALANCE / SNEAKERS PRIA / NEW BALANCE PRIA / SEPATU NEW BALANCE PRIA', 650000, 'KOTA JAKARTA UTARA'),
(18, 'New Balance 990v4', 518400, 'KAB. BANDUNG'),
(19, 'NEW BALANCE USA 990 V3 PURPLE WHITE 39 25cm', 800000, 'KOTA SEMARANG'),
(20, 'New Balance 990 Second', 713000, 'KAB. POLEWALI MANDAR'),
(21, 'New Balance 990 V3 Grey', 649000, 'KOTA JAKARTA SELATAN'),
(22, 'New Balance 990 V3', 649000, 'KOTA JAKARTA SELATAN'),
(23, 'New Balance 990 V3 X Jjjjound Brown Black', 630000, 'KOTA BANDAR LAMPUNG'),
(24, 'new balance 990 v3', 880000, 'KOTA PONTIANAK'),
(25, 'NEW BALANCE 990 V3 GREY MADE IN USA', 260000, 'KOTA BANDUNG'),
(26, 'New Balance 990 v3', 650000, 'KOTA JAKARTA SELATAN'),
(27, 'New Balance 990 V5 Gramho Grey', 350000, 'KOTA SURAKARTA (SOLO)'),
(28, 'New Balance 990 V3 Jjjjound Olive', 500000, 'KOTA BANDAR LAMPUNG'),
(29, 'New Balance 990Navy', 850000, 'KOTA BANDUNG'),
(30, 'Sepatu NB New Balance 990 Grey White M992GR sneakers casual running', 300000, 'KOTA BANDUNG'),
(31, 'Sepatu New Balance 990 V3 (M990CP3) Black Green Yellow Hitam Hijau Kuning', 177500, 'KOTA JAKARTA TIMUR'),
(32, 'New inbox Newbalance 990 V4 Black', 630000, 'KAB. TANGERANG'),
(33, 'New Balance 990 V3', 699000, 'KOTA MALANG'),
(34, 'New balance 990 100%PREMIUM unisex pria/wanita', 420000, 'KOTA JAKARTA TIMUR'),
(35, 'New Balance 530 Earth', 199999, 'KOTA JAKARTA SELATAN'),
(36, 'NEW BALANCE 990', 1599000, 'KOTA JAKARTA BARAT'),
(37, 'link new balance 990', 250000, 'KOTA BANDUNG'),
(38, 'Sepatu new balance 990 V3', 230000, 'KOTA MAKASSAR'),
(39, 'New Balance 990V3 By Teddy Santis \"Marblehead\"/:New Balance 990V2 By teddy Santis \"Marblehead\"', 400000, 'KOTA JAKARTA SELATAN'),
(40, 'NEW BALANCE 990 V3', 549000, 'KOTA JAKARTA SELATAN'),
(41, 'Sepatu New Balance 990 V3 Black Green', 545000, 'KOTA BANDUNG'),
(42, 'NEW BALANCE 990 V5 BLACK ORIGINAL', 650000, 'KOTA JAKARTA SELATAN'),
(43, 'NEW BALANCE 990 V3 BlackGreenYellow', 560000, 'KOTA TANGERANG'),
(44, 'SEPATU NEW BALANCE 990 V5 SNEAKERS NB BEST SELLER PRIA BNWB FREE KAOS KAKI', 630000, 'KOTA BANDUNG'),
(45, 'New Bal*nce 990V5 990 V5 Grey Navy All Black white', 150000, 'KOTA JAKARTA SELATAN'),
(46, 'New Balance 990V5 Grey Castlerock BNIB 100% ORIGINAL MATERIAL GUARANTEE', 540000, 'KOTA TANGERANG'),
(47, 'New Balance 990 V3 Made in USA', 1099000, 'KAB. SLEMAN'),
(48, 'Sepatu New Balance 990 990bk Black Hitam Made In Vietnam', 300000, 'KOTA BANDUNG'),
(49, 'RARE‼️ NB X90, nb 327, nb 990, nb 993 usa, nb 992', 615000, 'KOTA BANDUNG'),
(50, 'NEW BALANCE 990 USA SECOND', 330000, 'KAB. BANTUL'),
(51, 'NB 990 v3', 140000, 'KOTA BANDUNG'),
(52, 'Sepatu New Balance 990 V5 Gramho Grey', 1400000, 'KOTA BANDUNG'),
(53, '(Free KAOS KAKI PREMIUM +Stiker+Tali Tambahan) Sepatu New Balance 990 V4 M990GL4CASTELROCK GREY', 550000, 'KOTA BANDUNG'),
(54, 'NEW BALANCE 993 BLACK | sepatu second', 580000, 'KAB. BEKASI'),
(55, 'New balance 550 white green', 1200000, 'KOTA BANDUNG'),
(56, 'New Balance M992 J2 x JJJJOUNd', 350000, 'KOTA BANDUNG'),
(57, 'Sepatu Pria Sneakers Casual New Balance 1992 Suede Grey White Orange Black Premium Quality', 456500, 'KOTA BANDUNG'),
(58, 'New Balance Encap 574 Putih List Hijau Premium Import Original Vietnam Best Quality BISA COD', 599999, 'KOTA JAKARTA SELATAN'),
(59, 'New Balance 327 Moonbeam White Classic Burgundy.', 169000, 'KOTA BANDUNG'),
(60, 'SEPATU NEW BALANC* NB PREMIUM best seller ❗️❗️❗️ 1500 FOR MAN SEPATU SNEAKERS BEST SELLER', 25000, 'KOTA SURABAYA'),
(61, 'New Balance 990 V2 Navy', 145000, 'KOTA BANDUNG'),
(62, 'New Balance 992 Nimbus Cloud White Silver', 3199000, 'KAB. BANDUNG BARAT'),
(63, 'PROMO!!! SEPATU SNEAKERS XBO SPORT NAVY ORIGINAL PRIA/WANITA', 552500, 'KAB. BOGOR'),
(64, 'newblance580 second original size 42', 624000, 'KOTA TANGERANG SELATAN'),
(65, 'Sepatu Sneakers Bekas Second -- New Balance 990 USA', 60000, 'KAB. KULON PROGO'),
(66, 'SEPATU NEW BALANCE 990 V3 MARBLEHEAD', 350000, 'KOTA JAKARTA SELATAN'),
(67, 'NEW BALANCE 990 WHITE/SEPATU NEW BALANCE 990 PUTIH/NB 990/NB PRIA/SEPATU SNEAKERS NB', 495000, 'KOTA JAKARTA UTARA'),
(68, 'Sepatu NB 990 JJ3 New balance 990 JJ3 sneakers pria', 599900, 'KOTA TANGERANG'),
(69, 'sepatu sneakers sport new balance 990 size 42 second original preloved bekas', 540000, 'KAB. TANGERANG'),
(70, 'NEW BALANCE 990 V3 VERSION 3 gren black', 530000, 'KOTA BANDUNG'),
(71, 'New Balance 990 V2 Kith Navy', 375000, 'KOTA BANDUNG'),
(72, 'NEW BALANCE 990 JJ4 x JJJJOUND \"Navy\"', 630000, 'KOTA TANGERANG'),
(73, 'New Balance 990 V3', 3599000, 'KOTA JAKARTA UTARA'),
(74, 'New Balance 990 Black Navy', 649000, 'KOTA BANDUNG'),
(75, 'Sepatu New Balance 990 V3 Made USA Second', 250000, 'KOTA BEKASI'),
(76, 'sepatu new balance 990 USA size women original second', 550000, 'KOTA DEPOK'),
(77, 'SEPATU NEW BALANCE 990', 550000, 'KOTA BEKASI'),
(78, 'NEW BALANCE 990 USA (Size 36)', 320000, 'KAB. BONE'),
(79, 'Nb 990 New Balance 990 Black', 525000, 'KOTA BANDUNG'),
(80, 'Sepatu New Balance MS990 Made USA Original', 270000, 'KOTA JAKARTA UTARA'),
(81, 'NEW BALANCE 990 V4MADE IN USA Size: 39.5 (24.5CM)', 597550, 'KOTA BANDUNG'),
(82, 'New Balance 990 v5', 515000, 'KOTA TANJUNG PINANG'),
(83, 'Sepatu New Balance 990 V5 Grey abu', 500000, 'KOTA JAKARTA SELATAN'),
(84, 'NEW BALANCE 990 V4 BLACK/GREY 1:1', 1030000, 'KOTA TANGERANG SELATAN'),
(85, 'NB 990 V3 X Jjjjound Brown Black High Premium Original', 590000, 'KOTA JAKARTA TIMUR'),
(86, 'new balance 990 v3', 749000, 'KAB. KARANGANYAR'),
(87, 'SEPATU PRIA / SEPATU SNEAKERS/ SEPATU NB / SEPATU NEW BALANCE TYPE 990 MADE IN VIETNAM', 650000, 'KOTA JAKARTA UTARA'),
(88, 'New Balance M990VS2 Grey / New Balance 990 Version 2 Grey BNIB 100% Authentic', 800000, 'KOTA BANDUNG'),
(89, 'New Balance 990 V3 by Teddy Santis Marblehead For Mens', 520000, 'KOTA JAKARTA BARAT'),
(90, 'NEW BALANCE USA 990 V3 GREY 40,5 25,5cm', 590000, 'KOTA SEMARANG'),
(91, 'New Balance 990 V5 Vegan Grey Original 100% M990JS5', 550000, 'KAB. BEKASI'),
(92, 'New Balance 990 sz 40.5', 713000, 'KAB. SRAGEN'),
(93, 'NEW BALANCE 990 V3 X KITH GENESIS NAVY GREY', 5810000, 'KOTA BANDUNG'),
(94, 'NEW BALANCE 990 v3 BLACKMADE IN USA Size 41.5 (26CM)', 530000, 'KOTA BANDUNG'),
(95, 'Sepatu New Balance 990 V5 Gramho Grey 100% bnib guarante - Abu-abu, 40', 620000, 'KAB. GARUT'),
(96, 'Sepatu New Balance M992GR Grey Silver Made In USA 100%Grade Original Quality 1:1 BNIBWT', 450000, 'KOTA BANDUNG'),
(97, 'Sepatu pria/ Sepatu New Balance 990 JJ3 man original - coklat', 749000, 'KOTA JAKARTA TIMUR'),
(98, 'NEW BALANCE USA 990 V3 BlackWhite 41,5 26cm', 550000, 'KOTA SEMARANG'),
(99, 'New Balance 990 V4 M990GL4 Grey Castlerock Made In Usa Original 39-44 100%BNIB', 600000, 'KOTA BANDUNG'),
(100, 'New Balance 990 V4', 550000, 'KOTA DEPOK'),
(101, 'nb 990 v3', 712500, 'KOTA JAKARTA PUSAT'),
(102, 'Sepatu New Balance 992 Black Grey Original Bnib', 630500, 'KAB. BANDUNG'),
(103, 'New balance 990 USA', 725000, 'KAB. PURWOREJO'),
(104, 'NEW BALANCE 990 V3 VERSION 3', 649000, 'KOTA JAKARTA SELATAN'),
(105, 'NEW BALANCE 990 V5 GREY WHITE ORIGINAL SIZE 38-45', 599000, 'KOTA JAKARTA SELATAN'),
(106, 'New Balance 992 Grey', 700000, 'KOTA BANDUNG'),
(107, 'Sepatu pria/ Sepatu New Balance 990 AL3 USA man original - putih', 300000, 'KOTA JAKARTA TIMUR'),
(108, 'New Balance 990 V3 Jjjjound Olive', 575000, 'KOTA JAKARTA BARAT'),
(109, 'NEW BALANCE X JJJJOUND/NB 999/SEPATU NEW BALANCE 990/SEPATU SNEAKERS/SEPATU PRIA', 535000, 'KOTA JAKARTA UTARA'),
(110, 'SEPATU NEW BALANCE NB 990 V3 X JJJJOUND ORIGINAL PREMIUM HIGH', 530000, 'KOTA JAKARTA SELATAN'),
(111, 'new balance 990 v3', 550000, 'KAB. TANGERANG'),
(112, 'New Balance 990 V2 Navy', 560000, 'KOTA BANDUNG'),
(113, 'NEW BALANCE 990 V2 HERITAGE M990BK2 BLACK PEWTER MADE IN USA', 540000, 'KOTA BANDUNG'),
(114, 'New Balance 990 V4 Grey', 436500, 'KOTA JAKARTA SELATAN'),
(115, 'New Balance Encap 574 Full Black Premium Import Original Vietnam Kualitas No 1 BISA COD', 1100000, 'KOTA JAKARTA SELATAN'),
(116, 'New Balance 327 Grey White.', 3199000, 'KOTA BANDUNG'),
(117, 'Sneakers Air Jordan 1 Mid \'Smoke Grey\'', 575000, 'KOTA JAKARTA SELATAN'),
(118, 'Sneakers Air Jordan 1 Mid \'Reverse Banned\'', 630000, 'KOTA JAKARTA SELATAN'),
(119, 'Sepatu Snaekers Pria Import Spatu Fashion Snaeker Cowok Impor Murah Terbaru Kekinian Casual Sepatu Sport Kets Remaja Dewasa Laki Laki Casual Cesual Hangout Jalan Jalan Sepatu Sniker Snikers Olahraga Terlaris NEW', 139000, 'KAB. MOJOKERTO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk_shopee`
--
ALTER TABLE `produk_shopee`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk_shopee`
--
ALTER TABLE `produk_shopee`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
