
----------------------------------------------------------------------------------------------------

USE MOI
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[AddVipInfo]') and OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].AddVipInfo
GO

SET QUOTED_IDENTIFIER ON 
GO

SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------------------------------------

CREATE PROC AddVipInfo
	 
	@VillageName   			nvarchar(256)  null ,
	@VipName				nvarchar(256)  null,
	@CirculationArea		decimal(18,2)  null	 ,
	@CirculationPrice   	decimal(18,2)  null ,
	@Neighborhood			nvarchar(50)	null ,
	@Created				nvarchar(128) null , 
	@CompanyId INT,					--公司Id
  @strErrorDescribe NVARCHAR(127)	OUTPUT   -- ErrorDescribe
WITH ENCRYPTION AS

SET NOCOUNT ON
BEGIN
 
	INSERT VipInfo(VillageName,VipName,CirculationArea,CirculationPrice,Neighborhood,Created,CompanyId,CreatedTime)
	VALUES(@VillageName,@VipName,@CirculationArea,@CirculationPrice,@Neighborhood,@Created,@CompanyId,GETDATE());
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'添加种粮大户失败'
		RETURN 2
	END

	
	SELECT IDENT_CURRENT('VipInfo') AS Id
	 
END

RETURN 0

GO

