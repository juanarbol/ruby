json.array!(@people) do |person|
  json.extract! person, :id, :name, :apartment_id
  json.url person_url(person, format: :json)
end
