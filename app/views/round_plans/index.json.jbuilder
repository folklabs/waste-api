json.array!(@round_plans) do |round_plan|
  json.extract! round_plan, :id, :name, :schedule, :start_date, :end_date
  json.url round_plan_url(round_plan, format: :json)
end
