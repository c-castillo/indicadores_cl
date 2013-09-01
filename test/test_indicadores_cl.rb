require 'test/unit'
require 'turn/autorun'
require 'indicadores_cl'

class IndicadoresTest < Test::Unit::TestCase
  include Indicadores

  def setup
    @indicadores = Indicadores::Chile.new
  end

  def test_get_xml_responde
    assert_not_nil(@indicadores.srv_response)
  end
  
  def test_get_values
    assert(@indicadores.uf >= 0, "Valor incorrecto de UF")
    assert(@indicadores.dolar >= 0, "Valor incorrecto del Dolar")
    assert(@indicadores.euro >= 0, "Valor incorrecto del Euro")
  end

end