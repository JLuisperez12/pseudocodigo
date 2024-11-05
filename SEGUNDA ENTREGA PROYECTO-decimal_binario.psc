Algoritmo decimal_binario 
    Definir decimal_num Como Entero
    Definir base Como ENTERO
    Definir binario Como Entero
    Definir bits Como Entero
    Definir respuesta Como Caracter
	
    Repetir
        Escribir "Ingrese el número a convertir:"
        Leer decimal_num;
		
        Si decimal_num >= 0 Entonces
            binario = 0  // Reiniciar la variable binario para cada nueva conversión
            base = 1  // Reiniciar base a 1 para cada conversión
			
            Mientras decimal_num > 0 Hacer
                bits = decimal_num MOD 2
                binario = binario + bits * base
                decimal_num = trunc(decimal_num / 2)
                base = base * 10
            FinMientras
			
            Escribir "El número en binario es:", binario
        Sino
            Escribir "Por favor, ingrese un decimal válido."
        FinSi
		
        Escribir "¿Desea intentar de nuevo? (s/n): ";
        Leer respuesta;
    Hasta Que respuesta = "n" o respuesta = "N"
    
    Escribir "Gracias por usar el conversor."
FinAlgoritmo

