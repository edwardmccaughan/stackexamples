json.array!(@past_works) do |past_work|
  json.extract! past_work, :id, :name, :description
  json.url past_work_url(past_work, format: :json)
end
