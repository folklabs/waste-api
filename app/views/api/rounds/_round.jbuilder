json.set! '@id', "#{request.base_url}/api/rounds/#{round.id}"
json.set! '@type', 'Round'
json.(round, :name, :date)

json.events round.events do |event|
  json.set! 'type', event.event_type
  json.(event, :uprn, :image)
end

