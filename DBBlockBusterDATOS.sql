--Script DML Proyecto

--Usar Base de Datos llamado FilmTime
USE FilmTime;
GO

/*Insertar Datos en la Tabla Clasificacion
'Clasificacion', 'Descripcion'*/

EXECUTE SP_InsertarClasificacion 'AA','Niños'
EXECUTE SP_InsertarClasificacion 'A','Todo Público'
EXECUTE SP_InsertarClasificacion 'B','Adolescentes +12'
EXECUTE SP_InsertarClasificacion 'B+','Adolescentes +15'
EXECUTE SP_InsertarClasificacion 'C','Adultos'
GO

/*Insertar Datos en la Tabla Genero
'Nombre del Genero'*/

EXECUTE SP_InsertarGenero 'Comedia'
EXECUTE SP_InsertarGenero 'Acción'
EXECUTE SP_InsertarGenero 'Aventura'
EXECUTE SP_InsertarGenero 'Terror'
EXECUTE SP_InsertarGenero 'Ciencia Ficción'
EXECUTE SP_InsertarGenero 'Romántico'
EXECUTE SP_InsertarGenero 'Musical'
EXECUTE SP_InsertarGenero 'Melodrama'
EXECUTE SP_InsertarGenero 'Catástrofe'
EXECUTE SP_InsertarGenero 'Suspenso'
EXECUTE SP_InsertarGenero 'Fantasía'
EXECUTE SP_InsertarGenero 'Historico'
EXECUTE SP_InsertarGenero 'Policiaco'
EXECUTE SP_InsertarGenero 'Deportivo'
EXECUTE SP_InsertarGenero 'Bélico'
EXECUTE SP_InsertarGenero 'Documental'
EXECUTE SP_InsertarGenero 'Épico'
GO

/*Insertar Datos en la Tabla Productora
'Nombre de Productora'*/

EXECUTE SP_InsertarProductora 'Columbia Pictures'
EXECUTE SP_InsertarProductora 'Sony Pictures Entertainment'
EXECUTE SP_InsertarProductora '20th Century Fox'
EXECUTE SP_InsertarProductora 'Pixar'
EXECUTE SP_InsertarProductora 'Warner Bros Pictures'
EXECUTE SP_InsertarProductora 'Blue Sky Studios'
EXECUTE SP_InsertarProductora 'Paramount Pictures'
EXECUTE SP_InsertarProductora 'Universal Studios'
EXECUTE SP_InsertarProductora 'Walt Disney Pictures'
EXECUTE SP_InsertarProductora 'WWE Studios'
EXECUTE SP_InsertarProductora 'Dream Works Animation SKG'
EXECUTE SP_InsertarProductora 'Toei Animation'
EXECUTE SP_InsertarProductora 'Lucas Film'
EXECUTE SP_InsertarProductora 'Icon Productions'
EXECUTE SP_InsertarProductora 'Metro Goldwyn Meyer'
EXECUTE SP_InsertarProductora 'Pantelion Films'
EXECUTE SP_InsertarProductora 'Marvel Entertainment'
EXECUTE SP_InsertarProductora 'Épica Producción'
EXECUTE SP_InsertarProductora 'Illumination Entertainment'
EXECUTE SP_InsertarProductora 'Eon Productions'
EXECUTE SP_InsertarProductora 'Lion Gate'
EXECUTE SP_InsertarProductora 'Summit Entertainment'
GO

/*Insertar Datos en la Tabla Director
'Nombre del Director'*/

