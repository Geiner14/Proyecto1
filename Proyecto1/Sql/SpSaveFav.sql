USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spSaveFav]    Script Date: 8/18/2022 2:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spSaveFav]
@LibroID int,
@Email Varchar(50)

AS
BEGIN
	INSERT INTO [dbo].[Favoritos]
           ([LibroID]
		   ,[Email])

     VALUES
           (@LibroID
		   ,@Email)

END
