	
//Elner David Montepeque Pineda
//202501281

Algoritmo proyecto02
	
	Definir seleccion Como Entero
	
	Mientras seleccion <> 5 Hacer
		Escribir "SISTEMA DE GESTIÓN DE BIBLIOTECA"
		Escribir "Bienvenido, seleccione la opcion preferida"
		
		Escribir "[1] : Gestión de libros"
		Escribir "[2] : Gestión de usuarios"
		Escribir "[3] : Préstamos y Devoluciones"
		Escribir "[4] : Reportes"
		Escribir "[5] : Salir"

		leer seleccion
		
		si seleccion = 1 Entonces
			gestionLibros()
		FinSi
		
		si seleccion = 2 Entonces
			gestionUsuario()
		FinSi
		
		si seleccion = 3 Entonces
			prestamosDevoluciones()
		FinSi
		
		si seleccion = 4 Entonces
			reportes()
		FinSi
		
		Limpiar Pantalla
		
	FinMientras
	
FinAlgoritmo





//  MENU - RESOLUCION PROBLEMA 01 - GESTION DE LIBROS ************************************************************************

Funcion gestionLibros
	
	
	seleccion <- 0
	
	Mientras seleccion <> 5 Hacer
		
		Limpiar Pantalla
		
		Escribir "Bienvenido, al registro de libros, elija la opción preferida."
		Escribir "[1] : Registrar nuevos libros"
		Escribir "[2] : Buscar Libros"
		Escribir "[3] : Elimiar libros"
		Escribir "[4] : Listar todos los libros"
		Escribir "[5] : Regresar al menu"
		Leer seleccion
		
		si seleccion = 1 Entonces
			registrarLibros()
		FinSi
		si seleccion = 2 Entonces
			buscarLibros(idLibro, tituloLibro, autorLibro, categoriaLibro, añoPublicacion, ejemplaresDisponibles, estadoLibro)
		FinSi
		si seleccion = 3 Entonces
			eliminarLibros()
		FinSi
		si seleccion = 4 Entonces
			listarLibros()
		FinSi
		
	FinMientras
	
FinFuncion

// GESTION DE LIBROS FUNCIONES **********************************************************************************

Funcion registrarLibros
	
	Definir i, k Como Entero
	i = 1
	k = 1
	
	Dimension idLibro[50], tituloLibro[50], autorLibro[50], categoriaLibro[50], añoPublicacion[50], ejemplaresDisponibles[50], estadoLibro[50]
	Dimensionar estadosLibros[50, 50]
	
	seleccion <- "y"
	
	mientras seleccion <> "n" Hacer
		
		Limpiar Pantalla
		
		Escribir "Bienvenido al gestor de libros."
		Escribir "Desea registrar un libro? [y/n]"	
		Leer seleccion
		
		si seleccion = "y" Entonces
			
			idLibro[i] = 202500000 + 1
			
			Escribir "Digite el titúlo del libro"
			leer tituloLibro[i]
			
			Escribir "Digite el autor del libro"
			leer autorLibro[i]
			
			Escribir "Seleccione la categoria del libro"
			Escribir "[f] : Ficción"
			Escribir "[c] : ciencia"
			Escribir "[h] : historia"
			Escribir "[o] : otro"
			Leer categoriaLibro[i]
			
			si Minusculas(categoriaLibro[i]) = "f" Entonces
				categoriaLibro[i] = "Ficcion"
			FinSi
			si Minusculas(categoriaLibro[i]) = "c" Entonces
				categoriaLibro[i] = "Ciencia"
			FinSi
			si Minusculas(categoriaLibro[i]) = "h" Entonces
				categoriaLibro[i] = "Historia"
			FinSi
			si Minusculas(categoriaLibro[i]) = "o" Entonces
				categoriaLibro[i] = "Otroa categoria"
			FinSi
	
			Escribir "Digite el año en el que el libro fue publicado"
			leer añoPublicacion[i]
			
			Escribir "Digite los ejemplares disponibles del libro"
			Leer ejemplaresDisponibles[i]
			
			si ejemplaresDisponibles[i] >= 1 Entonces
				
				Mientras k <> ejemplaresDisponibles[i] Hacer
				//	estadosLibros[i, k]
					
					Escribir "seleccione el estado del libro:"
					Escribir "[d] : disponible"
					Escribir "[p] : Prestado"
					Escribir "[r] : Reservado"
					Leer estadoLibro[i]
					
					k = k + 1
					
				FinMientras
				
				Escribir "seleccione el estado del libro:"
				Escribir "[d] : disponible"
				Escribir "[p] : Prestado"
				Escribir "[r] : Reservado"
				Leer estadoLibro[i]
				
			
				
			FinSi
					
			si Minusculas(estadoLibro[i]) = "d" Entonces
				estadoLibro[i] = "disponible"
			FinSi
			si Minusculas(estadoLibro[i]) = "p" Entonces
				estadoLibro[i] = "prestado"
			FinSi
			si Minusculas(estadoLibro[i]) = "r" Entonces
				estadoLibro[i] = "reservado"
			FinSi
			
			
			Escribir "=== Información del libro a registrar ==="
			Escribir "id del libro: ", idLibro[i]
			Escribir "Titulo del libro: ", tituloLibro[i]
			Escribir "Autor del libro: ", autorLibro[i]
			Escribir "categoria del libro: ", categoriaLibro[i]
			Escribir "año de publicación: ", añoPublicacion[i]
			Escribir "Cantidad de ejemplares disponibles: ", ejemplaresDisponibles[i]
			Escribir "Estado del libro: ", estadoLibro[i]
			Escribir ""
			Escribir "Enter para continuar..."
			Esperar Tecla
			
		FinSi
		
	FinMientras
	
