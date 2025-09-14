Funcion VerResultados(horas Por Referencia, tarifas Por Referencia, totales Por Referencia, num_trabajos)
	Definir i Como Entero;
	Para i<-1 Hasta num_trabajos Con Paso 1 Hacer
		Escribir "Trabajo ", i, ":";
		Escribir "   Horas trabajadas: ", horas[i];
		Escribir "   Pago por hora: $", tarifas[i];
		Escribir "   Total a cobrar: $", totales[i];
	Fin Para
Fin Funcion


Funcion RegistrarDatos(horas Por Referencia, tarifas Por Referencia, num_trabajos)
	Definir i Como Entero;
	Para i<-1 Hasta num_trabajos Con Paso 1 Hacer
		Escribir "Horas del trabajo ", i, ":";
		Leer horas[i];
		Escribir "Pago por hora del trabajo ", i, ":";
		Leer tarifas[i];
	Fin Para
Fin Funcion


Funcion CambiarHoras(horas Por Referencia, num_trabajos)
	Definir i, posicion Como Entero;
	Escribir "Seleccione el trabajo a modificar (1/",num_trabajos,"):";
	Para i<-1 Hasta num_trabajos Con Paso 1 Hacer
		Escribir i,". Horas actuales: ", horas[i];
	Fin Para
	Leer posicion;
	Si posicion >= 1 Y posicion <= num_trabajos Entonces
		Escribir "Digite las nuevas horas trabajadas:";
		Leer horas[posicion];
	SiNo
		Escribir "Número no válido.";
	FinSi
Fin Funcion


Funcion CambiarPago(tarifas Por Referencia, num_trabajos)
	Definir i, posicion Como Entero;
	Escribir "Seleccione el trabajo a modificar (1/",num_trabajos,"):";
	Para i<-1 Hasta num_trabajos Con Paso 1 Hacer
		Escribir i,". Pago actual por hora: $", tarifas[i];
	Fin Para
	Leer posicion;
	Si posicion >= 1 Y posicion <= num_trabajos Entonces
		Escribir "Ingrese el nuevo pago por hora:";
		Leer tarifas[posicion];
	SiNo
		Escribir "Número inválido.";
	FinSi
Fin Funcion


Funcion CalcularTotales(totales Por Referencia, horas Por Referencia, tarifas Por Referencia, num_trabajos)
	Definir i Como Entero;
	Para i<-1 Hasta num_trabajos Con Paso 1 Hacer
		totales[i] <- horas[i] * tarifas[i];
	Fin Para
	Escribir "Totales calculados con éxito.";
Fin Funcion


Funcion opcion_menu <- Menu
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Registrar trabajos";
	Escribir "2. Modificar horas";
	Escribir "3. Modificar pago por hora";
	Escribir "4. Calcular totales";
	Escribir "5. Ver resultados";
	Escribir "6. Salir";
	Escribir "---------------------------";
	Escribir "Ingrese una opción: ";
	Leer opcion_menu;
Fin Funcion


Algoritmo CalculoTrabajos
	Definir horas, tarifas, totales, num_trabajos Como Entero;
	Definir opcion_menu Como Entero;
	
	Escribir "¿Cuántos trabajos desea registrar?";
	Leer num_trabajos;
	
	Dimension horas[num_trabajos];
	Dimension tarifas[num_trabajos];
	Dimension totales[num_trabajos];
	
	Repetir
		opcion_menu<- Menu;
		Segun opcion_menu Hacer
			Caso 1:
				RegistrarDatos(horas, tarifas, num_trabajos);
			Caso 2:
				CambiarHoras(horas, num_trabajos);
			Caso 3:
				CambiarPago(tarifas, num_trabajos);
			Caso 4:
				CalcularTotales(totales, horas, tarifas, num_trabajos);
			Caso 5:
				VerResultados(horas, tarifas, totales, num_trabajos);
			Caso 6:
				Escribir "Finalizando programa...";
			De Otro Modo:
				Escribir "La opción no existe.";
		Fin Segun
	Hasta Que opcion_menu=6
FinAlgoritmo
