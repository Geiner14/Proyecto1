USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCarri]    Script Date: 8/18/2022 2:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteCarri] 	
@ID INT

AS
BEGIN
	DELETE FROM Carrito WHERE @ID = ID
END
