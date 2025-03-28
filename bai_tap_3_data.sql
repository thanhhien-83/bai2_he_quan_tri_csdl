USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CNTT      ', N'Công Nghệ Thông Tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'DT        ', N'Điện Tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'QTKD      ', N'Quản Trị Kinh Doanh')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'XD        ', N'Xây Dựng')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'YT        ', N'Y Tế')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'DD        ', N'Dược', N'YT        ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'HTTT      ', N'Hệ Thống Thông Tin', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'KT        ', N'Kế Toán', N'QTKD      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'PM        ', N'Phần Mềm', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'VT        ', N'Viễn Thông', N'DT        ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV001     ', N'Nguyễn Văn A', CAST(N'1980-01-15' AS Date), N'PM        ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV002     ', N'Trần Thị B', CAST(N'1985-02-20' AS Date), N'HTTT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV003     ', N'Phạm Văn C', CAST(N'1978-03-25' AS Date), N'KT        ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV004     ', N'Lê Thị D', CAST(N'1982-04-10' AS Date), N'VT        ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV005     ', N'Hoàng Văn E', CAST(N'1975-05-05' AS Date), N'DD        ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L01       ', N'Lớp 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L02       ', N'Lớp 2')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L03       ', N'Lớp 3')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L04       ', N'Lớp 4')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L05       ', N'Lớp 5')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L01       ', N'GV001     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L02       ', N'GV002     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L03       ', N'GV003     ', N'HK2       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L04       ', N'GV004     ', N'HK2       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L05       ', N'GV005     ', N'HK3       ')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH001     ', N'Toán Cao Cấp', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH002     ', N'Lập Trình C', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH003     ', N'Kinh Tế Vi Mô', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH004     ', N'Mạch Điện Tử', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH005     ', N'Giải Phẫu', 2)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP01     ', N'Toán Cao Cấp - L1', N'HK1       ', N'MH001     ', N'GV001     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP02     ', N'Lập Trình C - L1', N'HK1       ', N'MH002     ', N'GV002     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP03     ', N'Kinh Tế Vi Mô - L1', N'HK2       ', N'MH003     ', N'GV003     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP04     ', N'Mạch Điện Tử - L1', N'HK2       ', N'MH004     ', N'GV004     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP05     ', N'Giải Phẫu - L1', N'HK3       ', N'MH005     ', N'GV005     ')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV001     ', N'Nguyễn Văn H', CAST(N'2002-06-10' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV002     ', N'Trần Thị K', CAST(N'2003-07-15' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV003     ', N'Phạm Văn L', CAST(N'2001-08-20' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV004     ', N'Lê Thị M', CAST(N'2002-09-25' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV005     ', N'Hoàng Văn N', CAST(N'2003-10-30' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV001     ', N'Lớp Trưởng')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L02       ', N'SV002     ', N'Bí Thư')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L03       ', N'SV003     ', N'Thành Viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L04       ', N'SV004     ', N'Thành Viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L05       ', N'SV005     ', N'Phó Bí Thư')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP01     ', N'SV001     ', 8.5, 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP02     ', N'SV002     ', 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP03     ', N'SV003     ', 6.5, 70)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (4, N'LHP04     ', N'SV004     ', 9, 80)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (5, N'LHP05     ', N'SV005     ', 5.5, 90)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 3, 6.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 4, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, 5, 5.5)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
