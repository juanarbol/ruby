puts "Digite el tamanho de los vectores"
n = gets.chomp.to_i
vector1 = []
vector2 = []


for j in(0 ...n)
	puts "LLenando vector1 indice #{j}"
	vector1[j] = gets.chomp.to_f
end

for j in(0 ...n)
	puts "LLenando vector2 indice #{j}"
	vector2[j] = gets.chomp.to_f
end

c1 = vector1.reduce(:+) 
c2 = vector2.reduce(:+)

puts "La suma de los vectores es #{c = [c1+c2]}"