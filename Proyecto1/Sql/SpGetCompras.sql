USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spGetCompras]    Script Date: 8/18/2022 2:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetCompras] 
@Correo varchar(50)
AS
BEGIN
	SELECT 
	a.ID,
	a.CodigoLibro,
	a.Correo,
	a.Cantidadlibros,
	a.FechaCompra,
	a.Fechallegadacompra,
	a.MontoIVA,
	a.MontosinIVA,
	a.Montofinal,
	a.MontoUnidad,
	a.Nombre,
	a.Pais,
	a.Estado,
	a.Direccionentrega,
	a.Codigopostal,
	j.Foto,
	j.Titulo
  FROM Compras a
  INNER JOIN Books j
  ON j.Id = a.CodigoLibro 
	WHERE a.Correo=@Correo
END
