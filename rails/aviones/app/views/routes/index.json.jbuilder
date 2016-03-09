json.array!(@routes) do |route|
  json.extract! route, :id, :route, :airplane_id
  json.url route_url(route, format: :json)
end
