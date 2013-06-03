require "indicadores_cl/version"
require "open-uri"
require "json"

module Indicadores

  class Chile

    def self.uf
      data = self.fetch["indicador"]["uf"]
      return self.format(data)
    end

    def self.ipc
      data = self.fetch["indicador"]["icp"]
      return self.format(data)
    end

    def self.utm
      data = self.fetch["indicador"]["utm"]
      return self.format(data)
    end

    private

    def self.fetch
      serv_response ||= open("http://www.indicadoresdeldia.cl/webservice/indicadores.json").read
      JSON.parse(serv_response)
    end

    def self.format(str)
      str.gsub('$','').gsub('.','').gsub(',','.').to_f
    end

  end

end
