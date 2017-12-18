require 'lib/Calculadora_IG'
require 'test/unit'

class TestCalculadora < Test::Unit::TestCase

	def setup
		@output = Calculadora_IG.new
		@output2= Calculadora_IG.new
		@output3 = Calculadora_IG.new
		@output4 = Calculadora_IG.new
	end

	def tear_down
		#nothing
	end

	def test_simple
		resultado = Array.new
		resultado = [["comp.manzana", 54.499780077077745], ["yogurt", 41.37941416722519], ["chocolate", 13.328114527479904]]
		resultado2 = Array.new
		resultado2 = [["1", "comp.manzana", "6.7", "6.5", "6.8", "6.9", "7.0", "7.1", "6.9", "6.9", "6.9", "6.7", "6.9", "7.3", "7.0", "7.0", "7.2", "7.1", "6.8", "7.2", "7.3", "7.0", "6.8", "6.7", "6.8", "6.7", "6.9"], ["yogurt", "6.1", "6.6", "6.3", "6.3", "6.1", "6.9", "6.8", "6.5", "6.4", "6.9", "6.8", "6.5", "6.3", "6.2", "6.7", "6.2", "5.9", "5.8", "5.8", "5.8", "5.8", "5.8", "5.9", "6.2", "6.4"], ["chocolate", "6.5", "6.5", "6.7", "6.5", "6.5", "6.8", "6.7", "6.2", "6.5", "7.2", "6.9", "7.0", "6.3", "6.2", "6.1", "5.9", "5.8", "6.1", "6.7", "6.7", "6.6", "6.7", "6.9", "7.2", "7.1"], ["glucosa", "4.9", "5.3", "5.9", "6.7", "7.2", "7.6", "8.0", "8.2", "8.2", "8.4", "8.3", "8.3", "8.0", "7.5", "7.1", "6.8", "6.8", "6.9", "6.8", "6.3", "6.2", "6.3", "6.2", "6.3", "6.1"], ["2", "comp.manzana", "4.6", "4.8", "5.3", "5.6", "6.1", "6.5", "6.6", "7.0", "7.0", "6.8", "6.4", "6.3", "6.1", "6.1", "6.2", "6.0", "6.1", "6.1", "6.2", "6.3", "6.4", "6.1", "6.1", "5.7", "5.9"], ["yogurt", "4.9", "4.9", "5.2", "5.8", "6.5", "7.0", "7.2", "7.3", "7.3", "6.6", "6.2", "6.1", "6.0", "6.1", "5.9", "5.9", "5.9", "5.9", "5.8", "5.8", "5.5", "5.5", "5.6", "5.9", "5.9"], ["chocolate", "4.6", "4.6", "4.7", "4.7", "4.8", "4.7", "4.8", "4.8", "4.6", "4.4", "4.7", "4.7", "4.8", "4.7", "5.2", "5.9", "5.9", "5.7", "5.4", "5.3", "5.1", "4.8", "4.8", "4.9", "5.9"], ["glucosa", "6.3", "5.4", "5.6", "5.7", "6.5", "7.4", "7.9", "7.4", "7.7", "7.9", "7.9", "7.8", "7.8", "7.8", "8.0", "8.5", "9.4", "10.8", "10.5", "9.1", "8.9", "8.3", "7.7", "7.6", "7.5"]]
		resultado3 = Array.new
		resultado3 = [[1, "comp.manzana", 27.49999999999999], [1, "yogurt", 21.750000000000046], [1, "chocolate", 7.500000000000005], [1, "glucosa", 255.99999999999997], [2, "comp.manzana", 183.25], [2, "yogurt",138.49999999999997], [2, "chocolate", 44.25000000000004], [2, "glucosa", 186.50000000000003]]
		resultado4 = Array.new
		resultado4 = [[1, "comp.manzana", 10.742187499999996], [1, "yogurt", 8.49609375000002], [1, "chocolate", 2.929687500000002], [2, "comp.manzana", 98.25737265415549], [2, "yogurt", 74.26273458445037], [2, "chocolate", 23.726541554959805]]
		assert_equal(resultado, @output.IG())
		assert_equal(resultado2, @output2.data)
		assert_equal(resultado3, @output3.AIBC())
		assert_equal(resultado4, @output4.IGind())	
	end
end