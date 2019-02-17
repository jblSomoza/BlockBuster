--Script DDL Proyecto 

--Creando Base de Datos llamado FilmTime
CREATE DATABASE DBBlockBuster2017090;
GO

--Usar Base de Datos llamado FilmTime
USE DBBlockBuster2017090;
GO

--Creando Tabla Clasificación para la Pelicula
CREATE TABLE Clasificacion(
	idClasificacion SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	descripcion VARCHAR(255) NOT NULL,
	PRIMARY KEY (idClasificacion)
);
GO

--Creando Tabla de Generos de Peliculas
CREATE TABLE Genero(
	idGenero SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	PRIMARY KEY (idGenero)
);
GO

--Creando Tabla de la Productora de la Pelicula
CREATE TABLE Productora(
	idProductora INT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	PRIMARY KEY (idProductora)
);
GO

--Creando Tabla del Director de la Pelicula
CREATE TABLE Director(
	idDirector INT IDENTITY(1,1) NOT NULL,
	nombreCompleto VARCHAR(255) NOT NULL,
	PRIMARY KEY (idDirector)
);
GO

--Creando la Tabla Pelicula
CREATE TABLE Pelicula(
	idPelicula INT IDENTITY(1,1) NOT NULL,
	idClasificacion SMALLINT NOT NULL,
	idGenero SMALLINT NOT NULL,
	idProductora INT NOT NULL,
	idDirector INT NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	estreno INT NOT NULL,
	duracion VARCHAR(255) NOT NULL,
	precio MONEY,
	vendido TINYINT NOT NULL,
	PRIMARY KEY (idPelicula),
	FOREIGN KEY (idClasificacion) REFERENCES Clasificacion(idClasificacion) ON DELETE CASCADE,
	FOREIGN KEY (idGenero) REFERENCES Genero(idGenero) ON DELETE CASCADE,
	FOREIGN KEY (idProductora) REFERENCES Productora(idProductora) ON DELETE CASCADE,
	FOREIGN KEY (idDirector) REFERENCES Director(idDirector) ON DELETE CASCADE
);
GO

--Creando la Tabla Sala
CREATE TABLE Sala(
	idSala SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	descripcion VARCHAR(255) NOT NULL,
	PRIMARY KEY(idSala)
);
GO

--Creando la Tabla Asientos
CREATE TABLE Asientos(
	idAsientos SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	PRIMARY KEY(idAsientos)
);
GO

--Creando la Tabla Tipo de Boletos
CREATE TABLE TipoBoleto(
	idTipoBoleto SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	precio MONEY,
	PRIMARY KEY(idTipoBoleto),
);
GO

--Creando la Tabla Boletos
CREATE TABLE Boleto(
	idBoleto BIGINT IDENTITY(1,1) NOT NULL,
	idSala SMALLINT NOT NULL,
	idAsientos SMALLINT NOT NULL,
	idPelicula INT NOT NULL,
	idTipoBoleto SMALLINT NOT NULL,
	vendido TINYINT NOT NULL,
	PRIMARY KEY(idBoleto),
	FOREIGN KEY(idSala) REFERENCES Sala(idSala),
	FOREIGN KEY(idAsientos) REFERENCES Asientos(idAsientos)  ON DELETE CASCADE,
	FOREIGN KEY(idPelicula) REFERENCES Pelicula(idPelicula) ON DELETE CASCADE,
	FOREIGN KEY(idTipoBoleto) REFERENCES TipoBoleto(idTipoBoleto) ON DELETE CASCADE
);
GO

--Creando la Tabla Combos
CREATE TABLE Combos(
	idCombos SMALLINT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	descripcion VARCHAR(255) NOT NULL,
	precio MONEY
	PRIMARY KEY(idCombos)
);
GO

--Creando la Tabla de Clientes
CREATE TABLE Clientes(
	idClientes BIGINT IDENTITY(1,1) NOT NULL,
	nit INT NOT NULL,
	nombreCompleto VARCHAR(255) NOT NULL,
	direccion VARCHAR(255) NULL,
	telefono INT NULL,
	PRIMARY KEY(idClientes)
);
GO

--Creando la Tabla de Factura
CREATE TABLE Factura(
	idFactura BIGINT IDENTITY(1,1) NOT NULL,
	idClientes BIGINT NOT NULL,
	fechaHora DATETIME,
	total MONEY
	PRIMARY KEY(idFactura),
	FOREIGN KEY(idClientes) REFERENCES Clientes(idClientes)  ON DELETE CASCADE
);
GO

