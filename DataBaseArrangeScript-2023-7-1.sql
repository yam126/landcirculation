USE [master]
GO
/****** Object:  Database [LandCirculationDatabase]    Script Date: 2023/7/1 13:46:43 ******/
CREATE DATABASE [LandCirculationDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LandCirculationDatabase', FILENAME = N'D:\SQLServerDBFile\LandCirculationDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LandCirculationDatabase_log', FILENAME = N'D:\SQLServerDBFile\LandCirculationDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LandCirculationDatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LandCirculationDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LandCirculationDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LandCirculationDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LandCirculationDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LandCirculationDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LandCirculationDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [LandCirculationDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [LandCirculationDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LandCirculationDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LandCirculationDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LandCirculationDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LandCirculationDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LandCirculationDatabase', N'ON'
GO
ALTER DATABASE [LandCirculationDatabase] SET QUERY_STORE = OFF
GO
USE [LandCirculationDatabase]
GO
/****** Object:  Table [dbo].[LargeGrain]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LargeGrain](
	[RecordId] [bigint] NOT NULL,
	[LargeGrainName] [nvarchar](50) NOT NULL,
	[Village] [nvarchar](50) NOT NULL,
	[IDCard] [nvarchar](50) NOT NULL,
	[ContactMobile] [nvarchar](50) NULL,
	[PlantingArea] [decimal](18, 2) NULL,
	[FamilyFarm] [nvarchar](50) NULL,
	[CoopeRative] [nvarchar](50) NULL,
	[Backup01] [nvarchar](170) NULL,
	[Backup02] [nvarchar](170) NULL,
	[Backup03] [nvarchar](170) NULL,
	[Created] [nvarchar](50) NULL,
	[CreatedTime] [datetime] NULL,
	[Modifer] [nvarchar](50) NULL,
	[ModifedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vipInfo]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vipInfo](
	[vipInfoId] [bigint] NOT NULL,
	[villageName] [varchar](170) NULL,
	[vipName] [varchar](80) NULL,
	[circulationArea] [decimal](18, 2) NULL,
	[circulationPrice] [decimal](18, 2) NULL,
	[Neighborhood] [varchar](50) NULL,
	[Created] [varchar](50) NULL,
	[CreatedTime] [datetime] NULL,
	[Modifer] [varchar](50) NULL,
	[ModifedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[vipInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vipInfoLand]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vipInfoLand](
	[recordId] [bigint] NOT NULL,
	[vipInfoId] [bigint] NOT NULL,
	[LngAndLat] [varchar](4000) NULL,
	[LandArea] [decimal](18, 2) NULL,
	[Created] [varchar](200) NULL,
	[CreatedTime] [datetime] NULL,
	[Modifer] [varchar](200) NULL,
	[ModifedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285530038272, N'王同湘', N'炉房', N'371424198807141810', N'17853441666', CAST(4750.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.483' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.483' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285538426880, N'魏德东', N'魏家村', N'372428196802011838', N'13969258616', CAST(1355.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285538426881, N'李开文', N'任家庙村', N'372428197009221535', N'13375441777', CAST(800.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285542621184, N'郭仁华', N'郭 湾', N'372428196909261810', N'15315815526', CAST(800.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285542621185, N'李开文', N'任家庙村', N'372428197009221535', N'13375441777', CAST(800.00 AS Decimal(18, 2)), N'德州诺鼎农业种植有限公司', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285546815488, N'郭仁华', N'郭 湾', N'372428196909261810', N'15315815526', CAST(800.00 AS Decimal(18, 2)), N'临邑县德平镇华兴宇家庭农场', N'临邑民和丰农机专业合作社
临邑新时代粮食种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285546815489, N'李凯文', N'郭家村', N'372428197009221535', N'13375441777', CAST(775.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285546815490, N'王桂鹏', N'炉房', N'371424198504121855', N'15865928000', CAST(697.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285551009792, N'于向友', N'满家村', N'371424198304031812', N'15998767482', CAST(664.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.487' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285551009793, N'于向友', N'满家村', N'371424198304031812', N'15998767482', CAST(664.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285555204096, N'吴广芬', N'大吴庙', N'372428196201021811', N'13176846553', CAST(588.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285555204097, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(570.00 AS Decimal(18, 2)), N'', N'临邑县保民农作物种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285555204098, N'李安强', N'药王庙村', N'372428197208051516', N'15963375381', CAST(500.00 AS Decimal(18, 2)), N'临邑县德平镇民悦种植家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285559398400, N'王同湘', N'炉房', N'371424198807141810', N'17853441666', CAST(475.00 AS Decimal(18, 2)), N'临邑县德平镇同湘种植庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285559398401, N'李安强', N'药王庙村', N'372428197208051516', N'15963375381', CAST(400.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285559398402, N'弭明福', N'大吴庙', N'371424196604021537', N'18553491253', CAST(400.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285563592704, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(348.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.490' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285563592705, N'盛文旭', N'东四里塘', N'371424199310031514', N'15154101158', CAST(318.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285567787008, N'李正宝', N'茄子李', N'37242819701215541x', N'13153479001', CAST(312.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285567787009, N'李正宝', N'茄子李', N'37242819701215541x', N'13153479001', CAST(312.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285576175616, N'单祥旭', N'大单村', N'372428196606165418', N'15865915177', CAST(310.00 AS Decimal(18, 2)), N'临邑县德平镇鑫源家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.493' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285584564224, N'刘训震', N'陈寨村', N'371424198307031818', N'13651169513', CAST(303.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285588758528, N'张自高', N'陈寨村', N'372428197211111815', N'15266951899', CAST(300.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285588758529, N'郭本林', N'郭 湾', N'372428196304131837', N'13181388317', CAST(296.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285588758530, N'郭雨', N'魏家村', N'372428196903201841', N'15315815526', CAST(293.00 AS Decimal(18, 2)), N'临邑县华盛益农玉米种植家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.497' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285592952832, N'张衍辉', N'张可达村', N'372428197010111579', N'13210997648', CAST(287.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285592952833, N'信振峰', N'信阁', N'371424198104021513', N'15853407691', CAST(276.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285597147136, N'韩家新', N'郭平阳村', N'37142419761113151X', N'13406792357', CAST(274.00 AS Decimal(18, 2)), N'临邑县德平镇永宽家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285597147137, N'杨翠翠', N'大单村', N'371424198403270026', N'13405344156', CAST(265.00 AS Decimal(18, 2)), N'', N'临邑龙强粮食种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285597147138, N'朱庆尧', N'六股路', N'372428197005131559', N'13583451935', CAST(260.00 AS Decimal(18, 2)), N'临邑县德平镇天安家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285601341440, N'李广新', N'茄子李', N'372428197812265414', N'13256236468', CAST(258.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285601341441, N'李广新', N'茄子李', N'372428197812265414', N'13256236468', CAST(258.00 AS Decimal(18, 2)), N'临邑县德平镇广新家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285605535744, N'张宗宝', N'十里铺村', N'371424198611101550', N'13573437207', CAST(244.00 AS Decimal(18, 2)), N'', N'临邑县宗宝种植农民专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285605535745, N'王克新', N'王河头村', N'372428196602125435', N'15166100889', CAST(238.00 AS Decimal(18, 2)), N'注销', N'注销', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.500' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285605535746, N'葛怀岑', N'小葛家', N'37242819731114151X', N'13256252984', CAST(231.00 AS Decimal(18, 2)), N'', N'临邑怀岑粮食种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285609730048, N'静广田', N'静 家', N'372428196601151519', N'13589949033', CAST(230.00 AS Decimal(18, 2)), N'山东省德州市临邑县德平镇静家村', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285609730049, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(226.00 AS Decimal(18, 2)), N'', N'临邑县保民农作物种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285613924352, N'闫玉雷', N'闫家村', N'37242819720108151X', N'159659452953', CAST(224.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285613924353, N'杨翠翠', N'大单村', N'371424198403270026', N'13405344156', CAST(218.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285613924354, N'万桂元', N'大单村', N'372428196605255411', N'13589906453', CAST(216.00 AS Decimal(18, 2)), N'临邑县德平镇大单村家村桂元家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285618118656, N'蒋宗国', N'蔡家村', N'371424197311145418', N'4890291', CAST(215.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285618118657, N'林长明', N'林寨', N'372428195811191514', N'13589923059', CAST(215.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.503' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285622312960, N'陈元祥', N'东贾村', N'372428196602215414', N'15069295558', CAST(210.00 AS Decimal(18, 2)), N'临邑好好家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285622312961, N'郭宗铁', N'东关村', N'37242819740408151X', N'13573429556', CAST(210.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285622312962, N'齐保敏', N'梁家桥村', N'371424199005301514', N'13645344862', CAST(210.00 AS Decimal(18, 2)), N'临邑县保民农作物种植专业合作社', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285626507264, N'朱玉慧', N'朱亭', N'372428197402181517', N'15864154577', CAST(208.00 AS Decimal(18, 2)), N'临邑县德平镇玉慧家庭种植农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285626507265, N'郭宗超', N'郭家村', N'372428197608141510', N'13173332863', CAST(206.00 AS Decimal(18, 2)), N'临邑县德平镇宗超玉米种植家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285626507266, N'王克新', N'王河头村', N'372428196602125435', N'15166100889', CAST(205.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285630701568, N'单清涛', N'前 单', N'372428197405075410', N'15853469527', CAST(204.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285630701569, N'单清涛', N'前 单', N'372428197405075410', N'15853469527', CAST(204.00 AS Decimal(18, 2)), N'', N'临邑县祥涛粮食种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285634895872, N'葛保林', N'西塘村', N'372428197605281518', N'13791397358', CAST(204.00 AS Decimal(18, 2)), N'临邑县德平镇晨曦种植家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.507' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285634895873, N'郭淑平', N'大刘村', N'371424196606131529', N'18865766376', CAST(203.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285634895874, N'董成清', N'王恒', N'372428196503011539', N'15865917692', CAST(200.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285639090176, N'郭本林', N'郭 湾', N'372428196304131837', N'13181388317', CAST(200.00 AS Decimal(18, 2)), N'临邑县德平镇郭赵家村庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285647478784, N'董立昌', N'南小刘', N'371424197003010239', N'13181399966', CAST(199.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.510' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285655867392, N'静广田', N'静 家', N'372428196601151519', N'13589949033', CAST(197.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285655867393, N'高连成', N'高家村', N'372428197401071818', N'15553411034', CAST(193.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285660061696, N'张红霞', N'万家村', N'371424197005211544', N'15166984426', CAST(192.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285660061697, N'朱昌学', N'六股路', N'371424198802251519', N'13869251429', CAST(190.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285660061698, N'吴德山', N'吴 家', N'372428197204071819', N'15069230169', CAST(188.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.513' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285664256000, N'毛向杰', N'毛 家', N'371424197708051815', N'15853447539', CAST(188.00 AS Decimal(18, 2)), N'临邑县德平镇国良家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285664256001, N'董学增', N'王恒', N'372428197701181517', N'15905449622', CAST(186.00 AS Decimal(18, 2)), N'临邑县德平镇恒兴家庭种植农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285668450304, N'朱庆新', N'六股路', N'372428197605151510', N'18766080682', CAST(180.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285668450305, N'李德虎', N'大杨家', N'372428196505011516', N'13173348728', CAST(179.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285668450306, N'马文礼', N'碱 马', N'372428195908075413', N'13791349306', CAST(179.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285672644608, N'马文礼', N'碱 马', N'372428195908075413', N'13791349306', CAST(179.00 AS Decimal(18, 2)), N'', N'临邑县文礼粮食种植专业合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285672644609, N'刘永', N'大刘村', N'372428197710041815', N'13235343431', CAST(178.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285672644610, N'陈元龙', N'陈集村', N'372428197609181514', N'13255345740', CAST(176.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285676838912, N'李万河', N'南关村', N'372428196809201538', N'18315976958', CAST(176.00 AS Decimal(18, 2)), N'临邑县德平镇万河庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.517' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285676838913, N'刘宗敏', N'阳关庙村', N'371424198103135439', N'15253429317', CAST(175.00 AS Decimal(18, 2)), N'', N'临邑铖铖粮食种植合作社', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285681033216, N'闫玉礼', N'闫家村', N'372428197006191553', N'13053433275', CAST(175.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285681033217, N'薛恩宝', N'薛 家', N'372428196505141513', N'4898122', CAST(170.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285681033218, N'吴德山', N'吴 家', N'372428197204071819', N'15069230169', CAST(168.00 AS Decimal(18, 2)), N'临邑县德平镇吴家村德心家庭种植', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285685227520, N'弭玉峰', N'弭家村', N'371424198302231810', N'18653410858', CAST(166.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285685227521, N'万桂元', N'大单村', N'372428196605255411', N'13589906453', CAST(164.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285689421824, N'张广银', N'张棒槌村', N'372428197404201518', N'13884695215', CAST(164.00 AS Decimal(18, 2)), N'临邑县德平镇旭辉家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285689421825, N'李守利', N'碱李', N'372428196903015416', N'13791349163', CAST(162.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.520' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285693616128, N'宫汝军', N'宫 屯', N'372428197002195418', N'13793481448', CAST(162.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285693616129, N'朱昌卫', N'三里庄村', N'371424197602101810', N'18553484685', CAST(160.00 AS Decimal(18, 2)), N'临邑县德平镇琳宇玉米种植家庭农场', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285693616130, N'陈秀英', N'杜家村', N'372428195712021229', N'17861865508', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.523' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285739753472, N'蒋宗国', N'蔡家村', N'371424197311145418', N'4890291', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285739753473, N'张丙利', N'王恒', N'372428195503081516', N'13573410017', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285743947776, N'单传清', N'大单村', N'372428196411285436', N'13969228080', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285743947777, N'毛文龙', N'毛家', N'371424196911281857', N'18253435360', CAST(159.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.533' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285748142080, N'毛文龙', N'毛家', N'371424196911281857', N'18253435360', CAST(159.00 AS Decimal(18, 2)), N'临邑县德平镇文龙玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285748142081, N'张衍彪', N'张可达村', N'372428197009081552', N'15666869063', CAST(158.00 AS Decimal(18, 2)), N'临邑县德平镇旭昇家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285752336384, N'闫玉礼', N'闫家村', N'372428197006191553', N'13053433275', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285752336385, N'王华良', N'王连周村', N'372428196803085433', N'19553435459', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285752336386, N'王华良', N'王连周村', N'372428196803085433', N'19553435459', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285756530688, N'张明河', N'十里铺村', N'37242819670817151x', N'15053452533', CAST(157.00 AS Decimal(18, 2)), N'临邑县德平镇鑫田丰玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285756530689, N'刘兰秀', N'北小刘村', N'372428196401211812', N'18553426217', CAST(156.00 AS Decimal(18, 2)), N'临邑县德平镇北小刘粮食种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285760724992, N'吕光林', N'蔡家村', N'371424197508235417', N'13210447702', CAST(154.00 AS Decimal(18, 2)), N'临邑县德平镇稳发家庭种植农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.537' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285760724993, N'郭宗胜', N'纪张盛', N'372428197412255452', N'13589932735', CAST(153.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285760724994, N'高翠香', N'宫 家', N'371481197902255149', N'15965949345', CAST(152.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285764919296, N'薛恩宝', N'薛 家', N'372428196505141513', N'4898122', CAST(150.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285764919297, N'吕光林', N'蔡家村', N'371424197508235417', N'13210447702', CAST(150.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285769113600, N'张衍重', N'张可达村', N'372428196401031512', N'15153478192', CAST(150.00 AS Decimal(18, 2)), N'临邑县德平镇衍重玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285769113601, N'刘兰秀', N'北小刘', N'372428196401211812', N'15066590178', CAST(150.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285769113602, N'李景强', N'王火炉', N'372428197301065410', N'15066590709', CAST(145.00 AS Decimal(18, 2)), N'', N'临邑鲁德旺农作物种植合作社', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285773307904, N'刘本忠', N'大刘村', N'372428195911071819', N'13516707861', CAST(145.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285773307905, N'静广涛', N'静家村', N'372428197004031513', N'18765587208', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.540' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285777502208, N'陈方新', N'河沟陈', N'372428197602195411', N'13205346645', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285777502209, N'王宽祥', N'养马村', N'372428197603171518', N'13515445765', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285781696512, N'张秀军', N'薛家村', N'372428197206291524', N'15965934537', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.543' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285794279424, N'张新建', N'东新庄村', N'371424197806061814', N'13285346864', CAST(138.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285794279425, N'许和民', N'夏屯村', N'372428196904051515', N'15166100637', CAST(137.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285798473728, N'毛向杰', N'毛 家', N'371424197708051815', N'15853447539', CAST(136.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285798473729, N'朱庆河', N'孙庙', N'37242819710719151x', N'13573496175', CAST(133.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285802668032, N'朱庆河', N'孙庙', N'37242819710719151x', N'13573496175', CAST(133.00 AS Decimal(18, 2)), N'临邑县德平镇庆河农机化种植家庭', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.547' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285802668033, N'王进', N'王朝阳村', N'371424198301231536', N'18353494866', CAST(132.00 AS Decimal(18, 2)), N'临邑县德平镇涛涛玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285806862336, N'王希东', N'邓家村', N'37242819710313151X', N'13285440630', CAST(130.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285806862337, N'闫心胜', N'闫家村', N'372428197203261530', N'13184127822', CAST(127.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285806862338, N'王景水', N'东新庄村', N'371424197709251819', N'13589946509', CAST(126.00 AS Decimal(18, 2)), N'临邑县景水种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285811056640, N'单传清', N'大单村', N'372428196411285436', N'13969228080', CAST(122.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285811056641, N'郭本强', N'郭 湾', N'372428196909261837', N'15564416645', CAST(121.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285815250944, N'周继华', N'林寨', N'372428196703011517', N'13953458971', CAST(121.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285815250945, N'郭宗胜', N'纪张盛', N'372428197412255452', N'13589932735', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.550' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285815250946, N'窦文宝', N'前后窦村', N'372428196408301511', N'13573423190', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285819445248, N'许和民', N'夏屯村', N'372428196904051515', N'15166100637', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285819445249, N'李安彬', N'碱李', N'372428197412025411', N'18606402262', CAST(118.00 AS Decimal(18, 2)), N'', N'临邑安彬土地托管专业合作社', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285823639552, N'毕国红', N'毕家村', N'372428196710185419', N'15065447785', CAST(117.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285823639553, N'毕国红', N'毕家村', N'372428196710185419', N'15065447785', CAST(117.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285823639554, N'张新建', N'东新庄村', N'371424197806061814', N'13285346864', CAST(115.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285827833856, N'靳长胜', N'六合镇村', N'372428197011231513', N'15969635246', CAST(115.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285827833857, N'靳长胜', N'六合镇村', N'372428197011231513', N'15969635246', CAST(115.00 AS Decimal(18, 2)), N'临邑县德平镇昌盛玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.553' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285832028160, N'李家春', N'洼里王村', N'371424198601021856', N'18553446687', CAST(115.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285832028161, N'靳邦治', N'靳家村', N'371424198403021556', N'18266143259', CAST(113.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285832028162, N'北沈', N'郭宗学', N'372428197808111519', N'18653466269', CAST(112.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285836222464, N'郭宗学', N'北沈', N'372428197808111519', N'18653466269', CAST(112.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285836222465, N'石立霞', N'房集', N'37240219750418482X', N'13406784025', CAST(112.00 AS Decimal(18, 2)), N'临邑县丰家种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285836222466, N'吴世昌', N'活佛庙', N'372428196602181517', N'15863317787', CAST(111.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285840416768, N'王文建', N'宫屯村', N'372428197810165436', N'15153471518', CAST(111.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285840416769, N'丁树明', N'丁家村', N'372428197108265437', N'13406792352', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285844611072, N'史有勇', N'王恒', N'372428197507121510', N'13705349359', CAST(110.00 AS Decimal(18, 2)), N'临邑县德平镇有勇种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.557' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285844611073, N'高翠香', N'宫 家', N'371481197902255149', N'15965949345', CAST(110.00 AS Decimal(18, 2)), N'临邑县德平镇宫家家庭种植农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285848805376, N'李兆泉', N'碱李', N'37142419781123541X', N'15069204359', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285852999680, N'圣文忠', N'小盛家村', N'372428196204021518', N'13953441328', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.560' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285865582592, N'周延峰', N'周家村', N'372428196312291515', N'15553412372', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285869776896, N'周继春', N'东关村', N'372428196905111532', N'15253472631', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285869776897, N'郭利', N'郭家村', N'372428197311281512', N'13053481128', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.563' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285873971200, N'郭宗敏', N'任家庙村', N'371424198212281515', N'15194342363', CAST(109.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285873971201, N'郭宗敏', N'任家庙村', N'371424198212281515', N'15194342363', CAST(109.00 AS Decimal(18, 2)), N'临邑县德平镇宗敏家庭种植农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285878165504, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285878165505, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'临邑县德平镇广强家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285882359808, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'临邑县德平镇广强家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285882359809, N'张衍彪', N'张可达村', N'372428197009081552', N'15666869063', CAST(109.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285882359810, N'李万河', N'南关村', N'372428196809201538', N'18315976958', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.567' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285886554112, N'杨怀勇', N'刚家村', N'37242819681129151X', N'15589145764', CAST(108.00 AS Decimal(18, 2)), N'', N'临邑怀勇粮食种植专业合作社', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285886554113, N'朱庆新', N'六股路', N'372428197605151510', N'18766080682', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285890748416, N'陈永国', N'戚寨村', N'372428197103245410', N'13791314205', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285890748417, N'陈学正', N'小盛家村', N'372428197309271518', N'13953459020', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285894942720, N'陈永国', N'戚寨村', N'372428197103245410', N'13791314205', CAST(108.00 AS Decimal(18, 2)), N'临邑县永国玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285894942721, N'高新英', N'王坊村', N'371424197607241820', N'15963377905', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285899137024, N'杨明水', N'西小杨村', N'372428197310075418', N'15965905699', CAST(107.00 AS Decimal(18, 2)), N'临邑县德平镇二子玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.570' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285899137025, N'张秀军', N'薛家村', N'372428197206291524', N'15965934537', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285903331328, N'马文军', N'碱 马', N'372428197205205436', N'15169715346', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285907525632, N'杨清禄', N'活佛庙', N'372428196009191511', N'13791349494', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285911719936, N'马文军', N'碱 马', N'372428197205205436', N'15169715346', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285911719937, N'赵兰礼', N'六合镇村', N'372428196304161518', N'15965912027', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285911719938, N'赵兰礼', N'六合镇村', N'372428196304161518', N'15965912027', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.573' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285915914240, N'陈元龙', N'陈集村', N'372428197609181514', N'13255345740', CAST(105.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.577' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.577' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285920108544, N'李宪雷', N'孟集', N'372428197708111837', N'18653477476', CAST(105.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.577' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.577' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285928497152, N'房廷刚', N'房集村', N'372428197412231813', N'15166907375', CAST(105.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285932691456, N'刘振洪', N'赫家村', N'372428196910155417', N'15092505788', CAST(104.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285936885760, N'刘振洪', N'赫家村', N'372428196910155417', N'15092505788', CAST(104.00 AS Decimal(18, 2)), N'临邑县德平镇振发玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285941080064, N'宫汝军', N'宫屯村', N'372428197002195418', N'13793481448', CAST(104.00 AS Decimal(18, 2)), N'临邑县德平镇汝军家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285941080065, N'杨怀勇', N'刚家村', N'37242819681129151X', N'15589145764', CAST(103.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.580' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285941080066, N'丁树明', N'丁家村', N'372428197108265437', N'13406792352', CAST(103.00 AS Decimal(18, 2)), N'临邑县德平镇秀波玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285945274368, N'郭宗恒', N'纪张盛', N'371424198106305413', N'15863122658', CAST(103.00 AS Decimal(18, 2)), N'临邑县德平镇郭恒种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285945274369, N'闫继国', N'闫家村', N'372428197303081510', N'15806886162', CAST(103.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285949468672, N'薛军山', N'戚寨村', N'37242819660118541x', N'18853407595', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285949468673, N'岳邦', N'郭桥村', N'372428197506011811', N'15965935318', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285953662976, N'薛军山', N'戚寨村', N'37242819660118541x', N'18853407595', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285953662977, N'王景水', N'东新庄村', N'371424197709251819', N'13589946509', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.583' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285957857280, N'闫玉雷', N'闫家村', N'37242819720108151X', N'15965945953', CAST(101.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285957857281, N'郭仁福', N'郭桥村', N'371424196801111814', N'15589144253', CAST(101.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285962051584, N'胡寿峰', N'戚寨村', N'372428197110105459', N'13791388308', CAST(101.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285962051585, N'王希东', N'小于家村', N'37242819710313151X', N'13285440630', CAST(100.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285962051586, N'刘勇', N'毛家', N'37242819680515181x', N'18667858545', CAST(100.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285966245888, N'刘勇', N'毛家', N'37242819680515181x', N'18667858545', CAST(100.00 AS Decimal(18, 2)), N'临邑县德平镇刘勇玉米种植家庭农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285966245889, N'吴世昌', N'活佛庙', N'372428196602181517', N'15863317787', CAST(98.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.587' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285970440192, N'葛保忠', N'鲍葛', N'372428196810281512', N'15905446689', CAST(98.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285974634496, N'葛保忠', N'鲍葛', N'372428196810281512', N'15905446689', CAST(98.00 AS Decimal(18, 2)), N'临邑县德平镇东兴家庭种植农场', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285974634497, N'王世国', N'王朝阳村', N'372428197107181813', N'15698244176', CAST(98.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285978828800, N'王敬辉', N'王河头村', N'372428196502235414', N'18562146897', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285983023104, N'刘修祯', N'靳家村', N'37242819731226153x', N'4898797', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285983023105, N'刘修祯', N'靳家村', N'37242819731226153x', N'4898797', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.590' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285987217408, N'陈照民', N'陈家村', N'372428196107131512', N'15053422185', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285987217409, N'郭仁福', N'郭桥村', N'371424196801111814', N'15589144253', CAST(96.00 AS Decimal(18, 2)), N'临邑县德平镇仁福家庭种植农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455285995606016, N'赵延利', N'曹塚', N'372428196804195415', N'18263091377', CAST(95.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.593' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286003994624, N'赵延利', N'曹塚', N'372428196804195415', N'18263091377', CAST(95.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286008188928, N'王进', N'王朝阳村', N'371424198301231536', N'18353494866', CAST(95.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286008188929, N'岳邦', N'郭桥村', N'372428197506011811', N'15965935318', CAST(95.00 AS Decimal(18, 2)), N'临邑县德平镇盛农玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.597' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286012383232, N'陈方新', N'河沟陈', N'372428197602195411', N'13205346645', CAST(94.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286016577536, N'赵延贞', N'曹塚', N'372428195803125410', N'13181364151', CAST(94.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286016577537, N'孙立民', N'赫家村', N'372428195911295417', N'13176143976', CAST(94.00 AS Decimal(18, 2)), N'临邑县德平镇幸福玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286020771840, N'郭仁敏', N'纪张盛', N'371424198204255421', N'13573467235', CAST(93.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286020771841, N'朱庆尧', N'六股路', N'372428197005131559', N'13583451935', CAST(92.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286024966144, N'葛怀岑', N'小葛家', N'37242819731114151X', N'4879539', CAST(92.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286024966145, N'郭仁敏', N'纪张盛', N'371424198204255421', N'13573467235', CAST(91.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.600' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286024966146, N'刘俊宝', N'万家村', N'372428197106081511', N'15166984426', CAST(91.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286029160448, N'张衍辉', N'张可达村', N'372428197010111579', N'13210997648', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286029160449, N'高太胜', N'戚寨村', N'372428197206025410', N'13583466057', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286033354752, N'杨明水', N'西小杨村', N'372428197310075418', N'15965905699', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286033354753, N'高太胜', N'戚寨村', N'372428197206025410', N'13583466057', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286033354754, N'张广朋', N'张棒槌村', N'37142419640307151X', N'15553412272', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286037549056, N'张明河', N'十里铺村', N'37242819670817151x', N'15053452533', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286037549057, N'张景林', N'后 张', N'372428195809115416', N'13256231769', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.603' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286041743360, N'刘培明', N'陈寨村', N'372428196809101852', N'15853410158', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286041743361, N'张景林', N'后 张', N'372428195809115416', N'13256231769', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286041743362, N'刘培明', N'陈寨村', N'372428196809101852', N'15853410158', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286045937664, N'韩家新', N'郭平阳村', N'37142419761113151X', N'13406792357', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286045937665, N'静广涛', N'静家村', N'372428197004031513', N'18765587208', CAST(88.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286050131968, N'郭宗铁', N'东关村', N'37242819740408151X', N'13573429556', CAST(87.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286050131969, N'陈照民', N'陈家村', N'372428196107131512', N'15053422185', CAST(87.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286050131970, N'马洪喜', N'碱 马', N'372428196904205430', N'7671816', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.607' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286054326272, N'马洪喜', N'碱 马', N'372428196904205430', N'7671816', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286054326273, N'邓金达', N'邓家村', N'37242819700817153X', N'15969758243', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286058520576, N'邓金达', N'邓家村', N'37242819700817153X', N'15969758243', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286062714880, N'陈广胜', N'陈家村', N'372428197210161538', N'13153456506', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.610' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286071103488, N'靳邦治', N'靳家村', N'371424198403021556', N'18266143259', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286075297792, N'刘修福', N'靳家村', N'372428196902051538', N'13645344619', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286079492096, N'刘修福', N'靳家村', N'372428196902051538', N'13645344619', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.613' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286083686400, N'房维成', N'房集村', N'372428196505051817', N'15806886867', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286083686401, N'王成谦', N'王河头村', N'372428196812285410', N'13910393132', CAST(82.00 AS Decimal(18, 2)), N'临邑县德平镇成谦桂英玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286083686402, N'范世龙', N'范家村', N'372428197712085416', N'13053459227', CAST(82.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286087880704, N'陈广胜', N'陈家村', N'372428197210161538', N'13153456506', CAST(82.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286087880705, N'明长贵', N'后明', N'372428195910121810', N'17083035358', CAST(81.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286092075008, N'张玉健', N'孙庙', N'371424198309261510', N'18201598397', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286092075009, N'张玉健', N'孙庙', N'371424198309261510', N'18201598397', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286092075010, N'郭宗宝', N'王朝阳村', N'372428195910111831', N'15553409503', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286096269312, N'吕元星', N'王连周村', N'372428196505265436', N'18866008034', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.617' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286096269313, N'郭宗宝', N'王朝阳村', N'372428195910111831', N'15553409503', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286096269314, N'吕元星', N'丁家村', N'372428196505265436', N'18866008034', CAST(80.00 AS Decimal(18, 2)), N'临邑县德平镇元星玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286100463616, N'陈振强', N'东四里塘', N'372428197201061519', N'13173346810', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286100463617, N'傅宗理', N'付家', N'372428196404161814', N'18553427389', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286104657920, N'郭宗恒', N'纪张盛', N'371424198106305413', N'15863122658', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286104657921, N'单飞飞', N'大单村', N'371424198408265429', N'13176141963', CAST(79.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286104657922, N'单飞飞', N'大单村', N'371424198408265429', N'13176141963', CAST(79.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286108852224, N'林长明', N'林寨', N'372428195811191514', N'13589923059', CAST(79.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.620' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286113046528, N'郭宗贵', N'纪张盛', N'372428195611135411', N'18253435270', CAST(79.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286113046529, N'王清国', N'王朝阳村', N'372428196808281812', N'13053481416', CAST(78.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286113046530, N'王清国', N'王朝阳村', N'372428196808281812', N'13053481416', CAST(78.00 AS Decimal(18, 2)), N'临邑县德平镇清国玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286117240832, N'朱秀花', N'闫家村', N'371424196602081544', N'15589187772', CAST(78.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286117240833, N'李安彬', N'碱李', N'372428197412025411', N'18606402262', CAST(76.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286121435136, N'宫肇明', N'宫家', N'372428196707141511', N'13176268287', CAST(76.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286121435137, N'张吉辉', N'西沈村', N'372428197202155437', N'18553432628', CAST(76.00 AS Decimal(18, 2)), N'临邑县德平镇吉辉种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286121435138, N'王海波', N'养马村', N'371424198602081535', N'13792239732', CAST(76.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.623' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286125629440, N'史立木', N'史家村', N'372428196711191511', N'18266109558', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286129823744, N'史立木', N'史家村', N'372428196711191511', N'18266109558', CAST(75.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村立木家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286129823745, N'葛树靳', N'葛老庄村', N'372428196802221819', N'18765587656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286134018048, N'葛孚国', N'葛老庄村', N'37142419690804181X', N'13625346339', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.627' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286142406656, N'单金贵', N'范家村', N'372428196803145416', N'15253425831', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.630' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.630' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286154989568, N'葛树靳', N'葛老庄村', N'372428196802221819', N'18765587656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286159183872, N'葛孚国', N'葛老庄村', N'37142419690804181X', N'13625346339', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286159183873, N'李培刚', N'后 张', N'372428196708075413', N'18653434656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286163378176, N'周吉东', N'薛家村', N'372428197102121512', N'13153480380', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.633' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286167572480, N'闫继智', N'闫家村', N'372428197102101511', N'13792227460', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286167572481, N'付秀荣', N'闫家村', N'371424196901051521', N'15165931739', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286171766784, N'张广银', N'张棒槌村', N'372428197404201518', N'13884695215', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286171766785, N'冯学军', N'任家庙村', N'372428197205231511', N'13573426753', CAST(74.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286171766786, N'信振峰', N'信阁', N'371424198104021513', N'15853407691', CAST(74.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286175961088, N'王善水', N'孟集', N'372428197007081815', N'15552600446', CAST(73.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286180155392, N'王善水', N'孟集', N'372428197007081815', N'15552600446', CAST(73.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.637' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286180155393, N'刘兰新', N'北小刘村', N'372428194802011812', N'15863317951', CAST(73.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286184349696, N'史学龙', N'史家村', N'371424198412081518', N'15965918685', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286184349697, N'李宗仁', N'孙庙', N'372428197008191514', N'13455407788', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286188544000, N'李宗仁', N'孙庙', N'372428197008191514', N'13455407788', CAST(72.00 AS Decimal(18, 2)), N'临邑县德平镇宗仁玉米种植家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286188544001, N'史学龙', N'史家村', N'371424198412081518', N'15965918685', CAST(72.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村富龙家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286192738304, N'朱玉慧', N'朱亭', N'372428197402181517', N'15864154577', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286192738305, N'董学增', N'王恒', N'372428197701181517', N'18353463950', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.640' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286192738306, N'张龙', N'王恒', N'371424198107191534', N'13573410017', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286196932608, N'葛树文', N'葛老庄村', N'37142419740322181X', N'13791348717', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286201126912, N'葛树文', N'葛老庄村', N'37142419740322181X', N'13791348717', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.643' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286217904128, N'郭本利', N'郭湾', N'372428197103161831', N'15621220628', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.647' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.647' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286381481984, N'郭本利', N'郭湾', N'372428197103161831', N'15621220628', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286385676288, N'张志强', N'西沈村', N'372428196803135410', N'15998774678', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286385676289, N'葛汝兴', N'葛老庄村', N'372428196603031836', N'13583452175', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286389870592, N'葛汝兴', N'葛老庄村', N'372428196603031836', N'13583452175', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.687' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286389870593, N'周继春', N'东关村', N'372428196905111532', N'15253472631', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286394064896, N'戚良敏', N'戚寨村', N'372428196605145415', N'15525612240', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286394064897, N'蔡兆森', N'郭桥村', N'372428196904261811', N'13405190040', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286398259200, N'李正秋', N'孟集', N'372428195401171836', N'13053480745', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286398259201, N'戚良敏', N'戚寨村', N'372428196605145415', N'15525612240', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286402453504, N'陈照祥', N'陈家', N'37242819490816151X', N'13475196927', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286402453505, N'史学海', N'史家村', N'372427196907081510', N'13255446091', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.690' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286402453506, N'房维成', N'房集村', N'372428196505051817', N'15806886867', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286406647808, N'陈学正', N'小盛家村', N'372428197309271518', N'13953459020', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286410842112, N'李庆贞', N'茄子李', N'372428196812205417', N'13275344771', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.693' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286427619328, N'李庆贞', N'茄子李', N'372428196812205417', N'13275344771', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.697' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.697' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286431813632, N'闫心胜', N'闫家村', N'372428197203261530', N'13184127822', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286436007936, N'王敬辉', N'王河头村', N'372428196502235414', N'18562146897', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286436007937, N'刘宗敏', N'阳关庙村', N'371424198103135439', N'15253429317', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286440202240, N'单祥旭', N'大单村', N'372428196606165418', N'15865915177', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286440202241, N'宫新红', N'时王村', N'371424197312121848', N'13225349198', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286444396544, N'王广明', N'胡寨村', N'371424198106125412', N'13792226021', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.700' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286448590848, N'鲍万胜', N'大鲍村', N'372428197012301536', N'13210978174', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286448590849, N'宫新红', N'时王村', N'371424197312121848', N'13225349198', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286452785152, N'胡宋兴', N'房集村', N'372428196601231818', N'15965227206', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286452785153, N'肖昌平', N'六股路', N'372428196712041558', N'13583402890', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286452785154, N'王长坤', N'范家村', N'372428196304215432', N'4890615', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286456979456, N'贾桂芹', N'曹塚', N'372428196703045426', N'13285440830', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286456979457, N'于兴武', N'满家村', N'372428196709141814', N'13793494580', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.703' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286461173760, N'王长坤', N'范家村', N'372428196304215432', N'4890615', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286461173761, N'于兴武', N'满家村', N'372428196709141814', N'13793494580', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286465368064, N'周延虎', N'周家村', N'37242819710417153X', N'18553414368', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286465368065, N'贾桂芹', N'曹塚', N'372428196703045426', N'13285440830', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286469562368, N'刘俊宝', N'万家村', N'372428197106081511', N'15166984426', CAST(67.00 AS Decimal(18, 2)), N'临邑县德平镇俊宝家庭农场', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286469562369, N'陈淑华', N'东新庄村', N'371424197201111823', N'15166947321', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286469562370, N'陈淑华', N'东新庄村', N'371424197201111823', N'15166947321', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.707' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286473756672, N'李德虎', N'大杨家', N'372428196505011516', N'13173348728', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286473756673, N'陈元和', N'陈集村', N'372428196803051516', N'15853418517', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286477950976, N'陈元和', N'陈集村', N'372428196803051516', N'15853418517', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.710' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286486339584, N'王有财', N'史家村', N'372428195402121515', N'13793481602', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286494728192, N'王有财', N'史家村', N'372428195402121515', N'13793481602', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286498922496, N'霍纪清', N'活佛庙', N'371424198004011510', N'13573420453', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.713' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286503116800, N'蔡兆森', N'郭桥村', N'372428196904261811', N'13405190040', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286503116801, N'葛汝杰', N'葛老庄村', N'372428196707031814', N'13953475024', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286507311104, N'闫世勇', N'闫庙村', N'371424196410191511', N'13869288509', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286507311105, N'闫世勇', N'闫庙村', N'371424196410191511', N'13869288509', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286511505408, N'葛汝杰', N'葛老庄村', N'372428196707031814', N'13953475024', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286515699712, N'李万庚', N'碱李', N'37142419701212545X', N'15092540457', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.717' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286515699713, N'周立泉', N'薛家村', N'372428197101151517', N'13153491432', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286519894016, N'蒋秀英', N'王屯村', N'372428195911101520', N'15853407819', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286524088320, N'蒋秀英', N'王屯村', N'372428195911101520', N'15853407819', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.720' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286532476928, N'蕫付山', N'东关村', N'372428197301101514', N'13573431480', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286536671232, N'任德胜', N'任家庙村', N'372428197008231512', N'13526489338', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286536671233, N'任德胜', N'任家庙村', N'372428197008231512', N'13526489338', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286540865536, N'陈镇', N'陈家村', N'372428195710041517', N'15589142371', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286540865537, N'周延虎', N'周家村', N'37242819710417153X', N'18553414368', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.723' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286545059840, N'王平', N'胡王村', N'372428197211041511', N'13355443987', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286545059841, N'王平', N'胡王村', N'372428197211041511', N'13355443987', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286549254144, N'许和亮', N'南关村', N'371424196411091539', N'13869208213', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.727' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286566031360, N'许和亮', N'南关村', N'371424196411091539', N'13869208213', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.730' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.730' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286574419968, N'王世友', N'王朝阳村', N'372428196804051817', N'15963375497', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286578614272, N'付秀荣', N'闫家村', N'371424196901051521', N'15165911739', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286578614273, N'刘道通', N'大刘村', N'372428195112101815', N'13181372233', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286582808576, N'魏德亮', N'魏家村', N'372428196910151838', N'13153474862', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286582808577, N'朱秀花', N'闫家村', N'371424196602081544', N'15589187772', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.733' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286587002880, N'张宗国', N'东西张村', N'372428196611221517', N'13515345204', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286587002881, N'赵世景', N'赵家村', N'372428196511121834', N'18654764187', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286587002882, N'王华平', N'王连周村', N'372428197008165412', N'13145347835', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286591197184, N'陈元祥', N'东贾村', N'372428196602215414', N'15069295558', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286591197185, N'宫汝胜', N'闫庙村', N'372428197506241537', N'13869279302', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286595391488, N'宫汝胜', N'闫庙村', N'372428197506241537', N'13869279302', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286595391489, N'明保东', N'前明村', N'372428196511051819', N'18315929388', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286595391490, N'明宝柱', N'后明村', N'372428197009171814', N'13869287479', CAST(62.00 AS Decimal(18, 2)), N'临邑县果实累累谷物种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.737' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286599585792, N'胡福锋', N'王家村', N'372428197807271813', N'13573431395', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286599585793, N'胡福锋', N'王家村', N'372428197807271813', N'13573431395', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286603780096, N'王风军', N'王坊村', N'372428197409201816', N'13706390202', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286603780097, N'王风军', N'王坊村', N'372428197409201816', N'13706390202', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286607974400, N'石立霞', N'房集', N'37240219750418482X', N'13406784025', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286607974401, N'葛怀德', N'东贾村', N'372428195502155413', N'15589124061', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286607974402, N'葛怀德', N'东贾村', N'372428195502155413', N'15589124061', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286612168704, N'葛怀军', N'葛老庄村', N'372428196510201875', N'15905347883', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286612168705, N'葛怀军', N'葛老庄村', N'372428196510201875', N'15905347883', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.740' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286616363008, N'霍纪清', N'活佛庙', N'371424198004011510', N'13573420453', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286616363009, N'刘景胜', N'斜家村', N'372428195101061811', N'13053436805', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286624751616, N'于汝敏', N'于家河村', N'372428196406011852', N'13953454591', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.743' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286633140224, N'戚良亮', N'戚寨村', N'371424198709105410', N'13406792363', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.747' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.747' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286641528832, N'赵延贞', N'曹塚', N'372428195803125410', N'13181364151', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.747' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.747' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286641528833, N'张文端', N'孙庙', N'372428196411011574', N'18766016528', CAST(60.00 AS Decimal(18, 2)), N'', N'嘉丰（临邑县）农作物种植专业合作社', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286645723136, N'刘景胜', N'斜家村', N'372428195101061811', N'13053436805', CAST(60.00 AS Decimal(18, 2)), N'临邑县德平镇景胜家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286645723137, N'于汝敏', N'于家河村', N'372428196406011852', N'13953454591', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286649917440, N'戚良亮', N'戚寨村', N'371424198709105410', N'13406792363', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286649917441, N'高国亮', N'戚寨村', N'37242819661225541X', N'15621277896', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286654111744, N'高国亮', N'戚寨村', N'37242819661225541X', N'15621277896', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.750' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286654111745, N'王玉香', N'东新庄村', N'371424197412051824', N'13668626637', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286658306048, N'万明前', N'万家村', N'372428196010201510', N'15864171363', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286658306049, N'庞长岩', N'西新庄村', N'372428197411195419', N'18653423896', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286662500352, N'房廷刚', N'房集村', N'372428197412231813', N'15166907375', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286662500353, N'张玉生', N'闫家村', N'372428195706171538', N'4879908', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286662500354, N'金成恩', N'碱 马', N'372428197209275415', N'13475345625', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286666694656, N'金成恩', N'碱 马', N'372428197209275415', N'13475345625', CAST(59.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286666694657, N'盛振明', N'香李村', N'372428195508211519', N'15863122399', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.753' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286670888960, N'陈廷勇', N'陈家村', N'372428196907201515', N'15053422185', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286670888961, N'郭胜', N'郭湾', N'372428197507191818', N'18553482286', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286675083264, N'郭胜', N'郭湾', N'372428197507191818', N'18553482286', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286675083265, N'孟令辉', N'孟集', N'371424197502221815', N'15666007023', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286675083266, N'孟令辉', N'孟集', N'371424197502221815', N'15666007023', CAST(58.00 AS Decimal(18, 2)), N'临邑县德平镇令辉玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286679277568, N'于佐星', N'十里铺村', N'372428196205271519', N'13573489498', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286679277569, N'于佐星', N'十里铺村', N'372428196205271519', N'13573489498', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平农丰家庭种植农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286683471872, N'葛保华', N'西塘村', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.757' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286683471873, N'宋吉亮', N'满家村', N'372428197802251836', N'13573493782', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286687666176, N'陈文刚', N'张棒槌村', N'372428197003061518', N'18562149985', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286691860480, N'王清利', N'王朝阳村', N'372428197010301815', N'13153462872', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平清利玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.760' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286700249088, N'宋吉亮', N'满家村', N'372428197802251836', N'13573493782', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.763' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.763' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286708637696, N'葛保华', N'西塘村', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平镇保华家庭种植农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.763' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.763' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286712832000, N'葛保华', N'西四里塘', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平镇保华家庭种植农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286712832001, N'张保民', N'前张', N'372428196506095416', N'13583427712', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286712832002, N'李泽勇', N'夏屯村', N'372428196005241518', N'158535420046', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286717026304, N'郭宗仁', N'满家村', N'37142419801105181X', N'15965918230', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286717026305, N'于兴杰', N'满家村', N'37242819580821181X', N'13153484781', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286721220608, N'郭宗峰', N'满家村', N'372428197009111811', N'18265446055', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286721220609, N'郭宗仁', N'满家村', N'37142419801105181X', N'15965918230', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286721220610, N'于兴杰', N'满家村', N'37242819580821181X', N'13153484781', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.767' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286725414912, N'郭宗峰', N'满家村', N'372428197009111811', N'18265446055', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286725414913, N'陈元桥', N'陈集村', N'372428197310191515', N'13406855021', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286729609216, N'李泽勇', N'夏屯村', N'372428196005241518', N'158535420046', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286729609217, N'景瑞红', N'付家', N'372428196608221815', N'13021766827', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286729609218, N'胡守德', N'房集村', N'372428196902022438', N'15269425028', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286733803520, N'杨清禄', N'活佛庙', N'372428196009191511', N'13791349494', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286733803521, N'王玉英', N'闫家村', N'372428196912031549', N'15589142490', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286737997824, N'吴秀云', N'大吴庙', N'372428196503201826', N'13011756390', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286737997825, N'陈照红', N'范家村', N'372428196401185423', N'13583437176', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.770' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286737997826, N'陈照红', N'范家村', N'372428196401185423', N'13583437176', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286742192128, N'吴庆同', N'王河头村', N'372428196504225416', N'13005447127', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286742192129, N'李兰梅', N'王坊村', N'371424197511101823', N'15820065759', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286746386432, N'徐秀青', N'胡寨村', N'37242819550905544x', N'13053486426', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286746386433, N'陈化明', N'陈集村', N'372428195710021532', N'13405343013', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286746386434, N'弭希鹏', N'小吴庙', N'371424198210101859', N'18053429982', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286750580736, N'张衍重', N'张可达村', N'372428196401031512', N'15153478192', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286750580737, N'王兆忠', N'胡寨村', N'37242819711007543x', N'13502146905', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.773' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286754775040, N'张广朋', N'张棒槌村', N'37142419640307151X', N'15553412272', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286754775041, N'王兆忠', N'胡寨村', N'37242819711007543x', N'13502146905', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286758969344, N'孙立民', N'赫家村', N'372428195911295417', N'13176143976', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.777' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286775746560, N'许修和', N'夏屯村', N'372428196006281511', N'15589143426', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.780' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.780' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286779940864, N'许修和', N'夏屯村', N'372428196006281511', N'15589143426', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286784135168, N'李正田', N'茄子李', N'372428196905055411', N'13573426701', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286788329472, N'胡寿峰', N'戚寨村', N'372428197110105459', N'13791388308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286788329473, N'马治水', N'碱 马', N'372428195603175410', N'15315898308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286792523776, N'李正田', N'茄子李', N'372428196905055411', N'13573426701', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286792523777, N'刘景彬', N'斜家村', N'371424196801021819', N'13153491302', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.783' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286796718080, N'于一法', N'于家河村', N'372428196510111837', N'13793457739', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286800912384, N'曹启连', N'西曹', N'372428196308151819', N'15953762838', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286800912385, N'陈元峰', N'陈集村', N'372428197611271519', N'18766092062', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286805106688, N'马治水', N'碱 马', N'372428195603175410', N'15315898308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286805106689, N'明宝平', N'前明村', N'372428195607031812', N'13791300455', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.787' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286813495296, N'于秋收', N'单家村', N'37142419770903542X', N'15321228865', CAST(54.00 AS Decimal(18, 2)), N'临邑县德平镇秋收谷物种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286813495297, N'姜长德', N'郭桥村', N'372428195605191812', N'18315993293', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286817689600, N'蕫付山', N'东关村', N'372428197301101514', N'13573431480', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286817689601, N'刘家国', N'南小刘', N'372428196902271514', N'15564400541', CAST(54.00 AS Decimal(18, 2)), N'临邑县德平镇家国玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286821883904, N'齐永魁', N'纪张盛', N'372428197309015434', N'13210988001', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.790' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286821883905, N'孙文东', N'孙家村', N'372428197508195415', N'13791308153', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286826078208, N'齐永魁', N'纪张盛', N'372428197309015434', N'18561190576', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286834466816, N'贾生宾', N'戚寨村', N'372428196810105412', N'13053458627', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.793' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286847049728, N'李文菊', N'信阁', N'372428196510211221', N'15169715213', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.797' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.797' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286851244032, N'葛怀友', N'小葛家', N'372428196703111534', N'13053439982', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.797' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.797' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286855438336, N'吴会敏', N'吴家', N'37242819710618182X', N'15865901537', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286855438337, N'贾生宾', N'戚寨村', N'372428196810105412', N'13053458627', CAST(53.00 AS Decimal(18, 2)), N'临邑县德平镇生宾农作物种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286859632640, N'李汝忠', N'师家村', N'371424196410301813', N'13165341346', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286859632641, N'张玉生', N'闫家村', N'372428195706171538', N'4879908', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286863826944, N'王章成', N'弭家村', N'372428197502061811', N'15965918964', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286863826945, N'李汝忠', N'师家村', N'371424196410301813', N'13165341346', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.800' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286863826946, N'张广海', N'东新庄村', N'372428197203211832', N'17615947885', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286868021248, N'张广华', N'东新庄村', N'37242819740629181x', N'13583451139', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286868021249, N'付胜强', N'付家', N'372428197003201816', N'13181362315', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286872215552, N'刘顺龙', N'大刘村', N'372428196708101810', N'13153473739', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286872215553, N'刘家国', N'南小刘', N'372428196902271514', N'15564400541', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286876409856, N'靳延军', N'六合镇村', N'371424197207261531', N'13734341148', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286876409857, N'靳延军', N'六合镇村', N'371424197207261531', N'13734341148', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇延军玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.803' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286880604160, N'万明前', N'万家村', N'372428196010201510', N'15864171363', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286880604161, N'胡寿友', N'房集', N'372428197410251810', N'15069213035', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286880604162, N'董翠华', N'南小刘', N'372428196509061529', N'16688091685', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286884798464, N'胡寿友', N'房集', N'372428197410251810', N'15069213035', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286884798465, N'于一胜', N'十里铺村', N'372428196911291533', N'13791314433', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286888992768, N'于一胜', N'十里铺村', N'372428196911291533', N'13791314433', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286888992769, N'史立兴', N'史家村', N'372428197109291514', N'15965935617', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.807' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286893187072, N'周立泉', N'薛家村', N'372428197101151517', N'13153491432', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286897381376, N'张明强', N'大鲍村', N'372428197007091511', N'13905441821', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286901575680, N'杨春平', N'活佛庙', N'372428196110261510', N'4892686', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.810' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286905769984, N'任连国', N'任家庙村', N'372428197410291513', N'13515445694', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.813' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.813' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286922547200, N'金成坤', N'碱 马', N'372428195512255418', N'13176146953', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286926741504, N'宋继良', N'满家村', N'372428197110121838', N'13153490653', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286930935808, N'任连国', N'任家庙村', N'372428197410291513', N'13515445694', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286930935809, N'于一河', N'于家河村', N'372428197809261834', N'15053422214', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286935130112, N'宋继良', N'满家村', N'372428197110121838', N'13153490653', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇传伟玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.817' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286935130113, N'张明强', N'大鲍村', N'372428197007091511', N'13905441821', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286939324416, N'金成坤', N'碱 马', N'372428195512255418', N'13176146953', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286939324417, N'闫吉来', N'闫家村', N'372428197201011570', N'15206937758', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286939324418, N'史立兴', N'史家村', N'372428197109291514', N'15965935617', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村立兴家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286943518720, N'闫继叶', N'闫家村', N'372428197105231514', N'13184128173', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286943518721, N'王新', N'东新庄村', N'372428196804281516', N'13153460963', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286947713024, N'王新', N'东新庄村', N'372428196804281516', N'13153460963', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.820' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286947713025, N'于志龙', N'满家村', N'372428196810201834', N'13853422048', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286951907328, N'于志龙', N'满家村', N'372428196810201834', N'13853422048', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286951907329, N'史建国', N'史家村', N'372428197005041537', N'15965912173', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286956101632, N'周吉东', N'薛家村', N'372428197102121512', N'13153480380', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286956101633, N'史建国', N'史家村', N'372428197005041537', N'15965912173', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村建国家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286960295936, N'王海波', N'养马村', N'371424198602081535', N'13792239732', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286960295937, N'闫继良', N'闫家村', N'372428197202051515', N'15965912499', CAST(51.00 AS Decimal(18, 2)), N'临邑县德平镇继良玉米种植家庭农场', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.823' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286964490240, N'刘占信', N'弭家村', N'372428196409171819', N'13153473177', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286964490241, N'王玉香', N'东新庄村', N'371424197412051824', N'13668626637', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286968684544, N'弭玉峰', N'弭家村', N'371424198302231810', N'18653410858', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286972878848, N'唐秀芹', N'梁家', N'372428196809211226', N'17615953782', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.827' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286981267456, N'陈廷勇', N'陈家村', N'372428196907201515', N'15053422185', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.830' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.830' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286989656064, N'杨朋', N'杨六家村', N'372428197712071532', N'18653439387', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.830' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.830' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286993850368, N'贾生周', N'东贾村', N'372428196812125433', N'13791319605', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286993850369, N'杨朋', N'杨六家村', N'372428197712071532', N'18653439387', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286993850370, N'贾生周', N'东贾村', N'372428196812125433', N'13791319605', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286998044672, N'张广海', N'东新庄村', N'372428197203211832', N'17615947885', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455286998044673, N'东新庄村', N'张广华', N'37242819740629181x', N'13583451139', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287002238976, N'蒋志华', N'蒋家', N'372428197510071534', N'13853481542', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287002238977, N'胡寿富', N'戚寨村', N'371424197502255417', N'13184129718', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.833' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287006433280, N'胡寿勇', N'戚寨村', N'372428196309215431', N'13884697854', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287006433281, N'于汝孝', N'于家河村', N'372428197001021811', N'13173347004', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287006433282, N'蒋志华', N'蒋家', N'372428197510071534', N'13853481542', CAST(50.00 AS Decimal(18, 2)), N'', N'临邑传龙粮食种植专业合作社', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287010627584, N'胡寿富', N'戚寨村', N'371424197502255417', N'13184129718', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287010627585, N'胡寿勇', N'戚寨村', N'372428196309215431', N'13884697854', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287014821888, N'刘世新', N'陈寨村', N'372428196908201859', N'15863122082', CAST(47.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1584455287014821889, N'王光明', N'胡寨村', N'371424198106125412', N'13792226021', CAST(0.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime), N'admin', CAST(N'2022-10-24T16:02:32.837' AS DateTime))
GO
INSERT [dbo].[vipInfo] ([vipInfoId], [villageName], [vipName], [circulationArea], [circulationPrice], [Neighborhood], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601057456526594048, N'郭湾村/魏家村', N'郭仁华', CAST(1140.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'散户', N'lydbl', CAST(N'2022-12-09T11:36:52.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T11:36:58.000' AS DateTime))
GO
INSERT [dbo].[vipInfo] ([vipInfoId], [villageName], [vipName], [circulationArea], [circulationPrice], [Neighborhood], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601058367021912064, N'纪张圣村', N'郭宗恒', CAST(100.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), N'散户', N'lydbl', CAST(N'2022-12-09T11:38:05.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T11:38:11.000' AS DateTime))
GO
INSERT [dbo].[vipInfo] ([vipInfoId], [villageName], [vipName], [circulationArea], [circulationPrice], [Neighborhood], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601058671100563456, N'郭湾村/魏家村', N'郭本林', CAST(200.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'大户', N'lydbl', CAST(N'2022-12-09T11:39:19.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T11:39:26.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601059117462589440, 1601057456526594048, N'[[116.95698564,37.50116834],[116.96009651,37.50119209],[116.96061282,37.49760041],[116.96056970,37.49699581],[116.95924561,37.49689924],[116.95740493,37.49679310]]', CAST(220.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T11:41:25.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T11:41:30.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601059502302564352, 1601057456526594048, N'[[116.95259487,37.50382413],[116.95279904,37.50117686],[116.95771758,37.50125503],[116.95745952,37.50364675]]', CAST(180.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T11:42:24.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T11:42:29.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601076505251811328, 1601057456526594048, N'[[116.95902492,37.49676679],[116.95501010,37.49648587],[116.95512297,37.49521322],[116.95619925,37.49520692],[116.95639285,37.49402382],[116.95870170,37.49424585],[116.95917009,37.49544314]]', CAST(125.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:50:59.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:51:04.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601077015069462528, 1601057456526594048, N'[[116.95250878,37.50381545],[116.95081934,37.50389735],[116.95007151,37.50394703],[116.94990461,37.50292513],[116.94979689,37.50183947],[116.95165305,37.50176208],[116.95183591,37.50116648],[116.95272371,37.50118522]]', CAST(90.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:51:55.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:52:04.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601077321132019712, 1601057456526594048, N'[[116.96030124,37.50295483],[116.96143161,37.50306803],[116.96147471,37.50337461],[116.96264819,37.50341985],[116.96267514,37.50373065],[116.96289584,37.50373541],[116.96382714,37.50379291],[116.96387578,37.50545309],[116.96339668,37.50554561],[116.96334830,37.50613290],[116.96149656,37.50626487],[116.96146428,37.50636269],[116.96040928,37.50637310],[116.96037691,37.50576009],[116.96042529,37.50518131],[116.96012386,37.50513382]]', CAST(145.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:53:18.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:53:24.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601077595909263360, 1601057456526594048, N'[[116.96148044,37.50648191],[116.96341292,37.50635439],[116.96359065,37.50705711],[116.96395138,37.50751339],[116.96424208,37.50748428],[116.96422591,37.50735229],[116.96679390,37.50727329],[116.96729477,37.50868336],[116.96513048,37.50868241],[116.96426913,37.50868889],[116.96425835,37.50859097],[116.96415607,37.50858222],[116.96272413,37.50860443],[116.96162601,37.50859341],[116.96018346,37.50858167],[116.96010800,37.50764084],[116.96156131,37.50765261]]', CAST(150.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:54:36.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:54:47.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601077931914956800, 1601057456526594048, N'[[116.96022127,37.50971818],[116.96016194,37.50863269],[116.96416145,37.50863756],[116.96422607,37.50876114],[116.96528662,37.50877642],[116.96565825,37.51019039],[116.96024283,37.51000340]]', CAST(110.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:55:39.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:55:50.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601078208910987264, 1601057456526594048, N'[[116.96422623,37.51020828],[116.96588437,37.51026754],[116.96546966,37.50877260],[116.96718172,37.50878524],[116.96786028,37.51033192],[116.96831266,37.51132473],[116.96804889,37.51182205],[116.96799510,37.51221348],[116.96766667,37.51221693],[116.96766134,37.51272764],[116.96705295,37.51274318],[116.96694515,37.51172997],[116.96423708,37.51094037]]', CAST(120.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:56:48.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:56:57.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601078559244423168, 1601058367021912064, N'[[116.94034670,37.45499194],[116.94050788,37.45379093],[116.94134678,37.45381348],[116.94133605,37.45401793],[116.94193297,37.45402736],[116.94188474,37.45550966],[116.94130931,37.45533414]]', CAST(30.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:58:02.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:58:10.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601078800739864576, 1601058367021912064, N'[[116.93944832,37.45162115],[116.94043241,37.45206986],[116.94088410,37.45196829],[116.94123899,37.45172174],[116.94134111,37.45123627],[116.94038390,37.45108149],[116.93969022,37.45095694]]', CAST(20.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T12:58:50.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T12:58:55.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601079068487454720, 1601058367021912064, N'[[116.94344374,37.44992745],[116.94392249,37.45066093],[116.94440122,37.45110900],[116.94471855,37.45112656],[116.94499821,37.45089273],[116.94523488,37.45095276],[116.94539622,37.45076133],[116.94560054,37.45007581],[116.94348136,37.44966765]]', CAST(28.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T13:00:19.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T13:00:25.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601079494469357568, 1601058367021912064, N'[[116.94695582,37.44806312],[116.94749906,37.44745912],[116.94781111,37.44788569],[116.94900013,37.44910194],[116.94853754,37.44958675]]', CAST(22.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T13:02:09.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T13:02:13.000' AS DateTime))
GO
INSERT [dbo].[vipInfoLand] ([recordId], [vipInfoId], [LngAndLat], [LandArea], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1601079850813231104, 1601058671100563456, N'[[116.95287436,37.50106633],[116.95318593,37.49651201],[116.95626400,37.49671408],[116.95584474,37.50114893]]', CAST(200.00 AS Decimal(18, 2)), N'lydbl', CAST(N'2022-12-09T13:03:15.000' AS DateTime), N'lydbl', CAST(N'2022-12-09T13:03:19.000' AS DateTime))
GO
/****** Object:  StoredProcedure [dbo].[AddVipInfoLand]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddVipInfoLand]
(
        @recordId               BigInt,
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Created				nvarchar(128), 
		@CompanyId				INT,				
		@strErrorDescribe		NVARCHAR(127)	OUTPUT   -- ErrorDescribe
)
as
BEGIN
 
	INSERT vipInfoLand(recordId,VipInfoId,LngAndLat,LandArea,Created,CreatedTime)
	VALUES(
	@recordId,@VipInfoId,@LngAndLat,@LandArea,@Created,GETDATE());
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'添加种植大户地块失败'
		RETURN 2
	END
	 
END

RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Create_LargeGrain]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Create_LargeGrain]
(
                    @RecordId bigint, --编号
                    @LargeGrainName nvarchar(50), --种粮大户姓名
                    @Village nvarchar(50), --所属村子
                    @IDCard nvarchar(50), --身份证
                    @ContactMobile nvarchar(50), --联系电话
                    @PlantingArea decimal, --种植面积
                    @FamilyFarm nvarchar(50), --家庭农场
                    @CoopeRative nvarchar(50), --合作社
                    @Backup01 nvarchar(170), --备用字段01
                    @Backup02 nvarchar(170), --备用字段02
                    @Backup03 nvarchar(170), --备用字段03
                    @Created nvarchar(50), --创建人
                    @CreatedTime datetime, --创建时间
                    @Modifer nvarchar(50), --修改人
                    @ModifedTime datetime --修改时间
)
as
begin
     insert into LargeGrain
     (
               [RecordId],
               [LargeGrainName],
               [Village],
               [IDCard],
               [ContactMobile],
               [PlantingArea],
               [FamilyFarm],
               [CoopeRative],
               [Backup01],
               [Backup02],
               [Backup03],
               [Created],
               [CreatedTime],
               [Modifer],
               [ModifedTime]
     )
     values
     (
               @RecordId,
               @LargeGrainName,
               @Village,
               @IDCard,
               @ContactMobile,
               @PlantingArea,
               @FamilyFarm,
               @CoopeRative,
               @Backup01,
               @Backup02,
               @Backup03,
               @Created,
               @CreatedTime,
               @Modifer,
               @ModifedTime
     )
end
GO
/****** Object:  StoredProcedure [dbo].[Create_vipInfo]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Create_vipInfo]
(
                  @vipInfoId bigint, --种粮大户编号
                    @villageName varchar(170), --村庄名称
                    @vipName varchar(80), --种粮大户名称
                  @circulationArea decimal, --流转面积
                  @circulationPrice decimal, --流转价格
                    @Neighborhood varchar(50), --地邻
                    @Created varchar(50), --创建人
                  @CreatedTime datetime, --创建时间
                    @Modifer varchar(50), --修改人
                  @ModifedTime datetime --修改时间
)
as
begin
     insert into vipInfo
     (
               [vipInfoId],
               [villageName],
               [vipName],
               [circulationArea],
               [circulationPrice],
               [Neighborhood],
               [Created],
               [CreatedTime],
               [Modifer],
               [ModifedTime]
     )
     values
     (
               @vipInfoId,
               @villageName,
               @vipName,
               @circulationArea,
               @circulationPrice,
               @Neighborhood,
               @Created,
               @CreatedTime,
               @Modifer,
               @ModifedTime
     )
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteVipInfoLand]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[DeleteVipInfoLand](
	@Id  bigint,								-- Id 
	@strErrorDescribe NVARCHAR(127) OUTPUT		-- ErrorDescribe
)
as
BEGIN

	IF NOT EXISTS (SELECT * FROM vipInfoLand(NOLOCK) WHERE RecordId=@Id)
	BEGIN
		SET @strErrorDescribe=N'此资源文件记录不存在'
		RETURN 1
	END

	DELETE vipInfoLand WHERE RecordId=@Id;

END

RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Query_LargeGrain]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Query_LargeGrain]
(
    @SqlWhere Nvarchar(max)
)
as
begin
    Declare @SqlStr nvarchar(max);
	Set @SqlStr='select ';
                Set @SqlStr=@SqlStr+'[RecordId],'
                Set @SqlStr=@SqlStr+'[LargeGrainName],'
                Set @SqlStr=@SqlStr+'[Village],'
                Set @SqlStr=@SqlStr+'[IDCard],'
                Set @SqlStr=@SqlStr+'[ContactMobile],'
                Set @SqlStr=@SqlStr+'[PlantingArea],'
                Set @SqlStr=@SqlStr+'[FamilyFarm],'
                Set @SqlStr=@SqlStr+'[CoopeRative],'
                Set @SqlStr=@SqlStr+'[Backup01],'
                Set @SqlStr=@SqlStr+'[Backup02],'
                Set @SqlStr=@SqlStr+'[Backup03],'
                Set @SqlStr=@SqlStr+'[Created],'
                Set @SqlStr=@SqlStr+'[CreatedTime],'
                Set @SqlStr=@SqlStr+'[Modifer],'
                Set @SqlStr=@SqlStr+'[ModifedTime]'
    Set @SqlStr=@SqlStr+' from LargeGrain';
	if @SqlWhere is not Null Or @SqlWhere<>''
	begin
	   Set @SqlStr=@SqlStr+' where '+@SqlWhere; 
	end
	exec(@SqlStr); 
end
GO
/****** Object:  StoredProcedure [dbo].[Query_LargeGrain_Page]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Query_LargeGrain_Page]
(
  @StartRow int, --开始位置
  @EndRow int, --结束位置
  @TotalNumber int out,--总数据量
  @SortField nvarchar(max),--排序字段
  @SortMethod nvarchar(10),--排序方法
  @SqlWhere nvarchar(max) --查询条件
)
as
BEGIN
	declare @SqlStr nvarchar(max),
    @totalsql nvarchar(max),
    @PageSql nvarchar(max),
    @TableName nvarchar(max);
    set @TableName='dbo.[LargeGrain]';
    set @SqlStr='select 
                  Row_Number() over(order by '+@SortField+' '+@SortMethod+') as Row,';
                Set @SqlStr=@SqlStr+'[RecordId],'
                Set @SqlStr=@SqlStr+'[LargeGrainName],'
                Set @SqlStr=@SqlStr+'[Village],'
                Set @SqlStr=@SqlStr+'[IDCard],'
                Set @SqlStr=@SqlStr+'[ContactMobile],'
                Set @SqlStr=@SqlStr+'[PlantingArea],'
                Set @SqlStr=@SqlStr+'[FamilyFarm],'
                Set @SqlStr=@SqlStr+'[CoopeRative],'
                Set @SqlStr=@SqlStr+'[Backup01],'
                Set @SqlStr=@SqlStr+'[Backup02],'
                Set @SqlStr=@SqlStr+'[Backup03],'
                Set @SqlStr=@SqlStr+'[Created],'
                Set @SqlStr=@SqlStr+'[CreatedTime],'
                Set @SqlStr=@SqlStr+'[Modifer],'
                Set @SqlStr=@SqlStr+'[ModifedTime]'
    Set @SqlStr=@SqlStr+' from '+@TableName;
    if @SqlWhere<>'' 
    Begin
       set @SqlStr=@SqlStr+' Where '+@SqlWhere;
    End
    set @totalsql='with Result as('+@SqlStr+')select @t=count(*) from Result';
    EXEC sp_executesql
        @totalsql, 
        N'@t AS INT OUTPUT',
        @t = @TotalNumber OUTPUT;
    set @PageSql='with Result as('+@SqlStr+')select * from Result where Row>='+cast(@StartRow as varchar)+' and Row<='+cast(@EndRow as varchar);
    print @PageSql;
    exec(@PageSql);	
END
GO
/****** Object:  StoredProcedure [dbo].[Query_vipInfo]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Query_vipInfo]
(
    @SqlWhere Nvarchar(max)
)
as
begin
    Declare @SqlStr nvarchar(max);
	Set @SqlStr='select ';
                Set @SqlStr=@SqlStr+'[vipInfoId],'
                Set @SqlStr=@SqlStr+'[villageName],'
                Set @SqlStr=@SqlStr+'[vipName],'
                Set @SqlStr=@SqlStr+'[circulationArea],'
                Set @SqlStr=@SqlStr+'[circulationPrice],'
                Set @SqlStr=@SqlStr+'[Neighborhood],'
                Set @SqlStr=@SqlStr+'[Created],'
                Set @SqlStr=@SqlStr+'[CreatedTime],'
                Set @SqlStr=@SqlStr+'[Modifer],'
                Set @SqlStr=@SqlStr+'[ModifedTime]'
    Set @SqlStr=@SqlStr+' from vipInfo';
	if @SqlWhere is not Null Or @SqlWhere<>''
	begin
	   Set @SqlStr=@SqlStr+' where '+@SqlWhere; 
	end
	exec(@SqlStr); 
end
GO
/****** Object:  StoredProcedure [dbo].[Query_vipInfo_Page]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Query_vipInfo_Page]
(
  @StartRow int, --开始位置
  @EndRow int, --结束位置
  @TotalNumber int out,--总数据量
  @SortField nvarchar(max),--排序字段
  @SortMethod nvarchar(10),--排序方法
  @SqlWhere nvarchar(max) --查询条件
)
as
BEGIN
	declare @SqlStr nvarchar(max),
    @totalsql nvarchar(max),
    @PageSql nvarchar(max),
    @TableName nvarchar(max);
    set @TableName='dbo.[vipInfo]';
    set @SqlStr='select 
                  Row_Number() over(order by '+@SortField+' '+@SortMethod+') as Row,';
                Set @SqlStr=@SqlStr+'[vipInfoId],'
                Set @SqlStr=@SqlStr+'[villageName],'
                Set @SqlStr=@SqlStr+'[vipName],'
                Set @SqlStr=@SqlStr+'[circulationArea],'
                Set @SqlStr=@SqlStr+'[circulationPrice],'
                Set @SqlStr=@SqlStr+'[Neighborhood],'
                Set @SqlStr=@SqlStr+'[Created],'
                Set @SqlStr=@SqlStr+'[CreatedTime],'
                Set @SqlStr=@SqlStr+'[Modifer],'
                Set @SqlStr=@SqlStr+'[ModifedTime]'
    Set @SqlStr=@SqlStr+' from '+@TableName;
    if @SqlWhere<>'' 
    Begin
       set @SqlStr=@SqlStr+' Where '+@SqlWhere;
    End
    set @totalsql='with Result as('+@SqlStr+')select @t=count(*) from Result';
    EXEC sp_executesql
        @totalsql, 
        N'@t AS INT OUTPUT',
        @t = @TotalNumber OUTPUT;
    set @PageSql='with Result as('+@SqlStr+')select * from Result where Row>='+cast(@StartRow as varchar)+' and Row<='+cast(@EndRow as varchar);
    print @PageSql;
    exec(@PageSql);	
END
GO
/****** Object:  StoredProcedure [dbo].[Update_LargeGrain]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Update_LargeGrain]
(
                    @RecordId bigint, --编号
                    @LargeGrainName nvarchar(50), --种粮大户姓名
                    @Village nvarchar(50), --所属村子
                    @IDCard nvarchar(50), --身份证
                    @ContactMobile nvarchar(50), --联系电话
                    @PlantingArea decimal, --种植面积
                    @FamilyFarm nvarchar(50), --家庭农场
                    @CoopeRative nvarchar(50), --合作社
                    @Backup01 nvarchar(170), --备用字段01
                    @Backup02 nvarchar(170), --备用字段02
                    @Backup03 nvarchar(170), --备用字段03
                    @Created nvarchar(50), --创建人
                    @CreatedTime datetime, --创建时间
                    @Modifer nvarchar(50), --修改人
                    @ModifedTime datetime, --修改时间
                    @SqlWhere NVARCHAR(max)
)
as
begin
     Declare @SqlStr nvarchar(max);
     Set @SqlStr='Update LargeGrain Set ';
              Set @SqlStr=@SqlStr+'RecordId='+rtrim(ltrim(cast(@RecordId as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'LargeGrainName='''+@LargeGrainName+''',';
              Set @SqlStr=@SqlStr+'Village='''+@Village+''',';
              Set @SqlStr=@SqlStr+'IDCard='''+@IDCard+''',';
              Set @SqlStr=@SqlStr+'ContactMobile='''+@ContactMobile+''',';
              Set @SqlStr=@SqlStr+'PlantingArea='+rtrim(ltrim(cast(@PlantingArea as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'FamilyFarm='''+@FamilyFarm+''',';
              Set @SqlStr=@SqlStr+'CoopeRative='''+@CoopeRative+''',';
              Set @SqlStr=@SqlStr+'Backup01='''+@Backup01+''',';
              Set @SqlStr=@SqlStr+'Backup02='''+@Backup02+''',';
              Set @SqlStr=@SqlStr+'Backup03='''+@Backup03+''',';
              Set @SqlStr=@SqlStr+'Created='''+@Created+''',';
              Set @SqlStr=@SqlStr+'CreatedTime='''+CONVERT(varchar,@CreatedTime,120)+''',';              
              Set @SqlStr=@SqlStr+'Modifer='''+@Modifer+''',';
              Set @SqlStr=@SqlStr+'ModifedTime='''+CONVERT(varchar,@ModifedTime,120)+'';              
    if @SqlWhere Is Not Null And @SqlWhere<>''
       Set @SqlStr=@SqlStr+' where '+@SqlWhere;
    exec(@SqlStr); 
end
GO
/****** Object:  StoredProcedure [dbo].[Update_vipInfo]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[Update_vipInfo]
(
                  @vipInfoId bigint, --种粮大户编号
                    @villageName varchar(170), --村庄名称
                    @vipName varchar(80), --种粮大户名称
                  @circulationArea decimal, --流转面积
                  @circulationPrice decimal, --流转价格
                    @Neighborhood varchar(50), --地邻
                    @Created varchar(50), --创建人
                  @CreatedTime datetime, --创建时间
                    @Modifer varchar(50), --修改人
                  @ModifedTime datetime, --修改时间
         @SqlWhere NVARCHAR(max)
)
as
begin
     Declare @SqlStr nvarchar(max);
     Set @SqlStr='Update vipInfo Set ';
              Set @SqlStr=@SqlStr+'vipInfoId='+rtrim(ltrim(cast(@vipInfoId as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'villageName='''+@villageName+''',';
              Set @SqlStr=@SqlStr+'vipName='''+@vipName+''',';
              Set @SqlStr=@SqlStr+'circulationArea='+rtrim(ltrim(cast(@circulationArea as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'circulationPrice='+rtrim(ltrim(cast(@circulationPrice as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'Neighborhood='''+@Neighborhood+''',';
              Set @SqlStr=@SqlStr+'Created='''+@Created+''',';
              Set @SqlStr=@SqlStr+'CreatedTime='''+CONVERT(varchar,@CreatedTime,120)+''',';              
              Set @SqlStr=@SqlStr+'Modifer='''+@Modifer+''',';
              Set @SqlStr=@SqlStr+'ModifedTime='''+CONVERT(varchar,@ModifedTime,120)+'';              
    if @SqlWhere Is Not Null And @SqlWhere<>''
       Set @SqlStr=@SqlStr+' where '+@SqlWhere;
    exec(@SqlStr); 
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateVipInfoLand]    Script Date: 2023/7/1 13:46:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateVipInfoLand]
(
		@Id						Bigint	 , 
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Modified				nvarchar(128), 
		@strErrorDescribe		NVARCHAR(127)   OUTPUT   -- ErrorDescribe
)
as
BEGIN
	
	
	UPDATE vipInfoLand SET
					VipInfoId=@VipInfoId,
					LngAndLat=@LngAndLat,
					LandArea=@LandArea,
					Modifer=@Modified, 
					ModifedTime=GETDATE()   
				WHERE RecordId = @Id
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'更新种植大户地块失败'
		RETURN 2
	END
	 
 
END

RETURN 0



GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种粮大户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'LargeGrainName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属村子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Village'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'IDCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'ContactMobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种植面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'PlantingArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭农场' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'FamilyFarm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合作社' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'CoopeRative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段01' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Backup01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段02' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Backup02'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段03' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Backup03'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Created'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'Modifer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LargeGrain', @level2type=N'COLUMN',@level2name=N'ModifedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种粮大户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'vipInfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'村庄名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'villageName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种粮大户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'vipName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流转面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'circulationArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流转价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'circulationPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地邻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'Neighborhood'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'Created'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'Modifer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfo', @level2type=N'COLUMN',@level2name=N'ModifedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地块编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'recordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种粮大户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'vipInfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经纬度字符串合集(比如116.39,39.56,118.56,87.65)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'LngAndLat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前地块面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'LandArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'Created'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'Modifer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vipInfoLand', @level2type=N'COLUMN',@level2name=N'ModifedTime'
GO
USE [master]
GO
ALTER DATABASE [LandCirculationDatabase] SET  READ_WRITE 
GO
