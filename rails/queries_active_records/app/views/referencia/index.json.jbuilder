json.array!(@referencia) do |referencium|
  json.extract! referencium, :id, :color, :talla, :categoria, :ripo, :marca, :descripcion, :tela, :cantidad, :costo, :precio
  json.url referencium_url(referencium, format: :json)
end
