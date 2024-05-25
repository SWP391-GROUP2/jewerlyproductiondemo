USE [master]
GO
/****** Object:  Database [JewelryProduction]    Script Date: 5/26/2024 12:15:22 AM ******/
CREATE DATABASE [JewelryProduction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JewelryProduction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\JewelryProduction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JewelryProduction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\JewelryProduction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JewelryProduction] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JewelryProduction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JewelryProduction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JewelryProduction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JewelryProduction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JewelryProduction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JewelryProduction] SET ARITHABORT OFF 
GO
ALTER DATABASE [JewelryProduction] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JewelryProduction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JewelryProduction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JewelryProduction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JewelryProduction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JewelryProduction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JewelryProduction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JewelryProduction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JewelryProduction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JewelryProduction] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JewelryProduction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JewelryProduction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JewelryProduction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JewelryProduction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JewelryProduction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JewelryProduction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JewelryProduction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JewelryProduction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JewelryProduction] SET  MULTI_USER 
GO
ALTER DATABASE [JewelryProduction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JewelryProduction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JewelryProduction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JewelryProduction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JewelryProduction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JewelryProduction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JewelryProduction] SET QUERY_STORE = ON
GO
ALTER DATABASE [JewelryProduction] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [JewelryProduction]
GO
/****** Object:  Table [dbo].[3DDesign]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[3DDesign](
	[3DDesignID] [nvarchar](50) NOT NULL,
	[DesignName] [nvarchar](50) NOT NULL,
	[Description] [image] NOT NULL,
	[CustomizeRequestID] [nvarchar](50) NULL,
	[ProductSampleID] [nvarchar](50) NULL,
	[DesignStaffID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_3DDesign] PRIMARY KEY CLUSTERED 
(
	[3DDesignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[GemstoneID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[CollectionID] [nvarchar](50) NOT NULL,
	[CollectionName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollectionProduct]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionProduct](
	[CollectionID] [nvarchar](50) NOT NULL,
	[ProductSampleID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC,
	[ProductSampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerRequest]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRequest](
	[CustomizeRequestID] [nvarchar](50) NOT NULL,
	[GoldID] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Style] [nvarchar](50) NOT NULL,
	[Size] [float] NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_CustomerRequest] PRIMARY KEY CLUSTERED 
(
	[CustomizeRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_CustomerRequest] UNIQUE NONCLUSTERED 
(
	[GoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gemstone]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gemstone](
	[GemstoneID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[CaratWeight] [float] NOT NULL,
	[Cut] [nvarchar](50) NOT NULL,
	[Clarity] [nvarchar](50) NOT NULL,
	[PricePerCarat] [money] NOT NULL,
	[ProductSampleID] [nvarchar](50) NOT NULL,
	[CustomizeRequestD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gemstone] PRIMARY KEY CLUSTERED 
(
	[GemstoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gold]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gold](
	[GoldID] [nvarchar](50) NOT NULL,
	[GoldType] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[PricePerGram] [money] NOT NULL,
 CONSTRAINT [PK_Gold] PRIMARY KEY CLUSTERED 
(
	[GoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[InsuranceID] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[OrderID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Insurance] PRIMARY KEY CLUSTERED 
(
	[InsuranceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Insurance] UNIQUE NONCLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [nvarchar](50) NOT NULL,
	[MessageText] [nvarchar](200) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[SaleStaffID] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NOT NULL,
	[SaleStaffID] [nvarchar](50) NOT NULL,
	[ManagerID] [nvarchar](50) NOT NULL,
	[ProductionStaffID] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DepositAmount] [money] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ProductSampleID] [nvarchar](50) NULL,
	[CustomizeRequestID] [nvarchar](50) NULL,
	[PaymentMethodID] [nvarchar](50) NOT NULL,
	[TotalPrice] [money] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Order] UNIQUE NONCLUSTERED 
(
	[CustomizeRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodID] [nvarchar](50) NOT NULL,
	[PaymentMethodName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSample]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSample](
	[ProductSampleID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Style] [nvarchar](50) NOT NULL,
	[Size] [float] NULL,
	[Price] [money] NOT NULL,
	[GoldID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductSample] PRIMARY KEY CLUSTERED 
(
	[ProductSampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ProductSample] UNIQUE NONCLUSTERED 
(
	[GoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nvarchar](50) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/26/2024 12:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNumber] [decimal](18, 0) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[3DDesign]  WITH CHECK ADD  CONSTRAINT [FK_3DDesign_CustomerRequest] FOREIGN KEY([CustomizeRequestID])
REFERENCES [dbo].[CustomerRequest] ([CustomizeRequestID])
GO
ALTER TABLE [dbo].[3DDesign] CHECK CONSTRAINT [FK_3DDesign_CustomerRequest]
GO
ALTER TABLE [dbo].[3DDesign]  WITH CHECK ADD  CONSTRAINT [FK_3DDesign_ProductSample] FOREIGN KEY([ProductSampleID])
REFERENCES [dbo].[ProductSample] ([ProductSampleID])
GO
ALTER TABLE [dbo].[3DDesign] CHECK CONSTRAINT [FK_3DDesign_ProductSample]
GO
ALTER TABLE [dbo].[3DDesign]  WITH CHECK ADD  CONSTRAINT [FK_3DDesign_User] FOREIGN KEY([DesignStaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[3DDesign] CHECK CONSTRAINT [FK_3DDesign_User]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Gemstone] FOREIGN KEY([GemstoneID])
REFERENCES [dbo].[Gemstone] ([GemstoneID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Gemstone]
GO
ALTER TABLE [dbo].[CollectionProduct]  WITH CHECK ADD FOREIGN KEY([CollectionID])
REFERENCES [dbo].[Collection] ([CollectionID])
GO
ALTER TABLE [dbo].[CollectionProduct]  WITH CHECK ADD FOREIGN KEY([ProductSampleID])
REFERENCES [dbo].[ProductSample] ([ProductSampleID])
GO
ALTER TABLE [dbo].[CustomerRequest]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRequest_Gold] FOREIGN KEY([GoldID])
REFERENCES [dbo].[Gold] ([GoldID])
GO
ALTER TABLE [dbo].[CustomerRequest] CHECK CONSTRAINT [FK_CustomerRequest_Gold]
GO
ALTER TABLE [dbo].[CustomerRequest]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRequest_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[CustomerRequest] CHECK CONSTRAINT [FK_CustomerRequest_User]
GO
ALTER TABLE [dbo].[Gemstone]  WITH CHECK ADD  CONSTRAINT [FK_Gemstone_CustomerRequest] FOREIGN KEY([CustomizeRequestD])
REFERENCES [dbo].[CustomerRequest] ([CustomizeRequestID])
GO
ALTER TABLE [dbo].[Gemstone] CHECK CONSTRAINT [FK_Gemstone_CustomerRequest]
GO
ALTER TABLE [dbo].[Gemstone]  WITH CHECK ADD  CONSTRAINT [FK_Gemstone_ProductSample] FOREIGN KEY([ProductSampleID])
REFERENCES [dbo].[ProductSample] ([ProductSampleID])
GO
ALTER TABLE [dbo].[Gemstone] CHECK CONSTRAINT [FK_Gemstone_ProductSample]
GO
ALTER TABLE [dbo].[Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Insurance_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Insurance] CHECK CONSTRAINT [FK_Insurance_Order]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([SaleStaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_CustomerRequest] FOREIGN KEY([CustomizeRequestID])
REFERENCES [dbo].[CustomerRequest] ([CustomizeRequestID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_CustomerRequest]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentMethod]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ProductSample] FOREIGN KEY([ProductSampleID])
REFERENCES [dbo].[ProductSample] ([ProductSampleID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ProductSample]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([SaleStaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User2] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User3] FOREIGN KEY([ProductionStaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User3]
GO
ALTER TABLE [dbo].[ProductSample]  WITH CHECK ADD  CONSTRAINT [FK_ProductSample_Gold] FOREIGN KEY([GoldID])
REFERENCES [dbo].[Gold] ([GoldID])
GO
ALTER TABLE [dbo].[ProductSample] CHECK CONSTRAINT [FK_ProductSample_Gold]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [JewelryProduction] SET  READ_WRITE 
GO
