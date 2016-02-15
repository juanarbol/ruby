def menu

puts "Menu:"
puts "(1)Triangulo"
puts "(2)Cuadrado"
puts "(3)Circulo"
puts "(4)Rectangulo"
puts "(5)Salir"
puts "Digite la opcion a realizar"

option = gets.chomp.to_i

case option
	when 1
		puts "Digite la base"
		base = gets.chomp.to_f

		puts "Digite la altura"
		altura = gets.chomp.to_f

		area_triangulo = base*altura * 0.5
		puts "El area es #{area_triangulo}"

	when 2
		puts "Digite el lado"
		lado = gets.chomp.to_f

		area_cuadrado = lado**2
		puts "El area es #{area_cuadrado}"

	when 3
		puts "Digite el radio"
		radio = gets.chomp.to_f

		area_circulo = Math::PI * radio**2
		puts "El area es #{area_circulo}"

	when 4
		puts "Digite la base"
		base = gets.chomp.to_f

		puts "Digite la altura"
		altura = gets.chomp.to_f

		area = base * altura
		puts "El area es #{area}"

	when 5
		puts "Tenga buen dia"

	else
		puts "Opcion no valida"
		menu()
end

end

menu