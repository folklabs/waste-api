json.array!(@events) do |event|
  json.extract! event, :id, :event_type, :image, :uprn
  json.url event_url(event, format: :json)
end
