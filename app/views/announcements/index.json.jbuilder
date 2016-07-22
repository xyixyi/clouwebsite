json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :date, :link
  json.url announcement_url(announcement, format: :json)
end
