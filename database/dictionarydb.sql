-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 11:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dictionarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE `db` (
                      `ID` int(11) NOT NULL,
                      `Word` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                      `Pronunciation` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                      `Define` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`ID`, `Word`, `Pronunciation`, `Define`) VALUES
                                                               (1, 'test', '', 'test'),
                                                               (2, '1-byte character code', '', '(Tech) mã ký tự 1 bai'),
                                                               (3, '1-byte character set', '', '(Tech) bộ ký tự 1 bai'),
                                                               (4, '1-byte character string', '', '(Tech) chuỗi ký tự 1 bai'),
                                                               (5, '1 to 1 relationship', '', '(Tech) quan hệ 1 đối 1'),
                                                               (6, '1 to many relationship', '', '(Tech) quan hệ 1 đối nhiều'),
                                                               (7, '2-way device', '', '(Tech) thiết bị 2 chiều/thu phát'),
                                                               (8, '2D configuration', '', '(Tech) cấu hình 2 chiều, cấu hình phẳng'),
                                                               (9, '2D image', '', '(Tech) ảnh 2 chiều, ảnh phẳng'),
                                                               (10, '2D module = two-dimensional module', '', '(Tech) mô đun hai chiều'),
                                                               (11, '2D (two dimension)', '', '(Tech) hai chiều, nhị thứ nguyên, phẳng'),
                                                               (12, '3D (three dimension)', '', '(Tech) ba chiều, tam thứ nguyên, nổi'),
                                                               (13, '3D (three dimension) calculation', '', '(Tech) tính toán 3 chiều'),
                                                               (14, '3D (three dimension) configuration', '', '(Tech) cấu hình 3 chiều, cấu hình nổi'),
                                                               (15, '3D (three dimension) image', '', '(Tech) ảnh 3 chiều, ảnh nổi = stereoscopic image'),
                                                               (16, '4th Generation Language (4GL)', '', '(Tech) Ngôn ngữ Thế hệ Thứ tư'),
                                                               (17, '7-bit ASCII code', '', '(Tech) mã ASCII 7 bít'),
                                                               (18, '7-bit ASCII code set', '', '(Tech) bộ mã ASCII 7 bít'),
                                                               (19, '8-bit character', '', '(Tech) ký tự 8 bít'),
                                                               (20, '8-bit character code', '', '(Tech) mã ký tự 8 bít'),
                                                               (21, '8-bit character set', '', '(Tech) bộ ký tự 8 bít'),
                                                               (22, '8-bit character string', '', '(Tech) chuỗi ký tự 8 bít'),
                                                               (23, '8-bit microcomputer', '', '(Tech) máy vi điện toán 8 bít, máy vi tính 8 bít [TN]'),
                                                               (24, '8-bit microprocessor', '', '(Tech) bộ vi xử lý 8 bít'),
                                                               (25, '8-bit personal computer', '', '(Tech) máy điện toán cá nhân 8 bít'),
                                                               (26, 'a', '/ei, ə/', '(danh từ, thông tục) loại a, hạng nhất, hạng tốt nhất, hạng rất tốt;from a to z : từ đầu đến đuôi, tường tận;(mạo từ) một;a very cold day : một ngày rất lạnh;a dozen : một tá;a few+ một ít;all of a size : tất cả cùng một cỡ'),
                                                               (27, 'A A', '', '(Alcoholics Anonymous) Hội cai rượu;(Automobile Association) Hội ô tô'),
                                                               (28, 'A A A', '', '(Amateur Athletic Association) Hội thể thao không chuyên;(American Automobile Association) Hiệp hội xe hơi Mỹ'),
                                                               (29, 'a b c', '/\'eibi:\'si:/ ', '(danh từ) bảng chữ cái , khái niệm cơ sở, cơ sở'),
                                                               (30, 'a b c - book', '/\'eibi:\'si:buk/', '(danh từ) sách vỡ lòng, sách học vần'),
                                                               (31, 'a-bomb', '/\'ei\'bɔm/', '(danh từ) bom nguyên tử'),
                                                               (32, 'A-D', '', '(analog-to-digital);(Tech) đổi dạng sóng (dạng tương tự) sang dạng số'),
                                                               (33, 'a.d.', '/\'ei\'di:/ ', '(viết tắt) của Ano Dominsau công nguyên;1540 a.d. : năm 1540 sau công nguyên'),
                                                               (34, 'a.d.c', '', '(vt của aide-de-camp) sự quan phụ tá'),
                                                               (35, 'A-D conversion', '', '(Tech) đổi sóng (tương tự) - số'),
                                                               (36, 'A-D converter circuit', '', '(Tech) mạch đổi sóng-số'),
                                                               (37, 'A except B gate', '', '(Tech) cổng A loại trừ B'),
                                                               (38, 'a font', '/ɑ:\'fɜ:ɳ/', '(phó từ) thấu triệt, cặn kẽ, rõ ngọn nghành'),
(39, 'a fortiori', '/\'ei,fɔ:ti\'ɔ:rai/', '(phó từ) huống hồ, huống là'),
(40, 'a-going', '/ə\'gouiɳ/', '(phó từ) đang chạy, đang chuyển động, đang hoạt động, đang tiến hành;to set a-going : cho chuyển động, cho chạy (máy...)'),
                                                               (41, 'A ignore B gate', '', '(Tech) cổng A không biết B'),
                                                               (42, 'A implies B gate', '', '(Tech) cổng A bao hàm B'),
                                                               (43, 'a la carte', '/\'ɑ:lɑ:\'kɑ:t/', '(phó từ) theo món, gọi theo món, đặt theo món;to dine a_la_carte : ăn cơm gọi theo món'),
                                                               (44, 'a la mode', '/,ɑ:lə\'moud/', '(phó từ) hợp thời trang, đúng mốt'),
