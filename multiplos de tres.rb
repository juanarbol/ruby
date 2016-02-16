puts "Digite el tamanho del vector"
n = gets.chomp.to_i
vector = []

for i in(0 ... n) #LLenado del vector
	puts "DIgite indice #{i}"
	vector.push(gets.chomp.to_f)
end

puts "La cantidad de multiplos de tres es: #{(vector.select { |x| x % 3 == 0 }).length}"