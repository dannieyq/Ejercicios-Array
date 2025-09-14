Funcion ver_factura (cantidad, servicios Por Referencia, pagos Por Referencia, total)
	Definir i Como Entero;
	Escribir "======= FACTURA =======";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i, ". ", servicios[i], " --- $", pagos[i];
	Fin Para
	Escribir "TOTAL A PAGAR: $", total;
Fin Funcion

Funcion suma <- calcular_suma (cantidad, pagos Por Referencia)
	Definir suma,i Como Real;
	suma <- 0;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		suma <- suma + pagos[i];
	Fin Para
Fin Funcion

Funcion editar_servicio (cantidad, servicios Por Referencia, pagos Por Referencia)
	Definir i, posicion Como Entero;
	Definir nuevo_nombre Como Caracter;
	Definir nuevo_valor Como Real;
	
	Escribir "Lista de servicios:";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i, ". ", servicios[i], " --- $", pagos[i];
	Fin Para
	
	Escribir "Digite el número del servicio que desea cambiar:";
	Leer posicion;
	
	Escribir "Nuevo nombre del servicio ",  posicion, ":";
	Leer nuevo_nombre;
	servicios[posicion] <- nuevo_nombre;
	
	Escribir "Nuevo valor a pagar por el servicio ",  posicion, ":";
	Leer nuevo_valor;
	pagos[posicion] <- nuevo_valor;
	
	Escribir "Servicio actualizado con éxito.";
Fin Funcion

Funcion ingresar_servicios (cantidad, servicios Por Referencia, pagos Por Referencia)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Nombre del servicio ", i, ":";
		Leer servicios[i];
		Escribir "Valor a pagar del servicio ", i, ":";
		Leer pagos[i];
	Fin Para
	Escribir "Datos ingresados correctamente.";
Fin Funcion

Funcion opcionn <- menu
	Definir opcionn Como Entero;
	Escribir "------ MENU ------";
	Escribir "1. Ingresar servicios";
	Escribir "2. Modificar servicio";
	Escribir "3. Mostrar factura";
	Escribir "4. Salir del programa";
	Escribir "Seleccione una opción:";
	Leer opcionn;
Fin Funcion

Algoritmo gestion_servicios
	Definir cantidad, opcionn Como Entero;
	Definir servicios Como Caracter;
	Definir pagos, total Como Real;
	
	Escribir "¿Cuántos servicios desea registrar?";
	Leer cantidad;
	
	Dimension servicios[cantidad];
	Dimension pagos[cantidad];
	
	Repetir
		opcionn <- menu;
		Segun opcionn Hacer
			Caso 1:
				ingresar_servicios(cantidad, servicios, pagos);
			Caso 2:
				editar_servicio(cantidad, servicios, pagos);
			Caso 3:
				total <- calcular_suma(cantidad, pagos);
				ver_factura(cantidad, servicios, pagos, total);
			Caso 4:
				Escribir "Saliendo del programa...";
		Fin Segun
	Hasta Que opcionn = 4
	
FinAlgoritmo
