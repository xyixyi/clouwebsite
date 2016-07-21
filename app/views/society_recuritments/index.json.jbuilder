json.array!(@society_recuritments) do |society_recuritment|
  json.extract! society_recuritment, :id, :title, :position, :department, :deadline, :description
  json.url society_recuritment_url(society_recuritment, format: :json)
end
