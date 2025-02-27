USE [2210900141_nguyenminhphuong_ontap]
GO
/****** Object:  Table [dbo].[Nmp_Account]    Script Date: 17/07/2024 6:04:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nmp_Account](
	[Nmp_ID] [nchar](10) NOT NULL,
	[Nmp_UserName] [nvarchar](50) NULL,
	[Nmp_PassWord] [nvarchar](50) NULL,
	[Nmp_FullName] [nvarchar](50) NULL,
	[Nmp_Email] [nvarchar](50) NULL,
	[Nmp_Phone] [int] NULL,
	[Nmp_Active] [bit] NULL,
 CONSTRAINT [PK_Nmp_Account] PRIMARY KEY CLUSTERED 
(
	[Nmp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nmp_Sach]    Script Date: 17/07/2024 6:04:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nmp_Sach](
	[Nmp_MaSach] [nchar](10) NOT NULL,
	[Nmp_TenSach] [nvarchar](150) NULL,
	[Nmp_SoTrang] [int] NULL,
	[Nmp_NamXB] [int] NULL,
	[Nmp_MaTG] [nchar](10) NULL,
	[Nmp_TrangThai] [bit] NULL,
 CONSTRAINT [PK_Nmp_Sach] PRIMARY KEY CLUSTERED 
(
	[Nmp_MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NmpTacGia]    Script Date: 17/07/2024 6:04:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpTacGia](
	[Nmp_MaTG] [nchar](10) NOT NULL,
	[Nmp_TenTG] [nvarchar](100) NULL,
 CONSTRAINT [PK_NmpTacGia] PRIMARY KEY CLUSTERED 
(
	[Nmp_MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nmp_Sach]  WITH CHECK ADD  CONSTRAINT [FK_Nmp_Sach_NmpTacGia] FOREIGN KEY([Nmp_MaTG])
REFERENCES [dbo].[NmpTacGia] ([Nmp_MaTG])
GO
ALTER TABLE [dbo].[Nmp_Sach] CHECK CONSTRAINT [FK_Nmp_Sach_NmpTacGia]
GO