--Creando la Tabla de Detalle Factura
CREATE TABLE DetalleFactura(
	idDetalleFactura BIGINT IDENTITY(1,1) NOT NULL,
	idFactura BIGINT NOT NULL,
	idPelicula INT NULL,
	idCombos SMALLINT NULL,
	idBoleto BIGINT NULL,
	FOREIGN KEY(idFactura) REFERENCES Factura(idFactura) ON DELETE CASCADE,
	FOREIGN KEY(idPelicula) REFERENCES Pelicula(idPelicula) ON DELETE CASCADE,
	FOREIGN KEY(idCombos) REFERENCES Combos(idCombos) ON DELETE CASCADE,
	FOREIGN KEY(idBoleto) REFERENCES Boleto(idBoleto)
);
GO
/*______________________________________________________________________________________________________________*/

--Procedimiento Almacenado para Insertar Datos en la Tabla Clasificacion
CREATE PROCEDURE SP_InsertarClasificacion
	@nombre VARCHAR(255), @descripcion VARCHAR(255)
AS
	BEGIN
		INSERT INTO Clasificacion(nombre, descripcion)
			VALUES (@nombre, @descripcion)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Genero
CREATE PROCEDURE SP_InsertarGenero
	@nombre VARCHAR(255)
AS
	BEGIN
		INSERT INTO Genero(nombre)
			VALUES(@nombre)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Produtora
CREATE PROCEDURE SP_InsertarProductora
	@nombre VARCHAR(255)
AS
	BEGIN
		INSERT INTO Productora(nombre)
			VALUES(@nombre)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Director
CREATE PROCEDURE SP_InsertarDirector
	@nombreCompleto VARCHAR(255)
AS
	BEGIN
		INSERT INTO Director(nombreCompleto)
			VALUES(@nombreCompleto)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Pelicula
CREATE PROCEDURE SP_InsertarPelicula
	@idClasificacion SMALLINT, @idGenero SMALLINT, @idProductora INT, @idDirector INT,
		@nombre VARCHAR(255), @estreno INT, @duracion VARCHAR(255), @precio MONEY, @vendido TINYINT
AS
	BEGIN
		INSERT INTO Pelicula(idClasificacion, idGenero, idProductora, idDirector, 
		nombre, estreno, duracion, precio, vendido)
			VALUES(@idClasificacion, @idGenero, @idProductora, @idDirector,
			@nombre, @estreno, @duracion, @precio, @vendido)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Sala
CREATE PROCEDURE SP_InsertarSala
	@nombre VARCHAR(255), @descripcion VARCHAR(255)
AS
	BEGIN
		INSERT INTO Sala(nombre, descripcion)
			VALUES(@nombre, @descripcion)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Asientos
CREATE PROCEDURE SP_InsertarAsientos
	@nombre VARCHAR(255)
AS
	BEGIN
		INSERT INTO Asientos(nombre)
			VALUES(@nombre)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Tipo Boleto
CREATE PROCEDURE SP_InsertarTipoBoleto
	@nombre VARCHAR(255), @precio MONEY
AS
	BEGIN
		INSERT INTO TipoBoleto(nombre, precio)
			VALUES(@nombre, @precio)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Boletos
CREATE PROCEDURE SP_InsertarBoleto
	@idSala SMALLINT, @idAsientos SMALLINT, @idPelicula INT, @idTipoBoleto SMALLINT, @vendido TINYINT
AS
	BEGIN
		INSERT INTO Boleto(idSala, idAsientos, idPelicula, idTipoBoleto, vendido)
			VALUES(@idSala, @idAsientos, @idPelicula, @idTipoBoleto, @vendido)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Combos
CREATE PROCEDURE SP_InsertarCombos
	@nombre VARCHAR(255), @descripcion VARCHAR(255), @precio MONEY
AS
	BEGIN
		INSERT INTO Combos(nombre, descripcion, precio)
			VALUES(@nombre, @descripcion, @precio)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Clientes
CREATE PROCEDURE SP_InsertarClientes
	@nit INT, @nombreCompleto VARCHAR (255), @direccion VARCHAR(255), @telefono INT
AS
	BEGIN
		INSERT INTO Clientes(nit, nombreCompleto, direccion, telefono)
			VALUES(@nit, @nombreCompleto, @direccion, @telefono)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Factura
CREATE PROCEDURE SP_InsertarFactura
	@idClientes BIGINT, @total MONEY
