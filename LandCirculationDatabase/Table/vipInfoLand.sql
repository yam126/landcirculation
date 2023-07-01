CREATE TABLE [dbo].[vipInfoLand]
(
	[recordId] BIGINT NOT NULL PRIMARY KEY, 
    [vipInfoId] BIGINT NOT NULL, 
    [LngAndLat] VARCHAR(4000) NULL, 
    [LandArea] DECIMAL(18, 2) NULL,
    [Created] VARCHAR(200) NULL, 
    [CreatedTime] DATETIME NULL, 
    [Modifer] VARCHAR(200) NULL, 
    [ModifedTime] DATETIME NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'地块编号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'recordId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'种粮大户编号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'vipInfoId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'经纬度字符串合集(比如116.39,39.56,118.56,87.65)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'LngAndLat'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'当前地块面积',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'LandArea'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'Created'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'CreatedTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'Modifer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfoLand',
    @level2type = N'COLUMN',
    @level2name = N'ModifedTime'