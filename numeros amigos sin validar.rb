def definir_divisores numero
divisores = [] #se crea n arreglo vacío para guardar los divisores de un número
	for i in(1 ... numero) #no se va hasta el número, porque así este se volvería múltiplo y se caga en la suma
		if(numero % i == 0)
			divisores.push(i) #metemos todos los divisores del numero en un arreglo
		end
	end
	return divisores #finalmente se retorna el arreglo con los divisores
end

def suma_divisores array #se necesito de un arreglo para funcionar, un arreglo qué sumar
suma = 0 #se inicializa con cero (como cualquier sumatoria)
	for i in(0 ... array.length) #no se incluye el tamaño del arreglo por obvias razones
		suma += array[i] #se reescribe suma, el for hace la suma por sí mismo
	end	
	return suma #se retorna la suma
end

for n in( 1 .. 10000) #números del 1 al 'x'
	resultado = suma_divisores(definir_divisores(suma_divisores(definir_divisores(n) )))  #la 'magia'
	if(n == resultado) #si lo que se obtiene de la magia, es igual al número n, es porque son amigos
		puts "#{n} y #{suma_divisores definir_divisores n}" #se imprime la pareja PD: NO está validado para NÚMEROS PERFECTOS NI COMBINACIONES
	end	
end