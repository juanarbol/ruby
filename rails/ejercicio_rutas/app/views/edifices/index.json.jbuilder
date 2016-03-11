json.array!(@edifices) do |edifice|
  json.extract! edifice, :id, :nombre, :portero
  json.url edifice_url(edifice, format: :json)
end
