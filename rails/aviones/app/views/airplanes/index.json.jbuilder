json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :name, :pilot_id
  json.url airplane_url(airplane, format: :json)
end
