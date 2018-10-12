-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 09, 2018 lúc 12:11 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manu`
--

DROP TABLE IF EXISTS `manu`;
CREATE TABLE IF NOT EXISTS `manu` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manu`
--

INSERT INTO `manu` (`manu_id`, `manu_name`, `manu_image`) VALUES
(1, 'Apple', ''),
(2, 'Samsung', ''),
(3, 'Lenovo', ''),
(4, 'Oppo', ''),
(5, 'Sony', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(50) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `manu_id`, `type_id`) VALUES
(1, 'Điện thoại iPhone 6s Plus 128GB', 'iphone-6-plus-128gb', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 9\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A8 2 nhân 64-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2915 mAh', 9200000, 1, 1),
(2, 'Điện thoại iPhone 6 32GB', 'iphone-6-32gb-vang-400-400x460', 'Màn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A8 2 nhân 64-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	1810 mAh', 7490000, 1, 1),
(3, 'Điện thoại iPhone 7 Plus 32GB', 'apple-iphone-7-plus-1-400x460-400x460', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2900 mAh', 19990000, 1, 1),
(4, 'Laptop Apple Macbook Air MQD32SA/A i5 1.8GHz/8GB/128GB (2017)', 'apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-600x600', 'CPU:	Intel Core i5 Broadwell, 1.80 GHz\r\nRAM:	8 GB, DDR3L(On board), 1600 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, WXGA+(1440 x 900)\r\nCard màn hình:	Card đồ họa tích hợp, Intel HD Graphics 6000\r\nCổng kết nối:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 17 mm, 1.35 Kg', 22990000, 1, 3),
(5, 'Laptop Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB (2018)\r\n', 'apple-macbook-pro-touch-mr9q2sa-a-2018-thumb-1-600x600', 'CPU:	Intel Core i5 Kabylake Refresh, 2.30 GHz\r\nRAM:	8 GB, DDR3L(On board), 2133 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics 655\r\nCổng kết nối:	4 x Thunderbolt 3 (USB-C)\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 14.9 mm, 1.37 kg', 44490000, 1, 3),
(6, 'Điện thoại Samsung Galaxy Note 9', 'samsung-galaxy-note-9-black-400x460-400x460', 'Màn hình:	Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 22990000, 2, 1),
(7, 'Điện thoại Samsung Galaxy A6 (2018)', 'samsung-galaxy-a6-2018-1-400x460', 'Màn hình:	Super AMOLED, 5.6\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP\r\nCamera trước:	16 MP\r\nCPU:	Exynos 7870 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 5490000, 2, 1),
(8, 'Điện thoại Samsung Galaxy A8 Star', 'samsung-galaxy-a8-star-black-400x460', 'Màn hình:	Super AMOLED, 6.3\", Full HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	24 MP và 16 MP (2 camera)\r\nCamera trước:	24 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3700 mAh, có sạc nhanh', 13990000, 2, 1),
(9, 'Điện thoại Samsung Galaxy A8+ (2018)', 'samsung-galaxy-a8-plus-2018-gold-400x460', 'Màn hình:	Super AMOLED, 6\", Full HD+\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	16 MP\r\nCamera trước:	16 MP và 8 MP\r\nCPU:	Exynos 7885 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 13490000, 2, 1),
(10, 'Điện thoại Samsung Galaxy S9+ 64GB', 'samsung-galaxy-s9-plus-64gb-xanh-san-ho-2-400x460', 'Màn hình:	Super AMOLED, 6.2\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:	2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 23490000, 2, 1),
(11, 'Laptop Lenovo Yoga 520 14IKB i3 7130U/4GB/500GB/Win10/(80X80106VN)', 'lenovo-yoga-520-14ikb-i3-7130u-8080106vn-450x300', 'CPU:	Intel Core i3 Kabylake, 7130U, 2.70 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2133 MHz\r\nỔ cứng:	HDD: 500 GB\r\nMàn hình:	14 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	HDMI, USB 2.0, USB 3.0, USB Type-C\r\nĐặc biệt:	Có màn hình cảm ứng\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 19.9 mm, 1.7 kg', 11690000, 3, 3),
(12, 'Laptop Lenovo Yoga 520 14IKBR i5 8250U/4GB/1TB/Win10/(81C80088VN)', 'lenovo-yoga-520-14ikbr-i5-8250u-4gb-1tb-win10-81c-450-450x300', 'CPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím, Có màn hình cảm ứng\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 19.9 mm, 1.7 kg', 15190000, 3, 3),
(13, 'Máy tính bảng Lenovo Tab 4 8\" 16GB (TB-8504X)', 'lenovo-tab-4-8-tb-8504x-chitiet-400x500', 'Màn hình	IPS LCD, 8\"\r\nHệ điều hành	Android 7.0\r\nCPU	Qualcomm MSM8917, 1.4 GHz\r\nRAM	2 GB\r\nBộ nhớ trong	16 GB\r\nCamera sau	5 MP\r\nCamera trước	2 MP\r\nKết nối mạng\r\nWiFi, 3G, 4G LTE\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Nano SIM, SIM 2 chung khe thẻ nhớ\r\nĐàm thoại	Có', 3690000, 3, 2),
(14, 'Điện thoại OPPO Find X', 'oppo-find-x-1-400x400', 'Màn hình:	AMOLED, 6.42\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	20 MP và 16 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	Snapdragon 845 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3730 mAh, có sạc nhanh', 20990000, 4, 1),
(15, 'Điện thoại OPPO F7 128GB', 'oppo-f7-128gb-den-400x460', 'Màn hình:	LTPS LCD, 6.23\", Full HD+\r\nHệ điều hành:	ColorOS 5.0 (Android 8.1)\r\nCamera sau:	16 MP\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3400 mAh', 8990000, 4, 1),
(16, 'Điện thoại OPPO F9', 'oppo-f9-red-2-400x460', 'Màn hình:	LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 7690000, 4, 1),
(17, 'Loa bluetooth Sony SRS-XB10\r\n', 'loa-bluetooth-sony-srs-xb10-avatar-4-600x600', 'Nhà sản xuất:	\r\nSony\r\nModel:	\r\nSRS-XB10\r\nKích thước:	\r\nCao 9.1 cm - ngang 7.5 cm - dày 7.5 cm\r\nTrọng lượng:	\r\n260 g\r\nCông suất:	\r\n5W\r\nCách kết nối:	\r\nNFC\r\nBluetooth\r\nJack cắm 3.5 mm\r\nPhím điều khiển:	\r\nTăng/giảm âm lượng\r\nChuyển bài hát\r\nPhát/dừng chơi nhạc\r\nChuyển chế độ\r\nNghe/nhận cuộc gọi\r\nBộ bán hàng chuẩn:	\r\nLoa\r\nCáp Micro USB\r\nSách hướng dẫn', 1190000, 5, 4),
(18, 'Loa Bluetooth Sony SRS - XB3\r\n', 'loa-bluetooth-sony-srs-xb3-3-300x300', 'Nhà sản xuất:	\r\nSony\r\nModel:	\r\nSRS-XB3\r\nKích thước:	\r\nCao 8.3 cm - ngang 21.1 cm - dày 8 cm\r\nTrọng lượng:	\r\n930 g\r\nCông suất:	\r\n30W\r\nCách kết nối:	\r\nJack cắm 3.5 mm\r\nBluetooth\r\nNFC\r\nPhím điều khiển:	\r\nTăng/giảm âm lượng\r\nChỉnh Bass\r\nChuyển bài hát\r\nPhát/dừng chơi nhạc\r\nNghe/nhận cuộc gọi\r\nBộ bán hàng chuẩn:	\r\nLoa\r\nCáp Micro USB\r\nSách hướng dẫn\r\nCáp sạc DC', 3290000, 5, 4),
(19, 'Samsung Gear Fit R3500\r\n', 'samsung-gear-fit-300-nowatermark-300x300', 'Màn hình	1.84 inch, 432 x 128 pixels\r\nKính cường lực	Corning Gorilla Glass 3\r\nChống nước	Có\r\nThiết bị kết nối	Samsung Galaxy S-series, Note-series, Tab-series\r\nThời gian sử dụng	Trung bình sử dụng 3-4 ngày, ít sử dụng có thể lên đến 5 ngày', 1490000, 2, 5),
(20, 'Máy tính bảng Samsung Galaxy Tab A 10.5 inch', 'samsung-galaxy-tab-a-105-inch-chitietblue-400x460', 'Màn hình	IPS LCD, 10.5\"\r\nHệ điều hành	Android 8.0\r\nCPU	CPU 8 nhân, 1.8 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng\r\nWiFi, 3G, Hỗ trợ 4G\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Nano Sim\r\nĐàm thoại	Có', 9490000, 2, 2),
(21, 'Điện thoại Samsung Galaxy J8', 'samsung-galaxy-j8-400x460', 'Màn hình:	Super AMOLED, 6.0\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh', 6290000, 2, 1),
(22, 'Điện thoại iPhone 8 Plus 64GB', 'iphone-8-plus-64gb-h1-400x460', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2691 mAh, có sạc nhanh', 23990000, 1, 1),
(23, 'Máy tính bảng iPad Pro 10.5 inch Wifi Cellular 64GB (2017)', 'ipad-pro-105-inch-wifi-cellular-64gb-2017-6-400x400', 'Màn hình	IPS LCD, 10.5\"\r\nHệ điều hành	iOS 11\r\nCPU	Apple A10X 6 nhân 64-bit\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	12 MP\r\nCamera trước	7 MP\r\nKết nối mạng\r\nWiFi, 3G, 4G LTE\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Nano Sim\r\nĐàm thoại	FaceTime', 19990000, 1, 2),
(24, 'Máy tính bảng Lenovo Phab 2', 'lenovo-phab2-460-400x460', 'Màn hình	IPS LCD, 6.4\"\r\nHệ điều hành	Android 6.0 (Marshmallow)\r\nCPU	MediaTek MT 8735 4 nhân, 1.3 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	13 MP\r\nCamera trước	5 MP\r\nKết nối mạng\r\nWiFi, 3G, 4G LTE\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Micro sim\r\nĐàm thoại	Có', 3690000, 3, 2),
(25, 'Laptop Lenovo IdeaPad 330S 14IKB i3 7020U/4GB/1TB/Win10/(81F400NMVN)\r\n', 'lenovo-ideapad-330s-14ikb-81f400nmvn-thumb-600x600', 'CPU:	Intel Core i3 Kabylake, 7020U, 2.30 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2133 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 PCIe, Hỗ trợ bộ nhớ Intel® Optane™\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 18.95 mm, 1.67 Kg', 10990000, 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `type_image`) VALUES
(1, 'Cellphone', ''),
(2, 'Tablet', ''),
(3, 'Laptop', ''),
(4, 'Speaker', ''),
(5, 'Smartwatch', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
