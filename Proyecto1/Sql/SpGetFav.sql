USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spGetFav]    Script Date: 8/18/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetFav] 
@Email varchar(50)
AS
BEGIN
	SELECT
	j.Autor,
	j.Fechapublicacion,
	j.Precio,
	j.Foto,
	j.ISBN,
	j.Titulo
  FROM Favoritos a
  INNER JOIN Books j
  ON j.Id = a.LibroID 
  WHERE Email = @Email
END
