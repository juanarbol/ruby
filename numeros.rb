v = []
puts "Deme el tamanho del array"
n = gets.chomp.to_i
puts "Deme el numero k"
k = gets.chomp.to_i
k.to_s
va = [0,1,2]

for i in(0...n)
	v.push(rand(1..1000))
	if v[v.length].to_s == k
		puts
	end	
end

puts v