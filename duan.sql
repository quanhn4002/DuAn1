-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2024 lúc 05:19 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.trực tiếp 2.chuyển khoản 3.online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.đơn hàng mới 1.đang xử lí 2.đang giao 3.đã giao',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(135, 20, 'dat', 'Bac Giang', '0852268582', 'tiendat0416@gmail.com', 2, '05:16:29am 09/12/2023', 2900, 0, NULL, NULL, NULL),
(136, 20, 'dat', 'Bac Giang', '0852268582', 'tiendat0416@gmail.com', 2, '05:18:03am 09/12/2023', 2900, 0, NULL, NULL, NULL),
(137, 20, 'dat', 'Bac Giang', '0852268582', 'tiendat0416@gmail.com', 2, '05:18:04am 09/12/2023', 2900, 0, NULL, NULL, NULL),
(138, 20, 'dat', 'Bac Giang', '0852268582', 'tiendat0416@gmail.com', 2, '05:18:32am 09/12/2023', 2900, 0, NULL, NULL, NULL),
(144, 20, 'dat', 'Bac Giang', '0852268582', 'tiendat0416@gmail.com', 2, '05:32:08am 09/12/2023', 2900, 0, NULL, NULL, NULL),
(152, 22, 'admin', 'Tamdao', '17837113', 'quanhainguyenlm@gmail.com', 0, '04:34:37pm 10/12/2023', 450, 0, NULL, NULL, NULL),
(153, 22, 'admin', 'Tamdao', '17837113', 'quanhainguyenlm@gmail.com', 3, '04:34:46pm 10/12/2023', 450, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(219, 20, 81, './upload/hoataidm3.jpg', 'Hoa tai đá màu', 1450, 2, 2900, 135),
(220, 20, 81, './upload/hoataidm3.jpg', 'Hoa tai đá màu', 1450, 2, 2900, 136),
(221, 20, 81, './upload/hoataidm3.jpg', 'Hoa tai đá màu', 1450, 2, 2900, 137),
(222, 20, 81, './upload/hoataidm3.jpg', 'Hoa tai đá màu', 1450, 2, 2900, 138),
(228, 20, 81, './upload/hoataidm3.jpg', 'Hoa tai đá màu', 1450, 2, 2900, 144),
(236, 22, 58, './upload/donghonu2.jpg', 'Đồng hồ Emporio Armani', 450, 1, 450, 152),
(237, 22, 58, './upload/donghonu2.jpg', 'Đồng hồ Emporio Armani', 450, 1, 450, 153);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(25, 'Dây chuyền'),
(26, 'Nhẫn'),
(38, 'Đồng hồ'),
(39, 'Hoa tai'),
(40, 'Vòng tay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `masale`
--

CREATE TABLE `masale` (
  `id` int(11) NOT NULL,
  `noidung` varchar(50) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayhet` date NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `masale`
--

INSERT INTO `masale` (`id`, `noidung`, `ngaytao`, `ngayhet`, `sale`) VALUES
(5, 'CHAOTHANG12', '2023-12-01', '1900-01-31', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `masp` varchar(200) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `masp`, `price`, `img`, `mota`, `luotxem`, `iddm`, `trangthai`) VALUES
(19, 'Nhẫn kim cương', 'NKC_19', 1390.00, 'nhancuoi_kc3.jpg', 'Nhẫn cưới kim cương được trạm khắc tinh xảo', 11, 26, 0),
(20, 'Nhẫn kim cương', 'NKC_ 20', 1150.00, 'nhancuoi_kc2.jpg', 'Nhẫn cưới kim cương được trạm khắc tinh xảo', 10, 26, 0),
(22, 'Nhẫn vàng', 'NV_22', 690.00, 'nhancuoi_3.jpg', 'Nhẫn cưới bằng vằng đính kim cương 16kz', 8, 26, 0),
(37, 'Nhẫn vàng', 'NV_37', 710.00, 'nhancuoi_4.jpg', 'Nhẫn cưới bằng vằng đính kim cương 16kz', 6, 26, 0),
(38, 'Nhẫn Vàng', 'NV_38', 540.00, 'nhancuoi_2.jpg', 'Nhẫn cưới bằng vằng đính kim cương 16kz', 5, 26, 0),
(39, 'Nhẫn cưới vàng', 'NV_39', 570.00, 'nhancuoi_1.jpg', 'Nhẫn cưới bằng vàng đính kim cương 16kz', 4, 26, 0),
(41, 'Nhẫn kim cương', 'NKC_41', 1200.00, 'nhancuoi_kc5.jpg', 'Nhẫn cưới kim cương được trạm khắc tinh xảo', 7, 26, 0),
(43, 'Dây chuyền đá màu', 'NDM_43', 950.00, 'daychuyendamau1.jpg', 'Dây chuyền mặt đá màu trạm khác tinh xảo\r\n', 15, 25, 0),
(44, 'Dây chuyền kim cương', 'DCKC_44', 1450.00, 'daychuyenkc1.jpg', 'Dây chuyền kim cương trạm khắc tinh xảo', 0, 25, 0),
(45, 'Dây chuyền kim cương', 'DCKC_45', 1670.00, 'daychuyenkc2.jpg', 'Dây chuyền kim cương trạm khắc tinh xảo', 27, 25, 0),
(46, 'Dây chuyền kim cương', 'DCKC_46', 1690.00, 'daychuyenkc3.jpg', 'Dây chuyền kim cương trạm khắc tinh xảo', 0, 25, 0),
(47, 'Dây chuyền kim cương', 'DCKC_47', 1850.00, 'daychuyenkc4.jpg', 'Dây chuyền kim cương trạm khắc tinh xảo', 16, 25, 0),
(48, 'Dây chuyền đá màu', 'DCDM_48', 1450.00, 'daychuyendamau2.jpg', 'Dây chuyền đá màu trạm khắc tinh xảo', 0, 25, 0),
(49, 'Dây chuyền đá màu', 'DCDM_49', 1490.00, 'daychuyendamau3.jpg', 'Dây chuyền đá màu trạm khắc tinh xảo', 14, 25, 0),
(50, 'Dây chuyền đá màu', 'DCDM_50', 1960.00, 'daychuyendamau4.png', 'Dây chuyền đá màu trạm khắc tinh xảo', 0, 25, 0),
(51, 'Dây chuyền đá màu', 'DCDM_51', 1260.00, 'daychuyendamau5.jpg', 'Dây chuyền đá màu trạm khắc tinh xảo', 0, 25, 0),
(52, 'Dây chuyền đá màu', 'DCDM_52', 1280.00, 'daychuyendamau6.png', 'Dây chuyền đá màu trạm khắc tinh xảo', 0, 25, 0),
(53, 'Dây chuyền đá màu', 'DCDM_53', 1350.00, 'daychuyendamau7.png', 'Dây chuyền đá màu trạm khắc tinh xảo', 0, 25, 0),
(54, 'Dây chuyền ngọc trai', 'DCNT_54', 965.00, 'daychuyenngoctrai1.jpg', 'Dây chuyền đính ngọc trai tinh tế', 0, 25, 0),
(55, 'Dây chuyền ngọc trai', 'DCNT_55', 980.00, 'daychuyenngoctrai3.jpg', 'Dây chuyền đính ngọc trai tinh tế', 0, 25, 0),
(56, 'Dây chuyền ngọc trai', 'DCNT_56', 1100.00, 'daychuyenngoctrai4.jpg', 'Dây chuyền đính ngọc trai tinh tế', 0, 25, 0),
(57, 'Đồng hồ Emporio Armani', 'DHNA_57', 430.00, 'donghonu1.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(58, 'Đồng hồ Emporio Armani', 'DHNU_58', 450.00, 'donghonu2.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(59, 'Đồng hồ Emporio Armani', 'DHNU_59', 455.00, 'donghonu3.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(60, 'Đồng hồ Emporio Armani', 'DHNU_60', 460.00, 'donghonu4.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(61, 'Đồng hồ Emporio Armani', 'DHNU_61', 485.00, 'donghonu5.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(62, 'Đồng hồ Emporio Armani', ' DHNU_62', 510.00, 'donghonu6.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(63, 'Đồng hồ Emporio Armani', 'DHN_63', 650.00, 'donghonu7.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(64, 'Đồng hồ Emporio Armani', 'DHNA_64', 650.00, 'donghonam2.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(65, 'Đồng hồ Emporio Armani', 'DHNA_65', 670.00, 'donghonam3.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(66, 'Đồng hồ Emporio Armani', 'DHNA_66', 560.00, 'donghonam5.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(67, 'Đồng hồ Emporio Armani', 'DHNA_67', 575.00, 'donghonam6.jpg', 'Đồng hồ thiết kế tinh xảo và sang trọng', 0, 38, 0),
(68, 'Nhẫn đá màu', 'NDM_68', 2000.00, 'nhandamau1.webp', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(69, 'Nhẫn đá màu', 'NDM_69', 1980.00, 'nhandamau2.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(70, 'Nhẫn đá màu', 'NDM_70', 1950.00, 'nhandamau3.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(71, 'Nhẫn đá màu', 'NDM_71', 2120.00, 'nhandamau4.png', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(72, 'Nhẫn đá màu', 'NDM_72', 2150.00, 'nhandamau5.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(73, 'Nhẫn đá màu', 'NDM_73', 2180.00, 'nhandamau6.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 26, 0),
(74, 'Nhẫn đá màu', 'NDM_74', 2250.00, 'nhandamau7.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn đá màu', 0, 38, 0),
(75, 'Nhẫn ngọc trai', 'NNT_75', 1650.00, 'nhanngoctrai1.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn viên ngọc trai', 0, 26, 0),
(76, 'Nhẫn ngọc trai', 'NNT_76', 1630.00, 'nhanngoctrai2.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn viên ngọc trai', 0, 26, 0),
(77, 'Nhẫn ngọc trai', 'NNT_77', 1690.00, 'nhanngoctrai3.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn viên ngọc trai', 0, 26, 0),
(78, 'Nhẫn ngọc trai', 'NNT_78', 1780.00, 'nhanngoctrai4.jpg', 'Nhẫn được trạm khắc tinh xảo và gắn viên ngọc trai', 0, 26, 0),
(79, 'Hoa tai đá màu', 'HTDM_79', 1500.00, 'hoataidm1.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(80, 'Hoa tai đá màu', 'HTDM_80', 1700.00, 'hoataidm2.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(81, 'Hoa tai đá màu', 'HTDM_81', 1450.00, 'hoataidm3.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(82, 'Hoa tai đá màu', 'HTDM_82', 1650.00, 'hoataidm4.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(83, 'Hoa tai đá màu', 'HTDM_83', 1360.00, 'hoataidm5.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(84, 'Hoa tai đá màu', 'HTDM_84', 1560.00, 'hoataidm6.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(85, 'Hoa tai đá màu', 'HTDM_85', 1750.00, 'hoataidm7.png', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(86, 'Hoa tai đá màu', 'HTDM_86', 1750.00, 'hoataidm8.png', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(87, 'Hoa tai kim cương', 'HTKC_87', 2100.00, 'hoataikc1.webp', 'Hoa tai xinh xắn dược kết hợp với kim cương viên sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(88, 'Hoa tai kim cương', 'HTKC_88', 2150.00, 'hoataikc2.webp', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(89, 'Hoa tai kim cương', 'HTKC_89', 2450.00, 'daychuyenkc3.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(90, 'Hoa tai kim cương', 'HTKC_90', 2310.00, 'kc4.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(91, 'Hoa tai kim cương', 'HTKC_91', 2450.00, 'hoataikc5.jpg', 'Hoa tai xinh xắn dược kết hợp với đá màu sẽ làm bạn trở nên nổi bật hơn', 0, 39, 0),
(92, 'Vòng tay vàng', 'VTV_92', 850.00, 'vongtay1.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(93, 'Vòng tay vàng', 'VTV_93', 250.00, 'vongtay2.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(94, 'Vòng tay vàng', 'VTV_94', 450.00, 'vongtay3.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(95, 'Vòng tay vàng', 'VTV_95', 320.00, 'vongtay4.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(96, 'Vòng tay vàng', 'VTV_96', 650.00, 'vongtay5.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(97, 'Vòng tay vàng', 'VTV_97', 680.00, 'vongtay6.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(98, 'Vòng tay vàng', 'VTV_98', 750.00, 'vongtay7.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0),
(99, 'Vòng tay vàng', 'VTV_99', 830.00, 'vongtay8.jpg', 'Vòng tay được làm từ vàng 24k với thiết kế tinh xảo và bắt mắt', 0, 40, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(20, 'dat', 'asdw', 'tiendat0416@gmail.com', 'Bac Giang', '0852268582', 1),
(22, 'admin', '123', 'quanhainguyenlm@gmail.com', 'Tamdao', '17837113', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idpro` (`idpro`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idbill` (`idbill`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `masale`
--
ALTER TABLE `masale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `masale`
--
ALTER TABLE `masale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_4` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
