USE [QLSV]
GO
INSERT [dbo].[SINHVIEN] ([MaSv], [HoTen], [NgaySinh]) VALUES (N'sv1            ', N'Nguyen Van F   ', CAST(N'2004-12-09' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSv], [HoTen], [NgaySinh]) VALUES (N'sv2            ', N'Hoang Thi K    ', CAST(N'2003-09-12' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSv], [HoTen], [NgaySinh]) VALUES (N'sv3            ', N'Tran Thi P     ', CAST(N'2005-02-14' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSv], [HoTen], [NgaySinh]) VALUES (N'sv4            ', N'Luong Thi C    ', CAST(N'2004-07-18' AS Date))
GO
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (N'l1             ', N'KMT            ')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (N'l2             ', N'KTP            ')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (N'l3             ', N'CCC            ')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (N'l4             ', N'LKF            ')
GO
INSERT [dbo].[LopSV] ([MaLop], [MaSv], [ChucVu]) VALUES (N'l1             ', N'sv1            ', N'Lop truong     ')
INSERT [dbo].[LopSV] ([MaLop], [MaSv], [ChucVu]) VALUES (N'l1             ', N'sv2            ', N'Lop pho        ')
INSERT [dbo].[LopSV] ([MaLop], [MaSv], [ChucVu]) VALUES (N'l2             ', N'sv3            ', N'Khong          ')
INSERT [dbo].[LopSV] ([MaLop], [MaSv], [ChucVu]) VALUES (N'l3             ', N'sv4            ', N'Khong          ')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'k1             ', N'Dien tu        ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'k2             ', N'Co khi         ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'k3             ', N'Dien           ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'k4             ', N'Quoc te        ')
GO
INSERT [dbo].[BoMon] ([MaBm], [MaMon], [MaKhoa]) VALUES (N'bm1            ', N'm1             ', N'k1             ')
INSERT [dbo].[BoMon] ([MaBm], [MaMon], [MaKhoa]) VALUES (N'bm2            ', N'm2             ', N'k2             ')
INSERT [dbo].[BoMon] ([MaBm], [MaMon], [MaKhoa]) VALUES (N'bm3            ', N'm3             ', N'k3             ')
INSERT [dbo].[BoMon] ([MaBm], [MaMon], [MaKhoa]) VALUES (N'bm4            ', N'm4             ', N'k4             ')
GO
INSERT [dbo].[GiaoVien] ([MaGv], [HoTen], [NgaySinh], [MaBm]) VALUES (N'gv1            ', N'Do Duy Cop     ', CAST(N'1980-02-12' AS Date), N'bm1            ')
INSERT [dbo].[GiaoVien] ([MaGv], [HoTen], [NgaySinh], [MaBm]) VALUES (N'gv2            ', N'Tran Thi Thanh ', CAST(N'1982-09-16' AS Date), N'bm2            ')
INSERT [dbo].[GiaoVien] ([MaGv], [HoTen], [NgaySinh], [MaBm]) VALUES (N'gv3            ', N'Nguyen Thi R   ', CAST(N'1987-12-30' AS Date), N'bm3            ')
INSERT [dbo].[GiaoVien] ([MaGv], [HoTen], [NgaySinh], [MaBm]) VALUES (N'gv4            ', N'Nguyen Van T   ', CAST(N'1990-12-24' AS Date), N'bm4            ')
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm1             ', N'CSDL           ', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm2             ', N'Thiet ke HT    ', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm3             ', N'Do an          ', 1)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm4             ', N'Mang mt        ', 3)
GO
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGv]) VALUES (N'hp1            ', N'K58KMT         ', 1, N'm1             ', N'gv1            ')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGv]) VALUES (N'hp2            ', N'K57KMT         ', 2, N'm2             ', N'gv3            ')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGv]) VALUES (N'hp3            ', N'K59KMT         ', 3, N'm3             ', N'gv2            ')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (1, N'hp1            ', N'sv1            ', 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (2, N'hp1            ', N'sv2            ', 6, 60)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (3, N'hp2            ', N'sv3            ', 9, 60)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (4, N'hp3            ', N'sv4            ', 10, 60)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
INSERT [dbo].[GVCN] ([MaLop], [MaGv], [HK]) VALUES (N'l1             ', N'gv1            ', N'1         ')
INSERT [dbo].[GVCN] ([MaLop], [MaGv], [HK]) VALUES (N'l2             ', N'gv2            ', N'2         ')
INSERT [dbo].[GVCN] ([MaLop], [MaGv], [HK]) VALUES (N'l3             ', N'gv3            ', N'1         ')
INSERT [dbo].[GVCN] ([MaLop], [MaGv], [HK]) VALUES (N'l4             ', N'gv4            ', N'3         ')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (1, 1, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (2, 1, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (3, 2, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (4, 3, 10)
GO
