#entidad personas
class personas
	def initialize(nacionalidad,documento,nombre,edad)
		@nacionalidad = nacionalidad
		@documento = documento
		@nombre = nombre
		@edad = edad
	end
end

class estudiante < personas
	attr_accessor :notas
	def initialize nota
		@notas = notas
	end

	def agregar_nota(nota)
		@notas.push nota
	end

end

class profesor < personas
	def initialize sueldo,materia
		@sueldo = sueldo
		@materia = materia
	end
end
class personal_aseo < personas
	def initialize zona
		@zona = zona
	end
end
#salones
class salones
	def initialize nombre,dimension
		@nombre = nombre
		@dimension = dimension
	end
end

class salon_preescolar < salones
	def initialize color
		@color = color
	end
end
#nota
class nota < materia
	def initialize valor
		@valor = valor
	end
end