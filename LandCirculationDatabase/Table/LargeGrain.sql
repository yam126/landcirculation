CREATE TABLE [dbo].[LargeGrain]
(
	[RecordId] BIGINT NOT NULL PRIMARY KEY, 
    [LargeGrainName] NVARCHAR(50) NOT NULL, 
    [Village] NVARCHAR(50) NOT NULL, 
    [IDCard] NVARCHAR(50) NOT NULL, 
    [ContactMobile] NVARCHAR(50) NULL, 
    [PlantingArea] DECIMAL(18, 2) NULL, 
    [FamilyFarm] NVARCHAR(50) NULL, 
    [CoopeRative] NVARCHAR(50) NULL,
    [Backup01] NVARCHAR(170) NULL,
    [Backup02] NVARCHAR(170) NULL,
    [Backup03] NVARCHAR(170) NULL,
    [Created] NVARCHAR(50) NULL, 
    [CreatedTime] DATETIME NULL, 
    [Modifer] NVARCHAR(50) NULL, 
    [ModifedTime] DATETIME NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'编号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'RecordId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'种粮大户姓名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'LargeGrainName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'所属村子',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Village'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'身份证',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'IDCard'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'联系电话',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'ContactMobile'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'种植面积',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'PlantingArea'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'家庭农场',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'FamilyFarm'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'合作社',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'CoopeRative'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Created'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'CreatedTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Modifer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'ModifedTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'备用字段01',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Backup01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'备用字段02',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Backup02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'备用字段03',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LargeGrain',
    @level2type = N'COLUMN',
    @level2name = N'Backup03'