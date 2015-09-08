json.array!(@rounds) do |round|
  json.extract! round, :id, :name, :date, :round_plan_id
  json.url round_url(round, format: :json)
end
