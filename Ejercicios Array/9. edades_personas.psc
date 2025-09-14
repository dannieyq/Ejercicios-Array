Funcion MostrarResultado(edades Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "La edad " i " es " edades[i];
	Fin Para
Fin Funcion


Funcion IngresarNac(a�oNac Por Referencia)
	Definir i Como Entero;
	Definir a�o Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el a�o de nacimiento de la persona ",i,":";
		Leer a�o;
		a�oNac[i]<-a�o;
	Fin Para
Fin Funcion

Funcion actual<-IngresarActual
	Definir actual Como Entero;
	Escribir "Ingrese el a�o actual:";
	Leer actual;
Fin Funcion

Funcion ModificarNacimiento(A�oNac Por Referencia)
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la opcion que desea modificar (1/3):";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i,". A�o de nacimiento: ",A�oNac[i];
	Fin Para
	Leer seleccion;
	Si seleccion>=1 y seleccion<=3 Entonces
		Escribir "Digite el nuevo a�o de nacimiento";
		Leer A�oNac[seleccion];
	SiNo
		Escribir "Posici�n inv�lida";
	FinSi
Fin Funcion

Funcion CalcularEdades(edades Por Referencia, a�oNac Por Referencia, actual)
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		edades[i] <- actual - a�oNac[i];
	Fin Para
	Escribir "Las edades se han calculado exitosamente";
Fin Funcion

Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Guardar a�os de nacimiento";
	Escribir "2. Modificar a�os de nacimiento";
	Escribir "3. Calcular edades";
	Escribir "4. Mostrar edades";
	Escribir "5. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opci�n: ";
	Leer opcion_menu;
Fin Funcion

Algoritmo edades_personas

	Definir A�oNac, edades Como Entero;
	Definir actual, opcion_menu Como Entero;

	Dimension A�oNac[3];
	Dimension edades[3];
	
	actual<-IngresarActual;
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				IngresarNac(a�oNac);
			Caso 2:
				ModificarNacimiento(A�oNac);
			Caso 3:
				CalcularEdades(edades,a�oNac,actual);
			Caso 4:
				MostrarResultado(edades);
			Caso 5:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "No se encuentra registrada esa opci�n";
		Fin Segun
	Hasta Que opcion_menu=5
FinAlgoritmo
