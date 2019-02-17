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