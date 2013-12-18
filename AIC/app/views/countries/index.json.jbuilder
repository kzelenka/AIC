json.array!(@countries) do |country|
  json.extract! country, :id, :name, :description, :key
  json.url country_url(country, format: :json)
end
