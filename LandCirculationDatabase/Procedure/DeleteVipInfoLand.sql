CREATE  PROCEDURE dbo.DeleteVipInfoLand(
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