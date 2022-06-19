-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 12:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbit_job`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `unique_id` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(13) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `unique_id`, `name`, `email`, `phone`, `address`, `username`, `password`, `img`, `link`, `role`) VALUES
(21, '132321289', 'Phan Văn Tín', 'phanvanphat122@dtu.edu.vn', 899933440, '34 Hung Vuong, Quy Nhon, Binh Dinh', 'admin899', 'e10adc3949ba59abbe56e057f20f883e', 's1.jpg', 'https://www.facebook.com/phat8888.77/', 1),
(22, '221035873', 'Phan Văn Tín', 'phanvanphat122@dtu.edu.vn', 899933440, '34 Hung Vuong, Quy Nhon, Binh Dinh', 'hr899', 'e10adc3949ba59abbe56e057f20f883e', 's4.jpg', 'https://www.facebook.com/phat8888.77/', 2),
(24, '513881502', 'Phan Văn Trung', 'trung6798@gmail.com', 1231231243, 'tinh binh dinh', 'suporter899', 'e10adc3949ba59abbe56e057f20f883e', '12.jpg', '', 4),
(25, '350448950', 'Phan Văn Lễ', 'le.phan@efe.com.vn', 9876543, 'tinh binh duong', 'poster899', 'e10adc3949ba59abbe56e057f20f883e', 's7.jpg', '', 5),
(26, '7354767', 'Phan Văn Tru', 'adminsss@phpzag.coms', 2147483647, 'tinh binh dinhs', 'ungvien', 'e10adc3949ba59abbe56e057f20f883e', 's3.jpg', 'https://www.facebook.com/phat8888.77/', 2),
(27, '809957090', 'Nguyễn Thành Tiến', 'vanphatttsss899s@gmail.com', 899933440, 'tinh binh dinh', 'phat899', 'e10adc3949ba59abbe56e057f20f883e', 's3.jpg', '', 4),
(32, '1305212899', 'Phan Văn Phát', 'vanphat8dsf99@gmail.com', 899933440, 'tinh binh dinh', 'hr888999', 'e10adc3949ba59abbe56e057f20f883e', 'c3.jpg', '', 2),
(33, '1456274354', 'Phan Văn tài', 'superadssmin@gmail.com', 99999999, 'quy nhon, binh dinh', 'user777', '0b7f113506b76118fd09af116b9de182', '1.jpg', '', 2),
(35, '651715677', 'Phan Thanh Danh', 'vanssphat899@gmail.com', 899933440, '17 My An, Da Nang', 'hr123', 'e10adc3949ba59abbe56e057f20f883e', '1.jpg', '', 2),
(38, '705533962', 'shank', 'vanhat899@gmail.com', 43432234, '94 Hung Vuong, Vinh Trung, Da Nang', 'gsdfsd', '220466675e31b9d20c051d5e57974150', '1.jpg', '', 3),
(39, '351782433', 'The Characters', 'phssat.phan@efe.com.vn', 76543654, '94 Hung Vuong, Vinh Trung, Da Nang', 'task7', 'e10adc3949ba59abbe56e057f20f883e', 's5.jpg', '', 3),
(40, '1560113735', 'Phan Văn Tài', 'vantai899@gmail.com', 89999999, '17 My An, Da Nang', 'vantai111', 'e10adc3949ba59abbe56e057f20f883e', '4.jpg', '', 2),
(41, '231675241', 'Lý Mậu Trinh', 'lymautrinh123@gmail.com', 2147483647, 'Binh Duong, Viet Nam', 'human', 'e10adc3949ba59abbe56e057f20f883e', '8.jpg', '', 2),
(42, '485391985', 'Phan Văn Phát', 'phan34234@gmail.com', 899933440, '17 My An, Da Nang', 'phat89999', 'e10adc3949ba59abbe56e057f20f883e', '10.jpg', 'https://www.facebook.com/phat8888.77/', 3),
(43, '1637025282', 'Phan Huy Hoàng', 'tien899@gmail.com', 899989898, '17 My An, ha noi', 'user899', 'e10adc3949ba59abbe56e057f20f883e', 'c4.jpg', 'https://www.facebook.com/phat8888.77/', 3),
(44, '1587958482', 'Phan Văn Tín', 'tin899@gmail.com', 899933400, '17 My An, Da Nang', 'user999', 'e10adc3949ba59abbe56e057f20f883e', 's1.jpg', '', 4),
(45, '772621119', 'Phan Văn Lê', '07999van@gmail.com', 899933440, '209 My An, An Duong Vuong, Da Nang', 'phanvanphat1', 'e10adc3949ba59abbe56e057f20f883e', 's1.jpg', '', 3),
(46, '1171993220', 'Nguyễn Thị Loan', 'loan788@gmail.com', 899923230, '80 Hung Vuong, Da Nang', 'ungvien1', 'e10adc3949ba59abbe56e057f20f883e', '9.jpg', '', 3),
(47, '760970430', 'Trần Thị Thanh Thanh', 'thanhthanh123@gmail.com', 1234567, '70 An Duong Vuong, Da Nang', 'ungvien2', 'e10adc3949ba59abbe56e057f20f883e', '11.jpg', '', 3),
(48, '698915954', 'Nguyễn Thành Tuấn', 'thanhtuan123@gmail.com', 2147483647, '67 Cau Giay, Ha Noi', 'ungvien3', 'e10adc3949ba59abbe56e057f20f883e', '7.jpg', '', 3),
(49, '591598671', 'Nguyễn Tiến Lộc', 'loc123@gmail.com', 899944550, '70 An Duong Vuong, Da Nang', 'ungvien4', 'e10adc3949ba59abbe56e057f20f883e', 's4.jpg', '', 3),
(50, '689038805', 'Lê Thành Tuyên', 'tuye12334@gmail.com', 74958303, '34 Hung Vuong, Ha Noi', 'ungvien5', 'e10adc3949ba59abbe56e057f20f883e', '4.jpg', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cv_file`
--

