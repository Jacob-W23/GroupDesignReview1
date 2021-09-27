USE [master]
GO
/****** Object:  Database [Entertainment]    Script Date: 9/27/2021 2:25:19 PM ******/
CREATE DATABASE [Entertainment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Entertainment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Entertainment.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Entertainment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Entertainment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Entertainment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Entertainment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Entertainment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Entertainment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Entertainment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Entertainment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Entertainment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Entertainment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Entertainment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Entertainment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Entertainment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Entertainment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Entertainment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Entertainment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Entertainment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Entertainment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Entertainment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Entertainment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Entertainment] SET RECOVERY FULL 
GO
ALTER DATABASE [Entertainment] SET  MULTI_USER 
GO
ALTER DATABASE [Entertainment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Entertainment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Entertainment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Entertainment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Entertainment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Entertainment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Entertainment', N'ON'
GO
ALTER DATABASE [Entertainment] SET QUERY_STORE = OFF
GO
USE [Entertainment]
GO
/****** Object:  Table [dbo].[Agents$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents$](
	[Agent_ID] [nvarchar](255) NULL,
	[Agent_F_Name] [nvarchar](255) NULL,
	[Agent_L_Name] [nvarchar](255) NULL,
	[Agent_Street_ Address] [nvarchar](255) NULL,
	[Agent_City] [nvarchar](255) NULL,
	[Agent_State] [nvarchar](255) NULL,
	[Agent_Zip_Code] [float] NULL,
	[Agent_Phone_Number] [nvarchar](255) NULL,
	[Agent_Date_Hired] [datetime] NULL,
	[Agent_Salary] [money] NULL,
	[Agent_Commission_Rate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cust_Mus_Preferences$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cust_Mus_Preferences$](
	[Cust_ID] [nvarchar](255) NULL,
	[Music_Style_ID] [nvarchar](255) NULL,
	[Cust_Mus_Preferences_Rating] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers$](
	[Cust_ID] [nvarchar](255) NULL,
	[Cust_F_Name] [nvarchar](255) NULL,
	[Cust_L_Name] [nvarchar](255) NULL,
	[Cust_Street_Address] [nvarchar](255) NULL,
	[Cust_City] [nvarchar](255) NULL,
	[Cust_State] [nvarchar](255) NULL,
	[Cust_Zip_Code] [float] NULL,
	[Cust_Phone_Number] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engagements$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engagements$](
	[Engag_Number] [float] NULL,
	[Engag_Start_Date] [datetime] NULL,
	[Engag_End_Date] [datetime] NULL,
	[Engag_Start_Time] [datetime] NULL,
	[Engag_Stop_Time] [datetime] NULL,
	[Engag_Contract_Price] [money] NULL,
	[Cust_ID] [nvarchar](255) NULL,
	[Agent_ID] [nvarchar](255) NULL,
	[Entertainer_ID] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entertainers$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entertainers$](
	[Entertainer_ID] [nvarchar](255) NULL,
	[Entertainer_Stage_Name] [nvarchar](255) NULL,
	[Entertainer_SSN] [nvarchar](255) NULL,
	[Entertainer_Street_Address] [nvarchar](255) NULL,
	[Entertainer_City] [nvarchar](255) NULL,
	[Entertainer_State] [nvarchar](255) NULL,
	[Entertainer_Zip_Code] [float] NULL,
	[Entertainer_Phone_Number] [nvarchar](255) NULL,
	[Entertainer_Page] [nvarchar](255) NULL,
	[Entertainer_Email] [nvarchar](255) NULL,
	[Entertainer_Date_Entered] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entertainers_Members$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entertainers_Members$](
	[Entertainer_ID] [nvarchar](255) NULL,
	[Mbr_ID] [nvarchar](255) NULL,
	[Entertainer_Members_Status] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entertainers_Style$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entertainers_Style$](
	[Entertainer_ID] [nvarchar](255) NULL,
	[Music_Style_ID] [nvarchar](255) NULL,
	[Member_Style_Strength] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members$](
	[Mbr_ID] [nvarchar](255) NULL,
	[Mbr_F_Name] [nvarchar](255) NULL,
	[Mbr_L_Name] [nvarchar](255) NULL,
	[Mbr_Title] [nvarchar](255) NULL,
	[Mbr_Phone_Number] [nvarchar](255) NULL,
	[Mbr_Gender] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music_Style$]    Script Date: 9/27/2021 2:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music_Style$](
	[Music_Style_ID] [nvarchar](255) NULL,
	[Music_Style_Name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Entertainment] SET  READ_WRITE 
GO
