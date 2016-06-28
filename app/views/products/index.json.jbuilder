json.array!(@products) do |product|
  json.extract! product, :id, :name, :img, :synopsis, :detail, :attachedFiles, :type_id
  json.url product_url(product, format: :json)
end
