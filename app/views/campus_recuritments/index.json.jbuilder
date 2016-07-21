json.array!(@campus_recuritments) do |campus_recuritment|
  json.extract! campus_recuritment, :id, :title, :position, :department, :deadline, :description
  json.url campus_recuritment_url(campus_recuritment, format: :json)
end
