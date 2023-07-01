



----------------------------------------------------------------------------------------------------

USE [MOI]
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[UpdateVipInfoLand]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].UpdateVipInfoLand
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------

CREATE PROC UpdateVipInfoLand
		@Id						Bigint	 , 
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Modified				nvarchar(128), 
		@strErrorDescribe		NVARCHAR(127)   OUTPUT   -- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON
BEGIN
	
	
	UPDATE VipInfoLand SET
					VipInfoId=@VipInfoId,
					LngAndLat=@LngAndLat,
					LandArea=@LandArea,
					Modified=@Modified, 
					ModifiedTime=GETDATE()   
				WHERE RecordId = @Id
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'更新种植大户地块失败'
		RETURN 2
	END
	 
 
END

RETURN 0

GO

