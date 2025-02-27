USE [NmpK22cntt4Lesson10]
GO
/****** Object:  Table [dbo].[NmpAccount]    Script Date: 7/3/2024 2:43:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NmpAccount](
	[NmpID] [int] NOT NULL,
	[NmpUserName] [nvarchar](50) NULL,
	[NmpPassword] [nvarchar](50) NULL,
	[NmpFullName] [nvarchar](50) NULL,
	[NmpEmail] [nvarchar](50) NULL,
	[NmpPhone] [nvarchar](50) NULL,
	[NmpActive] [bit] NULL,
 CONSTRAINT [PK_NmpAccount] PRIMARY KEY CLUSTERED 
(
	[NmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NmpAccount] ([NmpID], [NmpUserName], [NmpPassword], [NmpFullName], [NmpEmail], [NmpPhone], [NmpActive]) VALUES (1, N'MinhPhuong', N'Phuong@2004', N'Nguyễn Minh Phương', N'van.convet@gmail.com', N'0348124474', 1)
INSERT [dbo].[NmpAccount] ([NmpID], [NmpUserName], [NmpPassword], [NmpFullName], [NmpEmail], [NmpPhone], [NmpActive]) VALUES (2, N'Huong', N'Huong@2004', N'Đàm Thúy Hường', N'thuyhuong08@gmail.com', N'0123456789', 1)
GO
