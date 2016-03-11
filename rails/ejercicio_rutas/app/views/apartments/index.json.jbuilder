json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :name, :floor, :edifice_id
  json.url apartment_url(apartment, format: :json)
end
