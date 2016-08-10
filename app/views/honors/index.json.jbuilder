json.array!(@honors) do |honor|
  json.extract! honor, :id, :title, :text
  json.url honor_url(honor, format: :json)
end
