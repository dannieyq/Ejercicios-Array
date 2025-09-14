Funcion MostrarResultado(pesos Por Referencia, alturas Por Referencia, imcs Por Referencia, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Persona ",i,":";
		Escribir "   Peso: ", pesos[i], " kg";
		Escribir "   Altura: ", alturas[i], " m";
		Escribir "   IMC: ", imcs[i];
		
		Si imcs[i] < 18.5 Entonces
			Escribir "   Clasificación: Bajo peso";
		SiNo
			Si imcs[i] >= 18.5 Y imcs[i] < 25 Entonces
				Escribir "   Clasificación: Normal";
			SiNo
				Si imcs[i] >= 25 Y imcs[i] < 30 Entonces
					Escribir "   Clasificación: Sobrepeso";
				SiNo
					Escribir "   Clasificación: Obesidad";
				FinSi
			FinSi
		FinSi
	Fin Para
Fin Funcion

Funcion cantidad <- IngresarCantidad
	Definir cantidad Como Entero;
	Escribir "Digite la cantidad de personas:";
	Leer cantidad;
Fin Funcion

Funcion IngresarPesos(cantidad, pesos Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el peso (kg) de la persona ",i,":";
		Leer pesos[i];
	Fin Para
Fin Funcion

Funcion IngresarAlturas(cantidad, alturas Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese la altura (m) de la persona ",i,":";
		Leer alturas[i];
	Fin Para
Fin Funcion

Funcion ModificarPeso(pesos Por Referencia, cantidad)
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la persona a modificar (1/",cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Peso actual: ",pesos[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 Y seleccion <= cantidad Entonces
		Escribir "Digite el nuevo peso (kg):";
		Leer pesos[seleccion];
	SiNo
		Escribir "Posición inválida";
	FinSi
Fin Funcion

Funcion ModificarAltura(alturas Por Referencia, cantidad)
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la persona a modificar (1/",cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Altura actual: ",alturas[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 Y seleccion <= cantidad Entonces
		Escribir "Digite la nueva altura (m):";
		Leer alturas[seleccion];
	SiNo
		Escribir "Posición inválida";
	FinSi
Fin Funcion

Funcion CalcularIMC(imcs Por Referencia, pesos Por Referencia, alturas Por Referencia, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		imcs[i] <- pesos[i] / (alturas[i] * alturas[i]);
	Fin Para
	Escribir "Los IMC se han calculado exitosamente.";
Fin Funcion

Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Ingresar pesos";
	Escribir "2. Ingresar alturas";
	Escribir "3. Modificar peso";
	Escribir "4. Modificar altura";
	Escribir "5. Calcular IMC";
	Escribir "6. Mostrar resultados";
	Escribir "7. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Algoritmo CalculoIMC
	Definir pesos, alturas, imcs Como Real;
	Definir cantidad, opcion_menu Como Entero;
	
	cantidad <- IngresarCantidad;
	Dimension pesos[cantidad];
	Dimension alturas[cantidad];
	Dimension imcs[cantidad];
	
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				IngresarPesos(cantidad, pesos);
			Caso 2:
				IngresarAlturas(cantidad, alturas);
			Caso 3:
				ModificarPeso(pesos, cantidad);
			Caso 4:
				ModificarAltura(alturas, cantidad);
			Caso 5:
				CalcularIMC(imcs, pesos, alturas, cantidad);
			Caso 6:
				MostrarResultado(pesos, alturas, imcs, cantidad);
			Caso 7:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente.";
		Fin Segun
	Hasta Que opcion_menu=7
FinAlgoritmo
