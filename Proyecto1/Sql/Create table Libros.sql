	CREATE TABLE Books(
		Id INT,
		[ISBN] VARCHAR(50),
		[Titulo] VARCHAR(50),
		[Autor] VARCHAR(50),
		[FechaPublicacion] VARCHAR(50),
		Precio DECIMAL,
		Foto VARCHAR(50)	
	)

INSERT INTO Books VALUES(1,'2345167628192','Candido','Roberto Dubuc','9 de Agosto del 2008',20,'Images/1.jpg')

INSERT INTO Books VALUES(2,'9786070783029','Vienen cuando hace frío','Carlos Sisí','4 de enero del 2010',25,'Images/2.jpg')

INSERT INTO Books VALUES(3,'9786073807913','Multiverso','Leonardo Patrignani','14 de mayo del 2015',19,'Images/3.jpg')

INSERT INTO Books VALUES(4,'9788408252856','Cujo','Stephen King','25 de noviembre del 2014',30,'Images/4.jpg')
