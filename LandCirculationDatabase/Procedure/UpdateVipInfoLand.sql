CREATE PROCEDURE UpdateVipInfoLand
(
		@Id						Bigint	 , 
		@VipInfoId				Bigint	 , 
		@LngAndLat				VARCHAR(MAX),	  
		@LandArea				decimal(18,2),	
		@Modified				nvarchar(128), 
		@strErrorDescribe		NVARCHAR(127)   OUTPUT   -- ErrorDescribe
)
as
BEGIN
	
	
	UPDATE vipInfoLand SET
					VipInfoId=@VipInfoId,
					LngAndLat=@LngAndLat,
					LandArea=@LandArea,
					Modifer=@Modified, 
					ModifedTime=GETDATE()   
				WHERE RecordId = @Id
	
	IF @@ERROR<>0
	BEGIN
		SET @strErrorDescribe=N'更新种植大户地块失败'
		RETURN 2
	END
	 
 
END

RETURN 0



