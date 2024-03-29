USE [master]
GO
/****** Object:  Database [P0012HandyMan]    Script Date: 9/29/2019 10:07:51 AM ******/
CREATE DATABASE [P0012HandyMan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P0012HandyMan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\P0012HandyMan.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'P0012HandyMan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\P0012HandyMan_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [P0012HandyMan] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P0012HandyMan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P0012HandyMan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P0012HandyMan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P0012HandyMan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P0012HandyMan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P0012HandyMan] SET ARITHABORT OFF 
GO
ALTER DATABASE [P0012HandyMan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P0012HandyMan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P0012HandyMan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P0012HandyMan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P0012HandyMan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P0012HandyMan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P0012HandyMan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P0012HandyMan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P0012HandyMan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P0012HandyMan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P0012HandyMan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P0012HandyMan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P0012HandyMan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P0012HandyMan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P0012HandyMan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P0012HandyMan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P0012HandyMan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P0012HandyMan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [P0012HandyMan] SET  MULTI_USER 
GO
ALTER DATABASE [P0012HandyMan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P0012HandyMan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P0012HandyMan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P0012HandyMan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [P0012HandyMan] SET DELAYED_DURABILITY = DISABLED 
GO
USE [P0012HandyMan]
GO
/****** Object:  Table [dbo].[ContactInfo]    Script Date: 9/29/2019 10:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Tel] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_ContactInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactMessage]    Script Date: 9/29/2019 10:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](255) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 9/29/2019 10:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Introduction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Introduction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReferenceMessage]    Script Date: 9/29/2019 10:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReferenceMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[CreatedTime] [datetime] NULL CONSTRAINT [DF_ReferenceMessage_CreatedTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReferenceMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 9/29/2019 10:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[PublishDate] [datetime] NULL CONSTRAINT [DF_Service_PublishDate]  DEFAULT (getdate()),
	[Price] [float] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ContactInfo] ON 

INSERT [dbo].[ContactInfo] ([ID], [Address], [City], [Country], [Tel], [Email], [Image]) VALUES (1, N'District. 9 High Tech Park', N'Ho Chi Minh', N'Vietnam', N'0707169628', N'fpt@fpt.edu.vn', N'389_chuongpetpetcity.png')
SET IDENTITY_INSERT [dbo].[ContactInfo] OFF
SET IDENTITY_INSERT [dbo].[ContactMessage] ON 

INSERT [dbo].[ContactMessage] ([ID], [Name], [Email], [Message]) VALUES (14, N'asdasd', N'123@gmail.com', N'asAS')
INSERT [dbo].[ContactMessage] ([ID], [Name], [Email], [Message]) VALUES (15, N'phub', N'b@w.lo', N'b')
SET IDENTITY_INSERT [dbo].[ContactMessage] OFF
SET IDENTITY_INSERT [dbo].[Introduction] ON 

INSERT [dbo].[Introduction] ([ID], [Title], [Description], [Image]) VALUES (1, N'Database', N'Test description', N'intro.jpg')
SET IDENTITY_INSERT [dbo].[Introduction] OFF
SET IDENTITY_INSERT [dbo].[ReferenceMessage] ON 

INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (3, N'Phuc Phuc', N'phuc@gmail.com', N'http://phuc.com', N'Test 1', N'3.png', CAST(N'2019-09-22 10:21:37.933' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (4, N'Huki', N'hukifuku@gmail.com', N'http://facebook.com', N'Test', N'4.jpg', CAST(N'2019-09-22 10:56:47.180' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (5, N'asdasd', N'123@gmail.com', NULL, N'asdsa', N'5.jpg', CAST(N'2019-09-22 11:04:12.380' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (6, N'asdasd', N'123@gmail.com', NULL, N'asd', NULL, CAST(N'2019-09-22 11:05:05.770' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (7, N'gfsd', N'fgsd@wq.lo', N'http://gdfh.iok', N'wrg', NULL, CAST(N'2019-09-22 11:06:24.133' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (8, N'gfsd', N'fgsd@wq.lo', N'http://gdfh.iok', N'wrg', NULL, CAST(N'2019-09-22 11:07:04.423' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (9, N'gfsd', N'fgsd@wq.lo', N'http://gdfh.iok', N'wrg', NULL, CAST(N'2019-09-22 11:07:31.723' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (10, N'gfsd', N'fgsd@wq.lo', N'http://gdfh.iok', N'wrg', NULL, CAST(N'2019-09-22 11:07:58.317' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (11, N'gfsd', N'fgsd@wq.lo', N'http://gdfh.iok', N'wrg', NULL, CAST(N'2019-09-22 11:09:04.010' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (12, N'ds', N'sd@ew.lo', N'http://vvf.lo', N'ds', NULL, CAST(N'2019-09-22 11:11:12.133' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (13, N'fdg', N'fgdd@ew.lo', N'http://fgfsd.lo', N'fdg', NULL, CAST(N'2019-09-22 11:12:35.760' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (14, N'fdg', N'fgdd@ew.lo', N'http://fgfsd.lo', N'fdg', NULL, CAST(N'2019-09-22 11:13:22.813' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (15, N'fr', N'fr@we.lo', N'http://sd.lo', N'fr', N'15.png', CAST(N'2019-09-22 11:13:51.523' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (16, N'gt', N'gt@ew.lo', N'http://we.lo', N'gt', NULL, CAST(N'2019-09-22 11:14:10.033' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (17, N'a', N'a@q.l', NULL, N'a', NULL, CAST(N'2019-09-23 13:33:36.120' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (18, N'test', N'test@rmail.co', NULL, N'test test', N'18.jpg', CAST(N'2019-09-25 16:47:44.773' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (19, N'test', N'test@rmail.co', NULL, N'test test', N'19.jpg', CAST(N'2019-09-25 16:49:17.817' AS DateTime))
INSERT [dbo].[ReferenceMessage] ([ID], [Name], [Email], [Website], [Message], [Image], [CreatedTime]) VALUES (20, N'sadsa', N'asda@zfd.lo', NULL, N'sada', NULL, CAST(N'2019-09-25 16:51:21.910' AS DateTime))
SET IDENTITY_INSERT [dbo].[ReferenceMessage] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Name], [Image], [Description], [PublishDate], [Price]) VALUES (1, N'a', N'1.jpg', N'a', CAST(N'2019-09-21 14:54:57.460' AS DateTime), 12)
INSERT [dbo].[Service] ([ID], [Name], [Image], [Description], [PublishDate], [Price]) VALUES (2, N'b', N'2.jpg', N'b', CAST(N'2019-09-21 14:56:20.957' AS DateTime), 14.58)
INSERT [dbo].[Service] ([ID], [Name], [Image], [Description], [PublishDate], [Price]) VALUES (3, N'c', N'3.jpg', N'c', CAST(N'2019-09-21 14:56:31.007' AS DateTime), 15.74)
INSERT [dbo].[Service] ([ID], [Name], [Image], [Description], [PublishDate], [Price]) VALUES (4, N'd', N'4.jpg', N'd', CAST(N'2019-09-21 15:15:24.370' AS DateTime), 14.58)
SET IDENTITY_INSERT [dbo].[Service] OFF
USE [master]
GO
ALTER DATABASE [P0012HandyMan] SET  READ_WRITE 
GO
