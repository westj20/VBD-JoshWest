USE [master]
GO
/****** Object:  Database [L&HConcrete]    Script Date: 9/25/2022 2:24:31 PM ******/
CREATE DATABASE [L&HConcrete]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'L&HConcrete', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\L&HConcrete.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'L&HConcrete_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\L&HConcrete_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [L&HConcrete] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [L&HConcrete].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [L&HConcrete] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [L&HConcrete] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [L&HConcrete] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [L&HConcrete] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [L&HConcrete] SET ARITHABORT OFF 
GO
ALTER DATABASE [L&HConcrete] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [L&HConcrete] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [L&HConcrete] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [L&HConcrete] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [L&HConcrete] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [L&HConcrete] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [L&HConcrete] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [L&HConcrete] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [L&HConcrete] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [L&HConcrete] SET  DISABLE_BROKER 
GO
ALTER DATABASE [L&HConcrete] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [L&HConcrete] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [L&HConcrete] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [L&HConcrete] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [L&HConcrete] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [L&HConcrete] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [L&HConcrete] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [L&HConcrete] SET RECOVERY FULL 
GO
ALTER DATABASE [L&HConcrete] SET  MULTI_USER 
GO
ALTER DATABASE [L&HConcrete] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [L&HConcrete] SET DB_CHAINING OFF 
GO
ALTER DATABASE [L&HConcrete] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [L&HConcrete] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [L&HConcrete] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [L&HConcrete] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'L&HConcrete', N'ON'
GO
ALTER DATABASE [L&HConcrete] SET QUERY_STORE = OFF
GO
USE [L&HConcrete]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](10) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Address] [nchar](20) NULL,
	[City] [nchar](20) NOT NULL,
	[State] [nchar](10) NULL,
	[Zip] [int] NULL,
	[Phone] [numeric](18, 0) NOT NULL,
	[Email] [nchar](25) NULL,
	[Notes] [nchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](10) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Phone] [numeric](18, 0) NOT NULL,
	[Address] [nchar](25) NOT NULL,
	[City] [nchar](10) NOT NULL,
	[Zip] [int] NOT NULL,
	[Email] [nchar](25) NULL,
	[EmployeementStatus] [bit] NOT NULL,
	[Wage] [money] NOT NULL,
	[SkillId] [nchar](10) NULL,
	[SkillId1] [nchar](10) NULL,
	[SkillId2] [nchar](10) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinalCost]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinalCost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Material_Id] [int] NOT NULL,
	[Job_Id] [int] NOT NULL,
	[Hours] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[EmployeeId1] [int] NULL,
	[EmployeeId2] [int] NULL,
	[EmployeeId3] [int] NULL,
	[EmployeeId4] [int] NULL,
	[EmployeeId5] [int] NULL,
 CONSTRAINT [PK_FinalCost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nchar](10) NOT NULL,
	[Notes] [nchar](50) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobEst]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobEst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[EstHours] [int] NOT NULL,
	[EstWage] [money] NOT NULL,
	[EstMaterialCost] [money] NOT NULL,
 CONSTRAINT [PK_JobEst] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobForecast]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobForecast](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CkientId] [int] NOT NULL,
	[JobEstId] [int] NOT NULL,
 CONSTRAINT [PK_JobForecast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nchar](20) NOT NULL,
	[Cost] [money] NOT NULL,
	[InvoiceNum] [numeric](18, 0) NULL,
	[Vendor_Id] [int] NOT NULL,
	[Notes] [nchar](50) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PastJobs]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PastJobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[PastJobId] [int] NOT NULL,
	[FinalCostId] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Skill] [nchar](10) NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 9/25/2022 2:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NULL,
	[Address] [nchar](20) NULL,
	[City] [nchar](10) NULL,
	[State] [nchar](10) NULL,
	[Zip] [int] NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone], [Email], [Notes]) VALUES (1, N'Tom       ', N'Marks     ', N'highlane            ', N'Bird Island         ', N'MN        ', 55310, CAST(1587454487 AS Numeric(18, 0)), N'MarksT@yahoo.com         ', NULL)
