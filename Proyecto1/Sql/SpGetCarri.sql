USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spGetCarri]    Script Date: 8/18/2022 2:34:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetCarri] 
@Email varchar(50)
AS
BEGIN
	SELECT
	a.ID,
	a.LibroID,
	a.Email,
	j.Id,
	j.Autor,
	j.Fechapublicacion,
	j.Precio,
	j.Foto,
	j.ISBN,
	j.Titulo
  FROM Carrito a
  INNER JOIN Books j
  ON j.Id = a.LibroID 
  WHERE Email = @Email
END
