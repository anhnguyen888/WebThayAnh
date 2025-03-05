USE [C5_QuanLySinhVien]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 05/03/2025 10:58:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [varchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 05/03/2025 10:58:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSo] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diem] [float] NULL,
	[MaKhoa] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'222', N'222')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT', N'Công Nghệ Thông Tin')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'HTTT', N'Hệ Thống Thông Tin')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'KT', N'Kinh Tế')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'KTPM', N'Kỹ Thuật Phần Mềm')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'NN', N'Ngoại Ngữ')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'QTKD', N'Quản trị kinh doanh')
GO
INSERT [dbo].[SinhVien] ([MaSo], [HoTen], [GioiTinh], [Diem], [MaKhoa]) VALUES (N'1199', N'HUTECH NEW 999', 1, 8, N'CNTT')
GO
INSERT [dbo].[SinhVien] ([MaSo], [HoTen], [GioiTinh], [Diem], [MaKhoa]) VALUES (N'SV001', N'Nguyễn Văn An', 1, 8.5, N'CNTT')
GO
INSERT [dbo].[SinhVien] ([MaSo], [HoTen], [GioiTinh], [Diem], [MaKhoa]) VALUES (N'SV002', N'Trần Thị Bình', 0, 7.8, N'KTPM')
GO
INSERT [dbo].[SinhVien] ([MaSo], [HoTen], [GioiTinh], [Diem], [MaKhoa]) VALUES (N'SV003', N'Lê Hoàng Công', 1, 9, N'HTTT')
GO
INSERT [dbo].[SinhVien] ([MaSo], [HoTen], [GioiTinh], [Diem], [MaKhoa]) VALUES (N'SV004', N'Nguyen Van B', 1, 9, N'HTTT')
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD CHECK  (([Diem]>=(0) AND [Diem]<=(10)))
GO