INSERT [dbo].[Clients] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone], [Email], [Notes]) VALUES (2, N'Jennifer  ', N'West      ', N'515 S. Marshall     ', N'Caledonia           ', N'MN        ', 55921, CAST(5074508867 AS Numeric(18, 0)), N'weberjennifer11@yahoo.com', NULL)
INSERT [dbo].[Clients] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone], [Email], [Notes]) VALUES (3, N'Timmy     ', N'Land      ', N'507 Main Drive      ', N'Caledonia           ', N'MN        ', 55921, CAST(5074509865 AS Numeric(18, 0)), NULL, N'Farmer                                            ')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Phone], [Address], [City], [Zip], [Email], [EmployeementStatus], [Wage], [SkillId], [SkillId1], [SkillId2]) VALUES (1, N'Frank     ', N'Writ      ', CAST(4687745412 AS Numeric(18, 0)), N'Main Drive               ', N'Frankford ', 48784, N'FFord12@google.co        ', 1, 25.0000, N'Forming   ', NULL, NULL)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Phone], [Address], [City], [Zip], [Email], [EmployeementStatus], [Wage], [SkillId], [SkillId1], [SkillId2]) VALUES (2, N'David     ', N'Steele    ', CAST(1548456658 AS Numeric(18, 0)), N'David Dr.                ', N'Goergetown', 14885, N'NancyLeft45@yahoo.com    ', 0, 24.0000, N'mudding   ', N'Brick     ', NULL)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Phone], [Address], [City], [Zip], [Email], [EmployeementStatus], [Wage], [SkillId], [SkillId1], [SkillId2]) VALUES (3, N'Todd      ', N'Lank      ', CAST(4856859982 AS Numeric(18, 0)), N'Marshall Lane            ', N'Goergetown', 14885, N'ToddL@yahoo.com          ', 1, 27.0000, N'mudding   ', N'Brick     ', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[FinalCost] ON 

INSERT [dbo].[FinalCost] ([Id], [Material_Id], [Job_Id], [Hours], [EmployeeId], [EmployeeId1], [EmployeeId2], [EmployeeId3], [EmployeeId4], [EmployeeId5]) VALUES (1, 1, 1, 40, 1, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[FinalCost] ([Id], [Material_Id], [Job_Id], [Hours], [EmployeeId], [EmployeeId1], [EmployeeId2], [EmployeeId3], [EmployeeId4], [EmployeeId5]) VALUES (2, 1, 2, 120, 1, 3, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FinalCost] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([ID], [JobName], [Notes]) VALUES (1, N'Drive Way ', NULL)
INSERT [dbo].[Job] ([ID], [JobName], [Notes]) VALUES (2, N'Platform  ', NULL)
INSERT [dbo].[Job] ([ID], [JobName], [Notes]) VALUES (3, N'Ag Bin    ', NULL)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[JobEst] ON 

INSERT [dbo].[JobEst] ([Id], [JobId], [EstHours], [EstWage], [EstMaterialCost]) VALUES (1, 1, 30, 25.0000, 500.0000)
INSERT [dbo].[JobEst] ([Id], [JobId], [EstHours], [EstWage], [EstMaterialCost]) VALUES (2, 2, 40, 25.0000, 400.0000)
SET IDENTITY_INSERT [dbo].[JobEst] OFF
GO
SET IDENTITY_INSERT [dbo].[JobForecast] ON 

INSERT [dbo].[JobForecast] ([Id], [CkientId], [JobEstId]) VALUES (1, 1, 1)
INSERT [dbo].[JobForecast] ([Id], [CkientId], [JobEstId]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[JobForecast] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([ID], [Material], [Cost], [InvoiceNum], [Vendor_Id], [Notes]) VALUES (1, N'Brick               ', 1000.0000, CAST(48754 AS Numeric(18, 0)), 4, NULL)
INSERT [dbo].[Material] ([ID], [Material], [Cost], [InvoiceNum], [Vendor_Id], [Notes]) VALUES (2, N'2x4                 ', 200.0000, CAST(48756 AS Numeric(18, 0)), 1, NULL)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[PastJobs] ON 

INSERT [dbo].[PastJobs] ([Id], [ClientId], [PastJobId], [FinalCostId]) VALUES (1, 1, 1, 800.0000)
INSERT [dbo].[PastJobs] ([Id], [ClientId], [PastJobId], [FinalCostId]) VALUES (2, 2, 2, 1000.0000)
SET IDENTITY_INSERT [dbo].[PastJobs] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([Id], [Skill]) VALUES (1, N'Forming   ')
INSERT [dbo].[Skill] ([Id], [Skill]) VALUES (2, N'Brick     ')
INSERT [dbo].[Skill] ([Id], [Skill]) VALUES (3, N'Mason     ')
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 

INSERT [dbo].[Vendor] ([Id], [Name], [Address], [City], [State], [Zip]) VALUES (1, N'Menards             ', N'Rye st.             ', N'La Crosse ', N'WI        ', 46512)
INSERT [dbo].[Vendor] ([Id], [Name], [Address], [City], [State], [Zip]) VALUES (3, N'Mason Concrete      ', N'Time Bay            ', N'La Crosse ', N'WI        ', 46512)
INSERT [dbo].[Vendor] ([Id], [Name], [Address], [City], [State], [Zip]) VALUES (4, N'Flaw Brick          ', N'Flan Mark Drive     ', N'La Crosse ', N'WI        ', 46512)
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
USE [master]
GO
ALTER DATABASE [L&HConcrete] SET  READ_WRITE 
GO
