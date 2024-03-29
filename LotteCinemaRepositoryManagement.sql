USE [master]
GO
/****** Object:  Database [LotteCinemaRepositoryManagement]    Script Date: 2018-08-20 7:19:40 PM ******/
CREATE DATABASE [LotteCinemaRepositoryManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lotte Cinema Repository Management', FILENAME = N'E:\Microsoft SQL Server 2014\MSSQL12.HIKARU\MSSQL\DATA\Lotte Cinema Repository Management.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Lotte Cinema Repository Management_log', FILENAME = N'E:\Microsoft SQL Server 2014\MSSQL12.HIKARU\MSSQL\DATA\Lotte Cinema Repository Management_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LotteCinemaRepositoryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET  MULTI_USER 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LotteCinemaRepositoryManagement]
GO
USE [LotteCinemaRepositoryManagement]
GO
/****** Object:  Sequence [dbo].[Commodity_Seq]    Script Date: 2018-08-20 7:19:41 PM ******/
CREATE SEQUENCE [dbo].[Commodity_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [LotteCinemaRepositoryManagement]
GO
/****** Object:  Sequence [dbo].[Employee_Seq]    Script Date: 2018-08-20 7:19:41 PM ******/
CREATE SEQUENCE [dbo].[Employee_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [LotteCinemaRepositoryManagement]
GO
/****** Object:  Sequence [dbo].[GoodsIssueNote_Seq]    Script Date: 2018-08-20 7:19:41 PM ******/
CREATE SEQUENCE [dbo].[GoodsIssueNote_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [LotteCinemaRepositoryManagement]
GO
/****** Object:  Sequence [dbo].[GoodsReceiptNote_Seq]    Script Date: 2018-08-20 7:19:41 PM ******/
CREATE SEQUENCE [dbo].[GoodsReceiptNote_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [LotteCinemaRepositoryManagement]
GO
/****** Object:  Sequence [dbo].[Supplier_Seq]    Script Date: 2018-08-20 7:19:41 PM ******/
CREATE SEQUENCE [dbo].[Supplier_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [char](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Role] [nvarchar](20) NOT NULL,
	[Message] [nvarchar](15) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account_Audit](
	[Username] [char](30) NULL,
	[Password] [nvarchar](30) NULL,
	[Name] [nvarchar](20) NULL,
	[Role] [nvarchar](20) NULL,
	[Message] [nvarchar](15) NULL,
	[Action] [nchar](6) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Commodity]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commodity](
	[CommodityID] [nchar](3) NOT NULL CONSTRAINT [CommodityID]  DEFAULT (format(NEXT VALUE FOR [dbo].[Commodity_Seq],'H0#')),
	[CommodityName] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CalculationUnit] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_COMMODITY] PRIMARY KEY CLUSTERED 
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commodity_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commodity_Audit](
	[CommodityID] [nchar](3) NOT NULL,
	[CommodityName] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CalculationUnit] [nvarchar](20) NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [nchar](6) NOT NULL CONSTRAINT [EmployeeID]  DEFAULT (format(NEXT VALUE FOR [dbo].[Employee_Seq],'NV000#')),
	[FullName] [nvarchar](30) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[MobilePhone] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Audit](
	[EmployeeID] [nchar](6) NOT NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[MobilePhone] [nvarchar](11) NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsIssueNote]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueNote](
	[GIN_No] [nchar](7) NOT NULL CONSTRAINT [GIN_No]  DEFAULT (format(NEXT VALUE FOR [dbo].[GoodsIssueNote_Seq],'PXK000#')),
	[Date] [datetime] NOT NULL,
	[EmployeeID] [nchar](6) NOT NULL,
 CONSTRAINT [PK_GOODSISSUENOTE] PRIMARY KEY CLUSTERED 
(
	[GIN_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsIssueNote_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueNote_Audit](
	[GIN_No] [nchar](7) NOT NULL,
	[Date] [datetime] NOT NULL,
	[EmployeeID] [nchar](6) NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsIssueNoteDetails]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueNoteDetails](
	[GIN_No] [nchar](7) NOT NULL,
	[CommodityID] [nchar](3) NOT NULL,
	[Cost] [float] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsIssueNoteDetails_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueNoteDetails_Audit](
	[GIN_No] [nchar](7) NOT NULL,
	[CommodityID] [nchar](6) NOT NULL,
	[Cost] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsReceiptNote]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptNote](
	[GRN_No] [nchar](6) NOT NULL CONSTRAINT [GRN_No]  DEFAULT (format(NEXT VALUE FOR [dbo].[GoodsReceiptNote_Seq],'PNK00#')),
	[Date] [datetime] NOT NULL,
	[SupplierID] [nchar](5) NOT NULL,
	[EmployeeID] [nchar](6) NOT NULL,
 CONSTRAINT [PK_GOODSRECEIPTNOTE] PRIMARY KEY CLUSTERED 
(
	[GRN_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsReceiptNote_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptNote_Audit](
	[GRN_No] [nchar](6) NOT NULL,
	[Date] [datetime] NOT NULL,
	[SupplierID] [nchar](5) NOT NULL,
	[EmployeeID] [nchar](6) NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsReceiptNoteDetails]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptNoteDetails](
	[GRN_No] [nchar](6) NOT NULL,
	[CommodityID] [nchar](3) NULL,
	[Cost] [float] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoodsReceiptNoteDetails_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptNoteDetails_Audit](
	[GRN_No] [nchar](6) NOT NULL,
	[CommodityID] [nchar](6) NOT NULL,
	[Cost] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [nchar](5) NOT NULL CONSTRAINT [SupplierID]  DEFAULT (format(NEXT VALUE FOR [dbo].[Supplier_Seq],'NCC0#')),
	[SupplierName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier_Audit]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Audit](
	[SupplierID] [nchar](5) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Action] [nchar](6) NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([Username], [Password], [Name], [Role], [Message]) VALUES (N'hikaru                        ', N'Satou', N'Satou Hikaru', N'Quản trị', N'')
INSERT [dbo].[Account] ([Username], [Password], [Name], [Role], [Message]) VALUES (N'ieyasu                        ', N'ieyasu                        ', N'Tokugawa Ieyasu', N'Giám sát', N'')
INSERT [dbo].[Account] ([Username], [Password], [Name], [Role], [Message]) VALUES (N'shingen                       ', N'Takeda', N'Takeda Shingen', N'Giám sát', N'')
INSERT [dbo].[Account] ([Username], [Password], [Name], [Role], [Message]) VALUES (N'tadakatsu                     ', N'Honda', N'Honda Tadakatsu', N'Giám sát', N'')
INSERT [dbo].[Account] ([Username], [Password], [Name], [Role], [Message]) VALUES (N'yukimura                      ', N'Sanada', N'Sanada Yukimura', N'Quản lý', N'')
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'hikaru                        ', N'Satou', N'Satou Hikaru', N'Quản trị', N'', N'INSERT', CAST(N'2018-05-18 00:01:17.480' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'yukimura                      ', N'Sanada', N'Sanada Yukimura', N'Quản lý', N'', N'INSERT', CAST(N'2018-05-18 00:01:19.777' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'tadakatsu                     ', N'Honda', N'Honda Tadakatsu', N'Giám sát', N'', N'INSERT', CAST(N'2018-05-18 00:01:23.063' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'ieyasu                        ', N'Tokugawa', N'Tokugawa Ieyasu', N'Giám sát', N'', N'INSERT', CAST(N'2018-05-24 00:03:12.063' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'ieyasu                        ', N'Tokugawa', N'Tokugawa Ieyasu', N'Giám sát', N'Forgot password', N'UPDATE', CAST(N'2018-05-26 21:16:52.763' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'ieyasu                        ', N'ieyasu                        ', N'Tokugawa Ieyasu', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-26 21:27:02.420' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'shingen                       ', N'shingen', N'Takeda Shingen', N'Giám sát', N'', N'INSERT', CAST(N'2018-05-29 14:47:01.923' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'yukimura                      ', N'yukimura                      ', N'Sanada Yukimura', N'Quản lý', N'', N'UPDATE', CAST(N'2018-05-30 13:13:49.043' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'yukimura                      ', N'Sanada', N'Sanada Yukimura', N'Quản lý', N'', N'UPDATE', CAST(N'2018-05-30 13:14:09.670' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'shingen                       ', N'fuurinkazan', N'Takeda Shingen', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-29 18:08:14.200' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'shingen                       ', N'fuurinkazan', N'Takeda Shingen', N'Giám sát', N'Forgot password', N'UPDATE', CAST(N'2018-05-30 00:36:16.840' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'yukimura                      ', N'Sanada', N'Sanada Yukimura', N'Quản lý', N'Forgot password', N'UPDATE', CAST(N'2018-05-30 13:13:36.637' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'shingen                       ', N'shingen                       ', N'Takeda Shingen', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-30 00:37:14.550' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'shingen                       ', N'Takeda', N'Takeda Shingen', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-30 00:37:38.493' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'tadakatsu                     ', N'Honda', N'Honda Tadakatsu', N'Giám sát', N'Forgot password', N'UPDATE', CAST(N'2018-05-30 10:39:24.597' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'tadakatsu                     ', N'tadakatsu                     ', N'Honda Tadakatsu', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-30 10:39:45.013' AS DateTime))
INSERT [dbo].[Account_Audit] ([Username], [Password], [Name], [Role], [Message], [Action], [Time]) VALUES (N'tadakatsu                     ', N'Honda', N'Honda Tadakatsu', N'Giám sát', N'', N'UPDATE', CAST(N'2018-05-30 10:40:16.073' AS DateTime))
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H01', N'Bắp', 220, N'gói')
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H02', N'Khoai tây chiên snack', 100, N'gói')
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H03', N'Rong biển', 30, N'gói')
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H04', N'Poca', 115, N'gói')
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H05', N'Pepsi', 70, N'chai')
INSERT [dbo].[Commodity] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit]) VALUES (N'H06', N'Mirinda', 99, N'chai')
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H01', N'Bắp', 200, N'gói', N'INSERT', CAST(N'2018-05-24 10:57:25.997' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H02', N'Khoai tây chiên snack', 100, N'gói', N'INSERT', CAST(N'2018-05-24 10:57:47.483' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H03', N'Rong biển', 30, N'gói', N'INSERT', CAST(N'2018-05-24 10:57:57.570' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H04', N'Poca', 115, N'gói', N'INSERT', CAST(N'2018-05-24 10:58:14.190' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H05', N'Pepsi', 70, N'chai', N'INSERT', CAST(N'2018-05-24 10:58:39.907' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H06', N'Mirinda', 99, N'chai', N'INSERT', CAST(N'2018-05-24 10:58:53.747' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N's', 1, N'a', N'INSERT', CAST(N'2018-05-26 02:07:30.553' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N's', 1, N'a', N'DELETE', CAST(N'2018-05-26 02:08:17.180' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N's', 1, N'a', N'INSERT', CAST(N'2018-05-26 19:08:40.407' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N's', 1, N'a', N'UPDATE', CAST(N'2018-05-26 19:08:48.080' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N'sa', 1, N'a', N'UPDATE', CAST(N'2018-05-26 19:11:47.410' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H07', N's', 1, N'a', N'DELETE', CAST(N'2018-05-26 19:11:57.017' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H08', N'a', 1, N'a', N'INSERT', CAST(N'2018-05-28 17:21:38.923' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'b', 2, N'b', N'UPDATE', CAST(N'2018-05-29 11:01:04.233' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'b', 2, N'b', N'DELETE', CAST(N'2018-05-30 01:35:42.870' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H11', N'c', 1, N'g', N'DELETE', CAST(N'2018-05-30 01:35:48.990' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H12', N'Milo', 30, N'chai', N'INSERT', CAST(N'2018-05-30 02:47:35.270' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H13', N'Milo', 10, N'chai', N'INSERT', CAST(N'2018-05-30 03:24:22.737' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H13', N'Milo', 10, N'chai', N'DELETE', CAST(N'2018-05-30 03:27:15.477' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H14', N'1', 1, N'1', N'DELETE', CAST(N'2018-05-30 03:39:20.757' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H15', N'1', 1, N'1', N'INSERT', CAST(N'2018-05-30 10:14:41.710' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H01', N'Bắp', 200, N'gói', N'UPDATE', CAST(N'2018-05-30 15:09:18.170' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H17', N'1', 1, N'1', N'INSERT', CAST(N'2018-05-30 15:21:42.497' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H17', N'1', 1, N'1', N'DELETE', CAST(N'2018-05-30 15:21:56.333' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H08', N'a', 1, N'a', N'DELETE', CAST(N'2018-05-28 18:53:25.300' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H08', N'a', 1, N'a', N'INSERT', CAST(N'2018-05-28 18:53:45.900' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'b', 2, N'b', N'INSERT', CAST(N'2018-05-29 11:00:52.577' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'avcd', 2, N'b', N'UPDATE', CAST(N'2018-05-29 11:01:18.303' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'b', 2, N'b', N'DELETE', CAST(N'2018-05-29 11:01:27.033' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H10', N'b', 2, N'b', N'INSERT', CAST(N'2018-05-29 11:01:32.863' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H11', N'c', 1, N'g', N'INSERT', CAST(N'2018-05-29 15:14:01.780' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H08', N'a', 1, N'a', N'DELETE', CAST(N'2018-05-30 01:35:38.323' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H12', N'Milo', 30, N'chai', N'DELETE', CAST(N'2018-05-30 03:10:41.337' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H14', N'1', 1, N'1', N'INSERT', CAST(N'2018-05-30 03:39:09.233' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H15', N'1', 1, N'1', N'DELETE', CAST(N'2018-05-30 10:14:49.337' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H18', N'Bắp cải', 0, N'cái', N'INSERT', CAST(N'2018-05-30 15:26:20.180' AS DateTime))
INSERT [dbo].[Commodity_Audit] ([CommodityID], [CommodityName], [Quantity], [CalculationUnit], [Action], [Time]) VALUES (N'H18', N'Bắp cải', 0, N'cái', N'DELETE', CAST(N'2018-05-31 00:08:53.763' AS DateTime))
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0001', N'Hồ Mạnh Tiến', 1, CAST(N'1998-03-01' AS Date), N'01635903157')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0002', N'Nguyễn Thị Lệ Thu', 0, CAST(N'1999-01-17' AS Date), N'01694823197')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0003', N'Nguyễn Tăng Quốc', 1, CAST(N'2000-03-17' AS Date), N'01698128899')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0004', N'Lê Trọng Trí', 1, CAST(N'1999-10-20' AS Date), N'0903345879')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0005', N'Trần Ngọc Tuyết', 0, CAST(N'2000-12-24' AS Date), N'0908657948')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone]) VALUES (N'NV0006', N'Nguyễn Thị Bích Hằng', 0, CAST(N'1998-01-01' AS Date), N'0938382830')
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0001', N'Hồ Mạnh Tiến', 1, CAST(N'1998-03-01' AS Date), N'01635903157', N'INSERT', CAST(N'2018-05-17 21:18:04.443' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0002', N'Nguyễn Thị Lệ Thu', 1, CAST(N'1999-01-17' AS Date), N'01694823197', N'INSERT', CAST(N'2018-05-17 21:29:41.613' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0006', N'Nguyễn Thị Bích Hằng', 0, CAST(N'1998-01-01' AS Date), N'0938382830', N'INSERT', CAST(N'2018-05-17 21:56:34.593' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'INSERT', CAST(N'2018-05-17 22:00:05.967' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'DELETE', CAST(N'2018-05-17 22:00:11.110' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0003', N'Nguyễn Tăng Quốc', 1, CAST(N'2000-03-17' AS Date), N'01698128899', N'INSERT', CAST(N'2018-05-17 21:42:50.963' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0005', N'Trần Ngọc Tuyết', 0, CAST(N'2000-12-24' AS Date), N'0908657948', N'INSERT', CAST(N'2018-05-17 21:55:43.357' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0002', N'Nguyễn Thị Lệ Thu', 1, CAST(N'1999-01-17' AS Date), N'01694823197', N'UPDATE', CAST(N'2018-05-17 21:52:18.807' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0004', N'Lê Trọng Trí', 1, CAST(N'1999-10-20' AS Date), N'0903345879', N'INSERT', CAST(N'2018-05-17 21:55:08.140' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'INSERT', CAST(N'2018-05-26 19:12:13.400' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:12:26.473' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'1998-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:12:48.403' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'1996-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:13:42.040' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0015', N'a', 1, CAST(N'1998-05-28' AS Date), N'123', N'INSERT', CAST(N'2018-05-28 17:11:38.743' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0017', N'b', 0, CAST(N'1990-05-28' AS Date), N'3454', N'INSERT', CAST(N'2018-05-28 17:12:03.107' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0020', N'b', 0, CAST(N'1997-05-28' AS Date), N'2', N'UPDATE', CAST(N'2018-05-28 18:55:58.503' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0023', N'a', 1, CAST(N'1997-05-30' AS Date), N'1', N'INSERT', CAST(N'2018-05-30 02:48:08.827' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0023', N'a', 1, CAST(N'1997-05-30' AS Date), N'1', N'DELETE', CAST(N'2018-05-30 02:48:21.530' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0025', N'1', 1, CAST(N'1990-05-30' AS Date), N'1', N'DELETE', CAST(N'2018-05-30 03:39:51.477' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:13:16.283' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0022', N'Phan Thanh Toản', 1, CAST(N'1997-05-30' AS Date), N'01678219110', N'DELETE', CAST(N'2018-05-30 02:19:59.470' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0024', N'a', 1, CAST(N'1999-05-30' AS Date), N'1', N'DELETE', CAST(N'2018-05-30 03:19:42.697' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0025', N'1', 1, CAST(N'1990-05-30' AS Date), N'1', N'INSERT', CAST(N'2018-05-30 03:39:35.183' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:14:23.360' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'1995-05-17' AS Date), N'0903606714', N'UPDATE', CAST(N'2018-05-26 19:15:30.860' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0020', N'b', 0, CAST(N'1997-05-28' AS Date), N'2', N'INSERT', CAST(N'2018-05-28 18:20:09.750' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0020', N'b', 0, CAST(N'1997-05-28' AS Date), N'2', N'INSERT', CAST(N'2018-05-28 18:55:48.957' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0021', N'c', 1, CAST(N'1999-05-29' AS Date), N'1', N'INSERT', CAST(N'2018-05-29 15:14:23.660' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0024', N'a', 1, CAST(N'1999-05-30' AS Date), N'1', N'INSERT', CAST(N'2018-05-30 03:19:32.723' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0028', N'abc', 1, CAST(N'1999-05-30' AS Date), N'01234567899', N'INSERT', CAST(N'2018-05-30 15:31:08.853' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0009', N'Trà Thị Thu Hương', 0, CAST(N'2000-05-17' AS Date), N'0903606714', N'DELETE', CAST(N'2018-05-26 19:16:17.577' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0017', N'b', 0, CAST(N'1990-05-28' AS Date), N'3454', N'DELETE', CAST(N'2018-05-28 18:18:49.203' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0015', N'a', 1, CAST(N'1998-05-28' AS Date), N'123', N'DELETE', CAST(N'2018-05-28 18:54:30.680' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0020', N'b', 0, CAST(N'1997-05-28' AS Date), N'2', N'DELETE', CAST(N'2018-05-28 18:54:36.503' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0021', N'c', 1, CAST(N'1999-05-29' AS Date), N'1', N'DELETE', CAST(N'2018-05-30 01:57:48.043' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0020', N'b', 0, CAST(N'1997-05-28' AS Date), N'2', N'DELETE', CAST(N'2018-05-30 01:58:53.887' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0022', N'Phan Thanh Toản', 1, CAST(N'1997-05-30' AS Date), N'01678219110', N'INSERT', CAST(N'2018-05-30 02:14:03.237' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0022', N'Phan Thanh Toản', 1, CAST(N'1997-05-30' AS Date), N'01678219110', N'DELETE', CAST(N'2018-05-30 02:17:31.940' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0022', N'Phan Thanh Toản', 1, CAST(N'1997-05-30' AS Date), N'01678219110', N'INSERT', CAST(N'2018-05-30 02:19:45.670' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0026', N'1', 1, CAST(N'1999-05-30' AS Date), N'1', N'INSERT', CAST(N'2018-05-30 10:15:05.580' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0026', N'1', 1, CAST(N'1999-05-30' AS Date), N'1', N'DELETE', CAST(N'2018-05-30 10:15:13.937' AS DateTime))
INSERT [dbo].[Employee_Audit] ([EmployeeID], [FullName], [Gender], [Birthday], [MobilePhone], [Action], [Time]) VALUES (N'NV0028', N'abc', 1, CAST(N'1999-05-30' AS Date), N'01234567899', N'DELETE', CAST(N'2018-05-31 00:08:12.197' AS DateTime))
INSERT [dbo].[GoodsIssueNote] ([GIN_No], [Date], [EmployeeID]) VALUES (N'PXK0001', CAST(N'2018-05-25 18:53:00.663' AS DateTime), N'NV0001')
INSERT [dbo].[GoodsIssueNote] ([GIN_No], [Date], [EmployeeID]) VALUES (N'PXK0002', CAST(N'2018-05-29 15:19:34.377' AS DateTime), N'NV0001')
INSERT [dbo].[GoodsIssueNote_Audit] ([GIN_No], [Date], [EmployeeID], [Action], [Time]) VALUES (N'PXK0001', CAST(N'2018-05-25 18:53:00.663' AS DateTime), N'NV0001', N'INSERT', CAST(N'2018-05-25 18:53:00.767' AS DateTime))
INSERT [dbo].[GoodsIssueNote_Audit] ([GIN_No], [Date], [EmployeeID], [Action], [Time]) VALUES (N'PXK0001', CAST(N'2018-05-25 18:53:00.663' AS DateTime), N'NV0001', N'UPDATE', CAST(N'2018-05-26 02:21:09.840' AS DateTime))
INSERT [dbo].[GoodsIssueNote_Audit] ([GIN_No], [Date], [EmployeeID], [Action], [Time]) VALUES (N'PXK0001', CAST(N'2018-05-25 18:53:00.663' AS DateTime), N'NV0003', N'UPDATE', CAST(N'2018-05-28 23:25:28.730' AS DateTime))
INSERT [dbo].[GoodsIssueNote_Audit] ([GIN_No], [Date], [EmployeeID], [Action], [Time]) VALUES (N'PXK0002', CAST(N'2018-05-29 15:19:34.377' AS DateTime), N'NV0001', N'INSERT', CAST(N'2018-05-29 15:19:34.520' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0001', N'H01', 50000, 60)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0001', N'H02', 15000, 40)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0001', N'H05', 30000, 60)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0001', N'H04', 27000, 30)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0002', N'H02', 15000, 30)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0002', N'H04', 27000, 10)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0002', N'H05', 30000, 10)
INSERT [dbo].[GoodsIssueNoteDetails] ([GIN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PXK0001', N'H06', 30000, 30)
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H01   ', 50000, 60, N'INSERT', CAST(N'2018-05-26 02:14:05.013' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H02   ', 15000, 40, N'INSERT', CAST(N'2018-05-26 02:14:31.280' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H05   ', 30000, 60, N'INSERT', CAST(N'2018-05-26 02:15:08.140' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H04   ', 27000, 30, N'INSERT', CAST(N'2018-05-26 02:15:36.413' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H02   ', 45000, 30, N'INSERT', CAST(N'2018-05-29 15:22:10.953' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H04   ', 15000, 10, N'INSERT', CAST(N'2018-05-29 15:23:41.387' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H02   ', 45000, 30, N'UPDATE', CAST(N'2018-05-30 00:49:43.533' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H04   ', 15000, 10, N'UPDATE', CAST(N'2018-05-30 00:50:11.707' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H06   ', 30000, 30, N'INSERT', CAST(N'2018-05-30 03:28:43.990' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H05   ', 30000, 10, N'INSERT', CAST(N'2018-05-30 10:16:00.780' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0002', N'H02   ', 50000, 30, N'UPDATE', CAST(N'2018-05-30 10:19:56.830' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H18   ', 4000, 8, N'INSERT', CAST(N'2018-05-30 15:28:56.447' AS DateTime))
INSERT [dbo].[GoodsIssueNoteDetails_Audit] ([GIN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PXK0001', N'H18   ', 4000, 8, N'DELETE', CAST(N'2018-05-31 00:08:53.750' AS DateTime))
INSERT [dbo].[GoodsReceiptNote] ([GRN_No], [Date], [SupplierID], [EmployeeID]) VALUES (N'PNK001', CAST(N'2018-05-25 16:22:47.230' AS DateTime), N'NCC01', N'NV0001')
INSERT [dbo].[GoodsReceiptNote] ([GRN_No], [Date], [SupplierID], [EmployeeID]) VALUES (N'PNK002', CAST(N'2018-05-28 17:22:33.493' AS DateTime), N'NCC03', N'NV0004')
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK001', CAST(N'2018-05-25 16:22:47.230' AS DateTime), N'NCC01', N'NV0005', N'INSERT', CAST(N'2018-05-25 16:22:49.777' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK001', CAST(N'2018-05-25 16:22:47.230' AS DateTime), N'NCC01', N'NV0005', N'UPDATE', CAST(N'2018-05-26 02:21:09.840' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK002', CAST(N'2018-05-28 17:22:33.493' AS DateTime), N'NCC01', N'NV0001', N'INSERT', CAST(N'2018-05-28 17:22:33.510' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK002', CAST(N'2018-05-28 17:22:33.493' AS DateTime), N'NCC01', N'NV0001', N'UPDATE', CAST(N'2018-05-28 17:23:54.563' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK003', CAST(N'2018-05-28 17:25:40.327' AS DateTime), N'NCC03', N'NV0004', N'INSERT', CAST(N'2018-05-28 17:25:40.350' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK003', CAST(N'2018-05-28 17:25:40.327' AS DateTime), N'NCC03', N'NV0004', N'DELETE', CAST(N'2018-05-28 17:28:20.430' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK004', CAST(N'2018-05-28 17:31:03.203' AS DateTime), N'NCC01', N'NV0001', N'INSERT', CAST(N'2018-05-28 17:31:03.227' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK005', CAST(N'2018-05-28 17:31:17.660' AS DateTime), N'NCC03', N'NV0003', N'INSERT', CAST(N'2018-05-28 17:31:17.727' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK007', CAST(N'2018-05-28 17:53:27.657' AS DateTime), N'NCC01', N'NV0001', N'DELETE', CAST(N'2018-05-28 17:53:41.927' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK008', CAST(N'2018-05-28 17:54:03.080' AS DateTime), N'NCC03', N'NV0004', N'INSERT', CAST(N'2018-05-28 17:54:03.087' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK008', CAST(N'2018-05-28 17:54:03.080' AS DateTime), N'NCC03', N'NV0004', N'DELETE', CAST(N'2018-05-28 18:02:47.703' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK009', CAST(N'2018-05-29 15:18:14.683' AS DateTime), N'NCC01', N'NV0001', N'INSERT', CAST(N'2018-05-29 15:18:14.790' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK009', CAST(N'2018-05-29 15:18:14.683' AS DateTime), N'NCC06', N'NV0006', N'DELETE', CAST(N'2018-05-29 15:19:29.157' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK009', CAST(N'2018-05-29 15:18:14.683' AS DateTime), N'NCC06', N'NV0006', N'INSERT', CAST(N'2018-05-29 16:43:35.643' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK004', CAST(N'2018-05-28 17:31:03.203' AS DateTime), N'NCC01', N'NV0001', N'DELETE', CAST(N'2018-05-28 17:31:10.450' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK005', CAST(N'2018-05-28 17:31:17.660' AS DateTime), N'NCC03', N'NV0003', N'DELETE', CAST(N'2018-05-28 17:52:50.580' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK007', CAST(N'2018-05-28 17:53:27.657' AS DateTime), N'NCC01', N'NV0001', N'INSERT', CAST(N'2018-05-28 17:53:27.680' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK008', CAST(N'2018-05-28 17:54:03.080' AS DateTime), N'NCC03', N'NV0004', N'DELETE', CAST(N'2018-05-28 17:57:34.770' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK008', CAST(N'2018-05-28 17:54:03.080' AS DateTime), N'NCC03', N'NV0004', N'INSERT', CAST(N'2018-05-28 18:02:32.563' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK009', CAST(N'2018-05-29 15:18:14.683' AS DateTime), N'NCC01', N'NV0001', N'UPDATE', CAST(N'2018-05-29 15:19:03.477' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK009', CAST(N'2018-05-29 15:18:14.683' AS DateTime), N'NCC06', N'NV0006', N'DELETE', CAST(N'2018-05-30 01:35:04.070' AS DateTime))
INSERT [dbo].[GoodsReceiptNote_Audit] ([GRN_No], [Date], [SupplierID], [EmployeeID], [Action], [Time]) VALUES (N'PNK001', CAST(N'2018-05-25 16:22:47.230' AS DateTime), N'NCC01', N'NV0005', N'UPDATE', CAST(N'2018-05-30 15:28:26.177' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H01', 45000, 200)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H02', 12000, 200)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H03', 22000, 200)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK002', N'H01', 45000, 20)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H04', 25000, 250)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H06', 27000, 180)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK002', N'H02', 12000, 20)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK001', N'H05', 27000, 300)
INSERT [dbo].[GoodsReceiptNoteDetails] ([GRN_No], [CommodityID], [Cost], [Quantity]) VALUES (N'PNK002', N'H05', 30000, 10)
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 500, N'INSERT', CAST(N'2018-05-26 01:35:39.620' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H02   ', 12000, 200, N'INSERT', CAST(N'2018-05-26 01:37:35.883' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H03   ', 22000, 200, N'INSERT', CAST(N'2018-05-26 01:38:35.833' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H04   ', 25000, 250, N'INSERT', CAST(N'2018-05-26 01:39:03.213' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 500, N'UPDATE', CAST(N'2018-05-26 01:54:37.017' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H07   ', 12, 2, N'INSERT', CAST(N'2018-05-26 02:08:01.400' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H05   ', 27000, 200, N'UPDATE', CAST(N'2018-05-26 15:50:01.373' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H05   ', 27000, 200, N'INSERT', CAST(N'2018-05-26 01:39:27.720' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H06   ', 27000, 180, N'INSERT', CAST(N'2018-05-26 01:40:57.283' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H07   ', 12, 2, N'DELETE', CAST(N'2018-05-26 02:08:06.887' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 500, N'UPDATE', CAST(N'2018-05-26 02:19:59.333' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 500, N'UPDATE', CAST(N'2018-05-26 02:20:07.350' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK002', N'H01   ', 45000, 10, N'INSERT', CAST(N'2018-05-28 17:22:52.340' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK002', N'H02   ', 12000, 20, N'INSERT', CAST(N'2018-05-28 17:23:42.383' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK008', N'H01   ', 45000, 5, N'INSERT', CAST(N'2018-05-28 18:02:36.097' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK008', N'H01   ', 45000, 5, N'DELETE', CAST(N'2018-05-28 18:02:47.703' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK009', N'H03   ', 17000, 20, N'DELETE', CAST(N'2018-05-29 15:19:26.387' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK002', N'H05   ', 30000, 10, N'INSERT', CAST(N'2018-05-30 10:15:34.870' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 500, N'UPDATE', CAST(N'2018-05-30 15:12:21.263' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 45000, 515, N'UPDATE', CAST(N'2018-05-30 15:28:26.200' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H18   ', 1000, 5, N'UPDATE', CAST(N'2018-05-30 15:28:38.180' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK008', N'H01   ', 45000, 5, N'DELETE', CAST(N'2018-05-28 17:57:34.770' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK009', N'H03   ', 17000, 20, N'INSERT', CAST(N'2018-05-29 15:18:44.800' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK009', N'H03   ', 17000, 20, N'DELETE', CAST(N'2018-05-30 01:35:04.080' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK002', N'H01   ', 45000, 10, N'UPDATE', CAST(N'2018-05-30 12:36:24.887' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H18   ', 1000, 5, N'INSERT', CAST(N'2018-05-30 15:26:39.413' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H18   ', 5000, 5, N'DELETE', CAST(N'2018-05-31 00:08:53.750' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK008', N'H01   ', 45000, 5, N'INSERT', CAST(N'2018-05-28 17:57:20.450' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK009', N'H03   ', 17000, 20, N'INSERT', CAST(N'2018-05-29 16:43:38.973' AS DateTime))
INSERT [dbo].[GoodsReceiptNoteDetails_Audit] ([GRN_No], [CommodityID], [Cost], [Quantity], [Action], [Time]) VALUES (N'PNK001', N'H01   ', 5000, 5, N'UPDATE', CAST(N'2018-05-31 00:09:37.443' AS DateTime))
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [PhoneNumber], [Address]) VALUES (N'NCC01', N'Hiệp Phát', N'0985474386', N'45/35 Khương Hạ, phường Khương Đình, Hà Nội')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [PhoneNumber], [Address]) VALUES (N'NCC02', N'Linh Cương', N'0964715198', N'Kiều Mai, Từ Liêm, Hà Nội')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [PhoneNumber], [Address]) VALUES (N'NCC03', N'Mai Phú Quý', N'0984152513', N'Số 56A1, khu đô thị mới Đại Kim - Hoàng Mai, Hà Nội')
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC01', N'Hiệp Phát', N'0985474386', N'45/35 Khương Hạ, phường Khương Đình, Hà Nội', N'INSERT', CAST(N'2018-05-17 22:49:37.090' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC02', N'Linh Cương', N'0964715198', N'Kiều Mai, Từ Liêm, Hà Nội', N'INSERT', CAST(N'2018-05-17 22:50:16.893' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC03', N'Mai Phú Quý', N'0984152513', N'Số 56A1, khu đô thị mới Đại Kim - Hoàng Mai, Hà Nội', N'INSERT', CAST(N'2018-05-17 22:51:20.647' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'02437738881', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'INSERT', CAST(N'2018-05-17 22:52:30.547' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'0243773821', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'DELETE', CAST(N'2018-05-17 23:17:08.513' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'02437738881', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'UPDATE', CAST(N'2018-05-17 23:16:41.893' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'0243773821', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'INSERT', CAST(N'2018-05-26 19:07:53.990' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'0243773821', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'UPDATE', CAST(N'2018-05-26 19:08:07.597' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'Pepsico', N'02437738881', N'71 Nguyễn Chí Thanh, Phường Láng Hạ, quận Đống Đa, Hà Nội', N'DELETE', CAST(N'2018-05-26 19:08:18.067' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'a', N'1', N'a', N'INSERT', CAST(N'2018-05-28 17:21:22.097' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'a', N'1', N'a', N'DELETE', CAST(N'2018-05-28 18:52:56.917' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'b', N'2', N'b', N'INSERT', CAST(N'2018-05-29 10:59:33.870' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'b', N'2', N'b', N'UPDATE', CAST(N'2018-05-29 10:59:48.493' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'bcd', N'2', N'b', N'UPDATE', CAST(N'2018-05-29 10:59:55.240' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC07', N'a', N'1', N'a', N'DELETE', CAST(N'2018-05-30 03:18:35.193' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC08', N'a', N'1', N'a', N'INSERT', CAST(N'2018-05-30 03:31:07.967' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC08', N'a', N'1', N'a', N'DELETE', CAST(N'2018-05-30 03:31:14.130' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC09', N'1', N'1', N'1', N'INSERT', CAST(N'2018-05-30 03:38:54.070' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC09', N'1', N'1', N'1', N'DELETE', CAST(N'2018-05-30 03:39:02.400' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC10', N'1', N'1', N'1', N'INSERT', CAST(N'2018-05-30 10:14:08.757' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC10', N'1', N'1', N'1', N'DELETE', CAST(N'2018-05-30 10:14:17.603' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC11', N'1', N'1', N'1', N'INSERT', CAST(N'2018-05-30 15:17:21.020' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC11', N'1', N'1', N'1', N'DELETE', CAST(N'2018-05-30 15:17:24.880' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'a', N'1', N'a', N'INSERT', CAST(N'2018-05-28 18:53:12.543' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'b', N'2', N'b', N'DELETE', CAST(N'2018-05-29 11:00:35.560' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'b', N'2', N'b', N'INSERT', CAST(N'2018-05-29 11:00:40.517' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC06', N'c', N'11111111111', N'a', N'INSERT', CAST(N'2018-05-29 15:13:35.180' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC06', N'c', N'11111111111', N'a', N'DELETE', CAST(N'2018-05-30 01:35:04.090' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC05', N'b', N'2', N'b', N'DELETE', CAST(N'2018-05-30 01:35:09.827' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC07', N'a', N'1', N'a', N'INSERT', CAST(N'2018-05-30 03:16:43.040' AS DateTime))
INSERT [dbo].[Supplier_Audit] ([SupplierID], [SupplierName], [PhoneNumber], [Address], [Action], [Time]) VALUES (N'NCC04', N'a', N'1', N'a', N'DELETE', CAST(N'2018-05-30 01:35:13.720' AS DateTime))
SET ANSI_PADDING ON

GO
/****** Object:  Index [TenHH]    Script Date: 2018-08-20 7:19:41 PM ******/
ALTER TABLE [dbo].[Commodity] ADD  CONSTRAINT [TenHH] UNIQUE NONCLUSTERED 
(
	[CommodityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TenNCC]    Script Date: 2018-08-20 7:19:41 PM ******/
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [TenNCC] UNIQUE NONCLUSTERED 
(
	[SupplierName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GoodsIssueNote]  WITH CHECK ADD  CONSTRAINT [FK_GOODSISSUENOTE_EMPLOYEE] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsIssueNote] CHECK CONSTRAINT [FK_GOODSISSUENOTE_EMPLOYEE]
GO
ALTER TABLE [dbo].[GoodsIssueNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GOODSISSUENOTEDETAILS_COMMODITY] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[Commodity] ([CommodityID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsIssueNoteDetails] CHECK CONSTRAINT [FK_GOODSISSUENOTEDETAILS_COMMODITY]
GO
ALTER TABLE [dbo].[GoodsIssueNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GOODSISSUENOTEDETAILS_GOODSISSUENOTE] FOREIGN KEY([GIN_No])
REFERENCES [dbo].[GoodsIssueNote] ([GIN_No])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsIssueNoteDetails] CHECK CONSTRAINT [FK_GOODSISSUENOTEDETAILS_GOODSISSUENOTE]
GO
ALTER TABLE [dbo].[GoodsReceiptNote]  WITH CHECK ADD  CONSTRAINT [FK_GOODSRECEIPTNOTE_EMPLOYEE] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsReceiptNote] CHECK CONSTRAINT [FK_GOODSRECEIPTNOTE_EMPLOYEE]
GO
ALTER TABLE [dbo].[GoodsReceiptNote]  WITH CHECK ADD  CONSTRAINT [FK_GOODSRECEIPTNOTE_SUPPLIER] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsReceiptNote] CHECK CONSTRAINT [FK_GOODSRECEIPTNOTE_SUPPLIER]
GO
ALTER TABLE [dbo].[GoodsReceiptNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GOODSRECEIPTNOTEDETAILS_COMMODITY] FOREIGN KEY([CommodityID])
REFERENCES [dbo].[Commodity] ([CommodityID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsReceiptNoteDetails] CHECK CONSTRAINT [FK_GOODSRECEIPTNOTEDETAILS_COMMODITY]
GO
ALTER TABLE [dbo].[GoodsReceiptNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GOODSRECEIPTNOTEDETAILS_GOODSRECEIPTNOTE] FOREIGN KEY([GRN_No])
REFERENCES [dbo].[GoodsReceiptNote] ([GRN_No])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsReceiptNoteDetails] CHECK CONSTRAINT [FK_GOODSRECEIPTNOTEDETAILS_GOODSRECEIPTNOTE]
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Account_Delete]
	@Username char(30)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM Account WHERE Username = @Username
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_Insert]
	@Username char(30),
	@Password nvarchar(30),
	@Name nvarchar(20),
	@Role nvarchar(20)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Account VALUES (@Username, @Password, @Name, @Role, '')
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_SelectByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Account_SelectByName] 
	@Name nvarchar(20)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT Username AS [Tên tài khoản],
			   Name AS [Tên],
			   Role AS [Vai trò],
			   Message AS [Tin nhắn]
		FROM Account
		WHERE Role <> N'Quản trị' AND Name LIKE '%' + @Name + '%'
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Account_SelectByUsername]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Account_SelectByUsername] 
	@Username nvarchar(20)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT * FROM Account
		WHERE  Username LIKE '%' + @Username + '%'
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Account_UpdateMessage]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_UpdateMessage]
	@Username char(30),
	@Message nvarchar(15)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Account
		SET Message = @Message
		WHERE Username = @Username
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_UpdatePassword]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_UpdatePassword]
	@Username nchar(30),
	@Password nvarchar(30)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Account
		SET Message = '', Password = @Password COLLATE SQL_Latin1_General_CP1_CS_AS
		WHERE Username = @Username
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_AccountAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_AccountAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT Username AS [Tên tài khoản],
			   Name AS [Tên],
			   Role AS [Vai trò],
			   Message AS [Tin nhắn],
			   Action,
			   Time
		FROM Account_Audit
		WHERE Role <> N'Quản trị'
		ORDER BY Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Commodity_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Commodity_Delete] 
	@CommodityID nchar(3)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM Commodity WHERE CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Commodity_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Commodity_Insert]
	@CommodityName nvarchar(30),
	@CalculationUnit nvarchar(20)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Commodity(CommodityName, Quantity, CalculationUnit)
		VALUES(@CommodityName, 0, @CalculationUnit)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Commodity_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Commodity_Select] 
AS
	BEGIN
		SET NOCOUNT ON
		SELECT CommodityID AS [Mã hàng hoá], 
			   CommodityName AS [Tên hàng hoá], 
			   Quantity AS [Số lượng],
			   CalculationUnit AS [Đơn vị tính] 
		FROM Commodity
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Commodity_SelectByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Commodity_SelectByName] 
	@CommodityName nvarchar(30)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT CommodityID AS [Mã hàng hoá], 
			   CommodityName AS [Tên hàng hoá],
			   Quantity AS [Số lượng],
			   CalculationUnit AS [Đơn vị tính] 
		FROM Commodity
		WHERE CommodityName LIKE '%' + @CommodityName + '%'
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Commodity_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Commodity_Update]
	@CommodityID nchar(3),
	@CommodityName nvarchar(30), 
	@CalculationUnit nvarchar(20) 
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Commodity
		SET CommodityName = @CommodityName, CalculationUnit = @CalculationUnit
		WHERE CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_CommodityAudit_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CommodityAudit_Insert]
	@CommodityID nchar(3),
	@CommodityName nvarchar(30),
	@Quantity int,
	@CalculationUnit nvarchar(20)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Commodity VALUES(@CommodityID, @CommodityName, @Quantity, @CalculationUnit)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_CommodityAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CommodityAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT CommodityID AS [Mã hàng hoá], 
			   CommodityName AS [Tên hàng hoá], 
			   Quantity AS [Số lượng],
			   CalculationUnit AS [Đơn vị tính],
			   Action,
			   Time
		FROM Commodity_Audit
		ORDER BY Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Employee_Delete] 
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM Employee WHERE EmployeeID = @EmployeeID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Employee_Insert]
	@FullName nvarchar(30),
	@Gender bit,
	@Birthday date,
	@MobilePhone nvarchar(11)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Employee(FullName, Gender, Birthday, MobilePhone)
		VALUES (@FullName, @Gender, @Birthday, @MobilePhone)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employee_Select] 
AS
	BEGIN
		SET NOCOUNT ON
		SELECT EmployeeID AS [Mã nhân viên],
			   FullName AS [Họ tên],
			   Gender AS [Giới tính],
			   Birthday AS [Ngày sinh],
			   MobilePhone AS [Điện thoại] 
		FROM Employee
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_SelectByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Employee_SelectByName] 
	@Name nvarchar(30)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT EmployeeID AS [Mã nhân viên],
			   FullName AS [Họ tên],
			   Gender AS [Giới tính],
			   Birthday AS [Ngày sinh],
			   MobilePhone AS [Điện thoại] 
		FROM Employee
		WHERE FullName LIKE '%' + @Name + '%'
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Employee_Update]
	@EmployeeID nchar(6),
	@FullName nvarchar(30),
	@Gender bit,
	@Birthday date,
	@MobilePhone nvarchar(11)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Employee
		SET FullName = @FullName, Gender = @Gender, Birthday = @Birthday, MobilePhone = @MobilePhone
		WHERE EmployeeID = @EmployeeID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeAudit_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EmployeeAudit_Insert]
	@EmployeeID nchar(6),
	@FullName nvarchar(30),
	@Gender bit,
	@Birthday date,
	@MobilePhone nvarchar(11)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Employee VALUES (@EmployeeID, @FullName, @Gender, @Birthday, @MobilePhone)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EmployeeAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT EmployeeID AS [Mã nhân viên],
			   FullName AS [Họ tên],
			   Gender AS [Giới tính],
			   Birthday AS [Ngày sinh],
			   MobilePhone AS [Điện thoại],
			   Action,
			   Time
		FROM Employee_Audit
		ORDER BY Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNote_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNote_Delete] 
	@GIN_No nchar(7)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM GoodsIssueNote WHERE GIN_No = @GIN_No
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNote_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNote_Insert] 
	@Date datetime,
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsIssueNote(Date, EmployeeID) VALUES (@Date, @EmployeeID)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNote_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNote_Update] 
	@GIN_No nchar(7),
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE GoodsIssueNote
		SET EmployeeID = @EmployeeID
		WHERE GIN_No = @GIN_No
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteAudit_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteAudit_Insert] 
	@GIN_No nchar(7),
	@Date datetime,
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsIssueNote VALUES (@GIN_No, @Date, @EmployeeID)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT GoodsIssueNote_Audit.GIN_No AS [Số phiếu xuất kho],
			   GoodsIssueNote_Audit.Date AS [Ngày xuất],
			   GoodsIssueNote_Audit.EmployeeID AS [Mã nhân viên],
			   Employee_Audit.FullName AS [Tên nhân viên],
			   GoodsIssueNote_Audit.Action,
			   GoodsIssueNote_Audit.Time
		FROM GoodsIssueNote_Audit
		JOIN Employee_Audit ON GoodsIssueNote_Audit.EmployeeID = Employee_Audit.EmployeeID
		ORDER BY GoodsIssueNote_Audit.Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetails_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteDetails_Delete] 
	@GIN_No nchar(7),
	@CommodityID nchar(3)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM GoodsIssueNoteDetails WHERE GIN_No = @GIN_No AND CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetails_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteDetails_Insert] 
	@GIN_No nchar(7),
	@CommodityID nchar(3),
	@Cost float,
	@Quantity int
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsIssueNoteDetails VALUES (@GIN_No, @CommodityID, @Cost, @Quantity)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetails_SelectBetweenTimeGroupByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteDetails_SelectBetweenTimeGroupByName]
	@TimeStart datetime,
	@TimeEnd datetime
AS
	BEGIN
		SET NOCOUNT ON
		SELECT CommodityName AS [Tên hàng hoá],
			   Cost AS [Giá xuất],
			   SUM(GoodsIssueNoteDetails.Quantity) AS [Tổng số lượng]
		FROM GoodsIssueNoteDetails
		JOIN Commodity ON GoodsIssueNoteDetails.CommodityID = Commodity.CommodityID
		JOIN GoodsIssueNote ON GoodsIssueNoteDetails.GIN_No = GoodsIssueNote.GIN_No
		WHERE GoodsIssueNote.Date BETWEEN @TimeStart AND @TimeEnd
		GROUP BY CommodityName, Cost
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetails_SelectByNumber]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GoodsIssueNoteDetails_SelectByNumber] 
	@GIN_No nchar(7)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT Date AS [Thời gian lập],
			   CommodityName AS [Tên hàng hoá],
			   Cost AS [Giá xuất],
			   GoodsIssueNoteDetails.Quantity AS [Số lượng],
			   CalculationUnit AS [Đơn vị tính],
			   FullName AS [Tên nhân viên] 
		FROM GoodsIssueNoteDetails 
		JOIN GoodsIssueNote ON GoodsIssueNoteDetails.GIN_No = GoodsIssueNote.GIN_No 
		JOIN Commodity ON GoodsIssueNoteDetails.CommodityID = Commodity.CommodityID 
		JOIN Employee ON GoodsIssueNote.EmployeeID = Employee.EmployeeID 
		WHERE GoodsIssueNoteDetails.GIN_No = @GIN_No
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetails_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteDetails_Update] 
	@GIN_No nchar(7),
	@CommodityID nchar(3),
	@Cost float, 
	@Quantity int
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE GoodsIssueNoteDetails
		SET Cost = @Cost, Quantity = @Quantity
		WHERE GIN_No = @GIN_No AND CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsIssueNoteDetailsAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsIssueNoteDetailsAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT DISTINCT GoodsIssueNoteDetails_Audit.GIN_No AS [Số phiếu xuất kho],
					    Date AS [Ngày xuất],
					    Commodity_Audit.CommodityID AS [Mã hàng hoá],
					    CommodityName AS [Tên hàng hoá],
					    Cost AS [Giá xuất],
					    GoodsIssueNoteDetails_Audit.Quantity AS [Số lượng],
					    CalculationUnit AS [Đơn vị tính],
					    GoodsIssueNoteDetails_Audit.Action,
					    GoodsIssueNoteDetails_Audit.Time 
		FROM GoodsIssueNoteDetails_Audit 
		JOIN GoodsIssueNote_Audit ON GoodsIssueNoteDetails_Audit.GIN_No = GoodsIssueNote_Audit.GIN_No 
		JOIN Commodity_Audit ON GoodsIssueNoteDetails_Audit.CommodityID = Commodity_Audit.CommodityID 
		ORDER BY GoodsIssueNoteDetails_Audit.Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNote_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNote_Delete] 
	@GRN_No nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM GoodsReceiptNote WHERE GRN_No = @GRN_No
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNote_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNote_Insert] 
	@Date datetime,
	@SupplierID nchar(5),
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsReceiptNote(Date, SupplierID, EmployeeID) VALUES (@Date, @SupplierID, @EmployeeID)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNote_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNote_Update] 
	@GRN_No nchar(6),
	@SupplierID nchar(5),
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE GoodsReceiptNote
		SET SupplierID = @SupplierID, EmployeeID = @EmployeeID
		WHERE GRN_No = @GRN_No
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteAudit_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteAudit_Insert] 
	@GRN_No nchar(6),
	@Date datetime,
	@SupplierID nchar(5),
	@EmployeeID nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsReceiptNote VALUES (@GRN_No, @Date, @SupplierID, @EmployeeID)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT GoodsReceiptNote_Audit.GRN_No AS [Số phiếu nhập kho],
			   Date AS [Ngày nhập],
			   GoodsReceiptNote_Audit.SupplierID AS [Mã nhà cung cấp],
			   SupplierName AS [Tên nhà cung cấp],
			   GoodsReceiptNote_Audit.EmployeeID AS [Mã nhân viên],
			   FullName AS [Tên nhân viên],
			   GoodsReceiptNote_Audit.Action,
			   GoodsReceiptNote_Audit.Time
		FROM GoodsReceiptNote_Audit
		JOIN Supplier_Audit ON GoodsReceiptNote_Audit.SupplierID = Supplier_Audit.SupplierID
		JOIN Employee_Audit ON GoodsReceiptNote_Audit.EmployeeID = Employee_Audit.EmployeeID
		ORDER BY GoodsReceiptNote_Audit.Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetails_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteDetails_Delete] 
	@GRN_No nchar(6),
	@CommodityID nchar(3)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM GoodsReceiptNoteDetails WHERE GRN_No = @GRN_No AND CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetails_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteDetails_Insert] 
	@GRN_No nchar(6),
	@CommodityID nchar(3),
	@Cost float,
	@Quantity int
AS
	BEGIN
		SET NOCOUNT ON
		INSERT GoodsReceiptNoteDetails VALUES (@GRN_No, @CommodityID, @Cost, @Quantity)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetails_SelectBetweenTimeGroupByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteDetails_SelectBetweenTimeGroupByName]
	@TimeStart datetime,
	@TimeEnd datetime
AS
	BEGIN
		SET NOCOUNT ON
		SELECT CommodityName AS [Tên hàng hoá],
			   Cost AS [Giá nhập],
			   SUM(GoodsReceiptNoteDetails.Quantity) AS [Tổng số lượng]
		FROM GoodsReceiptNoteDetails
		JOIN Commodity ON GoodsReceiptNoteDetails.CommodityID = Commodity.CommodityID
		JOIN GoodsReceiptNote ON GoodsReceiptNoteDetails.GRN_No = GoodsReceiptNote.GRN_No
		WHERE GoodsReceiptNote.Date BETWEEN @TimeStart AND @TimeEnd
		GROUP BY CommodityName, Cost
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetails_SelectByNumber]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GoodsReceiptNoteDetails_SelectByNumber] 
	@GRN_No nchar(6)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT GoodsReceiptNote.Date AS [Thời gian lập],
			   CommodityName AS [Tên hàng hoá], 
			   Cost AS [Giá nhập],
			   GoodsReceiptNoteDetails.Quantity AS [Số lượng], 
			   CalculationUnit AS [Đơn vị tính], 
			   SupplierName AS [Tên nhà cung cấp], 
			   FullName AS [Tên nhân viên] 
		FROM GoodsReceiptNoteDetails 
		JOIN GoodsReceiptNote ON GoodsReceiptNoteDetails.GRN_No = GoodsReceiptNote.GRN_No 
		JOIN Commodity ON GoodsReceiptNoteDetails.CommodityID = Commodity.CommodityID 
		JOIN Supplier ON GoodsReceiptNote.SupplierID = Supplier.SupplierID 
		JOIN Employee ON GoodsReceiptNote.EmployeeID = Employee.EmployeeID
		WHERE GoodsReceiptNoteDetails.GRN_No = @GRN_No
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetails_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteDetails_Update] 
	@GRN_No nchar(6),
	@CommodityID nchar(3),
	@Cost float,
	@Quantity int
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE GoodsReceiptNoteDetails
		SET Cost = @Cost, Quantity = @Quantity
		WHERE GRN_No = @GRN_No AND CommodityID = @CommodityID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GoodsReceiptNoteDetailsAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GoodsReceiptNoteDetailsAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT DISTINCT GoodsReceiptNoteDetails_Audit.GRN_No AS [Số phiếu nhập kho],
			   Date AS [Ngày nhập],
			   Commodity_Audit.CommodityID AS [Mã hàng hoá], 
			   CommodityName AS [Tên hàng hoá], 
			   Cost AS [Giá nhập],
			   GoodsReceiptNoteDetails_Audit.Quantity AS [Số lượng], 
			   CalculationUnit AS [Đơn vị tính], 
			   GoodsReceiptNoteDetails_Audit.Action,
			   GoodsReceiptNoteDetails_Audit.Time
		FROM GoodsReceiptNoteDetails_Audit 
		JOIN GoodsReceiptNote_Audit ON GoodsReceiptNoteDetails_Audit.GRN_No = GoodsReceiptNote_Audit.GRN_No 
		JOIN Commodity_Audit ON GoodsReceiptNoteDetails_Audit.CommodityID = Commodity_Audit.CommodityID 
		ORDER BY GoodsReceiptNoteDetails_Audit.Time DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Login]
	@Username char(30),
	@Password nvarchar(30)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT * FROM Account
		WHERE Username = @Username AND Password = @Password COLLATE SQL_Latin1_General_CP1_CS_AS
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Supplier_Delete]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Supplier_Delete] 
	@SupplierID nchar(5)
AS
	BEGIN
		SET NOCOUNT ON
		DELETE FROM Supplier WHERE SupplierID = @SupplierID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Supplier_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Supplier_Insert]
	@SupplierName nvarchar(50),
	@PhoneNumber nvarchar(11),
	@Address nvarchar(100)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Supplier(SupplierName, PhoneNumber, Address) VALUES(@SupplierName, @PhoneNumber, @Address)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Supplier_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Supplier_Select] 
AS
	BEGIN
		SET NOCOUNT ON
		SELECT SupplierID AS [Mã nhà cung cấp], 
			   SupplierName AS [Tên nhà cung cấp], 
			   PhoneNumber AS [Số điện thoại], 
			   Address AS [Địa chỉ] 
		FROM Supplier
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Supplier_SelectByName]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Supplier_SelectByName] 
	@SupplierName nvarchar(50)
AS
	BEGIN
		SET NOCOUNT ON
		SELECT SupplierID AS [Mã nhà cung cấp], 
			   SupplierName AS [Tên nhà cung cấp], 
			   PhoneNumber AS [Số điện thoại], 
			   Address AS [Địa chỉ] 
		FROM Supplier
		WHERE SupplierName LIKE '%' + @SupplierName + '%'
	END

GO
/****** Object:  StoredProcedure [dbo].[sp_Supplier_Update]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Supplier_Update]
	@SupplierID nchar(5),
	@SupplierName nvarchar(50),
	@PhoneNumber nvarchar(11),
	@Address nvarchar(100)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Supplier
		SET SupplierName = @SupplierName, PhoneNumber = @PhoneNumber, Address = @Address
		WHERE SupplierID = @SupplierID
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierAudit_Insert]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SupplierAudit_Insert]
	@SupplierID nchar(5),
	@SupplierName nvarchar(50),
	@PhoneNumber nvarchar(11),
	@Address nvarchar(100)
AS
	BEGIN
		SET NOCOUNT ON
		INSERT Supplier VALUES(@SupplierID, @SupplierName, @PhoneNumber, @Address)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierAudit_Select]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SupplierAudit_Select]
AS
	BEGIN
		SET NOCOUNT ON
		SELECT SupplierID AS [Mã nhà cung cấp], 
			   SupplierName AS [Tên nhà cung cấp], 
			   PhoneNumber AS [Số điện thoại], 
			   Address AS [Địa chỉ],
			   Action,
			   Time
		FROM Supplier_Audit
		ORDER BY Time DESC
	END
GO
/****** Object:  Trigger [dbo].[tg_DeleteAccount]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteAccount]
ON [dbo].[Account]
FOR DELETE
AS
	INSERT Account_Audit SELECT *,'DELETE',GETDATE() FROM deleted
GO
/****** Object:  Trigger [dbo].[tg_InsertAccount]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertAccount]
ON [dbo].[Account]
FOR INSERT
AS
	INSERT Account_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateAccount]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateAccount]
ON [dbo].[Account]
FOR UPDATE
AS
	INSERT Account_Audit SELECT *,'UPDATE',GETDATE() FROM inserted
GO
/****** Object:  Trigger [dbo].[tg_DeleteCommodity]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteCommodity]
ON [dbo].[Commodity]
FOR DELETE
AS
	INSERT Commodity_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertCommodity]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertCommodity]
ON [dbo].[Commodity]
FOR INSERT
AS
	INSERT Commodity_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateCommodity]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateCommodity]
ON [dbo].[Commodity]
FOR UPDATE
AS
	INSERT Commodity_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_CheckBirthday]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_CheckBirthday]
ON [dbo].[Employee]
FOR INSERT, UPDATE
AS
	BEGIN
		DECLARE @Count int = (SELECT COUNT(*) FROM Employee
							  WHERE YEAR(GETDATE()) - YEAR(Employee.Birthday) < 18)
		IF (@Count > 0)
		BEGIN
			PRINT N'Không được thêm nhân viên dưới 18 tuổi'
			ROLLBACK TRAN
		END
	END

GO
/****** Object:  Trigger [dbo].[tg_DeleteEmployee]    Script Date: 2018-08-20 7:19:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteEmployee]
ON [dbo].[Employee]
FOR DELETE
AS
	INSERT Employee_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertEmployee]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertEmployee]
ON [dbo].[Employee]
FOR INSERT
AS
	INSERT Employee_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateEmployee]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateEmployee]
ON [dbo].[Employee]
FOR UPDATE
AS
	INSERT Employee_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_DeleteGoodsIssueNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteGoodsIssueNote]
ON [dbo].[GoodsIssueNote]
FOR DELETE
AS
	INSERT GoodsIssueNote_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertGoodsIssueNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertGoodsIssueNote]
ON [dbo].[GoodsIssueNote]
FOR INSERT
AS
	INSERT GoodsIssueNote_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateGoodsIssueNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateGoodsIssueNote]
ON [dbo].[GoodsIssueNote]
FOR UPDATE
AS
	INSERT GoodsIssueNote_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_CheckGoodsIssueNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_CheckGoodsIssueNoteDetails]
ON [dbo].[GoodsIssueNoteDetails]
FOR INSERT
AS
	BEGIN
		DECLARE @GIN_No nchar(7) = (SELECT GIN_No FROM inserted)
		DECLARE @CommodityID nchar(3) = (SELECT CommodityID FROM inserted)
		DECLARE @Count int = (SELECT COUNT(*) FROM GoodsIssueNoteDetails
							  WHERE GIN_No = @GIN_No AND CommodityID = @CommodityID)
		IF (@Count > 1)
		BEGIN
			PRINT 'Phiếu xuất kho đã có hàng hoá này'
			ROLLBACK TRAN
		END
	END

GO
/****** Object:  Trigger [dbo].[tg_DeleteGoodsIssueNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteGoodsIssueNoteDetails]
ON [dbo].[GoodsIssueNoteDetails]
FOR DELETE
AS
	INSERT GoodsIssueNoteDetails_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertGoodsIssueNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertGoodsIssueNoteDetails]
ON [dbo].[GoodsIssueNoteDetails]
FOR INSERT
AS
	INSERT GoodsIssueNoteDetails_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateGoodsIssueNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateGoodsIssueNoteDetails]
ON [dbo].[GoodsIssueNoteDetails]
FOR UPDATE
AS
	INSERT GoodsIssueNoteDetails_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_DeleteGoodsReceiptNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteGoodsReceiptNote]
ON [dbo].[GoodsReceiptNote]
FOR DELETE
AS
	INSERT GoodsReceiptNote_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertGoodsReceiptNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertGoodsReceiptNote]
ON [dbo].[GoodsReceiptNote]
FOR INSERT
AS
	INSERT GoodsReceiptNote_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateGoodsReceiptNote]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateGoodsReceiptNote]
ON [dbo].[GoodsReceiptNote]
FOR UPDATE
AS
	INSERT GoodsReceiptNote_Audit SELECT *,'UPDATE',GETDATE() FROM deleted
GO
/****** Object:  Trigger [dbo].[tg_CheckGoodsReceiptNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_CheckGoodsReceiptNoteDetails]
ON [dbo].[GoodsReceiptNoteDetails]
FOR INSERT
AS
	BEGIN
		DECLARE @GRN_No nchar(6) = (SELECT GRN_No FROM inserted)
		DECLARE @CommodityID nchar(3) = (SELECT CommodityID FROM inserted)
		DECLARE @Count int = (SELECT COUNT(*) FROM GoodsReceiptNoteDetails
							  WHERE GRN_No = @GRN_No AND CommodityID = @CommodityID)
		IF (@Count > 1)
		BEGIN
			PRINT 'Phiếu nhập kho đã có hàng hoá này'
			ROLLBACK TRAN
		END
	END

GO
/****** Object:  Trigger [dbo].[tg_DeleteGoodsReceiptNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteGoodsReceiptNoteDetails]
ON [dbo].[GoodsReceiptNoteDetails]
FOR DELETE
AS
	INSERT GoodsReceiptNoteDetails_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertGoodsReceiptNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertGoodsReceiptNoteDetails]
ON [dbo].[GoodsReceiptNoteDetails]
FOR INSERT
AS
	INSERT GoodsReceiptNoteDetails_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateGoodsReceiptNoteDetails]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateGoodsReceiptNoteDetails]
ON [dbo].[GoodsReceiptNoteDetails]
FOR UPDATE
AS
	INSERT GoodsReceiptNoteDetails_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_DeleteSupplier]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_DeleteSupplier]
ON [dbo].[Supplier]
FOR DELETE
AS
	INSERT Supplier_Audit SELECT *,'DELETE',GETDATE() FROM deleted

GO
/****** Object:  Trigger [dbo].[tg_InsertSupplier]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_InsertSupplier]
ON [dbo].[Supplier]
FOR INSERT
AS
	INSERT Supplier_Audit SELECT *,'INSERT',GETDATE() FROM inserted

GO
/****** Object:  Trigger [dbo].[tg_UpdateSupplier]    Script Date: 2018-08-20 7:19:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_UpdateSupplier]
ON [dbo].[Supplier]
FOR UPDATE
AS
	INSERT Supplier_Audit SELECT *,'UPDATE',GETDATE() FROM deleted

GO
USE [master]
GO
ALTER DATABASE [LotteCinemaRepositoryManagement] SET  READ_WRITE 
GO