FinFuncion



Funcion buscarLibros(idLibro, tituloLibro, autorLibro, categoriaLibro, añoPublicacion, ejemplaresDisponibles, estadoLibro)
	
	i = 1
	seleccion = "y"
	seleccion02 = ""
	seleccion03 = ""
	
	
	Mientras Minusculas(seleccion) <> "n" Hacer
		
		Limpiar Pantalla
		
		Escribir "Buscar un libro? [y/n]"
		Leer seleccion
		
		Escribir "¿Por cual medio desea buscar el libro?"
		Escribir "[t] : titulo"
		Escribir "[a] : autor"
		Escribir "[c] : categoria"
		Escribir "[co] : Codigo"
		Leer seleccion02
		
		si Minusculas(seleccion02) = "t" Entonces
			
			Escribir "Digite el titulo del libro que desea buscar"
			
			Mientras Minusculas(seleccion03) <> tituloLibro[i] Hacer
				
				si seleccion03 = tituloLibro[i] Entonces
					
					Escribir "=== Información del libro encontrado ==="
					Escribir "id del libro: ", idLibro[i]
					Escribir "Titulo del libro: ", tituloLibro[i]
					Escribir "Autor del libro: ", autorLibro[i]
					Escribir "categoria del libro: ", categoriaLibro[i]
					Escribir "año de publicación: ", añoPublicacion[i]
					Escribir "Cantidad de ejemplares disponibles: ", ejemplaresDisponibles[i]
					Escribir "Estado del libro: ", estadoLibro[i]
					Escribir ""
					Escribir "Enter para continuar..."
					Esperar Tecla
				FinSi
				
				i = i + 1
				
			FinMientras
			
		FinSi
	
	
		
		si Minusculas(seleccion02) = "a" Entonces
		FinSi
		si Minusculas(seleccion02) = "c" Entonces
		FinSi
		si Minusculas(seleccion02) = "co" Entonces
		FinSi
		
		
		Esperar Tecla
		
	FinMientras
	
FinFuncion



Funcion eliminarLibros
FinFuncion




Funcion listarLibros
FinFuncion



//  MENU - RESOLUCION PROBLEMA 02 - GESTION DE USUARIOS ************************************************************************

