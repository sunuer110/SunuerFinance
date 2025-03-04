/****** Object:  Table [dbo].[Accounting]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting](
	[AccountingID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[CategoryID] [int] NULL,
	[AccountingTitle] [nvarchar](200) NULL,
	[AccountingPrice] [decimal](18, 2) NULL,
	[AccountingTime] [datetime] NULL,
	[AccountingType] [int] NULL,
	[AccountingFiles] [nvarchar](max) NULL,
	[AccountingDesn] [nvarchar](500) NULL,
	[Auditor] [int] NULL,
	[AuditStatus] [int] NULL,
	[AuditTime] [datetime] NULL,
	[AuditDesn] [nvarchar](500) NULL,
 CONSTRAINT [PK__Accounti__F309AA69104A4721] PRIMARY KEY CLUSTERED 
(
	[AccountingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingCategory]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[CategoryTitle] [nvarchar](50) NULL,
	[Sorts] [int] NULL,
	[CategoryDesn] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingCategoryLog]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingCategoryLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogUserID] [int] NULL,
	[LogAbout] [nvarchar](200) NULL,
	[CategoryID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[CategoryTitle] [nvarchar](50) NULL,
	[Sorts] [int] NULL,
	[CategoryDesn] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingLog]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogUserID] [int] NULL,
	[LogAbout] [nvarchar](200) NULL,
	[AccountingID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[CategoryID] [int] NULL,
	[AccountingTitle] [nvarchar](200) NULL,
	[AccountingPrice] [decimal](18, 2) NULL,
	[AccountingTime] [datetime] NULL,
	[AccountingType] [int] NULL,
	[AccountingFiles] [nvarchar](max) NULL,
	[AccountingDesn] [nvarchar](500) NULL,
	[Auditor] [int] NULL,
	[AuditStatus] [int] NULL,
	[AuditTime] [datetime] NULL,
	[AuditDesn] [nvarchar](500) NULL,
 CONSTRAINT [PK__Accounti__3214EC27495BD33C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[Del] [int] NULL,
	[AdminName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[AdminNick] [nvarchar](50) NULL,
	[Statues] [int] NULL,
	[LoginAttempts] [int] NULL,
	[LoginAttemptsLast] [datetime] NULL,
	[openid] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminLoginLog]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLoginLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[AdminName] [nvarchar](50) NULL,
	[IsOK] [int] NULL,
 CONSTRAINT [PK_AdminLoginLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminPower]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminPower](
	[PowerID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[PowerTitle] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminPush]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminPush](
	[AdminPushID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[PushAdminID] [int] NULL,
	[ReceivePushAdminID] [int] NULL,
	[PushOver] [int] NULL,
	[openid] [nvarchar](50) NULL,
	[PushContent] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminPushID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminRoles]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRoles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[Del] [int] NULL,
	[RolesTitle] [nvarchar](50) NULL,
	[Powers] [nvarchar](2000) NULL,
 CONSTRAINT [PK_AdminRoles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategory](
	[BigID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[Statues] [int] NULL,
	[KeyTitle] [nvarchar](50) NULL,
	[BigTitle] [nvarchar](50) NULL,
	[KeyWord] [nvarchar](200) NULL,
	[KeyDesn] [nvarchar](2000) NULL,
	[Images] [nvarchar](200) NULL,
	[Sorts] [int] NULL,
	[ImagesPhone] [nvarchar](200) NULL,
	[SiteUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_ArticleCategory] PRIMARY KEY CLUSTERED 
(
	[BigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleCategoryLog]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategoryLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogUserID] [int] NULL,
	[LogAbout] [nvarchar](200) NULL,
	[BigID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[Statues] [int] NULL,
	[BigTitle] [nvarchar](50) NULL,
	[KeyTitle] [nvarchar](200) NULL,
	[KeyWord] [nvarchar](200) NULL,
	[KeyDesn] [nvarchar](500) NULL,
	[Images] [nvarchar](200) NULL,
	[ImagesPhone] [nvarchar](200) NULL,
	[Sorts] [int] NULL,
	[SiteUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[Del] [int] NULL,
	[BigID] [int] NULL,
	[ArticleTitle] [nvarchar](200) NULL,
	[Articlekey] [nvarchar](200) NULL,
	[ArticleDesn] [nvarchar](2000) NULL,
	[Statues] [int] NULL,
	[Sorts] [int] NULL,
	[NavSites] [nvarchar](2000) NULL,
	[ReleaseTime] [datetime] NULL,
	[Hits] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[Images] [nvarchar](2000) NULL,
	[Desn] [nvarchar](max) NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounting] ON 
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (1, 1, CAST(N'2025-01-23T14:05:17.747' AS DateTime), 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), 0, 3, N'Sunuer.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-23T14:04:50.000' AS DateTime), 1, N'', N'域名续费', 1, 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), N'OK')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (2, 4, CAST(N'2025-01-23T15:09:19.503' AS DateTime), 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), 0, 1, N'充电', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2025-01-23T15:08:51.000' AS DateTime), 1, N'', N'1', 1, 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), N'')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (3, 4, CAST(N'2025-01-24T17:25:36.157' AS DateTime), 0, NULL, 0, 15, N'打印纸', CAST(102.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:19.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (4, 4, CAST(N'2025-01-24T17:26:29.510' AS DateTime), 0, NULL, 0, 8, N'2025.01', CAST(500.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:55.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (5, 4, CAST(N'2025-01-24T17:26:53.867' AS DateTime), 4, CAST(N'2025-01-24T17:27:18.920' AS DateTime), 0, 9, N'2025.01', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:34.000' AS DateTime), 1, N'', N'', 0, 0, NULL, N'')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (6, 4, CAST(N'2025-01-24T17:27:12.503' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 10, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (7, 4, CAST(N'2025-01-24T17:27:40.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 11, N'2025.01', CAST(8000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:23.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (8, 4, CAST(N'2025-01-24T17:28:00.530' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 17, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:48.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (9, 4, CAST(N'2025-01-24T17:28:16.643' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 18, N'2025.01', CAST(0.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:28:04.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (10, 5, CAST(N'2025-01-24T17:29:53.760' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 5, N'Sunuer2025', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:22.000' AS DateTime), 1, N'', N'Sunuer服务器支出', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (11, 5, CAST(N'2025-01-24T17:30:46.080' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 3, N'iwantstudy.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (12, 5, CAST(N'2025-01-24T17:31:19.450' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'车票202501', CAST(150.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:30:52.000' AS DateTime), 1, N'', N'出差打车费用', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (13, 5, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'飞机票202501', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:31:22.000' AS DateTime), 1, N'', N'河南郑州出差 ', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (14, 5, CAST(N'2025-01-24T17:32:38.140' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 24, N'服务器2台', CAST(19600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:32:15.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (15, 1, CAST(N'2025-01-25T14:24:44.957' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'MES合同', CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:24:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (16, 1, CAST(N'2025-01-25T14:25:28.277' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 31, N'工程合同', CAST(100000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (17, 1, CAST(N'2025-01-25T14:26:24.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'MES第一笔款', CAST(300000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:54.000' AS DateTime), 0, N'', N'30%', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (18, 1, CAST(N'2025-02-15T16:24:53.647' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 30, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 0, NULL, N'电话：17666666666', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (19, 1, CAST(N'2025-02-15T16:26:33.793' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 0, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-02-15T16:26:33.780' AS DateTime), 0, NULL, N'电话：17666666666', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (20, 1, CAST(N'2025-02-20T19:37:08.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), 0, 22, N'出差', CAST(300.00 AS Decimal(18, 2)), CAST(N'2025-02-20T19:36:33.000' AS DateTime), 1, N'', N'郑州火车票', 1, 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Accounting] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountingCategory] ON 
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (1, 1, CAST(N'2025-01-23T13:48:23.733' AS DateTime), 0, NULL, 0, 0, 1, N'0', 1, N'日常开销', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (2, 1, CAST(N'2025-01-23T13:48:39.747' AS DateTime), 0, NULL, 0, 0, 1, N'0', 2, N'网络', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (3, 1, CAST(N'2025-01-23T13:48:47.950' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'域名', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (4, 1, CAST(N'2025-01-23T13:48:55.420' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'空间', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (5, 1, CAST(N'2025-01-23T13:49:02.117' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'服务器', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (6, 1, CAST(N'2025-01-23T13:54:41.950' AS DateTime), 1, CAST(N'2025-01-24T17:05:26.877' AS DateTime), 0, 0, 1, N'0', 6, N'人情往来', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (7, 1, CAST(N'2025-01-23T13:55:01.290' AS DateTime), 0, NULL, 0, 0, 1, N'0', 7, N'工资', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (8, 1, CAST(N'2025-01-23T13:55:12.497' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'会计', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (9, 1, CAST(N'2025-01-23T13:55:29.513' AS DateTime), 1, CAST(N'2025-01-24T17:04:52.103' AS DateTime), 0, 7, 2, N'0,7', 7, N'员工1', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (10, 1, CAST(N'2025-01-23T13:55:55.933' AS DateTime), 1, CAST(N'2025-01-24T17:05:00.833' AS DateTime), 0, 7, 2, N'0,7', 7, N'员工2', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (11, 1, CAST(N'2025-01-24T17:05:11.370' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'员工3', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (12, 1, CAST(N'2025-01-24T17:05:58.327' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'过年', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (13, 1, CAST(N'2025-01-24T17:06:09.807' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'结婚', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (14, 1, CAST(N'2025-01-24T17:06:22.917' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'孩子', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (15, 1, CAST(N'2025-01-24T17:07:03.047' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'办公用品', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (16, 1, CAST(N'2025-01-24T17:07:17.660' AS DateTime), 1, CAST(N'2025-01-24T17:07:25.733' AS DateTime), 0, 0, 1, N'0', 16, N'交税', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (17, 1, CAST(N'2025-01-24T17:07:35.413' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'增值税', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (18, 1, CAST(N'2025-01-24T17:07:42.907' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'所得税', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (19, 1, CAST(N'2025-01-24T17:07:58.457' AS DateTime), 0, NULL, 0, 0, 1, N'0', 19, N'MES项目1', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (20, 1, CAST(N'2025-01-24T17:08:09.303' AS DateTime), 1, CAST(N'2025-01-24T17:15:04.067' AS DateTime), 0, 0, 1, N'0', 20, N'系统集成', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (21, 1, CAST(N'2025-01-24T17:13:20.070' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'房租水电', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (22, 1, CAST(N'2025-01-24T17:13:53.917' AS DateTime), 1, CAST(N'2025-01-24T17:14:12.860' AS DateTime), 0, 19, 2, N'0,19', 19, N'日常', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (23, 1, CAST(N'2025-01-24T17:14:19.007' AS DateTime), 1, CAST(N'2025-01-24T17:15:04.070' AS DateTime), 0, 20, 2, N'0,20', 20, N'日常', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (24, 1, CAST(N'2025-01-24T17:14:27.103' AS DateTime), 1, CAST(N'2025-01-24T17:14:35.440' AS DateTime), 0, 19, 2, N'0,19', 19, N'硬件', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (25, 1, CAST(N'2025-01-24T17:15:13.493' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'硬件', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (26, 1, CAST(N'2025-01-24T17:15:20.020' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'其它', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (27, 1, CAST(N'2025-01-24T17:15:33.117' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商1', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (28, 1, CAST(N'2025-01-24T17:15:46.900' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商2', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (29, 1, CAST(N'2025-01-24T17:16:05.027' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商3', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (30, 1, CAST(N'2025-01-25T14:23:31.687' AS DateTime), 0, NULL, 0, 19, 2, N'0,19', 19, N'合同', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (31, 1, CAST(N'2025-01-25T14:23:39.780' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'合同', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[AccountingCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountingCategoryLog] ON 
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (1, CAST(N'2025-01-23T13:48:23.733' AS DateTime), 1, N'添加分类', 1, 1, CAST(N'2025-01-23T13:48:23.733' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'日常开销', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (2, CAST(N'2025-01-23T13:48:39.753' AS DateTime), 1, N'添加分类', 2, 1, CAST(N'2025-01-23T13:48:39.747' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'网络', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (3, CAST(N'2025-01-23T13:48:47.957' AS DateTime), 1, N'添加分类', 3, 1, CAST(N'2025-01-23T13:48:47.950' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'域名', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (4, CAST(N'2025-01-23T13:48:55.427' AS DateTime), 1, N'添加分类', 4, 1, CAST(N'2025-01-23T13:48:55.420' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'空间', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (5, CAST(N'2025-01-23T13:49:02.123' AS DateTime), 1, N'添加分类', 5, 1, CAST(N'2025-01-23T13:49:02.117' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'服务器', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (6, CAST(N'2025-01-23T13:54:41.960' AS DateTime), 1, N'添加分类', 6, 1, CAST(N'2025-01-23T13:54:41.950' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'送礼', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (7, CAST(N'2025-01-23T13:55:01.293' AS DateTime), 1, N'添加分类', 7, 1, CAST(N'2025-01-23T13:55:01.290' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'工资', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (8, CAST(N'2025-01-23T13:55:12.503' AS DateTime), 1, N'添加分类', 8, 1, CAST(N'2025-01-23T13:55:12.497' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'会计', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (9, CAST(N'2025-01-23T13:55:29.513' AS DateTime), 1, N'添加分类', 9, 1, CAST(N'2025-01-23T13:55:29.513' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'肖喜阳', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (10, CAST(N'2025-01-23T13:55:55.940' AS DateTime), 1, N'添加分类', 10, 1, CAST(N'2025-01-23T13:55:55.933' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'HaiDong', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (11, CAST(N'2025-01-24T17:04:52.103' AS DateTime), 1, N'编辑分类', 9, 1, CAST(N'2025-01-23T13:55:29.513' AS DateTime), 1, CAST(N'2025-01-24T17:04:52.103' AS DateTime), 0, 7, 2, N'0,7', 7, N'员工1', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (12, CAST(N'2025-01-24T17:05:00.837' AS DateTime), 1, N'编辑分类', 10, 1, CAST(N'2025-01-23T13:55:55.933' AS DateTime), 1, CAST(N'2025-01-24T17:05:00.833' AS DateTime), 0, 7, 2, N'0,7', 7, N'员工2', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (13, CAST(N'2025-01-24T17:05:11.370' AS DateTime), 1, N'添加分类', 11, 1, CAST(N'2025-01-24T17:05:11.370' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'员工3', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (14, CAST(N'2025-01-24T17:05:26.880' AS DateTime), 1, N'编辑分类', 6, 1, CAST(N'2025-01-23T13:54:41.950' AS DateTime), 1, CAST(N'2025-01-24T17:05:26.877' AS DateTime), 0, 0, 1, N'0', 0, N'人情往来', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (15, CAST(N'2025-01-24T17:05:58.330' AS DateTime), 1, N'添加分类', 12, 1, CAST(N'2025-01-24T17:05:58.327' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'过年', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (16, CAST(N'2025-01-24T17:06:09.807' AS DateTime), 1, N'添加分类', 13, 1, CAST(N'2025-01-24T17:06:09.807' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'结婚', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (17, CAST(N'2025-01-24T17:06:22.920' AS DateTime), 1, N'添加分类', 14, 1, CAST(N'2025-01-24T17:06:22.917' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'孩子', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (18, CAST(N'2025-01-24T17:07:03.047' AS DateTime), 1, N'添加分类', 15, 1, CAST(N'2025-01-24T17:07:03.047' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'办公用品', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (19, CAST(N'2025-01-24T17:07:17.663' AS DateTime), 1, N'添加分类', 16, 1, CAST(N'2025-01-24T17:07:17.660' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'缴税', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (20, CAST(N'2025-01-24T17:07:25.737' AS DateTime), 1, N'编辑分类', 16, 1, CAST(N'2025-01-24T17:07:17.660' AS DateTime), 1, CAST(N'2025-01-24T17:07:25.733' AS DateTime), 0, 0, 1, N'0', 0, N'交税', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (21, CAST(N'2025-01-24T17:07:35.413' AS DateTime), 1, N'添加分类', 17, 1, CAST(N'2025-01-24T17:07:35.413' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'增值税', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (22, CAST(N'2025-01-24T17:07:42.907' AS DateTime), 1, N'添加分类', 18, 1, CAST(N'2025-01-24T17:07:42.907' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'所得税', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (23, CAST(N'2025-01-24T17:07:58.460' AS DateTime), 1, N'添加分类', 19, 1, CAST(N'2025-01-24T17:07:58.457' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'MES项目1', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (24, CAST(N'2025-01-24T17:08:09.307' AS DateTime), 1, N'添加分类', 20, 1, CAST(N'2025-01-24T17:08:09.303' AS DateTime), 0, NULL, 0, 0, 1, N'0', 0, N'MES项目2', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (25, CAST(N'2025-01-24T17:13:20.073' AS DateTime), 1, N'添加分类', 21, 1, CAST(N'2025-01-24T17:13:20.070' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'房租水电', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (26, CAST(N'2025-01-24T17:13:53.920' AS DateTime), 1, N'添加分类', 22, 1, CAST(N'2025-01-24T17:13:53.917' AS DateTime), 0, NULL, 0, 19, 2, N'0,19', 19, N'路费', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (27, CAST(N'2025-01-24T17:14:12.863' AS DateTime), 1, N'编辑分类', 22, 1, CAST(N'2025-01-24T17:13:53.917' AS DateTime), 1, CAST(N'2025-01-24T17:14:12.860' AS DateTime), 0, 19, 2, N'0,19', 19, N'日常', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (28, CAST(N'2025-01-24T17:14:19.007' AS DateTime), 1, N'添加分类', 23, 1, CAST(N'2025-01-24T17:14:19.007' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'日常', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (29, CAST(N'2025-01-24T17:14:27.103' AS DateTime), 1, N'添加分类', 24, 1, CAST(N'2025-01-24T17:14:27.103' AS DateTime), 0, NULL, 0, 19, 2, N'0,19', 19, N'服务器', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (30, CAST(N'2025-01-24T17:14:35.440' AS DateTime), 1, N'编辑分类', 24, 1, CAST(N'2025-01-24T17:14:27.103' AS DateTime), 1, CAST(N'2025-01-24T17:14:35.440' AS DateTime), 0, 19, 2, N'0,19', 19, N'硬件', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (31, CAST(N'2025-01-24T17:15:04.070' AS DateTime), 1, N'编辑分类', 20, 1, CAST(N'2025-01-24T17:08:09.303' AS DateTime), 1, CAST(N'2025-01-24T17:15:04.067' AS DateTime), 0, 0, 1, N'0', 0, N'系统集成', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (32, CAST(N'2025-01-24T17:15:13.497' AS DateTime), 1, N'添加分类', 25, 1, CAST(N'2025-01-24T17:15:13.493' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'硬件', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (33, CAST(N'2025-01-24T17:15:20.020' AS DateTime), 1, N'添加分类', 26, 1, CAST(N'2025-01-24T17:15:20.020' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'其它', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (34, CAST(N'2025-01-24T17:15:33.117' AS DateTime), 1, N'添加分类', 27, 1, CAST(N'2025-01-24T17:15:33.117' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商1', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (35, CAST(N'2025-01-24T17:15:46.903' AS DateTime), 1, N'添加分类', 28, 1, CAST(N'2025-01-24T17:15:46.900' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商2', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (36, CAST(N'2025-01-24T17:16:05.030' AS DateTime), 1, N'添加分类', 29, 1, CAST(N'2025-01-24T17:16:05.027' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'供应商3', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (37, CAST(N'2025-01-25T14:23:31.687' AS DateTime), 1, N'添加分类', 30, 1, CAST(N'2025-01-25T14:23:31.687' AS DateTime), 0, NULL, 0, 19, 2, N'0,19', 19, N'合同', 0, N'')
GO
INSERT [dbo].[AccountingCategoryLog] ([ID], [LogDate], [LogUserID], [LogAbout], [CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (38, CAST(N'2025-01-25T14:23:39.783' AS DateTime), 1, N'添加分类', 31, 1, CAST(N'2025-01-25T14:23:39.780' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'合同', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[AccountingCategoryLog] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountingLog] ON 
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (1, CAST(N'2025-01-23T14:05:17.747' AS DateTime), 1, N'添加记账', 1, 1, CAST(N'2025-01-23T14:05:17.747' AS DateTime), 0, NULL, 0, 3, N'Sunuer.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-23T14:04:50.000' AS DateTime), 1, N'', N'域名续费', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (2, CAST(N'2025-01-23T14:05:33.937' AS DateTime), 1, N'审核记账', 1, 1, CAST(N'2025-01-23T14:05:17.747' AS DateTime), 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), 0, 3, N'Sunuer.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-23T14:04:50.000' AS DateTime), 1, N'', N'域名续费', 1, 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), N'OK')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (3, CAST(N'2025-01-23T15:09:19.507' AS DateTime), 4, N'添加记账', 2, 4, CAST(N'2025-01-23T15:09:19.503' AS DateTime), 0, NULL, 0, 1, N'充电', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2025-01-23T15:08:51.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (4, CAST(N'2025-01-23T15:09:42.347' AS DateTime), 4, N'编辑记账', 2, 4, CAST(N'2025-01-23T15:09:19.503' AS DateTime), 4, CAST(N'2025-01-23T15:09:42.343' AS DateTime), 0, 1, N'充电', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2025-01-23T15:08:51.000' AS DateTime), 1, N'', N'1', 0, 0, NULL, N'')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (5, CAST(N'2025-01-23T15:14:55.603' AS DateTime), 1, N'审核记账', 2, 4, CAST(N'2025-01-23T15:09:19.503' AS DateTime), 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), 0, 1, N'充电', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2025-01-23T15:08:51.000' AS DateTime), 1, N'', N'1', 1, 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), N'')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (6, CAST(N'2025-01-24T17:25:36.157' AS DateTime), 4, N'添加记账', 3, 4, CAST(N'2025-01-24T17:25:36.157' AS DateTime), 0, NULL, 0, 15, N'打印纸', CAST(102.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:19.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (7, CAST(N'2025-01-24T17:26:29.513' AS DateTime), 4, N'添加记账', 4, 4, CAST(N'2025-01-24T17:26:29.510' AS DateTime), 0, NULL, 0, 8, N'2025.01', CAST(500.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:55.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (8, CAST(N'2025-01-24T17:26:53.867' AS DateTime), 4, N'添加记账', 5, 4, CAST(N'2025-01-24T17:26:53.867' AS DateTime), 0, NULL, 0, 9, N'2025.01', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:34.000' AS DateTime), 0, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (9, CAST(N'2025-01-24T17:27:12.503' AS DateTime), 4, N'添加记账', 6, 4, CAST(N'2025-01-24T17:27:12.503' AS DateTime), 0, NULL, 0, 10, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:57.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (10, CAST(N'2025-01-24T17:27:18.920' AS DateTime), 4, N'编辑记账', 5, 4, CAST(N'2025-01-24T17:26:53.867' AS DateTime), 4, CAST(N'2025-01-24T17:27:18.920' AS DateTime), 0, 9, N'2025.01', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:34.000' AS DateTime), 1, N'', N'', 0, 0, NULL, N'')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (11, CAST(N'2025-01-24T17:27:40.917' AS DateTime), 4, N'添加记账', 7, 4, CAST(N'2025-01-24T17:27:40.913' AS DateTime), 0, NULL, 0, 11, N'2025.01', CAST(8000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:23.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (12, CAST(N'2025-01-24T17:28:00.530' AS DateTime), 4, N'添加记账', 8, 4, CAST(N'2025-01-24T17:28:00.530' AS DateTime), 0, NULL, 0, 17, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:48.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (13, CAST(N'2025-01-24T17:28:16.643' AS DateTime), 4, N'添加记账', 9, 4, CAST(N'2025-01-24T17:28:16.643' AS DateTime), 0, NULL, 0, 18, N'2025.01', CAST(0.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:28:04.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (14, CAST(N'2025-01-24T17:29:53.763' AS DateTime), 5, N'添加记账', 10, 5, CAST(N'2025-01-24T17:29:53.760' AS DateTime), 0, NULL, 0, 5, N'Sunuer2025', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:22.000' AS DateTime), 1, N'', N'Sunuer服务器支出', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (15, CAST(N'2025-01-24T17:30:46.083' AS DateTime), 5, N'添加记账', 11, 5, CAST(N'2025-01-24T17:30:46.080' AS DateTime), 0, NULL, 0, 3, N'iwantstudy.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:57.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (16, CAST(N'2025-01-24T17:31:19.453' AS DateTime), 5, N'添加记账', 12, 5, CAST(N'2025-01-24T17:31:19.450' AS DateTime), 0, NULL, 0, 22, N'车票', CAST(500.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:30:52.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (17, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 5, N'添加记账', 13, 5, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 0, NULL, 0, 22, N'飞机票202501', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:31:22.000' AS DateTime), 0, N'', N'河南郑州出差 ', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (18, CAST(N'2025-01-24T17:31:51.050' AS DateTime), 5, N'编辑记账', 13, 5, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 5, CAST(N'2025-01-24T17:31:51.047' AS DateTime), 0, 22, N'飞机票202501', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:31:22.000' AS DateTime), 1, N'', N'河南郑州出差 ', 0, 0, NULL, N'')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (19, CAST(N'2025-01-24T17:32:12.987' AS DateTime), 5, N'编辑记账', 12, 5, CAST(N'2025-01-24T17:31:19.450' AS DateTime), 5, CAST(N'2025-01-24T17:32:12.983' AS DateTime), 0, 22, N'车票202501', CAST(150.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:30:52.000' AS DateTime), 1, N'', N'出差打车费用', 0, 0, NULL, N'')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (20, CAST(N'2025-01-24T17:32:38.143' AS DateTime), 5, N'添加记账', 14, 5, CAST(N'2025-01-24T17:32:38.140' AS DateTime), 0, NULL, 0, 24, N'服务器2台', CAST(19600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:32:15.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (21, CAST(N'2025-01-25T14:24:44.957' AS DateTime), 1, N'添加记账', 15, 1, CAST(N'2025-01-25T14:24:44.957' AS DateTime), 0, NULL, 0, 30, N'MES合同', CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:24:04.000' AS DateTime), 2, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (22, CAST(N'2025-01-25T14:25:28.277' AS DateTime), 1, N'添加记账', 16, 1, CAST(N'2025-01-25T14:25:28.277' AS DateTime), 0, NULL, 0, 31, N'工程合同', CAST(100000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:04.000' AS DateTime), 2, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (23, CAST(N'2025-01-25T14:26:24.917' AS DateTime), 1, N'添加记账', 17, 1, CAST(N'2025-01-25T14:26:24.913' AS DateTime), 0, NULL, 0, 30, N'MES第一笔款', CAST(300000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:54.000' AS DateTime), 0, N'', N'30%', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (24, CAST(N'2025-02-15T16:24:53.647' AS DateTime), 1, N'添加记账', 18, 1, CAST(N'2025-02-15T16:24:53.647' AS DateTime), 0, NULL, 0, 30, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 0, NULL, N'电话：17666666666', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (25, CAST(N'2025-02-15T16:26:33.797' AS DateTime), 1, N'添加记账', 19, 1, CAST(N'2025-02-15T16:26:33.793' AS DateTime), 0, NULL, 0, 0, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-02-15T16:26:33.780' AS DateTime), 0, NULL, N'电话：17666666666', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (26, CAST(N'2025-02-20T19:37:08.917' AS DateTime), 1, N'添加记账', 20, 1, CAST(N'2025-02-20T19:37:08.913' AS DateTime), 0, NULL, 0, 22, N'出差', CAST(300.00 AS Decimal(18, 2)), CAST(N'2025-02-20T19:36:33.000' AS DateTime), 1, N'', N'郑州火车票', 0, 0, NULL, NULL)
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (27, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 1, N'审核记账', 20, 1, CAST(N'2025-02-20T19:37:08.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), 0, 22, N'出差', CAST(300.00 AS Decimal(18, 2)), CAST(N'2025-02-20T19:36:33.000' AS DateTime), 1, N'', N'郑州火车票', 1, 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (28, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 1, N'审核记账', 19, 1, CAST(N'2025-02-15T16:26:33.793' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 0, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-02-15T16:26:33.780' AS DateTime), 0, NULL, N'电话：17666666666', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (29, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 1, N'审核记账', 18, 1, CAST(N'2025-02-15T16:24:53.647' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 30, N'MES第二笔', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 0, NULL, N'电话：17666666666', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (30, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 1, N'审核记账', 17, 1, CAST(N'2025-01-25T14:26:24.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'MES第一笔款', CAST(300000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:54.000' AS DateTime), 0, N'', N'30%', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (31, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 1, N'审核记账', 16, 1, CAST(N'2025-01-25T14:25:28.277' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 31, N'工程合同', CAST(100000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (32, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 1, N'审核记账', 15, 1, CAST(N'2025-01-25T14:24:44.957' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'MES合同', CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:24:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (33, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 1, N'审核记账', 14, 5, CAST(N'2025-01-24T17:32:38.140' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 24, N'服务器2台', CAST(19600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:32:15.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (34, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 1, N'审核记账', 13, 5, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'飞机票202501', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:31:22.000' AS DateTime), 1, N'', N'河南郑州出差 ', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (35, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 1, N'审核记账', 12, 5, CAST(N'2025-01-24T17:31:19.450' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'车票202501', CAST(150.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:30:52.000' AS DateTime), 1, N'', N'出差打车费用', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (36, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 1, N'审核记账', 11, 5, CAST(N'2025-01-24T17:30:46.080' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 3, N'iwantstudy.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (37, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 1, N'审核记账', 10, 5, CAST(N'2025-01-24T17:29:53.760' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 5, N'Sunuer2025', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:22.000' AS DateTime), 1, N'', N'Sunuer服务器支出', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (38, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 1, N'审核记账', 9, 4, CAST(N'2025-01-24T17:28:16.643' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 18, N'2025.01', CAST(0.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:28:04.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (39, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 1, N'审核记账', 8, 4, CAST(N'2025-01-24T17:28:00.530' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 17, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:48.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (40, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 1, N'审核记账', 7, 4, CAST(N'2025-01-24T17:27:40.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 11, N'2025.01', CAST(8000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:23.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
INSERT [dbo].[AccountingLog] ([ID], [LogDate], [LogUserID], [LogAbout], [AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (41, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 1, N'审核记账', 6, 4, CAST(N'2025-01-24T17:27:12.503' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 10, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[AccountingLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (1, 0, CAST(N'2024-10-23T14:23:25.210' AS DateTime), CAST(N'2024-11-22T15:05:37.073' AS DateTime), 1, 0, N'niqiu', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 1, N'泥鳅', 0, 0, CAST(N'2025-02-26T15:12:55.840' AS DateTime), N'123456')
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (2, 1, CAST(N'2024-11-22T09:03:45.333' AS DateTime), CAST(N'2024-11-22T10:24:49.350' AS DateTime), 1, 1, N'1', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, N'2', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (3, 1, CAST(N'2024-11-22T09:16:32.057' AS DateTime), CAST(N'2024-11-22T10:24:55.223' AS DateTime), 1, 1, N'1', N'30-9F-C7-D3-BC-53-BB-63-AC-42-E3-59-26-0A-C7-40', 1, N'2', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (4, 1, CAST(N'2025-01-07T08:34:33.957' AS DateTime), CAST(N'2025-01-23T14:21:36.113' AS DateTime), 1, 0, N'yuangong', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, N'员工', 0, 0, CAST(N'2025-01-24T17:25:10.043' AS DateTime), NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (5, 1, CAST(N'2025-01-10T10:12:46.890' AS DateTime), CAST(N'2025-01-24T17:24:24.003' AS DateTime), 1, 0, N'yuangong2', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, N'员工2', 0, 0, CAST(N'2025-01-24T17:28:31.493' AS DateTime), NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (6, 1, CAST(N'2025-01-10T15:04:03.370' AS DateTime), CAST(N'2025-01-24T17:24:43.333' AS DateTime), 1, 0, N'yuangong3', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, N'员工3', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [AdminName], [PassWord], [RoleID], [AdminNick], [Statues], [LoginAttempts], [LoginAttemptsLast], [openid]) VALUES (7, 1, CAST(N'2025-01-13T09:49:07.777' AS DateTime), CAST(N'2025-01-13T09:49:17.640' AS DateTime), 1, 1, N'zl', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, N'赵柳', 0, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (1, 0, CAST(N'2024-10-23T14:24:08.477' AS DateTime), NULL, 0, 0, 0, N'权限管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (2, 0, CAST(N'2024-10-23T14:24:11.987' AS DateTime), NULL, 0, 0, 1, N'权限添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (3, 0, CAST(N'2024-10-23T14:24:15.367' AS DateTime), NULL, 0, 0, 1, N'权限编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (4, 0, CAST(N'2024-10-23T14:24:18.950' AS DateTime), NULL, 0, 0, 1, N'权限删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (5, 0, CAST(N'2024-10-23T14:24:22.710' AS DateTime), NULL, 0, 0, 0, N'角色管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (6, 0, CAST(N'2024-10-23T14:24:25.660' AS DateTime), NULL, 0, 0, 5, N'角色添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (7, 0, CAST(N'2024-10-23T14:24:28.490' AS DateTime), NULL, 0, 0, 5, N'角色编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (8, 0, CAST(N'2024-10-23T14:24:34.993' AS DateTime), NULL, 0, 0, 5, N'角色删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (9, 0, CAST(N'2024-10-23T14:24:38.563' AS DateTime), NULL, 0, 0, 0, N'管理员管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (10, 0, CAST(N'2024-10-23T14:24:41.600' AS DateTime), NULL, 0, 0, 9, N'管理员添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (11, 0, CAST(N'2024-10-23T14:24:48.350' AS DateTime), NULL, 0, 0, 9, N'管理员编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (12, 0, CAST(N'2024-10-23T14:24:49.173' AS DateTime), NULL, 0, 0, 9, N'管理员删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (13, 1, CAST(N'2024-11-21T15:26:35.610' AS DateTime), NULL, 0, 0, 0, N'我的设置')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (14, 1, CAST(N'2024-11-21T15:26:37.307' AS DateTime), NULL, 0, 0, 13, N'基本资料')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (15, 1, CAST(N'2024-11-21T15:27:06.943' AS DateTime), CAST(N'2024-11-21T16:14:13.460' AS DateTime), 1, 0, 13, N'修改密码')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (16, 1, CAST(N'2024-11-21T15:27:37.940' AS DateTime), CAST(N'2024-11-21T16:15:50.470' AS DateTime), 1, 0, 0, N'文章管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (17, 1, CAST(N'2024-11-21T15:56:28.290' AS DateTime), NULL, 0, 0, 16, N'文章分类')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (18, 1, CAST(N'2024-11-21T16:20:57.590' AS DateTime), NULL, 0, 0, 16, N'文章分类添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (19, 0, CAST(N'2024-11-22T15:09:06.470' AS DateTime), NULL, 0, 0, 16, N'文章分类编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (20, 0, CAST(N'2024-11-22T15:09:09.760' AS DateTime), NULL, 0, 0, 16, N'文章分类删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (21, 0, CAST(N'2024-11-22T15:09:20.227' AS DateTime), NULL, 0, 0, 16, N'文章添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (22, 0, CAST(N'2024-11-22T15:09:24.637' AS DateTime), NULL, 0, 0, 16, N'文章编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (23, 0, CAST(N'2024-11-22T15:09:27.413' AS DateTime), NULL, 0, 0, 16, N'文章删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (24, 0, CAST(N'2024-11-26T23:27:08.400' AS DateTime), NULL, 0, 0, 0, N'系统设置')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (212, 0, CAST(N'2025-02-15T16:39:24.917' AS DateTime), NULL, 0, 0, 200, N'导入')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (213, 0, CAST(N'2025-02-15T16:39:32.400' AS DateTime), NULL, 0, 0, 200, N'导出')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (200, 0, CAST(N'2025-01-16T09:53:01.783' AS DateTime), NULL, 0, 0, 0, N'记账管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (201, 0, CAST(N'2025-01-16T09:53:19.973' AS DateTime), NULL, 0, 0, 200, N'记账分类')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (202, 0, CAST(N'2025-01-16T09:53:36.340' AS DateTime), NULL, 0, 0, 200, N'记账分类添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (203, 0, CAST(N'2025-01-16T09:53:53.063' AS DateTime), NULL, 0, 0, 200, N'记账分类编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (204, 0, CAST(N'2025-01-16T09:54:18.933' AS DateTime), NULL, 0, 0, 200, N'记账分类删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (205, 0, CAST(N'2025-01-16T09:55:05.340' AS DateTime), NULL, 0, 0, 200, N'记账')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (206, 0, CAST(N'2025-01-16T09:55:23.897' AS DateTime), NULL, 0, 0, 200, N'记账添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (207, 0, CAST(N'2025-01-16T09:55:37.393' AS DateTime), NULL, 0, 0, 200, N'记账编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (208, 0, CAST(N'2025-01-16T09:55:49.837' AS DateTime), NULL, 0, 0, 200, N'记账删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (209, 0, CAST(N'2025-01-16T09:56:10.930' AS DateTime), NULL, 0, 0, 200, N'记账审核')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (210, 0, CAST(N'2025-01-16T09:56:29.853' AS DateTime), NULL, 0, 0, 200, N'记账查看详情')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (211, 0, CAST(N'2025-01-16T09:56:44.410' AS DateTime), NULL, 0, 0, 200, N'记账查看所有人数据')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (158, 0, CAST(N'2025-01-13T14:34:55.497' AS DateTime), NULL, 0, 0, 125, N'字典管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (159, 0, CAST(N'2025-01-13T14:35:14.450' AS DateTime), NULL, 0, 0, 125, N'字典添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (160, 0, CAST(N'2025-01-13T14:35:29.250' AS DateTime), NULL, 0, 0, 125, N'字典编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (161, 0, CAST(N'2025-01-13T14:35:46.110' AS DateTime), NULL, 0, 0, 125, N'字典删除')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (162, 0, CAST(N'2025-01-13T14:36:12.477' AS DateTime), NULL, 0, 0, 125, N'字典数据管理')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (163, 0, CAST(N'2025-01-13T14:36:26.703' AS DateTime), NULL, 0, 0, 125, N'字典数据添加')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (164, 0, CAST(N'2025-01-13T14:36:41.693' AS DateTime), NULL, 0, 0, 125, N'字典数据编辑')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [PowerTitle]) VALUES (165, 0, CAST(N'2025-01-13T14:37:02.613' AS DateTime), NULL, 0, 0, 125, N'字典数据删除')
GO
SET IDENTITY_INSERT [dbo].[AdminRoles] ON 
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (1, 0, CAST(N'2024-10-23T14:25:32.850' AS DateTime), CAST(N'2025-02-20T19:35:38.963' AS DateTime), 1, 0, N'超级管理员', N'|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|200|201|202|203|204|205|206|207|208|209|210|211|212|213|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (2, 1, CAST(N'2024-11-21T22:33:37.020' AS DateTime), CAST(N'2024-11-21T22:52:22.670' AS DateTime), 1, 1, N'2', N'|1|2|3|4|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (3, 1, CAST(N'2024-11-21T22:34:07.760' AS DateTime), CAST(N'2024-11-21T22:54:53.757' AS DateTime), 1, 1, N'3', N'|1|2|3|4|5|6|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (4, 1, CAST(N'2024-11-21T22:55:03.930' AS DateTime), CAST(N'2024-11-21T22:55:08.703' AS DateTime), 1, 1, N'22', N'|1|2|3|4|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (5, 1, CAST(N'2024-11-21T22:55:35.943' AS DateTime), CAST(N'2024-11-21T22:55:40.993' AS DateTime), 1, 1, N'2', N'|1|2|3|4|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (6, 1, CAST(N'2024-11-21T22:56:09.190' AS DateTime), CAST(N'2024-11-21T22:56:13.233' AS DateTime), 1, 1, N'3', N'|1|2|3|4|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [RolesTitle], [Powers]) VALUES (7, 1, CAST(N'2024-11-22T09:16:41.673' AS DateTime), CAST(N'2025-01-23T15:01:10.253' AS DateTime), 1, 0, N'员工', N'|13|14|15|200|205|206|207|210|')
GO
SET IDENTITY_INSERT [dbo].[AdminRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[ArticleCategory] ON 
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (1, 1, CAST(N'2024-11-28T10:59:15.923' AS DateTime), NULL, 0, 0, 0, 1, N'0', 1, 0, N'菜单', N'菜单', N'菜单', N'', N'/images/morenimg.png', 0, N'/images/morenimg.png', NULL)
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (2, 1, CAST(N'2024-11-28T11:00:12.990' AS DateTime), CAST(N'2024-12-03T11:06:42.490' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 0, N'案例', N'案例', N'案例', N'案例', N'/Uploadfile/2024/12/42498982-2530-4d6b-80dd-c20573b57eff.jpg', 0, N'/images/morenimg.png', N'Cases')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (3, 1, CAST(N'2024-11-28T11:00:38.570' AS DateTime), CAST(N'2024-12-03T14:01:33.807' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 0, N'新闻资讯', N'新闻资讯', N'新闻资讯', N'新闻资讯', N'/Uploadfile/2024/12/8e773f36-b270-437b-a426-d4e5ea9bb644.jpg', 0, N'/images/morenimg.png', N'News')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (4, 1, CAST(N'2024-11-28T11:00:53.253' AS DateTime), CAST(N'2024-12-03T14:01:52.930' AS DateTime), 1, 0, 3, 3, N'0,1,3', 1, 0, N'新闻资讯', N'新闻资讯', N'新闻资讯', N'新闻资讯', N'/Uploadfile/2024/12/26db936f-f478-4969-9412-3e5ef946f419.jpg', 0, N'/images/morenimg.png', N'News?nid=4')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (5, 1, CAST(N'2024-11-28T11:01:08.050' AS DateTime), CAST(N'2024-12-03T14:02:04.597' AS DateTime), 1, 0, 3, 3, N'0,1,3', 1, 0, N'开发知识', N'开发知识', N'开发知识', N'', N'/Uploadfile/2024/12/660c2906-6da5-4983-abe2-3d21d9958bde.jpg', 0, N'/images/morenimg.png', N'News?nid=5')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (6, 1, CAST(N'2024-11-28T11:01:20.407' AS DateTime), CAST(N'2024-12-03T14:02:19.583' AS DateTime), 1, 0, 3, 3, N'0,1,3', 1, 0, N'IT资讯', N'IT资讯', N'IT资讯', N'IT资讯', N'/Uploadfile/2024/12/ead5ff6e-3e62-4bc6-b746-3e7f58696688.jpg', 0, N'/images/morenimg.png', N'News?nid=6')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (7, 1, CAST(N'2024-11-28T11:01:40.713' AS DateTime), CAST(N'2024-12-03T15:28:33.720' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 0, N'关于我们', N'关于我们', N'关于我们', N'', N'/Uploadfile/2024/12/88494729-acd0-4dd6-a843-ef3891a32e84.jpg', 0, N'/images/morenimg.png', N'About')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (8, 1, CAST(N'2024-11-28T11:01:52.713' AS DateTime), CAST(N'2024-12-03T15:28:53.353' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 0, N'联系我们', N'联系我们', N'联系我们', N'联系我们', N'/Uploadfile/2024/12/3fe62bc1-e6ba-4444-9e51-aeebed00c1be.jpg', 0, N'/images/morenimg.png', N'Contact')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (9, 1, CAST(N'2024-11-28T11:03:51.827' AS DateTime), CAST(N'2024-12-03T10:01:11.270' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 1, N'轮显', N'轮显', N'轮显', N'轮显', N'/images/morenimg.png', 0, N'/images/morenimg.png', N'')
GO
INSERT [dbo].[ArticleCategory] ([BigID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [Statues], [KeyTitle], [BigTitle], [KeyWord], [KeyDesn], [Images], [Sorts], [ImagesPhone], [SiteUrl]) VALUES (10, 1, CAST(N'2024-12-02T13:37:23.397' AS DateTime), CAST(N'2024-12-03T11:00:27.900' AS DateTime), 1, 0, 1, 2, N'0,1', 1, 0, N'产品', N'产品', N'产品', N'', N'/images/morenimg.png', 10, N'/images/morenimg.png', N'https://www.sunuer.com')
GO
SET IDENTITY_INSERT [dbo].[ArticleCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Articles] ON 
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (1, 1, CAST(N'2024-12-02T11:48:17.593' AS DateTime), NULL, 0, 0, 9, N'MES系统', N'MES Manage', N'项目看板管理、生产过程控制、工具工装管理等功能', 0, 0, N'', CAST(N'2024-12-02T11:46:36.000' AS DateTime), 0, N'/Uploadfile/2024/12/b36d95a1-f6f6-460c-9617-60464f4f4a46.jpg', N'/Uploadfile/2024/12/e2136ad6-76ef-4695-b228-aba59caf8850.jpg', N'')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (2, 1, CAST(N'2024-12-02T11:54:18.433' AS DateTime), CAST(N'2024-12-06T09:04:14.993' AS DateTime), 1, 0, 9, N'Sunuer Manage', N'Sunuer Manage管理系统', N'现代管理的全能解决方案', 0, 0, N'', CAST(N'2024-12-02T11:52:38.000' AS DateTime), 0, N'/Uploadfile/2024/12/5c940969-d0fb-4797-97f1-d128e3cf5102.png', N'', N'<p><br></p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (3, 1, CAST(N'2024-12-02T11:56:59.227' AS DateTime), CAST(N'2024-12-06T09:04:09.150' AS DateTime), 1, 0, 9, N'Sunuer Easy', N'Sunuer Easy代码生成工具', N'更聪明地编码，更快速地构建', 0, 0, N'', CAST(N'2024-12-02T11:54:22.000' AS DateTime), 0, N'/Uploadfile/2024/12/0459e895-2758-49ec-a6d3-ed5dda8bdf96.png', N'', N'<p>更聪明地编码，更快速地构建</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (4, 1, CAST(N'2024-12-02T20:38:47.773' AS DateTime), CAST(N'2024-12-04T09:52:31.727' AS DateTime), 1, 0, 2, N'兼职考勤系统', N'兼职考勤系统案例', N'兼职考勤系统案例', 0, 0, N'', CAST(N'2024-12-02T20:37:14.000' AS DateTime), 0, N'/Uploadfile/2024/12/b7cded25-5b10-464c-a8d0-877555aff8a4.png', N'', N'<p><img src="/Uploadfile/2024/12/dd794838-02e2-41a1-9fa6-fa7db7684b7e.png" style="width: 375px;"><br></p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (5, 1, CAST(N'2024-12-03T08:49:30.333' AS DateTime), NULL, 0, 0, 7, N'关于我们', N'关于我们,SunuerManage', N'关于我们,SunuerManage,更聪明的管理，更高效的工作', 0, 0, N'', CAST(N'2024-12-03T08:47:37.000' AS DateTime), 0, N'/images/morenimg.png', N'', N'<p style="text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">一直想写一套跨平台支持的管理系统，做为我们开发项目的主要框架，达到节省时间、减少重复工作，加速项目的上线与迭代。</p><p style="margin-top: 15px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">于是写了 Sunuer Manage管理系统， 她适用于各种 Web 应用程序，如 网站管理后台、会员中心、内容管理系统（CMS）、客户关系管理系统（CRM）、办公自动化系统（OA）,MES系统 等。</p><p style="margin-top: 15px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">无论是企业级应用，还是个人项目，都能满足您的需求。系统会持续更新优化，致力于为开发者提供更加高效的开发体验。</p><p style="margin-bottom: 0px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">—— HaiDong（<a href="https://www.sunuer.com/" target="_blank" style="color: rgb(1, 170, 237);">sunuer.com</a>）</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (6, 1, CAST(N'2024-12-03T08:49:51.567' AS DateTime), NULL, 0, 0, 8, N'联系我们', N'联系我们', N'联系我们', 0, 0, N'', CAST(N'2024-12-03T08:49:34.000' AS DateTime), 0, N'/images/morenimg.png', N'', N'<p style="text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">一直想写一套跨平台支持的管理系统，做为我们开发项目的主要框架，达到节省时间、减少重复工作，加速项目的上线与迭代。</p><p style="margin-top: 15px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">于是写了 Sunuer Manage管理系统， 她适用于各种 Web 应用程序，如 网站管理后台、会员中心、内容管理系统（CMS）、客户关系管理系统（CRM）、办公自动化系统（OA）,MES系统 等。</p><p style="margin-top: 15px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">无论是企业级应用，还是个人项目，都能满足您的需求。系统会持续更新优化，致力于为开发者提供更加高效的开发体验。</p><p style="margin-bottom: 0px; text-indent: 2em; color: rgba(0, 0, 0, 0.85); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif;">—— HaiDong（<a href="https://www.sunuer.com/" target="_blank" style="color: rgb(1, 170, 237);">sunuer.com</a>）</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (7, 1, CAST(N'2024-12-03T08:58:20.527' AS DateTime), CAST(N'2024-12-03T09:00:12.073' AS DateTime), 1, 0, 5, N'Razor 与 JavaScript 代码混用', N'Razor 与 JavaScript 代码混用', N'Razor 与 JavaScript 代码混用：在 Razor 中，你使用了 @: 来直接输出 JavaScript。确保每个 @: 后面的 JavaScript 代码格式正确。', 0, 0, N'', CAST(N'2024-12-03T08:57:29.000' AS DateTime), 0, N'/Uploadfile/2024/12/bc40c475-1b54-4ff3-8c51-af9e6175494d.png', N'', N'<p><strong style="color: rgb(102, 102, 102); font-family: 微软雅黑, Arial, Helvetica, sans-serif; font-size: 16px;">Razor 与 JavaScript 代码混用</strong><span style="color: rgb(102, 102, 102); font-family: 微软雅黑, Arial, Helvetica, sans-serif; font-size: 16px;">：在 Razor 中，你使用了&nbsp;</span><code style="color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255);">@:</code><span style="color: rgb(102, 102, 102); font-family: 微软雅黑, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;来直接输出 JavaScript。确保每个&nbsp;</span><code style="color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255);">@:</code><span style="color: rgb(102, 102, 102); font-family: 微软雅黑, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;后面的 JavaScript 代码格式正确。</span></p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code> @if (Model.AdminModel.Roles.IndexOf("|23|") &gt; -1)
    {
        @:html += `&lt;button class="layui-btn layui-btn-sm layui-btn-danger del" data-type="del" del="${data.data[i].PowerID}"&gt;
                    &lt;i class="layui-icon"&gt;&amp;#xe640;&lt;/i&gt;删除&lt;/button&gt;`;
    }</code></pre><h3 style="margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;&quot;, Tahoma, Verdana, Helvetica, sans-serif; font-size: 16px; color: rgb(102, 102, 102);"><br></h3><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">解释：</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">字符串拼接：</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;"><br></span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp; 确保 html 变量从一开始就定义好，且保持字符串拼接时的格式一致性。</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">条件判断与 Razor 语法：</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;"><br></span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp;在 @if 语句中，用 @: 来输出 JavaScript 代码。这样确保 Razor 能正确渲染条件判断。&nbsp;</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">HTML 结构：</span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;"><br></span></font></p><p style="margin-bottom: 0px;"><font color="#666666" face="Arial, , Tahoma, Verdana, Helvetica, sans-serif"><span style="font-size: 16px;">&nbsp; &nbsp; 保留了原始的 HTML 结构，并确保每个部分的代码都正确拼接。</span></font></p><p><span style="color: rgb(102, 102, 102); font-family: 微软雅黑, Arial, Helvetica, sans-serif; font-size: 16px;"><br></span></p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (8, 1, CAST(N'2024-12-03T08:59:48.880' AS DateTime), CAST(N'2024-12-03T09:01:30.033' AS DateTime), 1, 0, 5, N'ASP.NET中@()是 Razor 中用于嵌套表达式的语法，表示动态生成内容', N'ASP.NET中@()是 Razor 中用于嵌套表达式的语法，表示动态生成内容', N'ASP.NET中@()是 Razor 中用于嵌套表达式的语法，表示动态生成内容', 0, 0, N'', CAST(N'2024-12-03T08:58:23.000' AS DateTime), 0, N'/Uploadfile/2024/12/86108d27-392e-4a7c-aa43-ae9c67a18f40.png', N'', N'<pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>&lt;input type="radio" name="Statues" value="0" title="正常" lay-filter="Statues" @(Model.Statues == 0 ? "checked" : "")&gt;
&lt;input type="radio" name="Statues" value="1" title="冻结" lay-filter="Statues" @(Model.Statues == 1 ? "checked" : "")&gt;</code></pre><p><br></p><p>说明：</p><p>@() 的使用：</p><p><br></p><p>@() 是 Razor 中用于嵌套表达式的语法，表示动态生成内容。</p><p>在这里，我们用它将条件表达式 Model.Statues == 0 ? "checked" : "" 嵌套到 HTML 中。</p><p>动态生成属性：</p><p><br></p><p>通过 @(条件 ? "属性值" : "") 的形式，可以动态决定是否添加 checked 属性。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (9, 1, CAST(N'2024-12-03T09:01:06.110' AS DateTime), CAST(N'2024-12-03T09:01:41.070' AS DateTime), 1, 0, 5, N'MSSQL中计算日期星期几', N'MSSQL中计算日期星期几', N'MSSQL中计算日期星期几', 0, 0, N'', CAST(N'2024-12-03T09:00:23.000' AS DateTime), 0, N'/Uploadfile/2024/12/9207b86a-f274-4919-a64f-4f694be5a2c2.png', N'', N'<p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">在 MSSQL 中，可以使用&nbsp;<code>DATENAME</code>&nbsp;或&nbsp;<code>DATEPART</code>&nbsp;函数来计算某个日期对应的星期几。以下是两种常用的查询方式：</p><h3 style="margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;&quot;, Tahoma, Verdana, Helvetica, sans-serif; font-size: 16px; color: rgb(102, 102, 102);">使用&nbsp;<code>DATENAME</code>&nbsp;获取星期几的名称</h3><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;"><code>DATENAME</code>&nbsp;函数可以返回某个日期对应的星期名称（例如“Monday”或“星期一”）。</p><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;"><br></p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>DECLARE @Date DATETIME = ''2024-11-06'';
SELECT DATENAME(WEEKDAY, @Date) AS WeekdayName;
</code></pre><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;"><br></p><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">输出示例：</p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>WeekdayName
-----------
Wednesday
</code></pre><h3 style="margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;&quot;, Tahoma, Verdana, Helvetica, sans-serif; font-size: 16px; color: rgb(102, 102, 102);"><br></h3><h3 style="margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;&quot;, Tahoma, Verdana, Helvetica, sans-serif; font-size: 16px; color: rgb(102, 102, 102);">使用&nbsp;<code>DATEPART</code>&nbsp;获取星期几的数字</h3><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;"><code>DATEPART</code>&nbsp;函数返回某个日期对应的星期几的数值（1 表示星期日，7 表示星期六，默认的设置是美国标准，可能因不同的语言设置而不同）。</p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>DECLARE @Date DATETIME = ''2024-11-06'';
SELECT DATEPART(WEEKDAY, @Date) AS WeekdayNumber;
</code></pre><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">输出示例：</p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>WeekdayNumber
-------------
4
</code></pre><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">&nbsp;</p><h3 style="margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;&quot;, Tahoma, Verdana, Helvetica, sans-serif; font-size: 16px; color: rgb(102, 102, 102);">自定义显示星期几（中文）</h3><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">如果想要显示中文“星期一”、“星期二”等，可以结合&nbsp;<code>CASE</code>&nbsp;语句手动转换：</p><pre style="margin-bottom: 0px; padding: 1rem; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-color: rgb(37, 152, 237); font-size: 16px;"><code>DECLARE @Date DATETIME = ''2024-11-06'';
SELECT 
    CASE DATEPART(WEEKDAY, @Date)
        WHEN 1 THEN ''星期日''
        WHEN 2 THEN ''星期一''
        WHEN 3 THEN ''星期二''
        WHEN 4 THEN ''星期三''
        WHEN 5 THEN ''星期四''
        WHEN 6 THEN ''星期五''
        WHEN 7 THEN ''星期六''
    END AS WeekdayName;
</code></pre><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;"><br></p><p style="margin-bottom: 0px; font-family: 微软雅黑, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-size: 16px;">这样可以根据具体需求来获取日期的星期几信息。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (10, 1, CAST(N'2024-12-03T09:02:20.993' AS DateTime), NULL, 0, 0, 5, N'nvarchar 最大能定义多大', N'nvarchar 最大能定义多大', N'在 MSSQL 2014版本以上 中，NVARCHAR 数据类型的最大定义长度如下：

NVARCHAR(n)：n 的最大值是 4000。因此，NVARCHAR(4000) 可以存储最多 4000 个字符（每个字符占用 2 字节，共 8000 字节）。', 0, 0, N'', CAST(N'2024-12-03T09:01:43.000' AS DateTime), 0, N'/Uploadfile/2024/12/f02b093d-c43b-40ac-936b-acd3e695ac4a.png', N'', N'<p>在 MSSQL 2014版本以上 中，NVARCHAR 数据类型的最大定义长度如下：</p><p><br></p><p>NVARCHAR(n)：n 的最大值是 4000。因此，NVARCHAR(4000) 可以存储最多 4000 个字符（每个字符占用 2 字节，共 8000 字节）。</p><p>NVARCHAR(MAX)：使用 MAX 时，可以存储最多 2^31-1 个字符，也就是约 2 GB 的字符数据（每个字符占用 2 字节，总共 4 GB）。</p><p>说明</p><p>使用 NVARCHAR(MAX) 可以存储大于 4000 个字符的文本，适合存储较大的字符串内容，如长文本、文档内容等。</p><p>对于长度确定的小文本，建议使用具体的长度（例如 NVARCHAR(100)）以节省存储空间。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (11, 1, CAST(N'2024-12-03T09:02:59.913' AS DateTime), CAST(N'2024-12-03T10:51:01.180' AS DateTime), 1, 0, 5, N'ASP.NET字符串不足位数补全', N'ASP.NET字符串不足位数补全', N'要将一个数或字符串不足7位时在后面补齐到7位，您可以在 .NET 中使用 PadRight 方法。以下是一个示例代码，使用空格或指定字符进行填充：', 0, 0, N'', CAST(N'2024-12-03T09:02:23.000' AS DateTime), 0, N'/Uploadfile/2024/12/2ac5a59d-2378-4bc2-8b98-d59161a9483f.png', N'', N'<p>要将一个数或字符串不足7位时在后面补齐到7位，您可以在 .NET 中使用 PadRight 方法。以下是一个示例代码，使用空格或指定字符进行填充：</p><p><br></p><p>string input = "12345"; // 示例输入</p><p>string paddedInput = input.PadRight(7, ''0''); // 用字符 ''0'' 补齐到7位</p><p><br></p><p>Console.WriteLine(paddedInput); // 输出: 1234500</p><p>在这个例子中，PadRight(7, ''0'') 会检查 input 是否小于7位，不足的话就在后面补上 ''0''，直到达到7位。如果输入已经达到或超过7位，则不会添加填充字符。</p><p><br></p><p>&nbsp;</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (12, 1, CAST(N'2024-12-03T09:56:04.107' AS DateTime), CAST(N'2024-12-03T09:58:23.973' AS DateTime), 1, 0, 4, N'马斯克申请禁令以阻止 OpenAI 向营利性机构转变', N'马斯克申请禁令以阻止 OpenAI 向营利性机构转变', N'马斯克申请禁令以阻止 OpenAI 向营利性机构转变', 0, 0, N'', CAST(N'2024-12-03T09:03:02.000' AS DateTime), 0, N'/Uploadfile/2024/12/cca1b07e-ad7d-4d70-98f6-9a5faff3836f.png', N'', N'<p>据 TechCrunch 报道，马斯克的律师团队已向美国加州北区联邦地区法院申请初步禁令，指控 OpenAI、其联合创始人、投资者微软等多方存在反竞争行为，并要求法院阻止这些行为。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (13, 1, CAST(N'2024-12-03T09:56:22.870' AS DateTime), CAST(N'2024-12-03T09:58:17.453' AS DateTime), 1, 0, 4, N'交通运输部：10 月网约车订单信息达 10.07 亿单，环比上升 1.9%', N'交通运输部：10 月网约车订单信息达 10.07 亿单，环比上升 1.9%', N'交通运输部：10 月网约车订单信息达 10.07 亿单，环比上升 1.9%', 0, 0, N'', CAST(N'2024-12-03T09:56:06.000' AS DateTime), 0, N'/Uploadfile/2024/12/cb54d479-8709-4443-a43c-eac4fbd1772d.png', N'', N'<p>交通运输部网约车监管信息交互系统发布的 2024 年 10 月份网约车行业运行基本情况显示，各地共发放网约车驾驶员证 748.3 万本、车辆运输证 320.6 万本，环比分别增长 1.4%、2.1%。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (14, 1, CAST(N'2024-12-03T09:56:40.817' AS DateTime), CAST(N'2024-12-03T09:58:01.347' AS DateTime), 1, 0, 4, N'马斯克 X 平台将推出“恶搞账号”专用标签，便于用户辨别真假名人', N'马斯克 X 平台将推出“恶搞账号”专用标签，便于用户辨别真假名人', N'马斯克 X 平台将推出“恶搞账号”专用标签，便于用户辨别真假名人', 0, 0, N'', CAST(N'2024-12-03T09:56:27.000' AS DateTime), 0, N'/Uploadfile/2024/12/d6d18721-b785-464d-ad10-2b86310a4f2c.png', N'', N'<p>如果该标签正式推出，并且“恶搞账号”采用它们的话，用户将能在相对应账号的资料页面及帖子中看到“恶搞账号”标签，从而更难将恶搞账号的内容与真实人物的账号混淆。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (15, 1, CAST(N'2024-12-03T09:58:44.353' AS DateTime), NULL, 0, 0, 4, N'超 80 家媒体公司指控 Meta 存在不正当竞争行为，明年西班牙法庭见', N'超 80 家媒体公司指控 Meta 存在不正当竞争行为，明年西班牙法庭见', N'超 80 家媒体公司指控 Meta 存在不正当竞争行为，明年西班牙法庭见', 0, 0, N'', CAST(N'2024-12-03T09:58:27.000' AS DateTime), 0, N'/Uploadfile/2024/12/511db2f4-07ed-4751-a2e9-c5e09cab3a7c.png', N'', N'<p>这些媒体认为，Meta 通过其 Facebook、Instagram 和 Whatsapp 平台“广泛”且“系统性”地使用用户的个人数据，使其在推出个性化广告时占有不正当竞争优势，从而构成了不正当竞争。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (16, 1, CAST(N'2024-12-03T09:59:00.617' AS DateTime), CAST(N'2024-12-03T10:59:04.710' AS DateTime), 1, 0, 4, N'泄露镜像显示微软曾计划为 Win10X 半人马座双屏设备 UWP 应用使用类圆形托盘图标', N'泄露镜像显示微软曾计划为 Win10X 半人马座双屏设备 UWP 应用使用类圆形托盘图标', N'泄露镜像显示微软曾计划为 Win10X 半人马座双屏设备 UWP 应用使用类圆形托盘图标', 0, 0, N'', CAST(N'2024-12-03T09:58:49.000' AS DateTime), 0, N'/Uploadfile/2024/12/6b4a2ee4-158f-40e6-bd54-a83efe21dc3b.png', N'', N'<p>数据挖掘者 RinGO_01 在 X 平台发帖，展示了微软曾试图为双屏设备打造的 Windows 10 X “仙女座”Build 18875.1000，显示微软曾经计划为 Surface Neo 等设备采用更激进的界面设计。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (17, 1, CAST(N'2024-12-03T10:05:40.053' AS DateTime), CAST(N'2024-12-03T10:12:13.910' AS DateTime), 1, 0, 6, N'中国联通反诈中心：每天拨出 8000 多通劝阻电话，每月避免直接经济损失 7 亿余元', N'中国联通反诈中心：每天拨出 8000 多通劝阻电话，每月避免直接经济损失 7 亿余元', N'中国联通反诈中心：每天拨出 8000 多通劝阻电话，每月避免直接经济损失 7 亿余元', 0, 0, N'', CAST(N'2024-12-03T10:05:22.000' AS DateTime), 0, N'/Uploadfile/2024/12/ba51c249-7074-4313-a374-d7c0853b13c6.png', N'', N'<p>中国联通反诈中心自 2023 年 6 月成立以来，每日拨打超 8000 通劝阻电话，每月避免直接经济损失超 7 亿元。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (18, 1, CAST(N'2024-12-03T10:05:57.933' AS DateTime), CAST(N'2024-12-03T10:11:51.290' AS DateTime), 1, 0, 6, N'印度强化数字监管：将治理在线游戏成瘾与网络犯罪等问题', N'印度强化数字监管：将治理在线游戏成瘾与网络犯罪等问题', N'印度强化数字监管：将治理在线游戏成瘾与网络犯罪等问题', 0, 0, N'', CAST(N'2024-12-03T10:05:46.000' AS DateTime), 0, N'/Uploadfile/2024/12/7c09a5ca-71d5-42e9-9751-f3c0adc5eec7.png', N'', N'<p>印度政府加强数字监管，要求社交媒体平台清理涉及在线游戏成瘾等内容，打击网络犯罪。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (19, 1, CAST(N'2024-12-03T10:06:14.547' AS DateTime), CAST(N'2024-12-03T10:11:36.040' AS DateTime), 1, 0, 6, N'上海市域铁路机场联络线年内开通，车厢支持手机无线充及 USB-C 接口充电', N'上海市域铁路机场联络线年内开通，车厢支持手机无线充及 USB-C 接口充电', N'上海市域铁路机场联络线年内开通，车厢支持手机无线充及 USB-C 接口充电', 0, 0, N'', CAST(N'2024-12-03T10:06:03.000' AS DateTime), 0, N'/Uploadfile/2024/12/602b9fb6-556f-449b-a0cc-4491c2e4de11.png', N'', N'<p>上海市域铁路机场联络线将于年内开通，车厢内配备手机无线充电和 USB-C 接口。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (20, 1, CAST(N'2024-12-03T10:06:55.530' AS DateTime), CAST(N'2024-12-03T10:11:16.990' AS DateTime), 1, 0, 6, N'日产面临“多事之秋”：消息称首席财务官即将辞职', N'日产面临“多事之秋”：消息称首席财务官即将辞职', N'日产面临“多事之秋”：消息称首席财务官即将辞职', 0, 0, N'', CAST(N'2024-12-03T10:06:42.000' AS DateTime), 0, N'/Uploadfile/2024/12/7c20d88f-3f81-4d1e-83e0-0fdec90f7911.png', N'', N'<p>日产汽车公司首席财务官斯蒂芬·马被曝即将辞职，公司面临高层人事变动。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (21, 1, CAST(N'2024-12-03T10:07:14.933' AS DateTime), CAST(N'2024-12-11T00:24:22.857' AS DateTime), 1, 0, 6, N'激光雷达厂商速腾聚创今年前三季度总销量 38.19 万台，同比增长 259.6%', N'激光雷达厂商速腾聚创今年前三季度总销量 38.19 万台，同比增长 259.6%', N'激光雷达厂商速腾聚创今年前三季度总销量 38.19 万台，同比增长 259.6%', 0, 0, N'', CAST(N'2024-12-03T10:07:02.000' AS DateTime), 0, N'/Uploadfile/2024/12/ed31e847-b3c6-4050-84d7-a87c72c18adc.png', N'', N'<p><br></p><p>速腾聚创公布，今年前三季度总收入约 11.3 亿元，同比增长 91.5%，总销量达 38.19 万台。</p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (22, 1, CAST(N'2024-12-03T11:27:54.450' AS DateTime), CAST(N'2024-12-04T10:20:17.647' AS DateTime), 1, 0, 2, N'Sunuer Manage', N'Sunuer Manage管理系统', N'Sunuer Manage管理系统', 0, 0, N'', CAST(N'2024-12-03T11:27:44.000' AS DateTime), 0, N'/Uploadfile/2024/12/7213940f-9d7f-4ef9-8fe3-a44c770de993.png', N'', N'<p><img src="/Uploadfile/2024/12/40fddb59-f8f5-4f22-86fd-6a9727017c3e.png" style="width: 1243.67px;"></p>')
GO
INSERT [dbo].[Articles] ([ArticleID], [CreateUserID], [CreateDate], [UpdateDate], [UpdateUserID], [Del], [BigID], [ArticleTitle], [Articlekey], [ArticleDesn], [Statues], [Sorts], [NavSites], [ReleaseTime], [Hits], [Image], [Images], [Desn]) VALUES (23, 1, CAST(N'2024-12-03T11:28:05.357' AS DateTime), CAST(N'2024-12-04T10:20:09.887' AS DateTime), 1, 0, 2, N'Sunuer Easy', N'Sunuer Easy代码生成工具', N'Sunuer Easy代码生成工具', 0, 0, N'', CAST(N'2024-12-03T11:27:57.000' AS DateTime), 0, N'/Uploadfile/2024/12/9f5b47f3-5a24-463b-97c9-9610ee526737.png', N'', N'<p><img src="/Uploadfile/2024/12/d70c0924-645b-42bb-8c43-1175b270ab0e.png" style="width: 1243.67px;"><br></p>')
GO
SET IDENTITY_INSERT [dbo].[Articles] OFF
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Creat__7C6F7215]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Creat__7D63964E]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Updat__7E57BA87]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accounting__Del__7F4BDEC0]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Categ__004002F9]  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Accou__01342732]  DEFAULT ((0)) FOR [AccountingType]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Audit__02284B6B]  DEFAULT ((0)) FOR [Auditor]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Audit__031C6FA4]  DEFAULT ((0)) FOR [AuditStatus]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [LogUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__LogDa__190BB0C3]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__LogUs__19FFD4FC]  DEFAULT ((0)) FOR [LogUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Creat__1AF3F935]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Creat__1BE81D6E]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Updat__1CDC41A7]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__AccountingL__Del__1DD065E0]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Categ__1EC48A19]  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Accou__1FB8AE52]  DEFAULT ((0)) FOR [AccountingType]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Audit__20ACD28B]  DEFAULT ((0)) FOR [Auditor]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Audit__21A0F6C4]  DEFAULT ((0)) FOR [AuditStatus]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [RoleID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Statues]
GO
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_LoginAttempts]  DEFAULT ((0)) FOR [LoginAttempts]
GO
ALTER TABLE [dbo].[AdminLoginLog] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminLoginLog] ADD  DEFAULT ((0)) FOR [IsOK]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Creat__4D94879B]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Creat__4E88ABD4]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Updat__4F7CD00D]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPower__Del__5070F446]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Paren__5165187F]  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Power__52593CB8]  DEFAULT ((0)) FOR [PowerTitle]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [PushAdminID]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [ReceivePushAdminID]
GO
ALTER TABLE [dbo].[AdminPush] ADD  DEFAULT ((0)) FOR [PushOver]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  DEFAULT ((0)) FOR [Statues]
GO
ALTER TABLE [dbo].[ArticleCategory] ADD  CONSTRAINT [DF_ArticleCategory_Sorts]  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [LogUserID]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [Statues]
GO
ALTER TABLE [dbo].[ArticleCategoryLog] ADD  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Create__5FB337D6]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Create__60A75C0F]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Update__619B8048]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Del__628FA481]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__BigID__6383C8BA]  DEFAULT ((0)) FOR [BigID]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Statue__6477ECF3]  DEFAULT ((0)) FOR [Statues]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Sorts__656C112C]  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF__Articles__Hits__66603565]  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Add]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--增加一条记录
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:10:17
------------------------------------
CREATE Procedure [dbo].[Accounting_Add]
    @CreateUserID int,
    @CategoryID int,
    @AccountingTitle nvarchar(200),
	@AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingFiles nvarchar(max),
    @AccountingDesn nvarchar(500)
as
begin
	declare @fanhui int=0

	insert into [dbo].[Accounting] ( [CreateUserID], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn])
    values (@CreateUserID, @CategoryID, @AccountingTitle, @AccountingPrice, @AccountingTime, @AccountingType,@AccountingFiles, @AccountingDesn)
	select @fanhui=@@identity
	---插入日志语句
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),CreateUserID,'添加记账',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@fanhui
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_AddImport]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--增加一条记录
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:10:17
------------------------------------
create Procedure [dbo].[Accounting_AddImport]
    @CreateUserID int,
    @CategoryTitle nvarchar(50),
    @AccountingTitle nvarchar(200),
	@AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingDesn nvarchar(500)
as
begin
	declare @fanhui int=0
	declare @CategoryID int=0

	select top 1 @CategoryID=CategoryID from AccountingCategory where CategoryTitle=@CategoryTitle
	insert into [dbo].[Accounting] ( [CreateUserID], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],  [AccountingDesn])
    values (@CreateUserID, @CategoryID, @AccountingTitle, @AccountingPrice, @AccountingTime, @AccountingType, @AccountingDesn)
	select @fanhui=@@identity
	---插入日志语句
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),CreateUserID,'添加记账',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@fanhui
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Audit]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--记账审核
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:48:17
------------------------------------
CREATE Procedure [dbo].[Accounting_Audit]
    @AccountingID int,
    @UpdateUserID int,
	@AuditStatus int,
	@AuditDesn nvarchar(500)
AS
begin
	declare @fanhui int = 0
	-- 编辑审核人、审核状态等数据
    update [dbo].[Accounting]
    set  [UpdateUserID] = @UpdateUserID, [UpdateDate] = GETDATE(),  [Auditor] = @UpdateUserID, 
	[AuditStatus] = @AuditStatus, [AuditTime] = GETDATE(), [AuditDesn] = @AuditDesn
    where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT
	---插入日志语句
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'审核记账',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_ChuzhangGetCount30]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
-- 入账审核通过近30天的金额
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-22 15:42:29
------------------------------------
create Procedure [dbo].[Accounting_ChuzhangGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=1
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Delete]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--删除一条记录
--项目名称：Sunuer Manage
--表名：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:05:02
------------------------------------
CREATE Procedure [dbo].[Accounting_Delete]
    @AccountingID int,
    @UpdateUserID int
as
begin

	declare @fanhui int = 0

    update  [dbo].[Accounting] set Del=1 ,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT
	---插入日志语句
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'删除记账',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Get]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:19:29
------------------------------------
CREATE Procedure [dbo].[Accounting_Get]
    @CategoryID int, 
    @AccountingTitle nvarchar(50), 
	@AccountingType int,-- 类型
	@Star nvarchar(50),-- 开始时间
	@End nvarchar(50),-- 结束时间
	--@CreateUserName nvarchar(50),-- 创建人名
	@CreateUserID int,
	@AuditStatus nvarchar(50),-- 审核状态
	@AuditorUserName nvarchar(50),-- 审核人名
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @AccountingTitle 是否为空
if @AccountingTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (charindex(@AccountingTitle, n.AccountingTitle) > 0 or charindex(@AccountingTitle, n.AccountingDesn) > 0)';
end
if @CategoryID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

	if @AccountingType <> -1
    begin
		set @searchs = @searchs + ' and n.AccountingType=@AccountingType'
    end
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AuditStatus <> -1
    begin
		set @searchs = @searchs + ' and n.AuditStatus=@AuditStatus'
    end
	if @AuditorUserName <> ''
	begin
		set @searchs = @searchs + ' and charindex(@AuditorUserName, adm.AdminNick) > 0';
	end

	
set @s ='  select a.*from(
    select row_number() over(order by  n.AccountingID desc) as aid ,n.*,b.CategoryTitle,ad.AdminNick as CreateUserName
	,adm.AdminNick as AuditorUserName FROM  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 
	left join Admin as ad on ad.AdminID=n.CreateUserID
	left join Admin as adm on adm.AdminID=n.Auditor
	 where n.del=0 	'+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50),
@StartRecord int,@EndRecord int', 
@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName,@StartRecord,@EndRecord

GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetCount]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:25:29
------------------------------------
CREATE Procedure [dbo].[Accounting_GetCount]
    @CategoryID int, 
    @AccountingTitle nvarchar(50),
	@AccountingType int,-- 类型
	@Star nvarchar(50),-- 开始时间
	@End nvarchar(50),-- 结束时间
	--@CreateUserName nvarchar(50),-- 创建人名
	@CreateUserID int,
	@AuditStatus nvarchar(50),-- 审核状态
	@AuditorUserName nvarchar(50)-- 审核人名
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @AccountingTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
set @searchs = @searchs + ' and (charindex(@AccountingTitle, n.AccountingTitle) > 0 or charindex(@AccountingTitle, n.AccountingDesn) > 0)';
end
if @CategoryID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

if @AccountingType <> -1
    begin
		set @searchs = @searchs + ' and n.AccountingType=@AccountingType'
    end
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AuditStatus <> -1
    begin
		set @searchs = @searchs + ' and n.AuditStatus=@AuditStatus'
    end
	if @AuditorUserName <> ''
	begin
		set @searchs = @searchs + ' and charindex(@AuditorUserName, adm.AdminNick) > 0';
	end

set @s ='select Count(n.AccountingID) as Num from  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
	left join Admin as ad on ad.AdminID=n.CreateUserID
	left join Admin as adm on adm.AdminID=n.Auditor
	where n.del=0 '+@searchs;
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50)',
@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetCount30]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录每天数量
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:26:29
------------------------------------
create Procedure [dbo].[Accounting_GetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select count(AccountingID) as Number ,convert(varchar(11),CreateDate,111) as Datas from Accounting  where  Del=0  and @StarTime<=CreateDate  and @EndTime>=CreateDate group by convert(varchar(11),CreateDate,111)order by convert(varchar(11),CreateDate,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetLast]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Accounting获取上一条记录
--BY:XXY
--DateTime:2025-01-14 14:28:32
------------------------------------
create procedure [dbo].[Accounting_GetLast]
(
@AccountingID int
)
as

select top 1 AccountingID,AccountingTitle from Accounting   where CategoryID=(
select CategoryID from Accounting where AccountingID=@AccountingID
) and AccountingID<@AccountingID and del=0 and AccountingTime<getdate() order by AccountingID asc




GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetModel]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:33:29
------------------------------------
CREATE Procedure [dbo].[Accounting_GetModel]
    @AccountingID int
AS
begin
    select n.*,a.AdminNick as AuditorUserName from [dbo].[Accounting] as n
	left join [Admin] as a on a.AdminID = n.Auditor
    where n.Del=0 and n.AccountingID = @AccountingID
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetNext]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Accounting获取下一条记录
--BY:XXY
--DateTime:2025-01-14 14:35:32
------------------------------------
create procedure [dbo].[Accounting_GetNext]
(
@AccountingID int
)
as

select top 1 AccountingID,AccountingTitle from Accounting   where CategoryID=(
select CategoryID from Accounting where AccountingID=@AccountingID)
and AccountingID>@AccountingID and del=0 and AccountingTime<getdate() order by AccountingID asc




GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetPrice]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--读取金额计算
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-17 10:09:29
------------------------------------
CREATE Procedure [dbo].[Accounting_GetPrice]
    @CategoryID int, 
    @AccountingTitle nvarchar(50),
	@AccountingType int,-- 类型
	@Star nvarchar(50),-- 开始时间
	@End nvarchar(50),-- 结束时间
	@CreateUserID int,
	@AuditStatus nvarchar(50),-- 审核状态
	@AuditorUserName nvarchar(50)-- 审核人名
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @AccountingTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

	
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AccountingType <> -1
	begin
		set @searchs =@searchs + ' and n.AccountingType=@AccountingType'
	end
	if @AuditStatus <> -1
	begin
		set @searchs =@searchs + ' and n.AuditStatus=@AuditStatus'
	end
	

	--查询结果

	set @s='select (select isnull(sum(AccountingPrice),0) from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=0 '+@searchs+') as inAudit,
			(select  isnull(sum(AccountingPrice),0) from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=1 '+@searchs+') as OutAudit,
			(select  isnull(sum(AccountingPrice),0)  from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=2 '+@searchs+') as HeTongAudit'


		-- 执行查询时，传递 @Title 参数
		EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
		@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50)',
		@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetTop]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:37:29
------------------------------------
create Procedure [dbo].[Accounting_GetTop]
    @CategoryID int, 
    @AccountingTitle nvarchar(50), 
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @AccountingTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='  select a.*from(
    select row_number() over(order by n.Sorts desc, n.AccountingID desc) as aid ,n.*,b.BigTitle FROM  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 
	 where n.del=0 	 and n.Statues=0 and n.AccountingTime<=getdate() '+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@StartRecord int,@EndRecord int', @AccountingTitle,@CategoryID,@StartRecord,@EndRecord


GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetTopCount]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:38:29
------------------------------------
create Procedure [dbo].[Accounting_GetTopCount]
    @CategoryID int, 
    @AccountingTitle nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @AccountingTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='select Count(n.AccountingID) as Num from  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
	where n.del=0 and n.Statues=0 and n.ReleaseTime<=getdate()'+@searchs;
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int', @AccountingTitle,@CategoryID
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_HetongGetCount30]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
-- 入账审核通过近30天的金额
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-22 15:42:29
------------------------------------
create Procedure [dbo].[Accounting_HetongGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=2
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_RuzhangGetCount30]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
-- 入账未审核近30天的金额
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-22 15:31:29
------------------------------------
create Procedure [dbo].[Accounting_RuzhangGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=0 
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Update]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--更新一条记录
--项目名称：Sunuer Manage
--表名称：Accounting记账
--BY:XXY
--DateTime:2025-01-14 14:48:17
------------------------------------
CREATE Procedure [dbo].[Accounting_Update]
    @AccountingID int,
    @UpdateUserID int,
    @CategoryID int,
    @AccountingTitle nvarchar(200),
    @AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingFiles nvarchar(max),
    @AccountingDesn nvarchar(500)
AS
begin
	declare @fanhui int = 0
    update [dbo].[Accounting]
    set  [UpdateUserID] = @UpdateUserID, [UpdateDate] = GETDATE(),  [CategoryID] = @CategoryID, 
	[AccountingTitle] = @AccountingTitle, [AccountingPrice] = @AccountingPrice, [AccountingTime] = @AccountingTime, 
	[AccountingType] = @AccountingType,[AccountingFiles]=@AccountingFiles, [AccountingDesn] = @AccountingDesn,
	[Auditor]=0,[AuditStatus]=0,[AuditTime]=null,AuditDesn=''
    where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT
	---插入日志语句
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'编辑记账',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Add]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--增加一条记录
--项目名称：Sunuer Manage
--表名称：AccountingCategory 记账分类
--BY:XXY
--DateTime:2025-01-14 09:57:09
------------------------------------
CREATE Procedure [dbo].[AccountingCategory_Add]
    @CreateUserID int,
    @ParentID int,
    @CategoryTitle nvarchar(50),
	@Sorts int,
	@CategoryDesn nvarchar(500) 

    
as
 declare @fanhui int ---返回参数
 select @fanhui=0
 declare @ParentIDFirst int --顶级父ID
select @ParentIDFirst=0
 declare @Depths int --深度
select @Depths=0
declare @ParentIDS nvarchar(2000) --父集合
select @ParentIDS=''
--根据顶级父ID相同的判定是否重复，如果顶级父ID为0是顶级分类
select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [AccountingCategory] where CategoryID=@ParentID

   if @ParentIDS<>''
	begin
	  select @ParentIDS=@ParentIDS+','
	  select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
	end
	else
	begin
	select @ParentIDS=0
	end
    select @Depths=@Depths+1

	insert into [dbo].[AccountingCategory] ( [CreateUserID], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    values ( @CreateUserID, @ParentID, @Depths, @ParentIDs, @ParentIDFirst, @CategoryTitle, @Sorts, @CategoryDesn)
	
	select  @fanhui=@@IDENTITY
	---插入日志语句
    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),CreateUserID,'添加分类',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@fanhui

    if(@ParentID=0)
    begin
      update [AccountingCategory] set ParentIDFirst=@fanhui where CategoryID=@fanhui
    end    
 return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Delete]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--删除一条记录
--项目名称：Sunuer Manage
--表名称：AccountingCategory 记账分类
--BY:XXY
--DateTime:2025-01-14 09:58:09
------------------------------------
create Procedure [dbo].[AccountingCategory_Delete]
    @CategoryID int,
    @UpdateUserID int
as
	
	declare @fanhui int = 0

    update  [dbo].[AccountingCategory] set Del=1,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where CategoryID = @CategoryID
	set @fanhui = @@rowcount

	---插入日志语句
    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),UpdateUserID,'删除分类',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@CategoryID

    return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Get]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类
--BY:XXY
--DateTime:2025-01-14 11:09:32
------------------------------------
create Procedure [dbo].[AccountingCategory_Get]
    @ParentID int
as
begin
    select * from AccountingCategory where Del=0 and ParentID=@ParentID order by Sorts desc 
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetAll]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类
--BY:XXY
--DateTime:2025-01-14 11:10:32
------------------------------------
create Procedure [dbo].[AccountingCategory_GetAll]
as
begin
    select * from AccountingCategory where Del=0
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetModel]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类
--BY:XXY
--DateTime:2025-01-14 11:11:32
------------------------------------
create Procedure [dbo].[AccountingCategory_GetModel]
    @CategoryID int
AS
begin
    select * from [dbo].[AccountingCategory]
    where CategoryID = @CategoryID
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetNumber]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类下文章数量
--BY:XXY
--DateTime:2025-01-14 11:17:32
------------------------------------
CREATE Procedure [dbo].[AccountingCategory_GetNumber]
    @ParentID int
as
begin
    select n.CategoryTitle,n.CategoryID,(	
    select count(AccountingID) FROM  [dbo].[Accounting] as a
	left join AccountingCategory as b  on a.CategoryID=b.CategoryID 
	 where a.Del=0 and (n.CategoryID=a.CategoryID or  charindex(','+CAST(n.CategoryID AS NVARCHAR(50))+',', ','+b.ParentIDs+',') > 0)) as Number from AccountingCategory as n where n.Del=0 and n.ParentID=@ParentID
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetParentIDAll]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类 包含@ParentID 所有
--BY:XXY
--DateTime:2025-01-14 11:18:32
------------------------------------
create Procedure [dbo].[AccountingCategory_GetParentIDAll]
    @ParentID int
as
begin
    select * from AccountingCategory where Del=0 and  charindex(','+CAST(@ParentID AS NVARCHAR)+',',','+ParentIDs+',')>0
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Update]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--更新一条记录
--项目名称：Sunuer Manage
--表名称：AccountingCategory记账分类
--BY:XXY
--DateTime:2024-11-22 16:36:09
------------------------------------
create Procedure [dbo].[AccountingCategory_Update]
    @CategoryID int,
    @UpdateUserID int,
    @ParentID int,
	 @CategoryTitle nvarchar(50),
    @Sorts int,
    @CategoryDesn nvarchar(500)

AS
	declare @fanhui int ---返回参数
	 select @fanhui=0
	 declare @ParentIDFirst int --顶级父ID
	select @ParentIDFirst=0
	 declare @Depths int --父类深度
	select @Depths=0
	 declare @DepthsOld int --深度-旧
	select @DepthsOld=0
	declare @ParentIDS nvarchar(2000) --父集合
	select @ParentIDS=''
	declare @ParentIDSOld nvarchar(2000) --父集合-旧
	select @ParentIDSOld=''
	--根据顶级父ID相同的判定是否重复，如果顶级父ID为0是顶级分类
	select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [AccountingCategory] where CategoryID=@ParentID

	   if @ParentIDS<>''
		begin
		  select @ParentIDS=@ParentIDS+','
		 select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
		end
		else
		begin
		select @ParentIDS=0
		end
		select @Depths=@Depths+1
		update [dbo].[AccountingCategory]
		set  UpdateUserID = @UpdateUserID, UpdateDate = getdate(),@DepthsOld=Depths,@ParentIDSOld=[ParentIDs], ParentID = @ParentID, Depths = @Depths, ParentIDs = @ParentIDs, 
		ParentIDFirst = @ParentIDFirst,[CategoryTitle] = @CategoryTitle, [Sorts] = @Sorts, [CategoryDesn] = @CategoryDesn
		where CategoryID = @CategoryID
		select  @fanhui=@@rowcount
			 	---插入日志语句
    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),UpdateUserID,'编辑分类',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@CategoryID

	    select @DepthsOld=@Depths-@DepthsOld
		if(@ParentID=0)
		begin
		  select @ParentIDFirst=@CategoryID
		  update [AccountingCategory] set ParentIDFirst=@CategoryID where CategoryID=@CategoryID --更新顶级分类
		end    
		--更新下级等级分类
		--更新下级父类集合
		 update [AccountingCategory] set ParentIDFirst=@ParentIDFirst,Depths=Depths+@DepthsOld, ParentIDS=substring(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','),2,len(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','))-2),[UpdateDate] = GETDATE(),UpdateUserID = @UpdateUserID where charindex(','+convert( nvarchar(50) ,@CategoryID)+',',','+ParentIDS+',')>0
 
 return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[AdminPush_Add]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--添加一条记录
--项目名称：Sunuer Manage
--表名：AdminPush公众号消息推送记录 添加
--BY:XXY
--DateTime:2025-01-07 15:17:50
------------------------------------
Create Procedure [dbo].[AdminPush_Add]
   
    @CreateUserID int,
   
    @PushAdminID int,
    @ReceivePushAdminID int,
    @PushOver int,
    @openid nvarchar(50),
    @PushContent nvarchar(50)
as
begin
    insert into [dbo].[AdminPush] ([CreateUserID], [PushAdminID], [ReceivePushAdminID], [PushOver], [openid], [PushContent])
    values (@CreateUserID, @PushAdminID, @ReceivePushAdminID, @PushOver, @openid, @PushContent)
    return @@identity
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_Add]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--增加一条记录
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:36:09
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_Add]
    @CreateUserID int,
    @ParentID int,
    @Statues int,
    @BigTitle nvarchar(50),
    @KeyTitle nvarchar(200),
    @KeyWord nvarchar(200),
    @KeyDesn nvarchar(500),
    @Images nvarchar(200),
    @ImagesPhone nvarchar(200),
    @SiteUrl nvarchar(200),
    @Sorts int
as
 declare @fanhui int ---返回参数
 select @fanhui=0
 declare @ParentIDFirst int --顶级父ID
select @ParentIDFirst=0
 declare @Depths int --深度
select @Depths=0
declare @ParentIDS nvarchar(2000) --父集合
select @ParentIDS=''
--根据顶级父ID相同的判定是否重复，如果顶级父ID为0是顶级分类
select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [ArticleCategory] where BigID=@ParentID

   if @ParentIDS<>''
	begin
	  select @ParentIDS=@ParentIDS+','
	  select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
	end
	else
	begin
	select @ParentIDS=0
	end
    select @Depths=@Depths+1
     insert into [dbo].[ArticleCategory] (CreateUserID,  ParentID, Depths, ParentIDs, ParentIDFirst, Statues, BigTitle, KeyTitle, KeyWord, KeyDesn, Images, ImagesPhone, Sorts,SiteUrl)
    values ( @CreateUserID,  @ParentID, @Depths, @ParentIDs, @ParentIDFirst, @Statues, @BigTitle, @KeyTitle, @KeyWord, @KeyDesn, @Images, @ImagesPhone, @Sorts,@SiteUrl)
   
	select  @fanhui=@@IDENTITY

    if(@ParentID=0)
    begin
      update [ArticleCategory] set ParentIDFirst=@fanhui where BigID=@fanhui
    end    
 return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_Delete]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--删除一条记录
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:36:09
------------------------------------
Create Procedure [dbo].[ArticleCategory_Delete]
    @BigID int,
    @UpdateUserID int
as

    update  [dbo].[ArticleCategory] set Del=1,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where BigID = @BigID
    return @@rowcount
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_Get]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:47:32
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_Get]
    @ParentID int
as
begin
    select * from ArticleCategory where Del=0 and ParentID=@ParentID order by Sorts desc 
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_GetAll]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:47:32
------------------------------------
Create Procedure [dbo].[ArticleCategory_GetAll]
as
begin
    select * from ArticleCategory where Del=0
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_GetModel]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:47:32
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_GetModel]
    @BigID int
AS
begin
    select * from [dbo].[ArticleCategory]
    where BigID = @BigID
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_GetNumber]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类下文章数量
--BY:HaiDong
--DateTime:2024-11-22 16:47:32
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_GetNumber]
    @ParentID int
as
begin
    select n.BigTitle,n.BigID,(	
    select count(ArticleID) FROM  [dbo].[Articles] as a
	left join ArticleCategory as b  on a.BigID=b.BigID 
	 where a.Del=0 and (n.BigID=a.BigID or  charindex(','+CAST(n.BigID AS NVARCHAR(50))+',', ','+b.ParentIDs+',') > 0)) as Number from ArticleCategory as n where n.Del=0 and n.ParentID=@ParentID
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_GetParentIDAll]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类 包含@ParentID 所有
--BY:HaiDong
--DateTime:2024-11-22 16:47:32
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_GetParentIDAll]
    @ParentID int
as
begin
    select * from ArticleCategory where Del=0 and  charindex(','+CAST(@ParentID AS NVARCHAR)+',',','+ParentIDs+',')>0
end
GO
/****** Object:  StoredProcedure [dbo].[ArticleCategory_Update]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--更新一条记录
--项目名称：Sunuer Manage
--表名称：ArticleCategory文章分类
--BY:HaiDong
--DateTime:2024-11-22 16:36:09
------------------------------------
CREATE Procedure [dbo].[ArticleCategory_Update]
    @BigID int,
    @UpdateUserID int,
    @ParentID int,
    @Statues int,
    @BigTitle nvarchar(50),
    @KeyTitle nvarchar(200),
    @KeyWord nvarchar(200),
    @KeyDesn nvarchar(500),
    @Images nvarchar(200),
    @SiteUrl nvarchar(200),
    @ImagesPhone nvarchar(200),
    @Sorts int
AS
	declare @fanhui int ---返回参数
	 select @fanhui=0
	 declare @ParentIDFirst int --顶级父ID
	select @ParentIDFirst=0
	 declare @Depths int --父类深度
	select @Depths=0
	 declare @DepthsOld int --深度-旧
	select @DepthsOld=0
	declare @ParentIDS nvarchar(2000) --父集合
	select @ParentIDS=''
	declare @ParentIDSOld nvarchar(2000) --父集合-旧
	select @ParentIDSOld=''
	--根据顶级父ID相同的判定是否重复，如果顶级父ID为0是顶级分类
	select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [ArticleCategory] where BigID=@ParentID

	   if @ParentIDS<>''
		begin
		  select @ParentIDS=@ParentIDS+','
		 select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
		end
		else
		begin
		select @ParentIDS=0
		end
		select @Depths=@Depths+1
		  update [dbo].[ArticleCategory]
    set  UpdateUserID = @UpdateUserID, UpdateDate = getdate(),@DepthsOld=Depths,@ParentIDSOld=[ParentIDs], ParentID = @ParentID, Depths = @Depths, ParentIDs = @ParentIDs, ParentIDFirst = @ParentIDFirst, Statues = @Statues, BigTitle = @BigTitle, KeyTitle = @KeyTitle, KeyWord = @KeyWord, KeyDesn = @KeyDesn, Images = @Images, ImagesPhone = @ImagesPhone, Sorts = @Sorts,SiteUrl=@SiteUrl
    where BigID = @BigID
		select  @fanhui=@@rowcount
			 
	    select @DepthsOld=@Depths-@DepthsOld
		if(@ParentID=0)
		begin
		  select @ParentIDFirst=@BigID
		  update [ArticleCategory] set ParentIDFirst=@BigID where BigID=@BigID --更新顶级分类
		end    
		--更新下级等级分类
		--更新下级父类集合
		 update [ArticleCategory] set ParentIDFirst=@ParentIDFirst,Depths=Depths+@DepthsOld, ParentIDS=substring(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','),2,len(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','))-2),[UpdateDate] = GETDATE(),UpdateUserID = @UpdateUserID where charindex(','+convert( nvarchar(50) ,@BigID)+',',','+ParentIDS+',')>0
 
 return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[Articles_Add]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--增加一条记录
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:01:17
------------------------------------
CREATE Procedure [dbo].[Articles_Add]
    @CreateUserID int,
    @BigID int,
    @ArticleTitle nvarchar(200),
    @Articlekey nvarchar(200),
    @ArticleDesn nvarchar(500),
    @Statues int,
    @Sorts int,
    @NavSites nvarchar(200),
    @ReleaseTime datetime,
    @Hits int,
    @Image nvarchar(500),
    @Images nvarchar(500),
    @Desn nvarchar(MAX)
as
begin
    insert into [dbo].[Articles] ( CreateUserID, BigID, ArticleTitle, Articlekey, ArticleDesn, Statues, Sorts, NavSites, ReleaseTime, Hits, Image, Images, Desn)
    values ( @CreateUserID, @BigID, @ArticleTitle, @Articlekey, @ArticleDesn, @Statues, @Sorts, @NavSites, @ReleaseTime, @Hits, @Image, @Images, @Desn)
    return @@identity
end
GO
/****** Object:  StoredProcedure [dbo].[Articles_Delete]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--删除一条记录
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_Delete]
    @ArticleID int,
    @UpdateUserID int
as
begin
    update  [dbo].[Articles] set Del=1 ,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where ArticleID = @ArticleID
    return @@rowcount
end
GO
/****** Object:  StoredProcedure [dbo].[Articles_Get]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_Get]
    @BigID int, 
    @ArticleTitle nvarchar(50), 
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @ArticleTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@ArticleTitle, n.ArticleTitle) > 0';
end
if @BigID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.BigID=@BigID or  charindex('',''+CAST(@BigID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='  select a.*from(
    select row_number() over(order by  n.ArticleID desc) as aid ,n.*,b.BigTitle FROM  [dbo].[Articles] as n
	left join ArticleCategory as b  on n.BigID=b.BigID 
	 where n.del=0 	'+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@ArticleTitle nvarchar(50),@BigID int,@StartRecord int,@EndRecord int', @ArticleTitle,@BigID,@StartRecord,@EndRecord

GO
/****** Object:  StoredProcedure [dbo].[Articles_GetCount]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_GetCount]
    @BigID int, 
    @ArticleTitle nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @ArticleTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@ArticleTitle, n.ArticleTitle) > 0';
end
if @BigID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.BigID=@BigID or  charindex('',''+CAST(@BigID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='select Count(n.ArticleID) as Num from  [dbo].[Articles] as n
	left join ArticleCategory as b  on n.BigID=b.BigID 	
	where n.del=0 '+@searchs;
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@ArticleTitle nvarchar(50),@BigID int', @ArticleTitle,@BigID
 
GO
/****** Object:  StoredProcedure [dbo].[Articles_GetCount30]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录每天数量
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-28 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_GetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select count(ArticleID) as Number ,convert(varchar(11),CreateDate,111) as Datas from Articles  where  Del=0  and @StarTime<=CreateDate  and @EndTime>=CreateDate group by convert(varchar(11),CreateDate,111)order by convert(varchar(11),CreateDate,111)
GO
/****** Object:  StoredProcedure [dbo].[Articles_GetLast]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Article获取上一条记录
--BY:HaiDong
--DateTime:2024-12-3 16:47:32
------------------------------------
create procedure [dbo].[Articles_GetLast]
(
@ArticleID int
)
as

select top 1 ArticleID,ArticleTitle,NavSites from Articles   where bigid=(select BigID from Articles where ArticleID=@ArticleID) and ArticleID<@ArticleID and del=0 and ReleaseTime<getdate() order by ArticleID asc




GO
/****** Object:  StoredProcedure [dbo].[Articles_GetModel]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
Create Procedure [dbo].[Articles_GetModel]
    @ArticleID int
AS
begin
    select * from [dbo].[Articles]
    where Del=0 and ArticleID = @ArticleID
end
GO
/****** Object:  StoredProcedure [dbo].[Articles_GetNext]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--获取一条记录
--项目名称：Sunuer Manage
--表名称：Article获取下一条记录
--BY:HaiDong
--DateTime:2024-12-3 16:47:32
------------------------------------
create procedure [dbo].[Articles_GetNext]
(
@ArticleID int
)
as

select top 1 ArticleID,ArticleTitle,NavSites from Articles   where bigid=(select BigID from Articles where ArticleID=@ArticleID) and ArticleID>@ArticleID and del=0 and ReleaseTime<getdate() order by ArticleID asc




GO
/****** Object:  StoredProcedure [dbo].[Articles_GetTop]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_GetTop]
    @BigID int, 
    @ArticleTitle nvarchar(50), 
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @ArticleTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@ArticleTitle, n.ArticleTitle) > 0';
end
if @BigID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.BigID=@BigID or  charindex('',''+CAST(@BigID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='  select a.*from(
    select row_number() over(order by n.Sorts desc, n.ArticleID desc) as aid ,n.*,b.BigTitle FROM  [dbo].[Articles] as n
	left join ArticleCategory as b  on n.BigID=b.BigID 
	 where n.del=0 	 and n.Statues=0 and n.ReleaseTime<=getdate() '+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@ArticleTitle nvarchar(50),@BigID int,@StartRecord int,@EndRecord int', @ArticleTitle,@BigID,@StartRecord,@EndRecord


GO
/****** Object:  StoredProcedure [dbo].[Articles_GetTopCount]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--读取记录列表
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:15:29
------------------------------------
CREATE Procedure [dbo].[Articles_GetTopCount]
    @BigID int, 
    @ArticleTitle nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
-- 检查 @Title 是否为空
if @ArticleTitle <> ''
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and charindex(@ArticleTitle, n.ArticleTitle) > 0';
end
if @BigID <> -1
begin
    -- 使用参数化查询，防止 SQL 注入
    set @searchs = @searchs + ' and (n.BigID=@BigID or  charindex('',''+CAST(@BigID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='select Count(n.ArticleID) as Num from  [dbo].[Articles] as n
	left join ArticleCategory as b  on n.BigID=b.BigID 	
	where n.del=0 and n.Statues=0 and n.ReleaseTime<=getdate()'+@searchs;
-- 打印查询语句，供调试使用
print @s;

-- 执行查询时，传递 @Title 参数
EXEC sp_executesql @s, N'@ArticleTitle nvarchar(50),@BigID int', @ArticleTitle,@BigID
 
GO
/****** Object:  StoredProcedure [dbo].[Articles_Update]    Script Date: 2025/2/26 15:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--更新一条记录
--项目名称：Sunuer Manage
--表名称：Articles文章
--BY:HaiDong
--DateTime:2024-11-23 15:01:17
------------------------------------
CREATE Procedure [dbo].[Articles_Update]
    @ArticleID int,
    @UpdateUserID int,
    @BigID int,
    @ArticleTitle nvarchar(200),
    @Articlekey nvarchar(200),
    @ArticleDesn nvarchar(500),
    @Statues int,
    @Sorts int,
    @NavSites nvarchar(200),
    @ReleaseTime datetime,
    @Hits int,
    @Image nvarchar(500),
    @Images nvarchar(500),
    @Desn nvarchar(MAX)
AS
begin
    update [dbo].[Articles]
    set UpdateUserID = @UpdateUserID, UpdateDate = getdate(),  BigID = @BigID, ArticleTitle = @ArticleTitle, Articlekey = @Articlekey, ArticleDesn = @ArticleDesn, Statues = @Statues, Sorts = @Sorts, NavSites = @NavSites, ReleaseTime = @ReleaseTime, Hits = @Hits, Image = @Image, Images = @Images, Desn = @Desn
    where ArticleID = @ArticleID
    return @@rowcount
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账日期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账类型0入账1出账' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态0未审核1审核通过2审核未通过' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度默认为0顶级是1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级ID用,隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶级父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序大号在前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度默认为0顶级是1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级ID用,隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶级父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序大号在前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账日期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记账类型0入账1出账' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态0未审核1审核通过2审核未通过' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminNick'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'Statues'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆尝试' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'LoginAttempts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆尝试最后时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'LoginAttemptsLast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员登陆日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminLoginLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminLoginLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminLoginLog', @level2type=N'COLUMN',@level2name=N'AdminName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆成功0成功1失败' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminLoginLog', @level2type=N'COLUMN',@level2name=N'IsOK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminLoginLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'PowerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'PowerTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'AdminPushID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'PushAdminID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'ReceivePushAdminID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推送完成0未完成1已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'PushOver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPush', @level2type=N'COLUMN',@level2name=N'PushContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'RolesTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限集合,隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'Powers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'BigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度默认为0顶级是1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级ID用,隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶级父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航0是1否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'Statues'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优化标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'KeyTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'BigTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'KeyWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'KeyDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'Images'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序大号在前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片-手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory', @level2type=N'COLUMN',@level2name=N'ImagesPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'undefined' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'LogDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'LogUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'LogAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'BigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度默认为0顶级是1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有父级ID用,隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶级父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航0是1否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'Statues'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'BigTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优化标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'KeyTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'KeyWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'KeyDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'Images'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片-手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'ImagesPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序大号在前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ArticleCategoryLog', @level2type=N'COLUMN',@level2name=N'SiteUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'ArticleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'BigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'ArticleTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Articlekey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'ArticleDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示0是1否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Statues'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'NavSites'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'ReleaseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Hits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Images'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Desn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'undefined' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles'
GO
