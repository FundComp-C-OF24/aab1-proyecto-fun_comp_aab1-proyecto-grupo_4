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
	Escribir 'Día de nacimiento'
	Leer diaNacimiento
	Escribir 'Mes de nacimiento'
	Leer mesNacimient
	Escribir 'Año de nacimiento'
	Leer anioNacimiento
	// Cálculo de edad
	edad <- anioActual-anioNacimiento
	Si mesActual<mesNacimiento O (mesActual==mesNacimiento Y diaActual<diaNacimiento) Entonces
		edad <- edad-1
	FinSi
	// Frecuencia Máxima y Rango de frecuencia
	frecMax <- 220-edad
	frecRango1 <- frecMax*0.50
	frecRango2 <- frecMax*0.85
	Escribir 'Frecuencias cardiacas de '+nombre
	Escribir 'Fecha de Nacimiento: ', diaNacimiento, '/', mesNacimiento, '/', anioNacimiento
	Escribir 'Edad: ', edad
	Escribir 'Frecuencia cardíaca máxima: ', frecMax, ' lpm'
	Escribir 'Rango de frecuencia cardíaca: ', frecRango1, ' lpm / ', frecRango2, ' lpm'
	// Arreglos
	Dimensionar historial(10), hora(10)
	// Historial de frecuencias cardiacas
	Escribir 'Desea crear un historial de frecuencias cardiacas por un día a su elección'
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
		Escribir 'De qué día es el registro'
		Escribir '[1] Lunes'
		Escribir '[2] Martes'
		Escribir '[3] Miércoles'
		Escribir '[4] Jueves'
		Escribir '[5] Viernes'
		Escribir '[6] Sábado'
		Escribir '[7] Domingo'
		Leer dia
		Según dia Hacer
			Caso 1:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Lunes'
			Caso 2:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Martes'
			Caso 3:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Miércoles'
			Caso 4:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Jueves'
			Caso 5:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Viernes'
			Caso 6:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Sábado'
			Caso 7:
				Escribir 'Historial de frecuencias cardiacas de ',nombre,' del día Domingo'
		FinSegún
		Escribir 'Frecuencia ',' Hora'
		Para i<-0 Hasta 10 Con Paso 1 Hacer
			Escribir historial[10], ' lpm', ' ', hora[10]
		FinPara
	FinSi
	Escribir 'Informe terminado'
FinAlgoritmo
