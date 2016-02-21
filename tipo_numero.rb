system("clear")
puts "Digite el numero a determinar el tipo"
n = gets.chomp.to_i
divisores = []

for i in(1 .. n/2)
  divisores.push(i) if n % i == 0
end
#divisores.push(n)

suma_divisores = divisores.reduce(:+)

if suma_divisores > n
  puts "#{n} es abundante"
elsif suma_divisores < n
  puts "#{n} es defectivo"
else
  puts "#{n} es perfecto"
end