(45, 'a.m', '', '(vt) (radio) viết tắt của amplitude modulation) biến điệu biên độ;(vt của Master of Arts) cao học văn chương;(vt của tiếng Latinh Antemeridian) sáng, trước ngọ'),
(46, 'a.m.', '/\'ei\'em/', '(phó từ) (xem) ante_meridiem'),
(47, 'a-ok', '', '(tính từ) giống như OK nhấn mạnh'),
(48, 'a-pac-thai', '', '(danh từ) apartheid'),
(49, 'a-plenty', '/ə\'plenti/', '(phó từ) (từ Mỹ,nghĩa Mỹ) nhiều, dồi dào, phong phú'),
(50, 'a-point', '', '(giải tích) điểm'),
(51, 'a posteriori', '/\'eipɔs,teri\'ɔ:rai/', '(phó từ), (tính từ) theo phép quy nạp;method a_posteriori : phương pháp quy nạp hậu nghiệm;probability a_posteriori : (toán học) xác suất hậu nghiệm'),
(52, 'a-power', '/\'ei\'pauə/', '(danh từ) năng lượng nguyên tử, cường quốc nguyên tử'),
(53, 'a priori', '/\'eiprai\'ɔ:rai/', '(danh từ) theo cách suy diễn, theo cách diễn dịch, tiên nghiệm;probability a_priori : (toán học) xác xuất tiên nghiệm'),
(54, 'a-road', '', '(danh từ) đường lớn, không quan trọng bằng xa lộ, nhưng rộng và thẳng hơn đường loại B'),
(55, 'a.s.a.p.', '', '(viết tắt) càng sớm càng tốt (As soon as possible)'),
(56, 'A shares', '', '(Econ) Cổ phiếu A (Cổ phiếu hưởng lãi sau);Xem FINANCIAL CAPITAL.'),
(57, 'a-side', '', '(danh từ) mặt chính của dĩa hát'),
(58, 'A W O L', '/\'eiwɔ:l/', ' (tính từ) (quân sự) nghỉ không được phép, nghỉ không xin phép'),
(59, 'A4-size', '', '(Tech) khổ giấy A4 (21 cm x 29.7 cm)'),
(60, 'aa', '', '(Alcoholics Anonymous) Hội cai rượu;(Automobile Association) Hội ô tô'),
(62, 'aard-wolf', '/\'ɑ:d,wulf/', '(danh từ) (động vật học) chó sói đất (Nam Phi)'),
(63, 'aardvark', '', '(danh từ) (động vật) lợn đất'),
(64, 'aardvarks', '', '(danh từ số nhiều) (động vật) lợn đất'),
(65, 'aardwolf', '', '(danh từ) chó sói đất (Nam Phi)'),
(66, 'aardwolves', '', '(danh từ số nhiều) chó sói đất (Nam Phi)'),
(67, 'aasvogel', '/\'ɑ:sfougəl/', '(danh từ) (động vật học) con kên kên (Nam Phi)'),
(68, 'ab', '', '(vt của able-bodied seaman) thủy thủ hạng nhất;(vt của Bachelor of Arts) Cử nhân văn chương'),
(69, 'aba', '/\'ɑ:bə/', '(danh từ) áo aba (áo ngoài giống hình cái túi người A-Rập)'),
(71, 'abaca', '', '(danh từ) vải dệt bằng tơ chuối abaca ở Philippines'),
(72, 'abaci', '/\'æbəkəs/', '(danh từ,  số nhiều : abaci,  abacuses) bàn tính;to move counters of an abacus; to work an abacus : tính bằng bàn tính, gảy bàn tính;(kiến trúc) đầu cột, đỉnh cột'),
(73, 'abacist', '', '(danh từ) người gảy bàn phím, người kế toán'),
(74, 'aback', '/ə\'bæk/', '(phó từ) lùi lại, trở lại phía sau;to stand aback from : đứng lùi lại để tránh (hàng hải) bị thổi ép vào cột buồm (buồm);to be taken aback : (hàng hải) bị gió thổi ép vào cột buồm;(nghĩa bóng) : sửng sốt, ngạc nhiên;to be taken aback by the news : sửng sốt vì cái tin đó'),
(75, 'abacterial', '', '(tính từ) không do vi khuẩn gây ra'),
(76, 'abaction', '', '(danh từ) (từ pháp) việc gia súc bị bắt trộm'),
(77, 'abactus', '', '(tính từ) bị trụy thai'),
(80, 'abaddon', '/ə\'bædən/', '(danh từ) âm ti, địa ngục, con quỷ'),
(81, 'abaft', '/ə\'bɑ:ft/', '(phó từ) (hàng hải) ở phía sau bánh lái, gần phía bánh lái;(giới từ) (hàng hải) sau, ở đằng sau, ở phía sau;abaft the mast : sau cột buồm'),
(82, 'abalienate', '', '(ngoại động từ) nhường lại tài sản'),
(86, 'abalienation', '', '(danh từ) sự nhường lại tài sản'),
(87, 'abalone', '/,æbə\'louni/', '(danh từ) (từ Mỹ, nghĩa Mỹ) bào ngư'),
(88, 'abalones', '/,æbə\'louni/', '(danh từ số nhiều) (từ Mỹ, nghĩa Mỹ) bào ngư'),
(89, 'abampere', '', '(Tech) abampe, ampe tuyệt đối (đơn vị cường độ tuyệt đối của dòng điện, 1 abampe = 10 ampe)'),
(90, 'abandon', '/ə\'bændən/', '(ngoại động từ) (từ Mỹ,nghĩa Mỹ) từ bỏ, bỏ rơi, ruồng bỏ;to abandon a hope : từ bỏ hy vọng; to abandon one’’s wife and children : ruồng bỏ vợ con;to abandon oneself to : đắm đuối, chìm đắm vào (nỗi thất vọng...); (danh từ) sự phóng túng, sự tự do, sự buông thả;with abandon : phóng túng'),
(91, 'abandon call', '', '(Tech) gọi bỏ'),
(92, 'abandoned', '/ə\'bændənd/', '(tính từ) bị bỏ rơi, bị ruồng bỏ, phóng đãng, truỵ lạc'),
(93, 'abandoner', '/ə\'bændənə/', '(danh từ) (pháp lý) người rút đơn'),
(94, 'abandoners', '/ə\'bændənəs/', '(danh từ số nhiều) (pháp lý) người rút đơn'),
(96, 'abandonment', '/ə\'bændənmənt/', '(danh từ) sự bỏ, sự từ bỏ, sự bỏ rơi, sự ruồng bỏ, tình trạng bị bỏ rơi, tình trạng bị ruồng bỏ, sự phóng túng, sự tự do, sự buông thả'),
(99, 'abapikal', '', '(tính từ) (sinh học) xa đỉnh, xa ngọn, dưới vực'),
(100, 'abarticular', '', '(tính từ) (giải phẫu) học ngoài khớp, trật khớp'),
(102, 'abase', '/ə\'beis/', '(ngoại động từ) làm hạ phẩm giá, làm mất thể diện, làm nhục;to abase one-self : tự hạ mình'),
(104, 'abasement', '/ə\'beismənt/', '(danh từ) sự làm hạ phẩm giá, sự làm mất thể diện, sự làm nhục'),
(107, 'abash', '/ə\'bæʃ/', '(ngoại động từ) làm bối rối, làm lúng túng, làm luống cuống'),
(108, 'abashed', '', '(tính từ) bối rối, xấu hổ'),
(111, 'abashment', '/ə\'bæʃmənt/', '(danh từ) sự bối rối, sự lúng túng, sự luống cuống'),
(112, 'abashments', '/ə\'bæʃmənt/', '(danh từ)  sự bối rối, sự lúng túng, sự luống cuống'),
(114, 'abask', '/ə\'bɑ:sk/', '(phó từ) (thơ ca) dưới ánh nắng, dưới ánh mặt trời, trong ánh lửa ấm'),
(115, 'abatable', '/ə\'beitəbl/', '(tính từ) có thể làm dịu, có thể làm yếu đi, có thể giảm bớt có thể hạ, có thể bớt có thể làm nhụt có thể chấm dứt, có thể thanh trừ;(pháp lý) có thể huỷ bỏ, có thể thủ tiêu'),
(116, 'abate', '/ə\'beit/', '(ngoại động từ) làm dịu đi, làm yếu đi, làm giảm bớt;to abate a pain : làm dịu đau hạ (giá), bớt (giá) làm nhụt (nhụt khí...), làm cùn (lưỡi dao...), làm mất hết (những điều khó chịu, bực bội) (pháp lý) huỷ bỏ, thủ tiêu (kỹ thuật) ;paint abates : cơn đau dịu đi;storm abates : cơn bão ngớt'),
(118, 'abatement', '/ə\'beitmənt/', '(danh từ) sự dịu đi, sự yếu đi, sự nhụt đi, sự giảm bớt, sự đỡ, sự ngớt sự hạ (giá), sự bớt (giá) sự chấm dứt, sự thanh toán; (pháp lý) sự huỷ bỏ, sự thủ tiêu;abatement of a contract : sự huỷ bỏ một hợp đồng'),
(119, 'Abatement cost', '', '(Econ) Chi phí kiểm soát, chi phí chống (ô nhiễm)'),
(121, 'abater', '', '(danh từ) người giảm bớt; (y học) thuốc làm dịu'),
(124, 'abatis', '/\'æbətis/', '(danh từ) , (số nhiều : abatis) (quân sự) đống cây chướng ngại, đống cây cản'),
(125, 'abatised', '/\'æbətist/', '(tính từ) (quân sự) có đống cây chướng ngại, có đống cây cản'),
(127, 'abattoir', '/\'æbətwɑ:/', '(danh từ) lò mổ, lò sát sinh'),
(129, 'abaxial', '', '(tính từ) ở ngoài trục, xa trục'),
(130, 'abaya', '', '(danh từ) áo aba (của người Ả Rập)'),
(131, 'abb', '/æb/', '(danh từ) (nghành dệt) sợi canh, sợi khổ (của tấm vải)'),
(133, 'abbacy', '/\'æbəsi/', '(danh từ) chức vị trưởng tu viện; quyền hạn trưởng tu viện'),
(134, 'abbatial', '/ə\'beiʃəl/', '(tính từ) (thuộc) trưởng tu viện'),
(135, 'abbess', '/\'æbis/', '(danh từ) bà trưởng tu viện'),
(137, 'abbey', '/\'æbi/', '(danh từ) tu viện giới tu sĩ, các nhà tu, các bà xơ nhà thờ (lớn)'),
(139, 'abbo', '', '(danh từ) người thổ dân, dân cư trú đầu tiên tại địa phương'),
(140, 'abbot', '/\'æbət/', '(danh từ) cha trưởng tu viện'),
(142, 'abbr', '', '(vt của abbreviated, abbreviation) viết tắt, chữ viết tắt'),
(143, 'abbreviate', '/ə\'bri:vieit/', '(ngoại động từ) tóm tắt, viết tắt; rút ngắn lại (cuộc đi thăm...);(toán học) ước lược, rút gọn'),
(144, 'abbreviated', '/ə\'bri:vietid/', '(tính từ) tóm tắt, viết tắt, rút ngắn lại ngắn cũn cỡn (quần áo...) '),
(145, 'abbreviated address', '', '(Tech) địa chỉ rút gọn'),
(148, 'abbreviation', '/ə,bri:vi\'eiʃn/', '(danh từ) sự tóm tắt, sự rút ngắn (cuộc đi thăm...), bài tóm tắt, chữ viết tắt;Jan is the abbreviation January : Jan là chữ viết tắt của January;(toán học) sự ước lược, sự rút gọn'),
(150, 'abbreviator', '/ə\'bri:vieitə/', '(danh từ) người tóm tắt'),
(152, 'abc', '', '(danh từ) bảng chữ cái, khái niệm cơ sở;(vt của American Broadcasting Company) Công ty phát thanh truyền hình Mỹ;(vt của Australian Broadcasting Commission) Uy ban phát thanh truyền hình Uc Đại Lợi'),
(153, 'abc-book', '', '(danh từ) sách vỡ lòng, sách học vần'),
(154, 'abcauline', '', '(tính từ) (sinh học) ngoài thân, xa thân'),
(155, 'abdicable', '', 'xem abdicate'),
(156, 'abdicant', '/\'æbdikeitə/', '(danh từ) người từ bỏ, người thoái vị'),
(158, 'abdicate', '/\'æbdikeit/', '(ngoại động từ) từ bỏ (quyền lợi, địa vị...);to abdicate a position : từ bỏ một địa vị;to abdicate all one’’s rights : từ bỏ mọi quyền lợi;(nội động từ) thoái vị, từ ngôi'),
(162, 'abdication', '/,æbdi\'keiʃn/', '(danh từ) sự thoái vị, sự từ ngôi sự từ bỏ (địa vị, chức vụ, quyền lợi...)'),
(164, 'abdicator', '/\'æbdikeitə/;(abdicant) /\'æbdikənt/', '(danh từ) người từ bỏ người thoái vị'),
(166, 'abdomen', '/\'æbdəmen/', '(danh từ) bụng'),
(168, 'abdominal', '/æb\'dɔminl/', '(tính từ) (thuộc) bụng, ở bụng;an abdominal operation : phẫu thuật ở bụng;abdominal cavity : khoang bụng'),
(169, 'abdominally', '', '(phó từ) (thuộc) bụng, ở bụng'),
(170, 'abdominous', '/æb\'dɔminəs/', '(tính từ) phệ bụng'),
(171, 'abducens', '', '(danh từ) dây thần kinh não VI ra ngoài'),
(172, 'abducent', '/æb\'dju:sənt/', '(tính từ) (giải phẫu) rẽ ra, giạng ra'),
(174, 'abduct', '/æd\'dʌkt/', '(ngoại động từ) bắt cóc, cuỗm đi, lừa đem đi (người đàn bà...);(giải phẫu) rẽ ra, giạng ra'),
(177, 'abduction', '/æb\'dʌkʃn/', '(danh từ) sự bắt cóc (trẻ em...), sự bắt đi, sự cuỗm đi, sự lừa đem đi; (giải phẫu) sự giạng ra'),
(179, 'abductor', '/æb\'dʌktə/', '(danh từ) người bắt cóc, người cuỗm đi, người lừa đem đi;(giải phẫu) cơ giạng ((cũng) abductor muscle)'),
(182, 'abeam', '/ə\'bi:m/', 'phó từ (hàng hải),  (hàng không) đâm ngang sườn;abeam of us : ngang sườn chúng tôi, sóng ngang với chúng tôi'),
(183, 'abearance', '', '(danh từ) phẩm hạnh;good abearance : phẩm hạnh tốt'),
(184, 'abecedarian', '/,eibi:si:\'deəriən/', '(tính từ) sắp xếp theo thứ tự abc sơ đẳng dốt nát;(danh từ) (từ Mỹ,nghĩa Mỹ) học sinh vỡ lòng'),
(186, 'abecedaries', '', '(danh từ) sách vỡ lòng, sách vần điều sơ bộ, điều sơ đẳng'),
(187, 'abed', '/ə\'bed/', '(phó từ) ở trên giường;to lie abed : nằm ở trên giường'),
(188, 'abele', '/ə\'bi:l/', '(danh từ) (thực vật học) cây bạch dương'),
(189, 'abelmosk', '/\'eibəlmɔsk/', '(danh từ) (thực vật học) cây vông vàng'),
(190, 'abend (abnormal ending)', '', '(Tech) kết thúc/chấm dứt bất thường'),
(191, 'abenteric', '', '(tính từ) (giải phẫu) học ngoài ruột, xa ruột'),
(192, 'aberrance', '/æ\'berəns/;(aberrancy) /æ\'berənsi/', '(danh từ) sự lầm lạc;(sinh vật học) sự khác thường'),
(195, 'aberrancy', '/æ\'berənsi/', '(danh từ) sự lầm lạc ;(sinh vật học) sự khác thường'),
(196, 'aberrant', '/æ\'berənt/', '(tính từ) lầm lạc;(sinh vật học) khác thường'),
(197, 'aberrantly', '', 'xem aberrant'),
(198, 'aberration', '/æ\'be\'reiʃn/', '(danh từ) sự lầm lạc, phút lầm lạc sự kém trí khôn, sự loạn trí sự khác thường;(vật lý) quang sai;lateral aberration : quang sai ngang;(thiên văn học) tính sai;secular aberration : tính sai trường kỳ;annual aberration : tính sai hằng năm'),
(200, 'abet', '/ə\'bet/', '(ngoại động từ) xúi bẩy, xúi giục, khích tiếp tay (ai làm bậy)'),
(201, 'abetment', '/ə\'betmənt/', '(danh từ) sự xúi bẩy, sự xúi giục, sự khích sự tiếp tay'),
(203, 'abettal', '/ə\'betəl/', '(danh từ) sự xúi bẩy, sự xúi giục, sự khích sự tiếp tay'),
(204, 'abette', '/ə\'betə/', '(danh từ) kẻ xúi giục kẻ tiếp tay'),
(206, 'abetter', '', '(danh từ) kẻ xúi giục kẻ tiếp tay'),
(209, 'abettor', '/ə\'betə/', '(danh từ) kẻ xúi giục kẻ tiếp tay'),
(211, 'abeyance', '/ə\'beiəns/', '(danh từ) sự đọng lại;work in abeyance : công việc còn đọng lại;sự đình chỉ, sự hoãn lại, sự tạm thời không áp dụng (đạo luật...);to be in abeyance; to fall into abeyance : bị đình chỉ, bị hoãn lại, tạm thời không được áp dụng (pháp lý);tình trạng tạm thời không có người nhận; tình trạng tạm thời vô chủ;lands in abeyance : đất vô thừa nhận, đất vô chủ tình trạng trống;tình trạng khuyết (một chức vị)'),
(213, 'abeyant', '/ə\'beiənt/', '(tính từ) tạm thời đình chỉ, tạm nghỉ hoạt động'),
(214, 'abhor', '/əb\'hɔ:/ ', '(ngoại động từ) ghê tởm, ghét cay ghét đắng'),
(216, 'abhorrence', '/əb\'hɔrəns/', '(danh từ) sự ghê tởm;to have an abhorrence of : sự ghét cay ghét đắng;to hold in abhorrence of : ghê tởm, ghét cay ghét đắng điều ghê tởm, cái bị ghét cay ghét đắng'),
(218, 'abhorrent', '/əb\'hɔrənt/', '(tính từ) ghê tởm, đáng ghét;to be abhorrent to someone : ghê tởm đối với ai, bị ai ghê tởm, bị ai ghét cay ghét đắng;(+ from) trái với, mâu thuẫn với, không hợp với;conduct abhorrent from principles : tư cách mâu thuẫn với phép tắc (từ cổ,nghĩa cổ);(+ of) ghê tởm, ghét cay ghét đắng;to be abhorrent of something : ghê tởm cái gì, ghét cay ghét đắng cái gì'),
(219, 'abhorrently', '', 'xem abhorrent'),
(220, 'abhorrer', '', 'xem abhor'),
(224, 'abidance', '/ə\'baidəns/', '(danh từ) sự tôn trọng, sự tuân theo, sự thi hành đúng;abidance by rules : sự tôn trọng luật lệ, sự tuân theo luật lệ;(+ in) sự tồn tại, sự kéo dài'),
(225, 'abide', '/ə\'baid/', '(nội động từ) tồn tại, kéo dài;this mistake will not abide for ever : sai lầm này sẽ không thể kéo dài mãi được;(+ by) tôn trọng, giữ, tuân theo, chịu theo;trung thành với;to abide by one\'s friend : trung thành với bạn;(từ cổ,nghĩa cổ) ở, ngụ tại;to abide with somebody : ở với ai;(ngoại động từ) chờ, chờ đợi;to abide one\'s time : chờ thời cơ chịu đựng, chịu'),
(227, 'abider', '', 'xem abide'),
(229, 'abiding', '/ə\'baidiɳ/', '(tính từ) (văn học) không thay đổi, vĩnh cửu, tồn tại mãi mãi'),
(230, 'abidingly', '', 'xem abiding'),
(231, 'abience', '', '(danh từ) sự tránh kích thích'),
(232, 'abient', '', '(tính từ) tránh kích thích'),
(233, 'abies', '', '(danh từ) (thực vật) cây linh sam'),
(234, 'abietene', '/\'biəti:n/', '(danh từ) (hoá học) Abietin'),
(235, 'abigail', '/\'æbigeil/', '(danh từ) thị tỳ, nữ tỳ'),
(237, 'abilitate', '/ə\'biliteit/', '(động từ) (từ hiếm, nghĩa hiếm) (như) habiliate'),
(239, 'ability', '/ə\'biliti/', '(danh từ) năng lực, khả năng (làm việc gì);(số nhiều) tài năng, tài cán;a man of abilities : một người tài năng;(pháp lý) thẩm quyền;(thương nghiệp) khả năng thanh toán được, vốn sẵn có, nguồn vốn (để đáp ứng khi cần thiết);to be best of one’’s ability : với tư cách khả năng của mình'),
(240, 'Ability and earnings', '', '(Econ) Năng lực và thu nhập;Thước đo về khả năng và trình độ (học vấn) có tương quan chặt chẽ với nhau, làm tăng khả năng là phần lớn lợi tức được ước tính do giáo dục trên thực tế cũng chính là lợi tức do năng lực'),
(241, 'Ability to pay', '', '(Econ) Khả năng chi trả.'),
(242, 'Ability to pay theory', '', '(Econ) Lý thuyết về khả năng chi trả;Một lý thuyết về cách đánh thuế theo đó gánh nặng về thuế nên được phân bổ theo khả năng chi trả; Một hệ thống thuế kiểu luỹ tiến, tỷ lệ hay luỹ thoái, tuỳ thuộc vào thước đo được sử dụng và độ dốc giả định của đồ thị thoả dụng biên của thu nhập'),
(243, 'abiogeneses', '/,eibaiou\'dʤenisis/', '(danh từ) (sinh vật học) sự phát sinh tự nhiên'),
(244, 'abiogenesis', '/,eibaiou\'dʤenisis/', '(danh từ) (sinh vật học) sự phát sinh tự nhiên'),
(245, 'abiogenetic', '/,eibaioudʤi\'netik/', '(tính từ) (sinh vật học) phát sinh tự nhiên'),
(246, 'abiogenetically', '/,eibaioudʤi\'netikəli/', '(phó từ) (sinh vật học) phát sinh tự nhiên'),
(247, 'abiogenist', '/,eibai\'ɔdʤinist/', '(danh từ) người tin thuyết phát sinh tự nhiên'),
(248, 'abiogenous', '/,eibai\'ɔdʤiəns/', '(tính từ) (sinh vật học) phát sinh tự nhiên'),
(249, 'abiogeny', '/,eibai\'ɔdʤini/', '(danh từ) (sinh vật học) sự phát sinh tự nhiên'),
(250, 'abiological', '/,æbaiə\'lɔdʤikəl/', '(tính từ) phi sinh vật học'),
(251, 'abiologically', '', 'xem abiological'),
(252, 'abioses', '', 'xem abiotic'),
(253, 'abioseston', '', '(danh từ) (sinh học) chất vô cơ lơ lửng'),
(254, 'abiosis', '', 'xem abiotic'),
(255, 'abiotic', '/,æbai\'ɔtik/', '(tính từ) vô sinh'),
(256, 'abiotically', '', 'xem abiotic'),
(257, 'abiotrophic', '', '(tính từ) kiệt sức sống, suy sức sống'),
(258, 'abirritant', '', '(danh từ) thuốc giảm kích thích'),
(259, 'abirritate', '', '(ngoại động từ) giảm kích thích'),
(260, 'abirritation', '', '(danh từ) sự giảm kích thích'),
(261, 'abject', '/\'æbdʤekt/', '(tính từ) hèn hạ, thấp hèn, đê tiện, đáng khinh khốn khổ, khốn nạn;in abject poverty : nghèo rớt mồng tơi, nghèo xác nghèo xơ'),
(262, 'abjection', '/æb\'dʤekʃn/', '(danh từ) sự hèn hạ, sự thấp hèn, sự đê tiện'),
(264, 'abjectly', '', '(phó từ) hèn hạ, đê tiện khốn khổ, khốn nạn'),
(265, 'abjectness', '/\'æbdʤektnis/', '(danh từ) sự hèn hạ, sự thấp hèn, sự đê tiện, sự đáng khinh sự khốn khổ, sự khốn nạn'),
(266, 'abjudicate', '', '(ngoại động từ) tuyên bố từ bỏ thề bỏ đạo'),
(267, 'abjuration', '/,æbdʤuə\'reiʃn/', '(danh từ) sự tuyên bố bỏ, sự thề bỏ (tôn giáo) sự thề bỏ đạo, sự bội đạo'),
(269, 'abjure', '/əb\'dʤuə/', '(động từ) tuyên bố bỏ, nguyện bỏ;to abjure one’’s religion : bỏ đạo;to abjure one’’s rights : tuyên bố từ bỏ quyền lợi của mình;rút lui (ý kiến, lời hứa...);to abjure one’’s opinion : rút lui ý kiến'),
(271, 'abjurer', '', 'xem abjure'),
(274, 'ablactation', '/,æblæk\'teiʃn/', '(danh từ) sự cai sữa, sự cạn sữa'),
(275, 'ablastous', '', '(tính từ) (thực vật) không mầm'),
(276, 'ablate', '/æb\'leit/', '(ngoại động từ) (y học) cắt bỏ'),
(280, 'ablation', '/æb\'leʃn/', '(danh từ) (y học) sự cắt bỏ (một bộ phận trong cơ thể);(địa lý,địa chất) sự tải mòn (đá)'),
(282, 'ablative', '/\'æblətiv/', '(tính từ) (ngôn ngữ học) (thuộc) cách công cụ; (danh từ) (ngôn ngữ học) cách công cụ'),
(284, 'ablaut', '/\'æblaut/', '(danh từ) (ngôn ngữ học) Aplau'),
(285, 'ablaze', '/ə\'bleiz/', '(tính từ) rực cháy, bốc cháy;ablaze with anger : bừng bừng nổi giận'),
(286, 'able', '/\'eibl/', '(tính từ) có năng lực, có tài;an able co-op manager : một chủ nhiệm hợp tác xã có năng lực;an able writer : một nhà văn có tài;to be able to : có thể;to be able to do something : có thể làm được việc gì;(pháp lý) có đủ tư cách, có đủ thẩm quyền'),
(287, 'able-bodied', '/\'eibl\'bɔdid/', '(tính từ) khoẻ mạnh, đủ tiêu chuẩn sức khoẻ (làm nghĩa vụ quân sự);able-bodied seaman : ((viết tắt) A.B.) thuỷ thủ hạng nhất'),
(288, 'able seaman', '', '(danh từ) (vt là AB) thủy thủ hạng nhất'),
(289, 'ablegate', '', '(danh từ) đại sứ giáo hoàng'),
(290, 'ablen', '/\'æblin/', '(danh từ) (động vật học) cá aplet, cá vảy bạc (họ cá chép)'),
(291, 'ableness', '', '(danh từ) năng lực, tài năng sự cường tráng'),
(292, 'ablepsia', '', 'danh từ tật mù, chứng mù'),
(295, 'ablet', '/\'æblit/', '(danh từ) (động vật học) cá aplet, cá vảy bạc (họ cá chép)'),
(296, 'ablings', '/\'eibliɳz/', '(phó từ) (Ê-cốt) có lẽ, có thể'),
(297, 'ablins', '/\'eiblinz/', '(phó từ) (Ê-cốt) có lẽ, có thể'),
(298, 'abloom', '/ə\'blu:m/', '(tính từ) đang nở (ra) hoa'),
(299, 'abluent', '/\'æbluənt/', '(tính từ) rửa sạch, tẩy sạch;(danh từ) chất tẩy, thuốc tẩy'),
(300, 'ablush', '/ə\'blʌʃ/', '(tính từ) thẹn đỏ mặt'),
(301, 'ablution', '/ə\'blu:ʃn/', '(danh từ),  (thường) số nhiều (tôn giáo) lễ rửa tội, lễ tắm gội, lễ rửa sạch các đồ thờ (tôn giáo)'),
(302, 'ablutionary', '', 'xem ablution'),
(304, 'ably', '/\'eibli/', '(phó từ) có khả năng, có tài, khéo léo, tài tình'),
(305, 'abm', '', '(vt của anti-ballistic missile) tên lửa chống tên lửa đạn đạo'),
(306, 'abnegate', '/\'æbnigeit/', '(ngoại động từ) nhịn (cái gì), bỏ (đạo), từ bỏ (quyền lợi...); từ chối không nhận (đặc quyền...)'),
(310, 'abnegation', '/,æbni\'geiʃn/', 'danh từ sự bỏ (đạo...); sự từ bỏ (quyền lợi); sự từ chối không nhận (đặc quyền...) sự quên mình, sự hy sinh, sự xả thân ((thường) self abnegation)'),
(311, 'abnegations', '/,æbni\'geiʃn/', '(danh từ) sự bỏ (đạo...); sự từ bỏ (quyền lợi); sự từ chối không nhận (đặc quyền...);sự quên mình, sự hy sinh, sự xả thân ((thường) self abnegation)'),
(312, 'abnegator', '', 'xem abnegate'),
(314, 'abnormal', '/æb\'nɔ:məl/', '(tính từ) không bình thường, khác thường, dị thường;(thống kê) không chuẩn'),
(315, 'abnormal end (ABEND)', '', '(Tech) kết thúc bất thường'),
(316, 'abnormal end of task', '', '(Tech) kết thúc bất thường (một) nhiệm vụ'),
(317, 'abnormal end of transmission', '', '(Tech) kết thúc truyền bất thường'),
(318, 'abnormal function', '', '(Tech) chức năng/hàm số bất thường'),
(319, 'Abnormal profits', '', '(Econ) Lợi nhuận dị thường;Xem SUPER-NORMAL PROFITS'),
(320, 'abnormal propagation', '', '(Tech) truyền lan bất thường'),
(322, 'abnormal refraction', '', '(Tech) khúc xạ bất thường'),
(323, 'abnormal return address', '', '(Tech) địa chỉ hồi báo bất thường'),
(324, 'abnormal status', '', '(Tech) trạng thái bất thường'),
(325, 'abnormal termination', '', '(Tech) cắt dứt bất thường'),
(326, 'abnormalcy', '/æb\'nɔ:məlsi/', '(danh từ) sự không bình thường, sự khác thường, sự dị thường; vật kỳ quái, quái vật'),
(328, 'abnormality', '/æbnɔ:\'mæliti/', '(danh từ) sự không bình thường, sự khác thường, sự dị thường; vật kỳ quái, quái vật'),
(329, 'abnormally', '', '(phó từ) dị thường, khác thường'),
(331, 'abnormity', '/æb\'nɔ:miti/', '(danh từ) sự không bình thường, sự khác thường, sự dị thường; vật kỳ quái, quái vật'),
(332, 'abo', '', '(danh từ) thổ dân (Uc, lóng, sỉ nhục)'),
(333, 'aboard', '/ə\'bɔ:d/', '(phó từ) trên tàu, trên boong tàu, trên thuyền, trên xe lửa, trên máy bay;to go aboard : lên tàu, lên boong dọc theo; gần, kế;close (hard) aboard : nằm kế sát;to keep the land aboard : đi dọc theo bờ;all aboard! : đề nghị mọi người lên tàu!;to fall aboard of a ship : va phải một chiếc tàu khác;(giới từ) lên trên (tàu thuỷ, xe lửa, máy bay...);to go aboard a ship : lên tàu;to travel aboard a special train : đi du lịch trên một chuyến xe lửa đặc biệt'),
(334, 'abode', '/ə\'boud/', '(danh từ) nơi ở;to take up (make) one’’s abode : ở;of no fixed abode : không có chỗ ở nhất định'),
(336, 'abohm', '', '(Tech) abôm (1 abôm = 10 lũy thừa -9 ôm)'),
(337, 'aboil', '/ə\'bɔil/', '(trạng từ) đang sôi'),
(338, 'abolish', '/ə\'bɔliʃ/', '(ngoại động từ) thủ tiêu, bãi bỏ, huỷ bỏ;to abolish the exploitation of man by man : thủ tiêu chế độ người bóc lột người;to abolish acontract : huỷ bỏ một bản giao kèo'),
(339, 'abolishable', '/ə\'bɔliʃəbl/', '(tính từ) có thể thủ tiêu, có thể bãi bỏ, có thể huỷ bỏ'),
(341, 'abolisher', '/ə\'bɔliʃə/', '(danh từ) người thủ tiêu, người bãi bỏ, người huỷ bỏ'),
(345, 'abolishment', '/ə\'bɔliʃmənt/', '(danh từ) sự thủ tiêu, sự bãi bỏ, sự huỷ bỏ'),
(346, 'abolition', '/,æbə\'liʃn/', '(danh từ) sự thủ tiêu, sự bãi bỏ, sự huỷ bỏ;abolition of taxes : sự bãi bỏ thuế;abolition of slavery : sự thủ tiêu chế độ nô lệ'),
(347, 'abolitionary', '', 'xem abolition'),
(348, 'abolitionise', '/,æbə\'liʃənaiz/', '(ngoại động từ) (từ Mỹ,nghĩa Mỹ) làm cho theo chủ nghĩa bãi nô'),
(349, 'abolitionism', '/,æbə\'liʃənizm/', '(danh từ) (sử học) chủ nghĩa bãi nô'),
(350, 'abolitionist', '/,æbə\'liʃənist/', '(danh từ) người theo chủ nghĩa bãi nô'),
(352, 'abolitionize', '/,æbə\'liʃənaiz/', '(ngoại động từ) (từ Mỹ,nghĩa Mỹ) làm cho theo chủ nghĩa bãi nô'),
(354, 'abomasa', '', '(danh từ) dạ múi khế túi (động vật nhai lại)'),
(355, 'abomasum', '', '(danh từ) dạ múi khế túi (động vật nhai lại)'),
(356, 'abominable', '/ə\'bɔminəbl/', '(tính từ) ghê tởm, kinh tởm;an abominable crime : tội ác ghê tởm;(thông tục) tồi, tồi tệ, rất xấu;abominable weather : thời tiết rất xấu;an abominable meal : bữa cơm tồi'),
(357, 'abominable snowman', '', '(danh từ) người tuyết (tương truyền là động vật to cao)'),
(358, 'abominableness', '/ə\'bɔminəblnis/', '(danh từ) sự ghê tởm, sự kinh tởm (thông tục) sự tồi tệ'),
(359, 'abominably', '', '(phó từ) một cách đáng ghê tởm'),
(360, 'abominate', '/ə\'bɔmineit/', '(ngoại động từ) ghê tởm; ghét cay ghét đắng (thông tục) không ưa, ghét mặt'),
(364, 'abomination', '/ə,bɔmi\'neiʃn/', '(danh từ) sự ghê tởm, sự kinh tởm; sự ghét cay ghét đắng;to hold something in abomination : ghê tởm cái gì vật kinh tởm; việc ghê tởm; hành động đáng ghét'),
(366, 'abominator', '', 'xem abominate'),
(368, 'abonent', '', '(Tech) người thuê bao; người dùng đầu cuối'),
(369, 'aboral', '', '(tính từ) (sinh học) xa miệng; đối miệng'),
(370, 'aboriginal', '/,æbə\'ridʤənl/', '(tính từ) (thuộc) thổ dân; (thuộc) thổ sản, (thuộc) đặc sản;the aboriginal inhabitants of a country : thổ dân của một nước;tea is an aboriginal product of Phutho : chè là một đặc sản của Phú Thọ'),
(371, 'aboriginality', '', '(danh từ) đặc điểm nguyên sơ tính thuần phát'),
(372, 'aboriginally', '', 'xem aboriginal'),
(373, 'aborigines', '/,æbə\'ridʤini:z/', '(danh từ số nhiều) thổ dân;Indians are the aborigines of America : người da đỏ là thổ dân của châu Mỹ thổ sản'),
(374, 'abort', '/ə\'bɔ:t/', '(nội động từ) sẩy thai, đẻ non (nghĩa đen);(nghĩa bóng) (sinh vật học) không phát triển;(ngoại động từ) làm sẩy thai, phá thai ;(Tech) hủy bỏ, ngưng nửa chừng, bỏ dở'),
(376, 'aborticide', '/ə\'bɔ:tisaid/', '(danh từ) thuốc giết thai'),
(378, 'abortifacient', '/ə\'bɔ:ti\'feiʃənt/', '(tính từ) phá thai, làm sẩy thai;(danh từ) thuốc phá thai'),
(379, 'abortin', '', '(danh từ) chất sẩy thai; abotin'),
(381, 'abortion', '/ə\'bɔ:ʃn/', '(danh từ) sự sẩy thai, sự phá thai;đứa bé đẻ non, vật đẻ non;vật dị dạng, quái thai sự chết non chết yểu, sự sớm thất bại (của một kế hoạch, ý đồ...);(sinh vật học) tình trạng phát triển không đầy đủ'),
(382, 'abortion mechanism', '', '(Tech) cơ năng bỏ dở'),
(383, 'abortionist', '/ə\'bɔ:ʃənist/', '(danh từ) người phá thai'),
(386, 'abortive', '/ə\'bɔ:tiv/', '(tính từ) đẻ non;an abortive child : đứa bé đẻ non non yếu, chết non chết yểu;sớm thất bại;an abortive plan : một kế hoạch sớm thất bại;(sinh vật học) không phát triển đầy đủ;an abortive organ : một cơ quan không phát triển đầy đủ ;(Tech) bỏ dở'),
(387, 'abortive subexit', '', '(Tech) lối thoát phụ khi bỏ dở'),
(388, 'abortively', '', 'phó từ non yểu'),
(389, 'abortiveness', '/ə\'bɔ:tivnis/', 'danh từ sự đẻ non sự non yếu, sự chết non chết yểu (sinh vật học) sự không phát triển đầy đủ'),
(391, 'aboulia', '/ə\'bauliə/', '(danh từ) (y học) chứng mất ý chí'),
(392, 'abound', '/ə\'baund/', '(nội động từ) (+ in,  with) có rất nhiều, có thừa, nhan nhản, lúc nhúc, đầy dẫy;coal abounds in our country : than đá có rất nhiều ở nước ta;to abound in courage : có thừa can đảm'),
(394, 'abounding', '/ə\'baundiɳ/', '(tính từ) nhiều, phong phú, thừa thãi'),
(396, 'about', '/ə\'baut/', '(phó từ) xung quanh, quanh quẩn, đây đó, rải rác;he is somewhere about : anh ta ở quanh quẩn đâu đó;rumours are about : đây đó có tiếng đồn (về việc gì);đằng sau;about turn!+ đằng sau quay!;khoảng chừng, gần;about forty : khoảng 40;it is about two o\'clock : bây giờ khoảng chừng hai giờ vòng;to go a long way about : đi đường vòng xa;about and about : (từ Mỹ,nghĩa Mỹ) rất giống nhau;(giới từ) về;to know much about Vietnam : biết nhiều về Việt Nam;what shall we write about? : chúng ta sẽ viết về cái gì bây giờ?;quanh quất, quanh quẩn đây đó, rải rác;to walk about the garden : đi quanh quẩn trong vườn xung quanh;the trees about the pound : cây cối xung quanh ao; khoảng chừng, vào khoảng;about nightfall : vào khoảng chập tối;bận đang làm (gì...);he is still about it : hắn hãy còn bận làm việc đó;to go about one’’s work : đi làm ở (ai), trong người (ai), theo với (ai);I have all the documents about me : tôi có mang theo đầy đủ tài liệu;there’’s something nice about him : ở anh ta có một cái gì đó hay hay;to be about to : sắp, sắp sửa;the train is about to start : xe lửa sắp khởi hành;man about town : tay ăn chơi, tay giao thiệp rộng; what are you about? : anh muốn gì?, anh cần gì?;(từ hiếm,nghĩa hiếm) anh đang làm gì đấy?;!what about? : (xem) what'),
(397, 'about...', '', '(Tech) về...'),
(398, 'about-face', '/ə\'bautfeis/', '(danh từ) (quân sự) sự quay đằng sau sự trở mặt, sự thay đổi hẳn thái độ, sự thay đổi hẳn ý kiến;(nội động từ) (quân sự) quay đằng sau'),
(399, 'about-sledge', '/ə\'baut,sledʤ/', '(danh từ) (kỹ thuật) búa tạ'),
(400, 'about-turn', '', '(danh từ) sự thay đổi ý kiến, sự đổi ý');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db`
--
ALTER TABLE `db`
    ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db`
--
ALTER TABLE `db`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;