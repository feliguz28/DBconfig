USE [traveltest]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Gender] [varchar](255) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[Document] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[DeletedAt] [datetime] NULL,
	[ReserveId] [int] NOT NULL,
 CONSTRAINT [PK_CLIENTS] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emergencyContact]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emergencyContact](
	[EmContactId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[ContactNumber] [int] NULL,
	[DeletedAt] [datetime] NULL,
	[ReserveId] [int] NOT NULL,
 CONSTRAINT [PK_emergencyContact] PRIMARY KEY CLUSTERED 
(
	[EmContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](255) NOT NULL,
	[HotelLocation] [varchar](255) NOT NULL,
	[Value] [decimal](18, 0) NULL,
	[UrlImage] [varchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedUser] [int] NOT NULL,
	[LastupdatedUser] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[DeletedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parametricDocumentType]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parametricDocumentType](
	[DocumentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Acronym] [varchar](25) NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_parametricDocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parametricRoomType]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parametricRoomType](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](255) NOT NULL,
	[MaxPeople] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_parametricRoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[ReserveId] [int] IDENTITY(1,1) NOT NULL,
	[DateCheckIn] [date] NULL,
	[DateCheckOut] [date] NULL,
	[NumberPersons] [int] NOT NULL,
	[Location] [varchar](255) NOT NULL,
	[RoomId] [int] NOT NULL,
	[Status] [bit] NULL,
	[Value] [decimal](18, 0) NULL,
	[CreatedUser] [int] NOT NULL,
	[LastupdatedUser] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[DeletedAt] [datetime] NULL,
 CONSTRAINT [PK_RESERVATIONS] PRIMARY KEY CLUSTERED 
(
	[ReserveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](255) NOT NULL,
	[RoomDescription] [varchar](max) NULL,
	[Status] [bit] NULL,
	[Value] [decimal](18, 0) NULL,
	[HotelId] [int] NOT NULL,
	[RoomTypeId] [int] NOT NULL,
	[CreatedUser] [int] NOT NULL,
	[LastupdatedUser] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[Location] [varchar](255) NOT NULL,
	[UrlImage] [varchar](max) NULL,
 CONSTRAINT [PK_ROOMS] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserNames] [varchar](255) NOT NULL,
	[UserEmailAddress] [varchar](255) NOT NULL,
	[Status] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[UserName] [varchar](20) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clients]  WITH CHECK ADD  CONSTRAINT [FK_documenttypeid_clients] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[parametricDocumentType] ([DocumentTypeId])
