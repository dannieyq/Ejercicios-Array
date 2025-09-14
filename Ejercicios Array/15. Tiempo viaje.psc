Funcion suma <- calcular_suma (tiempos Por Referencia, cantidad)
	Definir suma,i Como Real;
	suma <- 0;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		suma <- suma + tiempos[i];
	Fin Para
Fin Funcion

Funcion mostrar_info (tiempos Por Referencia, cantidad, suma)
	Definir i Como Entero;
	Escribir "===== DETALLES DEL VIAJE =====";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Tramo ",i,": ",tiempos[i]," sg";
	Fin Para
	Escribir "Tiempo total de conducción: ",suma," sg";
Fin Funcion

Funcion modificar_info (tiempos Por Referencia, cantidad)
	Definir i,opcion Como Entero;
	Escribir "Lista de tiempos registrados:";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Tramo ",i,": ",tiempos[i]," minutos";
	Fin Para
	Escribir "Seleccione el número del tramo que desea modificar:";
	Leer opcion;
	Escribir "Nuevo tiempo para el tramo ",opcion,": ";
	Leer tiempos[opcion];
	Escribir "Dato actualizado correctamente.";
Fin Funcion

Funcion ingresar_info (tiempos Por Referencia, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el tiempo (sg) del tramo ",i,": ";
		Leer tiempos[i];
	Fin Para
	Escribir "Datos registrados exitosamente.";
Fin Funcion

Funcion eleccion <- menu
	Definir eleccion Como Entero;
	Escribir "------ MENU PRINCIPAL ------";
	Escribir "1. Ingresar tiempos";
	Escribir "2. Modificar tiempos";
	Escribir "3. Mostrar tiempo total";
	Escribir "4. Salir";
	Escribir "Seleccione una opción: ";
	Leer eleccion;
Fin Funcion

Algoritmo tiempos_de_viaje
	Definir tiempos,suma Como Real;
	Definir cantidad,eleccion Como Entero;
	Escribir "¿Cuántos recorridos tuvo el viaje?";
	Leer cantidad;
	Dimension tiempos[cantidad];
	Repetir
		eleccion <- menu;
		Segun eleccion Hacer
			Caso 1:
				ingresar_info(tiempos,cantidad);
			Caso 2:
				modificar_info(tiempos,cantidad);
			Caso 3:
				suma <- calcular_suma(tiempos,cantidad);
				mostrar_info(tiempos,cantidad,suma);
			Caso 4:
				Escribir "Saliendo del programa...";
		Fin Segun
	Hasta Que eleccion=4
	
FinAlgoritmo
