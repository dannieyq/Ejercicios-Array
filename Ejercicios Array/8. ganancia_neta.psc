Funcion MostrarResultado (ingresos Por Referencia, gastos Por Referencia, ganancias Por Referencia, cantidad)
	
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir  i,". Ingreso:",ingresos[i]," ---- Gasto:" gastos[i],"---- Ganancia neta: " ganancias[i];
	Fin Para
	
Fin Funcion

Funcion cantidad <- IngresarCantidad
	
	Definir cantidad Como Entero;
	Escribir "Digite la cantidad de ganancias que desea obtener";
    Leer cantidad;
	
Fin Funcion

Funcion IngresarIngresos (cantidad,ingresos Por Referencia)
	
	Definir i Como Entero;
	Definir ingreso Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el total del ingreso:";
		Leer ingreso;
		ingresos[i]<-ingreso;
	Fin Para
	
FinFuncion

Funcion Ingresargastos (cantidad,gastos Por Referencia)
	Definir i Como Entero;
	Definir gasto Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el total de gastos:";
		Leer gasto;
		gastos[i]<-gasto;
	Fin Para
Fin Funcion

Funcion ModificarIngreso (ingresos Por Referencia, gastos, cantidad)
	
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la opcion que desea modificar (1/", cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Ingreso:",ingresos[i]," ----- Gasto:" gastos[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 y seleccion<=cantidad Entonces
		Escribir "Digite el nuevo ingreso";
		Leer ingresos[seleccion];
	SiNo
		Escribir "Posición inválida";
	FinSi
Fin Funcion

Funcion ModificarGasto (gastos Por Referencia, ingresos, cantidad)
	
	Definir i, seleccion Como Entero;
	Escribir "Ingrese la opcion que desea modificar (1/", cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Ingreso:",ingresos[i]," ----- Gasto:" gastos[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 y seleccion<=cantidad Entonces
		Escribir "Digite el nuevo ingreso";
		Leer gastos[seleccion];
	SiNo
		Escribir "Posición inválida";
	FinSi
	
Fin Funcion

Funcion Calcular (ganancias, ingresos, gastos, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		ganancias[i] <- ingresos[i] - gastos[i];
	Fin Para
	Escribir "La ganancia neta se ha calculado exitosamente";
Fin Funcion


Funcion opcion_menu <- MenuPrincipal
	
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Guardar ingresos";
	Escribir "2. Guardar gastos";
	Escribir "3. Modificar ingresos";
	Escribir "4. Modificar gastos";
	Escribir "5. Calcular ganancia neta";
	Escribir "6. Mostrar ganancia neta";
	Escribir "7. Salir del sistema";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion


Algoritmo ganancia_neta
	Definir ingresos, gastos, ganancias Como Real;
	Definir cantidad, opcion_menu Como Entero;
	
	cantidad <- IngresarCantidad;
	
	Dimension ingresos[cantidad];
	Dimension ganancias[cantidad];
	Dimension gastos[cantidad];
	
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				IngresarIngresos(cantidad,ingresos);
			Caso 2:
				Ingresargastos(cantidad,gastos);
			Caso 3:
				ModificarIngreso(ingresos,gastos,cantidad);
			Caso 4:
				ModificarGasto(gastos,ingresos,cantidad);
			Caso 5:
				Calcular(ganancias, ingresos, gastos,cantidad);
			Caso 6:
				MostrarResultado(ingresos, gastos, ganancias, cantidad);
			Caso 7:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "No se encuentra registrado ese número. Vuelve a intentarlo";
		Fin Segun
	Hasta Que opcion_menu=7
FinAlgoritmo

