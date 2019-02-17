--Vista de la Tabla Clasificacion
CREATE VIEW VIEW_Clasificacion
AS
	SELECT (Clasificacion.idClasificacion) AS 'ID', (Clasificacion.nombre) AS 'Clasificación',
	(Clasificacion.descripcion) AS 'Descripción' FROM Clasificacion;
GO

--Vista de la Tabla Genero
CREATE VIEW VIEW_Genero
AS
	SELECT (Genero.idGenero) AS 'ID',(Genero.nombre) AS 'Género' FROM Genero
GO

--Vista de la Tabla Productora
CREATE VIEW VIEW_Productora
AS
	SELECT (Productora.idProductora) AS 'ID', (Productora.nombre) AS 'Productora' FROM Productora
GO

--Vista de la Tabla Director
CREATE VIEW VIEW_Director
AS
	SELECT (Director.idDirector) AS 'ID', (Director.nombreCompleto) AS 'Director' FROM Director 
GO

--Vista de la Tabla Película
CREATE VIEW VIEW_Pelicula
AS
	SELECT (Pelicula.idPelicula) AS 'ID', (Clasificacion.nombre) AS 'Clasificación', (Clasificacion.descripcion) AS 'Descripción', 
	(Genero.nombre) AS 'Género', (Productora.nombre) AS 'Productora',(Director.nombreCompleto) AS 'Nombre del Director',
	(Pelicula.nombre) AS 'Nombre de la Película', (Pelicula.estreno) AS 'Año de Estreno', (Pelicula.duracion) AS 'Duración', 
	FORMAT(Pelicula.precio, 'C', 'es-GT') AS 'Precio', (Pelicula.vendido) AS 'Vendido' FROM Pelicula
		INNER JOIN Clasificacion ON Pelicula.idClasificacion = Clasificacion.idClasificacion
		INNER JOIN Genero ON Pelicula.idGenero = Genero.idGenero
		INNER JOIN Productora ON Pelicula.idProductora = Productora.idProductora
		INNER JOIN Director ON Pelicula.idDirector = Director.idDirector
GO

--Vista de la Tabla Sala
CREATE VIEW VIEW_Sala
AS
	SELECT (Sala.idSala) AS 'ID', (Sala.nombre) AS 'Sala', (Sala.descripcion) AS 'Descripción'
		FROM Sala
GO

--Vista de la Tabla Asientos
CREATE VIEW VIEW_Asientos
AS
	SELECT (Asientos.idAsientos) AS 'ID', (Asientos.nombre) AS 'Asiento' FROM Asientos
GO

--Vista de la Tabla Tipo de Boletos
CREATE VIEW VIEW_TipoBoleto
AS
	SELECT (TipoBoleto.idTipoBoleto) AS 'ID', (TipoBoleto.nombre) AS 'Tipo de Boleto',
	FORMAT(TipoBoleto.precio, 'C', 'es-GT') AS 'Precio' FROM TipoBoleto
GO


--Vista de la Tabla Boletos
CREATE VIEW VIEW_Boleto
AS
	SELECT (Boleto.idBoleto) AS 'ID', (Sala.nombre) AS 'Sala', (Sala.descripcion) AS 'Descripción',
	(Asientos.nombre) AS 'Asiento', (Pelicula.nombre) AS 'Nombre de Película', (Clasificacion.nombre) AS 'Clasificación',
	(TipoBoleto.nombre) AS 'Tipo de Boleto', FORMAT(TipoBoleto.precio, 'C', 'es-GT') AS 'Precio' FROM Boleto
		INNER JOIN Sala ON Boleto.idSala = Sala.idSala
		INNER JOIN Asientos ON Boleto.idAsientos = Asientos.idAsientos
		INNER JOIN Pelicula ON Boleto.idPelicula = Pelicula.idPelicula
		INNER JOIN Clasificacion ON Pelicula.idClasificacion = Clasificacion.idClasificacion
		INNER JOIN TipoBoleto ON Boleto.idTipoBoleto = TipoBoleto.idTipoBoleto
GO

--Vista de la Tabla Combos
CREATE VIEW VIEW_Combos
AS
	SELECT (Combos.idCombos) AS 'ID', (Combos.nombre) AS 'Nombre', (Combos.descripcion) AS 'Descripción',
	FORMAT(Combos.precio, 'C', 'es-GT') AS 'Precio' FROM Combos
GO

--Vista de la Tabla Clientes
CREATE VIEW VIEW_Clientes
AS
	SELECT (Clientes.idClientes) AS 'ID', (Clientes.nit) AS 'NIT', (Clientes.nombreCompleto) AS 'Nombre Completo',
	(Clientes.direccion) AS 'Dirección', (Clientes.telefono) AS 'No. de Teléfono' FROM Clientes
GO

--Vista de la Tabla Factura
CREATE VIEW VIEW_Factura
AS
	SELECT (Factura.idFactura) AS 'ID', (Clientes.nit) AS 'NIT', (Clientes.nombreCompleto) AS 'Nombre Completo',
	(Factura.fechaHora) AS 'Fecha y Hora', FORMAT(Factura.total, 'C', 'es-GT') AS 'Total' FROM Factura
	INNER JOIN Clientes ON Factura.idClientes = Clientes.idClientes
GO

--Vista de la Tabla Detalle de Factura
CREATE VIEW VIEW_DetalleFactura
AS
	SELECT (DetalleFactura.idDetalleFactura) AS 'ID', (Pelicula.nombre) AS 'Nombre Pelicula', (Pelicula.precio) AS 'Precio de Película',
	(Combos.nombre) AS 'Combo',(Combos.descripcion) AS 'Descripcion del Combo', (Combos.precio) AS 'Precio del Combo'
	FROM DetalleFactura
	INNER JOIN Pelicula ON DetalleFactura.idPelicula = Pelicula.idPelicula
	INNER JOIN Combos ON DetalleFactura.idCombos = Combos.idCombos
GO
