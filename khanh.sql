USE [master]
GO
/****** Object:  Database [Dethimau]    Script Date: 2/14/2023 7:39:14 PM ******/
CREATE DATABASE [Dethimau]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dethimau', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dethimau.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dethimau_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dethimau_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dethimau] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dethimau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dethimau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dethimau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dethimau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dethimau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dethimau] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dethimau] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dethimau] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Dethimau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dethimau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dethimau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dethimau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dethimau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dethimau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dethimau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dethimau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dethimau] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dethimau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dethimau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dethimau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dethimau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dethimau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dethimau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dethimau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dethimau] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dethimau] SET  MULTI_USER 
GO
ALTER DATABASE [Dethimau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dethimau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dethimau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dethimau] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Dethimau]
GO
/****** Object:  Table [dbo].[DANGKYCUNGCAP]    Script Date: 2/14/2023 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKYCUNGCAP](
	[MaDKCC] [nvarchar](50) NOT NULL,
	[MaNhaCC] [nvarchar](50) NULL,
	[MaLoaiDV] [nvarchar](50) NULL,
	[DongXe] [nvarchar](50) NULL,
	[MaMP] [nvarchar](50) NULL,
	[NgayBatDauCungCap] [nvarchar](50) NULL,
	[NgayKetThucCungCap] [nvarchar](50) NULL,
	[SoLuongXeDangKy] [nchar](10) NULL,
 CONSTRAINT [PK_DANGKYCUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaDKCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONGXE]    Script Date: 2/14/2023 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONGXE](
	[DongXe] [nvarchar](50) NOT NULL,
	[HangXe] [nvarchar](50) NULL,
	[SoChoNgoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DONGXE] PRIMARY KEY CLUSTERED 
(
	[DongXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIDV]    Script Date: 2/14/2023 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDV](
	[MaLoaiDV] [nvarchar](50) NOT NULL,
	[TenLoaiDV] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIDV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MUCPHI]    Script Date: 2/14/2023 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUCPHI](
	[MaMP] [nvarchar](50) NOT NULL,
	[DonGia] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_MUCPHI] PRIMARY KEY CLUSTERED 
(
	[MaMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 2/14/2023 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNhaCC] [nvarchar](50) NOT NULL,
	[TenNhaCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[MaSoThue] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNhaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK001', N'NCC001', N'DV01', N'Hiace', N'MP01', N'20/11/2015', N'20/11/2016', N'4         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK002', N'NCC002', N'DV02', N'Vios', N'MP02', N'20/11/2015', N'20/11/2017', N'3         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK003', N'NCC003', N'DV03', N'Escape', N'MP03', N'20/11/2017', N'20/11/2018', N'5         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK004', N'NCC005', N'DV01', N'Cerato', N'MP04', N'20/11/2015', N'20/11/2019', N'7         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK005', N'NCC002', N'DV02', N'Forte', N'MP03', N'20/11/2019', N'20/11/2020', N'1         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK006', N'NCC004', N'DV03', N'Starex', N'MP04', N'10/11/2016', N'20/11/2021', N'2         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK007', N'NCC005', N'DV01', N'Cerato', N'MP03', N'30/11/2015', N'25/01/2016', N'8         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK008', N'NCC006', N'DV01', N'Vios', N'MP02', N'28/02/2016', N'15/08/2016', N'9         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK009', N'NCC005', N'DV03', N'Grand-i10', N'MP02', N'27/04/2016', N'30/04/2017', N'10        ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK010', N'NCC006', N'DV01', N'Forte', N'MP02', N'21/11/2015', N'22/02/2016', N'4         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK011', N'NCC007', N'DV01', N'Forte', N'MP01', N'25/12/2016', N'20/02/2017', N'5         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK012', N'NCC007', N'DV03', N'Cerato', N'MP01', N'14/04/2016', N'20/12/2017', N'4         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK013', N'NCC003', N'DV02', N'Cerato', N'MP01', N'21/12/2015', N'21/12/2016', N'8         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK014', N'NCC008', N'DV02', N'Cerato', N'MP01', N'20/05/2016', N'30/12/2016', N'1         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK015', N'NCC003', N'DV01', N'Hiace', N'MP02', N'24/04/2018', N'20/11/2019', N'4         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK016', N'NCC001', N'DV03', N'Grand-i10', N'MP02', N'22/06/2016', N'21/12/2016', N'8         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK017', N'NCC002', N'DV03', N'Cerato', N'MP03', N'30/09/2016', N'30/09/2019', N'4         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK018', N'NCC008', N'DV03', N'Escape', N'MP04', N'13/12/2017', N'30/09/2018', N'2         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK019', N'NCC003', N'DV03', N'Escape', N'MP03', N'24/01/2016', N'30/12/2016', N'8         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK020', N'NCC002', N'DV03', N'Cerato', N'MP04', N'03/05/2016', N'21/10/2017', N'7         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK021', N'NCC006', N'DV01', N'Forte', N'MP02', N'30/01/2015', N'30/12/2016', N'9         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK022', N'NCC002', N'DV02', N'Cerato', N'MP04', N'25/07/2016', N'30/15/2017', N'6         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK023', N'NCC002', N'DV01', N'Forte', N'MP03', N'30/11/2017', N'20/05/2018', N'5         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK024', N'NCC003', N'DV03', N'Forte', N'MP04', N'23/12/2017', N'30/11/2019', N'8         ')
INSERT [dbo].[DANGKYCUNGCAP] ([MaDKCC], [MaNhaCC], [MaLoaiDV], [DongXe], [MaMP], [NgayBatDauCungCap], [NgayKetThucCungCap], [SoLuongXeDangKy]) VALUES (N'DK025', N'NCC003', N'DV03', N'Hiace', N'MP02', N'24/08/2016', N'25/10/2017', N'1         ')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Cerato', N'KIA', N'7')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Escape', N'Ford', N'5')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Forte', N'KIA', N'5')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Grand-i10', N'Huyndai', N'7')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Hiace', N'Toyota', N'16')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Starex', N'Huyndai', N'7')
INSERT [dbo].[DONGXE] ([DongXe], [HangXe], [SoChoNgoi]) VALUES (N'Vios', N'Toyota', N'5')
INSERT [dbo].[LOAIDV] ([MaLoaiDV], [TenLoaiDV]) VALUES (N'DV01', N'Dịch vụ xe taxi')
INSERT [dbo].[LOAIDV] ([MaLoaiDV], [TenLoaiDV]) VALUES (N'DV02', N'DỊch vụ xe buýt công cộng theo tuyến cố định')
INSERT [dbo].[LOAIDV] ([MaLoaiDV], [TenLoaiDV]) VALUES (N'DV03', N'Dịch vuh ce chi thuyê theo hợp đồng')
INSERT [dbo].[MUCPHI] ([MaMP], [DonGia], [MoTa]) VALUES (N'MP01', N'10.000', N'Áp dụng từ 1/25')
INSERT [dbo].[MUCPHI] ([MaMP], [DonGia], [MoTa]) VALUES (N'MP02', N'15.000', N'Áp dụng từ 2/2015')
INSERT [dbo].[MUCPHI] ([MaMP], [DonGia], [MoTa]) VALUES (N'MP03', N'20.000', N'Áp dụng từ 1/2010')
INSERT [dbo].[MUCPHI] ([MaMP], [DonGia], [MoTa]) VALUES (N'MP04', N'25.000', N'Áp dụng từ 2/2011')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC001', N'Cty TNHH Toàn Pháp', N'Hai Chau', N'05113999888', N'568941')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC002', N'Cty Cổ phần Đông Du', N'Lien Chieu', N'05113999889', N'456789')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC003', N'Ông Nguyễn Văn A', N'Hoa Thuan', N'05113999890', N'321456')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC004', N'Cty Cổ Phần Toàn Cầu Xanh', N'Hai Chau', N'05113658945', N'513364')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC005', N'Cty Cổ Phần AMA', N'Thanh Khe', N'05113875466', N'546546')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC006', N'Bà Trần Thị Bích Vân', N'Lien Chieu', N'05113587469', N'524545')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC007', N'Cty TNHH Phan Thành', N'Thanh Khe', N'05113987456', N'113021')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC008', N'Ông Phan Đình Nam', N'Hoa Thuan', N'05113532456', N'121230')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC009', N'Tập Doàn Đông Nam Á', N'Lien Chieu', N'05113987121', N'533654')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCC], [TenNhaCC], [DiaChi], [SoDT], [MaSoThue]) VALUES (N'NCC010', N'Cty Cổ Phần Rạng Đông', N'Lien Chieu', N'05113569654', N'187864')
ALTER TABLE [dbo].[DANGKYCUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYCUNGCAP_DONGXE] FOREIGN KEY([DongXe])
REFERENCES [dbo].[DONGXE] ([DongXe])
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP] CHECK CONSTRAINT [FK_DANGKYCUNGCAP_DONGXE]
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYCUNGCAP_LOAIDV] FOREIGN KEY([MaLoaiDV])
REFERENCES [dbo].[LOAIDV] ([MaLoaiDV])
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP] CHECK CONSTRAINT [FK_DANGKYCUNGCAP_LOAIDV]
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYCUNGCAP_MUCPHI] FOREIGN KEY([MaMP])
REFERENCES [dbo].[MUCPHI] ([MaMP])
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP] CHECK CONSTRAINT [FK_DANGKYCUNGCAP_MUCPHI]
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYCUNGCAP_NHACUNGCAP] FOREIGN KEY([MaNhaCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNhaCC])
GO
ALTER TABLE [dbo].[DANGKYCUNGCAP] CHECK CONSTRAINT [FK_DANGKYCUNGCAP_NHACUNGCAP]
GO
USE [master]
GO
ALTER DATABASE [Dethimau] SET  READ_WRITE 
GO
