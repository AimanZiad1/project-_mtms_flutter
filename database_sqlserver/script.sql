USE [master]
GO
/****** Object:  Database [mtms]    Script Date: 23/07/44 05:47:59 م ******/
CREATE DATABASE [mtms]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mtms', FILENAME = N'E:\sql server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mtms.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mtms_log', FILENAME = N'E:\sql server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mtms_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [mtms] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mtms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mtms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mtms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mtms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mtms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mtms] SET ARITHABORT OFF 
GO
ALTER DATABASE [mtms] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mtms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mtms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mtms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mtms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mtms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mtms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mtms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mtms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mtms] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mtms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mtms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mtms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mtms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mtms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mtms] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mtms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mtms] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mtms] SET  MULTI_USER 
GO
ALTER DATABASE [mtms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mtms] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mtms] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mtms] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mtms] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mtms] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [mtms] SET QUERY_STORE = ON
GO
ALTER DATABASE [mtms] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [mtms]
GO
/****** Object:  Table [dbo].[alagsam]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alagsam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_1] [nvarchar](50) NULL,
	[name_2] [nvarchar](50) NULL,
	[descrption] [nvarchar](50) NULL,
 CONSTRAINT [PK_alagsam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alfah]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alfah](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_1] [nvarchar](50) NULL,
	[name_2] [nvarchar](50) NULL,
	[descrption] [nvarchar](50) NULL,
 CONSTRAINT [PK_alfah] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alsharkah]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alsharkah](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_1] [nvarchar](50) NULL,
	[name_2] [nvarchar](50) NULL,
	[descrption] [nvarchar](50) NULL,
 CONSTRAINT [PK_alsharkah] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[demand_type]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[demand_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[demand_type] [nvarchar](50) NULL,
	[demand_type_2] [nvarchar](50) NULL,
 CONSTRAINT [PK_demand_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[divce]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[divce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[divce_name] [nvarchar](50) NULL,
	[sarial_number] [bigint] NULL,
	[date_of_purchase] [date] NULL,
	[divce_type] [nchar](10) NULL,
	[data_end_guarantee] [date] NULL,
	[id_alsharkah] [int] NULL,
	[id_alfah] [int] NULL,
	[id_alagsam] [int] NULL,
	[notes] [nvarchar](50) NULL,
	[divce_state] [nchar](10) NULL,
	[id_divce_user] [int] NULL,
 CONSTRAINT [PK_divce] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[divce_user]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[divce_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[divce_user] [nvarchar](50) NULL,
	[phone_number] [nvarchar](10) NULL,
	[notes] [nvarchar](50) NULL,
 CONSTRAINT [PK_divce_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engineer]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engineer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_eng] [nvarchar](50) NULL,
	[number_phone] [bigint] NULL,
	[email] [nvarchar](50) NULL,
	[altksas] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_engineer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faults_type]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faults_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[faults_name] [nvarchar](50) NULL,
	[faults_name_2] [nvarchar](50) NULL,
 CONSTRAINT [PK_faults_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchasing]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchasing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_alfah] [int] NULL,
	[id_spare_part] [int] NULL,
	[Id_alsharkah] [int] NULL,
	[price_spare_part] [nvarchar](50) NULL,
	[number_spare_part] [int] NULL,
	[date] [datetime] NULL,
	[notes] [nvarchar](50) NULL,
 CONSTRAINT [PK_purchasing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spare_part]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spare_part](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[spare_part_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_the_store] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[spare_part_id] [int] NULL,
	[number_of_them] [int] NULL,
	[state] [nchar](10) NULL,
	[loction] [nvarchar](50) NULL,
	[date_enter] [datetime] NULL,
	[type_spare_part] [nchar](10) NULL,
 CONSTRAINT [PK_store] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 23/07/44 05:47:59 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[user_name_2] [nvarchar](50) NULL,
	[notes] [nvarchar](50) NULL,
	[pasword] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[divce]  WITH CHECK ADD  CONSTRAINT [FK_divce_alagsam] FOREIGN KEY([id_alagsam])
REFERENCES [dbo].[alagsam] ([id])
GO
ALTER TABLE [dbo].[divce] CHECK CONSTRAINT [FK_divce_alagsam]
GO
ALTER TABLE [dbo].[divce]  WITH CHECK ADD  CONSTRAINT [FK_divce_alfah] FOREIGN KEY([id_alfah])
REFERENCES [dbo].[alfah] ([id])
GO
ALTER TABLE [dbo].[divce] CHECK CONSTRAINT [FK_divce_alfah]
GO
ALTER TABLE [dbo].[divce]  WITH CHECK ADD  CONSTRAINT [FK_divce_alsharkah] FOREIGN KEY([id_alsharkah])
REFERENCES [dbo].[alsharkah] ([id])
GO
ALTER TABLE [dbo].[divce] CHECK CONSTRAINT [FK_divce_alsharkah]
GO
ALTER TABLE [dbo].[divce]  WITH CHECK ADD  CONSTRAINT [FK_divce_divce_user] FOREIGN KEY([id_divce_user])
REFERENCES [dbo].[divce_user] ([id])
GO
ALTER TABLE [dbo].[divce] CHECK CONSTRAINT [FK_divce_divce_user]
GO
ALTER TABLE [dbo].[purchasing]  WITH CHECK ADD  CONSTRAINT [FK_purchasing_alfah] FOREIGN KEY([id_alfah])
REFERENCES [dbo].[alfah] ([id])
GO
ALTER TABLE [dbo].[purchasing] CHECK CONSTRAINT [FK_purchasing_alfah]
GO
ALTER TABLE [dbo].[purchasing]  WITH CHECK ADD  CONSTRAINT [FK_purchasing_alsharkah] FOREIGN KEY([Id_alsharkah])
REFERENCES [dbo].[alsharkah] ([id])
GO
ALTER TABLE [dbo].[purchasing] CHECK CONSTRAINT [FK_purchasing_alsharkah]
GO
ALTER TABLE [dbo].[purchasing]  WITH CHECK ADD  CONSTRAINT [FK_purchasing_spare_part] FOREIGN KEY([id_spare_part])
REFERENCES [dbo].[spare_part] ([id])
GO
ALTER TABLE [dbo].[purchasing] CHECK CONSTRAINT [FK_purchasing_spare_part]
GO
ALTER TABLE [dbo].[store]  WITH CHECK ADD  CONSTRAINT [FK_store_spare_part] FOREIGN KEY([spare_part_id])
REFERENCES [dbo].[spare_part] ([id])
GO
ALTER TABLE [dbo].[store] CHECK CONSTRAINT [FK_store_spare_part]
GO
USE [master]
GO
ALTER DATABASE [mtms] SET  READ_WRITE 
GO
