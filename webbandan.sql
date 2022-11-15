-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 28, 2022 lúc 02:02 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbandan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`) VALUES
(1, 'Hoàng Nghĩa', 'anhnghia230@gmail.com', 'nghiaadmin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(19, 'Guitar');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(38, 44, 'em93dk3c3ilnsr8oi63vg7hc60', 'Lowden O25 IR/C Indian Rosewood/Cedar', '85.000.000', 1, 'a7d3680426.jpg'),
(42, 45, 'lohr37go03t8pf652ii5j3kdel', 'Fender 1989 Stratocaster Plus Rosewood Candy Apple Red ', '36000000', 1, '53f3130036.jpg'),
(43, 45, '0hruv4mmukj5iv55k52892107m', 'Fender 1989 Stratocaster Plus Rosewood Candy Apple Red ', '36000000', 1, '53f3130036.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(23, 'sản phẩm mới'),
(24, 'sản phẩm cũ giá rẻ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(6, 10, 45, 'Fender 1989 Stratocaster Plus Rosewood Candy Apple Red ', '36.000.000', '53f3130036.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(8, 'Hoàng Tiến Nghĩa', 'Phú Phương', 'Hà Nội', 'hn', '', '0348287092', 'nghia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'nhat', 'mỹ đình, mỹ đình', 'ha noi', 'hn', '10000', '0123456789', 'nhat@gmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 'hoàng nghĩa', 'mỹ đình, mỹ đình', 'cty1', 'hn', '10000', '0379443152', 'anhnghia230@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lhe`
--

