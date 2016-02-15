suma = 0
puts "Digite el numero n"
n = gets.chomp.to_i

for i in(0..n)
	suma += i**2
end
puts "El resultado es #{suma}"

suma_while = 0
init = 0
while init <= n do
	suma_while += init**2
	init += 1
end
puts "El resultado es #{suma_while}"

ini = 0
suma_until = 0
until ini == n
	suma_until += ini**2
	ini += 1
end
puts "El resultado es #{suma_until}"