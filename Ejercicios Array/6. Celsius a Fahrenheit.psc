Funcion registrar_temp ( datos Por Referencia, n )
	Definir i Como Entero;
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese la temperatura en Celsius ", i, ":";
		Leer datos[i];
	Fin Para
	Mostrar "Temperaturas en Celsius guardadas correctamente.";
Fin Funcion


Funcion modificar_temp ( datos Por Referencia, n )
	Definir posicion Como Entero;
	Definir nuevo_valor Como Real;
	Definir i Como Entero;
	
	Mostrar "------ LISTA DE TEMPERATURAS (°C) ------";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Mostrar i, ") ", datos[i], " °C";
	Fin Para
	
	Escribir "Seleccione la posición a modificar:";
	Leer posicion;
	Escribir "Ingrese el nuevo valor en Celsius:";
	Leer nuevo_valor;
	datos[posicion] <- nuevo_valor;
	Mostrar "Temperatura modificada.";
Fin Funcion


Funcion mostrar_temp ( datos Por Referencia, n )
	Definir i Como Entero;
	Definir fahrenheit Como Real;
	
	Mostrar "===== CONVERSION DE TEMPERATURAS =====";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		fahrenheit <- (datos[i] * 9/5) + 32;
		Mostrar "Registro ", i, ": ", datos[i], " °C -> ", fahrenheit, " °F";
	Fin Para
Fin Funcion


Funcion decision <- menu_principal
	Definir decision Como Entero;
	Escribir "------ MENU -------";
	Escribir "1. Registrar temperaturas (°C)";
	Escribir "2. Modificar temperaturas (°C)";
	Escribir "3. Ver conversion a Fahrenheit";
	Escribir "4. Salir";
	Escribir "-------------------";
	Escribir "Elija una opción:";
	Leer decision;
Fin Funcion


Algoritmo conversion_temperaturas
	Definir n, decision Como Entero;
	Definir lista Como Real;
	
	Escribir "¿Cuántas temperaturas desea ingresar?";
	Leer n;
	Dimension lista[n];
	
	Repetir
		decision <- menu_principal;
		Segun decision Hacer
			Caso 1:
				registrar_temp(lista, n);
			Caso 2:
				modificar_temp(lista, n);
			Caso 3:
				mostrar_temp(lista, n);
			Caso 4:
				Mostrar "Saliendo del programa....";
		Fin Segun
	Hasta Que decision = 4;
FinAlgoritmo
