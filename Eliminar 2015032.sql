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