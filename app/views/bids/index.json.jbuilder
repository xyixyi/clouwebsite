json.array!(@bids) do |bid|
  json.extract! bid, :id, :position, :department, :deadline, :description
  json.url bid_url(bid, format: :json)
end
