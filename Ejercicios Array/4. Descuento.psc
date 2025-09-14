Funcion suma <- calcular_total ( precios Por Referencia, n )
	Definir suma Como Real;
	Definir i Como Entero;
	suma <- 0;
	Para i <- 1 Hasta n Con Paso 1 Hacer
		suma <- suma + precios[i];
	Fin Para
Fin Funcion


Funcion mostrar_factura ( nombres Por Referencia, precios Por Referencia, n )
	Definir subtotal, total Como Real;
	Definir i Como Entero;
	
	Mostrar "------- FACTURA -------";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Mostrar i, ". ", nombres[i], " - $", precios[i];
	Fin Para
	
	subtotal <- calcular_total(precios, n);
	total <- subtotal * 1.19;
	
	Mostrar "-----------------------";
	Mostrar "Subtotal: $", subtotal;
	Mostrar "Con IVA: $", total;
Fin Funcion


Funcion modificar_producto ( nombres Por Referencia, precios Por Referencia, n )
	Definir posicion Como Entero;
	Definir nuevo_nombre Como Caracter;
	Definir nuevo_precio Como Real;
	Definir i Como Entero;
	
	Mostrar "------ LISTA DE PRODUCTOS ------";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Mostrar i, ") ", nombres[i], " - $", precios[i];
	Fin Para
	
	Escribir "Ingrese el número del producto a cambiar:";
	Leer posicion;
	
	Escribir "Ingrese el nuevo nombre:";
	Leer nuevo_nombre;
	nombres[posicion] <- nuevo_nombre;
	
	Escribir "Ingrese el nuevo precio:";
	Leer nuevo_precio;
	precios[posicion] <- nuevo_precio;
	
	Mostrar "Producto modificado correctamente.";
Fin Funcion


Funcion opcion_menu <- menu
	Definir opcion_menu Como Entero;
	Mostrar "========= MENU =========";
	Mostrar "1. Ingresar productos";
	Mostrar "2. Modificar producto";
	Mostrar "3. Mostrar factura";
	Mostrar "4. Salir del programa";
	Escribir "Seleccione una opción:";
	Leer opcion_menu;
Fin Funcion


Funcion registrar_productos ( nombres Por Referencia, precios Por Referencia, n )
	Definir i Como Entero;
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Nombre del producto ", i, ":";
		Leer nombres[i];
		Escribir "Precio del producto ", i, ":";
		Leer precios[i];
	Fin Para
	Mostrar "Productos guardados.";
Fin Funcion


Algoritmo sistema_compras
	Definir opcion_menu, n Como Entero;
	Definir nombres Como Caracter;
	Definir precios Como Real;
	
	Escribir "¿Cuántos productos desea registrar?";
	Leer n;
	Dimension nombres[n];
	Dimension precios[n];
	
	Repetir
		opcion_menu <- menu;
		Segun opcion_menu Hacer
			Caso 1:
				registrar_productos(nombres, precios, n);
			Caso 2:
				modificar_producto(nombres, precios, n);
			Caso 3:
				mostrar_factura(nombres, precios, n);
			Caso 4:
				Mostrar "Saliendo del programa...";
		Fin Segun
	Hasta Que opcion_menu= 4;
FinAlgoritmo
