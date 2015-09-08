json.member do
  json.array!(@rounds) do |round|
    json.partial! 'round', round: round
#  json.extract! round, :id, :name, :frequency, :esd_id, :organization
#  json.url api_round_url(round)
  end
end
json.params params