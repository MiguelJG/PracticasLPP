require 'lib/Cocinero'
require 'test/unit'

class TestCocienro < Test::Unit::TestCase

	def setup
		@object = Cocinero.new()
	end

	def tear_down
		#nothing
	end

	def test_simple
		@object.uno_mas()
		assert_equal(1, @object.annos)
		@object.uno_mas()
		@object.uno_mas()
		@object.uno_mas()#se aumenta hasta 4 años para comprobar que lo otro aumenta
		assert_equal(8, @object.experiencia)
		assert_equal(8, @object.contador)
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal(7, @object.contador)
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		assert_equal("Que delicioso está el plato", @object.degustar_uno())
		#comprobar que quitandotodos los platos dice que no hay mas
		assert_equal("No hay platos disponibles", @object.degustar_uno())
	end
end
