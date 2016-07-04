json.array!(@products) do |product|
  json.extract! product, :id, :name, :synopsis, :detail, :attachedFiles, :type_id
  json.url product_url(product, format: :json)
end
