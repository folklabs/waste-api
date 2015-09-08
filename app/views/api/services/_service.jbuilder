json.set! '@id', "#{request.base_url}/api/services/#{service.id}"
json.set! '@type', 'WasteService'
json.(service, :name, :frequency)
json.esd_url "http://id.esd.org.uk/service/#{service.esd_id}"
# json.geo do
#   json.(event, :lat, :long)
# end
# json.round "#{request.base_url}/waste/rounds/#{event.round}"

json.container_types service.container_types do |container_type|
  json.(container_type, :shape, :size, :color, :lid_color, :description)
  json.material_streams container_type.material_streams do |stream|
    json.(stream, :name)
  end
end
json.provider service.organization, :id, :name

# TODO: fix
if service.round_plans.any?
  round = service.last_collection_round
  json.last_collection do
    json.date round.date.xmlschema
    json.set! 'round', "#{request.base_url}/api/rounds/#{service.last_collection_round.id}"
    # json.set! '@type', 'WasteCollection'
    json.events round.events do |event|
      json.set! 'type', event.event_type
      json.(event, :uprn, :image)
    end
  end
  json.next_collection do
    json.date service.next_collection
    # json.set! '@type', 'WasteCollection'
  end
end
