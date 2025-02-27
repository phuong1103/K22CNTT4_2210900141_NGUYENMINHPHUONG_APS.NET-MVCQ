USE [Nmpk22cntt4Lesson11]
GO
/****** Object:  Table [dbo].[NmpCategory]    Script Date: 7/4/2024 11:58:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpCategory](
	[NmpID] [int] NOT NULL,
	[NmpCateName] [nvarchar](50) NULL,
	[NmpStatus] [bit] NULL,
 CONSTRAINT [PK_NmpCategory] PRIMARY KEY CLUSTERED 
(
	[NmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NmpProduct]    Script Date: 7/4/2024 11:58:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpProduct](
	[NmpId2210900141] [nvarchar](50) NOT NULL,
	[NmpProName] [nvarchar](50) NULL,
	[NmpQty] [int] NULL,
	[NmpPrice] [float] NULL,
	[NmpCateId] [int] NULL,
	[NmpActive] [bit] NULL,
 CONSTRAINT [PK_NmpProduct] PRIMARY KEY CLUSTERED 
(
	[NmpId2210900141] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NmpCategory] ([NmpID], [NmpCateName], [NmpStatus]) VALUES (1, N'2210900141', 1)
INSERT [dbo].[NmpCategory] ([NmpID], [NmpCateName], [NmpStatus]) VALUES (2, N'iphone', 0)
INSERT [dbo].[NmpCategory] ([NmpID], [NmpCateName], [NmpStatus]) VALUES (3, N'SamSung', 1)
GO
INSERT [dbo].[NmpProduct] ([NmpId2210900141], [NmpProName], [NmpQty], [NmpPrice], [NmpCateId], [NmpActive]) VALUES (N'2210900141', N'Nguyễn Minh Phương', 10, 1000, 1, 1)
INSERT [dbo].[NmpProduct] ([NmpId2210900141], [NmpProName], [NmpQty], [NmpPrice], [NmpCateId], [NmpActive]) VALUES (N'P001', N'Iphone 11 Promax', 1, 2000, 2, 1)
INSERT [dbo].[NmpProduct] ([NmpId2210900141], [NmpProName], [NmpQty], [NmpPrice], [NmpCateId], [NmpActive]) VALUES (N'P002', N'Iphone 15 Pro', 3, 2500, 1, 0)
GO
ALTER TABLE [dbo].[NmpProduct]  WITH CHECK ADD  CONSTRAINT [FK_NmpProduct_NmpCategory] FOREIGN KEY([NmpCateId])
REFERENCES [dbo].[NmpCategory] ([NmpID])
GO
ALTER TABLE [dbo].[NmpProduct] CHECK CONSTRAINT [FK_NmpProduct_NmpCategory]
GO
