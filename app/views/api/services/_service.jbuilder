json.set! '@id', "#{request.base_url}/api/services/#{service.id}"
json.set! '@type', 'WasteService'
json.(service, :name, :frequency)
json.esd_url "http://id.esd.org.uk/service/#{service.esd_id}"
# json.geo do
#   json.(event, :lat, :long)
# end
# json.round "#{request.base_url}/waste/rounds/#{event.round}"

json.provider service.organization, :id, :name

