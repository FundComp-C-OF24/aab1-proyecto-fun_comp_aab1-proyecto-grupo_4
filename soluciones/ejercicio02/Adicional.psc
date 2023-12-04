Algoritmo FrecuenciasCardiacas
	Definir nombre, seguir, seguir1 Como Cadena
	seguir = "s"
	Definir diaNacimiento, mesNacimiento, anioNacimiento Como Entero
	Definir anioActual, mesActual, diaActual, frecMax Como Entero
	Definir edad Como Real
	Definir frecRango1, frecRango2 Como Real
	Definir dia, cont Como Entero
	Definir historial, hora Como Entero
	anioActual <- 2023
	diaActual <- 03
	mesActual <- 12
	Escribir 'Contador de frecuencias cardiacas'
	Escribir 'Nombre'
	Leer nombre
	Escribir 'D�a de nacimiento'
	Leer diaNacimiento
	Escribir 'Mes de nacimiento'
	Leer mesNacimient
	Escribir 'A�o de nacimiento'
	Leer anioNacimiento
	// C�lculo de edad
	edad <- anioActual-anioNacimiento
	Si mesActual<mesNacimiento O (mesActual==mesNacimiento Y diaActual<diaNacimiento) Entonces
		edad <- edad-1
	FinSi
	// Frecuencia M�xima y Rango de frecuencia
	frecMax <- 220-edad
	frecRango1 <- frecMax*0.50
	frecRango2 <- frecMax*0.85
	Escribir 'Frecuencias cardiacas de '+nombre
	Escribir 'Fecha de Nacimiento: ', diaNacimiento, '/', mesNacimiento, '/', anioNacimiento
	Escribir 'Edad: ', edad
	Escribir 'Frecuencia card�aca m�xima: ', frecMax, ' lpm'
	Escribir 'Rango de frecuencia card�aca: ', frecRango1, ' lpm / ', frecRango2, ' lpm'
	// Arreglos
	Dimensionar historial(10), hora(10)
	// Historial de frecuencias cardiacas
	Escribir 'Desea crear un historial de frecuencias cardiacas por un d�a a su elecci�n'
	Escribir 's/n'
	Leer seguir1
	Si seguir1='s' Entonces
		cont <- 0
		i <- 0
		Mientras seguir='s' Hacer
			cont <- cont+1
			i <- 1+1
			Escribir 'Ingrese su ', cont, ' registro'
			Leer historial[10]
			Escribir 'Ingrese la hora del ', cont, ' registro'
			Leer hora[10]
			Escribir 'Desea ingresar otro registro'
			Escribir 's/n'
			Leer seguir
		FinMientras
		Escribir 'De qu� d�a es el registro'
		Escribir '[1] Lunes'
		Escribir '[2] Martes'
		Escribir '[3] Mi�rcoles'
		Escribir '[4] Jueves'
		Escribir '[5] Viernes'
		Escribir '[6] S�bado'
		Escribir '[7] Domingo'
		Leer dia
		Seg�n dia Hacer
			Caso 1:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Lunes'
			Caso 2:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Martes'
			Caso 3:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Mi�rcoles'
			Caso 4:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Jueves'
			Caso 5:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Viernes'
			Caso 6:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a S�bado'
			Caso 7:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del d�a Domingo'
		FinSeg�n
		Escribir 'Frecuencia ',' Hora'
		Para i<-0 Hasta 10 Con Paso 1 Hacer
			Escribir historial[10], ' lpm', ' ', hora[10]
		FinPara
	FinSi
	Escribir 'Informe terminado'
FinAlgoritmo
