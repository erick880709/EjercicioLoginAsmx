USE [master]
GO
/****** Object:  Database [LoginDB]    Script Date: 13/12/2021 1:11:20 p. m. ******/
CREATE DATABASE [LoginDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoginDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LoginDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LoginDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LoginDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LoginDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoginDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoginDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoginDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoginDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LoginDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoginDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoginDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoginDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoginDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoginDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoginDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoginDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoginDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LoginDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoginDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoginDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoginDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoginDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoginDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LoginDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoginDB] SET RECOVERY FULL 
GO
ALTER DATABASE [LoginDB] SET  MULTI_USER 
GO
ALTER DATABASE [LoginDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoginDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoginDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoginDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LoginDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LoginDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LoginDB', N'ON'
GO
ALTER DATABASE [LoginDB] SET QUERY_STORE = OFF
GO
USE [LoginDB]
GO
/****** Object:  User [Test]    Script Date: 13/12/2021 1:11:20 p. m. ******/
CREATE USER [Test] FOR LOGIN [Test] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Test]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/12/2021 1:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FechaIngreso] [date] NULL,
	[Correo] [varchar](100) NULL,
	[Telefono] [varchar](15) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Nombre], [Password], [FechaIngreso], [Correo], [Telefono]) VALUES (1, N'admin', N'1234', NULL, N'admin@hotmail.com', N'3105389762')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
USE [master]
GO
ALTER DATABASE [LoginDB] SET  READ_WRITE 
GO
