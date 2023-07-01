if exists(select 1 from sysobjects where id=object_id('dbo.Create_vipInfoLand') and xtype='P')
   drop PROCEDURE dbo.Create_vipInfoLand
if exists(select 1 from sysobjects where id=object_id('dbo.Update_vipInfoLand') and xtype='P')
   drop PROCEDURE dbo.Update_vipInfoLand
if exists(select 1 from sysobjects where id=object_id('dbo.Query_vipInfoLand') and xtype='P')
   drop PROCEDURE dbo.Query_vipInfoLand
if exists(select 1 from sysobjects where id=object_id('dbo.Query_vipInfoLand_Page') and xtype='P')
   drop PROCEDURE dbo.Query_vipInfoLand_Page   
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Create_vipInfoLand
(
                  @recordId bigint, --地块编号
                  @vipInfoId bigint, --种粮大户编号
                    @LngAndLat varchar(4000), --经纬度字符串合集(比如116.39,39.56,118.56,87.65)
                  @LandArea decimal, --当前地块面积
                    @Created varchar(200), --创建人
                  @CreatedTime datetime, --创建时间
                    @Modifer varchar(200), --修改人
                  @ModifedTime datetime --修改时间
)
as
begin
     insert into vipInfoLand
     (
               [recordId],
               [vipInfoId],
               [LngAndLat],
               [LandArea],
               [Created],
               [CreatedTime],
               [Modifer],
               [ModifedTime]
     )
     values
     (
               @recordId,
               @vipInfoId,
               @LngAndLat,
               @LandArea,
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
create PROCEDURE Update_vipInfoLand
(
                  @recordId bigint, --地块编号
                  @vipInfoId bigint, --种粮大户编号
                    @LngAndLat varchar(4000), --经纬度字符串合集(比如116.39,39.56,118.56,87.65)
                  @LandArea decimal, --当前地块面积
                    @Created varchar(200), --创建人
                  @CreatedTime datetime, --创建时间
                    @Modifer varchar(200), --修改人
                  @ModifedTime datetime, --修改时间
         @SqlWhere NVARCHAR(max)
)
as
begin
     Declare @SqlStr nvarchar(max);
     Set @SqlStr='Update vipInfoLand Set ';
              Set @SqlStr=@SqlStr+'recordId='+rtrim(ltrim(cast(@recordId as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'vipInfoId='+rtrim(ltrim(cast(@vipInfoId as nvarchar(max))))+',';
              Set @SqlStr=@SqlStr+'LngAndLat='''+@LngAndLat+''',';
              Set @SqlStr=@SqlStr+'LandArea='+rtrim(ltrim(cast(@LandArea as nvarchar(max))))+',';
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
create PROCEDURE Query_vipInfoLand
(
    @SqlWhere Nvarchar(max)
)
as
begin
    Declare @SqlStr nvarchar(max);
	Set @SqlStr='select ';
                Set @SqlStr=@SqlStr+'[recordId],'
                Set @SqlStr=@SqlStr+'[vipInfoId],'
                Set @SqlStr=@SqlStr+'[LngAndLat],'
                Set @SqlStr=@SqlStr+'[LandArea],'
                Set @SqlStr=@SqlStr+'[Created],'
                Set @SqlStr=@SqlStr+'[CreatedTime],'
                Set @SqlStr=@SqlStr+'[Modifer],'
                Set @SqlStr=@SqlStr+'[ModifedTime]'
    Set @SqlStr=@SqlStr+' from vipInfoLand';
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
create PROCEDURE Query_vipInfoLand_Page
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
    set @TableName='dbo.[vipInfoLand]';
    set @SqlStr='select 
                  Row_Number() over(order by '+@SortField+' '+@SortMethod+') as Row,';
                Set @SqlStr=@SqlStr+'[recordId],'
                Set @SqlStr=@SqlStr+'[vipInfoId],'
                Set @SqlStr=@SqlStr+'[LngAndLat],'
                Set @SqlStr=@SqlStr+'[LandArea],'
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