use MOI
go

create table VipInfo(
	VipInfoId			bigint				primary key identity(1,1),
	VillageName			nvarchar(256)		null	default N'',
	VipName				nvarchar(256)		null	default N'',
	CirculationArea		decimal(18,2)		null	default 0 ,
	CirculationPrice	decimal(18,2)		null	default 0 ,
	Neighborhood		nvarchar(50)		null	default N'',
	Created				nvarchar(128)		null	default N'',
	CreatedTime			DATETIME			NULL   DEFAULT GETDATE(), 
	Modified			nvarchar(128)		null	default N'',
	ModifiedTime		DATETIME			NULL   DEFAULT GETDATE(),
	[CompanyId]			[int]				NOT NULL,
)

create table VipInfoLand(
	RecordId			bigint				primary key identity(1,1),
	VipInfoId			bigint				NOT NULL ,
	LngAndLat			VARCHAR(MAX)		null    default	 N'',		
	LandArea			decimal(18,2)		null	default 0 , 
	Created				nvarchar(128)		null	default N'',
	CreatedTime			DATETIME			NULL    DEFAULT GETDATE(), 
	Modified			nvarchar(128)		null	default N'',
	ModifiedTime		DATETIME			NULL    DEFAULT GETDATE(),
	[CompanyId]			[int]				NOT NULL,
)

