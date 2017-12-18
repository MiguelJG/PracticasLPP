#Realizado por Miguel Jiménez Gomis
class Calculadora_IG
	
	attr_reader :data

	def initialize()
		# fileObj = File.new("#{ARGV[0]}", "r")
		fileObj = File.new("prueba.txt","r")
		@data = Array.new
		fileObj.each_line do |line| #se introducen los datos como vectores al vector de datos (matriz)
			@data.push(line.split)
		end
		fileObj.close
		@data.shift #eliminamos el primer vector que contiene datos redundantes
		return @data
	end

	def AIBC()
		@AIBC = Array.new
		persona = 1
		@data.each do |dummy|
			if(dummy[0].to_i == persona)
				temp = dummy[0]
			elsif (dummy[0].to_i == persona + 1)
				persona += 1
			else
				dummy.unshift persona #se añade el identificador de persona a cada linea
			end
			temp = Array.new
			temp.push persona
                        temp.push dummy[1]  
			contador = 3 #se calcula el AIBC de cada elemento
			g0 = dummy[2].to_f
			_Si = 0
			while (contador < dummy.length) do
				_Si += (((Float(dummy[contador]) - g0)+(Float(dummy[contador-1]) - g0))/2) * 5
				contador += 1
			end
			temp.push _Si
			@AIBC.push temp  #se añaden los datos a la matriz aibc		 
		end
		return @AIBC
	end

	def IGind()
		self.AIBC
		@IGind = Array.new
		contador = 0
		indexglucosa = 0
		init = 0
		@AIBC.each do |dummy|
			bool_no = 1
			contador = init
			while (contador < @AIBC.length && bool_no == 1) do
        			 if (@AIBC[contador][1] == "glucosa")
                			indexglucosa =  contador
					contador += 1
					bool_no = 0
					init += 1
         			end
				if(bool_no == 1)
         				contador += 1
				end
 			end
			if(dummy[1] != "glucosa")
				temp = Array.new
				temp.push(dummy[0])
				temp.push(dummy[1])
				temp.push((dummy[2].to_f/@AIBC[indexglucosa][2].to_f)*100)
				@IGind.push temp
			end
		end
		return @IGind
	end

	def IG()
		self.IGind
		@IG = Array.new
		contador = 0
		while (contador < @IGind.length && @IGind[contador][0] == 1) do
			temp = Array.new
			temp.push @IGind[contador][1]
			sumatorio = @IGind[contador][2]
			n = 1
			otrocontador = contador + 1
			while (otrocontador < @IGind.length )
				if(@IGind[otrocontador][1] == @IGind[contador][1])
					sumatorio += @IGind[otrocontador][2]
					n += 1	
				end
				otrocontador += 1
			end
			media = sumatorio/n
			temp.push media
			@IG.push temp #se añaden las medias de cada alimento
			contador += 1
		end
		@IG.each do |dummy|
			puts "IG-------->   #{dummy}"
		end
		return @IG
	end
	
end

x = Calculadora_IG.new
x.IG()
