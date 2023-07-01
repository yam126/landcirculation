
----------------------------------------------------------------------------------------------------

USE [MOI]
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[AddVipInfoLand]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].AddVipInfoLand
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------

CREATE PROC AddVipInfoLand
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Created				nvarchar(128), 
		@CompanyId				INT,				
		@strErrorDescribe		NVARCHAR(127)	OUTPUT   -- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON
BEGIN
 
	INSERT VipInfoLand(VipInfoId,LngAndLat,LandArea,Created		,CompanyId,CreatedTime)
	VALUES(
	@VipInfoId,@LngAndLat,@LandArea,@Created,@CompanyId,GETDATE());
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'添加种植大户地块失败'
		RETURN 2
	END
	 
END

RETURN 0

GO

