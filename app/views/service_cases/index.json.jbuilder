json.array!(@service_cases) do |service_case|
  json.extract! service_case, :id, :Type_id, :image, :text, :attachment
  json.url service_case_url(service_case, format: :json)
end
