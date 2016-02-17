#Fibo-numbers
system("cls")
fibo = 0
puts "Digite n, para calcular n fobinacci"
n = gets.chomp.to_i
numeros = [0,1]

for i in(0 ... n)
	fibo = numeros[i] + numeros[i+1]
	numeros.push(fibo)
	puts fibo
end	