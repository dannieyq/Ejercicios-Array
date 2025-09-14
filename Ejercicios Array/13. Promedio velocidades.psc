Funcion calcular_promedio ( distancias Por Referencia, tiempos Por Referencia )
	Definir v1, v2 Como Real;
	v1 <- distancias[1] / tiempos[1];
	v2 <- distancias[2] / tiempos[2];
	Mostrar "La velocidad promedio del vehículo 1 es: ", v1, " km/h";
	Mostrar "La velocidad promedio del vehículo 2 es: ", v2, " km/h";
Fin Funcion


Funcion modificar_datos ( distancias Por Referencia, tiempos Por Referencia )
	Definir opcion, i Como Entero;
	Mostrar "Vehículo   Distancia(KM)   Tiempo(H)";
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Mostrar i,". ",distancias[i]," km -------- ",tiempos[i]," h";
	Fin Para
	Mostrar "¿Qué vehículo desea modificar? (1 o 2)";
	Leer opcion;
	Si opcion >=1 Y opcion <=2 Entonces
		Escribir "Nueva distancia para vehículo ", opcion, ":";
		Leer distancias[opcion];
		Escribir "Nuevo tiempo para vehículo ", opcion, ":";
		Leer tiempos[opcion];
		Mostrar "Actualización realizada.";
	SiNo
		Mostrar "Número inválido.";
	FinSi
Fin Funcion


Funcion ingresar_datos ( distancias Por Referencia, tiempos Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese la distancia recorrida por el vehículo ",i," (km):";
		Leer distancias[i];
		Escribir "Ingrese el tiempo del vehículo ",i," (h):";
		Leer tiempos[i];
	Fin Para
	Mostrar "Datos registrados.";
Fin Funcion


Funcion opcion <- menu
	Definir opcion Como Entero;
	Mostrar "======== MENU ========";
	Mostrar "1. Ingresar datos";
	Mostrar "2. Modificar datos";
	Mostrar "3. Calcular velocidades promedio";
	Mostrar "4. Salir";
	Mostrar "Seleccione una opción:";
	Leer opcion;
Fin Funcion


Algoritmo velocidad_promedio
	Definir opcionn Como Entero;
	Definir distancias, tiempos Como Real;
	Dimension distancias[2];
	Dimension tiempos[2];
	
	Repetir
		opcionn <- menu;
		Segun opcionn Hacer
			Caso 1:
				ingresar_datos(distancias, tiempos);
			Caso 2:
				modificar_datos(distancias, tiempos);
			Caso 3:
				calcular_promedio(distancias, tiempos);
			Caso 4:
				Mostrar "Saliendo del programa...";
		Fin Segun
	Hasta Que opcionn = 4
FinAlgoritmo