AS
	BEGIN
		INSERT INTO Factura(idClientes, fechaHora, total)
			VALUES(@idClientes, CURRENT_TIMESTAMP, @total)
	END
GO

--Procedimiento Almacenado para Insertar Datos en la Tabla Detalle Factura
CREATE PROCEDURE SP_InsertarDetalleFactura
	@idFactura BIGINT, @idPelicula INT, @idCombos SMALLINT, @idBoleto BIGINT
AS
	BEGIN
		INSERT INTO DetalleFactura(idFactura, idPelicula, idCombos, idBoleto)
			VALUES(@idFactura, @idPelicula, @idCombos, @idBoleto)
	END
GO

/*______________________________________________________________________________________________________________*/

--Procedimiento Almacenado para Actualizar Datos en la Tabla Clasificacion
CREATE PROCEDURE SP_ActualizarClasificacion
	@idClasificacion SMALLINT, @nombre VARCHAR(255), @descripcion VARCHAR(255)
AS
	BEGIN
		UPDATE Clasificacion SET nombre = @nombre, descripcion = @descripcion
			WHERE idClasificacion = @idClasificacion
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Genero
CREATE PROCEDURE SP_ActualizarGenero
	@idGenero SMALLINT, @nombre VARCHAR(255)
AS
	BEGIN
		UPDATE Genero SET nombre = @nombre
			WHERE idGenero = @idGenero
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Productora
CREATE PROCEDURE SP_ActualizarProductora
	@idProductora INT, @nombre VARCHAR(255)
AS
	BEGIN
		UPDATE Productora SET nombre = @nombre
		WHERE idProductora = @idProductora
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Director
CREATE PROCEDURE SP_ActualizarDirector
	@idDirector INT, @nombreCompleto VARCHAR(255)
AS
	BEGIN
		UPDATE Director SET nombreCompleto = @nombreCompleto
			WHERE idDirector = @idDirector
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Pelicula
CREATE PROCEDURE SP_ActualizarPelicula
	@idPelicula INT, @idClasificacion SMALLINT, @idGenero SMALLINT, @idProductora INT, @idDirector INT,
	@nombre VARCHAR(255), @estreno INT, @duracion VARCHAR(255), @precio MONEY, @vendido TINYINT
AS
	BEGIN
		UPDATE Pelicula SET idClasificacion = @idClasificacion, idGenero = @idGenero, idProductora = @idProductora,
		idDirector = @idDirector, nombre = @nombre, estreno = @estreno, duracion =@duracion,
		precio = @precio, vendido = @vendido
			WHERE idPelicula = @idPelicula
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Sala
CREATE PROCEDURE SP_ActualizarSala
	@idSala SMALLINT, @nombre VARCHAR(255), @descripcion VARCHAR(255)
AS
	BEGIN
		UPDATE Sala SET nombre = @nombre, descripcion = @descripcion
			WHERE idSala = @idSala
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Asientos
CREATE PROCEDURE SP_ActualizarAsientos
	@idAsientos SMALLINT, @nombre VARCHAR(255)
AS
	BEGIN
		UPDATE Asientos SET nombre = @nombre
			WHERE idAsientos = @idAsientos
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Tipo de Boletos
CREATE PROCEDURE SP_ActualizarTipoBoleto
	@idTipoBoleto SMALLINT, @nombre VARCHAR(255), @precio MONEY
AS
	BEGIN
		UPDATE TipoBoleto SET nombre = @nombre, precio = @precio
			WHERE idTipoBoleto = @idTipoBoleto
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Boletos
CREATE PROCEDURE SP_ActualizarBoleto
	@idBoleto BIGINT, @idSala SMALLINT, @idAsientos SMALLINT, @idPelicula INT, @idTipoBoleto SMALLINT, @vendido TINYINT
AS
	BEGIN
		UPDATE Boleto SET idSala = @idSala, idAsientos = @idAsientos, idPelicula = @idPelicula,
		idTipoBoleto = @idTipoBoleto, vendido = @vendido
			WHERE idBoleto = @idBoleto
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Combos
CREATE PROCEDURE SP_ActualizarCombos
	@idCombos SMALLINT, @nombre VARCHAR(255), @descripcion VARCHAR(255), @precio MONEY
AS
	BEGIN
		UPDATE Combos SET nombre = @nombre, descripcion = @descripcion, precio = @precio
			WHERE idCombos = @idCombos
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Clientes
CREATE PROCEDURE SP_ActualizarClientes
	@idClientes BIGINT, @nit INT, @nombreCompleto VARCHAR (255), @direccion VARCHAR(255), @telefono INT
