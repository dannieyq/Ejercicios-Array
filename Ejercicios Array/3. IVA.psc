Funcion total <- obtener_total ( lista_precios Por Referencia, cantidad )
	Definir total Como Real;
	Definir i Como Entero;
	total <- 0;
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		total <- total + lista_precios[i];
	Fin Para
Fin Funcion


Funcion ver_factura ( lista_articulos Por Referencia, lista_precios Por Referencia, cantidad )
	Definir subtotal, total Como Real;
	Definir i Como Entero;
	
	Mostrar "========== FACTURA ==========";
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Mostrar i, ". ", lista_articulos[i], " --- $", lista_precios[i];
	Fin Para
	
	subtotal <- obtener_total(lista_precios, cantidad);
	total <- subtotal * 1.19;
	
	Mostrar "-----------------------------";
	Mostrar "Subtotal: $", subtotal;
	Mostrar "Total + IVA: $", total;
Fin Funcion


Funcion modificar_producto ( lista_articulos Por Referencia, lista_precios Por Referencia, cantidad )
	Definir indice Como Entero;
	Definir nuevo_nombre Como Caracter;
	Definir nuevo_precio Como Real;
	Definir i Como Entero;
	
	Mostrar "----- PRODUCTOS -----";
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Mostrar i, ". ", lista_articulos[i], " --- $", lista_precios[i];
	Fin Para
	
	Escribir "Seleccione el número del producto a modificar:";
	Leer indice;
	
	Escribir "Nuevo nombre para el producto ", indice, ":";
	Leer nuevo_nombre;
	lista_articulos[indice] <- nuevo_nombre;
	
	Escribir "Nuevo precio para el producto ", indice, ":";
	Leer nuevo_precio;
	lista_precios[indice] <- nuevo_precio;
	
	Mostrar "Producto actualizado con éxito.";
Fin Funcion


Funcion eleccion <- menu_principal
	Definir eleccion Como Entero;
	Mostrar "========== MENU ==========";
	Mostrar "1. Registrar productos";
	Mostrar "2. Modificar producto";
	Mostrar "3. Ver factura";
	Mostrar "4. Salir";
	Escribir "Digite su elección:";
	Leer eleccion;
Fin Funcion


Funcion cargar_datos ( lista_articulos Por Referencia, lista_precios Por Referencia, cantidad )
	Definir i Como Entero;
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Nombre del producto ", i, ":";
		Leer lista_articulos[i];
		Escribir "Precio del producto ", i, ":";
		Leer lista_precios[i];
	Fin Para
	Mostrar "Productos registrados correctamente.";
Fin Funcion


Algoritmo gestion_compras
	Definir eleccion, n Como Entero;
	Definir lista_articulos Como Caracter;
	Definir lista_precios Como Real;
	
	Escribir "¿Cuántos productos desea ingresar?";
	Leer n;
	Dimension lista_articulos[n];
	Dimension lista_precios[n];
	
	Repetir
		eleccion <- menu_principal;
		Segun eleccion Hacer
			Caso 1:
				cargar_datos(lista_articulos, lista_precios, n);
			Caso 2:
				modificar_producto(lista_articulos, lista_precios, n);
			Caso 3:
				ver_factura(lista_articulos, lista_precios, n);
		Fin Segun
	Hasta Que eleccion = 4;
	
	Mostrar "¡Gracias por usar el sistema de compras!";
FinAlgoritmo

