#Multiplos de 3 y 5
system("cls")
suma = 0
for i in(1...1000)
	unless 3*i >= 1000 and 5*i >= 1000
		unless 3*i >= 1000
			suma += 3*i
		end
		unless 5*i >= 1000
			suma += 5*i
		end
	end	
end
puts suma
