if exists(select 1 from sysobjects where id=object_id('dbo.Create_vipInfo') and xtype='P')
   drop PROCEDURE dbo.Create_vipInfo
if exists(select 1 from sysobjects where id=object_id('dbo.Update_vipInfo') and xtype='P')
   drop PROCEDURE dbo.Update_vipInfo
if exists(select 1 from sysobjects where id=object_id('dbo.Query_vipInfo') and xtype='P')
   drop PROCEDURE dbo.Query_vipInfo
if exists(select 1 from sysobjects where id=object_id('dbo.Query_vipInfo_Page') and xtype='P')
   drop PROCEDURE dbo.Query_vipInfo_Page   
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Create_vipInfo
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Update_vipInfo
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Query_vipInfo
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Query_vipInfo_Page
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