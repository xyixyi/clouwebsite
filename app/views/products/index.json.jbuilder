json.array!(@products) do |product|
  json.extract! product, :id, :productId, :productName, :synopsis, :detail, :attachedFiles
  json.url product_url(product, format: :json)
end