EXECUTE SP_InsertarDirector 'Tim Miller'
EXECUTE SP_InsertarDirector 'Alejandro Hidalgo'
EXECUTE SP_InsertarDirector 'J. Blakeson'
EXECUTE SP_InsertarDirector 'J.J. Abrams'
EXECUTE SP_InsertarDirector 'Akira Toriyama'
EXECUTE SP_InsertarDirector 'Colin Trevorrow'
EXECUTE SP_InsertarDirector 'Cris Columbus'
EXECUTE SP_InsertarDirector 'Paul Tibbitt'
EXECUTE SP_InsertarDirector 'Jorge Gutiérezz'
EXECUTE SP_InsertarDirector 'Tim Johnson'
EXECUTE SP_InsertarDirector 'Breadley Raymond'
EXECUTE SP_InsertarDirector 'Pierre Coffin'
EXECUTE SP_InsertarDirector 'Steven Spielberg'
EXECUTE SP_InsertarDirector 'Tom Harper'
EXECUTE SP_InsertarDirector 'Grégory Levasseur'
EXECUTE SP_InsertarDirector 'Cristopher McQuarrie'
EXECUTE SP_InsertarDirector 'Sam Mendes'
EXECUTE SP_InsertarDirector 'Nourizadeh Nima'
EXECUTE SP_InsertarDirector 'Alan Taylor'
EXECUTE SP_InsertarDirector 'James Wan'
EXECUTE SP_InsertarDirector 'Joss Whedon'
EXECUTE SP_InsertarDirector 'Peyton Reed'
EXECUTE SP_InsertarDirector 'Robert Schwentke'
EXECUTE SP_InsertarDirector 'Ryan Coogler'
EXECUTE SP_InsertarDirector 'Bryan Singer'
EXECUTE SP_InsertarDirector 'Gareth Edwards'
EXECUTE SP_InsertarDirector 'Cristopher Nolan'
EXECUTE SP_InsertarDirector 'Michael Bay'
EXECUTE SP_InsertarDirector 'Joe Russo'
EXECUTE SP_InsertarDirector 'Robert Stromberg'
EXECUTE SP_InsertarDirector 'Marc Webb'
EXECUTE SP_InsertarDirector 'José Padilla'
EXECUTE SP_InsertarDirector 'Pill Lord'
EXECUTE SP_InsertarDirector 'Etham Spauling'
EXECUTE SP_InsertarDirector 'Ridley Scott'
EXECUTE SP_InsertarDirector 'Carlos Saldaha'
EXECUTE SP_InsertarDirector 'Peter Jackson'
EXECUTE SP_InsertarDirector 'Darren Aronofsky'
EXECUTE SP_InsertarDirector 'Scott Waugh'
GO

/*Insertar Datos en la Tabla Pelicula
[idClasificacion], [idGenero], [idProductora], [idDirector], NombrePelicula, [Año de Estreno], Duracion, [Precio], [Vendido]
(0 = vendido), (1 = no vendido)*/

EXECUTE SP_InsertarPelicula [4], [2], [17], [1], 'Deadpool', [2016], '108 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [5], [18], [2], 'La Casa del Fin de los Tiempos', [2013], '110 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [3], [5], [1], [3], 'La Quinta Ola', [2016], '112 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [13], [4], 'Star Wars: El Despertar de la Fuerza', [2015], '136 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [12], [5], 'Dragon Ball Z: Batalla de los Dioses', [2015], '100 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [12], [5], 'Dragon Ball Z: La Resurección de Freezer', [2015], '95 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [3], [8], [6], 'Jurassic World', [2015], '124 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [1], [2], [7], 'Pixeles', [2015], '105 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [1], [7], [8], 'Bob Esponja: Un Héroe Fuera del Agua', [2015], '93 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [11], [3], [9], 'El Libro de la Vida', [2015], '95 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [3], [11], [10], 'HOME: Hogar Dulce Hogar', [2015], '100 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [11], [8], [11], 'Tinker Bell y la Bestia del Nunca Jamás', [2015], '102 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [3], [19], [12], 'Los Minions', [2015], '91 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [4], [7], [13], 'Poltergeist', [2015], '114 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [4], [7], [14], 'La Mujer de Negro 2: El Ángel de la Muerte', [2015], '98 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [4], [7], [15], 'La Pirámide', [2015], '89 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [2], [20], [16], 'Spectre 007', [2015], '150 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [5], [2], [21], [17], 'American Ultra', [2015], '96 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [2], [7], [18], 'Terminator Genesis', [2015], '126 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [2], [8], [19], 'Rápidos y Furiosos 7', [2015], '137 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [3], [2], [17], [20], 'Los Vengadores: La Era de Ultrón', [2015], '142 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [17], [21], 'Hombre Hormiga', [2015], '132 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [22], [22], 'Insurgente', [2015], '119 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [5], [2], [1], [23], 'Chappie', [2015], '120 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [5], [24], 'Creed: La Leyenda de Rocky', [2015], '133 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [17], [25], 'X-Men: Días del Futuro Pasado', [2014], '131 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [5], [5], [26], 'Goodzilla', [2014], '123 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [5], [7], [27], 'Interstellar', [2014], '169 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [7], [28], 'Transformers: La Era de la Extinción', [2014], '165 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [17], [29], 'Capitán América', [2014], '135 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [3], [11], [9], [30], 'Maléfica', [2014], '97 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [17], [31], 'The Amazing Spider-Man: El Poder de Electro', [2014], '142 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [15], [32], 'Robocop', [2014], '121 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [1], [5], [33], 'The Lego Movie', [2014], '100 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [2], [2], [5], [34], 'El Hijo de Batman', [2014], '75 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [5], [12], [3], [35], 'Éxodo: Dioses y Reyes', [2014], '150 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [1], [3], [6], [36], 'Río 2', [2014], '102 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [11], [15], [37], 'El Hobbit: La Batalla de los Cinco Ejercitos', [2014], '144 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [5], [17], [7], [38], 'Noé', [2014], '139 minutos', [25], [1]
EXECUTE SP_InsertarPelicula [4], [2], [11], [39], 'Need For Speed', [2014], '130 minutos', [25], [1]
GO

