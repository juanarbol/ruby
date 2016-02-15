puts "Digiste el numero n a multiplicar hasta 20"
n = gets.chomp.to_i

for i in(0..20)
	puts "#{n} * #{i} : #{n*i}"
end