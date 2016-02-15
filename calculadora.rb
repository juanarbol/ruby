valores = []
puts "Buen dia, digite el primer valor"
valores[0] = gets.chomp.to_f
puts "Digite el segundo valor"
valores[1] = gets.chomp.to_f

puts "Finalmente, digite la operacion a ejecutar (+,-,*,/)"
valores[2] = gets.chomp.to_s

def calcular val1,val2,ope
	case ope
		when "+"
			return	ans = val1 + val2
		when "-"
			return	ans = val1 - val2
		when "/"
			return	ans = val1 / val2
		when "*"
			return	ans = val1 * val2
		else
			return "Operacion invalida"
	end
end

puts(calcular valores[0],valores[1],valores[2])

