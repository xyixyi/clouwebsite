json.array!(@types) do |type|
  json.extract! type, :id, :typeId, :typeName, :typeDescription
  json.url type_url(type, format: :json)
end