CREATE TABLE `cv_file` (
  `file_id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `hr_id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `uploadfile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `strong_point` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `name_candidate` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cv_file`
--

INSERT INTO `cv_file` (`file_id`, `account_id`, `hr_id`, `job_id`, `uploadfile`, `email`, `strong_point`, `name_candidate`) VALUES
(15, 35, 26, 54, 'CV_INTERN_PHP_PHAN VAN PHATdzquajj.pdf', 'vanssphat89966@gmail.com', 'Hiền lành tốt bụng', 'Phan Thanh Sáng'),
(16, 35, 26, 54, 'ĐỀ-CƯƠNG-ÔN-TẬP-4-kỹ-năng-Cập-nhật-2019.pdf', 'vanssphat899@gmail.com', 'giỏi, siêng năng chịu khó', 'Phan Thanh Danhyyyyy'),
(17, 22, 22, 48, 'CV_INTERN_PHP_PHAN VAN PHATdzquajj.pdf', 'phanvantruongt122@dtu.edu.vn', 'Là một người mạnh mẽ, ngang tàn và đầy quyết đoán', 'Phan Văn Trường'),
(21, 42, 22, 46, 'CV_INTERN_PHP_PHAN VAN PHATdzquajj.pdf', 'phanhahaha@gmail.com', 'Hiền lành siêng năng tốt bụng, tốt nghiệp loại giỏi đại học Duy Tân', 'Phan Văn Phát'),
(22, 42, 22, 47, 'CV_INTERN_PHP_PHAN VAN PHATdzquajj.pdf', 'nghia123@gmail.com', 'Hoạt bát, thích tìm hiểu công nghệ mới.', 'Phan Văn Nghĩa'),
(23, 42, 26, 54, 'CV_INTERN_PHP_PHAN VAN PHATdzquajj (8).pdf', 'phan34234@gmail.com', 'nhút nhác ít nói', 'Phan Văn Phát');

-- --------------------------------------------------------

--
-- Table structure for table `job_information`
--

CREATE TABLE `job_information` (
  `job_id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_date` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(255) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_information`
--

INSERT INTO `job_information` (`job_id`, `account_id`, `job_title`, `job_date`, `address`, `salary`, `description`, `logo`, `job_type`, `level`, `longitude`, `latitude`) VALUES
(46, 22, 'Thực tập sinh PHP', '2022-05-05 11:55:07', '209 My An, An Duong Vuong, Da Nang', 333, 'ytytyty', 'e5.jpg', 'Part time', 'Intern', 0, 0),
(47, 22, 'Thực tập sinh NodeJS', '2022-05-05 11:54:36', '209 My An, An Duong Vuong, Da Nang', 888, 'gggg', 'e3.jpg', 'Full time', 'Intern', 0, 0),
(48, 22, 'PHP/ Laravel 7', '2022-05-10 15:14:20', '94 Hung Vuong, Binh Dinh', 2000, '7 năm kinh nghiệm k', '2.jpg', 'Full time', 'Senior', 0, 0),
(49, 41, 'Machine learning', '2022-05-04 12:23:26', '209 My An, Son Tra, Da Nang', 999, '8 năm kinh nghiệm', '3.jpg', 'Full time', 'Manager', 0, 0),
(50, 41, 'Junior Node JS', '2022-05-04 12:24:56', '45 Cau Giay, Ha Noi', 888, 'úaddf', 'e1.jpg', 'Full time', 'Intern', 0, 0),
(51, 41, 'Thực tập sinh PHP', '2022-05-04 12:37:30', '94 Hung Vuong, Vinh Trung, Ha Noi', 777, '5 năm kinh nghiệm', 'e4.jpg', 'Full time', 'Senior', 0, 0),
(52, 35, 'Devops Junior', '2022-05-04 12:46:49', '94 Hung Vuong, Vinh Trung, Da Nang', 999, '4 năm kinh nghiệm', '11.jpg', 'Full time', 'Manager', 0, 0),
(53, 35, 'Leader Manager', '2022-05-04 12:47:55', '209 My An, An Duong Vuong, Da Nang', 888, '8 năm kinh nghiệm', '11.jpg', 'Full time', 'Lead', 0, 0),
(54, 26, 'Design UX/UI', '2022-05-17 11:57:22', '17 My An, Da Nang', 800, '5 năm kinh nghiệm', '11.jpg', 'Part time', 'Junior', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `post_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `account_id`, `title`, `body`, `visible`, `updated_at`, `created_at`, `post_img`) VALUES
(1, 25, 'Những câu hỏi thường gặp khi phỏng vấn php', 'Hằng và biến trong PHP là khái niệm khác nhau:k\r\n\r\nĐầu tiên khác nhau là cách khai báo:\r\nBiến thì chỉ cần dùng ký tự $ để gắn hoặc lấy giá trị.\r\nHằng dùng hàm define() gắn giá trị và dùng constant() để lấy giá trị.\r\nĐiểm khác biệt lớn nhất là hằng là không thể thay đổi trong suốt quá trình chạy chương trình, biến thì có.\r\nNêu 1 hằng được định nghĩa 2 lần thì chương trình vẫn chạy được bình thường tuy nhiên hằng chỉ có giá trị của lần định nghĩa đầu tiên.', 0, '2022-05-07 10:06:57', '2022-05-07 10:06:57', '12.jpg'),
(3, 25, 'Cobol Là Gì? Tìm Hiểu Về Ngôn Ngữ Lập Trình Cobol', 'Cobol (Common Business-Oriented Language) là một ngôn ngữ lập trình máy tính thế hệ thứ ba, chủ yếu tập trung vào giải quyết một vấn đề kinh doanh. Ngôn ngữ này thường được sử dụng trong hệ thống kinh doanh, tài chính và hành chính của các công ty và cả chính phủ. \r\n\r\nCobol được phát triển bởi Hội nghị Ngôn ngữ Hệ thống Dữ liệu (Conference of Data System Languages – CODASYL). Ban đầu, Cobol là lập trình hướng thủ tục (Procedural), nhưng kể từ năm 2002, nó trở thành lập trình hướng đối tượng (Object-oriented).\r\nĐặc điểm ngôn ngữ lập trình Cobol\r\nNhững đặc điểm nổi bật của Cobol có thể kể đến như:\r\n\r\nTính đơn giản và tiêu chuẩn hóa: Cobol là một ngôn ngữ chuẩn, dễ học. Nó có thể được biên dịch và thực thi trên nhiều loại máy tính. Bên cạnh đó, Cobol còn hỗ trợ lượng lớn từ vựng cấu trúc và có một phong cách mã hóa logic.\r\nKhả năng định hướng kinh doanh: Khả năng xử lý tệp nâng cao của Cobol cho phép nó xử lý lượng dữ liệu khổng lồ. Cobol xử lý hơn 70% giao dịch kinh doanh trên thế giới. Từ những báo cáo đơn giản đến các giao dịch phức tạp, việc sử dụng Cobol đều phù hợp và mang lại hiệu quả.\r\nTính phổ quát: Cobol đã thích nghi với sự thay đổi và hoạt động kinh doanh trên nhiều nền tảng và thiết bị. Ngôn ngữ này cung cấp các công cụ gỡ lỗi và kiểm tra cho hầu hết các nền tảng máy tính.\r\nCấu trúc và khả năng mở rộng: Các cấu trúc điều khiển logic có sẵn trong Cobol giúp bạn dễ dàng đọc, sửa đổi và gỡ lỗi. Cobol cũng có khả năng mở rộng, đáng tin cậy và khả năng di động trên các nền tảng.\r\nMột chương trình Cobol được tổ chức phân cấp theo thứ bậc. Không nhất thiết phải bao gồm tất cả các thành phần trong một chương trình. Mỗi thành phần sẽ bao gồm một hệ hay nhiều thành phần con khác nhau cùng hoạt động như:\r\n\r\nDivision: là phân vùng chính có khối mã lệnh bao gồm một hay nhiều vùng. Trong đó, vị trí bắt đầu là vị trí sau tên gọi phân vùng và vị trí kết thúc là điểm bắt đầu một phân vùng tiếp theo hoặc kết thúc chương trình.\r\nSection: một vùng cũng là một khối mã lệnh (nhưng nhỏ hơn phân vùng) thường bao gồm một hoặc nhiều đoạn khác nhau.\r\nParagraph: là một đoạn lệnh của chương trình chính bao gồm một hoặc nhiều câu lệnh.\r\nSentence, Statement: câu lệnh bao gồm một hoặc nhiều mệnh đề khác nhau và kết thúc bằng dấu chấm. Trong đó, một mệnh đề bao gồm một động từ / lệnh Cobol và một hoặc nhiều operand.\r\nDòng 000100 và 000200: phân vùng Identification Division dùng để nhận diện những thông tin cơ bản về chương trình, ở đây nó chỉ bao gồm PROGRAM-ID, HELLO.\r\nDòng 000300: vùng Environment Division dùng để nhận diện môi trường khi chương trình được thực thi. Cobol có thể chạy được trên nhiều nền tảng, nhiều loại máy khác nhau, và vùng này thường dùng để điều khiển và kiểm soát sự khác nhau giữa những loại máy đó. Trong ví dụ này, chương trình không chỉ ra yêu cầu của một loại máy cụ thể, do đó vùng Environment Division được bỏ trống.\r\nDòng 000400 là vùng dữ liệu Data Division bao gồm những dữ liệu của chương trình. Chương trình này không có dữ liệu nêu vùng Data Division được bỏ trống.\r\nDòng 000500 đến dòng 001100 là các dòng trong vùng Procedure Division. Vùng Procedure Division bao gồm hai đoạn (paragraph) từ dòng 000700 (PROGRAM-BEGIN) và từ dòng 001000 (PROGRAM-DONE). Thuật ngữ paragraph trong Cobol gần như là một hàm hay chương trình con trong một số ngôn ngữ lập trình khác. Tất các những công việc thực sự của chương trình là thực hiện câu lệnh ở dòng 000800.\r\nMỗi chương trình Cobol có 80 ký tự mỗi dòng\r\nVùng đánh số dòng (line numbers area) : gồm 6 ký tự (cột) đầu tiên của mỗi dòng trong chương trình được sử dụng để đánh số thứ tự các dòng code của chương trình.\r\n Vùng chỉ thị (indicator area) : nằm ở ký tự thứ 7, mô tả phần tiếp theo bằng dấu ‘- hoặc một nhận xét bằng dấu ‘* hoặc dấu ‘/.\r\nVùng A (Area A) : 4 ký tự tiếp theo (8-11) chứa các phân vùng (Division) và các đoạn (Sections). Thông thường vị trí bắt đầu tốt cho phân vùng này là bắt đầu từ cột thứ 8 thay vì các vị trí khác trong vùng A.\r\nVùng B (Area B): gồm các ký tự có vị trí từ 12 đến 72. Các câu lệnh phải bắt đầu và kết thúc trong vùng B này.\r\nVùng không chỉ định: bao gồm các ký tự từ vị trí 73. Những ký tự này sẽ không được xét trong chương trình.\r\nTrên đây là những kiến thức tổng quan xoay quanh khái niệm Cobol là gì. Cobol không phải là một ngôn ngữ lập trình hợp thời như Python nhưng nó là một ngôn ngữ quan trọng. Hi vọng những thông tin trên sẽ giúp ích cho bạn trong việc đưa ra quyết định có nên học Cobol.', 1, '2022-05-07 22:54:39', '2022-05-07 22:54:39', '13.jpg'),
(4, 25, 'Lạm Bàn Về Mindset', 'Mindset là gì thì chắc ai cũng nghe tới, nhưng có thực sự hiểu rõ về nó không thì cũng cần phải đào sâu một chút. Trong bài viết này mình sẽ đi vào các tình huống thường gặp trong công việc để các bạn có cái nhìn gần hơn về tác động tốt-xấu của nó.\r\nHãy cùng xem ví dụ về mindset tệ. Có thể mọi người sẽ cười nhưng trong thực tế thì không hiếm đâu, thậm chí nhiều là đằng khác. Ai cũng nói về đam mê, nhưng ít khi nào thành công tách rời với trách nhiệm. Một người có mindset sai, thiếu tinh thần trách nhiệm sẽ để lại hậu quả cực kỳ nghiêm trọng không chỉ cho bản thân mà còn “đào hố” đồng đội.\r\n\r\nRiêng trường hợp ngồi chơi 4 ngày làm 1 ngày thì đôi khi lại do tính chủ quan, tự tin thái quá. Đúng ra nếu tự tin làm trong 1 ngày thì nên nói với PM/Team Lead là “task này dễ quá, cho em thêm vài cái nữa làm cho vui”. Sợ bị bốc lột? kệ chứ, còn trẻ ai muốn bốc gì bốc. Cứ cắm đầu làm chả lo thiệt thân đâu. Với leader giỏi thì họ nhìn là biết ngay ai chăm chỉ, tất nhiên là được việc nữa chứ chỉ chăm thôi thì chưa đủ. Còn gặp leader tệ quá, họ không thấy bản thân ưu tú thì bảo họ nhường chỗ cho mình lên thay muahaaaa … giỡn chứ đôi lúc người ta nhiều cái để lo nên không để ý, mình nhắc khéo, không được mới tìm phương án khác như … nhảy việc.\r\nĐây mới gọi là tốt. Thực ra trong ví dụ này mình chỉ đưa ra có vài ý tiêu biểu, đằng sau đó còn nhiều nữa các bạn cứ tự suy nghĩ cách đối ứng sao cho phù hợp. Trong các ý trên thì nên làm lần lượt, đầu tiên là phân tích – tự ước lượng công việc (estimate), kỹ năng này sẽ giúp ích rất nhiều cho công việc BrSE sau này khi phải estimate dự án lớn. Vì có lớn cỡ nào mình cũng bẻ nhỏ ra được, ước lượng từng cái một rồi ghép lại là xong, ai bảo estimate khó thì chắc họ chỉ tỏ ra nguy hiểm thôi.\r\n\r\nNhư trên là tình huống trong công việc, còn to tát hơn như sự nghiệp thì phải làm sao ?\r\nDạo trước có nói chuyện với một cậu DEV, em nó bảo ước mơ sau này sẽ trở thành kỹ sư công nghệ hàng đầu, tạo ra một sản phẩm thật hoành tráng. Nhưng khi mình hỏi lại một số câu cơ bản thì câu trả lời hầu như là không/chưa.\r\n\r\nC1. Em có chắc chắn với hướng đi của mình là đúng không ? CÓ\r\n\r\nC2. Em đã có kế hoạch gì với việc đó chưa ? CHƯA\r\n\r\nC3. Em hiểu thế nào là kỹ sư công nghệ hàng đầu, họ là người như thế nào, mỗi ngày họ làm gì/học gì, bằng cách nào họ trở thành số 1 (từ số 0) chưa ? CHƯA\r\n\r\nC4. Thế theo em một sản phẩm hoành tráng là như thế nào ? và làm sao/mất bao lâu để tạo ra nó ? ẤP ÚNG\r\n\r\nC5. Em có đang làm tốt những thứ cơ bản của lập trình như đặt tên biến, comment mô tả xử lý, optimize source, commit source hàng ngày lên GIT … cũng như những thứ cao cấp hơn xíu xíu như SOLID/Design Patterns chưa ? cái cơ bản thì có nhưng vụ khai báo biến hơi loạn, còn SOLID là cái gì thì em chưa nghe qua.\r\n\r\nC6. Ngoài công việc ra em có code thêm gì để luyện tay hoặc tham gia khoá học nào để nâng cao không ? Việc làm không hết thời gian đâu mà luyện với học thêm anh.\r\n\r\nCách làm đúng như hình bên dưới.\r\nViệc hiểu sở trường – sở đoản của bản thân nói thì dễ, thực tế không nhiều người nhận ra được, thậm chí ngộ nhận. Biết là ai sinh ra cũng có điểm mạnh yếu riêng, các “diễn giả” dạy làm giàu nói hoài. Bởi vậy nên chúng ta cần kiểm chứng bằng cách thử – sai – thử lại – sửa … cho tới lúc cảm nhận được mình muốn gì, mình cần gì và mình mạnh yếu chỗ nào. Khi đã hiểu rõ (có thể mất vài năm thậm chí hàng chục năm) thì già cmn rồi :))) , giỡn chứ lúc ấy mình quyết tâm đi theo nó tới cùng ắt sẽ để lại thành tựu gì đấy.\r\nMindset đơn giản là tư duy. Đối với mỗi tình huống cụ thể, mỗi người sẽ có một cách xử lý khác nhau, có tốt có xấu. Và điểm khác nhau được tạo ra bởi mindset. Ví dụ thì như trên, còn nếu các bạn chưa hiểu rõ lắm thì mình đưa ra thêm tình huống này cho dễ hình dung:\r\n\r\nBạn A được giao cho làm module login trong 3 ngày, bạn cắm đầu làm rất chăm chỉ nhưng tới gần lúc giao hàng thì báo lại là “anh ơi ! em làm không kịp”, chắc phải thêm 3 ngày nữa mới xong, ông PM B mắng mỏ làm bạn bỏ luôn không làm nữa.\r\n\r\nCác bạn nghĩ mình đang nói tới bạn A hả, nhầm rồi :))) đang muốn nhắm tới ông PM B. Việc đầu tiên không phải là mắng mem của mình, mà tìm cách khắc phục, đầu tiên là tìm nguyên nhân chậm, sau đó check lại coi thêm 3 ngày nữa có kịp không hay là 4-5 ngày. Check các dữ kiện cần thiết và báo lại cho các bên liên quan, sau khi xử lý sự cố ổn thoả thì mới quay lại khiển trách và bảo bạn A rút kinh nghiệm, lần sau nhớ báo sớm để anh còn xử lý. Hình như đọc ví dụ xong không hình dung được thêm gì, mà thôi kệ.\r\n\r\nTiếp theo là phân loại, theo sách vở thì có 2 loại như bên dưới.\r\nPhần 1 và 2 mình đã phân tích thông qua các vị dụ, mặc dù hơi xạo xíu xíu nhưng nhìn chung cũng giúp các bạn tới gần hơn bản chất và tác động của mindset lớn như thế nào. Bây giờ vấn đề là làm sao để nâng cao nó.\r\nViệc tiếp xúc với người đẳng cấp – hào hoa phong nhã xinh đẹp ngời ngời (mình chỉ được duy nhất cái đẹp trai, buồn!) thì khó, và có gặp cũng chỉ 1 vài lần nó chả thấm vào đâu. Vậy nên quay về với thực tại với 2 đối tượng : 1 là bản thân, 2 là “những người sống quanh tôi”.', 1, '2022-05-08 09:57:17', '2022-05-08 09:57:17', '14.jpg'),
(5, 25, 'Cách Sử Dụng Middleware Trong NextJS', 'Middleware là những đoạn mã trung gian nằm giữa các request và response, nó nhận các request, thi hành các mệnh lệnh tương ứng trên request đó. sau khi hoàn thành nó sẽ response (phản hồi) hoặc chuyển kết quả ủy thác cho 1 Middleware khác trong hàng đợi.\r\nTrong NextJS, middle mới chỉ được thêm vào từ version 12.0.0 (cho bản beta), tài liệu chính thức của nó được mô tả trên trang chủ của NextJS tại link: https://nextjs.org/docs/middleware\r\n\r\nBài viết này mình sẽ giải thích qua cách sử dụng của nó và tạo thử 1 ví dụ cho các bạn dễ hình dung.\r\n\r\nMiddleware API dựa trên các đối tượng gốc:\r\n\r\nFetchEvent: https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent\r\nResponse: https://developer.mozilla.org/en-US/docs/Web/API/Response\r\nRequest: https://developer.mozilla.org/en-US/docs/Web/API/Request\r\nCác bạn nên quan tâm đến thằng NextResponse, nó cung cấp cho chúng ta 4 phương thức trong middleware:\r\n\r\nredirect(): chuyển hướng request từ route này đến 1 route khác\r\nrewrite(): viết lại response của bạn\r\nnext(): tiếp tục sang 1 middleware khác trong chuỗi (middleware chain)\r\njson(): trả về JSON response hoặc dữ liệu.\r\nĐể giải quyết bài toán, chúng ta sẽ tìm cách điều hướng tất cả các request đến website sang 1 trang thông báo trang đang xây dựng.\r\n\r\nTrước hết chúng ta tạo 1 pages là underConstraction.js. Source code các bạn tự tùy biến theo ý bạn thích nhé (đơn giản là hiển thị thôi mà).\r\nỞ đây các bạn cũng có thể dùng phương thức redirect, khác nhau ở chỗ nó sẽ thay đổi path (đường dẫn) hiển thị trên trình duyệt thôi.\r\n\r\nKhi nào các bạn đã hoàn thiện website, không cần thông báo cho user nữa thì chỉ cần chỉnh sửa lại middleware của mình chút là được.\r\nỞ đây các bạn cũng có thể dùng phương thức redirect, khác nhau ở chỗ nó sẽ thay đổi path (đường dẫn) hiển thị trên trình duyệt thôi.\r\n\r\nKhi nào các bạn đã hoàn thiện website, không cần thông báo cho user nữa thì chỉ cần chỉnh sửa lại middleware của mình chút là được.\r\nỞ đây các bạn cũng có thể dùng phương thức redirect, khác nhau ở chỗ nó sẽ thay đổi path (đường dẫn) hiển thị trên trình duyệt thôi.\r\n\r\nKhi nào các bạn đã hoàn thiện website, không cần thông báo cho user nữa thì chỉ cần chỉnh sửa lại middleware của mình chút là được.\r\nỞ đây các bạn cũng có thể dùng phương thức redirect, khác nhau ở chỗ nó sẽ thay đổi path (đường dẫn) hiển thị trên trình duyệt thôi.\r\n\r\nKhi nào các bạn đã hoàn thiện website, không cần thông báo cho user nữa thì chỉ cần chỉnh sửa lại middleware của mình chút là được.', 1, '2022-05-09 03:55:07', '2022-05-09 03:55:07', '15.jpg'),
(6, 25, 'Cách Trình Duyệt Hiển Thị Website Của Bạn', 'Anh em làm frontend web thường xuyên làm việc với HTML CSS, khi các bạn viết xong code và thực hiện chạy nó trên browsers (trình duyệt), chúng sẽ được xử lý qua 1 chuỗi các bước để xây dựng và hiển thị trang web đó lên. Các bạn có bao giờ lăn tăn xem trình duyệt cụ thể là làm những gì đối với file .html của chúng ta không? Bài viết này sẽ giới thiệu với các bạn các bước xử lý của trình duyệt. Trước tiên thì chúng ta sẽ sử dụng file html sau (có chứa có css và script).\r\nSử dụng file HTML để tạo DOM (Document Object Model)\r\nSử dụng CSS để tạo CSSOM (CSS Object Model)\r\nChạy Script xử lý DOM và CSSOM kết hợp để tạo thành Render Tree\r\nSử dụng Render Tree để Layout (xác định size và position của toàn bộ phần tử trên trang web)\r\nPaint tất cả các pixel (hiển thị lên màn hình)\r\nCụ thể chúng ta sẽ đi vào từng bước nhé:\r\nTrình duyệt đọc file HTML từ trên xuống dưới và sử dụng nó để tạo ra các node từ file HTML. Như file HTML đầu bài, các node sẽ được sinh ra như hình trên, từ đó sẽ tạo thành cây DOM.\r\n\r\nLưu ý: từ việc tạo DOM trên thì chúng ta nên đặt style ở ngay trên đầu và script ở cuối file vì style luôn cần được load sớm, còn script thì ngược lại càng muộn càng tốt (vì phải có HTML với CSS thì script mới chạy).\r\nVì những script có thể cần đến HTML hoặc style để xử lý, do vậy chúng ta nên chạy script khi những phần tử đó đã sẵn sàng. Nếu có nhiều external script thì trình duyệt sẽ tải về và chạy lần lượt theo thứ tự trước sau.\r\n\r\nLưu ý: chúng ta có thể sử dụng attribute “async” để tải script về 1 cách không đồng bộ trên 1 thread khác và tiếp tục parse trang, khi nào việc tải về hoàn tất thì nó sẽ được chạy.\r\nNhìn thì nhiều bước thế thôi nhưng toàn bộ quá trình này thưởng chỉ diễn ra trong vài giây hoặc vài chục giây. Tối ưu tốc độ load trang là 1 việc không dễ cho các frontend developer. Hy vọng bài viết sẽ cho các bạn cái nhìn tổng quan về quá trình 1 website được tạo ra.\r\n\r\nCảm ơn các bạn đã đọc.\r\nTừ đó ta thấy async sẽ hữu ích với những script không tác động gì đến DOM/CSSOM, không ảnh hưởng gì đến UX, ví dụ như analytics hoặc tracking. Còn defer thì sẽ hữu ích với những script tác động đến Render Tree nhưng không liên quan gì đến việc hiển thị phần above the fold (phần trên nếp gấp) của trang web hoặc cần những script khác chạy trước nó.\r\nTừ đó ta thấy async sẽ hữu ích với những script không tác động gì đến DOM/CSSOM, không ảnh hưởng gì đến UX, ví dụ như analytics hoặc tracking. Còn defer thì sẽ hữu ích với những script tác động đến Render Tree nhưng không liên quan gì đến việc hiển thị phần above the fold (phần trên nếp gấp) của trang web hoặc cần những script khác chạy trước nó.', 1, '2022-05-09 03:55:12', '2022-05-09 03:55:12', '12.jpg'),
(7, 25, 'Data Warehouse Là Gì? Tổng Quan Về Kho Dữ Liệu', 'Hàng ngày, cá nhân hoặc doanh nghiệp đều tiếp nhận và xử lý một lượng dữ liệu nhất định. Theo năm tháng, lượng dữ liệu này trở nên khổng lồ và đòi hỏi một nơi lưu trữ đầy đủ nhằm đảm bảo hiệu quả cho những bước phân tích tiếp theo, cũng như giúp nâng cao tốc độ cho các kết quả trả về của hệ thống. Data warehouse đảm nhận nhiệm vụ này. Để hiểu rõ hơn Data Warehouse là gì, bạn hãy theo dõi bài viết bên dưới.\r\nData Warehouse là gì?\r\nData warehouse (DW) hay kho dữ liệu là một hệ thống lưu trữ dữ liệu từ nhiều nguồn, nhiều môi trường khác nhau như: phần mềm bán hàng, kế toán, nhân sự hay hệ thống lõi ngân hàng,… giúp tăng cường hiệu suất của các truy vấn cho báo cáo và phân tích.\r\n\r\nData Warehouse hoạt động như một kho lưu trữ trung tâm. Dữ liệu đi vào kho dữ liệu từ hệ thống giao dịch và các cơ sở dữ liệu liên quan khác. Sau đó, dữ liệu được xử lý, chuyển đổi để người dùng có thể truy cập những dữ liệu này thông qua công cụ Business Intelligence, SQL client hay bảng tính.\r\n\r\nMột Data Warehouse thường bao gồm các yếu tố như:\r\n\r\nMột cơ sở dữ liệu quan hệ để lưu trữ và quản lý dữ liệu.\r\nGiải pháp trích xuất, tải và biến đổi ELT để chuẩn bị dữ liệu cho phân tích.\r\nKhả năng phân tích thống kê, báo cáo và khai thác dữ liệu.\r\nCác công cụ phân tích khách hàng để trực quan hóa và trình bày dữ liệu cho người dùng doanh nghiệp.\r\nCác ứng dụng phân tích khác, phức tạp hơn tạo ra thông tin có thể hành động bằng cách áp dụng khoa học dữ liệu và thuật toán trí tuệ nhân tạo AI hoặc các tính năng đồ thị và không gian cho phép nhiều loại phân tích dữ liệu hơn trên quy mô lớn.\r\nSau khi hiểu được Data Warehouse là gì và cách thức hoạt động của nó, chúng ta tiếp tục tìm hiểu về những đặc tính cũng như lợi ích mà kho dữ liệu này mang lại cho cá nhân cũng như doanh nghiệp.\r\nHướng chủ đề tức thông tin trong Data Warehouse sẽ được tổ chức và sắp xếp theo một chủ đề nhất định. Ví dụ, chủ đề phân tích bệnh án bệnh nhân, bệnh liên quan đến tim, thì bác sỹ cần quan tâm không chỉ một mà còn phải có các chỉ số liên quan đến máu, chỉ số về huyết áp, nhịp tim, điện tâm đồ. Ngoài ra còn cần theo dõi theo thời gian để xem xét sự thay đổi mà có phương pháp điều trị kịp thời. Trong trường hợp này thời gian được gọi là chiều phân tích.\r\n\r\nMục đích của Kho dữ liệu là phục vụ các yêu cầu phân tích, hoặc khai phá cụ thể được gọi là chủ đề.\r\n\r\nMở rộng cho ví dụ trên, các khoa khác nhau tại bệnh viện sẽ thực hiện nhiều xét nghiệm khác nhau. Tương tự với doanh nghiệp, dữ liệu cần phân tích nằm rải rác tại những phòng ban khác nhau và cần tích hợp lại. Từ đó, tổng hợp dữ liệu từ nhiều nguồn vào một kho dữ liệu cho phép chúng ta có thể xem đồng thời nhiều nhóm chỉ tiêu khác nhau. Quá trình tích hợp này sẽ được thực hiện trong quá trình ETL.\r\nVì dữ liệu thay đổi liên tục nên chúng sẽ được gán 1 nhãn thời gian tương ứng tại thời điểm nhập liệu. Việc gắn thời gian này giúp ta dễ dàng so sánh dữ liệu với nhau để biết được các thay đổi đang đi theo chiều hướng tích cực hay tiêu cực.\r\n\r\nVí dụ, so sánh độ đo doanh thu của một mặt hàng của tháng hiện tại với tháng trước, tháng này năm trước thì sẽ có nhiều thông tin hơn để đánh giá doanh thu của mặt hàng đó là tốt hay không, trên cơ sở đó sẽ có các quyết định phù hợp. Ngoài ra, dữ liệu lịch sử còn cho phép dự báo được tương lai khi ứng dụng khai phá dữ liệu.\r\nSự xuất hiện của kho dữ liệu nhằm mục đích đáp ứng lượng dữ liệu ngày càng tăng cần được xử lý. Nhu cầu lưu trữ dữ liệu tăng lên đi kèm với đó là sự phức tạp của hệ thống máy tính. Từ đó, ta thấy được những lợi ích mà kho dữ liệu mang lại cho doanh nghiệp như: \r\n\r\nTích hợp dữ liệu vào một nguồn, ở cùng một định dạng, giải quyết sự phân mảnh và mất cân bằng dữ liệu để đáp ứng nhu cầu thông tin của tất cả người dùng. \r\nTiết kiệm thời gian và hiệu quả trong việc tìm kiếm dữ liệu cần thiết.\r\nThông qua xử lý và phân tích dữ liệu Data Warehouse giúp cho dữ liệu của doanh nghiệp hiệu quả hơn.\r\nGiúp người dùng đưa ra các quyết định hợp lý, nhanh chóng và hiệu quả, đem lại nhiều lợi nhuận hơn,…\r\nGiúp tổ chức, xác định, quản lý và thực hiện các dự án/hoạt động một cách hiệu quả và chính xác.\r\nTăng đáng kể lượng dữ liệu cần được tổng hợp, lưu trữ và xử lý.\r\nTrên đây là bài viết mang cái nhìn tổng quan về Data Warehouse là gì, định nghĩa và những khái niệm liên quan. Để hiểu sâu hơn các bạn có thể tìm hiểu về cách thức hoạt động chuyên sâu cũng như cấu trúc của Data Warehouse, các khái niệm liên quan như OLTP, OLAP,…', 1, '2022-05-09 03:55:16', '2022-05-09 03:55:16', '13.jpg'),
(8, 25, '3 Cách Làm Border Gradient Trong CSS Mà Bạn Nên Biết', 'Với cách này thì chúng ta sẽ sử dụng 2 thuộc tính trong CSS đó chính là border-image-slice và border-image-source, cách này nhanh gọn lẹ nhất, tuy nhiên có một nhược điểm đó chính là không dùng được với border-radius(khi làm bo góc).\r\nTrường hợp này thì chúng ta sẽ dùng một trick đó chính là tạo background gradient cho .boxed bình thường, sau đó thêm padding tương ứng cho độ dày của border, và bên trong tạo thêm 1 thẻ html ví dụ là .boxed-child chẳng hạn và cho nó màu nền trùng với màu nền của body.\r\nNếu buộc phải có bo góc thì mình nghĩ dùng cách này là ổn áp nhất và chúng ta sẽ có code CSS như sau, các bạn chú ý những thuộc tính quan trọng đó chính là background-clip: padding-box và chỗ margin: -10px nó sẽ tương ứng cho border: 10px ví dụ border 20px thì margin sẽ là -20px nhé.', 1, '2022-05-09 03:55:23', '2022-05-09 03:55:23', '14.jpg'),
(9, 25, 'Siêu ứng dụng là gì? Việt Nam có phải là “vùng đất hứa” để phát triển siêu ứng dụng không?', 'Một thuật ngữ công nghệ mới đang nổi lên từ phương Đông – “Siêu ứng dụng”, hay còn gọi là Super App. Hầu hết tất cả những người sinh sống ở châu Á, và sở hữu một chiếc điện thoại thông minh, đều dành phần lớn thời gian sử dụng những ứng dụng này. Vậy chính xác thì siêu ứng dụng là gì và Việt Nam có đang sở hữu một siêu ứng dụng mang tính cách mạng hay không?\r\nHiện nay, chưa có một khái niệm chung cụ thể cho siêu ứng dụng là gì nên ITviec sẽ mượn định nghĩa do Phó Chủ tịch Kỹ thuật Cấp cao của GoJek – Sidu Ponnappa, đã đưa ra: “Siêu ứng dụng (Super App) là một ứng dụng chứa nhiều app con (Mini Apps), và là một hệ điều hành điều phối những app con này.”\r\n\r\nHay như nhà sáng lập BlackBerry – Mike Lazaridis, đã định nghĩa: “Siêu ứng dụng là một hệ sinh thái khép kín gồm nhiều ứng dụng mà mọi người sẽ sử dụng hàng ngày vì chúng mang lại trải nghiệm liền mạch, tích hợp, theo ngữ cảnh và hiệu quả.”\r\n\r\nCòn theo anh Kiên, để trở thành một “siêu ứng dụng”, ứng dụng đó cần phải đáp ứng hai điều kiện:\r\n“Dù là theo hướng tiếp cận nào, nhà phát triển siêu ứng dụng cũng cần phải xác định được phương pháp mình đưa ra có giải được bài toán của khách hàng, người dùng hay không”, anh Kiên khẳng định.\r\n\r\nMột phần mềm muốn trở thành một siêu ứng dụng thì phải đi từ dưới lên, không có con đường tắt. Có nghĩa, phần mềm đó cần phải đi theo chiến lược phát triển như sau:\r\nThoạt nghe, đây là một chiến lược dễ dàng. Nhưng để xây dựng được một ứng dụng, phục vụ một tập người dùng nhỏ trong xã hội thôi đã là một bài toán vô cùng phức tạp với nhà phát triển rồi. Vậy thì để phát triển thành một siêu ứng dụng, các doanh nghiệp phải có chiến lược tính bằng 5 năm, thậm chí 10 năm, không đơn thuần là chỉ vài tháng hoặc vài năm mà có thể thành công được.\r\n\r\nTa có thể thấy ví dụ từ Grab – thành lập vào năm 2012 chỉ với tính năng đặt xe taxi online. Mãi đến năm 2015, Grab mới cho ra mắt GrabExpress (Grab Giao hàng). Đến năm 2016, GrabPay và GrabFood ra đời. Đến năm 2019, Grab mới được “công nhận” là một trong những siêu ứng dụng đang phát triển mạnh mẽ ở Đông Nam Á. Và đến nay, thành công của Grab trong lĩnh vực phần mềm là không thể chối cãi. Để đạt được đến thành tựu này, hành trình phát triển của Grab cũng ngót nghét mất 10 năm.\r\nĐối với siêu ứng dụng theo hướng tiếp cận 1, người được hưởng lợi nhiều nhất đương nhiên là người dùng. Họ sẽ được tiếp cận với nhiều tính năng hơn, giải quyết được nhiều nhu cầu trong cuộc sống hơn (thanh toán, dịch vụ, mua sắm,…) mà không cần phải liên kết với nhiều bên khác nhau.\r\n\r\nĐối với siêu ứng dụng hướng tiếp cận 2, đối tượng nên sử dụng sẽ là những nhà phát triển ứng dụng (developer). Khi nhu cầu phát triển phần mềm của thị trường tăng cao, đặc biệt là các công ty startup muốn phát triển phần mềm nhưng nguồn lực về công nghệ, chi phí, thời gian, tập người dùng lại có hạn thì các nền tảng mở theo hướng tiếp cận 2 lại chính là “cứu cánh” của họ.\r\nVào năm 2015, ứng dụng nhắn tin WeChat của Trung Quốc ra mắt một nền tảng mở cho phép các nhà phát triển có thể phát triển ứng dụng một cách dễ dàng. Từ đó đến nay, đã có hơn 1 triệu ứng dụng mới được phát triển trên nền tảng này. Và WeChat cũng chính là một trong những siêu ứng dụng đầu tiên “mở đường” cho một kỷ nguyên hoàn toàn mới.\r\n\r\nTừ sau thành công của WeChat, AliPay ở Trung Quốc, Hàn Quốc với phần mềm Naver, Singapore sở hữu Grab và Indonesia với GoJek,… cũng trở thành những siêu ứng dụng thành công “đại diện” cho quốc gia sở tại.', 1, '2022-05-09 03:55:52', '2022-05-09 03:55:52', '12.jpg'),
(10, 25, 'Những câu hỏi phỏng vấn php', '&lt;ul class=&quot;tox-checklist&quot;&gt;\r\n&lt;li&gt;sdfsdf&lt;/li&gt;\r\n&lt;li&gt;sdfsdf&lt;/li&gt;\r\n&lt;li&gt;sdfsdf&lt;/li&gt;\r\n&lt;/ul&gt;', 0, '2022-05-17 21:59:21', '2022-05-17 21:59:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` text NOT NULL,
  `outgoing_msg_id` text NOT NULL,
  `text_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `text_message`, `curr_date`, `curr_time`) VALUES
(27, '718689116', '221035873', 'hi bro', 'May 20, 2022 ', '1:08 pm'),
(28, '718689116', '221035873', 'bạn có ở đó không?\n', 'May 20, 2022 ', '1:09 pm'),
(29, '350448950', '221035873', 'hi bro', 'May 20, 2022 ', '1:10 pm'),
(30, '485391985', '221035873', 'hi bạn.', 'May 20, 2022 ', '1:11 pm'),
(31, '221035873', '485391985', 'mình nè bạn ơi', 'May 20, 2022 ', '1:11 pm'),
(32, '485391985', '221035873', 'bạn nhiều chuyện quá vậy', 'May 20, 2022 ', '1:20 pm'),
(33, '221035873', '485391985', 'ủa bạn\n', 'May 20, 2022 ', '1:20 pm'),
(34, '221035873', '485391985', 'mình đã nói gì đâu', 'May 20, 2022 ', '1:20 pm'),
(35, '485391985', '221035873', 'mình xin lũi được chưa', 'May 20, 2022 ', '2:00 pm'),
(36, '221035873', '485391985', 'chưa được\n', 'May 20, 2022 ', '2:00 pm'),
(37, '221035873', '485391985', 'mình chưa thấy sự thành tâm', 'May 20, 2022 ', '2:01 pm'),
(38, '485391985', '221035873', 'mình thành tâm rồi', 'May 20, 2022 ', '2:03 pm'),
(39, '485391985', '221035873', 'bạn bao nhiêu kí mà nhìn mập dữ', 'May 20, 2022 ', '2:40 pm'),
(40, '221035873', '485391985', 'mình 60kg bạn ơi', 'May 21, 2022 ', '3:00 am'),
(41, '513881502', '1637025282', 'Chào anh em hỏi ạ', 'May 20, 2022 ', '5:47 pm'),
(42, '1637025282', '513881502', 'em hỏi đi', 'May 20, 2022 ', '5:58 pm'),
(43, '1563416299', '513881502', 'em cần giúp đỡ gì không?', 'May 20, 2022 ', '6:06 pm'),
(44, '513881502', '1563416299', 'em không cần ạ, anh nhiều chuyện quá vậy', 'May 20, 2022 ', '6:07 pm'),
(45, '809957090', '1637025282', 'Học Machine learning cần chuẩn bị những gì vậy anh?', 'May 20, 2022 ', '6:18 pm'),
(46, '1637025282', '809957090', 'Cần cái đầu lạnh em', 'May 20, 2022 ', '6:18 pm'),
(47, '1637025282', '809957090', 'hello', 'May 20, 2022 ', '7:14 pm'),
(48, '809957090', '1637025282', 'ghgh', 'May 20, 2022 ', '7:14 pm'),
(49, '809957090', '1637025282', 'fgf', 'May 20, 2022 ', '7:14 pm'),
(50, '1637025282', '513881502', 'sao k hỏi', 'May 21, 2022 ', '2:42 pm'),
(51, '1637025282', '513881502', 'kjhkjhk', 'May 21, 2022 ', '2:53 pm'),
(52, '513881502', '1637025282', 'o', 'May 21, 2022 ', '2:53 pm'),
(53, '1637025282', '513881502', 'gkj\njkk\n', 'May 21, 2022 ', '2:53 pm'),
(54, '1637025282', '513881502', 'kjkgjk\njhgjh', 'May 21, 2022 ', '2:53 pm');

-- --------------------------------------------------------

--
-- Table structure for table `wish_job`
--

CREATE TABLE `wish_job` (
  `account_id` int(11) NOT NULL,
  `isScheduleSetted` tinyint(1) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `start_hour` int(11) DEFAULT NULL,
  `start_minute` int(11) DEFAULT NULL,
  `finish_hour` int(11) DEFAULT NULL,
  `finish_minute` int(11) DEFAULT NULL,
  `note` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cv_file`
--
ALTER TABLE `cv_file`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `job_information`
--
ALTER TABLE `job_information`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `account_id` (`account_id`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `job_title` (`job_title`,`address`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `job_title_2` (`job_title`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `address` (`address`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `job_title_3` (`job_title`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `level` (`level`);
ALTER TABLE `job_information` ADD FULLTEXT KEY `level_2` (`level`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `wish_job`
--
ALTER TABLE `wish_job`
  ADD KEY `wish_job_ibfk_1` (`account_id`),
  ADD KEY `wish_job_ibfk_2` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cv_file`
--
ALTER TABLE `cv_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `job_information`
--
ALTER TABLE `job_information`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cv_file`
--
ALTER TABLE `cv_file`
  ADD CONSTRAINT `cv_file_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job_information` (`job_id`),
  ADD CONSTRAINT `cv_file_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `job_information`
--
ALTER TABLE `job_information`
  ADD CONSTRAINT `job_information_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `wish_job`
--
ALTER TABLE `wish_job`
  ADD CONSTRAINT `wish_job_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `wish_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job_information` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
