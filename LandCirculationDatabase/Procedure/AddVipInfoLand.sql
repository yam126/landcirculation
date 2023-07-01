CREATE PROCEDURE AddVipInfoLand
(
        @recordId               BigInt,
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Created				nvarchar(128), 
		@CompanyId				INT,				
		@strErrorDescribe		NVARCHAR(127)	OUTPUT   -- ErrorDescribe
)
as
BEGIN
 
	INSERT vipInfoLand(recordId,VipInfoId,LngAndLat,LandArea,Created,CreatedTime)
	VALUES(
	@recordId,@VipInfoId,@LngAndLat,@LandArea,@Created,GETDATE());
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'添加种植大户地块失败'
		RETURN 2
	END
	 
END

RETURN 0