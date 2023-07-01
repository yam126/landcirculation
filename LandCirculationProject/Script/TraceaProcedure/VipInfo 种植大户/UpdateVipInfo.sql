



----------------------------------------------------------------------------------------------------

USE MOI
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[UpdateVipInfo]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].UpdateVipInfo
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------

CREATE PROC UpdateVipInfo
	@Id						BIGINT ,
	@VillageName   			nvarchar(256)  null ,
	@VipName				nvarchar(256)  null,
	@CirculationArea		decimal(18,2)  null	 ,
	@CirculationPrice   	decimal(18,2)  null ,
	@Neighborhood			nvarchar(50)	null ,
	@Modified				nvarchar(128)	null ,
	@strErrorDescribe		NVARCHAR(127)   OUTPUT   -- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON
BEGIN
	
	
	UPDATE VipInfo SET 
					VillageName = @VillageName,
					VipName =@VipName,
					CirculationArea=@CirculationArea,
					CirculationPrice=@CirculationPrice,
					Neighborhood=@Neighborhood,
					Modified=@Modified,  
					ModifiedTime=GETDATE()  
				
				WHERE VipInfoId = @Id
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'更新种植大户失败'
		RETURN 2
	END
	 
 
END

RETURN 0

GO

