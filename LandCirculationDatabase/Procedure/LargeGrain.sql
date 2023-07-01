if exists(select 1 from sysobjects where id=object_id('dbo.Create_LargeGrain') and xtype='P')
   drop PROCEDURE dbo.Create_LargeGrain
if exists(select 1 from sysobjects where id=object_id('dbo.Update_LargeGrain') and xtype='P')
   drop PROCEDURE dbo.Update_LargeGrain
if exists(select 1 from sysobjects where id=object_id('dbo.Query_LargeGrain') and xtype='P')
   drop PROCEDURE dbo.Query_LargeGrain
if exists(select 1 from sysobjects where id=object_id('dbo.Query_LargeGrain_Page') and xtype='P')
   drop PROCEDURE dbo.Query_LargeGrain_Page   
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Create_LargeGrain
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Update_LargeGrain
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Query_LargeGrain
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE Query_LargeGrain_Page
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
