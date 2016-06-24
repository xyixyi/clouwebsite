json.array!(@major_products) do |major_product|
  json.extract! major_product, :id, :categoryId, :categoryName, :categoryImg, :categoryDescription
  json.url major_product_url(major_product, format: :json)
end