/*Insertar Datos en la Tabla Sala
'Nombre de la Sala', 'Descripcion'*/

EXECUTE SP_InsertarSala 'Sala A', 'Efectos 2D'
EXECUTE SP_InsertarSala 'Sala B', 'Efectos 3D'
EXECUTE SP_InsertarSala 'Sala C', 'Efectos 3D'
EXECUTE SP_InsertarSala 'Sala D', 'Efectos 3D'
EXECUTE SP_InsertarSala 'Sala E', 'Efectos 4DX'
GO

/*Insertar Datos en la Tabla Asientos
'Nombre del Asiento'*/

EXECUTE SP_InsertarAsientos 'A1'
EXECUTE SP_InsertarAsientos 'A2'
EXECUTE SP_InsertarAsientos 'A3'
EXECUTE SP_InsertarAsientos 'A4'
EXECUTE SP_InsertarAsientos 'A5'
EXECUTE SP_InsertarAsientos 'A6'
EXECUTE SP_InsertarAsientos 'A7'
EXECUTE SP_InsertarAsientos 'A8'
EXECUTE SP_InsertarAsientos 'A9'
EXECUTE SP_InsertarAsientos 'A10'

EXECUTE SP_InsertarAsientos 'B1'
EXECUTE SP_InsertarAsientos 'B2'
EXECUTE SP_InsertarAsientos 'B3'
EXECUTE SP_InsertarAsientos 'B4'
EXECUTE SP_InsertarAsientos 'B5'
EXECUTE SP_InsertarAsientos 'B6'
EXECUTE SP_InsertarAsientos 'B7'
EXECUTE SP_InsertarAsientos 'B8'
EXECUTE SP_InsertarAsientos 'B9'
EXECUTE SP_InsertarAsientos 'B10'

EXECUTE SP_InsertarAsientos 'C1'
EXECUTE SP_InsertarAsientos 'C2'
EXECUTE SP_InsertarAsientos 'C3'
EXECUTE SP_InsertarAsientos 'C4'
EXECUTE SP_InsertarAsientos 'C5'
EXECUTE SP_InsertarAsientos 'C6'
EXECUTE SP_InsertarAsientos 'C7'
EXECUTE SP_InsertarAsientos 'C8'
EXECUTE SP_InsertarAsientos 'C9'
EXECUTE SP_InsertarAsientos 'C10'

EXECUTE SP_InsertarAsientos 'D1'
EXECUTE SP_InsertarAsientos 'D2'
EXECUTE SP_InsertarAsientos 'D3'
EXECUTE SP_InsertarAsientos 'D4'
EXECUTE SP_InsertarAsientos 'D5'
EXECUTE SP_InsertarAsientos 'D6'
EXECUTE SP_InsertarAsientos 'D7'
EXECUTE SP_InsertarAsientos 'D8'
EXECUTE SP_InsertarAsientos 'D9'
EXECUTE SP_InsertarAsientos 'D10'

