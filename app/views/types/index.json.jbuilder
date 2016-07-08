json.array!(@types) do |type|
  json.extract! type, :id, :name, :description, :Category
  json.url type_url(type, format: :json)
end
