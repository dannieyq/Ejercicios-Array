Funcion suma_ventas <- calcular_total_ventas ( ventas Por Referencia )
	Definir i Como Entero;
	Definir suma_ventas Como Real;
	suma_ventas <- 0;
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		suma_ventas <- suma_ventas + ventas[i];
	Fin Para
Fin Funcion


Funcion suma_ganancias <- calcular_total_ganancias ( dias Por Referencia, ventas Por Referencia, ganancias Por Referencia )
	Definir i Como Entero;
	Definir suma_ganancias Como Real;
	suma_ganancias <- 0;
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		suma_ganancias <- suma_ganancias + ganancias[i];
	Fin Para
Fin Funcion


Funcion mostrar_resumen ( dias Por Referencia, ventas Por Referencia, ganancias Por Referencia, total_g, total_v )
	Definir i Como Entero;
	Mostrar "---- RESUMEN SEMANAL ----";
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Mostrar i, ") ", dias[i], " ---- $", ventas[i], " ---- $", ganancias[i];
	Fin Para
	Mostrar "=====================================";
	Mostrar "Total ventas semanales: $", total_v;
	Mostrar "Total ganancias semanales: $", total_g;
Fin Funcion


Funcion modificar_datos ( dias Por Referencia, ventas Por Referencia, ganancias Por Referencia )
	Definir i, posicion Como Entero;
	Definir nueva_venta, nueva_ganancia Como Real;
	
	Mostrar "DIA --------- VENTAS ------ GANANCIAS";
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Mostrar i, ") ", dias[i], " ---- $", ventas[i], " ---- $", ganancias[i];
	Fin Para
	
	Escribir "Ingrese el número del día a modificar:";
	Leer posicion;
	
	Escribir "Nueva venta para el día ", dias[posicion], ":";
	Leer nueva_venta;
	ventas[posicion] <- nueva_venta;
	
	Escribir "Nueva ganancia para el día ", dias[posicion], ":";
	Leer nueva_ganancia;
	ganancias[posicion] <- nueva_ganancia;
	
	Mostrar "Datos actualizados correctamente.";
Fin Funcion


Funcion agregar_datos ( dias Por Referencia, ventas Por Referencia, ganancias Por Referencia )
	Definir i Como Entero;
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ventas del día ", dias[i], ":";
		Leer ventas[i];
		Escribir "Ganancias del día ", dias[i], ":";
		Leer ganancias[i];
	Fin Para
	Mostrar "Datos registrados con éxito.";
Fin Funcion


Funcion opcion_menu <- menu
	Definir opcion_menu Como Entero;
	Mostrar "======= MENU =======";
	Mostrar "1. Registrar datos de la semana";
	Mostrar "2. Modificar información";
	Mostrar "3. Ver resumen semanal";
	Mostrar "4. Salir";
	Escribir "Digite su opción:";
	Leer opcion_menu;
Fin Funcion


Algoritmo ventas_semanales
	Definir dias Como Caracter;
	Definir ventas, ganancias Como Real;
	Definir total_v, total_g Como Real;
	Definir opcion_menu Como Entero;
	
	Dimension dias[7];
	Dimension ventas[7];
	Dimension ganancias[7];
	
	dias[1] <- "Lunes";
	dias[2] <- "Martes";
	dias[3] <- "Miércoles";
	dias[4] <- "Jueves";
	dias[5] <- "Viernes";
	dias[6] <- "Sábado";
	dias[7] <- "Domingo";
	
	Repetir
		opcion_menu <- menu;
		Segun opcion_menu Hacer
			Caso 1:
				agregar_datos(dias, ventas, ganancias);
			Caso 2:
				modificar_datos(dias, ventas, ganancias);
			Caso 3:
				total_g <- calcular_total_ganancias(dias, ventas, ganancias);
				total_v <- calcular_total_ventas(ventas);
				mostrar_resumen(dias, ventas, ganancias, total_g, total_v);
			Caso 4:
				Mostrar "Saliendo del sistema...";
		Fin Segun
	Hasta Que opcion_menu = 4;
FinAlgoritmo