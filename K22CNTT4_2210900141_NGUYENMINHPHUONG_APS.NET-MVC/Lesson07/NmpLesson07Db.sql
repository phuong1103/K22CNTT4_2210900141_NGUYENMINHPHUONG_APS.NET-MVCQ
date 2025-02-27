--USE [NmpK22CNTT4 Lesson07Db]
GO
/****** Object:  Table [dbo].[NmpKhoa]    Script Date: 6/12/2024 4:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpKhoa](
	[NmpMaKhoa] [nchar](10) NOT NULL,
	[NmpTenKhoa] [nvarchar](50) NULL,
	[NmpTrangThai] [bit] NULL,
 CONSTRAINT [PK_NmpKhoa] PRIMARY KEY CLUSTERED 
(
	[NmpMaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NmpSinhVien]    Script Date: 6/12/2024 4:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpSinhVien](
	[NmpMaSV] [nchar](10) NOT NULL,
	[NmpHoSV] [nvarchar](50) NULL,
	[NmpTenSV] [nvarchar](50) NULL,
	[NmpPhai] [bit] NULL,
	[NmpEmail] [nvarchar](50) NULL,
	[NmpPhone] [nvarchar](50) NULL,
	[NmpMaKH] [nchar](10) NULL,
 CONSTRAINT [PK_NmpSinhVien] PRIMARY KEY CLUSTERED 
(
	[NmpMaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NmpKhoa] ([NmpMaKhoa], [NmpTenKhoa], [NmpTrangThai]) VALUES (N'K22Cntt3  ', N'K22cntt3', 1)
INSERT [dbo].[NmpKhoa] ([NmpMaKhoa], [NmpTenKhoa], [NmpTrangThai]) VALUES (N'K22CNTT4  ', N'K22CNTT4', 1)
GO
INSERT [dbo].[NmpSinhVien] ([NmpMaSV], [NmpHoSV], [NmpTenSV], [NmpPhai], [NmpEmail], [NmpPhone], [NmpMaKH]) VALUES (N'2210900141', N'Nguyễn Minh', N'Phương', 0, NULL, NULL, NULL)
GO