Funcion gestionUsuario
	//registrar nuevos usuarios
	//consultar informacion del usuario
	// modificar datos del usuario
	// listar los datos del usuario
	
	seleccion <- 0
	
	Mientras seleccion <> 5 Hacer
		
		Limpiar Pantalla
		
		Escribir "Bienvenido, al gestor de usuario, elija la opción preferida."
		Escribir "[1] : Registrar un nuevo usuario"
		Escribir "[2] : informacion de usuarios"
		Escribir "[3] : Modificar los datos del usuario"
		Escribir "[4] : Listar usuarios registrados"
		Escribir "[5] : Regresar al menu"
		Leer seleccion
		
		si seleccion = 1 Entonces
			registrarUsuarios()
		FinSi
		si seleccion = 2 Entonces
			informacionUsuario()
		FinSi
		si seleccion = 3 Entonces
			modificarDatosUsuario()
		FinSi
		si seleccion = 4 Entonces
			listarUsuarios()
		FinSi
		
	FinMientras
	
FinFuncion

// GESTION DE USUARIO FUNCIONES **********************************************************************************

Funcion registrarUsuarios
	
	Dimension idUsuario[50], nombreUsuario[50], carnetODpi[50], telefono[50], correoElectronico[50], fechaRegistro[50]
	Definir i Como Entero
	i = 1
	
	seleccion <- "y"
	seleccion02 = 0
	
	mientras seleccion <> "n" Hacer
		
		Limpiar Pantalla
		
		Escribir "Desea registar un nuevo usuario? [y/n]"
		leer seleccion
		
		si seleccion = "y" Entonces
			idUsuario[i] = 202500000 + i
			
			Escribir "Id del usuario es: ", idUsuario[i]
			Escribir ""
			Escribir "Digite el nombre del usuario"
			leer nombreUsuario[i]
			
			mientras seleccion02 <> 1 O seleccion02 <> 2 Hacer
				
				Escribir "[1] : registrar usuario con DPI"
				Escribir "[2] : registrar usuario con carnet"
				leer seleccion02
				Escribir ""
				
				si seleccion02 = 1 Entonces
					Escribir "Digite el DPI del usuario"
					Leer carnetODpi[i]
				FinSi
				si seleccion02 = 2 Entonces
					Escribir "Digite el carnet del usuario"
					leer carnetODpi[i]
				FinSi
				
			FinMientras
			
			
			
			
			
			
			i = i + 1
			
			
		FinSi
		
	FinMientras
		
	
	
FinFuncion

Funcion informacionUsuario
FinFuncion

Funcion modificarDatosUsuario
FinFuncion

Funcion listarUsuarios
FinFuncion

//  MENU - RESOLUCION PROBLEMA 03 - PRESTAMOS Y DEVOLUCIONES ************************************************************************

Funcion prestamosDevoluciones
	
	seleccion <- 0
	
	mientras seleccion <> 6 Hacer
		
		Escribir "[1] : Prestamos de libros"
		Escribir "[2] : Devolucion de libros"
		Escribir "[3] : Gestion de multas"
		Escribir "[4] : prestamos activos de un usuario especifico"
		Escribir "[5] : prestamos activos en la biblioteca"
		Escribir "[6] : Regresar al menu"
		
		si seleccion = 1 Entonces
			prestarLibro()
		FinSi
		si seleccion = 2 Entonces
			devolverLiibro()
		FinSi
		si seleccion = 3 Entonces
			gestionarMultas()
		FinSi
		si seleccion = 4 Entonces
			prestamosActivos()
		FinSi
		si seleccion = 5 Entonces
			prestamosBiblioteca()
		FinSi
		
	FinMientras
	
	
	
	
FinFuncion

// PRESTAMOS Y DEVOLUCIONES FUNCIONES **********************************************************************************

Funcion prestarLibro
FinFuncion

Funcion devolverLiibro
FinFuncion

Funcion gestionarMultas
FinFuncion

Funcion prestamosActivos
FinFuncion

Funcion prestamosBiblioteca
FinFuncion





//  MENU - RESOLUCION PROBLEMA 04 - LISTAR PRESTAMOS ************************************************************************

Funcion reportes
	
	seleccion <- 0
	
	Mientras seleccion <> 5 Hacer
		
		Escribir "[1] : Reportes de libros prestados"
		Escribir "[2] : Reporte de usuarios con prestamos activos"
		Escribir "[3] : Reporte de libros con reservas pendientes"
		Escribir "[4] : Total de libros en la biblioteca por categoria"
		
		
		
	FinMientras
	
	
FinFuncion



//  REPORTES Y ESTADISTICA **********************************************************************************






