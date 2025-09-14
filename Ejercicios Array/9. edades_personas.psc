Funcion MostrarResultado(edades Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "La edad " i " es " edades[i];
	Fin Para
Fin Funcion


Funcion IngresarNac(añoNac Por Referencia)
	Definir i Como Entero;
	Definir año Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el año de nacimiento de la persona ",i,":";
		Leer año;
		añoNac[i]<-año;
	Fin Para
Fin Funcion

Funcion actual<-IngresarActual
	Definir actual Como Entero;
	Escribir "Ingrese el año actual:";
	Leer actual;
Fin Funcion

Funcion ModificarNacimiento(AñoNac Por Referencia)
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la opcion que desea modificar (1/3):";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i,". Año de nacimiento: ",AñoNac[i];
	Fin Para
	Leer seleccion;
	Si seleccion>=1 y seleccion<=3 Entonces
		Escribir "Digite el nuevo año de nacimiento";
		Leer AñoNac[seleccion];
	SiNo
		Escribir "Posición inválida";
	FinSi
Fin Funcion

Funcion CalcularEdades(edades Por Referencia, añoNac Por Referencia, actual)
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		edades[i] <- actual - añoNac[i];
	Fin Para
	Escribir "Las edades se han calculado exitosamente";
Fin Funcion

Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Guardar años de nacimiento";
	Escribir "2. Modificar años de nacimiento";
	Escribir "3. Calcular edades";
	Escribir "4. Mostrar edades";
	Escribir "5. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Algoritmo edades_personas

	Definir AñoNac, edades Como Entero;
	Definir actual, opcion_menu Como Entero;

	Dimension AñoNac[3];
	Dimension edades[3];
	
	actual<-IngresarActual;
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				IngresarNac(añoNac);
			Caso 2:
				ModificarNacimiento(AñoNac);
			Caso 3:
				CalcularEdades(edades,añoNac,actual);
			Caso 4:
				MostrarResultado(edades);
			Caso 5:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "No se encuentra registrada esa opción";
		Fin Segun
	Hasta Que opcion_menu=5
FinAlgoritmo
