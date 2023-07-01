CREATE TABLE [dbo].[vipInfo]
(
	[vipInfoId] BIGINT NOT NULL PRIMARY KEY, 
    [villageName] VARCHAR(170) NULL, 
    [vipName] VARCHAR(80) NULL, 
    [circulationArea] DECIMAL(18, 2) NULL, 
    [circulationPrice] DECIMAL(18, 2) NULL, 
    [Neighborhood] VARCHAR(50) NULL,
    [Created] VARCHAR(50) NULL, 
    [CreatedTime] DATETIME NULL, 
    [Modifer] VARCHAR(50) NULL, 
    [ModifedTime] DATETIME NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'种粮大户编号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'vipInfoId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'村庄名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'villageName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'种粮大户名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'vipName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'流转面积',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'circulationArea'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'流转价格',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'circulationPrice'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'地邻',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'Neighborhood'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'Created'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'CreatedTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'Modifer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'vipInfo',
    @level2type = N'COLUMN',
    @level2name = N'ModifedTime'