p "Digite el numero a descomponer en factores primos"
numero = gets.chomp.to_i
n = numero
factores = []
divisor = 2

while numero != 1
	if numero % divisor == 0
		factores.push(divisor)
		numero /= divisor
	else
		divisor += 1
	end
end

mayor = factores[0]

for i in 1 ... factores.length
  if factores[i] > mayor
    mayor = factores[i]
  end
end
puts "El factor primo mayor de #{n} es #{mayor}"