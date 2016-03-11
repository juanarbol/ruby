json.array!(@productos) do |producto|
  json.extract! producto, :id, :referencia, :color, :talla, :categoria, :ripo, :marca, :descripcion, :tela, :cantidad, :costo, :precio
  json.url producto_url(producto, format: :json)
end
