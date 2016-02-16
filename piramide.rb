puts "Digite el numero de filas"
n = gets.chomp.to_i

tama_base = 1 + (n-1)*2

for vertical in(1..n)
	an = 1 + (vertical-1)*2
	#espacios

	for esp in(0 .. ((tama_base/2).to_i) - vertical  )
		print " "
	end
	
	

	for horizonal in(1 .. an)
		print "*"
	end
	print "\n"

end	