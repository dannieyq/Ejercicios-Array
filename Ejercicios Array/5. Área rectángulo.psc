Funcion AreaRectangulo ( lista_altura Por Referencia,lista_base Por Referencia ,lista_area Por Referencia, cantidad )
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		lista_area[i]<-lista_altura[i]*lista_base[i];
		Fin Para
		Para i<-1 Hasta cantidad con paso 1 Hacer
			Mostrar i,". ALTURA:",lista_altura[i]," ----- BASE:",lista_base[i]," ----- AREA:",lista_area[i];
		FinPara
Fin Funcion

Funcion  modificar_datos (  lista_altura Por Referencia,lista_base Por Referencia , cantidad )
	Definir seleccion,nueva_base,nueva_altura,i Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Mostrar i,". ALTURA:",lista_altura[i]," ----- BASE:",lista_base[i];
	Fin Para
	Escribir "Ingrese la opcion que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese la nueva altura del rectangulo ",i;
		Leer nueva_altura;
		lista_altura[i]<-nueva_altura;
		Escribir "Ingresa la nueva base del rectangulo ",i;
		leer nueva_base;
		lista_base[i]<-nueva_base;
	Fin Para
Fin Funcion

Funcion ingresar_datos ( lista_altura Por Referencia,lista_base Por Referencia , cantidad )
	Definir i,altura,base Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese la altura del rectángulo ",i;
		Leer altura;
		lista_altura[i]<-altura;
		Escribir "Ingrese la base del rectangulo ",i;
		Leer base;
		lista_base[i]<-base;
	Fin Para
Fin Funcion

Funcion cantidad <- cantidad_rectangulos
	Definir cantidad Como Entero;
	Escribir "Ingrese la cantidad de rectangulos que desea calcular";
	Leer cantidad;
Fin Funcion

Funcion menu_area <- menu
	Definir menu_area Como Entero;
	Mostrar "---------- MENU ----------";
	Mostrar "1.Ingresar base y altura";
	Mostrar "2.Modificar base y altura";
	Mostrar "3.Calcular area del rectangulo";
	Mostrar "4.Salir del programa";
	Leer menu_area;
	
Fin Funcion

Algoritmo area_rectangulo
	Definir lista_altura,lista_base,lista_area como real;
	Definir menu_area,cantidad Como Entero;
	cantidad <- cantidad_rectangulos;
	Dimension lista_base[cantidad];
	Dimension lista_altura[cantidad];
	Dimension lista_area[cantidad];
	Repetir
		menu_area <- menu;
		Segun menu_area Hacer
			1:
				ingresar_datos(lista_altura,lista_base, cantidad );
				Mostrar "Datos ingresados con exito";
	        2:
				modificar_datos(  lista_altura,lista_base, cantidad );
			3:
				AreaRectangulo(lista_altura,lista_base,lista_area,cantidad);
			4:
				Escribir "Saliendo del programa...";
		Fin Segun
    Hasta Que menu_area=4
FinAlgoritmo
