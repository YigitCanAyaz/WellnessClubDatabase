USE [master]
GO
/****** Object:  Database [BilgiWellnessClub]    Script Date: 21.10.2022 22:00:42 ******/
CREATE DATABASE [BilgiWellnessClub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BilgiWellnessClub', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BilgiWellnessClub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BilgiWellnessClub_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BilgiWellnessClub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BilgiWellnessClub] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BilgiWellnessClub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BilgiWellnessClub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET ARITHABORT OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BilgiWellnessClub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BilgiWellnessClub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BilgiWellnessClub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BilgiWellnessClub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET RECOVERY FULL 
GO
ALTER DATABASE [BilgiWellnessClub] SET  MULTI_USER 
GO
ALTER DATABASE [BilgiWellnessClub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BilgiWellnessClub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BilgiWellnessClub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BilgiWellnessClub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BilgiWellnessClub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BilgiWellnessClub] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BilgiWellnessClub', N'ON'
GO
ALTER DATABASE [BilgiWellnessClub] SET QUERY_STORE = OFF
GO
USE [BilgiWellnessClub]
GO
/****** Object:  Table [dbo].[Collaborations]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collaborations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Collaborations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galleries]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galleries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[ImageName] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Galleries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserHeights]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserHeights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Meter] [float] NOT NULL,
 CONSTRAINT [PK_UserHeights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Gender] [bit] NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserWeights]    Script Date: 21.10.2022 22:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWeights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Kilogram] [float] NOT NULL,
 CONSTRAINT [PK_UserWeights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserHeights]  WITH CHECK ADD  CONSTRAINT [FK_UserHeights_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserHeights] CHECK CONSTRAINT [FK_UserHeights_Users]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users]
GO
ALTER TABLE [dbo].[UserWeights]  WITH CHECK ADD  CONSTRAINT [FK_UserWeights_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserWeights] CHECK CONSTRAINT [FK_UserWeights_Users]
GO
USE [master]
GO
ALTER DATABASE [BilgiWellnessClub] SET  READ_WRITE 
GO
