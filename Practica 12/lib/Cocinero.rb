# @author Miguel jiménez Gomis
class Cocinero
	attr_reader :contador, :experiencia, :annos
	
	# Inicializa Los datos de la clase
	def initialize()
		@experiencia = 0
		@annos = 0
		@contador = 0
	end
	
	# Añade 1 año al cocinero y actualiza el resto de valores 
	def uno_mas()
		@annos += 1
		if @annos > 3
			@experiencia = @annos * 2
			@contador += @experiencia * 1	
		end 
	end
	
	# Quita un plato del contador de platos
	# @return [String] Cadena de info sobre lo que sucede
	def degustar_uno()
		if @contador == 0
			if @annos > 35
				return "El cocinero se ha jubilado y no hay mas platos disponibles"
			else
				return "No hay platos disponibles"
			end
		else
			@contador -= 1
			return "Que delicioso está el plato"
		end
	end
end

# Funcion main para probar la clase con hilos
def main
	cocinero = Cocinero.new()
	comensal = Thread.new do
		2550.times do
		   p cocinero.degustar_uno()
		   #puts "contador #{cocinero.contador}"
		end 
	end
	cocina = Thread.new do
		50.times do
		   cocinero.uno_mas()
		   #puts "edad #{cocinero.annos}"
		   #puts "experiencia #{cocinero.experiencia}"
		   #puts "contador #{cocinero.contador}"
		end 
	end
	cocina.join
	comensal.join
end

#Descomentar para ver output
#main()