EXECUTE SP_InsertarAsientos 'E1'
EXECUTE SP_InsertarAsientos 'E2'
EXECUTE SP_InsertarAsientos 'E3'
EXECUTE SP_InsertarAsientos 'E4'
EXECUTE SP_InsertarAsientos 'E5'
EXECUTE SP_InsertarAsientos 'E6'
EXECUTE SP_InsertarAsientos 'E7'
EXECUTE SP_InsertarAsientos 'E8'
EXECUTE SP_InsertarAsientos 'E9'
EXECUTE SP_InsertarAsientos 'E10'
GO

/*Insertar Datos en la Tabla Tipo de Boletos
'Nombre del Tipo' [Precio]*/

EXECUTE SP_InsertarTipoBoleto 'Niños (3-11) 2D', [20]
EXECUTE SP_InsertarTipoBoleto 'Niños (3-11) 3D', [25]
EXECUTE SP_InsertarTipoBoleto 'Niños (3-11) 4DX', [30]
EXECUTE SP_InsertarTipoBoleto 'Adolescentes (12-18) 2D', [25]
EXECUTE SP_InsertarTipoBoleto 'Adolescentes (12-18) 3D', [30]
EXECUTE SP_InsertarTipoBoleto 'Adolescentes (12-18) 4DX', [35]
EXECUTE SP_InsertarTipoBoleto 'Adultos 2D', [30]
EXECUTE SP_InsertarTipoBoleto 'Adultos 3D', [35]
EXECUTE SP_InsertarTipoBoleto 'Adultos 4DX', [40]
GO

/*Insertar Datos en la Tabla Boletos
[idSala], [idAsiento], [idPelicula], [idTipoBoleto], [Vendido]
(0 = Vendido)(1 = No Vendido)*/

EXECUTE SP_InsertarBoleto [1], [1], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [2], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [3], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [4], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [5], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [6], [1], [4], [1]
EXECUTE SP_InsertarBoleto [1], [7], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [8], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [9], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [10], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [11], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [12], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [13], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [14], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [15], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [16], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [17], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [18], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [19], [1], [], [1]
EXECUTE SP_InsertarBoleto [1], [20], [1], [], [1]
EXECUTE SP_InsertarBoleto [2], [1], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [2], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [3], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [4], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [5], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [6], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [7], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [8], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [9], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [10], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [11], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [12], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [13], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [14], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [15], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [16], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [17], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [18], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [19], [2], [], [1]
EXECUTE SP_InsertarBoleto [2], [20], [2], [], [1]
EXECUTE SP_InsertarBoleto [3], [1], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [2], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [3], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [4], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [5], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [6], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [7], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [8], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [9], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [10], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [11], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [12], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [13], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [14], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [15], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [16], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [17], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [18], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [19], [3], [], [1]
EXECUTE SP_InsertarBoleto [3], [20], [3], [], [1]
EXECUTE SP_InsertarBoleto [4], [1], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [2], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [3], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [4], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [5], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [6], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [7], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [8], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [9], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [10], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [11], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [12], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [13], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [14], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [15], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [16], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [17], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [18], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [19], [4], [], [1]
EXECUTE SP_InsertarBoleto [4], [20], [4], [], [1]
EXECUTE SP_InsertarBoleto [5], [1], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [2], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [3], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [4], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [5], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [6], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [7], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [8], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [9], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [10], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [11], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [12], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [13], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [14], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [15], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [16], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [17], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [18], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [19], [5], [], [1]
EXECUTE SP_InsertarBoleto [5], [20], [5], [], [1]
GO

/*Insertar Datos en la Tabla Combos
'Nombre del Combo', 'Descripcion', [Precio]*/

