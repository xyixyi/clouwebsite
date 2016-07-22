json.array!(@employee_stories) do |employee_story|
  json.extract! employee_story, :id, :name, :date, :image, :text
  json.url employee_story_url(employee_story, format: :json)
end
