FactoryGirl.define do
  factory :round_plan do
    name "Round plan 1"
schedule "{\"validations\":{\"day\":[1]},\"rule_type\":\"IceCube::WeeklyRule\",\"interval\":1,\"week_start\":0}"
start_date "2015-08-26 15:19:56"
end_date "2015-08-26 15:19:56"
  end

end