EXECUTE SP_InsertarCombos 'Combo 1', 'Poporopos Pequeños + Gaseosa', [15]
EXECUTE SP_InsertarCombos 'Combo 2', 'Poporopos Medianos + Gaseosa', [20]
EXECUTE SP_InsertarCombos 'Combo 3', 'Poporopos Grandes + Gaseosa', [25]
EXECUTE SP_InsertarCombos 'Combo 4', 'Hot Dog Pequeño + Gaseosa', [15]
EXECUTE SP_InsertarCombos 'Combo 5', 'Hot Dog Grande + Gaseosa', [20]
EXECUTE SP_InsertarCombos 'Combo 6', 'Hamburguesa de Pollo + Gaseosa', [20]
EXECUTE SP_InsertarCombos 'Combo 7', 'Hamburguesa de Carne + Gaseosa', [25]
EXECUTE SP_InsertarCombos 'Combo 8', 'Hamburguesa de Queso + Gaseosa', [15]
EXECUTE SP_InsertarCombos 'Combo 9', 'Pizza Personal + Gaseosa', [25]
EXECUTE SP_InsertarCombos 'Combo 10', 'Nachos Grandes + Gaseosa', [25]
GO

/*Insertar Datos en la Tabla Clientes
[Nit], 'Nombre del Cliente', 'Direccion', [Telefono]*/

