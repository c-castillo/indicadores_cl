require "indicadores_cl/version"
require "open-uri"
require "xmlsimple"

module Indicadores
  class Chile
    SERVICE_URL = "http://indicadoresdeldia.cl/webservice/indicadores.xml"
    
    attr_accessor :srv_response
    
    def initialize
      @srv_response = fetch
    end

    def uf
      get_indicador_value "uf"
    end

    def ipc
      get_indicador_value "ipc"
    end

    def utm
      get_indicador_value "utm"
    end
    
    def dolar
      get_moneda_value "dolar"
    end
    
    def euro
      get_moneda_value "euro"
    end
    
    def get_indicador_value(indicador)
      return 0 if srv_response["indicador"].nil?
      srv_response["indicador"][0][indicador][0]["valor"].to_f
    end
    
    def get_moneda_value(moneda)
      return 0 if srv_response["moneda"].nil?
      srv_response["moneda"][0][moneda][0]["valor"].to_f
    end

    private

    def fetch
      begin
        srv_response ||= open(SERVICE_URL).read
        XmlSimple.xml_in(srv_response)
      rescue Exception => e
        nil
      end
    end

    def self.format(str)
      str.gsub('$','').gsub('.','').gsub(',','.').to_f
    end

  end

end
