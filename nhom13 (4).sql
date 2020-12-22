-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 08:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom13`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Quần áo cho mẹ'),
(2, 'Quần áo cho bé'),
(3, 'Bỉm '),
(4, 'Sữa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `fullname`, `email`, `address`, `phone`) VALUES
(1, 'asdfa', 'sdkfslkj', 'dsfslkj', 'sdfklsfj'),
(2, 'Đỗ Ngọc Sơn', 'doson0811@gmail.com', 'dadfasdfasdfsd', 'sdfhsadkfhaksdhfaks'),
(3, 'Đỗ Ngọc Sơn', 'doson0811@gmail.com', 'Tuyên quang', '0981798516');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
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
-- Table structure for table `tbl_order_detail`
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
-- Dumping data for table `tbl_order_detail`
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
-- Table structure for table `tbl_product`
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
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `category_id`, `description`, `content`, `hotproduct`, `newproduct`, `promotion_product`, `price`, `img`, `sale`) VALUES
(1, 'Đầm bầu freesize nơ cổ', 1, 'Chiếc váy nhẹ nhàng mà vô cùng xinh xắn\r\n', ' Thiết kế phối nơ lạ mắt kết hợp cùng họa tiết nơi chân vaý tạo điểm nhán độc đáo cho sản phẩm\r\n\r\n- Đầm freesize phù hợp cho mọi dáng bầu.\r\n\r\n- Chất vải thoáng mát, kiểu dáng phù hợp nơi công sở lẫn dạo phố.', 1, 1, 1, 350000, 'anh1.png', 15),
(2, 'Đầm bầu lụa độc đáo', 1, 'Bầu mà vẫn kiêu sa, thần thái là đây chứ đâu ', '- Màu sắc trang nhã, tông màu đơn giản nhưng vẫn làm nổi bật sự hiện đại của nàng bầu.\r\n\r\n- Chất lụa Hàn sang trọng.\r\n\r\n- Kiểu dáng đơn giản phù hợp nơi công sở hoặc dạo phố.', 1, 1, 0, 550000, 'anh2.png', 15),
(3, ' Đầm bầu sát nách in hoa ', 1, 'Trẻ trung - Lịch lãm', '\r\n- Đầm sát nách với nền hoa trẻ trung\r\n\r\n- Form suông năng động giúp bạn luôn thoải mái và tự tin, là chiếc đầm không thể thiếu trong tủ đồ của bạn.', 1, 1, 1, 399000, 'anh3.png', 10),
(4, 'Đầm bầu hoa trẻ trung', 1, 'Sự dễ thương, cá tính của những mẹ bầu', '- Màu sắc trang nhã, tông màu đơn giản nhưng vẫn làm nổi bật sự hiện đại của nàng bầu.\r\n- Vải in hoa màu sắc trẻ trung.\r\n\r\n- Kiểu dáng đơn giản phù hợp nơi công sở hoặc dạo phố.\r\n\r\n- Thiết kế tay che khuyết điểm.', 1, 0, 0, 549000, 'anh4.png', 5),
(5, 'Đầm bầu hoa cúc trắng', 1, 'Hiện đại - lịch sự - cá tính', ' Màu sắc trang nhã, tông màu đơn giản nhưng vẫn làm nổi bật sự hiện đại của nàng bầu.\r\n- Vải in hoa màu sắc trẻ trung.\r\n\r\n- Kiểu dáng đơn giản phù hợp nơi công sở hoặc dạo phố.\r\n\r\n- Thiết kế tay che khuyết điểm.', 1, 0, 1, 329000, 'anh5.png', 10),
(6, 'Đầm bầu freesize cổ thuyền', 1, 'Dáng đầm trẻ trung, sau sinh nàng vẫn sử dụng lại được', '- Thiết kế cổ thuyền trẻ trung, hiện đại.\r\n- Màu sắc thời trang, phù hợp với thị hiếu các nàng bầu trẻ.\r\n\r\n- Mẫu đầm freesize phù hợp cho mọi dáng bầu.\r\n\r\n- Phối cung túi nhỏ xinh sẽ làm nàng thật rạng rỡ', 1, 1, 0, 700000, 'anh6.png', 0),
(7, 'Đầm yếm bầu caro', 1, 'chiếc đầm này là một giải pháp tối ưu cho bất kể dáng người nào', '- Sự kết hợp trẻ trung giữa màu sắc caro và áo thun trơn.\r\n\r\n- Chất vải nhẹ nhàng, thoáng mát.\r\n- Phù hợp khi nàng dạo phố hoặc đi làm nơi công sở.', 1, 1, 0, 2050000, 'anh7.png', 3),
(8, 'Đầm bầu maxi hai dây', 1, 'Cá tính và trẻ trung', '- Thiết kế maxi nhẹ nhàng, nữ tính\r\n\r\n- Họa tiết vải lạ mắt, phù hợp cho các buổi dạo chơi ngoài trời.\r\n\r\n- Khéo léo phối cùng phụ kiện để thêm phần trẻ trung các nàng nhé.', 1, 0, 1, 685000, 'anh8.png', 20),
(9, 'Đầm bầu hoa tay phồng', 1, 'sang trọng và lịch lãm\r\n', '- Màu sắc trang nhã, tông màu đơn giản nhưng vẫn làm nổi bật sự hiện đại của nàng bầu.\r\n- Vải in hoa màu sắc trẻ trung.\r\n\r\n- Kiểu dáng đơn giản phù hợp nơi công sở hoặc dạo phố.\r\n\r\n- Thiết kế tay phồng tạo điểm nhấn cho sản phẩm.', 1, 1, 0, 629000, 'anh9.png', 10),
(10, 'Romper bé gái hồng tặng băng đô', 2, '- Vải sợi tre không còn là chất vả còn xa lạ với Ba Mẹ và các bé, bởi vải sợi tre có khả năng hút hút vượt trội, có khả năng kháng khuẩn tốt, thoáng khí và thân thiện với môi trường.\r\n\r\n- Một ưu điểm vượt trội khác của vải sợi tre là vào những ngày thời tiết lạnh thì lại rất ấm áp, thông thoáng; không tích tụ mồ hôi và rất dễ chịu vào mùa hè.\r\n\r\n- Tất cả các sản phẩm của Bibo\'s đều đã qua kiểm nghiệm về độ an toàn, không gây kích ứng với làn da nhạy cảm của bé sơ sinh.\r\n', 'Romper bé gái hồng tặng băng đô mang đến sự bảo vệ toàn diện và đáng yêu cho bé sơ sinh trong giai đoạn 6 - 12 tháng. Không chỉ là chiếc romper liền thân, sản phẩm còn tặng kèm một chiếc băng đô đồng màu xinh xắn tạo nên set đồ dành cho bé. Sản phẩm sử dụng chất liệu độc quyền từ Bibo\'s được nghiên cứu và phát triển từ các thành phần sợi tre và spandex, mang đến sự mềm mại, mướt tay, không bị bai dão, thấm hút mồ hôi, khả năng kháng khuẩn và thân thiện với môi trường. Thiết kế romper xinh xắn cùng các điểm nhấn nổi bật, bé sẽ có một trang phục tuyệt vời và sự yêu thương đầu đời hoàn hảo.', 1, 1, 0, 250000, 'anh10.png', 5),
(11, 'Set váy bé gái hoa nhí vàng mix áo', 2, 'Sự kết hợp xinh xắn và đáng yêu giữa áo cùng váy\r\nCác chất liệu được Bibo\'s lựa chọn cẩn thận, an toàn cho bé\r\nKết hợp hài hòa màu sắc cùng họa tiết', 'Set váy bé gái hoa nhí vàng mix áo mang đến kiểu dáng áo dài tay phối cùng váy xòe 2 dây xinh xắn, phù hợp với các bé gái từ 18 tháng đến 3 tuổi. Sự lồng ghép của chiếc váy xòe mặc bên ngoài và phần cổ gập thêu hoa của áo mang đến thiết kế đáng yêu, xinh xắn, cho bé thêm thích thú. Chiếc váy hai dây xòe rộng sử dụng 100% cotton, body dài tay được làm từ thành phần sợi tre và spandex, tối ưu bảo vệ làn da bé và cho bé sự thoải mái tối đa. Sở hữu sản phẩm, bé đồng thời sở hữu hai kiểu dáng đáng yêu, mẹ thoải mái kết hợp để tạo ra thêm nhiều phong cách cho bé.', 1, 1, 0, 199000, 'anh11.png', 0),
(12, 'Body tay nối bé trai ghi đậm', 2, 'Chất liệu vải thông thoáng, co giãn và thấm hút\r\nThiết kế tay nối phong cách, khỏe khoắn và năng động\r\nMàu sắc tươi sáng, họa tiết ngộ nghĩnh ', 'Body tay nối bé trai ghi đậm mang đến một trong những thiết kế phổ biến và quen thuộc trong danh mục đồ sơ sinh - bé sơ sinh sẽ luôn được đảm bảo sức khỏe, vận động thoải mái và thay bỉm tã cũng tiện lợi hơn. Đặc biệt, diện body cũng sẽ làm nổi bật lên nét đáng yêu, ngộ nghĩnh của lứa tuổi đầu đời. Được sản xuất bởi Bibo\'s - một thương hiệu thời trang sơ sinh Việt Nam, chiếc body sẽ là một gợi ý lý tưởng cho tủ đồ của bé. Body kiểu dáng dài tay, khuy cài vai và dạng quần chíp, sẽ thật ấm áp và thông thoáng cho những ngày se lạnh. Sản phẩm được làm từ hai thành phần cotton và spandex theo một công thức tỉ lệ riêng của Bibo\'s, mang đến độ mềm, dai, co giãn tốt, bên cạnh đó cũng thật thông thoáng, thấm hút, đảm bảo an toàn cho làn da nhạy cảm của bé và thật thoải mái trong từng cử động.', 1, 1, 0, 169000, 'anh12.png', 5),
(13, 'Romper bé trai ghi tặng mũ', 2, 'Chất liệu độc quyền được Bibo\'s nghiên cứu và phát triển\r\nThiết kế liền tất và bao tay ấm áp\r\nTặng kèm mũ chụp sơ sinh', 'Romper bé trai ghi tặng mũ mang đến sự bảo vệ toàn diện và đáng yêu cho bé sơ sinh trong giai đoạn 0 - 3 tháng. Romper với thiết kế liền phần tất chân và thiết kế bao tay giúp giữ ấm tối đa cơ thể còn non nớt của bé. Sản phẩm sử dụng chất liệu độc quyền từ Bibo\'s được nghiên cứu và phát triển từ các thành phần sợi tre và spandex, mang đến sự mềm mại, mướt tay, không bị bai dão, thấm hút mồ hôi, khả năng kháng khuẩn và thân thiện với môi trường.', 1, 1, 0, 198000, 'anh13.png', 5),
(14, 'Áo gile len bé trai cà vạt xanh', 2, 'Chất liệu len mềm mại, ấm áp\r\nGile dáng bo khỏe khoắn\r\nHọa tiết cà vạt ngộ nghĩnh, đáng yêu', 'Một chiếc áo gile len không chỉ mang lại sự ấm áp cho bé mà còn mang tới sự khỏe khoắn, thời trang mỗi khi mặc. Áo gile len bé trai cà vạt xanh sẽ là một gợi ý cho ba mẹ khi lựa chọn đồ mùa đông cho con yêu. Với chất liệu sợi len tổng hợp mềm mịn, sản phẩm an toàn với làn da của bé.', 1, 1, 0, 249000, 'anh14.png', 10),
(15, 'Áo gile len bé gái Momma hươu hồng', 2, 'Chất liệu len cotton ấm áp, thông thoáng\r\nGile dáng bo khỏe khoắn, khuy cài giữa tiện dụng\r\nHọa tiết hươu nhỏ ngộ nghĩnh, đáng yêu', 'Áo gile len bé gái Momma hươu hồng mang đến cho những ngày thu đông trở lạnh của bé một sắc màu ấm áp và tươi sáng. Sản phẩm từ thương hiệu Momma Việt Nam với chất liệu len cotton thông thoáng, mềm mại, thiết kế khuy gỗ cài giữa thân thiện và tiện dụng. Dáng gile khỏe khoắn, dễ mặc khi chỉ cần kết hợp bên trong thêm một chiếc áo thun hay áo cổ lọ dài tay. Áo phối hồng cùng họa tiết và màu sắc xinh xắn, bé gái sẽ vô cùng thích thú khi diện lên người.', 1, 1, 0, 249000, 'anh15.png', 10),
(16, 'Romper bé trai ngựa xanh tặng yếm', 2, 'Chất vải thở Cotton Air nhẹ nhàng, êm mịn và thông thoáng\r\nThiết kế phối thân trên - dưới đẹp mắt\r\nTặng kèm yếm ăn hình ngựa đáng yêu, ấn tượng ', 'Lựa chọn cho bé hai gam màu trắng - xanh pastel, romper bé trai ngựa xanh sẽ là gợi ý thú vị để mẹ bổ sung cho tủ đồ của bé. Bộ romper sử dụng chất liệu Cotton Air được xử lý bề mặt vô cùng độc đáo với các họa tiết tạo những khoảng hở và kết cấu kẻ sọc làm nên tính thông thoáng ưu việt của mặt vải, mẹ yên tâm rằng bé luôn cảm giác thoải mái và dễ chịu khi vận động. Romper thiết kế gần gũi với thể trạng của các em bé sơ sinh, đặc biệt còn tặng kèm quà là chiếc yếm xinh xắn, vừa tiện dụng trong giai đoạn ăn dặm, lại vô cùng thời trang, đáng yêu.', 1, 1, 0, 179000, 'anh16.png', 5),
(17, 'Bộ sát nách bé gái Chong Chóng hồng san hô', 2, 'Chất liệu siêu mềm mại, siêu thoáng mát\r\nDáng áo chữ A phối cánh tiên xinh xắn\r\nHọa tiết ngộ nghĩnh, màu sắc nổi bật', 'Bộ sát nách bé gái Chong Chón hồng san hô đem đến một thiết kế vô cùng thích hợp cho tiết trời xuân hè, không chỉ bởi chất liệu mà còn bởi cả thiết kế và màu sắc. Sản phẩm nổi bật với chất liệu sợi rayon và spandex, được kết hợp theo một tỷ lệ riêng biệt, đem đến đặc tính siêu mềm mại, siêu thoáng mát, giúp bé luôn thoải mái, dễ chịu trong từng vận động. Vẫn tập trung mang đến cảm giác thoáng mát, chiếc áo dáng chữ A sát nách kết hợp cùng quần đùi cạp chun sẽ là một thiết kế đơn giản mà lý tưởng. Chiếc áo điệu đà, xinh xắn hơn với phần vai cánh tiên cùng họa tiết bạn mèo xinh xắn trên nền hồng san hô nhẹ nhàng, nữ tính.', 1, 1, 0, 165000, 'anh17.png', 5),
(18, 'Bộ sát nách bé trai Chong Chóng màu vàng', 2, 'Chất liệu an toàn, thoải mái \r\nKiểu dáng đẹp mắt, thời trang \r\nHọa tiết hươu cao cổ ngộ nghĩnh', 'Bộ sát nách bé trai Chong Chóng màu vàng làm từ chất liệu sợi rayon và spandex cao cấp, dễ dàng thấm hút mồ hôi, lại có khả năng diệt khuẩn tự nhiên, mang tới cảm giác thông thoáng, thoải mái cho mọi hoạt động ngày hè của bé. Thiết kế đề cao tính tiện dụng với áo sát nách và quần cộc, cho bé thỏa sức vui chơi, học tập. Đặc biệt, họa tiết hươu cao cổ ngộ nghĩnh, cùng màu sắc vàng tươi thu hút, tạo nên nét cá tính riêng cho bé yêu. Sản phẩm có các size phù hợp cho bé từ 1 đến 7 tuổi.', 1, 1, 0, 165000, 'anh18.png', 5),
(19, 'Bỉm - Tã quần Merries 44 miếng', 3, 'Rãnh thông khí độc đáo\r\nLõi siêu thấm hút kép\r\nLưng thun co giãn vừa vặn, thoải mái', 'Tã quần Merries được sản xuất bởi tập đoàn KAO với ưu điểm siêu mềm mại, siêu thấm hút và không gây kích ứng cho làn da của bé. Tã quần có thiết kế chun co giãn linh hoạt phù hợp với bé, mang lại cho bé cảm giác thoải mái khi sử dụng. Cùng tã Merries, bé sẽ có khoảng thời gian vui đùa hay những giấc ngủ ngon mỗi ngày. ', 1, 1, 0, 369000, 'anh19.png', 5),
(20, 'Bỉm - Tã dán Moony 84 miếng', 3, 'Bề mặt đa rãnh thấm\r\nMàng vải thun 3 vòng co giãn\r\nThiết kế độc quyền C-shape', 'Tã dán Moony 84 miếng là dòng sản phẩm cao cấp, được sản xuất theo công nghệ kỹ thuật hiện đại của Nhật Bản sẽ là sự lựa chọn xứng đáng nhất của những bà mẹ thông thái dành cho thiên thần của mình. Với chất liệu sợi nano siêu nhỏ và mịn tạo nên bề mặt mềm mại, thông thoáng, mặt đáy đa rãnh thấm cùng thiết kế độc quyền C-shape, từng miếng tã Moony sẽ luôn bảo vệ sức khỏe và làn da non nớt của bé yêu, mang lại cho bé cảm giác thoải mái và dễ chịu tối đa trong từng vận động.', 1, 1, 0, 429000, 'anh20.png', 10),
(21, 'Bỉm - Tã quần Goon Premium- 46 miếng', 3, 'Thấm hút vượt trội tới 6 lần bé tè\r\nLưng thun êm ái với khả năng đàn hồi cao\r\nMàng đáy thoáng khí, hạn chế ẩm ướt', 'Tã quần Goon Premium 46 miếng là dòng sản phẩm mới nhất của thương hiệu Goon uy tín, mang đến cho bé yêu sản phẩm tã quần với các ưu điểm nổi bật như thấm hút tới 6 lần bé tè, màng đáy thoáng khí cao cấp hay lưng thun co giãn linh hoạt, đảm bảo luôn mang tới cho bé yêu cảm giác thoải mái, dễ chịu trong mỗi lần sử dụng. Không những thế, họa tiết chú sư tử Leo còn được trang trí khéo léo khắp bề mặt sản phẩm, trở thành điểm nhấn thu hút mang tới niềm vui cho bé trong mỗi lần sử dụng.', 1, 1, 0, 315000, 'anh21.png', 5),
(22, 'Bỉm - Tã quần Goon Friend 54 miếng', 3, 'Rãnh thấm hút thần kì\r\n4 lần thấm hút hiệu quả\r\nMặt bông mềm mại, màng đáy thoáng khí', 'Lựa chọn tã giấy phù hợp cho con trẻ là điều mà các bậc cha mẹ nhất mực quan tâm. Được chế tạo dựa trên công nghệ tiên tiến của Nhật Bản, tã quần Goon Friend sở hữu khả năng thấm hút tốt, hẳn sẽ là một sản phẩm lý tưởng mà phụ huynh có thể tin tưởng. Tã sử dụng chất liệu sợi mềm mại, tuyệt đối không gây ảnh hưởng đến làn da non nớt của trẻ nên bạn có thể yên tâm. Mẹ hãy dành cho bé yêu sự chăm sóc tốt nhất với tã quần Goon Friend.', 1, 1, 0, 255000, 'anh22.png', 5),
(23, 'Bỉm - Tã dán Bobby 68 miếng', 3, 'Bề mặt kim cương thấm hút nhanh chóng\r\nBề mặt sóng 3D thoáng khí\r\nTinh chất trà xanh thơm mát, chống hăm', 'Là sản phẩm đến từ thương hiệu Unicharm Nhật Bản, tã dán Bobby được ứng dụng công nghệ sản xuất tiên tiến và hiện đại nên mang những đặc điểm nổi trội như: rãnh thấm kim cương cải tiến mới, bề mặt 3D khô thoáng cùng mặt đáy siêu thấm siêu thoát ẩm, hệ thun co giãn linh hoạt cùng đai dính dạng vải phía trước mềm mại, tinh chất trà xanh khử mùi chống hăm,...giúp bảo vệ sức khỏe bé một cách tốt nhất. Bố mẹ yên tâm rằng bé sẽ chơi ngoan suốt ngày mà không bị làm phiền bởi bất cứ sự khó chịu nào.', 1, 1, 0, 289000, 'anh23.png', 10),
(24, 'Bỉm - Tã dán Huggies 76 miếng', 3, 'Bề mặt tã siêu mềm mại\r\nĐệm mây co giãn chống hằn đỏ\r\n1000 phễu thấm hút và khóa chất lỏng', 'Bỉm - Tã dán Huggies sẽ là giải pháp hoàn hảo cho các ông bố bà mẹ khi chăm sóc con yêu trong những năm tháng đầu đời. Những đặc điểm ưu việt của dòng tã Huggies mới như: lõi thấm hút và khóa chất lỏng, mặt đáy thoáng khí 100%, lớp chống tràn kép,... mang đến cho bé yêu nhà bạn những trải nghiệm thật thích thú và thoải mái khi vận động.', 1, 1, 0, 345000, 'anh24.png', 5),
(25, 'Bỉm - Tã dán Huggies 56 miếng ', 3, 'Bề mặt tã siêu mềm mại\r\nBọc kén con tằm ngăn hằn đỏ\r\n1000 phễu thấm hút và khóa chất lỏng', 'Bỉm - Tã dán Huggies là dòng bỉm dán dành cho các bé sơ sinh với phù hợp cho bé 4 - 8kg. Những đặc điểm ưu việt của dòng tã Huggies mới như: bọc kén con tằm ngăn hằn đỏ ở mọi vị trí tiếp xúc, 1000 phễu thấm hút giúp thấm nhanh thần tốc và khóa chất lỏng, mặt đáy thoáng khí 100%,... mang đến cho bé yêu nhà bạn những trải nghiệm thật thích thú và thoải mái khi vận động. Sản phẩm sẽ là giải pháp hoàn hảo cho các ông bố bà mẹ khi chăm sóc con yêu trong những năm tháng đầu đời.', 1, 1, 0, 255000, 'anh25.png', 0),
(26, 'Bỉm - Tã dán Bobby 76 miếng', 3, 'Bề mặt kim cương thấm hút nhanh chóng\r\nBề mặt sóng 3D thoáng khí\r\nTinh chất trà xanh thơm mát, chống hăm', 'Tã dán Bobby mang những đặc điểm nổi trội như: rãnh thấm kim cương cải tiến mới, hệ thun co giãn linh hoạt cùng đai dính dạng vải phía trước mềm mại, bề mặt 3D khô thoáng cùng mặt đáy siêu thấm siêu thoát ẩm, tinh chất trà xanh khử mùi chống hăm,...giúp bảo vệ sức khỏe bé một cách tốt nhất. Bố mẹ yên tâm rằng bé sẽ chơi ngoan suốt ngày mà không bị làm phiền bởi bất cứ sự khó chịu nào. Sản phẩm sẽ là một lựa chọn không thể bỏ qua của mẹ dành cho bé yêu trong những năm tháng đầu đời', 1, 1, 0, 385000, 'anh26.png', 0),
(27, 'Bỉm - Tã dán Moony 64 miếng', 3, 'Thiết kế C-shape và V cut\r\nBề mặt đa rãnh thấm\r\nSợi Nano siêu nhỏ và mịn', 'Tã dán Moony 64 miếng là sản phẩm cao cấp được sản xuất theo công nghệ hiện đại nhất hiện nay, đáp ứng được tất cả những yêu cầu về chất lượng cũng như tiêu chuẩn về an toàn cho bé yêu của bạn. Thấu hiểu sự khác biệt trong cấu tạo về sống lưng của các bé sơ sinh không thẳng như người lớn mà thường có độ cong như hình dạng chữ C từ phần lưng xuống mông do ảnh hưởng từ tư thế khi bé còn trong bụng mẹ, do đó Moony đã \"phát minh\" ra một đặc điểm nổi bật mà chưa tã nào có, đó chính là hệ thun đũng mặt ngoài tã - tạo ra một độ cong tự nhiên ôm theo cấu tạo cơ thể sơ sinh của bé, hạn chế việc tạo ra khe trống mà vẫn rất thoải mái cho bé các bé sơ sinh.', 1, 1, 0, 349000, 'anh27.png', 0),
(28, 'Sữa Meiji Growing Up Formula 800g (1 - 3 tuổi)', 4, 'Cung cấp năng lượng và dinh dưỡng\r\nHỗ trợ não bộ phát triển\r\nThúc đẩy tăng trưởng chiều cao', 'Sữa Meiji Growing Up Formula 800g phù hợp cho trẻ từ 1-3 tuổi, không chỉ chứa các chất dinh dưỡng cơ bản như protein, chất béo, carbohydrat mà còn có các vitamin và khoáng chất rất khó có được từ sữa bò và thức ăn dạng rắn. Meiji còn bổ sung cả axit docosahexaenoic (DHA), các nucleotides và đặc biệt là hệ cân bằng Omega 3, Omega 6 giúp thúc đẩy sự phát triển toàn diện cả về thể chất lẫn não bộ của trẻ trong suốt giai đoạn thơ ấu.', 1, 1, 0, 469000, 'anh28.png', 0),
(29, 'Glico Icreo Balance Milk số 0 800g (0 - 12 tháng)', 4, '5-Nucleotides và Beta-carotene giúp Đề kháng vững vàng\r\nDầu tía tô chuyển hóa thành DHA và Axit Palmitic giúp Trí não tinh anh\r\nBộ đôi Sắt - Vitamin C và Bộ ba Vitamin D - Sắt - Canxi-Photpho cho bé một Sức vóc cao khỏe', 'Glico Icreo Balance Milk số 0 nội địa Nhật Bản dành cho bé từ sơ sinh đến 12 tháng tuổi là sản phẩm có giá trị cao nhất (Theo báo cáo của Công ty Nghiên cứu thị trường Intage Nhật Bản tháng 3/2017), được các mẹ Nhật tin dùng nhất (Giải thưởng Mother Selection Japan 2015) và là sự lựa chọn của hơn 900 bệnh viện tại đất nước Mặt trời mọc. Sản phẩm được sản xuất tại nhà máy Kaibaracho, tỉnh Hyogo, Nhật Bản - nơi không chịu ảnh hưởng của chất phóng xạ, có thành phần và mùi vị tự nhiên. Glico số 0 đặc biệt dành riêng cho giai đoạn đầu đời, khi hệ tiêu hóa của bé còn non nớt, giúp phòng chống bệnh táo bón hay tiêu chảy thường gặp ở các bé trong giai đoạn này. Bên cạnh đó, hàm lượng axit béo Palmitic và 5 loại Nucleotides vượt trội cho bé hệ tiêu hóa khỏe mạnh, tăng cường miễn dịch và hỗ trợ phát triển não bộ tinh anh. ', 1, 1, 0, 595000, 'anh29.png', 0),
(30, 'Sữa Nan Optipro số 2 800g (6 - 12 tháng)', 4, 'Phát triển trí não và thị giác\r\nHỗ trợ hoạt động tiêu hóa\r\nTăng cường khả năng miễn dịch', 'Đến từ thương hiệu Nestle, sữa Nan Optipro số 2 là sản phẩm công thức dùng bổ sung thêm vào khẩu phần ăn hàng ngày của bé trong giai đoạn từ 6 đến 12 tháng, giúp cân bằng dinh dưỡng, cung cấp các dưỡng chất cần thiết cho sự phát triển thể chất và trí não, tăng cường trí thông minh cho trẻ. Nan Optipro 2 mang tới hệ lợi khuẩn Bifidus BL bổ sung các vi sinh vật có lợi Probiotics giúp hệ tiêu hóa của bé hoạt động tốt hơn, tăng cường hệ miễn dịch đường ruột cho trẻ để trẻ hấp thu các chất dinh dưỡng một cách tự nhiên và phòng chống các tác nhân gây bệnh hiệu quả. Kết hợp với phát minh độc quyền - đạm chất lượng Optipro, Nan số 2 cung cấp một hàm lượng protein vừa đủ cần thiết cho sự phát triển khỏe mạnh lâu dài mà không gây quá tải cho các cơ quan còn non nớt của trẻ. ', 1, 1, 0, 395000, 'anh30.png', 0),
(31, 'Sữa Aptamil Anh số 3 900g (12 - 24 tháng)', 4, 'Hỗ trợ phát triển trí não\r\nTăng cường sức đề kháng\r\nGiúp hệ tiêu hóa hoạt động tốt', 'Sữa Aptamil Anh số 3 900g là sản phẩm dinh dưỡng đặc chế dùng để bổ sung một phần bữa ăn cho bé từ 1 đến 2 tuổi. Sữa với công thức dinh dưỡng Pronutra+ mang đến cho bé sự phát triển toàn diện cả về thể chất lẫn trí não. Aptamil 3 cung cấp đến 13 loại vitamin có thành phần cân đối, kết hợp cùng các khoáng chất cho bé một cơ thể khỏe mạnh, đồng thời tăng cường sức đề kháng để phòng chống các tác nhân gây bệnh. Tỷ lệ vàng GOS/FOS có trong Aptamil cung cấp lượng vi sinh vật có lợi hỗ trợ tiêu hóa của bé một cách tự nhiên để bé hấp thu tốt hơn và hạn chế táo bón. Các dưỡng chất DHA, AA, Omega 3 vẫn được bổ sung trong sữa giúp trí não, tư duy và hoạt động của thị giác phát triển.', 1, 1, 0, 549000, 'anh31.png', 5),
(32, 'Sữa Blackmores Newborn số 1 900g (0 - 6 tháng)', 4, 'Hỗ trợ tăng cân tối ưu\r\nTốt cho hệ tiêu hóa của bé\r\nPhát triển trí não toàn diện', 'Sữa Blackmores Newborn số 1 900g là sản phẩm dinh dưỡng nhập khẩu từ Úc, mang đến công thức cao năng lượng với 20 thành phần và 25 loại dưỡng chất cho bé trong giai đoạn từ 0 - 6 tháng. Sữa bổ sung nguồn dinh dưỡng cao, hỗ trợ phát triển cân nặng, nhưng đồng thời cũng bổ sung chất xơ hòa tan, Prebiotic,... và các chất dễ tiêu hóa khác giúp bé hấp thu dễ dàng và hạn chế táo bón. Dành cho giai đoạn đầu đời của bé, Blackmores số 1 cũng mang đến hàm lượng cao DHA, ARA, Taurine, Choline,... hỗ trợ phát triển não bộ và thị giác toàn diện.', 1, 1, 0, 585000, 'anh32.png', 0),
(33, 'Sữa PediaSure BA 850g (1 - 10 tuổi)', 4, 'Hệ dưỡng chất tiên tiến cho bé biếng ăn\r\nDinh dưỡng đầy đủ và cân đối\r\nTăng cường sức đề kháng', 'Sữa PediaSure BA là sản phẩm dinh dưỡng dùng bổ sung cùng bữa ăn của trẻ 1-10 tuổi, được đặc chế khoa học để cung cấp nguồn dinh dưỡng đầy đủ và cân đối, giúp thay thế và bổ sung kịp thời sự thiếu hụt của bữa ăn, cho trẻ khỏe mạnh và phát triển tốt, không bị suy dinh dưỡng hoặc béo phì, đặc biệt tốt khi dùng thường xuyên và lâu dài cho trẻ. Sữa đặc biệt phù hợp cho các bé biếng ăn, giúp trẻ nhanh chóng bắt kịp và tiếp tục đà tăng trưởng tối ưu cả về thể chất và trí tuệ. Sản phẩm đóng hộp thiếc 850g an toàn vệ sinh thực phẩm khi sử dụng.', 1, 1, 0, 565000, 'anh33.png', 0),
(34, 'Sữa Nestlé Nutren Junior 800g (1 - 10 tuổi)', 4, 'Đạm Whey chất lượng giúp tiêu hóa tốt\r\nSynbiotics tăng cường đề kháng\r\nGiàu DHA phát triển trí não và thị giác', 'Sữa Nestlé Nutren Junior 800g là công thức dinh dưỡng cao năng lượng đặc chế dành cho trẻ từ 1 - 10 tuổi ăn uống kém, kém hấp thu, bị bệnh đang trong quá trình hồi phục sức khỏe hoặc trẻ bị suy dinh dưỡng. Nutren Junior cung cấp đầy đủ các vitamin và khoáng chất cần thiết hàng ngày mang đến nguồn năng lượng cao giúp trẻ ăn uống kém bắt kịp đà tăng trưởng. Sữa sử dụng nguồn đạm Whey chất lượng để phù hợp với hệ tiêu hóa non nớt của bé, giúp trẻ tiêu hóa và hấp thu dễ dàng. Bên cạnh đó, hệ lợi khuẩn Synbiotics hỗ trợ hoạt động đường ruột giúp tăng cường đề kháng và hàm lượng cao DHA tốt cho trí não cũng như thị giác của trẻ.', 1, 1, 0, 561000, 'anh34.png', 0),
(35, 'Sữa HiPP Combiotic Organic số 3 800g (Trên 1 tuổi)', 4, 'Hỗ trợ tiêu hóa và miễn dịch\r\nTập trung phát triển chiều cao\r\nDòng sản phẩm Organic siêu sạch', 'Sữa HiPP Combiotic Organic số 3 dành cho các bé từ 1 tuổi trở lên khi trẻ bắt đầu bước vào giai đoạn học hỏi rất nhiều từ môi trường xung quanh. Vì thế trong giai đoạn này, trẻ cần nhiều hơn lượng chất dinh dưỡng dung nạp vào cơ thể hàng ngày. Sữa bột HiPP Combiotic Organic siêu sạch số 3 bổ sung những dưỡng chất thiết yếu như: lợi khuẩn latic (Probiotic), Axit béo Omega 3, Omega 6, chất xơ, đường tự nhiên Lactose… giúp trẻ phát triển toàn diện cả về mặt thể chất lẫn trí tuệ.', 1, 1, 0, 570000, 'anh35.png', 0),
(36, 'Sữa Enfamil Premium Infant Formula Mỹ 629g (0 - 12 tháng)', 4, '30 dưỡng chất hỗ trợ tăng trưởng khỏe mạnh\r\n2 chủng lợi khuẩn tăng cường miễn dịch\r\nBổ sung DHA tốt cho trí não', 'Sữa Enfamil Premium Infant Formula Mỹ 629g là công thức dinh dưỡng nội địa Mỹ, cung cấp đến 30 dưỡng chất hỗ trợ cho quá trình tăng trưởng và phát triển của trẻ trong giai đoạn từ 0 - 12 tháng. Sản phẩm bổ sung DHA tốt cho hoạt động trí não và thị giác. Bên cạnh đó, lợi khuẩn kép Prebiotics giúp tăng cường miễn dịch đường ruột, nâng cao sức đề kháng cho trẻ ở giai đoạn đầu đời. Với công nghệ Non-GMO, Enfamil Premium sẽ mang đến cho bé nguồn sữa thuần khiết, tạo nền tảng vững chắc đảm bảo cho sự phát triển về lâu dài của bé.', 1, 1, 0, 585000, 'anh36.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Đỗ Ngọc Sơn', 'admin@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
