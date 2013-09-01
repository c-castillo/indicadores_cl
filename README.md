# IndicadoresCL

Es una wrapper para el servicio XML disponible en http://indicadoresdeldia.cl/

## Instalación

Agrega la siguiente línea en tu Gemfile:

    gem 'indicadores_cl'

y ejecuta:

    $ bundle

O instala de forma manual:

    $ gem install indicadores_cl

## Uso

```ruby
require 'indicadores_cl'

indicadores = Indicadores::Chile.new
puts "El valor del dolar es #{indicadores.dolar}"
puts "El valor de la UF es #{indicadores.uf}"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
