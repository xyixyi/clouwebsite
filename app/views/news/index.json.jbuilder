json.array!(@products) do |product|
  json.extract! product, :id, :name, :synopsis, :detail, :Type
  json.url product_url(product, format: :json)
end
