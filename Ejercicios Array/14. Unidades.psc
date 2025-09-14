Funcion total_unidades <- sumar_unidades (cantidades Por Referencia)
	Definir total_unidades,i Como Entero;
	total_unidades <- 0;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		total_unidades <- total_unidades + cantidades[i];
	Fin Para
Fin Funcion

Funcion total_ventas <- calcular_ventas (precios Por Referencia, cantidades Por Referencia)
	Definir total_ventas,i Como Real;
	total_ventas <- 0;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		total_ventas <- total_ventas + (precios[i]*cantidades[i]);
	Fin Para
Fin Funcion

Funcion mostrar_datos (nombres Por Referencia, precios Por Referencia, cantidades Por Referencia, total_ventas, total_unidades)
	Definir i Como Entero;
	Escribir "PRODUCTO ---- PRECIO ---- UNIDADES";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i,". ",nombres[i]," ---- ",precios[i]," ---- ",cantidades[i];
	Fin Para
	Escribir "Unidades totales vendidas: ",total_unidades;
	Escribir "Valor total de ventas: ",total_ventas;
Fin Funcion

Funcion modificar_datos (nombres Por Referencia, precios Por Referencia, cantidades Por Referencia)
	Definir i,opcion Como Entero;
	Escribir "LISTA DE PRODUCTOS:";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i,". ",nombres[i]," ---- ",precios[i]," ---- ",cantidades[i];
	Fin Para
	Escribir "Digite el número del producto que quiere modificar: ";
	Leer opcion;
	Para i<-opcion Hasta opcion Con Paso 1 Hacer
		Escribir "Nuevo nombre del producto ",i,": ";
		Leer nombres[i];
		Escribir "Nuevo precio del producto ",i,": ";
		Leer precios[i];
		Escribir "Nuevas unidades vendidas del producto ",i,": ";
		Leer cantidades[i];
	Fin Para
	Escribir "Producto actualizado correctamente.";
Fin Funcion

Funcion ingresar_datos (nombres Por Referencia, precios Por Referencia, cantidades Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del producto ",i,": ";
		Leer nombres[i];
		Escribir "Ingrese el precio del producto ",i,": ";
		Leer precios[i];
		Escribir "Ingrese las unidades vendidas del producto ",i,": ";
		Leer cantidades[i];
	Fin Para
	Escribir "Datos guardados correctamente.";
Fin Funcion

Funcion opcion_menu <- menu
	Definir opcion_menu Como Entero;
	Escribir " ==== MENU ====";
	Escribir "1. Ingresar nombre, precio y unidades";
	Escribir "2. Modificar datos";
	Escribir "3. Mostrar unidades y total;";
	Escribir "4. Salir del programa";
	Escribir "Ingresa la opcion que deseas";
	Leer opcion_menu;
Fin Funcion

Algoritmo ventas_productos
	Definir nombres Como Caracter;
	Definir precios,total_ventas Como Real;
	Definir cantidades,total_unidades,opcion_menu Como Entero;
	Dimension nombres[3];
	Dimension precios[3];
	Dimension cantidades[3];
	
	Repetir
		opcion_menu <- menu;
		Segun opcion_menu Hacer
			Caso 1:
				ingresar_datos(nombres,precios,cantidades);
			Caso 2:
				modificar_datos(nombres,precios,cantidades);
			Caso 3:
				total_ventas <- calcular_ventas(precios,cantidades);
				total_unidades <- sumar_unidades(cantidades);
				mostrar_datos(nombres,precios,cantidades,total_ventas,total_unidades);
			Caso 4:
				Escribir "Saliendo del programa...";
		Fin Segun
	Hasta Que opcion_menu=4
	
FinAlgoritmo