EXECUTE SP_InsertarClientes [4038154], 'Alejandro Gómez', '17 av. 7-26 zona 14', [48689148]
EXECUTE SP_InsertarClientes [9876548], 'Juan Pérez', '1 av. 12-05 zona 15', [48681238]
EXECUTE SP_InsertarClientes [4683254], 'Myrella Gozález', '3 av. 02-12 zona 13', [47770845]
EXECUTE SP_InsertarClientes [1654846], 'Ángel González', '4 av. 05-25 zona 12', [46813848]
EXECUTE SP_InsertarClientes [1866358], 'Andrea Argueta', '13 av. 03-15 zona 1', [58564801]
EXECUTE SP_InsertarClientes [7986548], 'Pablo Morataya', '12 av. 13-05 zona 2', [58335431]
EXECUTE SP_InsertarClientes [4862586], 'Luis Orozco', '15 av. 15-02 zona 16', [51151388]
EXECUTE SP_InsertarClientes [8795833], 'María García', '7 av. 13-13 zona 15', [58134846]
EXECUTE SP_InsertarClientes [9872388], 'Antonieta Victorio', '18 av. 18-18 zona 14', [58364868]
EXECUTE SP_InsertarClientes [1682254], 'María Estrada', '9 av. 08-01 zona 18', [54648134]
EXECUTE SP_InsertarClientes [3354866], 'Fernando de León', '19 av. 20-13 zona 13', [47684688]
EXECUTE SP_InsertarClientes [9636834], 'Andres López', '18 av. 23-05 zona 1', [55486648]
EXECUTE SP_InsertarClientes [4686688], 'Jefferson Reyes', '13 av. 19-08 zona 4 de Mixco', [26683345]
EXECUTE SP_InsertarClientes [3548648], 'Alejandro Hernández', '12 av. 20-18 zona 9', [23546864]
EXECUTE SP_InsertarClientes [9654054], 'Dayana Bolaños', '22 av. 23-10 zona 1 de Mixco', [48646484]
EXECUTE SP_InsertarClientes [0486738], 'Alejandra Véliz', '16 av. 14-15 zona 10', [40484681]
EXECUTE SP_InsertarClientes [9835430], 'Alexander Araujo', '12 av. 16-21 zona 13', [56456484]
EXECUTE SP_InsertarClientes [3578668], 'Alicia Pinzón', '6 av. 07-16 zona 1', [58486481]
EXECUTE SP_InsertarClientes [1383468], 'Andrea López', '18 av. 02-15 zona 14', [43468468]
EXECUTE SP_InsertarClientes [1387868], 'Bárbara Larios', '12 av. 15-35 zona 5', [48481888]
EXECUTE SP_InsertarClientes [1684384], 'Brayan Pineda', '19 calle 6-05 zona 14', [48648464]
EXECUTE SP_InsertarClientes [1846154], 'Carmen Beatríz', '13 av. 12-05 zona 12', [48652482]
EXECUTE SP_InsertarClientes [1810548], 'Carolina García', '15 av. 15-02 zona 13', [48871084]
EXECUTE SP_InsertarClientes [0156840], 'César Bianchi', '1 av. 02-10 zona 15', [58464868]
EXECUTE SP_InsertarClientes [5480548], 'Cristina López', '4 calle 03-15 zona 1 de Mixco', [54854686]
EXECUTE SP_InsertarClientes [6432081], 'Daniel González', '9 av. 08-12 zona 4 de Mixco', [51308468]
EXECUTE SP_InsertarClientes [1848318], 'José Morente', '20 av. 23-01 zona 9', [52064800]
EXECUTE SP_InsertarClientes [8898505], 'David González', '13 av. 12-02 zona 10', [51368485]
EXECUTE SP_InsertarClientes [1814608], 'Dulce Montenegro', '17 calle 16-01 zona 10', [58564405]
EXECUTE SP_InsertarClientes [1054608], 'Erick Quintana', '14 av. 15-02 zona 13', [54816811]
EXECUTE SP_InsertarClientes [0515486], 'Fátima Juárez', '12 av. 13-02 zona 7', [23684681]
EXECUTE SP_InsertarClientes [0548635], 'Guadalupe Girón', '14 calle 16-05 zona 6', [28489622]
EXECUTE SP_InsertarClientes [5483055], 'Gerardo Cano', '2 av. 03-05 zona 15', [24681681]
EXECUTE SP_InsertarClientes [1688613], 'Rodrigo Solorzano', '11 av. 13-06 zona 1 Fraijanes', [21548602]
EXECUTE SP_InsertarClientes [6483325], 'Isabel Díaz', '1 calle 02-15 zona 1de Mixco', [68464811]
EXECUTE SP_InsertarClientes [0563813], 'Jackelyn Villagran', '4 calle 03-15 zona 2', [64862842]
EXECUTE SP_InsertarClientes [0465403], 'Jason Vivar', '17 calle 18-10 zona 3', [45861548]
EXECUTE SP_InsertarClientes [4861381], 'Javier Hernández', '14 calle 16-05 zona 9', [48777048]
EXECUTE SP_InsertarClientes [1564846], 'José López', '16 av. 14-05 zona 10', [48618164]
EXECUTE SP_InsertarClientes [9873648], 'Leonel Mejía', '4 av. 03-05 zona 13', [48646813]
EXECUTE SP_InsertarClientes [1068468], 'Marco Gómez', '10 av. 09-08 zona 12', [48658486]
EXECUTE SP_InsertarClientes [5056808], 'Melani Pérez', '5 av. 04-05 zona 5', [48100846]
EXECUTE SP_InsertarClientes [0465468], 'Mirian González', '20 av. 19-06 zona 6', [46835408]
EXECUTE SP_InsertarClientes [6813810], 'Fernando Solares', '15 av. 14-05 zona 4 de Mixco', [48103808]
EXECUTE SP_InsertarClientes [4681035], 'Rosario González', '20 av. 21-02 zona 6 Fraijanes', [40164808]
EXECUTE SP_InsertarClientes [1684684], 'Ruth Velázquez', '14 av. 15-05 zona 12', [53153000]
EXECUTE SP_InsertarClientes [8468713], 'Sergio Gisbert', '12 av. 13-05 zona 13', [48641382]
EXECUTE SP_InsertarClientes [1654866], 'Adolfo Barillas', '16 av. 14-15 zona 10', [48463188]
EXECUTE SP_InsertarClientes [4684684], 'Victoria Blanco', '10 av. 13-12 zona 9', [56846547]
EXECUTE SP_InsertarClientes [1686868], 'María Oliva', '3 av. 02-32 zona 10', [52016815]
GO

/*Insertar Datos en la Tabla Factura
[idClientes], CURRENT_TIMESTAMP, [Total]*/

EXECUTE SP_InsertarFactura [], []


/*Insertar Datos en la Tabla Detalle de Factura
[idFactura], [idPelicula], [idCombos], [idBoleto]*/

EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
EXECUTE SP_InsertarDetalleFactura [], [], [], []
