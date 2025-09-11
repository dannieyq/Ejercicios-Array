Funcion opcion_menu <- MostrarMenu
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Guardar números";
	Escribir "2. Modificar número";
	Escribir "3. Mostrar números";
	Escribir "4. Calcular suma";
	Escribir "5. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Funcion suma <- CalcularSuma(n)
	Definir suma Como Real;
	Definir i Como Entero;
	suma <- 0;
	Para i <- 1 Hasta 5 Hacer
		suma <- suma + n[i];
	Fin Para
Fin Funcion

Funcion GuardarNumeros(n Por Referencia, num)
	Definir i Como Entero;
	Para i <- 1 Hasta 5 Hacer
		Escribir "Digite el número ", i, ": ";
		Leer num;
		n[i]<-num;
	Fin Para
Fin Funcion

Funcion MostrarNumeros(n por referencia)
	Definir i Como Entero;
	Escribir "Números almacenados:";
	Para i <- 1 Hasta 5 Hacer
		Escribir "Número ", i, ": ",n[i];
	Fin Para
Fin Funcion

Funcion ModificarNumero(n por referencia)
	Definir nuevo_valor Como Entero;
	Escribir "Ingrese la posición a modificar (1 - 5): ";
	Leer nuevo_valor;
	Si nuevo_valor >= 1 y nuevo_valor <= 5 Entonces
		Escribir "Ingrese el nuevo valor:";
		Leer n[nuevo_valor];
	SiNo
		Escribir "Posición inválida";
	FinSi
Fin Funcion


Algoritmo Menuarreglo
	Definir n Como Entero;
	Definir opcion_menu, suma, num Como Entero;
	Dimension n[5];
	num<-0;
	Repetir
		opcion_menu<-MostrarMenu;
		
		Segun opcion_menu Hacer
			Caso 1:
				GuardarNumeros(n, num);
			Caso 2:
				ModificarNumero(n);
			Caso 3:
				MostrarNumeros(n);
			Caso 4:
				suma <- CalcularSuma(n);
				Escribir "La suma de los números es: ", suma;
			Caso 5:
				Escribir "Saliendo del sistema...";
			De Otro Modo:
				Escribir "Opción inválida";
		FinSegun
	Hasta Que opcion_menu=5
FinAlgoritmo

