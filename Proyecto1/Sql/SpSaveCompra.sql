USE [Proyecto1]
GO
/****** Object:  StoredProcedure [dbo].[spSaveCompra]    Script Date: 8/18/2022 2:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spSaveCompra] 	
@CodigoLibro int,
@Correo varchar(200),
@Cantidadlibros int,
@Fechacompra varchar(200),
@Fechallegadacompra varchar(200),
@MontoIVA int,
@MontosinIVA int,
@Montofinal int,
@MontoUnidad int,
@Nombre varchar(200),
@Pais varchar(200),
@Estado varchar(200),
@Direccionentrega varchar(200),
@Codigopostal varchar(200),
@Numerotarjeta varchar(200),
@Fechaexpiracion varchar(200),
@Codigoseguridad varchar(200)

AS
BEGIN
	INSERT INTO [dbo].[Compras]
           ([CodigoLibro]
           ,[Correo]
           ,[Cantidadlibros]
           ,[Fechacompra]
           ,[Fechallegadacompra]
           ,[MontoIVA]
           ,[MontosinIVA]
           ,[Montofinal]
           ,[MontoUnidad] 
		   ,[Nombre]
           ,[Pais]
           ,[Estado]
           ,[Direccionentrega]
           ,[Codigopostal]
           ,[Numerotarjeta]
           ,[Fechaexpiracion]
           ,[Codigoseguridad])
     VALUES
           (@CodigoLibro
           ,@Correo
           ,@Cantidadlibros
           ,@Fechacompra 
           ,@Fechallegadacompra
           ,@MontoIVA
           ,@MontosinIVA
           ,@Montofinal
           ,@MontoUnidad
		   ,@Nombre 
		   ,@Pais 
		   ,@Estado 
		   ,@Direccionentrega 
		   ,@Codigopostal 
		   ,@Numerotarjeta 
		   ,@Fechaexpiracion 
		   ,@Codigoseguridad)
END
