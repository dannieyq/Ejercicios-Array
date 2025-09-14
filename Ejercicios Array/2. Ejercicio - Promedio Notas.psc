Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Ingresar notas de las materias";
	Escribir "2. Modificar nota de una materia";
	Escribir "3. Calcular promedio de una materia";
	Escribir "4. Mostrar notas de una materia";
	Escribir "5. Mostrar promedios de todas las materias";
	Escribir "6. Salir del sistema";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Funcion GuardarNotas(notas Por Referencia, nombre)
	Definir i Como Entero;
	Para i <- 1 Hasta 3 Hacer
		Escribir "Ingrese la nota ", i, " de ", nombre, ": ";
		Leer notas[i];
	FinPara
FinFuncion

Funcion ModificarNota(notas Por Referencia, nombre)
	Definir nueva_nota Como Entero;
	Escribir "Modificar nota de ", nombre;
	Escribir "Ingrese la posición (1-3): ";
	Leer nueva_nota;
	Si nueva_nota >= 1 Y nueva_nota <= 3 Entonces
		Escribir "Ingrese la nueva nota: ";
		Leer notas[nueva_nota];
	SiNo
		Escribir "Posición inválida";
	FinSi
FinFuncion

Funcion promedio <- CalcularPromedio(notas)
	Definir promedio Como Real;
	Definir i Como Entero;
	Definir suma Como Real;
	suma <- 0;
	Para i <- 1 Hasta 3 Hacer
		suma <- suma + notas[i];
	FinPara
	promedio <- suma / 3;
FinFuncion

Funcion MostrarNotas(notas, nombre)
	Definir i Como Entero;
	Escribir "Notas de ", nombre, ":";
	Para i <- 1 Hasta 3 Hacer
		Escribir "   Nota ", i, ": ", notas[i];
	FinPara
FinFuncion

Funcion MostrarPromedios(notas_mate, notas_esp, notas_ing)
	Escribir "----- PROMEDIOS -----";
	Escribir "Matemáticas: ", CalcularPromedio(notas_mate);
	Escribir "Español: ", CalcularPromedio(notas_esp);
	Escribir "Inglés: ", CalcularPromedio(notas_ing);
FinFuncion

Algoritmo TresMaterias
	Definir opcion_menu, materia Como Entero;
	Definir notas_mate, notas_esp, notas_ing Como Real;
	Dimension notas_mate[3];
	Dimension notas_esp[3];
	Dimension notas_ing[3];
	
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				GuardarNotas(notas_mate, "Matemáticas");
				GuardarNotas(notas_esp, "Español");
				GuardarNotas(notas_ing, "Inglés");
			Caso 2:
				Escribir "Elija la materia:";
				Escribir "1. Matemáticas";
				Escribir "2. Español";
				Escribir "3. Inglés";
				Leer materia;
				Segun materia Hacer
					Caso 1: 
						ModificarNota(notas_mate, "Matemáticas");
					Caso 2: 
						ModificarNota(notas_esp, "Español");
					Caso 3: 
						ModificarNota(notas_ing, "Inglés");
				FinSegun
			Caso 3:
				Escribir "Elija la materia:";
				Escribir "1. Matemáticas";
				Escribir "2. Español";
				Escribir "3. Inglés";
				Leer materia;
				Segun materia Hacer
					Caso 1: 
						Escribir "Promedio Matemáticas: ", CalcularPromedio(notas_mate);
					Caso 2: 
						Escribir "Promedio Español: ", CalcularPromedio(notas_esp);
					Caso 3: 
						Escribir "Promedio Inglés: ", CalcularPromedio(notas_ing);
				FinSegun
			Caso 4:
				Escribir "Elija la materia:";
				Escribir "1. Matemáticas";
				Escribir "2. Español";
				Escribir "3. Inglés";
				Leer materia;
				Segun materia Hacer
					Caso 1: 
						MostrarNotas(notas_mate, "Matemáticas");
					Caso 2: 
						MostrarNotas(notas_esp, "Español");
					Caso 3: 
						MostrarNotas(notas_ing, "Inglés");
				FinSegun
			Caso 5:
				MostrarPromedios(notas_mate, notas_esp, notas_ing);
			Caso 6:
				Escribir "Saliendo del programa...";
		FinSegun
	Hasta Que opcion_menu=6;
FinAlgoritmo