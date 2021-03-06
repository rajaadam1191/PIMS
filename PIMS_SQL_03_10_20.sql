USE [master]
GO
/****** Object:  Database [PIMS]    Script Date: 10/03/2020 11:28:39 ******/
CREATE DATABASE [PIMS] ON  PRIMARY 
( NAME = N'PIMS', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PIMS.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PIMS_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PIMS_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PIMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PIMS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PIMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PIMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PIMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PIMS] SET ARITHABORT OFF
GO
ALTER DATABASE [PIMS] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PIMS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PIMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PIMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PIMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PIMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PIMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PIMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PIMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PIMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PIMS] SET  ENABLE_BROKER
GO
ALTER DATABASE [PIMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PIMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PIMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PIMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PIMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PIMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PIMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PIMS] SET  READ_WRITE
GO
ALTER DATABASE [PIMS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PIMS] SET  MULTI_USER
GO
ALTER DATABASE [PIMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PIMS] SET DB_CHAINING OFF
GO
USE [PIMS]
GO
/****** Object:  Table [dbo].[TempCompany]    Script Date: 10/03/2020 11:28:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempCompany](
	[sl_no] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Remark1] [nvarchar](max) NULL,
	[Remark2] [nvarchar](max) NULL,
	[Remark3] [nvarchar](max) NULL,
	[Remark4] [nvarchar](max) NULL,
	[Remark5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sl_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TempCompany] ON
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, N'1', N'APMC', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, N'2', N'Apprentice', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, N'3', N'CIEL', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, N'4', N'CS', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, N'5', N'MOTHER', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, N'6', N'NEEM', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempCompany] ([sl_no], [CompanyId], [CompanyName], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, N'7', N'NOEL', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TempCompany] OFF
/****** Object:  Table [dbo].[ResetpasswordOTP]    Script Date: 10/03/2020 11:28:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResetpasswordOTP](
	[EmpID] [varchar](20) NULL,
	[OTPNum] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ResetpasswordOTP] ([EmpID], [OTPNum]) VALUES (N'pi-101', 1988301533)
INSERT [dbo].[ResetpasswordOTP] ([EmpID], [OTPNum]) VALUES (N'pi-111', 1525804488)
/****** Object:  Table [dbo].[TeamDetail]    Script Date: 10/03/2020 11:28:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TeamDetail](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[TeamID] [int] NOT NULL,
	[TeamName] [varchar](max) NULL,
	[DepID] [int] NULL,
	[EmpId] [varchar](50) NULL,
	[TeamHID] [varchar](50) NULL,
	[TeamCount] [int] NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
 CONSTRAINT [PK_TeamDetail] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TeamDetail] ON
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1, 1, N'Production Manager Team', 12, N'pi-250', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (2, 2, N'Production Manager Team', 12, N'pi-226', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (3, 3, N'Information Systems Manager Team', 1, N'PI-011', N'pi-286', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (4, 4, N'Information Systems Manager Team', 1, N'PI-212', N'pi-286', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (5, 5, N'Production Manager Team', 1, N'si-001', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (6, 6, N'Information Systems Manager Team', 10, N'pi-102', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (7, 7, N'Information Systems Manager Team', 7, N'PI-141', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (8, 8, N'Information Systems Manager Team', 7, N'PI-199', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (9, 9, N'Information Systems Manager Team', 7, N'PI-230', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (10, 10, N'Information Systems Manager Team', 7, N'PI-237', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (11, 11, N'Information Systems Manager Team', 7, N'PI-245', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (12, 12, N'Information Systems Manager Team', 7, N'PI-261', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (13, 13, N'Information Systems Manager Team', 7, N'PI-265', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (14, 14, N'Information Systems Manager Team', 7, N'PI-285', N'pi-227', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1007, 15, N'Production Manager Team', 12, N'PI - 111', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1008, 16, N'Production Manager Team', 12, N'PI-049', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1009, 17, N'Production Manager Team', 12, N'PI-055', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1010, 18, N'Production Manager Team', 12, N'PI-070', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1011, 19, N'Production Manager Team', 12, N'PI-094', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1012, 20, N'Production Manager Team', 12, N'PI-095', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1013, 21, N'Production Manager Team', 12, N'PI-097', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1014, 22, N'Production Manager Team', 12, N'PI-098', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1015, 23, N'Production Manager Team', 12, N'PI-123', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1016, 24, N'Production Manager Team', 12, N'PI-132', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1017, 25, N'Production Manager Team', 12, N'PI-133', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1018, 26, N'Production Manager Team', 12, N'PI-152', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1019, 27, N'Production Manager Team', 12, N'PI-153', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1020, 28, N'Production Manager Team', 12, N'PI-158', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1021, 29, N'Production Manager Team', 12, N'PI-162', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1022, 30, N'Production Manager Team', 12, N'PI-166', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1023, 31, N'Production Manager Team', 12, N'PI-167', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1024, 32, N'Production Manager Team', 12, N'PI-168', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1025, 33, N'Production Manager Team', 12, N'PI-173', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1026, 34, N'Production Manager Team', 12, N'PI-174', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1027, 35, N'Production Manager Team', 12, N'PI-175', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1028, 36, N'Production Manager Team', 12, N'PI-177', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1029, 37, N'Production Manager Team', 12, N'PI-179', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1030, 38, N'Production Manager Team', 12, N'PI-180', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1031, 39, N'Production Manager Team', 12, N'PI-203', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1032, 40, N'Production Manager Team', 12, N'PI-204', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1033, 41, N'Production Manager Team', 12, N'PI-205', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1034, 42, N'Production Manager Team', 12, N'PI-206', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1035, 43, N'Production Manager Team', 12, N'PI-207', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1036, 44, N'Production Manager Team', 12, N'PI-209', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1037, 45, N'Production Manager Team', 12, N'PI-223', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1038, 46, N'Production Manager Team', 12, N'PI-224', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1039, 47, N'Production Manager Team', 12, N'PI-231', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1040, 48, N'Production Manager Team', 12, N'PI-251', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1041, 49, N'Production Manager Team', 12, N'PI-252', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1042, 50, N'Production Manager Team', 12, N'PI-253', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1043, 51, N'Production Manager Team', 12, N'PI-269', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1044, 52, N'Production Manager Team', 12, N'PI-270', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1045, 53, N'Production Manager Team', 12, N'PI-271', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1046, 54, N'Production Manager Team', 12, N'PI-291', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1047, 55, N'Production Manager Team', 12, N'PI-296', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1048, 56, N'Production Manager Team', 12, N'PI-299', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1049, 57, N'Production Manager Team', 12, N'PI-300', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1050, 58, N'Production Manager Team', 12, N'PI-301', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1051, 59, N'Production Manager Team', 12, N'PI-302', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1052, 60, N'Production Manager Team', 12, N'PI-303', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1053, 61, N'Production Manager Team', 12, N'PI-304', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1054, 62, N'Production Manager Team', 12, N'PI-305', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1055, 63, N'Production Manager Team', 12, N'PI-306', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1056, 64, N'Production Manager Team', 12, N'PI-307', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1057, 65, N'Production Manager Team', 12, N'T-124', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1058, 66, N'Production Manager Team', 12, N'PI-111', N'pi-191', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1059, 67, N'Manufacturing Engineering Manager Team', 10, N'PI-044', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1060, 68, N'Manufacturing Engineering Manager Team', 10, N'PI-110', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1061, 69, N'Manufacturing Engineering Manager Team', 10, N'PI-112', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1062, 70, N'Manufacturing Engineering Manager Team', 10, N'PI-114', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1063, 71, N'Manufacturing Engineering Manager Team', 10, N'PI-144', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1064, 72, N'Manufacturing Engineering Manager Team', 10, N'PI-164', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1065, 73, N'Manufacturing Engineering Manager Team', 10, N'PI-195', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1066, 74, N'Manufacturing Engineering Manager Team', 10, N'PI-257', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1067, 75, N'Manufacturing Engineering Manager Team', 10, N'PI-279', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1068, 76, N'Manufacturing Engineering Manager Team', 10, N'PI-290', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1069, 77, N'Manufacturing Engineering Manager Team', 10, N'PI-294', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1070, 78, N'Manufacturing Engineering Manager Team', 10, N'pi-112', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1071, 79, N'Manufacturing Engineering Manager Team', 10, N'pi-112', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1072, 80, N'Manufacturing Engineering Manager Team', 10, N'pi-164', N'pi-268', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1073, 81, N'Maintenance Manager Team', 9, N'PI-061', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1074, 82, N'Maintenance Manager Team', 9, N'PI-080', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1075, 83, N'Maintenance Manager Team', 9, N'PI-084', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1076, 84, N'Maintenance Manager Team', 9, N'PI-194', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1077, 85, N'Maintenance Manager Team', 9, N'PI-241', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1078, 86, N'Maintenance Manager Team', 9, N'PI-283', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1079, 87, N'Maintenance Manager Team', 9, N'PI-297', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1080, 88, N'Maintenance Manager Team', 9, N'PI-298', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1081, 89, N'Maintenance Manager Team', 9, N'PI-308', N'pi-289', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1082, 90, N'Finance Manager Team', 4, N'PI-012', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1083, 91, N'Finance Manager Team', 4, N'PI-062', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1084, 92, N'Finance Manager Team', 4, N'PI-088', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1085, 93, N'Finance Manager Team', 4, N'PI-093', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1086, 94, N'Finance Manager Team', 4, N'PI-151', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1087, 95, N'Finance Manager Team', 4, N'PI-263', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1088, 96, N'Finance Manager Team', 4, N'PI-281', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1089, 97, N'Finance Manager Team', 4, N'PI-292', N'pi-243', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1090, 98, N'Production Manager Team', 12, N'PI-049', N'pi-215', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1091, 99, N'Production Manager Team', 15, N'pi-155', N'pi-215', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1092, 100, N'Production Manager Team', 12, N'pi-190', N'pi-215', 1, N'I', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1093, 101, N'Production Manager Team', 9, N'pi-233', N'pi-215', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1094, 102, N'Information Systems Manager Team', 7, N'pi-199', N'pi-286', 1, N'I', NULL, NULL)
INSERT [dbo].[TeamDetail] ([SL_No], [TeamID], [TeamName], [DepID], [EmpId], [TeamHID], [TeamCount], [Remark1], [Remark2], [Remark3]) VALUES (1095, 103, N'Information Systems Manager Team', 7, N'pi-141', N'pi-286', 1, N'I', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TeamDetail] OFF
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitString]
(    
      @Input NVARCHAR(MAX),
      @Character CHAR(1)
)
RETURNS @Output TABLE (
      Item NVARCHAR(1000)
)
AS
BEGIN
      DECLARE @StartIndex INT, @EndIndex INT
 
      SET @StartIndex = 1
      IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
      BEGIN
            SET @Input = @Input + @Character
      END
 
      WHILE CHARINDEX(@Character, @Input) > 0
      BEGIN
            SET @EndIndex = CHARINDEX(@Character, @Input)
           
            INSERT INTO @Output(Item)
            SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
           
            SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
      END
 
      RETURN
END
GO
/****** Object:  Table [dbo].[TeamESend]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TeamESend](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[SEmail_ID] [int] NOT NULL,
	[IdeaId] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETO] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TeamESend] ON
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 1, 1004, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-05-28', N'kuduthuta pa enjoy', N'weewweq', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 2, 1003, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-06-01', N'task complete', N'mr, Lokesh assign me this task i was complete that.', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 3, 1003, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-06-03', N'finish task', N'task completed', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 4, 1005, N'gajendhiran.r@poclain.com', N'kolappan.ponniahpillai@poclain', N'2020-06-04', N'task complete', N'successfully executed', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 5, 1006, N'krishnakumar.prakasam@poclain.com', N'kolappan.ponniahpillai@poclain', N'2020-06-05', N'task complete', N'i do my best to complete this task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 6, 1009, N'ragaventhiran.gnanas@poclain.com', N'venkateswaran.kandas@poclain.c', N'2020-06-09', N'task complete', N'completed', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 7, 1011, N'ramachandiran.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-09', N'task complete', N'complete', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 8, 1013, N'kumaravel.munisamy@poclain.com', N'venkateswaran.kandas@poclain.c', N'2020-06-11', N'task complete', N'task completed', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 9, 1014, N'prabhu.murugesan@poclain.com', N'venkateswaran.kandas@poclain.c', N'2020-06-12', N'finish task', N'complete task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 10, 1015, N'soubarayalu.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-12', N'finish task', N'complete task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 11, 1016, N'subramanian.g@poclain.com', N'venkateswaran.kandas@poclain.c', N'2020-06-13', N'task complete', N'exec ute impl', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 12, 1018, N'sugumaran.balakirush@poclain.com', N'venkateswaran.kandas@poclain.c', N'2020-06-17', N'task complete', N'completed', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 13, 1002, N'ramachandiran.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-18', N'task complete', N'complete', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 14, 221, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions', N'2020-06-26', N'finish task', N'finish task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (15, 15, 1017, N'selvi.k@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-30', N'checking', N'purpose', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (16, 16, 207, N'mohammed.riyazdheen@poclain.com', N'kolappan.ponniahpillai@poclain', N'2020-06-30', N'check mail', N'mail checking', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (17, 17, 208, N'0', N'venkateswaran.kandas@poclain.c', N'2020-07-08', N'check %', N'check %', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (18, 18, 218, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-07-08', N'finish task', N'check %', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (19, 19, 220, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions', N'2020-08-04', N'check', N'chck', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (20, 20, 224, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-08-05', N'check full path', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (21, 21, 225, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-08-05', N'checkexcel', N'checkexcel', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (22, 22, 225, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions', N'2020-09-01', N'hh', N'dsd', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (23, 23, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutio', N'2020-09-01', N'great', N'good', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (24, 24, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutio', N'2020-09-01', N'ss', N'ss', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (25, 25, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutio', N'2020-09-01', N'dd', N'dd', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (26, 26, 225, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-09-01', N'dd', N'dd', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamESend] ([SL_NO], [SEmail_ID], [IdeaId], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (27, 27, 223, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions', N'2020-09-09', N'checkupload', N'checkupload', N'i', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TeamESend] OFF
/****** Object:  Table [dbo].[TeamEInbox]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TeamEInbox](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NOT NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Dep] [varchar](50) NULL,
	[Des] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TeamEInbox] ON
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 3, 1, N'pi-286', N'PI-011', 1004, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-05-28', N'sei', N'sei da', N'Accepted', NULL, NULL, N'U', N'12', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 5, 2, N'pi-286', N'PI-011', 1003, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-01', N'ck', N'its for ur task', N'Accepted', NULL, NULL, N'U', N'', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 5, 3, N'pi-286', N'PI-011', 1003, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-03', N'guyh', N'hjb', N'Accepted', NULL, NULL, N'U', N'', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 5, 3, N'pi-286', N'PI-212', 1003, N'manikandan.ramsaro@gmail.com', N'mani95ram@outlook.com', N'2020-06-03', N'guyh', N'hjb', N'Accepted', NULL, NULL, N'U', N'', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 7, 4, N'pi-268', N'PI-112', 1005, N'kolappan.ponniahpillai@poclain.com', N'gajendhiran.r@poclain.com', N'2020-06-04', N'ck', N'execute this task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 7, 4, N'pi-268', N'PI-164', 1005, N'kolappan.ponniahpillai@poclain.com', N'0', N'2020-06-04', N'ck', N'execute this task', N'Accepted', NULL, NULL, N'U', N'1', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 9, 5, N'pi-268', N'PI-195', 1006, N'kolappan.ponniahpillai@poclain.com', N'mahendran.a@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 9, 5, N'pi-268', N'PI-257', 1006, N'kolappan.ponniahpillai@poclain.com', N'krishnakumar.prakasam@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'1', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 9, 6, N'pi-268', N'PI-195', 1006, N'kolappan.ponniahpillai@poclain.com', N'mahendran.a@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 9, 6, N'pi-268', N'PI-257', 1006, N'kolappan.ponniahpillai@poclain.com', N'krishnakumar.prakasam@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'1', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 9, 7, N'pi-268', N'PI-195', 1006, N'kolappan.ponniahpillai@poclain.com', N'mahendran.a@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 9, 7, N'pi-268', N'PI-257', 1006, N'kolappan.ponniahpillai@poclain.com', N'krishnakumar.prakasam@poclain.com', N'2020-06-05', N'ck', N'execute task', N'Accepted', NULL, NULL, N'U', N'1', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 10, 8, N'pi-289', N'PI-241', 1009, N'balan.guruswamy@poclain.com', N'ragaventhiran.gnanas@poclain.com', N'2020-06-09', N'ck', N'idea', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 12, 9, N'pi-243', N'PI-093', 1011, N'balaji.gopal@poclain.com', N'ramachandiran.d@poclain.com', N'2020-06-09', N'ck', N'task assign', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (15, 12, 9, N'pi-243', N'PI-281', 1011, N'balaji.gopal@poclain.com', N'rajagopal.ramasamy@poclain.com', N'2020-06-09', N'ck', N'task assign', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (16, 12, 10, N'pi-243', N'PI-093', 1011, N'balaji.gopal@poclain.com', N'ramachandiran.d@poclain.com', N'2020-06-09', N'ck', N'task assign', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (17, 12, 10, N'pi-243', N'PI-281', 1011, N'balaji.gopal@poclain.com', N'rajagopal.ramasamy@poclain.com', N'2020-06-09', N'ck', N'task assign', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (18, 16, 11, N'pi-289', N'PI-061', 1013, N'balan.guruswamy@poclain.com', N'kumaravel.munisamy@poclain.com', N'2020-06-11', N'ck', N'execute this task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (19, 16, 11, N'pi-289', N'PI-241', 1013, N'balan.guruswamy@poclain.com', N'ragaventhiran.gnanas@poclain.com', N'2020-06-11', N'ck', N'execute this task', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (20, 20, 12, N'pi-289', N'PI-194', 1014, N'balan.guruswamy@poclain.com', N'prabhu.murugesan@poclain.com', N'2020-06-12', N'task impl', N'impl the task with in daedline', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (21, 20, 12, N'pi-289', N'PI-241', 1014, N'balan.guruswamy@poclain.com', N'ragaventhiran.gnanas@poclain.com', N'2020-06-12', N'task impl', N'impl the task with in daedline', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (22, 20, 13, N'pi-243', N'PI-151', 1015, N'balaji.gopal@poclain.com', N'soubarayalu.d@poclain.com', N'2020-06-12', N'impl task', N'execute task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (23, 20, 13, N'pi-243', N'PI-292', 1015, N'balaji.gopal@poclain.com', N'Bharagava.Seshu.CHIVUKULA@poclain.com', N'2020-06-12', N'impl task', N'execute task', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (24, 21, 14, N'pi-215', N'PI-155', 1016, N'danasayan.veerappan@poclain.com', N'subramanian.g@poclain.com', N'2020-06-13', N'ck', N'execute hod', N'Accepted', NULL, NULL, N'U', N'5', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (25, 24, 23, N'pi-243', N'PI-062', 1017, N'balaji.gopal@poclain.com', N'selvi.k@poclain.com', N'2020-06-17', N'ck', N'', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (26, 26, 24, N'pi-289', N'PI-080', 1018, N'balan.guruswamy@poclain.com', N'sugumaran.balakirush@poclain.com', N'2020-06-17', N'ck', N'execute', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (27, 26, 25, N'pi-243', N'PI-093', 1002, N'balaji.gopal@poclain.com', N'ramachandiran.d@poclain.com', N'2020-06-18', N'ck', N'execute', N'Accepted', NULL, NULL, N'U', N'3', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (28, 40, 26, N'pi-286', N'PI-011', 221, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-06-26', N'guyh', N'check', N'Accepted', NULL, NULL, N'U', N'4', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (29, 40, 27, N'pi-268', N'PI-114', 207, N'kolappan.ponniahpillai@poclain.com', N'mohammed.riyazdheen@poclain.com', N'2020-06-30', N'check', N'check', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (30, 40, 28, N'pi-191', N'PI-133', 208, N'kural.v@binary2quantum.com', N'0', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (31, 40, 28, N'pi-191', N'PI-133', 208, N'kural.v@binary2quantum.com', N'0', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (32, 40, 28, N'pi-191', N'PI-133', 208, N'kural.v@binary2quantum.com', N'0', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (33, 40, 28, N'pi-191', N'PI-133', 208, N'kural.v@binary2quantum.com', N'0', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (34, 40, 28, N'pi-191', N'PI-055', 208, N'kural.v@binary2quantum.com', N'balaji.g@poclain.com', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (35, 40, 28, N'pi-191', N'PI-055', 208, N'kural.v@binary2quantum.com', N'balaji.g@poclain.com', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (36, 40, 28, N'pi-191', N'PI-055', 208, N'kural.v@binary2quantum.com', N'balaji.g@poclain.com', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (37, 40, 28, N'pi-191', N'PI-055', 208, N'kural.v@binary2quantum.com', N'balaji.g@poclain.com', N'2020-07-08', N'check', N'check table', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (38, 40, 29, N'pi-286', N'PI-011', 218, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-07-08', N'guyh', N'check', N'Accepted', NULL, NULL, N'U', N'50', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (39, 40, 29, N'pi-286', N'PI-212', 218, N'sarath.s@binary2quantumsolutions.com', N'mani95ram@outlook.com', N'2020-07-08', N'guyh', N'check', N'Accepted', NULL, NULL, N'U', N'50', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (40, 43, 30, N'pi-286', N'PI-011', 223, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-07-16', N'guyh', N'sss', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (41, 43, 31, N'pi-286', N'PI-199', 220, N'sarath.s@binary2quantumsolutions.com', N'mouni.settu@poclain.com', N'2020-08-04', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (42, 43, 31, N'pi-286', N'PI-141', 220, N'sarath.s@binary2quantumsolutions.com', N'john.britto@poclain.com', N'2020-08-04', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (43, 43, 31, N'pi-286', N'PI-011', 220, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-08-04', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'30', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (44, 45, 32, N'pi-286', N'PI-199', 224, N'sarath.s@binary2quantumsolutions.com', N'mouni.settu@poclain.com', N'2020-08-05', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (45, 45, 32, N'pi-286', N'PI-141', 224, N'sarath.s@binary2quantumsolutions.com', N'john.britto@poclain.com', N'2020-08-05', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (46, 45, 32, N'pi-286', N'PI-011', 224, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-08-05', N'check', N'check', N'Accepted', NULL, NULL, N'U', N'30', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (47, 46, 33, N'pi-286', N'PI-199', 225, N'sarath.s@binary2quantumsolutions.com', N'mouni.settu@poclain.com', N'2020-08-05', N'check', N'checkreport', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (48, 46, 33, N'pi-286', N'PI-141', 225, N'sarath.s@binary2quantumsolutions.com', N'john.britto@poclain.com', N'2020-08-05', N'check', N'checkreport', N'Accepted', NULL, NULL, N'U', N'35', N'', NULL, NULL)
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (49, 46, 33, N'pi-286', N'PI-011', 225, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-08-05', N'check', N'checkreport', N'Accepted', NULL, NULL, N'U', N'30', N'', NULL, N'X')
INSERT [dbo].[TeamEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (50, 47, 34, N'pi-286', N'PI-199', 226, N'sarath.s@binary2quantumsolutions.com', N'mouni.settu@poclain.com', N'2020-09-03', N'check test', N'test', NULL, NULL, NULL, N'i', NULL, NULL, N'03-10-2020', N'X')
SET IDENTITY_INSERT [dbo].[TeamEInbox] OFF
/****** Object:  UserDefinedFunction [dbo].[fun_getBulkProcessByRemark2]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_getBulkProcessByRemark2](@Remark2 nvarchar(5))
RETURNS nvarchar(30)
begin
	 
		
		DECLARE @Remark2Result nvarchar(20);
		 
		if( @Remark2='Y') 
		 begin
			
			set @Remark2Result='Approved';
		 end
		else
		 begin
			
			set @Remark2Result='NotApproved';	
		 end	
 
	
	return @Remark2Result;

end
GO
/****** Object:  UserDefinedFunction [dbo].[fun_getBulkProcessByRemark]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fun_getBulkProcessByRemark](@Remark1 nvarchar(5))
RETURNS nvarchar(30)
begin
	 
		DECLARE @Remark1Result nvarchar(20);
		
		 
		if(@Remark1='X') 
		 begin
			set @Remark1Result='Approved';
			
		 end
		
		
		else
		 begin
			set @Remark1Result='NotApproved';
				
		 end	
 
	return @Remark1Result;
	

end
GO
/****** Object:  UserDefinedFunction [dbo].[fun_getAmountByGrade]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_getAmountByGrade](@grade nvarchar(5))
RETURNS float
begin
	 
		DECLARE @amouny float=0;
		 
		if(@grade='A') 
		 begin
			set @amouny=1500;
		 end
		else if(@grade='B')
		 begin
			set @amouny=1000;	
		 end
		else
		 begin
			set @amouny=500;	
		 end	
 
	return @amouny;

end
GO
/****** Object:  Table [dbo].[FinanceDetail]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FinanceDetail](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[IdeaId] [varchar](50) NULL,
	[EmpId] [varchar](50) NULL,
	[EmpName] [varchar](50) NULL,
	[EmpMail] [varchar](50) NULL,
	[FinTeam] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Date] [date] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[FinanceDetail] ADD [CashMode] [varchar](50) NULL
ALTER TABLE [dbo].[FinanceDetail] ADD  CONSTRAINT [PK_FinanceDetail] PRIMARY KEY CLUSTERED 
(
	[SL_NO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FinanceDetail] ON
INSERT [dbo].[FinanceDetail] ([SL_NO], [IdeaId], [EmpId], [EmpName], [EmpMail], [FinTeam], [Comment], [Amount], [Date], [CashMode]) VALUES (1, N'1004', N'PI-103', N'Gavaskar', N'gavaskar.k@poclain.com', N'Rajesh', N'na senji ta', N'10000', CAST(0x24410B00 AS Date), NULL)
INSERT [dbo].[FinanceDetail] ([SL_NO], [IdeaId], [EmpId], [EmpName], [EmpMail], [FinTeam], [Comment], [Amount], [Date], [CashMode]) VALUES (2, N'1005', N'PI-111', N'Naresh', N'naresh.chandrasekaran@poclain.com', N'Rajesh', N'payment complete', N'333', CAST(0x2B410B00 AS Date), NULL)
INSERT [dbo].[FinanceDetail] ([SL_NO], [IdeaId], [EmpId], [EmpName], [EmpMail], [FinTeam], [Comment], [Amount], [Date], [CashMode]) VALUES (3, N'1016', N'PI-091', N'Sezhiyan', N'kural.v@binary2quantum.com', N'Rajesh', N'payment complete', N'1500', CAST(0x34410B00 AS Date), NULL)
INSERT [dbo].[FinanceDetail] ([SL_NO], [IdeaId], [EmpId], [EmpName], [EmpMail], [FinTeam], [Comment], [Amount], [Date], [CashMode]) VALUES (4, N'1014', N'PI-101', N'Rajeev', N'rajeev.rajendharan@poclain.com', N'suresh', N'check date', N'222', CAST(0x48410B00 AS Date), NULL)
INSERT [dbo].[FinanceDetail] ([SL_NO], [IdeaId], [EmpId], [EmpName], [EmpMail], [FinTeam], [Comment], [Amount], [Date], [CashMode]) VALUES (5, N'1018', N'PI-091', N'Sezhiyan', N'sarath.s@binary2quantumsolutions.com', N'malar', N'good', N'1233', CAST(0x48410B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[FinanceDetail] OFF
/****** Object:  Table [dbo].[BackEndOperation]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BackEndOperation](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[BackEnd] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BackEndLoginDetail]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BackEndLoginDetail](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](30) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[DateTiming] [varchar](50) NULL,
	[OutTime] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLoginDetail] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CeoMessage]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CeoMessage](
	[S_No] [int] IDENTITY(1,1) NOT NULL,
	[CEOMessage] [nvarchar](max) NULL,
	[Remark1] [nvarchar](max) NULL,
	[Remark2] [nvarchar](max) NULL,
	[Remark3] [nvarchar](max) NULL,
	[Remark4] [nvarchar](max) NULL,
	[Remark5] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CeoMessage] ON
INSERT [dbo].[CeoMessage] ([S_No], [CEOMessage], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, N'hi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CeoMessage] ([S_No], [CEOMessage], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, N'hi, Guys!!! Welcome To All !!', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CeoMessage] ([S_No], [CEOMessage], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, N'Pims Team welcome!!!', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CeoMessage] OFF
/****** Object:  Table [dbo].[HOSESend]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HOSESend](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[SEmail_ID] [int] NOT NULL,
	[IdeaId] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETO] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[ImplementationDate] [varchar](max) NULL,
	[BenefitsRating] [varchar](max) NULL,
	[ApprovingHeadName] [varchar](max) NULL,
	[Benifits] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOSEInbox]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HOSEInbox](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[EmailID] [int] NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Dep] [varchar](50) NULL,
	[Des] [varchar](50) NULL,
	[HODID] [varchar](50) NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HOSEInbox] ON
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (1, 4, 1004, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-05-28', N'kuduthuta pa enjoy', N'weewweq', NULL, NULL, NULL, N'', N'PI-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (2, 6, 1003, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-06-01', N'task complete', N'mr, Lokesh assign me this task i was complete that.', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (3, 6, 1003, N'manikandan.ramsaro@gmail.com', N'nicolas.mairey@poclain.com', N'2020-06-03', N'finish task', N'task completed', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (4, 8, 1005, N'gajendhiran.r@poclain.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-04', N'task complete', N'successfully executed', NULL, NULL, NULL, N'', N'pi-112', N'PI-268', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (5, 10, 1006, N'krishnakumar.prakasam@poclain.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-05', N'task complete', N'i do my best to complete this task', NULL, NULL, NULL, N'', N'pi-257', N'PI-268', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (6, 11, 1009, N'ragaventhiran.gnanas@poclain.com', N'venkateswaran.kandas@poclain.com', N'2020-06-09', N'task complete', N'completed', NULL, NULL, NULL, N'', N'pi-241', N'PI-248', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (7, 13, 1011, N'ramachandiran.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-09', N'task complete', N'complete', NULL, NULL, NULL, N'', N'pi-093', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (8, 17, 1013, N'kumaravel.munisamy@poclain.com', N'venkateswaran.kandas@poclain.com', N'2020-06-11', N'task complete', N'task completed', NULL, NULL, NULL, N'', N'pi-061', N'PI-248', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (9, 21, 1014, N'prabhu.murugesan@poclain.com', N'venkateswaran.kandas@poclain.com', N'2020-06-12', N'finish task', N'complete task', NULL, NULL, NULL, N'', N'pi-194', N'PI-248', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (10, 21, 1015, N'soubarayalu.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-12', N'finish task', N'complete task', NULL, NULL, NULL, N'', N'pi-151', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (11, 22, 1016, N'subramanian.g@poclain.com', N'venkateswaran.kandas@poclain.com', N'2020-06-13', N'task complete', N'exec ute impl', NULL, NULL, NULL, N'', N'pi-155', N'PI-248', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (12, 27, 1018, N'sugumaran.balakirush@poclain.com', N'venkateswaran.kandas@poclain.com', N'2020-06-17', N'task complete', N'completed', NULL, NULL, NULL, N'', N'pi-080', N'PI-248', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (13, 27, 1002, N'ramachandiran.d@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-18', N'task complete', N'complete', NULL, NULL, NULL, N'', N'pi-093', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (14, 41, 221, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-06-26', N'finish task', N'finish task', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (15, 41, 1017, N'selvi.k@poclain.com', N'nicolas.mairey@poclain.com', N'2020-06-30', N'checking', N'purpose', NULL, NULL, NULL, N'', N'pi-062', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (16, 41, 207, N'mohammed.riyazdheen@poclain.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-30', N'check mail', N'mail checking', NULL, NULL, NULL, N'', N'pi-114', N'PI-268', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (17, 41, 208, N'0', N'venkateswaran.kandas@poclain.com', N'2020-07-08', N'check %', N'check %', NULL, NULL, NULL, N'', N'pi-133', N'PI-248', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (18, 41, 218, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-07-08', N'finish task', N'check %', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (19, 44, 220, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-08-04', N'check', N'chck', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (20, 46, 224, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-08-05', N'check full path', N'check', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (21, 47, 225, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-08-05', N'checkexcel', N'checkexcel', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, N'U')
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (22, 47, 225, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-09-01', N'hh', N'dsd', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (23, 47, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutions.com', N'2020-09-01', N'great', N'good', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (24, 47, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutions.com', N'2020-09-01', N'ss', N'ss', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (25, 47, 225, N'raja.g@binary2quantumsolutions.com', N'sarath.s@binary2quantumsolutions.com', N'2020-09-01', N'dd', N'dd', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (26, 47, 225, N'raja.g@binary2quantumsolutions.com', N'nicolas.mairey@poclain.com', N'2020-09-01', N'dd', N'dd', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
INSERT [dbo].[HOSEInbox] ([SL_No], [EmailID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [HODID], [SenderID], [ReceiverID], [Remark4], [Remark5]) VALUES (27, 48, 223, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-09-09', N'checkupload', N'checkupload', NULL, NULL, NULL, N'', N'pi-011', N'PI-274', NULL, NULL)
SET IDENTITY_INSERT [dbo].[HOSEInbox] OFF
/****** Object:  Table [dbo].[HOSDetail]    Script Date: 10/03/2020 11:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HOSDetail](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[HOSID] [int] NOT NULL,
	[EmpId] [varchar](max) NULL,
	[Members] [varchar](max) NULL,
	[Department] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HOSDetail] ON
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 1, N'PI-067', N'Venkatesh', N'SOURCING', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 1, N'PI-277', N'Marian', N'INNOVATION', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 1, N'PI-220', N'Gopalakrishnan', N'LOGISTIC', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 1, N'PI-024', N'Magesh', N'INNOVATION', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 1, N'PI-259', N'Marc Oliver', N'SALES & SALES SUPPORT', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 1, N'PI-274', N'Nicolas', N'FINANCE', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 1, N'PI-150', N'Vijay Ganesh', N'PLANT MANAGEMENT', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 1, N'PI-309', N'Roopa', N'QUALITY', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 1, N'PI-268', N'Kolappan', N'MANUFACTURING ENGINEERING', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 1, N'PI-275', N'Francisco', N'PLANT MANAGEMENT', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 1, N'PI-248', N'Venkateswaran', N'PRODUCTION', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 1, N'PI-247', N'Venkatesh Tekkalki', N'QUALITY', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HOSDetail] ([SL_NO], [HOSID], [EmpId], [Members], [Department], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 1, N'PI-242', N'Vengadessane', N'HR', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HOSDetail] OFF
/****** Object:  StoredProcedure [dbo].[SP_TeamExecution_Insert]    Script Date: 10/03/2020 11:29:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_TeamExecution_Insert]
	-- Add the parameters for the stored procedure here
		
        @ProjectId int, 
        @TeamId int, 
        @TeamName varchar(50),
        @IdeaId int, 
        @HOId varchar(30), 
        @Duration varchar(50),
        @FromDate Date, 
        
        @HMessage varchar(max), 
        @Remark1 varchar(50)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 
	
	insert into TeamExecution(ProjectId, TeamId, TeamName, IdeaId, HOId, Duration, FromDate, HMessage, Remark1) values (@ProjectId, @TeamId, @TeamName, @IdeaId, @HOId, @Duration, @FromDate, @HMessage, @Remark1)
	




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamExecution_AutoGen_ProjectID]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TeamExecution_AutoGen_ProjectID]


           
AS
BEGIN
	select isnull(max(ProjectId),0)+1 from TeamExecution




end
GO
/****** Object:  Table [dbo].[ManagerESend]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ManagerESend](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[SEmail_ID] [int] NOT NULL,
	[IdeaId] [int] NOT NULL,
	[SendMID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETO] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
 CONSTRAINT [PK_ManagerESend] PRIMARY KEY CLUSTERED 
(
	[SEmail_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ManagerESend] ON
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 1, 1004, 1, N'manikandan.ramsaro@gmail.com', N'PI-011', N'2020-05-28', N'sei', N'sei da', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 2, 1003, 2, N'manikandan.ramsaro@gmail.com', N'PI-011', N'2020-06-01', N'ck', N'its for ur task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 3, 1003, 3, N'manikandan.ramsaro@gmail.com', N'PI-212', N'2020-06-03', N'guyh', N'hjb', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 4, 1005, 4, N'kolappan.ponniahpillai@poclain.com', N'PI-164', N'2020-06-04', N'ck', N'execute this task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 5, 1006, 5, N'kolappan.ponniahpillai@poclain.com', N'PI-257', N'2020-06-05', N'ck', N'execute task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 6, 1006, 6, N'kolappan.ponniahpillai@poclain.com', N'PI-257', N'2020-06-05', N'ck', N'execute task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 7, 1006, 7, N'kolappan.ponniahpillai@poclain.com', N'PI-257', N'2020-06-05', N'ck', N'execute task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 8, 1009, 8, N'balan.guruswamy@poclain.com', N'PI-241', N'2020-06-09', N'ck', N'idea', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 9, 1011, 9, N'balaji.gopal@poclain.com', N'PI-281', N'2020-06-09', N'ck', N'task assign', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 10, 1011, 10, N'balaji.gopal@poclain.com', N'PI-281', N'2020-06-09', N'ck', N'task assign', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 11, 1013, 11, N'balan.guruswamy@poclain.com', N'PI-241', N'2020-06-11', N'ck', N'execute this task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 12, 1014, 12, N'balan.guruswamy@poclain.com', N'PI-241', N'2020-06-12', N'task impl', N'impl the task with in daedline', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 13, 1015, 13, N'balaji.gopal@poclain.com', N'PI-292', N'2020-06-12', N'impl task', N'execute task', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 14, 1016, 14, N'danasayan.veerappan@poclain.com', N'PI-155', N'2020-06-13', N'ck', N'execute hod', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (15, 22, 1002, 15, N'kolappan.ponniahpillai@poclain.com', N'pi-289', N'2020-06-13', N'', N'', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (26, 23, 1017, 23, N'balaji.gopal@poclain.com', N'PI-062', N'2020-06-17', N'ck', N'', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (27, 24, 1018, 24, N'balan.guruswamy@poclain.com', N'PI-080', N'2020-06-17', N'ck', N'execute', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (28, 25, 1002, 25, N'balaji.gopal@poclain.com', N'PI-093', N'2020-06-18', N'ck', N'execute', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (29, 26, 221, 26, N'sarath.s@binary2quantumsolutions.com', N'PI-011', N'2020-06-26', N'guyh', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (30, 27, 207, 27, N'kolappan.ponniahpillai@poclain.com', N'PI-114', N'2020-06-30', N'check', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (31, 28, 208, 28, N'kural.v@binary2quantum.com', N'PI-055', N'2020-07-08', N'check', N'check table', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (32, 29, 218, 29, N'sarath.s@binary2quantumsolutions.com', N'PI-212', N'2020-07-08', N'guyh', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (33, 30, 223, 30, N'sarath.s@binary2quantumsolutions.com', N'PI-011', N'2020-07-16', N'guyh', N'sss', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (34, 31, 220, 31, N'sarath.s@binary2quantumsolutions.com', N'PI-011', N'2020-08-04', N'check', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (35, 32, 224, 32, N'sarath.s@binary2quantumsolutions.com', N'PI-011', N'2020-08-05', N'check', N'check', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (36, 33, 225, 33, N'sarath.s@binary2quantumsolutions.com', N'PI-011', N'2020-08-05', N'check', N'checkreport', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerESend] ([SL_NO], [SEmail_ID], [IdeaId], [SendMID], [EFrom], [ETO], [Date], [Subject], [Description], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (37, 34, 226, 34, N'sarath.s@binary2quantumsolutions.com', N'PI-199', N'2020-09-03', N'check test', N'test', N'i', NULL, NULL, N'03-10-2020', NULL)
SET IDENTITY_INSERT [dbo].[ManagerESend] OFF
/****** Object:  Table [dbo].[ManagerEInbox]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ManagerEInbox](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NOT NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Dep] [varchar](50) NULL,
	[Des] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ManagerEInbox] ON
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 2, 2, N'pi-266', N'pi-286', 1004, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-05-28', N'please do it', N'please do it', NULL, NULL, NULL, N'i', N'x', NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 4, 4, N'pi-266', N'pi-191', 1003, N'manikandan.ramsaro@gmail.com', N'kural.v@binary2quantum.com', N'2020-06-01', N'idea execute', N'execute the idea in your team', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 4, 5, N'pi-266', N'pi-286', 1003, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-01', N'idea execute', N'impl the idea', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 6, 7, N'pi-266', N'pi-268', 1005, N'manikandan.ramsaro@gmail.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-04', N'idea execute', N'do it with your team', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 8, 9, N'pi-266', N'pi-268', 1006, N'manikandan.ramsaro@gmail.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-05', N'idea execute', N'task will be execute with your team members', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 8, 9, N'pi-266', N'pi-243', 1006, N'manikandan.ramsaro@gmail.com', N'balaji.gopal@poclain.com', N'2020-06-05', N'idea execute', N'task will be execute with your team members', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 9, 11, N'pi-266', N'pi-289', 1009, N'manikandan.ramsaro@gmail.com', N'balan.guruswamy@poclain.com', N'2020-06-09', N'idea execute', N'execute', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 11, 13, N'pi-266', N'pi-243', 1011, N'manikandan.ramsaro@gmail.com', N'balaji.gopal@poclain.com', N'2020-06-09', N'idea execute', N'execute', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 15, 16, N'pi-266', N'pi-289', 1013, N'manikandan.ramsaro@gmail.com', N'balan.guruswamy@poclain.com', N'2020-06-11', N'idea execute', N'balan today', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 19, 19, N'pi-266', N'pi-243', 1015, N'manikandan.ramsaro@gmail.com', N'balaji.gopal@poclain.com', N'2020-06-12', N'task execute', N'execute this task', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 19, 20, N'pi-266', N'pi-243', 1015, N'manikandan.ramsaro@gmail.com', N'balaji.gopal@poclain.com', N'2020-06-12', N'task execute', N'execute this task', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'R')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 19, 21, N'pi-266', N'pi-289', 1014, N'manikandan.ramsaro@gmail.com', N'balan.guruswamy@poclain.com', N'2020-06-12', N'task execute', N'execute task', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 20, 23, N'pi-266', N'pi-215', 1016, N'manikandan.ramsaro@gmail.com', N'danasayan.veerappan@poclain.com', N'2020-06-13', N'idea execute', N'can u', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 21, 25, N'pi-273', N'pi-268', 1002, N'raja.g@binary2quantum.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-13', N'', N'', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (15, 21, 22, N'15', N'pi-289', 1002, N'kolappan.ponniahpillai@poclain.com', N'balan.guruswamy@poclain.com', N'2020-06-13', N'', N'', N'Forward', NULL, NULL, N'i', NULL, NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (16, 23, 27, N'pi-266', N'pi-286', 1017, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-16', N'idea execute', N'execute', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (21, 23, 24, N'pi-286', N'pi-227', 1017, N'manikandan.ramsaro@gmail.com', N'mohamed-azzad.nainar@poclain.com', N'2020-06-17', N'idea execute', N'execute', N'Forward', NULL, NULL, N'i', NULL, NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (22, 23, 24, N'pi-227', N'pi-243', 1017, N'mohamed-azzad.nainar@poclain.com', N'balaji.gopal@poclain.com', N'2020-06-17', N'', N'', N'Forward', NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (25, 25, 26, N'pi-268', N'pi-243', 1002, N'kolappan.ponniahpillai@poclain.com', N'balaji.gopal@poclain.com', N'2020-06-18', N'idea execute', N'execute', N'Forward', NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (26, 28, 32, N'pi-266', N'pi-286', 1012, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-19', N's', N'alreadyimpl', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'C')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (27, 28, 33, N'pi-266', N'pi-286', 1020, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-19', N's', N'notfeasible', NULL, NULL, NULL, N'i', N'x', NULL, NULL, N'W')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (28, 32, 37, N'pi-266', N'pi-268', 207, N'manikandan.ramsaro@gmail.com', N'kolappan.ponniahpillai@poclain.com', N'2020-06-22', N'idea execute', N'h', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (29, 37, 41, N'pi-266', N'pi-191', 208, N'manikandan.ramsaro@gmail.com', N'manikandan.r@binary2quantum.com', N'2020-06-26', N'test web  mail', N'test web  mail', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (30, 37, 42, N'pi-266', N'pi-191', 208, N'manikandan.ramsaro@gmail.com', N'manikandan.r@binary2quantum.com', N'2020-06-26', N'test web  mail', N'test web  mail', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (31, 39, 44, N'pi-266', N'pi-286', 221, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-06-26', N'task execute', N'execute', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (32, 39, 45, N'pi-266', N'pi-286', 218, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-07-08', N'task execute', N'task', NULL, NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (33, 40, 47, N'pi-266', N'pi-286', 220, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-07-15', N'task execute', N'execute', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (34, 41, 49, N'pi-266', N'pi-286', 222, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-07-15', N'task execute', N'sww', NULL, NULL, NULL, N'i', N'x', NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (23, 25, 29, N'pi-266', N'pi-286', 1018, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-06-17', N'idea execute', N'execute', NULL, NULL, NULL, N'i', NULL, NULL, NULL, N'U')
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (24, 25, 26, N'pi-286', N'pi-289', 1018, N'manikandan.ramsaro@gmail.com', N'balan.guruswamy@poclain.com', N'2020-06-17', N'idea execute', N'execute', N'Forward', NULL, NULL, N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (35, 42, 51, N'pi-266', N'pi-286', 223, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-07-15', N'task execute', N'color change', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (36, 42, 43, N'pi-286', N'pi-215', 222, N'sarath.s@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com', N'2020-08-04', N'check', N'checkfianavce', N'Forward', NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (37, 44, 54, N'pi-266', N'pi-286', 224, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-08-05', N'check full path', N'check', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (38, 45, 56, N'pi-266', N'pi-286', 225, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-08-05', N'check', N'checkwhat', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
INSERT [dbo].[ManagerEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (39, 46, 58, N'pi-266', N'pi-286', 226, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-09-03', N'check', N'test check', NULL, NULL, NULL, N'i', N'x', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ManagerEInbox] OFF
/****** Object:  Table [dbo].[ManagerDetail]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ManagerDetail](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[ManID] [int] NULL,
	[EmpId] [varchar](max) NULL,
	[Members] [varchar](max) NULL,
	[Department] [varchar](50) NULL,
	[ODepartment] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ManagerDetail] ON
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 1, N'pi-073', N'Balakrishnan', N'MAINTENANCE', N'Maintenance Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 2, N'pi-215', N'Danasayan', N'PRODUCTION', N'Production Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 3, N'pi-227', N'Mohamed Azzad', N'IT', N'Information Systems Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 4, N'pi-191', N'Sathyasekar', N'GENERAL MANAGEMENT', N'GENERAL MANAGEMENT MANAGER', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 5, N'pi-289', N'Balan', N'MAINTENANCE', N'Maintenance Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 6, N'pi-286', N'Lokesh', N'IT', N'Information Systems Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 7, N'pi-268', N'Kolappan', N'MANUFACTURING ENGINEERING', N'Manufacturing Engineering Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 8, N'pi-243', N'Balaji', N'FINANCE', N'Finance Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 9, N'pi-075', N'Jayabalan', N'AFTERMARKET', N'Aftermarket Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 10, N'SI-123', N'SHREE', N'ADMINISTRATION', N'Aftermarket Manager', N'i', NULL, NULL, NULL, NULL)
INSERT [dbo].[ManagerDetail] ([SL_NO], [ManID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 11, N'pi-073', N'Balakrishnan', N'PRODUCTION ABU', N'PRODUCTION MANAGER', N'i', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ManagerDetail] OFF
/****** Object:  Table [dbo].[HRESend]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRESend](
	[SL_No] [int] NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Days] [varchar](50) NULL,
	[Rating] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[HOSGrade] [varchar](50) NULL,
	[HOSBM] [varchar](50) NULL,
	[BENGrade] [varchar](50) NULL,
	[BENBM] [varchar](50) NULL,
	[ApprovedUser] [varchar](50) NULL,
	[ApprovedUserAmt] [varchar](50) NULL,
	[ApprovedImpl] [varchar](max) NULL,
	[ApprovedImplAmt] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
 CONSTRAINT [PK_HRESend] PRIMARY KEY CLUSTERED 
(
	[CmEmailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (8, 8, 10, N'PI-266', N'PI-235', 1004, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'May 28 2020 11:17AM', N'	I installed OS to Maheswari laptop', N'asdfasdf', N'Accepted', N'0', N'A', N'asdfasdf', N'A', N'SAFETY - PREVENTIVE SIGNIFICANT', N'A', N'SAFETY - PREVENTIVE SIGNIFICANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (9, 9, 9, N'PI-266', N'PI-235', 1005, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun  4 2020  7:30PM', N'check rating', N'if u want change go ahead', N'Accepted', N'0', N'A', N'if u want change go ahead', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (10, 10, 9, N'PI-266', N'PI-235', 1006, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun  5 2020  3:52PM', N'check rating', N'rating of mine', N'Accepted', N'0', N'A', N'rating of mine', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (11, 11, 10, N'PI-266', N'PI-235', 1011, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun  9 2020  5:48PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (12, 12, 7, N'PI-266', N'PI-235', 1013, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 11 2020  5:40PM', N'check rating', N'change proceed', N'Accepted', N'0', N'A', N'change proceed', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (13, 13, 7, N'PI-266', N'PI-235', 1014, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 12 2020 11:26AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (14, 14, 10, N'PI-266', N'PI-235', 1015, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 12 2020 11:28AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'A', N'COST SAVING - 1,00,000 & ABOVE', N'A', N'COST SAVING - 1,00,000 & ABOVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (15, 15, 7, N'PI-266', N'PI-235', 1016, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 13 2020  6:03PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (16, 16, 7, N'PI-266', N'PI-235', 1018, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 17 2020  1:32PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (17, 17, 27, N'PI-266', N'PI-235', 221, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 26 2020  3:11PM', N'send beneficiary', N'execeute', N'Accepted', N'0', N'A', N'execeute', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', NULL, NULL, N' PI-011-Sumathi', N'1000', NULL, N'Y', NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (18, 18, 22, N'PI-266', N'PI-235', 1017, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 30 2020 10:15AM', N'k', N'checking', N'Accepted', N'0', N'A', N'checking', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (19, 19, 23, N'PI-266', N'PI-235', 208, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jul  8 2020  4:44PM', N'send beneficiary', N'cdsa', N'Accepted', N'0', N'A', N'cdsa', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', N'System.Web.UI.WebCon', N'System.Web.UI.WebCon', N' PI-055-Balaji, PI-133-Selvam', N'1000', NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (20, 20, 20, N'PI-266', N'PI-235', 1002, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun 18 2020  7:29PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', N'pi-125-Govindaraj', N'100', N' PI-093-Ramachandira', N'1000', NULL, NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (21, 21, 24, N'PI-266', N'PI-235', 218, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Aug  4 2020  1:07PM', N'check', N'check', N'Accepted', N'27', N'A', N'check', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM', N'PI-125-Govindaraj', N'100', N' PI-011-Sumathi, PI-212-Almohisen', N'1000', N'X', N'Y', N'pi-242')
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (22, 22, 25, N'PI-266', N'PI-235', 220, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Aug  4 2020  6:48PM', N'check', N'checkprocess', N'Accepted', N'0', N'A', N'checkprocess', N'B', N'QUALITY - 500-200 PPM', N'C', N'>500 PPM-QUALITY', N'pi-011-Sumathi', N'100', N' PI-011-Sumathi, PI-', N'500', N'X', N'Y', NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (23, 23, 26, N'PI-266', N'PI-235', 224, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Aug  5 2020 11:37AM', N'check full path', N'check', N'Accepted', N'0', N'A', N'check', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY', N'pi-101-Rajeev', N'100', N' PI-011-Sumathi, PI-141-John Britto, PI-199-Mouni', N'1000', N'X', NULL, NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (24, 24, 27, N'PI-266', N'PI-235', 225, N'jeyapandi.palani@poclain.com', N'rajesh.arumugam@poclain.com', N'Aug  5 2020  7:05PM', N'checkexcel', N'checkexcel', N'Accepted', N'0', N'A', N'checkexcel', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY', N'pi-101-Rajeev', N'100', N' PI-011-Sumathi, PI-141-John Britto, PI-199-Mouni', N'1000', NULL, N'Y', NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (25, 25, 9, N'PI-242', N'PI-235', 1009, N'vengadessane.nadradjane@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun  9 2020 10:45AM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000', NULL, NULL, N' PI-241-Ragaventhiran', N'1000', NULL, N'Y', NULL)
INSERT [dbo].[HRESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM], [ApprovedUser], [ApprovedUserAmt], [ApprovedImpl], [ApprovedImplAmt], [Remark1], [Remark2], [Remark3]) VALUES (26, 26, 3, N'PI-242', N'PI-235', 1003, N'vengadessane.nadradjane@poclain.com', N'rajesh.arumugam@poclain.com', N'Jun  3 2020  4:51PM', N'k', N'finish', N'Accepted', N'0', N'A', N'finish', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM', NULL, NULL, N' PI-011-Sumathi, PI-212-Almohisen', N'1500', NULL, N'Y', N'pi-266')
/****** Object:  Table [dbo].[FinanceIMPLDetail]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FinanceIMPLDetail](
	[IdeaId] [varchar](20) NULL,
	[IMPLEmpId] [nvarchar](50) NULL,
	[IMPLEmpName] [nvarchar](max) NULL,
	[IMPLEmpMail] [nvarchar](max) NULL,
	[FinTeam] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[CashMode] [varchar](50) NULL,
	[Date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FinanceIMPLDetail] ([IdeaId], [IMPLEmpId], [IMPLEmpName], [IMPLEmpMail], [FinTeam], [Comment], [Amount], [CashMode], [Date]) VALUES (N'1011', N' PI-093, PI-281', N' Rajagopal, Ramachandiran', N' rajagopal.ramasamy@poclain.com, ramachandiran.d@poclain.com', N'rajesh', N'paid', N'500', N'CASH', CAST(0x64410B00 AS Date))
/****** Object:  Table [dbo].[Error]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Error](
	[Date] [date] NULL,
	[form] [varchar](max) NULL,
	[exception] [varchar](max) NULL,
	[operation] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpTableDetail]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EmpTableDetail](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEEID] [varchar](50) NULL,
	[EMPTABLE] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL,
	[Remark7] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EmpTableDetail] ON
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (1, N'PI-073', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (2, N'PI-075', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (3, N'PI-191', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (4, N'PI-215', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (5, N'PI-227', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (6, N'PI-243', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (7, N'PI-262', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (8, N'PI-268', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (9, N'PI-286', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (10, N'PI-289', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (11, N'PI-074', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (12, N'PI-190', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (13, N'PI-233', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (14, N'PI-273', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (15, N'PI-266', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (16, N'PI-091', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (17, N'si-123', N'HOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (18, N'si-001', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (19, N'pi-110', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (20, N'T-007', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (21, N'T-007', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (22, N't-006', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EmpTableDetail] ([SLNO], [EMPLOYEEID], [EMPTABLE], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [Remark7]) VALUES (23, N'T-020', N'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EmpTableDetail] OFF
/****** Object:  Table [dbo].[BeneficiaryESend]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BeneficiaryESend](
	[SL_No] [int] NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Days] [varchar](50) NULL,
	[Rating] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[HOSGrade] [varchar](50) NULL,
	[HOSBM] [varchar](50) NULL,
	[BENGrade] [varchar](50) NULL,
	[BENBM] [varchar](50) NULL,
 CONSTRAINT [PK_BeneficiaryESend] PRIMARY KEY CLUSTERED 
(
	[CmEmailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (1, 1, 1, N'PI-275', N'PI-266', 1004, N'francisco.exposito@poclain.com ', N'jeyapandi.palani@poclain.com', N'May 28 2020 11:17AM', N'	I installed OS to Maheswari laptop', N'asdfasdf', N'Accepted', N'0', N'A', N'asdfasdf', N'A', N'SAFETY - PREVENTIVE SIGNIFICANT', N'A', N'SAFETY - PREVENTIVE SIGNIFICANT')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (2, 2, 2, N'PI-275', N'PI-266', 1003, N'francisco.exposito@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  1 2020  6:47PM', N'check rating', N'i was fix the rating if u want to change pls goahe', N'Accepted', N'0', N'A', N'i was fix the rating if u want to change pls goahe', N'A', N'QUALITY - <200 PPM', N'A', N'QUALITY - <200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (3, 3, 4, N'PI-277', N'PI-266', 1003, N'marian.denitiu@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  3 2020  4:51PM', N'k', N'finish', N'Accepted', N'0', N'A', N'finish', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (4, 4, 3, N'PI-309', N'PI-266', 1003, N'roopa.nagaraju@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  3 2020  4:51PM', N'k', N'finish', N'Accepted', N'0', N'A', N'finish', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (5, 5, 5, N'PI-277', N'PI-266', 1005, N'marian.denitiu@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  4 2020  7:30PM', N'check rating', N'if u want change go ahead', N'Accepted', N'0', N'A', N'if u want change go ahead', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (6, 6, 6, N'PI-024', N'PI-266', 1005, N'magesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  4 2020  7:30PM', N'check rating', N'if u want change go ahead', N'Accepted', N'0', N'A', N'if u want change go ahead', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (7, 7, 7, N'PI-220', N'PI-266', 1006, N'gopalakrishnan.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  5 2020  3:52PM', N'check rating', N'rating of mine', N'Accepted', N'0', N'A', N'rating of mine', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (8, 8, 8, N'PI-150', N'PI-266', 1006, N'vijayganesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  5 2020  3:52PM', N'check rating', N'rating of mine', N'Accepted', N'0', N'A', N'rating of mine', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (9, 9, 9, N'PI-277', N'PI-266', 1009, N'marian.denitiu@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  9 2020 10:45AM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (10, 10, 10, N'PI-220', N'PI-266', 1011, N'gopalakrishnan.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  9 2020  5:48PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (11, 11, 11, N'PI-067', N'PI-266', 1011, N'venkatesh.g@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun  9 2020  5:48PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (12, 12, 12, N'PI-024', N'PI-266', 1013, N'magesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 11 2020  5:40PM', N'check rating', N'change proceed', N'Accepted', N'0', N'A', N'change proceed', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (13, 13, 13, N'PI-220', N'PI-266', 1013, N'gopalakrishnan.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 11 2020  5:40PM', N'check rating', N'change proceed', N'Accepted', N'0', N'A', N'change proceed', N'C', N'QUALITY - >500 PPM', N'C', N'QUALITY - >500 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (14, 14, 14, N'PI-275', N'PI-266', 1014, N'francisco.exposito@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 12 2020 11:26AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (15, 15, 15, N'PI-150', N'PI-266', 1014, N'vijayganesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 12 2020 11:26AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'B', N'COST SAVING - 50,000-1,00,000', N'B', N'COST SAVING - 50,000-1,00,000')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (16, 16, 16, N'PI-220', N'PI-266', 1015, N'gopalakrishnan.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 12 2020 11:28AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'A', N'COST SAVING - 1,00,000 & ABOVE', N'A', N'COST SAVING - 1,00,000 & ABOVE')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (17, 17, 17, N'PI-024', N'PI-266', 1015, N'magesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 12 2020 11:28AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'A', N'COST SAVING - 1,00,000 & ABOVE', N'B', N'500-200 PPM-QUALITY')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (18, 18, 18, N'PI-275', N'PI-266', 1016, N'francisco.exposito@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 13 2020  6:03PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (19, 19, 18, N'PI-275', N'PI-266', 1016, N'francisco.exposito@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 13 2020  6:03PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (20, 20, 19, N'PI-150', N'PI-266', 1018, N'vijayganesh.k@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 17 2020  1:32PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (21, 21, 20, N'PI-309', N'PI-266', 1002, N'roopa.nagaraju@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 18 2020  7:29PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (22, 22, 21, N'PI-277', N'PI-266', 221, N'raja.g@binary2quantumsolutions.com ', N'jeyapandi.palani@poclain.com', N'Jun 26 2020  3:11PM', N'send beneficiary', N'execeute', N'Accepted', N'0', N'A', N'execeute', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (23, 23, 22, N'PI-277', N'PI-266', 1017, N'marian.denitiu@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jun 30 2020 10:15AM', N'k', N'checking', N'Accepted', N'0', N'A', N'checking', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (24, 24, 23, N'PI-274', N'PI-266', 208, N'nicolas.mairey@poclain.com ', N'jeyapandi.palani@poclain.com', N'Jul  8 2020  4:44PM', N'send beneficiary', N'cdsa', N'Accepted', N'0', N'A', N'cdsa', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (25, 25, 24, N'PI-242', N'PI-266', 218, N'raja.g@binary2quantumsolutions.com ', N'jeyapandi.palani@poclain.com', N'Aug  4 2020  1:07PM', N'check', N'check', N'Accepted', N'27', N'A', N'check', N'B', N'QUALITY - 500-200 PPM', N'B', N'QUALITY - 500-200 PPM')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (26, 26, 25, N'PI-242', N'PI-266', 220, N'vengadessane.nadradjane@poclain.com ', N'jeyapandi.palani@poclain.com', N'Aug  4 2020  6:48PM', N'check', N'checkprocess', N'Accepted', N'0', N'A', N'checkprocess', N'B', N'QUALITY - 500-200 PPM', N'C', N'>500 PPM-QUALITY')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (27, 27, 26, N'PI-242', N'PI-266', 224, N'vengadessane.nadradjane@poclain.com ', N'jeyapandi.palani@poclain.com', N'Aug  5 2020 11:37AM', N'check full path', N'check', N'Accepted', N'0', N'A', N'check', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY')
INSERT [dbo].[BeneficiaryESend] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [HOSGrade], [HOSBM], [BENGrade], [BENBM]) VALUES (28, 28, 27, N'PI-242', N'PI-266', 225, N'vengadessane.nadradjane@poclain.com ', N'jeyapandi.palani@poclain.com', N'Aug  5 2020  7:05PM', N'checkexcel', N'checkexcel', N'Accepted', N'0', N'A', N'checkexcel', N'A', N'QUALITY - <200 PPM', N'B', N'500-200 PPM-QUALITY')
/****** Object:  Table [dbo].[BeneficiaryEInbox]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BeneficiaryEInbox](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Days] [varchar](50) NULL,
	[Rating] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[BenefitsMatrix] [varchar](max) NULL,
	[Remark5] [varchar](50) NULL,
 CONSTRAINT [PK_BeneficiaryEInbox] PRIMARY KEY CLUSTERED 
(
	[CmEmailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BeneficiaryEInbox] ON
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (1, 1, 10, N'PI-274', N'PI-275', 1004, N'nicolas.mairey@poclain.com', N'francisco.exposito@poclain.com ', N'May 28 2020 11:17AM', N'	I installed OS to Maheswari laptop', N'asdfasdf', N'Accepted', N'0', N'A', N'asdfasdf', N'', N'A', N'SAFETY - PREVENTIVE SIGNIFICANT', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (2, 2, 10, N'PI-274', N'PI-275', 1003, N'nicolas.mairey@poclain.com', N'francisco.exposito@poclain.com ', N'Jun  1 2020  6:47PM', N'check rating', N'i was fix the rating if u want to change pls goahe', N'Accepted', N'0', N'A', N'i was fix the rating if u want to change pls goahe', N'', N'A', N'QUALITY - <200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (3, 3, 10, N'PI-274', N'PI-309', 1003, N'nicolas.mairey@poclain.com', N'roopa.nagaraju@poclain.com ', N'Jun  3 2020  4:51PM', N'k', N'finish', N'Accepted', N'0', N'A', N'finish', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (4, 4, 10, N'PI-274', N'PI-277', 1003, N'nicolas.mairey@poclain.com', N'marian.denitiu@poclain.com ', N'Jun  3 2020  4:51PM', N'k', N'finish', N'Accepted', N'0', N'A', N'finish', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (5, 5, 9, N'PI-268', N'PI-277', 1005, N'kolappan.ponniahpillai@poclain.com', N'marian.denitiu@poclain.com ', N'Jun  4 2020  7:30PM', N'check rating', N'if u want change go ahead', N'Accepted', N'0', N'A', N'if u want change go ahead', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (6, 6, 9, N'PI-268', N'PI-024', 1005, N'kolappan.ponniahpillai@poclain.com', N'magesh.k@poclain.com ', N'Jun  4 2020  7:30PM', N'check rating', N'if u want change go ahead', N'Accepted', N'0', N'A', N'if u want change go ahead', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (7, 7, 9, N'PI-268', N'PI-220', 1006, N'kolappan.ponniahpillai@poclain.com', N'gopalakrishnan.k@poclain.com ', N'Jun  5 2020  3:52PM', N'check rating', N'rating of mine', N'Accepted', N'0', N'A', N'rating of mine', N'', N'B', N'COST SAVING - 50,000-1,00,000', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (8, 8, 9, N'PI-268', N'PI-150', 1006, N'kolappan.ponniahpillai@poclain.com', N'vijayganesh.k@poclain.com ', N'Jun  5 2020  3:52PM', N'check rating', N'rating of mine', N'Accepted', N'0', N'A', N'rating of mine', N'', N'B', N'COST SAVING - 50,000-1,00,000', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (9, 9, 7, N'PI-248', N'PI-277', 1009, N'venkateswaran.kandas@poclain.com', N'marian.denitiu@poclain.com ', N'Jun  9 2020 10:45AM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'', N'B', N'COST SAVING - 50,000-1,00,000', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (10, 10, 10, N'PI-274', N'PI-220', 1011, N'nicolas.mairey@poclain.com', N'gopalakrishnan.k@poclain.com ', N'Jun  9 2020  5:48PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (11, 11, 10, N'PI-274', N'PI-067', 1011, N'nicolas.mairey@poclain.com', N'venkatesh.g@poclain.com ', N'Jun  9 2020  5:48PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (12, 12, 7, N'PI-248', N'PI-024', 1013, N'venkateswaran.kandas@poclain.com', N'magesh.k@poclain.com ', N'Jun 11 2020  5:40PM', N'check rating', N'change proceed', N'Accepted', N'0', N'A', N'change proceed', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (13, 13, 7, N'PI-248', N'PI-220', 1013, N'venkateswaran.kandas@poclain.com', N'gopalakrishnan.k@poclain.com ', N'Jun 11 2020  5:40PM', N'check rating', N'change proceed', N'Accepted', N'0', N'A', N'change proceed', N'', N'C', N'QUALITY - >500 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (14, 14, 7, N'PI-248', N'PI-275', 1014, N'venkateswaran.kandas@poclain.com', N'francisco.exposito@poclain.com ', N'Jun 12 2020 11:26AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'', N'B', N'COST SAVING - 50,000-1,00,000', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (15, 15, 7, N'PI-248', N'PI-150', 1014, N'venkateswaran.kandas@poclain.com', N'vijayganesh.k@poclain.com ', N'Jun 12 2020 11:26AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'', N'B', N'COST SAVING - 50,000-1,00,000', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (16, 16, 10, N'PI-274', N'PI-220', 1015, N'nicolas.mairey@poclain.com', N'gopalakrishnan.k@poclain.com ', N'Jun 12 2020 11:28AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'', N'A', N'COST SAVING - 1,00,000 & ABOVE', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (17, 17, 10, N'PI-274', N'PI-024', 1015, N'nicolas.mairey@poclain.com', N'magesh.k@poclain.com ', N'Jun 12 2020 11:28AM', N'k', N'change rating if u want', N'Accepted', N'0', N'A', N'change rating if u want', N'', N'A', N'COST SAVING - 1,00,000 & ABOVE', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (18, 18, 7, N'PI-248', N'PI-275', 1016, N'venkateswaran.kandas@poclain.com', N'francisco.exposito@poclain.com ', N'Jun 13 2020  6:03PM', N'check rating', N'change', N'Accepted', N'0', N'A', N'change', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (19, 19, 7, N'PI-248', N'PI-150', 1018, N'venkateswaran.kandas@poclain.com', N'vijayganesh.k@poclain.com ', N'Jun 17 2020  1:32PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (20, 20, 10, N'PI-274', N'PI-309', 1002, N'nicolas.mairey@poclain.com', N'roopa.nagaraju@poclain.com ', N'Jun 18 2020  7:29PM', N'check rating', N'rating', N'Accepted', N'0', N'A', N'rating', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (21, 21, 27, N'PI-274', N'PI-277', 221, N'raja.g@binary2quantumsolutions.com', N'raja.g@binary2quantumsolutions.com ', N'Jun 26 2020  3:11PM', N'send beneficiary', N'execeute', N'Accepted', N'0', N'A', N'execeute', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (22, 22, 10, N'PI-274', N'PI-277', 1017, N'nicolas.mairey@poclain.com', N'marian.denitiu@poclain.com ', N'Jun 30 2020 10:15AM', N'k', N'checking', N'Accepted', N'0', N'A', N'checking', N'', N'A', N'QUALITY - <200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (23, 23, 7, N'PI-248', N'PI-274', 208, N'venkateswaran.kandas@poclain.com', N'nicolas.mairey@poclain.com ', N'Jul  8 2020  4:44PM', N'send beneficiary', N'cdsa', N'Accepted', N'0', N'A', N'cdsa', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (24, 24, 10, N'PI-274', N'PI-242', 218, N'nicolas.mairey@poclain.com', N'raja.g@binary2quantumsolutions.com ', N'Aug  4 2020  1:07PM', N'check', N'check', N'Accepted', N'27', N'A', N'check', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (25, 25, 27, N'PI-274', N'PI-242', 220, N'raja.g@binary2quantumsolutions.com', N'vengadessane.nadradjane@poclain.com ', N'Aug  4 2020  6:48PM', N'check', N'checkprocess', N'Accepted', N'0', N'A', N'checkprocess', N'', N'B', N'QUALITY - 500-200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (26, 26, 10, N'PI-274', N'PI-242', 224, N'nicolas.mairey@poclain.com', N'vengadessane.nadradjane@poclain.com ', N'Aug  5 2020 11:37AM', N'check full path', N'check', N'Accepted', N'0', N'A', N'check', N'', N'A', N'QUALITY - <200 PPM', N'U')
INSERT [dbo].[BeneficiaryEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Days], [Rating], [Comment], [Remark2], [Grade], [BenefitsMatrix], [Remark5]) VALUES (27, 27, 10, N'PI-274', N'PI-242', 225, N'nicolas.mairey@poclain.com', N'vengadessane.nadradjane@poclain.com ', N'Aug  5 2020  7:05PM', N'checkexcel', N'checkexcel', N'Accepted', N'0', N'A', N'checkexcel', N'', N'A', N'QUALITY - <200 PPM', N'U')
SET IDENTITY_INSERT [dbo].[BeneficiaryEInbox] OFF
/****** Object:  Table [dbo].[DataBankManagerSend]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DataBankManagerSend](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[SendId] [int] NOT NULL,
	[SenderID] [varchar](50) NULL,
	[IdeaId] [int] NOT NULL,
	[Date] [date] NULL,
	[IEmpId] [varchar](max) NOT NULL,
	[EmailId] [varchar](max) NOT NULL,
	[Subject] [varchar](max) NULL,
	[EmailContent] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL,
 CONSTRAINT [PK_DataBankManagerSend] PRIMARY KEY CLUSTERED 
(
	[SendId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DataBankManagerSend] ON
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (1, 1, N'pi-266', 1004, CAST(0x24410B00 AS Date), N' PI-266', N' manikandan.ramsaro@gmail.com', N'RE : testing', N'proced', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (2, 2, N'pi-266', 1004, CAST(0x24410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N'please do it', N'please do it', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (3, 3, N'pi-266', 1003, CAST(0x28410B00 AS Date), N' PI-091, PI-273', N' kural.v@binary2quantum.com, raja.g@binary2quantum.com', N'ck', N'chk', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (4, 4, N'pi-266', 1003, CAST(0x28410B00 AS Date), N'pi-191', N' kural.v@binary2quantum.com', N'idea execute', N'execute the idea in your team', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (5, 5, N'pi-266', 1003, CAST(0x28410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N'idea execute', N'impl the idea', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (6, 6, N'pi-266', 1005, CAST(0x2B410B00 AS Date), N' PI-273, PI-233', N' raja.g@binary2quantum.com, dhanasegary.r@binary2quantum.com', N'task evaluate', N'emp id-pi-111 post this suggestion pls refer to worthy or not', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (7, 7, N'pi-266', 1005, CAST(0x2B410B00 AS Date), N'pi-268', N' kolappan.ponniahpillai@poclain.com', N'idea execute', N'do it with your team', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (8, 8, N'pi-266', 1006, CAST(0x2C410B00 AS Date), N' PI-273, PI-233', N' raja.g@binary2quantum.com, dhanasegary.r@binary2quantum.com', N'ck', N'evaluate the task', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (9, 9, N'pi-266', 1006, CAST(0x2C410B00 AS Date), N'pi-268,pi-243', N' kolappan.ponniahpillai@poclain.com, balaji.gopal@poclain.com', N'idea execute', N'task will be execute with your team members', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (10, 10, N'pi-266', 1009, CAST(0x30410B00 AS Date), N' PI-273', N' raja.g@binary2quantum.com', N'ck', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (11, 11, N'pi-266', 1009, CAST(0x30410B00 AS Date), N'pi-289', N' balan.guruswamy@poclain.com', N'idea execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (12, 12, N'pi-266', 1011, CAST(0x30410B00 AS Date), N' PI-273, PI-233', N' raja.g@binary2quantum.com, dhanasegary.r@binary2quantum.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (13, 13, N'pi-266', 1011, CAST(0x30410B00 AS Date), N'pi-243', N' balaji.gopal@poclain.com', N'idea execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (14, 14, N'pi-266', 1012, CAST(0x31410B00 AS Date), N'PI-049,PI-273', N'jeevabalan.g@poclain.com,raja.g@binary2quantum.com', N'guyh', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (15, 15, N'pi-266', 1013, CAST(0x32410B00 AS Date), N'PI-273,PI-049', N'raja.g@binary2quantum.com,jeevabalan.g@poclain.com', N'ck', N'task evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (16, 16, N'pi-266', 1013, CAST(0x32410B00 AS Date), N'pi-289', N' balan.guruswamy@poclain.com', N'idea execute', N'balan today', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (17, 17, N'pi-266', 1014, CAST(0x32410B00 AS Date), N'PI-049,PI-273', N'jeevabalan.g@poclain.com,raja.g@binary2quantum.com', N'ck', N'executee', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (18, 18, N'pi-266', 1015, CAST(0x33410B00 AS Date), N'PI-091,PI-273', N'kural.v@binary2quantum.com,raja.g@binary2quantum.com', N'guyh', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (19, 19, N'pi-266', 1015, CAST(0x33410B00 AS Date), N'pi-243', N' balaji.gopal@poclain.com', N'task execute', N'execute this task', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (20, 20, N'pi-266', 1015, CAST(0x33410B00 AS Date), N'pi-243', N' balaji.gopal@poclain.com', N'task execute', N'execute this task', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (21, 21, N'pi-266', 1014, CAST(0x33410B00 AS Date), N'pi-289', N' balan.guruswamy@poclain.com', N'task execute', N'execute task', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (22, 22, N'pi-266', 1016, CAST(0x34410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'ck', N'dsf', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (23, 23, N'pi-266', 1016, CAST(0x34410B00 AS Date), N'pi-215', N' danasayan.veerappan@poclain.com', N'idea execute', N'can u', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (24, 24, N'pi-266', 1002, CAST(0x34410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'', N'', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (25, 25, N'pi-273', 1002, CAST(0x34410B00 AS Date), N'pi-268', N' kolappan.ponniahpillai@poclain.com', N'', N'', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (31, 26, N'pi-266', 1017, CAST(0x37410B00 AS Date), N'PI-074,PI-049', N'mani95ram@outlook.com,jeevabalan.g@poclain.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (32, 27, N'pi-266', 1017, CAST(0x37410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N'idea execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (33, 28, N'pi-266', 1018, CAST(0x38410B00 AS Date), N'PI-273,PI-049', N'raja.g@binary2quantum.com,jeevabalan.g@poclain.com', N'ck', N'evaluyatr', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (34, 29, N'pi-266', 1018, CAST(0x38410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N'idea execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (35, 30, N'pi-266', 1019, CAST(0x38410B00 AS Date), N'PI-233,PI-091', N'dhanasegary.r@binary2quantum.com,kural.v@binary2quantum.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (36, 31, N'pi-266', 1020, CAST(0x3A410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'ck', N'cv', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (37, 32, N'pi-266', 1012, CAST(0x3A410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N's', N'alreadyimpl', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (38, 33, N'pi-266', 1020, CAST(0x3A410B00 AS Date), N'pi-286', N' manikandan.ramsaro@gmail.com', N's', N'notfeasible', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (39, 34, N'pi-266', 205, CAST(0x3D410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'ck', N'execute', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (40, 35, N'pi-266', 206, CAST(0x3D410B00 AS Date), N'PI-273,PI-233', N'raja.g@binary2quantum.com,dhanasegary.r@binary2quantum.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (41, 36, N'pi-266', 207, CAST(0x3D410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'', N'', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (42, 37, N'pi-266', 207, CAST(0x3D410B00 AS Date), N'pi-268', N' kolappan.ponniahpillai@poclain.com', N'idea execute', N'h', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (43, 38, N'pi-266', 208, CAST(0x3E410B00 AS Date), N'PI-273', N'raja.g@binary2quantum.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (44, 39, N'pi-266', 233, CAST(0x3E410B00 AS Date), N'PI-273,PI-074', N'raja.g@binary2quantum.com,mani95ram@outlook.com', N'ck', N'evaluate', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (45, 40, N'pi-266', 218, CAST(0x41410B00 AS Date), N'PI-273,PI-091', N'raja.g@binary2quantumsolutions.com,sarath.s@binary2quantumsolutions.com', N'guyh', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (46, 41, N'pi-266', 208, CAST(0x41410B00 AS Date), N'pi-191', N'manikandan.r@binary2quantum.com', N'test web  mail', N'test web  mail', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (47, 42, N'pi-266', 208, CAST(0x41410B00 AS Date), N'pi-191', N'manikandan.r@binary2quantum.com', N'test web  mail', N'test web  mail', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (48, 43, N'pi-266', 221, CAST(0x41410B00 AS Date), N'PI-273,PI-091', N'raja.g@binary2quantumsolutions.com,sarath.s@binary2quantumsolutions.com', N'check mail', N'mail', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (49, 44, N'pi-266', 221, CAST(0x41410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'task execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (50, 45, N'pi-266', 218, CAST(0x4D410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'task execute', N'task', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (51, 46, N'pi-266', 220, CAST(0x4F410B00 AS Date), N'PI-273', N'raja.g@binary2quantumsolutions.com', N'guyh', N'ss', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (52, 47, N'pi-266', 220, CAST(0x54410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'task execute', N'execute', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (53, 48, N'pi-266', 222, CAST(0x54410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'guyh', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (54, 49, N'pi-266', 222, CAST(0x54410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'task execute', N'sww', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (55, 50, N'pi-266', 223, CAST(0x54410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'guyh', N'cfde', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (56, 51, N'pi-266', 223, CAST(0x54410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'task execute', N'color change', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (57, 52, N'pi-266', 219, CAST(0x5C410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'guyh', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (58, 53, N'pi-266', 224, CAST(0x69410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'check fll path', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (59, 54, N'pi-266', 224, CAST(0x69410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'check full path', N'check', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (60, 55, N'pi-266', 225, CAST(0x69410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'check', N'check', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (61, 56, N'pi-266', 225, CAST(0x69410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'check', N'checkwhat', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (62, 57, N'pi-266', 226, CAST(0x86410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'cheeck', N'cheeck', N'i', N'Committee', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (63, 58, N'pi-266', 226, CAST(0x86410B00 AS Date), N'pi-286', N'sarath.s@binary2quantumsolutions.com', N'check', N'test check', N'i', N'Manager', NULL, NULL, NULL, NULL)
INSERT [dbo].[DataBankManagerSend] ([SL_No], [SendId], [SenderID], [IdeaId], [Date], [IEmpId], [EmailId], [Subject], [EmailContent], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6]) VALUES (64, 59, N'pi-266', 185, CAST(0x9A410B00 AS Date), N'PI-266', N'manikandan.ramsaro@gmail.com', N'check', N'get maindashboard bar value', N'i', N'Committee', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DataBankManagerSend] OFF
/****** Object:  Table [dbo].[DataBankManager]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DataBankManager](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[SendId] [int] NOT NULL,
	[Date] [date] NULL,
	[IDepId] [int] NOT NULL,
	[IDesId] [int] NOT NULL,
	[IEmpId] [varchar](30) NOT NULL,
	[MTo] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Benefits] [varchar](max) NULL,
	[Category] [varchar](max) NULL,
	[Before] [varchar](max) NULL,
	[After] [varchar](max) NULL,
	[FileUpload1] [varchar](max) NULL,
	[FileUpload2] [varchar](max) NULL,
	[FileUpload3] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Approved] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL,
	[SuggestionDep] [varchar](50) NULL,
 CONSTRAINT [PK_DataBankManager_1] PRIMARY KEY CLUSTERED 
(
	[SendId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[credentials_Tables]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[credentials_Tables](
	[Id] [varchar](50) NULL,
	[Module] [varchar](max) NULL,
	[Link] [varchar](max) NULL,
	[Status] [varchar](20) NULL,
	[HOSID] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-073', N'HOD', N'ManagerMail.aspx', N'H', N'PI-248', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-075', N'HOD', N'ManagerMail.aspx', N'H', N'PI-248', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-191', N'HOD', N'ManagerMail.aspx', N'H', N'PI-248', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-215', N'HOD', N'ManagerMail.aspx', N'H', N'PI-248', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-227', N'HOD', N'ManagerMail.aspx', N'H', N'PI-274', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-243', N'HOD', N'ManagerMail.aspx', N'H', N'PI-274', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-268', N'HOD', N'ManagerMail.aspx', N'H', N'PI-268', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-286', N'HOD', N'ManagerMail.aspx', N'H', N'PI-274', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-289', N'HOD', N'ManagerMail.aspx', N'H', N'PI-248', NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-150', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-024', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-067', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-220', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-242', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-247', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-248', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-259', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-268', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-274', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-275', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-277', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-309', N'HOS', N'HOSDashboard.aspx', N'S', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-074', N'COMMITEE', N'CommitteeEvalDashboard.aspx', N'C', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-190', N'COMMITEE', N'CommitteeEvalDashboard.aspx', N'C', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-233', N'COMMITEE', N'CommitteeEvalDashboard.aspx', N'C', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-273', N'COMMITEE', N'CommitteeEvalDashboard.aspx', N'C', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-266', N'DATA BANK MANAGER', N'AdminDashboard.aspx', N'D', NULL, NULL, NULL)
INSERT [dbo].[credentials_Tables] ([Id], [Module], [Link], [Status], [HOSID], [Remark2], [Remark3]) VALUES (N'PI-235', N'FINANCE', N'FinanceDashboard.aspx', N'F', NULL, NULL, NULL)
/****** Object:  StoredProcedure [dbo].[sp_ComitteeEvalSend_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ComitteeEvalSend_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(SEmail_ID),0)+1 from CommitteeEvalESend




end
GO
/****** Object:  Table [dbo].[CommitteeEvalEInbox]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CommitteeEvalEInbox](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[CmEmailID] [int] NOT NULL,
	[SenderMailID] [int] NULL,
	[SenderID] [varchar](50) NULL,
	[ReceiverID] [varchar](50) NULL,
	[IDeaID] [int] NULL,
	[EFrom] [varchar](max) NULL,
	[ETo] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Dep] [varchar](max) NULL,
	[Des] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
 CONSTRAINT [PK_CommitteeEvalEInbox] PRIMARY KEY CLUSTERED 
(
	[CmEmailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CommitteeEvalEInbox] ON
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 1, 1, N'pi-266', N'PI-266', 1004, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-05-28', N'RE : testing', N'proced', N'Accepted', N'we did it da', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 2, 3, N'pi-266', N'PI-091', 1003, N'manikandan.ramsaro@gmail.com', N'kural.v@binary2quantum.com', N'2020-06-01', N'ck', N'chk', N'Accepted', N'i agree', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 3, 3, N'pi-266', N'PI-273', 1003, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-01', N'ck', N'chk', N'Accepted', N'i agree', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (4, 4, 6, N'pi-266', N'PI-273', 1005, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-04', N'task evaluate', N'emp id-pi-111 post this suggestion pls refer to worthy or not', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 5, 6, N'pi-266', N'PI-233', 1005, N'manikandan.ramsaro@gmail.com', N'dhanasegary.r@binary2quantum.com', N'2020-06-04', N'task evaluate', N'emp id-pi-111 post this suggestion pls refer to worthy or not', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (6, 6, 8, N'pi-266', N'PI-273', 1006, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-05', N'ck', N'evaluate the task', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (7, 7, 8, N'pi-266', N'PI-233', 1006, N'manikandan.ramsaro@gmail.com', N'dhanasegary.r@binary2quantum.com', N'2020-06-05', N'ck', N'evaluate the task', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 8, 10, N'pi-266', N'PI-273', 1009, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-09', N'ck', N'check', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (9, 9, 12, N'pi-266', N'PI-273', 1011, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-09', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 10, 12, N'pi-266', N'PI-233', 1011, N'manikandan.ramsaro@gmail.com', N'dhanasegary.r@binary2quantum.com', N'2020-06-09', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (11, 11, 14, N'pi-266', N'PI-049', 1012, N'manikandan.ramsaro@gmail.com', N'jeevabalan.g@poclain.com', N'2020-06-10', N'guyh', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (12, 12, 14, N'pi-266', N'PI-273', 1012, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-10', N'guyh', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (13, 13, 15, N'pi-266', N'PI-273', 1013, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-11', N'ck', N'task evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (14, 14, 15, N'pi-266', N'PI-049', 1013, N'manikandan.ramsaro@gmail.com', N'jeevabalan.g@poclain.com', N'2020-06-11', N'ck', N'task evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (15, 15, 17, N'pi-266', N'PI-049', 1014, N'manikandan.ramsaro@gmail.com', N'jeevabalan.g@poclain.com', N'2020-06-11', N'ck', N'executee', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (16, 16, 17, N'pi-266', N'PI-273', 1014, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-11', N'ck', N'executee', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (17, 17, 18, N'pi-266', N'PI-091', 1015, N'manikandan.ramsaro@gmail.com', N'kural.v@binary2quantum.com', N'2020-06-12', N'guyh', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (18, 18, 18, N'pi-266', N'PI-273', 1015, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-12', N'guyh', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (19, 19, 22, N'pi-266', N'PI-273', 1016, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-13', N'ck', N'dsf', N'Accepted', N'kk', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (20, 20, 24, N'pi-266', N'PI-273', 1002, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-13', N'', N'', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (27, 21, 26, N'pi-266', N'PI-074', 1017, N'manikandan.ramsaro@gmail.com', N'mani95ram@outlook.com', N'2020-06-16', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (28, 22, 26, N'pi-266', N'PI-049', 1017, N'manikandan.ramsaro@gmail.com', N'jeevabalan.g@poclain.com', N'2020-06-16', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (29, 23, 28, N'pi-266', N'PI-273', 1018, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-17', N'ck', N'evaluyatr', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (30, 24, 28, N'pi-266', N'PI-049', 1018, N'manikandan.ramsaro@gmail.com', N'jeevabalan.g@poclain.com', N'2020-06-17', N'ck', N'evaluyatr', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (31, 25, 30, N'pi-266', N'PI-233', 1019, N'manikandan.ramsaro@gmail.com', N'dhanasegary.r@binary2quantum.com', N'2020-06-17', N'ck', N'evaluate', N'Rejected', N'reject', N'not good', N'i', N'R', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (32, 26, 30, N'pi-266', N'PI-091', 1019, N'manikandan.ramsaro@gmail.com', N'kural.v@binary2quantum.com', N'2020-06-17', N'ck', N'evaluate', N'Accepted', N'k', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (33, 27, 31, N'pi-266', N'PI-273', 1020, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-19', N'ck', N'cv', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (34, 28, 34, N'pi-266', N'PI-273', 205, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-22', N'ck', N'execute', N'Rejected', N'', N'NULL', N'i', N'R', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (35, 29, 35, N'pi-266', N'PI-273', 206, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-22', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (36, 30, 35, N'pi-266', N'PI-233', 206, N'manikandan.ramsaro@gmail.com', N'dhanasegary.r@binary2quantum.com', N'2020-06-22', N'ck', N'evaluate', N'Rejected', N'', N'NULL', N'i', N'R', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (37, 31, 36, N'pi-266', N'PI-273', 207, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-22', N'', N'', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (38, 32, 38, N'pi-266', N'PI-273', 208, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-23', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (39, 33, 39, N'pi-266', N'PI-273', 233, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantum.com', N'2020-06-23', N'ck', N'evaluate', N'Rejected', N'', N'NULL', N'i', N'R', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (40, 34, 39, N'pi-266', N'PI-074', 233, N'manikandan.ramsaro@gmail.com', N'mani95ram@outlook.com', N'2020-06-23', N'ck', N'evaluate', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (41, 35, 40, N'pi-266', N'PI-273', 218, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantumsolutions.com', N'2020-06-26', N'guyh', N'check', N'Accepted', N'good', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (42, 36, 40, N'pi-266', N'PI-091', 218, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-06-26', N'guyh', N'check', N'Accepted', N'great', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (43, 37, 43, N'pi-266', N'PI-273', 221, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantumsolutions.com', N'2020-06-26', N'check mail', N'mail', N'Accepted', N'great', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (44, 38, 43, N'pi-266', N'PI-091', 221, N'manikandan.ramsaro@gmail.com', N'sarath.s@binary2quantumsolutions.com', N'2020-06-26', N'check mail', N'mail', N'Accepted', N'great', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (45, 39, 46, N'pi-266', N'PI-273', 220, N'manikandan.ramsaro@gmail.com', N'raja.g@binary2quantumsolutions.com', N'2020-07-10', N'guyh', N'ss', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (46, 40, 48, N'pi-266', N'PI-266', 222, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-07-15', N'guyh', N'check', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (47, 41, 50, N'pi-266', N'PI-266', 223, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-07-15', N'guyh', N'cfde', N'Accepted', N'', N'NULL', N'i', N'A', NULL, NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (48, 42, 52, N'pi-266', N'PI-266', 219, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-07-23', N'guyh', N'check', N'Rejected', N'ASD', N'NULL', N'i', N'R', N'X', NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (49, 43, 53, N'pi-266', N'PI-266', 224, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-08-05', N'check fll path', N'check', N'Accepted', N'feasible', N'NULL', N'i', N'A', N'X', NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (50, 44, 55, N'pi-266', N'PI-266', 225, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-08-05', N'check', N'check', N'Accepted', N'good', N'NULL', N'i', N'A', N'X', NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (51, 45, 57, N'pi-266', N'PI-266', 226, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-09-03', N'cheeck', N'cheeck', N'Accepted', N'test check', N'NULL', N'i', N'A', N'X', NULL, NULL)
INSERT [dbo].[CommitteeEvalEInbox] ([SL_No], [CmEmailID], [SenderMailID], [SenderID], [ReceiverID], [IDeaID], [EFrom], [ETo], [Date], [Subject], [Description], [Type], [Dep], [Des], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (52, 46, 59, N'pi-266', N'PI-266', 185, N'manikandan.ramsaro@gmail.com', N'manikandan.ramsaro@gmail.com', N'2020-09-23', N'check', N'get maindashboard bar value', N'Accepted', N'accept', N'NULL', N'i', N'A', N'X', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CommitteeEvalEInbox] OFF
/****** Object:  Table [dbo].[CommitteeDetail]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CommitteeDetail](
	[SL_NO] [int] IDENTITY(1,1) NOT NULL,
	[ComitteeID] [int] NULL,
	[EmpId] [varchar](max) NULL,
	[Members] [varchar](max) NULL,
	[Department] [varchar](50) NULL,
	[ODepartment] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CommitteeDetail] ON
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (1, 1, N'pi-074', N'Premnath', N'LOGISTIC', N'HSE', N'I', N'0', NULL, NULL, NULL)
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (2, 2, N'pi-266', N'Jeyapandi', N'HR', N'HR', N'I', N'0', NULL, NULL, NULL)
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (3, 3, N'pi-273', N'Sivabalan', N'PRODUCTION', N'Lean', N'I', N'0', NULL, NULL, NULL)
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (10, 7, N'pi-049', N'Jeevabalan', N'PRODUCTION', N'Production MBU', N'I', N'0', NULL, NULL, NULL)
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (5, 5, N'pi-233', N'Jayachandran', N'Maintenance', N'Maintenance', N'I', N'0', NULL, NULL, NULL)
INSERT [dbo].[CommitteeDetail] ([SL_NO], [ComitteeID], [EmpId], [Members], [Department], [ODepartment], [Remark1], [Remark2], [Remark3], [Remark4], [Remark5]) VALUES (8, 6, N'pi-091', N'Sezhiyan', N'PRODUCTION', N'Production ABU', N'I', N'0', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CommitteeDetail] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Department](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[DepId] [int] NOT NULL,
	[DepName] [varchar](max) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (14, 1, N'ADMINISTRATION', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (15, 2, N'AFTERMARKET', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (16, 3, N'APPLICATION ENGINEERING', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (17, 4, N'FINANCE', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (18, 5, N'HR', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (19, 6, N'INNOVATION', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (20, 7, N'IT', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (21, 8, N'LOGISTIC', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (22, 9, N'MAINTENANCE', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (23, 10, N'MANUFACTURING ENGINEERING', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (24, 11, N'PLANT MANAGEMENT', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (25, 12, N'PRODUCTION', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (26, 12, N'PRODUCTION ABU', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (27, 12, N'PRODUCTION MBU', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (28, 12, N'PRODUCTION POWERTRAIN', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (29, 13, N'QUALITY', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (30, 14, N'SALES & SALES SUPPORT', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (31, 15, N'SOURCING', NULL, NULL)
INSERT [dbo].[Department] ([SL_No], [DepId], [DepName], [Remark1], [Remark2]) VALUES (32, 16, N'GENERAL MANAGEMENT', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[DesignationDetail]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DesignationDetail](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[DesId] [int] NOT NULL,
	[DesName] [varchar](max) NULL,
	[DepId] [int] NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
 CONSTRAINT [PK_DesignationDetail] PRIMARY KEY CLUSTERED 
(
	[DesId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DesignationDetail] ON
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (8, 1, N'Aftermarket Manager', 2, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (9, 2, N'Aftermarket Supervisor', 2, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (10, 3, N'Application Engineer', 3, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (11, 4, N'Assembly Manufacturing Engineer', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (12, 5, N'Assembly Operator', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (13, 6, N'Assistant', 1, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (14, 7, N'Assistant', 14, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (15, 8, N'BU Quality Support Leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (16, 9, N'Buyer', 15, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (17, 10, N'Customer Logistic Agent', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (18, 11, N'Customer Quality Leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (19, 12, N'Design Engineer', 6, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (20, 13, N'Design engineer Radial Series Design Office', 6, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (21, 14, N'Design Manager', 6, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (22, 15, N'Executive Assistant', 11, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (23, 16, N'Finance Leader', 4, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (24, 17, N'Finance Manager', 4, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (25, 18, N'Finance Technician', 4, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (26, 19, N'Human Resources Manager', 5, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (27, 20, N'Human Resources Specialist', 5, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (28, 21, N'Information System Leader', 7, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (29, 22, N'Information System Technician', 7, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (30, 23, N'Information Systems Manager', 7, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (31, 24, N'Inventory clerk', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (32, 25, N'Lean Management Leader', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (33, 26, N'Machining Manufacturing Engineer', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (34, 27, N'Machining Operator', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (35, 28, N'Maintenance Engineer', 9, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (36, 29, N'Maintenance Manager', 9, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (37, 30, N'Maintenance Technician', 9, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (38, 31, N'Manufacturing Engineering Manager', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (39, 32, N'Master planner', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (40, 33, N'Metrology & Laboratory Leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (41, 34, N'Plant Controller', 4, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (42, 35, N'Plant Manager', 11, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (43, 36, N'Plant Quality Manager', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (44, 37, N'Procurement Agent', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (45, 38, N'Production Manager', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (46, 39, N'Project Buyer', 15, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (47, 40, N'Project Manager', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (48, 41, N'Project Quality Leader', 15, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (49, 42, N'Purchasing Assistant', 15, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (50, 43, N'Purchasing Manager', 15, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (51, 44, N'Quality Continuous Improvement Leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (52, 45, N'Quality Controller', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (53, 46, N'Sales Engineer', 14, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (54, 47, N'Senior Operator', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (55, 48, N'Senior Operator', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (56, 49, N'Shipping agent', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (57, 50, N'Shipping leader', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (58, 51, N'Shopfloor Scheduler', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (59, 52, N'Special Processes Manufacturing Engineer', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (60, 53, N'Subsidiary Manager', 14, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (61, 54, N'Supplier quality development leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (62, 55, N'Supplier quality serial life leader', 13, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (63, 56, N'Supply Chain Leader', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (64, 57, N'Supply Chain Manager', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (65, 58, N'Technical Data Coordinator', 10, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (66, 59, N'Technical Support Technician', 2, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (67, 60, N'Tool Setter/Resharpener', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (68, 61, N'Tooling Engineer', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (69, 62, N'Warehouse leader', 8, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (70, 63, N'Workshop Supervisor', 12, NULL, NULL)
INSERT [dbo].[DesignationDetail] ([SL_No], [DesId], [DesName], [DepId], [Remark1], [Remark2]) VALUES (71, 64, N'GENERAL MANAGEMENT MANAGER', 16, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DesignationDetail] OFF
/****** Object:  Table [dbo].[EmployeeSuggestion]    Script Date: 10/03/2020 11:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EmployeeSuggestion](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[IdeaId] [int] NOT NULL,
	[Date] [date] NULL,
	[IDepId] [int] NOT NULL,
	[IDesId] [int] NOT NULL,
	[IEmpId] [varchar](30) NOT NULL,
	[Subject] [varchar](max) NULL,
	[Benefits] [varchar](max) NULL,
	[Category] [varchar](max) NULL,
	[Before] [varchar](max) NULL,
	[After] [varchar](max) NULL,
	[FileUpload1] [varchar](max) NULL,
	[FileUpload2] [varchar](max) NULL,
	[FileUpload3] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Approved] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL,
	[SuggestionDep] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeSuggestion] PRIMARY KEY CLUSTERED 
(
	[IdeaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeSuggestion] ON
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (7, 114, CAST(0x29410B00 AS Date), 8, 24, N'pi-161', N'AVOID ''O'' RING MIXUP WE NEED VARIANCE COLOUR.
EX:  422B-2.62-82.22-YELLOW
        423C-2.62-75.87-BLACK
        424D-2.62-69.52-GREEN', N'* EASY PICKING
* AVOID ''O'' RING MIXUP
* VISUAL IDENTIFICATION', N'Productivity, Quality, 6S,', N'S.NO      PART.NO              DESC
1              001830496U      OR-2.62-107.62-NBR70
2              001830495T      OR-2.62-101.27-NBR70
3              001830494S      OR-2.62-88.57-NBR70', N'S.NO      PART.NO              DESC
1              002130422B      OR-2.62-82.22-NBR70
2              002130423C      OR-2.62-75.87-NBR70
3              002130424D      OR-2.62-69.52-NBR70', N'Mar-114.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (8, 115, CAST(0x29410B00 AS Date), 12, 48, N'pi-250', N'we can avoid hitting the leg', N'to avoid the injuries', N'Health & Safety,', N'during scissor lift on floor, leg was injury is likely to be occur(manual press).', N'therefore , scissor lift front side safety guard should be provided', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (9, 116, CAST(0x29410B00 AS Date), 12, 48, N'pi-123', N'washing m/c--1 chemical both spittage, tray height to be crease to avoid spittage in floor', N'to improve 6s in  workstation and avoid chemical spittage and wastage', N'Health & Safety, Cost, 6S, Energy,', N'', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (10, 117, CAST(0x29410B00 AS Date), 12, 48, N'pi-123', N'''S'' HOOKS WITH LATCH PROVIDING IN DYNAMIC PRESS HOIST', N'TO IMPROVE SAFETY AND AVOID ACCIDENT', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality,', N'NORMAL ''S'' HOOKS AVAILABLE IN DYNAMIC PRESS HOIST IT LEAD TO SUPPORT SLIPPAGE FORM HOIST', N'''S'' HOOKS WITH LATCH SHOULD BE PROVIDE TO AVOID SLIPPAGE AND FELL DOWN AND SUPPORT FROM HOIST', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (11, 118, CAST(0x29410B00 AS Date), 12, 48, N'PI-250', N'', N'* TO MAINTAIN 5S
* TO AVOID PART MISSING', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost,', N'MANUAL PRESS, STANDING TABLE BOTTOM SIDES ALL MATERIALS ARE FALLEN, THEREFORE THIS MATERIALS CAN''T TAKEN EASILY.', N'STANDING TABLE BOTTOM ALL SIDE ARE TO BE CLOSED IN PLATE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (12, 119, CAST(0x29410B00 AS Date), 12, 48, N'PI-123', N'TO AVOID STUD GAP CLAIM IN 244T MOTOR BRAKE CAP ASSY STATION , BOTTOM RAM BASE PLATE DIAMETER TO BE REDUCED.', N'TO AVOID CUSTOMER CLAIM ABOUT STUD GAP AND DAMAGE & LOOSEN, TO IMPROVE QUALITY', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality,', N'STUD HITTING WITH BOTTOM RAM BASE PLATE . WHILE THIS CONDITION PRESSING STUD WILL REMOVE FROM SHAFT', N'BASE PLATE DIAMETER TO BE REDUCED TO AVOID CONTACT BETWEEN STUD & BASE PLATE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (13, 120, CAST(0x29410B00 AS Date), 9, 30, N'PI-061', N'CKD, PAINT SHOP & ASS LINE AXA HOIST', N'ITS ALERT THE MOVEMENT OF HOIST', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety,', N'HOIST MOVEMENT NOT INDICATES ALERT', N'MOVEMENT FORWARD & REVERSE OF HOIST HOOTER (OR) BUZZER NOISE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (14, 121, CAST(0x29410B00 AS Date), 12, 48, N'PI-173', N'IMPLEMENTATION OF MAGNET(WITH NUMBER) FOR CLIP POSITIONS', N'* LIFE TIME CAN BE INCREASED', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality,', N'FOR ASSEMBLING CLIPS, TO IDENTIFY THE GAPS THERE WAS A STICKER WITH NUMBER FOR 8 CLIPS POSITION.', N'IF WE CHANGE THE MAGNETIC NUMBER(STRIP) INSTEAD OF STICKER, THERE WAS NO CHANCE TO REMOVAL.', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (15, 122, CAST(0x29410B00 AS Date), 8, 49, N'PI-127', N'SCRAP AREA LAYOUT CHANGES', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S,', N'* WATER STAGNANT AT SCRAP AREA FLOOR IN RAINY SEASON
* LEAKAGE OF COOLANT/OTHER OIL ALSO DIRECTLY ABSORBED BY LAND (NO PROPER FLOOR IN BETWEEN)
* UNABLE TO MAINTAIN 5S ALL TIME
* IN BURR STORAGE AREA-COOLANT OIL DRAINING  OVERFLOW AT FLOOR(UNSAFE CONDITION)', N'* FLOOR TO BE BUILD PERMANENTLY WITHOUT STAGNANT OF WATER.
* 5S CAN ABLE TO MAINTAIN GOOD LOOKING.
* PREVENT LAND POLLUTION.
* AFTER COMPILATION OF REWORK AT BURR STORAGE AREA CAN ABLE TO AVOID SLIPPERY AND GOOD LOOKING', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (16, 123, CAST(0x29410B00 AS Date), 12, 48, N'PI-173', N'IMPLEMENTATION OF METAL CLIP TOOL INSTEAD OF NYLON CLIPBOARD', N'REDUCE WEARING OF TOOL & INCREASE THE LIFE', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality,', N'DURING CLIP ASSEMBLY, WE ARE USING NYLON CLIP TOOL, AT THAT TIME THERE WAS A CHANCE TO WEAR', N'IF WE CHANGE THE CLIP TOOL IN METAL, WE CAN REDUCE WEARING  OF TOOL AND INCREASE THE LIFE OF THE TOOL', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (17, 124, CAST(0x29410B00 AS Date), 8, 24, N'PI-161', N'SMALL MAIN AREA LAYOUT CHANGES', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others,', N'* UNABLE TO FOLLOW IN & OUT MATERIAL FEEDING FROM RACKS SMALL MAIN
* SPILLAGE OF C - CLASS ITEM INCREASING.
* PICKING TIME TAKING FOR MORE AND MORE FOR FEEDING.
* REFILLING OF ITEMS INTO RACKS & TRACEABILITY OF MATERIALS - COMPLICATED', N'* BY OPTIMIZING THE RACKS LIKE EXACT SUPER MARKET.
* THE IN OUT FLOW WILL BE OFFLINE CLEARLY.
* CAN AVOID MORE SPILLAGE.
* PICKING TIME WILL BE REDUCE(SAVE).
* TRACEABILITY BECOMES EASY', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (18, 125, CAST(0x29410B00 AS Date), 12, 63, N'PI-296', N'TO IMPROVE 6S & SAFETY [MBU-CELL]', N'TO MAINTAIN CLEANNESS AND SAFETY', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S,', N'AFTER MACHINING BURR SPILLAGE COLLECTED BY OPERATOR USING CLOTH ETC..', N'AFTER MACHINING BURR SPILLAGE BY USING MAGNETIC COLLECTOR', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (19, 126, CAST(0x29410B00 AS Date), 12, 5, N'PI-162', N'IMPLEMENTATION OF NEW CYLINDER IN PISTON ASSY M/C  AS LIKE IN FINE -I(BLOCK ASSEMBLY)', N'* PISTON RING CUT CAN BE AVOIDED.
* CUSTOMER CLAIM CAN BE REDUCED', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality,', N'FINE-II
  NOW IN PISTON ASSEMBLY M/C, WHILE ASSEMBLING PISTON INSIDE THE CYLINDER BEFORE INSERT INTO THE  BLOCK, THE PISTON RING WAS NOT HIDE INSIDE THE CYLINDER, BUT IN FINE-I BLOCK M/C, PISTON RING WAS HIDE INTO THE CYLINDER', N'IF WE CHANGE THE CYLINDER AS LIKE IN LINE -I , PISTON RING CUT CAN BE AVOIDED WHILE WE INSERT PISTON INTO THE BLOCK.
FINE-II
      PISTON RING-OUTSIDE THE CYLINDER-AWAY FROM CYLINDER MOUTH
FINE-I
       PISTON RING-INSIDE THE CYLINDER-PISTON RING CLOSED TO CYLINDER MOUTH', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (20, 127, CAST(0x29410B00 AS Date), 9, 28, N'PI-241', N'HEALTH OF ALL', N'SAFETY FROM WRONG AS WELL AS ALL INFECTIONAL DISEASE', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety,', N'NO NOSE MASK(SAFETY FOR ALL) TILL THE CORONA END', N'DUE TO CORONA VIRUS FOR ALL, GIVE THE NOSE MASK(DETECT AMOUNT FROM SALARY)
WITHOUT NOSE MASK, ONE IN THE MACHINE AREA OR COMPANY PREMISES TO PUT FINE AS WELL AS DETECT AMOUNT FROM SALARY', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (21, 128, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'NEED TO DISPLACE THE P/C MONITOR IN BUSH M/C', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S,', N'LINE -I BLOCK ASSY- BUSH M/C IN P/C MONITIOR TO TAKE THE BOTTOM OF THE RAW MATERIAL to hit the monitor', N'TO INCREASE THE HEIGHT OF P/C MONITOR OR DISPLACE THE LOCATION', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (22, 129, CAST(0x29410B00 AS Date), 12, 27, N'PI-302', N'', N'BEING PART QUALITY', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S,', N'IN THE WAY OF MBI CANT HAVE THE MATE SO, BURR & DUST COME INSIDE THROUGH THE OUTSIDERS, IN THIS BURR AND DUST HAVE IN CHANCES OF PART THROUGH THE AIR', N'ENTRANCE HAVE MATE TO AVOID BURR AND DUST HAVE INSIDE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (23, 130, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'NEED A RED BIN FOR BLOCK ASSEMBLY', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S,', N'NEED A RED BIN IN BLOCK ASSEMBLY', N'PUT ON OIL WASTE IN RED BIN ITS A LONG DISTANCE , SO IN SOMETIMES IT CANNOT DO THAT', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (24, 131, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'STANDARD FITMENT TABLE FOR PISTON BIN', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety,', N'OPERATOR MOTION TIME WILL BE EXCEED BECAUSE OF PISTON BIN HAVE IN FLOOR, SO BACK PAIN ISSUE FOR THE OPERATORS', N'AFTER IMPLEMENT THE FITMENT FIXED TABLE FOR PISTON BIN TO AVOID THE OPERATION 
  * MOTION LOSS &
  * BACK PAIN ISSUE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (25, 132, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'LINE-2 PLEASE MOVE THE BUSH PRESSING MACHINE', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others,', N'BUSH ASSEMBLY M/C CAN BE OUTSIDE THE LINE-1, SO IT HARD TO SEND PISTON BOX TO BLOCK OPERATORS,
LINE -1 CAN BE CHANGE LIKE THE LINE-2', N'ITS EASY TO SEND THE PISTON BOX TO BLOCK OPERATORS, AND ALSO SAVE THE TIME', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (26, 133, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'NEED TO WIRELESS SCANNER & PROPER SUITABLE FIXTURE', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S,', N'LINE-2 BUSH ASSY SCANNER CAN WITHOUT FIXTURE AND HAVE IN LENGTHY WIRE, SO ISSUE OCCUR IN 5S', N'TO FIX THE WIRELESS SCANNER & STANDARD FIXTURE TO AVOID THOSE PROBLEMS', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (27, 134, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'TO NEED STANDARD SOLID FIXMENT FOR FLOWER POT', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S,', N'THE WAY OF ENTRANCE HAVE IN FLOWER POT ,ITS A BOTTOM PLATE CAN CONTAIN RAIN WATER THAT''S WAY FORMATION OF THE MOSQUITOES SO, ITS AFFECT THE HEALTH ISSUE', N'REMOVE THE BOTTOM PLATE INSTEAD OF SET THE  SOLID SLOPE FIXTURE TO AVOID IN THIS CASE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (28, 135, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'NEED FOR KEYBOARD AND MOUSE FIXTURE', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S,', N'IN LINE-1 BUSH ASSY M/C''S P/C IN KEYBOARD AND MOUSE HAVE CANT FIXTURE RAISE THE ISSUE FOR 5S', N'IN THIS CASE A STANDARD FIXTURE CAN BE SET
WIRELESS KEYBOARD AND MOUSE GOOD FOR BEING IN.', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (29, 137, CAST(0x29410B00 AS Date), 12, 27, N'PI-302', N'SPECIFY AREA', N'REDUCE OPERATORS WORK LOAD', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety,', N'NOW BMI-GAS PLANT''S GAS BUNDLE AFTER THE UPWARDS, OPERATORS MOVE ON SPECIFIC LOCATION USING TROLY, BUNDLE HAS LARGE AMOUNT OF WEIGHT SO OPERATOR HAVE IN TROUBLE', N'GAS BUDDLE LOCATION''S FORK LIFT VEHICLE WILL MOVE UPWARDS IN THE PLACE OF FIX THE CORRECT POSITION FOR GAS BUDDLE ITS CONNECT THE SAME PLACE FOR THE REASON FOR NEEDED LENGTH IN  CONNECTING HOSE, SO THIS WAY TO REDUCE THE OPERATORS TROUBLE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (30, 138, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'CHANGE THE BUSH M/C TOOLS FIXTURE', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost,', N'BUSH PRESSING''S TOOLS FIXTURE CAN SMALL AMOUNT AND CANT PROPER SO THE BUSH DETACHING SENSOR WILL HAVE  DAMAGE , SO THAT''S WAY CHANGE THE SENSORS IT HAVE LARGE AMOUNT OF COST', N'IN FIXTURE CAN CHANGE TO AVOID THE CHANGE OF SENSORS ITS REDUCE THE AMOUNT OF COST', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (31, 139, CAST(0x29410B00 AS Date), 12, 63, N'PI-296', N'MBU-SHOP', N'TO MAINTAIN SHOP FLOOR CLEANING', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S,', N'MACHINING ALL TYPES OF OIL USING COMMON LOCATION ITS CREATE OIL SPILLAGE', N'OIL LOCATION TO PROVIDED TO SEPERATE OR INDIVIDUAL LOCATION', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (32, 140, CAST(0x29410B00 AS Date), 12, 63, N'PI-296', N'TO AVOID OPERATOR FATIQUE (MBU-VALUE CELL)', N'TO AVOID OPERATOR FATIQUE', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others,', N'DIFFICULT TO USE MOUSE DUE TO INSUFFICIENT SPACE', N'MOUSE STAND TO EXTEND', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (33, 141, CAST(0x29410B00 AS Date), 12, 63, N'PI-296', N'TOOTH CHAMBER- SHAFT CELL', N'6S AND SAFETY', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S,', N'DURING MACHINING TIME WOODEN TOP PLATE WE PLACED ON OPEN SHOP FLOOR', N'NOW SEPERATE LOCATION AND STAND PROVIDED', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (34, 142, CAST(0x29410B00 AS Date), 12, 63, N'PI-296', N'BLOCK CELL- HMC-4', N'6S AND SAFETY', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S, Health & Safety, 6S,', N'MACHINING BURR COLLECTED BY TROLLY
THE SPILLAGE BURRY TO AVOID BY USING PVC TRANSPARENT SHEET
ITS NOT EFFICIENCY', N'NOW PROVIDE METAL TYPE DOOR', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (35, 143, CAST(0x29410B00 AS Date), 8, 49, N'PI-127', N'NOISE POLLUTION(SOUNDS HARMFULL)', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S, Health & Safety, 6S, Health & Safety,', N'BLOWER SOUND OF BIN WASHING MACHINE AT SMALL MAIN AREA -SOUNDS ANNOYING & HARMFULL
                    ACTUAL BELOW 85DB
                    MEASURED 94DB', N'MAY CONVEY THE BLOWER SOUND TO OUTSIDE THROUGH DUET 
 MAY PROTECT THE SOUND', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (36, 146, CAST(0x29410B00 AS Date), 12, 5, N'PI-301', N'COMBINE THE FIXTURES OF MSO5, MS02, & MSO8', N'', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S, Health & Safety, 6S, Health & Safety, Productivity, 6S, Others,', N'PREVIOUSLY, CLIP CHECKING FIXTURES OF MS05,MS02 ARE USED SEPERATELY, THEN MS08 FIXTURE FOR CLIP CHECKING USED IN SEPERATE MANNER', N'BY COMBINE THE MS02, MS05 & MS08 IN AN SINGLE FIXTURE WILL REDUCED THE SPACE AND RESULTS IN EFFECTIVE CYCLE TIME', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (37, 147, CAST(0x29410B00 AS Date), 12, 48, N'PI-224', N'GRINDING MACHINE-I', N'ITS WORK FOR SAFETY
TO AVOID MAIN POWER ACCIDENT
TO AVOID SPREAD FOR CURRENT FLOOR', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S, Health & Safety, 6S, Health & Safety, Productivity, 6S, Others, Health & Safety,', N'GRINDING MACHINE ''S DOOR OPEN AND CLOSE TO OPERATE MANUAL
WITHOUT DOOR CLOSE TO START THE CYCLE IT WILL BE RUN', N'FULLY DOOR CLOSE TO RUN A START CYCLE 
IN ALARM ACTIVE IN WITHOUT DOOR CLOSE', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (38, 148, CAST(0x29410B00 AS Date), 12, 48, N'PI-224', N'CONVEYER BELT AND GI', N'BE A WORK FOR SAFETY
TO AVOID THE PEDAL REPAIR', N'Health & Safety, Cost, 6S, Energy, Health & Safety, Quality, Productivity, Health & Safety, Cost, Quality, Health & Safety, Quality, Health & Safety, 6S, Quality, Quality, 6S, Others, Health & Safety, 6S, Quality, Health & Safety, Productivity, Health & Safety, 6S, Quality, 6S, 6S, Productivity, Health & Safety, Productivity, Others, 6S, 6S, Health & Safety, Cost, Health & Safety, 6S, Others, Health & Safety, 6S, Health & Safety, 6S, Health & Safety, Productivity, 6S, Others, Health & Safety, Health & Safety,', N'INDUCTION HARDWARING CONVEYER BELT OUT SIDE AND GRINDING MACHINE''S FOOT PETAL TO PRESS PEDAL WILL BE MOVING STAGE
ITS SLIP THE OPERATOR WHILE THE PRESS FOOT PEDAL', N'TO AVOID THIS CASE WELDING THE FOOT PETAL OR NET AND SCREW WILL BE APPEAR', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (39, 149, CAST(0x2A410B00 AS Date), 12, 48, N'pi-224', N'grinding machine-II', N'TO INCREASE DRESSER TOOL LIFE
PARTY GTY INCREASE & WASTE DRESSING TIME REDUCED', N'Others,', N'PROGRAM NO 15 93U PART HAS RUN IN THIS PART JOB WAS HARDENING
DRESSING FREQUENCY 5 NOS RUN IN ONCE
545F SI SI H SOFT MATERIAL 93U PROGRAM IN RUN SO THIS JOB DRESSING HAS 5 NOS IN ONCE', N'PROGRAM NO 15: 545F SISI H HAS RUN AND ALSO RUN IN SAME PROGRAM, SO THIS PART HAS NO HARDENING SOFT MATERIAL
SO IN THIS WAY DRESSING FREQUENCY WILL DO RUN IN 7 TO 8 
NO LINE MAR, NO DIAMETER, VARIATION 100%OK', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (40, 154, CAST(0x2A410B00 AS Date), 13, 45, N'pi-122', N'cover assy(line1 & 2)', N'', N'Quality,', N'cover assy  bleed screw torque data(record) nil
without bleed screw next station moved(cutomer complaint potable)
motor wise tracking nil', N'line-2 brase housing bleed screw any software or wifi torque
customer complaint reduced
motor wise data present(all data)', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (41, 157, CAST(0x2A410B00 AS Date), 13, 33, N'pi-135', N'tea up stand to mbu location', N'', N'Health & Safety,', N'washing tea up place in the dust accumulated tea up stand. the dust inside the cleaning glass', N'refer attached  picture and explanation', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (42, 158, CAST(0x2A410B00 AS Date), 12, 63, N'pi-296', N'first aid kit', N'it will access easily emergency condition', N'Health & Safety, Health & Safety,', N'in our company many place first aid kit  available. but some kit location not visible to all', N'the kit location area one poster plate or sheet hanging above over head to be implemented
its easily visible to all', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (43, 163, CAST(0x2A410B00 AS Date), 12, 60, N'pi-180', N'angle machine coolant spillage', N'safety & 6s', N'Health & Safety, Health & Safety, Health & Safety, 6S,', N'coolant spillage on floor', N'safety guard provide', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (44, 168, CAST(0x2A410B00 AS Date), 12, 63, N'pi-296', N'ebs-pid quantity protect from exceed quantity', N'it will help to pid  closing', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others,', N'ebs- we released pid some quantities some time wrongly moved to another location extra quantity', N'need one protection or alert cant able to move extra quantities move another location', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (45, 173, CAST(0x2A410B00 AS Date), 12, 60, N'pi-180', N'facing machine coolant spillage', N'safety & 6s', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S,', N'coolant spillage on floor', N'safety guard provide', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (46, 174, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'ultrasonic washing machine', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost,', N'chambers-1 chemical tank while drain it will take more time, and don''t drain completely', N'in reason for chemical tank and drain pump tank are same length
chamber -1 tank will construct a height will increase, the chemical water tank has immediately and completely drained', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (47, 175, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'bmi-movement', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost, Health & Safety, Cost, Energy,', N'bmi will access up and down its control in here control switch panel board
so in this way while bell movement during themocouple and bell will cant see on touch', N'by implementing movement remote  remote switch control in bmi. we can easily see the position of the themo couple during bell movement 
so we can save time and avoid accident', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (49, 176, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'ultra sonic washing tray', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost, Health & Safety, Cost, Energy, Quality, Health & Safety, 6S,', N'ultrasonic washing tank''s  water top up during the water will overflow in the reason for careless and maintenance issue will occur in water overflow for spread of floor', N'to avoid the problem, to cover the ultrasonic with full tray', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (59, 178, CAST(0x2A410B00 AS Date), 12, 48, N'pi-175', N'm/c:hmc4
partno: mso2 family operation : 20 ball nose', N'to same tool cost and tool change over time', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy, Health & Safety, 6S, Productivity, Health & Safety, Quality, Health & Safety, Cost,', N'now insert life 100 nos / edge insert wear pattern very low', N'to be increased insert life 100 to 150 nos /edge to save tool cost , to save tool change over time', N'Mar-178.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (48, 179, CAST(0x2A410B00 AS Date), 12, 27, N'PI - 175', N'Tooling 
OP: Roamer Buffing', N'To avoid bore roughness issues and bore tapper issues', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost, Health & Safety, Cost, Energy, Quality,', N'buffing wheel rolled by roamer and handle by hands', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (51, 180, CAST(0x2A410B00 AS Date), 9, 30, N'PI - 097', N'Human health and safety', N'safety improvement', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost, Health & Safety, Cost, Energy, Quality, Health & Safety, 6S, Productivity, Quality, Health & Safety,', N'The activities that are used in our company are not followed', N'before we gave instruction about vegetables and fruits nutrients to other, we have to start that instruction', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (66, 181, CAST(0x30410B00 AS Date), 12, 27, N'pi-253', N'ultrasonic water heater', N'', N'Health & Safety, 6S,', N'ultrasonic''s water heater may have in heat for any time to used a exceed  electric power', N'to avoid the issue we have use in solar water heater.', N'Mar-181.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (67, 182, CAST(0x30410B00 AS Date), 12, 27, N'pi-253', N'corona virus', N'', N'Health & Safety, 6S, Health & Safety,', N'to use of bio metric finger punch, availability to affect the covid 19', N'by implementing faa punch and employee id tag punch, we can avoid it', N'Mar-182.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (68, 183, CAST(0x30410B00 AS Date), 12, 27, N'pi-253', N'new conveyor ovan', N'', N'Health & Safety, 6S, Health & Safety, Productivity, Quality, 6S,', N'new conveyor ovan''s only flange shaft will be tempering , sp line shaft could not be tempering because of it will rolled', N'sp line shaft set the location to send through conveyor, to load the ovan for sp line shaft''s', N'Mar-183.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (69, 184, CAST(0x30410B00 AS Date), 12, 27, N'pi-253', N'ultrasonic chamber-6', N'', N'Health & Safety, 6S, Health & Safety, Productivity, Quality, 6S, Health & Safety, 6S,', N'chamber-6, water location pump''s main switch have in inside, so switch on the pump will go inside (safety Issue)', N'In join the main switch and main panel board to avoid this problem.', N'Mar-184.pdf', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (70, 185, CAST(0x30410B00 AS Date), 13, 33, N'pi-135', N'MBU VALVE CELL', N'yes', N'Health & Safety, 6S, Health & Safety, Productivity, Quality, 6S, Health & Safety, 6S, Quality, Cost, 6S,', N'improper gauge storage location in mbc valve cell. it is created to damage all the gauges', N'Improved idea attached in sheet kindly refer', N'Mar-185.pdf', N'No File', N'No File', N'Forward to HOD', N'0', N'0', N'0', N'0', N'DB', N'D', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (58, 190, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'ultrasonic vaccum chamber health safety issue', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy, Health & Safety, 6S, Productivity, Health & Safety, Quality, Health & Safety,', N'ultrasonic vaccum chamber to spread the oil to affect the operator respiration', N'to avoid in this oil smoke , to take out the bmi position', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (57, 191, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'old tempering ovan', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy, Health & Safety, 6S, Productivity, Health & Safety, Quality,', N'in the door of ovan to operate open and close will be trouble', N'to introduce a prematic system control door', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (56, 192, CAST(0x2A410B00 AS Date), 12, 27, N'pi-253', N'drlling machine', N'', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy, Health & Safety, 6S,', N'drilling m/c ''s during block dile to generate blue to spread fully in floor', N'to avoid this problem to set the bottom tray will be fix,tray to collect the blue so easily to clean', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (55, 194, CAST(0x2A410B00 AS Date), 12, 48, N'pi-231', N'grinding m/c stand trolly stopper not available
so stopper is needed to trolly & floor (not wheel only)', N'no extra main power using working time
6s maintain perfectly', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy, Health & Safety, 6S,', N'no stopper so wheel loading and unloading time extra man power using stopping because of no stopper
6s not maintain , shift standing arrangement but automatically moving', N'no extra man power in working time
6s maintain perfectly', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (54, 195, CAST(0x2A410B00 AS Date), 12, 48, N'pi-231', N'grinding machine mist collector is location in door
relocation', N'm/c no oil condition
operator freely working & 6s maintain', N'Health & Safety, Health & Safety, Health & Safety, 6S, Energy,', N'grinding machine mist collector is near by door
so door open& close fully oil condition operator clearly 5 to 6 time per shift', N'm/c no oil condition 
operator work comfortable
6s maintain', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (53, 200, CAST(0x2A410B00 AS Date), 9, 30, N'pi-061', N'abu-01 men rest room door fully closed  so, in/out  => outer person door forced to open opposite person will struck', N'visible glass to be fix to the door , its easily in/out easily communicate', N'Health & Safety, Health & Safety,', N'', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (52, 201, CAST(0x2A410B00 AS Date), 9, 30, N'pi-061', N'battery stracker driver(operator) standing in the foot rest, if during the stracker driver is fall down happen', N'so, safety belt to be provided', N'Health & Safety,', N'', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (50, 202, CAST(0x2A410B00 AS Date), 9, 30, N'pi-061', N'paint shop driver are located in paint shop machine floor 
if driver any fault happen in between production , no communication', N'driver fault alert to be set in electrical panel (gooter) its easily find out', N'Health & Safety, Health & Safety, Health & Safety, 6S, Others, Health & Safety, 6S, Productivity, Cost, Health & Safety, Cost, Energy, Quality, Health & Safety, 6S, Productivity, Quality,', N'', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (87, 205, CAST(0x3B410B00 AS Date), 13, 45, N'pi-101', N'check', N'incremewnt', N'Quality,', N'xswd', N'cd', N'No File', N'No File', N'No File', N'Rejected In Committee Evaluation', N'0', N'0', N'0', N'0', N'EMP', N'C', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (88, 206, CAST(0x3D410B00 AS Date), 15, 41, N'pi-155', N'marine', N'check', N'Quality, Quality,', N'before', N'after', N'No File', N'No File', N'No File', N'Rejected In Committee Evaluation', N'0', N'0', N'0', N'0', N'EMP', N'C', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (89, 207, CAST(0x3D410B00 AS Date), 15, 41, N'pi-155', N'check', N'hod', N'Quality, Quality, Cost, Quality,', N'', N'', N'No File', N'No File', N'No File', N'Forward to HOS', N'0', N'0', N'0', N'0', N'EMP', N'F', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (90, 208, CAST(0x3E410B00 AS Date), 13, 45, N'pi-101', N'check', N'reject', N'Health & Safety,', N'before', N'after', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (4, 209, CAST(0x24410B00 AS Date), 10, 4, N'pi-102', N'test', N'test', N'Quality,', N'test', N'test', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (5, 210, CAST(0x24410B00 AS Date), 10, 4, N'pi-102', N'test e', N'test 2', N'Quality, Cost,', N'aser', N'asdfsadf', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'DB', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (3, 211, CAST(0x24410B00 AS Date), 8, 32, N'PI-103', N'testing to whether suggestion showing or not', N'testing to whether suggestion showing or not', N'Productivity,', N'testing to whether suggestion showing or not', N'testing to whether suggestion showing or not', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (61, 214, CAST(0x2C410B00 AS Date), 10, 52, N'pi-110', N'pantry area should be keep in some good environment', N'to avoid health issues', N'Health & Safety,', N'now we have pantry area in inside the each department also chemical department', N'atleast pantry area combine department in a single pantry area with good environment so avoid health issues', N'12.02.2020.PNG', N'18.02.2020.PNG', N'14.02.2020.PNG', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (62, 216, CAST(0x2D410B00 AS Date), 8, 24, N'pi-125', N'grtsdg', N'drgrd', N'Health & Safety,', N'erger', N'ergter', N'03.03.2020.PNG', N'04.03.2020.PNG', N'05.02.2020.PNG', N'Suggestion Received', N'0', N'0', N'0', N'0', N'EMP', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (63, 217, CAST(0x2D410B00 AS Date), 8, 24, N'pi-125', N'set air', N'air', N'Health & Safety, Health & Safety,', N'ar', N'air', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'EMP', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (93, 218, CAST(0x41410B00 AS Date), 8, 24, N'pi-125', N'check', N'mail', N'IT,', N'befiore', N'after', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (94, 219, CAST(0x41410B00 AS Date), 1, 6, N'pi-011', N'New suggestion post test regards web api testing purpose', N'to avoid php mail', N'IT,', N'using php mailer', N'using dot net mailer', N'No File', N'No File', N'No File', N'Rejected In Committee Evaluation', N'0', N'0', N'0', N'0', N'EMP', N'C', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (95, 220, CAST(0x41410B00 AS Date), 1, 6, N'pi-011', N'test web mail', N'test web mail', N'IT, IT,', N'test web mail', N'test web mail', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (96, 221, CAST(0x41410B00 AS Date), 8, 24, N'pi-125', N'ch', N'mail', N'IT,', N'ck', N'mm', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (97, 222, CAST(0x54410B00 AS Date), 13, 45, N'pi-101', N'test color', N'color change', N'Quality,', N'static', N'dynamic', N'No File', N'No File', N'No File', N'Forward to Other Department', N'0', N'0', N'0', N'0', N'EMP', N'E', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (98, 223, CAST(0x54410B00 AS Date), 10, 52, N'pi-110', N'colorchange check', N'dynamic color', N'Cost,', N'check color', N'check dynamic color', N'No File', N'No File', N'demo.JPG', N'Forward to HOD', N'0', N'0', N'0', N'0', N'EMP', N'F', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (99, 224, CAST(0x69410B00 AS Date), 13, 45, N'pi-101', N'fullpath', N'checkbugs issue', N'Quality,', N'check beforecheck after', N'check after', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (100, 225, CAST(0x69410B00 AS Date), 13, 45, N'pi-101', N'checkbefore', N'checkafter', N'Quality,', N'checkbefore', N'checkafter', N'No File', N'No File', N'No File', N'Forward to HOD', N'0', N'0', N'0', N'0', N'EMP', N'F', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (101, 226, CAST(0x86410B00 AS Date), 1, 6, N'pi-011', N'check', N'test check', N'IT,', N'test check', N'check', N'No File', N'No File', N'No File', N'Forward to Implementation Team', N'0', N'0', N'0', N'0', N'EMP', N'E', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (92, 233, CAST(0x3E410B00 AS Date), 13, 45, N'pi-101', N'check', N'233', N'Quality, Quality,', N'before', N'after', N'Mar-120.pdf', N'No File', N'No File', N'Rejected In Committee Evaluation', N'0', N'0', N'0', N'0', N'DB', N'C', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (65, 234, CAST(0x2D410B00 AS Date), 12, 27, N'pi-253', N'wefwe', N'sdcvsd', N'Cost, Health & Safety, Productivity, Productivity,', N'dsf', N'fdvdf', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (1, 1001, CAST(0x1D410B00 AS Date), 0, 0, N'', N'', N'', N'', N'', N'', N'No File', N'No File', N'No File', N'Suggestion Received', N'0', N'0', N'0', N'0', N'DB', N'N', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (64, 1002, CAST(0x2D410B00 AS Date), 8, 24, N'pi-125', N'heat', N'temp', N'Health & Safety, Health & Safety,', N'heat temp', N'heat temp reduce', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (6, 1004, CAST(0x24410B00 AS Date), 8, 32, N'PI-103', N'Improvement Idea Subject', N'Improvement Idea Subject', N'Quality,', N'Improvement Idea Subject', N'Improvement Idea Subject', N'No File', N'No File', N'No File', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (60, 1005, CAST(0x2B410B00 AS Date), 12, 63, N'pi-111', N'm/c safety', N'to avoid injuries', N'Health & Safety,', N'm/c operator operates the m/c cant safety', N'to avoid operator injuries during operates the m/c', N'04.03.2020.PNG', N'6.03.2020.PNG', N'07.02.2020.PNG', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (75, 1011, CAST(0x30410B00 AS Date), 13, 45, N'pi-101', N'air', N'filter', N'Health & Safety,', N'respiration', N'healthy', N'Mar-114.pdf', N'04.02.2020.PNG', N'No File', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (76, 1012, CAST(0x31410B00 AS Date), 13, 45, N'pi-101', N'accounts', N'tally new version', N'IT,', N'exceed time', N'save time', N'03.03.2020.PNG', N'No File', N'No File', N'Reject By HOD', N'0', N'0', N'0', N'0', N'EMP', N'C', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (78, 1013, CAST(0x32410B00 AS Date), 12, 38, N'pi-091', N'windows update', N'faster to access', N'IT,', N'win7 -to slow', N'windows update faster to access', N'03.03.2020.PNG', N'Mar-153.pdf', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (79, 1014, CAST(0x32410B00 AS Date), 13, 45, N'pi-101', N'company', N'industry', N'Health & Safety,', N'corporate', N'environment', N'Mar-145.pdf', N'03.03.2020.PNG', N'No File', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (80, 1015, CAST(0x33410B00 AS Date), 12, 63, N'pi-049', N'check', N'deploy', N'IT, IT,', N'issues', N'detect', N'No File', N'No File', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (81, 1016, CAST(0x34410B00 AS Date), 12, 38, N'pi-091', N'specify', N'rectangle', N'Quality,', N'circle', N'rectangle view', N'03.03.2020.PNG', N'No File', N'No File', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (83, 1017, CAST(0x37410B00 AS Date), 15, 41, N'pi-155', N'upload', N'attach', N'IT,', N'old version', N'new version', N'Mar-117.pdf', N'03.02.2020.PNG', N'No File', N'Forward to DBA for Final Process', N'0', N'0', N'0', N'0', N'EMP', N'H', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (84, 1018, CAST(0x38410B00 AS Date), 12, 38, N'pi-091', N'application', N'idea', N'IT,', N'not execute', N'execute', N'03.02.2020.PNG', N'Mar-123.pdf', N'No File', N'Suggestion Complete', N'0', N'0', N'0', N'0', N'EMP', N'K', NULL)
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (85, 1019, CAST(0x38410B00 AS Date), 13, 45, N'pi-101', N'check reject', N'check total', N'IT,', N'no count', N'count increase', N'No File', N'No File', N'No File', N'Rejected In Committee Evaluation', N'0', N'0', N'0', N'0', N'EMP', N'C', N'not good')
INSERT [dbo].[EmployeeSuggestion] ([SL_No], [IdeaId], [Date], [IDepId], [IDesId], [IEmpId], [Subject], [Benefits], [Category], [Before], [After], [FileUpload1], [FileUpload2], [FileUpload3], [Status], [Approved], [Remark2], [Remark3], [Remark4], [Remark5], [Remark6], [SuggestionDep]) VALUES (86, 1020, CAST(0x3A410B00 AS Date), 13, 45, N'pi-101', N'check', N'watyer', N'Quality,', N'reject', N'notfeasible', N'No File', N'No File', N'No File', N'Hold on HOD', N'0', N'0', N'0', N'0', N'EMP', N'W', NULL)
SET IDENTITY_INSERT [dbo].[EmployeeSuggestion] OFF
/****** Object:  StoredProcedure [dbo].[EmployeeIdGet]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EmployeeIdGet]
as
begin

select EmployeeId, EmployeeId+'-'+EmployeeName as EmployeeName from EmployeeDetail union all select HEmployeeId, HEmployeeId+'-'+HEmployeeName from HOfficialDetail

 end
GO
/****** Object:  Table [dbo].[EmployeeDetail]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EmployeeDetail](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [varchar](30) NOT NULL,
	[EmployeeName] [varchar](max) NULL,
	[DepartmentId] [int] NULL,
	[DesignationId] [int] NULL,
	[PhoneNo] [varchar](50) NULL,
	[Points] [varchar](50) NULL,
	[Allowance] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[EmpImage] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeDetail] ON
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (1, N'21802', N'Nicolas', 13, 38, N'3243242323', NULL, NULL, NULL, NULL, NULL, NULL, N'nicolas.maymil@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (2, N'PI-111', N'Naresh', 12, 63, N'3243242323', NULL, NULL, NULL, NULL, NULL, NULL, N'naresh.chandrasekaran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (3, N'PI-136', N'Karthig', 2, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'karthig.m@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (4, N'PI-138', N'Sumeeth', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sumeeth.ram@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (5, N'PI-155', N'Subramanian', 15, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'subramanian.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (6, N'PI-181', N'Karthik', 13, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'karthik.r@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (7, N'PI-114', N'Mohammed Riyazdheen', 10, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mohammed.riyazdheen@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (8, N'PI-009', N'Arokiadass Nirmal', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nirmal.ia@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (9, N'PI-011', N'Sumathi', 1, 6, NULL, NULL, NULL, NULL, NULL, N'X', NULL, N'raja.g@binary2quantumsolutions.com', N'123', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (10, N'PI-012', N'Kamalaveni', 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kamalaveni.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (11, N'PI-027', N'Iyyappan', 15, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'iyyappan.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (12, N'PI-044', N'Jayakumar', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Jayakumar.R@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (13, N'PI-045', N'Kathir', 13, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kathir.s@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (14, N'PI-049', N'Jeevabalan', 12, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jeevabalan.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (15, N'PI-050', N'Krishnaraj', 13, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'krishnaraj.ranganathan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (16, N'PI-051', N'Lingeshwaran', 8, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'lingeswaran.t@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (17, N'PI-053', N'Venkatesh', 14, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'venkatesh.kamath@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (18, N'PI-054', N'Prabath', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'prabath.shanmugam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (19, N'PI-055', N'Balaji', 12, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'balaji.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (20, N'PI-057', N'Laxmi', 14, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Laxmi.rao@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (21, N'PI-058', N'Saravanan', 13, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'saravanan.s@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (22, N'PI-060', N'Balasubramani', 8, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Balasubramani.D@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (23, N'PI-061', N'Kumaravel', 9, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kumaravel.munisamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (24, N'PI-062', N'Selvi', 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'selvi.k@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (25, N'PI-070', N'Ashok Kumar', 12, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ashokkumar.t@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (26, N'PI-076', N'Venkatesan', 13, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'venkatesan.kanagaraj@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (27, N'PI-080', N'Sugumaran', 9, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sugumaran.balakirush@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (28, N'PI-084', N'Balachandrane', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'balachandrane.a@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (29, N'PI-088', N'Prabhukumar', 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'prabukumar.m@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (30, N'PI-089', N'Rajaraman', 15, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajaraman.t@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (31, N'PI-092', N'Rajkumar', 14, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajkumar.s@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (32, N'PI-093', N'Ramachandiran', 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ramachandiran.d@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (33, N'PI-094', N'Gnanamani', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gnanamani.kaliamurthy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (34, N'PI-095', N'Ramkumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ramkumar.arikhrishnan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (35, N'PI-097', N'Manimaran', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'manimaran.govindasamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (36, N'PI-098', N'Iyyanar', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (37, N'PI-101', N'Rajeev', 13, 45, NULL, NULL, NULL, NULL, NULL, N'X', NULL, N'rajeev.rajendharan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (38, N'PI-102', N'Neethi Mohan', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'neethimohan.g@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (39, N'PI-103', N'Gavaskar', 8, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gavaskar.k@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (40, N'PI-110', N'Sundar Sekar', 10, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sundar.sekar@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (41, N'PI-112', N'Gajendhiran', 10, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gajendhiran.r@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (42, N'PI-113', N'Maheswaran', 8, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'maheswaran.m@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (43, N'PI-116', N'Iyyappan', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'iyyappan.arumugam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (44, N'PI-120', N'Thirumavalavan', 6, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'thirumavalavan.p@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (45, N'PI-121', N'Rajkannan', 13, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajkannan.p@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (46, N'PI-122', N'Venkatesan', 13, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'venkatesan.e@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (47, N'PI-123', N'Madhankumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'madhankumar.haridass@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (48, N'PI-125', N'Govindaraj', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'govindaraj.k@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (49, N'PI-127', N'Viknesh Sundar', 8, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'viknesh.s@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (50, N'PI-128', N'Anoop', 13, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'anoop.n@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (51, N'PI-129', N'Dhana Pandian', 8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'dhanapandiyan.k@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (52, N'PI-132', N'Vivek', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (53, N'PI-133', N'Selvam', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (54, N'PI-135', N'Vijaya Vel', 13, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vijayavel.n@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (55, N'PI-141', N'John Britto', 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'john.britto@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (56, N'PI-144', N'Rajasekaran', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajasekaran.r@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (57, N'PI-151', N'Soubarayalu', 4, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'soubarayalu.d@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (58, N'PI-152', N'Gopiraj', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (59, N'PI-153', N'Gajabalan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (60, N'PI-154', N'Veeraiah', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'veeraiah.sekar@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (61, N'PI-158', N'Kamaraj', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (62, N'PI-160', N'Sivabalan', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'silvabalan.ravichand@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (63, N'PI-161', N'Anbudurai', 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'anbudurai.nagarajan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (64, N'PI-162', N'Karthi', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (65, N'PI-164', N'Kamesh Kumar', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (66, N'PI-166', N'Rajesh', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (67, N'PI-167', N'Rajkumar', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (68, N'PI-168', N'Ramesh', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (69, N'PI-170', N'Gayathri', 8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gayathri.n@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (70, N'PI-173', N'Bharathiraja', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (71, N'PI-174', N'Gokulakannan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gokulakannan.manibalan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (72, N'PI-175', N'Nagarajan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (73, N'PI-177', N'Sankar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (74, N'PI-178', N'Vigneshwaran', 8, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vigneshwaran.subramani@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (75, N'PI-179', N'Sivaprakasam', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (76, N'PI-180', N'Jayavel', 12, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jayavel.venkatesan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (77, N'PI-184', N'Kalaiselvan', 13, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kalaiselvan.matheshwaran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (78, N'PI-187', N'Ramkumar', 13, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ramkumar.v@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (79, N'PI-194', N'Prabhu', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'prabhu.murugesan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (80, N'PI-195', N'Mahendran', 10, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mahendran.a@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (81, N'PI-199', N'Mouni', 7, 22, NULL, NULL, NULL, NULL, NULL, N'X', NULL, N'mouni.settu@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (82, N'PI-203', N'Dinesh Kumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (83, N'PI-204', N'Thennarasan', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (84, N'PI-205', N'Ashok Kumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (85, N'PI-206', N'Antony Susi Raj', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (86, N'PI-207', N'Annadurai', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (87, N'PI-209', N'Jayaprakash', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (88, N'PI-212', N'Almohisen', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mani95ram@outlook.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (89, N'PI-214', N'Vignesh Raj', 15, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vignesh.balaguru@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (90, N'PI-218', N'Dharanya', 8, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'dharanya.mani@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (91, N'PI-219', N'Pachaiyappan', 13, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'pachaiyappan.krishna@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (92, N'PI-222', N'Mohanraj', 13, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mohanraj.chakkarapani@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (93, N'PI-223', N'Anandhan', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'anandhan.erusan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (94, N'PI-224', N'Seenuvasan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (95, N'PI-226', N'Senthil Kumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (96, N'PI-228', N'Tharmaraj', 13, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tharmaraj.thangavel@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (97, N'PI-230', N'Prabhu', 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'prabhu.palanisamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (98, N'PI-231', N'Tamizharasan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (99, N'PI-232', N'Sophia', 11, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sophia.samouvelou@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (100, N'PI-236', N'Nivedha', 15, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nivedha.mohan@poclain.com', N'1234', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (101, N'PI-237', N'Ramesh', 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ramesh.rajendran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (102, N'PI-238', N'Alex David Nathan', 15, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'alexdavidnathan.albe@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (103, N'PI-239', N'Elangovan', 15, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'elangovan.vaideeswar@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (104, N'PI-241', N'Ragaventhiran', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ragaventhiran.gnanas@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (105, N'PI-244', N'Sivagnanam', 6, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sivagnanam.raju@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (106, N'PI-245', N'Johnsaida', 7, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'johnsaida.shaik@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (107, N'PI-250', N'Manikandan', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (108, N'PI-251', N'Rajesh', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajesh.jayaraman@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (109, N'PI-252', N'Vijayakumar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Vijaykumar.RADHAKRIS@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (110, N'PI-253', N'Sivasubramaniyan', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (111, N'PI-256', N'Balamurugan', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'balamurugan.sudalaik@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (112, N'PI-257', N'Krishnakumar', 10, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'krishnakumar.prakasam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (113, N'PI-261', N'Louise Pragasia Marie', 7, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'louisepragasiamarie.perianayagam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (114, N'PI-263', N'Kumar', 4, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kumar.nagarajan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (115, N'PI-264', N'Gayathri', 15, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gayathri.thangamani@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (116, N'PI-265', N'Jayarani', 7, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jayarani.jayabal@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (117, N'PI-269', N'Dhanasekar', 12, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (118, N'PI-270', N'Dinesh Kumar', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (119, N'PI-271', N'Ramanan', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (120, N'PI-272', N'Kumar', 13, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kumar.karuppiah@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (121, N'PI-279', N'Sriramkumar', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sriramkumar.ravichandran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (122, N'PI-280', N'Sharavana', 14, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sharavana.murthy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (123, N'PI-281', N'Rajagopal', 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajagopal.ramasamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (124, N'PI-283', N'Manikandan', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'manikandan.arumugam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (125, N'PI-284', N'Senthilkumar', 6, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'senthilkumar.jayabal@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (126, N'PI-285', N'Kishore Kumar', 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kishorekumar.jayaraman@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (127, N'PI-287', N'Ramkumar', 13, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ramkumar.murugesan@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (128, N'PI-288', N'Sivakumar', 6, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sivakumar.krishnasamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (129, N'PI-290', N'Murugan', 10, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'murugan.panneerselvam@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (130, N'PI-291', N'Riyazahamed', 12, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'riyazahamed.mohamed@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (131, N'PI-292', N'Bhargava Seshu', 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bharagava.Seshu.CHIVUKULA@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (132, N'PI-293', N'Kotte Subhash', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'subhash.suresh@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (133, N'PI-294', N'Praveenkumar', 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'praveenkumar.palraj@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (134, N'PI-295', N'Dinagarane', 5, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'dinagarane.sivasankaran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (135, N'PI-296', N'Bharani', 12, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'bharani.gnanasekaran@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (136, N'PI-297', N'Rajesh', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'rajesh.kathamuthu@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (137, N'PI-298', N'Kalimuthu', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kalimuthu.chandrasekar@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (138, N'PI-299', N'Tamizharasan', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (139, N'PI-300', N'Raghu', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (140, N'PI-301', N'Ajithkumar', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (141, N'PI-302', N'Ragupandiyan', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (142, N'PI-303', N'Elamperiyan', 12, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (143, N'PI-304', N'Kamaraj', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (144, N'PI-305', N'Suresh', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (145, N'PI-306', N'Gopinath', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (146, N'PI-307', N'Sivaraman', 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (147, N'PI-308', N'Sathishkumar', 9, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sathishkumar.ponnusamy@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (148, N'PI-310', N'Sasikala', 8, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sasikala.dhanasekar@poclain.com', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (149, N'T-124', N'Vignesh', 12, 5, NULL, NULL, NULL, N'D', NULL, NULL, NULL, N'0', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (150, N'si-001', N'Lessa', 1, 1, N'123123', N'0', N'0', N'0', N'0', NULL, NULL, N'lessa@lessa.com', N'123', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (152, N'T-007', N'Murugan.K', 8, 45, N'9876543210', N'0', N'0', N'D', N'0', NULL, NULL, N'', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (153, N'T-007', N'Murugan.K', 8, 45, N'9876543210', N'0', N'0', N'D', N'0', NULL, NULL, N'', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (154, N't-006', N'yuvraj.s', 8, 50, N'12345667890', N'0', N'0', N'D', N'0', NULL, NULL, N'', N'1234', NULL)
INSERT [dbo].[EmployeeDetail] ([SL_No], [EmployeeId], [EmployeeName], [DepartmentId], [DesignationId], [PhoneNo], [Points], [Allowance], [Remark1], [Remark2], [Remark3], [Remark4], [Email], [Password], [EmpImage]) VALUES (155, N'T-020', N'Naveen .J', 8, 45, N'4344543343', N'0', N'0', N'0', N'0', NULL, NULL, N'', N'1234', NULL)
SET IDENTITY_INSERT [dbo].[EmployeeDetail] OFF
/****** Object:  StoredProcedure [dbo].[EmployeeDesig]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeDesig](@empid varchar(50))
as
begin
SET NOCOUNT ON
if exists(select HDesignationID from HOfficialDetail where HEmployeeID=@empid)
begin
select HDesignationID from HOfficialDetail where HEmployeeID=@empid
end
else
begin
select DesignationId from EmployeeDetail where EmployeeId=@empid
end
end
GO
/****** Object:  StoredProcedure [dbo].[employee_mail_generate]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[employee_mail_generate]
			@empname varchar(max)
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    Select D.DepId, D.DepName, e.DepartmentId, e.EmployeeName, e.Email, e.EmployeeId From EmployeeDetail e, Department D WHERE e.EmployeeId = @empname and e.DepartmentId = D.DepId
   
 end
GO
/****** Object:  StoredProcedure [dbo].[EmpImgUpload]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EmpImgUpload]
@EmpId nvarchar(max),
@EmpImg nvarchar(max)
as
begin

if exists(select * from EmployeeDetail where EmployeeId=@EmpId)
begin

update EmployeeDetail set EmpImage=@EmpImg where EmployeeId=@EmpId

end
else
begin

update HOfficialDetail set EmpImage=@EmpImg where HEmployeeId=@EmpId

end

end
GO
/****** Object:  StoredProcedure [dbo].[Empfullsugview]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Empfullsugview](@name int)
as
begin
select es.IdeaId,CONVERT(VARCHAR(23),es.Date,103) as Date,d.DepName,dd.DesName,es.Subject,es.Benefits,es.Category,es.Before,es.After,es.FileUpload1,es.FileUpload2,es.FileUpload3,es.Status from EmployeeSuggestion es,DesignationDetail dd,Department d where es.IdeaId = @name and d.DepId= es.IDepId and dd.DesId=es.IDesId
end
GO
/****** Object:  StoredProcedure [dbo].[DeptWiseRecord]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeptWiseRecord]
@type varchar(10)
as
begin

if(@type='')
begin
  create table #employee(Departmentname varchar(max),HOS varchar(max),HOD varchar(max),employee varchar(max))
  insert into #employee
SELECT distinct DD.DepName,  
Implement_Members_HOS=STUFF  
(  
     (  
       SELECT DISTINCT ', ' + CAST(t2.EmpId AS VARCHAR(MAX))+'-'+t2.Members  
       FROM HOSDetail t2  ,Department D
       WHERE t2.Department = t1.Department  and D.DepName=t2.Department
       FOR XML PATH('')  
     ),1,1,''  
)  ,
Implement_Members_HOD=STUFF  
(  
     (  
       SELECT DISTINCT ', ' + CAST(t2.EmpId AS VARCHAR(MAX))+'-'+t2.Members  
       FROM ManagerDetail t2  ,Department D
       WHERE t2.Department = t3.Department  and D.DepName=t2.Department
       FOR XML PATH('')  
     ),1,1,''  
)  ,
Implement_Members_Employee=STUFF  
(  
     (  
       SELECT DISTINCT ', ' + CAST(t2.EmployeeId AS VARCHAR(MAX))+'-'+t2.EmployeeName  
       FROM EmployeeDetail t2  ,Department D
       WHERE t2.DepartmentId = t4 .DepartmentId  and D.DepId=t2.DepartmentId 
       FOR XML PATH('')  
     ),1,1,''  
)  


FROM Department DD left join HOSDetail t1 on DD.DepName=t1.Department
					left join ManagerDetail t3  on DD.DepName=t3.Department
					left join EmployeeDetail t4  on DD.DepId=t4.DepartmentId


 order by DD.DepName 
--select * from #employee
  
  
  
  select distinct DepName,ISNULL(HO.HEmployeeId+'-'+HO.HEmployeeName,'-') as DBM,
						  EE.HOS as Beneficiary,
						  EE.HOS as HOS, 
						 EE.HOD as HOD, 
						 ISNULL(CD.EmpId+'-'+CD.Members,'-')as Committee,
						 EE.employee as Employee
						  from Department D 
						   left join HOfficialDetail HO on HO.HEmployeeId='pi-266' and HO.HDepartmentID=D.DepId 
						   left join HOSDetail HD on  HD.Department=D.DepName 
						   left join ManagerDetail MD on MD.Department = D.DepName
						   left join CommitteeDetail CD on CD.Department=D.DepName 
						   left join #employee EE on EE.Departmentname=d.DepName
  end
  
 end
GO
/****** Object:  StoredProcedure [dbo].[deptdashboardlink]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[deptdashboardlink](@empid varchar(25))
as 
begin
create table #temp(value int,data varchar(25))
if exists (select EmpId from CommitteeDetail where EmpId=@empid)
begin
insert into #temp values(1,'true')
end
if exists (select EmpId from ManagerDetail where EmpId=@empid)
begin
insert into #temp values(2,'true')
end
if exists (select EmpId from TeamDetail where EmpId=@empid)
begin
insert into #temp values(3,'true')
end
if exists (select ReceiverID from HOSEInbox where ReceiverID=@empid)
begin
insert into #temp values(4,'true')
end
if exists (select ReceiverID from BeneficiaryEInbox where ReceiverID=@empid)
begin
insert into #temp values(5,'true')
end

if exists (select * from credentials_Tables where id=@empid and Status='D')  ---data bank manager
begin
insert into #temp values(6,'true')
end
if exists (select EmpId from CommitteeDetail where EmpId=@empid)
begin
insert into #temp values(7,'true')
end
select* from #temp

end
GO
/****** Object:  StoredProcedure [dbo].[DBMChart_getdetails_last3months]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DBMChart_getdetails_last3months]
 as
 begin
 
 declare @startdate as varchar(20);
 declare @enddate as varchar(20);
 set @startdate= CONVERT(varchar(20),CURRENT_TIMESTAMP-90,111)
 set @enddate=CONVERT(varchar(20),CURRENT_TIMESTAMP,111)
 
 --select @startdate,@enddate
 
 --select DATE from CommitteeEvalEInbox
 
 
 
 
 
				declare @newSug int=(select count(*) from EmployeeSuggestion where Remark6='N' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				declare @reject int=(select count(*) from EmployeeSuggestion where Remark6='C' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				declare @approved int=(select count(*) from EmployeeSuggestion where Remark6='K' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				select @newSug,@reject,@approved
  end
GO
/****** Object:  StoredProcedure [dbo].[DBMchart_get_YearReport]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DBMchart_get_YearReport]
as 
begin
declare @startdate as varchar(20);
 declare @enddate as varchar(20);
 set @startdate= CONVERT(varchar(20),CURRENT_TIMESTAMP-365,111)
 set @enddate=CONVERT(varchar(20),CURRENT_TIMESTAMP,111)
 
 --select @startdate,@enddate
 
 --select DATE from CommitteeEvalEInbox
 
 
 
 
 
				declare @newSug int=(select count(*) from EmployeeSuggestion where Remark6='N' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				declare @reject int=(select count(*) from EmployeeSuggestion where Remark6='C' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				declare @approved int=(select count(*) from EmployeeSuggestion where Remark6='K' and Date between CAST ( @startdate AS DATE) AND CAST (@enddate AS DATE));
				select @newSug,@reject,@approved



 
 end
GO
/****** Object:  StoredProcedure [dbo].[DBMchart_get_details]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DBMchart_get_details]
as 
begin



  declare @com as int;
  set @com =(select COUNT( distinct C.IDeaID) from CommitteeEvalEInbox C, EmployeeSuggestion E where E.Remark6!='C' and E.IdeaId=C.IDeaID and C.IDeaID not in (select IDeaID from ManagerEInbox))
  declare @hod as int;
  set @hod=(select COUNT( distinct M.IDeaID) from ManagerEInbox M,EmployeeSuggestion E where E.Remark6!='C' and E.IdeaId=M.IDeaID and M.IDeaID not in (select IDeaID from TeamEInbox))
  declare @imp as int;
  set @imp=(select COUNT( distinct IDeaID) from TeamEInbox where IDeaID not in (select IDeaID from HOSEInbox))
  declare @hos as int;
  set @hos=(select COUNT( distinct IDeaID) from HOSEInbox where IDeaID not in (select IDeaID from BeneficiaryEInbox))
  declare @ben as int;
  set @ben=(select COUNT( distinct IDeaID) from BeneficiaryEInbox where IDeaID not in (select IDeaID from BeneficiaryESend))
  declare @fin as int;
  set @fin=(select COUNT( distinct IDeaID) from HRESend where IDeaID not in (select IDeaID from FinanceDetail))
  select @com,@hod,@imp,@hos,@ben,@fin
  
  --return @com;
  --return @hod;
  --return @imp;
  --return @hos;
  --return @ben;
  --return @fin;
 end
GO
/****** Object:  StoredProcedure [dbo].[DBMBulkProcessHR_Module_Filter]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DBMBulkProcessHR_Module_Filter]
@type varchar(20),@startdate varchar(30),@enddate varchar(30)
as
begin

--drop table #splitIdea
--insert into #mainmainemp (IDeaID ,Employee ,DepName ,Date ,Amount)
--create table #splitIdea(IdeaId nvarchar(20),Remark nvarchar(30))
--insert into #splitIdea
--select IDeaID,'Approved' from HRESend
--select * from #splitIdea
if(@type='EMP')
begin
select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,'100' as Amount,[dbo].[fun_getBulkProcessByRemark](hr.Remark1)as Remark from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															left join HRESend hr on hr.IDeaID=bs.IDeaID
															where  convert(date,bs.Date,101) between @startdate and @enddate
--select * from #mainmain,ISNULL(hr.IDeaID,'NotApproved') as Remark


end
else
begin
create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 

				GROUP BY IDeaID
--insert into #mainmainimp (IDeaID ,Employee ,DepName ,Date ,BENGrade,Amount)
select distinct bs.IDeaID, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,
bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount,[dbo].[fun_getBulkProcessByRemark2](hr.Remark2)as Remark from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															left join HRESend hr on hr.IDeaID=bs.IDeaID
															where  convert(date,bs.Date,101) between @startdate and @enddate
	end														
end


--select IdeaId,Remark1,Remark2,[dbo].[fun_getBulkProcessByRemark](Remark1),[dbo].[fun_getBulkProcessByRemark2](Remark2) from HRESend
GO
/****** Object:  StoredProcedure [dbo].[DBMBulkProcessHR_Module]    Script Date: 10/03/2020 11:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DBMBulkProcessHR_Module]
@type varchar(20)
as
begin

--drop table #splitIdea
--insert into #mainmainemp (IDeaID ,Employee ,DepName ,Date ,Amount)
--create table #splitIdea(IdeaId nvarchar(20),Remark nvarchar(30))
--insert into #splitIdea
--select IDeaID,'Approved' from HRESend
--select * from #splitIdea
if(@type='EMP')
begin
select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,'100' as Amount,[dbo].[fun_getBulkProcessByRemark](hr.Remark1)as Remark from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															left join HRESend hr on hr.IDeaID=bs.IDeaID
--select * from #mainmain,ISNULL(hr.IDeaID,'NotApproved') as Remark


end
else
begin
create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 

				GROUP BY IDeaID
--insert into #mainmainimp (IDeaID ,Employee ,DepName ,Date ,BENGrade,Amount)
select distinct bs.IDeaID, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,
bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount,[dbo].[fun_getBulkProcessByRemark2](hr.Remark2)as Remark from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															left join HRESend hr on hr.IDeaID=bs.IDeaID
	end														
end


--select IdeaId,Remark1,Remark2,[dbo].[fun_getBulkProcessByRemark](Remark1),[dbo].[fun_getBulkProcessByRemark2](Remark2) from HRESend
GO
/****** Object:  StoredProcedure [dbo].[DBM_Ranking_GetDetails]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DBM_Ranking_GetDetails]
as
begin
declare @startdate as varchar(20);
declare @enddate as varchar(20);
set @startdate=CURRENT_TIMESTAMP-30
set @enddate=CURRENT_TIMESTAMP

create table #GetDetails(IdeaId varchar(20),IEmpId varchar(20))
insert into #GetDetails

select distinct EG.IdeaId,EG.IEmpId from EmployeeSuggestion EG inner join TeamEInbox TI on TI.IDeaID=EG.IdeaId 
												inner join EmployeeDetail ED on ED.EmployeeId=EG.IEmpId





where EG.DATE between cast(@startdate as DATE) and cast(@enddate as date) 
--select * from #GetDetails

create table #tempGetDetails(IdeaId varchar(20),IempId varchar(20))
insert into #tempGetDetails
SELECT distinct IdeaId, IEmpId 
FROM #GetDetails e where not exists(select * from #tempGetDetails where e.IdeaId=IdeaId)

--select * from #tempGetDetails
SELECT Top 1  COUNT(IdeaId) as countq, IempId
FROM #GetDetails 
group by IempId
order by countq desc


end
GO
/****** Object:  StoredProcedure [dbo].[DayCountRoleBasedIdeaID]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DayCountRoleBasedIdeaID]
@type varchar(50)
as
begin

select distinct es.IdeaId,ISNULL( DATEDIFF(day,es.date,fd.date),DATEDIFF(day,es.date,CURRENT_TIMESTAMP)) as totalday,
						  ISNULL(	DATEDIFF(day,es.date,ci.date),DATEDIFF(day,es.date,CURRENT_TIMESTAMP)) as fromemployeeDBMday,
						  ISNULL(	DATEDIFF(day,ci.date,mi.date),DATEDIFF(day,ci.date,CURRENT_TIMESTAMP)) as fromcommitteeDBMday,
						  ISNULL(	DATEDIFF(day,mi.date,ti.date),DATEDIFF(day,mi.date,CURRENT_TIMESTAMP)) as managerday ,
							--DATEDIFF(day,ci.date,.date) as committeeday ,
						ISNULL(	DATEDIFF(day,ti.date,ts.date),DATEDIFF(day,ti.date,CURRENT_TIMESTAMP)) as implementday ,	 
						ISNULL(	DATEDIFF(day,hi.date, convert(date,be.date,105)),DATEDIFF(day,hi.date,CURRENT_TIMESTAMP)) as HOSday,	 
						ISNULL(	DATEDIFF(day,convert(date,be.date,105),convert(date,bes.date,105)),DATEDIFF(day,convert(date,be.date,105),CURRENT_TIMESTAMP)) as BENday,
						ISNULL(	DATEDIFF(day,convert(date,bes.date,105),convert(date,hr.date,105)),DATEDIFF(day,convert(date,bes.date,105),CURRENT_TIMESTAMP)) as HRday,	 
						ISNULL(	DATEDIFF(day,convert(date,hr.date,105),fd.date),DATEDIFF(day,convert(date,hr.date,105),CURRENT_TIMESTAMP)) as Finday	 
							  
							 
							
				from employeesuggestion es
								left join TeamEInbox ti on es.IdeaId=ti.IDeaID
								left join TeamESend ts on es.IdeaId=ts.IdeaId 
								left join FinanceDetail fd on fd.IdeaId=es.IdeaId
								left join BeneficiaryEInbox be on es.IdeaId=be.IDeaID --
								left join HOSEInbox hi on es.IdeaId=hi.IDeaID
								left join CommitteeEvalEInbox ci on es.IdeaId=ci.IDeaID
								left join ManagerEInbox mi on es.IdeaId=mi.IDeaID
								left join HRESend hr on es.IdeaId=hr.IDeaID  --
								left join DataBankManagerSend dbm on es.IdeaId=dbm.IdeaId
								left join BeneficiaryESend bes on bes.IDeaID=es.IdeaId --
end
GO
/****** Object:  StoredProcedure [dbo].[CeoMessageView]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CeoMessageView]
as
begin

select [CEOMessage] from [CeoMessage] order by [S_No] desc

end
GO
/****** Object:  StoredProcedure [dbo].[CEOMessageInsert]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CEOMessageInsert]
(@ceomsg nvarchar(max))
as
begin

insert into CeoMessage (CEOMessage) values (@ceomsg)

end
GO
/****** Object:  StoredProcedure [dbo].[Beneficiaryapprovalgetratings]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Beneficiaryapprovalgetratings]
@IdeaID varchar(20)
as
begin

create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1   

				GROUP BY IDeaID  


select distinct es.IdeaId,isnull(es.IEmpId+'-'+ed.EmployeeName,es.IEmpId+'-'+hd.HEmployeeName) as IdeaEmployee,bs.BENGrade,imp.IMPL_ID from EmployeeSuggestion es
							left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
							left join BeneficiaryESend bs on es.IdeaId=bs.IDeaID 
							left join #IMPL_GET_ID_admin imp on imp.IDEAID=es.IdeaId 
							left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId where es.IdeaId=@IdeaID
							
							end
GO
/****** Object:  StoredProcedure [dbo].[BeneficiaryapprovalBulkProcessFilter]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BeneficiaryapprovalBulkProcessFilter]
@type varchar(20),@startdate varchar(30),@enddate varchar(30)
as
begin
create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
create table #mainimpl (IDeaID varchar(20),IMPL_Members varchar(max),DepName varchar(20),Date varchar(30),BENGrade varchar(20),Amount varchar(20),remark nvarchar(5))
create table #main (IDeaID varchar(20),Employee varchar(max),DepName varchar(20),Date varchar(30),Amount varchar(20),remark varchar(5))
create table #fullouter(IDeaID varchar(20),Employee varchar(max),Date varchar(30),Amount varchar(20),remark varchar(5))
create table #mainmainemp (IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),Amount varchar(20))
create table #mainmainimp (IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),BENGrade varchar(20), Amount varchar(20))

create table #mainemp (S_No int identity(1,1),IDeaID varchar(20),Employee varchar(max),DepName varchar(20),Date varchar(30),Amount varchar(20))
create table #mainimp (S_No int identity(1,1),IDeaID varchar(20),IMPL_Members varchar(max),DepName varchar(20),Date varchar(30),BENGrade varchar(20),Amount varchar(20))
					
				insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 

				GROUP BY IDeaID  				
									
insert into #mainimpl(IDeaID,IMPL_Members,DepName,Date,BENGrade,Amount,remark)
select distinct bs.IDeaID,
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount,'X' from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															 --left join HRESend hr on  hr.Remark1='X'
															 where bs.IDeaID  in (select IDeaID from  HRESend where Remark1='X') and not exists (select * from #mainimpl e where e.IDeaID=bs.IDeaID)
	
insert into #main(IDeaID ,Employee ,DepName ,Date ,Amount ,remark )

select distinct bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,100 as Amount,'Y'  from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															-- right join #tempY ty on ty.ideaid=bs.IDeaID 
															--left join HRESend hr on hr.IDeaID=bs.IDeaID
															--where hr.IDeaID is null
															where bs.IDeaID  in (select IDeaID from  HRESend where Remark2='Y' and not exists (select * from #main e where e.IDeaID=bs.IDeaID))



insert into #fullouter (IDeaID ,Employee ,Date ,Amount,remark )
select isnull(x.IDeaID,y.IDeaID) as idea,ISNULL(x.impl_members,y.employee) as name,ISNULL(x.date,y.date) as Dates,ISNULL(x.amount,y.amount) as amount,ISNULL(x.remark,y.remark) as remarks from #mainimpl x full outer join #main y on x.IDeaID=y.IDeaID where y.IDeaID is null or x.IDeaID is null and  not exists (select * from #fullouter e where e.IDeaID=x.IDeaID or e.IDeaID=y.IDeaID)
--select * from #fullouter



insert into #mainmainemp (IDeaID ,Employee ,DepName ,Date ,Amount)

select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,'100' as Amount from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
--select * from #mainmain
insert into #mainmainimp (IDeaID ,Employee ,DepName ,Date ,BENGrade,Amount)
select distinct bs.IDeaID, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
--select * from #mainmainimp
if(@type='Emp')

begin



insert into #mainemp (IDeaID ,Employee,DepName,Date,Amount)

select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,100 as Amount from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															-- right join #tempY ty on ty.ideaid=bs.IDeaID 
															--left join HRESend hr on hr.IDeaID=bs.IDeaID
															--where hr.IDeaID is null
															where bs.IDeaID not in (select IDeaID from  HRESend)
															union
select a.IDeaID,a.Employee,a.DepName,a.Date,a.Amount from #mainmainemp a inner  join #fullouter b on a.IDeaID=b.IDeaID where b.remark='Y'
	
		select *from #main	where  convert(date,Date,101) between @startdate and @enddate											--where not exists (select * from HRESend where IDeaID=bs.IDeaID and Remark1!='X')
															 
	end		
	else							
	begin				
				--		create table #IMPL_GET_ID_admin_imp(IDEAID varchar(max),IMPL_ID varchar(max))
				--insert into #IMPL_GET_ID_admin
				--SELECT distinct IDeaID,  
				--Implement_Members_ID=STUFF  
				--(  
				--	 (  
				--	   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
				--	   FROM TeamEInbox t2  , EmployeeDetail ED 
				--	   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
				--	   FOR XML PATH('')  
				--	 ),1,1,''  
				--)  


				--FROM TeamEInbox t1 

				--GROUP BY IDeaID  				


insert into #mainimp(IDeaID,IMPL_Members,DepName,Date,BENGrade,Amount)
										
 select distinct bs.IDeaID,  --row_number() over (order by bs.IDeaID)as S_No, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															 --left join HRESend hr on  hr.Remark1='X'
															where bs.IDeaID not in (select IDeaID from  HRESend)
															union
select a.IDeaID,a.Employee,a.DepName,a.Date, a.BENGrade,  a.Amount from #mainmainimp a inner  join #fullouter b on a.IDeaID=b.IDeaID where b.remark='X'
	
															
	select  * from #mainimp	where  convert(date,Date,101) between @startdate and @enddate
															  											 
		end													 
															 
end
GO
/****** Object:  StoredProcedure [dbo].[BeneficiaryapprovalBulkProcess]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BeneficiaryapprovalBulkProcess]
@type varchar(20)
as
begin
create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
create table #mainimpl (IDeaID varchar(20),IMPL_Members varchar(max),DepName varchar(max),Date varchar(30),BENGrade varchar(20),Amount varchar(20),remark nvarchar(5))
create table #main (IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),Amount varchar(20),remark varchar(5))
create table #fullouter(IDeaID varchar(20),Employee varchar(max),Date varchar(30),Amount varchar(20),remark varchar(5))
create table #mainmainemp (IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),Amount varchar(20))
create table #mainmainimp (IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),BENGrade varchar(20), Amount varchar(20))

create table #mainemp (S_No int identity(1,1),IDeaID varchar(20),Employee varchar(max),DepName varchar(max),Date varchar(30),Amount varchar(20))
create table #mainimp (S_No int identity(1,1),IDeaID varchar(20),IMPL_Members varchar(max),DepName varchar(max),Date varchar(30),BENGrade varchar(20),Amount varchar(20))
					
				insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 

				GROUP BY IDeaID  				
									
insert into #mainimpl(IDeaID,IMPL_Members,DepName,Date,BENGrade,Amount,remark)
select distinct bs.IDeaID,
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount,'X' from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															 --left join HRESend hr on  hr.Remark1='X'
															 where bs.IDeaID  in (select IDeaID from  HRESend where Remark1='X') and not exists (select * from #mainimpl e where e.IDeaID=bs.IDeaID)
	
insert into #main(IDeaID ,Employee ,DepName ,Date ,Amount ,remark )

select distinct bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,100 as Amount,'Y'  from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															-- right join #tempY ty on ty.ideaid=bs.IDeaID 
															--left join HRESend hr on hr.IDeaID=bs.IDeaID
															--where hr.IDeaID is null
															where bs.IDeaID  in (select IDeaID from  HRESend where Remark2='Y' and not exists (select * from #main e where e.IDeaID=bs.IDeaID))



insert into #fullouter (IDeaID ,Employee ,Date ,Amount,remark )
select isnull(x.IDeaID,y.IDeaID) as idea,ISNULL(x.impl_members,y.employee) as name,ISNULL(x.date,y.date) as Dates,ISNULL(x.amount,y.amount) as amount,ISNULL(x.remark,y.remark) as remarks from #mainimpl x full outer join #main y on x.IDeaID=y.IDeaID where y.IDeaID is null or x.IDeaID is null and  not exists (select * from #fullouter e where e.IDeaID=x.IDeaID or e.IDeaID=y.IDeaID)
--select * from #fullouter



insert into #mainmainemp (IDeaID ,Employee ,DepName ,Date ,Amount)

select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,'100' as Amount from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
--select * from #mainmain
insert into #mainmainimp (IDeaID ,Employee ,DepName ,Date ,BENGrade,Amount)
select distinct bs.IDeaID, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
--select * from #mainmainimp
if(@type='Emp')

begin



insert into #mainemp (IDeaID ,Employee,DepName,Date,Amount)

select distinct  bs.IDeaID,
isnull(ed.EmployeeId+'-'+ed.EmployeeName,hd.HEmployeeId+'-'+hd.HEmployeeName)as Employee,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,100 as Amount from BeneficiaryESend bs
															left join EmployeeSuggestion es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
															left join HOfficialDetail hd on hd.HEmployeeId=es.IEmpId
															left join Department dep on ed.DepartmentId=dep.DepId
															-- right join #tempY ty on ty.ideaid=bs.IDeaID 
															--left join HRESend hr on hr.IDeaID=bs.IDeaID
															--where hr.IDeaID is null
															where bs.IDeaID not in (select IDeaID from  HRESend)
															union
select a.IDeaID,a.Employee,a.DepName,a.Date,a.Amount from #mainmainemp a inner  join #fullouter b on a.IDeaID=b.IDeaID where b.remark='Y'
	
		select *from #mainemp												--where not exists (select * from HRESend where IDeaID=bs.IDeaID and Remark1!='X')
															 
	end		
	else							
	begin				
				--		create table #IMPL_GET_ID_admin_imp(IDEAID varchar(max),IMPL_ID varchar(max))
				--insert into #IMPL_GET_ID_admin
				--SELECT distinct IDeaID,  
				--Implement_Members_ID=STUFF  
				--(  
				--	 (  
				--	   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
				--	   FROM TeamEInbox t2  , EmployeeDetail ED 
				--	   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
				--	   FOR XML PATH('')  
				--	 ),1,1,''  
				--)  


				--FROM TeamEInbox t1 

				--GROUP BY IDeaID  				


insert into #mainimp(IDeaID,IMPL_Members,DepName,Date,BENGrade,Amount)
										
 select distinct bs.IDeaID,  --row_number() over (order by bs.IDeaID)as S_No, 
isnull(impl.IMPL_ID,'Reject/Hold') as IMPL_Members,
dep.DepName,convert(varchar(30),convert(date,bs.Date,105),101)as Date,bs.BENGrade,dbo.fun_getAmountByGrade(bs.BENGrade)as Amount from BeneficiaryESend bs
															left join TeamEInbox es on es.IdeaId=bs.IDeaID
															left join EmployeeDetail ed on ed.EmployeeId=es.ReceiverID
															left join HOfficialDetail hd on hd.HEmployeeId=es.ReceiverID
															left join Department dep on ed.DepartmentId=dep.DepId
															left join #IMPL_GET_ID_admin impl on impl.IDeaID =  bs.IDeaID
															 --left join HRESend hr on  hr.Remark1='X'
															where bs.IDeaID not in (select IDeaID from  HRESend)
															union
select a.IDeaID,a.Employee,a.DepName,a.Date, a.BENGrade,  a.Amount from #mainmainimp a inner  join #fullouter b on a.IDeaID=b.IDeaID where b.remark='X'
	
															
	select  * from #mainimp													 
		end													 
															 
end
GO
/****** Object:  StoredProcedure [dbo].[BenBulkProcessImp]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BenBulkProcessImp] 
@CmEmailID varchar(20),@Bulkimpideaid varchar(20), @Bulkimpid varchar(max),
@Bulkimpdep varchar(20), @Bulkimpdate varchar(20),@Bulkimpbengrade varchar(20),@Bulkimpamt varchar(20),@sendid varchar(20)
as
begin

if exists(select * from HRESend where IDeaID=@Bulkimpideaid)

begin

update HRESend set ApprovedImpl = @Bulkimpid,ApprovedImplAmt = @Bulkimpamt,Remark2='Y',Remark3=@sendid where IDeaID=@Bulkimpideaid
      update EmployeeSuggestion set Remark6='I',Status='Forward to Finance Department' where IdeaId=@Bulkimpideaid;
      

end

else
begin


declare @mailid varchar(20)=(select isnull(max(CmEmailID),0)+1 from HRESend)
declare @sl_no int =(select isnull(max(SL_No),0)+1 from HRESend)
insert into HRESend(
		SL_No
		,[CmEmailID]
		,[SenderMailID]
      ,[SenderID]
      ,[ReceiverID]
      ,[IDeaID]
      ,[EFrom]
      ,[ETo]
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,[HOSGrade]
      ,[HOSBM]
      ,[BENGrade]
      ,[BENBM]
      ,[ApprovedImpl]
      ,[ApprovedImplAmt]
      ,Remark2
      ,Remark3
      
)
 select Top 1
		@sl_no
		,@mailid
	  ,[SenderMailID]
      ,'PI-242'
      ,'PI-235'
      ,[IDeaID]
      ,'vengadessane.nadradjane@poclain.com'
      ,'rajesh.arumugam@poclain.com'
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,HOSGrade
      ,HOSBM
      ,BENGrade
      ,BENBM
      ,@Bulkimpid
      ,@Bulkimpamt
      ,'Y'
      ,@sendid
      
       from BeneficiaryESend where IDeaID=@CmEmailID order by SL_No desc;
       update EmployeeSuggestion set Remark6='I',Status='Forward to Finance Department' where IdeaId=@Bulkimpideaid;
end
end
GO
/****** Object:  StoredProcedure [dbo].[BenBulkProcessEmp]    Script Date: 10/03/2020 11:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BenBulkProcessEmp] 
@CmEmailID varchar(20),@Bulkempideaid varchar(20), @Bulkempid varchar(20),@Bulkempdep varchar(max), @Bulkempdate varchar(20),@Bulkempamt varchar(20),@sendid varchar(20)
as
begin

if exists(select * from HRESend where IDeaID=@Bulkempideaid)

begin

update HRESend set ApprovedUser = @Bulkempid,ApprovedUserAmt = @Bulkempamt,Remark1='X',Remark3=@sendid where IDeaID=@Bulkempideaid
      update EmployeeSuggestion set Remark6='I',Status='Forward to Finance Department' where IdeaId=@Bulkempideaid;

end

else
begin


declare @mailid varchar(20)=(select isnull(max(CmEmailID),0)+1 from HRESend)
declare @sl_no int =(select isnull(max(SL_No),0)+1 from HRESend)
insert into HRESend(
		SL_No
		,[CmEmailID]
		,[SenderMailID]
      ,[SenderID]
      ,[ReceiverID]
      ,[IDeaID]
      ,[EFrom]
      ,[ETo]
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,[HOSGrade]
      ,[HOSBM]
      ,[BENGrade]
      ,[BENBM]
      ,[ApprovedUser]
      ,[ApprovedUserAmt]
      ,Remark1
      ,Remark3
      
)
 select Top 1
		@sl_no
		,@mailid
	  ,[SenderMailID]
      ,'PI-242'
      ,'PI-235'
      ,[IDeaID]
      ,'vengadessane.nadradjane@poclain.com'
      ,'rajesh.arumugam@poclain.com'
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,HOSGrade
      ,HOSBM
      ,BENGrade
      ,BENBM
      ,@Bulkempid
      ,@Bulkempamt
      ,'X'
      ,@sendid
      
       from BeneficiaryESend where IDeaID=@CmEmailID order by SL_No desc;
       update EmployeeSuggestion set Remark6='I',Status='Forward to Finance Department' where IdeaId=@Bulkempideaid;
end
end
GO
/****** Object:  UserDefinedFunction [dbo].[fun_GetNameOfManager]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_GetNameOfManager]
(@senderid nvarchar(25))
RETURNS nvarchar(55)
begin
	declare @name nvarchar(55)
		 
		 set @name=(select top 1 HEmployeeName from HOfficialDetail where HEmployeeId = @senderid)
	
	return @name;

end
GO
/****** Object:  StoredProcedure [dbo].[ExportExcel]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ExportExcel]
@IdeaId varchar(20)
as
begin

--CREATE FUNCTION SplitString
--(    
--      @Input NVARCHAR(MAX),
--      @Character CHAR(1)
--)
--RETURNS @Output TABLE (
--      Item NVARCHAR(1000)
--)
--AS
--BEGIN
--      DECLARE @StartIndex INT, @EndIndex INT
 
--      SET @StartIndex = 1
--      IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
--      BEGIN
--            SET @Input = @Input + @Character
--      END
 
--      WHILE CHARINDEX(@Character, @Input) > 0
--      BEGIN
--            SET @EndIndex = CHARINDEX(@Character, @Input)
           
--            INSERT INTO @Output(Item)
--            SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
           
--            SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
--      END
 
--      RETURN
--END



DECLARE @ANYSTRING VARCHAR(MAX) 
 
SET @ANYSTRING=(select ApprovedImpl from HRESend where IDeaID=@IdeaId) 

declare @a int =(SELECT count(Item) FROM dbo.SplitString(@ANYSTRING, ','))
declare @b int = (select ApprovedImplAmt from HRESend where IDeaID=@IdeaId)
declare @c int= @b/@a
--select @c

SELECT row_number() over (order by Item)as S_No,hr.IDeaID,Item as Members,@c as Amount,'' as [Paid Comment] FROM dbo.SplitString(@ANYSTRING, ',')left join HRESend hr on IDeaID=@IdeaId
end
GO
/****** Object:  StoredProcedure [dbo].[FinancePayment]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FinancePayment](
@IdeaId varchar(50),@EmpId varchar(50),@EmpName varchar(50),@EmpMail varchar(50),@FinTeam varchar(50),@Comment varchar(50),@Amount varchar(50),@CashMode varchar(50)
)
as
begin
insert into [FinanceDetail]
(
	   [IdeaId]
      ,[EmpId]
      ,[EmpName]
      ,[EmpMail]
      ,[FinTeam]
      ,[Comment]
      ,[Amount]
      ,[Date]
      ,[CashMode]
)


 values(
@IdeaId ,@EmpId,@EmpName,@EmpMail,@FinTeam,@Comment,@Amount,GETDATE(),@CashMode
)

update EmployeeSuggestion set Status='Suggestion Complete',Remark6='K' where IdeaId=@IdeaId
end
GO
/****** Object:  StoredProcedure [dbo].[FinanceIMPLPayment]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FinanceIMPLPayment](
@IdeaId varchar(50),@EmpId varchar(50),@EmpName nvarchar(max),@EmpMail nvarchar(max),@FinTeam varchar(50),@Comment varchar(50),@Amount varchar(50),@CashMode varchar(50)
)
as
begin
insert into [FinanceIMPLDetail]
(
	   [IdeaId]
       ,[IMPLEmpId]
      ,[IMPLEmpName]
      ,[IMPLEmpMail]
      ,[FinTeam]
      ,[Comment]
      ,[Amount]
      ,[CashMode]
      ,[Date]
)


 values(
@IdeaId ,@EmpId,@EmpName,@EmpMail,@FinTeam,@Comment,@Amount,@CashMode,GETDATE()
)

update EmployeeSuggestion set Status='Suggestion Complete',Remark6='K' where IdeaId=@IdeaId
end
GO
/****** Object:  StoredProcedure [dbo].[EmployeeSuggestion_Select_Empid]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeSuggestion_Select_Empid]
	-- Add the parameters for the stored procedure here
		 @empid varchar(MAX)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 if exists(
		select E.IdeaId, ED.EmployeeId, 
		ED.EmployeeName,D.DepName, DD.DesName, 
		E.Date, E.Subject, E.Before, E.After, E.Status
		from 
		EmployeeSuggestion E, Department D, 
		DesignationDetail DD, EmployeeDetail ED
		where 
		ED.EmployeeId = E.IEmpId and 
		D.DepId = Ed.DepartmentId and 
		Dd.DesId = ED.DesignationId and
		ED.EmployeeId=@empid
		)
	begin
		select E.IdeaId, ED.EmployeeId, 
		ED.EmployeeName,D.DepName, DD.DesName, 
		E.Date, E.Subject, E.Before, E.After, E.Status
		from 
		EmployeeSuggestion E, Department D, 
		DesignationDetail DD, EmployeeDetail ED
		where 
		ED.EmployeeId = E.IEmpId and 
		D.DepId = Ed.DepartmentId and 
		Dd.DesId = ED.DesignationId and
		ED.EmployeeId=@empid
		order by E.SL_No Desc
	end
	
	else
		begin
			select E.IdeaId, ED.HEmployeeId AS EmployeeId, 
			ED.HEmployeeName AS EmployeeName,D.DepName, DD.DesName, 
			E.Date, E.Subject, E.Before, E.After, E.Status
			from 
			EmployeeSuggestion E, Department D, 
			DesignationDetail DD, HOfficialDetail ED
			where 
			ED.HEmployeeId = E.IEmpId and 
			D.DepId = Ed.HDepartmentID and 
			Dd.DesId = ED.HDesignationID and
			ED.HEmployeeId=@empid
			order by E.SL_No Desc
		end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamEvalEInbox_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TeamEvalEInbox_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from TeamEInbox




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamEInbox_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TeamEInbox_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from TeamEInbox




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamDetail_TeamName_Select_All]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TeamDetail_TeamName_Select_All]


           
AS
BEGIN
	select TeamName,TeamID from TeamDetail




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamDetail_TeamMembers_Select_All_DDList_ByEmpId]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TeamDetail_TeamMembers_Select_All_DDList_ByEmpId]
@EmpName varchar(50),
@TeamId varchar(50)

           
AS
BEGIN

	Select T.EmpId,H.HEmployeeName, H.Email  from TeamDetail T, HOfficialDetail H, Department D
	where 
	H.HEmployeeId = T.EmpId and
	
	T.TeamHID = @TeamId and
	H.HEmployeeName = @EmpName


end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamDetail_TeamMembers_Select_All_DDList]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TeamDetail_TeamMembers_Select_All_DDList]
@TeamHID varchar(50),
@IDType varchar(max)=null,
@EmPID varchar(max)=null
           
AS
BEGIN
if exists

(Select H.HEmployeeName,T.EmpId, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, HOfficialDetail H, Department D
	where 
	H.HEmployeeId = T.EmpId and
	D.DepId = T.DepID and
	T.TeamHID = @TeamHID)

BEGIN
	Select H.HEmployeeName as EmployeeName,T.EmpId, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, HOfficialDetail H, Department D
	where 
	H.HEmployeeId = T.EmpId and
	D.DepId = T.DepID and
	T.TeamHID = @TeamHID
	union
	Select ed.EmployeeName,T.EmpId, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, EmployeeDetail ed, Department D
	where 
	ed.EmployeeId = T.EmpId and
	D.DepId = T.DepID and
	T.TeamHID = @TeamHID
	

end
	Select ed.EmployeeName,T.EmpId, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, EmployeeDetail ed, Department D
	where 
	ed.EmployeeId = T.EmpId and
	D.DepId = T.DepID and
	T.TeamHID = @TeamHID
	
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TeamDetail_Insert]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TeamDetail_Insert]
	-- Add the parameters for the stored procedure here
		@TeamID int,
		@TeamName varchar(Max), 
		@DepID int,
		@EmpId varchar(50), 
		
		@TeamHID varchar(50), 
		@TeamCount int,
		@Remark1 varchar(50)
		
		
       
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into TeamDetail (TeamID, TeamName, EmpId, DepID, TeamHID, TeamCount, Remark1) values(@TeamID, @TeamName, @EmpId, @DepID, @TeamHID, @TeamCount, @Remark1)
	




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamDetail_GridView_Select_All]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TeamDetail_GridView_Select_All]


           
AS
BEGIN
	Select H.HEmployeeName, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, HOfficialDetail H, Department D
	where 
	H.HEmployeeId = T.EmpId and
	D.DepId = T.DepID




end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamDetail_AutoGen_TeamID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TeamDetail_AutoGen_TeamID]


           
AS
BEGIN
	select isnull(max(TeamID),0)+1 from TeamDetail




end
GO
/****** Object:  StoredProcedure [dbo].[sp_ResetPasswordUpdate]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ResetPasswordUpdate] 
@Userid varchar(50)
as
begin
if exists(select HEmployeeName from HOfficialDetail where HEmployeeId=@Userid)
begin
update HOfficialDetail set Passwords='1234' where HEmployeeId=@Userid

end
else
begin
update EmployeeDetail set Password='1234' where EmployeeId=@Userid

end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ResetPassword]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ResetPassword] 
@Userid varchar(50)
as
begin
if exists(select HEmployeeName from HOfficialDetail where HEmployeeId=@Userid)
begin
select REVERSE(RIGHT(HEmployeeName,4)),HEmployeeName,Email from HOfficialDetail where HEmployeeId=@Userid
end
else
begin
select REVERSE(RIGHT(EmployeeName,4)),EmployeeName,Email from EmployeeDetail where EmployeeId=@Userid
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ResetChangePassword]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ResetChangePassword] 
@Userid varchar(50),
@Pass varchar(50)
as
begin
if exists(select HEmployeeName from HOfficialDetail where HEmployeeId=@Userid)
begin
update HOfficialDetail set Passwords=@Pass, Remark3='X' where HEmployeeId=@Userid

end
else
begin
update EmployeeDetail set Password=@Pass, Remark3='X' where EmployeeId=@Userid

end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagersInBox_Insert_FrmDBM]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ManagersInBox_Insert_FrmDBM]
			@CmEmailID int,
			@SendId int,
--			SenderID   --HOdID DBM
			@SenderID varchar(50),
			--Receover Mail ID
			@IEmpId varchar(30),
			@IdeaId int,--IDeaID
			--form HodID DBM MailID DBMEmail
			@From varchar(max),
			--Receiver Mail ID
            @EmailId varchar(50),
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50)
            
           
AS          
BEGIN

	
	INSERT INTO ManagerEInbox
           (
			CmEmailID,
			SenderMailID,
			SenderID,
			ReceiverID,
			IDeaID, 
			EFrom,
			ETo,
			Date, 
			Subject, 
			Description,
			
			Remark1
          )
     VALUES
	 (
			@CmEmailID,
			@SendId,
			@SenderID,
			@IEmpId,
			@IdeaId, 
			@From,
			@EmailId, 
			@Date, 
			@Subject, 
			@EmailContent, 
			@Remark1
	 )
	 
	 update EmployeeSuggestion set Status = 'Forwarded To Manager' where IdeaId = @IdeaId
	 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerInBox_Insert_FrmDBM]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ManagerInBox_Insert_FrmDBM]
			@CmEmailID int,
			@SendId int,
--			SenderID   --HOdID DBM
			@SenderID varchar(50),
			--Receover Mail ID
			@IEmpId varchar(30),
			@IdeaId int,--IDeaID
			--form HodID DBM MailID DBMEmail
			@From varchar(max),
			--Receiver Mail ID
            @EmailId varchar(50),
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50)
            
           
AS          
BEGIN

	
	INSERT INTO ManagerEInbox
           (
			CmEmailID,
			SenderMailID,
			SenderID,
			ReceiverID,
			IdeaId, 
			EFrom,
			ETo,
			Date, 
			Subject, 
			Description,
			
			Remark1
          )
     VALUES
	 (
			@CmEmailID,
			@SendId,
			@SenderID,
			@IEmpId,
			@IdeaId, 
			@From,
			@EmailId, 
			@Date, 
			@Subject, 
			@EmailContent, 
			@Remark1
	 )
	 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerESend_AutoGen_MailId]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ManagerESend_AutoGen_MailId]


           
AS
BEGIN
	select isnull(max(SEmail_ID),0)+1 from ManagerESend




end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerEInbox_AutoGen_EmailID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ManagerEInbox_AutoGen_EmailID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from ManagerEInbox




end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerEInbox_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_ManagerEInbox_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from ManagerEInbox




end
GO
/****** Object:  StoredProcedure [dbo].[SP_ManagerDetail_Select_DDL]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ManagerDetail_Select_DDL]
	-- Add the parameters for the stored procedure here
		 
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
Select EmpId, Members from ManagerDetail




end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerDetail_Select_All_DDList]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ManagerDetail_Select_All_DDList]
@EmpName varchar(50)

           
AS
BEGIN

	Select EmpId, H.HEmployeeName,H.Email from ManagerDetail M, HOfficialDetail H where H.HEmployeeId = M.EmpId and H.HEmployeeName = @EmpName


end
GO
/****** Object:  StoredProcedure [dbo].[SP_ManagerDetail_Insert]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ManagerDetail_Insert]
	-- Add the parameters for the stored procedure here
		 @ManID int, 
		 @EmpId varchar(Max), 
		 @Members varchar(Max), 
		 @Department varchar(50), 
		 @ODepartment varchar(50), 
		 @Remark1 varchar(50)
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into ManagerDetail
	(ManID, EmpId, Members, Department, ODepartment, Remark1) 
	values
	(@ManID, @EmpId, @Members, @Department, @ODepartment, @Remark1)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_ManagerDetail_GridView]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ManagerDetail_GridView]
	-- Add the parameters for the stored procedure here
		
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select EmpId,Members,Department from ManagerDetail
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_ManagerDetail_Delete]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_ManagerDetail_Delete]
	-- Add the parameters for the stored procedure here
		  
		 @EmpId varchar(Max) 
		  
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	 
	delete from ManagerDetail where EmpId=@EmpId



end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManagerDetail_AutoGen_MaID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_ManagerDetail_AutoGen_MaID]


           
AS
BEGIN
	select isnull(max(ManID),0)+1 from ManagerDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_ManagerDetail_alter]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ManagerDetail_alter]
	-- Add the parameters for the stored procedure here
		  
		 @EmpId varchar(Max), 
		 @Members varchar(Max), 
		 @Department varchar(50), 
		 @ODepartment varchar(50) 
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	 
	
update ManagerDetail set Members=@Members,Department=@Department,ODepartment=@ODepartment where EmpId=@EmpId



declare @depid int = (select DepId from Department where DepName=@Department)
declare @desid int = (select DesId from DesignationDetail where DesName=@ODepartment)


update HOfficialDetail set HDepartmentID=@depid,HDesignationID=@desid where HEmployeeId=@EmpId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_manager_send_mail_OtherDepartment]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_manager_send_mail_OtherDepartment]
			@CmEmailID varchar(30),
			@IdeaId varchar(30),
			@SendId varchar(30),
			@From varchar(max),
			@IEmpId varchar(30),
--			SenderID   --HOdID DBM     
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50),
            @toEmail varchar(55)=null,
			@UserId varchar(25)
           
AS          
BEGIN

	
	--INSERT INTO ManagerESend
 --          (
	--		SEmail_ID,
	--		IdeaId,
	--		SendMID,
	--		EFrom,
	--		ETO,
	--		Date, 
	--		Subject, 
	--		Description,
			
	--		Remark1
 --         )
 --    VALUES
	-- (
	--		@CmEmailID ,
	--		@IdeaId ,
	--		@UserId ,
	--		@From ,
	--		@IEmpId,
	--		@Date ,
 --           @Subject,
 --           @EmailContent,
 --           @Remark1 
	-- )
	 
	 
	 declare @cmMail int=(select max(CmEmailID) from ManagerEInbox);
  insert into ManagerEInbox(CmEmailID,SenderMailID,SenderID,ReceiverID,IDeaID,EFrom,ETo,Date,Subject,Description,Type,Remark1)
      values (@cmMail,@CmEmailID,@UserId,@IEmpId,@IdeaId,@From,@toEmail,@Date,@Subject,@EmailContent,'Forward',@Remark1)

	 update ManagerEInbox set  Remark5='U' where ReceiverID=@UserId and  IDeaID=@IdeaId;
  update EmployeeSuggestion set Remark6='E',Status='Forward to Other Department' where IdeaId=@IdeaId;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_manager_send_mail_notFeasible]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_manager_send_mail_notFeasible]
			
			@IdeaId int
			
           
AS          
BEGIN

	update EmployeeSuggestion set Remark5='W',Status='Hold on HOD' where IdeaId=@IdeaId;
	
  update ManagerEInbox set Remark5='W' where IdeaId=@IdeaId;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_manager_send_mail_alreadyimpl]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_manager_send_mail_alreadyimpl]
			
			@IdeaId int
			
           
AS          
BEGIN

	 update ManagerEInbox set Remark5='C' where IdeaId=@IdeaId;
	
  update EmployeeSuggestion set Remark6='C',Status='Reject by HOD' where IdeaId=@IdeaId;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_manager_send_mail]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_manager_send_mail]
			@CmEmailID int,
			@IdeaId int,
			@SendId int,
			@From varchar(max),
			@IEmpId varchar(30),
--			SenderID   --HOdID DBM
			
            
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50),
            @Remark4 varchar (50)
           
AS          
BEGIN

	
	INSERT INTO ManagerESend
           (
			SEmail_ID,
			IdeaId,
			SendMID,
			EFrom,
			ETO,
			Date, 
			Subject, 
			Description,
			
			Remark1,
			Remark4
          )
     VALUES
	 (
			@CmEmailID ,
			@IdeaId ,
			@SendId ,
			@From ,
			@IEmpId,
			@Date ,
            @Subject,
            @EmailContent,
            @Remark1,
            @Remark4 
	 )
	 
  update EmployeeSuggestion set Remark6='E',Status='Forward to Implementation Team' where IdeaId=@IdeaId;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginHod_Select_Check]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LoginHod_Select_Check]
	-- Add the parameters for the stored procedure here
		   @HEmployeeId int
		   
         
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	Select HEmployeeId,HEmployeeName,Passwords from HOfficialDetail H where HEmployeeId = @HEmployeeId
	
  
      
           



end
GO
/****** Object:  StoredProcedure [dbo].[sp_LoginDetail_AutoGen_LoginID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_LoginDetail_AutoGen_LoginID]


           
AS
BEGIN
	select isnull(max(LoginId),0)+1 from LoginDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Login_Update_TimeOut]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_Login_Update_TimeOut]
	-- Add the parameters for the stored procedure here
		 
          
           
           @LoginId int,
           @OutTime varchar(50),
           @Remark1 varchar(50),
           @Remark2 varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	


    -- Insert statements for procedure here
    

	Update LoginDetail set OutTime=@OutTime,Remark1=@Remark1,Remark2=@Remark2 where LoginId = @LoginId
      
           



end
GO
/****** Object:  StoredProcedure [dbo].[SP_Login_Insert]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Login_Insert]
	-- Add the parameters for the stored procedure here
		 
          
           
           @Userid varchar(50),
           @UserName varchar(50),
           @DateTiming varchar(50),
           @OutTime varchar(50),
           @Remark1 varchar(50),
           @Remark2 varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	


    -- Insert statements for procedure here
    if(@Userid!='B2QBackEnd')
	Begin
	INSERT INTO LoginDetail
           
           (UserId,
           UserName,
           DateTiming,
           OutTime,           
           Remark1,
           Remark2)
     VALUES
           (
           @Userid,
           @UserName,
           @DateTiming,
           @OutTime,
           @Remark1,
           @Remark2)
      
           end
           else
           begin
           INSERT INTO BackEndLoginDetail
           
           (UserId,
           UserName,
           DateTiming,
           OutTime,           
           Remark1,
           Remark2)
     VALUES
           (
           @Userid,
           @UserName,
           @DateTiming,
           @OutTime,
           @Remark1,
           @Remark2)
           end



end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOTPRandomNum]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertOTPRandomNum] 
@Userid varchar(50),@RandomNum int
as
begin

if exists(select [EmpID] from ResetpasswordOTP where [EmpID]=@Userid)
begin

update ResetpasswordOTP set [OTPNum]=@RandomNum where [EmpID]=@Userid

end
else
begin

insert into ResetpasswordOTP values (@Userid,@RandomNum)
end

--if exists(select HEmployeeName from HOfficialDetail where HEmployeeId=@Userid)
--begin
--update HOfficialDetail set Passwords='1234' where HEmployeeId=@Userid

--end
--else
--begin
--update EmployeeDetail set Password='1234' where EmployeeId=@Userid

--end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_IMPLTeam_SendMailID_AutoGeneration]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_IMPLTeam_SendMailID_AutoGeneration]


           
AS
BEGIN
	select isnull(max(SEmail_ID),0)+1 from TeamESend




end
GO
/****** Object:  StoredProcedure [dbo].[sp_implTeam_send_mail]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_implTeam_send_mail]
			@CmEmailID int,
			@IdeaId int,
			
			@From varchar(max),
			@IEmpId varchar(30),
--			SenderID   --HOdID DBM
			
            
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50)
            
           
AS          
BEGIN

	
	INSERT INTO TeamESend
           (
			SEmail_ID,
			IdeaId,
			
			EFrom,
			ETO,
			Date, 
			Subject, 
			Description,
			
			Remark1
          )
     VALUES
	 (
			@CmEmailID ,
			@IdeaId ,
			
			@From ,
			@IEmpId,
			@Date ,
            @Subject,
            @EmailContent,
            @Remark1 
	 )
	 
  update EmployeeSuggestion set Remark6='F',Status='Forward to HOD' where IdeaId=@IdeaId;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_IMPLEmployeeDetail_Select_ByIdeaID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_IMPLEmployeeDetail_Select_ByIdeaID]
(@IdeaID varchar(50))

           
AS
BEGIN

if exists(Select H.EmployeeId, H.EmployeeName,H.Email from  EmployeeDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.EmployeeId)
begin
	--Select H.EmployeeId, H.EmployeeName,H.Email,hr.ApprovedUserAmt from  EmployeeDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.EmployeeId
	--																	left join HRESend hr on hr.IDeaID=es.IdeaId

create table #IMPL_GET_ID_admin_Email(IDEAID varchar(max),IMPL_ID varchar(max))
				create table #IMPL_GET_ID_admin_Name(IDEAID varchar(max),IMPL_ID varchar(max))
				create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID_admin
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID
				insert into #IMPL_GET_ID_admin_Name
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(ED.EmployeeName AS VARCHAR(MAX)) 
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID
				
				insert into #IMPL_GET_ID_admin_Email
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(ED.Email AS VARCHAR(MAX)) 
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID

	Select distinct idd.IDEAID, idd.IMPL_ID as ID,idn.IMPL_ID as Name,ide.IMPL_ID as Email ,hr.ApprovedImplAmt from  EmployeeDetail H 
																		inner join EmployeeSuggestion es on es.IdeaId = @IdeaID
																		left join HRESend hr on hr.IDeaID=es.IdeaId
																		--left join TeamEInbox te on te.IDeaID=es.IdeaId
																		left join #IMPL_GET_ID_admin idd on idd.IDEAID=es.IdeaId
																		left join #IMPL_GET_ID_admin_Name idn on idn.IDEAID=es.IdeaId
																		left join #IMPL_GET_ID_admin_Email ide on ide.IDEAID=es.IdeaId
																


end
else
begin
--Select H.HEmployeeId, H.HEmployeeName,H.Email,hr.ApprovedUserAmt from  HOfficialDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.HEmployeeId
--																		left join HRESend hr on hr.IDeaID=es.IdeaId

				create table #IMPL_GET_ID_admin_Email_HO(IDEAID varchar(max),IMPL_ID varchar(max))
				create table #IMPL_GET_ID_admin_Name_HO(IDEAID varchar(max),IMPL_ID varchar(max))
				create table #IMPL_GET_ID_admin_HO(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID_admin_HO
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))  
					   FROM TeamEInbox t2  , HOfficialDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.HEmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID
				insert into #IMPL_GET_ID_admin_Name_HO
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(ED.HEmployeeName AS VARCHAR(MAX)) 
					   FROM TeamEInbox t2  , HOfficialDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.HEmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID
				
				insert into #IMPL_GET_ID_admin_Email_HO
				SELECT distinct t1.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(ED.Email AS VARCHAR(MAX)) 
					   FROM TeamEInbox t2  , HOfficialDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.HEmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI where t1.IDeaID=@IdeaID

	Select distinct idd.IDEAID, idd.IMPL_ID as ID,idn.IMPL_ID as Name,ide.IMPL_ID as Email ,hr.ApprovedImplAmt from  HOfficialDetail H 
																		inner join EmployeeSuggestion es on es.IdeaId = @IdeaID
																		left join HRESend hr on hr.IDeaID=es.IdeaId
																		--left join TeamEInbox te on te.IDeaID=es.IdeaId
																		left join #IMPL_GET_ID_admin_HO idd on idd.IDEAID=es.IdeaId
																		left join #IMPL_GET_ID_admin_Name_HO idn on idn.IDEAID=es.IdeaId
																		left join #IMPL_GET_ID_admin_Email_HO ide on ide.IDEAID=es.IdeaId
																

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_Implementation_To_HOS_byCode]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Implementation_To_HOS_byCode]
	(
	@type nvarchar(25)=null,
	@usercode nvarchar(55)=null
	)
	as
	begin
	if(@usercode='admin')
	begin
	select hos.SL_No as sno,hos.Subject,hos.Description,hos.IDeaID, DATEDIFF(DAY,hos.Date,GETDATE()) as Datedif,d.DepName,ed.EmployeeName   FROM HOSEInbox hos inner join EmployeeDetail ed on hos.SenderID=ed.EmployeeId inner join Department d on  ed.DepartmentId=d.DepId inner join EmployeeSuggestion t2 on hos.IDeaID=t2.IdeaId where  t2.Remark6='F' order by hos.SL_No desc;
	end
	else
	begin
	
	--  SELECT SL_No as sno,Subject,Description,DATEDIFF(DAY,Date,GETDATE()) as Datedif  FROM HOSEInbox where ReceiverID=@usercode or ETo=@usercode
	select hos.SL_No as sno,hos.Subject,hos.Description,hos.IDeaID, DATEDIFF(DAY,hos.Date,GETDATE()) as Datedif,d.DepName,ed.EmployeeName   FROM HOSEInbox hos inner join EmployeeDetail ed on hos.SenderID=ed.EmployeeId inner join Department d on  ed.DepartmentId=d.DepId inner join EmployeeSuggestion t2 on hos.IDeaID=t2.IdeaId where  hos.ReceiverID=@usercode and  t2.Remark6='F'or hos.ETo=@usercode order by hos.SL_No desc;
	end
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_Implementation_team_Score_Update]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_Implementation_team_Score_Update]
  (
  @type nvarchar(25)=null,
  @empid nvarchar(25)=null,
  @ideaid nvarchar(25)=null,
  @grade nvarchar(25)=0,
  @extra nvarchar(25)=null
  )
  as
  begin
		update TeamEInbox set Remark2=@grade,Remark1='U',Remark3=@extra,Type=@type where ReceiverID=@empid and IDeaID=@ideaid;
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_HOSInBox_Insert_FrmIMPLTeam]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_HOSInBox_Insert_FrmIMPLTeam]
			@CmEmailID int,
			
--			SenderID   --HOdID DBM
			
			@IdeaId int,--IDeaID
			--form HodID DBM MailID DBMEmail
			@From varchar(max),
			--Receiver Mail ID
            @EmailId varchar(50),
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @HodId varchar(50),
            @SenderID varchar(50),
			--Receover Mail ID
			@IEmpId varchar(30),
			@FileUpload3 varchar(Max)
            
            
            
            
           
AS          
BEGIN

	
	INSERT INTO HOSEInbox
           (
			EmailID,
			IdeaId,
			EFrom,
			ETo,
			Date, 
			Subject, 
			Description,
			HODID,
			SenderID,
			ReceiverID
			 
			
          )
     VALUES
	 (
			@CmEmailID,
			@IdeaId,
			@From,
			@EmailId, 
			@Date, 
			@Subject, 
			@EmailContent, 
			@HodId,
			@SenderID,
			@IEmpId
	 )
	 
	 
	 update EmployeeSuggestion set FileUpload3=@FileUpload3 where IdeaId=@IdeaId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOSDetail_Select_DDL]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HOSDetail_Select_DDL]
	-- Add the parameters for the stored procedure here
	@SenderId varchar(50)	 
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	



--select ho.HEmployeeId,h.Members,ho.Email,hcc.Email as CCEMail  from HOSDetail h,credentials_Tables ct,HOfficialDetail ho,HOfficialDetail hcc where ct.Id='pi-286' and ct.HOSID=h.EmpId and ho.HEmployeeId=ct.HOSID and hcc.HEmployeeId='pi-286'
select ho.HEmployeeId,h.Members,ho.Email,hcc.Email as CCEMail  from HOSDetail h,credentials_Tables ct,HOfficialDetail ho,HOfficialDetail hcc where ct.Id=@SenderId and ct.HOSID=h.EmpId and ho.HEmployeeId=ct.HOSID and hcc.HEmployeeId=@SenderId

end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOSDASHBOARD]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_HOSDASHBOARD]
@ReceiverId varchar(20)
as
begin
if(@ReceiverId='admin')
		begin
				create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID_admin
				SELECT distinct HI.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI
				
				--GROUP BY IDeaID  


				--select * from #IMPL_GET_ID
					  select distinct es.IdeaId,es.IEmpId+' - '+isnull(ed.EmployeeName,hemp.HEmployeeName)as EmployeeName,d.DepName, CONVERT(VARCHAR(23),mi.Date,103) as Start,es.Subject,mi.ReceiverID as HOS_ID,hodpart.DepName as HOS_DEPT,
							imp.IMPL_ID as IMPL_Members, '' as IMPL_Name ,isnull(ti.Date,'Reject/Hold') as startdate,isnull(ts.Date,'Reject/Hold') as enddate,es.Status,es.Remark6,
							fd.Date as idea_enddate,DATEDIFF(day,es.date,fd.date) as totalday,DATEDIFF(day,ti.date,ts.date) as implementday,ts.Description
					   from EmployeeSuggestion es 
								left join TeamEInbox ti on es.IdeaId=ti.IDeaID
								left join TeamESend ts on es.IdeaId=ts.IdeaId
								inner join HOSEInbox mi on es.IdeaId=mi.IDeaID
								left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
								inner join Department d on d.DepId=es.IDepId
								left join HOfficialDetail hd on d.DepId=hd.HDepartmentID
								left join #IMPL_GET_ID_admin imp on imp.IDEAID=es.IdeaId
								left join FinanceDetail fd on fd.IdeaId=es.IdeaId
								left join HOfficialDetail hemp on hemp.HEmployeeId=es.IEmpId 
								left join HOfficialDetail hhod on hhod.HEmployeeId=mi.ReceiverID
								 left join Department hodpart on hodpart.DepId=hhod.HDepartmentID
						
		end
else
		begin


				create table #IMPL_GET_ID(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID
				SELECT distinct HI.IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 ,HOSEInbox HI
				where
				HI.ReceiverID=@ReceiverId and HI.IDeaID=t1.IDeaID
				--GROUP BY IDeaID  


				--select * from #IMPL_GET_ID
					  select distinct es.IdeaId,es.IEmpId+' - '+isnull(ed.EmployeeName,hemp.HEmployeeName)as EmployeeName,d.DepName, CONVERT(VARCHAR(23),mi.Date,103) as Start,es.Subject,mi.ReceiverID as HOS_ID,hodpart.DepName as HOS_DEPT,
							imp.IMPL_ID as IMPL_Members, '' as IMPL_Name ,isnull(ti.Date,'Reject/Hold') as startdate,isnull(ts.Date,'Reject/Hold') as enddate,es.Status,es.Remark6,
							fd.Date as idea_enddate,DATEDIFF(day,es.date,fd.date) as totalday,DATEDIFF(day,ti.date,ts.date) as implementday,ts.Description
					   from EmployeeSuggestion es 
								left join TeamEInbox ti on es.IdeaId=ti.IDeaID
								left join TeamESend ts on es.IdeaId=ts.IdeaId
								inner join HOSEInbox mi on es.IdeaId=mi.IDeaID
								left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
								inner join Department d on d.DepId=es.IDepId
								left join HOfficialDetail hd on d.DepId=hd.HDepartmentID
								left join #IMPL_GET_ID imp on imp.IDEAID=es.IdeaId
								left join FinanceDetail fd on fd.IdeaId=es.IdeaId
								left join HOfficialDetail hemp on hemp.HEmployeeId=es.IEmpId 
								left join HOfficialDetail hhod on hhod.HEmployeeId=mi.ReceiverID
								 left join Department hodpart on hodpart.DepId=hhod.HDepartmentID
						 where  mi.ReceiverID =@ReceiverId 
		 end
		 
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOS_update_Idea_info]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_HOS_update_Idea_info]
  (
  @type nvarchar(25)=null,
@IdeaId nvarchar(25)=null,
@empid nvarchar(25)=null
  )
  As
  begin
  update HOSEInbox set Remark5='U' where ReceiverID=@empid and IDeaID=@IdeaId;
  update EmployeeSuggestion set Remark6='G',Status='Forward to Beneficiary' where IdeaId=@IdeaId;
  end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOS_Mail_Send]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[SP_HOS_Mail_Send](
       @SenderMailID nvarchar(50)=null
      ,@SenderID nvarchar(50)=null
      ,@ReceiverID nvarchar(50)=null
      ,@IDeaID nvarchar(50)=null
      ,@EFrom nvarchar(50)=null
      ,@ETo nvarchar(50)=null
      ,@Subject nvarchar(50)=null
      ,@Description nvarchar(50)=null
      ,@Type nvarchar(50)=null
      --,@Days nvarchar(50)=null
      ,@Rating nvarchar(50)=null
      ,@Comment nvarchar(50)=null
      ,@Remark2 nvarchar(50)=null
      ,@Grade nvarchar(50)=null
      ,@BenefitsMatrix nvarchar(50)=null
	  ,@date nvarchar(25)=null
      )
	  as
	  begin
		declare @CmEmailID nvarchar(50)=(select isnull(max(CmEmailID),0)+1 from BeneficiaryEInbox);

		declare @daysCount int=(select DATEDIFF(DAY,@date,GETDATE()));

		declare @sendID int=(SELECT top 1 SL_No  from HOfficialDetail where Email=@SenderMailID);
 
       insert into BeneficiaryEInbox(CmEmailID,SenderMailID,SenderID,ReceiverID,IDeaID,EFrom,ETo,Date,Subject,Description,Type,Days,Rating,Comment,Remark2,Grade,BenefitsMatrix,Remark5)
		values
		(@CmEmailID,@sendID,@SenderID,@ReceiverID,@IDeaID,@EFrom,@ETo,getdate(),@Subject,@Description,@Type,@daysCount,@Rating,@Comment,@Remark2,@Grade,@BenefitsMatrix,'i');
	  end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOS_Mail_getBySno]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SP_HOS_Mail_getBySno]
	(
	@type nvarchar(25)=null,
	@sno nvarchar(25)=0
	)
	as
	begin
	if(@type='header')
		begin
		if exists(select
	DB.SL_No AS MailID, DB.Date AS FromDate, 
	 (select top 1 EmployeeName from EmployeeDetail where EmployeeId = DB.SenderID order by SL_No desc) AS NewFrom,
	--ED.EmployeeName,
	DB.ReceiverID AS ToEmpID,
	D.DepName AS Department, 
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content, 
	ES.IdeaId AS IDeaID,  
	ED.EmployeeId AS IDeaEmpID,  
	ED.EmployeeName AS IDeaEmpName, 
    D.DepName AS EmpDepartment,  
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3 from HOSEInbox DB inner join EmployeeSuggestion ES on DB.IDeaID=ES.IdeaId  inner join EmployeeDetail ED on ED.EmployeeId = ES.IEmpId  and ES.IdeaId = DB.IdeaId inner join DesignationDetail DD on DD.DesId = ED.DesignationId inner join Department D on ED.DepartmentId=D.DepId where DB.SL_No=@sno)
	
	begin	
		select
	DB.SL_No AS MailID, DB.Date AS FromDate, 
	 (select top 1 EmployeeName from EmployeeDetail where EmployeeId = DB.SenderID order by SL_No desc) AS NewFrom,
	--ED.EmployeeName,
	DB.ReceiverID AS ToEmpID,
	D.DepName AS Department, 
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content, 
	ES.IdeaId AS IDeaID,  
	ED.EmployeeId AS IDeaEmpID,  
	ED.EmployeeName AS IDeaEmpName, 
    D.DepName AS EmpDepartment,  
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3 from HOSEInbox DB inner join EmployeeSuggestion ES on DB.IDeaID=ES.IdeaId  inner join EmployeeDetail ED on ED.EmployeeId = ES.IEmpId  and ES.IdeaId = DB.IdeaId inner join DesignationDetail DD on DD.DesId = ED.DesignationId inner join Department D on ED.DepartmentId=D.DepId where DB.SL_No=@sno
	end
	
	else
	begin
		select
	DB.SL_No AS MailID, DB.Date AS FromDate, 
	 (select top 1 EmployeeName from EmployeeDetail where EmployeeId = DB.SenderID order by SL_No desc) AS NewFrom,
	--ED.EmployeeName,
	DB.ReceiverID AS ToEmpID,
	D.DepName AS Department, 
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content, 
	ES.IdeaId AS IDeaID,  
	ED.HEmployeeId AS IDeaEmpID,  
	ED.HEmployeeName AS IDeaEmpName, 
    D.DepName AS EmpDepartment,  
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	
	
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3 from HOSEInbox DB inner join EmployeeSuggestion ES on DB.IDeaID=ES.IdeaId  inner join HOfficialDetail ED on ED.HEmployeeId = ES.IEmpId  and ES.IdeaId = DB.IdeaId inner join DesignationDetail DD on DD.DesId = ED.HDesignationID inner join Department D on ED.HDepartmentId=D.DepId where DB.SL_No=@sno
	end
	
	
	
	 		end
	else
		begin
			--SELECT distinct ROW_NUMBER() OVER (ORDER BY t1.ReceiverId) AS [sno],t1.ReceiverId,ED.EmployeeName,t1.IDeaID,t1.ETo,d.DepName,t1.Date,t2.Date,DATEDIFF(DAY,t1.Date,t2.Date) as Datedif
--  FROM TeamEInbox t1 inner join HOSEInbox t2 on t1.IDeaID=t2.IDeaID inner join EmployeeDetail ED on Ed.EmployeeId=t1.ReceiverID inner join Department D on ed.DepartmentId=d.DepId where t1.ideaid=@sno and t1.Remark1='i'
create TABLE #SP_HOS_Mail_getBySno_tempt(
	[sno] [int] IDENTITY(1,1) NOT NULL,
	  [ReceiverId] [varchar](50) NOT NULL,
	EmployeeName varchar (50),
	[IDeaID] [int] NULL,
	[ETo] [varchar](max) NULL,
	DepName varchar(50),
	[Date] [varchar](50) NULL,
	[DateTo] [varchar](50) NULL,
	[Datedif] [varchar](50) NULL,
)

--select * from #SP_HOS_Mail_getBySno_temp
insert into #SP_HOS_Mail_getBySno_tempt
	(
	
	ReceiverId,
	EmployeeName,
	IDeaID ,
	
	ETo ,
	DepName,
	
	Date ,
	DateTo,
	Datedif
	
	)
		SELECT distinct t1.ReceiverId ,ED.EmployeeName ,t1.IDeaID,t1.ETo,d.DepName,t1.Date,t2.Date,DATEDIFF(DAY,t1.Date,t2.Date) as Datedif
  FROM TeamEInbox t1, HOSEInbox t2,EmployeeDetail ED,Department D where t1.IDeaID=t2.IDeaID and Ed.EmployeeId=t1.ReceiverID and ed.DepartmentId=d.DepId and t1.IDeaID=@sno and t1.Remark1='i'


select * from #SP_HOS_Mail_getBySno_tempt
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDetails_SelectPassword_HEmpID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HODDetails_SelectPassword_HEmpID]
	-- Add the parameters for the stored procedure here
			@HEmployeeId varchar(50),
			@count int=null
			
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
    if(@HEmployeeId !='B2QBackEnd')
	Begin
	
	
	if exists(Select * From HOfficialDetail WHERE HEmployeeId = @HEmployeeId)
		begin
			 Select Passwords, HEmployeeName,Email,'staff',Remark3,Remark1  From HOfficialDetail WHERE HEmployeeId = @HEmployeeId
		end
		else if exists(select E.Password,E.EmployeeName,E.Email,'com',E.Remark3,E.Remark1 from EmployeeDetail E,CommitteeDetail C where EmployeeId = @HEmployeeId and C.EmpId=E.EmployeeId)
		begin
			 select E.Password,E.EmployeeName,E.Email,'com',E.Remark3,E.Remark1 from EmployeeDetail E,CommitteeDetail C where EmployeeId = @HEmployeeId and C.EmpId=E.EmployeeId		
		end
	
	else
		begin
			 select Password,EmployeeName,Email,'empl',Remark3,Remark1 from EmployeeDetail where EmployeeId = @HEmployeeId		
		end
	end
   else
		begin
			Select Password, BackEnd,'bkuser' from BackEndOperation where BackEnd=@HEmployeeId
		end
   
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDetails_Select_HEmpID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HODDetails_Select_HEmpID]
	-- Add the parameters for the stored procedure here
			@HEmployeeId varchar(50)
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if exists(
    Select H.SL_No, H.HEmployeeId, 
    H.HEmployeeName, D.DepName, DD.DesName , 
    H.Email, H.Passwords, H.HDepartmentID, 
    H.HDesignationID  From 
    HOfficialDetail H, Department D, 
    DesignationDetail DD WHERE 
    D.DepId = H.HDepartmentID and 
    DD.DesId = H.HDesignationID and 
    H.HEmployeeId = @HEmployeeId)
    begin
    Select H.SL_No, H.HEmployeeId, 
    H.HEmployeeName, D.DepName, DD.DesName , 
    H.Email, H.Passwords, H.HDepartmentID, 
    H.HDesignationID  From 
    HOfficialDetail H, Department D, 
    DesignationDetail DD WHERE 
    D.DepId = H.HDepartmentID and 
    DD.DesId = H.HDesignationID and 
    H.HEmployeeId = @HEmployeeId
    end
    else
    begin
    Select H.SL_No, H.EmployeeId, 
    H.EmployeeName, D.DepName, DD.DesName , 
    H.Email, H.Password, H.DepartmentID, 
    H.DesignationID  From 
    EmployeeDetail H, Department D, 
    DesignationDetail DD WHERE 
    D.DepId = H.DepartmentID and 
    DD.DesId = H.DesignationID and 
    H.EmployeeId = @HEmployeeId
   end
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee_by_employeeID]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee_by_employeeID]
	-- Add the parameters for the stored procedure here
			@empID varchar(max)
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    Select top 1 D.DepId, D.DepName, H.HDepartmentID, H.HEmployeeName, H.Email, H.HEmployeeId From HOfficialDetail H, Department D WHERE H.HEmployeeId = @empID and H.HDepartmentID = D.DepId
   
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee]
	-- Add the parameters for the stored procedure here
			@DepName varchar(max)
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
   --Select D.DepId, D.DepName, H.HDepartmentID, H.HEmployeeName, H.Email, H.HEmployeeId From HOfficialDetail H, Department D,CommitteeDetail c WHERE D.DepName =c.Department and H.HDepartmentID = D.DepId and c.ODepartment=@DepName and c.EmpId=h.HEmployeeId
    
 if exists(Select D.DepId, D.DepName, H.HDepartmentID, H.HEmployeeName, H.Email, H.HEmployeeId From HOfficialDetail H, Department D,CommitteeDetail c WHERE D.DepName =c.Department and H.HDepartmentID = D.DepId and c.ODepartment=@DepName and c.EmpId=h.HEmployeeId)
 begin 
 Select D.DepId, D.DepName, H.HDepartmentID, H.HEmployeeName, H.Email, H.HEmployeeId From HOfficialDetail H, Department D,CommitteeDetail c WHERE D.DepName =c.Department and H.HDepartmentID = D.DepId and c.ODepartment=@DepName and c.EmpId=h.HEmployeeId
 end
 else
 begin
 Select D.DepId, D.DepName, H.DepartmentID, H.EmployeeName, H.Email, H.EmployeeId From EmployeeDetail H, Department D,CommitteeDetail c WHERE D.DepName =c.Department and H.DepartmentID = D.DepId and c.ODepartment=@DepName and c.EmpId=h.EmployeeId
 end
 
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDetails_Insert]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HODDetails_Insert]
	-- Add the parameters for the stored procedure here
		   @HEmployeeId varchar(30),
           @HEmployeeName varchar(50),
           @HDepartmentID int,
           @HDesignationID int,
           @Email varchar(50),
           @PhoneNo varchar(50),
           @Password varchar(50),
           @Remark1 varchar(50),
           @Remark2 varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO HOfficialDetail
           (HEmployeeId,
           HEmployeeName,
           HDepartmentID,
           HDesignationID,
           Email,
           PhoneNo,
           Passwords,
           Remark1,
           Remark2)
     VALUES
           (
           @HEmployeeId,
           @HEmployeeName,
           @HDepartmentID,
           @HDesignationID,
           @Email,
           @PhoneNo,
           @Password,
           @Remark1,
           @Remark2)
           
           
           Insert into EmpTableDetail(EMPLOYEEID,EMPTABLE)
           values
           (@HEmployeeId,'HOD')
end
GO
/****** Object:  StoredProcedure [dbo].[SP_HODDASHBOARD]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_HODDASHBOARD]
@ReceiverId varchar(20)
as
begin
if(@ReceiverId='admin')
		begin
				create table #IMPL_GET_ID_admin(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID_admin
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 

				GROUP BY IDeaID  

				 select distinct es.IdeaId,es.IEmpId+' - '+isnull(ed.EmployeeName,hemp.HEmployeeName)as EmployeeName,d.DepName, CONVERT(VARCHAR(23),mi.Date,103) as Start,es.Subject,mi.ReceiverID as HOD_ID,hodpart.DepName as HOD_DEPT,
							isnull(imp.IMPL_ID,'Reject/Hold') as IMPL_Members, '' as IMPL_Name ,isnull(ti.Date,'Reject/Hold') as startdate,isnull(ts.Date,'Reject/Hold') as enddate,es.Status,es.Remark6,
							fd.Date as idea_enddate,DATEDIFF(day,es.date,fd.date) as totalday,DATEDIFF(day,ti.date,ts.date) as implementday
					   from EmployeeSuggestion es 
								left join TeamEInbox ti on es.IdeaId=ti.IDeaID
								left join TeamESend ts on es.IdeaId=ts.IdeaId
								inner join ManagerEInbox mi on es.IdeaId=mi.IDeaID
								left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
								inner join Department d on d.DepId=es.IDepId
								left join HOfficialDetail hd on d.DepId=hd.HDepartmentID
								left join #IMPL_GET_ID_admin imp on imp.IDEAID=es.IdeaId
								left join FinanceDetail fd on fd.IdeaId=es.IdeaId
								left join HOfficialDetail hemp on hemp.HEmployeeId=es.IEmpId 
								left join HOfficialDetail hhod on hhod.HEmployeeId=mi.ReceiverID
								 left join Department hodpart on hodpart.DepId=hhod.HDepartmentID
		

		end

else
		begin


				create table #IMPL_GET_ID(IDEAID varchar(max),IMPL_ID varchar(max))
				insert into #IMPL_GET_ID
				SELECT distinct IDeaID,  
				Implement_Members_ID=STUFF  
				(  
					 (  
					   SELECT DISTINCT ', ' + CAST(t2.ReceiverID AS VARCHAR(MAX))+'-'+ED.EmployeeName  
					   FROM TeamEInbox t2  , EmployeeDetail ED 
					   WHERE t2.IDeaID = t1.IDeaID   and t2.ReceiverID=ED.EmployeeId
					   FOR XML PATH('')  
					 ),1,1,''  
				)  


				FROM TeamEInbox t1 
				where
				t1.SenderID=@ReceiverId
				GROUP BY IDeaID  


				--select * from #IMPL_GET_ID
					  select distinct es.IdeaId,es.IEmpId+' - '+isnull(ed.EmployeeName,hemp.HEmployeeName)as EmployeeName,d.DepName, CONVERT(VARCHAR(23),mi.Date,103) as Start,es.Subject,mi.ReceiverID as HOD_ID,hodpart.DepName as HOD_DEPT,
							imp.IMPL_ID as IMPL_Members, '' as IMPL_Name ,isnull(ti.Date,'Reject/Hold') as startdate,isnull(ts.Date,'Reject/Hold') as enddate,es.Status,es.Remark6,
							fd.Date as idea_enddate,DATEDIFF(day,es.date,fd.date) as totalday,DATEDIFF(day,ti.date,ts.date) as implementday
					   from EmployeeSuggestion es 
								left join TeamEInbox ti on es.IdeaId=ti.IDeaID
								left join TeamESend ts on es.IdeaId=ts.IdeaId
								inner join ManagerEInbox mi on es.IdeaId=mi.IDeaID
								left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
								inner join Department d on d.DepId=es.IDepId
								left join HOfficialDetail hd on d.DepId=hd.HDepartmentID
								left join #IMPL_GET_ID imp on imp.IDEAID=es.IdeaId
								left join FinanceDetail fd on fd.IdeaId=es.IdeaId
								left join HOfficialDetail hemp on hemp.HEmployeeId=es.IEmpId 
								left join HOfficialDetail hhod on hhod.HEmployeeId=mi.ReceiverID
								 left join Department hodpart on hodpart.DepId=hhod.HDepartmentID
						 where  mi.ReceiverID =@ReceiverId 
		 end
		 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_HOD_DDL]    Script Date: 10/03/2020 11:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SP_HOD_DDL]
	 (
	 @type nvarchar(25)=null
	 )
	 as
	 begin
		
  select distinct t1.HEmployeeName+' - '+t2.Department as Name,t1.Email+' - '+t1.HEmployeeId as SL_No from HOfficialDetail t1 inner join HOSDetail t2 on t1.HEmployeeId=t2.EmpId 
		--select distinct t1.HEmployeeName+' - '+t2.DepName as Name,t1.Email+' - '+t1.HEmployeeId as SL_No from HOfficialDetail t1 inner join Department t2 on t1.HDepartmentID=t2.DepId where t1.HDesignationID=6
	 end
GO
/****** Object:  StoredProcedure [dbo].[SP_Hod_Dashboard]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Hod_Dashboard]
	 @ReceiverID varchar(20),
	 @type nvarchar(25)
	
AS
BEGIN
   if(@type='counts')
		BEGIN
		if(@ReceiverID='admin')
		begin
				declare @newadmin int=(Select COUNT(*)from ManagerEInbox C where C.Remark5 is null and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @rejectadmin int=(Select COUNT(*)from ManagerEInbox C where C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @approvedadmin int=(select COUNT(*) from ManagerEInbox C, EmployeeSuggestion E  where E.Remark6='K' and c.IDeaID=E.IdeaId);
				declare @totaladmin int=(select COUNT(*) from ManagerEInbox )

				select @newadmin,@rejectadmin,@approvedadmin,@totaladmin
		end
		else
		begin
		
		
				declare @new int=(Select COUNT(*)from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 is null and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @reject int=(Select COUNT(*)from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @approved int=(select COUNT(*) from ManagerEInbox C, EmployeeSuggestion E  where C.ReceiverID=@ReceiverID and E.Remark6='K' and c.IDeaID=E.IdeaId);
				declare @total int=(select COUNT(*) from ManagerEInbox where ReceiverID=@ReceiverID)

				select @new,@reject,@approved,@total
				end
		END
ELSE
		BEGIN
		if(@ReceiverID='admin')
		begin
				declare @newHosadmin int=(Select COUNT(*)from HOSEInbox C where  C.Remark5 is null and C.IDeaID  not in(select IDeaID from BeneficiaryEInbox));
				--declare @rejectHos int=(Select COUNT(*)from HOSEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @approvedHosadmin int=(select COUNT(*) from HOSEInbox C, EmployeeSuggestion E  where E.Remark6='K' and c.IDeaID=E.IdeaId);
				declare @totalHosadmin int=(select COUNT(*) from HOSEInbox)

				select @newHosadmin,@approvedHosadmin,@totalHosadmin
		end
		else
		begin
		
				declare @newHos int=(Select COUNT(*)from HOSEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 is null and C.IDeaID  not in(select IDeaID from BeneficiaryEInbox));
				--declare @rejectHos int=(Select COUNT(*)from HOSEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox));
				declare @approvedHos int=(select COUNT(*) from HOSEInbox C, EmployeeSuggestion E  where C.ReceiverID=@ReceiverID and E.Remark6='K' and c.IDeaID=E.IdeaId);
				declare @totalHos int=(select COUNT(*) from HOSEInbox where ReceiverID=@ReceiverID)

				select @newHos,@approvedHos,@totalHos
				end
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_HeadOffcer_Select_All]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_HeadOffcer_Select_All]


           
AS
BEGIN
	
	SELECT H.HEmployeeId,
      H.HEmployeeName,
      D.DepName,
      H.Email,
      H.PhoneNo
      
      
  FROM HOfficialDetail H, Department D where D.DepId = H.HDepartmentID




end
GO
/****** Object:  StoredProcedure [dbo].[SP_FinanceEvalSend_SelectGridView_MailSendID_FinanceDetail]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FinanceEvalSend_SelectGridView_MailSendID_FinanceDetail]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--SELECT E.HEmployeeId as New,E.HEmployeeName  as NewFrom,H.Date,T1.IDeaID, T1.Type, T1.HOSGrade,T1.HOSBM,T1.BENGrade,T1.BENBM FROM HRESend T1 INNER JOIN EmployeeSuggestion H ON T1.IDeaID=H.IdeaId inner join HOfficialDetail E on T1.SenderID=E.HEmployeeId

	select isnull(ed.EmployeeId+'-'+ed.EmployeeName,ho.HEmployeeId+'-'+ho.HEmployeeName)as New,convert(varchar(30),convert(date,hr.Date,101),101)as Date,hr.IDeaID,hr.Type,hr.BENGrade,hr.BENBM,
				hr.ApprovedUser,hr.ApprovedUserAmt,hr.ApprovedImpl,hr.ApprovedImplAmt from HRESend hr left join EmployeeSuggestion es on es.IdeaId=hr.IDeaID
						left join EmployeeDetail ed on ed.EmployeeId=es.IEmpId
						left join HOfficialDetail ho on ho.HEmployeeId=es.IEmpId
	
	order by hr.SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_FinanceEvalSend_SelectGridView_MailSendID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FinanceEvalSend_SelectGridView_MailSendID]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
SELECT E.HEmployeeId as New,E.HEmployeeName  as NewFrom,
		H.Date,T1.IDeaID, T1.Type, T1.HOSGrade,T1.HOSBM,T1.BENGrade,T1.BENBM FROM BeneficiaryESend T1 
				INNER JOIN EmployeeSuggestion H ON T1.IDeaID=H.IdeaId inner join HOfficialDetail E on T1.SenderID=E.HEmployeeId
	
	
	order by T1.SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmpTableDetail_Search_EmployeeDetail]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EmpTableDetail_Search_EmployeeDetail]
@EmpID varchar(Max),
@IDType varchar(max)=null

           
AS
BEGIN

Set @IDtype = (select EmpTable from EmpTableDetail E where EMPLOYEEID=@EmpID)
	IF (@IDType='HOD')
	Begin
	Select H.HEmployeeId, H.HEmployeeName, H.HDepartmentID, H.HDesignationID,D.DepName,DD.DesName,H.Email From HOfficialDetail H, Department D, DesignationDetail DD where D.DepId = H.HDepartmentID and DD.DesId = H.HDesignationID and H.HEmployeeId = @EmpID
	
	end
	else
	begin
	
	Select E.EmployeeId, E.EmployeeName,E.DepartmentId,E.DepartmentId, D.DepName, DD.DesName From EmployeeDetail E, Department D, DesignationDetail DD where D.DepId = E.DepartmentId and DD.DesId = E.DesignationId and E.EmployeeId = @EmpID
	
	end




end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_IMPLTeam]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_IMPLTeam]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
  select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	TeamEInbox C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from HOSEInbox)
	union
	select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	TeamEInbox C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from HOSEInbox)
	
	 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_HOS]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_HOS]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
  	select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	HOSEInbox C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from BeneficiaryEInbox)
	union
	select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	HOSEInbox C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from BeneficiaryEInbox)
	
	 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_HOD]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_HOD]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
    select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	ManagerEInbox C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and  E.Remark6!='C' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from TeamEInbox)
	union
	  select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	ManagerEInbox C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and  E.Remark6!='C' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from TeamEInbox)
	
	
	
	 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_FIN]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_FIN]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
	select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	HRESend C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from FinanceDetail)
	
	union
	select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	HRESend C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from FinanceDetail)
	


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_BEN]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials_BEN]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
  select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	BeneficiaryEInbox C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from BeneficiaryESend)
	union
	  select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
  DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	BeneficiaryEInbox C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from BeneficiaryESend)
	
	
	 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Sent_by_Officials]
 @type nvarchar(25)=null
		 
           
AS
BEGIN
  
    select distinct E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
    DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED,
	CommitteeEvalEInbox C
	
	where 
	
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6!='N' and  E.Remark6!='C' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from ManagerEInbox)
	
		union
	 select distinct E.IdeaId, ED.HEmployeeId as EmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
    DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED,
	CommitteeEvalEInbox C
	
	where 
	
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6!='N' and  E.Remark6!='C' and
	C.IDeaID=E.IdeaId and
	C.IDeaID not in(select IDeaID from ManagerEInbox)
	 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Mailing_IdeaID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Mailing_IdeaID]
	-- Add the parameters for the stored procedure here
		 @IdeaID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if exists(	
		select ED.EmployeeId, ED.EmployeeName,D.DepName, DD.DesName, 
		E.Date, E.Category, E.Subject, E.Before,E.After, E.Benefits, 
		E.Status,E.FileUpload1,E.FileUpload2,E.FileUpload3,E.Status
		from 
		EmployeeSuggestion E, 
		Department D, 
		DesignationDetail DD, 
		EmployeeDetail ED 
		where 
		ED.EmployeeId = E.IEmpId and 
		D.DepId = Ed.DepartmentId and 
		Dd.DesId = ED.DesignationId and 
		E.IdeaId = @IdeaID)
	begin
		select ED.EmployeeId, ED.EmployeeName,D.DepName, DD.DesName, 
		CONVERT(VARCHAR(23),E.Date,103) as Date, E.Category, E.Subject, E.Before,E.After, E.Benefits, 
		E.Status,E.FileUpload1,E.FileUpload2,E.FileUpload3,TS.Description
		from 
		EmployeeSuggestion E left join TeamESend TS on E.IdeaId=TS.IdeaId, 
		Department D, 
		DesignationDetail DD, 
		EmployeeDetail ED
		 
		where 
		ED.EmployeeId = E.IEmpId and 
		D.DepId = Ed.DepartmentId and 
		Dd.DesId = ED.DesignationId and 
		E.IdeaId = @IdeaID 
		
		
 update ManagerEInbox set Remark2='x' where IDeaID=@IdeaID 
		
	end
else
	begin
		select ED.HEmployeeId, ED.HEmployeeName,D.DepName, DD.DesName, 
		CONVERT(VARCHAR(23),E.Date,103) as Date, E.Category, E.Subject, E.Before,E.After, E.Benefits, 
		E.Status,E.FileUpload1,E.FileUpload2,E.FileUpload3,TS.Description
		from 
		EmployeeSuggestion E left join TeamESend TS on E.IdeaId=TS.IdeaId, 
		Department D, 
		DesignationDetail DD, 
		HOfficialDetail ED 
		 
		where 
		ED.HEmployeeId = E.IEmpId and 
		D.DepId = Ed.HDepartmentId and 
		Dd.DesId = ED.HDesignationId and 
		E.IdeaId = @IdeaID 
		
		update ManagerEInbox set Remark2='x' where IDeaID=@IdeaID 
		
	end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_EmpDateWise_EmployeeDefaultForm]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_EmpDateWise_EmployeeDefaultForm]
	-- Add the parameters for the stored procedure here
		 @EmployeeID varchar(50),
		 @Fromdate Date,
		 @Todate Date
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status  
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED 
	where 
	E.IEmpId = @EmployeeID and
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and
	Date between @Fromdate and @Todate
	order by E.SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select_Admin]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select_Admin]
	-- Add the parameters for the stored procedure here
		
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 if exists(
	select E.IdeaId, ED.HEmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED
	where 
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6='N')
	
begin
	
	
	

	select E.IdeaId, ED.HEmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED
	where 
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6='N'
	
	union
	select E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED
	where 
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6='N'
	order by E.Date desc
end
else
begin
	
	select E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED
	where 
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6='N'
	order by E.SL_No Desc 
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Select]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Select]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 if exists(
	select E.IdeaId, ED.HEmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED
	where 
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6='N')
	
begin
	
	
	

	select E.IdeaId, ED.HEmployeeId, 
	ED.HEmployeeName as EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, HOfficialDetail ED
	where 
	ED.HEmployeeId = E.IEmpId and 
	D.DepId = Ed.HDepartmentId and 
	Dd.DesId = ED.HDesignationId and E.Remark6='N'
	
	union
	select E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED
	where 
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6='N'
	order by E.Date desc
end
else
begin
	
	select E.IdeaId, ED.EmployeeId, 
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Subject, E.Before, E.After, E.Status,
	DATEDIFF(DAY,E.Date,GETDATE()) as Datedif 
	from 
	EmployeeSuggestion E, Department D, 
	DesignationDetail DD, EmployeeDetail ED
	where 
	ED.EmployeeId = E.IEmpId and 
	D.DepId = Ed.DepartmentId and 
	Dd.DesId = ED.DesignationId and E.Remark6='N'
	order by E.SL_No Desc 
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeSuggestion_Insert]
	-- Add the parameters for the stored procedure here
		 @IdeaId int, 
		 @Date Date,
		 @IDepId int, 
		 @IDesId int,
		 @IEmpId varchar(30), 
		 @Subject varchar(Max),
		 @Benefits varchar(Max),
		 @Category varchar(Max),
		 @Before varchar(Max),
		 @After varchar(Max),
		 @FileUpload1 varchar(Max), 
		 @FileUpload2 varchar(Max),
		 @FileUpload3 varchar(Max),
		 @Status varchar(50), 
		 @Approved varchar(50), 
		 @Remark2 varchar(50),
		 @Remark3 varchar(50),
		 @Remark4 varchar(50)
		 
		 
		 
		 
		
		 
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into EmployeeSuggestion 
	(IdeaId, 
	Date, 
	IDepId, 
	IDesId, 
	IEmpId, 
	Subject, 
	Benefits, 
	Category, 
	Before, 
	After, 
	FileUpload1, 
	FileUpload2, 
	FileUpload3, 
	Status, 
	Approved, 
	Remark2, 
	Remark3, 
	Remark4,
	Remark6,
	Remark5) 
	values 
	(@IdeaId, 
	@Date, 
	@IDepId, 
	@IDesId, 
	@IEmpId, 
	@Subject, 
	@Benefits, 
	@Category, 
	@Before, 
	@After, 
	@FileUpload1, 
	@FileUpload2, 
	@FileUpload3, 
	@Status, 
	@Approved, 
	@Remark2, 
	@Remark3, 
	@Remark4,
	'N',
	'EMP')



end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeSuggestion_DBM_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_EmployeeSuggestion_DBM_Insert]
	-- Add the parameters for the stored procedure here
		 @IdeaId int, 
		 @Date Date,
		 @IDepId int, 
		 @IDesId int,
		 @IEmpId varchar(30), 
		 @Subject varchar(Max),
		 @Benefits varchar(Max),
		 @Category varchar(Max),
		 @Before varchar(Max),
		 @After varchar(Max),
		 @FileUpload1 varchar(Max), 
		 @FileUpload2 varchar(Max),
		 @FileUpload3 varchar(Max),
		 @Status varchar(50), 
		 @Approved varchar(50), 
		 @Remark2 varchar(50),
		 @Remark3 varchar(50),
		 @Remark4 varchar(50)
		 
		 
		 
		 
		
		 
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into EmployeeSuggestion 
	(IdeaId, 
	Date, 
	IDepId, 
	IDesId, 
	IEmpId, 
	Subject, 
	Benefits, 
	Category, 
	Before, 
	After, 
	FileUpload1, 
	FileUpload2, 
	FileUpload3, 
	Status, 
	Approved, 
	Remark2, 
	Remark3, 
	Remark4,
	Remark6,
	Remark5) 
	values 
	(@IdeaId, 
	@Date, 
	@IDepId, 
	@IDesId, 
	@IEmpId, 
	@Subject, 
	@Benefits, 
	@Category, 
	@Before, 
	@After, 
	@FileUpload1, 
	@FileUpload2, 
	@FileUpload3, 
	@Status, 
	@Approved, 
	@Remark2, 
	@Remark3, 
	@Remark4,
	'N',
	'DB')



end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased_Reset]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased_Reset]
as
begin
declare @length int;
declare @result int;
declare @check int;
create table #countsIdeaid
	(
	id int identity(1,1),
	ideaid int default 0
	);
insert into #countsIdeaid select IdeaID from EmployeeSuggestion where Remark5='DB'

set @length=(select max(IdeaId) from EmployeeSuggestion where IdeaId<=1000 and Remark5='EMP')

set @result=@length;
	if(@length!=999)
		begin
			if(@length<205)
				begin
					set @result=205
				end
				else
					begin
						set @result=@result+1;
						CheckExist:
						if exists(select ideaid from #countsIdeaid where ideaid=@result)
						begin
						set @result =@result + 1;
							if exists(select ideaid from #countsIdeaid where ideaid=@result)
							begin
								set @result =@result + 1;
								goto CheckExist;
							end
						end
					end
		end
	else
		begin
			set @length=(select max(IdeaId) from EmployeeSuggestion where IdeaId>=1000 and Remark5='EMP')
			set @result=@length;
			set @result=@result+1;
			
			if exists(select ideaid from #countsIdeaid where ideaid=@result)
			begin
			set @result =@result + 1
			end
		end	
 select @result
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased]
            
AS
BEGIN
	declare @result int;
	declare @sno int;
	declare @compareValue int;
	declare @rowCout int=0;
	create table #countsIdeaid
	(
	id int identity(1,1),
	ideaid int default 0
	);
	
	
	declare @tablecount int=(select count(*) from #countsIdeaid);
	 
	insert into #countsIdeaid select IdeaId  from EmployeeSuggestion where Remark5='DB' order by IdeaId asc;  -- un ordered one

	set @result=(select isnull(max(IdeaId),0)+1 from EmployeeSuggestion where Remark5='EMP')  -- ordered one
	
	if(@result=1)
		begin
			set @result='205';
		end
	if exists(select * from EmployeeSuggestion where IdeaId=@result)
		begin
			CheckProcess:
				if(@rowCout=0)
					begin
						set @compareValue=(select ideaid from #countsIdeaid where id=@rowCout);
						set @rowCout=@rowCout+1;
					end
				else
					begin
						set @compareValue=(select ideaid from #countsIdeaid where id=@rowCout);
						set @rowCout=@rowCout+1;
					end
				set @result=@result+1;
				if exists(select * from EmployeeSuggestion where IdeaId=@result)
					begin
								if(@rowCout=@tablecount+1)
								begin
									 set @result=(select isnull(max(IdeaId),0)+1 from EmployeeSuggestion);
									  goto sendIdeaid;
								end
							else
								begin
									goto CheckProcess;
								end
					end
				else
					begin
						 goto sendIdeaid;
					end
			

		end

		sendIdeaid:

	select @result
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_DBM]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID_DBM]
            
AS
BEGIN
	select isnull(max(IdeaId),0)+1 from EmployeeSuggestion where Remark5='DB'

 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EmployeeSuggestion_AutoGen_IdeaID]
            
AS
BEGIN
	select isnull(max(IdeaId),0)+1 from EmployeeSuggestion where Remark5='EMP'

 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeDetail_Select_ByIdeaID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EmployeeDetail_Select_ByIdeaID]
(@IdeaID varchar(50))

           
AS
BEGIN

if exists(Select H.EmployeeId, H.EmployeeName,H.Email from  EmployeeDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.EmployeeId)
begin
	Select H.EmployeeId, H.EmployeeName,H.Email,hr.ApprovedUserAmt from  EmployeeDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.EmployeeId
																		left join HRESend hr on hr.IDeaID=es.IdeaId
end
else
begin
Select H.HEmployeeId, H.HEmployeeName,H.Email,hr.ApprovedUserAmt from  HOfficialDetail H inner join EmployeeSuggestion es on es.IdeaId = @IdeaID and es.IEmpId=h.HEmployeeId
																		left join HRESend hr on hr.IDeaID=es.IdeaId
end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_EmployeeDetail_AutoGen_EmployeeID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_EmployeeDetail_AutoGen_EmployeeID]


           
AS
BEGIN
	select isnull(max(EmployeeId),0)+1 from EmployeeDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Update_EmployeeForm]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Update_EmployeeForm]
	-- Add the parameters for the stored procedure here
		@EmployeeId varchar(30), 
		@EmployeeName varchar(Max), 
		@DepartmentId int, 
		@DesignationId int, 
		@PhoneNo varchar(50) 
		
		
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Update EmployeeDetail set EmployeeName = @EmployeeName, DepartmentId = @DepartmentId, DesignationId = @DesignationId, PhoneNo = @PhoneNo where EmployeeId = @EmployeeId
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Select_Suggestion_EmpId]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Select_Suggestion_EmpId]
	-- Add the parameters for the stored procedure here
		 
		@EmployeeId varchar(30)
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if exists(Select ED.EmployeeName, ED.DepartmentId, D.DepName, ED.DesignationId, DD.DesName, Ed.PhoneNo from EmployeeDetail ED, Department D, DesignationDetail DD where ED.EmployeeId = @EmployeeId and D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId)
	begin
	Select ED.EmployeeName, ED.DepartmentId, D.DepName, ED.DesignationId, DD.DesName, Ed.PhoneNo from EmployeeDetail ED, Department D, DesignationDetail DD where ED.EmployeeId = @EmployeeId and D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId
	end
	else
	begin
	Select ED.HEmployeeName, ED.HDepartmentId, D.DepName, ED.HDesignationId, DD.DesName, Ed.PhoneNo from HOfficialDetail ED, Department D, DesignationDetail DD where ED.HEmployeeId = @EmployeeId and D.DepId = ED.HDepartmentId and DD.DesId = ED.HDesignationId
	end




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Select_ID_Name]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_Employee_Select_ID_Name]
	-- Add the parameters for the stored procedure here
		 
		
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Select EmployeeId,EmployeeName from EmployeeDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Select_Disable]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Select_Disable]
    
AS
BEGIN
 
 	Select ED.EmployeeId, ED.EmployeeName, D.DepName, DD.DesName,ED.Remark2 as ComName, ED.PhoneNo, ED.Points, ED.Allowance from EmployeeDetail ED, Department D, DesignationDetail DD where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and ED.Remark1='D'
	
	 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Select]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Select]
    
AS
BEGIN
 
 	Select ED.EmployeeId, ED.EmployeeName, D.DepName, DD.DesName, ED.PhoneNo, ED.Points, ED.Allowance from EmployeeDetail ED, Department D, DesignationDetail DD where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId
	
	 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Search_EmployeeForm]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Search_EmployeeForm]
	-- Add the parameters for the stored procedure here
		 
		@EmployeeId varchar(30)
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	if exists(Select ED.EmployeeName, D.DepName,D.DepId, DD.DesName, DD.DesId, ED.PhoneNo from EmployeeDetail ED, Department D, DesignationDetail DD where ED.EmployeeId = @EmployeeId and D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId)
	begin 
	Select ED.EmployeeName, D.DepName,D.DepId, DD.DesName, DD.DesId, ED.PhoneNo from EmployeeDetail ED, Department D, DesignationDetail DD where ED.EmployeeId = @EmployeeId and D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId
	end
	Select ED.HEmployeeName, D.DepName,D.DepId, DD.DesName, DD.DesId, ED.PhoneNo from HOfficialDetail ED, Department D, DesignationDetail DD where ED.HEmployeeId = @EmployeeId and D.DepId = ED.HDepartmentID and DD.DesId = ED.HDesignationID


end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Insert_Disable]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Employee_Insert_Disable]
@EmployeeId varchar(30)
as 
begin
update EmployeeDetail set Remark1='D' where EmployeeId=@EmployeeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Insert]
	-- Add the parameters for the stored procedure here
		@EmployeeId varchar(30), 
		@EmployeeName varchar(Max), 
		@DepartmentId int, 
		@DesignationId int, 
		@PhoneNo varchar(50), 
		@Password varchar(MAX),
		@Email varchar(50),
		@Points varchar(50), 
		@Allowance varchar(50), 
		@Remark1 varchar(50), 
		@Remark2 varchar(50) 
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into EmployeeDetail(EmployeeId, EmployeeName, DepartmentId, DesignationId, PhoneNo,Password,Email, Points, Allowance, Remark1, Remark2) values(@EmployeeId, @EmployeeName, @DepartmentId, @DesignationId, @PhoneNo,@Password,@Email, @Points, @Allowance, @Remark1, @Remark2)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	Insert into EmpTableDetail(EMPLOYEEID,EMPTABLE)values(@EmployeeId,'ED')




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Delete]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Employee_Delete]
	-- Add the parameters for the stored procedure here
		@EmployeeId int, 
		@EmployeeName varchar(Max), 
		@DepartmentId int, 
		@DesignationId int, 
		@PhoneNo varchar(50), 
		@IdeaId int, 
		@Status varchar(50), 
		@Month varchar(50), 
		@Points varchar(50), 
		@Allowance varchar(50), 
		@Remark1 varchar(50), 
		@Remark2 varchar(50) 
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Delete from EmployeeDetail where EmployeeId = @EmployeeId
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee_Dashboard]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Employee_Dashboard]
	 @type nvarchar(25)=null
AS
BEGIN
   if(@type='counts')
		BEGIN
		
				declare @new int=(select count(*) from EmployeeSuggestion where Remark6='N');
				declare @reject int=(select count(*) from EmployeeSuggestion where Remark6='C');
				declare @approved int=(select count(*) from EmployeeSuggestion where Remark6='K');
				declare @total int=(select count(*) from EmployeeSuggestion)

				select @new,@reject,@approved,@total
		END
ELSE
		BEGIN
	SELECT  ROW_NUMBER() OVER (ORDER BY t1.IdeaId desc) AS [sno],[IEmpId]+' - '+ed.EmployeeName as EmployeeName
	   ,d.DepName
	   ,t1.IdeaId
      ,t1.Subject
      ,CONVERT(VARCHAR(23),t1.Date,3) as Date
       ,[Status] 
       ,isnull(TS.Description,'hold/reject')as Description
		FROM EmployeeSuggestion t1 inner join EmployeeDetail ED on t1.IEmpId=ed.EmployeeId inner join Department D on t1.IDepId=d.DepId left join TeamESend TS on TS.IdeaId=t1.IdeaId ORDER BY T1.IdeaId DESC;
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_AutoGen_EmpID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Employee_AutoGen_EmpID]


           
AS
BEGIN
	select isnull(max(EmployeeId),0)+1 from EmployeeDetail




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Designation_Select_All]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Designation_Select_All]


           
AS
BEGIN
	select * from DesignationDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Designation_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Designation_Insert]
	-- Add the parameters for the stored procedure here
		 
        @DesId int,
        @DesName varchar(Max),
        @DepId int 
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into DesignationDetail(DesId, DesName, DepId) values(@DesId, @DesName, @DepId)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Designation_AutoGen_DesID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Designation_AutoGen_DesID]


           
AS
BEGIN
	select isnull(max(DesId),0)+1 from DesignationDetail




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Department_Select_By_DepId]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Department_Select_By_DepId]
@DepID int

           
AS
BEGIN
	select DepName from Department where DepId =@DepId




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Department_Select_All_Others_CommitteeEvaluvation_PopUP]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Department_Select_All_Others_CommitteeEvaluvation_PopUP]


           
AS
BEGIN
	select * from Department where Remark1 ='Others'




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Department_Select_All_DDList]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Department_Select_All_DDList]
@EmpName varchar(50)

           
AS
BEGIN

	
    select EmployeeId, EmployeeName from EmployeeDetail e,Department d where d.DepName=@EmpName and e.DepartmentId=d.DepId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Department_Select_All]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Department_Select_All]


           
AS
BEGIN
	select * from Department




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Department_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Department_Insert]
	-- Add the parameters for the stored procedure here
		 
        @DepId int,
        @DepName varchar(Max)
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into Department (DepId, DepName) values(@DepId, @DepName)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Department_AutoGen_DepID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Department_AutoGen_DepID]


           
AS
BEGIN
	select isnull(max(DepId),0)+1 from Department




end
GO
/****** Object:  StoredProcedure [dbo].[Sp_DBMRejectCommitteeResponse]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_DBMRejectCommitteeResponse]
@IdeaId varchar(10),
@Status varchar(20),
@RejEmpId varchar(20)

as
begin

if(@Status='Rejected')
begin
update EmployeeSuggestion set Remark6='C',Status='Rejected In Committee Evaluation' where IdeaId=@IdeaId
update CommitteeEvalEInbox set Type=@Status,Remark2='R' where IDeaID=@IdeaId and ReceiverID=@RejEmpId
end

else
begin
update EmployeeSuggestion set Remark6='D',Status='Forward to HOD' where IdeaId=@IdeaId
update CommitteeEvalEInbox set Type=@Status,Remark2='A' where IDeaID=@IdeaId and ReceiverID=@RejEmpId


end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_DataBankManger_Replu_Manger]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DataBankManger_Replu_Manger]
	-- Add the parameters for the stored procedure here
		 @IdeaId int = null,
		 @Set varchar(50) = null
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--	set @Set = 
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	IF Exists (select IEmpId from DataBankManagerSend where Remark2='Manager' and IdeaId = @IdeaId)
	 begin
	Select IdeaId, IEmpId, EmailId, Subject, EmailContent,Date from DataBankManagerSend Where Remark2='Manager' and IdeaId = @IdeaId
	end
	else
	begin
	set @Set = 'Empty';
	 select @Set
	end



end
GO
/****** Object:  StoredProcedure [dbo].[SP_DataBankManger_Replu_CommitteeEval]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DataBankManger_Replu_CommitteeEval]
	-- Add the parameters for the stored procedure here
		 @IdeaId int = null,
		 @Set varchar(50) = null
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--	set @Set = 
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	IF Exists (select IEmpId from DataBankManagerSend where IdeaId = @IdeaId)
	 begin
	Select IdeaId, IEmpId, EmailId, Subject, EmailContent,Date from DataBankManagerSend Where Remark2='Committee' and IdeaId = @IdeaId
	end
	else
	begin
	set @Set = 'Empty';
	 select @Set
	end



end
GO
/****** Object:  StoredProcedure [dbo].[SP_DataBankManagerSend_Select_RepeaterView]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DataBankManagerSend_Select_RepeaterView]
	-- Add the parameters for the stored procedure here
		 @ReceiverID varchar(50)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@ReceiverID='admin')
	begin
	 
		select DB.SendId AS MailID, DB.Date AS FromDate, 
		(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom, 
		DB.IEmpId AS ToEmpID,
		H.HEmployeeName AS SenderName,
		DB.EmailId AS ToMail,
		DB.Subject AS NewSubject,
		DB.EmailContent AS Content,
		ES.IdeaId AS IDeaID, 
		ED.EmployeeId AS IDeaEmpID, 
		ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
		DD.DesName AS EmpDesignation,
		ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
		ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
		ES.After AS SugAfter, ES.Status AS SugAfter
		From 
		DataBankManagerSend DB,
		Department D, 
		DesignationDetail DD,
		EmployeeSuggestion ES,
		HOfficialDetail H,
		EmployeeDetail ED
		where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
		ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and H.HEmployeeId = DB.SenderID
		order by DB.SL_No Desc 
	end
	else
	begin
		select DB.SendId AS MailID, DB.Date AS FromDate, 
		(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom, 
		DB.IEmpId AS ToEmpID,
		H.HEmployeeName AS SenderName,
		DB.EmailId AS ToMail,
		DB.Subject AS NewSubject,
		DB.EmailContent AS Content,
		ES.IdeaId AS IDeaID, 
		ED.EmployeeId AS IDeaEmpID, 
		ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
		DD.DesName AS EmpDesignation,
		ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
		ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
		ES.After AS SugAfter, ES.Status AS SugAfter
		From 
		DataBankManagerSend DB,
		Department D, 
		DesignationDetail DD,
		EmployeeSuggestion ES,
		HOfficialDetail H,
		EmployeeDetail ED
		where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
		ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and H.HEmployeeId = DB.SenderID
		order by DB.SL_No Desc 
	end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_DataBankManagerSend_Select_MailSendID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DataBankManagerSend_Select_MailSendID]
	-- Add the parameters for the stored procedure here
		 @SendID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	select DB.SendId AS MailID, DB.Date AS FromDate, 
	(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom, 
	DB.IEmpId AS ToEmpID,
	(select D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.EmailId AS ToMail,
	DB.Subject AS NewSubject,
	DB.EmailContent AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugAfter
	From 
	DataBankManagerSend DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID and DB.SendId = @SendID
	order by DB.SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_DataBankManagerSend_Select_Mailing_SenderID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DataBankManagerSend_Select_Mailing_SenderID]
	-- Add the parameters for the stored procedure here
		 
		 @SendID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	
	
	select ED.EmployeeId,
	(SELECT DepName FROM Department WHERE DepId=HO.HDesignationID)
	AS DBMRole,
	HO.HEmployeeName,
	ED.EmployeeName,D.DepName, DD.DesName, 
	E.Date, E.Category, E.Subject, 
	E.Before,E.After, E.Benefits, 
	E.Status,H.SenderId,HO.HEmployeeName, 
	H.Subject, H.EmailContent
	from 
	EmployeeDetail ED  inner join EmployeeSuggestion E 
	on  ED.EmployeeId = E.IEmpId inner join
	 DesignationDetail DD 
	 on Dd.DesId = ED.DesignationId inner join
	 DataBankManagerSend H 
	 on E.IdeaId = H.IdeaId inner join 
	 HOfficialDetail HO 
	 on HO.HEmployeeId = H.SenderId inner join 
	 Department D 
	 on D.DepId = Ed.DepartmentId  where H.SendId=@SendID


end
GO
/****** Object:  StoredProcedure [dbo].[sp_DataBankManager_SendMailID_AutoGeneration]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DataBankManager_SendMailID_AutoGeneration]


           
AS
BEGIN
	select isnull(max(SendId),0)+1 from DataBankManagerSend




end
GO
/****** Object:  StoredProcedure [dbo].[sp_DataBankManager_MailSending_AdminDashBoard]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DataBankManager_MailSending_AdminDashBoard]
			@SendId int,
			@SenderID varchar(50),
			@IdeaId int,
		    @Date date,
            @IEmpId varchar(max),
            @EmailId varchar(max),
            @From Varchar(50)=null,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50),
			@Remark2 varchar(50),
            @Type varchar(50)=null
           
AS          
BEGIN

	
	INSERT INTO [dbo].[DataBankManagerSend]
           (
			SendId,
			SenderID,
			IdeaId, 
			Date, 
			IEmpId, 
			EmailId, 
			Subject, 
			EmailContent, 
			Remark1,
			Remark2
			
          )
     VALUES
	 (
			@SendId,
			@SenderID,
			@IdeaId, 
			@Date, 
			@IEmpId, 
			@EmailId, 
			@Subject, 
			@EmailContent, 
			@Remark1,
			@Remark2
			
	 )

	 
  update EmployeeSuggestion set Remark6='D',Status='Accepted in Committee' where IdeaId=@IdeaId;
	 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Company_Select_All]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Company_Select_All]


           
AS
BEGIN
	select * from TempCompany




end
GO
/****** Object:  StoredProcedure [dbo].[SP_Company_Insert]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Company_Insert]
	-- Add the parameters for the stored procedure here
		 
        @ComId int,
        @ComName varchar(Max)
        
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Insert into [TempCompany] ([CompanyId], [CompanyName]) values(@ComId, @ComName)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[sp_Company_AutoGen_DepID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Company_AutoGen_DepID]


           
AS
BEGIN
	select isnull(max(CompanyId),0)+1 from TempCompany




end
GO
/****** Object:  StoredProcedure [dbo].[sp_CommitteeEvaluvation_Select_All]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CommitteeEvaluvation_Select_All]


           
AS
BEGIN
	
	SELECT 
      ComitteeID,
      EmpId,
      Members,
      Department,
      ODepartment,
      Remark1
      
  FROM CommitteeDetail where Remark1='i'




end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalSend_SelectGridView_MailSendID_Search]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalSend_SelectGridView_MailSendID_Search]
	-- Add the parameters for the stored procedure here
		 @IdeaId int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	select ReceiverID, Date, 
	(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = ReceiverID) AS NewFrom,
	IDeaID, Type, Dep,Des
	From 
	
	CommitteeEvalEInbox
	
	where 
	IDeaID = @IdeaId
	order by SL_No Desc 


end
GO
/****** Object:  Table [dbo].[HOfficialDetail]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HOfficialDetail](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[HEmployeeId] [varchar](30) NOT NULL,
	[HEmployeeName] [varchar](max) NULL,
	[HDepartmentID] [int] NULL,
	[HDesignationID] [int] NULL,
	[Email] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Passwords] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[HOfficialDetail] ADD [Remark3] [varchar](50) NULL
ALTER TABLE [dbo].[HOfficialDetail] ADD [EmpImage] [nvarchar](max) NULL
ALTER TABLE [dbo].[HOfficialDetail] ADD  CONSTRAINT [PK_HOfficialDetail] PRIMARY KEY CLUSTERED 
(
	[HEmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HOfficialDetail] ON
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (2, N'PI-024', N'Magesh', 6, 14, N'magesh.k@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (3, N'PI-067', N'Venkatesh', 15, 43, N'venkatesh.g@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (14, N'PI-073', N'Balakrishnan', 9, 29, N'balakrishnan.n@poclain.com', NULL, N'123', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (24, N'PI-074', N'Premnath', 8, 62, N'mani95ram@outlook.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (15, N'PI-075', N'Jayabalan', 2, 1, N'jayabalan.v@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (30, N'PI-091', N'Sezhiyan', 12, 38, N'sarath.s@binary2quantumsolutions.com', N'', N'123', N'i', N'i', N'X', N'bar2.png')
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (1, N'PI-150', N'Vijay Ganesh', 11, 35, N'vijayganesh.k@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (25, N'PI-190', N'Ayyappan', 12, 61, N'shibany.s@binary2quantum.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (16, N'PI-191', N'Sathyasekar', 16, 64, N'kural.v@binary2quantum.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (17, N'PI-215', N'Danasayan', 12, 38, N'danasayan.veerappan@poclain.com', NULL, N'123', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (4, N'PI-220', N'Gopalakrishnan', 8, 57, N'gopalakrishnan.k@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (18, N'PI-227', N'Mohamed Azzad', 7, 23, N'mohamed-azzad.nainar@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (26, N'PI-233', N'Jayachandran', 9, 28, N'dhanasegary.r@binary2quantum.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (29, N'PI-235', N'Rajesh', 4, 18, N'rajesh.arumugam@poclain.com', NULL, N'123', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (5, N'PI-242', N'Vengadessane', 5, 19, N'vengadessane.nadradjane@poclain.com', NULL, N'123', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (19, N'PI-243', N'Balaji', 4, 17, N'balaji.gopal@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (6, N'PI-247', N'Venkatesh Tekkalki', 13, 36, N'venkateshtekkalki.ad@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (7, N'PI-248', N'Venkateswaran', 12, 38, N'venkateswaran.kandas@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (8, N'PI-259', N'Marc Oliver', 14, 53, N'marc-oliver.nagel@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (20, N'PI-262', N'Karthikeyan', 4, 17, N'karthikeyan.arumugam@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (28, N'PI-266', N'Jeyapandi', 5, 20, N'manikandan.ramsaro@gmail.com', NULL, N'1234', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (21, N'PI-267', N'Imthiyas', 10, 40, N'imthiyas.abdulsubhan@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (9, N'PI-268', N'Kolappan', 10, 31, N'kolappan.ponniahpillai@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (27, N'PI-273', N'Sivabalan', 12, 25, N'raja.g@binary2quantumsolutions.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (10, N'PI-274', N'Nicolas', 4, 17, N'nicolas.mairey@poclain.com', NULL, N'123', NULL, NULL, N'X', NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (11, N'PI-275', N'Francisco', 11, 35, N'francisco.exposito@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (12, N'PI-277', N'Marian', 6, 14, N'marian.denitiu@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (22, N'PI-286', N'Lokesh', 7, 23, N'sarath.s@binary2quantumsolutions.com', NULL, N'123', NULL, NULL, N'X', N'demo.JPG')
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (23, N'PI-289', N'Balan', 9, 29, N'balan.guruswamy@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (13, N'PI-309', N'Roopa', 13, 36, N'roopa.nagaraju@poclain.com', NULL, N'1234', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOfficialDetail] ([SL_No], [HEmployeeId], [HEmployeeName], [HDepartmentID], [HDesignationID], [Email], [PhoneNo], [Passwords], [Remark1], [Remark2], [Remark3], [EmpImage]) VALUES (31, N'si-123', N'SHREE', 1, 1, N'shree@shree.com', N'3243242323', N'123', N'i', N'i', NULL, NULL)
SET IDENTITY_INSERT [dbo].[HOfficialDetail] OFF
/****** Object:  StoredProcedure [dbo].[benselectchange]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[benselectchange] (@CmEmailID varchar(20),@Grade varchar(20),@Rating varchar(MAX),@ideaid nvarchar(25)=null)
as
begin
declare @mailid int =(select isnull(max(CmEmailID),0)+1 from BeneficiaryESend)
declare @sl_no int =(select isnull(max(SL_No),0)+1 from BeneficiaryESend)
insert into BeneficiaryESend(
		SL_No
		,[CmEmailID]
		,[SenderMailID]
      ,[SenderID]
      ,[ReceiverID]
      ,[IDeaID]
      ,[EFrom]
      ,[ETo]
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,[HOSGrade]
      ,[HOSBM]
      ,[BENGrade]
      ,[BENBM]
)
(select @sl_no
		, @mailid
	   ,CmEmailID as [SenderMailID]
		  , ReceiverID as [SenderID]
		  ,'PI-266'
		  ,[IDeaID]
		  ,ETo as [EFrom]
      ,'jeyapandi.palani@poclain.com'
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,[Grade]
      ,[BenefitsMatrix]
      ,@Grade
      ,@Rating
       from BeneficiaryEInbox where CmEmailID=@CmEmailID);

	   update  BeneficiaryEInbox set Remark5='U' where CmEmailID=@CmEmailID;

	   declare @count1 int=(select count(*) from BeneficiaryEInbox where IDeaId=@IdeaId and Remark5='i');
	   declare @count2 int=(select count(*) from BeneficiaryEInbox where IDeaId=@IdeaId and Remark5='U');
	   if(@count1=0)
		begin
		  update EmployeeSuggestion set Remark6='H',Status='Forward to Beneficiary Approval Process' where IdeaId=@IdeaId;
		end

end
GO
/****** Object:  StoredProcedure [dbo].[benselect]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[benselect] @CmEmailID varchar(20),@ideaid nvarchar(25)=null
	as
	begin
	declare @mailid varchar(20)=(select isnull(max(CmEmailID),0)+1 from BeneficiaryESend)
	declare @sl_no int =(select isnull(max(SL_No),0)+1 from BeneficiaryESend)
	insert into BeneficiaryESend(
			SL_No
			,[CmEmailID]
			,[SenderMailID]
		  ,[SenderID]
		  ,[ReceiverID]
		  ,[IDeaID]
		  ,[EFrom]
		  ,[ETo]
		  ,[Date]
		  ,[Subject]
		  ,[Description]
		  ,[Type]
		  ,[Days]
		  ,[Rating]
		  ,[Comment]
		  ,[HOSGrade]
		  ,[HOSBM]
		  ,[BENGrade]
		  ,[BENBM]
	)
	(select 
			@sl_no
			,@mailid
		 ,CmEmailID as [SenderMailID]
		  , ReceiverID as [SenderID]
		  ,'PI-266'
		  ,[IDeaID]
		  ,ETo as [EFrom]
		  ,'jeyapandi.palani@poclain.com'
		  ,[Date]
		  ,[Subject]
		  ,[Description]
		  ,[Type]
		  ,[Days]
		  ,[Rating]
		  ,[Comment]
		  ,[Grade]
		  ,[BenefitsMatrix]
		  ,[Grade]
		  ,[BenefitsMatrix]
		   from BeneficiaryEInbox where CmEmailID=@CmEmailID)

			 update  BeneficiaryEInbox set Remark5='U' where CmEmailID=@CmEmailID;

		   declare @count1 int=(select count(*) from BeneficiaryEInbox where IDeaId=@IdeaId and Remark5='i');
		   declare @count2 int=(select count(*) from BeneficiaryEInbox where IDeaId=@IdeaId and Remark5='U');
		    if(@count1=0)
			begin
			  update EmployeeSuggestion set Remark6='H',Status='Forward to DBA for Final Process' where IdeaId=@IdeaId;
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[FinanceCountDetail]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FinanceCountDetail]
@type varchar(10)
as 
begin



declare @userinbox int= (select COUNT(IDeaID) from HRESend  where IDeaID not in (select IdeaId from FinanceDetail))  

declare @userbal int= (select COUNT(hr.IdeaId) from HRESend hr,FinanceDetail fd where fd.IdeaId=hr.IDeaID) 

declare @implinbox int= (select COUNT(IDeaID) from HRESend  where IDeaID not in (select IdeaId from FinanceIMPLDetail))  

declare @implbal int= (select COUNT(hr.IdeaId) from HRESend hr,FinanceIMPLDetail fd where fd.IdeaId=hr.IDeaID)


declare @fintot int= (select COUNT(IdeaId) from HRESend)

select @userinbox,@userbal,@implinbox,@implbal,@fintot

end
GO
/****** Object:  StoredProcedure [dbo].[GraphYearwise]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GraphYearwise]

as
begin
--drop table #tempdate
create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)

if(@crntdt>=26 and @crntdt<=31 and @crntmon=12)
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST(@crntyr AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end
else
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST((@crntyr-1) AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end

--select * from #tempdate
declare @TotalSuggestion int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E,#tempdate T where E.Date between T.startdate and T.enddate )
declare @Reject int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E,#tempdate T where Remark6='C' and E.Date between T.startdate and T.enddate )
declare @AfterImplement int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E,HOSEInbox HI,#tempdate T where E.IdeaId=HI.IDeaID and E.Date between T.startdate and T.enddate)
declare @BeforeImplement int=@TotalSuggestion-(@AfterImplement+@Reject)

select @TotalSuggestion,@Reject,@BeforeImplement,@AfterImplement

end
GO
/****** Object:  StoredProcedure [dbo].[Graph3month]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Graph3month]
as
begin
create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)
declare @date nvarchar(max)=@crndt
declare @setdate nvarchar(max)=@crntyr+'-'+@crntmon+'-'+'26'
declare @date1 date=convert(date,@setdate,111);
--select DATEADD(MONTH, -3, @date),@date
if(@crntdt>=26 and @crntdt<=31)
begin



set @strtdt =(select convert(date,DATEADD(MONTH, -2, @date1),111))

set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select @strtdt,convert(date,@enddt,103)
end

else
begin
set @strtdt =(select convert(date,DATEADD(MONTH, -3, @date1),111))

set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
--select @strtdt,@enddt
select @strtdt,convert(date,@enddt,103)
end
--select @strtdt,@enddt
--select * from #tempdate
declare @TotalSuggestion int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E,#tempdate T where E.Date between T.startdate and T.enddate )
declare @Reject int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E,#tempdate T where Remark6='C' and E.Date between T.startdate and T.enddate )
declare @AfterImplement int=(select COUNT(distinct E.IdeaId) from EmployeeSuggestion E, HOSEInbox HI,#tempdate T where HI.IDeaID=E.IdeaId and E.Date between T.startdate and T.enddate )
declare @BeforeImplement int=@TotalSuggestion-(@AfterImplement+@Reject)

select @TotalSuggestion,@Reject,@BeforeImplement,@AfterImplement
end
GO
/****** Object:  StoredProcedure [dbo].[getImage]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getImage](@EmpId nvarchar(max))
as
begin

if exists(select EmpImage from EmployeeDetail where EmployeeId=@EmpId)
begin
select isnull(EmpImage,'altImg.jpg') from EmployeeDetail where EmployeeId=@EmpId
end

else
begin
select isnull(EmpImage,'altImg.jpg') from HOfficialDetail where HEmployeeId=@EmpId
end

end
GO
/****** Object:  StoredProcedure [dbo].[Get_TeamMemFromDepId]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_TeamMemFromDepId]
@DepId nvarchar(20)
as
begin

select distinct ed.EmployeeName,ed.EmployeeId from EmployeeDetail ed left join HOfficialDetail hd on hd.HDepartmentID=ed.DepartmentId where hd.HDepartmentID=@DepId

end
GO
/****** Object:  StoredProcedure [dbo].[Get_DepIdFromTeamHID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_DepIdFromTeamHID]
@TeamHID nvarchar(20)
as
begin

create table #tempdepid(DepId nvarchar(10),DepName nvarchar(max))
insert #tempdepid
select distinct d.DepId,d.DepName from ManagerDetail md left join HOfficialDetail hd on hd.HEmployeeId=md.EmpId
							left join Department d on md.Department=d.DepName where EmpId=@TeamHID
							

select distinct ed.EmployeeId+'-'+ed.EmployeeName+'-'+d.DepName as EmployeeName,ed.EmployeeId from EmployeeDetail ed inner join #tempdepid hd on hd.DepId=ed.DepartmentId 
																					left join Department D on d.DepId=ed.DepartmentId
end
GO
/****** Object:  StoredProcedure [dbo].[TeamDetail_GridView_ByEmployee]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TeamDetail_GridView_ByEmployee](@empid varchar(25))
as
begin

	--exec SP_add_Team_MembersAutoMaticProcess @empid;

--Select ed.EmployeeName, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, EmployeeDetail ed, Department D
--	where 
--	ed.EmployeeId = T.EmpId and
--	D.DepId = T.DepID and
--	T.TeamHID = @empid
--	union
--	Select ed.HEmployeeName as EmployeeName, D.DepName, (select HEmployeeName from HOfficialDetail where HEmployeeId = T.TeamHID) AS HeadID from TeamDetail T, HOfficialDetail ed, Department D
--	where 
--	ed.HEmployeeId = T.EmpId and
--	D.DepId = T.DepID and
--	T.TeamHID = @empid
	
	create table #tempdepid(DepId nvarchar(10),DepName nvarchar(max))
insert #tempdepid
select distinct d.DepId,d.DepName from ManagerDetail md left join HOfficialDetail hd on hd.HEmployeeId=md.EmpId
							left join Department d on md.Department=d.DepName where EmpId=@empid
							

select distinct ed.EmployeeName,d.DepName,HO.HEmployeeName as HeadID from EmployeeDetail ed inner join #tempdepid hd on hd.DepId=ed.DepartmentId 
													left join Department d on d.DepId=ed.DepartmentId
													left join HOfficialDetail HO on Ho.HEmployeeId=@empid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TeamInBox_Insert_FrmDBM]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TeamInBox_Insert_FrmDBM]
			@CmEmailID int,
			@SendId int,
--			SenderID   --HOdID DBM
			@SenderID varchar(50),
			--Receover Mail ID
			@IEmpId varchar(30),
			@IdeaId int,--IDeaID
			--form HodID DBM MailID DBMEmail
			@From varchar(max),
			--Receiver Mail ID
            @EmailId varchar(50),
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50),
            @Remark4 varchar (50)
           
AS          
BEGIN

	
	INSERT INTO TeamEInbox
           (
			CmEmailID,
			SenderMailID,
			SenderID,
			ReceiverID,
			IdeaId, 
			EFrom,
			ETo,
			Date, 
			Subject, 
			Description,
			
			Remark1,
			Remark4
          )
     VALUES
	 (
			@CmEmailID,
			@SendId,
			@SenderID,
			@IEmpId,
			@IdeaId, 
			@From,
			@EmailId, 
			@Date, 
			@Subject, 
			@EmailContent, 
			@Remark1,
			@Remark4
	 )
	 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_Update_Response]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_Update_Response]
	-- Add the parameters for the stored procedure here
		 @CmEmailID int,
		 @Type varchar(Max),
		 @Dep varchar(max),
		 @Des Varchar(Max),
		 @Ty Varchar(max)=null
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	update CommitteeEvalEInbox set Type = @Type, Dep = @Dep, Des = @Des
	where CmEmailID = @CmEmailID
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 set @Ty = (select IDeaID from CommitteeEvalEInbox where CmEmailID = @CmEmailID)
	 if(@Type!='Accepted')
	 Begin
	 update CommitteeEvalEInbox set Remark2 = 'R' where IDeaID = @Ty  and  CmEmailID = @CmEmailID

	  update EmployeeSuggestion set Remark6='C',SuggestionDep=@Des,Status='Rejected In Committee Evaluation' where  IDeaID = @Ty
	 end
	 Else
	 Begin
	 update CommitteeEvalEInbox set Remark2 = 'A' where IDeaID = @Ty and  CmEmailID = @CmEmailID
	 end
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_SelectUpdateProcess_MailSendID]    Script Date: 10/03/2020 11:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_SelectUpdateProcess_MailSendID]
	-- Add the parameters for the stored procedure here
		 @CmEmailID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	Select C.Type,C.Dep,C.Des,C.SenderID,H.HEmployeeName from CommitteeEvalEInbox C, HOfficialDetail H where H.HEmployeeId = C.SenderID and CmEmailID=@CmEmailID

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_SelectUpdatePannel_MailSendID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_SelectUpdatePannel_MailSendID]
	-- Add the parameters for the stored procedure here
		 @CmEmailID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if exists(
	
	select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
	(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	DB.ReceiverID AS ToEmpID,
	(select D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	CommitteeEvalEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID and DB.CmEmailID = @CmEmailID)
	begin
			select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
			(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
			DB.ReceiverID AS ToEmpID,
			(select D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
			DB.ETo AS ToMail,
			DB.Subject AS NewSubject,
			DB.Description AS Content,
			ES.IdeaId AS IDeaID, 
			ED.EmployeeId AS IDeaEmpID, 
			ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
			DD.DesName AS EmpDesignation,
			ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
			ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
			ES.After AS SugAfter, ES.Status AS SugStatus,
			DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
			From 
			
			CommitteeEvalEInbox DB,
			Department D, 
			DesignationDetail DD,
			EmployeeSuggestion ES,
			HOfficialDetail H,
			EmployeeDetail ED
			where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
			ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
			H.HEmployeeId = DB.SenderID and DB.CmEmailID = @CmEmailID
			order by DB.SL_No Desc 
			
			update CommitteeEvalEInbox set Remark3='X' where CmEmailID = @CmEmailID
	end
	begin
				select top 1 DB.SenderMailID AS MailID, DB.Date AS FromDate, 
			(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
			DB.ReceiverID AS ToEmpID,
			(select top 1 D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
			DB.ETo AS ToMail,
			DB.Subject AS NewSubject,
			DB.Description AS Content,
			ES.IdeaId AS IDeaID, 
			H.HEmployeeId AS IDeaEmpID, 
			H.HEmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
			DD.DesName AS EmpDesignation,
			ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
			ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
			ES.After AS SugAfter, ES.Status AS SugStatus,
			DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
			From 
			
			CommitteeEvalEInbox DB,
			Department D, 
			DesignationDetail DD,
			EmployeeSuggestion ES,
			HOfficialDetail H,
			EmployeeDetail ED
			where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
			(H.HEmployeeId = ES.IEmpId or ED.EmployeeId=ES.IEmpId) and ES.IdeaId = DB.IdeaId and 
			  --ED.EmployeeId=ES.IEmpId  and ES.IdeaId = DB.IdeaId and 
			DB.CmEmailID = @CmEmailID
			
			
			update CommitteeEvalEInbox set Remark3='X' where CmEmailID = @CmEmailID
	end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView_reject]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView_reject]
as
begin
						SELECT distinct t2.IEmpId as SendFrom,t2.Subject, IDeaID FROM  
						
  EmployeeSuggestion t2 where t2.Remark6='C' and t2.Status='Rejected In Committee Evaluation' order by ideaid desc --where Remark6='B' 

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView_complete]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView_complete]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	
  create table #rejectedIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  create table #ApprovedIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  create table #ApprovedIdsFinal 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
   create table #overAllIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  insert into #rejectedIds (ids) select distinct IDeaID from CommitteeEvalEInbox where Remark2='R'
  insert into #ApprovedIds (ids) select distinct IDeaID from CommitteeEvalEInbox where Remark2='A'-- and IDeaID=@ideadCode; 
  insert into #overAllIds (ids) select distinct IDeaID from CommitteeEvalEInbox 

  create table #finalResult
  (
  sno int identity(1,1) not null,
  senderId nvarchar(100),
  subjects nvarchar(255),
  ideaid nvarchar(25),
  results nvarchar(25),
  sstatus nvarchar(10)
  )
  declare @itemSno int=0
  declare @rows int=0
  declare @ideadCode nvarchar(25)
  set @rows=1
	set @itemSno=(select COUNT(*) from #rejectedIds)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess
		end
	FilterProcess:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #rejectedIds where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #rejectedIds where sno=@rows)
					  set @rows+=1	
					end	


					 
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Rejected','R' FROM CommitteeEvalEInbox wHere IDeaID=@ideadCode order by SL_No desc
					if(@itemSno=@rows-1)
								begin
									--
								--	select * from #finalResult
									 goto NextProcess
								end
							 else
								begin
									goto FilterProcess
								end
		NextProcess:
			insert into #ApprovedIdsFinal select t1.ids from #ApprovedIds t1 left join #rejectedIds t2 on t1.ids=t2.ids where t2.ids is null
			set @rows=1
	set @itemSno=(select COUNT(*) from #ApprovedIdsFinal)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess2
		end
	FilterProcess2:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #ApprovedIdsFinal where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #ApprovedIdsFinal where sno=@rows)
					  set @rows+=1	
					end	
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Approved','A' FROM CommitteeEvalEInbox wHere IDeaID=@ideadCode order by SL_No desc
					if(@itemSno=@rows-1)
								begin
								   --  select * from #finalResult
									 goto NextProcess2
								end
							 else
								begin
									goto FilterProcess2
								end
				NextProcess2:
						truncate table #ApprovedIds;
						insert into #ApprovedIds select t1.ids from #overAllIds t1 left join #finalResult t2 on t1.ids=t2.ideaid where t2.ideaid is null
						--select * from #ApprovedIds;
						set @rows=1
	set @itemSno=(select COUNT(*) from #ApprovedIds)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess3
		end
	FilterProcess3:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #ApprovedIds where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #ApprovedIds where sno=@rows)
					  set @rows+=1	
					end	
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Pending','P' FROM CommitteeEvalEInbox where IDeaID=@ideadCode order by SL_No desc
					--select * from #finalResult;
					if(@itemSno=@rows-1)
								begin
									
	--select @itemSno,@rows,'re';	
									 goto NextProcess3
								end
							 else
								begin
								
									--select @itemSno,@rows;
									goto FilterProcess3
								end
				NextProcess3:
						--SELECT sno,(select HEmployeeName from HOfficialDetail  where HEmployeeId = senderId),subjects AS Subject,ideaid AS IDeaID,results,sstatus FROM #finalResult; -- PENDING
						--SELECT sno,[dbo].fun_GetNameOfManager(t1.senderId) as SendFrom,subjects AS Subject,ideaid AS IDeaID,results,sstatus FROM #finalResult t1 inner join  order by ideaid desc;-- inner join HOfficialDetail t2 on t1.senderId=t2.HEmployeeId; -- PENDING
						SELECT distinct t1.sno,t2.Subject as SendFrom,subjects AS Subject,t1.ideaid AS IDeaID,results,sstatus FROM #finalResult t1 inner join 
						
  EmployeeSuggestion t2  on t1.ideaid=t2.IdeaId inner join ManagerEInbox M on t1.ideaid =M.IDeaID  order by ideaid desc --where Remark6='B' 
		
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_Select_Send_RepeaterView]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	
  create table #rejectedIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  create table #ApprovedIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  create table #ApprovedIdsFinal 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
   create table #overAllIds 
  (
  sno int identity(1,1) not null,
  ids nvarchar(25)
  )
  insert into #rejectedIds (ids) select distinct IDeaID from CommitteeEvalEInbox where Remark2='R'
  insert into #ApprovedIds (ids) select distinct IDeaID from CommitteeEvalEInbox where Remark2='A'-- and IDeaID=@ideadCode; 
  insert into #overAllIds (ids) select distinct IDeaID from CommitteeEvalEInbox 

  create table #finalResult
  (
  sno int identity(1,1) not null,
  senderId nvarchar(100),
  subjects nvarchar(255),
  ideaid nvarchar(25),
  results nvarchar(25),
  sstatus nvarchar(10)
  )
  declare @itemSno int=0
  declare @rows int=0
  declare @ideadCode nvarchar(25)
  set @rows=1
	set @itemSno=(select COUNT(*) from #rejectedIds)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess
		end
	FilterProcess:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #rejectedIds where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #rejectedIds where sno=@rows)
					  set @rows+=1	
					end	


					 
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Rejected','R' FROM CommitteeEvalEInbox wHere IDeaID=@ideadCode order by SL_No desc
					if(@itemSno=@rows-1)
								begin
									--
								--	select * from #finalResult
									 goto NextProcess
								end
							 else
								begin
									goto FilterProcess
								end
		NextProcess:
			insert into #ApprovedIdsFinal select t1.ids from #ApprovedIds t1 left join #rejectedIds t2 on t1.ids=t2.ids where t2.ids is null
			set @rows=1
	set @itemSno=(select COUNT(*) from #ApprovedIdsFinal)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess2
		end
	FilterProcess2:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #ApprovedIdsFinal where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #ApprovedIdsFinal where sno=@rows)
					  set @rows+=1	
					end	
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Approved','A' FROM CommitteeEvalEInbox wHere IDeaID=@ideadCode order by SL_No desc
					if(@itemSno=@rows-1)
								begin
								   --  select * from #finalResult
									 goto NextProcess2
								end
							 else
								begin
									goto FilterProcess2
								end
				NextProcess2:
						truncate table #ApprovedIds;
						insert into #ApprovedIds select t1.ids from #overAllIds t1 left join #finalResult t2 on t1.ids=t2.ideaid where t2.ideaid is null
						--select * from #ApprovedIds;
						set @rows=1
	set @itemSno=(select COUNT(*) from #ApprovedIds)
	--select @itemSno;
	if(@itemSno=0)
		begin
			goto NextProcess3
		end
	FilterProcess3:	
				if(@rows=1)
					begin
				      set @ideadCode=(select ids from #ApprovedIds where sno=@rows)
					  set @rows+=1
					end
				else
					begin
					  set @ideadCode=(select ids from #ApprovedIds where sno=@rows)
					  set @rows+=1	
					end	
					insert into #finalResult(senderId,subjects,ideaid,results,sstatus) select top 1 SenderID,Subject,IDeaID,'Pending','P' FROM CommitteeEvalEInbox where IDeaID=@ideadCode order by SL_No desc
					--select * from #finalResult;
					if(@itemSno=@rows-1)
								begin
									
	--select @itemSno,@rows,'re';	
									 goto NextProcess3
								end
							 else
								begin
								
									--select @itemSno,@rows;
									goto FilterProcess3
								end
				NextProcess3:
						--SELECT sno,(select HEmployeeName from HOfficialDetail  where HEmployeeId = senderId),subjects AS Subject,ideaid AS IDeaID,results,sstatus FROM #finalResult; -- PENDING
						--SELECT sno,[dbo].fun_GetNameOfManager(t1.senderId) as SendFrom,subjects AS Subject,ideaid AS IDeaID,results,sstatus FROM #finalResult t1 inner join  order by ideaid desc;-- inner join HOfficialDetail t2 on t1.senderId=t2.HEmployeeId; -- PENDING
						SELECT distinct t1.sno,t2.Subject as SendFrom,subjects AS Subject,t1.ideaid AS IDeaID,results,sstatus FROM #finalResult t1 inner join 
						
  EmployeeSuggestion t2 on t1.ideaid=t2.IdeaId and t2.Remark6!='C' and t1.ideaid  not in(select IDeaID from ManagerEInbox)  order by ideaid desc --where Remark6='B' 
		
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalInbox_Select_RepeaterView]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalInbox_Select_RepeaterView]
	-- Add the parameters for the stored procedure here
		 @ReceiverID varchar(50)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 if(@ReceiverID='admin')
		begin 
				 Select C.CmEmailID AS ID, 
				(select top 1 HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
				C.Subject, C.IDeaID, C.Remark3
				
				from CommitteeEvalEInbox C where c.Remark2='P'
				order by SL_No Desc 
	 
		end
	 else
		 begin
				Select C.CmEmailID AS ID, 
				(select top 1 HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
				C.Subject, C.IDeaID, C.Remark3
				
				from CommitteeEvalEInbox C where C.ReceiverID = @ReceiverID and c.Remark2='P'
				order by SL_No Desc 
		end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_CommitteeEvalEInbox_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_CommitteeEvalEInbox_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from CommitteeEvalEInbox




end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeDetail_Update]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeDetail_Update]
	-- Add the parameters for the stored procedure here
		 @ComitteeID int, 
		 @EmpId varchar(Max), 
		 @Members varchar(Max), 
		 @Department varchar(50), 
		 @ODepartment varchar(50), 
		 @Remark1 varchar(50) 
		 
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	delete from CommitteeDetail where EmpId=@EmpId
	--update CommitteeDetail set EmpId = @EmpId, Members = @Members, Department = @Department, ODepartment = @ODepartment, Remark1 = @Remark1 
	--where EmpId=@EmpId
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeDetail_Search_CommitteeID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeDetail_Search_CommitteeID]
	-- Add the parameters for the stored procedure here
		 @ComitteeID int
		 
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select C.EmpId, C.Members, D.DepName, DD.DesName, C.Department, C.ODepartment, E.HDepartmentID,E.HDesignationID from CommitteeDetail C, HOfficialDetail E, Department D,DesignationDetail DD
	where E.HEmployeeId = C.EmpId  and D.DepId = E.HDepartmentID and DD.DesId = E.HDesignationID and C.ComitteeID = @ComitteeID
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeDetail_Insert]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeDetail_Insert]
	-- Add the parameters for the stored procedure here
		 @ComitteeID int, 
		 @EmpId varchar(Max), 
		 @Members varchar(Max), 
		 @Department varchar(50), 
		 @ODepartment varchar(50), 
		 @Remark1 varchar(50), 
		 @Remark2 varchar(50)
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--Insert into CommitteeDetail(ComitteeID, EmpId, Members, Department, ODepartment, Remark1, Remark2) values(@ComitteeID, @EmpId, @Members, @Department, @ODepartment, @Remark1, @Remark2)
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 if exists(select * from CommitteeDetail where ODepartment=@ODepartment)
	 begin
	       update CommitteeDetail set ComitteeID=@ComitteeID,EmpId= @EmpId,Members= @Members, Department=@Department, ODepartment=@ODepartment, Remark1=@Remark1, Remark2=@Remark2 where @ODepartment=ODepartment
		end
	else
		begin
			Insert into CommitteeDetail(ComitteeID, EmpId, Members, Department, ODepartment, Remark1, Remark2) values(@ComitteeID, @EmpId, @Members, @Department, @ODepartment, @Remark1, @Remark2)
		end



end
GO
/****** Object:  StoredProcedure [dbo].[sp_CommiteeEvalInBox_Insert_FrmDBM]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CommiteeEvalInBox_Insert_FrmDBM]
			@CmEmailID int,
			@SendId int,
--			SenderID   --HOdID DBM
			@SenderID varchar(50),
			--Receover Mail ID
			@IEmpId varchar(30),
			@IdeaId int,--IDeaID
			--form HodID DBM MailID DBMEmail
			@From varchar(max),
			--Receiver Mail ID
            @EmailId varchar(50),
		    @Date date,
            @Subject varchar(max),
            @EmailContent varchar(max),
            @Remark1 varchar(50)
            
           
AS          
BEGIN

	
	INSERT INTO CommitteeEvalEInbox
           (
			CmEmailID,
			SenderMailID,
			SenderID,
			ReceiverID,
			IdeaId, 
			EFrom,
			ETo,
			Date, 
			Subject, 
			Description,
			
			Remark1,
			Remark2
          )
     VALUES
	 (
			@CmEmailID,
			@SendId,
			@SenderID,
			@IEmpId,
			@IdeaId, 
			@From,
			@EmailId, 
			@Date, 
			@Subject, 
			@EmailContent, 
			@Remark1,
			'P'
	 )
	 
	 update EmployeeSuggestion set Status = 'Processing In Committee',Remark6='A' where IdeaId = @IdeaId
	 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ComitteeDetail_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_ComitteeDetail_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(ComitteeID),0)+1 from CommitteeDetail




end
GO
/****** Object:  StoredProcedure [dbo].[SP_ClearAllData]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[SP_ClearAllData]
as
begin

 ALTER TABLE EmployeeSuggestion DROP CONSTRAINT IdeaId; 
drop table EmployeeSuggestion
CREATE TABLE [dbo].[EmployeeSuggestion](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[IdeaId] [int] NOT NULL,
	[Date] [date] NULL,
	[IDepId] [int] NOT NULL,
	[IDesId] [int] NOT NULL,
	[IEmpId] [varchar](30) NOT NULL,
	[Subject] [varchar](max) NULL,
	[Benefits] [varchar](max) NULL,
	[Category] [varchar](max) NULL,
	[Before] [varchar](max) NULL,
	[After] [varchar](max) NULL,
	[FileUpload1] [varchar](max) NULL,
	[FileUpload2] [varchar](max) NULL,
	[FileUpload3] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Approved] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
	[Remark4] [varchar](50) NULL,
	[Remark5] [varchar](50) NULL,
	[Remark6] [varchar](50) NULL,
	[SuggestionDep] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeSuggestion] PRIMARY KEY CLUSTERED 
(
	[IdeaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

  
	truncate table [dbo].[CommitteeEvalEInbox]

    truncate table [dbo].[DataBankManagerSend]
	
	truncate table [dbo].[ManagerESend]
	truncate table [dbo].[ManagerEInbox]

	
	truncate table [dbo].[TeamESend]
	truncate table [dbo].[TeamEInbox]

	truncate table [dbo].[HOSEInbox]
   
	truncate table [dbo].[BeneficiaryESend]
 
	truncate table [dbo].[BeneficiaryEInbox]

    truncate table [dbo].[FinanceDetail]


end
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckoldpasswordGetOTP]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckoldpasswordGetOTP] 
@Userid varchar(50)
as
begin



if exists(select Passwords from HOfficialDetail where HEmployeeId=@Userid)
begin
select Passwords,HEmployeeName,Email from HOfficialDetail where HEmployeeId=@Userid

end
else
begin
select Password,EmployeeName,Email from EmployeeDetail where EmployeeId=@Userid

end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Checkoldpassword]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Checkoldpassword] 
@Userid varchar(50)
as
begin


select OTPNum from ResetpasswordOTP where EmpID=@Userid
--if exists(select Passwords from HOfficialDetail where HEmployeeId=@Userid)
--begin
--select Passwords from HOfficialDetail where HEmployeeId=@Userid

--end
--else
--begin
--select Password from EmployeeDetail where EmployeeId=@Userid

--end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckIdeaID_from_Suggestions]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CheckIdeaID_from_Suggestions](
@idea nvarchar(25)=null
)
as
begin
	declare @result nvarchar(25);
	declare @status nvarchar(25);
	if exists(select * from EmployeeSuggestion where IdeaId=@idea)
		begin
			set @result='Idea ID already exists';
			set @status='Y';
		end
	else
		begin
			set @result='Idea ID not exists';
			set @status='N';
		end
	select @status,@result;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BenEvalSend_AutoGen_ComitteeID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_BenEvalSend_AutoGen_ComitteeID]


           
AS
BEGIN
	select isnull(max(CmEmailID),0)+1 from BeneficiaryESend




end
GO
/****** Object:  StoredProcedure [dbo].[SP_BeneficiaryEvalInbox_SelectUpdatePannel_MailSendID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BeneficiaryEvalInbox_SelectUpdatePannel_MailSendID]
	-- Add the parameters for the stored procedure here
		 @CmEmailID int
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if exists(select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.ReceiverID) AS ToEmpID,
	(select top 1 D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Days,DB.Rating, DB.SenderID,DB.Grade,DB.BenefitsMatrix,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	BeneficiaryEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID and DB.CmEmailID = @CmEmailID)
begin	 
	select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.ReceiverID) AS ToEmpID,
	(select top 1 D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Days,DB.Rating, DB.SenderID,DB.Grade,DB.BenefitsMatrix,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	BeneficiaryEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID and DB.CmEmailID = @CmEmailID
	order by DB.SL_No Desc 
end
else
begin
	select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.ReceiverID) AS ToEmpID,
	(select top 1 D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	H.HEmployeeId AS IDeaEmpID, 
	H.HEmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Days,DB.Rating, DB.SenderID,DB.Grade,DB.BenefitsMatrix,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	BeneficiaryEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	(H.HEmployeeId = ES.IEmpId or ED.EmployeeId=ES.IEmpId) and ES.IdeaId = DB.IdeaId and 
	--H.HEmployeeId = DB.SenderID and 
	DB.CmEmailID = @CmEmailID
	order by DB.SL_No Desc
	
		
	
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_BeneficiaryEvalInbox_Select_RepeaterView]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BeneficiaryEvalInbox_Select_RepeaterView]
	-- Add the parameters for the stored procedure here
		 @ReceiverID varchar(50)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if (@ReceiverID = 'admin')
	begin
	Select C.CmEmailID AS ID, 
	(select HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
	C.Subject, C.IDeaID  
	
	from BeneficiaryEInbox C 
	inner join EmployeeSuggestion t2 on C.IDeaID=t2.IdeaId where c.Remark5='i'--and t2.Remark6='G'
	order by C.SL_No Desc 
	
	end
	 
	Select C.CmEmailID AS ID, 
	(select HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
	C.Subject, C.IDeaID  
	
	from BeneficiaryEInbox C 
inner join EmployeeSuggestion t2 on C.IDeaID=t2.IdeaId where C.ReceiverID = @ReceiverID and c.Remark5='i'--and t2.Remark6='G'
	order by C.SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[SP_BeneficiaryEInbox_Update_Response]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BeneficiaryEInbox_Update_Response]
	-- Add the parameters for the stored procedure here
		 @CmEmailID int,
		 @Type varchar(Max),
		 @Days varchar(max),
		 @Rating Varchar(Max),
		 @Ty Varchar(max)=null
       
           
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	update BeneficiaryEInbox set Type = @Type, Days = @Days, Rating = @Rating
	where CmEmailID = @CmEmailID
	--Selection statement to select the Record from HOfficialDetail Table, To chech the User is match are not
	 set @Ty = (select IDeaID from BeneficiaryEInbox where CmEmailID = @CmEmailID)
	 if(@Type!='Same')
	 Begin
	 update BeneficiaryEInbox set Remark2 = 'R' where IDeaID = @Ty
	 end
	 Else
	 Begin
	 update BeneficiaryEInbox set Remark2 = 'A' where IDeaID = @Ty
	 end
	




end
GO
/****** Object:  StoredProcedure [dbo].[SP_add_Team_MembersAutoMaticProcess]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_add_Team_MembersAutoMaticProcess]
 (
 @managerid nvarchar(25)=0
 )
 as
 begin

 
CREATE TABLE #TeamDetail (
	[SL_No] [int]  identity(1,1) not NULL,
	[TeamID] [int] NOT NULL,
	[TeamName] [varchar](max) NULL,
	[DepID] [int] NULL,
	[EmpId] [varchar](50) NULL,
	[TeamHID] [varchar](50) NULL,
	[TeamCount] [int] NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL
);

 declare @departmentid varchar(5)=(select HDepartmentID from HOfficialDetail where HEmployeeId =@managerid);
 declare @designid varchar(5)=(select HDesignationID from HOfficialDetail where HEmployeeId =@managerid);
 
 declare @designName  varchar(100)=(select DesName from DesignationDetail where DesId=@designid);

 insert into #TeamDetail(TeamID,TeamName,DepID,EmpId,TeamHID,TeamCount,Remark1,Remark2,Remark3) select  ROW_NUMBER() Over (Order by emp.EmployeeId) As [S.N.] ,@designName+' Team',emp.DepartmentId,emp.EmployeeId,@managerid as teamhid,'1','I',null,null from EmployeeDetail emp left join TeamDetail td on emp.EmployeeId=td.EmpId and emp.DepartmentId=td.DepID where td.EmpId is null and td.DepID is null and emp.DepartmentId=@departmentid

 --select (select max(TeamID) from TeamDetail)+TeamID,TeamName,DepID,EmpId,TeamHID,TeamCount,Remark1,Remark2,Remark3 from #TeamDetail


 insert into TeamDetail(TeamID,TeamName,DepID,EmpId,TeamHID,TeamCount,Remark1,Remark2,Remark3)select (select max(TeamID) from TeamDetail)+TeamID,TeamName,DepID,EmpId,TeamHID,TeamCount,Remark1,Remark2,Remark3 from #TeamDetail

end
GO
/****** Object:  StoredProcedure [dbo].[ImplTeamEvalInbox_SelectUpdatePannel_MailSendID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ImplTeamEvalInbox_SelectUpdatePannel_MailSendID]
	-- Add the parameters for the stored procedure here
		 @CmEmailID varchar(50)
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if exists(select DB.SenderMailID AS MailID, DB.Date AS FromDate, 
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	DB.ReceiverID AS ToEmpID,
	(select top 1  D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	TeamEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID  and DB.IdeaId = @CmEmailID)
begin

	

	select DB.SenderMailID AS MailID,CONVERT(VARCHAR(23),DB.Date,103) AS FromDate, 
	(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
	DB.ReceiverID AS ToEmpID,
	(select top 1  D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
	DB.ETo AS ToMail,
	DB.Subject AS NewSubject,
	DB.Description AS Content,
	ES.IdeaId AS IDeaID, 
	ED.EmployeeId AS IDeaEmpID, 
	ED.EmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
	DD.DesName AS EmpDesignation,
	ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
	ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
	ES.After AS SugAfter, ES.Status AS SugStatus,
	DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
	From 
	
	TeamEInbox DB,
	Department D, 
	DesignationDetail DD,
	EmployeeSuggestion ES,
	HOfficialDetail H,
	EmployeeDetail ED
	where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
	ED.EmployeeId = ES.IEmpId and ES.IdeaId = DB.IdeaId and 
	H.HEmployeeId = DB.SenderID  and DB.IdeaId = @CmEmailID
	order by DB.SL_No Desc 
	
	
	
	update TeamEInbox set Remark5='X' where IdeaId = @CmEmailID
end
else
begin
		select top 1 DB.SenderMailID AS MailID, CONVERT(VARCHAR(23),DB.Date,103) AS FromDate,  
		(select top 1 H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = DB.SenderID) AS NewFrom,
		DB.ReceiverID AS ToEmpID,
		(select top 1 D.DepName from Department D where D.DepId = H.HDepartmentID) AS Department,
		DB.ETo AS ToMail,
		DB.Subject AS NewSubject,
		DB.Description AS Content,
		ES.IdeaId AS IDeaID, 
		H.HEmployeeId AS IDeaEmpID, 
		H.HEmployeeName AS IDeaEmpName,D.DepName AS EmpDepartment, 
		DD.DesName AS EmpDesignation,
		ES.Category AS SugCategory, ES.Benefits AS SugBenifits,
		ES.Date AS SugDate, ES.Subject AS SugSubject, ES.Before AS SugBefore, 
		ES.After AS SugAfter, ES.Status AS SugStatus,
		DB.Type,DB.Dep,DB.Des, DB.SenderID,ES.FileUpload1,ES.FileUpload2,ES.FileUpload3
		From 
		
		TeamEInbox DB,
		Department D, 
		DesignationDetail DD,
		EmployeeSuggestion ES,
		HOfficialDetail H,
		EmployeeDetail ED
		where D.DepId = ED.DepartmentId and DD.DesId = ED.DesignationId and 
		(H.HEmployeeId = ES.IEmpId or ED.EmployeeId=ES.IEmpId) and ES.IdeaId = DB.IdeaId and 
		  --ED.EmployeeId=ES.IEmpId  and ES.IdeaId = DB.IdeaId and 
		DB.IdeaId = @CmEmailID
		order by DB.SL_No Desc 
		
		update TeamEInbox set Remark5='X' where IdeaId = IdeaId
		
end

end
GO
/****** Object:  StoredProcedure [dbo].[IdeaDepGradeWise]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[IdeaDepGradeWise]
@type varchar(10)
as
begin

select D.DepName,COUNT(hra.IdeaId) as A,COUNT(hrb.IdeaId)as B,COUNT(hrc.IdeaId)as C from Department D left join EmployeeSuggestion es on es.IDepId=d.DepId 
													left join HRESend hra on hra.IDeaID=es.IdeaId and hra.BENGrade='A'
													left join HRESend hrb on hrb.IDeaID=es.IdeaId and hrb.BENGrade='B'
													left join HRESend hrc on hrc.IDeaID=es.IdeaId and hrc.BENGrade='C' 
													group by D.DepName
													
													
													
													
													
--select D.DepName,COUNT(hra.IdeaId) as A,COUNT(hrb.IdeaId)as B,COUNT(hrc.IdeaId)as C from Department D left join EmployeeSuggestion es on es.IDepId=d.DepId 
--													left join TeamEInbox ti on ti.ReceiverID=es.IEmpId
--													left join HRESend hra on hra.IDeaID=ti.IdeaId and hra.BENGrade='A'
--													left join HRESend hrb on hrb.IDeaID=ti.IdeaId and hrb.BENGrade='B'
--													left join HRESend hrc on hrc.IDeaID=ti.IdeaId and hrc.BENGrade='C' 
													
--													group by D.DepName
end
GO
/****** Object:  StoredProcedure [dbo].[IdeaDepCount]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[IdeaDepCount]
@type varchar(10)
as
begin

select D.DepName,COUNT(es.IdeaId)as Ideacount from Department D left join EmployeeSuggestion es on es.IDepId=d.DepId group by D.DepName
end
GO
/****** Object:  StoredProcedure [dbo].[hrselect]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[hrselect] 
@CmEmailID varchar(20),@ApproveUser varchar(max), @ApproveUseramt varchar(20),@Approveimpl varchar(max), @Approveimplamt varchar(20)
as
begin
declare @mailid varchar(20)=(select isnull(max(CmEmailID),0)+1 from HRESend)
declare @sl_no int =(select isnull(max(SL_No),0)+1 from HRESend)
insert into HRESend(
		SL_No
		,[CmEmailID]
		,[SenderMailID]
      ,[SenderID]
      ,[ReceiverID]
      ,[IDeaID]
      ,[EFrom]
      ,[ETo]
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,[HOSGrade]
      ,[HOSBM]
      ,[BENGrade]
      ,[BENBM]
      ,[ApprovedUser]
      ,[ApprovedUserAmt]
      ,[ApprovedImpl]
      ,[ApprovedImplAmt]
)
 select Top 1
		@sl_no
		,@mailid
	  ,[SenderMailID]
      ,'PI-266'
      ,'PI-235'
      ,[IDeaID]
      ,'jeyapandi.palani@poclain.com'
      ,'rajesh.arumugam@poclain.com'
      ,[Date]
      ,[Subject]
      ,[Description]
      ,[Type]
      ,[Days]
      ,[Rating]
      ,[Comment]
      ,HOSGrade
      ,HOSBM
      ,BENGrade
      ,BENBM
      ,@ApproveUser
      ,@ApproveUseramt
      ,@Approveimpl
      ,@Approveimplamt
       from BeneficiaryESend where IDeaID=@CmEmailID order by SL_No desc;
end
GO
/****** Object:  StoredProcedure [dbo].[RankingYearWise]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RankingYearWise]

as
begin
--drop table #tempdate
create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)

if(@crntdt>=26 and @crntdt<=31 and @crntmon=12)
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST(@crntyr AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end
else
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST((@crntyr-1) AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end

--select * from #tempdate
--drop table #GetDetails
create table #GetDetails1(IdeaId varchar(20),IEmpId varchar(20),IEmpName varchar(max))
insert into #GetDetails1

select distinct EG.IdeaId,EG.IEmpId,isnull (ED.EmployeeName,HD.HEmployeeName) from  #tempdate td, EmployeeSuggestion EG inner join TeamEInbox TI on TI.IDeaID=EG.IdeaId 
												left join EmployeeDetail ED on ED.EmployeeId=EG.IEmpId
												left join HOfficialDetail HD on HD.HEmployeeId=EG.IEmpId
												 
where EG.DATE between td.startdate and td.enddate 
--select * from #GetDetails1
--drop table #tempGetDetails
--create table #tempGetDetails(IdeaId varchar(20),IempId varchar(20))
--insert into #tempGetDetails
--SELECT distinct IdeaId, IEmpId 
--FROM #GetDetails e where not exists(select * from #tempGetDetails where e.IdeaId=IdeaId)

--select * from #tempGetDetails
SELECT top 3  COUNT(IdeaId) as countq, IempId,IEmpName 
FROM #GetDetails1 
group by IempId,IEmpName
order by countq desc

end
GO
/****** Object:  StoredProcedure [dbo].[Ranking1month]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Ranking1month]
as
begin
create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)
declare @date nvarchar(max)=@crndt
declare @setdate nvarchar(max)=@crntyr+'-'+@crntmon+'-'+'26'
declare @date1 date=convert(date,@setdate,111);
--select DATEADD(MONTH, -3, @date),@date
if(@crntdt>=26 and @crntdt<=31)
begin



set @strtdt =(select convert(date,DATEADD(MONTH, -0, @date1),111))

set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select @strtdt,convert(date,@enddt,103)
end

else
begin
set @strtdt =(select convert(date,DATEADD(MONTH, -1, @date1),111))

set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
--select @strtdt,@enddt
select @strtdt,convert(date,@enddt,103)
end
--select @strtdt,@enddt
--select * from #tempdate
create table #GetDetails1(IdeaId varchar(20),IEmpId varchar(20),IEmpName varchar(max))
insert into #GetDetails1

select distinct EG.IdeaId,EG.IEmpId,isnull (ED.EmployeeName,HD.HEmployeeName) from  #tempdate td, EmployeeSuggestion EG inner join TeamEInbox TI on TI.IDeaID=EG.IdeaId 
												left join EmployeeDetail ED on ED.EmployeeId=EG.IEmpId
												left join HOfficialDetail HD on HD.HEmployeeId=EG.IEmpId
												 
where EG.DATE between td.startdate and td.enddate 
--select * from #GetDetails1
--drop table #tempGetDetails
--create table #tempGetDetails(IdeaId varchar(20),IempId varchar(20))
--insert into #tempGetDetails
--SELECT distinct IdeaId, IEmpId 
--FROM #GetDetails e where not exists(select * from #tempGetDetails where e.IdeaId=IdeaId)

--select * from #tempGetDetails
SELECT top 3  COUNT(IdeaId) as countq, IempId,IEmpName 
FROM #GetDetails1 
group by IempId,IEmpName
order by countq desc


end
GO
/****** Object:  StoredProcedure [dbo].[YearpPieChart]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[YearpPieChart]
as
begin

create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)

if(@crntdt>=26 and @crntdt<=31 and @crntmon=12)
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST(@crntyr AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end
else
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST((@crntyr-1) AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end


declare @totalsuggestion int=(select count(*) from EmployeeSuggestion es, #tempdate td where date between startdate and enddate)

declare @implemented int=(select count(*) from EmployeeSuggestion eg,HOSEInbox hi,#tempdate td  where eg.IdeaId=hi.IDeaID and  eg.Date between startdate and enddate)


declare @Accepted int=(select COUNT(ideaid) from employeesuggestion es,#tempdate td where remark6!='C' and remark6!='W' and remark6!='N' and  Date between startdate and enddate)

select @totalsuggestion,@implemented,@Accepted
end
GO
/****** Object:  StoredProcedure [dbo].[YearMonthWiseBarChart]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[YearMonthWiseBarChart]
	as
	begin
	SET ANSI_WARNINGS OFF
	create table #tempmonth(S_No int identity(1,1) primary key,Months nvarchar(max))
	insert into #tempmonth
	SELECT DATENAME(MONTH,DATEADD(MONTH,number-datepart(month,GETDATE()),GETDATE())) as MonthNames
    FROM MASTER.DBO.spt_values
    WHERE TYPE ='P'
     AND number BETWEEN 1 AND 12
     
     --select * from #tempmonth
     
     

     create table #tempreceived(S_No int,Month nvarchar(max),received int)
     insert into #tempreceived
     select distinct tt.S_No,max(tt.Months),COUNT(es.ideaid)  from #tempmonth tt  left join EmployeeSuggestion es on tt.S_No=MONTH(date)and es.Remark6!='N'
     group by tt.S_No
     
      create table #tempaccepted(S_No int,Month nvarchar(max),accepted int)
     insert into #tempaccepted
     select distinct tt.S_No,max(tt.Months),COUNT(es.ideaid)  from #tempmonth tt  left join EmployeeSuggestion es on tt.S_No=MONTH(date) and es.Remark6!='N' and es.Remark6!='C' and es.Remark6!='W'
     group by tt.S_No
     
      create table #tempreject(S_No int,Month nvarchar(max),reject int)
     insert into #tempreject
     select distinct tt.S_No,max(tt.Months),COUNT(es.ideaid)  from #tempmonth tt  left join EmployeeSuggestion es on tt.S_No=MONTH(date) and es.Remark6='C'
     group by tt.S_No
     
     create table #temphold(S_No int,Month nvarchar(max),hold int)
     insert into #temphold
     select distinct tt.S_No,max(tt.Months),COUNT(es.ideaid)  from #tempmonth tt  left join EmployeeSuggestion es on tt.S_No=MONTH(date) and es.Remark6='W'
     group by tt.S_No
     
     create table #tempimplemented(S_No int,Month nvarchar(max),implemented int)
     insert into #tempimplemented
      select distinct tt.S_No,max(tt.Months),COUNT( distinct ideaid)  from #tempmonth tt  left join HOSEInbox es on tt.S_No=MONTH(date)
     group by tt.S_No
     
      
     create table #OneYearMonthWiseRecord(S_No int,Months nvarchar(max),received int,accepted int,reject int,hold int,implemented int)
     insert into #OneYearMonthWiseRecord
     select ta.S_No,ta.Months,tb.received,tc.accepted,td.reject,te.hold,tf.implemented from #tempmonth ta 
										left join #tempreceived tb on tb.S_No=ta.S_No
										left join #tempaccepted tc on tc.S_No=ta.S_No
										left join #tempreject td on td.S_No=ta.S_No
										left join #temphold te on te.S_No=ta.S_No
										left join #tempimplemented tf on tf.S_No=ta.S_No
										
	select * from #OneYearMonthWiseRecord
	
	end
GO
/****** Object:  StoredProcedure [dbo].[YearDepartmentBarchart]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[YearDepartmentBarchart]
as
begin
SET ANSI_WARNINGS OFF

create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)

if(@crntdt>=26 and @crntdt<=31 and @crntmon=12)
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST(@crntyr AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end
else
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST((@crntyr-1) AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end


--drop table #tempTotalimplement
create table #tempTotalimplement(DepName nvarchar(max),TotalImplement int)
insert into #tempTotalimplement
select distinct d.DepName,count(distinct ti.IDeaID) from Department d 
			left join HOfficialDetail ho on d.DepId=ho.HDepartmentID 
			left join TeamEInbox ti on ti.SenderID=ho.HEmployeeId 
			left join #tempdate te on ti.Date between te.startdate and te.enddate
group by DepName
--drop table #tempimplemented
create table #tempimplemented(DepName nvarchar(max),Implemented int)
insert into #tempimplemented
select distinct d.DepName,count(distinct ti.IDeaID) from Department d 
																					left join HOfficialDetail ho on d.DepId=ho.HDepartmentID 
																					left join TeamEInbox ti on ti.SenderID=ho.HEmployeeId 
																					
																					inner join HOSEInbox hi on hi.IDeaID=ti.IDeaID
																					left join #tempdate te on ti.Date between te.startdate and te.enddate
group by d.DepName


--drop table #tempyettoimplemented
create table #tempyettoimplemented(DepName nvarchar(max),YetToImplement int)
insert into #tempyettoimplemented

select distinct d.DepName,count(distinct ti.IDeaID) from Department d 
																					left join HOfficialDetail ho on d.DepId=ho.HDepartmentID 
																					left join TeamEInbox ti on ti.SenderID=ho.HEmployeeId 
																					left join #tempdate te on ti.Date between te.startdate and te.enddate
																					where ti.IDeaID not in (select IDeaID from HOSEInbox)
																					
group by d.DepName



select d.Depname,t1.TotalImplement,isnull(t2.Implemented,0)as Implemented,isnull(t3.YetToImplement,0)as YetToImplement from Department d
						left join #tempTotalimplement t1 on t1.DepName=d.DepName
						left join #tempimplemented t2 on t2.DepName=d.DepName
						left join #tempyettoimplemented t3 on t3.DepName=d.DepName
end
GO
/****** Object:  StoredProcedure [dbo].[YearBarChart]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[YearBarChart]
as
begin

create table #tempdate(startdate nvarchar(max),enddate nvarchar(max))

declare @crndt nvarchar(max)=current_timestamp;
declare @crntdt nvarchar(max)=day(@crndt)
declare @crntmon nvarchar(max)=month(@crndt)
declare @crntyr nvarchar(max)=year(@crndt)
--select @crntdt,@crntmon,@crntyr
declare  @strtdt nvarchar(max)
declare @enddt nvarchar(max)

if(@crntdt>=26 and @crntdt<=31 and @crntmon=12)
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST(@crntyr AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end
else
begin
set @strtdt =(SELECT CAST(26 AS NVARCHAR(2))+'-'+
                    CAST(12 AS NVARCHAR(2))+'-'+
                    CAST((@crntyr-1) AS NVARCHAR(4)))
set @enddt=CURRENT_TIMESTAMP; 
insert into #tempdate
select convert(date,@strtdt,103),convert(date,@enddt,103)
end

declare @suggestionreceived int=(select COUNT(ideaid) from EmployeeSuggestion es,#tempdate td where date between startdate and enddate)


declare @accepted int=(select COUNT(ideaid) from employeesuggestion es,#tempdate td where remark6!='C' and remark6!='W' and remark6!='N' and date between startdate and enddate)


declare @reject int=(select COUNT(ideaid) from employeesuggestion where remark6='C')



--declare @notfeasible int=(select COUNT(ideaid) from employeesuggestion where remark6='w')

select @suggestionreceived,@accepted,@reject--,@notfeasible

end
GO
/****** Object:  StoredProcedure [dbo].[teammember_mailview]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[teammember_mailview]
		@ReceiverID varchar(20)
		as
		begin
		
		if(@ReceiverID='admin')
		begin
		Select distinct C.CmEmailID AS ID, 
			(select HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
			C.Subject, C.IDeaID ,C.Remark5,C.Remark4 
			
			from TeamEInbox C inner join EmployeeSuggestion t2 on C.IDeaID=t2.IdeaId where t2.Remark6='E' and c.Remark1='i'
			
		end
		else
		begin
		

			Select distinct C.CmEmailID AS ID, 
			(select HEmployeeName from HOfficialDetail where HEmployeeId = C.SenderID) AS SendFrom,
			C.Subject, C.IDeaID ,C.Remark5 ,C.Remark4
			
			from TeamEInbox C inner join EmployeeSuggestion t2 on C.IDeaID=t2.IdeaId where C.ReceiverID = @ReceiverID  and t2.Remark6='E' and c.Remark1='i'
			
	end
	end
GO
/****** Object:  StoredProcedure [dbo].[paymentimpldetails]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[paymentimpldetails]
@IdeaId varchar(max)
as
begin


select IdeaId,CONVERT(VARCHAR(23),Date,3) as Date,[IMPLEmpId],[IMPLEmpName],FinTeam,Amount,CashMode from FinanceIMPLDetail where IdeaId=@IdeaId
end
GO
/****** Object:  StoredProcedure [dbo].[paymentdetails]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[paymentdetails]
@IdeaId varchar(max)
as
begin


select IdeaId,CONVERT(VARCHAR(23),Date,3) as Date,EmpId,EmpName,FinTeam,Amount,CashMode from FinanceDetail where IdeaId=@IdeaId
end
GO
/****** Object:  Table [dbo].[LoginDetail]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LoginDetail](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](30) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[DateTiming] [varchar](50) NULL,
	[OutTime] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Remark2] [varchar](50) NULL,
 CONSTRAINT [PK_LoginDetail] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LoginDetail] ON
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1, N'pi-266', N'Jeyapandi', N'12-Mar-20 6:10:54 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (2, N'pi-266', N'Jeyapandi', N'12-Mar-20 6:15:10 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (3, N'pi-266', N'Jeyapandi', N'12-Mar-20 6:29:46 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (4, N'pi-266', N'Jeyapandi', N'12-Mar-20 6:34:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (5, N'pi-266', N'Jeyapandi', N'12-Mar-20 6:38:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (6, N'pi-073', N'Balakrishnan', N'12-Mar-20 6:57:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (7, N'pi-266', N'Jeyapandi', N'13-Mar-20 12:21:55 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (8, N'pi-266', N'Jeyapandi', N'13-Mar-20 12:35:42 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (9, N'PI-266', N'Jeyapandi', N'13-Mar-20 12:48:17 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (10, N'pi-074', N'Premnath', N'13-Mar-20 12:58:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (11, N'pi-266', N'Jeyapandi', N'13-Mar-20 1:09:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (12, N'pi-074', N'Premnath', N'13-Mar-20 1:10:39 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (13, N'pi-073', N'Balakrishnan', N'13-Mar-20 1:12:21 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (14, N'pi-266', N'Jeyapandi', N'13-Mar-20 6:56:41 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (15, N'pi-266', N'Jeyapandi', N'13-Mar-20 7:42:31 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (16, N'pi-266', N'Jeyapandi', N'13-Mar-20 7:44:17 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (17, N'pi-266', N'Jeyapandi', N'13-Mar-20 8:15:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (18, N'pi-266', N'Jeyapandi', N'14-Mar-20 10:26:57 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (19, N'pi-266', N'Jeyapandi', N'14-Mar-20 10:35:13 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (20, N'pi-266', N'Jeyapandi', N'14-Mar-20 3:24:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (21, N'pi-266', N'Jeyapandi', N'14-Mar-20 3:38:04 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (22, N'pi-266', N'Jeyapandi', N'14-Mar-20 3:45:28 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (23, N'pi-266', N'Jeyapandi', N'14-Mar-20 3:49:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (24, N'pi-242', N'Vengadessane', N'14-Mar-20 3:50:17 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (25, N'pi-266', N'Jeyapandi', N'14-Mar-20 3:51:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (26, N'pi-266', N'Jeyapandi', N'16-Mar-20 10:38:02 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (27, N'pi-266', N'Jeyapandi', N'16-Mar-20 11:32:25 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (28, N'pi-266', N'Jeyapandi', N'16-Mar-20 11:39:05 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (29, N'pi-266', N'Jeyapandi', N'16-Mar-20 11:43:14 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (30, N'pi-266', N'Jeyapandi', N'16-Mar-20 12:30:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (31, N'pi-266', N'Jeyapandi', N'16-Mar-20 12:36:53 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (32, N'pi-266', N'Jeyapandi', N'16-Mar-20 12:58:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (33, N'pi-266', N'Jeyapandi', N'16-Mar-20 1:16:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (34, N'pi-074', N'Premnath', N'16-Mar-20 1:25:03 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (35, N'pi-266', N'Jeyapandi', N'3/16/2020 2:50:02 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (36, N'pi-073', N'Balakrishnan', N'3/16/2020 2:54:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (37, N'pi-266', N'Jeyapandi', N'3/16/2020 3:13:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (38, N'pi-266', N'Jeyapandi', N'16-Mar-20 3:25:30 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (39, N'pi-266', N'Jeyapandi', N'16-Mar-20 3:42:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (40, N'pi-266', N'Jeyapandi', N'16-Mar-20 4:14:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (41, N'pi-266', N'Jeyapandi', N'16-Mar-20 4:33:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (42, N'pi-074', N'Premnath', N'16-Mar-20 4:36:00 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (43, N'pi-266', N'Jeyapandi', N'16-Mar-20 4:39:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (44, N'pi-215', N'Danasayan', N'16-Mar-20 4:42:45 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (45, N'pi-266', N'Jeyapandi', N'16-Mar-20 5:07:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (46, N'pi-266', N'Jeyapandi', N'16-Mar-20 7:46:32 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (47, N'pi-266', N'Jeyapandi', N'17-Mar-20 10:02:12 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (48, N'pi-266', N'Jeyapandi', N'17-Mar-20 10:19:02 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (49, N'pi-091', N'Sezhiyan', N'17-Mar-20 10:33:54 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (50, N'pi-266', N'Jeyapandi', N'17-Mar-20 10:34:06 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (51, N'pi-266', N'Jeyapandi', N'17-Mar-20 10:39:35 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (52, N'pi-266', N'Jeyapandi', N'17-Mar-20 11:11:39 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (53, N'pi-266', N'Jeyapandi', N'17-Mar-20 11:30:44 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (54, N'pi-274', N'Nicolas', N'17-Mar-20 11:34:11 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (55, N'pi-266', N'Jeyapandi', N'17-Mar-20 11:34:30 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (56, N'pi-266', N'Jeyapandi', N'17-Mar-20 1:02:20 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (57, N'pi-266', N'Jeyapandi', N'17-Mar-20 1:14:16 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (58, N'pi-266', N'Jeyapandi', N'17-Mar-20 1:23:36 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (59, N'pi-266', N'Jeyapandi', N'17-Mar-20 2:06:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (60, N'pi-074', N'Premnath', N'17-Mar-20 2:08:17 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (61, N'pi-233', N'Jayachandran', N'17-Mar-20 2:09:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (62, N'pi-191', N'Sathyasekar', N'17-Mar-20 2:33:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (63, N'pi-286', N'Lokesh', N'17-Mar-20 2:59:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (64, N'pi-266', N'Jeyapandi', N'17-Mar-20 3:01:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (65, N'pi-191', N'Sathyasekar', N'17-Mar-20 3:08:12 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (66, N'pi-266', N'Jeyapandi', N'17-03-2020 16:45:44', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (67, N'pi-073', N'Balakrishnan', N'17-03-2020 16:51:21', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (68, N'pi-266', N'Jeyapandi', N'17-03-2020 16:57:58', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (69, N'pi-266', N'Jeyapandi', N'17-03-2020 17:02:43', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (70, N'pi-073', N'Balakrishnan', N'17-03-2020 17:32:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (71, N'pi-266', N'Jeyapandi', N'17-03-2020 17:33:25', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (72, N'pi-074', N'Premnath', N'17-03-2020 17:38:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (73, N'pi-266', N'Jeyapandi', N'17-03-2020 17:42:15', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (74, N'pi-233', N'Jayachandran', N'17-03-2020 17:44:00', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (75, N'pi-266', N'Jeyapandi', N'17-03-2020 17:44:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (76, N'pi-286', N'Lokesh', N'17-03-2020 17:46:38', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (77, N'PI-268', N'Kolappan', N'17-03-2020 18:06:08', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (78, N'pi-268', N'Kolappan', N'17-03-2020 18:58:33', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (79, N'PI-268', N'Kolappan', N'17-03-2020 19:00:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (80, N'PI-274', N'Nicolas', N'17-03-2020 19:01:11', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (81, N'PI-275', N'Francisco', N'17-03-2020 19:01:47', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (82, N'PI-248', N'Venkateswaran', N'17-03-2020 19:02:19', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (83, N'pi-266', N'Jeyapandi', N'18-03-2020 10:20:46', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (84, N'pi-266', N'Jeyapandi', N'18-03-2020 10:45:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (85, N'pi-074', N'Premnath', N'18-03-2020 10:59:29', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (86, N'PI-074', N'Premnath', N'18-03-2020 15:47:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (87, N'PI-190', N'Ayyappan', N'18-03-2020 16:12:33', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (88, N'pi-266', N'Jeyapandi', N'18-03-2020 16:33:42', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (89, N'pi-233', N'Jayachandran', N'18-03-2020 16:39:13', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (90, N'pi-273', N'Sivabalan', N'18-03-2020 16:40:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (91, N'pi-266', N'Jeyapandi', N'18-03-2020 16:40:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (92, N'pi-286', N'Lokesh', N'18-03-2020 17:21:41', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (93, N'PI-274', N'Nicolas', N'18-03-2020 18:28:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (94, N'pi-024', N'Magesh', N'18-03-2020 18:50:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (95, N'pi-024', N'Magesh', N'18-03-2020 19:21:10', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (96, N'pi-024', N'Magesh', N'19-03-2020 05:18:59', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (97, N'pi-243', N'Balaji', N'19-03-2020 05:25:13', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (98, N'PI-242', N'Vengadessane', N'19-03-2020 05:25:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (99, N'PI-242', N'Vengadessane', N'19-03-2020 05:31:45', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (100, N'pi-247', N'Venkatesh Tekkalki', N'19-03-2020 05:40:48', N'IN', N'I', N'I')
GO
print 'Processed 100 total records'
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (101, N'pi-024', N'Magesh', N'19-03-2020 05:45:04', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (102, N'pi-024', N'Magesh', N'19-03-2020 05:51:43', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (103, N'pi-024', N'Magesh', N'19-03-2020 06:51:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (104, N'pi-242', N'Vengadessane', N'19-03-2020 06:52:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (105, N'PI-274', N'Nicolas', N'19-03-2020 06:52:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (106, N'pi-286', N'Lokesh', N'19-03-2020 06:54:49', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (107, N'pi-266', N'Jeyapandi', N'19-03-2020 07:00:36', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (108, N'pi-286', N'Lokesh', N'19-03-2020 07:06:25', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (109, N'pi-286', N'Lokesh', N'19-03-2020 07:26:30', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (110, N'pi-286', N'Lokesh', N'19-03-2020 07:53:12', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (111, N'pi-286', N'Lokesh', N'19-03-2020 07:56:15', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (112, N'pi-073', N'Balakrishnan', N'19-03-2020 07:58:57', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (113, N'pi-266', N'Jeyapandi', N'19-03-2020 10:00:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (114, N'pi-266', N'Jeyapandi', N'19-03-2020 10:22:32', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (115, N'Pi-235', N'Rajesh', N'19-03-2020 10:39:15', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (116, N'pi-266', N'Jeyapandi', N'19-03-2020 11:05:31', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (117, N'pi-266', N'Jeyapandi', N'19-03-2020 11:18:19', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (118, N'pi-266', N'Jeyapandi', N'19-03-2020 11:25:13', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (119, N'pi-266', N'Jeyapandi', N'19-03-2020 11:31:53', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (120, N'pi-266', N'Jeyapandi', N'19-03-2020 12:06:49', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (121, N'pi-266', N'Jeyapandi', N'19-03-2020 12:16:52', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (122, N'pi-286', N'Lokesh', N'19-03-2020 12:25:16', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (123, N'pi-286', N'Lokesh', N'19-03-2020 12:28:10', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (124, N'pi-286', N'Lokesh', N'19-03-2020 12:49:19', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (125, N'pi-286', N'Lokesh', N'19-03-2020 13:04:04', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (126, N'pi-286', N'Lokesh', N'19-03-2020 13:07:24', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (127, N'pi-286', N'Lokesh', N'19-03-2020 13:08:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (128, N'pi-286', N'Lokesh', N'19-03-2020 13:19:16', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (129, N'pi-024', N'Magesh', N'19-03-2020 13:36:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (130, N'pi-242', N'Vengadessane', N'19-03-2020 13:36:25', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (131, N'pi-247', N'Venkatesh Tekkalki', N'19-03-2020 13:36:36', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (132, N'pi-235', N'Rajesh', N'19-03-2020 13:47:14', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (133, N'pi-266', N'Jeyapandi', N'19-03-2020 15:52:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (134, N'pi-266', N'Jeyapandi', N'19-03-2020 16:14:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (135, N'pi-266', N'Jeyapandi', N'19-03-2020 17:30:45', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (136, N'pi-266', N'Jeyapandi', N'19-03-2020 18:31:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (137, N'PI-266', N'Jeyapandi', N'27-03-2020 12:03:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (138, N'pi-074', N'Premnath', N'27-03-2020 12:08:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (139, N'PI-091', N'Sezhiyan', N'27-03-2020 12:17:12', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (140, N'PI-233', N'Jayachandran', N'27-03-2020 12:17:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (141, N'pi-266', N'Jeyapandi', N'27-03-2020 12:18:59', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (142, N'pi-286', N'Lokesh', N'27-03-2020 12:20:44', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (143, N'PI-274', N'Nicolas', N'27-03-2020 13:05:38', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (144, N'PI-275', N'Francisco', N'27-03-2020 13:11:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (145, N'PI-268', N'Kolappan', N'27-03-2020 13:12:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (146, N'PI-309', N'Roopa', N'27-03-2020 13:13:14', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (147, N'pi-266', N'Jeyapandi', N'27-03-2020 13:13:49', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (148, N'pi-266', N'Jeyapandi', N'27-03-2020 15:17:45', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (149, N'PI-235', N'Rajesh', N'27-03-2020 15:23:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (150, N'pi-266', N'Jeyapandi', N'08-05-2020 11:40:33', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (151, N'pi-266', N'Jeyapandi', N'08-05-2020 15:32:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (152, N'pi-266', N'Jeyapandi', N'08-05-2020 19:03:47', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (153, N'pi-266', N'Jeyapandi', N'08-05-2020 19:58:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (154, N'pi-191', N'Sathyasekar', N'08-05-2020 20:02:15', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (155, N'pi-191', N'Sathyasekar', N'08-05-2020 20:05:10', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (156, N'pi-266', N'Jeyapandi', N'08-05-2020 20:22:29', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (157, N'PI-248', N'Venkateswaran', N'08-05-2020 20:22:58', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (158, N'PI-275', N'Francisco', N'08-05-2020 20:26:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (159, N'pi-266', N'Jeyapandi', N'08-05-2020 20:27:16', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (160, N'Pi-235', N'Rajesh', N'08-05-2020 20:31:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (161, N'pi-266', N'Jeyapandi', N'09-05-2020 11:37:08', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (162, N'pi-266', N'Jeyapandi', N'09-05-2020 12:06:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (163, N'pi-266', N'Jeyapandi', N'09-05-2020 12:52:44', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (164, N'pi-266', N'Jeyapandi', N'09-05-2020 13:02:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (165, N'pi-266', N'Jeyapandi', N'09-05-2020 13:04:31', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (166, N'pi-266', N'Jeyapandi', N'09-05-2020 13:18:37', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (167, N'pi-266', N'Jeyapandi', N'09-05-2020 15:46:51', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (168, N'pi-266', N'Jeyapandi', N'09-05-2020 15:53:33', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (169, N'pi-266', N'Jeyapandi', N'09-05-2020 16:01:22', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (170, N'pi-266', N'Jeyapandi', N'09-05-2020 16:02:56', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (171, N'pi-266', N'Jeyapandi', N'09-05-2020 16:08:21', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (172, N'pi-266', N'Jeyapandi', N'09-05-2020 17:27:04', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (173, N'pi-266', N'Jeyapandi', N'09-05-2020 17:55:30', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (174, N'pi-266', N'Jeyapandi', N'09-05-2020 18:34:14', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (175, N'pi-266', N'Jeyapandi', N'09-05-2020 18:40:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (176, N'pi-266', N'Jeyapandi', N'09-05-2020 18:59:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (177, N'pi-266', N'Jeyapandi', N'09-05-2020 19:21:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (178, N'pi-266', N'Jeyapandi', N'09-05-2020 19:27:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (179, N'pi-266', N'Jeyapandi', N'09-05-2020 19:36:21', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (180, N'pi-266', N'Jeyapandi', N'09-05-2020 19:36:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (181, N'pi-266', N'Jeyapandi', N'09-05-2020 19:36:51', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (182, N'pi-266', N'Jeyapandi', N'09-05-2020 19:37:08', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (183, N'pi-266', N'Jeyapandi', N'09-05-2020 19:37:23', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (184, N'pi-266', N'Jeyapandi', N'09-05-2020 19:38:23', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (185, N'pi-266', N'Jeyapandi', N'09-05-2020 19:40:04', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (186, N'pi-266', N'Jeyapandi', N'09-05-2020 19:40:47', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (187, N'pi-266', N'Jeyapandi', N'09-05-2020 19:41:40', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (188, N'pi-266', N'Jeyapandi', N'09-05-2020 19:42:01', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (189, N'pi-227', N'Mohamed Azzad', N'09-05-2020 19:42:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (190, N'pi-227', N'Mohamed Azzad', N'09-05-2020 19:44:47', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (191, N'pi-266', N'Jeyapandi', N'09-05-2020 19:45:55', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (192, N'pi-227', N'Mohamed Azzad', N'09-05-2020 19:47:00', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (193, N'pi-227', N'Mohamed Azzad', N'09-05-2020 19:51:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (194, N'pi-227', N'Mohamed Azzad', N'09-05-2020 19:53:35', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (195, N'pi-191', N'Sathyasekar', N'09-05-2020 20:07:53', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (196, N'PI-274', N'Nicolas', N'09-05-2020 20:12:20', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (197, N'pi-266', N'Jeyapandi', N'09-05-2020 20:22:09', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (198, N'pi-266', N'Jeyapandi', N'09-05-2020 20:34:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (199, N'PI-248', N'Venkateswaran', N'09-05-2020 20:35:20', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (200, N'PI-274', N'Nicolas', N'09-05-2020 20:35:41', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (201, N'PI-235', N'Rajesh', N'09-05-2020 20:35:55', N'IN', N'I', N'I')
GO
print 'Processed 200 total records'
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (202, N'Pi-235', N'Rajesh', N'09-05-2020 20:37:51', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (203, N'pi-266', N'Jeyapandi', N'11-05-2020 10:44:57', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (204, N'pi-227', N'Mohamed Azzad', N'11-05-2020 10:49:10', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (205, N'pi-227', N'Mohamed Azzad', N'11-05-2020 15:08:07', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (206, N'pi-227', N'Mohamed Azzad', N'12-05-2020 18:47:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (207, N'pi-227', N'Mohamed Azzad', N'12-05-2020 20:25:46', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1206, N'pi-227', N'Mohamed Azzad', N'13-05-2020 10:26:58', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1207, N'pi-266', N'Jeyapandi', N'13-05-2020 15:14:21', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1208, N'pi-266', N'Jeyapandi', N'13-05-2020 18:03:20', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1209, N'pi-191', N'Sathyasekar', N'13-05-2020 20:02:58', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1210, N'pi-191', N'Sathyasekar', N'13-05-2020 20:17:46', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1211, N'pi-286', N'Lokesh', N'13-05-2020 20:23:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1212, N'pi-266', N'Jeyapandi', N'13-05-2020 20:28:30', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1213, N'pi-266', N'Jeyapandi', N'13-05-2020 20:29:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1214, N'pi-266', N'Jeyapandi', N'13-05-2020 20:29:44', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1215, N'pi-266', N'Jeyapandi', N'13-05-2020 20:43:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1216, N'PI-286', N'Lokesh', N'13-05-2020 20:45:41', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1217, N'pi-286', N'Lokesh', N'13-05-2020 21:18:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1218, N'pi-266', N'Jeyapandi', N'14-05-2020 07:06:59', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1219, N'pi-266', N'Jeyapandi', N'14-05-2020 07:10:52', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1220, N'pi-266', N'Jeyapandi', N'14-05-2020 07:33:31', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1221, N'pi-266', N'Jeyapandi', N'14-05-2020 07:34:07', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1222, N'PI-074', N'Premnath', N'14-05-2020 07:39:25', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1223, N'pi-266', N'Jeyapandi', N'14-05-2020 07:56:45', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1224, N'pi-074', N'Premnath', N'14-05-2020 07:57:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1225, N'pi-266', N'Jeyapandi', N'14-05-2020 07:58:10', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1226, N'pi-286', N'Lokesh', N'14-05-2020 07:58:46', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1227, N'PI-274', N'Nicolas', N'14-05-2020 08:00:54', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1228, N'pi-266', N'Jeyapandi', N'14-05-2020 08:02:11', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1229, N'PI-235', N'Rajesh', N'14-05-2020 08:02:50', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1230, N'pi-266', N'Jeyapandi', N'14-05-2020 08:04:21', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1231, N'pi-286', N'Lokesh', N'14-05-2020 13:34:32', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1232, N'pi-266', N'Jeyapandi', N'14-05-2020 17:48:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1233, N'pi-266', N'Jeyapandi', N'14-05-2020 17:55:22', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1234, N'pi-266', N'Jeyapandi', N'14-05-2020 17:58:32', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1235, N'pi-266', N'Jeyapandi', N'14-05-2020 18:02:26', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1236, N'pi-266', N'Jeyapandi', N'14-05-2020 18:36:35', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1237, N'pi-286', N'Lokesh', N'15-05-2020 13:06:13', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1238, N'pi-286', N'Lokesh', N'15-05-2020 13:11:49', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1239, N'pi-266', N'Jeyapandi', N'20-05-2020 10:54:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1240, N'pi-266', N'Jeyapandi', N'20-05-2020 13:18:12', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1241, N'pi-266', N'Jeyapandi', N'20-05-2020 14:54:49', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1242, N'pi-266', N'Jeyapandi', N'20-05-2020 15:12:38', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1243, N'pi-266', N'Jeyapandi', N'20-05-2020 15:18:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1244, N'pi-266', N'Jeyapandi', N'20-05-2020 15:21:37', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1245, N'pi-266', N'Jeyapandi', N'20-05-2020 15:23:51', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1246, N'pi-266', N'Jeyapandi', N'20-05-2020 15:27:43', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1247, N'pi-266', N'Jeyapandi', N'20-05-2020 15:30:26', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1248, N'pi-266', N'Jeyapandi', N'20-05-2020 15:47:37', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1249, N'pi-266', N'Jeyapandi', N'20-05-2020 17:16:23', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1250, N'pi-266', N'Jeyapandi', N'20-05-2020 17:28:25', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1251, N'pi-266', N'Jeyapandi', N'20-05-2020 17:37:32', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1252, N'pi-266', N'Jeyapandi', N'20-05-2020 17:39:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1253, N'PI-074', N'Premnath', N'20-05-2020 17:40:40', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1254, N'pi-266', N'Jeyapandi', N'20-05-2020 17:52:26', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1255, N'PI-074', N'Premnath', N'20-05-2020 17:52:56', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1256, N'pi-266', N'Jeyapandi', N'20-05-2020 17:54:09', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1257, N'pi-191', N'Sathyasekar', N'20-05-2020 17:57:24', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1258, N'PI-248', N'Venkateswaran', N'20-05-2020 17:59:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1259, N'pi-074', N'Premnath', N'20-05-2020 18:35:34', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1260, N'PI-248', N'Venkateswaran', N'20-05-2020 18:36:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1261, N'pi-227', N'Mohamed Azzad', N'20-05-2020 18:42:12', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1262, N'PI-248', N'Venkateswaran', N'20-05-2020 18:42:35', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1263, N'PI-248', N'Venkateswaran', N'20-05-2020 18:45:05', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1264, N'PI-248', N'Venkateswaran', N'20-05-2020 18:46:14', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1265, N'PI-248', N'Venkateswaran', N'21-05-2020 10:24:08', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1266, N'PI-248', N'Venkateswaran', N'21-05-2020 10:26:23', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1267, N'PI-248', N'Venkateswaran', N'21-05-2020 10:31:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1268, N'PI-248', N'Venkateswaran', N'21-05-2020 10:39:14', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1269, N'PI-248', N'Venkateswaran', N'21-05-2020 10:55:26', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1270, N'PI-274', N'Nicolas', N'21-05-2020 11:04:57', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1271, N'PI-247', N'Venkatesh Tekkalki', N'21-05-2020 11:05:29', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1272, N'pi-266', N'Jeyapandi', N'21-05-2020 11:06:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1273, N'PI-235', N'Rajesh', N'21-05-2020 11:06:43', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1274, N'PI-274', N'Nicolas', N'21-05-2020 11:07:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1275, N'pi-266', N'Jeyapandi', N'21-05-2020 11:12:00', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1276, N'pi-286', N'Lokesh', N'21-05-2020 11:13:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1277, N'PI-274', N'Nicolas', N'21-05-2020 11:21:19', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1278, N'PI-275', N'Francisco', N'21-05-2020 11:22:28', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1279, N'pi-266', N'Jeyapandi', N'21-05-2020 11:22:48', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1280, N'PI-235', N'Rajesh', N'21-05-2020 11:23:13', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1281, N'pi-266', N'Jeyapandi', N'21-05-2020 12:26:36', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1282, N'pi-266', N'Jeyapandi', N'21-05-2020 14:57:37', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1283, N'pi-266', N'Jeyapandi', N'21-05-2020 15:25:41', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1284, N'pi-266', N'Jeyapandi', N'21-05-2020 15:41:09', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1285, N'pi-266', N'Jeyapandi', N'28-05-2020 10:50:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1286, N'pi-266', N'Jeyapandi', N'28-05-2020 10:53:06', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1287, N'pi-266', N'Jeyapandi', N'28-05-2020 11:13:08', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1288, N'pi-286', N'Lokesh', N'28-05-2020 11:15:36', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1289, N'pi-286', N'Lokesh', N'28-05-2020 11:16:17', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1290, N'PI-274', N'Nicolas', N'28-05-2020 11:17:09', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1291, N'PI-275', N'Francisco', N'28-05-2020 11:17:45', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1292, N'pi-266', N'Jeyapandi', N'28-05-2020 11:18:02', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1293, N'PI-235', N'Rajesh', N'28-05-2020 11:18:27', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1294, N'pi-266', N'Jeyapandi', N'6/1/2020 3:10:50 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1295, N'pi-091', N'Sezhiyan', N'6/1/2020 4:23:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1296, N'pi-268', N'Kolappan', N'6/1/2020 4:24:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1297, N'pi-275', N'Francisco', N'6/1/2020 4:27:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1298, N'pi-266', N'Jeyapandi', N'6/1/2020 4:29:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1299, N'pi-091', N'Sezhiyan', N'6/1/2020 4:34:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1300, N'pi-266', N'Jeyapandi', N'6/1/2020 4:35:56 PM', N'IN', N'I', N'I')
GO
print 'Processed 300 total records'
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1301, N'pi-091', N'Sezhiyan', N'6/1/2020 4:37:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1302, N'pi-275', N'Francisco', N'6/1/2020 4:39:29 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1303, N'pi-273', N'Sivabalan', N'6/1/2020 4:40:02 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1304, N'pi-266', N'Jeyapandi', N'6/1/2020 4:41:07 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1305, N'pi-191', N'Sathyasekar', N'6/1/2020 4:43:20 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1306, N'pi-191', N'Sathyasekar', N'6/1/2020 5:31:50 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1307, N'pi-274', N'Nicolas', N'6/1/2020 5:54:20 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1308, N'pi-275', N'Francisco', N'6/1/2020 5:55:13 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1309, N'pi-235', N'Rajesh', N'6/1/2020 6:01:27 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1310, N'pi-275', N'Francisco', N'6/1/2020 6:05:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1311, N'pi-266', N'Jeyapandi', N'6/1/2020 6:11:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1312, N'pi-286', N'Lokesh', N'6/1/2020 6:13:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1313, N'pi-274', N'Nicolas', N'6/1/2020 6:20:08 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1314, N'pi-274', N'Nicolas', N'6/1/2020 6:27:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1315, N'pi-274', N'Nicolas', N'6/1/2020 6:45:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1316, N'pi-275', N'Francisco', N'6/1/2020 6:47:28 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1317, N'pi-266', N'Jeyapandi', N'6/1/2020 7:25:50 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1318, N'pi-266', N'Jeyapandi', N'6/2/2020 10:57:41 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1319, N'pi-235', N'Rajesh', N'6/2/2020 11:02:18 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1320, N'pi-266', N'Jeyapandi', N'6/2/2020 1:03:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1321, N'pi-266', N'Jeyapandi', N'6/2/2020 1:31:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1322, N'pi-266', N'Jeyapandi', N'6/2/2020 2:44:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1323, N'pi-266', N'Jeyapandi', N'6/2/2020 6:49:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1324, N'pi-266', N'Jeyapandi', N'6/3/2020 10:07:44 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1325, N'pi-266', N'Jeyapandi', N'6/3/2020 11:20:11 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1326, N'pi-266', N'Jeyapandi', N'6/3/2020 11:20:47 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1327, N'pi-266', N'Jeyapandi', N'6/3/2020 11:37:22 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1328, N'pi-266', N'Jeyapandi', N'6/3/2020 11:46:28 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1329, N'pi-266', N'Jeyapandi', N'6/3/2020 11:46:28 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1330, N'PI-266', N'Jeyapandi', N'6/3/2020 12:25:12 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1331, N'pi-266', N'Jeyapandi', N'6/3/2020 12:27:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1332, N'PI-266', N'Jeyapandi', N'6/3/2020 12:53:58 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1333, N'pi-266', N'Jeyapandi', N'6/3/2020 2:01:29 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1334, N'pi-274', N'Nicolas', N'6/3/2020 3:23:07 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1335, N'pi-191', N'Sathyasekar', N'6/3/2020 3:23:29 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1336, N'pi-275', N'Francisco', N'6/3/2020 3:23:58 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1337, N'pi-274', N'Nicolas', N'6/3/2020 3:26:55 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1338, N'pi-274', N'Nicolas', N'6/3/2020 4:41:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1339, N'pi-191', N'Sathyasekar', N'6/3/2020 4:42:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1340, N'pi-286', N'Lokesh', N'6/3/2020 4:45:58 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1341, N'pi-274', N'Nicolas', N'6/3/2020 4:49:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1342, N'pi-277', N'Marian', N'6/3/2020 4:52:40 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1343, N'pi-309', N'Roopa', N'6/3/2020 4:53:18 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1344, N'pi-266', N'Jeyapandi', N'6/3/2020 4:53:57 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1345, N'pi-266', N'Jeyapandi', N'6/3/2020 4:54:46 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1346, N'pi-266', N'Jeyapandi', N'6/3/2020 5:34:57 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1347, N'pi-266', N'Jeyapandi', N'6/3/2020 5:47:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1348, N'pi-266', N'Jeyapandi', N'6/3/2020 5:55:31 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1349, N'pi-266', N'Jeyapandi', N'6/3/2020 5:59:50 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1350, N'pi-266', N'Jeyapandi', N'6/3/2020 7:10:39 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1351, N'pi-266', N'Jeyapandi', N'6/3/2020 7:11:45 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1352, N'pi-266', N'Jeyapandi', N'6/3/2020 7:13:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1353, N'pi-266', N'Jeyapandi', N'6/4/2020 10:27:53 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1354, N'pi-266', N'Jeyapandi', N'6/4/2020 11:06:33 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1355, N'pi-266', N'Jeyapandi', N'6/4/2020 11:43:38 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1356, N'pi-266', N'Jeyapandi', N'6/4/2020 11:57:12 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1357, N'pi-266', N'Jeyapandi', N'6/4/2020 12:48:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1358, N'pi-235', N'Rajesh', N'6/4/2020 12:50:03 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1359, N'pi-235', N'Rajesh', N'6/4/2020 1:20:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1360, N'pi-235', N'Rajesh', N'6/4/2020 1:34:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1361, N'pi-275', N'Francisco', N'6/4/2020 3:01:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1362, N'pi-274', N'Nicolas', N'6/4/2020 3:01:59 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1363, N'pi-191', N'Sathyasekar', N'6/4/2020 3:04:01 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1364, N'pi-191', N'Sathyasekar', N'6/4/2020 3:54:59 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1365, N'pi-286', N'Lokesh', N'6/4/2020 4:44:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1366, N'pi-266', N'Jeyapandi', N'6/4/2020 5:12:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1367, N'pi-191', N'Sathyasekar', N'6/4/2020 5:14:09 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1368, N'pi-266', N'Jeyapandi', N'6/4/2020 5:14:52 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1369, N'pi-275', N'Francisco', N'6/4/2020 5:17:48 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1370, N'pi-286', N'Lokesh', N'6/4/2020 5:22:29 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1371, N'pi-274', N'Nicolas', N'6/4/2020 5:24:56 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1372, N'pi-275', N'Francisco', N'6/4/2020 5:27:14 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1373, N'pi-309', N'Roopa', N'6/4/2020 5:27:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1374, N'pi-277', N'Marian', N'6/4/2020 5:28:02 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1375, N'pi-266', N'Jeyapandi', N'6/4/2020 5:28:36 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1376, N'pi-286', N'Lokesh', N'6/4/2020 5:29:25 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1377, N'pi-266', N'Jeyapandi', N'6/4/2020 6:12:10 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1378, N'pi-273', N'Sivabalan', N'6/4/2020 6:28:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1379, N'pi-233', N'Jayachandran', N'6/4/2020 6:28:34 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1380, N'pi-273', N'Sivabalan', N'6/4/2020 6:29:54 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1381, N'pi-266', N'Jeyapandi', N'6/4/2020 6:30:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1382, N'pi-268', N'Kolappan', N'6/4/2020 6:33:27 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1383, N'pi-268', N'Kolappan', N'6/4/2020 7:17:12 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1384, N'pi-268', N'Kolappan', N'6/4/2020 7:27:12 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1385, N'pi-277', N'Marian', N'6/4/2020 7:30:36 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1386, N'pi-024', N'Magesh', N'6/4/2020 7:31:24 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1387, N'pi-266', N'Jeyapandi', N'6/4/2020 7:31:54 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1388, N'pi-235', N'Rajesh', N'6/4/2020 7:33:08 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1389, N'pi-235', N'Rajesh', N'6/4/2020 7:35:25 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1390, N'pi-266', N'Jeyapandi', N'6/4/2020 7:35:54 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1391, N'pi-277', N'Marian', N'6/4/2020 7:37:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1392, N'pi-024', N'Magesh', N'6/4/2020 7:37:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1393, N'pi-268', N'Kolappan', N'6/4/2020 7:38:11 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1394, N'pi-268', N'Kolappan', N'6/4/2020 7:38:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1395, N'pi-273', N'Sivabalan', N'6/4/2020 7:41:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1396, N'pi-266', N'Jeyapandi', N'6/4/2020 7:42:21 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1397, N'pi-268', N'Kolappan', N'6/5/2020 10:49:26 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1398, N'pi-266', N'Jeyapandi', N'6/5/2020 11:11:06 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1399, N'pi-273', N'Sivabalan', N'6/5/2020 11:13:36 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1400, N'pi-233', N'Jayachandran', N'6/5/2020 11:15:32 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1401, N'pi-266', N'Jeyapandi', N'6/5/2020 11:16:19 AM', N'IN', N'I', N'I')
GO
print 'Processed 400 total records'
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1402, N'pi-268', N'Kolappan', N'6/5/2020 11:20:11 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1403, N'pi-268', N'Kolappan', N'6/5/2020 11:32:56 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1404, N'pi-243', N'Balaji', N'6/5/2020 11:34:44 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1405, N'pi-268', N'Kolappan', N'6/5/2020 11:38:45 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1406, N'pi-268', N'Kolappan', N'6/5/2020 12:33:13 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1407, N'pi-268', N'Kolappan', N'6/5/2020 3:39:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1408, N'pi-243', N'Balaji', N'6/5/2020 3:52:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1409, N'pi-220', N'Gopalakrishnan', N'6/5/2020 3:53:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1410, N'pi-150', N'Vijay Ganesh', N'6/5/2020 3:54:08 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1411, N'pi-266', N'Jeyapandi', N'6/5/2020 3:54:42 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1412, N'pi-235', N'Rajesh', N'6/5/2020 3:56:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1413, N'pi-220', N'Gopalakrishnan', N'6/5/2020 3:57:52 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1414, N'pi-150', N'Vijay Ganesh', N'6/5/2020 3:58:10 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1415, N'pi-268', N'Kolappan', N'6/5/2020 3:58:28 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1416, N'pi-243', N'Balaji', N'6/5/2020 3:59:11 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1417, N'pi-150', N'Vijay Ganesh', N'6/5/2020 4:03:02 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1418, N'pi-220', N'Gopalakrishnan', N'6/5/2020 4:03:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1419, N'pi-268', N'Kolappan', N'6/5/2020 4:06:16 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1420, N'pi-273', N'Sivabalan', N'6/5/2020 4:07:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1421, N'pi-233', N'Jayachandran', N'6/5/2020 4:08:15 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1422, N'pi-266', N'Jeyapandi', N'6/5/2020 4:08:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1423, N'pi-266', N'Jeyapandi', N'6/5/2020 4:41:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1424, N'pi-266', N'Jeyapandi', N'6/5/2020 5:19:39 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1425, N'pi-266', N'Jeyapandi', N'6/5/2020 5:23:48 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1426, N'pi-266', N'Jeyapandi', N'6/5/2020 5:37:18 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1427, N'pi-266', N'Jeyapandi', N'6/5/2020 5:46:21 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1428, N'pi-266', N'Jeyapandi', N'6/5/2020 6:08:40 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1429, N'pi-266', N'Jeyapandi', N'6/5/2020 6:48:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1430, N'pi-266', N'Jeyapandi', N'6/5/2020 7:19:27 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1431, N'pi-266', N'Jeyapandi', N'6/5/2020 7:21:27 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1432, N'pi-266', N'Jeyapandi', N'6/6/2020 10:08:10 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1433, N'pi-266', N'Jeyapandi', N'6/6/2020 11:06:23 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1434, N'pi-266', N'Jeyapandi', N'6/6/2020 12:48:39 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1435, N'pi-266', N'Jeyapandi', N'6/6/2020 1:21:48 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1436, N'pi-266', N'Jeyapandi', N'6/6/2020 2:04:10 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1437, N'pi-266', N'Jeyapandi', N'6/6/2020 2:10:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1438, N'pi-266', N'Jeyapandi', N'6/6/2020 2:41:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1439, N'pi-266', N'Jeyapandi', N'6/6/2020 2:55:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1440, N'pi-266', N'Jeyapandi', N'6/6/2020 3:56:03 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1441, N'pi-266', N'Jeyapandi', N'6/6/2020 4:01:26 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1442, N'pi-266', N'Jeyapandi', N'6/6/2020 6:08:46 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1443, N'pi-024', N'Magesh', N'6/8/2020 12:58:38 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1444, N'pi-248', N'Venkateswaran', N'6/8/2020 12:59:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1445, N'pi-268', N'Kolappan', N'6/8/2020 12:59:24 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1446, N'pi-073', N'Balakrishnan', N'6/8/2020 1:00:09 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1447, N'pi-273', N'Sivabalan', N'6/8/2020 1:00:35 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1448, N'pi-266', N'Jeyapandi', N'6/8/2020 1:01:01 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1449, N'pi-266', N'Jeyapandi', N'6/9/2020 10:32:29 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1450, N'pi-273', N'Sivabalan', N'6/9/2020 10:37:01 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1451, N'pi-266', N'Jeyapandi', N'6/9/2020 10:38:03 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1452, N'pi-289', N'Balan', N'6/9/2020 10:39:12 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1453, N'pi-248', N'Venkateswaran', N'6/9/2020 10:44:23 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1454, N'pi-277', N'Marian', N'6/9/2020 10:46:06 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1455, N'pi-266', N'Jeyapandi', N'6/9/2020 10:46:51 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1456, N'pi-266', N'Jeyapandi', N'6/9/2020 12:22:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1457, N'pi-266', N'Jeyapandi', N'6/9/2020 3:33:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1458, N'pi-266', N'Jeyapandi', N'6/9/2020 3:42:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1459, N'pi-266', N'Jeyapandi', N'6/9/2020 3:44:31 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1460, N'pi-266', N'Jeyapandi', N'6/9/2020 5:33:58 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1461, N'pi-273', N'Sivabalan', N'6/9/2020 5:35:55 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1462, N'pi-233', N'Jayachandran', N'6/9/2020 5:39:34 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1463, N'pi-266', N'Jeyapandi', N'6/9/2020 5:40:04 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1464, N'pi-243', N'Balaji', N'6/9/2020 5:41:13 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1465, N'pi-274', N'Nicolas', N'6/9/2020 5:46:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1466, N'pi-220', N'Gopalakrishnan', N'6/9/2020 5:49:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1467, N'pi-067', N'Venkatesh', N'6/9/2020 5:51:54 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1468, N'pi-266', N'Jeyapandi', N'6/9/2020 5:52:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1469, N'pi-235', N'Rajesh', N'6/9/2020 5:53:36 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1470, N'pi-266', N'Jeyapandi', N'6/9/2020 7:38:07 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1471, N'pi-266', N'Jeyapandi', N'6/9/2020 7:43:24 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1472, N'pi-266', N'Jeyapandi', N'6/9/2020 7:55:59 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1473, N'pi-266', N'Jeyapandi', N'6/9/2020 8:11:47 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1474, N'pi-266', N'Jeyapandi', N'6/9/2020 8:15:01 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1475, N'pi-266', N'Jeyapandi', N'6/10/2020 10:32:35 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1476, N'pi-266', N'Jeyapandi', N'6/10/2020 10:57:30 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1477, N'pi-274', N'Nicolas', N'6/10/2020 10:57:45 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1478, N'pi-266', N'Jeyapandi', N'6/10/2020 10:58:23 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1479, N'pi-266', N'Jeyapandi', N'6/10/2020 2:19:30 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1480, N'pi-266', N'Jeyapandi', N'6/10/2020 2:37:20 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1481, N'pi-266', N'Jeyapandi', N'6/10/2020 2:49:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1482, N'pi-266', N'Jeyapandi', N'6/10/2020 3:13:26 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1483, N'pi-266', N'Jeyapandi', N'6/10/2020 4:17:35 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1484, N'pi-266', N'Jeyapandi', N'6/10/2020 4:28:20 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1485, N'pi-243', N'Balaji', N'6/10/2020 4:29:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1486, N'pi-266', N'Jeyapandi', N'6/10/2020 4:49:51 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1487, N'pi-266', N'Jeyapandi', N'6/10/2020 5:20:01 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1494, N'pi-235', N'Rajesh', N'6/11/2020 7:05:29 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1495, N'pi-235', N'Rajesh', N'6/11/2020 7:12:07 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1496, N'pi-235', N'Rajesh', N'6/12/2020 11:47:58 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1497, N'pi-235', N'Rajesh', N'6/13/2020 1:52:43 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1498, N'pi-235', N'Rajesh', N'6/13/2020 6:29:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1499, N'pi-235', N'Rajesh', N'6/16/2020 4:14:18 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1500, N'pi-235', N'Rajesh', N'6/16/2020 5:32:44 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1501, N'pi-235', N'Rajesh', N'6/17/2020 1:35:21 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1502, N'pi-235', N'Rajesh', N'6/18/2020 7:16:06 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1503, N'pi-235', N'Rajesh', N'6/23/2020 6:52:25 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1504, N'pi-235', N'Rajesh', N'6/24/2020 12:45:53 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1505, N'pi-235', N'Rajesh', N'6/26/2020 3:29:40 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1506, N'pi-235', N'Rajesh', N'6/30/2020 10:31:20 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1507, N'pi-235', N'Rajesh', N'6/30/2020 1:59:26 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1508, N'pi-235', N'Rajesh', N'7/3/2020 11:47:04 AM', N'IN', N'I', N'I')
GO
print 'Processed 500 total records'
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1509, N'pi-235', N'Rajesh', N'7/7/2020 4:16:41 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1510, N'pi-235', N'Rajesh', N'7/7/2020 5:13:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1511, N'pi-235', N'Rajesh', N'7/7/2020 6:31:36 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1512, N'pi-235', N'Rajesh', N'7/7/2020 7:48:32 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1513, N'pi-235', N'Rajesh', N'7/8/2020 9:56:31 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1514, N'pi-235', N'Rajesh', N'7/8/2020 10:20:50 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1515, N'pi-235', N'Rajesh', N'7/8/2020 10:40:40 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1516, N'pi-235', N'Rajesh', N'7/10/2020 10:30:36 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1517, N'pi-235', N'Rajesh', N'7/14/2020 11:44:07 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1518, N'pi-235', N'Rajesh', N'7/14/2020 11:48:01 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1519, N'pi-235', N'Rajesh', N'7/17/2020 2:26:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1520, N'pi-235', N'Rajesh', N'7/17/2020 2:27:58 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1521, N'pi-235', N'Rajesh', N'7/17/2020 2:29:03 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1522, N'pi-235', N'Rajesh', N'7/17/2020 2:33:22 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1523, N'pi-235', N'Rajesh', N'7/17/2020 2:35:52 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1524, N'pi-235', N'Rajesh', N'7/17/2020 3:42:42 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1525, N'pi-235', N'Rajesh', N'7/21/2020 7:03:55 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1526, N'pi-235', N'Rajesh', N'7/21/2020 7:23:59 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1527, N'pi-235', N'Rajesh', N'7/22/2020 10:37:37 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1528, N'pi-235', N'Rajesh', N'30-Jul-20 12:25:46 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1529, N'pi-235', N'Rajesh', N'30-Jul-20 1:22:23 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1530, N'pi-235', N'Rajesh', N'30-Jul-20 6:41:57 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1531, N'pi-235', N'Rajesh', N'31-Jul-20 11:41:55 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1532, N'pi-235', N'Rajesh', N'31-Jul-20 12:34:14 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1533, N'pi-235', N'Rajesh', N'31-Jul-20 1:19:24 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1534, N'pi-235', N'Rajesh', N'31-Jul-20 1:39:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1535, N'pi-235', N'Rajesh', N'31-Jul-20 2:04:10 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1536, N'pi-235', N'Rajesh', N'31-Jul-20 4:31:00 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1537, N'pi-235', N'Rajesh', N'31-Jul-20 6:10:35 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1538, N'pi-235', N'Rajesh', N'31-Jul-20 6:16:35 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1539, N'pi-235', N'Rajesh', N'31-Jul-20 6:42:19 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1540, N'pi-235', N'Rajesh', N'01-Aug-20 11:30:29 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1541, N'pi-235', N'Rajesh', N'01-Aug-20 3:15:15 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1542, N'pi-235', N'Rajesh', N'01-Aug-20 3:29:41 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1543, N'pi-235', N'Rajesh', N'03-Aug-20 10:17:52 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1544, N'pi-235', N'Rajesh', N'03-Aug-20 10:48:14 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1545, N'pi-235', N'Rajesh', N'03-Aug-20 11:47:54 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1546, N'pi-235', N'Rajesh', N'03-Aug-20 12:16:17 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1547, N'pi-235', N'Rajesh', N'03-Aug-20 12:22:16 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1548, N'pi-235', N'Rajesh', N'03-Aug-20 12:36:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1549, N'pi-235', N'Rajesh', N'03-Aug-20 6:27:25 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1550, N'pi-235', N'Rajesh', N'03-Aug-20 7:15:42 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1551, N'pi-235', N'Rajesh', N'04-Aug-20 10:42:01 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1552, N'pi-235', N'Rajesh', N'04-Aug-20 11:09:27 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1553, N'pi-235', N'Rajesh', N'04-Aug-20 11:51:10 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1554, N'pi-235', N'Rajesh', N'04-Aug-20 5:30:39 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1555, N'pi-235', N'Rajesh', N'04-Aug-20 5:57:05 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1556, N'pi-235', N'Rajesh', N'04-Aug-20 6:00:32 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1557, N'pi-235', N'Rajesh', N'04-Aug-20 6:57:08 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1558, N'pi-235', N'Rajesh', N'05-Aug-20 11:41:59 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1559, N'pi-235', N'Rajesh', N'05-Aug-20 1:32:16 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1560, N'pi-235', N'Rajesh', N'05-Aug-20 7:08:32 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1561, N'pi-235', N'Rajesh', N'06-Aug-20 10:44:23 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1562, N'pi-235', N'Rajesh', N'06-Aug-20 12:04:59 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1563, N'pi-235', N'Rajesh', N'06-Aug-20 3:46:37 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1564, N'pi-235', N'Rajesh', N'8/6/2020 3:59:15 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1565, N'pi-235', N'Rajesh', N'8/6/2020 4:10:04 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1566, N'pi-235', N'Rajesh', N'07-Aug-20 10:58:47 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1567, N'pi-235', N'Rajesh', N'07-Aug-20 11:06:02 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1568, N'pi-235', N'Rajesh', N'8/7/2020 11:45:40 AM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1569, N'pi-235', N'Rajesh', N'12-Aug-20 10:19:16 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1570, N'pi-235', N'Rajesh', N'17-Aug-20 12:32:35 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1571, N'pi-235', N'Rajesh', N'17-Aug-20 12:50:57 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1572, N'pi-235', N'Rajesh', N'20-Aug-20 10:20:00 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1573, N'pi-235', N'Rajesh', N'09-Sep-20 3:58:46 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1574, N'pi-235', N'Rajesh', N'21-Sep-20 5:51:49 PM', N'IN', N'I', N'I')
INSERT [dbo].[LoginDetail] ([LoginId], [UserId], [UserName], [DateTiming], [OutTime], [Remark1], [Remark2]) VALUES (1575, N'pi-235', N'Rajesh', N'22-Sep-20 11:44:36 AM', N'IN', N'I', N'I')
SET IDENTITY_INSERT [dbo].[LoginDetail] OFF
/****** Object:  Table [dbo].[ProjectDetail]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ProjectDetail](
	[SL_No] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[TeamId] [int] NULL,
	[HeadId] [varchar](30) NULL,
	[EmpId] [varchar](30) NULL,
	[IDeaID] [int] NULL,
	[Date] [date] NULL,
	[HMessage] [varchar](max) NULL,
	[ToDate] [date] NULL,
	[Status] [varchar](50) NULL,
	[Remark1] [varchar](50) NULL,
	[Reamark2] [varchar](50) NULL,
	[Remark3] [varchar](50) NULL,
 CONSTRAINT [PK_ProjectDetail] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fun_GetPosterName]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_GetPosterName](@ideaid nvarchar(10))
	returns nvarchar(max)
	as
	begin
	   declare @employeeName nvarchar(max);
	   declare @EMPID nvarchar(25)=(select top 1 IEmpid from EmployeeSuggestion where IdeaId=@ideaid)
	   if exists(select * from EmployeeDetail where EmployeeId=@EMPID)
		begin
			set @employeeName=(select top 1 EmployeeName from EmployeeDetail where EmployeeId=@EMPID)
		end
	   else 
		begin
			set @employeeName=(select top 1 HEmployeeName from HOfficialDetail where HEmployeeId=@EMPID)
		end
	   return @employeeName;
	end
GO
/****** Object:  UserDefinedFunction [dbo].[fun_CommiteeGetPosterName]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_CommiteeGetPosterName](@ReceiverId nvarchar(10))
	returns nvarchar(max)
	as
	begin
	   declare @employeeName nvarchar(max);
	   
	   if exists(select * from EmployeeDetail where EmployeeId=@ReceiverId)
		begin
			set @employeeName=(select top 1 EmployeeName from EmployeeDetail where EmployeeId=@ReceiverId)
		end
	   else 
		begin
			set @employeeName=(select top 1 HEmployeeName from HOfficialDetail where HEmployeeId=@ReceiverId)
		end
	   return @employeeName;
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_CommitteeEvalSend_SelectGridView_MailSendID]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CommitteeEvalSend_SelectGridView_MailSendID]
	-- Add the parameters for the stored procedure here
		 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	select ReceiverID, Date, 
	dbo.fun_CommiteeGetPosterName(ReceiverID)AS NewFrom,
	--(select H.HEmployeeName from HOfficialDetail H where H.HEmployeeId = ReceiverID) AS NewFrom,
	IDeaID, Type, Dep,Des
	From 
	
	CommitteeEvalEInbox
	
	
	order by SL_No Desc 


end
GO
/****** Object:  StoredProcedure [dbo].[Manager_mailview_reject]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Manager_mailview_reject]
		@ReceiverID varchar(20)
		as
		begin
		

				--Select C.CmEmailID AS ID, 
				--dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				--C.Subject, C.IDeaID  
				
				--from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				--order by C.SL_No Desc
	if(@ReceiverID='admin')
			begin
							Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C where C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc	
			end
		else
			begin
		
		

							Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='C' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc
			end
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Manager_mailview_hold]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Manager_mailview_hold]
		@ReceiverID varchar(20)
		as
		begin
		

				--Select C.CmEmailID AS ID, 
				--dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				--C.Subject, C.IDeaID  
				
				--from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='W' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				--order by C.SL_No Desc
		if(@ReceiverID='admin')
			begin
				Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C where C.Remark5 ='W' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc	
			end
		else
			begin
		
		

				Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 ='W' and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc
			end
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Manager_mailview_complete]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Manager_mailview_complete]
	@ReceiverID varchar(20)
	as
	begin
	--  SELECT SL_No as sno,Subject,Description,DATEDIFF(DAY,Date,GETDATE()) as Datedif  FROM HOSEInbox where ReceiverID=@usercode or ETo=@usercode
	--Select distinct C.CmEmailID AS ID, 
	
	--dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
	--C.Subject, C.IDeaID  
	
	--from ManagerEInbox C,HOSEInbox H,TeamEInbox T where C.ReceiverID = @ReceiverID and H.IDeaID = C.IDeaID and T.IDeaID = C.IDeaID 
	if(@ReceiverID='admin')
			begin
				Select distinct C.CmEmailID AS ID, 
	
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C,HOSEInbox H,TeamEInbox T where H.IDeaID = C.IDeaID and T.IDeaID = C.IDeaID 	
			end
		else
			begin
		
		

				Select distinct C.CmEmailID AS ID, 
	
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C,HOSEInbox H,TeamEInbox T where C.ReceiverID = @ReceiverID and H.IDeaID = C.IDeaID and T.IDeaID = C.IDeaID 
				
			end
	
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Manager_mailview_assigned]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Manager_mailview_assigned]
		@ReceiverID varchar(20)
		as
		begin

	--Select distinct C.CmEmailID AS ID, 
	--dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
	--C.Subject, C.IDeaID  
	
	--from ManagerEInbox C,TeamEInbox T where C.ReceiverID = @ReceiverID and T.IDeaID=C.IDeaID and C.IDeaID  not in(select IDeaID from HOSEInbox) 
	if(@ReceiverID='admin')
			begin
				Select distinct C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C,TeamEInbox T where T.IDeaID=C.IDeaID and C.IDeaID  not in(select IDeaID from HOSEInbox)
					
			end
		else
			begin
		
		

				Select distinct C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID  
				
				from ManagerEInbox C,TeamEInbox T where C.ReceiverID = @ReceiverID and T.IDeaID=C.IDeaID and C.IDeaID  not in(select IDeaID from HOSEInbox)
				
	
			end	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Manager_mailview]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Manager_mailview]
		@ReceiverID varchar(20)
		as
		begin
		if(@ReceiverID='admin')
			begin
				Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID ,C.Remark2 
				
				from ManagerEInbox C where C.Remark5 is null and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc
		
			end
		else
			begin
		
		

				Select C.CmEmailID AS ID, 
				dbo.fun_GetPosterName(C.IDeaID) AS EmployeeName,
				C.Subject, C.IDeaID ,C.Remark2 
				
				from ManagerEInbox C where C.ReceiverID = @ReceiverID and C.Remark5 is null and C.IDeaID  not in(select IDeaID from TeamEInbox) and C.IDeaID not in(select IDeaID from HOSEInbox)
				order by C.SL_No Desc
	
	
			end	
end
GO
/****** Object:  StoredProcedure [dbo].[HR_mailviewcomplete]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HR_mailviewcomplete]
		@ReceiverID varchar(20)
		as
		begin
		
		if(@ReceiverID='admin')
		begin
			Select distinct C.IDeaID,
		dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
		
	--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
		
		from BeneficiaryESend C,HRESend H where H.IDeaID=C.IDeaID 
		
		
		
		end
		else
		begin

		Select distinct C.IDeaID,
		dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
		
	--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
		
		from BeneficiaryESend C,HRESend H where H.IDeaID=C.IDeaID and C.ReceiverID = @ReceiverID or @ReceiverID= 'pi-242'
		
		
	end
	
	end
GO
/****** Object:  StoredProcedure [dbo].[HR_mailview]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HR_mailview]
		@ReceiverID varchar(20)
		as
		begin


	
	
	
	--select distinct C.IDeaID,dbo.fun_GetPosterName(C.IDeaID)as SendFrom from BeneficiaryESend C where C.ReceiverID = @ReceiverID and C.IDeaID not in (select IdeaID from HRESend)
	if(@ReceiverID='admin')
	begin
	
	select distinct C.IDeaID,dbo.fun_GetPosterName(C.IDeaID)as SendFrom from BeneficiaryESend C where C.IDeaID not in (select IdeaID from HRESend)
	end
	else
	begin
	
	select distinct C.IDeaID,dbo.fun_GetPosterName(C.IDeaID)as SendFrom from BeneficiaryESend C where C.ReceiverID = @ReceiverID or @ReceiverID= 'pi-242' and C.IDeaID not in (select IdeaID from HRESend)
	
	end
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[FinanceIMPL_mailview_complete]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FinanceIMPL_mailview_complete]
		@ReceiverID varchar(20)
		as
		begin
		if(@ReceiverID='admin')
		begin 
		Select distinct C.IDeaID,
		dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
		,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
	--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
		
		from HRESend C,FinanceIMPLDetail H where H.IDeaID=C.IDeaID 
		
		end
		else
		begin

	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C,FinanceIMPLDetail H where H.IDeaID=C.IDeaID and C.ReceiverID = @ReceiverID
	
	end
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[FinanceIMPL_mailview_]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FinanceIMPL_mailview_]
		@ReceiverID varchar(20)
		as
		begin
	if(@ReceiverID='admin')
	begin
	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C where C.IDeaID not in (select IdeaID from [FinanceIMPLDetail])
	order by C.IDeaID desc
	end
	else
	begin
	
	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C where C.ReceiverID = @ReceiverID and C.IDeaID not in (select IdeaID from [FinanceIMPLDetail])and Remark2='Y'
	order by C.IDeaID desc
	end
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Finance_mailview_complete]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Finance_mailview_complete]
		@ReceiverID varchar(20)
		as
		begin
		if(@ReceiverID='admin')
		begin 
		Select distinct C.IDeaID,
		dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
		,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
	--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
		
		from HRESend C,FinanceDetail H where H.IDeaID=C.IDeaID 
		
		end
		else
		begin

	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C,FinanceDetail H where H.IDeaID=C.IDeaID and C.ReceiverID = @ReceiverID
	
	end
	
	
	end
GO
/****** Object:  StoredProcedure [dbo].[Finance_mailview]    Script Date: 10/03/2020 11:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Finance_mailview]
		@ReceiverID varchar(20)
		as
		begin
	if(@ReceiverID='admin')
	begin
	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
	
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C where C.IDeaID not in (select IdeaID from FinanceDetail)
	order by C.IDeaID desc
	end
	else
	begin
	
	Select distinct C.IDeaID,
	dbo.fun_GetPosterName(C.IDeaID)as SendFrom--,
	,[dbo].[fun_GetNameOfManager](C.Remark3) as HRName
--	C.Subject--,(select distinct C.IDeaID) as IDeaID  
	
	from HRESend C where C.ReceiverID = @ReceiverID and C.IDeaID not in (select IdeaID from FinanceDetail) and Remark1='X'
	order by C.IDeaID desc
	end
	
	end
GO
/****** Object:  ForeignKey [FK_TeamDetail_TeamDetail]    Script Date: 10/03/2020 11:28:49 ******/
ALTER TABLE [dbo].[TeamDetail]  WITH CHECK ADD  CONSTRAINT [FK_TeamDetail_TeamDetail] FOREIGN KEY([TeamID])
REFERENCES [dbo].[TeamDetail] ([TeamID])
GO
ALTER TABLE [dbo].[TeamDetail] CHECK CONSTRAINT [FK_TeamDetail_TeamDetail]
GO
/****** Object:  ForeignKey [FK_DesignationDetail_DesignationDetail]    Script Date: 10/03/2020 11:29:28 ******/
ALTER TABLE [dbo].[DesignationDetail]  WITH CHECK ADD  CONSTRAINT [FK_DesignationDetail_DesignationDetail] FOREIGN KEY([DesId])
REFERENCES [dbo].[DesignationDetail] ([DesId])
GO
ALTER TABLE [dbo].[DesignationDetail] CHECK CONSTRAINT [FK_DesignationDetail_DesignationDetail]
GO
/****** Object:  ForeignKey [FK_EmployeeDetail_DesID]    Script Date: 10/03/2020 11:29:29 ******/
ALTER TABLE [dbo].[EmployeeDetail]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetail_DesID] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[DesignationDetail] ([DesId])
GO
ALTER TABLE [dbo].[EmployeeDetail] CHECK CONSTRAINT [FK_EmployeeDetail_DesID]
GO
/****** Object:  ForeignKey [FK_HOfficialDetail_DesignationID]    Script Date: 10/03/2020 11:29:32 ******/
ALTER TABLE [dbo].[HOfficialDetail]  WITH CHECK ADD  CONSTRAINT [FK_HOfficialDetail_DesignationID] FOREIGN KEY([HDesignationID])
REFERENCES [dbo].[DesignationDetail] ([DesId])
GO
ALTER TABLE [dbo].[HOfficialDetail] CHECK CONSTRAINT [FK_HOfficialDetail_DesignationID]
GO
/****** Object:  ForeignKey [FK_LoginDetail_HUSerID]    Script Date: 10/03/2020 11:29:33 ******/
ALTER TABLE [dbo].[LoginDetail]  WITH CHECK ADD  CONSTRAINT [FK_LoginDetail_HUSerID] FOREIGN KEY([UserId])
REFERENCES [dbo].[HOfficialDetail] ([HEmployeeId])
GO
ALTER TABLE [dbo].[LoginDetail] CHECK CONSTRAINT [FK_LoginDetail_HUSerID]
GO
/****** Object:  ForeignKey [FK_ProjectDetail_HODID]    Script Date: 10/03/2020 11:29:33 ******/
ALTER TABLE [dbo].[ProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetail_HODID] FOREIGN KEY([HeadId])
REFERENCES [dbo].[HOfficialDetail] ([HEmployeeId])
GO
ALTER TABLE [dbo].[ProjectDetail] CHECK CONSTRAINT [FK_ProjectDetail_HODID]
GO
/****** Object:  ForeignKey [FK_ProjectDetail_TeamID]    Script Date: 10/03/2020 11:29:33 ******/
ALTER TABLE [dbo].[ProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetail_TeamID] FOREIGN KEY([TeamId])
REFERENCES [dbo].[TeamDetail] ([TeamID])
GO
ALTER TABLE [dbo].[ProjectDetail] CHECK CONSTRAINT [FK_ProjectDetail_TeamID]
GO
