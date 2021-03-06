USE [master]
GO
/****** Object:  Database [SpeareParts]    Script Date: 1/17/2021 3:23:54 PM ******/
CREATE DATABASE [SpeareParts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SpeareParts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SpeareParts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SpeareParts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SpeareParts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SpeareParts] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SpeareParts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SpeareParts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SpeareParts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SpeareParts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SpeareParts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SpeareParts] SET ARITHABORT OFF 
GO
ALTER DATABASE [SpeareParts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SpeareParts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SpeareParts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SpeareParts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SpeareParts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SpeareParts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SpeareParts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SpeareParts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SpeareParts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SpeareParts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SpeareParts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SpeareParts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SpeareParts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SpeareParts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SpeareParts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SpeareParts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SpeareParts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SpeareParts] SET RECOVERY FULL 
GO
ALTER DATABASE [SpeareParts] SET  MULTI_USER 
GO
ALTER DATABASE [SpeareParts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SpeareParts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SpeareParts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SpeareParts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SpeareParts] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SpeareParts', N'ON'
GO
ALTER DATABASE [SpeareParts] SET QUERY_STORE = OFF
GO
USE [SpeareParts]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SpeareParts]
GO
/****** Object:  Table [dbo].[PartsItem]    Script Date: 1/17/2021 3:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartsItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartsNo] [nvarchar](150) NOT NULL,
	[PartsName] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[SheetNo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_PartsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SparePartsItem]    Script Date: 1/17/2021 3:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SparePartsItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartsNo] [nvarchar](150) NOT NULL,
	[PartsName] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[SheetNo] [nvarchar](250) NOT NULL,
	[UnitPrice] [numeric](18, 2) NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Supplier] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_SparePartsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PartsItem] ON 

INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (1, N'NHN0060', N'JACK ', 46200, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (2, N'NKN0053-59', N'SELECTOR ( 1 - 6)', 5100, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (3, N'NKN0043', N'SELECT JACK ', 5600, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (4, N'NKN0077', N'SINKER WITH SPRING ', 42698, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (5, N'NKN0031', N'YARN GUIDE SPACER ', 27257, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (6, N'NKN0028', N'NEEDLE GUIDE SPACER ', 14858, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (7, N'NKC0052', N'STITCH PRESSER ', 2087, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (8, N'KCT1650', N'YARN FEEDER TIP ', 31, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (9, N'HIT0159', N'SIDE TENSION ', 1199, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (10, N'HIS5002', N'TOP TENSION ', 2517, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (11, N'NKB0009', N'SINKER OIL POT ', 586, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (12, N'FHB0012', N'SINKER OIL POT BRUSH ', 1172, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (13, N'XEHG004', N'BRUSH ', 23, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (14, N'NKF0118', N'MAIN ROLLER ', 90, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (15, N'NAF00791', N'SET UP NEEDLE ', 903, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (16, N'NAF00801', N'SET UP NEEDLE SLIDER ', 903, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (17, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 88950, N'SSR 14 A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (18, N'NHN0060', N'JACK ', 33400, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (19, N'NKN0053-59', N'SELECTOR ( 1 - 6)', 1500, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (20, N'NKN0043', N'SELECT JACK ', 1650, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (21, N'NKN0077', N'SINKER WITH SPRING ', 28268, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (22, N'NKN0031', N'YARN GUIDE SPACER ', 14180, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (23, N'NKN0028', N'NEEDLE GUIDE SPACER ', 5259, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (24, N'NKC0052', N'STITCH PRESSER ', 418, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (25, N'KCT1650', N'YARN FEEDER TIP ', 25, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (26, N'HIT0159', N'SIDE TENSION ', 219, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (27, N'HIS5002', N'TOP TENSION ', 356, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (28, N'NKB0009', N'SINKER OIL POT ', 108, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (29, N'FHB0012', N'SINKER OIL POT BRUSH ', 216, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (30, N'XEHG004', N'BRUSH ', 25, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (31, N'NKF0118', N'MAIN ROLLER ', 20, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (32, N'NAF00791', N'SET UP NEEDLE ', 308, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (33, N'NAF00801', N'SET UP NEEDLE SLIDER ', 308, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (34, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 57050, N'SSR14 B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (35, N'NHN0060', N'JACK ', 1000, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (36, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 300, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (37, N'KCN00562', N'SELECT JACK ', 300, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (38, N'NAN0110', N'SINKER WITH SPRING ', 1253, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (39, N'NAN0045', N'NEEDLE PLATE SPACER ', 383, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (40, N'NAN0099', N'YARN GUIDE SPACER ', 545, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (41, N'NKW5500', N'SIDE TENSION ', 174, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (42, N'NKS5003-O', N'TOP TENSION ', 445, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (43, N'NAC0086', N'STITCH PRESSER ', 220, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (44, N'NAF0110', N'MAIN ROLLER ', 80, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (45, N'NAF00791', N'SET UP NEEDLE ', 115, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (46, N'NAF00801', N'SET UP NEEDLE SLIDER ', 115, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (47, N'XEHG004', N'BRUSH ', 1, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (48, N'KCT1650', N'YARN FEEDER TIP ', 92, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (49, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 39, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (50, N'NKB0009', N'SINKER OIL POT ', 17, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (51, N'FHB0012', N'SINKER OIL POT BRUSH ', 34, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (52, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 2800, N'MSIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (53, N'NHN0060', N'JACK ', 3250, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (54, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 1500, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (55, N'KCN00562', N'SELECT JACK ', 1900, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (56, N'NAN0110', N'SINKER WITH SPRING ', 2073, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (57, N'NAN0045', N'NEEDLE PLATE SPACER ', 962, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (58, N'NAN0099', N'YARN GUIDE SPACER ', 881, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (59, N'NKW5500', N'SIDE TENSION ', 65, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (60, N'NKS5003-O', N'TOP TENSION ', 272, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (61, N'NAC0086', N'STITCH PRESSER ', 109, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (62, N'NAF0110', N'MAIN ROLLER ', 21, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (63, N'NAF00791', N'SET UP NEEDLE ', 22, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (64, N'NAF00801', N'SET UP NEEDLE SLIDER ', 22, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (65, N'XEHG004', N'BRUSH ', 3, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (66, N'KCT1650', N'YARN FEEDER TIP ', 38, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (67, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 43, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (68, N'NKB0009', N'SINKER OIL POT ', 3, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (69, N'FHB0012', N'SINKER OIL POT BRUSH ', 6, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (70, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 5050, N'MSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (71, N'NHN0060', N'JACK ', 1300, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (72, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 300, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (73, N'KCN00562', N'SELECT JACK ', 100, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (74, N'NAN0110', N'SINKER WITH SPRING ', 1460, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (75, N'NAN0045', N'NEEDLE PLATE SPACER ', 259, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (76, N'NAN0099', N'YARN GUIDE SPACER ', 365, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (77, N'NKW5500', N'SIDE TENSION ', 9, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (78, N'NKS5003-O', N'TOP TENSION ', 92, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (79, N'NAC0086', N'STITCH PRESSER ', 30, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (80, N'NAF0110', N'MAIN ROLLER ', 7, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (81, N'NAF00791', N'SET UP NEEDLE ', 14, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (82, N'NAF00801', N'SET UP NEEDLE SLIDER ', 14, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (83, N'KCT1650', N'YARN FEEDER TIP ', 27, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (84, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 2700, N'MSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (85, N'NHN0092', N'JACK ', 450, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (86, N'NAN0076-79', N'SELECTOR ( 3-6)', 400, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (87, N'NKN0042', N'SELECT JACK ', 350, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (88, N'KSN0008', N'SINKER ', 588, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (89, N'KON0532', N'SINKER SPRING ', 588, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (90, N'NAN0047', N'NEEDLE PLATE SPACER ', 25, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (91, N'NAN0056', N'YARN GUIDE SPACER ', 50, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (92, N'NKW5504', N'SIDE TENSION ', 1, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (93, N'NKS5002', N'TOP TENSION ', 12, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (94, N'NAC0103', N'STITCH PRESSER ', 17, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (95, N'NAF00861', N'SET UP NEEDLE ', 37, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (96, N'NAF00761', N'SET UP NEEDLE SLIDER ', 37, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (97, N'NKB0004', N'SINKER OIL POT', 1, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (98, N'NAB0008', N'SINKER OIL POT BRUSH ', 2, N'NSIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (99, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 650, N'NSIG B')
GO
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (100, N'NHN0092', N'JACK ', 100, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (101, N'NAN0076-79', N'SELECTOR ( 3-6)', 200, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (102, N'NKN0042', N'SELECT JACK ', 100, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (103, N'KSN0008', N'SINKER ', 69, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (104, N'KON0532', N'SINKER SPRING ', 69, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (105, N'NAN0056', N'YARN GUIDE SPACER ', 9, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (106, N'NKW5504', N'SIDE TENSION ', 2, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (107, N'NKS5002', N'TOP TENSION ', 6, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (108, N'NAC0103', N'STITCH PRESSER ', 4, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (109, N'NKB0004', N'SINKER OIL POT', 1, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (110, N'NAB0008', N'SINKER OIL POT BRUSH ', 2, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (111, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 200, N'NSIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (112, N'NHN0092', N'JACK ', 2350, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (113, N'NAN0076-79', N'SELECTOR ( 3-6)', 600, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (114, N'NKN0042', N'SELECT JACK ', 1600, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (115, N'KSN0008', N'SINKER ', 4954, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (116, N'KON0532', N'SINKER SPRING ', 4954, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (117, N'NAN0047', N'NEEDLE PLATE SPACER ', 164, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (118, N'NAN0056', N'YARN GUIDE SPACER ', 188, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (119, N'HIT0163', N'SIDE TENSION ', 34, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (120, N'NKS5002', N'TOP TENSION ', 190, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (121, N'NAC0103', N'STITCH PRESSER ', 52, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (122, N'NAF0110', N'MAIN ROLLER ', 18, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (123, N'NAF00861', N'SET UP NEEDLE ', 550, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (124, N'NAF00761', N'SET UP NEEDLE SLIDER ', 550, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (125, N'XEHG009', N'BRUSH ', 5, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (126, N'KLT0510', N'YARN FEEDER TIP ', 48, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (127, N'NATG003-6', N'CARRIER ASSY (COMPLETE SET) ', 39, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (128, N'NKB0004', N'SINKER OIL POT', 13, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (129, N'NAB0008', N'SINKER OIL POT BRUSH ', 26, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (130, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 3600, N'NSSG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (131, N'HHN0015-B', N'JACK ', 550, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (132, N'HHN0017-18', N'SELECTOR ( 1-2)', 200, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (133, N'HHN0016', N'SELECT JACK ', 50, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (134, N'HHN0011', N'SINKER ', 214, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (135, N'HHN0030', N'SINKER SPRING ', 214, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (136, N'HHN0007', N'NEEDLE PLATE SPACER ', 25, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (137, N'HHN0009', N'YARN GUIDE SPACER ', 68, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (138, N'HHN0010', N'YARN KEEPER ', 68, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (139, N'NKW5505', N'SIDE TENSION ', 13, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (140, N'NKS5001-Q', N'TOP TENSION ', 13, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (141, N'KCC1083-F', N'STITCH PRESSER ', 1, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (142, N'KGF0059-G', N'MAIN ROLLER ', 14, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (143, N'KCF1003', N'SET UP NEEDLE ', 18, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (144, N'KCF1004', N'SET UP NEEDLE SLIDER ', 18, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (145, N'KCW5527-A', N'YARN FEEDER ASSY D (TIP) (3, 4, 5, & 6)', 4, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (146, N'HHW5501', N'YARN FEEDER ASSY B (TIP) (1, 2, 7, & 8)', 4, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (147, N'HHN0003-C', N'SLIDER NEEDLE ', 560, N'SCG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (148, N'NHN0060', N'JACK ', 5550, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (149, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 600, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (150, N'KCN00562', N'SELECT JACK ', 1000, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (151, N'NAN0110', N'SINKER WITH SPRING ', 5756, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (152, N'NAN0045', N'NEEDLE PLATE SPACER ', 1567, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (153, N'NAN0099', N'YARN GUIDE SPACER ', 1759, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (154, N'NKW5500', N'SIDE TENSION ', 88, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (155, N'NKS5003-O', N'TOP TENSION ', 486, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (156, N'NAC0086', N'STITCH PRESSER ', 180, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (157, N'NAF0110', N'MAIN ROLLER ', 155, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (158, N'NAF00791', N'SET UP NEEDLE ', 850, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (159, N'NAF00801', N'SET UP NEEDLE SLIDER ', 850, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (160, N'KCT1650', N'YARN FEEDER TIP ', 71, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (161, N'NKB0009', N'SINKER OIL POT ', 3, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (162, N'FHB0012', N'SINKER OIL POT BRUSH ', 6, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (163, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 9700, N'SIG A')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (164, N'NHN0060', N'JACK ', 9800, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (165, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 1500, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (166, N'KCN00562', N'SELECT JACK ', 2850, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (167, N'NAN0110', N'SINKER WITH SPRING ', 7597, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (168, N'NAN0045', N'NEEDLE PLATE SPACER ', 2289, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (169, N'NAN0099', N'YARN GUIDE SPACER ', 2350, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (170, N'NKW5500', N'SIDE TENSION ', 196, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (171, N'NKS5003-O', N'TOP TENSION ', 323, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (172, N'NAC0086', N'STITCH PRESSER ', 198, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (173, N'NAF0110', N'MAIN ROLLER ', 118, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (174, N'NAF00791', N'SET UP NEEDLE ', 931, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (175, N'NAF00801', N'SET UP NEEDLE SLIDER ', 931, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (176, N'KCT1650', N'YARN FEEDER TIP ', 44, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (177, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 21, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (178, N'NKB0009', N'SINKER OIL POT ', 2, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (179, N'FHB0012', N'SINKER OIL POT BRUSH ', 4, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (180, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 14700, N'SIG B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (181, N'NHN0060', N'JACK ', 10500, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (182, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 3000, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (183, N'KCN00562', N'SELECT JACK ', 3000, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (184, N'NAN0110', N'SINKER WITH SPRING ', 9132, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (185, N'NAN0045', N'NEEDLE PLATE SPACER ', 3614, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (186, N'NAN0099', N'YARN GUIDE SPACER ', 3688, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (187, N'NKW5500', N'SIDE TENSION ', 257, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (188, N'NKS5003-O', N'TOP TENSION ', 596, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (189, N'NAC0086', N'STITCH PRESSER ', 282, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (190, N'NAF0110', N'MAIN ROLLER ', 119, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (191, N'NAF00791', N'SET UP NEEDLE ', 1059, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (192, N'NAF00801', N'SET UP NEEDLE SLIDER ', 1059, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (193, N'XEHG004', N'BRUSH ', 7, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (194, N'KCT1650', N'YARN FEEDER TIP ', 85, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (195, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 26, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (196, N'NKB0009', N'SINKER OIL POT ', 6, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (197, N'FHB0012', N'SINKER OIL POT BRUSH ', 12, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (198, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 15650, N'SIG C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (199, N'NHN0092', N'JACK ', 6850, N'SSR 7G B')
GO
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (200, N'NKN0050-53', N'SELECTOR ( 3 - 6)', 800, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (201, N'NKN0042', N'SELECT JACK ', 1500, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (202, N'NKN0080', N'SINKER WITH SPRING ', 2300, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (203, N'NAN0047', N'NEEDLE GUIDE SPACER ', 311, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (204, N'NAN0056', N'YARN GUIDE SPACER ', 427, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (205, N'HIT0163', N'SIDE TENSION ', 208, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (206, N'HIS5001', N'TOP TENSION ', 362, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (207, N'NKC0048', N'STITCH PRESSER ', 161, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (208, N'NKF0118', N'MAIN ROLLER ', 47, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (209, N'NAF00861', N'SET UP NEEDLE ', 412, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (210, N'NAF00871', N'SET UP NEEDLE SLIDER ', 412, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (211, N'XEHG009', N'BRUSH ', 2, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (212, N'KLT0510', N'YARN FEEDER TIP ', 290, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (213, N'NKB0009', N'SINKER OIL POT ', 79, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (214, N'FHB0012', N'SINKER OIL POT BRUSH ', 158, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (215, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 5400, N'SSR 7G B')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (216, N'NHN0092', N'JACK ', 9100, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (217, N'NKN0050-53', N'SELECTOR ( 3 - 6)', 2600, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (218, N'NKN0042', N'SELECT JACK ', 5500, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (219, N'NKN0080', N'SINKER WITH SPRING ', 5202, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (220, N'NAN0047', N'NEEDLE GUIDE SPACER ', 908, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (221, N'NAN0056', N'YARN GUIDE SPACER ', 1100, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (222, N'HIT0163', N'SIDE TENSION ', 362, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (223, N'HIS5001', N'TOP TENSION ', 547, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (224, N'NKC0048', N'STITCH PRESSER ', 204, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (225, N'NKF0118', N'MAIN ROLLER ', 94, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (226, N'NAF00861', N'SET UP NEEDLE ', 1308, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (227, N'NAF00871', N'SET UP NEEDLE SLIDER ', 1308, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (228, N'XEHG009', N'BRUSH ', 11, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (229, N'KLT0510', N'YARN FEEDER TIP ', 342, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (230, N'NKB0009', N'SINKER OIL POT ', 79, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (231, N'FHB0012', N'SINKER OIL POT BRUSH ', 158, N'SSR 7G C')
INSERT [dbo].[PartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo]) VALUES (232, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 14050, N'SSR 7G C')
SET IDENTITY_INSERT [dbo].[PartsItem] OFF
SET IDENTITY_INSERT [dbo].[SparePartsItem] ON 

INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (1, N'NHN0060', N'JACK ', 46200, N'SSR 14 A', CAST(13.00 AS Numeric(18, 2)), CAST(600600.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (2, N'NKN0053-59', N'SELECTOR ( 1 - 6)', 5100, N'SSR 14 A', CAST(11.00 AS Numeric(18, 2)), CAST(56100.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (3, N'NKN0043', N'SELECT JACK ', 5600, N'SSR 14 A', CAST(10.00 AS Numeric(18, 2)), CAST(56000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (4, N'NKN0077', N'SINKER WITH SPRING ', 42698, N'SSR 14 A', CAST(78.75 AS Numeric(18, 2)), CAST(3362467.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (5, N'NKN0031', N'YARN GUIDE SPACER ', 27257, N'SSR 14 A', CAST(30.00 AS Numeric(18, 2)), CAST(817710.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (6, N'NKN0028', N'NEEDLE GUIDE SPACER ', 14858, N'SSR 14 A', CAST(41.25 AS Numeric(18, 2)), CAST(612892.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (7, N'NKC0052', N'STITCH PRESSER ', 2087, N'SSR 14 A', CAST(825.00 AS Numeric(18, 2)), CAST(1721775.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (8, N'KCT1650', N'YARN FEEDER TIP ', 31, N'SSR 14 A', CAST(975.00 AS Numeric(18, 2)), CAST(30225.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (9, N'HIT0159', N'SIDE TENSION ', 1199, N'SSR 14 A', CAST(487.50 AS Numeric(18, 2)), CAST(584512.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (10, N'HIS5002', N'TOP TENSION ', 2517, N'SSR 14 A', CAST(3750.00 AS Numeric(18, 2)), CAST(9438750.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (11, N'NKB0009', N'SINKER OIL POT ', 586, N'SSR 14 A', CAST(112.50 AS Numeric(18, 2)), CAST(65925.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (12, N'FHB0012', N'SINKER OIL POT BRUSH ', 1172, N'SSR 14 A', CAST(187.50 AS Numeric(18, 2)), CAST(219750.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (13, N'XEHG004', N'BRUSH ', 23, N'SSR 14 A', CAST(84.00 AS Numeric(18, 2)), CAST(1932.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (14, N'NKF0118', N'MAIN ROLLER ', 90, N'SSR 14 A', CAST(185.00 AS Numeric(18, 2)), CAST(16650.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (15, N'NAF00791', N'SET UP NEEDLE ', 903, N'SSR 14 A', CAST(15.00 AS Numeric(18, 2)), CAST(13545.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (16, N'NAF00801', N'SET UP NEEDLE SLIDER ', 903, N'SSR 14 A', CAST(105.00 AS Numeric(18, 2)), CAST(94815.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (17, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 88950, N'SSR 14 A', CAST(54.00 AS Numeric(18, 2)), CAST(4803300.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (18, N'NHN0060', N'JACK ', 33400, N'SSR14 B', CAST(13.00 AS Numeric(18, 2)), CAST(434200.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (19, N'NKN0053-59', N'SELECTOR ( 1 - 6)', 1500, N'SSR14 B', CAST(11.00 AS Numeric(18, 2)), CAST(16500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (20, N'NKN0043', N'SELECT JACK ', 1650, N'SSR14 B', CAST(10.00 AS Numeric(18, 2)), CAST(16500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (21, N'NKN0077', N'SINKER WITH SPRING ', 28268, N'SSR14 B', CAST(78.75 AS Numeric(18, 2)), CAST(2226105.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (22, N'NKN0031', N'YARN GUIDE SPACER ', 14180, N'SSR14 B', CAST(30.00 AS Numeric(18, 2)), CAST(425400.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (23, N'NKN0028', N'NEEDLE GUIDE SPACER ', 5259, N'SSR14 B', CAST(41.25 AS Numeric(18, 2)), CAST(216933.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (24, N'NKC0052', N'STITCH PRESSER ', 418, N'SSR14 B', CAST(825.00 AS Numeric(18, 2)), CAST(344850.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (25, N'KCT1650', N'YARN FEEDER TIP ', 25, N'SSR14 B', CAST(975.00 AS Numeric(18, 2)), CAST(24375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (26, N'HIT0159', N'SIDE TENSION ', 219, N'SSR14 B', CAST(487.50 AS Numeric(18, 2)), CAST(106762.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (27, N'HIS5002', N'TOP TENSION ', 356, N'SSR14 B', CAST(3750.00 AS Numeric(18, 2)), CAST(1335000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (28, N'NKB0009', N'SINKER OIL POT ', 108, N'SSR14 B', CAST(112.50 AS Numeric(18, 2)), CAST(12150.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (29, N'FHB0012', N'SINKER OIL POT BRUSH ', 216, N'SSR14 B', CAST(187.50 AS Numeric(18, 2)), CAST(40500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (30, N'XEHG004', N'BRUSH ', 25, N'SSR14 B', CAST(84.00 AS Numeric(18, 2)), CAST(2100.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (31, N'NKF0118', N'MAIN ROLLER ', 20, N'SSR14 B', CAST(185.00 AS Numeric(18, 2)), CAST(3700.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (32, N'NAF00791', N'SET UP NEEDLE ', 308, N'SSR14 B', CAST(15.00 AS Numeric(18, 2)), CAST(4620.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (33, N'NAF00801', N'SET UP NEEDLE SLIDER ', 308, N'SSR14 B', CAST(105.00 AS Numeric(18, 2)), CAST(32340.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (34, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 57050, N'SSR14 B', CAST(54.00 AS Numeric(18, 2)), CAST(3080700.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (35, N'NHN0060', N'JACK ', 1000, N'MSIG A', CAST(13.00 AS Numeric(18, 2)), CAST(13000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (36, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 300, N'MSIG A', CAST(11.00 AS Numeric(18, 2)), CAST(3300.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (37, N'KCN00562', N'SELECT JACK ', 300, N'MSIG A', CAST(10.00 AS Numeric(18, 2)), CAST(3000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (38, N'NAN0110', N'SINKER WITH SPRING ', 1253, N'MSIG A', CAST(78.75 AS Numeric(18, 2)), CAST(98673.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (39, N'NAN0045', N'NEEDLE PLATE SPACER ', 383, N'MSIG A', CAST(41.25 AS Numeric(18, 2)), CAST(15798.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (40, N'NAN0099', N'YARN GUIDE SPACER ', 545, N'MSIG A', CAST(30.00 AS Numeric(18, 2)), CAST(16350.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (41, N'NKW5500', N'SIDE TENSION ', 174, N'MSIG A', CAST(525.00 AS Numeric(18, 2)), CAST(91350.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (42, N'NKS5003-O', N'TOP TENSION ', 445, N'MSIG A', CAST(4875.00 AS Numeric(18, 2)), CAST(2169375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (43, N'NAC0086', N'STITCH PRESSER ', 220, N'MSIG A', CAST(1500.00 AS Numeric(18, 2)), CAST(330000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (44, N'NAF0110', N'MAIN ROLLER ', 80, N'MSIG A', CAST(185.00 AS Numeric(18, 2)), CAST(14800.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (45, N'NAF00791', N'SET UP NEEDLE ', 115, N'MSIG A', CAST(15.00 AS Numeric(18, 2)), CAST(1725.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (46, N'NAF00801', N'SET UP NEEDLE SLIDER ', 115, N'MSIG A', CAST(105.00 AS Numeric(18, 2)), CAST(12075.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (47, N'XEHG004', N'BRUSH ', 1, N'MSIG A', CAST(84.00 AS Numeric(18, 2)), CAST(84.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (48, N'KCT1650', N'YARN FEEDER TIP ', 92, N'MSIG A', CAST(975.00 AS Numeric(18, 2)), CAST(89700.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (49, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 39, N'MSIG A', CAST(18750.00 AS Numeric(18, 2)), CAST(731250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (50, N'NKB0009', N'SINKER OIL POT ', 17, N'MSIG A', CAST(112.50 AS Numeric(18, 2)), CAST(1912.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (51, N'FHB0012', N'SINKER OIL POT BRUSH ', 34, N'MSIG A', CAST(187.50 AS Numeric(18, 2)), CAST(6375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (52, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 2800, N'MSIG A', CAST(60.00 AS Numeric(18, 2)), CAST(168000.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (53, N'NHN0060', N'JACK ', 3250, N'MSIG B', CAST(13.00 AS Numeric(18, 2)), CAST(42250.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (54, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 1500, N'MSIG B', CAST(11.00 AS Numeric(18, 2)), CAST(16500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (55, N'KCN00562', N'SELECT JACK ', 1900, N'MSIG B', CAST(11.00 AS Numeric(18, 2)), CAST(20900.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (56, N'NAN0110', N'SINKER WITH SPRING ', 2073, N'MSIG B', CAST(78.75 AS Numeric(18, 2)), CAST(163248.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (57, N'NAN0045', N'NEEDLE PLATE SPACER ', 962, N'MSIG B', CAST(41.25 AS Numeric(18, 2)), CAST(39682.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (58, N'NAN0099', N'YARN GUIDE SPACER ', 881, N'MSIG B', CAST(30.00 AS Numeric(18, 2)), CAST(26430.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (59, N'NKW5500', N'SIDE TENSION ', 65, N'MSIG B', CAST(525.00 AS Numeric(18, 2)), CAST(34125.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (60, N'NKS5003-O', N'TOP TENSION ', 272, N'MSIG B', CAST(4875.00 AS Numeric(18, 2)), CAST(1326000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (61, N'NAC0086', N'STITCH PRESSER ', 109, N'MSIG B', CAST(1500.00 AS Numeric(18, 2)), CAST(163500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (62, N'NAF0110', N'MAIN ROLLER ', 21, N'MSIG B', CAST(185.00 AS Numeric(18, 2)), CAST(3885.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (63, N'NAF00791', N'SET UP NEEDLE ', 22, N'MSIG B', CAST(15.00 AS Numeric(18, 2)), CAST(330.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (64, N'NAF00801', N'SET UP NEEDLE SLIDER ', 22, N'MSIG B', CAST(105.00 AS Numeric(18, 2)), CAST(2310.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (65, N'XEHG004', N'BRUSH ', 3, N'MSIG B', CAST(84.00 AS Numeric(18, 2)), CAST(252.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (66, N'KCT1650', N'YARN FEEDER TIP ', 38, N'MSIG B', CAST(975.00 AS Numeric(18, 2)), CAST(37050.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (67, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 43, N'MSIG B', CAST(18750.00 AS Numeric(18, 2)), CAST(806250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (68, N'NKB0009', N'SINKER OIL POT ', 3, N'MSIG B', CAST(112.50 AS Numeric(18, 2)), CAST(337.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (69, N'FHB0012', N'SINKER OIL POT BRUSH ', 6, N'MSIG B', CAST(187.50 AS Numeric(18, 2)), CAST(1125.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (70, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 5050, N'MSIG B', CAST(54.00 AS Numeric(18, 2)), CAST(272700.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (71, N'NHN0060', N'JACK ', 1300, N'MSIG C', CAST(13.00 AS Numeric(18, 2)), CAST(16900.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (72, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 300, N'MSIG C', CAST(11.00 AS Numeric(18, 2)), CAST(3300.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (73, N'KCN00562', N'SELECT JACK ', 100, N'MSIG C', CAST(11.00 AS Numeric(18, 2)), CAST(1100.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (74, N'NAN0110', N'SINKER WITH SPRING ', 1460, N'MSIG C', CAST(78.75 AS Numeric(18, 2)), CAST(114975.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (75, N'NAN0045', N'NEEDLE PLATE SPACER ', 259, N'MSIG C', CAST(41.25 AS Numeric(18, 2)), CAST(10683.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (76, N'NAN0099', N'YARN GUIDE SPACER ', 365, N'MSIG C', CAST(30.00 AS Numeric(18, 2)), CAST(10950.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (77, N'NKW5500', N'SIDE TENSION ', 9, N'MSIG C', CAST(525.00 AS Numeric(18, 2)), CAST(4725.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (78, N'NKS5003-O', N'TOP TENSION ', 92, N'MSIG C', CAST(4875.00 AS Numeric(18, 2)), CAST(448500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (79, N'NAC0086', N'STITCH PRESSER ', 30, N'MSIG C', CAST(1500.00 AS Numeric(18, 2)), CAST(45000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (80, N'NAF0110', N'MAIN ROLLER ', 7, N'MSIG C', CAST(185.00 AS Numeric(18, 2)), CAST(1295.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (81, N'NAF00791', N'SET UP NEEDLE ', 14, N'MSIG C', CAST(15.00 AS Numeric(18, 2)), CAST(210.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (82, N'NAF00801', N'SET UP NEEDLE SLIDER ', 14, N'MSIG C', CAST(105.00 AS Numeric(18, 2)), CAST(1470.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (83, N'KCT1650', N'YARN FEEDER TIP ', 27, N'MSIG C', CAST(975.00 AS Numeric(18, 2)), CAST(26325.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (84, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 2700, N'MSIG C', CAST(54.00 AS Numeric(18, 2)), CAST(145800.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (85, N'NHN0092', N'JACK ', 450, N'NSIG B', CAST(63.75 AS Numeric(18, 2)), CAST(28687.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (86, N'NAN0076-79', N'SELECTOR ( 3-6)', 400, N'NSIG B', CAST(41.25 AS Numeric(18, 2)), CAST(16500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (87, N'NKN0042', N'SELECT JACK ', 350, N'NSIG B', CAST(41.25 AS Numeric(18, 2)), CAST(14437.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (88, N'KSN0008', N'SINKER ', 588, N'NSIG B', CAST(48.75 AS Numeric(18, 2)), CAST(28665.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (89, N'KON0532', N'SINKER SPRING ', 588, N'NSIG B', CAST(26.25 AS Numeric(18, 2)), CAST(15435.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (90, N'NAN0047', N'NEEDLE PLATE SPACER ', 25, N'NSIG B', CAST(41.25 AS Numeric(18, 2)), CAST(1031.25 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (91, N'NAN0056', N'YARN GUIDE SPACER ', 50, N'NSIG B', CAST(30.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (92, N'NKW5504', N'SIDE TENSION ', 1, N'NSIG B', CAST(487.50 AS Numeric(18, 2)), CAST(487.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (93, N'NKS5002', N'TOP TENSION ', 12, N'NSIG B', CAST(3750.00 AS Numeric(18, 2)), CAST(45000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (94, N'NAC0103', N'STITCH PRESSER ', 17, N'NSIG B', CAST(1500.00 AS Numeric(18, 2)), CAST(25500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (95, N'NAF00861', N'SET UP NEEDLE ', 37, N'NSIG B', CAST(105.00 AS Numeric(18, 2)), CAST(3885.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (96, N'NAF00761', N'SET UP NEEDLE SLIDER ', 37, N'NSIG B', CAST(45.00 AS Numeric(18, 2)), CAST(1665.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (97, N'NKB0004', N'SINKER OIL POT', 1, N'NSIG B', CAST(150.00 AS Numeric(18, 2)), CAST(150.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (98, N'NAB0008', N'SINKER OIL POT BRUSH ', 2, N'NSIG B', CAST(240.00 AS Numeric(18, 2)), CAST(480.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (99, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 650, N'NSIG B', CAST(65.00 AS Numeric(18, 2)), CAST(42250.00 AS Numeric(18, 2)), N'GB')
GO
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (100, N'NHN0092', N'JACK ', 100, N'NSIG C', CAST(63.75 AS Numeric(18, 2)), CAST(6375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (101, N'NAN0076-79', N'SELECTOR ( 3-6)', 200, N'NSIG C', CAST(41.25 AS Numeric(18, 2)), CAST(8250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (102, N'NKN0042', N'SELECT JACK ', 100, N'NSIG C', CAST(41.25 AS Numeric(18, 2)), CAST(4125.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (103, N'KSN0008', N'SINKER ', 69, N'NSIG C', CAST(48.75 AS Numeric(18, 2)), CAST(3363.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (104, N'KON0532', N'SINKER SPRING ', 69, N'NSIG C', CAST(26.25 AS Numeric(18, 2)), CAST(1811.25 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (105, N'NAN0056', N'YARN GUIDE SPACER ', 9, N'NSIG C', CAST(30.00 AS Numeric(18, 2)), CAST(270.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (106, N'NKW5504', N'SIDE TENSION ', 2, N'NSIG C', CAST(487.50 AS Numeric(18, 2)), CAST(975.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (107, N'NKS5002', N'TOP TENSION ', 6, N'NSIG C', CAST(3750.00 AS Numeric(18, 2)), CAST(22500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (108, N'NAC0103', N'STITCH PRESSER ', 4, N'NSIG C', CAST(1500.00 AS Numeric(18, 2)), CAST(6000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (109, N'NKB0004', N'SINKER OIL POT', 1, N'NSIG C', CAST(150.00 AS Numeric(18, 2)), CAST(150.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (110, N'NAB0008', N'SINKER OIL POT BRUSH ', 2, N'NSIG C', CAST(240.00 AS Numeric(18, 2)), CAST(480.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (111, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 200, N'NSIG C', CAST(65.00 AS Numeric(18, 2)), CAST(13000.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (112, N'NHN0092', N'JACK ', 2350, N'NSSG C', CAST(18.00 AS Numeric(18, 2)), CAST(42300.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (113, N'NAN0076-79', N'SELECTOR ( 3-6)', 600, N'NSSG C', CAST(12.00 AS Numeric(18, 2)), CAST(7200.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (114, N'NKN0042', N'SELECT JACK ', 1600, N'NSSG C', CAST(11.00 AS Numeric(18, 2)), CAST(17600.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (115, N'KSN0008', N'SINKER ', 4954, N'NSSG C', CAST(48.75 AS Numeric(18, 2)), CAST(241507.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (116, N'KON0532', N'SINKER SPRING ', 4954, N'NSSG C', CAST(26.25 AS Numeric(18, 2)), CAST(130042.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (117, N'NAN0047', N'NEEDLE PLATE SPACER ', 164, N'NSSG C', CAST(41.25 AS Numeric(18, 2)), CAST(6765.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (118, N'NAN0056', N'YARN GUIDE SPACER ', 188, N'NSSG C', CAST(30.00 AS Numeric(18, 2)), CAST(5640.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (119, N'HIT0163', N'SIDE TENSION ', 34, N'NSSG C', CAST(487.50 AS Numeric(18, 2)), CAST(16575.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (120, N'NKS5002', N'TOP TENSION ', 190, N'NSSG C', CAST(3750.00 AS Numeric(18, 2)), CAST(712500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (121, N'NAC0103', N'STITCH PRESSER ', 52, N'NSSG C', CAST(1500.00 AS Numeric(18, 2)), CAST(78000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (122, N'NAF0110', N'MAIN ROLLER ', 18, N'NSSG C', CAST(185.00 AS Numeric(18, 2)), CAST(3330.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (123, N'NAF00861', N'SET UP NEEDLE ', 550, N'NSSG C', CAST(15.00 AS Numeric(18, 2)), CAST(8250.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (124, N'NAF00761', N'SET UP NEEDLE SLIDER ', 550, N'NSSG C', CAST(76.00 AS Numeric(18, 2)), CAST(41800.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (125, N'XEHG009', N'BRUSH ', 5, N'NSSG C', CAST(64.00 AS Numeric(18, 2)), CAST(320.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (126, N'KLT0510', N'YARN FEEDER TIP ', 48, N'NSSG C', CAST(975.00 AS Numeric(18, 2)), CAST(46800.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (127, N'NATG003-6', N'CARRIER ASSY (COMPLETE SET) ', 39, N'NSSG C', CAST(7500.00 AS Numeric(18, 2)), CAST(292500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (128, N'NKB0004', N'SINKER OIL POT', 13, N'NSSG C', CAST(150.00 AS Numeric(18, 2)), CAST(1950.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (129, N'NAB0008', N'SINKER OIL POT BRUSH ', 26, N'NSSG C', CAST(240.00 AS Numeric(18, 2)), CAST(6240.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (130, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 3600, N'NSSG C', CAST(65.00 AS Numeric(18, 2)), CAST(234000.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (131, N'HHN0015-B', N'JACK ', 550, N'SCG C', CAST(120.00 AS Numeric(18, 2)), CAST(66000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (132, N'HHN0017-18', N'SELECTOR ( 1-2)', 200, N'SCG C', CAST(60.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (133, N'HHN0016', N'SELECT JACK ', 50, N'SCG C', CAST(60.00 AS Numeric(18, 2)), CAST(3000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (134, N'HHN0011', N'SINKER ', 214, N'SCG C', CAST(71.25 AS Numeric(18, 2)), CAST(15247.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (135, N'HHN0030', N'SINKER SPRING ', 214, N'SCG C', CAST(63.75 AS Numeric(18, 2)), CAST(13642.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (136, N'HHN0007', N'NEEDLE PLATE SPACER ', 25, N'SCG C', CAST(300.00 AS Numeric(18, 2)), CAST(7500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (137, N'HHN0009', N'YARN GUIDE SPACER ', 68, N'SCG C', CAST(75.00 AS Numeric(18, 2)), CAST(5100.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (138, N'HHN0010', N'YARN KEEPER ', 68, N'SCG C', CAST(37.50 AS Numeric(18, 2)), CAST(2550.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (139, N'NKW5505', N'SIDE TENSION ', 13, N'SCG C', CAST(600.00 AS Numeric(18, 2)), CAST(7800.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (140, N'NKS5001-Q', N'TOP TENSION ', 13, N'SCG C', CAST(4875.00 AS Numeric(18, 2)), CAST(63375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (141, N'KCC1083-F', N'STITCH PRESSER ', 1, N'SCG C', CAST(5625.00 AS Numeric(18, 2)), CAST(5625.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (142, N'KGF0059-G', N'MAIN ROLLER ', 14, N'SCG C', CAST(185.00 AS Numeric(18, 2)), CAST(2590.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (143, N'KCF1003', N'SET UP NEEDLE ', 18, N'SCG C', CAST(225.00 AS Numeric(18, 2)), CAST(4050.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (144, N'KCF1004', N'SET UP NEEDLE SLIDER ', 18, N'SCG C', CAST(52.50 AS Numeric(18, 2)), CAST(945.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (145, N'KCW5527-A', N'YARN FEEDER ASSY D (TIP) (3, 4, 5, & 6)', 4, N'SCG C', CAST(3750.00 AS Numeric(18, 2)), CAST(15000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (146, N'HHW5501', N'YARN FEEDER ASSY B (TIP) (1, 2, 7, & 8)', 4, N'SCG C', CAST(3750.00 AS Numeric(18, 2)), CAST(15000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (147, N'HHN0003-C', N'SLIDER NEEDLE ', 560, N'SCG C', CAST(1400.00 AS Numeric(18, 2)), CAST(784000.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (148, N'NHN0060', N'JACK ', 5550, N'SIG A', CAST(13.00 AS Numeric(18, 2)), CAST(72150.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (149, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 600, N'SIG A', CAST(11.00 AS Numeric(18, 2)), CAST(6600.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (150, N'KCN00562', N'SELECT JACK ', 1000, N'SIG A', CAST(11.00 AS Numeric(18, 2)), CAST(11000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (151, N'NAN0110', N'SINKER WITH SPRING ', 5756, N'SIG A', CAST(78.75 AS Numeric(18, 2)), CAST(453285.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (152, N'NAN0045', N'NEEDLE PLATE SPACER ', 1567, N'SIG A', CAST(41.25 AS Numeric(18, 2)), CAST(64638.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (153, N'NAN0099', N'YARN GUIDE SPACER ', 1759, N'SIG A', CAST(30.00 AS Numeric(18, 2)), CAST(52770.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (154, N'NKW5500', N'SIDE TENSION ', 88, N'SIG A', CAST(525.00 AS Numeric(18, 2)), CAST(46200.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (155, N'NKS5003-O', N'TOP TENSION ', 486, N'SIG A', CAST(4875.00 AS Numeric(18, 2)), CAST(2369250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (156, N'NAC0086', N'STITCH PRESSER ', 180, N'SIG A', CAST(1500.00 AS Numeric(18, 2)), CAST(270000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (157, N'NAF0110', N'MAIN ROLLER ', 155, N'SIG A', CAST(185.00 AS Numeric(18, 2)), CAST(28675.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (158, N'NAF00791', N'SET UP NEEDLE ', 850, N'SIG A', CAST(15.00 AS Numeric(18, 2)), CAST(12750.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (159, N'NAF00801', N'SET UP NEEDLE SLIDER ', 850, N'SIG A', CAST(105.00 AS Numeric(18, 2)), CAST(89250.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (160, N'KCT1650', N'YARN FEEDER TIP ', 71, N'SIG A', CAST(975.00 AS Numeric(18, 2)), CAST(69225.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (161, N'NKB0009', N'SINKER OIL POT ', 3, N'SIG A', CAST(112.50 AS Numeric(18, 2)), CAST(337.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (162, N'FHB0012', N'SINKER OIL POT BRUSH ', 6, N'SIG A', CAST(187.50 AS Numeric(18, 2)), CAST(1125.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (163, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 9700, N'SIG A', CAST(54.00 AS Numeric(18, 2)), CAST(523800.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (164, N'NHN0060', N'JACK ', 9800, N'SIG B', CAST(13.00 AS Numeric(18, 2)), CAST(127400.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (165, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 1500, N'SIG B', CAST(11.00 AS Numeric(18, 2)), CAST(16500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (166, N'KCN00562', N'SELECT JACK ', 2850, N'SIG B', CAST(11.00 AS Numeric(18, 2)), CAST(31350.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (167, N'NAN0110', N'SINKER WITH SPRING ', 7597, N'SIG B', CAST(78.75 AS Numeric(18, 2)), CAST(598263.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (168, N'NAN0045', N'NEEDLE PLATE SPACER ', 2289, N'SIG B', CAST(41.25 AS Numeric(18, 2)), CAST(94421.25 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (169, N'NAN0099', N'YARN GUIDE SPACER ', 2350, N'SIG B', CAST(30.00 AS Numeric(18, 2)), CAST(70500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (170, N'NKW5500', N'SIDE TENSION ', 196, N'SIG B', CAST(525.00 AS Numeric(18, 2)), CAST(102900.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (171, N'NKS5003-O', N'TOP TENSION ', 323, N'SIG B', CAST(4875.00 AS Numeric(18, 2)), CAST(1574625.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (172, N'NAC0086', N'STITCH PRESSER ', 198, N'SIG B', CAST(1500.00 AS Numeric(18, 2)), CAST(297000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (173, N'NAF0110', N'MAIN ROLLER ', 118, N'SIG B', CAST(185.00 AS Numeric(18, 2)), CAST(21830.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (174, N'NAF00791', N'SET UP NEEDLE ', 931, N'SIG B', CAST(15.00 AS Numeric(18, 2)), CAST(13965.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (175, N'NAF00801', N'SET UP NEEDLE SLIDER ', 931, N'SIG B', CAST(105.00 AS Numeric(18, 2)), CAST(97755.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (176, N'KCT1650', N'YARN FEEDER TIP ', 44, N'SIG B', CAST(975.00 AS Numeric(18, 2)), CAST(42900.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (177, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 21, N'SIG B', CAST(18750.00 AS Numeric(18, 2)), CAST(393750.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (178, N'NKB0009', N'SINKER OIL POT ', 2, N'SIG B', CAST(112.50 AS Numeric(18, 2)), CAST(225.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (179, N'FHB0012', N'SINKER OIL POT BRUSH ', 4, N'SIG B', CAST(187.50 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (180, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 14700, N'SIG B', CAST(54.00 AS Numeric(18, 2)), CAST(793800.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (181, N'NHN0060', N'JACK ', 10500, N'SIG C', CAST(13.00 AS Numeric(18, 2)), CAST(136500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (182, N'NAN0027-32', N'SELECTOR ( 1 - 6)', 3000, N'SIG C', CAST(11.00 AS Numeric(18, 2)), CAST(33000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (183, N'KCN00562', N'SELECT JACK ', 3000, N'SIG C', CAST(11.00 AS Numeric(18, 2)), CAST(33000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (184, N'NAN0110', N'SINKER WITH SPRING ', 9132, N'SIG C', CAST(78.75 AS Numeric(18, 2)), CAST(719145.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (185, N'NAN0045', N'NEEDLE PLATE SPACER ', 3614, N'SIG C', CAST(41.25 AS Numeric(18, 2)), CAST(149077.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (186, N'NAN0099', N'YARN GUIDE SPACER ', 3688, N'SIG C', CAST(30.00 AS Numeric(18, 2)), CAST(110640.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (187, N'NKW5500', N'SIDE TENSION ', 257, N'SIG C', CAST(525.00 AS Numeric(18, 2)), CAST(134925.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (188, N'NKS5003-O', N'TOP TENSION ', 596, N'SIG C', CAST(4875.00 AS Numeric(18, 2)), CAST(2905500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (189, N'NAC0086', N'STITCH PRESSER ', 282, N'SIG C', CAST(1500.00 AS Numeric(18, 2)), CAST(423000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (190, N'NAF0110', N'MAIN ROLLER ', 119, N'SIG C', CAST(185.00 AS Numeric(18, 2)), CAST(22015.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (191, N'NAF00791', N'SET UP NEEDLE ', 1059, N'SIG C', CAST(15.00 AS Numeric(18, 2)), CAST(15885.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (192, N'NAF00801', N'SET UP NEEDLE SLIDER ', 1059, N'SIG C', CAST(105.00 AS Numeric(18, 2)), CAST(111195.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (193, N'XEHG004', N'BRUSH ', 7, N'SIG C', CAST(100.00 AS Numeric(18, 2)), CAST(700.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (194, N'KCT1650', N'YARN FEEDER TIP ', 85, N'SIG C', CAST(975.00 AS Numeric(18, 2)), CAST(82875.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (195, N'NCTG101-110', N'INTERSIA CARRIER (COMPLETE SET) (1-10)', 26, N'SIG C', CAST(18750.00 AS Numeric(18, 2)), CAST(487500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (196, N'NKB0009', N'SINKER OIL POT ', 6, N'SIG C', CAST(112.50 AS Numeric(18, 2)), CAST(675.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (197, N'FHB0012', N'SINKER OIL POT BRUSH ', 12, N'SIG C', CAST(187.50 AS Numeric(18, 2)), CAST(2250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (198, N'NAN0089A', N'TR. NEEDLE (14G) LL HOOK, ORGAN ', 15650, N'SIG C', CAST(54.00 AS Numeric(18, 2)), CAST(845100.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (199, N'NHN0092', N'JACK ', 6850, N'SSR 7G B', CAST(15.00 AS Numeric(18, 2)), CAST(102750.00 AS Numeric(18, 2)), N'NIT')
GO
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (200, N'NKN0050-53', N'SELECTOR ( 3 - 6)', 800, N'SSR 7G B', CAST(15.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (201, N'NKN0042', N'SELECT JACK ', 1500, N'SSR 7G B', CAST(15.00 AS Numeric(18, 2)), CAST(22500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (202, N'NKN0080', N'SINKER WITH SPRING ', 2300, N'SSR 7G B', CAST(78.75 AS Numeric(18, 2)), CAST(181125.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (203, N'NAN0047', N'NEEDLE GUIDE SPACER ', 311, N'SSR 7G B', CAST(41.25 AS Numeric(18, 2)), CAST(12828.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (204, N'NAN0056', N'YARN GUIDE SPACER ', 427, N'SSR 7G B', CAST(41.25 AS Numeric(18, 2)), CAST(17613.75 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (205, N'HIT0163', N'SIDE TENSION ', 208, N'SSR 7G B', CAST(487.50 AS Numeric(18, 2)), CAST(101400.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (206, N'HIS5001', N'TOP TENSION ', 362, N'SSR 7G B', CAST(3750.00 AS Numeric(18, 2)), CAST(1357500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (207, N'NKC0048', N'STITCH PRESSER ', 161, N'SSR 7G B', CAST(1500.00 AS Numeric(18, 2)), CAST(241500.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (208, N'NKF0118', N'MAIN ROLLER ', 47, N'SSR 7G B', CAST(185.00 AS Numeric(18, 2)), CAST(8695.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (209, N'NAF00861', N'SET UP NEEDLE ', 412, N'SSR 7G B', CAST(8.50 AS Numeric(18, 2)), CAST(3502.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (210, N'NAF00871', N'SET UP NEEDLE SLIDER ', 412, N'SSR 7G B', CAST(76.00 AS Numeric(18, 2)), CAST(31312.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (211, N'XEHG009', N'BRUSH ', 2, N'SSR 7G B', CAST(100.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (212, N'KLT0510', N'YARN FEEDER TIP ', 290, N'SSR 7G B', CAST(975.00 AS Numeric(18, 2)), CAST(282750.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (213, N'NKB0009', N'SINKER OIL POT ', 79, N'SSR 7G B', CAST(112.50 AS Numeric(18, 2)), CAST(8887.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (214, N'FHB0012', N'SINKER OIL POT BRUSH ', 158, N'SSR 7G B', CAST(187.50 AS Numeric(18, 2)), CAST(29625.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (215, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 5400, N'SSR 7G B', CAST(65.00 AS Numeric(18, 2)), CAST(351000.00 AS Numeric(18, 2)), N'GB')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (216, N'NHN0092', N'JACK ', 9100, N'SSR 7G C', CAST(15.00 AS Numeric(18, 2)), CAST(136500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (217, N'NKN0050-53', N'SELECTOR ( 3 - 6)', 2600, N'SSR 7G C', CAST(15.00 AS Numeric(18, 2)), CAST(39000.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (218, N'NKN0042', N'SELECT JACK ', 5500, N'SSR 7G C', CAST(15.00 AS Numeric(18, 2)), CAST(82500.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (219, N'NKN0080', N'SINKER WITH SPRING ', 5202, N'SSR 7G C', CAST(78.75 AS Numeric(18, 2)), CAST(409657.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (220, N'NAN0047', N'NEEDLE GUIDE SPACER ', 908, N'SSR 7G C', CAST(41.25 AS Numeric(18, 2)), CAST(37455.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (221, N'NAN0056', N'YARN GUIDE SPACER ', 1100, N'SSR 7G C', CAST(41.25 AS Numeric(18, 2)), CAST(45375.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (222, N'HIT0163', N'SIDE TENSION ', 362, N'SSR 7G C', CAST(487.50 AS Numeric(18, 2)), CAST(176475.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (223, N'HIS5001', N'TOP TENSION ', 547, N'SSR 7G C', CAST(3750.00 AS Numeric(18, 2)), CAST(2051250.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (224, N'NKC0048', N'STITCH PRESSER ', 204, N'SSR 7G C', CAST(1500.00 AS Numeric(18, 2)), CAST(306000.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (225, N'NKF0118', N'MAIN ROLLER ', 94, N'SSR 7G C', CAST(185.00 AS Numeric(18, 2)), CAST(17390.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (226, N'NAF00861', N'SET UP NEEDLE ', 1308, N'SSR 7G C', CAST(8.50 AS Numeric(18, 2)), CAST(11118.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (227, N'NAF00871', N'SET UP NEEDLE SLIDER ', 1308, N'SSR 7G C', CAST(76.00 AS Numeric(18, 2)), CAST(99408.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (228, N'XEHG009', N'BRUSH ', 11, N'SSR 7G C', CAST(100.00 AS Numeric(18, 2)), CAST(1100.00 AS Numeric(18, 2)), N'NIT')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (229, N'KLT0510', N'YARN FEEDER TIP ', 342, N'SSR 7G C', CAST(975.00 AS Numeric(18, 2)), CAST(333450.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (230, N'NKB0009', N'SINKER OIL POT ', 79, N'SSR 7G C', CAST(112.50 AS Numeric(18, 2)), CAST(8887.50 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (231, N'FHB0012', N'SINKER OIL POT BRUSH ', 158, N'SSR 7G C', CAST(187.50 AS Numeric(18, 2)), CAST(29625.00 AS Numeric(18, 2)), N'PACIFIC')
INSERT [dbo].[SparePartsItem] ([Id], [PartsNo], [PartsName], [Quantity], [SheetNo], [UnitPrice], [Amount], [Supplier]) VALUES (232, N'KSN00092', N'TR. NEEDLE (7G), ORGAN, LL HOOK', 14050, N'SSR 7G C', CAST(65.00 AS Numeric(18, 2)), CAST(913250.00 AS Numeric(18, 2)), N'GB')
SET IDENTITY_INSERT [dbo].[SparePartsItem] OFF
USE [master]
GO
ALTER DATABASE [SpeareParts] SET  READ_WRITE 
GO
