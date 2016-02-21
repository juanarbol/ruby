system("clear")
print "Digite una frase cualquiera "
sentence = gets.chomp.to_s

sentence_string = sentence.split(" ")
limit_for = sentence_string.length

word_same_num = []

mayor = sentence_string[0]

for i in (0 ... limit_for)
	if sentence_string[i].to_s.length == sentence_string[i+1].to_s.length
		word_same_num.push(sentence_string[i], sentence_string[i+1])
	elsif sentence_string[i+1].to_s.length > sentence_string[i].to_s.length
		mayor_caracteres = sentence_string[i].to_s.length
		mayor = sentence_string[i+1].to_s
	end
end

if word_same_num.length > 0
	puts "Las palabras mas largas son #{word_same_num}"
else
	puts "La palabra mas larga es #{mayor}"
end

