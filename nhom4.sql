-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2020 lúc 11:54 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom13`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Áo Phông'),
(2, 'Áo dài tay'),
(3, 'Áo sơ mi'),
(4, 'Chân váy'),
(5, 'Quần'),
(6, 'Túi Sách'),
(7, 'Kính'),
(8, 'Giày cao gót');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `fullname`, `email`, `address`, `phone`) VALUES
(1, 'asdfa', 'sdkfslkj', 'dsfslkj', 'sdfklsfj'),
(2, 'Đỗ Ngọc Sơn', 'doson0811@gmail.com', 'dadfasdfasdfsd', 'sdfhsadkfhaksdhfaks'),
(3, 'Đỗ Ngọc Sơn', 'doson0811@gmail.com', 'Tuyên quang', '0981798516');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `create_at`, `status`) VALUES
(1, 0, '2020-05-13', 0),
(2, 0, '2020-05-13', 0),
(3, 0, '2020-05-13', 0),
(4, 0, '2020-05-13', 0),
(5, 1, '2020-05-13', 0),
(6, 2, '2020-05-15', 1),
(7, 3, '2020-05-15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `number` int(11) NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `price`, `number`, `sale`) VALUES
(1, 1, 7, 20500000, 1, 0),
(2, 2, 7, 20500000, 1, 0),
(3, 3, 7, 20500000, 1, 0),
(4, 4, 8, 68500000, 1, 0),
(5, 5, 7, 20500000, 1, 0),
(6, 6, 6, 9000000, 1, 0),
(7, 7, 7, 20500000, 3, 0),
(8, 7, 8, 68500000, 2, 0),
(9, 7, 6, 9000000, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `hotproduct` int(11) NOT NULL,
  `newproduct` int(11) NOT NULL,
  `promotion_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `category_id`, `description`, `content`, `hotproduct`, `newproduct`, `promotion_product`, `price`, `img`, `sale`) VALUES
(1, 'Váy', 2, 'Duyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất. \r\n', 'Duyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất.\r\nDuyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất.\r\nDuyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất.\r\nDuyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất.\r\nDuyên dáng, thanh lịch, điệu đà và trẻ trung là những gì mà đầm họa tiết mang đến cho nàng trong những ngày hè nóng oi ả này. Không chỉ phô ra những vẻ đẹp vốn dĩ của phái đẹp, giúp nàng tự tin hơn mỗi khi xuống phố, mẫu đầm này còn mang đến cảm giác thoải mái, mát mẻ trong cái nắng, nóng đến “cháy da thịt” này. Bởi vậy, lựa chọn đầm họa tiết là vô cùng phù hợp khi nàng muốn dạo bước xuống phố cùng chàng trong ngày hè này. Hãy để thoitrang.biz lựa chọn cho bạn một kiểu dáng phù hợp và đẹp mắt nhất.', 1, 1, 1, 200000, 'image.jpg', 15),
(2, 'Áo dài tay', 3, 'Mẫu áo hot nhất hiện nay', 'Trẻ trung, năng động là những gì mang lại khi diện những chiếc áo dài tay của chúng tôi. Đó là cả sự sang trọng, tinh tế và thuần khiết.', 1, 1, 0, 450000, 'image.jpg', 15),
(3, 'Áo sơ mi', 4, 'Trẻ trung - Lịch lãm', 'Sự kết hợp hoàn hảo giữa Á - Âu mang lại những chiếc áo sơ mi sang trọng lịch lãm, mỗi cô gái đều mang một phong cách riêng và không chỉ thế, sơ mi còn mang lại sự cá tính mạnh mẽ, sự độc đáo sang trọng mà không đánh mất đi sự cá tính của bạn.', 1, 1, 1, 800000, 'image.jpg', 10),
(4, 'Chân váy', 5, 'Sự dễ thương, cá tính của những cô nàng', 'Chân váy LTX là sự kết hợp độc đáo mang phong cách trẻ trung hiện đại, cùng với đó là sự cá tính tuyệt vời mà cô gái nào cũng muốn thêm vào tủ đồ. Với màu sắc trẻ trung tinh tế, hãy rinh cho mình ngay một sản phẩm đi nào.', 1, 0, 0, 250000, 'image.jpg', 5),
(5, 'Quần', 1, 'Hiện đại - lịch sự - cá tính', 'Chiếc quần Paris mang một phong cách mới mẻ năng động, nhưng lại không mất đi sự sang trọng trên từng đường may. Với bản thiết kế giới hạn của nhà thiết kế chuyên nghiệp Mè Đức - NTK nổi tiếng thời trang Pháp. Chiếc quần Paris sẽ mang lại tất cả mọi thứ - mọi thứ tuyệt vời.', 1, 0, 1, 3000000, '10-1.jpg', 10),
(6, 'Túi sách', 1, 'Sang trọng - gần gũi', 'Chiếc túi sách nhãn hiệu LV - của nhà thiết kế Việt Nam - Ngọc Sơn đã là một trong những chiếc túi sách bán chạy nhất triển lãm thời trang Paris -2020. Với sự đơn giản những không đánh mất đi cá tính, được làm thủ công tới từng đường chỉ với chất liệu sang trọng nhất thế giới. Những gì chiếc túi mang lại sẽ là đẳng cấp của bạn.', 1, 1, 0, 9000000, 'image.jpg', 0),
(7, 'Kính', 6, 'Ma mị - Quyền lực', 'Chiếc kính thời trang bán chạy nhất trên thế giới, đó là chiếc kính được Bill Andel sử dụng trong tuần lễ thời trang nước Anh. Sự kết hợp giữa những viên đá quý cùng chất liệu siêu sang trọng đã là dòng sản phẩm này trở hơn nổi bật trên thị trường.', 1, 1, 0, 20500000, 'image.jpg', 3),
(8, 'Giày cao gót', 7, 'Cá tính và trẻ trung', 'Chiếc giày cao gót UNT mang lại sự tươi mới trong bộ sưu tập  đồ hiệu của nữ người mẫu Ngọc Trinh. Với những đường nét tinh tế sang trọng, chiếc giày mang lại sự quý phái vô cùng.', 1, 0, 1, 68500000, 'image.jpg', 20),
(9, 'quần sịp', 5, '<p>&aacute;dfasdfsdf</p>\r\n', '<p>sdfhaskdfhaksdhfks</p>\r\n', 0, 0, 0, 0, '1589528739canh.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Đỗ Ngọc Sơn', 'admin@gmail.com', '12345');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
