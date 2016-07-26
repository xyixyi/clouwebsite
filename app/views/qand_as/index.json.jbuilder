json.array!(@qand_as) do |qand_a|
  json.extract! qand_a, :id, :title, :QType, :question, :answer, :attachment
  json.url qand_a_url(qand_a, format: :json)
end
