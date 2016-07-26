json.array!(@q_types) do |q_type|
  json.extract! q_type, :id, :name
  json.url q_type_url(q_type, format: :json)
end
