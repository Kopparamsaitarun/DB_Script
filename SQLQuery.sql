USE [Learn_DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23-07-22 08:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[CreditLimit] [int] NULL DEFAULT ((0)),
 CONSTRAINT [PK_tbl_customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_designation]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_designation](
	[code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_designation] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[code] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_employee] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_menu]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_menu](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[LinkName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_permission]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_permission](
	[RoleId] [varchar](50) NOT NULL,
	[MenuId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_permission] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Amount] [decimal](18, 3) NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_refreshtoken]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_refreshtoken](
	[UserId] [varchar](50) NOT NULL,
	[TokenId] [varchar](50) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tbl_refreshtoken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_role]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_role](
	[roleid] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[userid] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220608190356_init', N'6.0.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220608191619_init1', N'6.0.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220608192223_init2', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

GO
INSERT [dbo].[tbl_customer] ([ID], [Name], [Email], [Phone], [CreditLimit]) VALUES (2, N'Jamison', N'jami@gmail.com', N'7878786775', 0)
GO
INSERT [dbo].[tbl_customer] ([ID], [Name], [Email], [Phone], [CreditLimit]) VALUES (16, N'Ravi Kishore', N'test@gmail.com', N'241000', 2500)
GO
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
GO
INSERT [dbo].[tbl_designation] ([code], [Name]) VALUES (N'developer', N'Angular Developer ')
GO
INSERT [dbo].[tbl_designation] ([code], [Name]) VALUES (N'Manager', N'Manager')
GO
INSERT [dbo].[tbl_designation] ([code], [Name]) VALUES (N'tester', N'Technical team lead')
GO
SET IDENTITY_INSERT [dbo].[tbl_employee] ON 

GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1035, N'Mahindra singh Dhoni', N'msd@in.com', N'8998899333', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1037, N'Sunil Narine', N'snr@in.com', N'89898987656', N'developer')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1039, N'symonds', N'sym@in.com', N'78899900', N'developer')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1040, N'Warne', N'wrn@in.com', N'9898976555', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1042, N'Ramesh', N'rm@in.com', NULL, N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1043, N'Kulkarni', N'kul@in.com', NULL, N'tester')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1047, N'Sunil Rohan', N'sr@in.com', NULL, N'developer')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1048, N'Json', N'json@in.com', N'435377778', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1051, N'test 3', N'te@in.com', N'8888', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1052, N'Andrew', N'ad@in.com', N'8789000', N'developer')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1053, N'Sunil Rohan 1', N'te@in.com', N'290000', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1054, N'Sunil Rohan 1', N'te@in.com', N'290000', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1055, N'Nihira', N'ad@in.com', N'290000', N'Manager')
GO
INSERT [dbo].[tbl_employee] ([code], [name], [email], [Phone], [designation]) VALUES (1056, N'Sunil', N's@in.com', N'9989000-11', N'Manager')
GO
SET IDENTITY_INSERT [dbo].[tbl_employee] OFF
GO
INSERT [dbo].[tbl_menu] ([Id], [Name], [LinkName]) VALUES (N'about', N'About', N'about')
GO
INSERT [dbo].[tbl_menu] ([Id], [Name], [LinkName]) VALUES (N'contact', N'Contact Us', N'')
GO
INSERT [dbo].[tbl_menu] ([Id], [Name], [LinkName]) VALUES (N'employee', N'Employee', N'employee')
GO
INSERT [dbo].[tbl_menu] ([Id], [Name], [LinkName]) VALUES (N'user', N'user', N'user')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'admin', N'about')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'admin', N'employee')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'admin', N'user')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'staff', N'employee')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'user', N'about')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'user', N'user')
GO
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (1, N'REDMI 10A (Slate Grey, 32 GB)  (3 GB RAM)', CAST(10000.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (2, N'Volga Hiking & Trekking Shoes For Men  (Black)', CAST(1234.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (5, N'Shoes Running Shoes For Men  (Grey)', CAST(247.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (6, N'realme 9 (Sunburst Gold, 128 GB)  ', CAST(7400.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (7, N'Ready LED Smart Android TV', CAST(17000.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (8, N'Lenovo IdeaPad 3 Core i3 10th Gen', CAST(20000.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (9, N'Color Block Men Round Neck Yellow T-Shirt', CAST(170.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (10, N'Skinny Men Black Jeans', CAST(1200.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (11, N'Motorbike Helmet  (Matt Green)', CAST(1235.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (14, N'Cricket bat', CAST(1000.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (15, N'Cricket Pad', CAST(800.000 AS Decimal(18, 3)))
GO
INSERT [dbo].[tbl_product] ([Code], [Name], [Amount]) VALUES (16, N'Cricket clouse', CAST(500.000 AS Decimal(18, 3)))
GO
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken], [IsActive]) VALUES (N'adminuser', N'643240810', N'jgZnSz6MUkzaLZSuMdADJdDMlLbnuwAQFQYLQLku4/A=', 1)
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken], [IsActive]) VALUES (N'demouser', N'525301419', N'dYojoMv8k0iZQg1vXglVyo69BnH+/v0GcHoUhzbw104=', 1)
GO
INSERT [dbo].[tbl_role] ([roleid], [Name]) VALUES (N'admin', N'Admin')
GO
INSERT [dbo].[tbl_role] ([roleid], [Name]) VALUES (N'staff', N'Staff')
GO
INSERT [dbo].[tbl_role] ([roleid], [Name]) VALUES (N'user', N'User')
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'adminuser', N'Admin', N'admin', N'tset@gmail.com', N'admin', 1)
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'demouser', N'demo', N'demo', N'd@in.com', N'user', 0)
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'ntuser1', N'Ravi', N'ravi', N'r@in.com', N'', 0)
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'ntuser2', N'User 2', N'pwd', N'nt@in.com', N'', 0)
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'ntuser3', N'Ramesh', N'ravi', N'ravi@in.com', N'', 0)
GO
INSERT [dbo].[tbl_user] ([userid], [Name], [password], [Email], [Role], [IsActive]) VALUES (N'staffuser', N'Staff', N'staff', N's@in.com', N'staff', 1)
GO
/****** Object:  StoredProcedure [dbo].[GetCustomer]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCustomer]
as
Begin
Select * From tbl_customer
End
GO
/****** Object:  StoredProcedure [dbo].[sp_getallemployee]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[sp_getallemployee]
as

begin
Select A.code,A.name,A.email,A.Phone,B.Name as designation,B.Name as designation1 From tbl_employee A inner Join tbl_designation B on A.designation=B.code

end
GO