Funcion total_impresiones <- calcular_total_impresiones ( impresiones_dia Por Referencia )
	Definir i , total_impresiones Como Entero;
	total_impresiones <- 0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_impresiones <- total_impresiones + impresiones_dia[i];
	Fin Para
Fin Funcion

Funcion total_ingresos <- calcular_total_ingresos ( dias_semana Por Referencia , impresiones_dia Por Referencia , costo )
	Definir i Como Entero;
	Definir total_ingresos Como Real;
	total_ingresos <- 0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_ingresos <- total_ingresos + ( impresiones_dia[i] * costo );
	Fin Para
Fin Funcion

Funcion mostrar_informe ( dias_semana Por Referencia , impresiones_dia Por Referencia , total_ingresos , total_impresiones )
	Definir i Como Entero;
	Mostrar "DIA ----------- CANTIDAD";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,". ",dias_semana[i]," ---> ",impresiones_dia[i];
	Fin Para
	Mostrar "Total de impresiones en la semana: ",total_impresiones;
	Mostrar "Total de ingresos: $",total_ingresos;
Fin Funcion

Funcion modificar_registro ( dias_semana Por Referencia , impresiones_dia Por Referencia )
	Definir i , seleccion Como Entero;
	Definir nueva_cantidad Como Entero;
	Mostrar "DIA ----------- CANTIDAD";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,". ",dias_semana[i]," ---> ",impresiones_dia[i];
	Fin Para
	Escribir "Elija el día que desea modificar:";
	Leer seleccion;
	Escribir "Ingrese la nueva cantidad de impresiones para ",dias_semana[seleccion],":";
	Leer nueva_cantidad;
	impresiones_dia[seleccion] <- nueva_cantidad;
	Mostrar "Datos modificados con éxito.";
Fin Funcion

Funcion costo <- registrar_datos ( dias_semana Por Referencia , impresiones_dia Por Referencia )
	Definir i Como Entero;
	Definir costo Como Real;
	Escribir "Digite el valor de cada impresión:";
	Leer costo;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Número de impresiones del día ",dias_semana[i],":";
		Leer impresiones_dia[i];
	Fin Para
	Mostrar "Información registrada correctamente.";
Fin Funcion

Funcion opcionn <- menu_principal
	Definir opcionn Como Entero;
	Mostrar " ----- MENU ----- ";
	Mostrar "1. Registrar datos de la semana";
	Mostrar "2. Modificar datos de un día";
	Mostrar "3. Ver total semanal";
	Mostrar "4. Salir del programa";
	Escribir "Seleccione una opción:";
	Leer opcionn;
Fin Funcion

Algoritmo control_impresiones
	Definir dias_semana Como Caracter;
	Definir impresiones_dia Como Entero;
	Definir total_ingresos,total_impresiones,costo Como Real;
	Definir opcionn Como Entero;
	Dimension dias_semana[7];
	dias_semana[1]<-"Lunes";
	dias_semana[2]<-"Martes";
	dias_semana[3]<-"Miercoles";
	dias_semana[4]<-"Jueves";
	dias_semana[5]<-"Viernes";
	dias_semana[6]<-"Sabado";
	dias_semana[7]<-"Domingo";
	Dimension impresiones_dia[7];
	Repetir
		opcionn <- menu_principal;
		Segun opcionn Hacer
			1:
				costo <- registrar_datos(dias_semana, impresiones_dia);
			2:
				modificar_registro(dias_semana, impresiones_dia);
			3:
				total_ingresos <- calcular_total_ingresos(dias_semana, impresiones_dia, costo);
				total_impresiones <- calcular_total_impresiones(impresiones_dia);
				mostrar_informe(dias_semana, impresiones_dia, total_ingresos, total_impresiones);
			4:
				Mostrar "Saliendo del programa...";
		Fin Segun
	Hasta Que opcionn=4
FinAlgoritmo
