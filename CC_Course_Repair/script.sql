USE [master]
GO
/****** Object:  Database [J3.L.P0025]    Script Date: 7/28/2018 11:57:11 AM ******/
CREATE DATABASE [J3.L.P0025]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0025', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0025.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3.L.P0025_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0025_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [J3.L.P0025] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0025].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0025] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0025] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0025] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0025] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0025] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0025] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0025] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0025] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0025] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0025] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0025] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0025] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0025] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0025] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0025] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0025] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0025] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0025] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0025] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0025] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0025] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0025] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0025] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [J3.L.P0025] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0025] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0025] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0025] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0025] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3.L.P0025] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0025] SET QUERY_STORE = OFF
GO
USE [J3.L.P0025]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [J3.L.P0025]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/28/2018 11:57:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/28/2018 11:57:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](1000) NOT NULL,
	[Date] [date] NOT NULL,
	[Image] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoCourse]    Script Date: 7/28/2018 11:57:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoCourse](
	[Title] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](1050) NOT NULL,
	[Image] [nchar](110) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 7/28/2018 11:57:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (1, N'', N'', N'')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (2, N'hoanglethanhson', N'son@123.com', N'ssdde')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (3, N'Hoang', N'123@gmail.com', N'ffff')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (4, N'hoanglethanhson', N'leson1998ls@gmail.com', N'Hello World')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (5, N'hoanglethanhson', N'leson1998ls@gmail.com', N'')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (6, N'hoanglethanhson', N'leson1998ls@gmail.com', N'')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (10, N'minh', N'son@123.com', N'oooooo')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (7, N'hoanglethanhson', N'leson1998ls@gmail.com', N'loll')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (8, N'hoanglethanhson1', N'son@123.com', N'fff')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Message]) VALUES (9, N'minh', N'123@gmail.com', N'ddfff')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (1, N'
Developing Computer Programs', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', CAST(N'2016-01-11' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (2, N'Configuring Computer Hardware and Software', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. ', CAST(N'2016-01-26' AS Date), N'images/i286260064313937195._szw480h1280_.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (3, N'Programming Apps for Mobile Devices', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', CAST(N'2016-02-08' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (6, N'Course 4', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2015-05-22' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (7, N'Course5', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2018-01-08' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (10, N'Course 6 ', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2015-01-01' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (13, N'Course7', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2014-01-01' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (14, N'Course8', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2019-01-02' AS Date), N'images/course.jpg')
INSERT [dbo].[Course] ([ID], [Name], [Content], [Date], [Image]) VALUES (15, N'Course9', N'Nam liber tempor cum soluta nobis eleifend option 
                            congue nihil imperdiet doming id quod mazim placerat 
                            facer possim assum. Typi non habent claritatem insitam; 
                            est usus legentis in iis qui facit eorum claritatem. 
                            Investigationes demonstraverunt lectores.', CAST(N'2015-02-03' AS Date), N'images/course.jpg')
SET IDENTITY_INSERT [dbo].[Course] OFF
INSERT [dbo].[DemoCourse] ([Title], [Content], [Image]) VALUES (N'Courses from Beginners to Advanced Learners', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.
<br>
Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/Demo.jpg                                                                                               ')
INSERT [dbo].[Info] ([Address], [City], [Country], [Tel], [Email]) VALUES (N'Hanoi', N'Hanoi', N'Vietnam', N'1234', N'2bc@gmail.com')
USE [master]
GO
ALTER DATABASE [J3.L.P0025] SET  READ_WRITE 
GO
