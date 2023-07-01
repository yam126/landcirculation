USE [master]
GO
/****** Object:  Database [LandCirculationDatabase]    Script Date: 2022-10-21 18:39:33 ******/
CREATE DATABASE [LandCirculationDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LandCirculationDatabase', FILENAME = N'E:\workproject\LandCirculation\DataBase\LandCirculationDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LandCirculationDatabase_log', FILENAME = N'E:\workproject\LandCirculation\DataBase\LandCirculationDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[LargeGrain]    Script Date: 2022-10-21 18:39:33 ******/
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
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424562532352, N'王同湘', N'炉房', N'371424198807141810', N'17853441666', CAST(4750.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424692555776, N'魏德东', N'魏家村', N'372428196802011838', N'13969258616', CAST(1355.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750080, N'李开文', N'任家庙村', N'372428197009221535', N'13375441777', CAST(800.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750081, N'郭仁华', N'郭 湾', N'372428196909261810', N'15315815526', CAST(800.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750082, N'李开文', N'任家庙村', N'372428197009221535', N'13375441777', CAST(800.00 AS Decimal(18, 2)), N'德州诺鼎农业种植有限公司', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750083, N'郭仁华', N'郭 湾', N'372428196909261810', N'15315815526', CAST(800.00 AS Decimal(18, 2)), N'临邑县德平镇华兴宇家庭农场', N'临邑民和丰农机专业合作社
临邑新时代粮食种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750084, N'李凯文', N'郭家村', N'372428197009221535', N'13375441777', CAST(775.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750085, N'王桂鹏', N'炉房', N'371424198504121855', N'15865928000', CAST(697.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750086, N'于向友', N'满家村', N'371424198304031812', N'15998767482', CAST(664.20 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750087, N'于向友', N'满家村', N'371424198304031812', N'15998767482', CAST(664.20 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750088, N'吴广芬', N'大吴庙', N'372428196201021811', N'13176846553', CAST(588.41 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750089, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(570.00 AS Decimal(18, 2)), N'', N'临邑县保民农作物种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750090, N'李安强', N'药王庙村', N'372428197208051516', N'15963375381', CAST(500.00 AS Decimal(18, 2)), N'临邑县德平镇民悦种植家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750091, N'王同湘', N'炉房', N'371424198807141810', N'17853441666', CAST(475.07 AS Decimal(18, 2)), N'临邑县德平镇同湘种植庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750092, N'李安强', N'药王庙村', N'372428197208051516', N'15963375381', CAST(400.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750093, N'弭明福', N'大吴庙', N'371424196604021537', N'18553491253', CAST(400.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750094, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(348.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750095, N'盛文旭', N'东四里塘', N'371424199310031514', N'15154101158', CAST(318.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750096, N'李正宝', N'茄子李', N'37242819701215541x', N'13153479001', CAST(311.75 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750097, N'李正宝', N'茄子李', N'37242819701215541x', N'13153479001', CAST(311.75 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750098, N'单祥旭', N'大单村', N'372428196606165418', N'15865915177', CAST(310.00 AS Decimal(18, 2)), N'临邑县德平镇鑫源家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750099, N'刘训震', N'陈寨村', N'371424198307031818', N'13651169513', CAST(302.68 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750100, N'张自高', N'陈寨村', N'372428197211111815', N'15266951899', CAST(300.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750101, N'郭本林', N'郭 湾', N'372428196304131837', N'13181388317', CAST(296.10 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750102, N'郭雨', N'魏家村', N'372428196903201841', N'15315815526', CAST(293.30 AS Decimal(18, 2)), N'临邑县华盛益农玉米种植家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750103, N'张衍辉', N'张可达村', N'372428197010111579', N'13210997648', CAST(287.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750104, N'信振峰', N'信阁', N'371424198104021513', N'15853407691', CAST(276.47 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750105, N'韩家新', N'郭平阳村', N'37142419761113151X', N'13406792357', CAST(274.00 AS Decimal(18, 2)), N'临邑县德平镇永宽家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750106, N'杨翠翠', N'大单村', N'371424198403270026', N'13405344156', CAST(265.00 AS Decimal(18, 2)), N'', N'临邑龙强粮食种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750107, N'朱庆尧', N'六股路', N'372428197005131559', N'13583451935', CAST(260.00 AS Decimal(18, 2)), N'临邑县德平镇天安家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750108, N'李广新', N'茄子李', N'372428197812265414', N'13256236468', CAST(258.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750109, N'李广新', N'茄子李', N'372428197812265414', N'13256236468', CAST(258.00 AS Decimal(18, 2)), N'临邑县德平镇广新家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750110, N'张宗宝', N'十里铺村', N'371424198611101550', N'13573437207', CAST(244.00 AS Decimal(18, 2)), N'', N'临邑县宗宝种植农民专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750111, N'王克新', N'王河头村', N'372428196602125435', N'15166100889', CAST(237.65 AS Decimal(18, 2)), N'注销', N'注销', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750112, N'葛怀岑', N'小葛家', N'37242819731114151X', N'13256252984', CAST(230.88 AS Decimal(18, 2)), N'', N'临邑怀岑粮食种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750113, N'静广田', N'静 家', N'372428196601151519', N'13589949033', CAST(230.00 AS Decimal(18, 2)), N'山东省德州市临邑县德平镇静家村', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750114, N'齐保敏', N'小西关\徐家村', N'371424199005301514', N'13645344862', CAST(226.00 AS Decimal(18, 2)), N'', N'临邑县保民农作物种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750115, N'闫玉雷', N'闫家村', N'37242819720108151X', N'159659452953', CAST(224.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750116, N'杨翠翠', N'大单村', N'371424198403270026', N'13405344156', CAST(217.80 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750117, N'万桂元', N'大单村', N'372428196605255411', N'13589906453', CAST(216.00 AS Decimal(18, 2)), N'临邑县德平镇大单村家村桂元家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750118, N'蒋宗国', N'蔡家村', N'371424197311145418', N'4890291', CAST(214.70 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750119, N'林长明', N'林寨', N'372428195811191514', N'13589923059', CAST(214.54 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750120, N'陈元祥', N'东贾村', N'372428196602215414', N'15069295558', CAST(210.00 AS Decimal(18, 2)), N'临邑好好家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750121, N'郭宗铁', N'东关村', N'37242819740408151X', N'13573429556', CAST(210.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750122, N'齐保敏', N'梁家桥村', N'371424199005301514', N'13645344862', CAST(209.60 AS Decimal(18, 2)), N'临邑县保民农作物种植专业合作社', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750123, N'朱玉慧', N'朱亭', N'372428197402181517', N'15864154577', CAST(208.42 AS Decimal(18, 2)), N'临邑县德平镇玉慧家庭种植农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750124, N'郭宗超', N'郭家村', N'372428197608141510', N'13173332863', CAST(206.00 AS Decimal(18, 2)), N'临邑县德平镇宗超玉米种植家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750125, N'王克新', N'王河头村', N'372428196602125435', N'15166100889', CAST(205.40 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750126, N'单清涛', N'前 单', N'372428197405075410', N'15853469527', CAST(204.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750127, N'单清涛', N'前 单', N'372428197405075410', N'15853469527', CAST(204.00 AS Decimal(18, 2)), N'', N'临邑县祥涛粮食种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750128, N'葛保林', N'西塘村', N'372428197605281518', N'13791397358', CAST(204.00 AS Decimal(18, 2)), N'临邑县德平镇晨曦种植家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750129, N'郭淑平', N'大刘村', N'371424196606131529', N'18865766376', CAST(203.46 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750130, N'董成清', N'王恒', N'372428196503011539', N'15865917692', CAST(200.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750131, N'郭本林', N'郭 湾', N'372428196304131837', N'13181388317', CAST(200.00 AS Decimal(18, 2)), N'临邑县德平镇郭赵家村庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750132, N'董立昌', N'南小刘', N'371424197003010239', N'13181399966', CAST(199.20 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750133, N'静广田', N'静 家', N'372428196601151519', N'13589949033', CAST(197.30 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750134, N'高连成', N'高家村', N'372428197401071818', N'15553411034', CAST(193.24 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750135, N'张红霞', N'万家村', N'371424197005211544', N'15166984426', CAST(191.50 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750136, N'朱昌学', N'六股路', N'371424198802251519', N'13869251429', CAST(190.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750137, N'吴德山', N'吴 家', N'372428197204071819', N'15069230169', CAST(187.50 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750138, N'毛向杰', N'毛 家', N'371424197708051815', N'15853447539', CAST(187.50 AS Decimal(18, 2)), N'临邑县德平镇国良家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750139, N'董学增', N'王恒', N'372428197701181517', N'15905449622', CAST(186.00 AS Decimal(18, 2)), N'临邑县德平镇恒兴家庭种植农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750140, N'朱庆新', N'六股路', N'372428197605151510', N'18766080682', CAST(180.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750141, N'李德虎', N'大杨家', N'372428196505011516', N'13173348728', CAST(178.80 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750142, N'马文礼', N'碱 马', N'372428195908075413', N'13791349306', CAST(178.50 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750143, N'马文礼', N'碱 马', N'372428195908075413', N'13791349306', CAST(178.50 AS Decimal(18, 2)), N'', N'临邑县文礼粮食种植专业合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750144, N'刘永', N'大刘村', N'372428197710041815', N'13235343431', CAST(177.66 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750145, N'陈元龙', N'陈集村', N'372428197609181514', N'13255345740', CAST(176.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750146, N'李万河', N'南关村', N'372428196809201538', N'18315976958', CAST(176.00 AS Decimal(18, 2)), N'临邑县德平镇万河庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750147, N'刘宗敏', N'阳关庙村', N'371424198103135439', N'15253429317', CAST(175.00 AS Decimal(18, 2)), N'', N'临邑铖铖粮食种植合作社', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750148, N'闫玉礼', N'闫家村', N'372428197006191553', N'13053433275', CAST(175.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750149, N'薛恩宝', N'薛 家', N'372428196505141513', N'4898122', CAST(170.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750150, N'吴德山', N'吴 家', N'372428197204071819', N'15069230169', CAST(168.00 AS Decimal(18, 2)), N'临邑县德平镇吴家村德心家庭种植', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750151, N'弭玉峰', N'弭家村', N'371424198302231810', N'18653410858', CAST(166.28 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750152, N'万桂元', N'大单村', N'372428196605255411', N'13589906453', CAST(164.40 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750153, N'张广银', N'张棒槌村', N'372428197404201518', N'13884695215', CAST(164.00 AS Decimal(18, 2)), N'临邑县德平镇旭辉家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750154, N'李守利', N'碱李', N'372428196903015416', N'13791349163', CAST(162.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750155, N'宫汝军', N'宫 屯', N'372428197002195418', N'13793481448', CAST(161.75 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750156, N'朱昌卫', N'三里庄村', N'371424197602101810', N'18553484685', CAST(160.40 AS Decimal(18, 2)), N'临邑县德平镇琳宇玉米种植家庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750157, N'陈秀英', N'杜家村', N'372428195712021229', N'17861865508', CAST(160.11 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750158, N'蒋宗国', N'蔡家村', N'371424197311145418', N'4890291', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750159, N'张丙利', N'王恒', N'372428195503081516', N'13573410017', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750160, N'单传清', N'大单村', N'372428196411285436', N'13969228080', CAST(160.00 AS Decimal(18, 2)), N'', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750161, N'王启新', N'王坊村', N'', N'13953419219', CAST(160.00 AS Decimal(18, 2)), N'临邑县德平镇新霞玉米种植庭农场', N'', N'2019', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750162, N'毛文龙', N'毛家', N'371424196911281857', N'18253435360', CAST(159.30 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750163, N'毛文龙', N'毛家', N'371424196911281857', N'18253435360', CAST(159.30 AS Decimal(18, 2)), N'临邑县德平镇文龙玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750164, N'张衍彪', N'张可达村', N'372428197009081552', N'15666869063', CAST(158.00 AS Decimal(18, 2)), N'临邑县德平镇旭昇家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750165, N'闫玉礼', N'闫家村', N'372428197006191553', N'13053433275', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750166, N'王华良', N'王连周村', N'372428196803085433', N'19553435459', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750167, N'王华良', N'王连周村', N'372428196803085433', N'19553435459', CAST(157.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750168, N'张明河', N'十里铺村', N'37242819670817151x', N'15053452533', CAST(156.82 AS Decimal(18, 2)), N'临邑县德平镇鑫田丰玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750169, N'刘兰秀', N'北小刘村', N'372428196401211812', N'18553426217', CAST(156.00 AS Decimal(18, 2)), N'临邑县德平镇北小刘粮食种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750170, N'吕光林', N'蔡家村', N'371424197508235417', N'13210447702', CAST(154.38 AS Decimal(18, 2)), N'临邑县德平镇稳发家庭种植农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750171, N'郭宗胜', N'纪张盛', N'372428197412255452', N'13589932735', CAST(153.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750172, N'高翠香', N'宫 家', N'371481197902255149', N'15965949345', CAST(152.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750173, N'薛恩宝', N'薛 家', N'372428196505141513', N'4898122', CAST(150.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750174, N'吕光林', N'蔡家村', N'371424197508235417', N'13210447702', CAST(150.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750175, N'张衍重', N'张可达村', N'372428196401031512', N'15153478192', CAST(150.00 AS Decimal(18, 2)), N'临邑县德平镇衍重玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750176, N'刘兰秀', N'北小刘', N'372428196401211812', N'15066590178', CAST(149.60 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750177, N'李景强', N'王火炉', N'372428197301065410', N'15066590709', CAST(145.00 AS Decimal(18, 2)), N'', N'临邑鲁德旺农作物种植合作社', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750178, N'刘本忠', N'大刘村', N'372428195911071819', N'13516707861', CAST(145.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750179, N'静广涛', N'静家村', N'372428197004031513', N'18765587208', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750180, N'陈方新', N'河沟陈', N'372428197602195411', N'13205346645', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750181, N'王宽祥', N'养马村', N'372428197603171518', N'13515445765', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750182, N'张秀军', N'薛家村', N'372428197206291524', N'15965934537', CAST(140.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750183, N'张新建', N'东新庄村', N'371424197806061814', N'13285346864', CAST(138.12 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750184, N'许和民', N'夏屯村', N'372428196904051515', N'15166100637', CAST(137.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750185, N'毛向杰', N'毛 家', N'371424197708051815', N'15853447539', CAST(136.20 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750186, N'朱庆河', N'孙庙', N'37242819710719151x', N'13573496175', CAST(133.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750187, N'朱庆河', N'孙庙', N'37242819710719151x', N'13573496175', CAST(133.00 AS Decimal(18, 2)), N'临邑县德平镇庆河农机化种植家庭', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750188, N'王进', N'王朝阳村', N'371424198301231536', N'18353494866', CAST(132.20 AS Decimal(18, 2)), N'临邑县德平镇涛涛玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750189, N'王希东', N'邓家村', N'37242819710313151X', N'13285440630', CAST(130.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750190, N'闫心胜', N'闫家村', N'372428197203261530', N'13184127822', CAST(127.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750191, N'王景水', N'东新庄村', N'371424197709251819', N'13589946509', CAST(125.60 AS Decimal(18, 2)), N'临邑县景水种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750192, N'单传清', N'大单村', N'372428196411285436', N'13969228080', CAST(121.80 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750193, N'郭本强', N'郭 湾', N'372428196909261837', N'15564416645', CAST(121.20 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750194, N'周继华', N'林寨', N'372428196703011517', N'13953458971', CAST(121.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750195, N'郭宗胜', N'纪张盛', N'372428197412255452', N'13589932735', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750196, N'窦文宝', N'前后窦村', N'372428196408301511', N'13573423190', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750197, N'许和民', N'夏屯村', N'372428196904051515', N'15166100637', CAST(120.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750198, N'孙文东', N'孙家村', N'', N'', CAST(119.60 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750199, N'李安彬', N'碱李', N'372428197412025411', N'18606402262', CAST(118.00 AS Decimal(18, 2)), N'', N'临邑安彬土地托管专业合作社', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750200, N'毕国红', N'毕家村', N'372428196710185419', N'15065447785', CAST(116.90 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750201, N'毕国红', N'毕家村', N'372428196710185419', N'15065447785', CAST(116.90 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750202, N'张新建', N'东新庄村', N'371424197806061814', N'13285346864', CAST(115.28 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750203, N'靳长胜', N'六合镇村', N'372428197011231513', N'15969635246', CAST(115.20 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750204, N'靳长胜', N'六合镇村', N'372428197011231513', N'15969635246', CAST(115.20 AS Decimal(18, 2)), N'临邑县德平镇昌盛玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750205, N'李家春', N'洼里王村', N'371424198601021856', N'18553446687', CAST(115.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750206, N'靳邦治', N'靳家村', N'371424198403021556', N'18266143259', CAST(113.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750207, N'北沈', N'郭宗学', N'372428197808111519', N'18653466269', CAST(112.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750208, N'郭宗学', N'北沈', N'372428197808111519', N'18653466269', CAST(112.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750209, N'石立霞', N'房集', N'37240219750418482X', N'13406784025', CAST(112.00 AS Decimal(18, 2)), N'临邑县丰家种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750210, N'吴世昌', N'活佛庙', N'372428196602181517', N'15863317787', CAST(111.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750211, N'王文建', N'宫屯村', N'372428197810165436', N'15153471518', CAST(110.57 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750212, N'丁树明', N'丁家村', N'372428197108265437', N'13406792352', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750213, N'史有勇', N'王恒', N'372428197507121510', N'13705349359', CAST(110.00 AS Decimal(18, 2)), N'临邑县德平镇有勇种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750214, N'高翠香', N'宫 家', N'371481197902255149', N'15965949345', CAST(110.00 AS Decimal(18, 2)), N'临邑县德平镇宫家家庭种植农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750215, N'李兆泉', N'碱李', N'37142419781123541X', N'15069204359', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750216, N'圣文忠', N'小盛家村', N'372428196204021518', N'13953441328', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750217, N'周延峰', N'周家村', N'372428196312291515', N'15553412372', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750218, N'周继春', N'东关村', N'372428196905111532', N'15253472631', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750219, N'郭利', N'郭家村', N'372428197311281512', N'13053481128', CAST(110.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750220, N'郭宗敏', N'任家庙村', N'371424198212281515', N'15194342363', CAST(109.10 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750221, N'郭宗敏', N'任家庙村', N'371424198212281515', N'15194342363', CAST(109.10 AS Decimal(18, 2)), N'临邑县德平镇宗敏家庭种植农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750222, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750223, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'临邑县德平镇广强家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750224, N'吴广强', N'东关村', N'371424197707191517', N'13791397133', CAST(109.00 AS Decimal(18, 2)), N'临邑县德平镇广强家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750225, N'张衍彪', N'张可达村', N'372428197009081552', N'15666869063', CAST(108.74 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750226, N'李万河', N'南关村', N'372428196809201538', N'18315976958', CAST(108.30 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750227, N'杨怀勇', N'刚家村', N'37242819681129151X', N'15589145764', CAST(108.27 AS Decimal(18, 2)), N'', N'临邑怀勇粮食种植专业合作社', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750228, N'朱庆新', N'六股路', N'372428197605151510', N'18766080682', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750229, N'陈永国', N'戚寨村', N'372428197103245410', N'13791314205', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750230, N'陈学正', N'小盛家村', N'372428197309271518', N'13953459020', CAST(108.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750231, N'陈永国', N'戚寨村', N'372428197103245410', N'13791314205', CAST(108.00 AS Decimal(18, 2)), N'临邑县永国玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750232, N'高新英', N'王坊村', N'371424197607241820', N'15963377905', CAST(107.50 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750233, N'杨明水', N'西小杨村', N'372428197310075418', N'15965905699', CAST(107.00 AS Decimal(18, 2)), N'临邑县德平镇二子玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750234, N'张秀军', N'薛家村', N'372428197206291524', N'15965934537', CAST(106.40 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750235, N'马文军', N'碱 马', N'372428197205205436', N'15169715346', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750236, N'杨清禄', N'活佛庙', N'372428196009191511', N'13791349494', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750237, N'马文军', N'碱 马', N'372428197205205436', N'15169715346', CAST(106.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750238, N'赵兰礼', N'六合镇村', N'372428196304161518', N'15965912027', CAST(105.60 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750239, N'赵兰礼', N'六合镇村', N'372428196304161518', N'15965912027', CAST(105.60 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750240, N'陈元龙', N'陈集村', N'372428197609181514', N'13255345740', CAST(105.30 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750241, N'李宪雷', N'孟集', N'372428197708111837', N'18653477476', CAST(105.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750242, N'房廷刚', N'房集村', N'372428197412231813', N'15166907375', CAST(105.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750243, N'刘振洪', N'赫家村', N'372428196910155417', N'15092505788', CAST(103.60 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750244, N'刘振洪', N'赫家村', N'372428196910155417', N'15092505788', CAST(103.60 AS Decimal(18, 2)), N'临邑县德平镇振发玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750245, N'宫汝军', N'宫屯村', N'372428197002195418', N'13793481448', CAST(103.58 AS Decimal(18, 2)), N'临邑县德平镇汝军家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750246, N'杨怀勇', N'刚家村', N'37242819681129151X', N'15589145764', CAST(103.20 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750247, N'丁树明', N'丁家村', N'372428197108265437', N'13406792352', CAST(103.00 AS Decimal(18, 2)), N'临邑县德平镇秀波玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750248, N'郭宗恒', N'纪张盛', N'371424198106305413', N'15863122658', CAST(103.00 AS Decimal(18, 2)), N'临邑县德平镇郭恒种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750249, N'闫继国', N'闫家村', N'372428197303081510', N'15806886162', CAST(103.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750250, N'薛军山', N'戚寨村', N'37242819660118541x', N'18853407595', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750251, N'岳邦', N'郭桥村', N'372428197506011811', N'15965935318', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750252, N'薛军山', N'戚寨村', N'37242819660118541x', N'18853407595', CAST(102.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750253, N'王景水', N'东新庄村', N'371424197709251819', N'13589946509', CAST(101.92 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750254, N'闫玉雷', N'闫家村', N'37242819720108151X', N'15965945953', CAST(101.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750255, N'郭仁福', N'郭桥村', N'371424196801111814', N'15589144253', CAST(100.90 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750256, N'胡寿峰', N'戚寨村', N'372428197110105459', N'13791388308', CAST(100.88 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750257, N'王希东', N'小于家村', N'37242819710313151X', N'13285440630', CAST(100.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750258, N'刘勇', N'毛家', N'37242819680515181x', N'18667858545', CAST(99.90 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750259, N'刘勇', N'毛家', N'37242819680515181x', N'18667858545', CAST(99.90 AS Decimal(18, 2)), N'临邑县德平镇刘勇玉米种植家庭农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750260, N'吴世昌', N'活佛庙', N'372428196602181517', N'15863317787', CAST(98.45 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750261, N'葛保忠', N'鲍葛', N'372428196810281512', N'15905446689', CAST(98.12 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750262, N'葛保忠', N'鲍葛', N'372428196810281512', N'15905446689', CAST(98.12 AS Decimal(18, 2)), N'临邑县德平镇东兴家庭种植农场', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750263, N'王世国', N'王朝阳村', N'372428197107181813', N'15698244176', CAST(98.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750264, N'王敬辉', N'王河头村', N'372428196502235414', N'18562146897', CAST(97.10 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750265, N'刘修祯', N'靳家村', N'37242819731226153x', N'4898797', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750266, N'刘修祯', N'靳家村', N'37242819731226153x', N'4898797', CAST(97.00 AS Decimal(18, 2)), N'', N'', N'2020', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750267, N'陈照民', N'陈家村', N'372428196107131512', N'15053422185', CAST(96.70 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750268, N'郭仁福', N'郭桥村', N'371424196801111814', N'15589144253', CAST(95.50 AS Decimal(18, 2)), N'临邑县德平镇仁福家庭种植农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750269, N'赵延利', N'曹塚', N'372428196804195415', N'18263091377', CAST(95.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750270, N'赵延利', N'曹塚', N'372428196804195415', N'18263091377', CAST(95.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750271, N'王进', N'王朝阳村', N'371424198301231536', N'18353494866', CAST(94.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750272, N'岳邦', N'郭桥村', N'372428197506011811', N'15965935318', CAST(94.50 AS Decimal(18, 2)), N'临邑县德平镇盛农玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750273, N'陈方新', N'河沟陈', N'372428197602195411', N'13205346645', CAST(94.40 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750274, N'赵延贞', N'曹塚', N'372428195803125410', N'13181364151', CAST(94.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750275, N'孙立民', N'赫家村', N'372428195911295417', N'13176143976', CAST(93.70 AS Decimal(18, 2)), N'临邑县德平镇幸福玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750276, N'郭仁敏', N'纪张盛', N'371424198204255421', N'13573467235', CAST(93.48 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750277, N'朱庆尧', N'六股路', N'372428197005131559', N'13583451935', CAST(92.30 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750278, N'葛怀岑', N'小葛家', N'37242819731114151X', N'4879539', CAST(92.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750279, N'郭仁敏', N'纪张盛', N'371424198204255421', N'13573467235', CAST(91.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750280, N'刘俊宝', N'万家村', N'372428197106081511', N'15166984426', CAST(90.70 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750281, N'张衍辉', N'张可达村', N'372428197010111579', N'13210997648', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750282, N'高太胜', N'戚寨村', N'372428197206025410', N'13583466057', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750283, N'杨明水', N'西小杨村', N'372428197310075418', N'15965905699', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750284, N'高太胜', N'戚寨村', N'372428197206025410', N'13583466057', CAST(90.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750285, N'张广朋', N'张棒槌村', N'37142419640307151X', N'15553412272', CAST(89.31 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750286, N'张明河', N'十里铺村', N'37242819670817151x', N'15053452533', CAST(89.05 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750287, N'张景林', N'后 张', N'372428195809115416', N'13256231769', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750288, N'刘培明', N'陈寨村', N'372428196809101852', N'15853410158', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750289, N'张景林', N'后 张', N'372428195809115416', N'13256231769', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750290, N'刘培明', N'陈寨村', N'372428196809101852', N'15853410158', CAST(89.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750291, N'韩家新', N'郭平阳村', N'37142419761113151X', N'13406792357', CAST(88.70 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750292, N'静广涛', N'静家村', N'372428197004031513', N'18765587208', CAST(88.40 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750293, N'郭宗铁', N'东关村', N'37242819740408151X', N'13573429556', CAST(87.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750294, N'陈照民', N'陈家村', N'372428196107131512', N'15053422185', CAST(86.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750295, N'马洪喜', N'碱 马', N'372428196904205430', N'7671816', CAST(86.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750296, N'马洪喜', N'碱 马', N'372428196904205430', N'7671816', CAST(86.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750297, N'邓金达', N'邓家村', N'37242819700817153X', N'15969758243', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750298, N'邓金达', N'邓家村', N'37242819700817153X', N'15969758243', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750299, N'陈广胜', N'陈家村', N'372428197210161538', N'13153456506', CAST(86.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750300, N'靳邦治', N'靳家村', N'371424198403021556', N'18266143259', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750301, N'刘修福', N'靳家村', N'372428196902051538', N'13645344619', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750302, N'刘修福', N'靳家村', N'372428196902051538', N'13645344619', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750303, N'房维成', N'房集村', N'372428196505051817', N'15806886867', CAST(84.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750304, N'王成谦', N'王河头村', N'372428196812285410', N'13910393132', CAST(82.15 AS Decimal(18, 2)), N'临邑县德平镇成谦桂英玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750305, N'范世龙', N'范家村', N'372428197712085416', N'13053459227', CAST(82.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750306, N'陈广胜', N'陈家村', N'372428197210161538', N'13153456506', CAST(81.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750307, N'明长贵', N'后明', N'372428195910121810', N'17083035358', CAST(81.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750308, N'张玉健', N'孙庙', N'371424198309261510', N'18201598397', CAST(80.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750309, N'张玉健', N'孙庙', N'371424198309261510', N'18201598397', CAST(80.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750310, N'郭宗宝', N'王朝阳村', N'372428195910111831', N'15553409503', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750311, N'吕元星', N'王连周村', N'372428196505265436', N'18866008034', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750312, N'郭宗宝', N'王朝阳村', N'372428195910111831', N'15553409503', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750313, N'吕元星', N'丁家村', N'372428196505265436', N'18866008034', CAST(80.00 AS Decimal(18, 2)), N'临邑县德平镇元星玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750314, N'陈振强', N'东四里塘', N'372428197201061519', N'13173346810', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750315, N'傅宗理', N'付家', N'372428196404161814', N'18553427389', CAST(80.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750316, N'郭宗恒', N'纪张盛', N'371424198106305413', N'15863122658', CAST(79.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750317, N'单飞飞', N'大单村', N'371424198408265429', N'13176141963', CAST(79.40 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750318, N'单飞飞', N'大单村', N'371424198408265429', N'13176141963', CAST(79.40 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750319, N'林长明', N'林寨', N'372428195811191514', N'13589923059', CAST(79.38 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750320, N'郭宗贵', N'纪张盛', N'372428195611135411', N'18253435270', CAST(78.76 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750321, N'王清国', N'王朝阳村', N'372428196808281812', N'13053481416', CAST(78.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750322, N'王清国', N'王朝阳村', N'372428196808281812', N'13053481416', CAST(78.00 AS Decimal(18, 2)), N'临邑县德平镇清国玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750323, N'朱秀花', N'闫家村', N'371424196602081544', N'15589187772', CAST(78.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750324, N'李安彬', N'碱李', N'372428197412025411', N'18606402262', CAST(76.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750325, N'宫肇明', N'宫家', N'372428196707141511', N'13176268287', CAST(76.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750326, N'张吉辉', N'西沈村', N'372428197202155437', N'18553432628', CAST(76.00 AS Decimal(18, 2)), N'临邑县德平镇吉辉种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750327, N'王海波', N'养马村', N'371424198602081535', N'13792239732', CAST(75.53 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750328, N'史立木', N'史家村', N'372428196711191511', N'18266109558', CAST(75.09 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750329, N'史立木', N'史家村', N'372428196711191511', N'18266109558', CAST(75.09 AS Decimal(18, 2)), N'临邑县德平镇后史家村立木家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750330, N'葛树靳', N'葛老庄村', N'372428196802221819', N'18765587656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750331, N'葛孚国', N'葛老庄村', N'37142419690804181X', N'13625346339', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750332, N'单金贵', N'范家村', N'372428196803145416', N'15253425831', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750333, N'葛树靳', N'葛老庄村', N'372428196802221819', N'18765587656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750334, N'葛孚国', N'葛老庄村', N'37142419690804181X', N'13625346339', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750335, N'李培刚', N'后 张', N'372428196708075413', N'18653434656', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750336, N'周吉东', N'薛家村', N'372428197102121512', N'13153480380', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750337, N'闫继智', N'闫家村', N'372428197102101511', N'13792227460', CAST(75.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750338, N'付秀荣', N'闫家村', N'371424196901051521', N'15165931739', CAST(74.92 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750339, N'张广银', N'张棒槌村', N'372428197404201518', N'13884695215', CAST(74.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750340, N'冯学军', N'任家庙村', N'372428197205231511', N'13573426753', CAST(74.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750341, N'信振峰', N'信阁', N'371424198104021513', N'15853407691', CAST(73.98 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750342, N'王善水', N'孟集', N'372428197007081815', N'15552600446', CAST(73.30 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750343, N'王善水', N'孟集', N'372428197007081815', N'15552600446', CAST(73.30 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750344, N'刘兰新', N'北小刘村', N'372428194802011812', N'15863317951', CAST(73.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750345, N'史学龙', N'史家村', N'371424198412081518', N'15965918685', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750346, N'李宗仁', N'孙庙', N'372428197008191514', N'13455407788', CAST(72.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750347, N'李宗仁', N'孙庙', N'372428197008191514', N'13455407788', CAST(72.00 AS Decimal(18, 2)), N'临邑县德平镇宗仁玉米种植家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750348, N'史学龙', N'史家村', N'371424198412081518', N'15965918685', CAST(72.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村富龙家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750349, N'朱玉慧', N'朱亭', N'372428197402181517', N'15864154577', CAST(71.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750350, N'董学增', N'王恒', N'372428197701181517', N'18353463950', CAST(71.80 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750351, N'张龙', N'王恒', N'371424198107191534', N'13573410017', CAST(71.56 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750352, N'葛树文', N'葛老庄村', N'37142419740322181X', N'13791348717', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750353, N'葛树文', N'葛老庄村', N'37142419740322181X', N'13791348717', CAST(71.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750354, N'郭本利', N'郭湾', N'372428197103161831', N'15621220628', CAST(70.58 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750355, N'郭本利', N'郭湾', N'372428197103161831', N'15621220628', CAST(70.58 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750356, N'张志强', N'西沈村', N'372428196803135410', N'15998774678', CAST(70.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750357, N'葛汝兴', N'葛老庄村', N'372428196603031836', N'13583452175', CAST(70.30 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750358, N'葛汝兴', N'葛老庄村', N'372428196603031836', N'13583452175', CAST(70.30 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750359, N'周继春', N'东关村', N'372428196905111532', N'15253472631', CAST(70.10 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750360, N'戚良敏', N'戚寨村', N'372428196605145415', N'15525612240', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750361, N'蔡兆森', N'郭桥村', N'372428196904261811', N'13405190040', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750362, N'李正秋', N'孟集', N'372428195401171836', N'13053480745', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750363, N'戚良敏', N'戚寨村', N'372428196605145415', N'15525612240', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750364, N'陈照祥', N'陈家', N'37242819490816151X', N'13475196927', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750365, N'史学海', N'史家村', N'372427196907081510', N'13255446091', CAST(70.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750366, N'房维成', N'房集村', N'372428196505051817', N'15806886867', CAST(69.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750367, N'陈学正', N'小盛家村', N'372428197309271518', N'13953459020', CAST(69.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750368, N'李庆贞', N'茄子李', N'372428196812205417', N'13275344771', CAST(69.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750369, N'李庆贞', N'茄子李', N'372428196812205417', N'13275344771', CAST(69.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750370, N'闫心胜', N'闫家村', N'372428197203261530', N'13184127822', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750371, N'王敬辉', N'王河头村', N'372428196502235414', N'18562146897', CAST(69.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750372, N'刘宗敏', N'阳关庙村', N'371424198103135439', N'15253429317', CAST(68.60 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750373, N'单祥旭', N'大单村', N'372428196606165418', N'15865915177', CAST(68.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750374, N'宫新红', N'时王村', N'371424197312121848', N'13225349198', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750375, N'王广明', N'胡寨村', N'371424198106125412', N'13792226021', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750376, N'鲍万胜', N'大鲍村', N'372428197012301536', N'13210978174', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750377, N'宫新红', N'时王村', N'371424197312121848', N'13225349198', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750378, N'胡宋兴', N'房集村', N'372428196601231818', N'15965227206', CAST(68.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750379, N'肖昌平', N'六股路', N'372428196712041558', N'13583402890', CAST(67.32 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750380, N'王长坤', N'范家村', N'372428196304215432', N'4890615', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750381, N'贾桂芹', N'曹塚', N'372428196703045426', N'13285440830', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750382, N'于兴武', N'满家村', N'372428196709141814', N'13793494580', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750383, N'王长坤', N'范家村', N'372428196304215432', N'4890615', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750384, N'于兴武', N'满家村', N'372428196709141814', N'13793494580', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750385, N'周延虎', N'周家村', N'37242819710417153X', N'18553414368', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750386, N'贾桂芹', N'曹塚', N'372428196703045426', N'13285440830', CAST(67.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750387, N'刘俊宝', N'万家村', N'372428197106081511', N'15166984426', CAST(66.80 AS Decimal(18, 2)), N'临邑县德平镇俊宝家庭农场', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750388, N'陈淑华', N'东新庄村', N'371424197201111823', N'15166947321', CAST(66.55 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750389, N'陈淑华', N'东新庄村', N'371424197201111823', N'15166947321', CAST(66.55 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424696750390, N'李德虎', N'大杨家', N'372428196505011516', N'13173348728', CAST(66.24 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944384, N'陈元和', N'陈集村', N'372428196803051516', N'15853418517', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944385, N'陈元和', N'陈集村', N'372428196803051516', N'15853418517', CAST(66.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944386, N'王有财', N'史家村', N'372428195402121515', N'13793481602', CAST(65.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944387, N'王有财', N'史家村', N'372428195402121515', N'13793481602', CAST(65.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944388, N'霍纪清', N'活佛庙', N'371424198004011510', N'13573420453', CAST(65.70 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944389, N'蔡兆森', N'郭桥村', N'372428196904261811', N'13405190040', CAST(65.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944390, N'葛汝杰', N'葛老庄村', N'372428196707031814', N'13953475024', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944391, N'闫世勇', N'闫庙村', N'371424196410191511', N'13869288509', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944392, N'闫世勇', N'闫庙村', N'371424196410191511', N'13869288509', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944393, N'葛汝杰', N'葛老庄村', N'372428196707031814', N'13953475024', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944394, N'李万庚', N'碱李', N'37142419701212545X', N'15092540457', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944395, N'周立泉', N'薛家村', N'372428197101151517', N'13153491432', CAST(65.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944396, N'蒋秀英', N'王屯村', N'372428195911101520', N'15853407819', CAST(64.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944397, N'蒋秀英', N'王屯村', N'372428195911101520', N'15853407819', CAST(64.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944398, N'蕫付山', N'东关村', N'372428197301101514', N'13573431480', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944399, N'任德胜', N'任家庙村', N'372428197008231512', N'13526489338', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944400, N'任德胜', N'任家庙村', N'372428197008231512', N'13526489338', CAST(64.00 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944401, N'陈镇', N'陈家村', N'372428195710041517', N'15589142371', CAST(63.90 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944402, N'周延虎', N'周家村', N'37242819710417153X', N'18553414368', CAST(63.50 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944403, N'王平', N'胡王村', N'372428197211041511', N'13355443987', CAST(63.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944404, N'王平', N'胡王村', N'372428197211041511', N'13355443987', CAST(63.20 AS Decimal(18, 2)), N'', N'', N'2021', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944405, N'许和亮', N'南关村', N'371424196411091539', N'13869208213', CAST(63.14 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944406, N'许和亮', N'南关村', N'371424196411091539', N'13869208213', CAST(63.14 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944407, N'明宝平', N'前明村', N'', N'', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944408, N'王世友', N'王朝阳村', N'372428196804051817', N'15963375497', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944409, N'付秀荣', N'闫家村', N'371424196901051521', N'15165911739', CAST(63.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944410, N'刘道通', N'大刘村', N'372428195112101815', N'13181372233', CAST(62.87 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944411, N'魏德亮', N'魏家村', N'372428196910151838', N'13153474862', CAST(62.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944412, N'朱秀花', N'闫家村', N'371424196602081544', N'15589187772', CAST(62.32 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944413, N'张宗国', N'东西张村', N'372428196611221517', N'13515345204', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944414, N'赵世景', N'赵家村', N'372428196511121834', N'18654764187', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944415, N'王华平', N'王连周村', N'372428197008165412', N'13145347835', CAST(62.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944416, N'陈元祥', N'东贾村', N'372428196602215414', N'15069295558', CAST(61.93 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944417, N'宫汝胜', N'闫庙村', N'372428197506241537', N'13869279302', CAST(61.70 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944418, N'宫汝胜', N'闫庙村', N'372428197506241537', N'13869279302', CAST(61.70 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944419, N'明保东', N'前明村', N'372428196511051819', N'18315929388', CAST(61.70 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944420, N'明宝柱', N'后明村', N'372428197009171814', N'13869287479', CAST(61.53 AS Decimal(18, 2)), N'临邑县果实累累谷物种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944421, N'胡福锋', N'王家村', N'372428197807271813', N'13573431395', CAST(61.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944422, N'胡福锋', N'王家村', N'372428197807271813', N'13573431395', CAST(61.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944423, N'王风军', N'王坊村', N'372428197409201816', N'13706390202', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944424, N'王风军', N'王坊村', N'372428197409201816', N'13706390202', CAST(61.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944425, N'石立霞', N'房集', N'37240219750418482X', N'13406784025', CAST(60.86 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944426, N'葛怀德', N'东贾村', N'372428195502155413', N'15589124061', CAST(60.74 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944427, N'葛怀德', N'东贾村', N'372428195502155413', N'15589124061', CAST(60.74 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944428, N'葛怀军', N'葛老庄村', N'372428196510201875', N'15905347883', CAST(60.60 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944429, N'葛怀军', N'葛老庄村', N'372428196510201875', N'15905347883', CAST(60.60 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944430, N'霍纪清', N'活佛庙', N'371424198004011510', N'13573420453', CAST(60.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944431, N'刘景胜', N'斜家村', N'372428195101061811', N'13053436805', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944432, N'于汝敏', N'于家河村', N'372428196406011852', N'13953454591', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944433, N'戚良亮', N'戚寨村', N'371424198709105410', N'13406792363', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944434, N'赵延贞', N'曹塚', N'372428195803125410', N'13181364151', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944435, N'张文端', N'孙庙', N'372428196411011574', N'18766016528', CAST(60.00 AS Decimal(18, 2)), N'', N'嘉丰（临邑县）农作物种植专业合作社', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944436, N'刘景胜', N'斜家村', N'372428195101061811', N'13053436805', CAST(60.00 AS Decimal(18, 2)), N'临邑县德平镇景胜家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944437, N'于汝敏', N'于家河村', N'372428196406011852', N'13953454591', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944438, N'戚良亮', N'戚寨村', N'371424198709105410', N'13406792363', CAST(60.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944439, N'高国亮', N'戚寨村', N'37242819661225541X', N'15621277896', CAST(59.84 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944440, N'高国亮', N'戚寨村', N'37242819661225541X', N'15621277896', CAST(59.84 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944441, N'王玉香', N'东新庄村', N'371424197412051824', N'13668626637', CAST(59.55 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944442, N'万明前', N'万家村', N'372428196010201510', N'15864171363', CAST(59.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944443, N'庞长岩', N'西新庄村', N'372428197411195419', N'18653423896', CAST(58.90 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944444, N'房廷刚', N'房集村', N'372428197412231813', N'15166907375', CAST(58.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944445, N'张玉生', N'闫家村', N'372428195706171538', N'4879908', CAST(58.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944446, N'金成恩', N'碱 马', N'372428197209275415', N'13475345625', CAST(58.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944447, N'金成恩', N'碱 马', N'372428197209275415', N'13475345625', CAST(58.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944448, N'盛振明', N'香李村', N'372428195508211519', N'15863122399', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944449, N'陈廷勇', N'陈家村', N'372428196907201515', N'15053422185', CAST(58.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944450, N'郭胜', N'郭湾', N'372428197507191818', N'18553482286', CAST(57.58 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944451, N'郭胜', N'郭湾', N'372428197507191818', N'18553482286', CAST(57.58 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944452, N'孟令辉', N'孟集', N'371424197502221815', N'15666007023', CAST(57.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944453, N'孟令辉', N'孟集', N'371424197502221815', N'15666007023', CAST(57.50 AS Decimal(18, 2)), N'临邑县德平镇令辉玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944454, N'于佐星', N'十里铺村', N'372428196205271519', N'13573489498', CAST(57.20 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944455, N'于佐星', N'十里铺村', N'372428196205271519', N'13573489498', CAST(57.20 AS Decimal(18, 2)), N'临邑县德平农丰家庭种植农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944456, N'葛保华', N'西塘村', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944457, N'宋吉亮', N'满家村', N'372428197802251836', N'13573493782', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944458, N'陈文刚', N'张棒槌村', N'372428197003061518', N'18562149985', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944459, N'王清利', N'王朝阳村', N'372428197010301815', N'13153462872', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平清利玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944460, N'宋吉亮', N'满家村', N'372428197802251836', N'13573493782', CAST(57.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944461, N'葛保华', N'西塘村', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平镇保华家庭种植农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944462, N'葛保华', N'西四里塘', N'372428196705021532', N'13589903757', CAST(57.00 AS Decimal(18, 2)), N'临邑县德平镇保华家庭种植农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944463, N'张保民', N'前张', N'372428196506095416', N'13583427712', CAST(56.48 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944464, N'李泽勇', N'夏屯村', N'372428196005241518', N'158535420046', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944465, N'郭宗仁', N'满家村', N'37142419801105181X', N'15965918230', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944466, N'于兴杰', N'满家村', N'37242819580821181X', N'13153484781', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944467, N'郭宗峰', N'满家村', N'372428197009111811', N'18265446055', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944468, N'郭宗仁', N'满家村', N'37142419801105181X', N'15965918230', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944469, N'于兴杰', N'满家村', N'37242819580821181X', N'13153484781', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944470, N'郭宗峰', N'满家村', N'372428197009111811', N'18265446055', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944471, N'陈元桥', N'陈集村', N'372428197310191515', N'13406855021', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944472, N'李泽勇', N'夏屯村', N'372428196005241518', N'158535420046', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944473, N'景瑞红', N'付家', N'372428196608221815', N'13021766827', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944474, N'胡守德', N'房集村', N'372428196902022438', N'15269425028', CAST(56.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944475, N'杨清禄', N'活佛庙', N'372428196009191511', N'13791349494', CAST(55.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944476, N'王玉英', N'闫家村', N'372428196912031549', N'15589142490', CAST(55.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944477, N'吴秀云', N'大吴庙', N'372428196503201826', N'13011756390', CAST(55.48 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944478, N'陈照红', N'范家村', N'372428196401185423', N'13583437176', CAST(55.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944479, N'陈照红', N'范家村', N'372428196401185423', N'13583437176', CAST(55.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944480, N'吴庆同', N'王河头村', N'372428196504225416', N'13005447127', CAST(55.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944481, N'李兰梅', N'王坊村', N'371424197511101823', N'15820065759', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944482, N'徐秀青', N'胡寨村', N'37242819550905544x', N'13053486426', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944483, N'陈化明', N'陈集村', N'372428195710021532', N'13405343013', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944484, N'弭希鹏', N'小吴庙', N'371424198210101859', N'18053429982', CAST(55.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944485, N'张衍重', N'张可达村', N'372428196401031512', N'15153478192', CAST(54.90 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944486, N'王兆忠', N'胡寨村', N'37242819711007543x', N'13502146905', CAST(54.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944487, N'张广朋', N'张棒槌村', N'37142419640307151X', N'15553412272', CAST(54.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944488, N'王兆忠', N'胡寨村', N'37242819711007543x', N'13502146905', CAST(54.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944489, N'孙立民', N'赫家村', N'372428195911295417', N'13176143976', CAST(54.42 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944490, N'许修和', N'夏屯村', N'372428196006281511', N'15589143426', CAST(54.20 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944491, N'许修和', N'夏屯村', N'372428196006281511', N'15589143426', CAST(54.20 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944492, N'李正田', N'茄子李', N'372428196905055411', N'13573426701', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944493, N'胡寿峰', N'戚寨村', N'372428197110105459', N'13791388308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944494, N'马治水', N'碱 马', N'372428195603175410', N'15315898308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944495, N'李正田', N'茄子李', N'372428196905055411', N'13573426701', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944496, N'刘景彬', N'斜家村', N'371424196801021819', N'13153491302', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944497, N'于一法', N'于家河村', N'372428196510111837', N'13793457739', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944498, N'曹启连', N'西曹', N'372428196308151819', N'15953762838', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944499, N'陈元峰', N'陈集村', N'372428197611271519', N'18766092062', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944500, N'马治水', N'碱 马', N'372428195603175410', N'15315898308', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944501, N'明宝平', N'前明村', N'372428195607031812', N'13791300455', CAST(54.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944502, N'于秋收', N'单家村', N'37142419770903542X', N'15321228865', CAST(54.00 AS Decimal(18, 2)), N'临邑县德平镇秋收谷物种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944503, N'姜长德', N'郭桥村', N'372428195605191812', N'18315993293', CAST(53.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944504, N'蕫付山', N'东关村', N'372428197301101514', N'13573431480', CAST(53.60 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944505, N'刘家国', N'南小刘', N'372428196902271514', N'15564400541', CAST(53.55 AS Decimal(18, 2)), N'临邑县德平镇家国玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944506, N'齐永魁', N'纪张盛', N'372428197309015434', N'13210988001', CAST(53.36 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944507, N'孙文东', N'孙家村', N'372428197508195415', N'13791308153', CAST(53.36 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944508, N'齐永魁', N'纪张盛', N'372428197309015434', N'18561190576', CAST(53.36 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944509, N'贾生宾', N'戚寨村', N'372428196810105412', N'13053458627', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944510, N'李文菊', N'信阁', N'372428196510211221', N'15169715213', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944511, N'葛怀友', N'小葛家', N'372428196703111534', N'13053439982', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944512, N'吴会敏', N'吴家', N'37242819710618182X', N'15865901537', CAST(53.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944513, N'贾生宾', N'戚寨村', N'372428196810105412', N'13053458627', CAST(53.00 AS Decimal(18, 2)), N'临邑县德平镇生宾农作物种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944514, N'李汝忠', N'师家村', N'371424196410301813', N'13165341346', CAST(52.76 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944515, N'张玉生', N'闫家村', N'372428195706171538', N'4879908', CAST(52.75 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944516, N'王章成', N'弭家村', N'372428197502061811', N'15965918964', CAST(52.72 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944517, N'李汝忠', N'师家村', N'371424196410301813', N'13165341346', CAST(52.70 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944518, N'张广海', N'东新庄村', N'372428197203211832', N'17615947885', CAST(52.70 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944519, N'张广华', N'东新庄村', N'37242819740629181x', N'13583451139', CAST(52.57 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944520, N'付胜强', N'付家', N'372428197003201816', N'13181362315', CAST(52.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944521, N'刘顺龙', N'大刘村', N'372428196708101810', N'13153473739', CAST(52.45 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944522, N'刘家国', N'南小刘', N'372428196902271514', N'15564400541', CAST(52.40 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944523, N'靳延军', N'六合镇村', N'371424197207261531', N'13734341148', CAST(52.35 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944524, N'靳延军', N'六合镇村', N'371424197207261531', N'13734341148', CAST(52.35 AS Decimal(18, 2)), N'临邑县德平镇延军玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944525, N'万明前', N'万家村', N'372428196010201510', N'15864171363', CAST(52.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944526, N'胡寿友', N'房集', N'372428197410251810', N'15069213035', CAST(52.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944527, N'董翠华', N'南小刘', N'372428196509061529', N'16688091685', CAST(52.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944528, N'胡寿友', N'房集', N'372428197410251810', N'15069213035', CAST(52.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944529, N'于一胜', N'十里铺村', N'372428196911291533', N'13791314433', CAST(52.20 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944530, N'于一胜', N'十里铺村', N'372428196911291533', N'13791314433', CAST(52.20 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944531, N'史立兴', N'史家村', N'372428197109291514', N'15965935617', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944532, N'周立泉', N'薛家村', N'372428197101151517', N'13153491432', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944533, N'张明强', N'大鲍村', N'372428197007091511', N'13905441821', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944534, N'杨春平', N'活佛庙', N'372428196110261510', N'4892686', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944535, N'任连国', N'任家庙村', N'372428197410291513', N'13515445694', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944536, N'金成坤', N'碱 马', N'372428195512255418', N'13176146953', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944537, N'宋继良', N'满家村', N'372428197110121838', N'13153490653', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944538, N'任连国', N'任家庙村', N'372428197410291513', N'13515445694', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944539, N'于一河', N'于家河村', N'372428197809261834', N'15053422214', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944540, N'宋继良', N'满家村', N'372428197110121838', N'13153490653', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇传伟玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944541, N'张明强', N'大鲍村', N'372428197007091511', N'13905441821', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944542, N'金成坤', N'碱 马', N'372428195512255418', N'13176146953', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944543, N'闫吉来', N'闫家村', N'372428197201011570', N'15206937758', CAST(52.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944544, N'史立兴', N'史家村', N'372428197109291514', N'15965935617', CAST(52.00 AS Decimal(18, 2)), N'临邑县德平镇后史家村立兴家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944545, N'闫继叶', N'闫家村', N'372428197105231514', N'13184128173', CAST(51.76 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944546, N'王新', N'东新庄村', N'372428196804281516', N'13153460963', CAST(51.65 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944547, N'王新', N'东新庄村', N'372428196804281516', N'13153460963', CAST(51.65 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944548, N'于志龙', N'满家村', N'372428196810201834', N'13853422048', CAST(51.60 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944549, N'于志龙', N'满家村', N'372428196810201834', N'13853422048', CAST(51.60 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944550, N'史建国', N'史家村', N'372428197005041537', N'15965912173', CAST(51.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944551, N'周吉东', N'薛家村', N'372428197102121512', N'13153480380', CAST(51.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944552, N'史建国', N'史家村', N'372428197005041537', N'15965912173', CAST(51.50 AS Decimal(18, 2)), N'临邑县德平镇后史家村建国家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944553, N'王海波', N'养马村', N'371424198602081535', N'13792239732', CAST(51.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944554, N'闫继良', N'闫家村', N'372428197202051515', N'15965912499', CAST(51.14 AS Decimal(18, 2)), N'临邑县德平镇继良玉米种植家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944555, N'刘占信', N'弭家村', N'372428196409171819', N'13153473177', CAST(51.13 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944556, N'王玉香', N'东新庄村', N'371424197412051824', N'13668626637', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944557, N'弭玉峰', N'弭家村', N'371424198302231810', N'18653410858', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944558, N'唐秀芹', N'梁家', N'372428196809211226', N'17615953782', CAST(51.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944559, N'陈廷勇', N'陈家村', N'372428196907201515', N'15053422185', CAST(50.80 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944560, N'杨朋', N'杨六家村', N'372428197712071532', N'18653439387', CAST(50.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944561, N'贾生周', N'东贾村', N'372428196812125433', N'13791319605', CAST(50.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944562, N'杨朋', N'杨六家村', N'372428197712071532', N'18653439387', CAST(50.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944563, N'贾生周', N'东贾村', N'372428196812125433', N'13791319605', CAST(50.50 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944564, N'张广海', N'东新庄村', N'372428197203211832', N'17615947885', CAST(50.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944565, N'东新庄村', N'张广华', N'37242819740629181x', N'13583451139', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944566, N'蒋志华', N'蒋家', N'372428197510071534', N'13853481542', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944567, N'胡寿富', N'戚寨村', N'371424197502255417', N'13184129718', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944568, N'胡寿勇', N'戚寨村', N'372428196309215431', N'13884697854', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944569, N'于汝孝', N'于家河村', N'372428197001021811', N'13173347004', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944570, N'蒋志华', N'蒋家', N'372428197510071534', N'13853481542', CAST(50.00 AS Decimal(18, 2)), N'', N'临邑传龙粮食种植专业合作社', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944571, N'胡寿富', N'戚寨村', N'371424197502255417', N'13184129718', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944572, N'胡寿勇', N'戚寨村', N'372428196309215431', N'13884697854', CAST(50.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944573, N'刘世新', N'陈寨村', N'372428196908201859', N'15863122082', CAST(47.30 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944574, N'王光明', N'胡寨村', N'371424198106125412', N'13792226021', CAST(0.00 AS Decimal(18, 2)), N'', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
INSERT [dbo].[LargeGrain] ([RecordId], [LargeGrainName], [Village], [IDCard], [ContactMobile], [PlantingArea], [FamilyFarm], [CoopeRative], [Backup01], [Backup02], [Backup03], [Created], [CreatedTime], [Modifer], [ModifedTime]) VALUES (1581839424700944575, N'王文建', N'宫屯村', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'临邑县德平镇文建家庭农场', N'', N'2022', N'', N'', N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime), N'syszny', CAST(N'2022-10-17T10:48:02.000' AS DateTime))
GO
/****** Object:  StoredProcedure [dbo].[Create_LargeGrain]    Script Date: 2022-10-21 18:39:33 ******/
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
/****** Object:  StoredProcedure [dbo].[Query_LargeGrain]    Script Date: 2022-10-21 18:39:33 ******/
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
/****** Object:  StoredProcedure [dbo].[Query_LargeGrain_Page]    Script Date: 2022-10-21 18:39:33 ******/
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
/****** Object:  StoredProcedure [dbo].[Update_LargeGrain]    Script Date: 2022-10-21 18:39:33 ******/
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
USE [master]
GO
ALTER DATABASE [LandCirculationDatabase] SET  READ_WRITE 
GO
