Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Ingresar calorías de los 7 días";
	Escribir "2. Modificar calorías de un día específico";
	Escribir "3. Mostrar calorías por día";
	Escribir "4. Mostrar total de la semana";
	Escribir "5. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Funcion totald <- CaloriasDias(num)
	Definir desayuno, almuerzo, cena, totald Como Real;
	Escribir "Día ", num, " - Ingrese calorías del desayuno: ";
	Leer desayuno;
	Escribir "Día ", num, " - Ingrese calorías del almuerzo: ";
	Leer almuerzo;
	Escribir "Día ", num, " - Ingrese calorías de la cena: ";
	Leer cena;
	totald <- desayuno + almuerzo + cena;
Fin Funcion

Funcion Mostrardia(num, cal)
	Escribir "El día ", num, " se consumieron ", cal, " calorías.";
Fin Funcion

Funcion ModificarDia(dia Por Referencia, num)
	Escribir "Va a modificar el día ", num;
	dia <- CaloriasDias(num);
	Escribir "El día ", num, " ha sido actualizado.";
Fin Funcion

Funcion totalweek <- CaloriasTotales(n1,n2,n3,n4,n5,n6,n7)
	Definir totalweek Como Real;
	totalweek <- n1 + n2 + n3 + n4 + n5 + n6 + n7;
	Escribir "El total de calorías de la semana es: ", totalweek;
Fin Funcion

Algoritmo CaloriasSemana
	Definir dia1, dia2, dia3, dia4, dia5, dia6, dia7, total Como Real;
	Definir opcion_menu, seleccion Como Entero;
	
	dia1<-0; dia2<-0; dia3<-0; dia4<-0; dia5<-0; dia6<-0; dia7<-0;
	
	Repetir
		opcion_menu<- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				dia1 <- CaloriasDias(1);
				dia2 <- CaloriasDias(2);
				dia3 <- CaloriasDias(3);
				dia4 <- CaloriasDias(4);
				dia5 <- CaloriasDias(5);
				dia6 <- CaloriasDias(6);
				dia7 <- CaloriasDias(7);
			Caso 2:
				Escribir "Ingrese el número del día que desea modificar (1 a 7): ";
				Leer seleccion;
				Segun seleccion Hacer
					Caso 1: 
						ModificarDia(dia1,1);
					Caso 2: 
						ModificarDia(dia2,2);
					Caso 3: 
						ModificarDia(dia3,3);
					Caso 4: 
						ModificarDia(dia4,4);
					Caso 5: 
						ModificarDia(dia5,5);
					Caso 6: 
						ModificarDia(dia6,6);
					Caso 7: 
						ModificarDia(dia7,7);
					De Otro Modo:
						Escribir "Día inválido";
				Fin Segun
			Caso 3: 
				Mostrardia(1,dia1);
				Mostrardia(2,dia2);
				Mostrardia(3,dia3);
				Mostrardia(4,dia4);
				Mostrardia(5,dia5);
				Mostrardia(6,dia6);
				Mostrardia(7,dia7);
			Caso 4:
				total<-CaloriasTotales(dia1,dia2,dia3,dia4,dia5,dia6,dia7);
			Caso 5:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "Opción inválida, intente nuevamente.";
		Fin Segun
	Hasta Que opcion_menu=5
FinAlgoritmo
