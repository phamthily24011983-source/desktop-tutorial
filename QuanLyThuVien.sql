

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ban_sao`
--

DROP TABLE IF EXISTS `ban_sao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_sao` (
  `Ma_vach` varchar(20) NOT NULL,
  `Vi_tri` varchar(45) NOT NULL,
  `Trang_Thai` enum('Con','Da_het') NOT NULL,
  `Nhan_vien` varchar(20) DEFAULT NULL,
  `Dau_sach` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Ma_vach`),
  KEY `Nhan_vien_idx` (`Nhan_vien`),
  KEY `Dau_sach_idx` (`Dau_sach`),
  CONSTRAINT `fk_dausach_bansao` FOREIGN KEY (`Dau_sach`) REFERENCES `dau_sach` (`Ma_sach`),
  CONSTRAINT `fk_nhanvien_bansao` FOREIGN KEY (`Nhan_vien`) REFERENCES `nhan_vien` (`Ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_sao`
--

LOCK TABLES `ban_sao` WRITE;
/*!40000 ALTER TABLE `ban_sao` DISABLE KEYS */;
INSERT INTO `ban_sao` VALUES ('BC001-01','A1-01','Con','NV02','B001'),('BC001-02','A1-01','Con','NV02','B001'),('BC001-03','A1-02','Con','NV02','B001'),('BC001-04','A1-02','Da_het','NV02','B001'),('BC001-05','A1-03','Con','NV02','B001'),('BC002-01','A1-04','Con','NV03','B002'),('BC002-02','A1-04','Da_het','NV03','B002'),('BC002-03','A1-05','Con','NV03','B002'),('BC002-04','A1-05','Con','NV03','B002'),('BC002-05','A2-01','Con','NV03','B002'),('BC003-01','B1-01','Con','NV04','B003'),('BC003-02','B1-01','Da_het','NV04','B003'),('BC003-03','B1-02','Da_het','NV04','B003'),('BC003-04','B1-02','Da_het','NV04','B003'),('BC003-05','B1-03','Da_het','NV04','B003'),('BC004-01','B2-01','Con','NV02','B004'),('BC004-02','B2-01','Con','NV02','B004'),('BC004-03','B2-02','Da_het','NV02','B004'),('BC004-04','B2-02','Con','NV02','B004'),('BC004-05','B2-03','Con','NV02','B004'),('BC005-01','A2-02','Con','NV03','B005'),('BC005-02','A2-02','Da_het','NV03','B005'),('BC005-03','A2-03','Con','NV03','B005'),('BC005-04','A2-03','Con','NV03','B005'),('BC005-05','A2-04','Con','NV03','B005'),('BC006-01','A3-01','Con','NV04','B006'),('BC006-02','A3-01','Con','NV04','B006'),('BC006-03','A3-02','Da_het','NV04','B006'),('BC006-04','A3-02','Con','NV04','B006'),('BC006-05','A3-03','Con','NV04','B006'),('BC007-01','A3-04','Con','NV02','B007'),('BC007-02','A3-04','Con','NV02','B007'),('BC007-03','A3-05','Da_het','NV02','B007'),('BC007-04','A4-01','Con','NV02','B007'),('BC007-05','A4-02','Con','NV02','B007'),('BC008-01','B3-01','Con','NV03','B008'),('BC008-02','B3-01','Da_het','NV03','B008'),('BC008-03','B3-02','Con','NV03','B008'),('BC008-04','B3-02','Con','NV03','B008'),('BC008-05','B3-03','Con','NV03','B008'),('BC009-01','C1-01','Con','NV04','B009'),('BC009-02','C1-01','Con','NV04','B009'),('BC009-03','C1-02','Da_het','NV04','B009'),('BC009-04','C1-02','Con','NV04','B009'),('BC009-05','C1-03','Con','NV04','B009'),('BC010-01','C2-01','Con','NV02','B010'),('BC010-02','C2-01','Da_het','NV02','B010'),('BC010-03','C2-02','Con','NV02','B010'),('BC010-04','C2-02','Con','NV02','B010'),('BC010-05','C2-03','Con','NV02','B010'),('BC011-01','C3-01','Con','NV03','B011'),('BC011-02','C3-01','Con','NV03','B011'),('BC011-03','C3-02','Da_het','NV03','B011'),('BC011-04','C3-02','Con','NV03','B011'),('BC011-05','C3-03','Con','NV03','B011'),('BC012-01','A4-03','Con','NV04','B012'),('BC012-02','A4-03','Da_het','NV04','B012'),('BC012-03','A4-04','Con','NV04','B012'),('BC012-04','A4-04','Con','NV04','B012'),('BC012-05','A4-05','Con','NV04','B012'),('BC013-01','B4-01','Con','NV02','B013'),('BC013-02','B4-01','Con','NV02','B013'),('BC013-03','B4-02','Da_het','NV02','B013'),('BC013-04','B4-02','Con','NV02','B013'),('BC013-05','B4-03','Con','NV02','B013'),('BC014-01','B5-01','Con','NV03','B014'),('BC014-02','B5-01','Da_het','NV03','B014'),('BC014-03','B5-02','Con','NV03','B014'),('BC014-04','B5-02','Con','NV03','B014'),('BC014-05','B5-03','Con','NV03','B014'),('BC015-01','B5-04','Con','NV04','B015'),('BC015-02','B5-04','Con','NV04','B015'),('BC015-03','B5-05','Da_het','NV04','B015'),('BC015-04','B6-01','Con','NV04','B015'),('BC015-05','B6-02','Con','NV04','B015'),('BC016-01','D1-01','Con','NV02','B016'),('BC016-02','D1-01','Da_het','NV02','B016'),('BC016-03','D1-02','Con','NV02','B016'),('BC016-04','D1-02','Con','NV02','B016'),('BC016-05','D1-03','Con','NV02','B016'),('BC017-01','D2-01','Con','NV03','B017'),('BC017-02','D2-01','Con','NV03','B017'),('BC017-03','D2-02','Da_het','NV03','B017'),('BC017-04','D2-02','Con','NV03','B017'),('BC017-05','D2-03','Con','NV03','B017'),('BC018-01','E1-01','Con','NV04','B018'),('BC018-02','E1-01','Da_het','NV04','B018'),('BC018-03','E1-02','Con','NV04','B018'),('BC018-04','E1-02','Con','NV04','B018'),('BC018-05','E1-03','Con','NV04','B018'),('BC019-01','C4-01','Con','NV02','B019'),('BC019-02','C4-01','Con','NV02','B019'),('BC019-03','C4-02','Da_het','NV02','B019'),('BC019-04','C4-02','Con','NV02','B019'),('BC019-05','C4-03','Con','NV02','B019'),('BC020-01','C5-01','Con','NV03','B020'),('BC020-02','C5-01','Da_het','NV03','B020'),('BC020-03','C5-02','Con','NV03','B020'),('BC020-04','C5-02','Con','NV03','B020'),('BC020-05','C5-03','Con','NV03','B020');
/*!40000 ALTER TABLE `ban_sao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dau_sach`
--

DROP TABLE IF EXISTS `dau_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dau_sach` (
  `Ma_sach` varchar(20) NOT NULL,
  `Ten_sach` varchar(50) NOT NULL,
  `So_dau_sach_dang_co` int NOT NULL,
  `Tong_so_dau_sach` int NOT NULL,
  `Nam_xuat_ban` year NOT NULL,
  `Nha_xuat_ban` varchar(45) DEFAULT NULL,
  `Tac_gia` varchar(45) NOT NULL,
  `The_loai` varchar(45) NOT NULL,
  `Mo_ta` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Ma_sach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dau_sach`
--

LOCK TABLES `dau_sach` WRITE;
/*!40000 ALTER TABLE `dau_sach` DISABLE KEYS */;
INSERT INTO `dau_sach` VALUES ('B001','Lập trình C căn bản và nâng cao',9,20,2022,'NXB Khoa học và Kỹ thuật','Phạm Văn Ất','CNTT/Lập trình','Hướng dẫn từ cú pháp cơ bản của ngôn ngữ C đến các kỹ thuật lập trình nâng cao như con trỏ, cấu trúc dữ liệu động, quản lý bộ nhớ và thao tác tệp tin.'),('B002','Cấu trúc dữ liệu và giải thuật',11,20,2023,'NXB Đại học Quốc gia','Lê Minh Hoàng\n','CNTT/Lập trình','Cung cấp nền tảng vững chắc về các cấu trúc dữ liệu cơ bản (mảng, danh sách liên kết, ngăn xếp, hàng đợi, cây, đồ thị) và các thuật toán tìm kiếm, sắp xếp, quy hoạch động.'),('B003','Mạng máy tính và Internet',17,20,2021,'NXB Thông tin và Truyền thông','James F.Kurose','Mạng máy tính','Trình bày toàn diện về kiến trúc mạng máy tính theo mô hình 5 tầng, các giao thức tầng ứng dụng, giao thức vận chuyển (TCP/UDP), tầng mạng và tầng liên kết dữ liệu.'),('B004','Cơ sở dữ liệu và MySQL Workbench',5,20,2023,'NXB Thống Kê','Ramez Elmasri','Cơ sở dữ liệu','Giới thiệu mô hình cơ sở dữ liệu quan hệ, đại số quan hệ, ngôn ngữ truy vấn SQL, thiết kế lược đồ qua mô hình ER và thực hành trực quan bằng công cụ MySQL Workbench.'),('B005','Nhập môn trí tuệ nhân tạo',10,20,2024,'NXB Khoa học Kỹ thuật','Stuart Rusell','AI/Khoa học máy tính','Khám phá các khái niệm cốt lõi của AI bao gồm tác nhân thông minh, thuật toán tìm kiếm giải pháp, biểu diễn tri thức, suy luận logic và học máy cơ bản.'),('B006','Lập trình Python từ cơ bản đến nâng cao',13,20,2023,'NXB Lao động Xã hội','Mark Lutz','Lập trình','Tài liệu chuyên sâu về ngôn ngữ Python, bao gồm kiểu dữ liệu, hàm, lập trình hướng đối tượng, xử lý ngoại lệ và ứng dụng trong xây dựng các kịch bản mạng, tự động hóa.'),('B007','Thiết kế hướng đối tượng với Java',17,20,2022,'NXB Thông tin và truyền thông','Herbert Schildt','Lập trình','Hướng dẫn lập trình hướng đối tượng (OOP) bằng ngôn ngữ Java, tập trung vào tính đóng gói, kế thừa, đa hình, xử lý ngoại lệ và các cấu trúc Collections Framework.'),('B008','An toàn và Bảo mật thông tin mạng',15,20,2021,'NXB Bưu Chính','Wiliam Stallings','An toàn thông tin','Cung cấp kiến thức về các nguyên lý mật mã học hiện đại, bảo mật mạng, tường lửa, hệ thống phát hiện xâm nhập và các phương pháp phòng chống tấn công an ninh mạng.'),('B009','Toán rời rạc ứng dụng trong tin học',7,20,2020,'NXB Giáo dục','Kenneth H. Rosen','Toán tin','Trình bày logic mệnh đề, tập hợp, quan hệ, đại số Boole, lý thuyết đồ thị và các nguyên lý đếm tổ hợp phục vụ trực tiếp cho ngành khoa học máy tính.'),('B010','Kiến trúc máy tính và Hợp ngữ',15,20,2022,'NXB Đại học Quốc gia','Andrew S.Tanenbaum','Phần cứng/ Hệ thống','Phân tích cấu trúc phân tầng của máy tính, tổ chức bộ nhớ, tập lệnh vi xử lý và cách lập trình hợp ngữ tương tác trực tiếp với phần cứng hệ thống.'),('B011','Hệ điều hành Linux quản trị hệ thống',8,20,2023,'NXB Khoa học Kỹ thuật','Nêmth Evi','Hệ điều hành','Hướng dẫn toàn diện về quản trị hệ thống Linux, bao gồm quản lý người dùng, phân quyền tệp tin (chmod, chgrp, ACL), cấu hình mạng và dịch vụ máy chủ web/FTP.'),('B012','Kỹ thuật phần mếm hiện đại',12,20,2021,'NXB Thống Kê','Lan Sommerville','Kỹ thuật phần mềm','Giới thiệu các mô hình phát triển phần mềm (Agile, Scrum, thác nước), quy trình phân tích yêu cầu, thiết kế kiến trúc hệ thống và kiểm thử phần mềm chuyên nghiệp.'),('B013','Phân tích và Thiết kế hệ thống thông tin',16,20,2020,'NXB Giáo dục','Ngô Công Phụng','Hệ thống thông tin','Trình bày phương pháp khảo sát, mô hình hóa nghiệp vụ bằng sơ đồ UML, thiết kế luồng dữ liệu và xây dựng cấu trúc hệ thống thông tin cho doanh nghiệp.'),('B014','Lý thuyết thông tin và Mã hóa',19,20,2022,'NXB Bưu Chính','Đỗ Trung Tá','Viến thông/ Thông tin','Khảo sát các đại lượng đo thông tin, định lý Shannon về mã hóa nguồn và kênh truyền, cùng các cấu trúc mã khối tuyến tính, mã vòng và khoảng cách Hamming.'),('B015','Xử lý tín hiệu số',18,20,2021,'NXB Khoa học Kỹ thuật','John G.Proakis','Điện tử viễn thông','Nghiên cứu tín hiệu rời rạc theo thời gian, hệ thống tuyến tính bất biến, biến đổi Fourier nhanh (FFT), thiết kế bộ lọc số FIR và IIR trong viễn thông.'),('B016','Kế toán chính trị Mac-Lenin',7,20,2023,'NXB Chính trị Quốc gia','Bộ GD&ĐT','Chính trị học','Cung cấp hệ thống lý luận về phương thức sản xuất tư bản chủ nghĩa, học thuyết giá trị thặng dư, cạnh tranh và độc quyền trong kinh tế thị trường.'),('B017','Tư tưởng Hồ Chí Minh',3,20,2022,'NXB Chính trị Quốc gia','Viện Hồ Chí Minh','Lịch sử/ Chính trị','Tổng hợp các quan điểm cơ bản và toàn diện của Hồ Chí Minh về độc lập dân tộc, chủ nghĩa xã hội, xây dựng Đảng và nhà nước của nhân dân, vì nhân dân.'),('B018','Tiếng Anh kỹ thuật chuyên ngành CNTT',13,20,2021,'NXB Đại học Quốc gia','Eric Glendinning','Ngoại ngữ','Rèn luyện kỹ năng đọc hiểu tài liệu kỹ thuật, thuật ngữ chuyên ngành công nghệ thông tin, phần cứng, phần mềm, mạng máy tính và phát triển ứng dụng.'),('B019','Quản trị dự án công nghệ thông tin',14,20,2022,'NXB Thống Kê','Kathy Schwalbe','Quản lý dự án','Hướng dẫn các phương pháp quản lý phạm vi, thời gian, chi phí, chất lượng và quản trị rủi ro đối với các dự án phần mềm và công nghệ thông tin.'),('B020','Diện toán đám mây và Ứng dụng',6,20,2024,'NXB Thông tin và Truyền thông','Thomas Elr','Công nghệ mới','Phân tích các mô hình dịch vụ đám mây (IaaS, PaaS, SaaS), kiến trúc ảo hóa, bảo mật đám mây và giải pháp triển khai hạ tầng hiện đại trên môi trường cloud.');
/*!40000 ALTER TABLE `dau_sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_gia`
--

DROP TABLE IF EXISTS `doc_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc_gia` (
  `Ma_doc_gia` varchar(20) NOT NULL,
  `CCCD` varchar(20) NOT NULL,
  `Ho_ten` varchar(45) NOT NULL,
  `Ngay_lap_the` varchar(45) NOT NULL,
  `Han_the` varchar(45) NOT NULL,
  `Ngay_sinh` varchar(45) DEFAULT NULL,
  `So_dien_thoai` varchar(45) NOT NULL,
  `Dia_chi` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Han_muc_sach` varchar(45) NOT NULL,
  `So_luong_sach_dang_muon` varchar(45) NOT NULL,
  PRIMARY KEY (`Ma_doc_gia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_gia`
--

LOCK TABLES `doc_gia` WRITE;
/*!40000 ALTER TABLE `doc_gia` DISABLE KEYS */;
INSERT INTO `doc_gia` VALUES ('DG001','1204000001','Nguyễn Văn Hoàng','15/09/2023','15/09/2027','15/05/2004','981000001','Hà Nội','hoang.nv01@student.edu.vn','5','2'),('DG002','1204000002','Trần Thị Mai','20/10/2023','20/10/2027','20/08/2004','981000002','Hải Phòng','mai.tt02@student.edu.vn','5','1'),('DG003','1204000003','Lê Minh Tuấn','5/11/2023','5/11/2027','10/12/2003','981000003','Đà Nẵng','tuan.lm03@student.edu.vn','5','0'),('DG004','1204000004','Phạm Quỳnh Nga','12/12/2023','12/12/2027','5/3/2005','981000004','TP.HCM','nga.pq04@student.edu.vn','5','3'),('DG005','1204000005','Hoàng Đức Huy','10/1/2024','10/1/2028','22/07/2004','981000005','Cần Thơ','huy.hd05@student.edu.vn','5','1'),('DG006','1204000006','Vũ Thị Thu Hà','18/02/2024','18/02/2028','14/02/2004','981000006','Nam Định','ha.vtt06@student.edu.vn','5','2'),('DG007','1204000007','Bùi Văn Nam','25/03/2024','25/03/2028','19/11/2003','981000007','Thái Bình','nam.bv07@student.edu.vn','5','0'),('DG008','1204000008','Đỗ Minh Châu','14/04/2024','14/04/2028','25/04/2005','981000008','Hải Dương','chau.dm08@student.edu.vn','5','4'),('DG009','1204000009','Ngô Văn Kiên','9/5/2024','9/5/2028','30/01/2004','981000009','Bắc Ninh','kien.nv09@student.edu.vn','5','1'),('DG010','1204000010','Dương Thị Ngọc','22/06/2024','22/06/2028','12/6/2005','981000010','Vĩnh Phúc','ngoc.dt10@student.edu.vn','5','2'),('DG011','1204000011','Lý Hải Sơn','11/7/2024','11/7/2028','3/9/2003','981000011','Hà Nội','son.lh11@student.edu.vn','5','0'),('DG012','1204000012','Đinh Thị Lan','4/8/2024','4/8/2028','18/10/2004','981000012','Ninh Bình','lan.dt12@student.edu.vn','5','3'),('DG013','1204000013','Trịnh Văn Hùng','19/09/2024','19/09/2028','21/12/2004','981000013','Thanh Hóa','hung.tv13@student.edu.vn','5','1'),('DG014','1204000014','Mai Thị Hồng','27/10/2024','27/10/2028','11/5/2005','981000014','Nghệ An','hong.mt14@student.edu.vn','5','2'),('DG015','1204000015','Phùng Quang Huy','5/11/2024','5/11/2028','8/2/2003','981000015','Hà Tĩnh','huy.pq15@student.edu.vn','5','0'),('DG016','1204000016','Cao Thị Thảo','15/12/2024','15/12/2028','27/07/2004','981000016','Quảng Trị','thao.ct16@student.edu.vn','5','1'),('DG017','1204000017','Tạ Văn Long','10/1/2025','10/1/2029','14/09/2004','981000017','Huế','long.tv17@student.edu.vn','5','2'),('DG018','1204000018','Vương Thị Linh','2/2/2025','2/2/2029','2/3/2005','981000018','Đà Nẵng','linh.vt18@student.edu.vn','5','0'),('DG019','1204000019','Lưu Đức Mạnh','14/03/2025','14/03/2029','16/06/2003','981000019','Quảng Nam','manh.ld19@student.edu.vn','5','1'),('DG020','1204000020','Đào Thị Phượng','25/04/2025','25/04/2029','29/08/2004','981000020','Quảng Ngãi','phuong.dt20@student.edu.vn','5','3'),('DG021','1204000021','Tăng Quốc Bảo','8/5/2025','8/5/2029','4/10/2004','981000021','Bình Định','bao.tq21@student.edu.vn','5','0'),('DG022','1204000022','Hồ Thị Kim Oanh','19/06/2025','19/06/2029','13/01/2005','981000022','Phú Yên','oanh.htk22@student.edu.vn','5','2'),('DG023','1204000023','Sầm Văn Sơn','1/7/2025','1/7/2029','22/05/2003','981000023','Khánh Hòa','son.sv23@student.edu.vn','5','1'),('DG024','1204000024','Chu Thị Diễm','12/8/2025','12/8/2029','9/11/2004','981000024','Ninh Thuận','diem.ct24@student.edu.vn','5','4'),('DG025','1204000025','Tống Văn Phong','20/09/2025','20/09/2029','17/04/2005','981000025','Bình Thuận','phong.tv25@student.edu.vn','5','0'),('DG026','1204000026','Phùng Thị Kiều','5/10/2025','5/10/2029','28/12/2003','981000026','Kon Tum','kieu.pt26@student.edu.vn','5','2'),('DG027','1204000027','Mã Văn Đạt','15/11/2025','15/11/2029','6/8/2004','981000027','Gia Lai','dat.mv27@student.edu.vn','5','1'),('DG028','1204000028','Khúc Thị Hằng','2/12/2025','2/12/2029','15/03/2005','981000028','Đắk Lắk','hang.kt28@student.edu.vn','5','3'),('DG029','1204000029','Nghiêm Xuân Hải','20/12/2025','20/12/2029','24/10/2003','981000029','Lâm Đồng','hai.nx29@student.edu.vn','5','0'),('DG030','1204000030','Quách Thị Nguyệt','10/1/2026','10/1/2030','11/2/2004','981000030','Bình Phước','nguyet.qt30@student.edu.vn','5','1'),('DG031','1204000031','Thạch Văn Tài','5/2/2026','5/2/2030','7/7/2004','981000031','Tây Ninh','tai.tv31@student.edu.vn','5','2'),('DG032','1204000032','Đồng Thị Thanh','18/02/2026','18/02/2030','30/09/2005','981000032','Bình Dương','thanh.dt32@student.edu.vn','5','0'),('DG033','1204000033','Cấn Văn Khoa','1/3/2026','1/3/2030','19/01/2003','981000033','Đồng Nai','khoa.cv33@student.edu.vn','5','1'),('DG034','1204000034','Tiền Thị Hoa','15/03/2026','15/03/2030','25/05/2004','981000034','Bà Rịa - Vũng Tàu','hoa.tt34@student.edu.vn','5','3'),('DG035','1204000035','Lương Thế Vinh','28/03/2026','28/03/2030','14/12/2004','981000035','Long An','vinh.lt35@student.edu.vn','5','0'),('DG036','1204000036','Trương Thị Sương','4/4/2026','4/4/2030','3/6/2005','981000036','Tiền Giang','suong.tt36@student.edu.vn','5','2'),('DG037','1204000037','Giả Văn Phúc','12/4/2026','12/4/2030','20/10/2003','981000037','Bến Tre','phuc.gv37@student.edu.vn','5','1'),('DG038','1204000038','Tạ Thị Bích','20/04/2026','20/04/2030','8/4/2004','981000038','Trà Vinh','bich.tt38@student.edu.vn','5','4'),('DG039','1204000039','Bì Văn Thắng','28/04/2026','28/04/2030','17/08/2004','981000039','Vĩnh Long','thang.bv39@student.edu.vn','5','0'),('DG040','1204000040','Phí Thị Dung','5/5/2026','5/5/2030','26/02/2005','981000040','Đồng Tháp','dung.pt40@student.edu.vn','5','2'),('DG041','1204000041','Nông Văn Quyền','12/5/2026','12/5/2030','12/9/2003','981000041','An Giang','quyen.nv41@student.edu.vn','5','1'),('DG042','1204000042','Vi Thị Huệ','20/05/2026','20/05/2030','5/1/2004','981000042','Kiên Giang','hue.vt42@student.edu.vn','5','3'),('DG043','1204000043','Xa Văn Cường','1/6/2026','1/6/2030','29/06/2004','981000043','Hậu Giang','cuong.xv43@student.edu.vn','5','0'),('DG044','1204000044','Lò Thị Mây','10/6/2026','10/6/2030','10/10/2005','981000044','Sóc Trăng','may.lt44@student.edu.vn','5','2'),('DG045','1204000045','Mạc Văn Trọng','18/06/2026','18/06/2030','21/03/2003','981000045','Bạc Liêu','trong.mv45@student.edu.vn','5','1'),('DG046','1204000046','Tòng Thị Xuyến','25/06/2026','25/06/2030','4/9/2004','981000046','Cà Mau','xuyen.tt46@student.edu.vn','5','0'),('DG047','1204000047','Lường Văn Biên','2/7/2026','2/7/2030','15/12/2004','981000047','Tây Ninh','bien.lv47@student.edu.vn','5','2'),('DG048','1204000048','Quế Thị Mơ','10/7/2026','10/7/2030','1/7/2005','981000048','Hà Nội','mo.qt48@student.edu.vn','5','3'),('DG049','1204000049','Khêu Văn Bằng','18/07/2026','18/07/2030','18/02/2003','981000049','Hải Phòng','bang.kv49@student.edu.vn','5','1'),('DG050','1204000050','Phùng Thị Ngần','25/07/2026','25/07/2030','23/05/2004','981000050','Đà Nẵng','ngan.pt50@student.edu.vn','5','2');
/*!40000 ALTER TABLE `doc_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `Ma_nhan_vien` varchar(20) NOT NULL,
  `Ho_ten` varchar(45) NOT NULL,
  `Chuc_vu` varchar(45) NOT NULL,
  `So_dien_thoai` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Ma_nhan_vien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES ('NV01','Nguyễn Văn An','Quản lí','0912345678','an.nv@library.edu.vn'),('NV02','Trần Thị Bình','Hỗ trợ\r độc giả','0923456789','binh.tt@library.edu.vn'),('NV03','Lê Hoàng Cường','Hỗ trợ độc giả','0934567890','cuong.lh@library.edu.vn'),('NV04','Phạm Thị Dung','Hỗ trợ độc giả','0945678901','dung.pt@library.edu.vn');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_muon`
--

DROP TABLE IF EXISTS `phieu_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_muon` (
  `Ma_phieu` varchar(20) NOT NULL,
  `Ngay_muon` date NOT NULL,
  `Ngay_tra` date DEFAULT NULL,
  `Trang_thai` enum('Da_tra','Dang_muon','Qua_han') NOT NULL,
  `Doc_gia` varchar(20) NOT NULL,
  `Nhan_vien` varchar(20) NOT NULL,
  PRIMARY KEY (`Ma_phieu`),
  KEY `fk_phieumuon_docgia_idx` (`Doc_gia`),
  KEY `fk_phieumuon_nhanvien_idx` (`Nhan_vien`),
  CONSTRAINT `fk_phieumuon_docgia` FOREIGN KEY (`Doc_gia`) REFERENCES `doc_gia` (`Ma_doc_gia`),
  CONSTRAINT `fk_phieumuon_nhanvien` FOREIGN KEY (`Nhan_vien`) REFERENCES `nhan_vien` (`Ma_nhan_vien`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_muon`
--

LOCK TABLES `phieu_muon` WRITE;
/*!40000 ALTER TABLE `phieu_muon` DISABLE KEYS */;
INSERT INTO `phieu_muon` VALUES ('PM001','2026-08-10','2026-08-25','Da_tra','DG001','NV02'),('PM002','2026-09-01','2026-09-16','Dang_muon','DG001','NV03'),('PM003','2026-08-12','2026-08-27','Qua_han','DG002','NV04'),('PM004','2026-08-15','2026-08-30','Da_tra','DG003','NV02'),('PM005','2026-09-05','2026-09-20','Dang_muon','DG003','NV03'),('PM006','2026-08-01','2026-08-16','Qua_han','DG004','NV04'),('PM007','2026-08-10','2026-08-25','Da_tra','DG005','NV02'),('PM008','2026-09-02','2026-09-17','Dang_muon','DG005','NV03'),('PM009','2026-07-20','2026-08-04','Qua_han','DG008','NV04'),('PM010','2026-08-18','2026-09-02','Da_tra','DG009','NV02'),('PM011','2026-09-06','2026-09-21','Dang_muon','DG009','NV03'),('PM012','2026-08-14','2026-08-29','Da_tra','DG010','NV04'),('PM013','2026-09-04','2026-09-19','Dang_muon','DG010','NV02'),('PM014','2026-08-05','2026-08-20','Qua_han','DG012','NV03'),('PM015','2026-08-22','2026-09-06','Da_tra','DG013','NV04'),('PM016','2026-09-07','2026-09-22','Dang_muon','DG013','NV02'),('PM017','2026-08-11','2026-08-26','Da_tra','DG014','NV03'),('PM018','2026-09-03','2026-09-18','Dang_muon','DG014','NV04'),('PM019','2026-07-10','2026-07-25','Qua_han','DG024','NV02'),('PM020','2026-08-19','2026-09-03','Da_tra','DG031','NV03'),('PM021','2026-09-08','2026-09-23','Dang_muon','DG031','NV04'),('PM022','2026-07-15','2026-07-30','Qua_han','DG038','NV02'),('PM023','2026-08-25','2026-09-09','Da_tra','DG047','NV03'),('PM024','2026-09-04','2026-09-19','Dang_muon','DG047','NV04'),('PM025','2026-08-18','2026-09-02','Da_tra','DG048','NV02'),('PM026','2026-07-10','2026-07-25','Qua_han','DG016','NV03'),('PM027','2026-08-12','2026-08-27','Da_tra','DG017','NV04'),('PM028','2026-09-09','2026-09-24','Dang_muon','DG017','NV02'),('PM029','2026-07-15','2026-07-30','Qua_han','DG020','NV03'),('PM030','2026-08-18','2026-09-02','Da_tra','DG022','NV04'),('PM031','2026-09-08','2026-09-23','Dang_muon','DG022','NV02'),('PM032','2026-08-20','2026-09-04','Da_tra','DG026','NV03'),('PM033','2026-09-07','2026-09-22','Dang_muon','DG026','NV04'),('PM034','2026-08-01','2026-08-16','Qua_han','DG028','NV02'),('PM035','2026-08-14','2026-08-29','Da_tra','DG030','NV03'),('PM036','2026-09-05','2026-09-20','Dang_muon','DG030','NV04'),('PM037','2026-08-10','2026-08-25','Da_tra','DG034','NV02'),('PM038','2026-09-06','2026-09-21','Dang_muon','DG034','NV03'),('PM039','2026-07-20','2026-08-04','Qua_han','DG042','NV04'),('PM040','2026-08-11','2026-08-26','Da_tra','DG048','NV02');
/*!40000 ALTER TABLE `phieu_muon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_phat`
--

DROP TABLE IF EXISTS `phieu_phat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_phat` (
  `Ma_phieu` varchar(20) NOT NULL,
  `So_ngay_tre` int DEFAULT NULL,
  `Tinh_trang_thanh_toan` enum('Da_thanh_toan','Chua_thanh_toan') NOT NULL,
  `Li_do` varchar(255) DEFAULT NULL,
  `Tien_phat` float NOT NULL,
  `Nhan_vien` varchar(20) NOT NULL,
  `Ngay_tra` date NOT NULL,
  PRIMARY KEY (`Ma_phieu`),
  KEY `Nhan_vien_idx` (`Nhan_vien`),
  CONSTRAINT `fk_nhanvien_phieuphat` FOREIGN KEY (`Nhan_vien`) REFERENCES `nhan_vien` (`Ma_nhan_vien`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_phat`
--

LOCK TABLES `phieu_phat` WRITE;
/*!40000 ALTER TABLE `phieu_phat` DISABLE KEYS */;
INSERT INTO `phieu_phat` VALUES ('PP001',5,'Chua_thanh_toan','Trả sách trễ hạn quy định',25000,'NV04','2026-09-20'),('PP002',10,'Chua_thanh_toan','Trả sách trễ hạn quy định',50000,'NV04','2026-08-26'),('PP003',15,'Da_thanh_toan','Trả sách trễ hạn và làm hỏng bìa sách',120000,'NV04','2026-08-19'),('PP004',7,'Chua_thanh_toan','Trả sách trễ hạn quy định',35000,'NV03','2026-08-27'),('PP005',20,'Da_thanh_toan','Làm mất sách vật lý trong phiếu mượn',150000,'NV02','2026-08-15'),('PP006',12,'Chua_thanh_toan','Trả sách trễ hạn quy định',60000,'NV02','2026-08-11'),('PP007',8,'Chua_thanh_toan','Trả sách trễ hạn quy định',40000,'NV03','2026-07-23'),('PP008',14,'Da_thanh_toan','Trả sách trễ hạn và rách trang ruột',90000,'NV03','2026-08-14'),('PP009',15,'Chua_thanh_toan','Trả sách trễ hạn quy định',75000,'NV02','2026-08-31'),('PP010',18,'Chua_thanh_toan','Làm mất sách vật lý trong phiếu mượn',180000,'NV04','2026-08-22');
/*!40000 ALTER TABLE `phieu_phat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_tra`
--

DROP TABLE IF EXISTS `phieu_tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_tra` (
  `Ma_phieu` varchar(20) NOT NULL,
  `Ngay_tra` date DEFAULT NULL,
  `Trang_thai` enum('Da_tra','Dang_muon','Qua_han') NOT NULL,
  `Phieu_muon` varchar(20) NOT NULL,
  `Phieu_phat` varchar(20) DEFAULT NULL,
  `Nhan_vien` varchar(20) NOT NULL,
  PRIMARY KEY (`Ma_phieu`),
  KEY `fk_phieumuon_phieutra_idx` (`Phieu_muon`),
  KEY `fk_phieuphat_phieutra_idx` (`Phieu_phat`),
  KEY `fk_nhanvien_phieutra_idx` (`Nhan_vien`),
  CONSTRAINT `fk_nhanvien_phieutra` FOREIGN KEY (`Nhan_vien`) REFERENCES `nhan_vien` (`Ma_nhan_vien`) ON UPDATE CASCADE,
  CONSTRAINT `fk_phieumuon_phieutra` FOREIGN KEY (`Phieu_muon`) REFERENCES `phieu_muon` (`Ma_phieu`),
  CONSTRAINT `fk_phieuphat_phieutra` FOREIGN KEY (`Phieu_phat`) REFERENCES `phieu_phat` (`Ma_phieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_tra`
--

LOCK TABLES `phieu_tra` WRITE;
/*!40000 ALTER TABLE `phieu_tra` DISABLE KEYS */;
INSERT INTO `phieu_tra` VALUES ('PT001','2026-08-24','Da_tra','PM001',NULL,'NV02'),('PT002',NULL,'Dang_muon','PM002',NULL,'NV03'),('PT003',NULL,'Qua_han','PM003','PP001','NV04'),('PT004','2026-08-28','Da_tra','PM004',NULL,'NV02'),('PT005',NULL,'Dang_muon','PM005',NULL,'NV03'),('PT006',NULL,'Qua_han','PM006','PP002','NV04'),('PT007','2026-08-24','Da_tra','PM007',NULL,'NV02'),('PT008',NULL,'Dang_muon','PM008',NULL,'NV03'),('PT009',NULL,'Qua_han','PM009','PP003','NV04'),('PT010','2026-09-01','Da_tra','PM010',NULL,'NV02'),('PT011',NULL,'Dang_muon','PM011',NULL,'NV03'),('PT012','2026-08-28','Da_tra','PM012',NULL,'NV04'),('PT013',NULL,'Dang_muon','PM013',NULL,'NV02'),('PT014',NULL,'Qua_han','PM014','PP004','NV03'),('PT015','2026-09-05','Da_tra','PM015',NULL,'NV04'),('PT016',NULL,'Dang_muon','PM016',NULL,'NV02'),('PT017','2026-08-25','Da_tra','PM017',NULL,'NV03'),('PT018',NULL,'Dang_muon','PM018',NULL,'NV04'),('PT019',NULL,'Qua_han','PM019','PP005','NV02'),('PT020','2026-09-02','Da_tra','PM020',NULL,'NV03'),('PT021',NULL,'Dang_muon','PM021',NULL,'NV04'),('PT022',NULL,'Qua_han','PM022','PP006','NV02'),('PT023','2026-09-08','Da_tra','PM023',NULL,'NV03'),('PT024',NULL,'Dang_muon','PM024',NULL,'NV04'),('PT025','2026-09-01','Da_tra','PM025',NULL,'NV02'),('PT026',NULL,'Qua_han','PM026','PP007','NV03'),('PT027','2026-08-26','Da_tra','PM027',NULL,'NV04'),('PT028',NULL,'Dang_muon','PM028',NULL,'NV02'),('PT029',NULL,'Qua_han','PM029','PP008','NV03'),('PT030','2026-09-01','Da_tra','PM030',NULL,'NV04'),('PT031',NULL,'Dang_muon','PM031',NULL,'NV02'),('PT032','2026-09-03','Da_tra','PM032',NULL,'NV03'),('PT033',NULL,'Dang_muon','PM033',NULL,'NV04'),('PT034',NULL,'Qua_han','PM034','PP009','NV02'),('PT035','2026-08-28','Da_tra','PM035',NULL,'NV03'),('PT036',NULL,'Dang_muon','PM036',NULL,'NV04'),('PT037','2026-08-24','Da_tra','PM037',NULL,'NV02'),('PT038',NULL,'Dang_muon','PM038',NULL,'NV03'),('PT039',NULL,'Qua_han','PM039','PP010','NV04'),('PT040','2026-08-25','Da_tra','PM040',NULL,'NV02');
/*!40000 ALTER TABLE `phieu_tra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_lieu_so`
--

DROP TABLE IF EXISTS `tai_lieu_so`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_lieu_so` (
  `Ma_tai_lieu_so` varchar(20) NOT NULL,
  `Ten_tai_lieu` varchar(45) NOT NULL,
  `Tac_gia` varchar(45) NOT NULL,
  `The_loai` varchar(45) NOT NULL,
  `Ding_dang` varchar(45) NOT NULL,
  `Dung_luong` varchar(45) NOT NULL,
  `Quyen_tai_ve` enum('Yes','No') NOT NULL,
  `Gioi_han_quyen_truy_cap` varchar(45) NOT NULL,
  `Nhan_vien` varchar(20) NOT NULL,
  PRIMARY KEY (`Ma_tai_lieu_so`),
  KEY `fk_tailieuso_nhanvien_idx` (`Nhan_vien`),
  CONSTRAINT `fk_tailieuso_nhanvien` FOREIGN KEY (`Nhan_vien`) REFERENCES `nhan_vien` (`Ma_nhan_vien`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_lieu_so`
--

LOCK TABLES `tai_lieu_so` WRITE;
/*!40000 ALTER TABLE `tai_lieu_so` DISABLE KEYS */;
INSERT INTO `tai_lieu_so` VALUES ('TL01','Cấu trúc dữ liệu và giải thuật E-Book','Lê Minh Hoàng','CNTT','PDF','15.4 MB','Yes','Không giới hạn','NV02'),('TL02','Lập trình C căn bản và nâng cao','Phạm Văn Ất','CNTT','PDF','12.1 MB','Yes','Không giới hạn','NV03'),('TL03','Mạng máy tính và Internet toàn tập','James F. Kurose','Mạng máy tính','EPUB','25.8 MB','No','Tối đa 50 thiết bị','NV04'),('TL04','Cơ sở dữ liệu và MySQL thực chiến','Ramez Elmasri','Cơ sở dữ liệu','PDF','18.2 MB','Yes','Không giới hạn','NV02'),('TL05','Nhập môn Trí tuệ nhân tạo hiện đại','Stuart Russell','AI','PDF','42.5 MB','No','Tối đa 30 thiết bị','NV03'),('TL06','Lập trình Python từ cơ bản đến nâng cao','Mark Lutz','Lập trình','EPUB','10.5 MB','Yes','Không giới hạn','NV04'),('TL07','Thiết kế hướng đối tượng với Java','Herbert Schildt','Lập trình','PDF','14.0 MB','Yes','Không giới hạn','NV02'),('TL08','An toàn và Bảo mật thông tin mạng','William Stallings','An toàn thông tin','PDF','22.3 MB','No','Tối đa 20 thiết bị','NV03'),('TL09','Toán rời rạc ứng dụng trong tin học','Kenneth H. Rosen','Toán tin','PDF','9.8 MB','Yes','Không giới hạn','NV04'),('TL10','Kiến trúc máy tính và Hợp ngữ','Andrew S. Tanenbaum','Phần cứng','EPUB','16.7 MB','Yes','Không giới hạn','NV02'),('TL11','Hệ điều hành Linux quản trị hệ thống','Nemeth Evi','Hệ điều hành','PDF','30.1 MB','No','Tối đa 40 thiết bị','NV03'),('TL12','Kỹ thuật phần mềm Agile & Scrum','Ian Sommerville','Kỹ thuật phần mềm','PDF','11.4 MB','Yes','Không giới hạn','NV04'),('TL13','Phân tích và Thiết kế hệ thống thông tin','Ngô Công Phụng','Hệ thống thông tin','PDF','8.9 MB','Yes','Không giới hạn','NV02'),('TL14','Lý thuyết thông tin và Mã hóa','Đỗ Trung Tá','Viễn thông','PDF','7.5 MB','Yes','Không giới hạn','NV03'),('TL15','Xử lý tín hiệu số chuyên sâu','John G. Proakis','Điện tử viễn thông','EPUB','28.4 MB','No','Tối đa 15 thiết bị','NV04'),('TL16','Kinh tế chính trị Mác - Lênin điện tử','Bộ GD&ĐT','Chính trị học','PDF','5.2 MB','Yes','Không giới hạn','NV02'),('TL17','Tư tưởng Hồ Chí Minh toàn tập E-book','Viện Hồ Chí Minh','Lịch sử / Chính trị','PDF','6.8 MB','Yes','Không giới hạn','NV03'),('TL18','Tiếng Anh kỹ thuật chuyên ngành CNTT','Eric Glendinning','Ngoại ngữ','PDF','13.5 MB','Yes','Không giới hạn','NV04'),('TL19','Quản trị dự án công nghệ thông tin','Kathy Schwalbe','Quản lý dự án','EPUB','19.0 MB','No','Tối đa 25 thiết bị','NV02'),('TL20','Điện toán đám mây và Ứng dụng Cloud','Thomas Erl','Công nghệ mới','PDF','24.6 MB','Yes','Không giới hạn','NV03');
/*!40000 ALTER TABLE `tai_lieu_so` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-21 22:06:05
