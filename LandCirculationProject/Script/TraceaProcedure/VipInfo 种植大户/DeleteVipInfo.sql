
----------------------------------------------------------------------------------------------------

USE [MOI]
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[DeleteVipInfo]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].DeleteVipInfo
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------
CREATE  PROCEDURE dbo.DeleteVipInfo
	@Id  BIGINT,								-- Id 
	@strErrorDescribe NVARCHAR(127) OUTPUT		-- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON

BEGIN

	IF NOT EXISTS (SELECT * FROM VipInfo(NOLOCK) WHERE VipInfoId=@Id)
	BEGIN
		SET @strErrorDescribe=N'此种植大户不存在'
		RETURN 1
	END

	DELETE VipInfo WHERE VipInfoId=@Id;

	
	DELETE VipInfoLand WHERE VipInfoId=@Id;

END

RETURN 0

GO

----------------------------------------------------------------------------------------------------
