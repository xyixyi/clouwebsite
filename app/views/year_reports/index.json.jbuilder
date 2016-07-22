json.array!(@year_reports) do |year_report|
  json.extract! year_report, :id, :date, :attachment
  json.url year_report_url(year_report, format: :json)
end
