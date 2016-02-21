system("clear")
contador = 0
num_divisores = 0
numero = 2520

while num_divisores <= 20 #bucle con fin determinado
  for i in 1 .. 20 #se evaluan los divisores
    if numero % i == 0
      num_divisores += 1
    end
  end
  if num_divisores < 20 #si se tienen menos de 20 divisores
    numero +=1 #es otro número y
    num_divisores = 0 #se reinicia el contador de divisores
  end
end
puts numero #al tener los 20 divisorees, qué número fué (es 232792560) -tarda mucho, demasiado-
