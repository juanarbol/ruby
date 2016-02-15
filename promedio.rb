n = []
puts "Cuantos numeros va a digitar?"
size = gets.chomp.to_i

for i in(0...size)
	n[i] = gets.chomp.to_f
end

def promedio size,array
	suma = 0
	for i in(0...size)
		suma += array[i]
	end
	promedio = suma / size
	return "El promedio es #{promedio.to_f}"
end

def menor array,size

menor = array[0]
indice = 0
	while indice < size
		
		if array[indice] < menor
			menor = array[indice]
		end #fin IF

	indice+=1

	end #fin while
return menor
end # fin metodo

def mayor array,size

mayor = array[0]
indice = 0
	while indice < size
		
		if array[indice] > mayor
			mayor = array[indice]
		end #fin IF

	indice+=1

	end #fin while
return mayor
end # fin metodo

puts "El promedio del arraglo es #{promedio(size,n)}"
puts "El numero mayor del arreglo es #{mayor(n,size)}"
puts "El numero menor del arreglo es #{menor(n,size)}"