USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spSaveCarri]    Script Date: 8/18/2022 2:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spSaveCarri]
@LibroID int,
@Email Varchar(50)

AS
BEGIN
	INSERT INTO [dbo].[Carrito]
           ([LibroID]
		   ,[Email])

     VALUES
           (@LibroID
		   ,@Email)

END
