USE [shopDecorDb_08]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Link] [varchar](255) NOT NULL,
	[MaSP] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[SoLuong] [decimal](18, 4) NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[SoLuong] [decimal](18, 4) NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaPNK] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[TongGia] [decimal](18, 4) NOT NULL,
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[IdKhachHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[IDNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
	[Loai] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SĐT] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPNK] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[IDNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[GiaBan] [decimal](18, 4) NOT NULL,
	[MoTa] [nvarchar](255) NOT NULL,
	[SLTonHienTai] [decimal](18, 4) NOT NULL,
	[SLTonToiThieu] [decimal](18, 4) NOT NULL,
	[GiaNhap] [decimal](18, 4) NOT NULL,
	[KhuyenMai] [decimal](18, 4) NULL,
	[MaLSP] [int] NOT NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NOT NULL,
	[PassWord] [varchar](255) NOT NULL,
	[IDNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 15/11/2022 9:55:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaPNK] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPNK] ASC,
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anh] ON 

INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (1, N'khay-thien-nga-1', 2)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (2, N'khay-thien-nga-2', 2)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (3, N'khay-thien-nga-3', 2)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (4, N'tuong-co-gai-nghe-thuat-1', 3)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (5, N'tuong-co-gai-nghe-thuat-2', 3)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (6, N'tuong-co-gai-nghe-thuat-3', 3)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (7, N'tuong-cho-boi-ban-dep-1', 4)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (8, N'tuong-cho-boi-ban-dep-2', 4)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (9, N'tuong-cho-boi-ban-dep-3', 4)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (10, N'tuong-ca-kiem-1', 5)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (11, N'tuong-ca-kiem-2', 5)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (12, N'tuong-ca-kiem-3', 5)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (13, N'tuong-meo-va-chuot-1', 6)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (14, N'tuong-meo-va-chuot-2', 6)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (15, N'tuong-meo-va-chuot-3', 6)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (16, N'mo-hinh-con-cho-bong-bong-1', 7)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (17, N'mo-hinh-con-cho-bong-bong-2', 7)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (18, N'mo-hinh-con-cho-bong-bong-3', 7)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (19, N'mo-hinh-sai-canh-1', 8)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (20, N'mo-hinh-sai-canh-2', 8)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (21, N'mo-hinh-sai-canh-3', 8)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (22, N'tuong-phi-hanh-gia-de-ban-1', 9)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (23, N'tuong-phi-hanh-gia-de-ban-2', 9)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (24, N'tuong-phi-hanh-gia-de-ban-3', 9)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (25, N'tuong-nu-hiep-si-cuoi-ngua-1', 10)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (26, N'tuong-nu-hiep-si-cuoi-ngua-2', 10)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (27, N'tuong-nu-hiep-si-cuoi-ngua-3', 10)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (28, N'tuong-phi-hanh-gia-mau-be-om-trai-tim-1', 11)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (29, N'tuong-phi-hanh-gia-mau-be-om-trai-tim-2', 11)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (30, N'tuong-phi-hanh-gia-mau-be-om-trai-tim-3', 11)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (31, N'may-hat-co-1', 12)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (32, N'may-hat-co-2', 12)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (33, N'may-hat-co-3', 12)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (34, N'tuong-thien-than-vintage-1', 13)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (35, N'tuong-thien-than-vintage-2', 13)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (36, N'tuong-thien-than-vintage-3', 13)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (37, N'den-ban-1', 14)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (38, N'den-ban-2', 14)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (39, N'den-ban-3', 14)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (40, N'may-hat-co-1', 15)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (41, N'may-hat-co-2', 15)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (42, N'may-hat-co-3', 15)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (43, N'ho-lo-phong-thuy-1', 16)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (44, N'ho-lo-phong-thuy-2', 16)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (45, N'ho-lo-phong-thuy-3', 16)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (46, N'doi-chim-uyen-uong-1', 17)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (47, N'doi-chim-uyen-uong-2', 17)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (48, N'doi-chim-uyen-uong-3', 17)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (49, N'meo-may-man-de-san-1', 18)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (50, N'meo-may-man-de-san-2', 18)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (51, N'meo-may-man-de-san-3', 18)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (52, N'tuong-om-bong-1', 19)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (53, N'tuong-om-bong-2', 19)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (54, N'tuong-om-bong-3', 19)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (55, N'la-sen-bang-dong-trang-tri-1', 20)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (56, N'la-sen-bang-dong-trang-tri-2', 20)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (57, N'la-sen-bang-dong-trang-tri-3', 20)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (58, N'con-huou-trang-tri-1', 21)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (59, N'con-huou-trang-tri-2', 21)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (60, N'con-huou-trang-tri-3', 21)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (61, N'tuong-ho-phong-thuy-dep-1', 22)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (62, N'tuong-ho-phong-thuy-dep-2', 22)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (63, N'tuong-ho-phong-thuy-dep-3', 22)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (64, N'tuong-bo-tot-sung-dai-1', 23)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (65, N'tuong-bo-tot-sung-dai-2', 23)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (66, N'tuong-bo-tot-sung-dai-3', 23)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (67, N'tuong-bo-tot-va-gau-doi-dau-1', 24)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (68, N'tuong-bo-tot-va-gau-doi-dau-2', 24)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (69, N'tuong-bo-tot-va-gau-doi-dau-3', 24)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (70, N'ca-rong-1', 25)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (71, N'ca-rong-2', 25)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (72, N'ca-rong-3', 25)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (73, N'cap-huou-hoa-anh-dao-1', 26)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (74, N'cap-huou-hoa-anh-dao-2', 26)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (75, N'cap-huou-hoa-anh-dao-3', 26)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (76, N'chim-tri-phong-thuy-1', 27)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (77, N'chim-tri-phong-thuy-2', 27)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (78, N'chim-tri-phong-thuy-3', 27)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (79, N'tuong-song-ma-1', 28)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (80, N'tuong-song-ma-2', 28)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (81, N'tuong-song-ma-3', 28)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (82, N'tuong-ton-ngo-khong-de-ban-1', 29)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (83, N'tuong-ton-ngo-khong-de-ban-2', 29)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (84, N'tuong-ton-ngo-khong-de-ban-3', 29)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (85, N'con-bao-trang-tri-bang-dong-1', 30)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (86, N'con-bao-trang-tri-bang-dong-2', 30)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (87, N'con-bao-trang-tri-bang-dong-3', 30)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (88, N'tuong-trau-dong-de-ban-1', 31)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (89, N'tuong-trau-dong-de-ban-2', 31)
INSERT [dbo].[Anh] ([ID], [Link], [MaSP]) VALUES (90, N'tuong-trau-dong-de-ban-3', 31)
SET IDENTITY_INSERT [dbo].[Anh] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(2.0000 AS Decimal(18, 4)), 2, 5)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(2.0000 AS Decimal(18, 4)), 3, 6)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 4, 2)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 5, 3)
INSERT [dbo].[ChiTietHoaDon] ([SoLuong], [MaSP], [MaHD]) VALUES (CAST(3.0000 AS Decimal(18, 4)), 6, 3)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 2, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(200.0000 AS Decimal(18, 4)), 3, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(250.0000 AS Decimal(18, 4)), 4, 3)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(220.0000 AS Decimal(18, 4)), 5, 4)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(310.0000 AS Decimal(18, 4)), 6, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(140.0000 AS Decimal(18, 4)), 7, 6)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(190.0000 AS Decimal(18, 4)), 8, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(140.0000 AS Decimal(18, 4)), 9, 8)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(160.0000 AS Decimal(18, 4)), 10, 9)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(140.0000 AS Decimal(18, 4)), 11, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(27.0000 AS Decimal(18, 4)), 12, 11)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(24.0000 AS Decimal(18, 4)), 13, 12)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(341.0000 AS Decimal(18, 4)), 14, 13)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(231.0000 AS Decimal(18, 4)), 15, 14)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(342.0000 AS Decimal(18, 4)), 16, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(123.0000 AS Decimal(18, 4)), 17, 16)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(113.0000 AS Decimal(18, 4)), 18, 17)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(112.0000 AS Decimal(18, 4)), 19, 18)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(125.0000 AS Decimal(18, 4)), 20, 19)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(176.0000 AS Decimal(18, 4)), 21, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(156.0000 AS Decimal(18, 4)), 22, 21)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(134.0000 AS Decimal(18, 4)), 23, 22)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(123.0000 AS Decimal(18, 4)), 24, 23)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 25, 24)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 26, 25)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 27, 26)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 28, 27)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 29, 28)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 30, 29)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [MaSP], [MaPNK]) VALUES (CAST(100.0000 AS Decimal(18, 4)), 31, 30)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(4530000.0000 AS Decimal(18, 4)), 1, N'Đã thanh toán', CAST(N'2022-01-09T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(13080000.0000 AS Decimal(18, 4)), 2, N'Đã thanh toán', CAST(N'2022-01-09T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(7470000.0000 AS Decimal(18, 4)), 3, N'Đã thanh toán', CAST(N'2022-01-09T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(0.0000 AS Decimal(18, 4)), 4, N'Đã thanh toán', CAST(N'2022-11-12T21:59:56.540' AS DateTime), 2)
INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(0.0000 AS Decimal(18, 4)), 5, N'Đã thanh toán', CAST(N'2022-11-12T22:13:55.803' AS DateTime), 2)
INSERT [dbo].[HoaDon] ([TongGia], [MaHD], [TrangThai], [NgayLap], [IdKhachHang]) VALUES (CAST(0.0000 AS Decimal(18, 4)), 6, N'Gio Hang', CAST(N'2022-11-12T22:17:16.823' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (1, N'Sản phẩm 1')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (2, N'Sản phẩm 2')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (3, N'Sản phẩm 3')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (4, N'Sản phẩm 4')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (5, N'Sản phẩm 5')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenSP]) VALUES (6, N'Sản phẩm 6')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (1, N'Nguyen Thanh Luan', N'Khong Hoat Dong', N'Nhan Vien', N'Mrboo2708@gmail.com', N'0362546995', N'Dai Kim Hoang Mai Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (2, N'Nguyen Thanh Long', N'Khong Hoat Dong', N'Nhan Vien', N'LongNguyen@gmail.com', N'0362556456', N'Bac Tu Liem Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (3, N'Nguyen Thanh Hoa', N'Khong Hoat Dong', N'Nguoi Dung', N'ThanhHoa@gmail.com', N'0392526455', N'Thanh Xuan Hoang Mai Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (4, N'Nguyen The Duyet', N'Khong Hoat Dong', N'Nhan Vien', N'TheDuyet@gmail.com', N'0362546995', N'Truong Dinh Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (5, N'Dang The Lap', N'Khong Hoat Dong', N'Nhan Vien', N'TheLap@gmail.com', N'0345324456', N'Thanh Xuan Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (6, N'Nguyen Dinh Hieu', N'Khong Hoat Dong', N'Nguoi Dung', N'DinhHieu@gmail.com', N'0367865678', N'Ta Thanh Oai Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (7, N'Nguyen Thanh Xuan', N'Khong Hoat Dong', N'Nguoi Dung', N'Mrboo2708@gmail.com', N'0362546995', N'Dai Kim Hoang Mai Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (8, N'Nguyen Van Minh', N'Hoat Dong', N'Nguoi Dung', N'NguyVanMinh@gmail.com', N'0362546945', N'Xuan Dinh - Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (9, N'Nguyen Thi Nguyen', N'Hoat Dong', N'Nguoi Dung', N'Nguyen@gmail.com', N'0962546945', N'Hoang Mai - Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (10, N'Nguyen Hai Van', N'Hoat Dong', N'Nguoi Dung', N'HaiVan@gmail.com', N'0589365214', N'Cau Giay - Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (11, N'Nguyen Quang Hiep', N'Hoat Dong', N'Nguoi Dung', N'Hiep@gmail.com', N'0214125478', N'Xuan Dinh - Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (12, N'Nguyen Dinh Cong', N'Hoat Dong', N'Nguoi Dung', N'Cong@gmail.com', N'0952147458', N'Ha Dong - Ha Noi', N'Nam')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (13, N'Le Thi Huong', N'Hoat Dong', N'Nguoi Dung', N'Huong@gmail.com', N'0963258474', N'Ba Vi - Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (14, N'Ha Thi Thuy', N'Hoat Dong', N'Nguoi Dung', N'Thuy@gmail.com', N'0963254178', N'Cau Giay - Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (15, N'Dang Quynh Huong', N'Hoat Dong', N'Nguoi Dung', N'Huong@gmail.com', N'0521474547', N'Ha Dong - Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (16, N'Dang Kim Chi', N'Hoat Dong', N'Nguoi Dung', N'Chi@gmail.com', N'0965874124', N'Tay Ho - Ha Noi', N'Nu')
INSERT [dbo].[NguoiDung] ([IDNguoiDung], [TenNV], [TrangThai], [Loai], [Email], [SDT], [DiaChi], [GioiTinh]) VALUES (17, N'Nguyen Van Hai', N'Hoat Dong', N'Nguoi Dung', N'Hai@gmail.com', N'0952147458', N'Ha Dong - Ha Noi', N'Nam')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (1, N'Le Barrel Company', N'LeBarrel@gmail.com', N'USa', N'0896325117')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (2, N'Something For Her', N'SomethingForHer@gmail.com', N'French', N'0896325116')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (3, N'CosTa Brava', N'CosTaBrava@gmail.com', N'Portugal', N'0874147451')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (4, N'The Ocenic CO', N'TheOcenicCO@gmail.com', N'Japan', N'0841475142')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (5, N'Fountain', N'Fountain@gmail.com', N'USA', N'0896325116')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (6, N'Black Birds', N'BlackBirds@gmail.com', N'C?u Gi?y - Vi?t Nam', N'0954147874')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SĐT]) VALUES (7, N'Hugo Studio', N'HugoStudio@gmail.com', N'Tp.HoChiMinh - VietNam', N'0896325116')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] ON 

INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (1, CAST(N'2022-01-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (2, CAST(N'2022-01-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (3, CAST(N'2022-02-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (4, CAST(N'2022-03-09T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (5, CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (6, CAST(N'2022-05-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (7, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (8, CAST(N'2022-07-09T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (9, CAST(N'2022-08-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (10, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (11, CAST(N'2022-10-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (12, CAST(N'2022-11-09T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (13, CAST(N'2022-10-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (14, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (15, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (16, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (17, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (18, CAST(N'2022-09-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (19, CAST(N'2022-09-12T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (20, CAST(N'2022-09-13T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (21, CAST(N'2022-09-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (22, CAST(N'2022-09-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (23, CAST(N'2022-09-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (24, CAST(N'2022-09-17T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (25, CAST(N'2022-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (26, CAST(N'2022-09-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (27, CAST(N'2022-09-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (28, CAST(N'2022-09-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (29, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [IDNguoiDung]) VALUES (30, CAST(N'2022-09-09T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (2, N'Khay để đồ thiên nga', CAST(450000.0000 AS Decimal(18, 4)), N'Khay để đồ thiên nga', CAST(100.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(400000.0000 AS Decimal(18, 4)), NULL, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (3, N'Tượng cô gái nghệ thuật', CAST(1060000.0000 AS Decimal(18, 4)), N'Tượng cô gái nghệ thuật', CAST(100.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(1000000.0000 AS Decimal(18, 4)), NULL, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (4, N'Tượng chó bồi bàn kết hợp hộp khăn giấy', CAST(3300000.0000 AS Decimal(18, 4)), N'Tượng chó bồi bàn kết hợp hộp khăn giấy', CAST(50.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(3000000.0000 AS Decimal(18, 4)), NULL, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (5, N'Tượng cá kiếm trang trí', CAST(1400000.0000 AS Decimal(18, 4)), N'', CAST(55.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(1300000.0000 AS Decimal(18, 4)), NULL, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (6, N'Tượng mèo và chuột để bàn', CAST(1090000.0000 AS Decimal(18, 4)), N'', CAST(30.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(1050000.0000 AS Decimal(18, 4)), NULL, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (7, N'Mô hình con chó bong bóng trang trí kệ Tivi', CAST(390000.0000 AS Decimal(18, 4)), N'', CAST(50.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(350000.0000 AS Decimal(18, 4)), NULL, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (8, N'Mô hình sải cánh', CAST(550000.0000 AS Decimal(18, 4)), N'', CAST(120.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(500000.0000 AS Decimal(18, 4)), NULL, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (9, N'Tượng phi hành gia kết hợp giá để mũ', CAST(650000.0000 AS Decimal(18, 4)), N'', CAST(20.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(600000.0000 AS Decimal(18, 4)), NULL, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (10, N'Tượng nữ hiệp sĩ cưỡi ngựa', CAST(1550000.0000 AS Decimal(18, 4)), N'', CAST(50.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(1500000.0000 AS Decimal(18, 4)), NULL, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (11, N'Tượng phi hành gia ôm bóng trái tim để sàn phòng khách', CAST(4700000.0000 AS Decimal(18, 4)), N'', CAST(30.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(4500000.0000 AS Decimal(18, 4)), NULL, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (12, N'Máy hát cổ trang trí phòng khách ưa chuộng', CAST(3700000.0000 AS Decimal(18, 4)), N'', CAST(30.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(3500000.0000 AS Decimal(18, 4)), NULL, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (13, N'Tượng thiên thần phong cách sang trọng', CAST(800000.0000 AS Decimal(18, 4)), N'', CAST(39.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(700000.0000 AS Decimal(18, 4)), NULL, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (14, N'Ðèn ngủ phong cách Bắc Âu', CAST(2500000.0000 AS Decimal(18, 4)), N'', CAST(40.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(2200000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (15, N'Máy hát cổ trang trí phòng khách ưa chuộng', CAST(3700000.0000 AS Decimal(18, 4)), N'', CAST(30.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(3500000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (16, N'Hồ Lô may mắn được ưa chuộng', CAST(9900000.0000 AS Decimal(18, 4)), N'', CAST(50.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(9500000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (17, N'Ðôi chim uyên uong trang trí bịt mắt', CAST(6990000.0000 AS Decimal(18, 4)), N'', CAST(70.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(6500000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (18, N'Mèo may mắn để sàn trang trí phòng khách', CAST(1240000.0000 AS Decimal(18, 4)), N'', CAST(35.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(1200000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (19, N'Tượng ôm bóng size lớn', CAST(2450000.0000 AS Decimal(18, 4)), N'', CAST(40.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(2400000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (20, N'Decor lá sen bằng đồng trang trí', CAST(1630000.0000 AS Decimal(18, 4)), N'', CAST(35.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(1600000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (21, N'Tượng con hươu trang trí sang trọng', CAST(2150000.0000 AS Decimal(18, 4)), N'', CAST(40.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(210000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (22, N'Tượng hổ bằng đồng phong thủy', CAST(5990000.0000 AS Decimal(18, 4)), N'', CAST(40.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(5900000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (23, N'Tượng bò tót sừng dài trang trí phong thủy', CAST(12600000.0000 AS Decimal(18, 4)), N'', CAST(10.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(12000000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (24, N'Tượng bò tót và gấu đồi đấu đẹp', CAST(7480000.0000 AS Decimal(18, 4)), N'', CAST(15.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(7400000.0000 AS Decimal(18, 4)), NULL, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (25, N'Cá rồng phong thủy ngâm tiền vàng bịt mắt', CAST(7550000.0000 AS Decimal(18, 4)), N'', CAST(18.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(7500000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (26, N'Cặp huou hoa anh dào', CAST(11800000.0000 AS Decimal(18, 4)), N'', CAST(18.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(11000000.0000 AS Decimal(18, 4)), NULL, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (27, N'Chim trĩ bằng đồng thiết kế sang trọng', CAST(3100000.0000 AS Decimal(18, 4)), N'', CAST(20.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(3000000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (28, N'Tượng song mã trang trí', CAST(6990000.0000 AS Decimal(18, 4)), N'', CAST(25.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(6900000.0000 AS Decimal(18, 4)), NULL, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (29, N'Tượng Tôn Ngộ Không để bàn', CAST(2550000.0000 AS Decimal(18, 4)), N'', CAST(30.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(2500000.0000 AS Decimal(18, 4)), NULL, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (30, N'Tượng con báo trang trí bằng đồng', CAST(3370000.0000 AS Decimal(18, 4)), N'', CAST(25.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(3300000.0000 AS Decimal(18, 4)), NULL, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [SLTonHienTai], [SLTonToiThieu], [GiaNhap], [KhuyenMai], [MaLSP], [AnhDaiDien]) VALUES (31, N'Tượng trâu vàng phong thủy', CAST(4800000.0000 AS Decimal(18, 4)), N'', CAST(35.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(4500000.0000 AS Decimal(18, 4)), NULL, 6, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (1, N'ThanhLuan1234', N'123', 1)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (2, N'ThanhLong1234', N'123', 2)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (3, N'ThanhHoa1234', N'123', 3)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (4, N'TheDuyet1234', N'123', 4)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (5, N'TheLap1234', N'123', 5)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (6, N'DinhHieu1234', N'123', 6)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (7, N'ThanhXuan1234', N'123', 7)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (8, N'VanMinh1234', N'123', 8)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (9, N'ThiNguyen1234', N'123', 9)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (10, N'HaiVan1234', N'123', 10)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (11, N'QuangHiep1234', N'123', 11)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (12, N'DinhCong1234', N'123', 12)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (13, N'ThiHuong1234', N'123', 13)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (14, N'ThiThuy1234', N'123', 14)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (15, N'QuynhHuong1234', N'123', 15)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (16, N'KimChi1234', N'123', 16)
INSERT [dbo].[TaiKhoan] ([ID], [Username], [PassWord], [IDNguoiDung]) VALUES (17, N'VanHai1234', N'123', 17)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (1, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (2, 2)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (3, 3)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (4, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (5, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (6, 6)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (7, 7)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (8, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (9, 2)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (10, 3)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (11, 4)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (12, 5)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (13, 6)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (14, 7)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (15, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (16, 2)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (17, 3)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (18, 4)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (19, 5)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (20, 6)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (21, 7)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (22, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (23, 2)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (24, 3)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (25, 4)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (26, 5)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (27, 6)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (28, 7)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (29, 1)
INSERT [dbo].[Thuoc] ([MaPNK], [MaNCC]) VALUES (30, 1)
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPNK])
REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[NguoiDung] ([IDNguoiDung])
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[NguoiDung] ([IDNguoiDung])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[NguoiDung] ([IDNguoiDung])
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([MaPNK])
REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
GO