AS
	BEGIN
		UPDATE Clientes SET nit = @nit, nombreCompleto = @nombreCompleto,
		direccion = @direccion, telefono = @telefono
			WHERE idClientes = @idClientes
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Factura
CREATE PROCEDURE SP_ActualizarFactura
	@idFactura BIGINT, @idClientes BIGINT, @fechaHora DATETIME, @total MONEY
AS
	BEGIN
		UPDATE Factura SET idClientes = @idClientes, fechaHora =@fechaHora, total = @total
			WHERE idFactura = @idFactura
	END
GO

--Procedimiento Almacenado para Actualizar Datos en la Tabla Detalle de Factura
CREATE PROCEDURE SP_ActualizarDetalleFactura
	@idDetalleFactura BIGINT, @idFactura BIGINT, @idPelicula INT, @idCombos SMALLINT, @idBoleto BIGINT
AS
	BEGIN
		UPDATE DetalleFactura SET idFactura = @idFactura, idPelicula = @idPelicula,
		idCombos = @idCombos, idBoleto = @idBoleto
			WHERE idDetalleFactura = @idDetalleFactura
	END
GO

/*______________________________________________________________________________________________________________*/

--Procedimiento Almacenado Para Eliminar la Tabla Clasificacion por ID
CREATE PROCEDURE SP_EliminarClasificacion
	@idClasificacion SMALLINT
AS 
	BEGIN
		DELETE FROM Clasificacion WHERE idClasificacion = @idClasificacion
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Genero por ID
CREATE PROCEDURE SP_EliminarGenero
	@idGenero SMALLINT
AS 
	BEGIN
		DELETE FROM Genero WHERE idGenero = @idGenero
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Productora por ID
CREATE PROCEDURE SP_EliminarProductora
	@idProductora INT
AS 
	BEGIN
		DELETE FROM Productora WHERE idProductora = @idProductora
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Director por ID
CREATE PROCEDURE SP_EliminarDirector
	@idDirector INT
AS 
	BEGIN
		DELETE FROM Director WHERE idDirector = @idDirector
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Pelicula por ID
CREATE PROCEDURE SP_EliminarPelicula
	@idPelicula INT
AS 
	BEGIN
		DELETE FROM Pelicula WHERE idPelicula = @idPelicula
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Sala por ID
CREATE PROCEDURE SP_EliminarSala
	@idSala INT
AS 
	BEGIN
		DELETE FROM Sala WHERE idSala = @idSala
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Asientos por ID
CREATE PROCEDURE SP_EliminarAsientos
	@idAsientos INT
AS 
	BEGIN
		DELETE FROM Asientos WHERE idAsientos = @idAsientos
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Tipo de Boleto por ID
CREATE PROCEDURE SP_EliminarTipoBoleto
	@idTipoBoleto SMALLINT
AS 
	BEGIN
		DELETE FROM TipoBoleto WHERE idTipoBoleto = @idTipoBoleto
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Boleto por ID
CREATE PROCEDURE SP_EliminarBoleto
	@idBoleto BIGINT
AS 
	BEGIN
		DELETE FROM Boleto WHERE idBoleto = @idBoleto
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Combos por ID
CREATE PROCEDURE SP_EliminarCombos
	@idCombos SMALLINT
AS 
	BEGIN
		DELETE FROM Combos WHERE idCombos = @idCombos
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Clientes por ID
CREATE PROCEDURE SP_EliminarClientes
	@idClientes BIGINT
AS 
	BEGIN
		DELETE FROM Clientes WHERE idClientes = @idClientes
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Factura por ID
CREATE PROCEDURE SP_EliminarFactura
	@idFactura BIGINT
AS 
	BEGIN
		DELETE FROM Factura WHERE idFactura = @idFactura
	END
GO

--Procedimiento Almacenado Para Eliminar la Tabla Detalle de Factura por ID
CREATE PROCEDURE SP_EliminarDetalleFactura
	@idDetalleFactura BIGINT
AS 
	BEGIN
		DELETE FROM DetalleFactura WHERE idDetalleFactura = @idDetalleFactura
	END
GO

--Procedimiento Almacenado Para Listar la Tabla Productora ordenada por idProductora
CREATE PROCEDURE SP_ListarProductora
AS
	BEGIN
		select *from Productora 
	END
GO

CREATE PROCEDURE SP_BuscarProductora @idProductora int
AS
	BEGIN
		select *from Productora where idProductora = @idProductora
	END
go