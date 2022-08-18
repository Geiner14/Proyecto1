CREATE TABLE Carrito(
		ID INT IDENTITY(1,1) NOT NULL,
            LibroID int,
            Email varchar(50) 
        
)


CREATE TABLE [dbo].[Compras](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CodigoLibro] [int] NULL,
	[Correo] [varchar](200) NULL,
	[Cantidadlibros] [int] NULL,
	[Fechacompra] [varchar](200) NULL,
	[Fechallegadacompra] [varchar](200) NULL,
	[MontoIVA] [int] NULL,
	[MontosinIVA] [int] NULL,
	[Montofinal] [int] NULL,
	[MontoUnidad] [int] NULL,
	[Nombre] [varchar](200) NULL,
	[Pais] [varchar](200) NULL,
	[Estado] [varchar](200) NULL,
	[Direccionentrega] [varchar](200) NULL,
	[Codigopostal] [varchar](200) NULL,
	[Numerotarjeta] [varchar](200) NULL,
	[Fechaexpiracion] [varchar](200) NULL,
	[Codigoseguridad] [varchar](200) NULL
 )

