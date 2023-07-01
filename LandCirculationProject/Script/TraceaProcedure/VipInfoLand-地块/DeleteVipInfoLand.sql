
----------------------------------------------------------------------------------------------------

USE [MOI]
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[DeleteVipInfoLand]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].DeleteVipInfoLand
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------
CREATE  PROCEDURE dbo.DeleteVipInfoLand
	@Id   bigint	,								-- Id 
	@strErrorDescribe NVARCHAR(127) OUTPUT		-- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON

BEGIN

	IF NOT EXISTS (SELECT * FROM VipInfoLand(NOLOCK) WHERE RecordId=@Id)
	BEGIN
		SET @strErrorDescribe=N'此资源文件记录不存在'
		RETURN 1
	END

	DELETE VipInfoLand WHERE RecordId=@Id;

END

RETURN 0

GO

----------------------------------------------------------------------------------------------------
