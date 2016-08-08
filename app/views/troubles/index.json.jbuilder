json.array!(@troubles) do |trouble|
  json.extract! trouble, :id, :name, :email, :phonenumber, :solved, :text
  json.url trouble_url(trouble, format: :json)
end