GO
ALTER TABLE [dbo].[clients] CHECK CONSTRAINT [FK_documenttypeid_clients]
GO
ALTER TABLE [dbo].[clients]  WITH CHECK ADD  CONSTRAINT [FK_reserveid_clients] FOREIGN KEY([ReserveId])
REFERENCES [dbo].[reservations] ([ReserveId])
GO
ALTER TABLE [dbo].[clients] CHECK CONSTRAINT [FK_reserveid_clients]
GO
ALTER TABLE [dbo].[emergencyContact]  WITH CHECK ADD  CONSTRAINT [FK_ReserveId_emergencyContact] FOREIGN KEY([ReserveId])
REFERENCES [dbo].[reservations] ([ReserveId])
GO
ALTER TABLE [dbo].[emergencyContact] CHECK CONSTRAINT [FK_ReserveId_emergencyContact]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [FK_createuser_hotels] FOREIGN KEY([CreatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [FK_createuser_hotels]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [FK_lastupdatedUser_hotels] FOREIGN KEY([LastupdatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [FK_lastupdatedUser_hotels]
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD  CONSTRAINT [FK_createuser_reservations] FOREIGN KEY([CreatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[reservations] CHECK CONSTRAINT [FK_createuser_reservations]
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD  CONSTRAINT [FK_lastupdatedUser_reservations] FOREIGN KEY([LastupdatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[reservations] CHECK CONSTRAINT [FK_lastupdatedUser_reservations]
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD  CONSTRAINT [FK_roomId_reservations] FOREIGN KEY([RoomId])
REFERENCES [dbo].[rooms] ([RoomId])
GO
ALTER TABLE [dbo].[reservations] CHECK CONSTRAINT [FK_roomId_reservations]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_createuser_rooms] FOREIGN KEY([CreatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_createuser_rooms]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_hotelId_rooms] FOREIGN KEY([HotelId])
REFERENCES [dbo].[hotels] ([HotelId])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_hotelId_rooms]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_lastupdatedUser_rooms] FOREIGN KEY([LastupdatedUser])
REFERENCES [dbo].[users] ([UserId])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_lastupdatedUser_rooms]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_roomTypeId_rooms] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[parametricRoomType] ([RoomTypeId])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_roomTypeId_rooms]
GO
/****** Object:  StoredProcedure [dbo].[CreateClient]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateClient]

	@FirstName			VARCHAR(255),
	@LastName			VARCHAR(255),
	@Gender				VARCHAR(255),
	@DocumentTypeId		INT,
	@Document			INT,
	@Email				VARCHAR(255),
	@ReserveId			INT

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

		INSERT  dbo.[clients]
				(  [FirstName]
				  ,[LastName]
				  ,[Gender]
				  ,[DocumentTypeId]
				  ,[Document]
				  ,[Email]
				  ,[DeletedAt]
				  ,[ReserveId]
				)
		VALUES(
				 @FirstName
				,@LastName
				,@Gender
				,@DocumentTypeId
				,@Document
				,@Email
				,Null
				,@ReserveId
				)
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[CreateEmergencyContact]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateEmergencyContact]

	@FirstName			VARCHAR(255),
	@LastName			VARCHAR(255),
	@ContactNumber		INT,
	@ReserveId			INT

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

		INSERT  dbo.[emergencyContact]
				(  [FirstName]
				  ,[LastName]
				  ,[ContactNumber]
				  ,[DeletedAt]
				  ,[ReserveId]
				)
		VALUES(
				 @FirstName
				,@LastName
				,@ContactNumber
				,null
				,@ReserveId
				)
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[CreateHotel]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateHotel]

	@HotelName			VARCHAR(255),
	@HotelLocation		VARCHAR(255),
	@Value				DECIMAL(18),
	@UrlImage			VARCHAR(MAX),
	@Status				BIT,
	@CreatedUser		INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
	@HotelId			INT,
	@CreatedDate		DATETIME,
	@LastUpdatedDate	DATETIME

	SET @CreatedDate=GETUTCDATE()            
	SET @LastUpdatedDate=GETUTCDATE()

		INSERT  dbo.[hotels]
				([HotelName]
				,[HotelLocation]
				,[Value]
				,[UrlImage]
				,[Status]
				,[CreatedUser]
				,[LastupdatedUser]
				,[CreatedDate]
				,[LastUpdatedDate]
				,[DeletedAt]
				)
		VALUES(
				 @HotelName
				,@HotelLocation
				,@Value
				,@UrlImage
				,@Status
				,@CreatedUser
				,@CreatedUser
				,@CreatedDate
				,@LastUpdatedDate
				,Null
				)
		SET @HotelId = (SELECT SCOPE_IDENTITY())
		SELECT @HotelId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[CreateReserve]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateReserve]

	@DateCheckIn		DATE,
	@DateCheckOut		DATE,
	@NumberPerson		INT,
	@Location			VARCHAR(255),
	@RoomId				INT,
	@Status				BIT,
	@Value				DECIMAL(18),
	@CreatedUser		INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
	@CreatedDate		DATETIME,
	@LastUpdatedDate	DATETIME,
	@ReserveId			INT

	SET @CreatedDate=GETUTCDATE()            
	SET @LastUpdatedDate=GETUTCDATE()

		INSERT  dbo.[reservations]
				(  [DateCheckIn]
				  ,[DateCheckOut]
				  ,[NumberPersons]
				  ,[Location]
				  ,[RoomId]
				  ,[Status]
				  ,[Value]
				  ,[CreatedUser]
				  ,[LastupdatedUser]
				  ,[CreatedDate]
				  ,[LastUpdatedDate]
				  ,[DeletedAt]
				)
		VALUES(
				 @DateCheckIn
				,@DateCheckOut
				,@NumberPerson
				,@Location
				,@RoomId
				,@Status
				,@Value
				,@CreatedUser
				,@CreatedUser
				,@CreatedDate
				,@LastUpdatedDate
				,Null
				)
		SET @ReserveId = (SELECT SCOPE_IDENTITY())
		SELECT @ReserveId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[CreateRoom]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateRoom]

	@RoomName				VARCHAR(255),
	@RoomDescription		VARCHAR(255),
	@Status					DECIMAL(18),
	@UrlImage				VARCHAR(MAX),
	@Value					DECIMAL,
	@HotelId				INT,
	@RoomTypeId				INT,
	@CreatedUser			INT,
	@Location				VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
	@RoomId				INT,
	@CreatedDate		DATETIME,
	@LastUpdatedDate	DATETIME

	SET @CreatedDate=GETUTCDATE()            
	SET @LastUpdatedDate=GETUTCDATE()

		INSERT  dbo.[rooms]
				(  [RoomName]
				  ,[RoomDescription]
				  ,[Status]
				  ,[Value]
				  ,[HotelId]
				  ,[RoomTypeId]
				  ,[CreatedUser]
				  ,[LastupdatedUser]
				  ,[CreatedDate]
				  ,[LastUpdatedDate]
				  ,[DeletedAt]
				  ,[Location]
				  ,[UrlImage]
				)
		VALUES(
				 @RoomName
				,@RoomDescription
				,@Status				
				,@Value
				,@HotelId
				,@RoomTypeId
				,@CreatedUser
				,@CreatedUser
				,@CreatedDate
				,@LastUpdatedDate
				,Null
				,@Location
				,@UrlImage
				)
		SET @RoomId = (SELECT SCOPE_IDENTITY())
		SELECT @RoomId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[DeleteHotel]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteHotel]

	@HotelId		INT,
	@UpdateUser		INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
		@DeleteAt			DATETIME
        
	SET @DeleteAt	=	GETUTCDATE()
		UPDATE dbo.[hotels]
		SET
				 [DeletedAt]		=		@DeleteAt
				,[LastupdatedUser]	=		@UpdateUser
		WHERE HotelId = @HotelId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[DeleteRoom]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRoom]

	@RoomId			INT,
	@UpdateUser		INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
		@DeleteAt			DATETIME
        
	SET @DeleteAt	=	GETUTCDATE()
		UPDATE dbo.[rooms]
		SET
				 [DeletedAt]		=		@DeleteAt
				,[LastupdatedUser]	=		@UpdateUser
		WHERE RoomId = @RoomId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[GetAllAvailableRooms]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllAvailableRooms]

	@DateCheckIn		DATE,
	@DateCheckOut		DATE,
	@Location			VARCHAR(MAX),
	@NumberPerson		INT,
	@PageNumber			INT,
	@RegisterPage		INT,
	@Filter				VARCHAR(150)
AS
BEGIN
	SET NOCOUNT ON;	 
	DECLARE @Temporal	TABLE (Id INT, RoomName varchar(255))
	DECLARE @Rooms	TABLE ( [RoomId]			INT
							   ,[RoomName]			VARCHAR(255)
							   ,[RoomDescription]	VARCHAR(255)
							   ,[Value]				DECIMAL(18, 0)
							   ,[Location]			VARCHAR(255)
							   ,[RoomUrlImage]		VARCHAR(MAX)
							   ,[RoomTypeName]		VARCHAR(255)
							   ,[MaxPeople]			INT
							   ,[HotelId]			INT
							   ,[HotelName]			VARCHAR(255)
							   ,[HotelUrlImage]		VARCHAR(MAX)
							   )
	INSERT INTO @Temporal SELECT 
								 [RoomId]
								,[RoomName]
						  FROM	 [dbo].[rooms] R
						  INNER JOIN [dbo].[parametricRoomType]  RT on  R.RoomTypeId = RT.RoomTypeId 
						  WHERE	
						  Location LIKE CONCAT ('%', @Location, '%')
						  AND		DeletedAt is null
						  AND		RT.MaxPeople >= @NumberPerson

	DECLARE @Count INT = (select count(*) from @Temporal)

	WHILE @Count > 0 
		BEGIN
			DECLARE @RoomId INT = (SELECT TOP(1) Id FROM @Temporal ORDER BY Id)
			 IF NOT EXISTS (SELECT	[RoomId]
			 				FROM reservations 
							WHERE RoomId = @RoomId
							AND (@DateCheckIn  BETWEEN DateCheckIn AND DateCheckOut OR @DateCheckOut  BETWEEN DateCheckIn AND DateCheckOut))
			BEGIN
				INSERT INTO @Rooms SELECT TOP(1) R.[RoomId]
												,R.[RoomName] 
												,R.[RoomDescription]
												,R.[Value]	
												,R.[Location]	
												,R.[UrlImage]
												,RT.[RoomTypeName]
												,RT.[MaxPeople]
												,H.[HotelId]
												,H.[HotelName]	
												,H.[UrlImage]	
												FROM rooms R
												INNER JOIN [dbo].[parametricRoomType]  RT on  R.RoomTypeId = RT.RoomTypeId
												INNER JOIN [dbo].[hotels]  H on  R.HotelId = H.HotelId
												WHERE RoomId =  @RoomId
			END			
			DELETE		@Temporal WHERE Id = @RoomId
			SET			@Count = (select count(*) from @Temporal)
		END
		SELECT * FROM	@Rooms R
			ORDER by	R.HotelId
			OFFSET @PageNumber ROWS
			FETCH NEXT @RegisterPage ROWS ONLY

END	
GO
/****** Object:  StoredProcedure [dbo].[GetAllClients]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllClients]

	@ReserveId INT

AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
	   [ClientId]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Document]
      ,[Email]
      ,[ReserveId]

	FROM	[dbo].[clients] C
	WHERE	DeletedAt is null
	AND		[ReserveId] =  @ReserveId
END	
GO
/****** Object:  StoredProcedure [dbo].[GetAllHotels]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllHotels]

	@PageNumber int,
	@RegisterPage int,
	@Filter VARCHAR(150)
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [HotelId]
		  ,[HotelName]
		  ,[HotelLocation]
		  ,[Value]
		  ,[UrlImage]
		  ,[Status]
		  ,[CreatedUser]
		  ,[LastupdatedUser]
		  ,[CreatedDate]
		  ,[LastUpdatedDate]
		  ,[DeletedAt]

	FROM	[dbo].[hotels] H
	WHERE	DeletedAt is null
	AND		HotelName LIKE CONCAT('%', @Filter, '%')
	ORDER by H.HotelName
	OFFSET @PageNumber ROWS
	FETCH NEXT @RegisterPage ROWS ONLY
END	
GO
/****** Object:  StoredProcedure [dbo].[GetAllReserve]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllReserve]

	@PageNumber int,
	@RegisterPage int,
	@Filter VARCHAR(150)
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [ReserveId]
		  ,[DateCheckIn]
		  ,[DateCheckOut]
		  ,[NumberPersons]
		  ,[Location]
		  ,[RoomId]
		  ,[Status]
		  ,[Value]
		  ,[CreatedUser]
		  ,[LastupdatedUser]
		  ,[CreatedDate]
		  ,[LastUpdatedDate]
		  ,[DeletedAt]

	FROM	[dbo].[reservations] R
	WHERE	DeletedAt is null
	ORDER by R.ReserveId
	OFFSET @PageNumber ROWS
	FETCH NEXT @RegisterPage ROWS ONLY
END	
GO
/****** Object:  StoredProcedure [dbo].[GetAllReserveById]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllReserveById]

	@ReserveId int
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [ReserveId]
		  ,[DateCheckIn]
		  ,[DateCheckOut]
		  ,[NumberPersons]
		  ,[Location]
		  ,[RoomId]
		  ,[Status]
		  ,[Value]

	FROM	[dbo].[reservations] R
	WHERE	DeletedAt is null and ReserveId = @ReserveId
END	
GO
/****** Object:  StoredProcedure [dbo].[GetAllRoomsByIdHotel]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllRoomsByIdHotel]

	@HotelId		int,
	@PageNumber		int,
	@RegisterPage	int,
	@Filter			VARCHAR(150)
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
			   [RoomId]
			  ,[RoomName]
			  ,[RoomDescription]
			  ,[Status]
			  ,[Value]
			  ,[HotelId]
			  ,[RoomTypeId]
			  ,[CreatedUser]
			  ,[LastupdatedUser]
			  ,[CreatedDate]
			  ,[LastUpdatedDate]
			  ,[DeletedAt]
			  ,[Location]
			  ,[UrlImage]

	FROM	[dbo].[rooms] R
	WHERE	R.HotelId = @HotelId
	AND		DeletedAt is null
	AND		RoomName LIKE CONCAT('%', @Filter, '%')
	ORDER by R.RoomName
	OFFSET @PageNumber ROWS
	FETCH NEXT @RegisterPage ROWS ONLY
END	
GO
/****** Object:  StoredProcedure [dbo].[GetCountAllAvailableRooms]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountAllAvailableRooms]

	@DateCheckIn		DATE,
	@DateCheckOut		DATE,
	@Location			VARCHAR(MAX),
	@NumberPerson		INT,
	@Filter				VARCHAR(150)
AS
BEGIN
	SET NOCOUNT ON;	 
	DECLARE @Temporal	TABLE (Id INT, RoomName varchar(255))
	DECLARE @Rooms	TABLE ( [RoomId]			INT
							   ,[RoomName]			VARCHAR(255)
							   ,[RoomDescription]	VARCHAR(255)
							   ,[Value]				DECIMAL(18, 0)
							   ,[Location]			VARCHAR(255)
							   ,[RoomUrlImage]		VARCHAR(MAX)
							   ,[RoomTypeName]		VARCHAR(255)
							   ,[MaxPeople]			INT
							   ,[HotelId]			INT
							   ,[HotelName]			VARCHAR(255)
							   ,[HotelUrlImage]		VARCHAR(MAX)
							   )
	INSERT INTO @Temporal SELECT 
								 [RoomId]
								,[RoomName]
						  FROM	 [dbo].[rooms] R
						  INNER JOIN [dbo].[parametricRoomType]  RT on  R.RoomTypeId = RT.RoomTypeId 
						  WHERE	
						  Location LIKE CONCAT ('%', @Location, '%')
						  AND		DeletedAt is null
						  AND		RT.MaxPeople >= @NumberPerson

	DECLARE @Count INT = (select count(*) from @Temporal)

	WHILE @Count > 0 
		BEGIN
			DECLARE @RoomId INT = (SELECT TOP(1) Id FROM @Temporal ORDER BY Id)
			 IF NOT EXISTS (SELECT	[RoomId]
			 				FROM reservations 
							WHERE RoomId = @RoomId
							AND (@DateCheckIn  BETWEEN DateCheckIn AND DateCheckOut OR @DateCheckOut  BETWEEN DateCheckIn AND DateCheckOut))
			BEGIN
				INSERT INTO @Rooms SELECT TOP(1) R.[RoomId]
												,R.[RoomName] 
												,R.[RoomDescription]
												,R.[Value]	
												,R.[Location]	
												,R.[UrlImage]
												,RT.[RoomTypeName]
												,RT.[MaxPeople]
												,H.[HotelId]
												,H.[HotelName]	
												,H.[UrlImage]	
												FROM rooms R
												INNER JOIN [dbo].[parametricRoomType]  RT on  R.RoomTypeId = RT.RoomTypeId
												INNER JOIN [dbo].[hotels]  H on  R.HotelId = H.HotelId
												WHERE RoomId =  @RoomId
			END			
			DELETE		@Temporal WHERE Id = @RoomId
			SET			@Count = (select count(*) from @Temporal)
		END
		SELECT COUNT(r.RoomId) FROM	@Rooms R

END	
GO
/****** Object:  StoredProcedure [dbo].[GetCountAllHotels]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountAllHotels]

	@Filter VARCHAR(150)
AS
BEGIN
	SELECT COUNT(HotelId) from [hotels] 
	WHERE DeletedAt  IS NULL  
	AND HotelName LIKE CONCAT('%', @Filter, '%')
END	
GO
/****** Object:  StoredProcedure [dbo].[GetCountAllReserve]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountAllReserve]

@Filter VARCHAR(150)

AS
BEGIN
	SELECT COUNT(ReserveId) from [reservations] 
	WHERE DeletedAt  IS NULL  
END	
GO
/****** Object:  StoredProcedure [dbo].[GetCountAllRoomsByIdHotel]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountAllRoomsByIdHotel]

	@HotelId		int,
	@Filter			VARCHAR(150)
AS
BEGIN    
	SELECT COUNT(RoomId) from [rooms] R
	WHERE	R.HotelId = @HotelId
	AND		DeletedAt is null
	AND		RoomName LIKE CONCAT('%', @Filter, '%')
END	
GO
/****** Object:  StoredProcedure [dbo].[GetEmergencyContact]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmergencyContact]

	@ReserveId int
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [EmContactId]
		  ,[FirstName]
		  ,[LastName]
		  ,[ContactNumber]

	FROM	[dbo].emergencyContact EC
	WHERE	DeletedAt is null and ReserveId = @ReserveId
END	
GO
/****** Object:  StoredProcedure [dbo].[GetHotelById]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHotelById]

	@HotelId		INT
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [HotelId]
		  ,[HotelName]
		  ,[HotelLocation]
		  ,[Value]
		  ,[UrlImage]
		  ,[Status]
		  ,[CreatedUser]
		  ,[LastupdatedUser]
		  ,[CreatedDate]
		  ,[LastUpdatedDate]
		  ,[DeletedAt]

	FROM [dbo].[hotels] H
	WHERE H.HotelId =  @HotelId and DeletedAt is null

END	
GO
/****** Object:  StoredProcedure [dbo].[GetRoomById]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRoomById]

	@RoomId		INT
AS
BEGIN

	SET NOCOUNT ON;	        
	SELECT 
		   [RoomId]
		  ,[RoomName]
		  ,[RoomDescription]
		  ,[Status]
		  ,[Value]
		  ,[HotelId]
		  ,[RoomTypeId]
		  ,[CreatedUser]
		  ,[LastupdatedUser]
		  ,[CreatedDate]
		  ,[LastUpdatedDate]
		  ,[DeletedAt]
		  ,[Location]
		  ,[UrlImage]

	FROM [dbo].[rooms] R
	WHERE R.RoomId =  @RoomId and DeletedAt is null

END	
GO
/****** Object:  StoredProcedure [dbo].[UpdateHotel]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateHotel]

	@HotelId			INT,
	@HotelName			VARCHAR(255),
	@HotelLocation		VARCHAR(255),
	@Value				DECIMAL(18),
	@UrlImage			VARCHAR(MAX),
	@Status				BIT,
	@UpdateUser			INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
	@LastUpdatedDate	DATETIME
        
	SET @LastUpdatedDate=GETUTCDATE()
		UPDATE dbo.[hotels]
		SET
				 [HotelName]		=		@HotelName
				,[HotelLocation]	=		@HotelLocation
				,[Value]			=		@Value
				,[UrlImage]			=		@UrlImage
				,[Status]			=		@Status
				,[LastupdatedUser]	=		@UpdateUser
				,[LastUpdatedDate]	=		@LastUpdatedDate
		WHERE HotelId = @HotelId
		SELECT @HotelId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[UpdateHotelStatus]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateHotelStatus]

	@HotelId		INT,
	@UpdateUser		INT,
	@Status			BIT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
		@LastUpdatedDate	DATETIME
        
	SET @LastUpdatedDate	=	GETUTCDATE()
		UPDATE dbo.[hotels]
		SET
				 [Status]				=		@Status
				,[LastUpdatedDate]		=		@LastUpdatedDate
				,[LastupdatedUser]		=		@UpdateUser
		WHERE HotelId = @HotelId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[UpdateRoom]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRoom]

	@RoomId					INT,
	@RoomName				VARCHAR(255),
	@RoomDescription		VARCHAR(255),
	@Status					DECIMAL(18),
	@UrlImage				VARCHAR(MAX),
	@Value					DECIMAL,
	@HotelId				INT,
	@RoomTypeId				INT,
	@UpdateUser				INT,
	@Location				VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
	@LastUpdatedDate	DATETIME
      
	SET @LastUpdatedDate=GETUTCDATE()

		UPDATE  dbo.[rooms]
		SET
				   [RoomName]			 = @RoomName
				  ,[RoomDescription]	 = @RoomDescription
				  ,[Status]				 = @Status
				  ,[Value]				 = @Value
				  ,[HotelId]			 = @HotelId
				  ,[RoomTypeId]			 = @RoomTypeId
				  ,[LastupdatedUser]	 = @UpdateUser
				  ,[LastUpdatedDate]	 = @LastUpdatedDate
				  ,[Location]			 = @Location
				  ,[UrlImage]			 = @UrlImage
		WHERE RoomId = @RoomId
		SELECT @RoomId
END	
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[UpdateRoomStatus]    Script Date: 27/04/2023 2:34:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRoomStatus]

	@RoomId			INT,
	@UpdateUser		INT,
	@Status			BIT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	DECLARE
		@LastUpdatedDate	DATETIME
        
	SET @LastUpdatedDate	=	GETUTCDATE()
		UPDATE dbo.[rooms]
		SET
				 [Status]				=		@Status
				,[LastUpdatedDate]		=		@LastUpdatedDate
				,[LastupdatedUser]		=		@UpdateUser
		WHERE RoomId = @RoomId
END	
COMMIT
GO
USE [traveltest]
GO
SET IDENTITY_INSERT [dbo].[parametricDocumentType] ON 
GO
INSERT [dbo].[parametricDocumentType] ([DocumentTypeId], [Acronym], [Description], [Status]) VALUES (1, N'TI', N'identity card', 1)
GO
INSERT [dbo].[parametricDocumentType] ([DocumentTypeId], [Acronym], [Description], [Status]) VALUES (2, N'CC', N'Citizenship card', 1)
GO
INSERT [dbo].[parametricDocumentType] ([DocumentTypeId], [Acronym], [Description], [Status]) VALUES (3, N'CE', N'foreigner card', 1)
GO
INSERT [dbo].[parametricDocumentType] ([DocumentTypeId], [Acronym], [Description], [Status]) VALUES (4, N'PS', N'passport', 1)
GO
SET IDENTITY_INSERT [dbo].[parametricDocumentType] OFF
GO
SET IDENTITY_INSERT [dbo].[parametricRoomType] ON 
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (1, N'Single room', 1, 1)
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (2, N'Double room', 2, 1)
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (3, N'Triple room', 3, 1)
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (4, N'Quadruple room', 4, 1)
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (5, N'Connecting rooms', 8, 1)
GO
INSERT [dbo].[parametricRoomType] ([RoomTypeId], [RoomTypeName], [MaxPeople], [Status]) VALUES (6, N'Deluxe', 10, 1)
GO
SET IDENTITY_INSERT [dbo].[parametricRoomType] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([UserId], [UserNames], [UserEmailAddress], [Status], [DeletedAt], [UserName]) VALUES (1, N'felipe', N'felipe@123.com', 1, NULL, N'feliguz28')
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO