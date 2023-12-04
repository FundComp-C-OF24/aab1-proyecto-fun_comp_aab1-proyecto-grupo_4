Algoritmo Adivina_Numero
	Definir esp, esFib Como Lógico
	Definir a, b, temp, esFibonacci, cont Como Entero
	Definir seguir, pista Como Cadena
	num_secreto <- 20
	esp <- Verdadero
	esFibonacci <- 0
	a <- 0
	b <- 1
	cont <- 2
	intentos <- 10
	Escribir '***BIENVENIDO/A***'
	Escribir 'Intenta adivinar el numero que estoy pensando (1-100)'
	Escribir 'TIENES 10 INTENTOS POR PARTIDA, VAMOS'
	Repetir
		Escribir 'Adivine el numero:'
		Leer num_ingresado
		Mientras num_secreto<>num_ingresado Y intentos>1 Hacer
			Escribir 'INCORRECTO!, QUIERES UNA PISTA? (si/no)'
			Escribir 'RECUERDA QUE SI TE DOY UNA PISTA SE TE RESTA UN INTENTO'
			Leer pista
			Si (pista='si') Entonces
				intentos <- intentos-1
				Escribir 'UN INTENTO MENOS :O'
				Escribir 'PISTAS:'
			FinSi
			// Validar la pista de si el numero es mayor o menor
			Si (num_secreto>num_ingresado) Y (pista='si') Entonces
				Escribir 'EL NUMERO ES MAYOR AL QUE INGRESASTE'
			SiNo
				Si (num_secreto<num_ingresado) Y (pista='si') Entonces
					Escribir 'EL NUMERO ES MENOR AL QUE INGRESASTE'
				FinSi
			FinSi
			// Validar la pista de si el numero es par o impar
			Si (num_secreto MOD 2==0) Y (pista='si') Entonces
				Escribir 'EL NUMERO ES PAR'
			SiNo
				Si ((num_secreto MOD 2<>0) Y (pista='si')) Entonces
					Escribir 'EL NUMERO ES IMPAR'
				FinSi
			FinSi
			// Validar la pista de si el numero es o no primo
			Si (num_secreto==1) Y (pista='si') Entonces
				Escribir 'EL NUMERO NO ES PRIMO'
			SiNo
				Mientras (cont<num_secreto) Hacer
					Si (num_secreto MOD cont=0) Entonces
						esp <- Falso
					FinSi
					cont <- cont+1
				FinMientras
			FinSi
			Si (esp=Verdadero) Y (pista='si') Entonces
				Escribir 'EL NUMERO ES PRIMO'
			SiNo
				Si (esp=Falso) Y (pista='si') Entonces
					Escribir 'EL NUMERO NO ES PRIMO'
				FinSi
			FinSi
			// Validar la pista de si el numero pertenece a la serie de Fibonacci
			Mientras esFibonacci<num_secreto Hacer
				temp <- a
				a <- b
				b <- temp+b
				esFibonacci <- a
			FinMientras
			Si (esFibonacci=num_secreto) Entonces
				esFib <- Verdadero
			SiNo
				esFib <- Falso
			FinSi
			Si (esFib=Verdadero Y (pista='si')) Entonces
				Escribir 'EL NUMERO PERTENECE A LA SERIE DE FIBONACCI'
			SiNo
				Si (esFib=Falso Y (pista='si')) Entonces
					Escribir 'EL NUMERO NO PERTENECE A LA SERIE DE FIBONACCI'
				FinSi
			FinSi
			// Validar la pista de si el numero es multiplo de n
			Si (num_secreto MOD 3==0) Y (pista='si') Entonces
				Escribir 'EL NUMERO MULTIPLO DE 3'
			SiNo
				Si (num_secreto MOD 5==0) Y (pista='si') Entonces
					Escribir 'EL NUMERO ES MULTIPLO DE 5'
				SiNo
					Si (num_secreto MOD 7==0) Y (pista='si') Entonces
						Escribir 'EL NUMERO ES MULTIPLO DE 7'
					SiNo
						Si (num_secreto MOD 11==0) Y (pista='si') Entonces
							Escribir 'EL NUMERO ES MULTIPLO DE 11'
						SiNo
							Si (num_secreto MOD 12==0) Y (pista='si') Entonces
								Escribir 'EL NUMERO ES MULTIPLO DE 12'
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			intentos <- intentos-1
			Escribir 'Te quedan ', intentos, ' intentos!'
			Leer num_ingresado
		FinMientras
		Si num_secreto=num_ingresado Entonces
			Escribir 'Exacto! Usted adivino en ', 11-intentos, ' intentos.'
		SiNo
			Escribir '!!!GAME OVER!!!'
			Escribir 'El numero era: ', num_secreto
		FinSi
		Escribir 'Deseas seguir jugando? :) (si/no)'
		Leer seguir
		Escribir '*************************************'
	Hasta Que (seguir=='no')
	Escribir 'GRACIAS POR JUGAR'
FinAlgoritmo