CREATE TABLE `tbl_lhe` (
  `lheId` int(50) NOT NULL,
  `lheName` varchar(255) NOT NULL,
  `lheEmail` varchar(255) NOT NULL,
  `lhePhone` int(50) NOT NULL,
  `lheComment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lhe`
--

INSERT INTO `tbl_lhe` (`lheId`, `lheName`, `lheEmail`, `lhePhone`, `lheComment`) VALUES
(3, 'Hoàng Nghĩa', 'anhnghia230@gmail.com', 379443152, 'sản phẩm của các bạn bị một số lỗi nhỏ t cần trợ giúp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(43, 'Alvarez Masterworks Elite MGA77CEAR7SHB', '', '20', '5', '25', 23, 19, 'MGA77WCEARSHB là một Grand  có kiểu dáng phong phú với phản hồi tức thì, âm trầm rõ ràng và âm ba rung lung linh. Mặt trên bằng gỗ óc chó của nó giúp tạo ra một hình chiếu tập trung đầy cá tính, hoàn hảo để ghi âm và làm việc trực tiếp. Nó là một thiết bị toàn diện thực sự phù hợp với bất kỳ phong cách âm nhạc hoặc cách chơi nào. MGA77WCEARSHB được trình bày đẹp mắt trong lớp hoàn thiện Shadowburst và tay vịn bằng gỗ mun vát mỏng với kim tuyến bào ngư Paua chính hãng. Nó được trang bị hệ thống bán tải LR Baggs VTC Element đáng kinh ngạc và bảng điều khiển âm thanh.\r\n\r\nBáo cáo điều kiện\r\nTại guitarguitar, chúng tôi đánh giá thiết bị đã qua sử dụng của mình từ 1-5 tùy theo tình trạng chung của nó, với 5 là tốt nhất.\r\n\r\nHạng mục này đã được thẩm định như sau:\r\n\r\nPhần thân: 4 trên 5 - Mặt hàng có một số dấu hiệu sử dụng nhẹ và / hoặc nhỏ, chẳng hạn như xoáy hời hợt hoặc mù mịt khi kết thúc. Không có vết lõm, vết lõm hoặc vết xước đáng kể làm hỏng lớp sơn\r\n\r\nCổ: 4 trên 5 - Các phím đàn có thứ tự tốt và nhạc cụ chơi rõ ràng và có âm sắc chính xác trên bảng ngón tay.\r\n\r\n \r\nCây đàn này đã được đàn lại bằng dây D\'Addario.\r\n\r\n   \r\nChúng tôi chụp ảnh từng mục / công cụ được cài đặt sẵn riêng lẻ bằng cách sử dụng thiết lập chụp ảnh chất lượng chuyên nghiệp để đảm bảo bạn thấy hình ảnh chi tiết, có độ phân giải cao mà bạn có thể phóng to và khám phá. Chúng tôi cẩn thận chụp ảnh bất kỳ tính năng, hao mòn hoặc sửa đổi nào mà bạn có thể muốn xem trước khi đưa ra quyết định mua.\r\n\r\nTất cả các nhạc cụ sở hữu trước của chúng tôi đều được bảo hành 12 tháng và đã được kiểm tra, chơi thử và thiết lập trước khi bán lại.', 0, '11600000', 'd5db3a6684.jpg'),
(44, 'Lowden O25 IR/C Indian Rosewood/Cedar', '', '10', '0', '15', 23, 19, 'Nhìn sơ qua:\r\nLowden O25 Indian Rosewood / Cedar là một trong những cây guitar tốt nhất hiện nay. Được làm thủ công, guitar Lowden là một trong những thương hiệu cao cấp nhất hiện nay. Mỗi cây đàn đều được chế tác một cách đáng yêu bởi những người thợ làm đàn có tay nghề cực cao với một số vật liệu và phần cứng tốt nhất mà bạn có thể tìm thấy.\r\n\r\nCác tính năng chúng tôi yêu thích:\r\nLựa chọn gỗ\r\nTừ vẻ đẹp nổi bật của nó đến tông màu độc đáo, có rất nhiều điều để yêu thích sự lựa chọn gỗ mà Lowden đã sử dụng. Phần trên cùng của Cedar cao cấp được bù đắp bởi mặt sau và hai bên bằng gỗ Rosewood cộng hưởng và đẹp mắt. Khi chơi, bạn sẽ thấy mình dễ dàng di chuyển xung quanh bàn phím Ebony cao cấp không kém. Lựa chọn gỗ tuyệt vời là nơi tất cả bắt đầu và Lowden đã tạo ra một nền tảng tuyệt vời.\r\n\r\n5 mảnh cổ\r\nCũng như trông tuyệt đẹp, cổ 5 mảnh mang lại một số lợi ích tuyệt vời. Được kết hợp bởi một số thợ làm đàn giỏi nhất trong ngành, một chiếc cổ nhiều mảnh tạo nên sự ổn định và âm vang. Gỗ di chuyển theo thời gian nhưng với 5 chiếc cổ này, miếng nọ được neo bởi miếng kia tạo nên sự ổn định tự nhiên mà không cần gia cố. Điều này để lại cho bạn không chỉ một vẻ ngoài tuyệt đẹp mà còn là một cây đàn guitar cộng hưởng mạnh mẽ sẽ tiếp tục chơi tốt nhất trong suốt cuộc đời của nó.\r\n\r\nGotoh Tuners\r\nĐể phù hợp với chủ đề cao cấp, ở phần đầu bạn có một số bộ chỉnh Gotoh 510. Gotoh, một công ty Nhật Bản, không chỉ thiết kế các bộ phận của họ tốt nhất trên thị trường mà còn chế tạo chúng để mọi bộ phận đều cao cấp như bạn mong đợi. Những chi tiết nhỏ tạo nên sự khác biệt lớn và khi bạn bắt đầu sử dụng những bộ chỉnh này, bạn sẽ hiểu tại sao Gotoh là công ty hàng đầu thế giới về phần cứng và là sự lựa chọn hoàn hảo cho Lowden.', 0, '85000000', 'a7d3680426.jpg'),
(45, 'Fender 1989 Stratocaster Plus Rosewood Candy Apple Red ', '', '15', '3', '22', 23, 19, 'Một chiếc Strat mạnh mẽ và có thể sưu tầm cao từ cuối những năm 80 được trang bị Cảm biến ren thần thánh và các cuộc hẹn cao cấp như đai ốc lăn và bộ chỉnh khóa, Strat Plus thực sự là sản phẩm cao cấp nhất của Fender trong thời đại đó.\r\n\r\nBáo cáo điều kiện\r\nTại guitarguitar, chúng tôi đánh giá thiết bị đã qua sử dụng của mình từ 1-5 tùy theo tình trạng chung của nó, với 5 là tốt nhất.\r\n\r\nHạng mục này đã được thẩm định như sau:\r\n\r\nPhần thân: 4 trên 5 - Mặt hàng có một số dấu hiệu sử dụng nhẹ và / hoặc nhỏ, chẳng hạn như xoáy hời hợt hoặc mù mịt khi kết thúc. Không có vết lõm, vết lõm hoặc vết xước đáng kể làm hỏng lớp sơn\r\n\r\nCổ: 4 trên 5 - Các phím đàn có thứ tự tốt và nhạc cụ chơi rõ ràng và có âm sắc chính xác trên bảng ngón tay.\r\n\r\nThông tin bổ sung: Một chiếc Strat mạnh mẽ và có thể sưu tầm được từ cuối những năm 80 được trang bị Cảm biến ren thần thánh và các cuộc hẹn cao cấp như đai ốc lăn và bộ điều chỉnh khóa, Strat Plus thực sự là sản phẩm cao cấp nhất của Fender trong thời đại đó. Cây đàn này trong tình trạng tốt so với tuổi đời của nó nhưng có một vài vết lõm ở hai bên.\r\n\r\nCây đàn này đã được đàn lại bằng dây D\'Addario.\r\n\r\nPhụ kiện Đi kèm với mặt hàng này như sau: Hộp cứng.\r\n\r\n \r\nChúng tôi chụp ảnh từng mục / công cụ được cài đặt sẵn riêng lẻ bằng cách sử dụng thiết lập chụp ảnh chất lượng chuyên nghiệp để đảm bảo bạn thấy hình ảnh chi tiết, có độ phân giải cao mà bạn có thể phóng to và khám phá. Chúng tôi cẩn thận chụp ảnh bất kỳ tính năng, hao mòn hoặc sửa đổi nào mà bạn có thể muốn xem trước khi đưa ra quyết định mua.\r\n\r\nTất cả các nhạc cụ sở hữu trước của chúng tôi đều được bảo hành 1', 0, '36000000', '53f3130036.jpg'),
(46, 'Fender 2016 American Professional Telecaster Natural Maple Fingerboard', '', '10', '0', '30', 23, 19, 'Fender được hướng dẫn bởi một chỉ  thị rõ ràng, đơn giản làm cho cuộc sống của các nhạc sĩ tốt hơn. Mặc dù Telecaster ban đầu chắc chắn đã làm điều đó (và sau đó là một số), chúng tôi không bằng lòng với vòng nguyệt quế của mình. Nhóm các nhà khoa học điên rồ của chúng tôi đã kiểm tra mọi thành phần với độ chi tiết gần như siêu nhỏ. Nếu chúng tôi có thể cải thiện nó bằng một thiết kế mới hoặc vật liệu hiện đại, chúng tôi đã làm; nếu nó không cần cải thiện, chúng tôi đã để nó yên. Khi vụn gỗ và khói hàn lắng xuống, những gì còn lại là American Professional Telecaster — mọi thứ bạn cần để chơi hết sức mình.\r\n\r\nBáo cáo điều kiện\r\nTại guitarguitar, chúng tôi đánh giá thiết bị đã qua sử dụng của mình từ 1-5 tùy theo tình trạng chung của nó, với 5 là tốt nhất.\r\n\r\nHạng mục này đã được thẩm định như sau:\r\n\r\nPhần thân: 4 trên 5 - Mặt hàng có một số dấu hiệu sử dụng nhẹ và / hoặc nhỏ, chẳng hạn như xoáy hời hợt hoặc mù mịt khi kết thúc. Không có vết lõm, vết lõm hoặc vết xước đáng kể làm hỏng lớp sơn\r\n\r\nCổ: 4 trên 5 - Các phím đàn có thứ tự tốt và nhạc cụ chơi rõ ràng và có âm sắc chính xác trên bảng ngón tay.\r\n\r\n \r\nCây đàn này đã được đàn lại bằng dây D\'Addario.\r\n\r\nPhụ kiện Đi kèm với mặt hàng này như sau:\r\n\r\n \r\nChúng tôi chụp ảnh từng mục / công cụ được cài đặt sẵn riêng lẻ bằng cách sử dụng thiết lập chụp ảnh chất lượng chuyên nghiệp để đảm bảo bạn thấy hình ảnh chi tiết, có độ phân giải cao mà bạn có thể phóng to và khám phá. Chúng tôi cẩn thận chụp ảnh bất kỳ tính năng, hao mòn hoặc sửa đổi nào mà bạn có thể muốn xem trước khi đưa ra quyết định mua.\r\n\r\nTất cả các nhạc cụ sở hữu trước của chúng tôi đều được bảo hành 12 tháng và đã được kiểm tra, chơi thử và thiết lập trước khi bán lại.', 0, '28400000', 'a44cc5bb49.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) UNSIGNED NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(6, 46, '20', '2022-02-22 09:19:35'),
(7, 45, '10', '2022-02-28 00:05:27'),
(8, 44, '5', '2022-02-28 00:05:40'),
(9, 43, '10', '2022-02-28 00:05:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_lhe`
--
ALTER TABLE `tbl_lhe`
  ADD PRIMARY KEY (`lheId`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_lhe`
--
ALTER TABLE `tbl_lhe`
  MODIFY `lheId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD CONSTRAINT `tbl_compare_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_compare_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD CONSTRAINT `tbl_warehouse_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
